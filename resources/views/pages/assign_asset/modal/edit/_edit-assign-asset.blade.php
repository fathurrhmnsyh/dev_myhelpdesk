<div class="modal fade bd-example-modal-lg editModalAssign" data-backdrop="static" data-keyboard="false"
    style="z-index: 1041" tabindex="-1" id="editModalAssign" role="dialog">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title"></h4>
                <button type="button" class="close" data-dismiss="modal" onclick=""><span>&times;</span></button>
            </div>
            <div class="row">
                <div class="col">
                    <div class="modal-body">
                        <form id="form_asset_assign_edit" method="post" action="javascript:void(0)">
                            @csrf
                            <div class="form-row" style="font-size: 11px;">
                                <div class="col-xl-8 border-left border-right">
                                    <div class="form-row align-items-center mb-1">
                                        <div class="col-6">
                                            <div class="form-row align-items-center">
                                                <div class="col-4">
                                                    <label class="auto-middle" for="ma_edit_location">FA Code</label>
                                                </div>
                                                <div class="col-2">
                                                    <input type="text" name="asset_code" id="asset_code_edit" readonly
                                                        class="form-control form-control-sm">
                                                </div>
                                                <div class="col-6">
                                                    <div class="input-group">
                                                        <input type="hidden" name="updated_by" class="form-control"
                                                            value="{{auth()->user()->name}}">
                                                        <input class="form-control form-control-sm" name="fa_code"
                                                            type="text" autocomplete="off" id="fa_code_edit" readonly
                                                            placeholder="(Please Press Search Icon)" value="-">

                                                        {{-- faSearch --}}
                                                        {{-- <i style="color: red; font-size: 11px;">(*) Press Enter/Search Button</i> --}}
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-6">
                                            <div class="form-row align-items-center">
                                                <div class="col-4">
                                                    <label class="auto-middle" for="location_asset_create">Location
                                                        Asset</label>
                                                </div>
                                                <div class="col-8">
                                                    <div class="input-group">
                                                        <input class="form-control form-control-sm"
                                                            name="asset_location" type="text" autocomplete="off"
                                                            id="location_asset_edit" readonly
                                                            placeholder="(Please Press Search Icon)" value="-">
                                                        <span class="input-group-btn">
                                                            <button type="button" id="btnPopUp"
                                                                class="btn btn-success locAssSearchEdit"><i
                                                                    class="fa fa-search"></i></button>
                                                        </span><br>
                                                        {{-- faSearch --}}
                                                        {{-- <i style="color: red; font-size: 11px;">(*) Press Enter/Search Button</i> --}}
                                                    </div>
                                                    {{-- <input type="text" name="asset_location"
                                                            id="location_asset_create" value="-"
                                                            class="form-control form-control-sm"> --}}
                                                </div>
                                            </div>
                                            {{-- <input type="text" name="asset_location"
                                                    id="location_asset_edit" value="-"
                                                    class="form-control form-control-sm"> --}}
                                        </div>
                                    </div>
                                    <div class="form-row align-items-center mb-1">
                                        <div class="col-6">
                                            <div class="form-row align-items-center">
                                                <div class="col-4">
                                                    <label class="auto-middle" for="ma_edit_location">Employee</label>
                                                </div>
                                                <div class="col-8">
                                                    <div class="input-group">
                                                        <input class="form-control form-control-sm" name="employee_name"
                                                            type="text" autocomplete="off" id="employee_search_edit"
                                                            readonly placeholder="(Please Press Search Icon)" value="-">
                                                        <span class="input-group-btn">
                                                            <button type="button" id="btnPopUp" onclick="empSearchEdit()"
                                                                class="btn btn-warning"><i
                                                                    class="fa fa-search"></i></button>
                                                        </span><br>
                                                        {{-- <i style="color: red; font-size: 11px;">(*) Press Enter/Search Button</i> --}}
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-3">
                                            <div class="form-row align-items-center">
                                                <div class="col-4">
                                                    <label class="auto-middle" for="nik_edit">NIK</label>
                                                </div>
                                                <div class="col-8">
                                                    <input type="number" name="nik" id="nik_edit"
                                                        class="form-control form-control-sm" readonly>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-3">
                                            <div class="form-row align-items-center">
                                                <div class="col-4">
                                                    <label class="auto-middle" for="section_edit">Section</label>
                                                </div>
                                                <div class="col-8">
                                                    <input type="text" name="section" id="section_edit"
                                                        class="form-control form-control-sm" readonly>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-4">
                                    <div class="form-row align-items-center mb-1">
                                        <div class="col-12">
                                            <div class="form-row align-items-center mb-1">
                                                <div class="col-4">
                                                    <label class="auto-middle" for="status_asset_edit">Status Asset
                                                        From</label>
                                                </div>
                                                <div class="col-8">
                                                    <input type="text" name="status_asset" id="status_asset_edit"
                                                        class="form-control form-control-sm" readonly>
                                                </div>
                                            </div>
                                            <div class="form-row align-items-center">
                                                <div class="col-4">
                                                    <label class="auto-middle" for="status_asset_edit">Status Asset
                                                        To</label>
                                                </div>
                                                <div class="col-8">
                                                    {{-- <input type="text" name="section"
                                                    id="status_asset_edit"
                                                    class="form-control form-control-sm" readonly> --}}
                                                    <select class="form-control form-control-sm select2"
                                                        name="status_asset2" id="status_asset_edit2" type="text"
                                                        style="width: 100%;" onchange="rmifbroke()">
                                                        <option selected disabled>-Select Status-</option>
                                                        @foreach($status_asset as $s)
                                                        <option value="{{$s->code}}"> {{$s->status_name}}</option>
                                                        @endforeach
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                    </div>
                    <div class="modal-footer">
                        {{-- <button type="button" data-toggle="tooltip"  data-placement="top" title="Add Item" class="btn btn-info" id="addRow"> Add Item</button> --}}
                        <button type="button" class="btn btn-info editAssign"><i class="ti-check"></i>
                            Save</button>
                        <button type="button" class="btn btn-secondary " data-dismiss="modal" onclick="resetbtnedit()">Close</button>

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
