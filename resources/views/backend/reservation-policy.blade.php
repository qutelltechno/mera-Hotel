@extends('layouts.backend')

@section('title', __('Reservation Policy'))

@section('content')
    <!-- main Section -->
    <div class="main-body">
        <div class="container-fluid">

            <div class="row mt-25">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <div class="row">
                                <div class="col-lg-6">
                                    <span>{{ __('Reservation Policy') }}</span>
                                </div>
                                <div class="col-lg-6">
                                    <div class="float-right">
                                        <a onClick="onFormPanel()" href="javascript:void(0);"
                                            class="btn blue-btn btn-form float-right"><i class="fa fa-plus"></i>
                                            {{ __('Add New') }}</a>
                                        <a onClick="onListPanel()" href="javascript:void(0);"
                                            class="btn warning-btn btn-list float-right dnone"><i class="fa fa-reply"></i>
                                            {{ __('Back to List') }}</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--Data grid-->
                        <div id="list-panel" class="card-body">

                            <div id="tp_datalist">
                                @include('backend.partials.reservation_policy_table')
                            </div>
                        </div>
                        <!--/Data grid/-->

                        <!--Data Entry Form-->
                        <div id="form-panel" class="card-body dnone">
                            <form novalidate="" data-validate="parsley" id="DataEntry_formId">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="title_en">Policy <span class="red">*</span></label>
                                            <input type="text" name="title_en" id="title_en"
                                                class="form-control parsley-validated" data-required="true">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="title_ar"> السياسة بالعربية <span class="red">*</span></label>
                                            <input type="text" name="title_ar" id="title_ar"
                                                class="form-control parsley-validated" data-required="true">
                                        </div>
                                    </div>

                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="value_en">Policy Text<span class="red">*</span></label>
                                            <textarea name="value_en" id="value_en" class="form-control parsley-validated" data-required="true"></textarea>
                                        </div>

                                    </div>

                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="value_ar">نص السياسة بالعربية <span class="red">*</span></label>
                                            <textarea name="value_ar" id="value_ar" class="form-control parsley-validated" data-required="true"></textarea>
                                        </div>

                                    </div>
                                </div>

                                <input type="text" name="RecordId" id="RecordId" class="dnone">
                                <div class="row tabs-footer mt-15">
                                    <div class="col-lg-12">
                                        <a id="submit-form" href="javascript:void(0);"
                                            class="btn blue-btn mr-10">{{ __('Save') }}</a>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <!--/Data Entry Form/-->
                    </div>
                </div>
            </div>

        @endsection

        @push('scripts')
            <!-- css/js -->
            <script type="text/javascript">
                var TEXT = [];
                TEXT['Do you really want to edit this record'] = "{{ __('Do you really want to edit this record') }}";
                TEXT['Do you really want to delete this record'] = "{{ __('Do you really want to delete this record') }}";
                TEXT['Do you really want to publish this records'] = "{{ __('Do you really want to publish this records') }}";
                TEXT['Do you really want to draft this records'] = "{{ __('Do you really want to draft this records') }}";
                TEXT['Do you really want to delete this records'] = "{{ __('Do you really want to delete this records') }}";
                TEXT['Please select action'] = "{{ __('Please select action') }}";
                TEXT['Please select record'] = "{{ __('Please select record') }}";
            </script>
            <script src="{{ asset('public/backend/pages/reservationplicy.js') }}"></script>
        @endpush
