<?php
/**
* Denys
*/
require_once 'application/controllers/Base.php';
require 'application/Validations/EmpresaValidations.php';
class Empresa extends Base
{
	public $atributos;
	public $table='empresa';
    public $validate;
	public function __construct() 
	{
          	parent::__construct();
       		if ($this->session->userdata('islogued') != TRUE) {
            redirect(base_url('admin'));
        	}
	        $this->layout->setLayout('admintpl');
	        $this->atributos=$this->attributes('empresa');
	        $this->load->model("Empresas");
	        $this->layout->js([$this->config->item('base_archivos_url') . "js/modulos/empresa/empresa.js"]);
            $this->load->library('form_validation');
            $this->validate=new EmpresaValidations();
	 }
    public function index(){
         $this->load->helper('form');
        if ($this->input->post()) {
            $this->load->helper('form');
            $this->form_validation->set_rules($this->validate->rules());
            if ($this->form_validation->run() == FALSE) {
                $this->layout->view("index");
            }else{
                if($this->input->post("id_empresa")==0){
                    $this->inserta($this->input->post(),$this->table);
                }else{
                    $this->update($this->input->post(),$this->table,$this->input->post("id_empresa"));
                }
                
                    $data=$this->all($this->table);
                 $this->layout->view("index",compact('data'));
            }
        }else{
            $this->load->helper('form');
            $this->load->library('form_validation');
    		$data=$this->all($this->table);
    	$this->layout->view("index",compact('data'));
        }
    }

    public function nuevo(){
		$this->layout->view("nuevo");
    }

    public function eliminar(){
    	return $this->ResponseJson($data=$this->delete($this->table,$this->input->get("id_empresa")));
    }

    public function actualizar(){

    }

    public function allForTable(){
    	return $this->Empresas->allForTable();
    }






}

?>