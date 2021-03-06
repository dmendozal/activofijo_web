@extends('layouts.app')
@section('title', 'Gestion de Activos')
@section('content')
<div style="margin-bottom: 10px;" class="row">
    <div class="col-lg-12">
        <a class="button button-success button-sm" href="{{route('activo.create')}}">
            Registrar Activo
        </a>
    </div>
</div>

<div class="card">
    <div class="card-header">
        Lista de Activos
    </div>
    @include('partials.messages')
    <div class="row">
        <!--Export Data Table Start-->
        <div class="col-12 mb-30">
            <div class="box">

                <div class="box-body">
                    <table class="table table-bordered data-table data-table-export">
                        <thead>
                            <tr>
                                <th>Nro</th>
                                <th>Codigo </th>
                                <th>Bien</th>
                                <th>Ubicacion</th>
                                <th>Estado</th>
                                <th>Fecha de Adquisicion</th>
                                <th>Monto</th>
                                <th>Garantia</th>
                                <th>Qr</th>
                                <th>Acciones</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($activos as $key => $activo)
                            <tr data-entry-id="{{ $key }}">
                                <td>{{ $key+1 }}</td>
                                <td>{{ $activo->codigo }}</td>
                                <td>{{ $activo->bien->nombre }}</td>
                                <td>{{ " - Aula: ".$activo->ubicacion->aula }}</td>
                                <td>{{ $activo->state->nombre }}</td>
                                <td>{{ $activo->fecha_adquisicion }}</td>
                                <td>{{ $activo->monto }}</td>
                                <td>{{ $activo->garantia }}</td>
                                <td><img src="{{$activo->qr}}" style="height: 100px;width: auto" /></td>
                                <td>
                                    <a class="button button-primary button-sm"
                                        href="{{ route('activo.show', $activo->idactivo) }}">
                                        Mostrar
                                    </a>
                                    <a class="button button-info button-sm"
                                        href="{{ route('activo.edit', $activo->idactivo) }}">
                                        Editar
                                    </a>
                                    <form action="{{ route('activo.destroy', $activo->idactivo) }}" method="POST"
                                        onsubmit="return confirm('??Est?? seguro?');" style="display: inline-block;">
                                        <input type="hidden" name="_method" value="DELETE">
                                        <input type="hidden" name="_token" value="{{ csrf_token() }}">
                                        <input type="submit" class="button button-danger button-sm" value="Eliminar">
                                    </form>
                                </td>
                            </tr>
                            @endforeach
                        </tbody>
                        <tfoot>
                            <tr>
                                <th>Nro</th>
                                <th>Codigo </th>
                                <th>Bien</th>
                                <th>Ubicacion</th>
                                <th>Estado</th>
                                <th>Fecha de Adquisicion</th>
                                <th>Monto</th>
                                <th>Garantia</th>
                                <th>Qr</th>
                                <th>Acciones</th>
                            </tr>
                        </tfoot>
                    </table>

                </div>
            </div>
        </div>
        <!--Export Data Table End-->
    </div>
</div><!-- Content Body End -->
@endsection
