<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

/**
 * AutoCodeIgniter.com
 *
 * 基于CodeIgniter核心模块自动生成程序
 *
 * 源项目		AutoCodeIgniter
 * 作者：		AutoCodeIgniter.com Dev Team
 * 版权：		Copyright (c) 2015 , AutoCodeIgniter com.
 * 项目名称：图书信息管理 MODEL
 * 版本号：1 
 * 最后生成时间：2017-05-19 21:41:38 
 */
class Bookadmin_model extends Base_Model {

    var $page_size = 10;

    function __construct() {
        $this->db_tablepre = 't_aci_';
        $this->table_name = 'bookadmin';
        parent::__construct();
    }

    /**
     * 初始化默认值
     * @return array
     */
    function default_info() {
        return array(
            'bookadmin_id' => 0,
            'book_name' => '',
            'book_author' => '',
            'book_publishing' => '',
            'book_class' => '',
            'book_no' => '',
            'create_user' => '',
            'book_total' => '0',
            'book_borrowed' => '0',
            'create_date' => '',
            'abstract' => '',
            'picture_show' => '',
            'description' => '',
        );
    }

    /**
     * 安装SQL表
     * @return void
     */
    function init() {
        $this->query("CREATE TABLE  IF NOT EXISTS `t_aci_bookadmin`
(
`book_name` varchar(250) DEFAULT NULL COMMENT '图书名',
`book_author` varchar(250) DEFAULT NULL COMMENT '作者',
`book_publishing` varchar(250) DEFAULT NULL COMMENT '出版社',
`book_class` varchar(250) DEFAULT NULL COMMENT '图书种类',
`book_no` varchar(250) DEFAULT NULL COMMENT 'ISBN',
`create_user` varchar(50) DEFAULT NULL COMMENT '创建人',
`book_total` int(11) DEFAULT '0' COMMENT '库存总量',
`book_borrowed` int(11) DEFAULT '0' COMMENT '已借数量',
`create_date` varchar(50) DEFAULT NULL COMMENT '创建日期',
`abstract` text COMMENT '概要信息',
`picture_show` varchar(250) DEFAULT NULL COMMENT '图片',
`description` text COMMENT '介绍',
`bookadmin_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
PRIMARY KEY (`bookadmin_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
");
    }

}

// END bookadmin_model class

/* End of file bookadmin_model.php */
/* Location: ./bookadmin_model.php */
?>