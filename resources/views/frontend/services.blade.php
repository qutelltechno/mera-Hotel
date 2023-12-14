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
						<h2>{{ __('Our Services') }}</h2>
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

	<section class="inner-section inner-section-bg">
		<div class="container">
			<div class="row ">

	<!-- Services Section/ -->
	<section class="section service-section">
		<div class="container">
			<div class="row">
				<div class="col-md-8 offset-md-2">
					<div class="section-heading" id="services">
						<h5>{{ __('Our Services') }}</h5>
						<h2>{{ $our_services_section->title }}</h2>
						@if($our_services_section->desc != '')
						<p>{{ $our_services_section->desc }}</p>
						@endif
					</div>
				</div>
			</div>
			{{-- <div class="row wow fadeIn">
				@foreach ($our_services as $row)
				<div class="col-12 col-md-6 col-lg-4">
					<div class="service-card">
						<div class="service">
							<img src="{{ asset('public/media/'.$row->image) }}" width="150" alt="{{ $row->title }}" style="max-height: 500px; width: 100%; margin-bottom: 12px; border-radius: 8px;" />
						</div>
						<h4>{{ $row->title }}</h4>
						<p>{{ $row->desc }}</p>
					</div>
				</div>
				@endforeach
			</div> --}}
		</div>
	</section>
	<!-- /Services Section/ -->
	<section class="section service-section padd">
		<div class="container">
			<div class="row ">
        <div class="elementor-column elementor-col-33 elementor-top-column elementor-element elementor-element-bbbe7ad" data-id="bbbe7ad" data-element_type="column">
            @foreach ($our_services as $row)
            <div class="elementor-widget-wrap elementor-element-populated">
            <div class="elementor-element elementor-element-c38d0be elementor-widget elementor-widget-image" data-id="c38d0be" data-element_type="widget" data-widget_type="image.default">
            <div class="elementor-widget-container">
            <img decoding="async" width="410" height="510" src="{{ asset('public/media/'.$row->image) }}" class="attachment-full size-full wp-image-1332" alt="" loading="lazy"  sizes="(max-width: 410px) 100vw, 410px"> </div>
            </div>
            <section class="elementor-section elementor-inner-section elementor-element elementor-element-c8c1736 elementor-section-boxed elementor-section-height-default elementor-section-height-default" data-id="c8c1736" data-element_type="section">
            <div class="elementor-container elementor-column-gap-no">
            <div class="elementor-column elementor-col-50 elementor-inner-column elementor-element elementor-element-7e7f8ae" data-id="7e7f8ae" data-element_type="column">
            <div class="elementor-widget-wrap">
            </div>
            </div>
            <div class="elementor-column elementor-col-50 elementor-inner-column elementor-element elementor-element-d6b568c " data-id="d6b568c" data-element_type="column" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
            <div class="elementor-widget-wrap elementor-element-populated">
            <div class="elementor-element elementor-element-b4a7383 elementor-widget elementor-widget-heading" data-id="b4a7383" data-element_type="widget" data-widget_type="heading.default">
            <div class="elementor-widget-container">
            <h1 class="elementor-heading-title elementor-size-default">{{ $row->title }}</h1> </div>
            </div>
            <div class="elementor-element elementor-element-b1c3f5a elementor-widget elementor-widget-text-editor" data-id="b1c3f5a" data-element_type="widget" data-widget_type="text-editor.default">
            <div class="elementor-widget-container">
            <p>{{ $row->desc }}</p> </div>
            </div>
            <div class="elementor-element elementor-element-71624b1 elementor-align-left elementor-widget elementor-widget-button" data-id="71624b1" data-element_type="widget" data-widget_type="button.default">
            <div class="elementor-widget-container">
            <div class="elementor-button-wrapper">
            <a href="https://demo2.pavothemes.com/seasona/all-items/" class="elementor-button-link elementor-button elementor-size-sm" role="button">
            <span class="elementor-button-content-wrapper">
            <span class="elementor-button-icon elementor-align-icon-right">
            <i aria-hidden="true" class="seasona-icon- seasona-icon-long-arrow-right"></i> </span>
            <span class="elementor-button-text">Book Now</span>
            </span>
            </a>
            </div>
            </div>
            </div>
            </div>
            </div>
            </div>
            </section>
            </div>
            @endforeach
            </div>
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

@endpush
