<?php defined('BASEPATH') or exit('No direct script access allowed.'); ?>

<div data-role="page" id="bookdetail" data-add-back-btn="true" data-back-btn-text="返回">
    <div class="ui-body">
        <h3 class="ui-bar ui-bar-a" style="text-align:center;"><?php echo $data_list['book_name'] ?></h3>
        <img src=<?php echo SITE_URL ?><?php echo isset($data_list["picture_show"]) ? BOOK_PIC . $data_list["picture_show"] : "" ?>>
        <p><?php echo $data_list['description'] ?></p>
    </div>
</div>

