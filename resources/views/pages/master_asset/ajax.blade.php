<script type="text/javascript">
$.ajaxSetup({
    headers: {
        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
    }
});


    // ADDED NEW MASTER ASSET
$(document).on('click', '#addModal', function (e) {
    // alert('ok');
    e.preventDefault();
    $('#createModal').modal('show');
    $('.modal-title').text('Master Asset Entry');
});

// SHOW VIEW DATA MASTER ASSET
$(document).on('click', '.view', function (e) {
    e.preventDefault();
    var id = $(this).attr('row-id');
    $('#viewModal').modal('show');
    $('.modal-title').text('Master Asset (View)');
    getDetail(id, 'VIEW')
});

// VIEW DATA SHOW DETAIL FROM AJAX
function getDetail(id, method) {
    var route = "{{ route('master_asset.show_view_detail', ':id') }}";
    route = route.replace(':id', id);
    
    $.ajax({
        url: route,
        method: 'get',
        dataType: 'json',
        success: function (data) {
            $('#ma-view-location').val(data['header'].location);
            $('#ma-view-asset_code').val(data['header'].name);
            $('#ma-view-fa_code').val(data['header'].fa_code);
            $('#ma-view-purchase_date').val(data['header'].purchase_date);
            $('#ma-view-no_ppb').val(data['header'].no_ppb);
            $('#ma-view-merk').val(data['header'].asset_merk);
            $('#ma-view-type').val(data['header'].asset_type);
            $('#ma-view-serial_number').val(data['header'].serial_number);
            $('#ma-view-p_merk').val(data['header'].p_merk);
            $('#ma-view-p_jenis').val(data['header'].p_jenis);
            $('#ma-view-p_type').val(data['header'].p_type);
            $('#ma-view-p_speed').val(data['header'].p_speed);
            $('#ma-view-m_merk').val(data['header'].m_merk);
            $('#ma-view-m_type').val(data['header'].m_type);
            $('#ma-view-r_size').val(data['header'].r_size);
            $('#ma-view-r_type').val(data['header'].r_type);
            $('#ma-view-r_slot').val(data['header'].r_slot);
            $('#ma-view-hd1_merk').val(data['header'].hd1_merk);
            $('#ma-view-hd1_type').val(data['header'].hd1_type);
            $('#ma-view-hd1_size').val(data['header'].hd1_size);
            $('#ma-view-hd2_merk').val(data['header'].hd2_merk);
            $('#ma-view-hd2_type').val(data['header'].hd2_type);
            $('#ma-view-hd2_size').val(data['header'].hd2_size);
            $('#ma-view-ssd_merk').val(data['header'].ssd_merk);
            $('#ma-view-ssd_type').val(data['header'].ssd_type);
            $('#ma-view-ssd_size').val(data['header'].ssd_size);
            $('#ma-view-vga_external').val(data['header'].vga_external);
            $('#ma-view-lan_name').val(data['header'].lan_name);
            $('#ma-view-lan_mac').val(data['header'].lan_mac);
            $('#ma-view-wlan_name').val(data['header'].wlan_name);
            $('#ma-view-wlan_mac').val(data['header'].wlan_mac);
            $('#ma-view-posted_date').val(data['header'].posted_date);
            $('#ma-view-voided_date').val(data['header'].voided_date);
            $('#ma-view-printed_date').val(data['header'].printed_date);
            $('#ma-view-status').val(data['header'].status_name);
            // $('#ma-view-created_by').val(data['header'].created_by);
            if (data['header'].code == '1') {
                $('#ma-view-status').addClass('alert-success');
                document.getElementById("ma-view-status").style.color = "white";
                document.getElementById("ma-view-status").style.backgroundColor = "green";
            } else if(data['header'].code == '2'){
                $('#ma-view-status').addClass('alert-primary');
                document.getElementById("ma-view-status").style.color = "white";
                document.getElementById("ma-view-status").style.backgroundColor = "blue";
            }else {
                $('#ma-view-status').addClass('alert-warning');
                document.getElementById("ma-view-status").style.color = "black";
                document.getElementById("ma-view-status").style.backgroundColor = "yellow";
            }
            
        }
    });
}

//SAVE DATA MASTER ASSET
$('.modal-footer').on('click','.addAsset', function(){
        var get_type = $('#ma_create_type').val();
        var p_merk = $('#ma_create_p_merk').val();
        var p_jenis = $('#ma_create_p_jenis').val();
        var p_type = $('#ma_create_p_type').val();
        var m_merk = $('#ma_create_m_merk').val();
        var m_type = $('#ma_create_m_type').val();
        var r_size = $('#ma_create_r_size').val();
        var r_type = $('#ma_create_r_type').val();
        var r_slot = $('#ma_create_r_slot').val();
        var hd1_merk = $('#ma_create_hd1_merk').val();
        var hd1_type = $('#ma_create_hd1_type').val();
        var hd1_size = $('#ma_create_hd1_size').val();
        var lan_name = $('#ma_create_lan_name').val();
        var lan_mac = $('#ma_create_lan_mac').val();
        //////////////////////////////////////////////
        
        var ppb_no = $('#ma_create_ppb_no').val();
        var merk = $('#ma_create_merk').val();
        var type = $('#ma_create_type_').val();
        var serial_number = $('#ma_create_serial_number').val();
        

        if (get_type == 'NB' || get_type == 'MP'||  get_type == 'SV' ||  get_type == 'KP' ) {

            if (p_merk == '' || p_jenis == '' ||p_type == '' || m_merk == '' || m_type == '' ||r_size == '' ||  r_type == '' ||r_slot == '' || hd1_merk == '' ||hd1_type == '' || hd1_size == '' || lan_name == '' || lan_mac == '' ) {
                Swal.fire(
                    'Error!',
                    'Check The Column with' + '<span style="color: red"><b>*</b></span>' +', Column Cannot Be Empty',
                    'warning')
            }else if (ppb_no == '' ){
                Swal.fire(
                    'Error!',
                    'PPB No Cannot Be Empty',
                    'warning'
                    )
            }else{
                $.ajaxSetup({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    }
                });

                $.ajax({
                url: "{{ route('master_asset.store') }}",
                type: "POST",
                data: $('#form_asset_entry').serialize(),
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
                                    'Added New Asset!',
                                    'success'
                                ).then(function () {
                                    $('#createModal').modal('hide');
                                })
                            }
                        } else {
                            printErrorMsg(data.error)
                        }

                    }
                });
            }
        }else if(get_type == 'ML' || get_type == 'PT'||  get_type == 'SC' ||  get_type == 'NC' || get_type == 'SW'||  get_type == 'UP' ||  get_type == 'HS'||  get_type == 'TV') {
            if (ppb_no == '' || merk == '' || type == '' || serial_number == '')  {
                Swal.fire(
                    'Error!',
                    'Check The Column with' + '<span style="color: red"><b>**</b></span>' +', Column Cannot Be Empty',
                    'warning')
                
            }else{
                $.ajaxSetup({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    }
                });

                $.ajax({
                url: "{{ route('master_asset.store') }}",
                type: "POST",
                data: $('#form_asset_entry').serialize(),
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
                                    'Added New Asset!',
                                    'success'
                                ).then(function () {
                                    $('#createModal').modal('hide');
                                    $('#asset_datatables').DataTable().ajax.reload();
                                })
                            }
                        } else {
                            printErrorMsg(data.error)
                        }

                    }
                });
            }
        }
        // $.ajaxSetup({
        //     headers: {
        //         'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        //     }
        // });

        // $.ajax({
        // url: "{{ route('master_asset.store') }}",
        // type: "POST",
        // data: $('#form_asset_entry').serialize(),
        // success: function (data) {
        //         if ($.isEmptyObject(data.error)) {
        //             if (data.checkdata) {
        //                 Swal.fire({
        //                     icon: 'warning',
        //                     title: data.errors
        //                 });
        //             } else {
        //                 clearvaluecreate();
        //                 Swal.fire(
        //                     'Successfully!',
        //                     'Added New Asset!',
        //                     'success'
        //                 ).then(function () {
        //                     $('#createModal').modal('hide');
        //                 })
        //             }
        //         } else {
        //             printErrorMsg(data.error)
        //         }

        //     }
        // });
    });

//EDIT MASTER ASSET
$(document).on('click','.edit', function(e){
    e.preventDefault();
    var id = $(this).attr('row-id');
    var fa_code = $(this).attr('data-id');
    var posted_date = $(this).attr('data-target');
    // alert(fa_code);
    // var select2 = $('.select2').select2();
    // select2.select2('focus');
    var get_fa = fa_code;
    var cut_fa = get_fa.substring(2,4);
    // alert(cut_fa);

    if(posted_date !== ''){
        Swal.fire({
            icon: 'warning',
            title: 'warning',
            text: 'FA ' + fa_code + '' + ' Has been posted cannot be edited! ',
            confirmButtonColor: '#3085d6',
        });
    }else{
        $('#editModal').modal('show');
        $('.modal-title').text('Edit Asset (Edit)');
        if (cut_fa == 'ML' || cut_fa == 'PT'||  cut_fa == 'SC' ||  cut_fa == 'NC' || cut_fa == 'SW'||  cut_fa == 'UP' ||  cut_fa == 'HS'||  cut_fa == 'TV') {
            deactivenotpcEdit();
        }
        editAsset(id)
    }
});
function editAsset(id){
var route = "{{ route('master_asset.edit',':id') }}";
    route = route.replace(':id', id);

$.ajax({
    url: route,
    method: 'GET',
    dataType: 'json',
    success: function(data){
        $('#ma_edit_id').val(data['header'].id_master_asset);
        $('#ma_edit_location').val(data['header'].location);
        $('#ma_edit_type').val(data['header'].asset_code);
        $('#ma_edit_fa_code').val(data['header'].fa_code);
        $('#ma_edit_purchase_date').val(data['header'].purchase_date);
        $('#ma_edit_ppb_no').val(data['header'].no_ppb);
        $('#ma_edit_merk').val(data['header'].asset_merk);
        $('#ma_edit_type_').val(data['header'].asset_type);
        $('#ma_edit_serial_number').val(data['header'].serial_number);
        $('#ma_edit_p_merk').val(data['header'].p_merk);
        $('#ma_edit_p_jenis').val(data['header'].p_jenis);
        $('#ma_edit_p_type').val(data['header'].p_type);
        $('#ma_edit_p_speed').val(data['header'].p_speed);
        $('#ma_edit_m_merk').val(data['header'].m_merk);
        $('#ma_edit_m_type').val(data['header'].m_type);
        $('#ma_edit_r_size').val(data['header'].r_size);
        $('#ma_edit_r_type').val(data['header'].r_type);
        $('#ma_edit_r_slot').val(data['header'].r_slot);
        $('#ma_edit_hd1_merk').val(data['header'].hd1_merk);
        $('#ma_edit_hd1_type').val(data['header'].hd1_type);
        $('#ma_edit_hd1_size').val(data['header'].hd1_size);
        $('#ma_edit_hd2_merk').val(data['header'].hd2_merk);
        $('#ma_edit_hd2_type').val(data['header'].hd2_type);
        $('#ma_edit_hd2_size').val(data['header'].hd2_size);
        $('#ma_edit_ssd_merk').val(data['header'].ssd_merk);
        $('#ma_edit_ssd_type').val(data['header'].ssd_type);
        $('#ma_edit_ssd_size').val(data['header'].ssd_size);
        $('#ma_edit_vga_external').val(data['header'].vga_external);
        $('#ma_edit_lan_name').val(data['header'].lan_name);
        $('#ma_edit_lan_mac').val(data['header'].lan_mac);
        $('#ma_edit_wlan_name').val(data['header'].wlan_name);
        $('#ma_edit_wlan_mac').val(data['header'].wlan_mac);
        $('#ma_edit_status').val(data['header'].status_name);        
    },
    error: function(){
        alert('error');
    }
});
}
// UPDATE MASTER ASSET
$('.modal-footer').on('click','.updateAsset', function(){
    var id = document.getElementById('ma_edit_id').value;
    // alert(id);
        var route  = "{{ route('master_asset.update', ':id') }}";
            route  = route.replace(':id', id);
        $.ajax({
            url: route,
            type: "POST",
            data: $('#form_asset_edit').serialize(),
            success: function(data){
                    // $('#co_datatables').DataTable().ajax.reload();
                    clearvaluecreate();
                    Swal.fire(
                        'Successfully!',
                        'Edit Data Asset!',
                        'success'
                    ).then(function () {
                        $("#editModal").modal('hide');
                        $('#asset_datatables').DataTable().ajax.reload();
                    })
            },
            error: function(data){
                console.log(data);
            }
    });
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









function deactivenotpc(){
    $('#ma_create_p_merk').attr('readonly', true);
    $('#ma_create_p_jenis').attr('readonly', true);
    $('#ma_create_p_type').attr('readonly', true);
    $('#ma_create_p_speed').attr('readonly', true);
    $('#ma_create_m_merk').attr('readonly', true);
    $('#ma_create_m_type').attr('readonly', true);
    $('#ma_create_r_size').attr('readonly', true);
    $('#ma_create_r_type').attr('readonly', true);
    $('#ma_create_r_slot').attr('readonly', true);
    $('#ma_create_hd1_merk').attr('readonly', true);
    $('#ma_create_hd1_type').attr('readonly', true);
    $('#ma_create_hd1_size').attr('readonly', true);
    $('#ma_create_hd2_merk').attr('readonly', true);
    $('#ma_create_hd2_type').attr('readonly', true);
    $('#ma_create_hd2_size').attr('readonly', true);
    $('#ma_create_ssd_merk').attr('readonly', true);
    $('#ma_create_ssd_type').attr('readonly', true);
    $('#ma_create_ssd_size').attr('readonly', true);
    $('#ma_create_vga_external').attr('readonly', true);
    $('#ma_create_lan_name').attr('readonly', true);
    $('#ma_create_lan_mac').attr('readonly', true);
    $('#ma_create_wlan_name').attr('readonly', true);
    $('#ma_create_wlan_mac').attr('readonly', true);

}
function disablepc()
{
    $('#ma_create_merk').attr('readonly', true);
    $('#ma_create_type_').attr('readonly', true);
    $('#ma_create_serial_number').attr('readonly', true);
    $('#ma_create_p_merk').attr('readonly', false);
    $('#ma_create_p_jenis').attr('readonly', false);
    $('#ma_create_p_type').attr('readonly', false);
    $('#ma_create_p_speed').attr('readonly', false);
    $('#ma_create_m_merk').attr('readonly', false);
    $('#ma_create_m_type').attr('readonly', false);
    $('#ma_create_r_size').attr('readonly', false);
    $('#ma_create_r_type').attr('readonly', false);
    $('#ma_create_r_slot').attr('readonly', false);
    $('#ma_create_hd1_merk').attr('readonly', false);
    $('#ma_create_hd1_type').attr('readonly', false);
    $('#ma_create_hd1_size').attr('readonly', false);
    $('#ma_create_hd2_merk').attr('readonly', false);
    $('#ma_create_hd2_type').attr('readonly', false);
    $('#ma_create_hd2_size').attr('readonly', false);
    $('#ma_create_ssd_merk').attr('readonly', false);
    $('#ma_create_ssd_type').attr('readonly', false);
    $('#ma_create_ssd_size').attr('readonly', false);
    $('#ma_create_vga_external').attr('readonly', false);
    $('#ma_create_lan_name').attr('readonly', false);
    $('#ma_create_lan_mac').attr('readonly', false);
    $('#ma_create_wlan_name').attr('readonly', false);
    $('#ma_create_wlan_mac').attr('readonly', false);
}
function activeonpc()
{
    type = $('#ma_create_type').val();
    loc = $('#ma_create_location').val();
    if (loc == 'HO') {
        loc_name = 'C';
    }else{
        loc_name = 'CB';
    }
    if (type == 'NB' || type == 'MP'||  type == 'SV') {
        $('#ma_create_merk').attr('readonly', false);
        $('#ma_create_type_').attr('readonly', false);
        $('#ma_create_serial_number').attr('readonly', false);
        $('#ma_create_p_merk').attr('readonly', false);
        $('#ma_create_p_jenis').attr('readonly', false);
        $('#ma_create_p_type').attr('readonly', false);
        $('#ma_create_p_speed').attr('readonly', false);
        $('#ma_create_m_merk').attr('readonly', false);
        $('#ma_create_m_type').attr('readonly', false);
        $('#ma_create_r_size').attr('readonly', false);
        $('#ma_create_r_type').attr('readonly', false);
        $('#ma_create_r_slot').attr('readonly', false);
        $('#ma_create_hd1_merk').attr('readonly', false);
        $('#ma_create_hd1_type').attr('readonly', false);
        $('#ma_create_hd1_size').attr('readonly', false);
        $('#ma_create_hd2_merk').attr('readonly', false);
        $('#ma_create_hd2_type').attr('readonly', false);
        $('#ma_create_hd2_size').attr('readonly', false);
        $('#ma_create_ssd_merk').attr('readonly', false);
        $('#ma_create_ssd_type').attr('readonly', false);
        $('#ma_create_ssd_size').attr('readonly', false);
        $('#ma_create_vga_external').attr('readonly', false);
        $('#ma_create_lan_name').attr('readonly', false);
        $('#ma_create_lan_mac').attr('readonly', false);
        $('#ma_create_wlan_name').attr('readonly', false);
        $('#ma_create_wlan_mac').attr('readonly', false);
    }else if (type == 'KP'){
       disablepc();
    }else{
        deactivenotpc()
        $('#ma_create_merk').attr('readonly', false);
        $('#ma_create_type_').attr('readonly', false);
        $('#ma_create_serial_number').attr('readonly', false);
    }
    var route = "{{ route('master_asset.auto_fa_code', ':id') }}";
    route = route.replace(':id', type);
    $.ajax({
            url: route,
            method: 'get',
            dataType: 'json',
            success: function (data) {
                // alert(data.id_ip);
                $('#ma_create_fa_code').val(loc_name + '.'+ type + '.' + data ) ;

            },
            error: function () {
                Swal.fire({
                icon: 'warning',
                title: 'Error...',
                text: 'Please Choose Type',
                })
            }
        });
    // $.get(route, function (data) {
    //     document.getElementById('ma-create-fa_code').value = loc_name + '.'+ type + '.' + data + '.';
    //     // var get_fa = $('#ma-create-fa_code').val();
    //     $('#ma-create-fa_code').focus();
    //     // console.log(get_fa)
    // });
    
}

// KLIK POSTED DATA
$(document).on('click', '.posted', function(e){
        e.preventDefault();
         var id = $(this).attr('row-id');
         var fa_code = $(this).attr('data-id');
         var posted_date = $(this).attr('data-target');
         // alert(posted);
         if(posted_date !== ''){
            // alert('not ok');
             $('#modalUnPostMa').modal('show');
             $('.modal-title').text('Master Asset (UN-POST)')
             $('.ma_unpost').val(fa_code)
             unpostMA(fa_code);
         } else {
            // alert('ok');
            postedMA(fa_code)
         }
     });
//UNPOSTED
function unpostMA(fa_code){
var route  = "{{ route('master_asset.posted', ':id') }}";
route  = route.replace(':id', fa_code);
    //
    $('.modal-footer').on('click','.submit_unpost_ma', function(){
        $('.submit_unpost_ma').html('Saving...');
        $.ajax({
            url: route,
            type: "POST",
            data: $('#form_ma_unpost').serialize(),
            success: function(data){
                $("#modalUnPostMa").modal('hide');
                Swal.fire(
                    'Successfully!',
                    'Data has been UN-POSTED no.' + fa_code,
                    'success'
                    ).then(function(){
                        $('#asset_datatables').DataTable().ajax.reload();
                    });

                },
                Uprror: function(){
                    Swal.fire({
                        icon: 'error',
                        title: 'Error...',
                        text: 'Something went wrong!',
                    })
                }
            });
    });

}
//POSTED
function postedMA(fa_code){
    Swal.fire({
        title: 'Are you sure you want to post?',
        text: "FA CODE :" + fa_code,
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Yes, post this!'
    }).
    then((willPosted) => {
        var route  = "{{ route('master_asset.posted', ':id') }}";
        route  = route.replace(':id', fa_code);
        if(willPosted.value){
            $.ajax({
                url: route,
                type: "POST",
                data : {
                    '_method' : 'POST'
                },
                success: function(data){
                    Swal.fire(
                        'Succesfully!',
                        'Data successfully posted.',
                        'success',
                        ).then(function(){
                            $('#asset_datatables').DataTable().ajax.reload();
                        });

                    },
                    error: function(){
                        Swal.fire({
                            icon: 'error',
                            title: 'Error...',
                            text: 'Error Contact IT department!',
                        })
                    }
                })
        } else {
            console.log(`data was dismissed by ${willPosted.dismiss}`);
        }


    })
}
//LOG
$(document).on('click','.log', function(e){
        e.preventDefault();
        var fa_code = $(this).attr('data-id');
        $('#logmodal').modal('show');
        $('.modal-title').text('Log View');

        var route = "{{ route('master_asset.log', ':id') }}";
            route = route.replace(':id', fa_code);

        $.ajax({
            url: route,
            method: 'get',
            dataType: 'json',
            success: function(data){
                var detailDataset = [];
                for(var i =0; i < data.length; i++){
                    detailDataset.push([
                        formatDate(data[i].date), data[i].time, data[i].status_change,
                        data[i].user, data[i].note
                    ]);
                }
                $('#ma_logs_detail').DataTable().clear().destroy();
                $('#ma_logs_detail').DataTable({
                    data: detailDataset,
                    // "ordering" : true,
                    "order": [
                        [0, "desc"],
                        [1, "desc"] 
                    ],
                    columns: [
                        { title: 'Date' },
                        { title: 'Time' },
                        { title: 'Status' },
                        { title: 'User' },
                        { title: 'Note' }
                    ]
                });
            },
            error: function(){
                alert('error');
            }
        })
    });

//VOIDED MASTER ASSET
$(document).on('click', '.voided', function(e){
    e.preventDefault();
    var id = $(this).attr('row-id');
    var fa_code = $(this).attr('data-id');
    var posted_date = $(this).attr('data-target'); 
    var status_asset = $(this).attr('data-target2'); 
    if (posted_date !== '') {
        Swal.fire({
            icon: 'warning',
            title: 'Warning!!',
            text: 'FA.' + fa_code + ' '+'Has been POSTED can not be VOIDED',
        });
    }
    else if (status_asset == 2) {
        Swal.fire({
            icon: 'warning',
            title: 'Warning!!',
            text: 'FA.' + fa_code + ' '+'Have been assign to the user, please un-assign then VOID',
        });
    } else {  // 
        $('.modal-title').html('Master Asset (VOID)')
        $('.fa_code_void').val(fa_code);
        $('#ModalVoidMa').modal('show');
        voidedData(fa_code);
    }
    
});
//VOIDED DATA 
function voidedData(fa_code){
    $('.modal-footer').on('click','.void_submit', function(){
        $('.void_submit').html('Saving...');
        var route  = "{{ route('master_asset.void', ':id') }}";
            route  = route.replace(':id', fa_code);
            $.ajax({
                url: route,
                type: "POST",
                data : $('#form-ma-void').serialize(),
                success: function(data){   
                    console.log(data)
                    $('#ModalVoidMa').modal('hide');
                    Swal.fire(       
                        'Void!',
                        'Data successfully voided',
                        'success'
                        ).then(function(){
                            $('#asset_datatables').DataTable().ajax.reload();
                        });

                    }, 
                    error: function(){
                        Swal.fire({
                            icon: 'error',
                            title: 'Error...',
                            text: 'Something went wrong!',
                        })
                    }
                });
        
    });
}

function clearvaluecreate() 
{
    $('#ma_create_fa_code').val("");
    $('#ma_create_type').val("");
    $('#ma_create_purchase_date').val("");
    $('#ma_create_ppb_no').val("");
    $('#ma_create_merk').val("");
    $('#ma_create_type_').val("");
    $('#ma_create_serial_number').val("");
    $('#ma_create_p_merk').val("");
    $('#ma_create_p_jenis').val("")
    $('#ma_create_p_type').val("")
    $('#ma_create_p_speed').val("")
    $('#ma_create_m_merk').val("")
    $('#ma_create_m_type').val("")
    $('#ma_create_r_size').val("")
    $('#ma_create_r_type').val("")
    $('#ma_create_r_slot').val("")
    $('#ma_create_hd1_merk').val("")
    $('#ma_create_hd1_type').val("")
    $('#ma_create_hd1_size').val("")
    $('#ma_create_hd2_merk').val("")
    $('#ma_create_hd2_type').val("")
    $('#ma_create_hd2_size').val("")
    $('#ma_create_ssd_merk').val("")
    $('#ma_create_ssd_type').val("")
    $('#ma_create_ssd_size').val("")
    $('#ma_create_vga_external').val("")
    $('#ma_create_lan_name').val("")
    $('#ma_create_lan_mac').val("")
    $('#ma_create_wlan_name').val("")
    $('#ma_create_wlan_mac').val("")
}

function deactivenotpcEdit(){
    $('#ma_edit_p_merk').attr('readonly', true);
    $('#ma_edit_p_jenis').attr('readonly', true);
    $('#ma_edit_p_type').attr('readonly', true);
    $('#ma_edit_p_speed').attr('readonly', true);
    $('#ma_edit_m_merk').attr('readonly', true);
    $('#ma_edit_m_type').attr('readonly', true);
    $('#ma_edit_r_size').attr('readonly', true);
    $('#ma_edit_r_type').attr('readonly', true);
    $('#ma_edit_r_slot').attr('readonly', true);
    $('#ma_edit_hd1_merk').attr('readonly', true);
    $('#ma_edit_hd1_type').attr('readonly', true);
    $('#ma_edit_hd1_size').attr('readonly', true);
    $('#ma_edit_hd2_merk').attr('readonly', true);
    $('#ma_edit_hd2_type').attr('readonly', true);
    $('#ma_edit_hd2_size').attr('readonly', true);
    $('#ma_edit_ssd_merk').attr('readonly', true);
    $('#ma_edit_ssd_type').attr('readonly', true);
    $('#ma_edit_ssd_size').attr('readonly', true);
    $('#ma_edit_vga_external').attr('readonly', true);
    $('#ma_edit_lan_name').attr('readonly', true);
    $('#ma_edit_lan_mac').attr('readonly', true);
    $('#ma_edit_wlan_name').attr('readonly', true);
    $('#ma_edit_wlan_mac').attr('readonly', true);

}
$(document).on('click','.activenotpcEdit', function(e){
    $('#ma_edit_p_merk').attr('readonly', false);
    $('#ma_edit_p_jenis').attr('readonly', false);
    $('#ma_edit_p_type').attr('readonly', false);
    $('#ma_edit_p_speed').attr('readonly', false);
    $('#ma_edit_m_merk').attr('readonly', false);
    $('#ma_edit_m_type').attr('readonly', false);
    $('#ma_edit_r_size').attr('readonly', false);
    $('#ma_edit_r_type').attr('readonly', false);
    $('#ma_edit_r_slot').attr('readonly', false);
    $('#ma_edit_hd1_merk').attr('readonly', false);
    $('#ma_edit_hd1_type').attr('readonly', false);
    $('#ma_edit_hd1_size').attr('readonly', false);
    $('#ma_edit_hd2_merk').attr('readonly', false);
    $('#ma_edit_hd2_type').attr('readonly', false);
    $('#ma_edit_hd2_size').attr('readonly', false);
    $('#ma_edit_ssd_merk').attr('readonly', false);
    $('#ma_edit_ssd_type').attr('readonly', false);
    $('#ma_edit_ssd_size').attr('readonly', false);
    $('#ma_edit_vga_external').attr('readonly', false);
    $('#ma_edit_lan_name').attr('readonly', false);
    $('#ma_edit_lan_mac').attr('readonly', false);
    $('#ma_edit_wlan_name').attr('readonly', false);
    $('#ma_edit_wlan_mac').attr('readonly', false);
});




</script>


