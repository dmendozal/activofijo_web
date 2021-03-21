<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UpdateMantenimientoRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'fecha_ingreso'     => [
                'required'
            ],
            'fecha_devolucion'    => [
                'required',
            ],
            'detalle' => [
                'required'
            ],
            'fkidactivo' => [
                'required', 'min:1'
            ],
            'fkidempresa' => [
                'required', 'min:1'
            ],
            'monto'  => [
                'required',
            ],
            'tipo'   => [
                'required',
                'max:20',
                'min:1'
            ],
        ];
    }
}
