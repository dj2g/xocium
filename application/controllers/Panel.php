<?php
defined('BASEPATH') OR exit('No direct script access allowed');
require 'application/controllers/Base.php';
class Panel extends Base {

    public function __construct() {
                parent::__construct();
        if ($this->session->userdata('islogued') != TRUE) {

            redirect(base_url('admin'));
        }
        $this->layout->setLayout('admintpl');

    }

    public function index()
    {
        
        $this->layout->view("index");
    }
}
