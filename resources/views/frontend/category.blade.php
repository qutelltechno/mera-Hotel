@extends('layouts.frontend')

@section('title', $metadata['name'])
@php $gtext = gtext(); @endphp

@section('meta-content')
    <meta name="keywords" content="{{ $metadata['og_keywords'] }}" />
    <meta name="description" content="{{ $metadata['og_description'] }}" />
    <meta property="og:title" content="{{ $metadata['og_title'] }}" />
    <meta property="og:site_name" content="{{ $gtext['site_name'] }}" />
    <meta property="og:description" content="{{ $metadata['og_description'] }}" />
    <meta property="og:type" content="website" />
    <meta property="og:url" content="{{ url()->current() }}" />
    <meta property="og:image" content="{{ asset('public/media/' . $metadata['og_image']) }}" />
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
    <meta name="twitter:title" content="{{ $metadata['og_title'] }}">
    <meta name="twitter:description" content="{{ $metadata['og_description'] }}">
    <meta name="twitter:image" content="{{ asset('public/media/' . $metadata['og_image']) }}">
@endsection

@section('header')
    @include('frontend.partials.header')


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
            height: 48px;
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

        @media (max-width: 767px) {
            .min-header {
                height: 175px;
            }
        }

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
    </style>
@endsection

@section('content')
    <main class="main">
        <!-- Page Breadcrumb -->
        <!-- <section class="breadcrumb-section" style="background-image: url({{ $metadata['thumbnail'] ? asset('public/media/' . $metadata['thumbnail']) : '' }});">
                  <div class="container">
                   <div class="row">
                    <div class="col-12">
                     <div class="breadcrumb-card wow pulse">
                      {{-- <h2>{{ $metadata['name'] }}</h2> --}}
                     </div>
                    </div>
                   </div>
                  </div>
                 </section> -->
        <!-- /Page Breadcrumb/ -->

        <!-- Inner Section -->
        <section class="inner-section inner-section-bg block-bg">
            <div class="container">
                {{-- <div class="row">
                    <div class="col-md-8 offset-md-2 pt-lg-5">
                        <div class="section-heading">
                            <h1>{{ __('Mira business') }}</h1>
                            <h3>{{ __('Room List') }}</h3>
                        </div>
                    </div>
                    @if (count($datalist) > 0)
                        @foreach ($datalist as $row)
                            <div class="col-sm-12 col-md-6 col-lg-4">
                                <div class="item-card">
                                    <div class="item-image wow fadeInUp">
                                        <a href="{{ route('frontend.room', [$row->id, $row->slug]) }}">
                                            <img src="{{ asset('public/media/' . $row->thumbnail) }}"
                                                alt="{{ $row->title }}" />
                                        </a>
                                        @if ($row->is_discount == 1 && $row->old_price != '')
                                            @php
                                                $discount = number_format((($row->old_price - $row->price) * 100) / $row->old_price);
                                            @endphp
                                            <span class="item-label">{{ $discount }}% {{ __('Off') }}</span>
                                        @endif
                                    </div>
                                    <div class="item-content">
                                        <div class="item-title">
                                            <a
                                                href="{{ route('frontend.room', [$row->id, $row->slug]) }}">{{ str_limit($row->title) }}</a>
                                        </div>
                                        <div class="pric-card">
                                            @if ($row->price != '')
                                                @if ($gtext['currency_position'] == 'left')
                                                    <div class="new-price">
                                                        {{ $gtext['currency_icon'] }}{{ NumberFormat($row->price) }}</div>
                                                @else
                                                    <div class="new-price">
                                                        {{ NumberFormat($row->price) }}{{ $gtext['currency_icon'] }}</div>
                                                @endif
                                            @endif
                                            @if ($row->is_discount == 1 && $row->old_price != '')
                                                @if ($gtext['currency_position'] == 'left')
                                                    <div class="old-price">
                                                        {{ $gtext['currency_icon'] }}{{ NumberFormat($row->old_price) }}
                                                    </div>
                                                @else
                                                    <div class="old-price">
                                                        {{ NumberFormat($row->old_price) }}{{ $gtext['currency_icon'] }}
                                                    </div>
                                                @endif
                                            @endif
                                            <div class="per-day-night">/ {{ __('Night') }}</div>
                                        </div>
                                    </div>
                                    <a href="{{ route('frontend.checkout', [$row->id, md5($row->slug)]) }}"
                                        class="btn theme-btn book-now-btn">{{ __('Book Now') }}</a>

                                    <ul class="item-meta">
                                        <li>{{ __('Adult') }} {{ $row->total_adult }}</li>
                                        <li>{{ __('Child') }} {{ $row->total_child }}</li>
                                    </ul>
                                </div>
                            </div>
                        @endforeach
                    @else
                        {{-- <div class="col-sm-8 offset-sm-2 col-md-6 offset-md-3 col-lg-4 offset-lg-4 col-xl-4 offset-xl-4 col-xxl-4 offset-xxl-4">
					<div class="empty_card">
						<div class="empty_img">
							<img src="{{ asset('public/frontend/images/empty.png') }}" />
						</div>
						<h3>{{ __('Oops! Not found.') }}</h3>
					</div>
				</div> --}}

                    {{-- @endif
                </div> --}} 
                @if ($curntLang == 'ar')
                    <section class="inner-section inner-section-bg block-bg">
                        <div class="container gallery-container">
                            <div class="col-md-8 offset-md-2 pt-lg-5">
                                <div class="section-heading">
                                    <h1 style="text-shadow:none">{{ __('Hotels') }}</h1>
                                </div>
                            </div>

                            {{-- <div class="row">
                            <div class="col-lg-12 text-center min-header">
                                <div class="row justify-content-center">
                                    <div class="col-md-4 col-lg-3">
                                        <button type="button" class="bttn col-md" onclick="myFunction('dm1')">
                                            h1
                                        </button>
                                    </div>
                                    <div class="col-md-4 col-lg-3">
                                        <button type="button" class="bttn col-md" onclick="myFunction('dm2')">
                                            h2
                                        </button>
                                    </div>
                                    <div class="col-md-4 col-lg-3">
                                        <button type="button" class="bttn col-md" onclick="myFunction('dm3')">
                                            h3
                                        </button>

                                    </div>

                                    <div class="col-md-4 col-lg-3">
                                        <button type="button" class="bttn col-md" onclick="myFunction('dm3')">
                                            h4
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div> --}}

                            {{-- @dd($hotelsEn) --}}
                            @if ($curntLang === 'en')
                                <div class="row">
                                    <div class="col-lg-12 text-center min-header">
                                        <div class="row justify-content-center">

                                            @php
                                                $i = 0;
                                            @endphp
                                            @foreach ($hotelsEn as $hotel)
                                                <div class="col-md-4 col-lg-3">
                                                    <button type="button" class="bttn col-md"
                                                        onclick="myFunction('dm{{ ++$i }}')">
                                                        {{ $hotel->name }}
                                                    </button>
                                                </div>
                                            @endforeach
                                        </div>
                                    </div>
                                </div>
                            @else
                                <div class="row">
                                    <div class="col-lg-12 text-center min-header">
                                        <div class="row justify-content-center">
                                            @php
                                                $w = 0;
                                            @endphp
                                            @foreach ($hotelsAr as $hotel)
                                                <div class="col-md-4 col-lg-3">

                                                    <button type="button" class="bttn col-md"
                                                        onclick="myFunction('dm{{ ++$w }}')">
                                                        {{ $hotel->name }}
                                                    </button>
                                                </div>
                                            @endforeach
                                        </div>
                                    </div>
                                </div>

                            @endif


                            <!-- Gallery 1 -->
                            <div class="tz-gallery" id="demo">
                                @php

                                    $firstHotelAr = $hotelsAr->first();
                                    $rooms = $firstHotelAr->rooms;
                                @endphp
                                @if ($rooms && count($rooms) > 0)
                                    <div class="row">

                                        @foreach ($rooms as $row)
                                            <div class="col-lg-4">
                                                <a class="lightbox content" data-fslightbox="gallery"
                                                    href="{{ asset('public/media/' . $row->og_image) }}">
                                                    <img src="{{ asset('public/media/' . $row->og_image) }}" height="250"
                                                        alt="Park" />
                                                    <div class="overlay">
                                                        <h2 class="text-light">{{ $row->title }}</h2>
                                                        <button type="button" class="btn btn-outline-light">
                                                            {{ __('Browse') }}
                                                        </button>
                                                    </div>
                                                </a>
                                            </div>
                                        @endforeach
                                    </div>
                                @else
                                    <div class="text-center">
                                        <h1>لايوجد غرف حاليآ</h1>
                                    </div>
                                @endif

                            </div>

                            <!-- Gallery 2 -->
                            <div class="tz-gallery" style="display: none" id="demo2">
                                @php

                                    $HotelAr2 = $hotelsAr->skip(1)->first();
                                    $rooms2 = $HotelAr2->rooms;
                                    // dd($HotelAr2)
                                @endphp
                                @if ($rooms2 && count($rooms2) > 0)
                                    <div class="row">

                                        @foreach ($rooms2 as $row)
                                            <div class="col-lg-4">
                                                <a class="lightbox content" data-fslightbox="gallery"
                                                    href="{{ asset('public/media/' . $row->og_image) }}">
                                                    <img src="{{ asset('public/media/' . $row->og_image) }}"
                                                        height="250" alt="Park" />
                                                    <div class="overlay">
                                                        <h2 class="text-light">{{ $row->title }}</h2>
                                                        <button type="button" class="btn btn-outline-light">
                                                            {{ __('Browse') }}
                                                        </button>
                                                    </div>
                                                </a>
                                            </div>
                                        @endforeach
                                    </div>
                                @else
                                    <div class="text-center">
                                        <h1>لايوجد غرف حاليآ</h1>
                                    </div>
                                @endif

                            </div>

                            <!-- Gallery 3 -->
                            <div class="tz-gallery" style="display: none" id="demo3">
                                @php

                                    $HotelAr3 = $hotelsAr->skip(2)->first();
                                    $rooms3 = $HotelAr3->rooms;
                                    // dd($HotelAr2)
                                @endphp

                                @if ($rooms3 && count($rooms3) > 0)
                                    <div class="row">
                                        @foreach ($rooms3 as $row)
                                            <div class="col-lg-4">
                                                <a class="lightbox content" data-fslightbox="gallery"
                                                    href="{{ asset('public/media/' . $row->og_image) }}">
                                                    <img src="{{ asset('public/media/' . $row->og_image) }}"
                                                        height="250" alt="Park" />
                                                    <div class="overlay">
                                                        <h2 class="text-light">{{ $row->title }}</h2>
                                                        <button type="button" class="btn btn-outline-light">
                                                            {{ __('Browse') }}
                                                        </button>
                                                    </div>
                                                </a>
                                            </div>
                                        @endforeach
                                    </div>
                                @else
                                    <div class="text-center">
                                        <h1>لايوجد غرف حاليآ</h1>
                                    </div>
                                @endif

                            </div>

                            <div class="tz-gallery" style="display: none" id="demo4">
                                @php
                                    $HotelAr4 = $hotelsAr->skip(3)->first();
                                    $rooms4 = $HotelAr4 ? $HotelAr4->rooms : null;
                                @endphp

                                @if ($rooms4 && count($rooms4) > 0)
                                    <div class="row">
                                        @foreach ($rooms4 as $row)
                                            <div class="col-lg-4">
                                                <a class="lightbox content" data-fslightbox="gallery"
                                                    href="{{ asset('public/media/' . $row->og_image) }}">
                                                    <img src="{{ asset('public/media/' . $row->og_image) }}"
                                                        height="250" alt="Park" />
                                                    <div class="overlay">
                                                        <h2 class="text-light">{{ $row->title }}</h2>
                                                        <button type="button" class="btn btn-outline-light">
                                                            {{ __('Browse') }}
                                                        </button>
                                                    </div>
                                                </a>
                                            </div>
                                        @endforeach
                                    </div>
                                @else
                                    <div class="text-center">
                                        <h1>لايوجد غرف حاليآ</h1>
                                    </div>

                                @endif
                            </div>


                        </div>
                    </section>
                @else
                    <section class="inner-section inner-section-bg block-bg">
                        <div class="container gallery-container">
                            <div class="col-md-8 offset-md-2 pt-lg-5">
                                <div class="section-heading">
                                    <h1 style="text-shadow:none">{{ __('Hotels') }}</h1>
                                </div>
                            </div>

                            {{-- <div class="row">
						<div class="col-lg-12 text-center min-header">
							<div class="row justify-content-center">
								<div class="col-md-4 col-lg-3">
									<button type="button" class="bttn col-md" onclick="myFunction('dm1')">
										h1
									</button>
								</div>
								<div class="col-md-4 col-lg-3">
									<button type="button" class="bttn col-md" onclick="myFunction('dm2')">
										h2
									</button>
								</div>
								<div class="col-md-4 col-lg-3">
									<button type="button" class="bttn col-md" onclick="myFunction('dm3')">
										h3
									</button>

								</div>

								<div class="col-md-4 col-lg-3">
									<button type="button" class="bttn col-md" onclick="myFunction('dm3')">
										h4
									</button>
								</div>
							</div>
						</div>
					</div> --}}

                            {{-- @dd($hotelsEn) --}}
                            @if ($curntLang === 'en')
                                <div class="row">
                                    <div class="col-lg-12 text-center min-header">
                                        <div class="row justify-content-center">

                                            @php
                                                $i = 0;
                                            @endphp
                                            @foreach ($hotelsEn as $hotel)
                                                <div class="col-md-4 col-lg-3">
                                                    <button type="button" class="bttn col-md"
                                                        onclick="myFunction('dm{{ ++$i }}')">
                                                        {{ $hotel->name }}
                                                    </button>
                                                </div>
                                            @endforeach
                                        </div>
                                    </div>
                                </div>
                            @else
                                <div class="row">
                                    <div class="col-lg-12 text-center min-header">
                                        <div class="row justify-content-center">
                                            @php
                                                $w = 0;
                                            @endphp
                                            @foreach ($hotelsAr as $hotel)
                                                <div class="col-md-4 col-lg-3">

                                                    <button type="button" class="bttn col-md"
                                                        onclick="myFunction('dm{{ ++$w }}')">
                                                        {{ $hotel->name }} {{ $w }}
                                                    </button>
                                                </div>
                                            @endforeach
                                        </div>
                                    </div>
                                </div>

                            @endif


                            <!-- Gallery 1 -->
                            <div class="tz-gallery" id="demo">
                                @php

                                    $firstHotelEn = $hotelsEn->first();
                                    $rooms = $firstHotelEn->rooms;
                                @endphp
                                @if ($rooms && count($rooms) > 0)
                                    <div class="row">

                                        @foreach ($rooms as $row)
                                            <div class="col-lg-4">
                                                <a class="lightbox content" data-fslightbox="gallery"
                                                    href="{{ asset('public/media/' . $row->og_image) }}">
                                                    <img src="{{ asset('public/media/' . $row->og_image) }}"
                                                        height="250" alt="Park" />
                                                    <div class="overlay">
                                                        <h2 class="text-light">{{ $row->title }}</h2>
                                                        <button type="button" class="btn btn-outline-light">
                                                            {{ __('Browse') }}
                                                        </button>
                                                    </div>
                                                </a>
                                            </div>
                                        @endforeach
                                    </div>
                                @else
                                    <div class="text-center">
                                        <h1>No rooms found </h1>
                                    </div>
                                @endif

                            </div>

                            <!-- Gallery 2 -->
                            <div class="tz-gallery" style="display: none" id="demo2">
                                @php

                                    $HotelEn2 = $hotelsEn->skip(1)->first();
                                    $rooms2 = $HotelEn2->rooms;
                                    // dd($HotelAr2)
                                @endphp
                                @if ($rooms2 && count($rooms2) > 0)
                                    <div class="row">

                                        @foreach ($rooms2 as $row)
                                            <div class="col-lg-4">
                                                <a class="lightbox content" data-fslightbox="gallery"
                                                    href="{{ asset('public/media/' . $row->og_image) }}">
                                                    <img src="{{ asset('public/media/' . $row->og_image) }}"
                                                        height="250" alt="Park" />
                                                    <div class="overlay">
                                                        <h2 class="text-light">{{ $row->title }}</h2>
                                                        <button type="button" class="btn btn-outline-light">
                                                            {{ __('Browse') }}
                                                        </button>
                                                    </div>
                                                </a>
                                            </div>
                                        @endforeach
                                    </div>
                                @else
                                    <div class="text-center">
                                        <h1> No rooms found </h1>
                                    </div>
                                @endif

                            </div>

                            <!-- Gallery 3 -->
                            <div class="tz-gallery" style="display: none" id="demo3">
                                @php

                                    $HotelEn3 = $hotelsEn->skip(2)->first();
                                    $rooms3 = $HotelEn3->rooms;
                                    // dd($HotelAr2)
                                @endphp

                                @if ($rooms3 && count($rooms3) > 0)
                                    <div class="row">
                                        @foreach ($rooms3 as $row)
                                            <div class="col-lg-4">
                                                <a class="lightbox content" data-fslightbox="gallery"
                                                    href="{{ asset('public/media/' . $row->og_image) }}">
                                                    <img src="{{ asset('public/media/' . $row->og_image) }}"
                                                        height="250" alt="Park" />
                                                    <div class="overlay">
                                                        <h2 class="text-light">{{ $row->title }}</h2>
                                                        <button type="button" class="btn btn-outline-light">
                                                            {{ __('Browse') }}
                                                        </button>
                                                    </div>
                                                </a>
                                            </div>
                                        @endforeach
                                    </div>
                                @else
                                    <div class="text-center">
                                        <h1>No rooms found </h1>
                                    </div>
                                @endif

                            </div>

                            <div class="tz-gallery" style="display: none" id="demo4">
                                @php
                                    $HotelEn4 = $hotelsEn->skip(3)->first();
                                    $rooms4 = $HotelEn4 ? $HotelEn4->rooms : null;
                                @endphp

                                @if ($rooms4 && count($rooms4) > 0)
                                    <div class="row">
                                        @foreach ($rooms4 as $row)
                                            <div class="col-lg-4">
                                                <a class="lightbox content" data-fslightbox="gallery"
                                                    href="{{ asset('public/media/' . $row->og_image) }}">
                                                    <img src="{{ asset('public/media/' . $row->og_image) }}"
                                                        height="250" alt="Park" />
                                                    <div class="overlay">
                                                        <h2 class="text-light">{{ $row->title }}</h2>
                                                        <button type="button" class="btn btn-outline-light">
                                                            {{ __('Browse') }}
                                                        </button>
                                                    </div>
                                                </a>
                                            </div>
                                        @endforeach
                                    </div>
                                @else
                                    <div class="text-center">
                                        <h1> No rooms found </h1>
                                    </div>

                                @endif
                            </div>


                        </div>
                    </section>

                @endif

                <div class="row mt30">
                    <div class="col-lg-12">
                        {{ $datalist->links() }}
                    </div>
                </div>
            </div>
        </section>
        <!-- /Inner Section/ -->
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
