<div class="modal fade bd-example-modal-lg modalcreate" data-backdrop="static" data-keyboard="false"
    style="z-index: 1041" tabindex="-1" id="createModal" role="dialog">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title"></h4>
                <button type="button" class="close" data-dismiss="modal" onclick=""><span>&times;</span></button>
            </div>
            <div class="row">
                <div class="col">
                    <div class="modal-body">
                        <form id="form_asset_assign" method="post" action="javascript:void(0)">
                            @csrf
                            <div class="form-row" style="font-size: 11px;">
                                <div class="col-xl-8 border-left border-right">
                                    <div class="form-row align-items-center mb-1">
                                        <div class="col-6">
                                            <div class="form-row align-items-center">
                                                <div class="col-4">
                                                    <label class="auto-middle" for="ma_create_location">FA Code</label>
                                                </div>
                                                <div class="col-2">
                                                    <input type="text" name="asset_code"
                                                    id="asset_code_create" readonly
                                                    class="form-control form-control-sm">
                                                </div>
                                                <div class="col-6">
                                                    <div class="input-group">
                                                        <input type="hidden" name="input_by" class="form-control" value="{{auth()->user()->name}}">
                                                        <input class="form-control form-control-sm" name="fa_code" type="text" autocomplete="off"
                                                            id="fa_code_create" readonly placeholder="(Please Press Search Icon)" value="-">
                                                        <span class="input-group-btn">
                                                            <button type="button" id="btnPopUp"  class="btn btn-info faSearch"
                                                                ><i class="fa fa-search"></i></button>
                                                        </span><br>
                                                        {{-- faSearch --}}
                                                        {{-- <i style="color: red; font-size: 11px;">(*) Press Enter/Search Button</i> --}}
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-6">
                                            <div class="form-row align-items-center">
                                                <div class="col-4">
                                                    <label class="auto-middle" for="location_asset_create">Location Asset</label>
                                                </div>
                                                <div class="col-8">
                                                    <div class="input-group">
                                                        <input class="form-control form-control-sm" name="asset_location" type="text" autocomplete="off"
                                                            id="location_asset_create" readonly placeholder="(Please Press Search Icon)" value="-">
                                                        <span class="input-group-btn">
                                                            <button type="button" id="btnPopUp"  class="btn btn-success locAssSearch"
                                                                ><i class="fa fa-search"></i></button>
                                                        </span><br>
                                                        {{-- faSearch --}}
                                                        {{-- <i style="color: red; font-size: 11px;">(*) Press Enter/Search Button</i> --}}
                                                    </div>
                                                    {{-- <input type="text" name="asset_location"
                                                    id="location_asset_create" value="-"
                                                    class="form-control form-control-sm"> --}}
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-row align-items-center mb-1">
                                        <div class="col-6">
                                            <div class="form-row align-items-center">
                                                <div class="col-4">
                                                    <label class="auto-middle" for="ma_create_location">Employee</label>
                                                </div>
                                                <div class="col-8">
                                                    <div class="input-group">
                                                        <input class="form-control form-control-sm" name="employee_name" type="text" autocomplete="off"
                                                            id="employee_search_create" readonly placeholder="(Please Press Search Icon)" value="-">
                                                        <span class="input-group-btn">
                                                            <button type="button" id="btnPopUp" onclick="empSearch()" class="btn btn-warning"
                                                                ><i class="fa fa-search"></i></button>
                                                        </span><br>
                                                        {{-- <i style="color: red; font-size: 11px;">(*) Press Enter/Search Button</i> --}}
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-3">
                                            <div class="form-row align-items-center">
                                                <div class="col-4">
                                                    <label class="auto-middle" for="nik_create">NIK</label>
                                                </div>
                                                <div class="col-8">
                                                    <input type="number" name="nik"
                                                    id="nik_create"
                                                    class="form-control form-control-sm" readonly>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-3">
                                            <div class="form-row align-items-center">
                                                <div class="col-4">
                                                    <label class="auto-middle" for="section_create">Section</label>
                                                </div>
                                                <div class="col-8">
                                                    <input type="text" name="section"
                                                    id="section_create"
                                                    class="form-control form-control-sm" readonly>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                {{-- <div class="col-xl-4">
                                    <div class="form-row align-items-center mb-1">
                                        <div class="col-12">
                                            <div class="form-row align-items-center">
                                                <div class="col-4">
                                                    <label class="auto-middle" for="status_asset_create">Status Asset</label>
                                                </div>
                                                <div class="col-8">
                                                    <select class="form-control form-control-sm select2" name="status_asset" id="status_asset_create" type="text"
                                                        style="width: 100%;">
                                                        <option selected disabled>-Select Section-</option>
                                                        @foreach($status_asset as $s)
                                                            <option value="{{$s->code}}">{{$s->status_name}}</option>
                                                        @endforeach
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div> --}}
                            </div>

                    </div>
                    <div class="modal-footer">
                        {{-- <button type="button" data-toggle="tooltip"  data-placement="top" title="Add Item" class="btn btn-info" id="addRow"> Add Item</button> --}}
                        <button type="button" class="btn btn-info addAssign"><i class="ti-check"></i>
                            Save</button>
                        <button type="button"  class="btn btn-secondary "
                            data-dismiss="modal" onclick="clearvaluecreate()">Close</button>

                        {{-- @php $counter @endphp --}}
                        {{-- <input type="hidden" id="jml_row" name="jml_row" value=""> --}}
                    </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
