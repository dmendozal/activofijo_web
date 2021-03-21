@extends('layouts.app')
@section('title', 'Detalle del Mantenimiento')
@section('content')
<div class="col-lg-12 col-12 mb-20">
    <div class="card">
        <div class="card-header">
            Detalle de Mantenimiento
        </div>
        <div class="card-body">
            <table class="table table-bordered table-striped">
                <tbody>
                    <tr>
                        <th>
                            Nro
                        </th>
                        <td>
                            {{ $mantenimiento->idmantenimiento }}
                        </td>
                    </tr>
                    <tr>
                        <th>
                            Fecha de Ingreso
                        </th>
                        <td>
                            {{ $mantenimiento->fecha_ingreso }}
                        </td>
                    </tr>
                    <tr>
                        <th>
                            Fecha de Devolucion
                        </th>
                        <td>
                            {{ $mantenimiento->fecha_devolucion }}
                        </td>
                    </tr>
                    <tr>
                        <th>
                            Activo
                        </th>
                        <td>
                            {{ $mantenimiento->activo->bien->nombre }}
                        </td>
                    </tr>
                    <tr>
                        <th>
                            Empresa
                        </th>
                        <td>
                            {{ $mantenimiento->empresa->razon_social }}
                        </td>
                    </tr>
                    <tr>
                        <th>
                            Tipo
                        </th>
                        <td>
                            {{ $mantenimiento->tipo }}
                        </td>
                    </tr>
                    <tr>
                        <th>
                            Monto
                        </th>
                        <td>
                            {{ $mantenimiento->monto }}
                        </td>
                    </tr>
                    <tr>
                        <th>
                            Estado
                        </th>
                        <td>
                            {{ $mantenimiento->estado==1?'Activo':'Inactivo' }}
                        </td>
                    </tr>

                </tbody>
            </table>
            <div>
                <a class="button button-danger button-sm" href="{{ route('mantenimiento.index') }}">Cancelar</a> </div>
        </div>
    </div>
</div>
@endsection
