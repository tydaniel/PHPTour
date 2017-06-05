<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');
require(APPPATH . 'libraries/REST_Controller.php');

class Contract extends REST_Controller {

    function __construct() {
        parent::__construct();
        $this->load->model(array('contract_model'));
    }
    
    function listall_get()
    {
        $data = array();
        $data['returnd:'] = "ALL";
        $data['data:'] = $this->contract_model->listinfo();
        $this->response($data);
    }
    
    
    
    
    

}
