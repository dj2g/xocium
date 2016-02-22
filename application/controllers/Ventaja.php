<?php
/**
* Denys
*/
require_once 'application/controllers/Base.php';
require 'application/Validations/VentajaValidations.php';
class Ventaja extends Base
{
	public $atributos;
	public $table='ventaja';
    public $validate;
	public function __construct() 
	{
          	parent::__construct();
       		if ($this->session->userdata('islogued') != TRUE) {
            redirect(base_url('admin'));
        	}
	        $this->layout->setLayout('admintpl');
	        $this->atributos=$this->attributes('ventaja');
	        $this->load->model("Ventajas");
	        $this->layout->js([$this->config->item('base_archivos_url') . "js/modulos/ventaja/ventaja.js"]);
            //$this->load->library('form_validation');
            $this->validate=new VentajaValidations();
	 }
    public function index(){
       $this->layout->view("index");
    }

    public function nuevo(){
       /* if ($this->input->get()) {
            $this->load->helper(array('form', 'url'));
                $this->load->library('form_validation');
            $this->form_validation->set_rules($this->validate->rules());
            if ($this->form_validation->run() == FALSE) {
                $errors = validation_errors();
                 return $this->ResponseJson("",$errors);
            }else{
                return $this->ResponseJson($this->inserta($this->input->get(),$this->table));
            }
            
            }*/
		  return $this->ResponseJson($this->inserta($this->input->get(),$this->table));
    }

    public function eliminar(){
    	return $this->ResponseJson($data=$this->delete($this->table,$this->input->get("id_".$this->table)));
    }

    public function actualizar(){
        return $this->ResponseJson($data=$this->update($this->input->get(),$this->table,$this->input->get("id_".$this->table)));
    }

    public function allForTable(){
    	return $this->Ventajas->allForTable();
    }






}

?>