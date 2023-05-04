<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class MasterAsset extends Model
{
    protected $table = 'itam_master_asset';
    protected $primaryKey = 'id_master_asset';
    protected $fillable = [
        'created_by', 
        'data_status', 
        'written_date',
        'id_status_asset', 
        'location', 
        'asset_code', 
        'fa_code', 
        'purchase_date', 
        'no_ppb', 
        'asset_merk', 
        'asset_type', 
        'serial_number', 
        'p_merk', 
        'p_jenis', 
        'p_type',
        'p_speed', 
        'm_merk', 
        'm_type', 
        'r_size', 
        'r_type', 
        'r_slot', 
        'hd1_merk',
        'hd1_type',
        'hd1_size',
        'hd2_merk',
        'hd2_type',
        'hd2_size',
        'ssd_merk',
        'ssd_type',
        'ssd_size',
        'vga_external', 
        'lan_name', 
        'lan_mac', 
        'wlan_name', 
        'wlan_mac', 
        'posted_date',
    ];
}
