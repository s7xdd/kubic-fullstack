@extends('backend.layouts.app')
@section('content')
    <div class="row">
        <div class="col-xl-10 mx-auto">
            <h4 class="fw-600">Home Page Settings</h4>

            <div class="card">
                {{-- <ul class="nav nav-tabs nav-fill border-light">
                    @foreach (\App\Models\Language::all() as $key => $language)
                        <li class="nav-item">
                            <a class="nav-link text-reset @if ($language->code == $lang) active @else bg-soft-dark border-light border-left-0 @endif py-3" href="{{ route('custom-pages.edit', ['id'=>$page->type, 'lang'=> $language->code] ) }}">
                                <img src="{{ static_asset('assets/img/flags/'.$language->code.'.png') }}" height="11" class="mr-1">
                                <span>{{$language->name}}</span>
                            </a>
                        </li>
                    @endforeach
                </ul> --}}

                <div class="card">
                    <div class="card-header">
                        <h5 class="mb-0">About section</h5>
                    </div>
                    <div class="card-body">
                        <form action="{{ route('business_settings.update') }}" method="POST" enctype="multipart/form-data">
                            @csrf
                            <input type="hidden" name="page_id" value="{{ $page_id }}">
                            <input type="hidden" name="lang" value="{{ $lang }}">

                            <div class="form-group row">
                                <label class="col-sm-2 col-from-label" for="name">Section Title<span
                                        class="text-danger">*</span></label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" placeholder="Enter.." name="title1"
                                        value="{{ old('title1', $page->getTranslation('title1', $lang)) }}" required>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="col-sm-2 col-from-label">{{ trans('messages.description') }}</label>
                                <div class="col-md-10">
                                    <textarea class="aiz-text-editor" data-min-height="300" name="description1">{{ old('description1', $page->getTranslation('description1', $lang)) }}</textarea>
                                </div>
                            </div>

                            <hr>
                            <div class="text-right">
                                <input type="hidden" name="page_type" value="highlights_section">
                                <button type="submit" class="btn btn-info">Update</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

            <div class="card">
                <div class="card-header">
                    <h5 class="mb-0">Projects Section</h5>
                </div>
                <div class="card-body">
                    <form action="{{ route('business_settings.update') }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <input type="hidden" name="page_id" value="{{ $page_id }}">
                        <input type="hidden" name="lang" value="{{ $lang }}">

                        <div class="form-group row">
                            <label class="col-sm-2 col-from-label" for="name">Title<span
                                    class="text-danger">*</span></label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" placeholder="Enter.." name="heading1"
                                    value="{{ old('heading1', $page->getTranslation('heading1', $lang)) }}" required>

                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-sm-2 col-from-label" for="name">Subtitle <span
                                    class="text-danger">*</span></label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" placeholder="Enter.." name="heading2"
                                    value="{{ old('heading2', $page->getTranslation('heading2', $lang)) }}" required>
                                <span style="font-size:12px;color: #00b3ff !important;">To highlight specific words,
                                    enclose
                                    them in square brackets [ ]</span>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-md-2 col-from-label">{{ trans('messages.projects') }} (Max 3)</label>
                            <div class="col-md-10">
                                <input type="hidden" name="types[]" value="home_projects">
                                <input type="hidden" name="page_type" value="home_projects">
                                <select name="home_projects[]" class="form-control aiz-selectpicker" multiple
                                    data-max-options="3" data-actions-box="true" data-live-search="true"
                                    title="Select Projects (Max 3)" data-selected="{{ get_setting('home_projects') }}">
                                    @foreach ($projects as $key => $prod)
                                        <option value="{{ $prod->id }}">{{ $prod->name }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>

                        <div class="text-right">
                            <button type="submit" class="btn btn-info">Update</button>
                        </div>
                    </form>
                </div>
            </div>

            <div class="card">
                <div class="card-header">
                    <h5 class="mb-0">Services</h5>
                </div>
                <div class="card-body">
                    <form action="{{ route('business_settings.update') }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <input type="hidden" name="page_id" value="{{ $page_id }}">
                        <input type="hidden" name="lang" value="{{ $lang }}">

                        <div class="form-group row">
                            <label class="col-sm-2 col-from-label" for="name">Title <span
                                    class="text-danger">*</span></label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" placeholder="Enter.." name="heading3"
                                    value="{{ old('heading3', $page->getTranslation('heading3', $lang)) }}" required>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-sm-2 col-from-label" for="name">Subtitle <span
                                    class="text-danger">*</span></label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" placeholder="Enter.." name="heading4"
                                    value="{{ old('heading4', $page->getTranslation('heading4', $lang)) }}" required>
                            </div>
                        </div>

                        <div class="form-group row ">
                            <label class="col-md-2 col-from-label">Services (Max 3)</label>
                            <div class="col-md-10">
                                <input type="hidden" name="types[]" value="home_services">
                                <input type="hidden" name="page_type" value="home_services">
                                <select name="home_services[]" class="form-control aiz-selectpicker" multiple
                                    data-max-options="3" data-live-search="true" title="Select Services"
                                    data-selected="{{ get_setting('home_services') }}">
                                    @foreach ($services as $serv)
                                        <option value="{{ $serv->id }}">{{ $serv->name }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>

                        <div class="text-right">
                            <button type="submit" class="btn btn-info">Update</button>
                        </div>
                    </form>
                </div>
            </div>

            <div class="card">
                <div class="card-header">
                    <h5 class="mb-0">Testimonials Section</h5>
                </div>
                <div class="card-body">
                    <form action="{{ route('business_settings.update') }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <input type="hidden" name="page_id" value="{{ $page_id }}">
                        <input type="hidden" name="lang" value="{{ $lang }}">

                        <div class="form-group row">
                            <label class="col-sm-2 col-from-label" for="name">Title<span
                                    class="text-danger">*</span></label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" placeholder="Enter.." name="heading8"
                                    value="{{ old('heading8', $page->getTranslation('heading8', $lang)) }}" required>

                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-sm-2 col-from-label" for="name">Subtitle<span
                                    class="text-danger">*</span></label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" placeholder="Enter.." name="content"
                                    value="{{ old('content', $page->getTranslation('content', $lang)) }}" required>
                            </div>
                        </div>

                        <div class="text-right">
                            <button type="submit" class="btn btn-info">Update</button>
                        </div>
                    </form>
                </div>
            </div>

            <div class="card">
                <div class="card-header">
                    <h5 class="mb-0">Vision Section</h5>
                </div>
                <div class="card-body">
                    <form action="{{ route('business_settings.update') }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <input type="hidden" name="page_id" value="{{ $page_id }}">
                        <input type="hidden" name="lang" value="{{ $lang }}">

                        <div class="form-group row">
                            <label class="col-sm-2 col-from-label" for="name">Title 1<span
                                    class="text-danger">*</span></label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" placeholder="Enter.." name="title2"
                                    value="{{ old('title2', $page->getTranslation('title2', $lang)) }}" required>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-sm-2 col-from-label" for="name">Title 2<span
                                    class="text-danger">*</span></label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" placeholder="Enter.." name="heading7"
                                    value="{{ old('heading7', $page->getTranslation('heading7', $lang)) }}" required>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-sm-2 col-from-label" for="name">Content <span
                                    class="text-danger">*</span></label>
                            <div class="col-sm-10">
                                <textarea class="form-control" name="content2" placeholder="Enter.." rows="3">{!! $page->getTranslation('content2', $lang) !!}</textarea>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-md-2 col-form-label" for="signinSrEmail">Icon </label>
                            <div class="col-md-10">
                                <div class="input-group" data-toggle="aizuploader" data-type="image">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text bg-soft-secondary font-weight-medium">Browse</div>
                                    </div>
                                    <div class="form-control file-amount">Choose File</div>
                                    <input value="{{ $page->image9 }}" type="hidden" name="image9"
                                        class="selected-files">
                                </div>
                                <div class="file-preview box sm"></div>
                            </div>
                        </div>

                        <div class="text-right">
                            <button type="submit" class="btn btn-info">Update</button>
                        </div>
                    </form>
                </div>
            </div>


            <div class="card">
                <div class="card-header">
                    <h5 class="mb-0">Meet Our Team Section</h5>
                </div>
                <div class="card-body">
                    <form action="{{ route('business_settings.update') }}" method="POST"
                        onsubmit="return encodeTeamMembers()" enctype="multipart/form-data">
                        @csrf
                        <input type="hidden" name="page_id" value="{{ $page_id }}">
                        <input type="hidden" name="lang" value="{{ $lang }}">
                        <input type="hidden" name="heading9" id="heading9_encoded">

                        @php
                            $teamMembers = json_decode($page->getTranslation('heading9', $lang), true) ?? [];
                        @endphp

                        @for ($i = 0; $i < 4; $i++)
                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label">Title {{ $i + 1 }}</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control team-title" placeholder="Enter title"
                                        value="{{ $teamMembers[$i]['title'] ?? '' }}">
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label">Designation {{ $i + 1 }}</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control team-designation"
                                        placeholder="Enter designation"
                                        value="{{ $teamMembers[$i]['designation'] ?? '' }}">
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="col-md-2 col-form-label" for="teamImage{{ $i }}">Image
                                    {{ $i + 1 }}</label>
                                <div class="col-md-10">
                                    <div class="input-group" data-toggle="aizuploader" data-type="image">
                                        <div class="input-group-prepend">
                                            <div class="input-group-text bg-soft-secondary font-weight-medium">Browse</div>
                                        </div>
                                        <div class="form-control file-amount">Choose File</div>
                                        <input value="{{ $teamMembers[$i]['image'] ?? '' }}" type="hidden"
                                            class="selected-files team-image" id="teamImage{{ $i }}">
                                    </div>
                                    <div class="file-preview box sm"></div>
                                </div>
                            </div>

                            <hr>
                        @endfor

                        <div class="text-right">
                            <button type="submit" class="btn btn-info">Update</button>
                        </div>
                    </form>
                </div>
            </div>


            <div class="card">
                <div class="card-header">
                    <h5 class="mb-0">Country Showcase Section</h5>
                </div>
                <div class="card-body">
                    <form id="dynamic-field-form-1" action="{{ route('business_settings.update') }}" method="POST"
                        enctype="multipart/form-data">
                        @csrf
                        <input type="hidden" name="page_id" value="{{ $page_id }}">
                        <input type="hidden" name="lang" value="{{ $lang }}">

                        <input type="hidden" name="content1" id="content1">

                        <div class="form-group row">
                            <label class="col-sm-2 col-from-label" for="name">Title<span
                                    class="text-danger">*</span></label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" placeholder="Enter.." name="heading5"
                                    value="{{ old('heading5', $page->getTranslation('heading5', $lang)) }}" required>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-sm-2 col-from-label" for="name">Subtitle<span
                                    class="text-danger">*</span></label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" placeholder="Enter.." name="heading6"
                                    value="{{ old('heading6', $page->getTranslation('heading6', $lang)) }}" required>
                            </div>
                        </div>

                        <div id="dynamic-field-container-1">
                            @php
                                $dynamicItems1 = json_decode($page->getTranslation('content1', $lang), true) ?? [];
                            @endphp

                            @foreach ($dynamicItems1 as $item)
                                <div class="country-group mb-3 border p-3 rounded bg-light">
                                    <div class="form-group">
                                        <label>Name</label>
                                        <input type="text" class="form-control field-name"
                                            value="{{ $item['name'] ?? '' }}">
                                    </div>
                                    <div class="form-group">
                                        <label>Title</label>
                                        <input type="text" class="form-control field-title"
                                            value="{{ $item['title'] ?? '' }}">
                                    </div>
                                    <div class="form-group">
                                        <label>Content</label>
                                        <textarea class="form-control field-content" rows="3">{{ $item['content'] ?? '' }}</textarea>
                                    </div>
                                    <button type="button"
                                        class="btn btn-danger btn-sm remove-dynamic-field-1 mt-2">Remove</button>
                                </div>
                            @endforeach
                        </div>

                        <button type="button" class="btn btn-outline-primary mb-3" id="add-dynamic-field">+ Add
                            Country</button>

                        <div class="text-right">
                            <input type="hidden" name="page_type" value="country_showcase_section">
                            <button type="submit" class="btn btn-info">Update</button>
                        </div>
                    </form>
                </div>
            </div>

            <div class="card">
                <div class="card-header">
                    <h5 class="mb-0">Enquiry Section</h5>
                </div>

                <div class="card-body">
                    <form id="enquiry-form" action="{{ route('business_settings.update') }}" method="POST"
                        enctype="multipart/form-data">
                        @csrf
                        <input type="hidden" name="page_id" value="{{ $page_id }}">
                        <input type="hidden" name="lang" value="{{ $lang }}">

                        <input type="hidden" name="heading10" id="heading10-json">

                        @php
                            $heading10Data = json_decode($page->getTranslation('heading10', $lang), true) ?? [];
                        @endphp

                        <div class="form-group row">
                            <label class="col-sm-2 col-form-label" for="heading10-title">Title <span
                                    class="text-danger">*</span></label>
                            <div class="col-sm-10">
                                <input type="text" id="heading10-title" class="form-control"
                                    value="{{ old('heading10.title', $heading10Data['title'] ?? '') }}" required>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-sm-2 col-form-label" for="heading10-subtitle">Subtitle</label>
                            <div class="col-sm-10">
                                <input type="text" id="heading10-subtitle" class="form-control"
                                    value="{{ old('heading10.subtitle', $heading10Data['subtitle'] ?? '') }}">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-sm-2 col-form-label" for="heading10-button_text">Button Text</label>
                            <div class="col-sm-10">
                                <input type="text" id="heading10-button_text" class="form-control"
                                    value="{{ old('heading10.button_text', $heading10Data['button_text'] ?? '') }}">
                            </div>
                        </div>

                        <div class="text-right">
                            <button type="submit" class="btn btn-info">Update</button>
                        </div>
                    </form>
                </div>
            </div>



            <div class="card">
                <form class="p-4" action="{{ route('business_settings.update') }}" method="POST"
                    enctype="multipart/form-data">
                    @csrf
                    <input type="hidden" name="page_id" value="{{ $page_id }}">
                    <input type="hidden" name="lang" value="{{ $lang }}">
                    <div class="card-header px-0">
                        <h6 class="fw-600 mb-0">Seo Fields</h6>
                    </div>
                    <div class="card-body px-0">

                        <div class="form-group row">
                            <label class="col-sm-2 col-from-label"
                                for="name">{{ trans('messages.meta_title') }}</label>
                            <div class="col-sm-10">
                                <input type="text" @if ($lang == 'ae') dir="rtl" @endif
                                    class="form-control" placeholder="{{ trans('messages.meta_title') }}"
                                    name="meta_title" value="{{ $page->getTranslation('meta_title', $lang) }}">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-sm-2 col-from-label"
                                for="name">{{ trans('messages.meta_description') }}</label>
                            <div class="col-sm-10">
                                <textarea class="resize-off form-control" placeholder="{{ trans('messages.meta_description') }}"
                                    name="meta_description" @if ($lang == 'ae') dir="rtl" @endif>{!! $page->getTranslation('meta_description', $lang) !!}</textarea>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-sm-2 col-from-label"
                                for="name">{{ trans('messages.meta_keywords') }}</label>
                            <div class="col-sm-10">
                                <textarea @if ($lang == 'ae') dir="rtl" @endif class="resize-off form-control"
                                    placeholder="{{ trans('messages.meta_keywords') }}" name="keywords">{!! $page->getTranslation('keywords', $lang) !!}</textarea>
                                <small class="text-muted">Separate with coma</small>
                            </div>
                        </div>


                        <div class="form-group row">
                            <label class="col-sm-2 col-from-label"
                                for="name">{{ trans('messages.og_title') }}</label>
                            <div class="col-sm-10">
                                <input type="text" @if ($lang == 'ae') dir="rtl" @endif
                                    class="form-control" placeholder="{{ trans('messages.og_title') }}" name="og_title"
                                    value="{{ $page->getTranslation('og_title', $lang) }}">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-sm-2 col-from-label"
                                for="name">{{ trans('messages.og_description') }}</label>
                            <div class="col-sm-10">
                                <textarea class="resize-off form-control" placeholder="{{ trans('messages.og_description') }}" name="og_description"
                                    @if ($lang == 'ae') dir="rtl" @endif>{!! $page->getTranslation('og_description', $lang) !!}</textarea>
                            </div>
                        </div>


                        <div class="form-group row">
                            <label class="col-sm-2 col-from-label"
                                for="name">{{ trans('messages.twitter_title') }}</label>
                            <div class="col-sm-10">
                                <input type="text" @if ($lang == 'ae') dir="rtl" @endif
                                    class="form-control" placeholder="{{ trans('messages.twitter_title') }}"
                                    name="twitter_title" value="{{ $page->getTranslation('twitter_title', $lang) }}">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-sm-2 col-from-label"
                                for="name">{{ trans('messages.twitter_description') }}</label>
                            <div class="col-sm-10">
                                <textarea class="resize-off form-control" placeholder="{{ trans('messages.twitter_description') }}"
                                    name="twitter_description" @if ($lang == 'ae') dir="rtl" @endif>{!! $page->getTranslation('twitter_description', $lang) !!}</textarea>
                            </div>
                        </div>



                        <div class="text-right">
                            <button type="submit" class="btn btn-info">Update</button>
                            <a href="{{ route('website.pages') }}" class="btn btn-cancel">Cancel</a>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
@endsection

@section('script')
    <script type="text/javascript">
        $(document).ready(function() {
            AIZ.plugins.bootstrapSelect('refresh');

            $('.aiz-selectpicker').on('shown.bs.select', function() {
                var select = $(this);
                var selectedOptions = select.find('option:selected').detach();
                select.prepend(selectedOptions);
                select.selectpicker('refresh');
            });
        });

        $('.remove-galley').on('click', function() {
            thumbnail = $(this)
            $.ajax({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                type: "POST",
                url: '{{ route('page.delete_image') }}',
                data: {
                    url: $(thumbnail).data('url'),
                    id: '{{ $page->id }}'
                },
                success: function(data) {
                    if (data == 1) {
                        $(thumbnail).closest('.file-preview-item').remove();
                        AIZ.plugins.notify('success',
                            "{{ trans('messages.image') . trans('messages.deleted_msg') }}");
                    } else {
                        AIZ.plugins.notify('danger', "{{ trans('messages.something_went_wrong') }}");
                    }

                }
            });
        });
    </script>

    <script>
        function encodeTeamMembers() {
            let members = [];

            $('.team-title').each(function(index) {
                const title = $(this).val();
                const designation = $('.team-designation').eq(index).val();
                const image = $('.team-image').eq(index).val();

                if (title || designation || image) {
                    members.push({
                        title,
                        designation,
                        image
                    });
                }
            });

            $('#heading9_encoded').val(JSON.stringify(members));
            return true;
        }
    </script>


    <script>
        $(document).ready(function() {
            $('#add-dynamic-field').on('click', function() {
                const item = `
            <div class="country-group mb-3 border p-3 rounded bg-light">
                <div class="form-group">
                    <label>Name</label>
                    <input type="text" class="form-control field-name" value="">
                </div>
                <div class="form-group">
                    <label>Title</label>
                    <input type="text" class="form-control field-title" value="">
                </div>
                <div class="form-group">
                    <label>Content</label>
                    <textarea class="form-control field-content" rows="3"></textarea>
                </div>
                <button type="button" class="btn btn-danger btn-sm remove-dynamic-field-1 mt-2">Remove</button>
            </div>
        `;
                $('#dynamic-field-container-1').append(item);
            });

            $(document).on('click', '.remove-dynamic-field-1', function() {
                $(this).closest('.country-group').remove();
            });

            $('#dynamic-field-form-1').on('submit', function(e) {
                let items = [];
                $('#dynamic-field-container-1 .country-group').each(function() {
                    items.push({
                        name: $(this).find('.field-name').val(),
                        title: $(this).find('.field-title').val(),
                        content: $(this).find('.field-content').val()
                    });
                });

                $('#content1').val(JSON.stringify(items));
            });
        });
    </script>

    <script>
        document.addEventListener('DOMContentLoaded', function() {
            const form = document.getElementById('enquiry-form');

            if (form) {
                form.addEventListener('submit', function() {
                    const data = {
                        title: document.getElementById('heading10-title')?.value || '',
                        subtitle: document.getElementById('heading10-subtitle')?.value || '',
                        button_text: document.getElementById('heading10-button_text')?.value || ''
                    };

                    document.getElementById('heading10-json').value = JSON.stringify(data);
                });
            }
        });
    </script>
@endsection
