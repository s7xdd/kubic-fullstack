@extends('backend.layouts.app')

@section('content')
    <div class="row">
        <div class="col-lg-8 mx-auto">
            <div class="card">
                <div class="card-header">
                    <h6 class="fw-600 mb-0">General</h6>
                </div>
                <div class="card-body">
                    <form action="{{ route('business_settings.update') }}" method="POST">
                        @csrf
                        <div class="form-group row">
                            <label class="col-md-3 col-from-label">Website</label>
                            <div class="col-md-8">
                                <input type="hidden" name="types[]" value="website_name">
                                <input type="text" name="website_name" class="form-control" placeholder="Website Name"
                                    value="{{ get_setting('website_name') }}">
                            </div>
                        </div>
                        {{-- <div class="form-group row">
    	                    <label class="col-md-3 col-from-label">Site Motto</label>
                            <div class="col-md-8">
                                <input type="hidden" name="types[]" value="site_motto">
        	                    <input type="text" name="site_motto" class="form-control" placeholder="Best eCommerce Website" value="{{  get_setting('site_motto') }}">
                            </div>
    	                </div> --}}
                        <div class="form-group row">
                            <label class="col-md-3 col-from-label">Site Logo White</label>
                            <div class="col-md-8">
                                <div class="input-group " data-toggle="aizuploader" data-type="image">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text bg-soft-secondary">Browse</div>
                                    </div>
                                    <div class="form-control file-amount">Choose File</div>
                                    <input type="hidden" name="types[]" value="site_logo_white">
                                    <input type="hidden" name="site_logo_white"
                                        value="{{ get_setting('site_logo_white') }}" class="selected-files">
                                </div>
                                <div class="file-preview box"></div>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-md-3 col-from-label">Site Logo Colored</label>
                            <div class="col-md-8">
                                <div class="input-group " data-toggle="aizuploader" data-type="image">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text bg-soft-secondary">Browse</div>
                                    </div>
                                    <div class="form-control file-amount">Choose File</div>
                                    <input type="hidden" name="types[]" value="site_logo_colored">
                                    <input type="hidden" name="site_logo_colored"
                                        value="{{ get_setting('site_logo_colored') }}" class="selected-files">
                                </div>
                                <div class="file-preview box"></div>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-md-3 col-from-label">Site Icon</label>
                            <div class="col-md-8">
                                <div class="input-group " data-toggle="aizuploader" data-type="image">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text bg-soft-secondary">Browse</div>
                                    </div>
                                    <div class="form-control file-amount">Choose File</div>
                                    <input type="hidden" name="types[]" value="site_icon">
                                    <input type="hidden" name="site_icon" value="{{ get_setting('site_icon') }}"
                                        class="selected-files">
                                </div>
                                <div class="file-preview box"></div>
                                <small class="text-muted">Website favicon. 32x32 .png</small>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-md-3 col-from-label">Website Base Color</label>
                            <div class="col-md-8">
                                <input type="hidden" name="types[]" value="base_color">
                                <input type="text" name="base_color" class="form-control" placeholder="#377dff"
                                    value="{{ get_setting('base_color') }}">
                                <small class="text-muted">Hex Color Code</small>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-md-3 col-from-label">Website Base Hover Color</label>
                            <div class="col-md-8">
                                <input type="hidden" name="types[]" value="base_hov_color">
                                <input type="text" name="base_hov_color" class="form-control" placeholder="#377dff"
                                    value="{{ get_setting('base_hov_color') }}">
                                <small class="text-muted">Hex Color Code</small>
                            </div>
                        </div>
                        <div class="text-right">
                            <button type="submit" class="btn btn-primary">Update</button>
                        </div>
                    </form>
                </div>
            </div>


            <div class="card">
                <div class="card-header">
                    <h6 class="fw-600 mb-0">Header Images</h6>
                </div>
                <div class="card-body">
                    <form action="{{ route('business_settings.update') }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="form-group row">
                            <label class="col-md-3 col-from-label">Default Image</label>
                            <div class="col-md-8">
                                <div class="input-group " data-toggle="aizuploader" data-type="image">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text bg-soft-secondary">Browse</div>
                                    </div>
                                    <div class="form-control file-amount">Choose File</div>
                                    <input type="hidden" name="types[]" value="site_default_image">
                                    <input type="hidden" name="site_default_image"
                                        value="{{ get_setting('site_default_image') }}" class="selected-files">
                                </div>
                                <div class="file-preview box"></div>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-md-3 col-from-label">Home Image</label>
                            <div class="col-md-8">
                                <div class="input-group " data-toggle="aizuploader" data-type="image">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text bg-soft-secondary">Browse</div>
                                    </div>
                                    <div class="form-control file-amount">Choose File</div>
                                    <input type="hidden" name="types[]" value="site_home_image">
                                    <input type="hidden" name="site_home_image"
                                        value="{{ get_setting('site_home_image') }}" class="selected-files">
                                </div>
                                <div class="file-preview box"></div>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-md-3 col-from-label">About Image</label>
                            <div class="col-md-8">
                                <div class="input-group " data-toggle="aizuploader" data-type="image">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text bg-soft-secondary">Browse</div>
                                    </div>
                                    <div class="form-control file-amount">Choose File</div>
                                    <input type="hidden" name="types[]" value="site_about_image">
                                    <input type="hidden" name="site_about_image"
                                        value="{{ get_setting('site_about_image') }}" class="selected-files">
                                </div>
                                <div class="file-preview box"></div>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-md-3 col-from-label">Services Image</label>
                            <div class="col-md-8">
                                <div class="input-group " data-toggle="aizuploader" data-type="image">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text bg-soft-secondary">Browse</div>
                                    </div>
                                    <div class="form-control file-amount">Choose File</div>
                                    <input type="hidden" name="types[]" value="site_services_image">
                                    <input type="hidden" name="site_services_image"
                                        value="{{ get_setting('site_services_image') }}" class="selected-files">
                                </div>
                                <div class="file-preview box"></div>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-md-3 col-from-label">Projects Image</label>
                            <div class="col-md-8">
                                <div class="input-group " data-toggle="aizuploader" data-type="image">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text bg-soft-secondary">Browse</div>
                                    </div>
                                    <div class="form-control file-amount">Choose File</div>
                                    <input type="hidden" name="types[]" value="site_projects_image">
                                    <input type="hidden" name="site_projects_image"
                                        value="{{ get_setting('site_projects_image') }}" class="selected-files">
                                </div>
                                <div class="file-preview box"></div>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-md-3 col-from-label">Contact Image</label>
                            <div class="col-md-8">
                                <div class="input-group " data-toggle="aizuploader" data-type="image">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text bg-soft-secondary">Browse</div>
                                    </div>
                                    <div class="form-control file-amount">Choose File</div>
                                    <input type="hidden" name="types[]" value="site_contact_image">
                                    <input type="hidden" name="site_contact_image"
                                        value="{{ get_setting('site_contact_image') }}" class="selected-files">
                                </div>
                                <div class="file-preview box"></div>
                            </div>
                        </div>



                        <div class="text-right">
                            <button type="submit" class="btn btn-primary">Update</button>
                        </div>
                    </form>
                </div>
            </div>


            {{-- <div class="card">
    			<div class="card-header">
    				<h6 class="fw-600 mb-0">Global SEO</h6>
    			</div>
    			<div class="card-body">
    				<form action="{{ route('business_settings.update') }}" method="POST" enctype="multipart/form-data">
    					@csrf
    					<div class="form-group row">
    						<label class="col-md-3 col-from-label">Meta Title</label>
                            <div class="col-md-8">
        						<input type="hidden" name="types[]" value="meta_title">
        						<input type="text" class="form-control" placeholder="Title" name="meta_title" value="{{ get_setting('meta_title') }}">
                            </div>
    					</div>
    					<div class="form-group row">
    						<label class="col-md-3 col-from-label">Meta description</label>
                            <div class="col-md-8">
        						<input type="hidden" name="types[]" value="meta_description">
        						<textarea class="resize-off form-control" placeholder="Description" name="meta_description">{{  get_setting('meta_description') }}</textarea>
                            </div>
    					</div>
    					<div class="form-group row">
    						<label class="col-md-3 col-from-label">Keywords</label>
                            <div class="col-md-8">
        						<input type="hidden" name="types[]" value="meta_keywords">
        						<textarea class="resize-off form-control" placeholder="Keyword" name="meta_keywords">{{ get_setting('meta_keywords') }}</textarea>
        						<small class="text-muted">Separate with coma</small>
                            </div>
    					</div>
    					<div class="form-group row">
    						<label class="col-md-3 col-from-label">Meta Image</label>
                            <div class="col-md-8">
        						<div class="input-group " data-toggle="aizuploader" data-type="image">
        							<div class="input-group-prepend">
        								<div class="input-group-text bg-soft-secondary">Browse</div>
        							</div>
        							<div class="form-control file-amount">Choose File</div>
        							<input type="hidden" name="types[]" value="meta_image">
        							<input type="hidden" name="meta_image" value="{{ get_setting('meta_image') }}" class="selected-files">
        						</div>
        						<div class="file-preview box"></div>
                            </div>
    					</div>
    					<div class="text-right">
    						<button type="submit" class="btn btn-primary">Update</button>
    					</div>
    				</form>
    			</div>
    		</div>
            <div class="card">
    			<div class="card-header">
    				<h6 class="fw-600 mb-0">Cookies Agreement</h6>
    			</div>
    			<div class="card-body">
    				<form action="{{ route('business_settings.update') }}" method="POST" enctype="multipart/form-data">
    					@csrf
    					<div class="form-group row">
    						<label class="col-md-3 col-from-label">Cookies Agreement Text</label>
                            <div class="col-md-8">
        						<input type="hidden" name="types[]" value="cookies_agreement_text">
        						<textarea name="cookies_agreement_text" rows="4" class="aiz-text-editor form-control" data-buttons='[["font", ["bold"]],["insert", ["link"]]]'>{{ get_setting('cookies_agreement_text') }}</textarea>
                            </div>
    					</div>
                        <div class="form-group row">
    						<label class="col-md-3 col-from-label">Show Cookies Agreement?</label>
    						<div class="col-md-8">
    							<label class="aiz-switch aiz-switch-success mb-0">
    								<input type="hidden" name="types[]" value="show_cookies_agreement">
    								<input type="checkbox" name="show_cookies_agreement" @if (get_setting('show_cookies_agreement') == 'on') checked @endif>
    								<span></span>
    							</label>
    						</div>
    					</div>
    					<div class="text-right">
    						<button type="submit" class="btn btn-primary">Update</button>
    					</div>
    				</form>
    			</div>
    		</div>
            <div class="card">
    			<div class="card-header">
    				<h6 class="fw-600 mb-0">Website Popup</h6>
    			</div>
    			<div class="card-body">
    				<form action="{{ route('business_settings.update') }}" method="POST" enctype="multipart/form-data">
    					@csrf
    					<div class="form-group row">
                            <label class="col-md-3 col-from-label">Show website popup?</label>
                            <div class="col-md-8">
                                <label class="aiz-switch aiz-switch-success mb-0">
                                    <input type="hidden" name="types[]" value="show_website_popup">
                                    <input type="checkbox" name="show_website_popup" @if (get_setting('show_website_popup') == 'on') checked @endif>
                                    <span></span>
                                </label>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-md-3 col-from-label">Popup content</label>
                            <div class="col-md-8">
                                <input type="hidden" name="types[]" value="website_popup_content">
                                <textarea name="website_popup_content" rows="4" class="aiz-text-editor form-control" >{{ get_setting('website_popup_content') }}</textarea>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-md-3 col-from-label">Show Subscriber form?</label>
                            <div class="col-md-8">
                                <label class="aiz-switch aiz-switch-success mb-0">
                                    <input type="hidden" name="types[]" value="show_subscribe_form">
                                    <input type="checkbox" name="show_subscribe_form" @if (get_setting('show_subscribe_form') == 'on') checked @endif>
                                    <span></span>
                                </label>
                            </div>
                        </div>
    					<div class="text-right">
    						<button type="submit" class="btn btn-primary">Update</button>
    					</div>
    				</form>
    			</div>
    		</div>
            <div class="card">
                <div class="card-header">
                    <h6 class="fw-600 mb-0">Custom Script</h6>
                </div>
                <div class="card-body">
                    <form action="{{ route('business_settings.update') }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="form-group row">
                            <label class="col-md-3 col-from-label">Header custom script - before </head></label>
                            <div class="col-md-8">
                                <input type="hidden" name="types[]" value="header_script">
                                <textarea name="header_script" rows="4" class="form-control" placeholder="<script>&#10;...&#10;</script>">{{ get_setting('header_script') }}</textarea>
                                <small>Write script with <script> tag</small>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-md-3 col-from-label">Footer custom script - before </body></label>
                            <div class="col-md-8">
                                <input type="hidden" name="types[]" value="footer_script">
                                <textarea name="footer_script" rows="4" class="form-control" placeholder="<script>&#10;...&#10;</script>">{{ get_setting('footer_script') }}</textarea>
                                <small>Write script with <script> tag</small>
                            </div>
                        </div>
                        <div class="text-right">
                            <button type="submit" class="btn btn-primary">Update</button>
                        </div>
                    </form>
                </div>
            </div> --}}
        </div>
    </div>
@endsection
