$(function() { 
    $('#submit').bind('click', function() { 
        debugger;
 
        var formData = $('#borrowForm').serialize();          
      
        $.ajax({ 
            type : "POST", 
            url  : SITE_URL + "member/bookinfo/borrow",  
            cache : false, 
            data : formData, 
            success : onSuccess, 
            error : onError 
        }); 
        return false; 
    }); 
}); 
 
function onSuccess(data,status){ 
    data = $.trim(data); //去掉前后空格 
    $('#notification').text(data); 
} 
 
function onError(data,status){ 
    //进行错误处理 
}