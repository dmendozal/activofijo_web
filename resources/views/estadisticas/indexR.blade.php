@extends('layouts.app')
@section('title', 'Gestion de Bienes')
@section('content')

<div class="card">
    <div class="card-header">
        Reporte de Personal y sus respectivos activos
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
                                <th>#</th>
                                <th>Nombre</th>
                                <th>Apellido</th>
                                <th>Codigo del activo</th>
                                <th>Nombre del activo</th>
                                <th>Fecha adquirida</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($reportes as $key => $reporte)
                            <tr data-entry-id="{{ $key }}">
                                <td>{{ $key+1 }}</td>
                                <td>{{ $reporte->name }}</td>
                                <td>{{ $reporte->apellido }}</td>
                                <td>{{ $reporte->codigo }}</td>
                                <td>{{ $reporte->nombre }}</td>
                                <td>{{ $reporte->fecha_adquisicion}}</td>
                            </tr>
                            @endforeach
                        </tbody>
                        <tfoot>
                            <tr>
                              <th>#</th>
                              <th>Nombre</th>
                              <th>Apellido</th>
                              <th>Codigo del activo</th>
                              <th>Nombre del activo</th>
                              <th>Fecha adquirida</th>      
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
