@extends('layouts.app')
@section('title', 'Formulario de registro')
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
    <form action="{{route('mantenimiento.store')}}" method="POST" enctype="multipart/form-data">
        @csrf
        <div class="row mbn-15">
            <div class="col-6 mb-15 ">
                <label for="fecha_ingreso">Fecha de Ingreso </label>
                <input type="date" class="form-control" name="fecha_ingreso" id="fecha_ingreso" required />
                @if($errors->has('fecha_ingreso'))
                <em class="invalid-feedback">
                    <p>{{ $errors->first() }}</p>
                </em>
                @endif
            </div>
            <div class="col-6 mb-15 ">
                <label for="fecha_devolucion">Fecha de Devolucion</label>
                <input type="date" class="form-control" name="fecha_devolucion" id="fecha_devolucion" required />
                @if($errors->has('fecha_devolucion'))
                <em class="invalid-feedback">
                    <p>{{ $errors->first() }}</p>
                </em>
                @endif
            </div>
            <div class="col-6 mb-15 ">
                <label for="detalle">Detalle</label>
                <input type="text" class="form-control" name="detalle" id="detalle" required />
                @if($errors->has('detalle'))
                <em class="invalid-feedback">
                    <p>{{ $errors->first() }}</p>
                </em>
                @endif
            </div>
            <div class="col-6 mb-15 ">
                <label for="monto">Monto</label>
                <input type="number" class="form-control" name="monto" id="monto" required />
                @if($errors->has('monto'))
                <em class="invalid-feedback">
                    <p>{{ $errors->first() }}</p>
                </em>
                @endif
            </div>
            <div class="col-6 mb-15">
                <label for="fkidactivo">Activo</label>
                <select name="fkidactivo" id="fkidactivo" class="form-control select2" required>
                    <option value="">
                        --SELECCIONAR--
                    </option>
                    @foreach($activos as $activo)
                    <option value="{{ $activo->idactivo }}">
                        {{ $activo->bien->nombre }}
                    </option>
                    @endforeach
                </select>
            </div>
            <div class="col-6 mb-15">
                <label for="tipo">Tipo</label>
                <select name="tipo" id="tipo" class="form-control select2" required>
                    <option value="">
                        --SELECCIONAR--
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
                <select name="fkidempresa" id="fkidempresa" class="form-control select2" required>
                    <option value="">
                        --SELECCIONAR--
                    </option>
                    @foreach($empresas as $empresa)
                    <option value="{{ $empresa->idempresa }}">
                        {{ $empresa->razon_social }}
                    </option>
                    @endforeach
                </select>
            </div>
        </div>
        <br>
        <center>
            <button type="submit" class="button button-primary button-sm">Registrar Mantenimiento</button>
            <a class="button button-danger button-sm" href="{{ route('mantenimiento.index') }}">Cancelar</a></center>
    </form>
</div>
@endsection
