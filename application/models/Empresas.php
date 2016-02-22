<?php

class Empresas extends CI_Model{		
	public $atributos;
	public $table='empresa';
		public function allForTable(){
			$query = $this->db->get_where($this->table,['estado' =>'0']);
        	 $rows=$query->result();
 			$datos = array();
        	$datos['Result'] = "OK";
        	$datos['Records'] = $rows;
       return  $this->output
            ->set_content_type('application/json')
            ->set_output(json_encode($datos));
    }

    	}

	
