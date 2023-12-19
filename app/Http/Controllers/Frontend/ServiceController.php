<?php

namespace App\Http\Controllers\Frontend;

use App\Models\Section_manage;
use App\Models\Section_content;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class ServiceController extends Controller
{
    public function getservicesPage(){
        $lan = glan();

        //Our Services Section
        $our_services_section = Section_manage::where('lan',$lan)->where('lan', $lan)->where('manage_type', '=', 'home_1')->where('section', '=', 'our_services')->first();

        //Our Services
        $our_services = Section_content::where('lan', $lan)->where('section_type', '=', 'our_services')->where('is_publish', '=', 1)->get();
        $our_services2 = Section_content::where('lan', $lan)->where('section_type', '=', 'our_services')->where('is_publish', '!=', 1)->get();

        return view('frontend.services', compact(
            'our_services',
            'our_services_section',
            'our_services2',
        ));
    }
}
