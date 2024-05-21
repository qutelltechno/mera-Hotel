@extends('layouts.frontend')

@section('title', __('Home'))
@php
    $PageVariation = PageVariation();
    $gtext = gtext();
@endphp

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

    @if ($PageVariation['home_variation'] == 'home_1')
        @include('frontend.partials.homepage1')
    @endif

    <!-- Start of Modal -->
    <div class="modal fade modal_newsletter_card" id="subscribe_popup" data-bs-backdrop="static" data-bs-keyboard="false"
        tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content"
                style="background-image: url({{ asset('public/media/' . $gtext['bg_image_popup']) }});">
                <button onclick="popup_modal_close()" type="button" class="modal-close" data-bs-dismiss="modal"
                    aria-label="Close"><i class="bi bi-x-lg"></i></button>

                <div class="modal-body">
                    <div class="newsletter-card">
                        <h2>{{ $gtext['subscribe_title'] }}</h2>
                        <p>{{ $gtext['subscribe_popup_desc'] }}</p>
                        <div class="newsletter-form">
                            <form>
                                <input name="newsletter_email" id="newsletter_email" type="email" class="form-control"
                                    placeholder="{{ __('Enter your email address') }}" />
                                <a class="btn newsletter-btn newsletter_btn nletter_btn"
                                    href="javascript:void(0);">{{ __('Subscribe') }}</a>
                            </form>
                            <div class="newsletter_msg mt10"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- /End of Modal/ -->

@endsection

@push('scripts')
    <link rel="stylesheet" href="{{ asset('public/frontend/css/bootstrap-fonticon.css') }}">
    <link rel="stylesheet" href="{{ asset('public/frontend/css/bootstrap-datetimepicker.css') }}">
    <script src="{{ asset('public/frontend/js/bootstrap-datetimepicker.min.js') }}"></script>
    <script type="text/javascript">
        $(function() {
            "use strict";

            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });

            $("#checkin_date").datetimepicker({
                format: 'yyyy-mm-dd',
                startDate: new Date(),
                autoclose: true,
                todayBtn: false,
                minView: 2
            });

            $("#checkout_date").datetimepicker({
                format: 'yyyy-mm-dd',
                startDate: new Date(),
                autoclose: true,
                todayBtn: false,
                minView: 2
            });
        });
    </script>
@endpush
