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

            // Offer & Ads Section
			$offer_ads_section = Section_manage::where('lan',$lan)->where('manage_type', '=', 'home_1')->where('section', '=', 'offer_ads')->first();


            	//Offer & Ads
			$OfferAds = Offer_ad::where('lan', $lan)->where('offer_ad_type', '=', 'homepage1')->orderBy('id', 'asc')->get();

            return view('frontend.gallery', compact(
                'offer_ads_section',
                'OfferAds',

            ));
        }

}
