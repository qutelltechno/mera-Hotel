<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Models\ReservationPolicy;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;

class ReservationPolicyController extends Controller
{
    //Complements page load
    public function getPlicyPageLoad()
    {

        $statuslist = DB::table('tp_status')->orderBy('id', 'asc')->get();

        // $datalist = DB::table('complements')
        //     ->join('tp_status', 'complements.is_publish', '=', 'tp_status.id')
        //     ->select('complements.*', 'tp_status.status')
        //     ->orderBy('complements.id','desc')
        //     ->paginate(10);
        $datalist = ReservationPolicy::orderBy('id', 'desc')->paginate(10);
        return view('backend.reservation-policy', compact('statuslist', 'datalist'));
    }

    //Get data for Complements Pagination
    // public function getComplementsTableData(Request $request){

    //     $search = $request->search;

    //     if($request->ajax()){

    //         if($search != ''){

    //             $datalist = DB::table('complements')
    //                 ->join('tp_status', 'complements.is_publish', '=', 'tp_status.id')
    //                 ->select('complements.*', 'tp_status.status')
    //                 ->where(function ($query) use ($search){
    //                     $query->where('complements.name', 'like', '%'.$search.'%')
    //                     ->orWhere('complements.item', 'like', '%'.$search.'%');
    //                 })
    //                 ->orderBy('complements.id','desc')
    //                 ->paginate(10);
    //         }else{

    //             $datalist = DB::table('complements')
    //                 ->join('tp_status', 'complements.is_publish', '=', 'tp_status.id')
    //                 ->select('complements.*', 'tp_status.status')
    //                 ->orderBy('complements.id','desc')
    //                 ->paginate(10);
    //         }

    //         return view('backend.partials.complements_table', compact('datalist'))->render();
    //     }
    // }

    //Save data for Complements
    public function savePolicyData(Request $request)
    {
        $res = array();

        $id = $request->input('RecordId');
        $title = $request->input('title');
        $value = $request->input('value');

        $validator_array = array(
            'title' => $request->input('title'),
            'value' => $request->input('value'),
        );

        $validator = Validator::make($validator_array, [
            'title' => 'required|max:191',
            'value' => 'required|max:191',
        ]);

        $errors = $validator->errors();

        if ($errors->has('title')) {
            $res['msgType'] = 'error';
            $res['msg'] = $errors->first('title');
            return response()->json($res);
        }

        if ($errors->has('value')) {
            $res['msgType'] = 'error';
            $res['msg'] = $errors->first('value');
            return response()->json($res);
        }

        $data = array(
            'title' => $title,
            'value' => $value,
        );

        if ($id == '') {
            $response = ReservationPolicy::create($data);
            if ($response) {
                $res['msgType'] = 'success';
                $res['msg'] = __('Saved Successfully');
            } else {
                $res['msgType'] = 'error';
                $res['msg'] = __('Data insert failed');
            }
        } else {
            $response = ReservationPolicy::where('id', $id)->update($data);
            if ($response) {
                $res['msgType'] = 'success';
                $res['msg'] = __('Updated Successfully');
            } else {
                $res['msgType'] = 'error';
                $res['msg'] = __('Data update failed');
            }
        }

        return response()->json($res);
    }

    //Get data for Complement by id
    public function getPolicyById(Request $request)
    {

        $id = $request->id;

        $data = ReservationPolicy::where('id', $id)->first();

        return response()->json($data);
    }

    //Delete data for Complement
    public function deletePolicy(Request $request)
    {

        $res = array();

        $id = $request->id;

        if ($id != '') {
            $response = ReservationPolicy::where('id', $id)->delete();
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

    //Bulk Action for Complement
    public function bulkActionComplement(Request $request)
    {

        $res = array();

        $idsStr = $request->ids;
        $idsArray = explode(',', $idsStr);

        $BulkAction = $request->BulkAction;

        if ($BulkAction == 'publish') {
            $response = ReservationPolicy::whereIn('id', $idsArray)->update(['is_publish' => 1]);
            if ($response) {
                $res['msgType'] = 'success';
                $res['msg'] = __('Updated Successfully');
            } else {
                $res['msgType'] = 'error';
                $res['msg'] = __('Data update failed');
            }

        } elseif ($BulkAction == 'draft') {

            $response = ReservationPolicy::whereIn('id', $idsArray)->update(['is_publish' => 2]);
            if ($response) {
                $res['msgType'] = 'success';
                $res['msg'] = __('Updated Successfully');
            } else {
                $res['msgType'] = 'error';
                $res['msg'] = __('Data update failed');
            }

        } elseif ($BulkAction == 'delete') {
            $response = ReservationPolicy::whereIn('id', $idsArray)->delete();
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
}
