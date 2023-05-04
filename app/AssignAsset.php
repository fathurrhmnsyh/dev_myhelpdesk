<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AssignAsset extends Model
{
    protected $table = 'itam_master_asset_assign';
    protected $primaryKey = 'id_assign_asset';
    protected $fillable = [
        'fa_code', 
        'asset_code', 
        'nik', 
        'employee_name', 
        'section', 
        'asset_location', 
        'data_status', 
        'written_date', 
        'voided_dates', 
        'bpat_dates', 
        'printed_dates', 
        'posted_dates', 
        'qr_date', 
        'created_by', 
        'updated_by', 
        
    ];
}
