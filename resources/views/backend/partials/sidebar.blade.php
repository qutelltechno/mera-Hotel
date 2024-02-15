<div class="sidebar-wrapper">
    <div class="logo">
        <a href="{{ route('backend.dashboard') }}">

            @if (app()->getLocale() == 'ar')
                <img src="{{ $gtext['back_logo'] ? asset('public/media/' . $gtext['back_logo']) : asset('public/frontend/images/ar-logo.png') }}"
                    alt="logo">
            @else
                <img src="{{ asset('public/frontend/images/en-logo.png') }}" alt="logo">
            @endif
        </a>
        {{-- </a>
		<a href="{{ route('backend.dashboard') }}">
			<img src="{{ $gtext['back_logo'] ? asset('public/media/'.$gtext['back_logo']) : asset('public/backend/images/backend-logo.png') }}" alt="logo">
		</a>  --}}
    </div>
    <ul class="left-navbar">
        @if (Auth::user()->role_id == 1)
            <li><a href="{{ route('backend.dashboard') }}"><i class="fa fa-tachometer"></i>{{ __('Dashboard') }}</a></li>
            <li class="dropdown"><a class="nav-link has-dropdown" href="#" data-toggle="dropdown"><i
                        class="fa fa-rocket"></i>{{ __('Booking Manage') }}</a>
                <ul class="dropdown-menu">
                    <li><a href="{{ route('backend.booking-request') }}">{{ __('Booking Request') }}</a></li>
                    <li><a href="{{ route('backend.book-room') }}">{{ __('Book Room') }}</a></li>
                    <li><a href="{{ route('backend.all-booking') }}">{{ __('All Booking') }}</a></li>
                </ul>
            </li>
            <li><a href="{{ route('backend.room-list') }}"><i class="fa fa-braille"></i>{{ __('Room List') }}</a></li>
            <li class="dropdown"><a class="nav-link has-dropdown" href="#" data-toggle="dropdown"><i
                        class="fa fa-bed"></i>{{ __('Hotel management') }}</a>
                <ul class="dropdown-menu">

                    <li><a href="{{ route('backend.room-type') }}">{{ __('Room Type') }}</a></li>
                    {{-- <li><a href="{{ route('backend.categories') }}">{{ __('Categories') }}</a></li> --}}
                    <li><a href="{{ route('backend.amenities') }}">{{ __('Amenities') }}</a></li>
                    <li><a href="{{ route('backend.complements') }}">{{ __('Complements') }}</a></li>
                    <li><a href="{{ route('backend.bed-types') }}">{{ __('Bed Types') }}</a></li>
                    <li><a href="{{ route('backend.tax') }}">{{ __('Tax') }}</a></li>
                    <li><a href="{{ route('backend.currency') }}">{{ __('Currency') }}</a></li>
                    {{-- <li><a href="{{ route('backend.payment-methods') }}">{{ __('Payment Methods') }}</a></li> --}}
                    <li><a href="{{ route('backend.countries') }}">{{ __('Countries') }}</a></li>
                </ul>
            </li>

            <li class="dropdown"><a class="nav-link has-dropdown" href="#" data-toggle="dropdown"><i
                        class="fa fa-pencil-square-o"></i>{{ __('Content Manage') }}</a>
                <ul class="dropdown-menu">
                    <li><a href="{{ route('backend.Hotel') }}">{{ __('Hotels') }}</a></li>
                    <li><a href="{{ route('backend.slider') }}">{{ __('Slider/Hero Section') }}</a></li>
                    {{-- <li><a href="{{ route('backend.about-us') }}">{{ __('About Us') }}</a></li> --}}
                    <li><a href="{{ route('backend.our-services') }}">{{ __('Our Services') }}</a></li>
                    <li><a href="{{ route('backend.home-video') }}">{{ __('Video Section') }}</a></li>
                    {{-- <li><a href="{{ route('backend.testimonial') }}">{{ __('Testimonial') }}</a></li> --}}
                    <li><a href="{{ route('backend.offer-ads') }}">{{ __('Offer & Ads') }}</a></li>
                    {{-- <li><a href="{{ route('backend.section-manage') }}">{{ __('Section Manage') }}</a></li> --}}

                    <li><a href="{{ route('backend.faq') }}"><i class="bi bi-filter"></i>{{ __('Faq') }}</a></li>
                    <li><a href="{{ route('backend.blog') }}"><i class="fa fa-rss-square"></i>{{ __('Posts') }}</a>
                    </li>
                    <li><a href="{{ route('backend.reservationpolicy') }}">{{ __('Policy Reservation') }}</a></li>

                </ul>
            </li>
            {{-- <li><a href="{{ route('backend.page') }}"><i class="fa fa-clipboard"></i>{{ __('Pages') }}</a></li> --}}







            {{-- <li class="dropdown"><a class="nav-link has-dropdown" href="{{ route('backend.blog') }}" data-toggle="dropdown"><i class="fa fa-rss-square"></i>{{ __('Blog') }}</a>
			<ul class="dropdown-menu">
				<li><a href="{{ route('backend.blog') }}">{{ __('Posts') }}</a></li>
				<li><a href="{{ route('backend.blog-categories') }}">{{ __('Categories') }}</a></li>
			</ul>
		</li> --}}
            {{-- <li class="dropdown"><a class="nav-link has-dropdown" href="#" data-toggle="dropdown"><i
                        class="fa fa-wrench"></i>{{ __('Appearance') }}</a>
                <ul class="dropdown-menu">
                    <li><a href="{{ route('backend.menu') }}">{{ __('Menu') }}</a></li>
                    <li><a href="{{ route('backend.theme-options') }}">{{ __('Theme Options') }}</a></li>
                </ul>
            </li> --}}
            {{-- <li><a href="{{ route('backend.customers') }}"><i class="fa fa-users"></i>{{ __('Customers') }}</a></li> --}}
            {{-- <li><a href="{{ route('backend.contact') }}"><i class="fa fa-envelope"></i>{{ __('Contact') }}</a></li> --}}
            {{-- <li class="dropdown"><a class="nav-link has-dropdown" href="#" data-toggle="dropdown"><i class="fa fa-paper-plane"></i>{{ __('Newsletters') }}</a>
			<ul class="dropdown-menu">
				<li><a href="{{ route('backend.subscribers') }}">{{ __('Subscribers') }}</a></li>
				<li><a href="{{ route('backend.subscribe-settings') }}">{{ __('Subscribe Settings') }}</a></li>
				<li><a href="{{ route('backend.mailchimp-settings') }}">{{ __('MailChimp Settings') }}</a></li>
			</ul>
		</li>
		{{-- <li class="dropdown"><a class="nav-link has-dropdown" href="#" data-toggle="dropdown"><i class="fa fa-language"></i>{{ __('Languages') }}</a>
			<ul class="dropdown-menu">
				<li><a href="{{ route('backend.languages') }}">{{ __('Languages') }}</a></li>
				<li><a href="{{ route('backend.language-keywords') }}">{{ __('Language Keywords') }}</a></li>
			</ul>
		</li> --}}
            {{-- <li><a href="{{ route('backend.media') }}"><i class="fa fa-picture-o"></i>{{ __('Media') }}</a></li> --}}
            {{-- <li><a id="active-settings" href="{{ route('backend.general') }}"><i
                        class="fa fa-cogs"></i>{{ __('Settings') }}</a></li> --}}
            {{-- <li><a href="{{ route('backend.users') }}"><i class="fa fa-user-plus"></i>{{ __('Users') }}</a></li> --}}
        @elseif (Auth::user()->role_id == 3)
            <li><a href="{{ route('receptionist.dashboard') }}"><i
                        class="fa fa-tachometer"></i>{{ __('Dashboard') }}</a></li>
            <li><a href="{{ route('receptionist.room-list') }}"><i class="fa fa-braille"></i>{{ __('Room List') }}</a>
            </li>
            <li class="dropdown"><a class="nav-link has-dropdown" href="#" data-toggle="dropdown"><i
                        class="fa fa-rocket"></i>{{ __('Booking Manage') }}</a>
                <ul class="dropdown-menu">
                    <li><a href="{{ route('receptionist.booking-request') }}">{{ __('Booking Request') }}</a></li>
                    <li><a href="{{ route('receptionist.book-room') }}">{{ __('Book Room') }}</a></li>
                    <li><a href="{{ route('receptionist.all-booking') }}">{{ __('All Booking') }}</a></li>
                </ul>
            </li>
            <li><a href="{{ route('receptionist.profile') }}"><i class="fa fa-user"></i>{{ __('Profile') }}</a></li>
            <li><a href="{{ route('logout') }}"
                    onclick="event.preventDefault(); document.getElementById('receptionist-logout-form').submit();"><i
                        class="fa fa-sign-out"></i>{{ __('Logout') }}</a></li>
            <form id="receptionist-logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                @csrf
            </form>
        @elseif (Auth::user()->role_id == 4)
            <li><a href="{{ route('super.backend.dashboard') }}"><i
                        class="fa fa-tachometer"></i>{{ __('Dashboard') }}</a></li>
            <li class="dropdown"><a class="nav-link has-dropdown" href="#" data-toggle="dropdown"><i
                        class="fa fa-rocket"></i>{{ __('Booking Manage') }}</a>
                <ul class="dropdown-menu">
                    <li><a href="{{ route('super.backend.booking-request') }}">{{ __('Booking Request') }}</a></li>

                    <li><a href="{{ route('super.backend.book-room') }}">{{ __('Book Room') }}</a></li>
                    <li><a href="{{ route('super.backend.all-booking') }}">{{ __('All Booking') }}</a></li>
                </ul>
            </li>
            <li><a href="{{ route('super.backend.room-list') }}"><i
                        class="fa fa-braille"></i>{{ __('Room List') }}</a></li>
            <li class="dropdown"><a class="nav-link has-dropdown" href="#" data-toggle="dropdown"><i
                        class="fa fa-bed"></i>{{ __('Hotel management') }}</a>
                <ul class="dropdown-menu">

                    <li><a href="{{ route('super.backend.room-type') }}">{{ __('Room Type') }}</a></li>
                    {{-- <li><a href="{{ route('backend.categories') }}">{{ __('Categories') }}</a></li> --}}
                    <li><a href="{{ route('super.backend.amenities') }}">{{ __('Amenities') }}</a></li>
                    <li><a href="{{ route('super.backend.complements') }}">{{ __('Complements') }}</a></li>
                    <li><a href="{{ route('super.backend.bed-types') }}">{{ __('Bed Types') }}</a></li>
                    <li><a href="{{ route('super.backend.tax') }}">{{ __('Tax') }}</a></li>
                    <li><a href="{{ route('super.backend.currency') }}">{{ __('Currency') }}</a></li>
                    <li><a href="{{ route('super.backend.payment-methods') }}">{{ __('Payment Methods') }}</a></li>
                    <li><a href="{{ route('super.backend.countries') }}">{{ __('Countries') }}</a></li>
                </ul>
            </li>

            <li class="dropdown"><a class="nav-link has-dropdown" href="#" data-toggle="dropdown"><i
                        class="fa fa-pencil-square-o"></i>{{ __('Content Manage') }}</a>
                <ul class="dropdown-menu">
                    <li><a href="{{ route('super.backend.Hotel') }}">{{ __('Hotels') }}</a></li>
                    <li><a href="{{ route('super.backend.slider') }}">{{ __('Slider/Hero Section') }}</a></li>
                    <li><a href="{{ route('super.backend.about-us') }}">{{ __('About Us') }}</a></li>
                    <li><a href="{{ route('super.backend.our-services') }}">{{ __('Our Services') }}</a></li>
                    <li><a href="{{ route('super.backend.home-video') }}">{{ __('Video Section') }}</a></li>
                    {{-- <li><a href="{{ route('backend.testimonial') }}">{{ __('Testimonial') }}</a></li> --}}
                    <li><a href="{{ route('super.backend.offer-ads') }}">{{ __('Offer & Ads') }}</a></li>


                    <li><a href="{{ route('super.backend.faq') }}"><i
                                class="bi bi-filter"></i>{{ __('Faq') }}</a>
                    </li>
                    <li><a href="{{ route('super.backend.blog') }}"><i
                                class="fa fa-rss-square"></i>{{ __('Posts') }}</a></li>
                    <li><a href="{{ route('super.backend.reservationpolicy') }}">{{ __('Policy Reservation') }}</a>
                    </li>
                    {{-- <li><a href="{{ route('backend.section-manage') }}">{{ __('Section Manage') }}</a></li> --}}
                </ul>
            </li>
            {{-- <li><a href="{{ route('backend.page') }}"><i class="fa fa-clipboard"></i>{{ __('Pages') }}</a></li> --}}





            {{-- <li class="dropdown"><a class="nav-link has-dropdown" href="{{ route('backend.blog') }}" data-toggle="dropdown"><i class="fa fa-rss-square"></i>{{ __('Blog') }}</a>
			<ul class="dropdown-menu">
				<li><a href="{{ route('backend.blog') }}">{{ __('Posts') }}</a></li>
				<li><a href="{{ route('backend.blog-categories') }}">{{ __('Categories') }}</a></li>
			</ul>
		</li> --}}
            <li class="dropdown"><a class="nav-link has-dropdown" href="#" data-toggle="dropdown"><i
                        class="fa fa-wrench"></i>{{ __('Appearance') }}</a>
                <ul class="dropdown-menu">
                    <li><a href="{{ route('super.backend.menu') }}">{{ __('Menu') }}</a></li>
                    <li><a href="{{ route('super.backend.theme-options') }}">{{ __('Theme Options') }}</a></li>


                </ul>
            </li>

            {{-- <li><a href="{{ route('backend.customers') }}"><i class="fa fa-users"></i>{{ __('Customers') }}</a></li> --}}
            {{-- <li><a href="{{ route('backend.contact') }}"><i class="fa fa-envelope"></i>{{ __('Contact') }}</a></li> --}}
            {{-- <li class="dropdown"><a class="nav-link has-dropdown" href="#" data-toggle="dropdown"><i class="fa fa-paper-plane"></i>{{ __('Newsletters') }}</a>
			<ul class="dropdown-menu">
				<li><a href="{{ route('backend.subscribers') }}">{{ __('Subscribers') }}</a></li>
				<li><a href="{{ route('backend.subscribe-settings') }}">{{ __('Subscribe Settings') }}</a></li>
				<li><a href="{{ route('backend.mailchimp-settings') }}">{{ __('MailChimp Settings') }}</a></li>
			</ul>
		</li>
		{{-- <li class="dropdown"><a class="nav-link has-dropdown" href="#" data-toggle="dropdown"><i class="fa fa-language"></i>{{ __('Languages') }}</a>
			<ul class="dropdown-menu">
				<li><a href="{{ route('backend.languages') }}">{{ __('Languages') }}</a></li>
				<li><a href="{{ route('backend.language-keywords') }}">{{ __('Language Keywords') }}</a></li>
			</ul>
		</li> --}}
            <li><a href="{{ route('super.backend.media') }}"><i
                        class="fa fa-picture-o"></i>{{ __('Media') }}</a></li>
            <li><a id="active-settings" href="{{ route('super.backend.general') }}"><i
                        class="fa fa-cogs"></i>{{ __('Settings') }}</a></li>


            <li><a href="{{ route('super.backend.users') }}"><i
                        class="fa fa-user-plus"></i>{{ __('Users') }}</a></li>
            }
        @endif

    </ul>
</div>
