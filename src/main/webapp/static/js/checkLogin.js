// JavaScript Document

$(document).ready(function() {
	$(":input").blur(function(){
		if($(this).is("#account")){
			if(!(/^\w{6,18}$/).test(this.value)){
				$("#check_account").html("账号为6~18个字符");
				return false;
			}else{
				$("#check_account").remove();
				return true;
			}
		}
		if($(this).is("#password")){
			if(!(/^\w[a-zA-Z0-9_\.\~]{5,15}$/).test(this.value)){
				$("#check_password").html("密码为6~16个字符可由英文、数字和符号组成");
				return false;
			}else{
				$("#check_password").remove();
				return true;	
			}
		}	
	});
	
	$(":input").keyup(function() {
        $(this).triggerHandler("blur");
    });
});