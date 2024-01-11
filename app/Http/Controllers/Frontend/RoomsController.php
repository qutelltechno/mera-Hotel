<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\Category;
use App\Models\Hotel;
use App\Models\Room;
use App\Models\Room_image;

class RoomsController extends Controller
{
    //get Category Page
    public function getCategoryPage($id, $title){
		$lan = glan();

		$mdata = Category::where('id', '=', $id)->where('is_publish', '=', 1)->first();
		if($mdata !=''){
			$metadata = $mdata;
		}else{
			$metadata = array(
				'id' => '',
				'name' => '',
				'slug' => '',
				'thumbnail' => '',
				'description' => '',
				'lan' => '',
				'is_publish' => '',
				'og_title' => '',
				'og_image' => '',
				'og_description' => '',
				'og_keywords' => ''
			);
		}

		$datalist = Room::where('cat_id', '=', $id)->where('is_publish', '=', 1)->orderBy('id', 'desc')->paginate(9);
		
		// $hotel1 = Hotel::where('id',1)->with('rooms')->get();
	


		$hotelsAr=Hotel::where('lan','ar')->with('rooms')->get();
		
		$hotelsEn=Hotel::where('lan','en')->with('rooms')->get();
		$curntLang=glan();

		$hotelAr2 = $hotelsAr->skip(1)->first();

// if ($hotelAr2) {
//     // $hotelAr2->load('rooms'); // Eager load the rooms relationship
//     $rooms2 = $hotelAr2->rooms;
//     dd($rooms2);
// } else {
//     // Handle the case where there is no second row
//     dd("No second row found");
// }
		
		

        return view('frontend.category', compact('metadata', 'datalist','hotelsAr','hotelsEn','curntLang'));
    }
	
    //get Room Page
    public function getRoomPage($id, $title){
		
		//Room details
		$data = DB::table('rooms')
			->join('categories', 'rooms.cat_id', '=', 'categories.id')
			->select('rooms.*', 'categories.name as category_name', 'categories.slug as category_slug')
			->where('rooms.id', '=', $id)
			->where('rooms.is_publish', '=', 1)
			->first();
		
		$data->amenities = RoomDetailsList($data->amenities, 'amenities');
		$data->complements = RoomDetailsList($data->complements, 'complements');
		$data->beds = RoomDetailsList($data->beds, 'beds');
		
		//Room images
		$room_images = Room_image::where('room_id', $id)->get();
		
        return view('frontend.room', compact('data', 'room_images'));
    }	
}
