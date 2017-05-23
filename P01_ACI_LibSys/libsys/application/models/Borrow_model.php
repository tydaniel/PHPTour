<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Borrow_model extends Base_Model {

    function __construct() {
        $this->db_tablepre = 't_lib_';
        $this->table_name = 'borrow';
        parent::__construct();
    }

}
