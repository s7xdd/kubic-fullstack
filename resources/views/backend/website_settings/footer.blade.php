@extends('backend.layouts.app')

@section('content')
    <div class="aiz-titlebar text-left mt-2 mb-3">
        <div class="row align-items-center">
            <div class="col">
                <h1 class="h3">Website Footer</h1>
            </div>
        </div>
    </div>
    <ul class="nav nav-tabs nav-fill border-light">
        {{-- @foreach (\App\Models\Language::all() as $key => $language)
            <li class="nav-item">
                <a class="nav-link text-reset @if ($language->code == $lang) active @else bg-soft-dark border-light border-left-0 @endif py-3"
                    href="{{ route('website.footer', ['lang' => $language->code]) }}">
                    <img src="{{ static_asset('assets/img/flags/' . $language->code . '.png') }}" height="11" class="mr-1">
                    <span>{{ $language->name }}</span>
                </a>
            </li>
        @endforeach --}}
    </ul>


    <div class="card">
        <div class="card-header">
            <h6 class="fw-600 mb-0">Footer Widget</h6>
        </div>
        <div class="card-body">
            <div class="row gutters-10">

                <div class="col-lg-12 mx-auto">
                    <div class="card shadow-none bg-light">
                        <div class="card-header">
                            <h6 class="mb-0">Footer</h6>
                        </div>
                        <div class="card-body">
                            <form action="{{ route('business_settings.update') }}" method="POST"
                                enctype="multipart/form-data">
                                @csrf

                                <div class="mb-3 mt-2">
                                    <h6 class="mb-0">Newsletter Section</h6>
                                </div>

                                <div class="form-group">
                                    <label>Title</label>
                                    <input type="hidden" name="types[]" value="footer_newsletter_title">
                                    <input type="text" class="form-control" placeholder="Enter.."
                                        name="footer_newsletter_title" value="{{ get_setting('footer_newsletter_title') }}">
                                </div>
                                <div class="form-group">
                                    <label>Subtitle</label>
                                    <input type="hidden" name="types[]" value="footer_newsletter_subtitle">
                                    <input type="text" class="form-control" placeholder="Enter.."
                                        name="footer_newsletter_subtitle"
                                        value="{{ get_setting('footer_newsletter_subtitle') }}">
                                </div>

                                <div class="form-group">
                                    <label>Button Text</label>
                                    <input type="hidden" name="types[][{{ $lang }}]"
                                        value="footer_newsletter_button">
                                    <input type="text" class="form-control" placeholder="Enter.."
                                        name="footer_newsletter_button"
                                        value="{{ get_setting('footer_newsletter_button') }}">
                                </div>

                                <div class="text-right">
                                    <button type="submit" class="btn btn-primary">Update</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>

                <div class="col-lg-12 mx-auto">
                    <div class="card shadow-none bg-light">
                        <div class="card-header">
                            <h6 class="mb-0">Social Media</h6>
                        </div>
                        <div class="card-body">
                            <form action="{{ route('business_settings.update') }}" method="POST"
                                enctype="multipart/form-data">
                                @csrf

                                <div class="form-group">
                                    <label>Facebook</label>
                                    <input type="hidden" name="types[]" value="facebook_link">
                                    <input type="text" class="form-control" placeholder="Enter.."
                                        name="facebook_link" value="{{ get_setting('facebook_link') }}">
                                </div>
                                <div class="form-group">
                                    <label>Twitter</label>
                                    <input type="hidden" name="types[]" value="twitter_link">
                                    <input type="text" class="form-control" placeholder="Enter.."
                                        name="twitter_link"
                                        value="{{ get_setting('twitter_link') }}">
                                </div>

                                <div class="form-group">
                                    <label>Instagram</label>
                                    <input type="hidden" name="types[][{{ $lang }}]"
                                        value="instagram_link">
                                    <input type="text" class="form-control" placeholder="Enter.."
                                        name="instagram_link"
                                        value="{{ get_setting('instagram_link') }}">
                                </div>

                                <div class="form-group">
                                    <label>Youtube</label>
                                    <input type="hidden" name="types[][{{ $lang }}]"
                                        value="youtube_link">
                                    <input type="text" class="form-control" placeholder="Enter.."
                                        name="youtube_link"
                                        value="{{ get_setting('youtube_link') }}">
                                </div>

                                <div class="form-group">
                                    <label>Linkedin</label>
                                    <input type="hidden" name="types[][{{ $lang }}]"
                                        value="linkedin_link">
                                    <input type="text" class="form-control" placeholder="Enter.."
                                        name="linkedin_link"
                                        value="{{ get_setting('linkedin_link') }}">
                                </div>

                                <div class="text-right">
                                    <button type="submit" class="btn btn-primary">Update</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>

                <div class="col-lg-6">
                    <div class="card shadow-none bg-light">
                        <div class="card-header">
                            <h6 class="mb-0">Footer Logo</h6>
                        </div>
                        <div class="card-body">
                            <form action="{{ route('business_settings.update') }}" method="POST"
                                enctype="multipart/form-data">
                                @csrf
                                <div class="form-group">
                                    <label class="form-label" for="signinSrEmail">Footer Logo</label>
                                    <div class="input-group " data-toggle="aizuploader" data-type="image">
                                        <div class="input-group-prepend">
                                            <div class="input-group-text bg-soft-secondary font-weight-medium">Browse</div>
                                        </div>
                                        <div class="form-control file-amount">Choose File</div>
                                        <input type="hidden" name="types[]" value="footer_logo">
                                        <input type="hidden" name="footer_logo" class="selected-files"
                                            value="{{ get_setting('footer_logo') }}">
                                    </div>
                                    <div class="file-preview"></div>
                                </div>

                                <div class="text-right">
                                    <button type="submit" class="btn btn-primary">Update</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>

                <div class="col-lg-6 mx-auto">
                    <div class="card shadow-none bg-light">
                        <div class="card-header">
                            <h6 class="mb-0">Contact Info </h6>
                        </div>
                        <div class="card-body">
                            <form action="{{ route('business_settings.update') }}" method="POST"
                                enctype="multipart/form-data">
                                @csrf

                                <div class="row">
                                    <div class="form-group col-md-6">
                                        <label>Phone</label>
                                        <input type="hidden" name="types[]" value="footer_phone">
                                        <input type="text" class="form-control" placeholder="Enter.."
                                            name="footer_phone" value="{{ get_setting('footer_phone') }}">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>Email</label>
                                        <input type="hidden" name="types[]" value="footer_email">
                                        <input type="text" class="form-control" placeholder="Enter.."
                                            name="footer_email" value="{{ get_setting('footer_email') }}">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label>Address Title</label>
                                    <input type="hidden" name="types[][{{ $lang }}]"
                                        value="footer_address_title">
                                    <input type="text" class="form-control" placeholder="Enter.."
                                        name="footer_address_title" value="{{ get_setting('footer_address_title') }}">
                                </div>
                                <div class="form-group">
                                    <label>Address</label>
                                    <input type="hidden" name="types[][{{ $lang }}]" value="footer_address">
                                    <textarea class="form-control" placeholder="Enter.." name="footer_address" rows="5">{{ get_setting('footer_address') }}</textarea>
                                </div>

                                <div class="text-right">
                                    <button type="submit" class="btn btn-primary">Update</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection


@section('header')
    <style>
        .file-preview-item .thumb {
            -ms-flex: 0 0 50px;
            flex: 0 0 150px;
            max-width: 150px;
            height: 145px;
            width: 150px;
        }
    </style>
@endsection
