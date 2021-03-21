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
    <form action="{{ route('activo.update',[$activo->idactivo])}}" method="POST" enctype="multipart/form-data">
        @csrf
        @method('PUT')
        <div class="row mbn-15">
            <div class="col-6 mb-15">
                <label>Codigo</label>
                <input type="text" class="form-control" name="codigo" id="codigo" value="{{ $activo->codigo }}"
                    required />
            </div>
            <div class="col-6 mb-15">
                <label>Fecha de Adquisicion</label>
                <input type="date" class="form-control" name="fecha_adquisicion" id="fecha_adquisicion"
                    value="{{ $activo->fecha_adquisicion }}" required />
            </div>
            <div class="col-6 mb-15">
                <label>Monto (Bs)</label>
                <input type="number" class="form-control" name="monto" id="monto" value="{{ $activo->monto }}"
                    required />
            </div>
            <div class="col-6 mb-15">
                <label>Garantia (Años)</label>
                <input type="number" class="form-control" name="garantia" id="garantia" value="{{ $activo->garantia }}"
                    required />
            </div>
            <div class="col-6 mb-15">
                <label for="estado" style="margin-bottom: 0%">Estado</label>
                <select name="estado" id="estado" class="form-control select2" required>
                    <option value="{{ $activo->fkidestado }}">
                        {{ $activo->state->nombre }}
                    </option>
                    @foreach($estados as $estado)
                    <option value="{{ $estado->idestado }}">
                        {{ $estado->nombre }}
                    </option>
                    @endforeach
                </select>
            </div>
            <div class="col-6 mb-15">
                <label for="fkidproveedor" style="margin-bottom: 0%">Proveedor</label>
                <select name="fkidproveedor" id="fkidproveedor" class="form-control select2" required>
                    <option value="{{ $activo->fkidproveedor }}">
                        {{ $activo->proveedor->razon_social }}
                    </option>
                    @foreach($proveedores as $proveedor)
                    <option value="{{ $proveedor->idproveedor }}">
                        {{ $proveedor->razon_social }}
                    </option>
                    @endforeach
                </select>
            </div>
            <div class="col-6 mb-15">
                <label for="bien">Bien</label>
                <select name="bien" id="bien" class="form-control select2" required>
                    <option value="{{ $activo->fkidbien }}">
                        {{ $activo->bien->nombre }}
                    </option>
                    @foreach($bienes as $bien)
                    <option value="{{ $bien->idbien }}">
                        {{ $bien->nombre }}
                    </option>
                    @endforeach
                </select>
            </div>
            <div class="col-6 mb-15">
                <label for="ubicacion">Ubicacion</label>
                <select name="ubicacion" id="ubicacion" class="form-control select2" required>
                    <option value="{{ $activo->fkidubicacion }}">
                        {{ "Aula: ".$activo->ubicacion->aula }}</td>
                    </option>
                    @foreach($ubicaciones as $ubicacion)
                    <option value="{{ $ubicacion->idubicacion }}">
                        {{ "Aula: ".$ubicacion->aula }}</td>
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
