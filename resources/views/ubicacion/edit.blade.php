@extends('layouts.app')
@section('title', 'Formulario de Edicion')
@section('content')
<div class="col-lg-12 col-12 mb-20">
    <h6 class="mb-15">Formulario de Edicion</h6>
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
    <form action="{{route('ubicacion.update',[$ubicacion->idubicacion])}}" method="POST" enctype="multipart/form-data">
        @csrf
        @method('PUT')
        <div class="row mbn-15">
            <div class="col-6 mb-15">
                <label>Sigla
                    <input type="text" class="form-control" name="sigla" id="sigla" value="{{ $ubicacion->sigla }}" />
                </label>
            </div>
            <div class="col-6 mb-15">
                <label>Tipo
                    <input type="text" class="form-control" name="tipo" id="tipo" value="{{ $ubicacion->tipo }}" />
                </label>
            </div>
        </div>
        <br>
        <center>
            <button type="submit" class="button button-primary button-sm">Guardar Cambios</button>
            <a class="button button-danger button-sm" href="{{ route('ubicacion.index') }}">Cancelar</a></center>
    </form>
</div>
@endsection
