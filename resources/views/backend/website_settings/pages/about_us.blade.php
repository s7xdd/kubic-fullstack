@extends('backend.layouts.app')

@section('content')
    @php
        $animatedBlocks = json_decode($page->getTranslation('heading5', $lang) ?? '[]', true);
        $highlights = json_decode($page->getTranslation('heading6', $lang) ?? '[]', true);
        $partners = json_decode($page->getTranslation('heading7', $lang) ?? '[]', true);
    @endphp

    <div class="aiz-titlebar text-left mt-2 mb-3">
        <div class="row align-items-center">
            <div class="col">
                <h1 class="h3">Edit {{ $page->slug }} - About Us</h1>
            </div>
        </div>
    </div>


    <form action="{{ route('custom-pages.update', $page->id) }}" method="POST" enctype="multipart/form-data"
        onsubmit="return aboutUsJSONEncode();">
        @csrf
        <input type="hidden" name="_method" value="PATCH">
        <input type="hidden" name="lang" value="{{ $lang }}">
        <input type="hidden" name="heading9" id="heading9-json">

        <div class="card mb-4">
            <div class="card-header">
                <h6 class="fw-600 mb-0">Section 1</h6>
            </div>
            <div class="card-body">
                <div class="form-group row">
                    <label class="col-sm-2 col-from-label">Heading</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" name="title1"
                            value="{{ old('title1', $page->getTranslation('title1', $lang) ?? '') }}">
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2 col-from-label">Title</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" name="title2"
                            value="{{ old('title2', $page->getTranslation('title2', $lang) ?? '') }}">
                    </div>
                </div>
            </div>
        </div>

        <div class="card mb-4">
            <div class="card-header">
                <h6 class="fw-600 mb-0">Section 2</h6>
            </div>
            <div class="card-body">
                <div class="form-group row">
                    <label class="col-sm-2 col-from-label">Title</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" name="title3"
                            value="{{ old('title3', $page->getTranslation('title3', $lang) ?? '') }}">
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2 col-from-label">Heading</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" name="heading1"
                            value="{{ old('heading1', $page->getTranslation('heading1', $lang) ?? '') }}">
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2 col-from-label">Content</label>
                    <div class="col-sm-10">
                        <textarea class="aiz-text-editor form-control" name="content1">{!! old('content1', $page->getTranslation('content1', $lang) ?? '') !!}</textarea>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2 col-from-label">Button Text</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" name="heading2"
                            value="{{ old('heading2', $page->getTranslation('heading2', $lang) ?? '') }}">
                    </div>
                </div>
            </div>
        </div>

        <div class="card mb-4">
            <div class="card-header">
                <h6 class="fw-600 mb-0">Section 3: Animated Section</h6>
            </div>
            <div class="card-body">
                <div class="form-group row">
                    <label class="col-sm-2 col-from-label">Image</label>
                    <div class="col-sm-10">
                        <div class="input-group" data-toggle="aizuploader" data-type="image">
                            <div class="input-group-prepend">
                                <div class="input-group-text bg-soft-secondary font-weight-medium">Browse</div>
                            </div>
                            <div class="form-control file-amount">Choose File</div>
                            <input type="hidden" name="image1" class="selected-files"
                                value="{{ old('image1', $page->image1 ?? '') }}">
                        </div>
                        <div class="file-preview box sm"></div>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2 col-from-label">Heading</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" name="heading3"
                            value="{{ old('heading3', $page->getTranslation('heading3', $lang) ?? '') }}">
                    </div>
                </div>
            </div>
        </div>

        <div class="card mb-4">
            <div class="card-header">
                <h6 class="fw-600 mb-0">Section 4: About</h6>
            </div>
            <div class="card-body">
                @php
                    $about = json_decode($page->getTranslation('heading9', $lang), true) ?? [];
                @endphp

                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">Heading 1</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control team-title" placeholder="Enter Heading"
                            value="{{ $about[0]['heading'] ?? '' }}">
                    </div>
                </div>

                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">Title 1</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control team-designation" placeholder="Enter Title"
                            value="{{ $about[0]['title'] ?? '' }}">
                    </div>
                </div>

                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">Description</label>
                    <div class="col-sm-10">
                        <textarea class="form-control team-designation" placeholder="Enter Title">{{ $about[0]['description'] ?? '' }}</textarea>
                    </div>
                </div>

                <hr>

                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">Heading 2</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control team-title" placeholder="Enter heading"
                            value="{{ $about[1]['heading'] ?? '' }}">
                    </div>
                </div>

                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">Title 2</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control team-designation" placeholder="Enter Title"
                            value="{{ $about[1]['title'] ?? '' }}">
                    </div>
                </div>

                @php
                    $icons = $about[1]['icons'] ?? [];
                    $titles = $about[1]['titles'] ?? [];
                    $descriptions = $about[1]['descriptions'] ?? [];
                @endphp

                @for ($i = 0; $i < 4; $i += 2)
                    <div class="row mt-3">
                        <div class="col-md-6">
                            <div class="form-group row">
                                <label class="col-sm-4 col-form-label">Icon {{ $i + 1 }}</label>
                                <div class="col-sm-8">
                                    <div class="input-group" data-toggle="aizuploader" data-type="image">
                                        <div class="input-group-prepend">
                                            <div class="input-group-text bg-soft-secondary font-weight-medium">Browse</div>
                                        </div>
                                        <div class="form-control file-amount">Choose File</div>
                                        <input value="{{ $icons[$i] ?? '' }}" type="hidden"
                                            class="selected-files team-image" id="teamIcon{{ $i }}">
                                    </div>
                                    <div class="file-preview box sm"></div>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="col-sm-4 col-form-label">Title {{ $i + 1 }}</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control team-title" placeholder="Enter Title"
                                        value="{{ $titles[$i] ?? '' }}">
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="col-sm-4 col-form-label">Description {{ $i + 1 }}</label>
                                <div class="col-sm-8">
                                    <textarea class="form-control team-description" placeholder="Enter Description" rows="3">{{ $descriptions[$i] ?? '' }}</textarea>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group row">
                                <label class="col-sm-4 col-form-label">Icon {{ $i + 2 }}</label>
                                <div class="col-sm-8">
                                    <div class="input-group" data-toggle="aizuploader" data-type="image">
                                        <div class="input-group-prepend">
                                            <div class="input-group-text bg-soft-secondary font-weight-medium">Browse</div>
                                        </div>
                                        <div class="form-control file-amount">Choose File</div>
                                        <input value="{{ $icons[$i + 1] ?? '' }}" type="hidden"
                                            class="selected-files team-image" id="teamIcon{{ $i + 1 }}">
                                    </div>
                                    <div class="file-preview box sm"></div>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="col-sm-4 col-form-label">Title {{ $i + 2 }}</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control team-title" placeholder="Enter Title"
                                        value="{{ $titles[$i + 1] ?? '' }}">
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="col-sm-4 col-form-label">Description {{ $i + 2 }}</label>
                                <div class="col-sm-8">
                                    <textarea class="form-control team-description" placeholder="Enter Description" rows="3">{{ $descriptions[$i + 1] ?? '' }}</textarea>
                                </div>
                            </div>
                        </div>
                    </div>
                @endfor
            </div>
        </div>

        <div class="card mb-4">
            <div class="card-header">
                <h6 class="fw-600 mb-0">Section 5: Highlights</h6>
            </div>
            <div class="card-body">
                <div class="form-group row">
                    <label class="col-sm-2 col-from-label">Title</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" name="section4_title"
                            value="{{ old('section4_title', $page->getTranslation('section4_title', $lang) ?? '') }}">
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2 col-from-label">Subtitle</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" name="section4_subtitle"
                            value="{{ old('section4_subtitle', $page->getTranslation('section4_subtitle', $lang) ?? '') }}">
                    </div>
                </div>
                <div id="highlights-container">
                </div>
                <div>
                    <button type="button" class="btn btn-outline-primary btn-sm mb-2" onclick="addHighlight()">+ Add
                        Highlight</button>
                </div>
                <input type="hidden" name="heading6" id="section4_highlights_json">
            </div>
        </div>

        <div class="card mb-4">
            <div class="card-header">
                <h6 class="fw-600 mb-0">Section 6: Partners</h6>
            </div>
            <div class="card-body">
                <div class="form-group row">
                    <label class="col-sm-2 col-from-label">Title</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" name="heading8"
                            value="{{ old('heading8', $page->getTranslation('heading8', $lang) ?? '') }}">
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2 col-from-label">Partners</label>
                    <div class="col-sm-10" id="partners-container">
                    </div>
                    <div class="col-sm-10 offset-sm-2">
                        <button type="button" class="btn btn-outline-primary btn-sm mb-2" onclick="addPartner()">+ Add
                            Partner</button>
                    </div>
                </div>
                <input type="hidden" name="heading7" id="section5_partners_json">

                <div class="form-group row">
                    <label class="col-sm-2 col-from-label">Project Images (Multiple)</label>
                    <div class="col-sm-10">
                        <div class="input-group" data-toggle="aizuploader" data-type="image">
                            <div class="input-group-prepend">
                                <div class="input-group-text bg-soft-secondary font-weight-medium">Browse</div>
                            </div>
                            <div class="form-control file-amount">Choose Files</div>
                            <input type="hidden" name="heading10" class="selected-files"
                                value="{{ $page->heading10 }}">
                        </div>
                        <div class="file-preview box sm">
                        </div>
                    </div>

                </div>
            </div>
        </div>

        <div class="card mb-4">
            <div class="card-header">
                <h6 class="fw-600 mb-0">Seo Fields</h6>
            </div>
            <div class="card-body">

                <div class="form-group row">
                    <label class="col-sm-2 col-from-label" for="name">{{ trans('messages.meta_title') }}</label>
                    <div class="col-sm-10">
                        <input type="text" @if ($lang == 'ae') dir="rtl" @endif class="form-control"
                            placeholder="{{ trans('messages.meta_title') }}" name="meta_title"
                            value="{{ $page->getTranslation('meta_title', $lang) }}">
                    </div>
                </div>

                <div class="form-group row">
                    <label class="col-sm-2 col-from-label"
                        for="name">{{ trans('messages.meta_description') }}</label>
                    <div class="col-sm-10">
                        <textarea @if ($lang == 'ae') dir="rtl" @endif class="resize-off form-control"
                            placeholder="{{ trans('messages.meta_description') }}" rows="5" name="meta_description">{!! $page->getTranslation('meta_description', $lang) !!}</textarea>
                    </div>
                </div>

                <div class="form-group row">
                    <label class="col-sm-2 col-from-label" for="name">{{ trans('messages.meta_keywords') }}</label>
                    <div class="col-sm-10">
                        <textarea @if ($lang == 'ae') dir="rtl" @endif class="resize-off form-control"
                            placeholder="{{ trans('messages.meta_keywords') }}" rows="3" name="keywords">{!! $page->getTranslation('keywords', $lang) !!}</textarea>
                        <small class="text-muted">Separate with coma</small>
                    </div>
                </div>


                <div class="form-group row">
                    <label class="col-sm-2 col-from-label" for="name">{{ trans('messages.og_title') }}</label>
                    <div class="col-sm-10">
                        <input type="text" @if ($lang == 'ae') dir="rtl" @endif class="form-control"
                            placeholder="{{ trans('messages.og_title') }}" name="og_title"
                            value="{{ $page->getTranslation('og_title', $lang) }}">
                    </div>
                </div>

                <div class="form-group row">
                    <label class="col-sm-2 col-from-label" for="name">{{ trans('messages.og_description') }}</label>
                    <div class="col-sm-10">
                        <textarea @if ($lang == 'ae') dir="rtl" @endif class="resize-off form-control"
                            placeholder="{{ trans('messages.og_description') }}" rows="5" name="og_description">{!! $page->getTranslation('og_description', $lang) !!}</textarea>
                    </div>
                </div>


                <div class="form-group row">
                    <label class="col-sm-2 col-from-label" for="name">{{ trans('messages.twitter_title') }}</label>
                    <div class="col-sm-10">
                        <input type="text" @if ($lang == 'ae') dir="rtl" @endif class="form-control"
                            placeholder="{{ trans('messages.twitter_title') }}" name="twitter_title"
                            value="{{ $page->getTranslation('twitter_title', $lang) }}">
                    </div>
                </div>

                <div class="form-group row">
                    <label class="col-sm-2 col-from-label"
                        for="name">{{ trans('messages.twitter_description') }}</label>
                    <div class="col-sm-10">
                        <textarea @if ($lang == 'ae') dir="rtl" rows="5" @endif class="resize-off form-control"
                            placeholder="{{ trans('messages.twitter_description') }}" name="twitter_description">{!! $page->getTranslation('twitter_description', $lang) !!}</textarea>
                    </div>
                </div>


                <div class="text-right">
                    <button type="submit" class="btn btn-primary">Update Page</button>
                    <a href="{{ route('website.pages') }}" class="btn btn-cancel">Cancel</a>
                </div>
            </div>
        </div>
    </form>
@endsection

@section('script')
    <script>
        function aboutUsJSONEncode() {
            let highlights = [];
            $('#highlights-container .highlight-item').each(function() {
                highlights.push({
                    heading: $(this).find('.highlight-heading').val(),
                    title: $(this).find('.highlight-title').val(),
                    description: $(this).find('.highlight-description').val()
                });
            });
            $('#section4_highlights_json').val(JSON.stringify(highlights));

            let partners = [];
            $('#partners-container .partner-item').each(function() {
                partners.push({
                    icon: $(this).find('.partner-icon').val()
                });
            });
            $('#section5_partners_json').val(JSON.stringify(partners));

            prepareAboutSectionJSON();

            return true;
        }

        function addHighlight() {
            if ($('#highlights-container .highlight-item').length >= 4) {
                alert('Maximum 4 highlights allowed.');
                return;
            }
            $('#highlights-container').append(`
        <div class="highlight-item p-2 border rounded mb-2">
            <div class="form-group">
                <label>Heading</label>
                <input type="text" class="form-control highlight-heading">
            </div>
            <div class="form-group">
                <label>Title</label>
                <input type="text" class="form-control highlight-title">
            </div>
            <div class="form-group">
                <label>Description</label>
                <textarea class="form-control highlight-description"></textarea>
            </div>
            <button type="button" class="btn btn-danger btn-sm" onclick="$(this).closest('.highlight-item').remove();">Remove</button>
        </div>
    `);
        }

        function addPartner() {
            $('#partners-container').append(`
        <div class="partner-item p-2 border rounded mb-2">
            <div class="input-group" data-toggle="aizuploader" data-type="image">
                <div class="input-group-prepend"><div class="input-group-text bg-soft-secondary font-weight-medium">Browse</div></div>
                <div class="form-control file-amount">Choose File</div>
                <input type="hidden" class="partner-icon selected-files">
            </div>
            <div class="file-preview box sm"></div>
            <button type="button" class="btn btn-danger btn-sm mt-1" onclick="$(this).closest('.partner-item').remove();">Remove</button>
        </div>
    `);
        }

        function prepareAboutSectionJSON() {
            const data = [];

            const heading1 = $('.card-body input.team-title').eq(0).val() || '';
            const title1 = $('.card-body input.team-designation').eq(0).val() || '';
            const description1 = $('.card-body textarea.team-designation').eq(0).val() || '';

            const section1 = {
                heading: heading1,
                title: title1,
                description: description1
            };

            const heading2 = $('.card-body input.team-title').eq(1).val() || '';
            const title2 = $('.card-body input.team-designation').eq(1).val() || '';

            const icons = [];
            const titles = [];
            const descriptions = [];

            for (let i = 0; i < 4; i++) {
                const icon = $('#teamIcon' + i).val() || '';
                const title = $('.card-body input.team-title').eq(i + 2).val() || '';
                const desc = $('.card-body textarea.team-description').eq(i).val() || '';

                icons.push(icon);
                titles.push(title);
                descriptions.push(desc);
            }

            const section2 = {
                heading: heading2,
                title: title2,
                icons: icons,
                titles: titles,
                descriptions: descriptions
            };

            data.push(section1);
            data.push(section2);

            $('#heading9-json').val(JSON.stringify(data));
        }
    </script>

    <script>
        $(document).ready(function() {
            let highlights = @json($highlights);
            highlights.forEach(function(highlight) {
                $('#highlights-container').append(`
     <div class="highlight-item p-2 border rounded mb-2">
      <div class="form-group">
       <label>Heading</label>
       <input type="text" class="form-control highlight-heading" value="${highlight.heading ?? ''}">
      </div>
      <div class="form-group">
       <label>Title</label>
       <input type="text" class="form-control highlight-title" value="${highlight.title ?? ''}">
      </div>
      <div class="form-group">
       <label>Description</label>
       <textarea class="form-control highlight-description">${highlight.description ?? ''}</textarea>
      </div>
      <button type="button" class="btn btn-danger btn-sm" onclick="$(this).closest('.highlight-item').remove();">Remove</button>
     </div>
    `);
            });

            let partners = @json($partners);
            partners.forEach(function(partner) {
                const icon = partner.icon ?? '';
                $('#partners-container').append(`
<div class="partner-item p-2 border rounded mb-2">
 <div class="input-group" data-toggle="aizuploader" data-type="image">
  <div class="input-group-prepend">
   <div class="input-group-text bg-soft-secondary font-weight-medium">Browse</div>
  </div>
  <div class="form-control file-amount">Choose File</div>
  <input type="hidden" class="partner-icon selected-files" value="${icon}">
 </div>
 <div class="file-preview box sm"></div>
 <button type="button" class="btn btn-danger btn-sm mt-1" onclick="$(this).closest('.partner-item').remove();">Remove</button>
</div>
`);
            });


        });
    </script>
@endsection
