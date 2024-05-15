<div class="table-responsive">
    <table class="table table-borderless table-theme" style="width:100%;">
        <thead>
            <tr>
                {{-- <th class="checkboxlist text-center" style="width:5%"><input class="tp-check-all checkAll" type="checkbox">
                </th> --}}
                <th class="text-center" style="width:40%">{{ __('Complement') }}</th>
                <th class="text-center" style="width:20%">{{ __('Cost Price') }} </th>
                <th class="text-center" style="width:35%">{{ __('Action') }}</th>
            </tr>
        </thead>
        <tbody>
            {{-- @dd($invoiceData) --}}
            @if (count($invoiceData) > 0)
                @foreach ($invoiceData as $row)
                    @php
                        $i = 0;
                    @endphp
                    {{-- @dd($row->complements[$i]->name) --}}
                    <tr>

                        {{-- @dd( $transName ) --}}
                        {{-- <td class="checkboxlist text-center"><input name="item_ids[]" value="{{ $row->id }}"
                                class="tp-checkbox selected_item" type="checkbox"></td> --}}
                        <td class="text-center">{{ $row->complements[$i]->name }}</td>
                        <td class="text-center">{{$row->price }}&#160; &#160; SAR </td>
                        <td class="text-center">
                            <div class="btn-group action-group">
                                <a class="action-btn" href="javascript:void(0);" data-toggle="dropdown"
                                    aria-haspopup="true" aria-expanded="false"><i class="fa fa-ellipsis-v"></i></a>
                                <div class="dropdown-menu dropdown-menu-right">
                                    {{-- <a onclick="onEdit({{ $row->id }})" class="dropdown-item"
                                        href="javascript:void(0);">{{ __('Edit') }}</a> --}}
                                    <a onclick="onDelete({{ $row->id }})" class="dropdown-item"
                                        href="javascript:void(0);">{{ __('Delete') }}</a>
                                </div>
                            </div>
                        </td>
                    </tr>
                    @php
                        $i++;
                    @endphp
                @endforeach
            @else
                <tr>
                    <td class="text-center" colspan="5">{{ __('No data available') }}</td>
                </tr>
            @endif
        </tbody>
    </table>
</div>
<div class="row mt-15">
    <div class="col-lg-12">
        {{-- {{ $invoiceData->complements->links() }} --}}
    </div>
</div>
