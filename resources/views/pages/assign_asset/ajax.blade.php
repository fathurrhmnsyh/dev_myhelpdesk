<script type="text/javascript">
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });

    // ADDED NEW ASSIGN ASSET
    $(document).on('click', '#addModalAssign', function (e) {
        // alert('ok');
        e.preventDefault();
        $('#createModal').modal('show');
        $('.modal-title').text('Assign Asset Entry');
    });
    $(document).on('click', '.faSearch', function (e) {
        // alert('ok');
        e.preventDefault();
        $('#lookUpdataFa').DataTable().ajax.reload();
        $('#faModal').modal('show');
    });

    function faSearch() {
        // var ip_no = document.getElementById('ip_no_create').value
        $('#faModal').modal('show');
        $('input[type=search]').val("");
        $('#ipModal').on('shown.bs.modal', function () {
            $('input[type=search]').focus();
        })

    }

    //SEARCH LOCATION ASSET
    $(document).on('click', '.locAssSearch', function (e) {
        // alert('ok');
        e.preventDefault();
        $('#lookUpdataAssLoc').DataTable().ajax.reload();
        $('#AssLocModal').modal('show');
    });
    //SEARCH LOCATION ASSET EDIT
    $(document).on('click', '.locAssSearchEdit', function (e) {
        // alert('ok');
        e.preventDefault();
        $('#lookUpdataAssLocEdit').DataTable().ajax.reload();
        $('#AssLocModalEdit').modal('show');
    });



    function empSearch() {
        // alert('ok');
        // var ip_no = document.getElementById('ip_no_create').value
        $('#deptModal').modal('show');
        $('input[type=search]').val("");
        $('#deptModal').on('shown.bs.modal', function () {
            $('input[type=search]').focus();
        })

    }

    function empSearchEdit() {
        // alert('ok');
        // var ip_no = document.getElementById('ip_no_create').value
        $('#deptModalEdit').modal('show');
        $('input[type=search]').val("");
        $('#deptModalEdit').on('shown.bs.modal', function () {
            $('input[type=search]').focus();
        })

    }
    $(document).on('click', '.addAssign', function (e) {
        var fa = $('#fa_code_create').val();
        var loc = $('#location_asset_create').val();
        var emp = $('#employee_search_create').val();
        var stat = $('#status_asset_create').val();

        // console.log(fa)

        if (fa != '-') {
            // if (emp != '-') {
            if (loc != '-') {
                $.ajaxSetup({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    }
                });

                $.ajax({
                    url: "{{ route('assign_asset.store') }}",
                    type: "POST",
                    data: $('#form_asset_assign').serialize(),
                    success: function (data) {
                        if ($.isEmptyObject(data.error)) {
                            if (data.checkdata) {
                                Swal.fire({
                                    icon: 'warning',
                                    title: data.errors
                                });
                            } else {
                                clearvaluecreate();
                                Swal.fire(
                                    'Successfully!',
                                    'Added New Data!',
                                    'success'
                                ).then(function () {
                                    $('#createModal').modal('hide');
                                    // document.location.reload();
                                    $('#assign_asset_datatables').DataTable().ajax.reload();
                                })
                            }
                        } else {
                            printErrorMsg(data.error)
                        }

                    }
                });
            } else {
                Swal.fire({
                    icon: 'warning',
                    title: 'Error...',
                    text: 'Location Cannot Be Empty',
                    onAfterClose: () => {
                        setTimeout(() => $("#location_asset_create").focus(), 110);
                    }
                })
            }

            // } else {
            //     Swal.fire(
            //         'Error!',
            //         'Employee Cannot Be Empty',
            //         'warning'
            //     )
            // }
        } else {
            Swal.fire(
                'Error!',
                'Fa Code Cannot Be Empty',
                'warning'
            )
        }
    });

    $(document).on('click', '.editAssign', function (e) {
        var stts = $('#status_asset_edit2').val();

        if (stts != null) {
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });

            $.ajax({
                url: "{{ route('assign_asset.update') }}",
                type: "POST",
                data: $('#form_asset_assign_edit').serialize(),
                success: function (data) {
                    if ($.isEmptyObject(data.error)) {
                        if (data.checkdata) {
                            Swal.fire({
                                icon: 'warning',
                                title: data.errors
                            });
                        } else {
                            clearvaluecreate();
                            Swal.fire(
                                'Successfully!',
                                'Edit Data Data!',
                                'success'
                            ).then(function () {
                                $('#editModalAssign').modal('hide');
                                // document.location.reload();
                                $('#assign_asset_datatables').DataTable().ajax.reload();
                                $("#status_asset_edit2").select2('val', '-Select Status-');
                            })
                        }
                    } else {
                        printErrorMsg(data.error)
                    }

                }
            });
        } else {
            Swal.fire(
                'Error!',
                'Status Asset To Cannot Be Empty',
                'warning'
            )
        }

    })

    function clearvaluecreate() {
        $('#fa_code_create').val("-");
        $('#location_asset_create').val("-");
        $('#employee_search_create').val("-");
        $('#nik_create').val("");
        $('#asset_code_create').val("");
        $('#section_create').val("");
    }

    // SHOW VIEW DATA OF ASSIGN ASSET
    $(document).on('click', '.view', function (e) {
        e.preventDefault();
        var id = $(this).attr('row-id');
        // alert(id);
        $('#viewModal').modal('show');
        $('.modal-title').text('Assign Asset (View)');
        getDetail(id, 'VIEW')
    });

    // VIEW DATA SHOW DETAIL FROM AJAX
    function getDetail(id, method) {
        var route = "{{ route('assign_asset.show_view_detail', ':id') }}";
        route = route.replace(':id', id);
        $.ajax({
            url: route,
            method: 'get',
            dataType: 'json',
            success: function (data) {
                console.log(data)
                $('#aa-view-location').val(data['header'].location);
                $('#aa-view-asset_code').val(data['header'].name);
                $('#aa-view-fa_code').val(data['header'].fa_code);
                $('#aa-view-purchase_date').val(data['header'].purchase_date);
                $('#aa-view-no_ppb').val(data['header'].no_ppb);
                $('#aa-view-merk').val(data['header'].asset_merk);
                $('#aa-view-type').val(data['header'].asset_type);
                $('#aa-view-serial_number').val(data['header'].serial_number);
                $('#aa-view-employee_name').val(data['header'].employee_name);
                $('#aa-view-section').val(escapeHtml(data['header'].section));
                $('#aa-view-nik').val(data['header'].nik);
                $('#aa-view-asset_location').val(data['header'].asset_location);
                $('#aa-view-p_merk').val(data['header'].p_merk);
                $('#aa-view-p_jenis').val(data['header'].p_jenis);
                $('#aa-view-p_type').val(data['header'].p_type);
                $('#aa-view-p_speed').val(data['header'].p_speed);
                $('#aa-view-m_merk').val(data['header'].m_merk);
                $('#aa-view-m_type').val(data['header'].m_type);
                $('#aa-view-r_size').val(data['header'].r_size);
                $('#aa-view-r_type').val(data['header'].r_type);
                $('#aa-view-r_slot').val(data['header'].r_slot);
                $('#aa-view-hd1_merk').val(data['header'].hd1_merk);
                $('#aa-view-hd1_type').val(data['header'].hd1_type);
                $('#aa-view-hd1_size').val(data['header'].hd1_size);
                $('#aa-view-hd2_merk').val(data['header'].hd2_merk);
                $('#aa-view-hd2_type').val(data['header'].hd2_type);
                $('#aa-view-hd2_size').val(data['header'].hd2_size);
                $('#aa-view-ssd_merk').val(data['header'].ssd_merk);
                $('#aa-view-ssd_type').val(data['header'].ssd_type);
                $('#aa-view-ssd_size').val(data['header'].ssd_size);
                $('#aa-view-vga_external').val(data['header'].vga_external);
                $('#aa-view-lan_name').val(data['header'].lan_name);
                $('#aa-view-lan_mac').val(data['header'].lan_mac);
                $('#aa-view-wlan_name').val(data['header'].wlan_name);
                $('#aa-view-wlan_mac').val(data['header'].wlan_mac);
                $('#aa-view-posted_date').val(data['header'].posted_dates);
                $('#aa-view-printed_date').val(data['header'].printed_dates);
                $('#aa-view-voided_date').val(data['header'].voided_dates);
                $('#aa-view-bpat_date').val(data['header'].bpat_dates);
                $('#aa-view-qr_date').val(data['header'].qr_date);
                $('#aa-view-status').val(data['header'].status_name);
                // $('#ma-view-created_by').val(data['header'].created_by);
                if (data['header'].code == '1') {
                    $('#aa-view-status').addClass('alert-success');
                    document.getElementById("aa-view-status").style.color = "white";
                    document.getElementById("aa-view-status").style.backgroundColor = "green";
                } else if (data['header'].code == '2') {
                    $('#aa-view-status').addClass('alert-primary');
                    document.getElementById("aa-view-status").style.color = "white";
                    document.getElementById("aa-view-status").style.backgroundColor = "blue";
                } else {
                    $('#aa-view-status').addClass('alert-warning');
                    document.getElementById("aa-view-status").style.color = "black";
                    document.getElementById("aa-view-status").style.backgroundColor = "yellow";
                }

            }
        });
    }

    //LOG
    $(document).on('click', '.log', function (e) {
        e.preventDefault();
        var fa_code = $(this).attr('data-id');
        // alert(fa_code);
        $('#logmodal').modal('show');
        $('.modal-title').text('Log View');

        var route = "{{ route('assign_asset.log', ':id') }}";
        route = route.replace(':id', fa_code);

        $.ajax({
            url: route,
            method: 'get',
            dataType: 'json',
            success: function (data) {
                var detailDataset = [];
                for (var i = 0; i < data.length; i++) {
                    detailDataset.push([
                        data[i].no, data[i].employee, formatDate(data[i].date), data[i]
                        .time, data[i].status_change,
                        data[i].user, data[i].note
                    ]);
                }
                $('#aa_logs_detail').DataTable().clear().destroy();
                $('#aa_logs_detail').DataTable({
                    data: detailDataset,
                    // "ordering" : true,
                    "order": [
                        [0, "desc"],
                        // [2, "desc"]
                    ],
                    columns: [{
                            title: '#',
                            name: 'no',
                            render: function (data, type, row, meta) {
                                return meta.row + meta.settings._iDisplayStart + 1;
                            }
                        },
                        {

                            title: 'Employee'
                        },
                        {
                            title: 'Date'
                        },
                        {
                            title: 'Time'
                        },
                        {
                            title: 'Status'
                        },
                        {
                            title: 'User'
                        },
                        {
                            title: 'Note'
                        }
                    ]
                });
            },
            error: function () {
                alert('error');
            }
        })
    });

    function formatDate(input) {
        if (input !== null) {
            var datePart = input.match(/\d+/g),
                year = datePart[0].substring(0),
                month = datePart[1],
                day = datePart[2];
            return day + '/' + month + '/' + year;
        } else {
            return null;
        }
    }

    //VOIDED DATA
    $(document).on('click', '.voided', function (e) {
        // alert("sssss");
        e.preventDefault();
        var id = $(this).attr('row-id');
        var fa_code = $(this).attr('data-id');
        var posted_date = $(this).attr('data-target');
        if (posted_date !== '') {
            Swal.fire({
                icon: 'warning',
                title: 'Warning',
                text: ' ' + fa_code + ' ' + 'has been POSTED, please UNPOST to VOID',
            });
        } else { // 

            voidedData(fa_code);
        }

    });

    //VOIDED DATA 
    function voidedData(fa_code) {
        $('.modal-title').html('Assign Asset (VOID)')
        $('.fa_code_void').val(fa_code);
        $('#ModalVoidAA').modal('show');


    }
    $('.modal-footer').on('click', '.void_submit', function () {
        // $('.void_submit').html('Saving...');
        var fa_code = $('#fa_code_void').val();
        // alert(ppat_no);
        var route = "{{ route('assign_asset.void', ':id') }}";
        route = route.replace(':id', fa_code);
        $.ajax({
            url: route,
            type: "POST",
            data: $('#form-aa-void').serialize(),
            success: function (data) {
                // console.log(data)
                $('#ModalVoidAA').modal('hide');
                Swal.fire(
                    'Void!',
                    'Data Successfully Voided!',
                    'success'
                ).then(function () {
                    $('#assign_asset_datatables').DataTable().ajax.reload();
                });
            },
            error: function () {
                Swal.fire({
                    icon: 'error',
                    title: 'Error..',
                    text: 'Something went wrong!'
                })
            }
        });

    });

    //POSTED
    $(document).on('click', '.posted', function (e) {
        e.preventDefault();
        var id = $(this).attr('row-id');
        var fa_code = $(this).attr('data-id');
        var posted_date = $(this).attr('data-target');
        //  alert(posted_date);

        if (posted_date !== '') {
            $('#ModalUnpostAA').modal('show');
            $('.modal-title').text('Assign Asset (UN-POST)')
            $('.fa_code_unpost').val(fa_code)
            unpostAa(fa_code);
        } else {
            postedAa(fa_code)
        }
    });

    // UNPOSTED
    function unpostAa(fa_code) {
        var route = "{{ route('assign_asset.posted_data', ':id') }}";
        route = route.replace(':id', fa_code);
        //
        $('.modal-footer').on('click', '.submit_unpost', function () {
            $('.submit_unpost').html('Saving...');
            $.ajax({
                url: route,
                type: "POST",
                data: $('#form_aa_unpost').serialize(),
                success: function (data) {
                    $("#ModalUnpostAA").modal('hide');
                    Swal.fire(
                        'Successfully!',
                        'Data has been UN-POSTED no.' + fa_code,
                        'success'
                    ).then(function () {
                        $('#assign_asset_datatables').DataTable().ajax.reload();
                    });

                },
                Uprror: function () {
                    Swal.fire({
                        icon: 'error',
                        title: 'Error...',
                        text: 'Something went wrong!',
                    })
                }
            });
        });

    }

    //posted data
    function postedAa(fa_code) {
        Swal.fire({
            title: 'Are you sure you want to POST?',
            text: "FA : ." + fa_code,
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Yes, Post it!'
        }).
        then((willPosted) => {
            var route = "{{ route('assign_asset.posted_data', ':id') }}";
            route = route.replace(':id', fa_code);
            if (willPosted.value) {
                $.ajax({
                    url: route,
                    type: "POST",
                    data: {
                        '_method': 'POST'
                    },
                    success: function (data) {
                        Swal.fire(
                            'Succesfully!',
                            'Data has been POST.',
                            'success'
                        ).then(function () {
                            $('#assign_asset_datatables').DataTable().ajax.reload();
                        });

                    },
                    error: function () {
                        Swal.fire({
                            icon: 'error',
                            title: 'Error...',
                            text: 'Error Hub bagian IT!',
                        })
                    }
                })
            } else {
                console.log(`data was dismissed by ${willPosted.dismiss}`);
            }


        })
    }

    //EDIT PAGE
    $(document).on('click', '.edit', function (e) {
        e.preventDefault();
        // document.getElementById('ref_no_edit').focus();
        var id = $(this).attr('row-id');
        var posted_date = $(this).attr('data-target');
        var fa_code = $(this).attr('data-id');

        if (posted_date !== '') {
            Swal.fire({
                icon: 'warning',
                title: 'Perhatian',
                text: 'FA Code. ' + fa_code + ' ' + 'Has been posted cannot be edited',
            });
        } else {
            // alert('OK');
            $('#editModalAssign').modal('show');
            $('.modal-title').text('Assign Asset (Edit)');
            EditAssign(fa_code)
            // updateStout(id)        
        }
    });

    function EditAssign(fa_code) {
        var route = "{{ route('assign_asset.edit', ':id') }}";
        route = route.replace(':id', fa_code);
        $.ajax({
            url: route,
            method: 'get',
            dataType: 'json',
            success: function (data) {
                $('#asset_code_edit').val(data['header'].asset_code);
                $('#fa_code_edit').val(data['header'].fa_code);
                $('#location_asset_edit').val(data['header'].asset_location);
                $('#employee_search_edit').val(data['header'].employee_name);
                $('#nik_edit').val(data['header'].nik);
                $('#section_edit').val(escapeHtml(data['header'].section));
                $('#status_asset_edit').val(data['status'].status_name);

            }
        });
    }

    function escapeHtml(unsafe) {
        return unsafe
            .replaceAll(/&amp;/g, '&')
            .replaceAll(/&quot;/g, '"')

    }

    function rmifbroke()
    {
        var stts = $('#status_asset_edit2').val();

        if (stts == 3 || stts == 6 || stts == 7) {
            $('#employee_search_edit').val("");
            $('#nik_edit').val("");
            $('#section_edit').val("");
            $('#location_asset_edit').val("Gudang IT");
        }
    }
    function resetbtnedit()
    {
        $("#status_asset_edit2").select2('val', '-Select Status-');
    }

</script>
