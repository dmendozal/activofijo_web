<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Visitas extends Model
{
    public $attributes = [ 'visitas' => 0 ];

    protected $fillable = [ 'ip', 'fecha' ];
    protected $table = 'table_name';

    public static function boot() {
        // Any time the instance is updated (but not created)
        static::saving( function ($tracker) {
            $tracker->visit_time = date('H:i:s');
            $tracker->visitas++;
        } );
    }

    public static function hit() {
        static::firstOrCreate([
                  'ip'   => $_SERVER['REMOTE_ADDR'],
                  'fecha' => date('Y-m-d'),
              ])->save();
    }
    
}
