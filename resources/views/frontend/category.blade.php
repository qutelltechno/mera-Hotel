@extends('layouts.frontend')

@section('title', __('Hotels'))
@php $gtext = gtext(); @endphp

@section('meta-content')
    <meta name="keywords" content="{{ $gtext['og_keywords'] }}" />
    <meta name="description" content="{{ $gtext['og_description'] }}" />
    <meta property="og:title" content="{{ $gtext['og_title'] }}" />
    <meta property="og:site_name" content="{{ $gtext['site_name'] }}" />
    <meta property="og:description" content="{{ $gtext['og_description'] }}" />
    <meta property="og:type" content="website" />
    <meta property="og:url" content="{{ url()->current() }}" />
    <meta property="og:image" content="{{ asset('public/media/' . $gtext['og_image']) }}" />
    <meta property="og:image:width" content="600" />
    <meta property="og:image:height" content="315" />
    @if ($gtext['fb_publish'] == 1)
        <meta name="fb:app_id" property="fb:app_id" content="{{ $gtext['fb_app_id'] }}" />
    @endif
    <meta name="twitter:card" content="summary_large_image">
    @if ($gtext['twitter_publish'] == 1)
        <meta name="twitter:site" content="{{ $gtext['twitter_id'] }}">
        <meta name="twitter:creator" content="{{ $gtext['twitter_id'] }}">
    @endif
    <meta name="twitter:url" content="{{ url()->current() }}">
    <meta name="twitter:title" content="{{ $gtext['og_title'] }}">
    <meta name="twitter:description" content="{{ $gtext['og_description'] }}">
    <meta name="twitter:image" content="{{ asset('public/media/' . $gtext['og_image']) }}">
@endsection

@section('header')
    @include('frontend.partials.header')

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.8.1/baguetteBox.min.css" />

    <style>
        .gallery-container ul {
            display: flex;
            justify-content: center;
            list-style-type: none;
        }

        .gallery-container .bttn {
            background-color: transparent;
            border: none;
            font-size: 14px;
            font-weight: 600;
            margin: 10px 20px;
            padding: 0 0 20px;
            text-transform: uppercase;
        }

        .gallery-container .bttn:hover {
            color: #dba765;
            border-bottom: 3px solid #dba765;
        }

        .gallery-container .min-header {
            /* height: 48px; */
            border-bottom: 1px solid rgba(92, 92, 92, 0.404);
            margin-bottom: 20px;
        }

        .gallery-container img {
            border-radius: 15px;
            animation-name: example;
            animation-duration: 2s;
        }

        .gallery-container .tz-gallery .lightbox img {
            width: 100%;
            margin-bottom: 10px;
            transition: 0.2s ease-in-out;
            box-shadow: 0 2px 3px rgba(0, 0, 0, 0.2);
        }

        .gallery-container .tz-gallery .lightbox img:hover {
            filter: brightness(0.3);
        }

        .gallery-container .baguetteBox-button {
            background-color: transparent !important;
        }

        /* @media (max-width: 767px) {
                .min-header {
                    height: 175px;
                }
            } */

        @keyframes example {
            from {
                transform: scale(0.5);
                opacity: 0%;
            }

            to {
                transform: scale(1);
                opacity: 100%;
            }
        }

        .gallery-container .content {
            position: relative;
        }

        .gallery-container .overlay {
            position: absolute;
            bottom: 60px;
            left: 0;
            width: 100%;
            transition: 0.5s;
            opacity: 0;
            color: #fff;
            font-size: 20px;
            padding: 15px;
            text-align: center;
        }

        .gallery-container .content:hover .overlay {
            opacity: 1;
        }

        .gallery-container h1 {
            margin: 0;
            font-weight: 700;
            text-shadow: 1px 1px 10px #000;
        }

        .gallery-container a {
            display: flex !important;
        }

        #baguetteBox-overlay.visible {
            opacity: 1
        }


        .tz-gallery-noroom{
        margin-top: 50px;
        text-shadow: 1px 1px 10px #787171;
        font-size: 5px

     }
    </style>
@endsection

@section('content')
    <main class="main">
        <!-- Page Breadcrumb -->
        <!-- <section class="breadcrumb-section" style="background-image: url({{ $gtext['blog_bg'] ? asset('public/media/' . $gtext['blog_bg']) : '' }});">
          <div class="container">
           <div class="row">
            <div class="col-12">
             <div class="breadcrumb-card wow pulse">
              <h2>{{ __('gallery') }}</h2>
             </div>
            </div>
           </div>
          </div>
         </section> -->
        <!-- /Page Breadcrumb/ -->

        <!-- Inner Section -->
        <section class="inner-section inner-section-bg block-bg">
            <div class="container gallery-container">
                <div class="col-md-8 offset-md-2 pt-lg-5">
                    <div class="section-heading">
                        <h1 style="text-shadow:none">{{ __('Hotel room') }}</h1>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-12 text-center min-header">
                        <div class="row justify-content-center">
                            @php
                            $i = 0;
                        @endphp
                            @forelse ($hotels as $row)
                                <div class="col-md-4 col-lg-3">
                                    <button type="button" class="bttn col-md"  onclick="myFunction('dm{{ ++$i }}')">
                                        {{ $row->name }}
                                    </button>
                                </div>
                            @empty

                            @endforelse

                        </div>
                    </div>
                </div>

                <!-- Gallery 1 -->
                <div class="tz-gallery tz-gallery-noroom" id="demo">
                    @php

                        $firstHotel = $hotels->first();
                        $rooms = $firstHotel->rooms;
                    @endphp
                    @if ($rooms && count($rooms) > 0)
                        <div class="row">

                            @foreach ($rooms as $row)
                                <div class="col-lg-4">
                                    <div class="lightbox content" data-fslightbox="gallery"
                                    href="{{ asset('public/media/' . $row->cover_img) }}">
                                    <img src="{{ asset('public/media/' . $row->cover_img) }}"
                                        height="250" alt="Park" />
                                    <div class="overlay">
                                        <h2 class="text-light">{{ $row->title }}</h2>
                                        {{-- <button type="button" class="btn btn-outline-light">
                                            {{ __('Browse') }}

                                        </button> --}}
                                        <a href="{{ route('frontend.checkout', [$row->id, md5($row->slug)]) }}"
                                            class="btn theme-btn book-now-btn">{{ __('Book Now') }}</a>
                                    </div>
                                </div>
                                </div>
                            @endforeach
                        </div>
                    @else
                        <div class="text-center   bottom: 8px;">
                            <h1 style="font-size: 12px;"> {{__('There are no rooms currently')}} </h1>
                        </div>
                    @endif
                </div>

                {{-- {{-- <!-- Gallery 2 --> --}}


                <div class="tz-gallery tz-gallery-noroom" style="display: none" id="demo2">
                    @php


                        // dd($HotelAr2)
                        $firstHote2 = $hotels->skip(1)->first();
                        $rooms2 = $firstHote2->rooms;
                    @endphp
                    @if ($rooms2 && count($rooms2) > 0)
                        <div class="row">

                            @foreach ($rooms2 as $row)
                                <div class="col-lg-4">
                                    <div class="lightbox content" data-fslightbox="gallery"
                                    href="{{ asset('public/media/' . $row->cover_img) }}">
                                    <img src="{{ asset('public/media/' . $row->cover_img) }}"
                                        height="250" alt="Park" />
                                    <div class="overlay">
                                        <h2 class="text-light">{{ $row->title }}</h2>
                                        {{-- <button type="button" class="btn btn-outline-light">
                                            {{ __('Browse') }}

                                        </button> --}}
                                        <a href="{{ route('frontend.checkout', [$row->id, md5($row->slug)]) }}"
                                            class="btn theme-btn book-now-btn">{{ __('Book Now') }}</a>
                                    </div>
                                </div>
                                </div>
                            @endforeach
                        </div>
                    @else
                        <div class="text-center" >
                            <h1 style="font-size: 12px;"> {{__('There are no rooms currently')}} </h1>
                        </div>
                    @endif

                </div>

                {{-- <!-- Gallery 3 --> --}}
                <div class="tz-gallery tz-gallery-noroom" style="display: none" id="demo3">
                    @php
                        $firstHote3 = $hotels->skip(2)->first();
                        $rooms3 = $firstHote3->rooms;
                    @endphp

                    @if ($rooms3 && count($rooms3) > 0)
                        <div class="row">
                            @foreach ($rooms3 as $row)
                                <div class="col-lg-4">
                                    <div class="lightbox content" data-fslightbox="gallery"
                                    href="{{ asset('public/media/' . $row->cover_img) }}">
                                    <img src="{{ asset('public/media/' . $row->cover_img) }}"
                                        height="250" alt="Park" />
                                    <div class="overlay">
                                        <h2 class="text-light">{{ $row->title }}</h2>
                                        {{-- <button type="button" class="btn btn-outline-light">
                                            {{ __('Browse') }}

                                        </button> --}}
                                        <a href="{{ route('frontend.checkout', [$row->id, md5($row->slug)]) }}"
                                            class="btn theme-btn book-now-btn">{{ __('Book Now') }}</a>
                                    </div>
                                </div>
                                </div>
                            @endforeach
                        </div>
                    @else
                        <div class="text-center ">
                            <h1 style="font-size: 12px;"> {{__('There are no rooms currently')}} </h1>
                        </div>
                    @endif

                </div>


                   {{-- <!-- Gallery 4 --> --}}
                <div class="tz-gallery tz-gallery-noroom" style="display: none" id="demo4">
                    @php

                        $firstHote4 = $hotels->skip(3)->first();
                        $rooms4 = $firstHote4->rooms;
                    @endphp

                    @if ($rooms4 && count($rooms4) > 0)
                        <div class="row">
                            @foreach ($rooms4 as $row)
                                <div class="col-lg-4">
                                    <div class="lightbox content" data-fslightbox="gallery"
                                    href="{{ asset('public/media/' . $row->cover_img) }}">
                                    <img src="{{ asset('public/media/' . $row->cover_img) }}"
                                        height="250" alt="Park" />
                                    <div class="overlay">
                                        <h2 class="text-light">{{ $row->title }}</h2>
                                        {{-- <button type="button" class="btn btn-outline-light">
                                            {{ __('Browse') }}

                                        </button> --}}
                                        <a href="{{ route('frontend.checkout', [$row->id, md5($row->slug)]) }}"
                                            class="btn theme-btn book-now-btn">{{ __('Book Now') }}</a>
                                    </div>
                                </div>
                                </div>
                            @endforeach
                        </div>
                    @else
                        <div class="text-center  bottom: 8px;">
                            <h1 style="font-size: 12px;"> {{__('There are no rooms currently')}} </h1>
                        </div>


                    @endif
                </div>

            </div>
        </section>

    </main>
@endsection

@push('scripts')
    <script src="https://cdnjs.cloudflare.com/ajax/libs/fslightbox/3.0.9/index.min.js"></script>

    <script>
        function myFunction(p1) {
            if (p1 == 'dm1') {
                document.getElementById('demo').style.display = 'block';
                document.getElementById('demo2').style.display = 'none';
                document.getElementById('demo3').style.display = 'none';
                document.getElementById('demo4').style.display = 'none';
            } else if (p1 == 'dm2') {
                document.getElementById('demo').style.display = 'none';
                document.getElementById('demo2').style.display = 'block';
                document.getElementById('demo3').style.display = 'none';
                document.getElementById('demo4').style.display = 'none';

            } else if (p1 == 'dm3') {
                document.getElementById('demo').style.display = 'none';
                document.getElementById('demo2').style.display = 'none';
                document.getElementById('demo3').style.display = 'block';
                document.getElementById('demo4').style.display = 'none';
            } else {
                document.getElementById('demo').style.display = 'none';
                document.getElementById('demo2').style.display = 'none';
                document.getElementById('demo3').style.display = 'none';
                document.getElementById('demo4').style.display = 'block';
            }
        }
    </script>
@endpush
