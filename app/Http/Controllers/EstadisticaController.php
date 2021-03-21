<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
class EstadisticaController extends Controller
{

    public function activosPorAula()
    {
      $estadistica=DB::Table('activo')  
      ->join('ubicacion','ubicacion.idubicacion','=','activo.fkidubicacion')
      ->select('ubicacion.sigla',DB::raw('count(*) as cantidad'))
      ->groupBy('sigla')->get();
      return view('estadisticas.index',compact('estadistica'));
    }
    public function activosPorAulaR()
    {
      $reportes=DB::Table('asignacion as asg')  
      ->join('users as u','u.id','=','asg.fkiduser')
      ->join('activo as ac','ac.idactivo','=','asg.fkidactivo')
      ->join('bien as bi','ac.fkidbien','=','bi.idbien')
      ->select('u.name','u.apellido','ac.codigo','bi.nombre','ac.fecha_adquisicion')->get();
      return view('estadisticas.indexR',compact('reportes'));
    }

    public function activosPorAulaycostos()
    {
      $estadistica=DB::Table('activo')  
      ->join('ubicacion','ubicacion.idubicacion','=','activo.fkidubicacion')
      ->select('ubicacion.sigla',DB::raw('sum(activo.monto) as cantidad'))
      ->groupBy('sigla')->get();
      return view('estadisticas.index1',compact('estadistica'));
    }
}
