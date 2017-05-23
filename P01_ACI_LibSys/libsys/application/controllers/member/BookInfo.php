<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class BookInfo extends Member_Controller {

    function __construct() {
        parent::__construct();
        $this->load->model(array('bookadmin_model', 'borrow_model'));
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

    function bookdetail($id = 0) {
        $id = intval($id);
        $data_info = $this->bookadmin_model->get_one(array('bookadmin_id' => $id));
        if (!$data_info)
            $this->showmessage('信息不存在');
        $data_info = $this->_process_datacorce_value($data_info);

        $this->view('bookdetail', array('require_js' => true, 'data_info' => $data_info));
    }

    function borrow() {
        //如果是AJAX请求
        if ($this->input->is_ajax_request()) {
            //接收POST参数
            $_arr['bookid'] = isset($_POST["bookadmin_id"]) ? trim(safe_replace($_POST["bookadmin_id"])) : exit(json_encode(array('status' => false, 'tips' => '图书ID必须填写')));
            if ($_arr['bookid'] == '')
                exit(json_encode(array('status' => false, 'tips' => '图书ID必须填写')));
            $_arr['userid'] = isset($this->user_id) ? $this->user_id : 0;
            $_arr['borrowdate'] = date('Y-m-d H:i:s');
            $_arr['returndate'] = date('Y-m-d H:i:s', strtotime("+28 day"));
            $_arr['returnflag'] = 0;
            $_arr['expireflag'] = 0;

            $new_id = $this->borrow_model->insert($_arr);
            if ($new_id) {
                exit(json_encode(array('status' => true, 'tips' => '借阅成功', 'new_id' => $new_id)));
            } else {
                exit(json_encode(array('status' => false, 'tips' => '借阅失败', 'new_id' => 0)));
            }
        } else {
            
        }
    }

}
