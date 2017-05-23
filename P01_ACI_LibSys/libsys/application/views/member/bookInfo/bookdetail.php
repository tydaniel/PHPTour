<?php defined('BASEPATH') or exit('No direct script access allowed.'); ?>

<div data-role="page" data-theme="b">
    <div data-role="header" data-position="inline">
        <a href="#" onClick="javascript :history.back(-1);" class="ui-btn ui-corner-all">返回</a>
    </div>
    <div data-role="content" data-theme="b">

        <br/>
        <h3 class="ui-bar ui-bar-a" style="text-align:center;"><?php echo $data_list['book_name'] ?></h3>
        <img src=<?php echo SITE_URL ?><?php echo isset($data_list["picture_show"]) ? BOOK_PIC . $data_list["picture_show"] : "" ?> width="100%">
        <p><?php echo $data_list['description'] ?></p>
        <form id="borrowForm" method="post" action="<?php echo base_url('member/bookinfo/borrow')?>" >
            <div data-role="fieldcontain"> 
                <input type="hidden" name="bookadmin_id" id="bookadmin_id" value=<?php echo isset($data_list["bookadmin_id"]) ? $data_list["bookadmin_id"] : "" ?> />
                <button data-them="b" id="submit" type="submit"  <?php echo ($data_list["book_total"] == $data_list["book_borrowed"]) ? "disabled=\"disable\"" : "" ?>><strong>借&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;书&nbsp;--&nbsp;请把我带回家吧！ </strong></button>
            </div>
        </form>
    </div>
</div>
<script language="javascript" type="text/javascript">
    require(['<?php echo SITE_URL ?>scripts/member/bookinfo/borrow.js']);
</script>
