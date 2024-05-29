<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Http\Controllers\Frontend\SallaController;
use App\Models\Booking_manage;
use App\Models\InvoiceComplement;
use App\Models\Room_assign;
use App\Models\Room_manage;
use App\Models\Tax;
use Carbon\Carbon;
use Illuminate\Support\Facades\DB;

class InvoiceNewController extends Controller
{
    protected $numberVat;
    protected $tax;
    protected $totalAmountWithComplementAndTaxAndFees;
    protected $dateBookingUnformate;
    protected $base64_image_string;
    protected $salla;
    public function __construct(SallaController $salla)
    {
        $this->salla = $salla;
    }

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

        $tottalDayes=DateDiffInDays( $mdata['in_date'],$mdata['out_date'] );
        $bookingNumber = $mdata['booking_no'];
        $DteOfArrival = $mdata['in_date'];
        $DteOfOut = $mdata['out_date'];
        $dateBooking = Carbon::parse($mdata['created_at'])->format('Y-m-d');
        $dateBookingUnformate =     $mdata['created_at'];
        $this->dateBookingUnformate = $dateBookingUnformate;

        $methodName = $mdata['method_name'];
        $roomPrice = $mdata['total_price'];
        $dateList = getDateListBetween($DteOfArrival, $DteOfOut);
        $booking_no = Booking_manage::where('id', $booking_id)->select('booking_no')->value('booking_no');
        $invoiceDataComplements = InvoiceComplement::where('invoice_number', $booking_no)
            ->with('complements')
            ->get();
        $prices = [];
        foreach ($invoiceDataComplements as $complement) {
            $prices[] = $complement->price;
        }
        $totalComplementPriceNotformate = array_sum($prices);
        $totalComplementPric = NumberFormat($totalComplementPriceNotformate);

        //customr data
        $guestName = $mdata['customer_name'];
        $city = $mdata['city'];
        $phone = $mdata['customer_phone'];
        //

        //room data
        $roomsId = Room_assign::where('booking_id', $booking_id)->pluck('room_id');
        $roomsNumbers = Room_manage::whereIn('id', $roomsId)->pluck('room_no');
        $tottalRoomsAfterApproved = count($roomsNumbers);
        $totalRoomsBooking = $mdata['total_room'];
        //


        if ( $roomsId->isEmpty()) {
            $sub_total_num=$roomPrice* $mdata['total_room']* $tottalDayes;
        } else {
            $sub_total_num=$roomPrice*$tottalRoomsAfterApproved* $tottalDayes;
        }

        $sub_total = 0;
        if ( $sub_total_num != '') {
            $sub_total =  $sub_total_num;
            $sub_total = NumberFormat($sub_total);
        }



        ///all total with tax and fees
        if ($totalComplementPriceNotformate > 1) {
            $subTottalWithComplements=$sub_total_num +$totalComplementPriceNotformate;
        } else {
            $subTottalWithComplements=$sub_total_num;
        }

        $municipalityFees = $subTottalWithComplements * MunicipalityFees() / 100;
        $taxPersentage = Tax::first()->select('percentage')->value('percentage');
        $tax=    $subTottalWithComplements * $taxPersentage/ 100;
        $this->tax=$tax;
        $taxFormate=    NumberFormat( $tax);
        $totalAmountWithComplementAndTaxAndFees =$subTottalWithComplements+   $tax  + $municipalityFees;
        $this->totalAmountWithComplementAndTaxAndFees=$totalAmountWithComplementAndTaxAndFees;
        ///

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
        //


       $paymentStatus=   $mdata['pstatus_name'];
      $bookingStatus=   $mdata['bstatus_name'];


        ########################################
        $logo2 = public_path('media/' . 'photo_5892981411613359903_x.jpg');
        $numberVat = 310152627910003;
        $this->numberVat = $numberVat;
        $qrcodeLogo = $this->generateQrcodeImg($this->salla);

        $html = view('frontend.pdfstyle',
            compact('totalRoomsBooking', 'tottalRoomsAfterApproved', 'roomsNumbers', 'qrcodeLogo', 'logo2', 'numberVat',
            'totalAmountWithComplementAndTaxAndFees', 'totalComplementPric', 'totalDiscount', 'totalAmount', 'taxPersentage',
            'municipalityFees', 'taxFormate', 'sub_total', 'phone', 'city', 'guestName', 'bookingNumber', 'booking_id', 'invoiceDataComplements',
            'roomPrice', 'dateList', 'methodName', 'dateBooking', 'DteOfOut', 'DteOfArrival', 'totalDiscount', 'totalAmount','paymentStatus','bookingStatus')
        )->toArabicHTML();

        $pdf = app()->make('dompdf.wrapper');

        $pdf->loadHTML($html);
        // $pdf->setPaper('A5', 'landscape');
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

    public function generateQrcodeImg($salla)
    {
        $qr_data = ['seller_name' => 'Mira Business Hotel,Riyadh',
            'vat_number' => $this->numberVat,
            'invoice_date' => $this->dateBookingUnformate,
            'total_amount' => $this->totalAmountWithComplementAndTaxAndFees,
            'vat_amount' => $this->tax,

        ];
        $base64_image = "";
        $this->base64_image_string = $salla->render($qr_data);
        return $this->pdf_file_with_image();

    }

    public function pdf_file_with_image()
    {

        return $this->image_html($this->base64_image_string);

    }

    public function image_html($base64_file)
    {
        return $base64_file;
    }

}
