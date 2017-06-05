<?php defined('BASEPATH') or exit('No direct script access allowed.'); ?><?php defined('BASEPATH') or exit('No permission resources.'); ?>
<form class="form-horizontal" role="form" id="validateform" name="validateform" action="<?php echo base_url('adminpanel/contract/edit') ?>" >
    <div class='panel panel-default '>
        <div class='panel-heading'>
            <i class='fa fa-table'></i> 项目合同管理 修改信息
            <div class='panel-tools'>
                <div class='btn-group'>
                    <a class="btn " href="<?php echo base_url('adminpanel/contract') ?>"><span class="glyphicon glyphicon-arrow-left"></span> 返回 </a>
                </div>
            </div>
        </div>
        <div class='panel-body '>
            <fieldset>
                <legend>基本信息</legend>

                <div class="form-group">
                    <label for="contract_barcode" class="col-sm-2 control-label form-control-static">合同编码</label>
                    <div class="col-sm-9 ">
                        <input type="text" name="contract_barcode"  id="contract_barcode"  value='<?php echo isset($data_info['contract_barcode']) ? $data_info['contract_barcode'] : '' ?>'  class="form-control validate[required]"  placeholder="请输入合同编码" >
                    </div>
                </div>

                <div class="form-group">
                    <label for="contract_name" class="col-sm-2 control-label form-control-static">合同名称</label>
                    <div class="col-sm-9 ">
                        <input type="text" name="contract_name"  id="contract_name"  value='<?php echo isset($data_info['contract_name']) ? $data_info['contract_name'] : '' ?>'  class="form-control validate[required]"  placeholder="请输入合同名称" >
                    </div>
                </div>

                <div class="form-group">
                    <label for="contract_create_date" class="col-sm-2 control-label form-control-static">合同签订日期</label>
                    <div class="col-sm-9 ">
                        <input type="text" name="contract_create_date"  id="contract_create_date"  value='<?php echo isset($data_info['contract_create_date']) ? $data_info['contract_create_date'] : '' ?>'  class="form-control validate[required]"  placeholder="请输入合同签订日期" >
                    </div>
                </div>

                <div class="form-group">
                    <label for="contract_project" class="col-sm-2 control-label form-control-static">项目</label>
                    <div class="col-sm-9 ">
                        <input type="text" name="contract_project"  id="contract_project"  value='<?php echo isset($data_info['contract_project']) ? $data_info['contract_project'] : '' ?>'  class="form-control validate[required]"  placeholder="请输入项目" >
                    </div>
                </div>

                <div class="form-group">
                    <label for="contract_active_date" class="col-sm-2 control-label form-control-static">生效日期</label>
                    <div class="col-sm-9 ">
                        <input type="text" name="contract_active_date"  id="contract_active_date"  value='<?php echo isset($data_info['contract_active_date']) ? $data_info['contract_active_date'] : '' ?>'  class="form-control validate[required]"  placeholder="请输入生效日期" >
                    </div>
                </div>

                <div class="form-group">
                    <label for="contract_inactive_date" class="col-sm-2 control-label form-control-static">失效日期</label>
                    <div class="col-sm-9 ">
                        <input type="text" name="contract_inactive_date"  id="contract_inactive_date"  value='<?php echo isset($data_info['contract_inactive_date']) ? $data_info['contract_inactive_date'] : '' ?>'  class="form-control validate[required]"  placeholder="请输入失效日期" >
                    </div>
                </div>

                <div class="form-group">
                    <label for="contract_company" class="col-sm-2 control-label form-control-static">公司名称</label>
                    <div class="col-sm-9 ">
                        <input type="text" name="contract_company"  id="contract_company"  value='<?php echo isset($data_info['contract_company']) ? $data_info['contract_company'] : '' ?>'  class="form-control validate[required]"  placeholder="请输入公司名称" >
                    </div>
                </div>

                <div class="form-group">
                    <label for="contract_company_shortname" class="col-sm-2 control-label form-control-static">公司简称</label>
                    <div class="col-sm-9 ">
                        <input type="text" name="contract_company_shortname"  id="contract_company_shortname"  value='<?php echo isset($data_info['contract_company_shortname']) ? $data_info['contract_company_shortname'] : '' ?>'  class="form-control validate[required]"  placeholder="请输入公司简称" >
                    </div>
                </div>

                <div class="form-group">
                    <label for="contract_account" class="col-sm-2 control-label form-control-static">结算</label>
                    <div class="col-sm-9 ">
                        <input type="number" name="contract_account"  id="contract_account"   value='<?php echo isset($data_info['contract_account']) ? $data_info['contract_account'] : '' ?>'   class="form-control validate[custom[price]]" placeholder="请输入结算" >
                    </div>
                </div>

                <div class="form-group">
                    <label for="contract_tax_rate" class="col-sm-2 control-label form-control-static">税率(%)</label>
                    <div class="col-sm-9 ">
                        <input type="number" name="contract_tax_rate"  id="contract_tax_rate"   value='<?php echo isset($data_info['contract_tax_rate']) ? $data_info['contract_tax_rate'] : '' ?>'   class="form-control validate[custom[price]]" placeholder="请输入税率(%)" >
                    </div>
                </div>

                <div class="form-group">
                    <label for="contract_order_price" class="col-sm-2 control-label form-control-static">订购单价</label>
                    <div class="col-sm-9 ">
                        <input type="number" name="contract_order_price"  id="contract_order_price"   value='<?php echo isset($data_info['contract_order_price']) ? $data_info['contract_order_price'] : '' ?>'   class="form-control  validate[required,custom[price]]" placeholder="请输入订购单价" >
                    </div>
                </div>

                <div class="form-group">
                    <label for="contract_isfile" class="col-sm-2 control-label form-control-static">是否归档</label>
                    <div class="col-sm-9 ">
                        <input type="number" name="contract_isfile"  id="contract_isfile"  value='<?php echo isset($data_info['contract_isfile']) ? $data_info['contract_isfile'] : '' ?>'   class="form-control validate[custom[integer]]" placeholder="请输入是否归档" >
                    </div>
                </div>

                <div class="form-group">
                    <label for="contract_isagain" class="col-sm-2 control-label form-control-static">是否续签</label>
                    <div class="col-sm-9 ">
                        <input type="number" name="contract_isagain"  id="contract_isagain"  value='<?php echo isset($data_info['contract_isagain']) ? $data_info['contract_isagain'] : '' ?>'   class="form-control validate[custom[integer]]" placeholder="请输入是否续签" >
                    </div>
                </div>

                <div class="form-group">
                    <label for="contract_customer_level" class="col-sm-2 control-label form-control-static">客户级别</label>
                    <div class="col-sm-9 ">
                        <input type="text" name="contract_customer_level"  id="contract_customer_level"  value='<?php echo isset($data_info['contract_customer_level']) ? $data_info['contract_customer_level'] : '' ?>'  class="form-control validate[required]"  placeholder="请输入客户级别" >
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
                    require(['<?php echo SITE_URL ?>scripts/adminpanel/contract/edit.js']);
                });
            </script>

