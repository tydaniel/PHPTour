<?php defined('BASEPATH') or exit('No direct script access allowed.'); ?>

<div data-role="header">
    <h1>图书列表</h1>
</div>
<ul data-role="listview" data-inset="true">
    <?php foreach ($data_list as $k => $v): ?>
        <li><a href="#">
            <img src=<?php echo SITE_URL?><?php echo isset($data_info["picture_show"])?BOOK_PIC.$data_info["picture_show"]:"images/nopic.gif" ?>>
            <h2><?php echo $v['book_name'] ?></h2>
            <p><?php echo $v['abstract'] ?></p></a>
        </li>
    <?php endforeach; ?>
</ul>