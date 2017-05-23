<?php defined('BASEPATH') or exit('No direct script access allowed.'); ?>

<div data-role="page" id="bookinfo" data-add-back-btn="true" data-back-btn-text="返回">
    <div data-role="header">
        <h1>图书列表</h1>
    </div>
    <ul data-role="listview" data-inset="true">
        <?php foreach ($data_list as $k => $v): ?>
            <li><a href=<?php echo base_url('member/bookinfo/bookdetail/' . $v['bookadmin_id']) ?>>
                    <img src=<?php echo SITE_URL ?><?php echo isset($v["picture_show"]) ? BOOK_PIC . $v["picture_show"] : "images/nopic.gif" ?>>
                    <h2><?php echo $v['book_name'] ?></h2>
                    <p><?php echo $v['abstract'] ?></p>
                    <p style="text-align:right;" ><?php echo "总数量:  " . $v['book_total'] . "   ," . " 库存数量:  " . (string) ((int) $v['book_total'] - (int) $v['book_borrowed']) ?></p>
                </a>
            </li>
        <?php endforeach; ?>
    </ul>
</div>