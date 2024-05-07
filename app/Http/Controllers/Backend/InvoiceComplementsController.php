<?php

namespace App\Http\Controllers\Backend;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use App\Models\Complement;
use App\Models\InvoiceComplement;




class InvoiceComplementsController extends Controller
{

//Complements page load
public function getComplementsPageLoad($invoiceNum) {
    $invoiceData=InvoiceComplement::where('invoice_number',$invoiceNum)
    ->with('complements')
    ->get();
    // return $invoiceData;

    $datalist = DB::table('complements')
    ->join('tp_status', 'complements.is_publish', '=', 'tp_status.id')
    ->select('complements.*', 'tp_status.status')
    ->orderBy('complements.id','desc')
    ->paginate(10);

    return view('backend.invoice-complements', compact( 'datalist','invoiceNum','invoiceData'));
}


//Save data for Complements
public function saveComplementsData(Request $request){
    $res = array();


    $id = $request->input('RecordId');
    $complement_id = $request->input('complement');
    $price = $request->input('price');
    $invoice_number = $request->input('invoice_number');

    $validator_array = array(
        'complement_id' => $request->input('complement'),
        'price' => $request->input('price'),
        'invoice_number' => $request->input('invoice_number'),
    );

    $validator = Validator::make($validator_array, [
        'complement_id' => 'required|numeric',
        'price' => 'required|numeric',
        'invoice_number' => 'required',
    ]);

    $errors = $validator->errors();


    if($errors->has('price')){
        $res['msgType'] = 'error';
        $res['msg'] = $errors->first('price');
        return response()->json($res);
    }

    $model=InvoiceComplement::exists();
    if ( $model) {
        $newId = InvoiceComplement::max('id') + 1;
    } else {
        $newId =  1;
    }


    $data = array(
        'id'=>$newId,
        'complement_id' => $complement_id,
        'price' => $price,
        'invoice_number' => $invoice_number,
        'created_at' => now(),
    );

    if($id ==''){
        $response = InvoiceComplement::create($data);
        if($response){
            $res['msgType'] = 'success';
            $res['msg'] = __('Saved Successfully');
        }else{
            $res['msgType'] = 'error';
            $res['msg'] = __('Data insert failed');
        }
    }else{
        $response = Complement::where('id', $id)->update($data);
        if($response){
            $res['msgType'] = 'success';
            $res['msg'] = __('Updated Successfully');
        }else{
            $res['msgType'] = 'error';
            $res['msg'] = __('Data update failed');
        }
    }

    return response()->json($res);
}
/////////////////////////////


public function getComplementsTableData(Request $request){

                $invoiceData=InvoiceComplement::where('invoice_number',$request->invoiceNum)
                ->with('complements')
                ->get();
        return view('backend.partials.invoice-complements-table', compact('invoiceData'))->render();
}



/////////////////////
//Get data for Complement by id
public function getComplementById(Request $request){

    $id = $request->id;

    $data = InvoiceComplement::where('id', $id)->first();

    return response()->json($data);
}

//Delete data for Complement
public function deleteComplement(Request $request){

    $res = array();

    $id = $request->id;

    if($id != ''){
        $response = Complement::where('id', $id)->delete();
        if($response){
            $res['msgType'] = 'success';
            $res['msg'] = __('Removed Successfully');
        }else{
            $res['msgType'] = 'error';
            $res['msg'] = __('Data remove failed');
        }
    }

    return response()->json($res);
}

//Bulk Action for Complement
public function bulkActionComplement(Request $request){

    $res = array();

    $idsStr = $request->ids;
    $idsArray = explode(',', $idsStr);

    $BulkAction = $request->BulkAction;

    if($BulkAction == 'publish'){
        $response = Complement::whereIn('id', $idsArray)->update(['is_publish' => 1]);
        if($response){
            $res['msgType'] = 'success';
            $res['msg'] = __('Updated Successfully');
        }else{
            $res['msgType'] = 'error';
            $res['msg'] = __('Data update failed');
        }

    }elseif($BulkAction == 'draft'){

        $response = Complement::whereIn('id', $idsArray)->update(['is_publish' => 2]);
        if($response){
            $res['msgType'] = 'success';
            $res['msg'] = __('Updated Successfully');
        }else{
            $res['msgType'] = 'error';
            $res['msg'] = __('Data update failed');
        }

    }elseif($BulkAction == 'delete'){
        $response = Complement::whereIn('id', $idsArray)->delete();
        if($response){
            $res['msgType'] = 'success';
            $res['msg'] = __('Removed Successfully');
        }else{
            $res['msgType'] = 'error';
            $res['msg'] = __('Data remove failed');
        }
    }

    return response()->json($res);
}
}
