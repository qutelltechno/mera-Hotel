@extends('layouts.backend')

@section('title', __('Invoice Complements'))

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
                                    <span>{{ __('Complements') }}</span>
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
                                @include('backend.partials.invoice-complements-table')
                            </div>
                        </div>
                        <!--/Data grid/-->

                        <!--Data Entry Form-->
                        <div id="form-panel" class="card-body dnone">
                            <form novalidate="" data-validate="parsley" id="DataEntry_formId">
                                <div class="row">
                                    <div class="col-md-6">
                                        <label for="complement">{{ __('Complements') }}<span
                                                class="red">*</span></label>
                                        <div class="form-group bulk-box">
                                            <select name="complement" id="complement" class="form-control">
                                                <option value="">{{ __('Select Complements') }}</option>
                                                @foreach ($datalist as $data)
                                                    @php
                                                        $translationName = json_decode($data->name, true);
                                                        $curnetLang = glan();
                                                    @endphp
                                                    <option value="{{ $data->id }}">{{ $translationName[glan()] }}
                                                    </option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="price">{{ __('Cost Price') }}<span
                                                    class="red">*</span></label>
                                            <input type="number" name="price" id="price"
                                                class="form-control parsley-validated" data-required="true">
                                        </div>
                                    </div>
                                    <input type="hidden" id="invoice_number" name="invoice_number"
                                        value="{{ $invoiceNum }}">
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
            <script src="{{ asset('public/backend/pages/invoice_complements.js') }}"></script>
        @endpush
