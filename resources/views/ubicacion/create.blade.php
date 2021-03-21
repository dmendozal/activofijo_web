@extends('layouts.app')
@section('title', 'Formulario de Registro')
@section('content')

<div class="col-lg-12 col-12 mb-20">
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
    <h6 class="mb-15">Formulario de Registro</h6>
    <form action="{{ route('ubicacion.store')}}" method="POST">
        @csrf
        <div class="row mbn-15">
            <div class="col-6 mb-15">
                <label>Sigla
                    <input type="text" class="form-control" placeholder="Ej: AL1" name="sigla" id="sigla" />
                </label>
            </div>
            <div class="col-6 mb-15">
                <label>Tipo
                    <input type="text" class="form-control" placeholder="Ej: Aula" name="tipo" id="tipo" />
                </label>
            </div>
        </div>
        <br>
        <center>
            <button type="submit" class="button button-primary button-sm">Registrar Ubicacion</button>
            <a class="button button-danger button-sm" href="{{ route('ubicacion.index') }}">Cancelar</a></center>
    </form>
</div>
@endsection
