<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path=request.getContextPath();
    String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <meta charset="utf-8">

    <!--css-->
    <link rel="stylesheet" href="<%=basePath%>static/css/bootstrap.min.css">
    <link href="<%=basePath%>static/css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link rel="stylesheet" type="text/css" href="<%=basePath%>static/css/easy-responsive-tabs.css " />

    <!-- for-mobile-apps
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Resale Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
    Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
     //for-mobile-apps -->

    <!--fonts
    <link href='http://fonts.useso.com/css?family=Ubuntu+Condensed' rel='stylesheet' type='text/css'>
    <link href='http://fonts.useso.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
    //fonts-->

    <!-- js -->
    <script type="text/javascript" src="<%=basePath%>static/js/jquery.min.js"></script>
    <script src="<%=basePath%>static/js/bootstrap.min.js"></script>
    <script src="<%=basePath%>static/js/easyResponsiveTabs.js"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            $('#parentVerticalTab').easyResponsiveTabs({
                type: 'vertical', //Types: default, vertical, accordion
                width: 'auto', //auto or any width like 600px
                fit: true, // 100% fit in a container
                closed: 'accordion', // Start closed if in accordion view
                tabidentify: 'hor_1', // The tab groups identifier
                activate: function(event) { // Callback function if tab is switched
                    var $tab = $(this);
                    var $info = $('#nested-tabInfo2');
                    var $name = $('span', $info);
                    $name.text($tab.text());
                    $info.show();
                }
            });
        });
    </script>

    <!--shopcart-->
    <script type="text/javascript">
        $(cart).find(":checkbox").click(function(){
            //全选框单击
            if($(this).hasClass("check-all")){
                var checked=$(this).prop("checked");
                $(cart).find(".check-one").prop("checked","checked");
            }

            //如果手工一个一个的点选了所有勾选框，需要自动将“全选”勾上或取消
            var items=cart.find("tr:gt(0)");
            $(cart).find(".check-all").prop("checked",items.find(".checkbox:checked").length==items.length);
            getTotal();
        });

        //小计
        function getSubTotal(row){
            var price=parseFloat($(row).find("span:first").text());
            var qty=parseInt($(row).find(":text").val());
            var result=price*qty;
            $(row).find(".subtotal").text(result.toFixed(2));
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
            $("#priceTotal").text(priceTotal.toFixed(2));
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
    </script>
</head>
<body>
<!--header-->
<div class="header">
    <div class="container">
        <div class="logo">
            <a href="index.html"><span>二次</span>购</a>
        </div>
        <div class="header-right">
            <a class="account" href="login.html">用户中心</a>
        </div>
    </div>
</div>

<!--section-->
<section>
    <div id="page-wrapper" class="sign-in-wrapper">
        <div class="graphs">
            <div class="categories-section main-grid-border">
                <div class="container">
                    <div class="category-list">
                        <div id="parentVerticalTab">
                            <ul class="resp-tabs-list hor_1">
                                <li>登录</li>
                                <li>购物车</li>
                                <li>我的商品</li>
                                <li>我的订单</li>
                            </ul>

                            <div class="resp-tabs-container hor_1">
                                <!--login-->
                                <div>
                                    <div class="sign-in-form">
                                        <div class="sign-in-form-top">
                                            <h1>用户登录</h1>
                                        </div>
                                        <div class="signin">
                                            <form class="form-group">
                                                <div class="log-input">
                                                    <div class="log-input-left">
                                                        <input type="text" class="user form-control" value="账号" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '账号';}"/>
                                                    </div>
                                                    <div class="clearfix"> </div>
                                                </div>

                                                <div class="log-input">
                                                    <div class="log-input-left">
                                                        <input type="password" class="lock form-control" value="密码" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '密码';}"/>
                                                    </div>
                                                    <div class="clearfix"> </div>
                                                </div>
                                                <input type="submit" value="登录">
                                            </form>
                                        </div>
                                        <div class="new_people">
                                            <h2>为了新用户</h2>
                                            <p>为了更好的用户体验，您可以注册登录网站享受更多服务！</p>
                                            <a href="register.jsp">立即注册</a>
                                        </div>
                                    </div>
                                </div>
                                <!--shopcart-->
                                <div>
                                    <div class="category">
                                        <table id="cart" class="cart table table-condensed">
                                            <thead>
                                            <tr>
                                                <th><label style="width:40px;"><input class="check check-all" type="checkbox"/>全选</label></th>
                                                <th><label>商品</label></th>
                                                <th style="width:90px;"><label>价格</label></th>
                                                <th style="width:120px;"><label>数量</label></th>
                                                <th style="width:100px;"><label>小计</label></th>
                                                <th style="width:40px;"><label>操作</label></th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <tr>
                                                <td><input class="check check-one" type="checkbox"/></td>
                                                <td class="good"><label><a href="single.html"><img src="images/m1.jpg" title="" alt="" /></a></label></td>
                                                <td class="number small-bold-red"><span>139</span></td>
                                                <td class="input-group">
                                                    <span class="input-group-addon minus">-</span>
                                                    <input type="text" class="number form-control input-sm" value="10" />
                                                    <span class="input-group-addon plus">+</span>
                                                </td>
                                                <td class="subtotal number small-bold-red">101</td>
                                                <td class="operation"><span class="delete btn btn-primary btn-xs">删除</span></td>
                                            </tr>
                                            </tbody>
                                        </table>
                                        <div class="row">
                                            <div class="col-md-12 col-lg-12 col-sm-12">
                                                <div style="border-top:1px solid #0FA68C; padding:5px 10px;">
                                                    <div style="margin-left:20px;" class="pull-right total">
                                                        <label>金额合计：<span class="currency">￥</span><span id="priceTotal" class="large-bold-red">0.00</span></label>
                                                    </div>
                                                    <div class="pull-right selected" id="selected">
                                                        <span id="selectedTotal"></span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!--<ul class="list">
                                            <input type="radio" class="radio"/>
                                            <a href="single.jsp">
                                                <li>
                                                <img src="images/m1.jpg" title="" alt="" />
                                                <section class="list-left">
                                                <h5 class="title">**********************************</h5>
                                                <span class="adprice">￥290</span>
                                                </section>
                                                <div class="clearfix"></div>
                                                </li>
                                            </a>

                                            <a href="single.jsp">
                                                <li>
                                                <img src="images/m2.jpg" title="" alt="" />
                                                <section class="list-left">
                                                <h5 class="title">**********************************</h5>
                                                <span class="adprice">￥310</span>
                                                </section>
                                                <div class="clearfix"></div>
                                                </li>
                                            </a>
                                        </ul>-->
                                    </div>
                                </div>

                                <!--goods-->
                                <div>
                                    <div class="category">
                                        <ul class="list">
                                            <a href="single.html">
                                                <li>
                                                    <img src="images/m1.jpg" title="" alt="" />
                                                    <section class="list-left">
                                                        <h5 class="title">**********************************</h5>
                                                        <span class="adprice">￥290</span>
                                                    </section>
                                                    <div class="clearfix"></div>
                                                </li>
                                            </a>

                                            <a href="single.html">
                                                <li>
                                                    <img src="images/m2.jpg" title="" alt="" />
                                                    <section class="list-left">
                                                        <h5 class="title">**********************************</h5>
                                                        <span class="adprice">￥310</span>
                                                    </section>
                                                    <div class="clearfix"></div>
                                                </li>
                                            </a>
                                        </ul>
                                    </div>

                                    <div>
                                        <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" date-target="#mymodal" >发布新商品</button>
                                        <div class="modal fade" id="mymodal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                                        <h4 class="modal-title" id="myModalLabel">发布新商品</h4>
                                                    </div>
                                                    <div class="modal-body">
                                                        <article></article>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                                                        <button type="button" class="btn btn-primary">确定</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                                <!--order-->
                                <div>
                                    <div class="category">
                                        <ul class="list">
                                            <a href="single.html">
                                                <li>
                                                    <img src="images/m1.jpg" title="" alt="" />
                                                    <section class="list-left">
                                                        <h5 class="title">**********************************</h5>
                                                        <span class="adprice">￥290</span>
                                                    </section>
                                                    <div class="clearfix"></div>
                                                </li>
                                            </a>

                                            <a href="single.html">
                                                <li>
                                                    <img src="images/m2.jpg" title="" alt="" />
                                                    <section class="list-left">
                                                        <h5 class="title">**********************************</h5>
                                                        <span class="adprice">￥310</span>
                                                    </section>
                                                    <div class="clearfix"></div>
                                                </li>
                                            </a>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!--footer -->
<footer class="diff">
    <div class="footer-bottom text-center">
        <div class="container">
            <div class="footer-logo">
                <a href="index.html"><span>二次</span>购</a>
            </div>
            <div class="copyrights">
                <p>Copyright &copy; 2016.Company name All rights reserved.</p>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</footer>
</body>
</html>
