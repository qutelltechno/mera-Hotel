<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Hotel;
use App\Models\Room;
use App\Models\Room_image;
use Illuminate\Support\Facades\DB;

class RoomsController extends Controller
{
    //get Category Page
    public function getCategoryPage( $title)
    {
        // $cat=Category::all();
        // dd($cat);

        $lan = glan();

        $mdata = Category::where('id', '=', 9)->where('is_publish', '=', 1)->first();
        if ($mdata != '') {
            $metadata = $mdata;
        } else {
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
                'og_keywords' => '',
            );
        }

        $datalist = Room::where('cat_id', '=', 9)->where('is_publish', '=', 1)->orderBy('id', 'desc')->paginate(9);
        $curntLang = glan();

        $hotels = Hotel::with('rooms')->get();

        return view('frontend.category', compact('metadata', 'datalist','hotels', 'curntLang'));
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
