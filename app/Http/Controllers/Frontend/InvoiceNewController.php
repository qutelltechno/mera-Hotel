<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Carbon\Carbon;
use Illuminate\Support\Facades\DB;

class InvoiceNewController extends Controller
{
    public function getInvoice($booking_id)
    {

        $gtext = gtext();

        $datalist = DB::table('booking_manages')
            ->join('rooms', 'booking_manages.roomtype_id', '=', 'rooms.id')
            ->join('payment_method', 'booking_manages.payment_method_id', '=', 'payment_method.id')
            ->join('payment_status', 'booking_manages.payment_status_id', '=', 'payment_status.id')
            ->join('booking_status', 'booking_manages.booking_status_id', '=', 'booking_status.id')
            ->select('booking_manages.*', 'rooms.title', 'rooms.old_price', 'rooms.is_discount',
                'payment_method.method_name', 'payment_status.pstatus_name', 'booking_status.bstatus_name')
            ->where('booking_manages.id', $booking_id)
            ->get();

        $mdata = array();
        foreach ($datalist as $row) {
            $mdata['title'] = $row->title;
            $mdata['is_discount'] = $row->is_discount;
            $mdata['old_price'] = $row->old_price;
            $mdata['booking_no'] = $row->booking_no;
            $mdata['payment_status_id'] = $row->payment_status_id;
            $mdata['booking_status_id'] = $row->booking_status_id;
            $mdata['total_room'] = $row->total_room;
            $mdata['total_price'] = $row->total_price;
            $mdata['discount'] = $row->discount;
            $mdata['tax'] = $row->tax;
            $mdata['subtotal'] = $row->subtotal;
            $mdata['total_amount'] = $row->total_amount;
            $mdata['in_date'] = $row->in_date;
            $mdata['out_date'] = $row->out_date;
            $mdata['customer_name'] = $row->name;
            $mdata['customer_email'] = $row->email;
            $mdata['customer_address'] = $row->address;
            $mdata['city'] = $row->city;
            $mdata['state'] = $row->state;
            $mdata['zip_code'] = $row->zip_code;
            $mdata['country'] = $row->country;
            $mdata['customer_phone'] = $row->phone;
            $mdata['created_at'] = $row->created_at;
            $mdata['method_name'] = $row->method_name;
            $mdata['pstatus_name'] = $row->pstatus_name;
            $mdata['bstatus_name'] = $row->bstatus_name;
        }
        // return $datalist;

        $tax=  $mdata['tax'];
        $bookingNumber=$mdata['booking_no'];
        $DteOfArrival=  $mdata['in_date'];
        $DteOfOut=  $mdata['out_date'];
        // رﻗﻢ اﻟﺼﻔﺤﺔ:
        $dateBooking=  $mdata['created_at'];
        // رﻗﻢ اﻟﻤﻮﻇﻒ
        // رﻗﻢ اﻟﻔﺎﺗﻮرة :
        // رﻗﻢ اﻟﻔﻮﻟﻴﻮ :
        return $dateList=getDateListBetween( $DteOfArrival, $DteOfOut);


        

        $total_days = DateDiffInDays($mdata['in_date'], $mdata['out_date']);

        $totalPrice = 0;
        if ($mdata['total_price'] != '') {
            $totalPrice = $mdata['total_price'];
        }

        $oldPrice = 0;
        if ($mdata['old_price'] != '') {
            $oldPrice = $mdata['old_price'];
        }

        $sub_total = 0;
        if ($mdata['subtotal'] != '') {
            $sub_total = $mdata['subtotal'];
        }

        $totalTax = 0;
        if ($mdata['tax'] != '') {
            $totalTax = $mdata['tax'];
        }

        $totalDiscount = 0;
        if ($mdata['discount'] != '') {
            $totalDiscount = $mdata['discount'];
        }

        $totalAmount = 0;
        if ($mdata['total_amount'] != '') {
            $totalAmount = $mdata['total_amount'];
        }

        $calOldPrice = $oldPrice * $mdata['total_room'] * $total_days;

        if ($gtext['currency_position'] == 'left') {
            $oPrice = $gtext['currency_icon'] . NumberFormat($oldPrice);
            $caloPrice = $gtext['currency_icon'] . NumberFormat($calOldPrice);
            $total_price = $gtext['currency_icon'] . NumberFormat($totalPrice);
            $subtotal = $gtext['currency_icon'] . NumberFormat($sub_total);
            $tax = $gtext['currency_icon'] . NumberFormat($totalTax);
            $discount = $gtext['currency_icon'] . NumberFormat($totalDiscount);
            $total_amount = $gtext['currency_icon'] . NumberFormat($totalAmount);

        } else {
            $oPrice = NumberFormat($oldPrice) . $gtext['currency_icon'];
            $caloPrice = NumberFormat($calOldPrice) . $gtext['currency_icon'];
            $total_price = NumberFormat($totalPrice) . $gtext['currency_icon'];
            $subtotal = NumberFormat($sub_total) . $gtext['currency_icon'];
            $tax = NumberFormat($totalTax) . $gtext['currency_icon'];
            $discount = NumberFormat($totalDiscount) . $gtext['currency_icon'];
            $total_amount = NumberFormat($totalAmount) . $gtext['currency_icon'];
        }

        $old_price = '';
        $cal_old_price = '';
        if ($mdata['is_discount'] == 1) {
            $old_price = '<p class="old-price">' . $oPrice . '</p>';
            $cal_old_price = '<p class="old-price">' . $caloPrice . '</p>';
        }

        ////////////////////////////////////////

        $html = view('Frontend.pdfstyle',
            compact('DteOfOut','DteOfArrival','totalPrice','oldPrice','sub_total','totalTax','totalDiscount','totalAmount')
        )->toArabicHTML();

        $pdf = app()->make('dompdf.wrapper');

        $pdf->loadHTML($html);

        $output = $pdf->output();

        $headers = array(
            "Content-type" => "application/pdf",
        );

        return response()->streamDownload(
            fn() => print($output), // add the content to the stream
           'pdf' . time() . ".pdf", // the name of the file/stream
            $headers
        );

    }
}
