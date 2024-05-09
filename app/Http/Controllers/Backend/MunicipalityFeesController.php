<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Models\MunicipalityFees;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;


class MunicipalityFeesController extends Controller
{
    public function getMunicipalityFeesPageLoad() {
		
		$statuslist = DB::table('tp_status')->orderBy('id', 'asc')->get();
		
		$results = MunicipalityFees::offset(0)->limit(1)->get();

		$datalist = array('id' => '', 'title' => '', 'percentage' => '', 'is_publish' => '');
		foreach ($results as $row){
			$datalist['id'] = $row->id;
			$datalist['title'] = $row->title;
			$datalist['percentage'] = $row->percentage;
			$datalist['is_publish'] = $row->is_publish;
		}
		
        return view('backend.fees', compact('statuslist', 'datalist'));
    }
	
	//Save data for Tax
    public function saveFeesData(Request $request){
		$res = array();

		$title = $request->input('title');
		$percentage = $request->input('percentage');
		$is_publish = $request->input('is_publish');
		
		$validator_array = array(
			'title' => $request->input('title'),
			'percentage' => $request->input('percentage'),
			'is_publish' => $request->input('is_publish')
		);
		
		$validator = Validator::make($validator_array, [
			'title' => 'required|max:191',
			'percentage' => 'required|max:100',
			'is_publish' => 'required'
		]);

		$errors = $validator->errors();

		if($errors->has('title')){
			$res['msgType'] = 'error';
			$res['msg'] = $errors->first('title');
			return response()->json($res);
		}
		
		if($errors->has('percentage')){
			$res['msgType'] = 'error';
			$res['msg'] = $errors->first('percentage');
			return response()->json($res);
		}

		if($errors->has('is_publish')){
			$res['msgType'] = 'error';
			$res['msg'] = $errors->first('is_publish');
			return response()->json($res);
		}

		$data = array(
			'title' => $title,
			'percentage' => $percentage,
			'is_publish' => $is_publish
		);
		
		$results = MunicipalityFees::offset(0)->limit(1)->get();
		$id = '';
		foreach ($results as $row){
			$id = $row->id;
		}
		if($id ==''){
			$response = MunicipalityFees::create($data);
			if($response){
				$res['msgType'] = 'success';
				$res['msg'] = __('Saved Successfully');
			}else{
				$res['msgType'] = 'error';
				$res['msg'] = __('Data insert failed');
			}
		}else{
			$response = MunicipalityFees::where('id', $id)->update($data);
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
}
