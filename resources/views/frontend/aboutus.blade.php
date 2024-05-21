@extends('layouts.frontend')

@section('title', __('About Us'))
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
@endsection

@section('content')
    <main class="main">


        <!-- Inner Section -->

        <!-- About Section/ -->
        @if ($about_us_section->is_publish == 1)
            @foreach ($about_us as $row)
                @php $aRow = json_decode($row->desc); @endphp
                @php $title = json_decode($row->title); @endphp
                {{-- @dd( $title) --}}


                <section class="section about-section">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12 col-lg-5 wow fadeInRight ">
                                @if ($row->image != '')
                                    <div class="row">
                                        <div class="col-lg-12 ">
                                            <div class="about-img">
                                                <img src="{{ asset('public/media/' . $row->image) }}"
                                                    alt="{{ $title->welcome_title }}">
                                            </div>
                                        </div>
                                    </div>
                                @endif

                                <div class="row">
                                    @if ($aRow->image2 != '')
                                        <div class="col-12 col-md-6">
                                            <div class="about-img">
                                                <img src="{{ asset('public/media/' . $aRow->image2) }}"
                                                    alt="{{ $title->welcome_title }}">
                                            </div>
                                        </div>
                                    @endif
                                    @if ($aRow->image3 != '')
                                        <div class="col-12 col-md-6">
                                            <div class="about-img">
                                                <img src="{{ asset('public/media/' . $aRow->image3) }}"
                                                    alt="{{ $title->welcome_title }}">
                                            </div>
                                        </div>
                                    @endif
                                </div>
                            </div>

                            <div class="col-md-12 col-lg-7 wow fadeInLeft">
                                <div class="about-card">

                                    <hr>

                                    <div class="about-title">

                                        <h5>{{ $title->welcome_title }} </h5>
                                        <p class="text-black">

                                            {!! $aRow->welcom_Description !!}

                                        </p>
                                    </div>
                                    <hr>
                                    <div class="about-title">
                                        <h5>{{ $title->vision_title }}</h5>
                                        <p class="text-black">
                                            {!! $aRow->vision_description !!}
                                        </p>
                                    </div>
                                    <hr>
                                    <div class="about-title">
                                        <h5>{{ $title->values_title }}</h5>
                                        <p class="text-black">

                                            {!! $aRow->values_description !!}


                                        </p>
                                    </div>
                                    <hr>
                                    <div class="about-title">
                                        <h5>{{ $title->package_title }}</h5>
                                        <p class="text-black">

                                            {!! $aRow->package_description !!}

                                        </p>
                                    </div>


                                </div>

                            </div>

                            <div class="about-card mt-lg-4 mb-lg-4 py-lg-5"
                                style="padding-top: 20px;padding-left: 120px;padding-right: 120px;">
                                <div class="row mb40">
                                    @if ($aRow->total_rooms != '')
                                        <div class="col-12 col-sm-3 col-lg-3">
                                            <div class="info-card mb15">
                                                <div class="icon">
                                                    <i class="bi bi-buildings"></i>
                                                </div>
                                                <div>
                                                    <h4>{{ $aRow->total_rooms }}</h4>
                                                    <p>{{ __('Rooms') }}</p>
                                                </div>
                                            </div>
                                        </div>
                                    @endif

                                    @if ($aRow->total_customers != '')
                                        <div class="col-12 col-sm-3 col-lg-3">
                                            <div class="info-card mb15">
                                                <div class="icon">
                                                    <i class="bi bi-emoji-smile"></i>
                                                </div>
                                                <div>
                                                    <h4>{{ $aRow->total_customers }}</h4>
                                                    <p>{{ __('Customers') }}</p>
                                                </div>
                                            </div>
                                        </div>
                                    @endif

                                    @if ($aRow->total_amenities != '')
                                        <div class="col-12 col-sm-3 col-lg-3">
                                            <div class="info-card mb15">
                                                <div class="icon">
                                                    <i class="bi bi-pie-chart"></i>
                                                </div>
                                                <div>
                                                    <h4>{{ $aRow->total_amenities }}</h4>
                                                    <p>{{ __('Amenities') }}</p>
                                                </div>
                                            </div>
                                        </div>
                                    @endif

                                    @if ($aRow->total_packages != '')
                                        <div class="col-12 col-sm-3 col-lg-3">
                                            <div class="info-card mb15">
                                                <div class="icon">
                                                    <i class="bi bi-percent"></i>
                                                </div>
                                                <div>
                                                    <h4>{{ $aRow->total_packages }}</h4>
                                                    <p>{{ __('Packages') }}</p>
                                                </div>
                                            </div>
                                        </div>
                                    @endif
                                </div>
                            </div>

                        </div>
                    </div>
                </section>
            @endforeach
        @endif
        <!-- /About Section/ -->

        <!-- /Preview Video Section/ -->

        <!-- Blog Section/ -->
        <section class="section blog-section block-bg">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 offset-md-2">
                        <div class="section-heading">
                            <h5>{{ __('Our Blogs') }}</h5>
                            <h2>{{ __('Mira Hotels Chain in the Media') }}</h2>
                            {{-- <p>{{ __('Follow our latest updates') }}</p> --}}
                        </div>
                    </div>
                </div>
                <div class="row wow fadeIn">
                    @foreach ($blogs as $row)
                        @php
                            $transTitle = json_decode($row->title, true);
                        @endphp
                        {{-- @dd( $transTitle[glan()]) --}}
                        <div class="col-12 col-md-6 col-lg-4">
                            <div class="blog-card">
                                <div class="blog-img">
                                    <a href="{{ route('frontend.article', [$row->id, $row->slug]) }}">
                                        <img src="{{ asset('public/media/' . $row->thumbnail) }}"
                                            alt="{{ $transTitle[glan()] }}" />
                                    </a>
                                </div>
                                <div class="blog-content">
                                    <div class="blog-meta-card">
                                    </div>
                                    <div class="blog-title">
                                        <h4><a
                                                href="{{ route('frontend.article', [$row->id, $row->slug]) }}">{{ $transTitle[glan()] }}</a>
                                        </h4>
                                    </div>
                                    <div class="read-more-btn">
                                        <a href="{{ route('frontend.article', [$row->id, $row->slug]) }}">
                                            {{ __('Read More') }} <i class="bi bi-arrow-right"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
        </section>
        <!-- /Blog Section/ -->
        </div>
        </section>
        <!-- /Inner Section/ -->
    </main>
@endsection

@push('scripts')
    <style>
        .main-card {
            margin-bottom: 110px;
        }

        img {
            width: 100%;
            object-fit: cover;
        }

        .text-card {
            background-color: rgb(255, 255, 255);
            bottom: -70px;
            padding: 25px;
            width: 100%;
            height: 250px;
        }

        .paragraphe-text {
            overflow: hidden;
            display: -webkit-box;
            -webkit-line-clamp: 12;
            -webkit-box-orient: vertical;
            width: 100%;
            cursor: pointer;
            padding: 0px 10px;
            font-family: 'Cairo', sans-serif;
            margin-bottom: 0;
            padding: 0;
            text-align: justify
        }

        .text-card h3 {
            font-family: 'Cairo', sans-serif;
            font-weight: 700;
            margin-bottom: 15px;
        }
    </style>
@endpush
