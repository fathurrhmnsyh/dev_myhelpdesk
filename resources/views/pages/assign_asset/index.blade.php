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
            <h3 class="card-title">Assign Asset</h3>
        </div>
        <!-- /.card-header -->
        <div class="card-body table-responsive">
            <button type="button" class="btn btn-primary mb-3" id="addModalAssign" ><i class="fa fa-plus" ></i> Add Data</button>
            <table class="table table-hover w-full " id="assign_asset_datatables" >
                <thead style="background-color: #0069D9; color: #fff;">
                    <tr class="text-center" >
                        <th style="width: 5%">No</th>
                        <th style="width: 10%">Type</th>
                        <th style="width: 10%">FA Code</th>
                        <th style="width: 15%">User</th>
                        <th style="width: 15%">Section</th>
                        <th style="width: 10%">Location</th>
                        {{-- <th style="width: 15%">Processor</th> --}}
                        {{-- <th style="width: 15%">Mainboard</th> --}}
                        {{-- <th style="width: 15%">RAM</th> --}}
                        {{-- <th style="width: 15%">VGA</th> --}}
                        <th style="width: 10%">Written</th>
                        <th style="width: 15%">Posted</th>
                        <th>Action</th>
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




@endsection
@include('pages.assign_asset.modal.create._create-assign-asset')
@include('pages.assign_asset.modal.create.fa_modal')
@include('pages.assign_asset.modal.create.dept_modal')
@include('pages.assign_asset.modal.create.ass_loc_modal')
@include('pages.assign_asset.modal.edit._edit-dept_modal')
@include('pages.assign_asset.modal.edit._edit_ass_loc_modal')
@include('pages.assign_asset.modal.view._view-assign-asset')
@include('pages.assign_asset.modal.log')
@include('pages.assign_asset.modal.void._void')
@include('pages.assign_asset.modal.post._unpost')
@include('pages.assign_asset.modal.edit._edit-assign-asset')

@push('page-script')
@include('pages.assign_asset.ajax')
<script>
    $(document).ready(function(){
        //get data from datatables
        var table = $('#assign_asset_datatables').DataTable({
            processing: true,
            serverSide: true,
            ajax: {
                url: "{{ route('assign_asset.getdatatables') }}",
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
                    data: 'employee_name',
                    name: 'employee_name'
                },
                {
                    data: 'section',
                    name: 'section',
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
                    data: 'asset_location',
                    name: 'asset_location'
                },
                {
                    data: 'written_dates',
                    name: 'written_dates'
                },
                {
                    data: 'posted_dates',
                    name: 'posted_dates'
                },
                
                // {
                //     data: 'vga_external',
                //     name: 'vga_external'
                // },
                {
                    data: 'action',
                    name: 'action'
                }
            ]
        });
    });
    //GET FA
    var url_select_udept = "{{ route('assign_asset.getfa') }}";
    var lookUpdataFa = $('#lookUpdataFa').DataTable({
        "pagingType": "numbers",
        "searching": true,
        ajax: url_select_udept,
        responsive: true,
        paging: true,
        "bFilter": false,
        "order": [
            [0, 'asc']
        ],
        columns: [{
                data: 'fa_code',
                name: 'fa_code'
            },
            {
                data: 'p_merk',
                render: function ( data, type, row ) {
                    return row.asset_merk+'&nbsp;'+row.asset_type+'&nbsp;'+row.serial_number;
                }
            },
            {
                data: 'p_merk',
                render: function ( data, type, row ) {
                    return row.p_merk+'&nbsp;'+row.p_jenis+'&nbsp;'+row.p_type+'&nbsp;'+row.p_speed+'&nbsp;'+'Ghz';
                }
            },
            {
            data: 'm_merk',
                render: function ( data, type, row ) {
                    return row.m_merk+'&nbsp;'+row.m_type;
                }
            },
            {
                data: 'r_size',
                render: function ( data, type, row ) {
                    return row.r_size+'&nbsp;'+row.r_type+'&nbsp;'+row.r_slot+'&nbsp;'+'Channel';
                }
            },

        ],
        "bDestroy": true,
        "initComplete": function (settings, json) {
            // $('div.dataTables_filter input').focus();
            $('#lookUpdataFa tbody').on('dblclick', 'tr', function () {
                var dataArrWh = [];
                var rowsUd = $(this);
                var rowDataUd = lookUpdataFa.rows(rowsUd).data();
                $.each($(rowDataUd), function (key, value) {
                    document.getElementById("fa_code_create").value = value[
                        "fa_code"];
                    document.getElementById("asset_code_create").value = value[
                        "asset_code"];
                    $('#faModal').modal('hide');
                    // $('#ip_no_create').focus()

                });
            });
        },

    });
    //GET DEPT
    var url_select_udept = "{{ route('assign_asset.getdept') }}";
    var lookUpdataDept = $('#lookUpdataDept').DataTable({
        "pagingType": "numbers",
        "searching": true,
        ajax: url_select_udept,
        responsive: true,
        paging: true,
        "bFilter": false,
        "order": [
            [0, 'asc']
        ],
        columns: [
            {
                data: 'name',
                name: 'name'
            },
            {
                data: 'nik',
                name: 'nik'
            },
            {
                data: 'section',
                name: 'section'
            }
            

        ],
        "bDestroy": true,
        "initComplete": function (settings, json) {
            // $('div.dataTables_filter input').focus();
            $('#lookUpdataDept tbody').on('dblclick', 'tr', function () {
                var dataArrWh = [];
                var rowsUd = $(this);
                var rowDataUd = lookUpdataDept.rows(rowsUd).data();
                $.each($(rowDataUd), function (key, value) {
                    var section = value["section"];
                    document.getElementById("employee_search_create").value = value[
                        "name"];
                    document.getElementById("nik_create").value = value[
                        "nik"];
                    document.getElementById("section_create").value = escapeHtml(section);
                    $('#deptModal').modal('hide');
                    // $('#ip_no_create').focus()

                });
            });
        },

    });
    //GET DEPT Edit
    var url_select_udept = "{{ route('assign_asset.getdept') }}";
    var lookUpdataDeptEdit = $('#lookUpdataDeptEdit').DataTable({
        "pagingType": "numbers",
        "searching": true,
        ajax: url_select_udept,
        responsive: true,
        paging: true,
        "bFilter": false,
        "order": [
            [0, 'asc']
        ],
        columns: [
            {
                data: 'name',
                name: 'name'
            },
            {
                data: 'nik',
                name: 'nik'
            },
            {
                data: 'section',
                name: 'section'
            }
            

        ],
        "bDestroy": true,
        "initComplete": function (settings, json) {
            // $('div.dataTables_filter input').focus();
            $('#lookUpdataDeptEdit tbody').on('dblclick', 'tr', function () {
                var dataArrWh = [];
                var rowsUd = $(this);
                var rowDataUd = lookUpdataDeptEdit.rows(rowsUd).data();
                $.each($(rowDataUd), function (key, value) {
                    var section = value["section"];
                    document.getElementById("employee_search_edit").value = value[
                        "name"];
                    document.getElementById("nik_edit").value = value[
                        "nik"];
                    document.getElementById("section_edit").value = escapeHtml(section);
                    $('#deptModalEdit').modal('hide');
                    // $('#ip_no_create').focus()

                });
            });
        },

    });
    //GET LOCATION ASSET
    var url_select_udept = "{{ route('assign_asset.getlocasset') }}";
    var lookUpdataAssLoc = $('#lookUpdataAssLoc').DataTable({
        "pagingType": "numbers",
        "searching": true,
        ajax: url_select_udept,
        responsive: true,
        paging: true,
        "bFilter": false,
        "order": [
            [0, 'asc']
        ],
        columns: [
            {
                data: 'asset_location',
                name: 'asset_location'
            }
            

        ],
        "bDestroy": true,
        "initComplete": function (settings, json) {
            // $('div.dataTables_filter input').focus();
            $('#lookUpdataAssLoc tbody').on('dblclick', 'tr', function () {
                var dataArrWh = [];
                var rowsUd = $(this);
                var rowDataUd = lookUpdataAssLoc.rows(rowsUd).data();
                $.each($(rowDataUd), function (key, value) {
                    var section = value["section"];
                    document.getElementById("location_asset_create").value = value[
                        "asset_location"];
                    $('#AssLocModal').modal('hide');
                    // $('#ip_no_create').focus()

                });
            });
        },

    });
    //GET LOCATION ASSET EDIT
    var url_select_udept = "{{ route('assign_asset.getlocasset') }}";
    var lookUpdataAssLocEdit = $('#lookUpdataAssLocEdit').DataTable({
        "pagingType": "numbers",
        "searching": true,
        ajax: url_select_udept,
        responsive: true,
        paging: true,
        "bFilter": false,
        "order": [
            [0, 'asc']
        ],
        columns: [
            {
                data: 'asset_location',
                name: 'asset_location'
            }
            

        ],
        "bDestroy": true,
        "initComplete": function (settings, json) {
            // $('div.dataTables_filter input').focus();
            $('#lookUpdataAssLocEdit tbody').on('dblclick', 'tr', function () {
                var dataArrWh = [];
                var rowsUd = $(this);
                var rowDataUd = lookUpdataAssLocEdit.rows(rowsUd).data();
                $.each($(rowDataUd), function (key, value) {
                    var section = value["section"];
                    document.getElementById("location_asset_edit").value = value[
                        "asset_location"];
                    $('#AssLocModalEdit').modal('hide');
                    // $('#ip_no_create').focus()

                });
            });
        },

    });





</script>
    
@endpush