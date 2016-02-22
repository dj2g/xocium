<?php
/**
* Denys
*/
require_once 'application/controllers/Base.php';
require 'application/Validations/PlantearValidations.php';
class Plantear extends Base
{
    public $atributos;
	public $atributos1;
    public $table='mision';
	public $table2='vision';
    public $validate;
	public function __construct() 
	{
          	parent::__construct();
       		if ($this->session->userdata('islogued') != TRUE) {
            redirect(base_url('admin'));
        	}
	        $this->layout->setLayout('admintpl');
            $this->atributos=$this->attributes('mision');
	        $this->atributos1=$this->attributes('vision');
	        $this->load->model("Planteados");
	        $this->layout->js([$this->config->item('base_archivos_url') . "js/modulos/plantear/plantear.js"]);
            $this->load->library('form_validation');
            $this->validate=new PlantearValidations();
	 }
    public function index(){
         $this->load->helper('form');
        if ($this->input->post()) {
            $this->load->helper('form');
            $this->form_validation->set_rules($this->validate->rules());
            if ($this->form_validation->run() == FALSE) {
                $this->layout->view("index");
            }else{
                if($this->input->post("id_mision")==0||$this->input->post("id_vision")==0){
                    $this->inserta($this->input->post(),$this->table);
                    $this->inserta($this->input->post(),$this->table2);
                }else{
                    $this->update($this->input->post(),$this->table,$this->input->post("id_mision"));
                    $this->update($this->input->post(),$this->table2,$this->input->post("id_vision"));
                }
                
                    $data=$this->all($this->table);
                    $data2=$this->all($this->table2);
                 $this->layout->view("index",compact('data','data2'));
            }
        }else{
            $this->load->helper('form');
            $this->load->library('form_validation');
            $data=$this->all($this->table);
    		$data2=$this->all($this->table2);
    	$this->layout->view("index",compact('data','data2'));
        }
    }


    






}

?>