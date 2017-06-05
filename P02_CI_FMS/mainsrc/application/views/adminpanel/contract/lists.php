<?php defined('BASEPATH') or exit('No direct script access allowed.'); ?><?php defined('BASEPATH') or exit('No permission resources.'); ?>
<div class='panel panel-default grid'>
    <div class='panel-heading'>
        <i class='fa fa-table'></i> 项目合同管理列表
        <div class='panel-tools'>
            <div class='btn-group'>
                <a class="btn " href="<?php echo base_url('adminpanel/contract/add') ?>"><span class="glyphicon glyphicon-plus"></span> 添加 </a>             </div>
            <div class='badge'><?php echo count($data_list) ?></div>
        </div>
    </div>
    <div class='panel-filter '>
        <div class='row'>
            <div class='col-md-12'>
                <form class="form-inline" role="form" method="get">

                    <div class="form-group">
                        <label for="keyword" class="control-label form-control-static">关键词</label>
                        <input class="form-control" type="text" name="keyword"  value="<?php echo isset($data_info['keyword']) ? $data_info['keyword'] : ""; ?>" id="keyword" placeholder="请输入关键词"/></div>
                    <button type="submit" name="dosubmit" value="搜索" class="btn btn-success"><i class='glyphicon glyphicon-search'></i></button>        </form>
            </div>
        </div> 
    </div>
    <form method="post" id="form_list"  action="<?php echo base_url('adminpanel/contract/delete_all') ?>"  > 
        <div class='panel-body '>
            <?php if ($data_list): ?>
                <table class="table table-hover dataTable" id="checkAll">
                    <thead>
                        <tr>
                            <th>#</th>
                            <?php $css = "";
                            $next_url = base_url('adminpanel/contract?order=contract_barcode&dir=desc'); ?>
                            <?php if (($order == 'contract_barcode' && $dir == 'desc')) { ?>
                                <?php $css = "sorting_desc";
                                $next_url = base_url('adminpanel/contract?order=contract_barcode&dir=asc'); ?>
                                <?php } elseif (($order == 'contract_barcode' && $dir == 'asc')) { ?>
                                    <?php $css = "sorting_asc"; ?>
                                <?php } ?><th class="sorting <?php echo $css; ?>"   onclick="window.location.href = '<?php echo $next_url; ?>'"   nowrap="nowrap">合同编码</th>
                                <?php $css = "";
                                $next_url = base_url('adminpanel/contract?order=contract_name&dir=desc'); ?>
                                <?php if (($order == 'contract_name' && $dir == 'desc')) { ?>
                                    <?php $css = "sorting_desc";
                                    $next_url = base_url('adminpanel/contract?order=contract_name&dir=asc'); ?>
                                <?php } elseif (($order == 'contract_name' && $dir == 'asc')) { ?>
                                    <?php $css = "sorting_asc"; ?>
                                <?php } ?><th class="sorting <?php echo $css; ?>"   onclick="window.location.href = '<?php echo $next_url; ?>'"   nowrap="nowrap">合同名称</th>
                                <?php $css = "";
                                $next_url = base_url('adminpanel/contract?order=contract_create_date&dir=desc'); ?>
                                <?php if (($order == 'contract_create_date' && $dir == 'desc')) { ?>
                                    <?php $css = "sorting_desc";
                                    $next_url = base_url('adminpanel/contract?order=contract_create_date&dir=asc'); ?>
                                <?php } elseif (($order == 'contract_create_date' && $dir == 'asc')) { ?>
                                    <?php $css = "sorting_asc"; ?>
                                <?php } ?><th class="sorting <?php echo $css; ?>"   onclick="window.location.href = '<?php echo $next_url; ?>'"   nowrap="nowrap">合同签订日期</th>
                                <?php $css = "";
                                $next_url = base_url('adminpanel/contract?order=contract_project&dir=desc'); ?>
                                <?php if (($order == 'contract_project' && $dir == 'desc')) { ?>
                                    <?php $css = "sorting_desc";
                                    $next_url = base_url('adminpanel/contract?order=contract_project&dir=asc'); ?>
                                <?php } elseif (($order == 'contract_project' && $dir == 'asc')) { ?>
                                    <?php $css = "sorting_asc"; ?>
                                <?php } ?><th class="sorting <?php echo $css; ?>"   onclick="window.location.href = '<?php echo $next_url; ?>'"   nowrap="nowrap">项目</th>
                                <?php $css = "";
                                $next_url = base_url('adminpanel/contract?order=contract_active_date&dir=desc'); ?>
                                <?php if (($order == 'contract_active_date' && $dir == 'desc')) { ?>
                                    <?php $css = "sorting_desc";
                                    $next_url = base_url('adminpanel/contract?order=contract_active_date&dir=asc'); ?>
                                <?php } elseif (($order == 'contract_active_date' && $dir == 'asc')) { ?>
                                    <?php $css = "sorting_asc"; ?>
                                <?php } ?><th class="sorting <?php echo $css; ?>"   onclick="window.location.href = '<?php echo $next_url; ?>'"   nowrap="nowrap">生效日期</th>
                                <?php $css = "";
                                $next_url = base_url('adminpanel/contract?order=contract_inactive_date&dir=desc'); ?>
                                <?php if (($order == 'contract_inactive_date' && $dir == 'desc')) { ?>
                                    <?php $css = "sorting_desc";
                                    $next_url = base_url('adminpanel/contract?order=contract_inactive_date&dir=asc'); ?>
                                <?php } elseif (($order == 'contract_inactive_date' && $dir == 'asc')) { ?>
                                    <?php $css = "sorting_asc"; ?>
                                <?php } ?><th class="sorting <?php echo $css; ?>"   onclick="window.location.href = '<?php echo $next_url; ?>'"   nowrap="nowrap">失效日期</th>
                                <?php $css = "";
                                $next_url = base_url('adminpanel/contract?order=contract_company&dir=desc'); ?>
                                <?php if (($order == 'contract_company' && $dir == 'desc')) { ?>
                                    <?php $css = "sorting_desc";
                                    $next_url = base_url('adminpanel/contract?order=contract_company&dir=asc'); ?>
                                <?php } elseif (($order == 'contract_company' && $dir == 'asc')) { ?>
                                    <?php $css = "sorting_asc"; ?>
                                <?php } ?><th class="sorting <?php echo $css; ?>"   onclick="window.location.href = '<?php echo $next_url; ?>'"   nowrap="nowrap">公司名称</th>
                                <?php $css = "";
                                $next_url = base_url('adminpanel/contract?order=contract_company_shortname&dir=desc'); ?>
                                <?php if (($order == 'contract_company_shortname' && $dir == 'desc')) { ?>
                                    <?php $css = "sorting_desc";
                                    $next_url = base_url('adminpanel/contract?order=contract_company_shortname&dir=asc'); ?>
                                <?php } elseif (($order == 'contract_company_shortname' && $dir == 'asc')) { ?>
                                    <?php $css = "sorting_asc"; ?>
                                <?php } ?><th class="sorting <?php echo $css; ?>"   onclick="window.location.href = '<?php echo $next_url; ?>'"   nowrap="nowrap">公司简称</th>
                                <?php $css = "";
                                $next_url = base_url('adminpanel/contract?order=contract_account&dir=desc'); ?>
                                <?php if (($order == 'contract_account' && $dir == 'desc')) { ?>
                                    <?php $css = "sorting_desc";
                                    $next_url = base_url('adminpanel/contract?order=contract_account&dir=asc'); ?>
                                <?php } elseif (($order == 'contract_account' && $dir == 'asc')) { ?>
                                    <?php $css = "sorting_asc"; ?>
                                <?php } ?><th class="sorting <?php echo $css; ?>"   onclick="window.location.href = '<?php echo $next_url; ?>'"   nowrap="nowrap">结算</th>
                                <?php $css = "";
                                $next_url = base_url('adminpanel/contract?order=contract_tax_rate&dir=desc'); ?>
                                <?php if (($order == 'contract_tax_rate' && $dir == 'desc')) { ?>
                                    <?php $css = "sorting_desc";
                                    $next_url = base_url('adminpanel/contract?order=contract_tax_rate&dir=asc'); ?>
                                <?php } elseif (($order == 'contract_tax_rate' && $dir == 'asc')) { ?>
                                    <?php $css = "sorting_asc"; ?>
                                <?php } ?><th class="sorting <?php echo $css; ?>"   onclick="window.location.href = '<?php echo $next_url; ?>'"   nowrap="nowrap">税率(%)</th>
                                <?php $css = "";
                                $next_url = base_url('adminpanel/contract?order=contract_order_price&dir=desc'); ?>
                                <?php if (($order == 'contract_order_price' && $dir == 'desc')) { ?>
                                    <?php $css = "sorting_desc";
                                    $next_url = base_url('adminpanel/contract?order=contract_order_price&dir=asc'); ?>
    <?php } elseif (($order == 'contract_order_price' && $dir == 'asc')) { ?>
        <?php $css = "sorting_asc"; ?>
                        <?php } ?><th class="sorting <?php echo $css; ?>"   onclick="window.location.href = '<?php echo $next_url; ?>'"   nowrap="nowrap">订购单价</th>
                        <?php $css = "";
                        $next_url = base_url('adminpanel/contract?order=contract_isfile&dir=desc'); ?>
    <?php if (($order == 'contract_isfile' && $dir == 'desc')) { ?>
        <?php $css = "sorting_desc";
        $next_url = base_url('adminpanel/contract?order=contract_isfile&dir=asc'); ?>
    <?php } elseif (($order == 'contract_isfile' && $dir == 'asc')) { ?>
        <?php $css = "sorting_asc"; ?>
    <?php } ?><th class="sorting <?php echo $css; ?>"   onclick="window.location.href = '<?php echo $next_url; ?>'"   nowrap="nowrap">是否归档</th>
    <?php $css = "";
    $next_url = base_url('adminpanel/contract?order=contract_isagain&dir=desc'); ?>
    <?php if (($order == 'contract_isagain' && $dir == 'desc')) { ?>
        <?php $css = "sorting_desc";
        $next_url = base_url('adminpanel/contract?order=contract_isagain&dir=asc'); ?>
    <?php } elseif (($order == 'contract_isagain' && $dir == 'asc')) { ?>
        <?php $css = "sorting_asc"; ?>
    <?php } ?><th class="sorting <?php echo $css; ?>"   onclick="window.location.href = '<?php echo $next_url; ?>'"   nowrap="nowrap">是否续签</th>
    <?php $css = "";
    $next_url = base_url('adminpanel/contract?order=contract_customer_level&dir=desc'); ?>
    <?php if (($order == 'contract_customer_level' && $dir == 'desc')) { ?>
        <?php $css = "sorting_desc";
        $next_url = base_url('adminpanel/contract?order=contract_customer_level&dir=asc'); ?>
    <?php } elseif (($order == 'contract_customer_level' && $dir == 'asc')) { ?>
        <?php $css = "sorting_asc"; ?>
                        <?php } ?><th class="sorting <?php echo $css; ?>"   onclick="window.location.href = '<?php echo $next_url; ?>'"   nowrap="nowrap">客户级别</th>
                            <th>操作</th>
                        </tr>
                    </thead>
                    <tbody>
    <?php foreach ($data_list as $k => $v): ?>
                            <tr>
                                <td><input type="checkbox" name="pid[]" value="<?php echo $v['contract_id'] ?>" /></td>
                                <td><?php echo $v['contract_barcode'] ?></td>
                                <td><?php echo $v['contract_name'] ?></td>
                                <td><?php echo $v['contract_create_date'] ?></td>
                                <td><?php echo $v['contract_project'] ?></td>
                                <td><?php echo $v['contract_active_date'] ?></td>
                                <td><?php echo $v['contract_inactive_date'] ?></td>
                                <td><?php echo $v['contract_company'] ?></td>
                                <td><?php echo $v['contract_company_shortname'] ?></td>
                                <td><?php echo $v['contract_account'] ?></td>
                                <td><?php echo $v['contract_tax_rate'] ?></td>
                                <td><?php echo $v['contract_order_price'] ?></td>
                                <td><?php echo $v['contract_isfile'] ?></td>
                                <td><?php echo $v['contract_isagain'] ?></td>
                                <td><?php echo $v['contract_customer_level'] ?></td>
                                <td>
                                    <a href="<?php echo base_url('adminpanel/contract/readonly/' . $v['contract_id']) ?>"  class="btn btn-default btn-xs"><span class="glyphicon glyphicon-share-alt"></span> 查看</a>
                                    <a href="<?php echo base_url('adminpanel/contract/edit/' . $v['contract_id']) ?>"  class="btn btn-default btn-xs"><span class="glyphicon glyphicon-edit"></span> 修改</a>
                                    <button type="button" class="btn btn-default btn-xs delete-btn" value="<?php echo $v['contract_id']; ?>"><span class="glyphicon glyphicon-remove"></span> 删除</button>

                                </td>
                            </tr>
    <?php endforeach; ?>

                    </tbody>
                </table> 
            </div>
            <div class="panel-footer">
                <div class="pull-left">
                    <div class="btn-group">
                        <button type="button" class="btn btn-default" id="reverseBtn"><span class="glyphicon glyphicon-ok"></span> 反选</button>
                        <button type="button" id="deleteBtn"  class="btn btn-default"><span class="glyphicon glyphicon-remove"></span> 删除勾选</button>
                    </div>
                </div>
                <div class="pull-right">
    <?php echo $pages; ?>
                </div>
            </div> 
        </form>  
    </div>
<?php else: ?>
    <div class="no-result">-- 暂无数据 -- </div>
<?php endif; ?>

<script language="javascript" type="text/javascript">
    require(['<?php echo SITE_URL ?>scripts/common.js'], function (common) {
        require(['<?php echo SITE_URL ?>scripts/adminpanel/contract/lists.js']);
    });
</script>
