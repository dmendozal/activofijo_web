@extends('layouts.app')
@section('title', 'Gestion de Asignacion')
@section('content')
<div style="margin-bottom: 10px;" class="row">
    <div class="col-lg-12">
        <a class="button button-success button-sm" href="{{route('asignacion.create')}}">
            Asignar Activo
        </a>
    </div>
</div>

<div class="card">
    <div class="card-header">
        Lista de Asignaciones
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
                                <th>Usuario</th>
                                <th>Activos</th>
                                <th>Acciones</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($usuarios as $key => $user)
                            <tr data-entry-id="{{ $key }}">
                                <td>{{ $key+1 }}</td>
                                <td>{{ $user->name }}</td>
                                <td>
                                    <a class="btn btn-xs btn-primary button-sm"
                                        href="{{route('asignacion.show', $user->id)}}">
                                        Ver
                                    </a>
                                </td>
                                <td>
                                    <a class="btn btn-xs btn-info button-sm"
                                        href="{{route('asignacion.edit', $user->id)}}">
                                        Editar
                                    </a>
                                </td>
                            </tr>
                            @endforeach
                        </tbody>
                        <tfoot>
                            <tr>
                                <th>Nro</th>
                                <th>Usuario</th>
                                <th>Activos</th>
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
