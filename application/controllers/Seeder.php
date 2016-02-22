<?php
defined('BASEPATH') OR exit('No direct script access allowed');
require 'application/controllers/Base.php';
class Seeder extends Base {
private $faker;
    public function __construct(){
        parent::__construct();
        if(!$this->input->is_cli_request()){
            exit('No se puede acceder desde el navegador');
        }
        if(ENVIRONMENT !=='development'){
            exit('Solo valido para entorno de desarrolllo');

        }
        $this->faker=Faker\Factory::create();
    }

    public function cliente(){
        echo 'Seeding clientes table'.PHP_EOL;
    for($i=0;$i<100;$i++){
        $data=[
          'nombres'=>$this->faker->firstName,
          'apellidos'=>$this->faker->lastName,
          'dni'=>$this->faker->randomNumber(8),
          'direccion'=>$this->faker->streetAddress,
          'coorx'=>$this->faker->randomNumber(8),
          'coory'=>$this->faker->randomNumber(8),
          'monto'=>$this->faker->randomNumber(4),
        ];
        $this->db->insert('cliente',$data);
    }
        echo "Seeder terminado";
    }

}