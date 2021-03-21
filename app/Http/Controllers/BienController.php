<?php

namespace App\Http\Controllers;

use App\Bien;
use Illuminate\Http\Request;
use App\Http\Requests\StoreBienRequest;
use App\Http\Requests\UpdateBienRequest;
use Session;

class BienController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $bienes = Bien::all()->where('estado', '1');
        return view('bien.index', compact('bienes'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('bien.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreBienRequest $request)
    {
        Bien::create($request->all());
        Session::flash('save', 'Se ha guardado correctamente');
        return redirect()->route('bien.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Bien $bien)
    {
        return view('bien.show', compact('bien'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Bien $bien)
    {
        return view('bien.edit', compact('bien'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateBienRequest $request, Bien $bien)
    {
        $bien->update($request->all());
        Session::flash('update', 'Se ha actualizado correctamente');
        return redirect()->route('bien.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Bien $bien)
    {
        $bien->update(['estado' => '0']);
        Session::flash('delete', 'Se ha eliminado correctamente');
        return redirect()->route('bien.index');
    }
}
