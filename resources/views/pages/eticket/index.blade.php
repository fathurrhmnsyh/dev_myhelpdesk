@extends('layouts.admin')
@section('title', 'Eticket | MyHelpdesk')
@section('title-sub', 'Eticket')
@section('breadcrumb')
<ol class="breadcrumb float-sm-right">
    <li class="breadcrumb-item"><a href="">Eticket</a></li>
    <li class="breadcrumb-item active">Dashboard</li>
    {{-- <li class="breadcrumb-item active">Printer</li> --}}
</ol>
@endsection

@section('content')

<div class="col-12">
    <div class="card">
        <!-- /.card-header -->
        <div class="card-body">
            <div class="col-md-12">
                <button class="btn btn-primary " data-toggle="modal" data-target="#myModalAdd"><i
                        class="fa fa-plus"></i> Add Ticket</button>
                <button class="btn btn-success" id="et_create"><i class="fa fa-plus"></i> New Add Ticket</button>
                <br><br>
                <table class="table table-hover dataTable table-striped w-full" id="eticket_datatable">
                    <thead style="background-color: #0069D9; color: #fff;">
                        <tr>
                            <th>No</th>
                            <th>No Ticket</th>
                            <th>Date</th>
                            <th>Name</th>
                            <th>Start Time</th>
                            <th>Finish Time</th>
                            <th>Issue</th>
                            <th>Status</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        {{-- <?php
                    $no = 1;
                    ?>
                        @foreach($ticket as $t)
                        <tr>
                            <td>{{$no++}}</td>
                            <td>{{$t->ticket_no}}</td>
                            <td>{{$t->date}}</td>
                            <td>{{$t->name }}</td>
                            <td>{{$t->time}}</td>
                            <td>{{$t->issue}}</td>
                            <td>
                                    @if ($t->status == "1")
                                    <small class="text-info mr-1">
                                        <i class="fas fa-arrow-up"></i>
                                        Open
                                    </small>
                                    @elseif($t->status == "2")
                                    <small class="text-warning mr-1">
                                        <i class="fas fa-arrow-up"></i>
                                        On Process
                                    </small>
                                    @elseif($t->status == "3")
                                    <small class="text-danger mr-1">
                                        <i class="fas fa-arrow-up"></i>
                                        Pending
                                    </small>
                                    @elseif ($t->status == "4")
                                    <small class="text-success mr-1">
                                        <i class="fas fa-arrow-up"></i>
                                        Close
                                    </small>
                                    @endif
                            </td>
                            <td>
                                <a href="/eticket/detailU/{{$t->id}}" class="btn-sm btn-info"><i class="fa fa-bars"></i>
                                    Detail</a>
                            </td>
                        </tr>
                        @endforeach --}}
                    </tbody>

                </table>
            </div>
        </div>
        <!-- /.card-body -->
    </div>
    <!-- /.card -->
</div>





@endsection
@include('pages.eticket.modal.create')
@push('page-script')
<script>
    $(document).ready(function(){

    })
    $(document).ready(function(){
        //get data from datatables
        var table = $('#eticket_datatable').DataTable({
            processing: true,
            serverSide: true,
            ajax: {
                url: "{{ route('eticket.getdatatables') }}",
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
                    data: 'ticket_no',
                    name: 'ticket_no'
                },
                {
                    data: 'date',
                    name: 'date'
                },
                {
                    data: 'name',
                    name: 'name'
                },
                {
                    data: 'time',
                    name: 'time'
                },
                {
                    data: 'to_time',
                    name: 'to_time'
                },
                {
                    data: 'issue',
                    name: 'issue'
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
                // {
                //     data: 'voided_date',
                //     name: 'voided_date'
                // },
                // {
                //     data: 'vga_external',
                //     name: 'vga_external'
                // },
                {
                    data: 'status',
                    name: 'status'
                },
                {
                    data: 'action',
                    name: 'action'
                }
            ]
        });
    });
    $(document).on('click', '#et_create', function () {
        date = new Date();
        detik = date.getSeconds();
        menit = date.getMinutes();
        jam = date.getHours();

        $('#time_et').val(jam+":"+menit+":"+detik);
        $('#modalEticket').modal('show');
        $('.modal-title').text('Create Ticket');

        var route = '{{ route("eticket.auto_number_et") }}';

        $.get(route, function (data) {
            document.getElementById('no_ticket_et').value = data;
            // $('#setdate').focus();
        });

        ////
        
    })
    

    $(document).on('click', '.addEt', function () {
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });

        $.ajax({
        url: "{{ route('eticket.save_et') }}",
        type: "POST",
        data: $('#form_create_ticket').serialize(),
        success: function (data) {
            if ($.isEmptyObject(data.error)) {
                if (data.checkdata) {
                    Swal.fire({
                        icon: 'warning',
                        title: data.errors
                    });
                } else {
                    $('.addEt').html('Saving..')
                    Swal.fire(
                        'Successfully!',
                        'Added New Ticket!',
                        'success'
                    ).then(function () {
                        $('#modalEticket').modal('hide');
                        window.location.reload();
                        // $('#myTable').DataTable().ajax.reload();
                    })
                }
            } else {
                printErrorMsg(data.error)
            }

        }
    });
    })

    function resetForm()
    {
        date = new Date();
        detik = date.getSeconds();
        menit = date.getMinutes();
        jam = date.getHours();

        $('#issue_et').val("");
        $('#time_et').val(jam+":"+menit+":"+detik);
        // document.write(tanggal+"-"+arrbulan[bulan]+"-"+tahun+"<br/>"+jam+" : "+menit+" : "+detik+"."+millisecond);
    }

</script>
    
@endpush