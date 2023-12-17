@extends('layouts.backend')

@section('title', __('Faq'))

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
								<span>{{ __('Faq') }}</span>
							</div>
							<div class="col-lg-6">
								<div class="float-right">
									<a onClick="onFormPanel()" href="javascript:void(0);" class="btn blue-btn btn-form float-right"><i class="fa fa-plus"></i> {{ __('Add New') }}</a>
									<a onClick="onListPanel()" href="javascript:void(0);" class="btn warning-btn btn-list float-right dnone"><i class="fa fa-reply"></i> {{ __('Back to List') }}</a>
								</div>
							</div>
						</div>
					</div>
					<!--Data grid-->
					<div id="list-panel" class="card-body">
						<div class="row">
							<div class="col-lg-9 mb-10">
								<div class="group-button">
									<button type="button" onClick="onDataViewByStatus(0)" id="viewstatus_0" class="btn btn-theme viewstatus active">{{ __('All') }} ({{ $AllCount }})</button>
									<button type="button" onClick="onDataViewByStatus(1)" id="viewstatus_1" class="btn btn-theme viewstatus">{{ __('Published') }} ({{ $PublishedCount }})</button>
									<button type="button" onClick="onDataViewByStatus(2)" id="viewstatus_2" class="btn btn-theme viewstatus">{{ __('Draft') }} ({{ $DraftCount }})</button>
								</div>
								<input type="hidden" id="ViewByPostStatus" value="0"/>
							</div>
							<div class="col-lg-3 mb-10">
								<div class="form-group">
									<select name="language_code" id="language_code" class="chosen-rtl form-control">
										<option value="0" selected="selected">{{ __('All Language') }}</option>
										@foreach($languageslist as $row)
											<option value="{{ $row->language_code }}">
												{{ $row->language_name }}
											</option>
										@endforeach
									</select>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-lg-4">
								<div class="form-group bulk-box">
									<select id="bulk-action" class="form-control">
										<option value="">{{ __('Select Action') }}</option>
										<option value="publish">{{ __('Publish') }}</option>
										<option value="draft">{{ __('Draft') }}</option>
										<option value="delete">{{ __('Delete Permanently') }}</option>
									</select>
									<button type="submit" onClick="onBulkAction()" class="btn bulk-btn">{{ __('Apply') }}</button>
								</div>
							</div>
							<div class="col-lg-3"></div>
							<div class="col-lg-5">
								<div class="form-group search-box">
									<input id="search" name="search" type="text" class="form-control" placeholder="{{ __('Search') }}...">
									<button type="submit" onClick="onSearch()" class="btn search-btn">{{ __('Search') }}</button>
								</div>
							</div>
						</div>
						<div id="page_datalist">
							@include('backend.partials.faq_table')
						</div>
					</div>
					<!--/Data grid/-->

					<!--Data Entry Form-->
					<div id="form-panel" class="card-body dnone">
						<form novalidate="" data-validate="parsley" id="DataEntry_formId">
							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<label for="title">{{ __('Title') }}<span class="red">*</span></label>
										<input type="text" name="title" id="title" class="form-control parsley-validated" data-required="true">
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-group">
										<label for="lan">{{ __('Language') }}<span class="red">*</span></label>
										<select name="lan" id="lan" class="chosen-rtl form-control">
											@foreach($languageslist as $row)
												<option value="{{ $row->language_code }}">
													{{ $row->language_name }}
												</option>
											@endforeach
										</select>
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-group">
										<label for="is_publish">{{ __('Status') }}<span class="red">*</span></label>
										<select name="is_publish" id="is_publish" class="chosen-rtl form-control">
											@foreach($statuslist as $row)
												<option value="{{ $row->id }}">
													{{ $row->status }}
												</option>
											@endforeach
										</select>
									</div>
								</div>
							</div>
							<div class="divider_heading">{{ __('faq Info') }}</div>
							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<label for="email">{{ __('Description') }}<span class="red">*</span></label>
										<textarea name="description" id="description" class="form-control parsley-validated" data-required="true" rows="5"></textarea>
									</div>
								</div>

							</div>


							<div class="divider_heading">{{ __('Google Map') }}</div>
							<div class="row">
								<div class="col-md-3">
									<div class="form-group">
										<label for="latitude">{{ __('Latitude') }}</label>
										<input type="text" name="latitude" id="latitude" class="form-control">
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-group">
										<label for="longitude">{{ __('Longitude') }}</label>
										<input type="text" name="longitude" id="longitude" class="form-control">
									</div>
								</div>
								<div class="col-md-2">
									<div class="form-group">
										<label for="zoom">{{ __('Zoom') }}</label>
										<input type="text" name="zoom" id="zoom" class="form-control">
									</div>
								</div>
								<div class="col-md-4">
									<p class="mb0">If you are not yet added Google Map API key. <strong><a href="{{ route('backend.google-map') }}">Click Here</a></strong></p>
									<div class="tw_checkbox checkbox_group">
										<input id="is_google_map" name="is_google_map" type="checkbox">
										<label for="is_google_map">{{ __('Enable/Disable') }}</label>
										<span></span>
									</div>
								</div>
							</div>

							<div class="divider_heading">{{ __('faq Form') }}</div>

							<div id="FormElementId"></div>

							<div class="row">
								<div class="col-lg-12">
									<div class="form-builder">
										<a onclick="onAddField()" class="add_field_btn" href="javascript:void(0);" title="{{ __('Add Field') }}"><i class="fa fa-plus"></i></a>
									</div>
								</div>
							</div>

							<div class="row mt-25" id="mailSubjectHideShow">
								<div class="col-md-3">
									<div class="form-group">
										<label for="mail_subject">{{ __('Select Mail Subject Field') }}<span class="red">*</span></label>
										<select name="mail_subject" id="mail_subject" class="chosen-rtl form-control">
										</select>
									</div>
								</div>
								<div class="col-md-9"></div>
							</div>

							<div class="row">
								<div class="col-md-12">
									<p class="mt-15 mb0"><strong>{{ __('Google reCAPTCHA') }}</strong> (If you are not yet added Google reCAPTCHA key. <strong><a href="{{ route('backend.google-recaptcha') }}">Click Here</a></strong>)</p>
									<div class="tw_checkbox checkbox_group">
										<input id="is_recaptcha" name="is_recaptcha" type="checkbox">
										<label for="is_recaptcha">{{ __('Enable/Disable') }}</label>
										<span></span>
									</div>
								</div>
							</div>

							<input type="text" name="RecordId" id="RecordId" class="dnone">
							<div class="row tabs-footer mt-15">
								<div class="col-lg-12">
									<a id="submit-form" href="javascript:void(0);" class="btn blue-btn mr-10">{{ __('Save') }}</a>
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
	TEXT['Please fill up all mandatory fields'] = "{{ __('Please fill up all mandatory fields') }}";
</script>
<script src="{{asset('public/backend/pages/faqs_page.js')}}"></script>
@endpush
