@php
    $name = $field['name'] ?? '';
    $label = $field['label'] ?? ucfirst(str_replace('_', ' ', $name));
    $type = $field['type'] ?? 'text';
    $placeholder = $field['placeholder'] ?? '';
    $value = $item[$name] ?? '';
@endphp

@if ($type === 'image')
    <div class="form-group row">
        <label class="col-md-2 col-form-label">{{ $label }}</label>
        <div class="col-md-12">
            <div class="input-group" data-toggle="aizuploader" data-type="image">
                <div class="input-group-prepend">
                    <div class="input-group-text bg-soft-secondary font-weight-medium">
                        {{ trans('messages.browse') }}
                    </div>
                </div>
                <div class="form-control file-amount">{{ trans('messages.choose_file') }}</div>
                <input type="hidden" name="{{ $name }}" value="{{ $value }}" class="selected-files">
            </div>
            <div class="file-preview box sm">
                @if ($value)
                    <img src="{{ uploaded_asset($value) }}" class="img-fit h-100px mt-2">
                @endif
            </div>
        </div>
    </div>
@elseif ($type === 'text_editor')
    <div class="form-group row">
        <label class="col-md-3 col-from-label">{{ $label }}</label>
        <div class="col-md-12">
            <textarea class="aiz-text-editor" data-min-height="300" name="{{ $name }}">{{ $value }}</textarea>
        </div>
    </div>
@else
    <div class="form-group row">
        <label class="col-md-12 col-from-label">{{ $label }}</label>
        <div class="col-md-12">
            <input type="{{ $type }}" name="{{ $name }}" value="{{ $value }}"
                class="form-control" placeholder="{{ $placeholder }}">
        </div>
    </div>
@endif
