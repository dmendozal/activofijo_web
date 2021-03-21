<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreUbicacionRequest;
use App\Http\Requests\UpdateUbicacionRequest;
use App\Ubicacion;
use Illuminate\Http\Request;
use Session;

class UbicacionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        abort_unless(\Gate::allows('ubicacion.acceso'), 403);
        $ubicaciones = Ubicacion::all()->where('estado', '1');
        return view('ubicacion.index', compact('ubicaciones'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        abort_unless(\Gate::allows('ubicacion.crear'), 403);
        return view('ubicacion.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreUbicacionRequest $request)
    {
        Ubicacion::create($request->all());
        Session::flash('save', 'Se ha guardado correctamente');
        return redirect()->route('ubicacion.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Ubicacion $ubicacion)
    {
        abort_unless(\Gate::allows('ubicacion.detalle'), 403);
        return view('ubicacion.show', compact('ubicacion'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Ubicacion $ubicacion)
    {
        abort_unless(\Gate::allows('ubicacion.editar'), 403);
        return view('ubicacion.edit', compact('ubicacion'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateUbicacionRequest $request, Ubicacion $ubicacion)
    {
        $ubicacion->update($request->all());
        Session::flash('update', 'Se ha actualizado correctamente');
        return redirect()->route('ubicacion.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Ubicacion $ubicacion)
    {
        abort_unless(\Gate::allows('ubicacion.eliminar'), 403);
        $ubicacion->update(['estado' => '0']);
        Session::flash('delete', 'Se ha eliminado correctamente');
        return redirect()->route('ubicacion.index');
    }
}
