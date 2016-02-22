<?php

class Ventajas extends CI_Model{		
	public $atributos;
	public $table='ventaja';
		public function allForTable(){
            $buscar=$this->input->get("search");
            $buscar1=$this->input->get("jtStartIndex");
            $buscar2=$this->input->get("jtPageSize");
            if($buscar!=""){
            $query =  $this->db->from($this->table)->where('estado',0)->like('nombre_ventaja',$buscar)->or_like('descripcion',$buscar)->limit($buscar1,$buscar2)->get();
            }else{
            $query =  $this->db->from($this->table)->where('estado',0)->limit($buscar1,$buscar2)->get();                
            }
        	$rows=$query->result();
 			$datos = array();
        	$datos['Result'] = "OK";
        	$datos['Records'] = $rows;
            $datos["jtPageSize"] = count($rows);
       return  $this->output
            ->set_content_type('application/json')
            ->set_output(json_encode($datos));
    }

    	}

	
