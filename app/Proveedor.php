<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Proveedor extends Model
{
    protected $table = "proveedor";
    public $timestamps = false;
    protected $fillable = ['idproveedor', 'razon_social', 'nit', 'email'];
    protected $primaryKey = 'idproveedor';
}
