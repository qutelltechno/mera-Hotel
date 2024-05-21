<?php

namespace App\Http\Controllers\Frontend;

use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use App\Models\Section_manage;
use App\Models\Section_content;
use App\Models\Tp_option;
use Illuminate\Http\Request;

class AboutUsController extends Controller
{
    public function getAboutUsPage(){
        $lan = glan();

        //About Us Section
        $about_us_section = Section_manage::where('lan',$lan)->where('manage_type', '=', 'home_1')->where('section', '=', 'about_us')->where('is_publish', '=', 1)->first();
        if($about_us_section ==''){
            $about_us_array =  array();
            $about_us_array['image'] = '';
            $about_us_array['is_publish'] = 2;
            $about_us_section = json_decode(json_encode($about_us_array));
        }

        //About Us
		$about_us = Section_content::where('lan', $lan)->where('lan', $lan)->where('page_type', '=', 'home_1')->where('section_type', '=', 'about_us')->where('is_publish', '=', 1)->orderBy('id', 'desc')->limit(1)->get();
        //Testimonial Section
        $testimonial_section = Section_manage::where('lan',$lan)->where('manage_type', '=', 'home_1')->where('section', '=', 'testimonial')->first();

        //Testimonial
        $testimonial = Section_content::where('section_type', '=', 'testimonial')->get();

        //Home Video Section
        $hv_data = Tp_option::where('option_name', 'home-video')->where('lan', $lan)->get();
        $id_home_video = '';
        foreach ($hv_data as $row){
            $id_home_video = $row->id;
        }

        $home_video = array();
        if($id_home_video != ''){
            $hvData = json_decode($hv_data);
            $dataObj = json_decode($hvData[0]->option_value);

            $home_video['title'] = $dataObj->title;
            $home_video['short_desc'] = $dataObj->short_desc;
            $home_video['url'] = $dataObj->url;
            $home_video['video_url'] = $dataObj->video_url;
            $home_video['button_text'] = $dataObj->button_text;
            $home_video['target'] = $dataObj->target;
            $home_video['image'] = $dataObj->image;
            $home_video['is_publish'] = $dataObj->is_publish;
        }else{
            $home_video['title'] = '';
            $home_video['short_desc'] = '';
            $home_video['url'] = '';
            $home_video['video_url'] = '';
            $home_video['button_text'] = '';
            $home_video['target'] = '';
            $home_video['image'] = '';
            $home_video['is_publish'] = '2';
        }

        //Blogs
        $blogs = DB::table('blogs')
        ->join('users', 'blogs.user_id', '=', 'users.id')
        ->select('blogs.*', 'users.name')
        ->orderBy('id','desc')
        ->limit(3)
        ->get();

        return view('frontend.aboutus', compact(
            'about_us_section',
            'about_us',
            'testimonial_section',
            'testimonial',
            'home_video',
            'blogs',
        ));
    }
}
