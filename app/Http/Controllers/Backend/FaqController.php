<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use Illuminate\Http\Request;
use App\Models\Faq;

class FaqController extends Controller
{
    //

      //Get faq
      public function getFaqData(){

		$statuslist = DB::table('tp_status')->orderBy('id', 'asc')->get();
		$languageslist = DB::table('languages')->where('status', 1)->orderBy('language_name', 'asc')->get();

		$AllCount = Faq::count();
		$PublishedCount = Faq::where('is_publish', '=', 1)->count();
		$DraftCount = Faq::where('is_publish', '=', 2)->count();

		$datalist = DB::table('faqs')
			->join('tp_status', 'faqs.is_publish', '=', 'tp_status.id')
			->join('languages', 'faqs.lan', '=', 'languages.language_code')
			->select('faqs.*', 'tp_status.status', 'languages.language_name')
			->orderBy('faqs.id','desc')
			->paginate(20);

        return view('backend.faq', compact('AllCount', 'PublishedCount', 'DraftCount', 'datalist', 'statuslist', 'languageslist'));
    }


	//Get data for faq Pagination
	public function getFaqPaginationData(Request $request){

		$search = $request->search;
		$post_status = $request->post_status;
		$language_code = $request->language_code;

		if($request->ajax()){
			if($search != ''){
				$datalist = DB::table('faqs')
					->join('tp_status', 'faqs.is_publish', '=', 'tp_status.id')
					->join('languages', 'faqs.lan', '=', 'languages.language_code')
					->select('faqs.*', 'tp_status.status', 'languages.language_name')
					->where(function ($query) use ($search){
						$query->where('title', 'like', '%'.$search.'%');
					})
					->where(function ($query) use ($language_code){
						$query->whereRaw("faqs.lan = '".$language_code."' OR '".$language_code."' = '0'");
					})
					->orderBy('faqs.id','desc')
					->paginate(20);
			}else{
				$datalist = DB::table('faqs')
					->join('tp_status', 'faqs.is_publish', '=', 'tp_status.id')
					->join('languages', 'faqs.lan', '=', 'languages.language_code')
					->select('faqs.*', 'tp_status.status', 'languages.language_name')
					->where(function ($query) use ($post_status){
						$query->whereRaw("faqs.is_publish = '".$post_status."' OR '".$post_status."' = '0'");
					})
					->where(function ($query) use ($language_code){
						$query->whereRaw("faqs.lan = '".$language_code."' OR '".$language_code."' = '0'");
					})
					->orderBy('faqs.id','desc')
					->paginate(20);
			}

			return view('backend.partials.faq_table', compact('datalist'))->render();
		}
	}

    //Save data for Faq

    public function saveFaqData(Request $request){
		$res = array();

		$id = $request->input('RecordId');
		$title = esc($request->input('title'));
		$is_publish = $request->input('is_publish');
		$mail_subject = str_slug($request->input('mail_subject'));
		$lan = $request->input('lan');
		$description = $request->input('description');

		$latitude = $request->input('latitude');
		$longitude = $request->input('longitude');
		$zoom = $request->input('zoom');
		$isGoogleMap = $request->input('is_google_map');
		if ($isGoogleMap == 'true' || $isGoogleMap == 'on') {
			$is_google_map = 1;
		}else {
			$is_google_map = 0;
		}

		$faq_form = $request->input('faq_form');

		$isRecaptcha = $request->input('is_recaptcha');
		if ($isRecaptcha == 'true' || $isRecaptcha == 'on') {
			$is_recaptcha = 1;
		}else {
			$is_recaptcha = 0;
		}

 		$validator_array = array(
			'title' => $request->input('title'),
			'language' => $request->input('lan'),
			'is_publish' => $request->input('is_publish')
		);

		$validator = Validator::make($validator_array, [
			'title' => 'required',
			'language' => 'required',
			'is_publish' => 'required'
		]);

		$errors = $validator->errors();

		if($errors->has('title')){
			$res['id'] = '';
			$res['msgType'] = 'error';
			$res['msg'] = $errors->first('title');
			return response()->json($res);
		}



		$faq_info = array(
            'description' => $description,

		);

		$faq_map = array(
			'latitude' => $latitude,
			'longitude' => $longitude,
			'zoom' => $zoom,
			'is_google_map' => $is_google_map
		);

		$data = array(
			'title' => $title,
            'desc' => $description,
			'is_publish' => $is_publish,
			'lan' => $lan
		);

		if($id ==''){
			$response = Faq::create($data);
			if($response){
				$res['msgType'] = 'success';
				$res['msg'] = __('Saved Successfully');
			}else{
				$res['msgType'] = 'error';
				$res['msg'] = __('Data insert failed');
			}
		}else{
			$response = Faq::where('id', $id)->update($data);
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

    	//Delete data for Faq

	public function deleteFaq(Request $request){

		$res = array();

		$id = $request->id;

		if($id != ''){
			$response = Faq::where('id', $id)->delete();
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

    //Bulk Action for Faq
	public function bulkActionFaq(Request $request){

		$res = array();

		$idsStr = $request->ids;
		$idsArray = explode(',', $idsStr);

		$BulkAction = $request->BulkAction;

		if($BulkAction == 'publish'){
			$response = Faq::whereIn('id', $idsArray)->update(['is_publish' => 1]);
			if($response){
				$res['msgType'] = 'success';
				$res['msg'] = __('Updated Successfully');
			}else{
				$res['msgType'] = 'error';
				$res['msg'] = __('Data update failed');
			}

		}elseif($BulkAction == 'draft'){

			$response = Faq::whereIn('id', $idsArray)->update(['is_publish' => 2]);
			if($response){
				$res['msgType'] = 'success';
				$res['msg'] = __('Updated Successfully');
			}else{
				$res['msgType'] = 'error';
				$res['msg'] = __('Data update failed');
			}

		}elseif($BulkAction == 'delete'){
			$response = Faq::whereIn('id', $idsArray)->delete();
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

    public function getFaqById(Request $request){
		$id = $request->id;

		$data = Faq::where('id', $id)->first();

		return response()->json($data);
	}
}
