@extends('layouts.backend')

@section('title', __('Room Type'))

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
								<span>{{ __('Room Type') }}</span>
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
						</div>
						<div id="tp_datalist">
							@include('backend.partials.room_type_table')
						</div>
					</div>
					<!--/Data grid/-->

					<!--Data Entry Form-->
					<div id="form-panel" class="card-body dnone">
						<form novalidate="" data-validate="parsley" id="DataEntry_formId">
							<div class="row">
								<div class="col-lg-4">
									<div class="form-group">
										<label for="title_en">Room Title<span class="red">*</span></label>
										<input type="text" name="title_en" id="title_en" class="form-control parsley-validated" data-required="true">
									</div>
                                    <div class="form-group">
										<label for="title_ar">عنوان الغرفة <span class="red">*</span></label>
										<input type="text" name="title_ar" id="title_ar" class="form-control parsley-validated" data-required="true">
									</div>
								</div>
								<div class="col-lg-4">
									<div class="form-group">
										<label for="slug">{{ __('Slug') }}<span class="red">*</span></label>
										<input type="text" name="slug" id="slug" class="form-control parsley-validated" data-required="true">
									</div>
								</div>

                                <div class="col-lg-4">
									<div class="form-group">
										<label for="hotel_id">{{ __('Hotel') }}<span class="red">*</span></label>
										<select name="hotel_id" id="hotel_id" class="chosen-rtl form-control">
											@foreach($hotels as $row)
												<option value="{{ $row->id }}">
													{{ $row->name }}
												</option>
											@endforeach
										</select>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-lg-3">
								</div>
								<div class="col-lg-9"></div>
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
	TEXT['All Category'] = "{{ __('All Category') }}";
</script>
<script src="{{asset('public/backend/pages/room_type.js')}}"></script>
@endpush
