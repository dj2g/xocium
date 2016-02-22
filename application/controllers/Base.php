<?php
/**
* 
*/
class Base extends CI_Controller
{
	public function __construct() {
                parent::__construct();
            $this->load->model("Bases","Model_Base");
    }

    public function attributes($table){
    		return $this->Model_Base->attributes($table);
    }

    public function inserta($data=array(),$table){
    	return $this->Model_Base->insert($data,$table);
    }

    public function delete($table,$id){
    		return $this->Model_Base->delete($table,$id);
    }

    public function update($data=array(),$table,$id){
    			return $this->Model_Base->update($data,$table,$id);	
    }

    public function all($table){
    		return $this->Model_Base->all($table);
    }

    public function ResponseJson($datos,$error=""){
        return  $this->output
            ->set_content_type('application/json')
            ->set_output(json_encode(array(
                        "Result" => 'OK',
                        "Records"=>$datos,
                        "Error"=>$error
                        )));

    }

    public function insertafile($data=array(),$table,$img){
            return $this->Model_Base->insertfile($data,$table,$img);
    }

}

?>