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
						<h2>{{ __('About Us') }}</h2>
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

		<!-- About Section/ -->
        @if($about_us_section->is_publish == 1)
        @foreach ($about_us as $row)
        @php $aRow = json_decode($row->desc); @endphp
        <section class="section about-section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-lg-5 wow fadeInRight ">
                        @if($row->image != '')
                        <div class="row">
                            <div class="col-lg-12 ">
                                <div class="about-img">
                                    <img src="{{ asset('public/media/'.$row->image) }}" alt="{{ $row->title }}">
                                </div>
                            </div>
                        </div>
                        @endif

                        <div class="row">
                            @if($aRow->image2 != '')
                            <div class="col-12 col-md-6">
                                <div class="about-img">
                                    <img src="{{ asset('public/media/'.$aRow->image2) }}" alt="{{ $row->title }}">
                                </div>
                            </div>
                            @endif
                            @if($aRow->image3 != '')
                            <div class="col-12 col-md-6">
                                <div class="about-img">
                                    <img src="{{ asset('public/media/'.$aRow->image3) }}" alt="{{ $row->title }}">
                                </div>
                            </div>
                            @endif
                        </div>
                    </div>

                    <div class="col-md-12 col-lg-7 wow fadeInLeft">
                        <div class="about-card">
                            <div class="about-title">
                                <h5>{{ __('About Us') }}</h5>
                                <h2>{{ $row->title }}</h2>
                            </div>
                            @if($aRow->description != '')
                            <p class="mb20">{{ $aRow->description }}</p>
                            @endif
                            <div class="row mb40">
                                @if($aRow->total_rooms != '')
                                <div class="col-12 col-sm-3 col-lg-3">
                                    <div class="info-card mb15">
                                        <div class="icon">
                                            <i class="bi bi-buildings"></i>
                                        </div>
                                        <div class="content">
                                            <h4>{{ $aRow->total_rooms }}</h4>
                                            <p>{{ __('Rooms') }}</p>
                                        </div>
                                    </div>
                                </div>
                                @endif

                                @if($aRow->total_customers != '')
                                <div class="col-12 col-sm-3 col-lg-3">
                                    <div class="info-card mb15">
                                        <div class="icon">
                                            <i class="bi bi-emoji-smile"></i>
                                        </div>
                                        <div class="content">
                                            <h4>{{ $aRow->total_customers }}</h4>
                                            <p>{{ __('Customers') }}</p>
                                        </div>
                                    </div>
                                </div>
                                @endif

                                @if($aRow->total_amenities != '')
                                <div class="col-12 col-sm-3 col-lg-3">
                                    <div class="info-card mb15">
                                        <div class="icon">
                                            <i class="bi bi-pie-chart"></i>
                                        </div>
                                        <div class="content">
                                            <h4>{{ $aRow->total_amenities }}</h4>
                                            <p>{{ __('Amenities') }}</p>
                                        </div>
                                    </div>
                                </div>
                                @endif

                                @if($aRow->total_packages != '')
                                <div class="col-12 col-sm-3 col-lg-3">
                                    <div class="info-card mb15">
                                        <div class="icon">
                                            <i class="bi bi-percent"></i>
                                        </div>
                                        <div class="content">
                                            <h4>{{ $aRow->total_packages }}</h4>
                                            <p>{{ __('Packages') }}</p>
                                        </div>
                                    </div>
                                </div>
                                @endif
                            </div>

                            @if($aRow->button_text != '')
                            <a href="{{ $row->url }}" class="btn theme-btn" {{ $aRow->target =='' ? '' : "target=".$aRow->target }}>{{ $aRow->button_text }}</a>
                            @endif
                        </div>
                    </div>
                </div>
            </div>
        </section>
        @endforeach
        @endif
        <!-- /About Section/ -->


	<!-- Testimonial Section/ -->
	<section class="section testimonial-section">
		<div class="container">
			<div class="row">
				<div class="col-md-8 offset-md-2">
					<div class="section-heading">
						<h5>{{ __('Testimonial') }}</h5>
						<h2>{{ __('Customer reviews') }}</h2>
						<p>{{ __('What our customers say about us') }}</p>
					</div>
				</div>
			</div>
			<div class="row testimonial-slider">
				@foreach ($testimonial as $row)
				<div class="col-md-12">
					<div class="testimonial-card">
						<div class="client">
							<div class="img-card">
								<img src="{{ asset('public/media/'.$row->image) }}" alt="{{ $row->title }}" />
							</div>
							<div class="client-info">
								<h4>{{ $row->title }}</h4>
								<span>{{ __('Client') }}</span>
							</div>
						</div>
						<div class="quote"><i class="bi bi-quote"></i></div>
						<div class="comment">{{ $row->desc }}</div>
					</div>
				</div>
				@endforeach
			</div>
		</div>
	</section>
	<!-- /Testimonial Section/ -->

	<!-- Preview Video Section-->
	@if($home_video['is_publish'] == 1)
	<section class="preview-section">
		<div class="row align-items-center justify-content-center g-0">
			<div class="col-12 col-md-12 col-lg-12 col-xl-6">
				<div class="preview-video">
					<img src="{{ asset('public/media/'.$home_video['image']) }}" alt="{{ $home_video['title'] }}">
					<div class="video-card">
						<a href="{{ $home_video['video_url'] }}" class="play-icon popup-video">
							<i class="bi bi-play-fill"></i>
						</a>
					</div>
				</div>
			</div>
			<div class="col-12 col-md-12 col-lg-12 col-xl-6">
				<div class="preview-content">
					<h5>{{ __('Preview') }}</h5>
					<h2>{{ $home_video['title'] }}</h2>
					@if($home_video['short_desc'] !='')
					<p>{{ $home_video['short_desc'] }}</p>
					@endif
					<a href="{{ $home_video['url'] }}" {{ $home_video['target'] =='' ? '' : "target=".$home_video['target'] }} class="btn theme-btn">{{ $home_video['button_text'] }}</a>
				</div>
			</div>
		</div>
	</section>
	@endif
	<!-- /Preview Video Section/ -->

	<!-- Blog Section/ -->
	<section class="section blog-section">
		<div class="container">
			<div class="row">
				<div class="col-md-8 offset-md-2">
					<div class="section-heading">
						<h5>{{ __('Our Blogs') }}</h5>
						<h2>{{ __('Our news and updates') }}</h2>
						<p>{{ __('Follow our latest updates') }}</p>
					</div>
				</div>
			</div>
			<div class="row wow fadeIn">
				@foreach ($blogs as $row)
				<div class="col-12 col-md-6 col-lg-4">
					<div class="blog-card">
						<div class="blog-img">
							<a href="{{ route('frontend.article', [$row->id, $row->slug]) }}">
								<img src="{{ asset('public/media/'.$row->thumbnail) }}" alt="{{ $row->title }}" />
							</a>
						</div>
						<div class="blog-content">
							<div class="blog-meta-card">
								<div class="blog-date"><i class="bi bi-alarm"></i>{{ date('d M , Y', strtotime($row->created_at)) }}</div>
								<div class="blog-meta"><i class="bi bi-person"></i>{{ __('By') }}, {{ $row->name }}</div>
							</div>
							<div class="blog-title">
								<h4><a href="{{ route('frontend.article', [$row->id, $row->slug]) }}">{{ $row->title }}</a></h4>
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

@endpush
