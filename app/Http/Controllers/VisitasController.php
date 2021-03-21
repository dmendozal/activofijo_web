<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Tracer;
use Exception;
use DB;
class VisitasController extends Controller
{
 
    public static function hit() {
      $fecha=getdate();
      $f=$fecha['year']."-".$fecha['mon']."-".$fecha['mday'];
      try{
        $visitas=DB::Table('visita')->where('ip','=',$_SERVER['REMOTE_ADDR'])->whereDate('fecha','=',$f)->get();
        if(sizeof($visitas)==0){
          $visitas=new Tracer();
          $visitas->fecha=$fecha['mday']."/".$fecha['mon']."/".$fecha['year'];
          $visitas->ip=$_SERVER['REMOTE_ADDR'];
          $visitas->visita=1;
          $visitas->estado='0';
          $visitas->save();
        }else{
          DB::Table('visita')
          ->where('ip','=',$visitas[0]->ip)
          ->where('estado','=','1')
          ->whereDate('fecha','=',$visitas[0]->fecha)
          ->update(['visita'=>$visitas[0]->visita+1,'estado'=>'0']);
        }
      }catch(Exception $e){
        dd($e);
      }
    }

    public static function cantidad(){
      $cantidad=Tracer::all();
      $counted = $cantidad->sum(['visita']);
      return $counted;
    }

}
