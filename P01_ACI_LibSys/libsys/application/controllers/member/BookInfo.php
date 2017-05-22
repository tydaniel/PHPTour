<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class BookInfo extends Member_Controller {

    function __construct() {
        parent::__construct();
        $this->load->model(array('bookadmin_model'));
        $this->load->helper(array('auto_codeIgniter_helper', 'array'));
    }

    function index($page_no = 0) {
        $page_no = max(intval($page_no), 1);

        $orderby = "bookadmin_id desc";
        $dir = $order = NULL;
        $order = isset($_GET['order']) ? safe_replace(trim($_GET['order'])) : '';
        $dir = isset($_GET['dir']) ? safe_replace(trim($_GET['dir'])) : 'asc';

        if (trim($order) != "") {
            //如果找到得
            if (isset($this->method_config['sort_field'][strtolower($order)])) {
                if (strtolower($dir) == "asc")
                    $orderby = $this->method_config['sort_field'][strtolower($order)] . " asc," . $orderby;
                else
                    $orderby = $this->method_config['sort_field'][strtolower($order)] . " desc," . $orderby;
            }
        }

        $where = "";
        $_arr = NULL; //从URL GET
        if (isset($_GET['dosubmit'])) {
            $where_arr = NULL;
            $_arr['keyword'] = isset($_GET['keyword']) ? safe_replace(trim($_GET['keyword'])) : '';
            if ($_arr['keyword'] != "")
                $where_arr[] = "concat(book_name,book_author,book_publishing,book_class,book_no) like '%{$_arr['keyword']}%'";




            if ($where_arr)
                $where = implode(" and ", $where_arr);
        }

        $data_list = $this->bookadmin_model->listinfo($where, '*', $orderby, $page_no, $this->bookadmin_model->page_size, '', $this->bookadmin_model->page_size, page_list_url('adminpanel/bookadmin/index', true));
        if ($data_list) {
            foreach ($data_list as $k => $v) {
                $data_list[$k] = $this->_process_datacorce_value($v);
            }
        }
        $this->view('lists', array('require_js' => true, 'data_info' => $_arr, 'order' => $order, 'dir' => $dir, 'data_list' => $data_list, 'pages' => $this->bookadmin_model->pages));
    }
    
    function _process_datacorce_value($v, $is_edit_model = false) {
        return $v;
    }

}
