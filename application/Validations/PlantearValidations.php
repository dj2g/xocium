<?php

class PlantearValidations {
   public $rules;
    public function rules(){
    	$this->rules=[
        [
            'field'   => 'mision',
            'rules'   => 'required',
            'errors' => array(
                'required' => 'Ingrese los mision'
            ),
        ],
        [
            'field'   => 'vision',
            'rules'   => 'required',
            'errors' => array(
                'required' => 'Ingrese el vision '
            ),
        ]
    ];
    return $this->rules;
    }
}