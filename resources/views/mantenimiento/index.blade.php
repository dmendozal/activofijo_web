@extends('layouts.app')
@section('title', 'Gestion de Activos')
@section('content')
<div style="margin-bottom: 10px;" class="row">
    <div class="col-lg-12">
        <a class="button button-success button-sm" href="{{route('mantenimiento.create')}}">
            Registrar Mantenimiento
        </a>
    </div>
</div>

<div class="card">
    <div class="card-header">
        Lista de Mantenimiento
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
                                <th>Fecha de Ingreso </th>
                                <th>Fecha de Devolucion</th>
                                <th>Activo</th>
                                <th>Empresa</th>
                                <th>Detalle</th>
                                <th>Tipo</th>
                                <th>Monto</th>
                                <th>Acciones</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($mantenimientos as $key => $mantenimiento)
                            <tr data-entry-id="{{ $key }}">
                                <td>{{ $key+1 }}</td>
                                <td>{{ $mantenimiento->fecha_ingreso }}</td>
                                <td>{{ $mantenimiento->fecha_devolucion }}</td>
                                <td>{{ $mantenimiento->activo->bien->nombre }}</td>
                                <td>{{ $mantenimiento->empresa->razon_social }}</td>
                                <td>{{ $mantenimiento->detalle }}</td>
                                <td>{{ $mantenimiento->tipo }}</td>
                                <td>{{ $mantenimiento->monto}}</td>
                                <td>
                                    <a class="button button-primary button-sm"
                                        href="{{ route('mantenimiento.show', $mantenimiento->idmantenimiento) }}">
                                        Mostrar
                                    </a>
                                    <a class="button button-info button-sm"
                                        href="{{ route('mantenimiento.edit', $mantenimiento->idmantenimiento) }}">
                                        Editar
                                    </a>
                                    <form action="{{ route('mantenimiento.destroy', $mantenimiento->idmantenimiento) }}"
                                        method="POST" onsubmit="return confirm('¿Está seguro?');"
                                        style="display: inline-block;">
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
                                <th>Fecha de Ingreso </th>
                                <th>Fecha de Devolucion</th>
                                <th>Activo</th>
                                <th>Empresa</th>
                                <th>Detalle</th>
                                <th>Tipo</th>
                                <th>Monto</th>
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
