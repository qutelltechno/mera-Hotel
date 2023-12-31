<?php

namespace App\Http\Controllers\Frontend;
use App\Models\Offer_ad;
use App\Models\Section_manage;


use App\Http\Controllers\Controller;

use Illuminate\Http\Request;

class GalleryController extends Controller
{
    public function getgalleryPage(){
        $lan = glan();

        $spa = Offer_ad::where('lan', $lan)->where('desc->button_text', 'spa')->orderBy('id', 'asc')->get();
        $restaurants = Offer_ad::where('lan', $lan)->where('desc->button_text', 'restaurant')->orderBy('id', 'asc')->get();
        $rooms = Offer_ad::where('lan', $lan)->where('desc->button_text', 'room')->orderBy('id', 'asc')->get();

        return view('frontend.gallery', compact(
            'spa',
            'restaurants',
            'rooms',
        ));
    }

}
