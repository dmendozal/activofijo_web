@extends('layouts.app')
@section('title', 'Detalle de Ubicacion')
@section('content')
<div class="col-lg-12 col-12 mb-20">
    <div class="card">
        <div class="card-header">
            Detalle del Estado
        </div>
        <div class="card-body">
            <table class="table table-bordered table-striped">
                <tbody>
                    <tr>
                        <th>
                            Nro
                        </th>
                        <td>
                            {{ $ubicacion->idubicacion }}
                        </td>
                    </tr>
                    <tr>
                        <th>
                            Sigla
                        </th>
                        <td>
                            {{ $ubicacion->sigla }}
                        </td>
                    </tr>
                    <tr>
                        <th>
                            Tipo
                        </th>
                        <td>
                            {{ $ubicacion->tipo }}
                        </td>
                    </tr>
                    <tr>
                        <th>
                            Estado
                        </th>
                        <td>
                            {{ $ubicacion->estado==1?'Activo':'Inactivo' }}
                        </td>
                    </tr>
                </tbody>
            </table>
            <div>
                <a class="button button-danger button-sm" href="{{ route('ubicacion.index') }}">Cancelar</a> </div>
        </div>
    </div>
</div>
</div>
@endsection
