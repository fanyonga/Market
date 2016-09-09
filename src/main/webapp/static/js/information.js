// JavaScript Document


<!--shopcart-->
$(document).ready(function(){
	$(cart).find(":checkbox").click(function(){
		//全选框单击
		if($(this).hasClass("check-all")){
			var checked=$(this).prop("checked");
			$(cart).find(".check-one").prop("checked",checked);
			getTotal();	
		}
		
		//如果手工一个一个的点选了所有勾选框，需要自动将“全选”勾上或取消
		if($(cart).find("tr:gt(0)").hasClass("check-one")){
			var checked=$(this).prop("checked");
			$(cart).find(".check-all").prop("checked",checked);
			getTotal();	
		}
		
		//var items=cart.find("tr:gt(0)");
		//$(cart).find(".check-all").prop("checked",items.find(":checkbox:checked").length==items.length);
		
	});
	
	//小计
	function getSubTotal(row){
		var price=parseFloat($(row).find("span:first").text());
		var qty=parseInt($(row).find(":text").val());
		var result=price*qty;
		$(row).find(".subtotal").text(result);
	};
		
	//金额合计
	function getTotal(){
		var qtyTotal=0;
		var itemcount=0;
		var priceTotal=0;
		$(cart).find("tr:gt(0)").each(function() {
			if($(this).find(":checkbox").prop("checked")==true){
				itemcount++;
				qtyTotal+=parseInt($(this).find(":text").val());
				priceTotal+=parseFloat($(this).find(".subtotal").text());	
			}
		});	
		$("#itemcount").text(itemcount);
		$("#qtyTotal").text(qtyTotal);
		$("#priceTotal").text(priceTotal);
	};
	
	//删除商品和控制改变商品数量
	$(cart).find("tr:gt(0)").each(function() {
		//为数量框添加事件，并更新小计和金额
		var input=$(this).find(":text");
		$(input).keyup(function(){
			var val=parseInt($(this).val());
			if(isNaN(val)||(val<1)){
				$(this).val("1");
			}
			getSubTotal($(this).parent().parent());
			getTotal();	
		});
		//为数量按钮、删除按钮添加事件，并更新小计和金额
		$(this).click(function(){
			var val=parseInt($(input).val());
			if(isNaN(val)||(val<1)){
				val=1;	
			}
			if($(window.event.srcElement).hasClass("minus")){
				if(val>1)
					val--;
				input.val(val);
				getSubTotal(this);
			}else if($(window.event.srcElement).hasClass("plus")){
				if(val<9999)
					val++;
				input.val(val);
				getSubTotal(this);	
			}else if($(window.event.srcElement).hasClass("delete")){
				if(confirm("确定要从购物车中删除此商品吗？")){
					$(this).remove();	
				}	
			}
			getTotal();
		});
	});
	
	$(".pay").children().click(function() {
        if(confirm("确定付款吗？")){
			if($(".cart").hasClass("check-one").prop("checked")==true){
				$(this).parent().parent().remove();
			}
			
		}
    });
});



<!--has-bought-->
$(document).ready(function() {
    $("#has-bought #threemodal .modal-footer .btn-danger").click(function() {
		        
		//将评价提交到后台并在showjudge中显示
		
		
		
		
		
		
		$("#has-bought .judge button").css("background","#CCC");
		$("#has-bought .judge button").html("已评价");
    });
});


<!--goods-->
$(document).ready(function() {
    $("#goods #twomodal .modal-footer .btn-danger").click(function() {
		
        //将图片、留言、价格传到后台并显示在该页面
		
		
		
		
		
		
    });
	
	//图片上传
	function preview()
	{
		var path=document.getElementById("upload").value;
		var img=document.createElement("img");
		img.src=path;
		document.getElementById("face").appendChild("img");
	}
	
});



<!--order-->
$(document).ready(function() {
    $(".state").children(".btn-default").click(function(){
		if(confirm("确定接单吗？")){
			$(this).css("background","#CCC");
			$(this).html("已接单");
			
			//将订单传到后台
			
			
			
			
		}
	});
	$(".state").children(".btn-danger").click(function(){
		if(confirm("确定删除此订单吗？")){
			$(this).parent().parent().remove();
		}
	});
});

