@extends('layouts.admin')
@section('title', 'Laptop Detail | ITCS')
@section('title-sub', 'Laptop Detail')
@section('breadcrumb')
{{-- <ol class="breadcrumb float-sm-right">
    <li class="breadcrumb-item"><a href="/">IT Asset</a></li>
    <li class="breadcrumb-item ">Database</li>
    <li class="breadcrumb-item active">Laptop</li>
</ol>
@endsection --}}

@section('content')

<div class="col-12">
    <div class="card">
        <!-- /.card-header -->
        <div class="card-body">
            <div class="col-md-12">
                <form class="row g-3">
                    {{method_field('PUT')}}
                    <div class="col-md-3">
                        <label for="kode_fa" class="form-label">Kode FA</label>
                        <input type="text" name="kode_fa" class="form-control" id="kode_fa" value="{{$laptop->kode_fa}}"
                            disabled>
                    </div>
                    <div class="col-md-3">
                        <label for="tanggal_beli" class="form-label">Tanggal Pembelian</label>
                        <input type="date" name="tanggal_beli" class="form-control" id="tanggal_beli"
                            value="{{$laptop->tanggal_beli}}" disabled>
                    </div>
                    <div class="col-md-3">
                        <label for="ppb_pembelian" class="form-label">No PPB Pembelian</label>
                        <input type="text" name="ppb_pembelian" class="form-control" id="ppb_pembelian"
                            value="{{$laptop->ppb_pembelian}}" disabled>
                    </div>
                    <div class="col-md-3">
                        <label for="serial_number" class="form-label">Serial Number</label>
                        <input type="text" name="serial_number" class="form-control" id="serial_number"
                            value="{{$laptop->serial_number}}" disabled>
                    </div>
                    <div class="col-md-6">
                        <label for="lp_merk" class="form-label">Merk Laptop</label>
                        <input type="text" name="lp_merk" class="form-control" id="lp_merk" value="{{$laptop->lp_merk}}"
                            disabled>
                    </div>
                    <div class="col-md-6">
                        <label for="lp_tipe" class="form-label">Tipe Laptop</label>
                        <input type="text" name="lp_tipe" class="form-control" id="lp_tipe" value="{{$laptop->lp_tipe}}"
                            disabled>
                    </div>
                    <div class="col-md-3">
                        <label for="p_merk" class="form-label">Merk Processor</label>
                        <select name="p_merk" class="form-control" disabled>
                            <option value="{{$laptop->p_merk}}" selected='selected'>{{$laptop->p_merk}}</option>
                        </select>
                    </div>
                    <div class="col-md-3">
                        <label for="p_jenis" class="form-label">Jenis Processor</label>
                        <select name="p_jenis" class="form-control" disabled>
                            <option value="{{$laptop->p_jenis}}">{{$laptop->p_jenis}}</option>
                        </select>
                    </div>
                    <div class="col-md-3">
                        <label for="p_tipe" class="form-label">Tipe Processor</label>
                        <input type="text" name="p_tipe" class="form-control" id="p_tipe" value="{{$laptop->p_tipe}}"
                            disabled>
                    </div>
                    <div class="col-md-3">
                        <label for="p_kecepatan" class="form-label">Kecepatan Processor ( Ghz ) </label>
                        <input type="text" name="p_kecepatan" class="form-control" id="p_kecepatan"
                            value="{{$laptop->p_kecepatan}}" disabled>
                    </div>
                    <div class="col-md-4">
                        <label for="r_kapasitas" class="form-label">RAM Kapasitas</label>
                        <input type="text" name="r_kapasitas" class="form-control" id="r_kapasitas"
                            value="{{$laptop->r_kapasitas}}" disabled>
                    </div>
                    <div class="col-md-4">
                        <label for="r_tipe" class="form-label">Tipe RAM</label>
                        <select name="r_tipe" class="form-control" disabled>
                            <option value="{{$laptop->r_tipe}}" selected='selected'>{{$laptop->r_tipe}}</option>
                        </select>
                    </div>
                    <div class="col-md-4">
                        <label for="r_slot" class="form-label">Slot RAM</label>
                        <select name="r_slot" class="form-control" disabled>
                            <option value="{{$laptop->r_slot}}" selected='selected'>{{$laptop->r_slot}}</option>
                            <option value="Single">Single</option>
                            <option value="Dual">Dual</option>
                        </select>
                    </div>
                    <div class="col-md-4">
                        <label for="hd_merk" class="form-label">Merk Hardisk </label>
                        <input type="text" name="hd_merk" class="form-control" id="hd_merk" value="{{$laptop->hd_merk}}"
                            disabled>
                    </div>
                    <div class="col-md-4">
                        <label for="hd_tipe" class="form-label">Tipe Hardisk </label>
                        <input type="text" name="hd_tipe" class="form-control" id="hd_tipe" value="{{$laptop->hd_tipe}}"
                            disabled>
                    </div>
                    <div class="col-md-4">
                        <label for="hd_kapasitas" class="form-label">Kapasitas Hardisk </label>
                        <input type="text" name="hd_kapasitas" class="form-control" id="hd_kapasitas"
                            value="{{$laptop->hd_kapasitas}}" disabled>
                    </div>
                    <div class="col-md-4">
                        <label for="ssd_merk" class="form-label">Merk SSD </label>
                        <input type="text" name="ssd_merk" class="form-control" id="ssd_merk"
                            value="{{$laptop->ssd_merk}}" disabled>
                    </div>
                    <div class="col-md-4">
                        <label for="ssd_tipe" class="form-label">Tipe SSD </label>
                        <input type="text" name="ssd_tipe" class="form-control" id="ssd_tipe"
                            value="{{$laptop->ssd_tipe}}" disabled>
                    </div>
                    <div class="col-md-4">
                        <label for="ssd_kapasitas" class="form-label">Kapasitas SSD </label>
                        <input type="text" name="ssd_kapasitas" class="form-control" id="ssd_kapasitas"
                            value="{{$laptop->ssd_kapasitas}}" disabled>
                    </div>
                    <div class="col-md-4">
                        <label for="vga_merk" class="form-label">Merk VGA</label>
                        <input type="text" name="vga_merk" class="form-control" id="vga_merk"
                            value="{{$laptop->vga_merk}}" disabled>
                    </div>
                    <div class="col-md-4">
                        <label for="vga_tipe" class="form-label">Tipe VGA</label>
                        <input type="text" name="vga_tipe" class="form-control" id="vga_tipe"
                            value="{{$laptop->vga_tipe}}" disabled>
                    </div>
                    <div class="col-md-4">
                        <label for="vga_kapasitas" class="form-label">Kapasitas VGA</label>
                        <input type="text" name="vga_kapasitas" class="form-control" id="vga_kapasitas"
                            value="{{$laptop->vga_kapasitas}}" disabled>
                    </div>
                    <div class="col-md-6">
                        <label for="eth_name" class="form-label">Ethernet Name</label>
                        <input type="text" name="eth_name" class="form-control" id="eth_name"
                            value="{{$laptop->eth_name}}" disabled>
                    </div>
                    <div class="col-md-6">
                        <label for="eth_mac" class="form-label">Ethernet Mac Address</label>
                        <input type="text" name="eth_mac" class="form-control" id="eth_mac" value="{{$laptop->eth_mac}}"
                            disabled>
                    </div>
                    <div class="col-md-6">
                        <label for="wireless_name" class="form-label">Wireless Name</label>
                        <input type="text" name="wireless_name" class="form-control" id="wireless_name"
                            value="{{$laptop->wireless_name}}" disabled>
                    </div>
                    <div class="col-md-6">
                        <label for="wireless_mac" class="form-label">Wireless Mac Address</label>
                        <input type="text" name="wireless_mac" class="form-control" id="wireless_mac"
                            value="{{$laptop->wireless_mac}}" disabled>
                    </div>
                    <div class="col-md-4">
                        <label for="bluetooth_name" class="form-label">Bluetooth Name</label>
                        <input type="text" name="bluetooth_name" class="form-control" id="bluetooth_name"
                            value="{{$laptop->bluetooth_name}}" disabled>
                    </div>
                    <div class="col-md-4">
                        <label for="bluetooth_mac" class="form-label">Bluetooth Mac Address</label>
                        <input type="text" name="bluetooth_mac" class="form-control" id="bluetooth_mac"
                            value="{{$laptop->bluetooth_mac}}" disabled>
                    </div>
                    <div class="col-md-4">
                        <label for="optical_drive" class="form-label">Optical Drive</label>
                        <input type="text" name="optical_drive" class="form-control" id="optical_drive"
                            value="{{$laptop->optical_drive}}" disabled>
                    </div>
                    <div class="col-md-12">
                        <br>
                        <input class="btn btn-warning" action="action" onclick="window.history.go(-1); return false;"
                            type="submit" value="Cancel" />
                        <a href="/laptop/edit/{{$laptop->id}}" type="button" class="btn btn-primary mb-3"><i
                                class="fa fa-pencil"></i> Edit</a>
                        <a href="/laptop/print/{{$laptop->id}}" type="button" target="_blank"
                            class="btn btn-success mb-3"><i class="fa fa-print"></i> Print</a>
                    </div>
                </form>
                <section class="content-header">
                    <h3>

                    </h3>
                </section>
            </div>
        </div>
        <!-- /.card-body -->
    </div>
    <!-- /.card -->
</div>



@endsection
