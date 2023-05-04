@extends('layouts.admin')
@section('title', 'Master Asset | MY HELPDESK')
{{-- @section('title-sub', 'Master Asset') --}}
{{-- @section('breadcrumb')
<ol class="breadcrumb float-sm-right">
    <li class="breadcrumb-item"><a href="#">Home</a></li>
    <li class="breadcrumb-item active">DataTables</li>
</ol>
@endsection --}}
@section('content')


<div class="col-12">
    <div class="card">
        <div class="card-header">
            <h3 class="card-title">Master Asset</h3>
        </div>
        <!-- /.card-header -->
        <div class="card-body table-responsive">
            <div class="row mt-3">
                <div class="col-2">
                    <button type="button" class="btn btn-primary mb-3" id="addModal" onclick="deactivenotpc()"><i class="fa fa-plus" ></i> Add Data</button>
                </div>
                <div class="col-3">
                    <button id="btnGroupDrop11" type="button" class="btn btn-warning dropdown-toggle text-left" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fa fa-search"></i>&nbsp; &nbsp;Type Asset
                    </button>
                    <div class="dropdown-menu " style="height: auto; max-height: 200px; overflow-x: hidden;" aria-labelledby="btnGroupDrop1" x-placement="top-start" style="position: absolute; transform: translate3d(0px, -127px, 0px); top: 0px; left: 0px; will-change: transform;">
                            <button class="dropdown-item type_asset" data-id="-">All</button>
                            {{-- <a class="dropdown-item" href="javascript:window.top.location.reload(true)">All</a> --}}
                        @foreach ($type_asset as $item)
                            <button class="dropdown-item type_asset" data-id="{{$item->code}}">{{$item->name}}</button>
                        @endforeach
                        
                    </div>
                    {{-- <select id="ipfilterby"  class=" btn btn-primary btn-flat dropdown-toggle text-left" >
                        <option value="all">Show IP All</option>
                        <option onclick="getipbyfa()">IP Fix Asset</option>
                        <option value="NF">IP Non Fix Asset</option>
                    </select> --}}
                </div>
            </div>


            
            {{-- <div class="row" style="align:right">
                <button type="button" class="btn btn-primary mb-3" id="addModal" onclick="deactivenotpc()"><i class="fa fa-plus" ></i> Add Data</button>
            </div> --}}
            <table class="table table-hover w-full " id="asset_datatables" >
                <thead style="background-color: #0069D9; color: #fff;">
                    <tr class="text-center" >
                        <th style="width: 5%">No</th>
                        <th style="width: 20%">Type</th>
                        <th>FA Code</th>
                        <th style="width: 10%">Written</th>
                        <th style="width: 10%">Posted</th>
                        {{-- <th style="width: 10%">Voided</th> --}}
                        <th style="width: 20%">Status</th>
                        <th style="width: 5%">Action</th>
                    </tr>
                </thead>
                <tbody id="body">
                    
                </tbody>

            </table>
        </div>
        <!-- /.card-body -->
    </div>
    <!-- /.card -->
</div>

@include('pages.master_asset.modal.view._view-master-asset')
@include('pages.master_asset.modal.create._create-master-asset')
@include('pages.master_asset.modal.edit._edit-master-asset')
@include('pages.master_asset.modal.unpost')
@include('pages.master_asset.modal.log')
@include('pages.master_asset.modal.void._void')


@endsection

@push('page-script')
@include('pages.master_asset.ajax')
<script>
    $(document).ready(function(){
        //get data from datatables
        var table = $('#asset_datatables').DataTable({
            processing: true,
            serverSide: true,
            ajax: {
                url: "{{ route('master_asset.getdatatables') }}",
            },
            order: [
                [2, 'desc']
            ],
            responsive: true,
            columns: [
                {
                    title: '#',
                    name: 'no',
                    render: function (data, type, row, meta) {
                        return meta.row + meta.settings._iDisplayStart + 1;
                    }
                },
                {
                    data: 'name',
                    name: 'name'
                },
                {
                    data: 'fa_code',
                    name: 'fa_code'
                },
                {
                    data: 'written_date',
                    name: 'written_date'
                },
                // {
                //     data: 'p_merk',
                //     render: function ( data, type, row ) {
                //         return row.p_merk+'&nbsp;'+row.p_jenis+'&nbsp;'+row.p_tipe+'&nbsp;'+row.p_kecepatan+'&nbsp;'+'Ghz';
                //     }
                // },
                // {
                //     data: 'm_merk',
                //     render: function ( data, type, row ) {
                //         return row.m_merk+'&nbsp;'+row.m_tipe;
                //     }
                // },
                // {
                //     data: 'r_kapasitas',
                //     render: function ( data, type, row ) {
                //         return row.r_kapasitas+'&nbsp;'+row.r_tipe+'&nbsp;'+row.r_slot+'&nbsp;'+'Channel';
                //     }
                // },
                {
                    data: 'posted_date',
                    name: 'posted_date'
                },
                // {
                //     data: 'voided_date',
                //     name: 'voided_date'
                // },
                // {
                //     data: 'vga_external',
                //     name: 'vga_external'
                // },
                {
                    data: 'status_name',
                    name: 'status_name'
                },
                {
                    data: 'action',
                    name: 'action'
                }
            ]
        });
    });
    $(document).on('click', '.type_asset', function(e){
    e.preventDefault();
    var id = $(this).attr('data-id');
    var route  =  "{{ route('master_asset.getdatatables_filter', ':id') }}";
        route  = route.replace(':id', id);
   
        
    $('#asset_datatables').DataTable().clear().destroy();
    var table = $('#asset_datatables').DataTable({
        processing: true,
        serverSide: true,
        ajax: {
            url: route,
        },
        order: [
            [0, 'asc']
        ],
        responsive: true,
        columns: [
            {
                title: '#',
                name: 'no',
                render: function (data, type, row, meta) {
                    return meta.row + meta.settings._iDisplayStart + 1;
                }
            },
            {
                data: 'name',
                name: 'name'
            },
            {
                data: 'fa_code',
                name: 'fa_code'
            },
            {
                data: 'written_date',
                name: 'written_date'
            },
            // {
            //     data: 'p_merk',
            //     render: function ( data, type, row ) {
            //         return row.p_merk+'&nbsp;'+row.p_jenis+'&nbsp;'+row.p_tipe+'&nbsp;'+row.p_kecepatan+'&nbsp;'+'Ghz';
            //     }
            // },
            // {
            //     data: 'm_merk',
            //     render: function ( data, type, row ) {
            //         return row.m_merk+'&nbsp;'+row.m_tipe;
            //     }
            // },
            // {
            //     data: 'r_kapasitas',
            //     render: function ( data, type, row ) {
            //         return row.r_kapasitas+'&nbsp;'+row.r_tipe+'&nbsp;'+row.r_slot+'&nbsp;'+'Channel';
            //     }
            // },
            {
                data: 'posted_date',
                name: 'posted_date'
            },
            // {
            //     data: 'voided_date',
            //     name: 'voided_date'
            // },
            // {
            //     data: 'vga_external',
            //     name: 'vga_external'
            // },
            {
                data: 'status_name',
                name: 'status_name'
            },
            {
                data: 'action',
                name: 'action'
            }
        ]
    });
});




</script>
    
@endpush