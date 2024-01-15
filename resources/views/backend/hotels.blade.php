@extends('layouts.backend')

@section('title', __('Hotels'))

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
								<span>{{ __('Hotels') }}</span>
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
						<div id="tp_datalist">
							@include('backend.partials.hotels_table')
						</div>
					</div>
					<!--/Data grid/-->
					<!--Data Entry Form-->
					<div id="form-panel" class="card-body dnone">
						<form accept="multipart/form-data" data-validate="parsley" id="DataEntry_formId">
							<div class="row">
								<div class="col-md-12">
									<div class="form-group">
										<label for="hotel_name">{{ __('Title') }}<span class="red">*</span></label>
										<input type="text" name="hotel_name" id="hotel_name" class="form-control parsley-validated" data-required="true">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-lg-12">
									<div class="form-group">
										<label for="address">{{ __('address') }}<span class="red">*</span></label>
										<textarea name="address" id="address" class="form-control parsley-validated" data-required="true" rows="3"></textarea>
									</div>
								</div>

							</div>
							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<label for="hotel_image">{{ __('Image') }}<span class="red">*</span></label>
										<div class="tp-upload-field">
											<input type="text" name="image" id="hotel_image" class="form-control" readonly>
											<a id="on_hotel_image" href="javascript:void(0);" class="tp-upload-btn"><i class="fa fa-window-restore"></i>{{ __('Browse') }}</a>
										</div>
										<em>Recommended image size width: 100px and height: 100px.</em>
										<div id="remove_hotel_image" class="select-image">
											<div class="inner-image" id="view_hotel_image"></div>
											<a onClick="onMediaImageRemove('hotel_image')" class="media-image-remove" href="javascript:void(0);"><i class="fa fa-remove"></i></a>
										</div>
									</div>

								</div>
								<div class="col-md-6"></div>
							</div>
                            <div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<label for="email">{{ __('Email') }}<span class="red">*</span></label>
                                        <textarea name="email" rows="1"  id="email" class="form-control parsley-validated" data-required="true"></textarea>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label for="phone">{{ __('Phone') }}<span class="red">*</span></label>
                                        <textarea name="phone" rows="1"  id="phone" class="form-control parsley-validated" data-required="true"></textarea>

                                    </div>
								</div>

							</div>
                            <div class="row">
								<div class="col-lg-12">
									<div class="form-group">
										<label for="description">{{ __('Short Description') }}<span class="red">*</span></label>
										<textarea name="description" id="description" class="form-control parsley-validated" data-required="true" rows="3"></textarea>
									</div>
								</div>
                         
								<div class="col-md-6">
									<div class="form-group">
										<label for="twitter">{{ __('Twitter') }}<span class="red">*</span></label>
                                        <textarea name="twitter" rows="1"  id="twitter" class="form-control parsley-validated" data-required="true"></textarea>

                                    </div>
                                    <div class="form-group">
										<label for="instagram">{{ __('instagram') }}<span class="red">*</span></label>
                                        <textarea name="instagram" rows="1"  id="instagram" class="form-control parsley-validated" data-required="true"></textarea>

                                    </div>
									
								
									<div class="form-group">
										<label for="facebook">{{ __('facebook') }}<span class="red">*</span></label>
                                        <textarea name="facebook" rows="1"  id="facebook" class="form-control parsley-validated" data-required="true"></textarea>
									</div>
                                    <div class="form-group">
										<label for="youtube">{{ __('youtube') }}<span class="red">*</span></label>
                                        <textarea name="youtube" rows="1"  id="youtube" class="form-control parsley-validated" data-required="true"></textarea>

                                    </div>
                                    <div class="form-group">
										<label for="map">{{ __('Map') }}<span class="red">*</span></label>
                                        <textarea name="map" rows="2"  id="map" class="form-control parsley-validated" data-required="true"></textarea>

                                    </div>
								</div>

							</div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group" >
                                        <label for="lan">{{ __('Language') }}<span class="red">*</span></label>
                                        <select name="lan" id="lan"  class="chosen-rtl form-control">
											@if (glan()==='ar')
											<option selected  value="ar">
                                                العربية 
                                            </option>

											<option   value="en">
                                                English 
                                            </option>
											@else
											<option value="en">
                                            English
                                            </option>
											<option value="ar">
												العربيه
												</option>
											@endif


                                          
                                        </select>
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
	</div>
</div>
<!-- /main Section -->

<!--Global Media-->
@include('backend.partials.global_media')
<!--/Global Media/-->

@endsection

@push('scripts')
<!-- css/js -->
<script type="text/javascript">
var media_type = 'Thumbnail';
var TEXT = [];
	TEXT['Do you really want to edit this record'] = "{{ __('Do you really want to edit this record') }}";
	TEXT['Do you really want to delete this record'] = "{{ __('Do you really want to delete this record') }}";
	TEXT['Do you really want to publish this records'] = "{{ __('Do you really want to publish this records') }}";
	TEXT['Do you really want to draft this records'] = "{{ __('Do you really want to draft this records') }}";
	TEXT['Do you really want to delete this records'] = "{{ __('Do you really want to delete this records') }}";
	TEXT['Please select action'] = "{{ __('Please select action') }}";
	TEXT['Please select record'] = "{{ __('Please select record') }}";
</script>
<script src="{{asset('public/backend/pages/hotel.js')}}"></script>
<script src="{{asset('public/backend/pages/global-media.js')}}"></script>
@endpush
