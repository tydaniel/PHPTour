<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

/**
 * 项目名称：项目合同管理 MODEL
 * 版本号：1 
 * 最后生成时间：2017-06-01 10:27:53 
 */
class Contract_model extends Base_Model {

    var $page_size = 10;

    function __construct() {
        $this->db_tablepre = 't_fms_';
        $this->table_name = 'contract';
        parent::__construct();
    }

    /**
     * 初始化默认值
     * @return array
     */
    function default_info() {
        return array(
            'contract_id' => 0,
            'contract_barcode' => '',
            'contract_name' => '',
            'contract_create_date' => '',
            'contract_project' => '',
            'contract_active_date' => '',
            'contract_inactive_date' => '',
            'contract_company' => '',
            'contract_company_shortname' => '',
            'contract_account' => '',
            'contract_tax_rate' => '',
            'contract_order_price' => '',
            'contract_isfile' => 0,
            'contract_isagain' => 0,
            'contract_customer_level' => '',
        );
    }

    /**
     * 安装SQL表
     * @return void
     */
    function init() {
        
    }
}

// END contract_model class

/* End of file contract_model.php */
/* Location: ./contract_model.php */
?>