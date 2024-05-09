<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Booking_manage;
use App\Models\InvoiceComplement;
use App\Models\Tax;
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

        $totalTax = 0;
        if ($mdata['tax'] != '') {
            $totalTax = $mdata['tax'];
            $taxFormate = NumberFormat($totalTax);
        }
        $tax = NumberFormat($totalTax) . $gtext['currency_icon'];
        $bookingNumber = $mdata['booking_no'];
        $DteOfArrival = $mdata['in_date'];
        $DteOfOut = $mdata['out_date'];
        $dateBooking = Carbon::parse($mdata['created_at'])->format('Y-m-d');
        $methodName = $mdata['method_name'];
        $roomPrice = $mdata['total_price'];
        $dateList = getDateListBetween($DteOfArrival, $DteOfOut);
        $booking_no = Booking_manage::where('id', $booking_id)->select('booking_no')->value('booking_no');
        $invoiceDataComplements = InvoiceComplement::where('invoice_number', $booking_no)
            ->with('complements')
            ->get();
        $guestName = $mdata['customer_name'];
        $city = $mdata['city'];
        $phone = $mdata['customer_phone'];
        $sub_total = 0;
        if ($mdata['subtotal'] != '') {
            $sub_total = $mdata['subtotal'];
            $sub_total = NumberFormat($sub_total);
            $sub_total_num = $mdata['subtotal'];
        }
        $municipalityFees = $sub_total_num * MunicipalityFees() / 100;
        $taxPersentage = Tax::first()->select('percentage')->value('percentage');
        $totalAmount = 0;
        if ($mdata['total_amount'] != '') {
            $totalAmount = $mdata['total_amount'];
            $totalAmount = NumberFormat($totalAmount);
        }

        $totalDiscount = 0;
        if ($mdata['discount'] != '') {
            $totalDiscount = $mdata['discount'];
            $totalDiscount = NumberFormat($totalDiscount);
        }

        $prices = [];
        foreach ($invoiceDataComplements as $complement) {
            $prices[] = $complement->price; 
        }
         $totalComplementPriceNotformate = array_sum($prices);
         $totalComplementPric=NumberFormat($totalComplementPriceNotformate);

         $totalAmountWithComplement = 0;
         if ($mdata['total_amount'] != '') {
             $totalAmountWithComplement = $mdata['total_amount']+$totalComplementPriceNotformate;
             $totalAmountWithComplement = NumberFormat($totalAmountWithComplement);
         }

         $numberVat=310152627910003;
         $logo2 = public_path('media/' . 'photo_5892981411613359903_x.jpg');

         ########################################
// عدد لايام
        $total_days = DateDiffInDays($mdata['in_date'], $mdata['out_date']);

        $totalPrice = 0;
        if ($mdata['total_price'] != '') {
            $totalPrice = $mdata['total_price'];
        }

        $oldPrice = 0;
        if ($mdata['old_price'] != '') {
            $oldPrice = $mdata['old_price'];
        }

      

        $calOldPrice = $oldPrice * $mdata['total_room'] * $total_days;

        if ($gtext['currency_position'] == 'left') {
            $oPrice = $gtext['currency_icon'] . NumberFormat($oldPrice);
            $caloPrice = $gtext['currency_icon'] . NumberFormat($calOldPrice);
            $total_price = $gtext['currency_icon'] . NumberFormat($totalPrice);
            // $subtotal = $gtext['currency_icon'] . NumberFormat($sub_total);
            // $tax = $gtext['currency_icon'] . NumberFormat($totalTax);
            // $discount = $gtext['currency_icon'] . NumberFormat($totalDiscount);
            // $total_amount = $gtext['currency_icon'] . NumberFormat($totalAmount);

        } else {
            $oPrice = NumberFormat($oldPrice) . $gtext['currency_icon'];
            $caloPrice = NumberFormat($calOldPrice) . $gtext['currency_icon'];
            $total_price = NumberFormat($totalPrice) . $gtext['currency_icon'];
            // $subtotal = NumberFormat($sub_total) . $gtext['currency_icon'];
            // $tax = NumberFormat($totalTax) . $gtext['currency_icon'];
            // $discount = NumberFormat($totalDiscount) . $gtext['currency_icon'];
            // $total_amount = NumberFormat($totalAmount) . $gtext['currency_icon'];
        }

        $old_price = '';
        $cal_old_price = '';
        if ($mdata['is_discount'] == 1) {
            $old_price = '<p class="old-price">' . $oPrice . '</p>';
            $cal_old_price = '<p class="old-price">' . $caloPrice . '</p>';
        }

        ////////////////////////////////////////

        $html = view('Frontend.pdfstyle',
            compact('logo2','numberVat','totalAmountWithComplement','totalComplementPric','totalDiscount','totalAmount', 'taxPersentage', 'municipalityFees', 'taxFormate', 'sub_total', 'phone', 'city', 'guestName', 'bookingNumber', 'booking_id', 'tax', 'invoiceDataComplements', 'roomPrice', 'dateList', 'methodName', 'dateBooking', 'DteOfOut', 'DteOfArrival', 'totalPrice', 'oldPrice', 'totalTax', 'totalDiscount', 'totalAmount')
        )->toArabicHTML();

        $pdf = app()->make('dompdf.wrapper');

        $pdf->loadHTML($html);
        $pdf->setPaper('A4', 'landscape');
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
