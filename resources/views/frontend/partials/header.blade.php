
<header class="header">
	<!--Top Header-->
	<div class="top-header">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-6">
					@if($gtext['is_publish'] == 1)
					<ul class="top-list-1">
                        {{-- @dd($gtext['address']) --}}
						@if($gtext['address'] != '')
						<li><i class="bi bi-geo-alt"></i>{{ $gtext['address'] }}</li>
						@endif
						@if($gtext['phone'] != '')
                        @php
                          $phone=  $gtext['phone'];
                          $plus = substr($phone, 0, 1);
                          $num=substr($phone, 1);
                        @endphp
                        {{-- @dd($plus) --}}
                        {{-- @dd( $gtext['phone_footer'] ) --}}
                        @if (glan()==='en')

                        {{-- <li><i class="bi bi-tablet"></i style="direction: ltr !important;" > {{ $gtext['phone_footer'] }}</li> --}}
                            <li class="px-0"><i class="bi bi-tablet"></i> </li>
                            <li class=""style="direction: ltr !important;"  >
                                <p>{!! nl2br($gtext['phone_footer']) !!}</p>
                            </li>
                        @else
                        <li class="px-0"><i class="bi bi-tablet"></i> </li>
                        {{-- <li><i class="bi bi-tablet"></i style="direction: ltr !important;" >{{ $gtext['phone_footer']}}</li> --}}
                            <li class=""style="direction: ltr !important;"  >
                               <p>{!! nl2br($gtext['phone_footer']) !!}</p>
                            </li>
                        @endif
						@endif
					</ul>
					@endif
				</div>
				<div class="col-lg-6">
					<ul class="top-list">
						@auth
						<li>
							<div class="btn-group language-menu">
								<a href="javascript:void(0);" class="dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
									{{ Auth::user()->name }}
								</a>
								<ul class="dropdown-menu dropdown-menu-end">
									@if(isset(Auth::user()->role_id))
										@if(Auth::user()->role_id == 1)
											<li><a class="dropdown-item" href="{{ route('backend.dashboard') }}">{{ __('My Dashboard') }}</a></li>
										@elseif(Auth::user()->role_id == 3)
											<li><a href="{{ route('receptionist.dashboard') }}"><i class="bi bi-reply"></i>{{ __('My Dashboard') }}</a></li>
										@else
											<li><a class="dropdown-item" href="{{ route('frontend.my-dashboard') }}">{{ __('My Dashboard') }}</a></li>
										@endif
									@endif

									<li><a class="dropdown-item" href="{{ route('logout') }}"
									onclick="event.preventDefault();
									document.getElementById('logout-form').submit();">{{ __('Logout') }}</a>
									<form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
										@csrf
									</form>
									</li>
								</ul>
							</div>
						</li>
						@else
						{{-- @if (Route::has('frontend.register'))
						<li><a href="{{ route('frontend.register') }}"><i class="bi bi-person-plus"></i>{{ __('Register') }}</a></li>
						@endif
						@if (Route::has('login'))
						<li><a href="{{ route('frontend.login') }}"><i class="bi bi-person"></i>{{ __('Sign in') }}</a></li>
						@endif --}}
						@endauth
						@if($gtext['is_language_switcher'] == 1)
						<li>
							@php echo language(); @endphp
						</li>
						@endif
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!--/Top Header/-->
	<!--Menu-->
	<div class="header-menu wow fadeInUp" id="sticky-menu">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-3">
					<div class="logo">
						<a href="{{ url('/') }}">

							@if (app()->getLocale()=='ar')
							<img src="{{ asset('public/frontend/images/ar-logo.png')  }}" alt="logo">
							@else
							<img src="{{ asset('public/frontend/images/en-logo.png') }}" alt="logo">
							@endif

						</a>
					</div>
					<div class="icon-bars-card">
						<a class="off-canvas-btn" href="javascript:void(0);"><i class="bi bi-list"></i></a>
					</div>
				</div>
				<div class="col-lg-9">
					<div class="tp-mega-full">
						<div class="tp-menu align-self-center">
							<nav>
								<ul class="main-menu">
									@php echo HeaderMenuList('HeaderMenuListForDesktop'); @endphp
								</ul>
							</nav>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--/Menu/-->
</header>

<!-- off-canvas menu start -->
<aside class="mobile-menu-wrapper">
	<div class="off-canvas-overlay"></div>
	<div class="offcanvas-body">
		<div class="offcanvas-top">
			<div class="offcanvas-btn-close">
				<i class="bi bi-x-lg"></i>
			</div>
		</div>
		<div class="mobile-navigation">
			<nav>
				<ul class="mobile-menu">
					@php echo HeaderMenuList('HeaderMenuListForMobile'); @endphp
				</ul>
			</nav>
		</div>
	</div>
</aside>
<!-- /off-canvas menu start -->
