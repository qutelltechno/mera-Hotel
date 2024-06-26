@extends('layouts.frontend')

@section('title', __('login'))
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
        <section class="inner-section inner-section-bg">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="register">
                            <h4>{{ __('login') }}</h4>
                            <p>{{ __('Please enter your email address and password') }}</p>

                            @if (Session::has('fail'))
                                <div class="alert alert-danger">
                                    {{ Session::get('fail') }}
                                </div>
                            @endif
                            @if (session('message'))
                                <div class="alert alert-danger">{{ session('message') }}</div>
                            @endif
                            <form class="form" method="POST" action="{{ route('frontend.customer-login') }}">
                                @csrf
                                <div class="form-group">
                                    <input name="email" type="email" class="form-control "
                                        placeholder="{{ __('Email Address') }}" value="{{ old('email') }}" required />
                                    @if ($errors->has('email'))
                                        <span class="text-danger">{{ $errors->first('email') }}</span>
                                    @endif
                                </div>
                                <div class="form-group">
                                    <input name="password" type="password"
                                        class="form-control @error('password') is-invalid @enderror"
                                        placeholder="{{ __('Password') }}" required />
                                    @if ($errors->has('password'))
                                        <span class="text-danger">{{ $errors->first('password') }}</span>
                                    @endif
                                </div>
                                @if (glan() === 'en')
                                    <div class="tw_checkbox checkbox_group">
                                        <input id="remember" name="remember" type="checkbox"
                                            {{ old('remember') ? 'checked' : '' }}>
                                        <label for="remember">{{ __('Remember me') }}</label>

                                        <span></span>
                                    </div>
                                @else
                                    <div class="d-flex align-items-center justify-conetet-center gap-4">
                                        <p class="mt-2 ms-4">تذكرنى </p>
                                        <input id="remember" name="remember" type="checkbox"
                                            {{ old('remember') ? 'checked' : '' }} style="position: inherit !important ;">
                                    </div>
                                @endif

                                <input type="submit" class="btn theme-btn full" value="{{ __('login') }}">
                            </form>
                            @if (Route::has('frontend.reset'))
                                <h3><a href="{{ route('frontend.reset') }}">{{ __('Forgot your password?') }}</a></h3>
                            @endif
                            @if (Route::has('frontend.register'))
                                <h3><a href="{{ route('frontend.register') }}">{{ __('Sign up for an account') }}</a></h3>
                            @endif
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
