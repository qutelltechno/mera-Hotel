@extends('layouts.app')

@section('title', __('Login'))

@php $gtext = gtext(); @endphp

@section('content')
    <!-- main Section -->
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="loginsignup-area">
                    <div class="loginsignup text-center">
                        <div class="logo">
                            @if (glan()==='en')
                            <a href="{{ url('/login') }}">
                                {{-- <img src="{{ $gtext['back_logo'] ? asset('public/media/' . $gtext['back_logo']) : asset('public/frontend/images/en-logo.png') }}" --}}
                                <img src="{{  asset('public/frontend/images/en-logo.png') }}"

                                    alt="logo">
                            </a>
                            @else
                            <a href="{{ url('/login') }}">
                                <img src="{{   asset('public/frontend/images/ar-logo.png') }}"
                                    alt="logo">
                            </a>
                            @endif

                        </div>
                        @if (session('message'))
                            <div class="alert alert-danger">{{ session('message') }}</div>
                        @endif
                        <form id="login_form" style="direction: rtl;text-align: right;" method="POST"
                            action="{{ route('login') }}">
                            @csrf

                            @if ($errors->any())
                                <ul class="errors-list">
                                    @foreach ($errors->all() as $error)
                                        <li>{{ $error }}</li>
                                    @endforeach
                                </ul>
                            @endif

                            <div class="form-group ">

                                <input type="email" id="email" name="email"
                                    class="form-control mailleidt {{ glan()==='en' ? 'text-left' : '' }}"
                                    placeholder="{{ __('Email Address') }}" value="{{ old('email') }}" required
                                    autocomplete="email" autofocus>
                            </div>
                            <div class="form-group">
                                <input type="password" id="password" name="password"
                                    class="form-control  @error('password') is-invalid @enderror    {{ glan()==='en' ? 'text-left' : '' }}"
                                    placeholder="{{ __('Password') }}" required autocomplete="current-password">
                            </div>
                            {{-- <div class="tw_checkbox checkbox_group" style="text-align: right;">
							<input id="remember" name="remember" type="checkbox" {{ old('remember') ? 'checked' : '' }}>
							<label for="remember">{{ __('Remember me') }}</label>
							<span></span>
						</div> --}}
                            @if (glan() === 'en')
                                    {{-- <div class="tw_checkbox checkbox_group">
                                        <input id="remember" name="remember" type="checkbox"
                                            {{ old('remember') ? 'checked' : '' }}>
                                        <label for="remember">{{ __('Remember me') }}</label>
                                        <span></span>
                                    </div> --}}


                                <div style="float: inline-end;" class="d-flex align-items-center justify-conetet-center gap-4 text-left">
                                        <input id="remember" name="remember" type="checkbox" class="pt-2"
                                        {{ old('remember') ? 'checked' : '' }} style="position: inherit !important ;">
                                        <p class="mt-2 ms-4 px-2 ">{{ __('Remember me') }} </p>

                                </div>
                            @else
                                {{-- <div class="tw_checkbox checkbox_group" style="direction: rtl !important;">
                            <label for="remember" style="display: inline-block; margin-right: 5px;">{{ __('Remember me') }}</label>
                            <input id="remember" name="remember" type="checkbox" {{ old('remember') ? 'checked' : '' }} style="position: inherit !important ;">
                            <span></span>
                        </div> --}}
                        <div class="d-flex align-items-center justify-conetet-center gap-4">
                            <p class="mt-2 ms-4">تذكرنى </p>
                            <input id="remember" name="remember" type="checkbox"
                            {{ old('remember') ? 'checked' : '' }} style="position: inherit !important ;">
                        </div>


                            @endif
                            <input type="submit" class="btn login-btn" value="{{ __('login') }}">

                        </form>

                        @if (Route::has('password.request'))
                            <h3><a href="{{ route('password.request') }}">{{ __('Forgot your password?') }}</a></h3>
                        @endif
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- /main Section -->
@endsection

@push('scripts')
@endpush
