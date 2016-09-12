// JavaScript Document

$(document).ready(function() {
	$(":input").blur(function() {
        if($(this).is("#username")){
			if(this.value==''){
				$("#isusername").css("color","red");
				return false;
			}else{
				$("#isusername").css("color","#000");
				return true;
			}
		}
		if($(this).is("#account")){
			if(!(/^\w{6,18}$/).test(this.value)){
				$("#isaccount").css("color","red");
				return false;
			}else{
				$("#isaccount").css("color","#000");
				return true;
			}
		}
		if($(this).is("#pwd1")){
			if(!(/^\w[a-zA-Z0-9_\.\~]{5,15}$/).test(this.value)){
				$("#ispassword").css("color","red");
				return false;
			}else{
				$("#ispassword").css("color","#000");
				return true;
			}
		}
		if($(this).is("#pwd2")){
			if(!(/^\w[a-zA-Z0-9_\.\~]{5,15}$/).test(this.value)||((this.value)!=$("#pwd1").val())){
				$("#issure").css("color","red");
				return false;
			}else{
				$("#issure").css("color","#000");
				return true;
			}
		}
		if($(this).is("#telephone")){
			if(!(/^[1](3|5|8)[0-9]{9}$/).test(this.value)){
				$("#istelephone").css("color","red");
				return false;
			}else{
				$("#istelephone").css("color","#000");
				return true;
			}
		}
		if($(this).is("#email")){
			if(!(/^\w+@\w+([\-]\w+)?[\.](com|cn|net|org)$/).test(this.value)){
				$("#ismail").css("color","red");
				return false;
			}else{
				$("#ismail").css("color","#000");
				return true;
			}
		}
		if($(this).is("#address")){
			if(this.value==''){
				$("#isaddress").css("color","red");
				return false;
			}else{
				$("#isaddress").css("color","#000");
				return true;
			}
		}
    });
	
	$(":input").keyup(function() {
        $(this).triggerHandler("blur");
    });
	
    $("#register_submit").click(function() {
		var param=$("#register-form").serialize();
		//先验证账号是否已被注册，然后将数据传到后台
		$.ajax({
			url:'register.json',
			type:'post',
			data:param,
			datatype:'json',
			success:function (data) {
				alert(data.errMsg);
				if(data.errCode>0){
					$("#register-form").clear();
				}
			}
		});
		
    });
});

