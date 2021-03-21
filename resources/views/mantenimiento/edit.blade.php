@extends('layouts.app')
@section('title', 'Formulario de Edicion')

@section('content')
<div class="col-lg-12 col-12 mb-20">
    <h6 class="mb-15">Formulario de Registro</h6>
    @if ($errors->any())
    <div class="alert alert-danger">
        <h6>Por favor corrige los errores debajo:</h6>
        <ul>
            @foreach ($errors->all() as $error)
            <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
    @endif
    <form action="{{ route('mantenimiento.update',[$mantenimiento->idmantenimiento])}}" method="POST"
        enctype="multipart/form-data">
        @csrf
        @method('PUT')
        <div class="row mbn-15">
            <div class="col-6 mb-15">
                <label>Fecha de Ingreso</label>
                <input type="date" class="form-control" name="fecha_ingreso" id="fecha_ingreso"
                    value="{{ $mantenimiento->fecha_ingreso }}" required />
            </div>
            <div class="col-6 mb-15">
                <label>Fecha de Devolucion</label>
                <input type="date" class="form-control" name="fecha_devolucion" id="fecha_devolucion"
                    value="{{ $mantenimiento->fecha_devolucion }}" required />
            </div>
            <div class="col-6 mb-15">
                <label>Detalle</label>
                <input type="text" class="form-control" name="detalle" id="detalle"
                    value="{{ $mantenimiento->detalle }}" required />
            </div>
            <div class="col-6 mb-15">
                <label>Monto</label>
                <input type="text" class="form-control" name="monto" id="monto" value="{{ $mantenimiento->monto }}"
                    required />
            </div>
            <div class="col-6 mb-15">
                <label for="tipo" style="margin-bottom: 0%">Tipo</label>
                <select name="tipo" id="tipo" class="form-control select2">
                    <option value="{{ $mantenimiento->tipo }}">
                        {{ $mantenimiento->tipo }}
                    </option>
                    <option value="MANT. CORRECTIVO">
                        MANT. CORRECTIVO
                    </option>
                    <option value="MANT. PREVENTIVO">
                        MANT. PREVENTIVO
                    </option>
                </select>
            </div>
            <div class="col-6 mb-15">
                <label for="fkidempresa">Empresa</label>
                <select name="fkidempresa" id="fkidempresa" class="form-control select2">
                    <option value="{{ $mantenimiento->fkidempresa }}">
                        {{ $mantenimiento->empresa->razon_social }}
                    </option>
                    @foreach($empresas as $empresa)
                    <option value="{{ $empresa->idempresa }}">
                        {{ $empresa->razon_social }}
                    </option>
                    @endforeach
                </select>
            </div>
            <div class="col-6 mb-15">
                <label for="fkidactivo">Activo</label>
                <select name="fkidactivo" id="fkidactivo" class="form-control select2">
                    <option value="{{ $mantenimiento->fkidactivo }}">
                        {{ $mantenimiento->activo->bien->nombre }}
                    </option>
                    @foreach($activos as $activo)
                    <option value="{{ $activo->idactivo}}">
                        {{ $activo->bien->nombre }}
                    </option>
                    @endforeach
                </select>
            </div>
        </div>
        <br>
        <center>
            <button type="submit" class="button button-primary button-sm">Guardar Cambios</button>
            <a class="button button-danger button-sm" href="{{ route('activo.index') }}">Cancelar</a></center>
    </form>
</div>
@endsection
