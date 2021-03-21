<?php

namespace App\Http\Controllers;

use App\Activo;
use App\Bien;
use App\Estado;
use App\Http\Requests\StoreActivoRequest;
use App\Proveedor;
use App\Ubicacion;
use Illuminate\Http\Request;
use Session;

class ActivoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        abort_unless(\Gate::allows('activo.acceso'), 403);
        $activos = Activo::all()->where('estado', '1');
        return view('activo.index', compact('activos'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        abort_unless(\Gate::allows('activo.crear'), 403);
        $estados = Estado::all()->where('estado', '1');
        $ubicaciones = Ubicacion::all()->where('estado', '1');
        $bienes = Bien::all()->where('estado', '1');
        $proveedores = Proveedor::all();
        return view('activo.create', compact('estados', 'ubicaciones', 'bienes', 'proveedores'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreActivoRequest $request)
    {
        $request->merge(['qr' => 'assets/images/Qr' . $request->input('codigo') . '.png']);
        $Activo = Activo::create($request->all());
        Activo::generateQR($request->input('codigo'), $Activo->ubicacion->aula, $Activo->ubicacion->piso);
        Session::flash('save', 'Se ha guardado correctamente');
        return redirect()->route('activo.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  Activo  $activo
     * @return \Illuminate\Http\Response
     */
    public function show(Activo $activo)
    {
        abort_unless(\Gate::allows('activo.detalle'), 403);
        return view('activo.show', compact('activo'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  Activo  $activo
     * @return \Illuminate\Http\Response
     */
    public function edit(Activo $activo)
    {
        abort_unless(\Gate::allows('activo.crear'), 403);
        $estados = Estado::all()->where('estado', '1');
        $ubicaciones = Ubicacion::all()->where('estado', '1');
        $bienes = Bien::all()->where('estado', '1');
        $proveedores = Proveedor::all();
        return view('activo.edit', compact('estados', 'ubicaciones', 'bienes', 'proveedores', 'activo'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  Activo  $activo
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Activo $activo)
    {
        $activo->update($request->all());
        Session::flash('update', 'Se ha actualizado correctamente');
        return redirect()->route('activo.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Activo $activo)
    {
        abort_unless(\Gate::allows('activo.eliminar'), 403);
        $activo->update(['estado' => '0']);
        Session::flash('delete', 'Se ha eliminado correctamente');
        return redirect()->route('activo.index');
    }
}
