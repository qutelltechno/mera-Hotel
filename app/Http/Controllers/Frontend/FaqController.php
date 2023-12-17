<?php

namespace App\Http\Controllers\Frontend;

use App\Models\Faq;
use App\Models\Offer_ad;
use Illuminate\Http\Request;
use App\Models\Section_manage;
use App\Http\Controllers\Controller;

class FaqController extends Controller
{
    //

    public function getfaqPage(){
        $lan = glan();

        $faqs = Faq::where('lan', $lan)->orderBy('id', 'asc')->get();

        return view('frontend.faq', compact(
            'faqs',
        ));
    }
}
