@extends('layouts.frontend')

@section('title', __('Blog'))
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


        <section class="inner-section inner-section-bg">
            <div class="container">
                <div class="row ">

                    <!-- Blog Section/ -->
                    @if (count($datalist) > 0)
                        @foreach ($datalist as $row)
                            <div class="col-lg-4 col-md-6 wow fadeInUp">
                                <div class="blog-card">
                                    <div class="blog-img">
                                        <a href="{{ route('frontend.article', [$row->id, $row->slug]) }}">
                                            <img src="{{ asset('public/media/' . $row->thumbnail) }}"
                                                alt="{{ $row->title }}" />
                                        </a>
                                    </div>
                                    <div class="blog-content">
                                        <div class="blog-meta-card">
                                            <div class="blog-date"><i
                                                    class="bi bi-alarm"></i>{{ date('d M , Y', strtotime($row->created_at)) }}
                                            </div>
                                            <div class="blog-meta"><i class="bi bi-person"></i>{{ __('By') }},
                                                {{ $row->name }}</div>
                                        </div>
                                        <div class="blog-title">
                                            <h4><a
                                                    href="{{ route('frontend.article', [$row->id, $row->slug]) }}">{{ $row->title }}</a>
                                            </h4>
                                        </div>
                                        <div class="read-more-btn">
                                            <a href="{{ route('frontend.article', [$row->id, $row->slug]) }}">
                                                {{ __('Read More') }}
                                                <i class="bi bi-arrow-right"></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    @else
                        <div
                            class="col-sm-8 offset-sm-2 col-md-6 offset-md-3 col-lg-4 offset-lg-4 col-xl-4 offset-xl-4 col-xxl-4 offset-xxl-4">
                            <div class="empty_card">
                                <div class="empty_img">
                                    <img src="{{ asset('public/frontend/images/empty.png') }}" />
                                </div>
                                <h3>{{ __('Oops! Not found.') }}</h3>
                            </div>
                        </div>
                    @endif
                </div>
                <div class="row mt30">
                    <div class="col-lg-12">
                        {{ $datalist->links() }}
                    </div>
                </div>
                <!-- Blog Section/ -->

            </div>
        </section>
        <!-- /Inner Section/ -->
    </main>
@endsection

@push('scripts')
@endpush
