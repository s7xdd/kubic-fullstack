@extends('backend.layouts.app')

@section('content')

<div class="aiz-titlebar text-left mt-2 mb-3">
    <div class="align-items-center">
        <h1 class="h3">All Notifications</h1>
    </div>
</div>


<div class="row">
    <div class="col-md-8 mx-auto">
        <div class="card">
            <form class="" id="sort_customers" action="" method="GET">
                <div class="card-header row gutters-5">
                    <div class="col">
                        <h5 class="mb-0 h6">Notifications</h5>
                    </div>
                </div>
                <div class="card-body">
                    <ul class="list-group list-group-flush">
                        @forelse($notifications as $notification)
                            <li class="list-group-item d-flex justify-content-between align-items- py-3">
                                <div class="media text-inherit">
                                    <div class="media-body">
                                        <p class="mb-1 text-truncate-2">
                                            {{ $notification->data['message'] ?? '' }}
                                        </p>
                                        <small class="text-muted">
                                            {{ date("F j Y, g:i a", strtotime($notification->created_at)) }}
                                        </small>
                                    </div>
                                </div>
                            </li>

                        @empty
                            <li class="list-group-item">
                                <div class="py-4 text-center fs-16">No notification found</div>
                            </li>
                        @endforelse
                    </ul>
                    
                    {{ $notifications->links() }}
                </div>
            </form>
        </div>
    </div>
</div>

@endsection

