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
                        <form id="form_asset_entry" method="post" action="javascript:void(0)">
                            @csrf
                            <div class="form-row" style="font-size: 11px;">
                                <div class="col-xl-4 border-left">
                                    <div class="form-row align-items-center mb-1">
                                        <div class="col-6">
                                            <div class="form-row align-items-center">
                                                <div class="col-4">
                                                    <label class="auto-middle" for="ma_create_location">Location</label>
                                                </div>
                                                <div class="col-8">
                                                    <select name="ma_create_location" id="ma_create_location"
                                                        class="form-control form-control-sm" required="">
                                                        <option value="">Select Location</option>
                                                        @foreach ($location as $loc)
                                                        <option value="{{$loc->code}}" @if ($loop->first) selected
                                                            @endif>{{$loc->name}}</option>
                                                        @endforeach
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-6">
                                            <div class="form-row align-items-center">
                                                <div class="col-4">
                                                    <label class="auto-middle" for="ma_create_type">Type</label>
                                                </div>
                                                <div class="col-8">
                                                    <select name="ma_create_type" id="ma_create_type"
                                                        class="form-control form-control-sm" required=""
                                                        onchange="activeonpc()">
                                                        <option value="">Select Type</option>
                                                        @foreach ($type_asset as $item)
                                                        <option value="{{$item->code}}">{{$item->name}}</option>
                                                        @endforeach
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-row align-items-center">
                                        <div class="col-2">
                                            <label class="auto-middle" for="ma_create_fa_code">FA Code</label>
                                        </div>
                                        <div class="col-10">
                                            <input type="text" name="ma_create_fa_code" id="ma_create_fa_code"
                                                class="form-control form-control-sm" autocomplete="off" readonly>
                                        </div>
                                    </div>
                                    <div class="form-row align-items-center mb-1">
                                        <div class="col-6">
                                            <div class="form-row align-items-center">
                                                <div class="col-4">
                                                    <label class="auto-middle" for="ma_create_purchase_date">Purchase
                                                        Date</label>
                                                </div>
                                                <div class="col-8">
                                                    <input type="date" name="ma_create_purchase_date"
                                                        id="ma_create_purchase_date"
                                                        class="form-control form-control-sm">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-6">
                                            <div class="form-row align-items-center">
                                                <div class="col-5">
                                                    <label class="auto-middle" for="ma_create_ppb_no">PPB No<span style="color: red">**</span></label>
                                                </div>
                                                <div class="col-7">
                                                    <input type="number" name="ma_create_ppb_no" id="ma_create_ppb_no"
                                                        class="form-control form-control-sm">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-row align-items-center">
                                        <div class="col-2">
                                            <label class="auto-middle" for="ma_create_merk">Merk<span style="color: red">**</span></label>
                                        </div>
                                        <div class="col-10">
                                            <input type="text" style="text-transform: uppercase" name="ma_create_merk" id="ma_create_merk"
                                                class="form-control form-control-sm" autocomplete="off" required="">
                                        </div>
                                    </div>
                                    <div class="form-row align-items-center mt-1">
                                        <div class="col-2">
                                            <label class="auto-middle" for="ma_create_type_">Type<span style="color: red">**</span></label>
                                        </div>
                                        <div class="col-10">
                                            <input type="text" style="text-transform: uppercase" name="ma_create_type_" id="ma_create_type_"
                                                class="form-control form-control-sm" autocomplete="off" >
                                        </div>
                                    </div>
                                    <div class="form-row align-items-center">
                                        <div class="col-2">
                                            <label class="auto-middle" for="ma_create_serial_number">Serial
                                                Number<span style="color: red">**</span></label>
                                        </div>
                                        <div class="col-10">
                                            <input type="text" style="text-transform: uppercase" name="ma_create_serial_number"
                                                id="ma_create_serial_number" class="form-control form-control-sm"
                                                autocomplete="off">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-8 border-left border-right">
                                    <div class="form-row align-items-center mb-1">
                                        <div class="col-6">
                                            <div class="form-row align-items-center">
                                                <div class="col-4">
                                                    <label class="auto-middle" for="ma_create_p_merk">Processor
                                                        Merk<span style="color: red">*</span></label>
                                                </div>
                                                <div class="col-8">
                                                    <select name="ma_create_p_merk" id="ma_create_p_merk"
                                                        class="form-control form-control-sm">
                                                        <option value=""></option>
                                                        <option value="Intel">Intel</option>
                                                        <option value="AMD">AMD</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-6">
                                            <div class="form-row align-items-center">
                                                <div class="col-4">
                                                    <label class="auto-middle" for="ma_create_p_jenis">Processor
                                                        Jenis<span style="color: red">*</span></label>
                                                </div>
                                                <div class="col-8">
                                                    <input type="text" name="ma_create_p_jenis" id="ma_create_p_jenis"
                                                        class="form-control form-control-sm" autocomplete="off"
                                                        required="" placeholder="ex : Core i7">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-row align-items-center mb-1">
                                        <div class="col-6">
                                            <div class="form-row align-items-center">
                                                <div class="col-4">
                                                    <label class="auto-middle" for="ma_create_p_type">Processor
                                                        Type<span style="color: red">*</span></label>
                                                </div>
                                                <div class="col-8">
                                                    <input type="text" name="ma_create_p_type" id="ma_create_p_type"
                                                        class="form-control form-control-sm" autocomplete="off"
                                                        required="" placeholder="ex : 11300">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-6">
                                            <div class="form-row align-items-center">
                                                <div class="col-4">
                                                    <label class="auto-middle" for="ma_create_p_speed">Processor
                                                        Speed<span style="color: red">*</span></label>
                                                </div>
                                                <div class="col-8">
                                                    <input type="number" name="ma_create_p_speed" id="ma_create_p_speed"
                                                        class="form-control form-control-sm" autocomplete="off"
                                                        required="" placeholder="ex : 3.9">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-row align-items-center mb-1">
                                        <div class="col-6">
                                            <div class="form-row align-items-center">
                                                <div class="col-4">
                                                    <label class="auto-middle" for="ma_create_m_merk">Mainboard
                                                        Merk<span style="color: red">*</span></label>
                                                </div>
                                                <div class="col-8">
                                                    <input type="text" name="ma_create_m_merk" id="ma_create_m_merk"
                                                        class="form-control form-control-sm" autocomplete="off"
                                                        required="" placeholder="ex : Gigabyte">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-6">
                                            <div class="form-row align-items-center">
                                                <div class="col-4">
                                                    <label class="auto-middle" for="ma_create_m_type">Mainboard
                                                        Type<span style="color: red">*</span></label>
                                                </div>
                                                <div class="col-8">
                                                    <input type="text" name="ma_create_m_type" id="ma_create_m_type"
                                                        class="form-control form-control-sm" autocomplete="off"
                                                        required="" placeholder="ex : x441u">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-row align-items-center mb-1">
                                        <div class="col-4">
                                            <div class="form-row align-items-center">
                                                <div class="col-6">
                                                    <label class="auto-middle" for="ma_create_r_size">RAM Size<span style="color: red">*</span></label>
                                                </div>
                                                <div class="col-6">
                                                    <input type="number" name="ma_create_r_size" id="ma_create_r_size"
                                                        class="form-control form-control-sm" autocomplete="off"
                                                        required="">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-4">
                                            <div class="form-row align-items-center">
                                                <div class="col-4">
                                                    <label class="auto-middle" for="ma_create_r_type">RAM Type<span style="color: red">*</span></label>
                                                </div>
                                                <div class="col-8">
                                                    <select name="ma_create_r_type" id="ma_create_r_type"
                                                        class="form-control form-control-sm" autocomplete="off">
                                                        <option value=""></option>
                                                        <option value="DDR 2">DDR 2</option>
                                                        <option value="DDR 3">DDR 3</option>
                                                        <option value="DDR 4">DDR 4</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-4">
                                            <div class="form-row align-items-center">
                                                <div class="col-4">
                                                    <label class="auto-middle" for="ma_create_r_slot">RAM Slot<span style="color: red">*</span></label>
                                                </div>
                                                <div class="col-8">
                                                    <select name="ma_create_r_slot" id="ma_create_r_slot"
                                                        class="form-control form-control-sm" autocomplete="off">
                                                        <option value=""></option>
                                                        <option value="Single">Single</option>
                                                        <option value="Dual">Dual</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-row align-items-center mb-1">
                                        <div class="col-4">
                                            <div class="form-row align-items-center">
                                                <div class="col-6">
                                                    <label class="auto-middle" for="ma_create_hd1_merk">HDD Merk<span style="color: red">*</span></label>
                                                </div>
                                                <div class="col-6">
                                                    <input type="text" name="ma_create_hd1_merk" id="ma_create_hd1_merk"
                                                        class="form-control form-control-sm" autocomplete="off"
                                                        required="">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-4">
                                            <div class="form-row align-items-center">
                                                <div class="col-4">
                                                    <label class="auto-middle" for="ma_create_hd1_type">HDD Type<span style="color: red">*</span></label>
                                                </div>
                                                <div class="col-8">
                                                    <input type="text" name="ma_create_hd1_type" id="ma_create_hd1_type"
                                                        class="form-control form-control-sm" autocomplete="off"
                                                        required="">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-4">
                                            <div class="form-row align-items-center">
                                                <div class="col-4">
                                                    <label class="auto-middle" for="ma_create_hd1_size">HDD Size<span style="color: red">*</span>(GB)</label>
                                                </div>
                                                <div class="col-8">
                                                    <input type="number" name="ma_create_hd1_size"
                                                        id="ma_create_hd1_size" class="form-control form-control-sm"
                                                        autocomplete="off" required="">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-row align-items-center mb-1">
                                        <div class="col-4">
                                            <div class="form-row align-items-center">
                                                <div class="col-6">
                                                    <label class="auto-middle" for="ma_create_hd2_merk">HDD2
                                                        Merk</label>
                                                </div>
                                                <div class="col-6">
                                                    <input type="text" name="ma_create_hd2_merk" id="ma_create_hd2_merk"
                                                        class="form-control form-control-sm" autocomplete="off"
                                                        required="">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-4">
                                            <div class="form-row align-items-center">
                                                <div class="col-4">
                                                    <label class="auto-middle" for="ma_create_hd2_type">HDD2
                                                        Type</label>
                                                </div>
                                                <div class="col-8">
                                                    <input type="number" name="ma_create_hd2_type"
                                                        id="ma_create_hd2_type" class="form-control form-control-sm"
                                                        autocomplete="off" required="">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-4">
                                            <div class="form-row align-items-center">
                                                <div class="col-4">
                                                    <label class="auto-middle" for="ma_create_hd2_size">HDD2
                                                        Size (GB)</label>
                                                </div>
                                                <div class="col-8">
                                                    <input type="number" name="ma_create_hd2_size"
                                                        id="ma_create_hd2_size" class="form-control form-control-sm"
                                                        autocomplete="off" required="">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-row align-items-center mb-1">
                                        <div class="col-4">
                                            <div class="form-row align-items-center">
                                                <div class="col-6">
                                                    <label class="auto-middle" for="ma_create_ssd_merk">SSD Merk</label>
                                                </div>
                                                <div class="col-6">
                                                    <input type="text" name="ma_create_ssd_merk" id="ma_create_ssd_merk"
                                                        class="form-control form-control-sm" autocomplete="off"
                                                        required="">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-4">
                                            <div class="form-row align-items-center">
                                                <div class="col-4">
                                                    <label class="auto-middle" for="ma_create_ssd_type">SSD Type</label>
                                                </div>
                                                <div class="col-8">
                                                    <input type="number" name="ma_create_ssd_type"
                                                        id="ma_create_ssd_type" class="form-control form-control-sm"
                                                        autocomplete="off" required="">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-4">
                                            <div class="form-row align-items-center">
                                                <div class="col-4">
                                                    <label class="auto-middle" for="ma_create_ssd_size">SSD Size (GB)</label>
                                                </div>
                                                <div class="col-8">
                                                    <input type="number" name="ma_create_ssd_size"
                                                        id="ma_create_ssd_size" class="form-control form-control-sm"
                                                        autocomplete="off" required="">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-row align-items-center">
                                        <div class="col-2">
                                            <label class="auto-middle" for="ma_create_vga_external">VGA External</label>
                                        </div>
                                        <div class="col-10">
                                            <input type="text" name="ma_create_vga_external" id="ma_create_vga_external"
                                                class="form-control form-control-sm" autocomplete="off" required="">
                                        </div>
                                    </div>
                                    <div class="form-row align-items-center mb-1 mt-1">
                                        <div class="col-6">
                                            <div class="form-row align-items-center">
                                                <div class="col-4">
                                                    <label class="auto-middle" for="ma_create_lan_name">LAN Name<span style="color: red">*</span></label>
                                                </div>
                                                <div class="col-8">
                                                    <input type="text" name="ma_create_lan_name" id="ma_create_lan_name"
                                                        class="form-control form-control-sm" autocomplete="off"
                                                        required="" placeholder="">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-6">
                                            <div class="form-row align-items-center">
                                                <div class="col-4">
                                                    <label class="auto-middle" for="ma_create_lan_mac">LAN MAC<span style="color: red">*</span></label>
                                                </div>
                                                <div class="col-8">
                                                    <input type="text" style="text-transform: uppercase" name="ma_create_lan_mac" id="ma_create_lan_mac"
                                                        class="form-control form-control-sm" autocomplete="off"
                                                        required="" placeholder="">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-row align-items-center mb-1">
                                        <div class="col-6">
                                            <div class="form-row align-items-center">
                                                <div class="col-4">
                                                    <label class="auto-middle" for="ma_create_wlan_name">Wireless
                                                        Name</label>
                                                </div>
                                                <div class="col-8">
                                                    <input type="text" name="ma_create_wlan_name"
                                                        id="ma_create_wlan_name" class="form-control form-control-sm"
                                                        autocomplete="off" required="" placeholder="">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-6">
                                            <div class="form-row align-items-center">
                                                <div class="col-4">
                                                    <label class="auto-middle" for="ma_create_wlan_mac">Wireless
                                                        MAC</label>
                                                </div>
                                                <div class="col-8">
                                                    <input type="text" style="text-transform: uppercase" name="ma_create_wlan_mac" id="ma_create_wlan_mac"
                                                        class="form-control form-control-sm" autocomplete="off"
                                                        required="" placeholder="">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                    </div>
                    <div class="modal-footer">
                        {{-- <button type="button" data-toggle="tooltip"  data-placement="top" title="Add Item" class="btn btn-info" id="addRow"> Add Item</button> --}}
                        <button type="button" class="btn btn-info addAsset"><i class="ti-check"></i>
                            Save</button>
                        <button type="button" onclick="clearvaluecreate()" class="btn btn-secondary "
                            data-dismiss="modal">Close</button>

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
