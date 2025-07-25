@php
    $name = $field['name'];
    $type = $field['type'];
    $label = $field['label'];
@endphp

@if ($type === 'text')
    <div class="form-group">
        <label>{{ $label }}</label>
        <input type="text" name="{{ $name }}" class="form-control" value="{{ $value }}">
    </div>
@elseif ($type === 'textarea')
    <div class="form-group">
        <label>{{ $label }}</label>
        <textarea name="{{ $name }}" class="form-control">{{ $value }}</textarea>
    </div>
@elseif ($type === 'editor')
    <div class="form-group">
        <label>{{ $label }}</label>
        <textarea class="aiz-text-editor" data-min-height="300" name="{{ $name }}">{{ $value }}</textarea>
    </div>
@elseif ($type === 'image')
    <div class="form-group">
        <label>{{ $label }}</label>
        <div class="input-group" data-toggle="aizuploader" data-type="image">
            <div class="input-group-prepend">
                <div class="input-group-text bg-soft-secondary font-weight-medium">{{ trans('messages.browse') }}</div>
            </div>
            <div class="form-control file-amount">{{ trans('messages.choose_file') }}</div>
            <input type="hidden" name="{{ $name }}" value="{{ $value }}" class="selected-files">
        </div>
        <div class="file-preview box sm"></div>
    </div>
@endif
