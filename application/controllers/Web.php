<?php
require 'application/controllers/Base.php';
class Web extends Base
{
	 public function __construct()
    {
        parent::__construct();

        $this->layout->setLayout('webtpl');

    }

    public function index(){
      

    	$this->layout->view('index');
    }

    public function somos(){
        $somosx=$this->all("empresa");
        $misionx=$this->all("mision");
          $vision=$this->all("vision");
           $ventajas=$this->all("ventaja");
            $competencia=$this->all("competencia");

             $data =array(
    "descripcion" => $somosx[0]->descripcion ,
    "mision" => $misionx[0]->mision ,
    "vision" => $vision[0]->vision ,
    "ventaja"=> $ventajas,
    "competencia"=> $competencia
    );

 // var_dump($data);exit();
       		$this->layout->view('somos',compact("data"));
    }

    public function servicios(){

    			$this->layout->view('index');
    }

     public function personal(){

             // $data=$this->all("personal");
               $consulta = $this->db->query("SELECT
personal.apellidop,
det_equipo.cargo,
equipo.nombre_equipo,
equipo.descripcion as equipodesc,
equipo.img,
equipo.estado as esequipo,
det_equipo.estado,
personal.apellidom,
personal.grado_titulo,
personal.telefono,
personal.cel,
personal.rpm,
personal.rpc,
personal.nombre,
personal.email,
personal.direccion,
personal.ciudad,
personal.descripcion,
personal.foto,
personal.estado 
FROM
equipo
INNER JOIN det_equipo ON det_equipo.id_equipo = equipo.id_equipo
INNER JOIN personal ON det_equipo.id_personal = personal.id_personal
where personal.estado =0;"); 
                $data = $consulta->result();
         //  var_dump($resultado);exit();
        $this->layout->view('personal',compact("data"));
    }

    public function testimonios(){


          $data=$this->all("testimonio");
          //var_dump($data);
    	$this->layout->view('testimonios',compact("data"));
    }

    public function contactenos(){


    		$this->layout->view('index');
    }
}

?>