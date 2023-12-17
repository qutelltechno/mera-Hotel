@extends('layouts.frontend')

@section('title', __('gallery'))
@php $gtext = gtext(); @endphp

@section('meta-content')
	<meta name="keywords" content="{{ $gtext['og_keywords'] }}" />
	<meta name="description" content="{{ $gtext['og_description'] }}" />
	<meta property="og:title" content="{{ $gtext['og_title'] }}" />
	<meta property="og:site_name" content="{{ $gtext['site_name'] }}" />
	<meta property="og:description" content="{{ $gtext['og_description'] }}" />
	<meta property="og:type" content="website" />
	<meta property="og:url" content="{{ url()->current() }}" />
	<meta property="og:image" content="{{ asset('public/media/'.$gtext['og_image']) }}" />
	<meta property="og:image:width" content="600" />
	<meta property="og:image:height" content="315" />
	@if($gtext['fb_publish'] == 1)
	<meta name="fb:app_id" property="fb:app_id" content="{{ $gtext['fb_app_id'] }}" />
	@endif
	<meta name="twitter:card" content="summary_large_image">
	@if($gtext['twitter_publish'] == 1)
	<meta name="twitter:site" content="{{ $gtext['twitter_id'] }}">
	<meta name="twitter:creator" content="{{ $gtext['twitter_id'] }}">
	@endif
	<meta name="twitter:url" content="{{ url()->current() }}">
	<meta name="twitter:title" content="{{ $gtext['og_title'] }}">
	<meta name="twitter:description" content="{{ $gtext['og_description'] }}">
	<meta name="twitter:image" content="{{ asset('public/media/'.$gtext['og_image']) }}">
@endsection

@section('header')
@include('frontend.partials.header')
@endsection

@section('content')
<main class="main">
	<!-- Page Breadcrumb -->
	<section class="breadcrumb-section" style="background-image: url({{ $gtext['blog_bg'] ? asset('public/media/'.$gtext['blog_bg']) : '' }});">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="breadcrumb-card wow pulse">
						<h2>{{ __('gallery') }}</h2>
						<nav aria-label="breadcrumb">
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a href="{{ url('/') }}">{{ __('Home') }}</a></li>
								<li class="breadcrumb-item active" aria-current="page">{{ __('gallery') }}</li>
							</ol>
						</nav>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- /Page Breadcrumb/ -->

	<!-- Inner Section -->

	<section class="inner-section inner-section-bg">
		<div class="container">
			<div class="row ">


	<!-- Offer Section -->

			{{-- <div class="row ">
				@foreach ($OfferAds as $row)
				@php $aRow = json_decode($row->desc); @endphp
				<div class="col-lg-4 wow fadeInLeft">
					<div class="offer-card ">
						<div class="offer-image">
							<img src="{{ asset('public/media/'.$row->image) }}" alt="{{ $row->title }}" />

						</div>
						<div class="offer-content">
							<h2>{{ $row->title }}</h2>
							@if($aRow->text_2 != '')
							<p>{{ $aRow->text_2 }}</p>
							@endif

						</div>
					</div>
				</div>
				@endforeach
			</div> --}}
            <div class="site-section site-blocks-2">
                <div class="container">
                  <div class="row">
				    @foreach ($OfferAds as $row)
				    @php $aRow = json_decode($row->desc); @endphp
                    <div class="col-sm-6 col-md-6 col-lg-4 mb-4 mb-lg-0 aos-init aos-animate" data-aos="fade" data-aos-delay="" >
                      <a class="block-2-item" href="#">
                        <figure class="image" style="border-radius:10px ">
                          <img src="{{ asset('public/media/'.$row->image) }}" alt="{{ $row->title }}" class="img-fluid" >
                        </figure>
                        <div class="text p-2" >
                          <span class="text-uppercase">{{ $row->title }}</span>
                            @if($aRow->text_2 != '')
                          <h3 style="font-size: 25px">{{ $aRow->text_2 }}</h3>
                          @endif

                        </div>
                      </a>
                    </div>
                    @endforeach
                  </div>


                </div>
           </div>
		</div>
	</section>
	<!-- /Offer Section/ -->
            </div>
        </div>
	</section>
	<!-- /Inner Section/ -->
</main>
@endsection

@push('scripts')

@endpush
