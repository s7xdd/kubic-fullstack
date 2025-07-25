@extends('backend.layouts.app')

@section('content')

<div class="card">
    <form class="" action="" id="sort_orders" method="GET">
        <div class="card-header row gutters-5">
            <div class="col">
                <h5 class="mb-md-0 h6">All Orders</h5>
            </div>

            

            <!-- Change Status Modal -->
            <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">
                                {{trans('messages.choose_an_order_status')}}
                            </h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <select class="form-control aiz-selectpicker" onchange="change_status()" data-minimum-results-for-search="Infinity" id="update_delivery_status">
                                <option value="pending">{{trans('messages.pending')}}</option>
                                <option value="confirmed">{{trans('messages.confirmed')}}</option>
                                <option value="picked_up">{{trans('messages.picked_up')}}</option>
                                <option value="on_the_way">{{trans('messages.on_the_way')}}</option>
                                <option value="delivered">{{trans('messages.delivered')}}</option>
                                <option value="cancelled">{{trans('messages.cancelled')}}</option>
                            </select>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <button type="button" class="btn btn-primary">Save changes</button>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-2 ml-auto">
                <select class="form-control aiz-selectpicker" name="delivery_status" id="delivery_status">
                    <option value="">{{trans('messages.filter_by_delivery_status')}}</option>
                    <option value="pending" @if ($delivery_status == 'pending') selected @endif>{{trans('messages.pending')}}</option>
                    <option value="confirmed" @if ($delivery_status == 'confirmed') selected @endif>{{trans('messages.confirmed')}}</option>
                    <option value="picked_up" @if ($delivery_status == 'picked_up') selected @endif>{{trans('messages.picked_up')}}</option>
                    <option value="on_the_way" @if ($delivery_status == 'on_the_way') selected @endif>{{trans('messages.on_the_way')}}</option>
                    <option value="delivered" @if ($delivery_status == 'delivered') selected @endif>{{trans('messages.delivered')}}</option>
                    <option value="cancelled" @if ($delivery_status == 'cancelled') selected @endif>{{trans('messages.cancelled')}}</option>
                </select>
            </div>
            <div class="col-lg-2">
                <div class="form-group mb-0">
                    <input type="text" class="aiz-date-range form-control" value="{{ $date }}" name="date" placeholder="Filter by date" data-format="DD-MM-Y" data-separator=" to " data-advanced-range="true" autocomplete="off">
                </div>
            </div>
            <div class="col-lg-2">
                <div class="form-group mb-0">
                    <input type="text" class="form-control" id="search" name="search"@isset($sort_search) value="{{ $sort_search }}" @endisset placeholder="Type Order code & hit Enter">
                </div>
            </div>
            <div class="col-auto">
                <div class="form-group mb-0">
                    <button type="submit" class="btn btn-info">Filter</button>
                    <a href="{{ route('all_orders.index') }}" class="btn  btn-cancel">{{trans('messages.reset')}}</a>
                </div>
            </div>
        </div>

        <div class="card-body">
            <table class="table aiz-table mb-0">
                <thead>
                    <tr>
                        <th class="text-center">#</th>
                        {{-- <th>
                            <div class="form-group">
                                <div class="aiz-checkbox-inline">
                                    <label class="aiz-checkbox">
                                        <input type="checkbox" class="check-all">
                                        <span class="aiz-square-check"></span>
                                    </label>
                                </div>
                            </div>
                        </th> --}}
                        <th>Order Code</th>
                        <th  class="text-center">Num. of Products</th>
                        <th >Customer</th>
                        <th class="text-center" >Amount</th>
                        <th  class="text-center">Delivery Status</th>
                        <th  class="text-center">Payment Status</th>
                        <th class="text-center" width="15%">{{trans('messages.options')}}</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($orders as $key => $order)
                    <tr>
                        <td class="text-center">
                            {{ ($key+1) + ($orders->currentPage() - 1)*$orders->perPage() }}
                        </td>
                       
                        <td>
                            {{ $order->code }}
                        </td>
                        <td class="text-center">
                            {{ count($order->orderDetails) }}
                        </td>
                        <td>
                            @if ($order->user != null)
                            {{ $order->user->name }}
                            @else
                                @php
                                    $shipping_address = json_decode($order->shipping_address);
                                @endphp
                               
                                Guest ({{ $shipping_address->name ?? ''}})
                            @endif
                        </td>
                        <td class="text-center">
                            {{ single_price($order->grand_total) }}
                        </td>
                        <td class="text-center">
                            @php
                                $status = ucfirst(str_replace('_', ' ', $order->delivery_status));
                               
                            @endphp
                            <span class="badge badge-lg badge-inline @if($order->delivery_status == 'delivered') bg-success @elseif($order->delivery_status == 'cancelled') bg-danger @else bg-warning @endif" >{!! $status !!}</span>
                        </td>
                        <td class="text-center">
                            @if ($order->payment_status == 'paid')
                            <span class="badge badge-inline badge-success">{{trans('messages.paid')}}</span>
                            @else
                            <span class="badge badge-inline badge-danger">{{trans('messages.unpaid')}}</span>
                            @endif
                        </td>
                        
                        <td class="text-center">
                            <a class="btn btn-soft-primary btn-icon btn-circle" href="{{route('all_orders.show', encrypt($order->id))}}" title="View">
                                <i class="las la-eye"></i>
                            </a>
                            <a class="btn btn-soft-info btn-icon btn-circle" href="{{ route('invoice.download', $order->id) }}" title="Download Invoice">
                                <i class="las la-download"></i>
                            </a>
                           
                        </td>
                    </tr>
                    @endforeach
                </tbody>
            </table>

            <div class="aiz-pagination">
                {{ $orders->appends(request()->input())->links('pagination::bootstrap-5') }}
            </div>

        </div>
    </form>
</div>

@endsection

@section('modal')
    @include('modals.delete_modal')
@endsection

@section('script')
    <script type="text/javascript">
        $(document).on("change", ".check-all", function() {
            if(this.checked) {
                // Iterate each checkbox
                $('.check-one:checkbox').each(function() {
                    this.checked = true;
                });
            } else {
                $('.check-one:checkbox').each(function() {
                    this.checked = false;
                });
            }

        });

        
    </script>
@endsection
