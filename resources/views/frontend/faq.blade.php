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
						<h2>{{ __('Faq') }}</h2>
						<nav aria-label="breadcrumb">
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a href="{{ url('/') }}">{{ __('Home') }}</a></li>
								<li class="breadcrumb-item active" aria-current="page">{{ __('Faq') }}</li>
							</ol>
						</nav>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- /Page Breadcrumb/ -->

	<!-- Inner Section -->

	<!-- Faq Section -->
	<section class="inner-section inner-section-bg">
		<div class="container">
			<div class="row">
                <div class="col-md-8 offset-md-2">
					<div class="section-heading" id="services">
						<h5>{{ __('Faq') }}</h5>
						<h2>{{ __('Here you will find frequently asked questions') . '.' }}</h2>
						<p></p>
					</div>
				</div>
                <div class="bg-color-sky-light" data-auto-height="true">
                    <div class="content-lg container">
                            <div class="row">
                                <div class="accordion accordion-flush info-card">
                                    @foreach ($faqs as $faq)
                                    <div class="wow fadeInLeft accordion-item" data-wow-duration=".3" data-wow-delay=".1s">
                                    <h2 class="accordion-header" id="flush-headingOne">
                                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">
                                            {{$faq->title}}
                                        </button>
                                    </h2>
                                    <div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
                                        <div class="accordion-body">{{$faq->desc}}</div>
                                    </div>
                                    </div>
                                    @endforeach
                                </div>
                            </div>
                    </div>
                </div>
			</div>
		</div>
	</section>
	<!-- /Faq Section/ -->
            </div>
        </div>
	</section>
	<!-- /Inner Section/ -->
</main>
@endsection

@push('scripts')

@endpush
