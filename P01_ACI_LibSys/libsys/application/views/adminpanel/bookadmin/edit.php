<?php defined('BASEPATH') or exit('No direct script access allowed.'); ?><?php defined('BASEPATH') or exit('No permission resources.'); ?>
<form class="form-horizontal" role="form" id="validateform" name="validateform" action="<?php echo base_url('adminpanel/bookadmin/edit') ?>" >
    <div class='panel panel-default '>
        <div class='panel-heading'>
            <i class='fa fa-table'></i> 图书信息管理 修改信息
            <div class='panel-tools'>
                <div class='btn-group'>
                    <a class="btn " href="<?php echo base_url('adminpanel/bookadmin') ?>"><span class="glyphicon glyphicon-arrow-left"></span> 返回 </a>
                </div>
            </div>
        </div>
        <div class='panel-body '>
            <fieldset>
                <legend>基本信息</legend>

                <div class="form-group">
                    <label for="book_name" class="col-sm-2 control-label form-control-static">图书名</label>
                    <div class="col-sm-9 ">
                        <input type="text" name="book_name"  id="book_name"  value='<?php echo isset($data_info['book_name']) ? $data_info['book_name'] : '' ?>'  class="form-control validate[required]"  placeholder="请输入图书名" >
                    </div>
                </div>

                <div class="form-group">
                    <label for="book_author" class="col-sm-2 control-label form-control-static">作者</label>
                    <div class="col-sm-9 ">
                        <input type="text" name="book_author"  id="book_author"  value='<?php echo isset($data_info['book_author']) ? $data_info['book_author'] : '' ?>'  class="form-control validate[required]"  placeholder="请输入作者" >
                    </div>
                </div>

                <div class="form-group">
                    <label for="book_publishing" class="col-sm-2 control-label form-control-static">出版社</label>
                    <div class="col-sm-9 ">
                        <input type="text" name="book_publishing"  id="book_publishing"  value='<?php echo isset($data_info['book_publishing']) ? $data_info['book_publishing'] : '' ?>'  class="form-control validate[required]"  placeholder="请输入出版社" >
                    </div>
                </div>

                <div class="form-group">
                    <label for="book_class" class="col-sm-2 control-label form-control-static">图书种类</label>
                    <div class="col-sm-9 ">
                        <input type="text" name="book_class"  id="book_class"  value='<?php echo isset($data_info['book_class']) ? $data_info['book_class'] : '' ?>'  class="form-control validate[required]"  placeholder="请输入图书种类" >
                    </div>
                </div>

                <div class="form-group">
                    <label for="book_no" class="col-sm-2 control-label form-control-static">ISBN</label>
                    <div class="col-sm-9 ">
                        <input type="text" name="book_no"  id="book_no"  value='<?php echo isset($data_info['book_no']) ? $data_info['book_no'] : '' ?>'  class="form-control validate[required]"  placeholder="请输入ISBN" >
                    </div>
                </div>

                <div class="form-group">
                    <label for="book_total" class="col-sm-2 control-label form-control-static">库存总量</label>
                    <div class="col-sm-9 ">
                        <input type="number" name="book_total"  id="book_total"  value='<?php echo isset($data_info['book_total']) ? $data_info['book_total'] : '' ?>'   class="form-control  validate[required,custom[integer]]" placeholder="请输入库存总量" >
                    </div>
                </div>

                <div class="form-group">
                    <label for="book_borrowed" class="col-sm-2 control-label form-control-static">已借数量</label>
                    <div class="col-sm-9 ">
                        <input type="number" name="book_borrowed"  id="book_borrowed"  value='<?php echo isset($data_info['book_borrowed']) ? $data_info['book_borrowed'] : '' ?>'   class="form-control validate[custom[integer]]" placeholder="请输入已借数量" >
                    </div>
                </div>
            </fieldset>
            <div class='form-actions'>
                <button class='btn btn-primary ' type='submit' id="dosubmit">保存</button>
            </div>
            </form>
            <script language="javascript" type="text/javascript">
                var is_edit =<?php echo ($is_edit) ? "true" : "false" ?>;
                var id =<?php echo $id; ?>;

                require(['<?php echo SITE_URL ?>scripts/common.js'], function (common) {
                    require(['<?php echo SITE_URL ?>scripts/adminpanel/bookadmin/edit.js']);
                });
            </script>

