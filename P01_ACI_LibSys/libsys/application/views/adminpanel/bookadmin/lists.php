<?php defined('BASEPATH') or exit('No direct script access allowed.'); ?><?php defined('BASEPATH') or exit('No permission resources.'); ?>
<div class='panel panel-default grid'>
    <div class='panel-heading'>
        <i class='fa fa-table'></i> 图书信息管理列表
        <div class='panel-tools'>
            <div class='btn-group'>
                <a class="btn " href="<?php echo base_url('adminpanel/bookadmin/add') ?>"><span class="glyphicon glyphicon-plus"></span> 添加 </a>             </div>
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
    <form method="post" id="form_list"  action="<?php echo base_url('adminpanel/bookadmin/delete_all') ?>"  > 
        <div class='panel-body '>
            <?php if ($data_list): ?>
                <table class="table table-hover dataTable" id="checkAll">
                    <thead>
                        <tr>
                            <th>#</th>
                            <?php $css = "";
                            $next_url = base_url('adminpanel/bookadmin?order=book_name&dir=desc'); ?>
                            <?php if (($order == 'book_name' && $dir == 'desc')) { ?>
                                <?php $css = "sorting_desc";
                                $next_url = base_url('adminpanel/bookadmin?order=book_name&dir=asc'); ?>
                                <?php } elseif (($order == 'book_name' && $dir == 'asc')) { ?>
                                    <?php $css = "sorting_asc"; ?>
                                <?php } ?><th class="sorting <?php echo $css; ?>"   onclick="window.location.href = '<?php echo $next_url; ?>'"   nowrap="nowrap">图书名</th>
                                <?php $css = "";
                                $next_url = base_url('adminpanel/bookadmin?order=book_author&dir=desc'); ?>
                                <?php if (($order == 'book_author' && $dir == 'desc')) { ?>
                                    <?php $css = "sorting_desc";
                                    $next_url = base_url('adminpanel/bookadmin?order=book_author&dir=asc'); ?>
                                <?php } elseif (($order == 'book_author' && $dir == 'asc')) { ?>
                                    <?php $css = "sorting_asc"; ?>
                                <?php } ?><th class="sorting <?php echo $css; ?>"   onclick="window.location.href = '<?php echo $next_url; ?>'"   nowrap="nowrap">作者</th>
                                <?php $css = "";
                                $next_url = base_url('adminpanel/bookadmin?order=book_publishing&dir=desc'); ?>
                                <?php if (($order == 'book_publishing' && $dir == 'desc')) { ?>
                                    <?php $css = "sorting_desc";
                                    $next_url = base_url('adminpanel/bookadmin?order=book_publishing&dir=asc'); ?>
                                <?php } elseif (($order == 'book_publishing' && $dir == 'asc')) { ?>
                                    <?php $css = "sorting_asc"; ?>
                                <?php } ?><th class="sorting <?php echo $css; ?>"   onclick="window.location.href = '<?php echo $next_url; ?>'"   nowrap="nowrap">出版社</th>
                                <?php $css = "";
                                $next_url = base_url('adminpanel/bookadmin?order=book_class&dir=desc'); ?>
                                <?php if (($order == 'book_class' && $dir == 'desc')) { ?>
                                    <?php $css = "sorting_desc";
                                    $next_url = base_url('adminpanel/bookadmin?order=book_class&dir=asc'); ?>
                                <?php } elseif (($order == 'book_class' && $dir == 'asc')) { ?>
                                    <?php $css = "sorting_asc"; ?>
                                <?php } ?><th class="sorting <?php echo $css; ?>"   onclick="window.location.href = '<?php echo $next_url; ?>'"   nowrap="nowrap">图书种类</th>
                                <?php $css = "";
                                $next_url = base_url('adminpanel/bookadmin?order=book_no&dir=desc'); ?>
                                <?php if (($order == 'book_no' && $dir == 'desc')) { ?>
                                    <?php $css = "sorting_desc";
                                    $next_url = base_url('adminpanel/bookadmin?order=book_no&dir=asc'); ?>
                                <?php } elseif (($order == 'book_no' && $dir == 'asc')) { ?>
                                    <?php $css = "sorting_asc"; ?>
                                <?php } ?><th class="sorting <?php echo $css; ?>"   onclick="window.location.href = '<?php echo $next_url; ?>'"   nowrap="nowrap">ISBN</th>
                                <?php $css = "";
                                $next_url = base_url('adminpanel/bookadmin?order=create_user&dir=desc'); ?>
    <?php if (($order == 'create_user' && $dir == 'desc')) { ?>
        <?php $css = "sorting_desc";
        $next_url = base_url('adminpanel/bookadmin?order=create_user&dir=asc'); ?>
    <?php } elseif (($order == 'create_user' && $dir == 'asc')) { ?>
                            <?php $css = "sorting_asc"; ?>
                        <?php } ?><th class="sorting <?php echo $css; ?>"   onclick="window.location.href = '<?php echo $next_url; ?>'"   nowrap="nowrap">创建人</th>
    <?php $css = "";
    $next_url = base_url('adminpanel/bookadmin?order=book_total&dir=desc'); ?>
    <?php if (($order == 'book_total' && $dir == 'desc')) { ?>
        <?php $css = "sorting_desc";
        $next_url = base_url('adminpanel/bookadmin?order=book_total&dir=asc'); ?>
    <?php } elseif (($order == 'book_total' && $dir == 'asc')) { ?>
        <?php $css = "sorting_asc"; ?>
    <?php } ?><th class="sorting <?php echo $css; ?>"   onclick="window.location.href = '<?php echo $next_url; ?>'"   nowrap="nowrap">库存总量</th>
                            <th   nowrap="nowrap">创建日期</th>
                            <th>操作</th>
                        </tr>
                    </thead>
                    <tbody>
    <?php foreach ($data_list as $k => $v): ?>
                            <tr>
                                <td><input type="checkbox" name="pid[]" value="<?php echo $v['bookadmin_id'] ?>" /></td>
                                <td><?php echo $v['book_name'] ?></td>
                                <td><?php echo $v['book_author'] ?></td>
                                <td><?php echo $v['book_publishing'] ?></td>
                                <td><?php echo $v['book_class'] ?></td>
                                <td><?php echo $v['book_no'] ?></td>
                                <td><?php echo $v['fullname'] ?></td>
                                <td><?php echo $v['book_total'] ?></td>
                                <td><?php echo $v['create_date'] ?></td>
                                <td>
                                    <a href="<?php echo base_url('adminpanel/bookadmin/readonly/' . $v['bookadmin_id']) ?>"  class="btn btn-default btn-xs"><span class="glyphicon glyphicon-share-alt"></span> 查看</a>
                                    <a href="<?php echo base_url('adminpanel/bookadmin/edit/' . $v['bookadmin_id']) ?>"  class="btn btn-default btn-xs"><span class="glyphicon glyphicon-edit"></span> 修改</a>
                                    <button type="button" class="btn btn-default btn-xs delete-btn" value="<?php echo $v['bookadmin_id']; ?>"><span class="glyphicon glyphicon-remove"></span> 删除</button>

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
        require(['<?php echo SITE_URL ?>scripts/adminpanel/bookadmin/lists.js']);
    });
</script>
