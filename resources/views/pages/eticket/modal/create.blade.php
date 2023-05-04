<div class="modal fade" id="modalEticket" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Add Ticket</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form class="row g-3" id="form_create_ticket" method="post" action="javascript:void(0)" enctype="multipart/form-data">
                    {{csrf_field()}}
                    <div class="col-md-2 form-group">
                        <label for="nik" class="form-label">NIK</label>
                        <input type="text" name="nik" class="form-control" id="nik" value="{{auth()->user()->nik}}"
                            disabled>
                    </div>
                    <div class="col-md-4 form-group">
                        <label for="name" class="form-label">Name</label>
                        <input type="text" name="id_user" class="form-control" id="name" value="{{auth()->user()->name}}"
                            disabled>
                    </div>
                    <div class="col-md-3 form-group">
                        <label for="name" class="form-label">No Ticket</label>
                        <input type="text" name="no_ticket" class="form-control" id="no_ticket_et" readonly>
                    </div>
                    <div class="col-md-3 form-group">
                        <label for="name" class="form-label">Time</label>
                        <input type="text" name="time" class="form-control" id="time_et" value="<?php $dt = new DateTime(); echo $dt->format('H:i:s');?>" readonly>
                    </div>
                    <div class="col-md-12 form-group">
                        <label for="name" class="form-label">Issue / Problem</label>
                        <textarea class="form-control" rows="3" name="issue" id="issue_et" placeholder="Please describe your issue"></textarea>
                    </div>
                    {{-- <div class="col-md-12 form-group">
                        <p><font color="red">If any screenshoot please attach below &darr; </font></p>
                        <input type="file" name="gambar" >
                    </div> --}}
                    {{-- <div class="col-md-12 form-group">
                        <label for="name" class="form-label">Attachment File</label>
                    </div>
                    <div class="col-md-12 form-group">
                        <input type="file" class="custom-file-input" id="exampleInputFile">
                        <label class="custom-file-label" for="exampleInputFile">Choose file</label>
                    </div> --}}
                    <div class="col-md-12 form-group">
                        <br>
                        <button type="button" class="btn btn-default" data-dismiss="modal" onclick="resetForm()">Close</button>
                        <button type="button" class="btn btn-info addEt"><i class="ti-check"></i>
                            Save</button>
                    </div>
                </form>
            </div>
            <!-- /.card -->
        </div>
    </div>
    <!-- /.modal-content -->
</div>
<!-- /.modal-dialog -->
</div>
<!-- /.modal -->