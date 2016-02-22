<?php
	class Bases extends CI_Model
	{
		public function __construct() {
                parent::__construct();
            $this->load->helper('string');
    }

	public function attributes($table)
		{
			$sql="SHOW COLUMNS FROM ".$table;
	        $query=$this->db->query($sql);
	        $resultado=$query->result();
	        foreach ($resultado as $value) {
	        	$data[]=$value->Field;
	        }
	        return $data;
		}
	
	public function insert($data,$table)
	{	
		$atributos=$this->attributes($table);
		$datos = array();
		for($i=0;$i<count($atributos);$i++){
			if($atributos[$i]!='id_'.$table){
				$datos[$atributos[$i]]=$data[$atributos[$i]];
			}else{
			$datos['id_'.$table]=0;
			}
		}
		$this->db->insert($table,$datos);
		return 'OK';
	}

	public function delete($table,$id){
				$data=array('estado'=>1);
				$this->db->where('id_'.$table,$id);
				$this->db->update($table,$data);
			return 'OK';
	}

	public function update($data,$table,$id)
	{
		
		$atributos=$this->attributes($table);
		$datos = array();
		for($i=0;$i<count($atributos);$i++){
			$datos[$atributos[$i]]=$data[$atributos[$i]];
		}
		 $this->db->update($table, $datos,['id_'.$table => $id]);
        return "OK";
	}

	public function all($table){
		$query = $this->db->get_where($table,['estado' =>'0']);
        return $query->result();
	}

		public function insertfile($data,$table,$namefile)
	{
		$atributos=$this->attributes($table);
		$datos = array();

		var_dump($_FILES[$namefile]['name']);
		exit();
	$ruta = './public/images' . $table . "/";
            $mi_archivo = $namefile;
            $config['upload_path'] = $ruta;
            $config['allowed_types'] = 'png|jpg';
            $config['file_name'] = $_FILES[$namefile]['name'];
            $config['max_size'] = '5000';
            $config['max_width'] = '2024';
            $config['max_height'] = '2008';
		for($i=0;$i<count($atributos);$i++){
			if($atributos[$i]!='id_'.$table){
					if($atributos[$i]==$namefile){
						$datos[$atributos[$i]]=$_FILES[$namefile]['name'];
					}else{
					$datos[$atributos[$i]]=$data[$atributos[$i]];
					}	
			}else{
			$datos['id_'.$table]=0;
			}
		}

			$this->load->library('upload', $config);
		 	 if (!$this->upload->do_upload($mi_archivo)) {
                                  return "Se ha Producido un error al cargar su imagen";
            } else {
			$this->db->insert($table,$datos);
				return 'OK';

            }
		
	}


	}
?>