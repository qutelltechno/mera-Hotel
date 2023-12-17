<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Offer_ad;
use App\Models\Section_manage;
use Illuminate\Http\Request;

class FaqController extends Controller
{
    //

    public function getfaqPage(){
        $lan = glan();

            // Offer & Ads Section
			$offer_ads_section = Section_manage::where('lan',$lan)->where('manage_type', '=', 'home_1')->where('section', '=', 'offer_ads')->first();


            	//Offer & Ads
			$OfferAds = Offer_ad::where('lan', $lan)->where('offer_ad_type', '=', 'homepage1')->orderBy('id', 'asc')->get();

            return view('frontend.faq', compact(
                'offer_ads_section',
                'OfferAds',

            ));
        }
}
