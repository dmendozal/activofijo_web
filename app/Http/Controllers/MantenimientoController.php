<?php

namespace App\Http\Controllers;

use App\Activo;
use App\Empresa;
use App\Http\Requests\StoreMantenimientoRequest;
use App\Http\Requests\UpdateMantenimientoRequest;
use App\Mantenimiento;
use Session;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;

class MantenimientoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        abort_unless(\Gate::allows('mantenimiento.acceso'), 403);
        $mantenimientos = Mantenimiento::all()->where('estado', '1');
        return view('mantenimiento.index', compact('mantenimientos'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        abort_unless(\Gate::allows('mantenimiento.crear'), 403);
        $empresas = Empresa::all()->where('estado', '1');
        $activos = Activo::all()->where('estado', '1');
        return view('mantenimiento.create', compact('empresas', 'activos'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreMantenimientoRequest $request)
    {
        $mantenimiento = new Mantenimiento();
        $mantenimiento->fecha_ingreso = $request->fecha_ingreso;
        $mantenimiento->fecha_devolucion = $request->fecha_devolucion;
        $mantenimiento->detalle = $request->detalle;
        $mantenimiento->monto = $request->monto;
        $mantenimiento->fkidactivo = $request->fkidactivo;
        $mantenimiento->fkidempresa = $request->fkidempresa;
        $mantenimiento->tipo = $request->tipo;
        $mantenimiento->save();
        Session::flash('save', 'Se ha guardado correctamente');
        return redirect()->route('mantenimiento.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        abort_unless(\Gate::allows('mantenimiento.detalle'), 403);
        $mantenimiento = Mantenimiento::find($id);
        return view('mantenimiento.show', compact('mantenimiento'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        abort_unless(\Gate::allows('mantenimiento.editar'), 403);
        $mantenimiento = Mantenimiento::find($id);
        $empresas = Empresa::all()->where('estado', '1');
        $activos = Activo::all()->where('estado', '1');
        return view('mantenimiento.edit', compact('mantenimiento', 'empresas', 'activos'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateMantenimientoRequest $request, $id)
    {
        $mantenimiento = Mantenimiento::find($id);
        $mantenimiento->fecha_ingreso = $request->fecha_ingreso;
        $mantenimiento->fecha_devolucion = $request->fecha_devolucion;
        $mantenimiento->detalle = $request->detalle;
        $mantenimiento->monto = $request->monto;
        $mantenimiento->fkidactivo = $request->fkidactivo;
        $mantenimiento->fkidempresa = $request->fkidempresa;
        $mantenimiento->tipo = $request->tipo;
        $mantenimiento->update();
        Session::flash('update', 'Se ha actualizado correctamente');
        return redirect()->route('mantenimiento.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        abort_unless(\Gate::allows('mantenimiento.eliminar'), 403);
        $mantenimiento = Mantenimiento::find($id);
        $mantenimiento->estado = '0';
        $mantenimiento->update();
        Session::flash('delete', 'Se ha eliminado correctamente');
        return redirect()->route('mantenimiento.index');
    }
}
