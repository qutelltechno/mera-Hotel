<?php

namespace App\Http\Controllers\Backend;

use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use App\Models\Media_option;
use Illuminate\Support\Facades\Validator;
use App\Models\Hotel;
use Illuminate\Http\Request;

class HotelController extends Controller
{
    	//Hotel
        public function getHotelData() {

        $media_datalist = Media_option::orderBy('id','desc')->paginate(28);

		$statuslist = DB::table('tp_status')->orderBy('id', 'asc')->get();
		$languageslist = DB::table('languages')->orderBy('language_name', 'asc')->get();
		$currentLocale = app()->getLocale();
		$datalist = DB::table('hotels')
			->join('languages', 'hotels.lan', '=', 'languages.language_code')
			->select('hotels.*',  'languages.language_name')
			->orderBy('hotels.id','desc')
			->where('hotels.lan',$currentLocale)
			->paginate(20);

            return view('backend.hotels', compact( 'media_datalist', 'datalist', 'statuslist', 'languageslist'));
        }

        	//Get data for hotels Pagination
	public function getHotelTableData(Request $request){

		$search = $request->search;
		$page_type = $request->page_type;

		if($request->ajax()){

			if($search != ''){
				$datalist = DB::table('Hotels')
					->join('tp_status', 'Hotels.is_publish', '=', 'tp_status.id')
					->select('Hotels.*', 'tp_status.status')
					->where(function ($query) use ($search){
						$query->where('name', 'like', '%'.$search.'%');
					})
					->where('section_type', '=', 'hotels')
					->orderBy('Hotels.id','desc')
					->paginate(20);
			}else{

				$datalist = DB::table('Hotels')
					->join('tp_status', 'Hotels.is_publish', '=', 'tp_status.id')
					->select('Hotels.*', 'tp_status.status')
					->where('section_type', '=', 'hotel')
					->orderBy('Hotels.id','desc')
					->paginate(20);
			}

			return view('backend.partials.hotels_table', compact('datalist'))->render();
		}
	}

	//Save data for hotels
    public function saveHotelData(Request $request){
		$res = array();
        try{


		$validator_array = array(
			'image' => $request->input('image'),
			'name' => $request->input('hotel_name'),
			'description' => $request->input('description'),
            'email' => $request->input('email'),
			'phone' => $request->input('phone'),
			'address' => $request->input('address'),
            'map'=> $request->input('map'),
            'facebook'=> $request->input('facebook'),
            'twitter'=> $request->input('twitter'),
            'instagram'=> $request->input('instagram'),
            'youtube'=> $request->input('youtube')
		);

		$validator = Validator::make($validator_array, [
			'image' => 'required',
			'name' => 'required',
			'description' => 'required',
            'email' => 'required',
			'phone' => 'required',
			'address' => 'required',
            'map'=> 'required',
            'facebook'=> 'required',
            'twitter'=> 'required',
            'instagram'=> 'required',
            'youtube'=> 'required'
		]);

		$errors = $validator->errors();

		if($errors->has('image')){
			$res['msgType'] = 'error';
			$res['msg'] = $errors->first('image');
			return response()->json($res);
		}

		if($errors->has('name')){
			$res['msgType'] = 'error';
			$res['msg'] = $errors->first('name');
			return response()->json($res);
		}

		if($errors->has('description')){
			$res['msgType'] = 'error';
			$res['msg'] = $errors->first('description');
			return response()->json($res);
		}

		$data = array(
			'image' => $request->input('image'),
			'name' => $request->input('hotel_name'),
			'description' => $request->input('description'),
            'email' => $request->input('email'),
			'phone' => $request->input('phone'),
			'address' => $request->input('address'),
            'map'=> $request->input('map'),
            'facebook'=> $request->input('facebook'),
            'twitter'=> $request->input('twitter'),
            'instagram'=> $request->input('instagram'),
            'youtube'=> $request->input('youtube'),
            'lan'=> $request->input('lan')
		);

		$id = $request->input('RecordId');

		if($id ==''){
			$response = Hotel::create($data);
			if($response){
				$res['msgType'] = 'success';
				$res['msg'] = __('Saved Successfully');
			}else{
				$res['msgType'] = 'error';
				$res['msg'] = __('Data insert failed');
			}
		}else{
			$response = Hotel::where('id', $id)->update($data);
			if($response){
				$res['msgType'] = 'success';
				$res['msg'] = __('Updated Successfully');
			}else{
				$res['msgType'] = 'error';
				$res['msg'] = __('Data update failed');
			}
		}
    }catch(\Throwable $th){
		$res['msgType'] = 'error';
        $res['msg'] = $th->getMessage();

    }

		return response()->json($res);
    }
    	//Get data for hotels by id
        public function getHotelById(Request $request){

            $id = $request->id;

            $data = Hotel::where('id', $id)->first();

            return response()->json($data);
        }

        //Delete data for hotels
        public function deletehotel(Request $request){

            $res = array();

            $id = $request->id;

            if($id != ''){
                $response = Hotel::where('id', $id)->delete();
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

        //Bulk Action for hotels
        public function bulkActionHotel(Request $request){

            $res = array();

            $idsStr = $request->ids;
            $idsArray = explode(',', $idsStr);

            $BulkAction = $request->BulkAction;

            if($BulkAction == 'publish'){
                $response = Hotel::whereIn('id', $idsArray)->update(['is_publish' => 1]);
                if($response){
                    $res['msgType'] = 'success';
                    $res['msg'] = __('Updated Successfully');
                }else{
                    $res['msgType'] = 'error';
                    $res['msg'] = __('Data update failed');
                }

            }elseif($BulkAction == 'draft'){

                $response = Hotel::whereIn('id', $idsArray)->update(['is_publish' => 2]);
                if($response){
                    $res['msgType'] = 'success';
                    $res['msg'] = __('Updated Successfully');
                }else{
                    $res['msgType'] = 'error';
                    $res['msg'] = __('Data update failed');
                }

            }elseif($BulkAction == 'delete'){
                $response = Hotel::whereIn('id', $idsArray)->delete();
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
