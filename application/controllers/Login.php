<?php
defined('BASEPATH') OR exit('No direct script access allowed');
require 'application/controllers/Base.php';
class Login extends Base {

    public function __construct() {
                parent::__construct();
                $this->layout->setLayout('logintpl');
    }

    public function logoutuser(){
        $this->session->sess_destroy();
        redirect(base_url('login'));
    }

    public function index()
    {
        if ($this->input->post()) {

            $this->form_validation->set_rules('user', 'USUARIO', 'required|min_length[3]|max_length[12]');
            $this->form_validation->set_rules('password', 'PASSWORD', 'required|min_length[3]|max_length[12]');

            if ($this->form_validation->run() == FALSE) {

            } else {
                $user = $this->input->post("user");
                $password = $this->input->post("password");

                $query = $this->db->get_where("usuarios", array("usuario" => $user, "password" => $password));
                $info = $query->row_array();

                if (empty($info)) {
                    redirect(base_url(), "refresh");
                } else {

                    $ses = array(
                        'dniusu' => $info["dni"],
                        'idusu' => $info["usuarioid"],
                        'nombres' => $info["nombres"],
                        'apellidos' => $info["apellidos"],
                        'islogued' => TRUE
                    );

                    $this->session->set_userdata($ses);


                    redirect(base_url("panel"));
                }
            }
        }

        $this->layout->view('index');

    }
}
