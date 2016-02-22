<?php

class VentajaValidations {
   public $rules;
    public function rules(){
    	$this->rules=[
        [
            'field'   => 'nombre_ventaja',
            'rules'   => 'required',
            'errors' => array(
                'required' => 'Ingrese los nombre_ventaja'
            ),
        ],
        [
            'field'   => 'descripcion',
            'rules'   => 'required',
            'errors' => array(
                'required' => 'Ingrese el descripcion '
            ),
        ]
    ];
    return $this->rules;
    }
}