<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Mantenimiento extends Model
{
    protected $table = "mantenimiento";
    public $timestamps = false;
    protected $fillable = ['idmantenimiento', 'fecha_ingreso', 'fecha_devolucion', 'fkidactivo', 'fkidempresa', 'detalle', 'tipo', 'monto', 'estado'];
    protected $primaryKey = 'idmantenimiento';

    public function activo()
    {
        return $this->belongsTo(Activo::class, 'fkidactivo');
    }
    public function empresa()
    {
        return $this->belongsTo(Empresa::class, 'fkidempresa');
    }
}
