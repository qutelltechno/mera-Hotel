@extends('layouts.backend')

@section('title', __('Dashboard'))
@php $gtext = gtext(); @endphp
@section('content')
    <!-- main Section -->
    <div class="main-body">
        <div class="container-fluid">

            <div class="row">


                <div class="col-sm-6 col-md-4 col-lg-3 col-xl-3 mt-25">
                    <div class="desh-item-card">
                        <div class="icon-card tp-bg-success">
                            <i class="fa fa-check"></i>
                        </div>
                        <div class="item-content">
                            <div class="desc">{{ __('Total Booking Completed') }}</div>
                            <div class="count">{{ $TotalBookingCompleted }}</div>
                        </div>
                        <span class="btn-view">
                            <a href="{{ route('backend.all-booking') }}"><i class="fa fa-eye"></i>{{ __('View') }}</a>
                        </span>
                    </div>
                </div>

                <div class="col-sm-6 col-md-4 col-lg-3 col-xl-3 mt-25">
                    <div class="desh-item-card">
                        <div class="icon-card tp-bg-success">
                            <i class="fa fa-id-badge"></i>
                        </div>
                        <div class="item-content">
                            <div class="desc">{{ __('Total Running Booking') }}</div>
                            <div class="count">{{ $TotalRunningBooking }}</div>
                        </div>
                        <span class="btn-view">
                            <a href="{{ route('backend.all-booking') }}"><i class="fa fa-eye"></i>{{ __('View') }}</a>
                        </span>
                    </div>
                </div>

                <div class="col-sm-6 col-md-4 col-lg-3 col-xl-3 mt-25">
                    <div class="desh-item-card">
                        <div class="icon-card tp-bg-warning">
                            <i class="fa fa-hourglass-end"></i>
                        </div>
                        <div class="item-content">
                            <div class="desc">{{ __('Total Booking Request') }}</div>
                            <div class="count">{{ $TotalBookingRequest }}</div>
                        </div>
                        <span class="btn-view">
                            <a href="{{ route('backend.all-booking') }}"><i class="fa fa-eye"></i>{{ __('View') }}</a>
                        </span>
                    </div>
                </div>

                <div class="col-sm-6 col-md-4 col-lg-3 col-xl-3 mt-25">
                    <div class="desh-item-card">
                        <div class="icon-card tp-bg-danger">
                            <i class="fa fa-ban"></i>
                        </div>
                        <div class="item-content">
                            <div class="desc">{{ __('Total Booking Canceled') }}</div>
                            <div class="count">{{ $TotalBookingCanceled }}</div>
                        </div>
                        <span class="btn-view">
                            <a href="{{ route('backend.all-booking') }}"><i class="fa fa-eye"></i>{{ __('View') }}</a>
                        </span>
                    </div>
                </div>

                <div class="col-sm-6 col-md-4 col-lg-3 col-xl-3 mt-25">
                    <div class="desh-item-card">
                        <div class="icon-card tp-bg-success">
                            <i class="fa fa-check-square-o"></i>
                        </div>
                        <div class="item-content">
                            <div class="desc">{{ __("Today's Booked Room") }}</div>
                            <div class="count">{{ $TodaysBookedRoom[0]->TodaysBookedRoom }}</div>
                        </div>
                        <span class="btn-view">
                            <a href="{{ route('backend.room-list') }}"><i class="fa fa-eye"></i>{{ __('View') }}</a>
                        </span>
                    </div>
                </div>

                <div class="col-sm-6 col-md-4 col-lg-3 col-xl-3 mt-25">
                    <div class="desh-item-card">
                        <div class="icon-card tp-bg-info">
                            <i class="fa fa-window-restore"></i>
                        </div>
                        <div class="item-content">
                            <div class="desc">{{ __("Today's Available Room") }}</div>
                            <div class="count">{{ $TodaysAvailableRoom }}</div>
                        </div>
                        <span class="btn-view">
                            <a href="{{ route('backend.room-list') }}"><i class="fa fa-eye"></i>{{ __('View') }}</a>
                        </span>
                    </div>
                </div>

                <div class="col-sm-6 col-md-4 col-lg-3 col-xl-3 mt-25">
                    <div class="desh-item-card">
                        <div class="icon-card tp-bg-success">
                            <i class="fa fa-bed"></i>
                        </div>
                        <div class="item-content">
                            <div class="desc">{{ __('Total Booked Room') }}</div>
                            <div class="count">{{ $TotalBookedRoom }}</div>
                        </div>
                        <span class="btn-view">
                            <a href="{{ route('backend.room-list') }}"><i class="fa fa-eye"></i>{{ __('View') }}</a>
                        </span>
                    </div>
                </div>

                <div class="col-sm-6 col-md-4 col-lg-3 col-xl-3 mt-25">
                    <div class="desh-item-card">
                        <div class="icon-card tp-bg-info">
                            <i class="fa fa-bed"></i>
                        </div>
                        <div class="item-content">
                            <div class="desc">{{ __('Total Room') }}</div>
                            <div class="count">{{ $TotalRoom }}</div>
                        </div>
                        <span class="btn-view">
                            <a href="{{ route('backend.room-list') }}"><i class="fa fa-eye"></i>{{ __('View') }}</a>
                        </span>
                    </div>
                </div>

                <div class="col-sm-6 col-md-4 col-lg-3 col-xl-3 mt-25">
                    <div class="desh-item-card">
                        <div class="icon-card tp-bg-info">
                            <i class="fa fa-bullseye"></i>
                        </div>
                        <div class="item-content">
                            <div class="desc">{{ __('Total Room Type') }}</div>
                            <div class="count">{{ $TotalRoomType }}</div>
                        </div>
                        <span class="btn-view">
                            <a href="{{ route('backend.room-type') }}"><i class="fa fa-eye"></i>{{ __('View') }}</a>
                        </span>
                    </div>
                </div>

                <div class="col-sm-6 col-md-4 col-lg-3 col-xl-3 mt-25">
                    <div class="desh-item-card">
                        <div class="icon-card tp-bg-info">
                            <i class="fa fa-users"></i>
                        </div>
                        <div class="item-content">
                            <div class="desc">{{ __('Total User') }}</div>
                            <div class="count">{{ $TotalUser }}</div>
                        </div>
                        @if (Auth::user()->role_id == 4)
                            <span class="btn-view">
                                <a href="{{ route('super.backend.users') }}"><i
                                        class="fa fa-eye"></i>{{ __('View') }}</a>
                            </span>
                        @else
                        @endif

                    </div>
                </div>


            </div>


        @endsection

        @push('scripts')
            {{-- <script src="{{asset('public/backend/js/chart.js')}}"></script> --}}
            <script src="{{ asset('public/backend/pages/dashboard.js') }}"></script>
            <script type="text/javascript">
                var currency_position = "{{ $gtext['currency_position'] }}";
                var currency_icon = "{{ $gtext['currency_icon'] }}";
                var TEXT = [];
                TEXT['Earning'] = "{{ __('Earning') }}";
                TEXT['Total Booking'] = "{{ __('Total Booking') }}";
            </script>
        @endpush
