<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Models\Booking_manage;
use App\Models\Country;
use App\Models\InvoiceComplement;
use App\Models\Room;
use App\Models\Room_assign;
use App\Models\Room_manage;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use PHPMailer\PHPMailer\Exception;
use PHPMailer\PHPMailer\PHPMailer;

class BookingController extends Controller
{
    //All Booking Page Load
    public function getAllBookingPageLoad()
    {

        $booking_status_list = DB::table('booking_status')->get();
        $payment_status_list = DB::table('payment_status')->get();
        $datalist = DB::table('booking_manages')
            ->join('rooms', 'booking_manages.roomtype_id', '=', 'rooms.id')
            ->join('payment_method', 'booking_manages.payment_method_id', '=', 'payment_method.id')
            ->join('payment_status', 'booking_manages.payment_status_id', '=', 'payment_status.id')
            ->join('booking_status', 'booking_manages.booking_status_id', '=', 'booking_status.id')
            ->select('booking_manages.*', 'rooms.title', 'rooms.old_price', 'rooms.is_discount',
                'payment_method.method_name', 'payment_status.pstatus_name', 'booking_status.bstatus_name')
            ->orderBy('booking_manages.id', 'desc')
            ->paginate(20);

        return view('backend.all-booking', compact('booking_status_list', 'payment_status_list', 'datalist'));
    }

    //Get data for All Booking Pagination
    public function getAllBookingTableData(Request $request)
    {

        $search = $request->search;
        $start_date = $request->start_date;
        $end_date = $request->end_date;
        $status = $request->status;

        if ($request->ajax()) {

            if ($search != '') {
                $datalist = DB::table('booking_manages')
                    ->join('rooms', 'booking_manages.roomtype_id', '=', 'rooms.id')
                    ->join('payment_method', 'booking_manages.payment_method_id', '=', 'payment_method.id')
                    ->join('payment_status', 'booking_manages.payment_status_id', '=', 'payment_status.id')
                    ->join('booking_status', 'booking_manages.booking_status_id', '=', 'booking_status.id')
                    ->select('booking_manages.*', 'rooms.title', 'rooms.old_price', 'rooms.is_discount',
                        'payment_method.method_name', 'payment_status.pstatus_name', 'booking_status.bstatus_name')
                    ->where(function ($query) use ($search) {
                        $query->where('rooms.title', 'like', '%' . $search . '%')
                            ->orWhere('booking_manages.booking_no', 'like', '%' . $search . '%')
                            ->orWhere('booking_manages.name', 'like', '%' . $search . '%')
                            ->orWhere('booking_manages.email', 'like', '%' . $search . '%')
                            ->orWhere('booking_manages.phone', 'like', '%' . $search . '%')
                            ->orWhere('booking_manages.total_room', 'like', '%' . $search . '%')
                            ->orWhere('booking_manages.address', 'like', '%' . $search . '%');
                    })
                    ->orderBy('booking_manages.id', 'desc')
                    ->paginate(20);
            } else {
                if (($start_date != '') && ($end_date != '')) {

                    $datalist = DB::table('booking_manages')
                        ->join('rooms', 'booking_manages.roomtype_id', '=', 'rooms.id')
                        ->join('payment_method', 'booking_manages.payment_method_id', '=', 'payment_method.id')
                        ->join('payment_status', 'booking_manages.payment_status_id', '=', 'payment_status.id')
                        ->join('booking_status', 'booking_manages.booking_status_id', '=', 'booking_status.id')
                        ->select('booking_manages.*', 'rooms.title', 'rooms.old_price', 'rooms.is_discount',
                            'payment_method.method_name', 'payment_status.pstatus_name', 'booking_status.bstatus_name')
                        ->whereBetween('booking_manages.created_at', [$start_date, $end_date])
                        ->orderBy('booking_manages.id', 'desc')
                        ->paginate(20);
                } else {
                    if ($status == 0) {
                        $datalist = DB::table('booking_manages')
                            ->join('rooms', 'booking_manages.roomtype_id', '=', 'rooms.id')
                            ->join('payment_method', 'booking_manages.payment_method_id', '=', 'payment_method.id')
                            ->join('payment_status', 'booking_manages.payment_status_id', '=', 'payment_status.id')
                            ->join('booking_status', 'booking_manages.booking_status_id', '=', 'booking_status.id')
                            ->select('booking_manages.*', 'rooms.title', 'rooms.old_price', 'rooms.is_discount',
                                'payment_method.method_name', 'payment_status.pstatus_name', 'booking_status.bstatus_name')
                            ->orderBy('booking_manages.id', 'desc')
                            ->paginate(20);
                    } else {
                        $datalist = DB::table('booking_manages')
                            ->join('rooms', 'booking_manages.roomtype_id', '=', 'rooms.id')
                            ->join('payment_method', 'booking_manages.payment_method_id', '=', 'payment_method.id')
                            ->join('payment_status', 'booking_manages.payment_status_id', '=', 'payment_status.id')
                            ->join('booking_status', 'booking_manages.booking_status_id', '=', 'booking_status.id')
                            ->select('booking_manages.*', 'rooms.title', 'rooms.old_price', 'rooms.is_discount',
                                'payment_method.method_name', 'payment_status.pstatus_name', 'booking_status.bstatus_name')
                            ->where('booking_manages.booking_status_id', '=', $status)
                            ->orderBy('booking_manages.id', 'desc')
                            ->paginate(20);
                    }
                }
            }

            return view('backend.partials.all_booking_table', compact('datalist'))->render();
        }
    }

    //Booking Request page load
    public function getBookingRequestPageLoad()
    {

        $datalist = DB::table('booking_manages')
            ->join('rooms', 'booking_manages.roomtype_id', '=', 'rooms.id')
            ->join('payment_method', 'booking_manages.payment_method_id', '=', 'payment_method.id')
            ->join('payment_status', 'booking_manages.payment_status_id', '=', 'payment_status.id')
            ->join('booking_status', 'booking_manages.booking_status_id', '=', 'booking_status.id')
            ->select('booking_manages.*', 'rooms.title', 'rooms.old_price', 'rooms.is_discount',
                'payment_method.method_name', 'payment_status.pstatus_name', 'booking_status.bstatus_name')
            ->where('booking_manages.booking_status_id', '=', 1)
            ->orderBy('booking_manages.id', 'desc')
            ->paginate(10);

        return view('backend.booking-request', compact('datalist'));
    }

    //Get data for Booking Request Pagination
    public function getBookingRequestTableData(Request $request)
    {

        $search = $request->search;
        $start_date = $request->start_date;
        $end_date = $request->end_date;

        if ($request->ajax()) {

            if ($search != '') {
                $datalist = DB::table('booking_manages')
                    ->join('rooms', 'booking_manages.roomtype_id', '=', 'rooms.id')
                    ->join('payment_method', 'booking_manages.payment_method_id', '=', 'payment_method.id')
                    ->join('payment_status', 'booking_manages.payment_status_id', '=', 'payment_status.id')
                    ->join('booking_status', 'booking_manages.booking_status_id', '=', 'booking_status.id')
                    ->select('booking_manages.*', 'rooms.title', 'rooms.old_price', 'rooms.is_discount',
                        'payment_method.method_name', 'payment_status.pstatus_name', 'booking_status.bstatus_name')
                    ->where(function ($query) use ($search) {
                        $query->where('rooms.title', 'like', '%' . $search . '%')
                            ->orWhere('booking_manages.booking_no', 'like', '%' . $search . '%')
                            ->orWhere('booking_manages.name', 'like', '%' . $search . '%')
                            ->orWhere('booking_manages.email', 'like', '%' . $search . '%')
                            ->orWhere('booking_manages.phone', 'like', '%' . $search . '%')
                            ->orWhere('booking_manages.total_room', 'like', '%' . $search . '%')
                            ->orWhere('booking_manages.address', 'like', '%' . $search . '%');
                    })
                    ->where('booking_manages.booking_status_id', '=', 1)
                    ->orderBy('booking_manages.id', 'desc')
                    ->paginate(10);
            } else {
                if (($start_date != '') && ($end_date != '')) {

                    $datalist = DB::table('booking_manages')
                        ->join('rooms', 'booking_manages.roomtype_id', '=', 'rooms.id')
                        ->join('payment_method', 'booking_manages.payment_method_id', '=', 'payment_method.id')
                        ->join('payment_status', 'booking_manages.payment_status_id', '=', 'payment_status.id')
                        ->join('booking_status', 'booking_manages.booking_status_id', '=', 'booking_status.id')
                        ->select('booking_manages.*', 'rooms.title', 'rooms.old_price', 'rooms.is_discount',
                            'payment_method.method_name', 'payment_status.pstatus_name', 'booking_status.bstatus_name')
                        ->where('booking_manages.booking_status_id', '=', 1)
                        ->whereBetween('booking_manages.created_at', [$start_date, $end_date])
                        ->orderBy('booking_manages.id', 'desc')
                        ->paginate(10);
                } else {
                    $datalist = DB::table('booking_manages')
                        ->join('rooms', 'booking_manages.roomtype_id', '=', 'rooms.id')
                        ->join('payment_method', 'booking_manages.payment_method_id', '=', 'payment_method.id')
                        ->join('payment_status', 'booking_manages.payment_status_id', '=', 'payment_status.id')
                        ->join('booking_status', 'booking_manages.booking_status_id', '=', 'booking_status.id')
                        ->select('booking_manages.*', 'rooms.title', 'rooms.old_price', 'rooms.is_discount',
                            'payment_method.method_name', 'payment_status.pstatus_name', 'booking_status.bstatus_name')
                        ->where('booking_manages.booking_status_id', '=', 1)
                        ->orderBy('booking_manages.id', 'desc')
                        ->paginate(10);
                }
            }

            return view('backend.partials.booking_request_table', compact('datalist'))->render();
        }
    }

    //Delete data for Booking Request
    public function deleteBookingRequest(Request $request)
    {

        $res = array();

        $id = $request->id;

        if ($id != '') {

            $RoomAssignList = Room_assign::where('booking_id', $id)->get();
            $idsArray = array();
            foreach ($RoomAssignList as $row) {
                $idsArray[] = $row->room_id;
            }

            $mData = array('in_date' => null, 'out_date' => null, 'book_status' => 2);
            Room_manage::whereIn('id', $idsArray)->update($mData);

            Room_assign::where('booking_id', $id)->delete();

            $response = Booking_manage::where('id', $id)->delete();
            if ($response) {

                $res['msgType'] = 'success';
                $res['msg'] = __('Removed Successfully');
            } else {
                $res['msgType'] = 'error';
                $res['msg'] = __('Data remove failed');
            }
        }

        return response()->json($res);
    }

    //Bulk Action for Booking Request
    public function bulkActionBookingRequest(Request $request)
    {

        $res = array();

        $idsStr = $request->ids;
        $idsArray = explode(',', $idsStr);

        $BulkAction = $request->BulkAction;

        $RoomAssignList = Room_assign::whereIn('booking_id', $idsArray)->get();
        $idsRAArray = array();
        foreach ($RoomAssignList as $row) {
            $idsRAArray[] = $row->room_id;
        }

        $mData = array('in_date' => null, 'out_date' => null, 'book_status' => 2);
        Room_manage::whereIn('id', $idsRAArray)->update($mData);

        Room_assign::whereIn('booking_id', $idsArray)->delete();

        $response = Booking_manage::whereIn('id', $idsArray)->delete();
        if ($response) {
            $res['msgType'] = 'success';
            $res['msg'] = __('Removed Successfully');
        } else {
            $res['msgType'] = 'error';
            $res['msg'] = __('Data remove failed');
        }

        return response()->json($res);
    }

    //Booking page load
    public function getBookingData($id, $type)
    {
        $page_type = $type;
        $payment_status_list = DB::table('payment_status')->get();
        $booking_status_list = DB::table('booking_status')->get();

        $mdata = DB::table('booking_manages')
            ->join('rooms', 'booking_manages.roomtype_id', '=', 'rooms.id')
            ->join('payment_method', 'booking_manages.payment_method_id', '=', 'payment_method.id')
            ->join('payment_status', 'booking_manages.payment_status_id', '=', 'payment_status.id')
            ->join('booking_status', 'booking_manages.booking_status_id', '=', 'booking_status.id')
            ->select('booking_manages.*', 'rooms.title', 'rooms.old_price', 'rooms.is_discount',
                'payment_method.method_name', 'payment_status.pstatus_name', 'booking_status.bstatus_name')
            ->where('booking_manages.id', '=', $id)
            ->first();

        $roomtype_id = $mdata->roomtype_id;

        $RoomAssignList = Room_assign::where('booking_id', $id)->get();
        $idsArray = array();
        foreach ($RoomAssignList as $row) {
            $idsArray[] = $row->room_id;
        }

        $room_list = Room_manage::where('roomtype_id', '=', $roomtype_id)
            ->where('book_status', '=', 2)
            ->where('is_publish', '=', 1)
            ->whereNotIn('id', $idsArray)
            ->paginate(20);

        $total_room = Room_manage::where('roomtype_id', '=', $roomtype_id)->where('book_status', '=', 2)->where('is_publish', '=', 1)->count();

        $invoiceDataComplements = InvoiceComplement::where('invoice_number', $mdata->booking_no)
            ->with('complements')
            ->get();
        $prices = [];
        foreach ($invoiceDataComplements as $complement) {
            $prices[] = $complement->price;
        }
        $totalComplementPriceNotformate = array_sum($prices);
        $totalComplementPric = NumberFormat($totalComplementPriceNotformate);

        return view('backend.booking', compact('totalComplementPric', 'totalComplementPriceNotformate', 'page_type', 'payment_status_list', 'booking_status_list', 'mdata', 'room_list', 'total_room'));
    }

    //Get data for room list Pagination
    public function getRoomListTableData(Request $request)
    {

        $search = $request->search;
        $roomtype_id = $request->roomtype_id;
        $booking_id = $request->booking_id;

        $RoomAssignList = Room_assign::where('booking_id', $booking_id)->get();
        $idsArray = array();
        foreach ($RoomAssignList as $row) {
            $idsArray[] = $row->room_id;
        }

        if ($request->ajax()) {

            if ($search != '') {

                $room_list = Room_manage::where('roomtype_id', $roomtype_id)
                    ->where(function ($query) use ($search) {
                        $query->where('room_no', 'like', '%' . $search . '%');
                    })
                    ->where('book_status', '=', 2)
                    ->where('is_publish', '=', 1)
                    ->whereNotIn('id', $idsArray)
                    ->paginate(20);
            } else {
                $room_list = Room_manage::where('roomtype_id', $roomtype_id)
                    ->where('book_status', '=', 2)
                    ->where('is_publish', '=', 1)
                    ->whereNotIn('id', $idsArray)
                    ->paginate(20);
            }

            return view('backend.partials.room_list_for_assign_room', compact('room_list'))->render();
        }
    }

    //Get Assign Room Data
    public function getAssignRoomData(Request $request)
    {
        $res = array();

        $booking_id = $request->booking_id;

        $datalist = DB::table('room_manages')
            ->join('room_assigns', 'room_manages.id', '=', 'room_assigns.room_id')
            ->select('room_manages.*', 'room_assigns.id as assign_room_id')
            ->where('room_assigns.booking_id', '=', $booking_id)
            ->orderBy('room_manages.room_no', 'asc')
            ->get();

        $res['datalist'] = $datalist;

        return response()->json($res);
    }

    //Save Assign Room Id
    public function saveAssignRoomData(Request $request)
    {
        $res = array();

        $booking_id = $request->input('booking_id');
        $room_id = $request->input('room_id');
        $roomtype_id = $request->input('roomtype_id');

        $mData = Booking_manage::where('id', $booking_id)->first();
        $booking_status_id = $mData->booking_status_id;

        $data = array(
            'booking_id' => $booking_id,
            'room_id' => $room_id,
            'roomtype_id' => $roomtype_id,
        );

        $response = Room_assign::create($data);
        if ($response) {

            self::ChangeBookingStatus($booking_id, $booking_status_id);

            $res['msgType'] = 'success';
            $res['msg'] = __('Saved Successfully');
        } else {
            $res['msgType'] = 'error';
            $res['msg'] = __('Data insert failed');
        }

        return response()->json($res);
    }

    //Delete Assign Room
    public function deleteAssignRoom(Request $request)
    {

        $res = array();

        $id = $request->id;

        $rData = Room_assign::where('id', '=', $id)->first();
        $room_id = $rData->room_id;

        if ($id != '') {

            $response = Room_assign::where('id', $id)->delete();
            if ($response) {

                $rmData = array('in_date' => null, 'out_date' => null, 'book_status' => 2);
                Room_manage::where('id', $room_id)->update($rmData);

                $res['msgType'] = 'success';
                $res['msg'] = __('Removed Successfully');
            } else {
                $res['msgType'] = 'error';
                $res['msg'] = __('Data remove failed');
            }
        }

        return response()->json($res);
    }

    //update Booking Status
    public function updateBookingStatus(Request $request)
    {
        $gtext = gtext();
        $res = array();

        $id = $request->input('booking_id');
        $payment_status_id = $request->input('payment_status_id');
        $booking_status_id = $request->input('booking_status_id');
        $is_notify = $request->input('isnotify');

        if ($is_notify == 'true' || $is_notify == 'on') {
            $isnotify = 1;
        } else {
            $isnotify = 0;
        }

        $data = array(
            'payment_status_id' => $payment_status_id,
            'booking_status_id' => $booking_status_id,
        );

        $response = Booking_manage::where('id', $id)->update($data);
        if ($response) {
            if ($isnotify == 1) {
                if ($gtext['ismail'] == 1) {
                    BookingNotify($id, 'booking');
                }
            }

            self::ChangeBookingStatus($id, $booking_status_id);

            $res['msgType'] = 'success';
            $res['msg'] = __('Updated Successfully');
        } else {
            $res['msgType'] = 'error';
            $res['msg'] = __('Data update failed');
        }

        return response()->json($res);
    }

    //Payment Booking Status
    public function getPaymentBookingStatusData(Request $request)
    {

        $id = $request->booking_id;

        $data = DB::table('booking_manages')
            ->join('payment_status', 'booking_manages.payment_status_id', '=', 'payment_status.id')
            ->join('booking_status', 'booking_manages.booking_status_id', '=', 'booking_status.id')
            ->select('booking_manages.*', 'payment_status.pstatus_name', 'booking_status.bstatus_name')
            ->where('booking_manages.id', '=', $id)
            ->first();

        return response()->json($data);
    }

    //Update Room Date
    public function updateRoomDate(Request $request)
    {
        $gtext = gtext();
        $gtax = getTax();
        $res = array();

        $id = $request->input('bookingid');
        $roomtype_id = $request->input('roomtype_id');
        $in_date = $request->input('checkin_date');
        $out_date = $request->input('checkout_date');
        $total_room = $request->input('room');

        $rtdata = Room::where('id', $roomtype_id)->where('is_publish', '=', 1)->first();

        $room_price = $rtdata->price;
        $is_discount = $rtdata->is_discount;

        $total_days = DateDiffInDays($in_date, $out_date);

        $subtotal = $room_price * $total_room * $total_days;

        $total_discount = 0;
        if ($is_discount == 1) {
            if ($rtdata->old_price != '') {
                $old_price = $rtdata->old_price;
                $discount = $old_price * $total_room * $total_days;
                $total_discount = $discount - $subtotal;
            }
        }

        $tax_rate = $gtax['percentage'];

        $total_tax = (($subtotal * $tax_rate) / 100);

        $total_amount = $subtotal + $total_tax;
        $paid_amount = 0;
        $due_amount = $total_amount;

        $data = array(
            'total_room' => $total_room,
            'total_price' => $room_price,
            'discount' => $total_discount,
            'tax' => $total_tax,
            'subtotal' => $subtotal,
            'total_amount' => $total_amount,
            'paid_amount' => $paid_amount,
            'due_amount' => $due_amount,
            'in_date' => $in_date,
            'out_date' => $out_date,
        );

        $response = Booking_manage::where('id', $id)->update($data);
        if ($response) {
            $res['msgType'] = 'success';
            $res['msg'] = __('Updated Successfully');
        } else {
            $res['msgType'] = 'error';
            $res['msg'] = __('Data update failed');
        }

        return response()->json($res);
    }

    //Change Booking Status
    public function ChangeBookingStatus($booking_id, $booking_status_id)
    {

        $MasterData = Booking_manage::where('id', $booking_id)->first();

        $RoomAssignList = Room_assign::where('booking_id', $booking_id)->get();
        $idsArray = array();
        foreach ($RoomAssignList as $row) {
            $idsArray[] = $row->room_id;
        }

        //Approved
        if ($booking_status_id == 2) {

            $mData = array(
                'in_date' => $MasterData->in_date,
                'out_date' => $MasterData->out_date,
                'book_status' => 1,
            );

            Room_manage::whereIn('id', $idsArray)->update($mData);

            //Pending || Checked Out || Canceled
        } else {
            $mData = array(
                'in_date' => null,
                'out_date' => null,
                'book_status' => 2,
            );

            Room_manage::whereIn('id', $idsArray)->update($mData);
        }
    }

    //Book Room page load
    public function getBookRoomPageLoad()
    {

        $RoomTypeList = Room::get();
        $country_list = Country::where('is_publish', '=', 1)->orderBy('id', 'desc')->get();

        return view('backend.book-room', compact('RoomTypeList', 'country_list'));
    }

    public function BookRoomRequest(Request $request)
    {
        $res = array();
        $gtext = gtext();
        $gtax = getTax();

        $roomtype_id = $request->input('roomtype');
        $total_room = $request->input('room');

        $customer_id = '';

        $newaccount = $request->input('new_account');

        if ($newaccount == 'true' || $newaccount == 'on') {
            $new_account = 1;
        } else {
            $new_account = 0;
        }

        $payment_method_id = 1;

        if ($new_account == 1) {

            $validator = Validator::make($request->all(), [
                'roomtype' => 'required',
                'name' => 'required',
                'phone' => 'required',
                'country' => 'required',
                'checkin_date' => 'required',
                'checkout_date' => 'required',
                'room' => 'required',
                'email' => 'required|email|unique:users',
                'password' => 'required|confirmed',
            ]);

            if (!$validator->passes()) {
                $res['msgType'] = 'error';
                $res['msg'] = $validator->errors()->toArray();
                return response()->json($res);
            }

            $userData = array(
                'name' => $request->input('name'),
                'email' => $request->input('email'),
                'phone' => $request->input('phone'),
                'address' => $request->input('address'),
                'state' => $request->input('state'),
                'zip_code' => $request->input('zip_code'),
                'city' => $request->input('city'),
                'password' => Hash::make($request->input('password')),
                'bactive' => base64_encode($request->input('password')),
                'status_id' => 1,
                'role_id' => 2,
            );

            $customer_id = User::create($userData)->id;

        } else {

            $validator = Validator::make($request->all(), [
                'roomtype' => 'required',
                'name' => 'required',
                'email' => 'required',
                'phone' => 'required',
                'country' => 'required',
                'checkin_date' => 'required',
                'checkout_date' => 'required',
                'room' => 'required',
            ]);

            if (!$validator->passes()) {
                $res['msgType'] = 'error';
                $res['msg'] = $validator->errors()->toArray();
                return response()->json($res);
            }

            $customer_id = null;
        }

        $rtdata = Room::where('id', $roomtype_id)->where('is_publish', '=', 1)->first();

        $start_random = RandomString(3);
        $end_random = RandomString(3);

        $booking_no = $start_random . date("his") . $end_random;

        $room_price = $rtdata->price;
        $in_date = $request->input('checkin_date');
        $out_date = $request->input('checkout_date');

        $is_discount = $rtdata->is_discount;

        $total_days = DateDiffInDays($in_date, $out_date);

        $subtotal = $room_price * $total_room * $total_days;

        $total_discount = 0;
        if ($is_discount == 1) {
            if ($rtdata->old_price != '') {
                $old_price = $rtdata->old_price;
                $discount = $old_price * $total_room * $total_days;
                $total_discount = $discount - $subtotal;
            }
        }

        $tax_rate = $gtax['percentage'];

        $total_tax = (($subtotal * $tax_rate) / 100);

        $total_amount = $subtotal + $total_tax;
        $paid_amount = 0;
        $due_amount = $total_amount;

        $data = array(
            'booking_no' => $booking_no,
            'roomtype_id' => $roomtype_id,
            'customer_id' => $customer_id,
            'payment_method_id' => $payment_method_id,
            'payment_status_id' => 2,
            'booking_status_id' => 1,
            'total_room' => $total_room,
            'total_price' => $room_price,
            'discount' => $total_discount,
            'tax' => $total_tax,
            'subtotal' => $subtotal,
            'total_amount' => $total_amount,
            'paid_amount' => $paid_amount,
            'due_amount' => $due_amount,
            'in_date' => $in_date,
            'out_date' => $out_date,
            'name' => $request->input('name'),
            'email' => $request->input('email'),
            'phone' => $request->input('phone'),
            'country' => $request->input('country'),
            'state' => $request->input('state'),
            'zip_code' => $request->input('zip_code'),
            'city' => $request->input('city'),
            'address' => $request->input('address'),
            'comments' => $request->input('comments'),
        );

        $booking_id = Booking_manage::create($data)->id;

        if ($booking_id > 0) {

            if ($gtext['ismail'] == 1) {
                BookingNotify($booking_id, 'booking_request');
            }

            $res['msgType'] = 'success';
            $res['booking_id'] = $booking_id;
            $res['msg'] = __('Your booking request is successfully.');
            return response()->json($res);
        } else {
            $res['msgType'] = 'error';
            $res['msg'] = __('Oops! Your booking request is failed. Please try again.');
            return response()->json($res);
        }
    }

    public function CheckRoomCount(Request $request)
    {
        $res = array();

        $roomtype_id = $request->input('roomtype_id');

        $total_room = Room_manage::where('roomtype_id', '=', $roomtype_id)->where('book_status', '=', 2)->where('is_publish', '=', 1)->count();

        $res['total_room'] = $total_room;

        return response()->json($res);
    }
    public function BookingNotify($booking_id, $type)
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
            $old_price = '<br><span style="text-decoration:line-through;color:#ee0101;">' . $oPrice . '</span>';
            $cal_old_price = '<br><span style="text-decoration:line-through;color:#ee0101;">' . $caloPrice . '</span>';
        }

        $item_list = '<tr>
                <td style="width:35%;text-align:left;border:1px solid #ddd;">' . $mdata['title'] . '</td>
                <td style="width:10%;text-align:center;border:1px solid #ddd;">' . $mdata['total_room'] . '</td>
                <td style="width:10%;text-align:center;border:1px solid #ddd;">' . $total_price . $old_price . '</td>
                <td style="width:25%;text-align:center;border:1px solid #ddd;">' . date('d-m-Y', strtotime($mdata['in_date'])) . ' to ' . date('d-m-Y', strtotime($mdata['out_date'])) . '</td>
                <td style="width:10%;text-align:center;border:1px solid #ddd;">' . $total_days . '</td>
                <td style="width:10%;text-align:right;border:1px solid #ddd;">' . $subtotal . $cal_old_price . '</td>
            </tr>';

        $RoomDataList = DB::table('room_manages')
            ->join('room_assigns', 'room_manages.id', '=', 'room_assigns.room_id')
            ->select('room_manages.room_no')
            ->where('room_assigns.booking_id', $booking_id)
            ->orderBy('room_manages.room_no', 'asc')
            ->get();

        $room_no = '';
        $f = 0;
        foreach ($RoomDataList as $row) {
            if ($f++) {
                $room_no .= ', ';
            }

            $room_no .= $row->room_no;
        }

        $assign_rooms = '';
        if ($room_no != '') {
            $assign_rooms = __('Your assign  room no') . ': ' . $room_no;
        }

        if ($mdata['payment_status_id'] == 1) {
            $pstatus = '#26c56d'; //Completed = 1
        } elseif ($mdata['payment_status_id'] == 2) {
            $pstatus = '#fe9e42'; //Pending = 2
        } elseif ($mdata['payment_status_id'] == 3) {
            $pstatus = '#f25961'; //Canceled = 3
        } elseif ($mdata['payment_status_id'] == 4) {
            $pstatus = '#f25961'; //Incompleted 4
        }

        $SubjectText = '';
        $BodyText = '';

        if ($mdata['booking_status_id'] == 1) {
            $bstatus = '#fe9e42'; //Pending = 1
        } elseif ($mdata['booking_status_id'] == 2) {
            $bstatus = '#26c56d'; //Approved = 2
            $SubjectText = __('Your booking request is approved.');
            $BodyText = __('Your booking request is approved. You can find your booking information below.');
        } elseif ($mdata['booking_status_id'] == 3) {
            $bstatus = '#919395'; //Checked Out = 3
            $SubjectText = __('Your booking has checked out.');
            $BodyText = __('Your booking has checked out. You can find your booking information below.');
        } elseif ($mdata['booking_status_id'] == 4) {
            $bstatus = '#f25961'; //Canceled 4
            $SubjectText = __('Your booking has cancelled.');
            $BodyText = __('Your booking has cancelled. You can find your booking information below.');
        }

        $subject_text = '';
        $body_text = '';
        if ($type == 'booking_request') {
            $subject_text = __('Your booking request is successfully.');
            $body_text = __('We have received your booking request and will contact you as soon. You can find your booking information below.');
        } elseif ($type == 'booking') {
            $subject_text = $SubjectText;
            $body_text = $BodyText;
        }

        $base_url = url('/');

        $InvoiceDownloads = '<a href="' . route('frontend.invoice2', [$booking_id, $mdata['booking_no']]) . '" style="background:' . $gtext['theme_color'] . ';display:block;text-align:center;padding:7px 15px;margin:0 10px 10px 0;border-radius:3px;text-decoration:none;color:#fff;float:left;">' . __('Invoice') . '</a>';

        if ($gtext['ismail'] == 1) {
            try {

                require 'vendor/autoload.php';
                $mail = new PHPMailer(true);
                $mail->CharSet = "UTF-8";

                if ($gtext['mailer'] == 'smtp') {
                    $mail->SMTPDebug = 0; //0 = off (for production use), 1 = client messages, 2 = client and server messages
                    $mail->isSMTP();
                    $mail->Host = $gtext['smtp_host'];
                    $mail->SMTPAuth = true;
                    $mail->Username = $gtext['smtp_username'];
                    $mail->Password = $gtext['smtp_password'];
                    $mail->SMTPSecure = $gtext['smtp_security'];
                    $mail->Port = $gtext['smtp_port'];
                }

                //Get mail
                $mail->setFrom($gtext['from_mail'], $gtext['from_name']);
                $mail->addAddress($mdata['customer_email'], $mdata['customer_name']);

                $mail->isHTML(true);
                $mail->CharSet = "utf-8";
                $mail->Subject = $mdata['booking_no'] . ' - ' . $subject_text;

                $mail->Body =
                '<table style="background-color:#edf2f7;color:#111111;padding:40px 0px;line-height:24px;font-size:14px;" border="0" cellpadding="0" cellspacing="0" width="100%">
                                <tr>
                                    <td>
                                        <table style="background-color:#fff;max-width:1000px;margin:0 auto;padding:30px;" border="0" cellpadding="0" cellspacing="0" width="100%">
                                            <tr><td style="font-size:40px;border-bottom:1px solid #ddd;padding-bottom:25px;font-weight:bold;text-align:center;">' . $gtext['company'] . '</td></tr>
                                            <tr><td style="font-size:25px;font-weight:bold;padding:30px 0px 5px 0px;">' . __('Hi') . ' ' . $mdata['customer_name'] . '</td></tr>
                                            <tr><td>' . $body_text . '</td></tr>
                                            <tr>
                                                <td style="padding-top:30px;padding-bottom:20px;">
                                                    <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                        <tr>
                                                            <td style="vertical-align: top;">
                                                                <table border="0" cellpadding="3" cellspacing="0" width="100%">
                                                                    <tr><td style="font-size:16px;font-weight:bold;">' . __('BILL TO') . ':</td></tr>
                                                                    <tr><td><strong>' . $mdata['customer_name'] . '</strong></td></tr>
                                                                    <tr><td>' . $mdata['customer_address'] . '</td></tr>
                                                                    <tr><td>' . $mdata['city'] . ', ' . $mdata['state'] . ', ' . $mdata['zip_code'] . ', ' . $mdata['country'] . '</td></tr>
                                                                    <tr><td>' . $mdata['customer_email'] . '</td></tr>
                                                                    <tr><td>' . $mdata['customer_phone'] . '</td></tr>
                                                                </table>
                                                                <table style="padding:30px 0px;" border="0" cellpadding="3" cellspacing="0" width="100%">
                                                                    <tr><td style="font-size:16px;font-weight:bold;">' . __('BILL FROM') . ':</td></tr>
                                                                    <tr><td><strong>' . $gtext['company'] . '</strong></td></tr>
                                                                    <tr><td>' . $gtext['invoice_address'] . '</td></tr>
                                                                    <tr><td>' . $gtext['invoice_email'] . '</td></tr>
                                                                    <tr><td>' . $gtext['invoice_phone'] . '</td></tr>
                                                                </table>
                                                            </td>
                                                            <td style="vertical-align: top;">
                                                                <table style="text-align:right;" border="0" cellpadding="3" cellspacing="0" width="100%">
                                                                    <tr><td><strong>' . __('Booking No') . '</strong>: ' . $mdata['booking_no'] . '</td></tr>
                                                                    <tr><td><strong>' . __('Booking Date') . '</strong>: ' . date('d-m-Y', strtotime($mdata['created_at'])) . '</td></tr>
                                                                    <tr><td><strong>' . __('Payment Method') . '</strong>: ' . $mdata['method_name'] . '</td></tr>
                                                                    <tr><td><strong>' . __('Payment Status') . '</strong>: <span style="color:' . $pstatus . '">' . $mdata['pstatus_name'] . '</span></td></tr>
                                                                    <tr><td><strong>' . __('Booking Status') . '</strong>: <span style="color:' . $bstatus . '">' . $mdata['bstatus_name'] . '</span></td></tr>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <table style="border-collapse:collapse;" border="0" cellpadding="5" cellspacing="0" width="100%">
                                                        <tr>
                                                            <th style="width:35%;text-align:left;border:1px solid #ddd;">' . __('Room Type') . '</th>
                                                            <th style="width:10%;text-align:center;border:1px solid #ddd;">' . __('Total Room') . '</th>
                                                            <th style="width:10%;text-align:center;border:1px solid #ddd;">' . __('Price') . '</th>
                                                            <th style="width:25%;text-align:center;border:1px solid #ddd;">' . __('In / Out Date') . '</th>
                                                            <th style="width:10%;text-align:center;border:1px solid #ddd;">' . __('Total Days') . '</th>
                                                            <th style="width:10%;text-align:right;border:1px solid #ddd;">' . __('Total') . '</th>
                                                        </tr>
                                                        ' . $item_list . '
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-top:5px;padding-bottom:20px;">
                                                    <table style="font-weight:bold;" border="0" cellpadding="5" cellspacing="0" width="100%">
                                                        <tr>
                                                            <td style="width:60%;text-align:left;">' . $assign_rooms . '</td>
                                                            <td style="width:25%;text-align:right;">' . __('Subtotal') . ':</td>
                                                            <td style="width:15%;text-align:right;">' . $subtotal . '</td>
                                                        </tr>
                                                        <tr>
                                                            <td style="width:60%;text-align:right;"></td>
                                                            <td style="width:25%;text-align:right;">' . __('Tax') . ':</td>
                                                            <td style="width:15%;text-align:right;">' . $tax . '</td>
                                                        </tr>
                                                        <tr>
                                                            <td style="width:60%;text-align:left;"></td>
                                                            <td style="width:25%;text-align:right;">' . __('Discount') . ':</td>
                                                            <td style="width:15%;text-align:right;">' . $discount . '</td>
                                                        </tr>
                                                        <tr>
                                                            <td style="width:60%;text-align:left;"></td>
                                                            <td style="width:25%;text-align:right;">' . __('Grand Total') . ':</td>
                                                            <td style="width:15%;text-align:right;">' . $total_amount . '</td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr><td style="padding-top:30px;padding-bottom:50px;">' . $InvoiceDownloads . '</td></tr>
                                            <tr><td style="padding-top:10px;border-top:1px solid #ddd;text-align:center;">' . __('Thank you for booking our rooms.') . '</td></tr>
                                            <tr><td style="padding-top:5px;text-align:center;">' . __('If you have any questions about this invoice, please contact us') . '</td></tr>
                                            <tr><td style="padding-top:5px;text-align:center;"><a href="' . $base_url . '">' . $base_url . '</a></td></tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>';

                $mail->send();

                return 1;
            } catch (Exception $e) {
                return 0;
            }
        }
    }
}
