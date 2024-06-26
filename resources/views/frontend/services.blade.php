@extends('layouts.frontend')

@section('title', __('Our Services'))
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

        <section class="inner-section inner-section-bg block-bg">
            <div class="container">
                <div class="row ">

                    <!-- Services Section/ -->

                    <section class="section">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-8 offset-md-2">
                                    <div class="section-heading">
                                        <h5>{{ __('Our Services') }}</h5>
                                        <h2>{{ $our_services_section->title }}</h2>
                                        @if ($our_services_section->desc != '')
                                            <p class="text-black">{{ $our_services_section->desc }}</p>
                                        @endif
                                    </div>
                                </div>
                            </div>
                            <div class="row wow fadeIn">
                                @foreach ($our_services as $row)
                                    <div class="col-12 col-md-6 col-lg-3 col-xl-2">
                                        <div class="service-card" style="height: 160px;     width: 180px;">
                                            <div class="service-icon">
                                                <img src="{{ asset('public/media/' . $row->image) }}"
                                                    alt="{{ $row->title }}" />
                                            </div>
                                            <h4>{{ $row->title }}</h4>
                                            <!-- <p>{{ $row->desc }}</p> -->
                                        </div>
                                    </div>
                                @endforeach
                            </div>
                        </div>
                    </section>

                    <!-- /Services Section/ -->
                    <section class="section">
                        <div class="mt-5">
                            <div class="row">
                                @foreach ($our_services2 as $row)
                                    <div class="col-lg-4 col-md-6 col-sm-12">
                                        <div>
                                            <img style="height:250px" src="{{ asset('public/media/' . $row->image) }}"
                                                style="height:200px">
                                        </div>
                                        <div class="col-9 bg-white p-4 mb-4" style="width:100%">
                                            <h3>{{ $row->title }}</h3>
                                            <p id="scroll1" class="paragraphe-text text-black"
                                                style="height:210px;overflow:auto;">
                                                {{ $row->desc }}.
                                            </p>
                                        </div>
                                    </div>
                                @endforeach
                            </div>
                        </div>
                    </section>
                </div>
            </div>

            </div>
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
