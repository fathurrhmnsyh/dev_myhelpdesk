<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class MasterSys extends Model
{
    protected $table = 'itam_master_status';
    protected $fillable = ['label', 'content'];
}
