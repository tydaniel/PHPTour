<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

/**
 * 项目名称：项目合同管理 
 * 版本号：1 
 * 最后生成时间：2017-06-01 10:27:53 
 */
class Contract extends Admin_Controller {

    var $method_config;

    function __construct() {
        parent::__construct();
        $this->load->model(array('contract_model'));
        $this->load->helper(array('auto_codeIgniter_helper', 'array'));


        //保证排序安全性
        $this->method_config['sort_field'] = array(
            'contract_barcode' => 'contract_barcode',
            'contract_name' => 'contract_name',
            'contract_create_date' => 'contract_create_date',
            'contract_project' => 'contract_project',
            'contract_active_date' => 'contract_active_date',
            'contract_inactive_date' => 'contract_inactive_date',
            'contract_company' => 'contract_company',
            'contract_company_shortname' => 'contract_company_shortname',
            'contract_account' => 'contract_account',
            'contract_tax_rate' => 'contract_tax_rate',
            'contract_order_price' => 'contract_order_price',
            'contract_isfile' => 'contract_isfile',
            'contract_isagain' => 'contract_isagain',
            'contract_customer_level' => 'contract_customer_level',
        );
    }

    /**
     * 默认首页列表
     * @param int $pageno 当前页码
     * @return void
     */
    function index($page_no = 0, $sort_id = 0) {
        $page_no = max(intval($page_no), 1);

        $orderby = "contract_id desc";
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
                $where_arr[] = "concat(contract_barcode,contract_name,contract_project,contract_company,contract_company_shortname,contract_customer_level) like '%{$_arr['keyword']}%'";




            if ($where_arr)
                $where = implode(" and ", $where_arr);
        }

        $data_list = $this->contract_model->listinfo($where, '*', $orderby, $page_no, $this->contract_model->page_size, '', $this->contract_model->page_size, page_list_url('adminpanel/contract/index', true));
        if ($data_list) {
            foreach ($data_list as $k => $v) {
                $data_list[$k] = $this->_process_datacorce_value($v);
            }
        }
        $this->view('lists', array('require_js' => true, 'data_info' => $_arr, 'order' => $order, 'dir' => $dir, 'data_list' => $data_list, 'pages' => $this->contract_model->pages));
    }

    /**
     * 处理数据源结
     * @param array v 
     * @return array
     */
    function _process_datacorce_value($v, $is_edit_model = false) {
        return $v;
    }

    /**
     * 新增数据
     * @param AJAX POST 
     * @return void
     */
    function add() {
        //如果是AJAX请求
        if ($this->input->is_ajax_request()) {
            //接收POST参数
            $_arr['contract_barcode'] = isset($_POST["contract_barcode"]) ? trim(safe_replace($_POST["contract_barcode"])) : exit(json_encode(array('status' => false, 'tips' => '合同编码必须填写，请填写完整。')));
            if ($_arr['contract_barcode'] == '')
                exit(json_encode(array('status' => false, 'tips' => '合同编码必须填写，请填写完整。')));
            $_arr['contract_name'] = isset($_POST["contract_name"]) ? trim(safe_replace($_POST["contract_name"])) : exit(json_encode(array('status' => false, 'tips' => '合同名称必须填写，请填写完整。')));
            if ($_arr['contract_name'] == '')
                exit(json_encode(array('status' => false, 'tips' => '合同名称必须填写，请填写完整。')));
            $_arr['contract_create_date'] = isset($_POST["contract_create_date"]) ? trim(safe_replace($_POST["contract_create_date"])) : exit(json_encode(array('status' => false, 'tips' => '合同签订日期必须填写，请填写完整。')));
            if ($_arr['contract_create_date'] == '')
                exit(json_encode(array('status' => false, 'tips' => '合同签订日期必须填写，请填写完整。')));
            $_arr['contract_project'] = isset($_POST["contract_project"]) ? trim(safe_replace($_POST["contract_project"])) : '';
            $_arr['contract_active_date'] = isset($_POST["contract_active_date"]) ? trim(safe_replace($_POST["contract_active_date"])) : '';
            $_arr['contract_inactive_date'] = isset($_POST["contract_inactive_date"]) ? trim(safe_replace($_POST["contract_inactive_date"])) : '';
            $_arr['contract_company'] = isset($_POST["contract_company"]) ? trim(safe_replace($_POST["contract_company"])) : exit(json_encode(array('status' => false, 'tips' => '公司名称必须填写，请填写完整。')));
            if ($_arr['contract_company'] == '')
                exit(json_encode(array('status' => false, 'tips' => '公司名称必须填写，请填写完整。')));
            $_arr['contract_company_shortname'] = isset($_POST["contract_company_shortname"]) ? trim(safe_replace($_POST["contract_company_shortname"])) : '';
            $_arr['contract_account'] = isset($_POST["contract_account"]) ? trim(safe_replace($_POST["contract_account"])) : '';
            if ($_arr['contract_account'] != '') {
                if (!is_price($_arr['contract_account']))
                    exit(json_encode(array('status' => false, 'tips' => '结算不符合要求，请确认。')));
            }
            $_arr['contract_tax_rate'] = isset($_POST["contract_tax_rate"]) ? trim(safe_replace($_POST["contract_tax_rate"])) : '';
            if ($_arr['contract_tax_rate'] != '') {
                if (!is_price($_arr['contract_tax_rate']))
                    exit(json_encode(array('status' => false, 'tips' => '税率(%)不符合要求，请确认。')));
            }
            $_arr['contract_order_price'] = isset($_POST["contract_order_price"]) ? trim(safe_replace($_POST["contract_order_price"])) : exit(json_encode(array('status' => false, 'tips' => '订购单价必须填写，请填写完整。')));
            if ($_arr['contract_order_price'] == '')
                exit(json_encode(array('status' => false, 'tips' => '订购单价必须填写，请填写完整。')));
            if ($_arr['contract_order_price'] != '') {
                if (!is_price($_arr['contract_order_price']))
                    exit(json_encode(array('status' => false, 'tips' => '订购单价不符合要求，请确认。')));
            }
            $_arr['contract_isfile'] = isset($_POST["contract_isfile"]) ? trim(safe_replace($_POST["contract_isfile"])) : '';
            if ($_arr['contract_isfile'] != '') {
                if (!is_number($_arr['contract_isfile']))
                    exit(json_encode(array('status' => false, 'tips' => '是否归档不符合要求，请确认。')));
            }
            $_arr['contract_isagain'] = isset($_POST["contract_isagain"]) ? trim(safe_replace($_POST["contract_isagain"])) : '';
            if ($_arr['contract_isagain'] != '') {
                if (!is_number($_arr['contract_isagain']))
                    exit(json_encode(array('status' => false, 'tips' => '是否续签不符合要求，请确认。')));
            }
            $_arr['contract_customer_level'] = isset($_POST["contract_customer_level"]) ? trim(safe_replace($_POST["contract_customer_level"])) : '';

            $new_id = $this->contract_model->insert($_arr);
            if ($new_id) {
                exit(json_encode(array('status' => true, 'tips' => '信息新增成功', 'new_id' => $new_id)));
            } else {
                exit(json_encode(array('status' => false, 'tips' => '信息新增失败', 'new_id' => 0)));
            }
        } else {
            $this->view('edit', array('require_js' => true, 'is_edit' => false, 'id' => 0, 'data_info' => $this->contract_model->default_info()));
        }
    }

    /**
     * 删除单个数据
     * @param int id 
     * @return void
     */
    function delete_one($id = 0) {
        $id = intval($id);
        $data_info = $this->contract_model->get_one(array('contract_id' => $id));
        if (!$data_info)
            $this->showmessage('信息不存在');
        $status = $this->contract_model->delete(array('contract_id' => $id));
        if ($status) {
            $this->showmessage('删除成功');
        } else
            $this->showmessage('删除失败');
    }

    /**
     * 删除选中数据
     * @param post pid 
     * @return void
     */
    function delete_all() {
        if (isset($_POST)) {
            $pidarr = isset($_POST['pid']) ? $_POST['pid'] : $this->showmessage('无效参数', HTTP_REFERER);
            $where = $this->contract_model->to_sqls($pidarr, '', 'contract_id');
            $status = $this->contract_model->delete($where);
            if ($status) {
                $this->showmessage('操作成功', HTTP_REFERER);
            } else {
                $this->showmessage('操作失败');
            }
        }
    }

    /**
     * 修改数据
     * @param int id 
     * @return void
     */
    function edit($id = 0) {
        $id = intval($id);

        $data_info = $this->contract_model->get_one(array('contract_id' => $id));
        //如果是AJAX请求
        if ($this->input->is_ajax_request()) {
            if (!$data_info)
                exit(json_encode(array('status' => false, 'tips' => '信息不存在')));
            //接收POST参数
            $_arr['contract_barcode'] = isset($_POST["contract_barcode"]) ? trim(safe_replace($_POST["contract_barcode"])) : exit(json_encode(array('status' => false, 'tips' => '合同编码必须填写，请填写完整。')));
            if ($_arr['contract_barcode'] == '')
                exit(json_encode(array('status' => false, 'tips' => '合同编码必须填写，请填写完整。')));
            $_arr['contract_name'] = isset($_POST["contract_name"]) ? trim(safe_replace($_POST["contract_name"])) : exit(json_encode(array('status' => false, 'tips' => '合同名称必须填写，请填写完整。')));
            if ($_arr['contract_name'] == '')
                exit(json_encode(array('status' => false, 'tips' => '合同名称必须填写，请填写完整。')));
            $_arr['contract_create_date'] = isset($_POST["contract_create_date"]) ? trim(safe_replace($_POST["contract_create_date"])) : exit(json_encode(array('status' => false, 'tips' => '合同签订日期必须填写，请填写完整。')));
            if ($_arr['contract_create_date'] == '')
                exit(json_encode(array('status' => false, 'tips' => '合同签订日期必须填写，请填写完整。')));
            $_arr['contract_project'] = isset($_POST["contract_project"]) ? trim(safe_replace($_POST["contract_project"])) : '';
            $_arr['contract_active_date'] = isset($_POST["contract_active_date"]) ? trim(safe_replace($_POST["contract_active_date"])) : '';
            $_arr['contract_inactive_date'] = isset($_POST["contract_inactive_date"]) ? trim(safe_replace($_POST["contract_inactive_date"])) : '';
            $_arr['contract_company'] = isset($_POST["contract_company"]) ? trim(safe_replace($_POST["contract_company"])) : exit(json_encode(array('status' => false, 'tips' => '公司名称必须填写，请填写完整。')));
            if ($_arr['contract_company'] == '')
                exit(json_encode(array('status' => false, 'tips' => '公司名称必须填写，请填写完整。')));
            $_arr['contract_company_shortname'] = isset($_POST["contract_company_shortname"]) ? trim(safe_replace($_POST["contract_company_shortname"])) : '';
            $_arr['contract_account'] = isset($_POST["contract_account"]) ? trim(safe_replace($_POST["contract_account"])) : '';
            if ($_arr['contract_account'] != '') {
                if (!is_price($_arr['contract_account']))
                    exit(json_encode(array('status' => false, 'tips' => '结算不符合要求，请确认。')));
            }
            $_arr['contract_tax_rate'] = isset($_POST["contract_tax_rate"]) ? trim(safe_replace($_POST["contract_tax_rate"])) : '';
            if ($_arr['contract_tax_rate'] != '') {
                if (!is_price($_arr['contract_tax_rate']))
                    exit(json_encode(array('status' => false, 'tips' => '税率(%)不符合要求，请确认。')));
            }
            $_arr['contract_order_price'] = isset($_POST["contract_order_price"]) ? trim(safe_replace($_POST["contract_order_price"])) : exit(json_encode(array('status' => false, 'tips' => '订购单价必须填写，请填写完整。')));
            if ($_arr['contract_order_price'] == '')
                exit(json_encode(array('status' => false, 'tips' => '订购单价必须填写，请填写完整。')));
            if ($_arr['contract_order_price'] != '') {
                if (!is_price($_arr['contract_order_price']))
                    exit(json_encode(array('status' => false, 'tips' => '订购单价不符合要求，请确认。')));
            }
            $_arr['contract_isfile'] = isset($_POST["contract_isfile"]) ? trim(safe_replace($_POST["contract_isfile"])) : '';
            if ($_arr['contract_isfile'] != '') {
                if (!is_number($_arr['contract_isfile']))
                    exit(json_encode(array('status' => false, 'tips' => '是否归档不符合要求，请确认。')));
            }
            $_arr['contract_isagain'] = isset($_POST["contract_isagain"]) ? trim(safe_replace($_POST["contract_isagain"])) : '';
            if ($_arr['contract_isagain'] != '') {
                if (!is_number($_arr['contract_isagain']))
                    exit(json_encode(array('status' => false, 'tips' => '是否续签不符合要求，请确认。')));
            }
            $_arr['contract_customer_level'] = isset($_POST["contract_customer_level"]) ? trim(safe_replace($_POST["contract_customer_level"])) : '';

            $status = $this->contract_model->update($_arr, array('contract_id' => $id));
            if ($status) {
                exit(json_encode(array('status' => true, 'tips' => '信息修改成功')));
            } else {
                exit(json_encode(array('status' => false, 'tips' => '信息修改失败')));
            }
        } else {
            if (!$data_info)
                $this->showmessage('信息不存在');
            $data_info = $this->_process_datacorce_value($data_info, true);
            $this->view('edit', array('require_js' => true, 'data_info' => $data_info, 'is_edit' => true, 'id' => $id));
        }
    }

    /**
     * 只读查看数据
     * @param int id 
     * @return void
     */
    function readonly($id = 0) {
        $id = intval($id);
        $data_info = $this->contract_model->get_one(array('contract_id' => $id));
        if (!$data_info)
            $this->showmessage('信息不存在');
        $data_info = $this->_process_datacorce_value($data_info);

        $this->view('readonly', array('require_js' => true, 'data_info' => $data_info));
    }

}

// END contract class

/* End of file contract.php */
/* Location: ./contract.php */
?>