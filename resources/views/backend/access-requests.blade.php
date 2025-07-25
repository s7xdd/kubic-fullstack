@extends('backend.layouts.app')

@section('content')
    @if (session('error'))
        <div class="alert alert-danger">
            {{ session('error') }}
        </div>
    @endif

    @if (session('success'))
        <div class="alert alert-success">
            {{ session('success') }}
        </div>
    @endif

    <div class="aiz-titlebar text-left mt-2 mb-3">
        <div class="row align-items-center">
            <div class="col-md-6">
                <h1 class="h3">All Access Requests</h1>
            </div>
            <div class="col-md-6 text-md-right">

            </div>
        </div>
    </div>

    <div class="card">
        <div class="card-header row gutters-5">
            <div class="col">
                <h5 class="mb-md-0 h6">Access Requests</h5>
            </div>

        </div>
        <div class="card-body">

            <table class="table aiz-table mb-0 ">
                <thead>
                    <tr>
                        <th scope="col" class="text-center">Sl No:</th>
                        <th scope="col">Name</th>
                        <th scope="col">Email</th>
                        <th scope="col">Phone</th>
                        <th scope="col">Subject</th>
                        <th scope="col" style="width:40%;">Message</th>
                        <th scope="col" class="text-center">Date</th>
                        <th scope="col" class="text-center">Key</th>
                        <th scope="col" class="text-center">Action</th>
                    </tr>
                </thead>
                <tbody>
                    @if (isset($requests[0]))
                        @foreach ($requests as $key => $con)
                            <tr>
                                <td scope="row" class="text-center">
                                    {{ $key + 1 + ($requests->currentPage() - 1) * $requests->perPage() }}</td>
                                <td>{{ $con->name }}</td>
                                <td>{{ $con->email }}</td>
                                <td>{{ $con->phone }}</td>
                                <td>{{ ucwords(str_replace('_', ' ', $con->subject)) }}</td>
                                <td>{{ $con->message }}</td>
                                <td class="text-center">{{ date('d M,Y', strtotime($con->created_at)) }}</td>
                                <td>{{ $con->access_key }}</td>
                                <td class="text-center">
                                    @if (!$con->user_created)
                                        <form action="{{ route('access-requests.accept', $con->id) }}" method="POST">
                                            @csrf
                                            <button type="submit" class="btn btn-success btn-sm">
                                                Accept Request
                                            </button>
                                        </form>
                                    @else
                                        <span class="badge">User Created</span>
                                    @endif
                                </td>
                            </tr>
                        @endforeach
                    @else
                        <tr>
                            <td colspan="6" class="text-center">No data found </td>
                        </tr>
                    @endif
                </tbody>
            </table>
            <div class="aiz-pagination">
                {{ $requests->appends(request()->input())->links('pagination::bootstrap-5') }}
            </div>
        </div>
    </div>

@endsection

@section('modal')
    @include('modals.delete_modal')
@endsection
