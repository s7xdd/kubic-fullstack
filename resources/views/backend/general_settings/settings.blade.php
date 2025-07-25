@extends('backend.layouts.app')

@section('content')

    <div class="row">
        <div class="col-lg-6">
            <div class="card">
                <div class="card-header">
                    <h5 class="mb-0 h6">WhatsApp Contact Number for Services</h5>
                </div>
                <form action="{{ route('configuration.service_settings') }}" method="POST"
                    enctype="multipart/form-data">
                    <div class="card-body">
                        @csrf

                        <div class="form-group row">
                            <label class="col-md-4 col-from-label">
                                WhatsApp Number
                            </label>
                            <div class="col-md-8">
                                <input class="form-control" type="tel" id="default_service_whatsapp" name="default_service_whatsapp" required
                                    value="{{ get_setting('default_service_whatsapp') ?? '' }}">
                            </div>
                        </div>

                        <div class="form-group mb-0 text-right">
                            <button type="submit" class="btn btn-sm btn-primary">Save</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>


@endsection


@section('script')
<script type="text/javascript">

    const phoneInput = document.getElementById('default_service_whatsapp');

    phoneInput.addEventListener('input', () => {
        phoneInput.value = phoneInput.value.replace(/[^0-9]/g, ''); // Remove non-numeric characters
    });

</script>

@endsection
