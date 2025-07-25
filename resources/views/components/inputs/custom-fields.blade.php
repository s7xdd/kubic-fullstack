@props([
    'fieldName' => 'content',
    'label' => 'Dynamic Fields Section',
    'existingData' => '[]',
    'fields' => [],
])

@php
    $items = json_decode($existingData, true) ?? [];
@endphp

<div class="card dynamic-json-form" data-field="{{ $fieldName }}">
    <div class="card-header">
        <h5 class="mb-0">{{ $label }}</h5>
    </div>
    <div class="card-body">
        <input type="hidden" name="{{ $fieldName }}" id="{{ $fieldName }}-json-data">

        <div id="{{ $fieldName }}-form-groups">
            @foreach ($items as $index => $entry)
                <div class="json-form-item mb-4 p-3 border rounded bg-light">
                    @foreach ($fields as $f)
                        @include('components.inputs.partials.json-form-group', [
                            'field' => $f,
                            'value' => $entry[$f['name']] ?? '',
                        ])
                    @endforeach
                    <button type="button" class="btn btn-danger btn-sm remove-json-item mt-2">Remove</button>
                </div>
            @endforeach
        </div>

        <button type="button" class="btn btn-soft-primary mb-3" id="add-{{ $fieldName }}-entry">+ Add</button>
    </div>
</div>

@push('scripts')
    <script>
        $(document).ready(function() {
            const fieldName = "{{ $fieldName }}";
            const fields = @json($fields);

            function createFieldGroup(values = {}) {
                let html = `<div class="json-form-item mb-4 p-3 border rounded bg-light">`;

                fields.forEach(field => {
                    const name = field.name;
                    const type = field.type;
                    const label = field.label;
                    const value = values[name] ?? '';

                    if (type === 'text') {
                        html += `
                        <div class="form-group">
                            <label>${label}</label>
                            <input type="text" name="${name}" class="form-control" value="${value}">
                        </div>`;
                    }

                    if (type === 'textarea') {
                        html += `
                        <div class="form-group">
                            <label>${label}</label>
                            <textarea name="${name}" class="form-control">${value}</textarea>
                        </div>`;
                    }

                    if (type === 'editor') {
                        html += `
                        <div class="form-group">
                            <label>${label}</label>
                            <textarea class="aiz-text-editor" name="${name}" data-min-height="300">${value}</textarea>
                        </div>`;
                    }

                    if (type === 'image') {
                        html += `
                        <div class="form-group">
                            <label>${label}</label>
                            <div class="input-group" data-toggle="aizuploader" data-type="image">
                                <div class="input-group-prepend">
                                    <div class="input-group-text bg-soft-secondary font-weight-medium">{{ trans('messages.browse') }}</div>
                                </div>
                                <div class="form-control file-amount">{{ trans('messages.choose_file') }}</div>
                                <input type="hidden" name="${name}" value="${value}" class="selected-files">
                            </div>
                            <div class="file-preview box sm"></div>
                        </div>`;
                    }
                });

                html += `<button type="button" class="btn btn-danger btn-sm remove-json-item mt-2">Remove</button>`;
                html += `</div>`;

                return html;
            }

            $('#add-{{ $fieldName }}-entry').on('click', function() {
                $('#{{ $fieldName }}-form-groups').append(createFieldGroup());
            });

            $(document).on('click', '.remove-json-item', function() {
                $(this).closest('.json-form-item').remove();
            });

            $('form').on('submit', function() {
                const result = [];
                $('#{{ $fieldName }}-form-groups .json-form-item').each(function() {
                    const entry = {};
                    $(this).find('[name]').each(function() {
                        const name = $(this).attr('name');
                        const value = $(this).val();
                        entry[name] = value;
                    });
                    result.push(entry);
                });

                $('#{{ $fieldName }}-json-data').val(JSON.stringify(result));
            });
        });
    </script>
@endpush
