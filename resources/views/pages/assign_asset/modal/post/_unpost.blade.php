<div class="modal fade-out bd-example-modal-lg ModalUnpostAA"  tabindex="-1" id="ModalUnpostAA"  role="dialog" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title" ></h4>
        </div>
        <div class="row">
         <div class="col">
          <div class="modal-body">
            <form  id="form_aa_unpost" method="post" action="javascript:void(0)">
              @csrf
              @method('POST')
              <input type="hidden" id="ttfno_post" name="ttf_no">
              <div class="form-group row">
                <label for="type"   class="col-2 col-form-label">Type</label>
                <div class="col-9">
                  <input type="text" disabled  value="UN-POST"  name="ttf_no" class="form-control form-control-sm" placeholder="">
                </div>
            </div>
            <div class="form-group row">
                <label for="number" class="col-2 col-form-label">FA Code</label>
                <div class="col-9">
                  <input type="text" disabled  name="fa_code" class="form-control form-control-sm fa_code_unpost" placeholder="">
                </div>
            </div>
            <div class="form-group row">
                <label for="exception_note"  class="col-2 col-form-label">Exception Note</label>
                <div class="col-9">
                  <input type="text"  autocomplete="off" name="note" id="unpost_noted" class="form-control form-control-sm" placeholder="">
                </div>
            </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-info " data-dismiss="modal">Cancel</button>
                <button type="button"  class="btn btn-info submit_unpost" ><i class="ti-check"></i> Ok</button>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  </div>
