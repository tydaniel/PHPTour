<?php defined('BASEPATH') or exit('No direct script access allowed.'); ?>

<div data-role="page" data-theme="b">
    <div data-role="header" data-position="inline">
        <h1>图书列表</h1>
    </div>
    <div data-role="content" data-theme="b">
        <ul data-role="listview" data-inset="true">
            <?php foreach ($data_list as $k => $v): ?>
                <li><a href=<?php echo base_url('member/bookinfo/bookdetail/' . $v['bookadmin_id']) ?>>
                        <img src=<?php echo SITE_URL ?><?php echo isset($v["picture_show"]) ? BOOK_PIC . $v["picture_show"] : "images/nopic.gif" ?>>
                        <p class="topic"><strong><?php echo $v['book_name'] ?></strong></p>
                        <p><?php echo $v['abstract'] ?></p>
                        <p class="ui-li-aside" ><strong><?php echo '库存：'.(string)((int) $v['book_total'] - (int) $v['book_borrowed']). '/'.$v['book_total'] ?></strong></p>
                    </a>
                </li>
            <?php endforeach; ?>
        </ul>
    </div>
</div>