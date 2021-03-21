<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Tracer extends Model
{
    protected $table = "visita";
    public $timestamps = false;
    protected $fillable = ['fecha', 'ip', 'visita','estado'];
    protected $primaryKey = 'fecha';
    protected $secundaryKey= 'ip';

}
