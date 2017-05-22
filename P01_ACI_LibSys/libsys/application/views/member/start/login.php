<?php defined('IN_MEMBER') or exit('No permission resources.'); ?>


<div data-role="page">
    <div data-role="header">
        <h1>登录</h1>
        <br/>
    </div>

    <div class="container">
        <form class="form-signin" role="form" action="<?php echo current_url() ?>"  method="post" id="validateform" name="validateform">
    
            <fieldset data-role="controlgroup" data-type="center" data-mini="true">
                    <span class="input-group-addon" ><i class="glyphicon glyphicon-user"></i></span>
                    <input type="text" id="username" name="username" class="form-control" placeholder="请输入管理帐号" autofocus> 
                    <br/>
                    <span class="input-group-addon" id="basic-addon1"><i class="glyphicon glyphicon-lock"></i></span>
                    <input type="password" id="password" name="password" class="form-control" placeholder="请输入管理密码"  autofocus>
                    <br/><br/>
                    <label>
                        <input type="checkbox" id="rmbUser" value="remember-me"> 在此设备上保存登录
                    </label>
                </fieldset>
                <br/><br/><br/><br/>

                <button class="ui-btn ui-btn-b" type="submit" id="dosubmit" > 登录</button>
        </form>
    </div>

    <script language="javascript" type="text/javascript">
        require(['<?php echo SITE_URL ?>scripts/common.js'], function (common) {
            require(['<?php echo SITE_URL ?>scripts/<?php echo $folder_name ?>/login.js']);
        });
    </script>
</div>
