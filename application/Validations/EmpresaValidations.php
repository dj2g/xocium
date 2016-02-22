<?php

class EmpresaValidations {
   public $rules;
    public function rules(){
    	$this->rules=[
        [
            'field'   => 'nombre',
            'rules'   => 'required',
            'errors' => array(
                'required' => 'Ingrese los nombre'
            ),
        ],
        [
            'field'   => 'razon_social',
            'rules'   => 'required',
            'errors' => array(
                'required' => 'Ingrese el razon_social '
            ),
        ],
        [
            'field'   => 'ruc',
            'rules'   => 'required',
            'errors' => array(
                'required' => 'Ingrese el ruc '
            ),
        ],
        [
            'field'   => 'direccion',
            'rules'   => 'required',
            'errors' => array(
                'required' => 'Ingrese el direccion '
            ),
        ],
        [
            'field'   => 'telefono',
            'rules'   => 'required',
            'errors' => array(
                'required' => 'Ingrese el telefono '
            ),
        ],
        [
            'field'   => 'rpm',
            'rules'   => 'required',
            'errors' => array(
                'required' => 'Ingrese el rpm '
            ),
        ],
        [
            'field'   => 'rpc',
            'rules'   => 'required',
            'errors' => array(
                'required' => 'Ingrese el rpc '
            ),
        ],
        [
            'field'   => 'ciudad',
            'rules'   => 'required',
            'errors' => array(
                'required' => 'Ingrese el ciudad '
            ),
        ],
        [
            'field'   => 'departamento',
            'rules'   => 'required',
            'errors' => array(
                'required' => 'Ingrese el departamento '
            ),
        ],
        [
            'field'   => 'descripcion',
            'rules'   => 'required',
            'errors' => array(
                'required' => 'Ingrese el descripcion '
            ),
        ],
        [
            'field'   => 'rec_titulo',
            'rules'   => 'required',
            'errors' => array(
                'required' => 'Ingrese el rec_titulo '
            ),
        ],
        [
            'field'   => 'rec_descripcion',
            'rules'   => 'required',
            'errors' => array(
                'required' => 'Ingrese el rec_descripcion '
            ),
        ],
        [
            'field'   => 'email',
            'rules'   => 'required',
            'errors' => array(
                'required' => 'Ingrese el email '
            ),
        ]
    ];
    return $this->rules;
    }
}