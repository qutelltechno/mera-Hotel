@extends('layouts.frontend')

@section('title', __('Faq'))
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
								<li class="breadcrumb-item active" aria-current="page">{{ __('Blog') }}</li>
							</ol>
						</nav>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- /Page Breadcrumb/ -->

	<!-- Inner Section -->

	<!-- Offer Section -->
	<section class="section offer-section p-0">
		<div class="container">
			<div class="row ">
                <div class="bg-color-sky-light" data-auto-height="true">
                    <div class="content-lg container">
                        <div class="row row-space-1 margin-b-2">
                            <div class="col-sm-6 sm-margin-b-2">
                                <div class="wow fadeInLeft" data-wow-duration=".3" data-wow-delay=".2s">
                                    <div class="service" data-height="height">
                                        <h3>Art Of Coding</h3>
                                        <p class="margin-b-5">Lorem ipsum dolor amet consectetur ut consequat siad esqudiat dolor</p>
                                        <a href="#" class="content-wrapper-link"></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="wow fadeInLeft" data-wow-duration=".3" data-wow-delay=".1s">
                                    <div class="service" data-height="height">
                                        <h3>Responsive Design</h3>
                                        <p class="margin-b-5">Lorem ipsum dolor amet consectetur ut consequat siad esqudiat dolor</p>
                                        <a href="#" class="content-wrapper-link"></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--// end row -->

                        <div class="row row-space-1 margin-b-2">
                            <div class="col-sm-6 sm-margin-b-2">
                                <div class="wow fadeInLeft" data-wow-duration=".3" data-wow-delay=".3s">
                                    <div class="service" data-height="height">
                                        <h3>Feature Reach</h3>
                                        <p class="margin-b-5">Lorem ipsum dolor amet consectetur ut consequat siad esqudiat dolor</p>
                                        <a href="#" class="content-wrapper-link"></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="wow fadeInLeft" data-wow-duration=".3" data-wow-delay=".2s">
                                    <div class="service" data-height="height">
                                        <h3>Useful Documentation</h3>
                                        <p class="margin-b-5">Lorem ipsum dolor amet consectetur ut consequat siad esqudiat dolor</p>
                                        <a href="#" class="content-wrapper-link"></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--// end row -->

                        <div class="row row-space-1">
                            <div class="col-sm-6 sm-margin-b-2">
                                <div class="wow fadeInLeft" data-wow-duration=".3" data-wow-delay=".4s">
                                    <div class="service" data-height="height">
                                        <h3>Fast Delivery</h3>
                                        <p class="margin-b-5">Lorem ipsum dolor amet consectetur ut consequat siad esqudiat dolor</p>
                                        <a href="#" class="content-wrapper-link"></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="wow fadeInLeft" data-wow-duration=".3" data-wow-delay=".3s">
                                    <div class="service" data-height="height">
                                        <h3>Free Plugins</h3>
                                        <p class="margin-b-5">Lorem ipsum dolor amet consectetur ut consequat siad esqudiat dolor</p>
                                        <a href="#" class="content-wrapper-link"></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--// end row -->
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
