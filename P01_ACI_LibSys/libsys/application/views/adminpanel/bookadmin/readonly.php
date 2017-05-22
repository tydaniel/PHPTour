<?php defined('BASEPATH') or exit('No direct script access allowed.'); ?><?php defined('BASEPATH') or exit('No permission resources.'); ?>
<div class='panel panel-default '>
    <div class='panel-heading'>
        <i class='fa fa-table'></i> 图书信息管理 查看信息 
        <div class='panel-tools'>
            <div class='btn-group'>
                <a class="btn " href="<?php echo base_url('adminpanel/bookadmin') ?>"><span class="glyphicon glyphicon-arrow-left"></span> 返回 </a>
            </div>
        </div>
    </div>
    <div class='panel-body '>
        <div class="form-horizontal"  >
            <fieldset>
                <legend>基本信息</legend>


                <div class="form-group">
                    <label for="book_name" class="col-sm-2 control-label form-control-static">图书名</label>
                    <div class="col-sm-9 form-control-static ">
                        <?php echo isset($data_info['book_name']) ? $data_info['book_name'] : '' ?>
                    </div>
                </div>

                <div class="form-group">
                    <label for="book_author" class="col-sm-2 control-label form-control-static">作者</label>
                    <div class="col-sm-9 form-control-static ">
                        <?php echo isset($data_info['book_author']) ? $data_info['book_author'] : '' ?>
                    </div>
                </div>

                <div class="form-group">
                    <label for="book_publishing" class="col-sm-2 control-label form-control-static">出版社</label>
                    <div class="col-sm-9 form-control-static ">
                        <?php echo isset($data_info['book_publishing']) ? $data_info['book_publishing'] : '' ?>
                    </div>
                </div>

                <div class="form-group">
                    <label for="book_class" class="col-sm-2 control-label form-control-static">图书种类</label>
                    <div class="col-sm-9 form-control-static ">
                        <?php echo isset($data_info['book_class']) ? $data_info['book_class'] : '' ?>
                    </div>
                </div>

                <div class="form-group">
                    <label for="book_no" class="col-sm-2 control-label form-control-static">ISBN</label>
                    <div class="col-sm-9 form-control-static ">
                        <?php echo isset($data_info['book_no']) ? $data_info['book_no'] : '' ?>
                    </div>
                </div>

                <div class="form-group">
                    <label for="create_user" class="col-sm-2 control-label form-control-static">创建人</label>
                    <div class="col-sm-9 form-control-static ">
                        <?php echo isset($data_info['create_user']) ? $data_info['create_user'] : '' ?>
                    </div>
                </div>

                <div class="form-group">
                    <label for="book_total" class="col-sm-2 control-label form-control-static">库存总量</label>
                    <div class="col-sm-9 form-control-static ">
                        <?php echo isset($data_info['book_total']) ? $data_info['book_total'] : '' ?>
                    </div>
                </div>

                <div class="form-group">
                    <label for="book_borrowed" class="col-sm-2 control-label form-control-static">已借数量</label>
                    <div class="col-sm-9 form-control-static ">
                        <?php echo isset($data_info['book_borrowed']) ? $data_info['book_borrowed'] : '' ?>
                    </div>
                </div>

                <div class="form-group">
                    <label for="create_date" class="col-sm-2 control-label form-control-static">创建日期</label>
                    <div class="col-sm-9 form-control-static ">
                        <?php echo isset($data_info['create_date']) ? $data_info['create_date'] : '' ?>
                    </div>
                </div>

                <div class="form-group">
                    <label for="abstract" class="col-sm-2 control-label form-control-static">概要信息</label>
                    <div class="col-sm-9 form-control-static ">
                        <?php echo isset($data_info['abstract']) ? $data_info['abstract'] : '' ?>
                    </div>
                </div>

                <div class="form-group">
                    <label for="picture_show" class="col-sm-2 control-label form-control-static">图片</label>
                    <div class="col-sm-9 ">
                        <img src='<?php echo SITE_URL; ?><?php echo isset($data_info['picture_show']) ? (BOOK_PIC. $data_info['picture_show']) : '' ?>' width="100" />
                    </div>
                </div>

                <div class="form-group">
                    <label for="description" class="col-sm-2 control-label form-control-static">介绍</label>
                    <div class="col-sm-9 form-control-static ">
                        <?php echo isset($data_info['description']) ? $data_info['description'] : '' ?>
                    </div>
                </div>
            </fieldset>
        </div>
    </div>
</div>
