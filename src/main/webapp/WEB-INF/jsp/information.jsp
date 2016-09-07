<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path=request.getContextPath();
    String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>

<!DOCTYPE html>
<html>
<head>
    <title>Information</title>
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
    <script type="text/javascript" src="<%=basePath%>static/js/shopcart.js"></script>
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
        $(document).ready(function() {
            $(".pay").children().click(function() {
                if(confirm("确定付款吗？")){
                    if($(".cart").find(".check-one").prop("checked")==true){
                        $(this).parent().parent().remove();
                    }
                }
            });
        });
    </script>

    <!--上传图片-->
    <script type="text/javascript">

    </script>

    <!--order-->
    <script type="text/javascript">
        $(document).ready(function() {
            $(".state").children(".btn-default").click(function(){
                if(confirm("确定接单吗？")){
                    $(this).css("background","#CCC");
                    $(this).html("已接单");
                }
            });
            $(".state").children(".btn-danger").click(function(){
                if(confirm("确定删除此订单吗？")){
                    $(this).parent().parent().remove();
                }
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

                                <li>购物车</li>
                                <li>已付款的宝贝</li>
                                <li>我的商品</li>
                                <li>我的订单</li>
                            </ul>

                            <div class="resp-tabs-container hor_1">
                                <!--shopcart-->
                                <div>
                                    <div id="cart" class="category">
                                        <table id="cart" class="cart table table-striped">
                                            <thead>
                                            <tr>
                                                <th><label style="width:60px;"><input class="check check-all" type="checkbox"/>全选</label></th>
                                                <th><label>商品</label></th>
                                                <th style="width:90px;"><label>价格</label></th>
                                                <th style="width:125px;"><label>数量</label></th>
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
                                                    <input type="text" class="number form-control input-sm" value="1" />
                                                    <span class="input-group-addon plus">+</span>
                                                </td>
                                                <td class="subtotal number small-bold-red">139</td>
                                                <td class="operation"><button type="button" class="delete btn btn-danger">删除</button></td>
                                            </tr>
                                            <tr>
                                                <td><input class="check check-one" type="checkbox"/></td>
                                                <td class="good"><label><a href="single.html"><img src="images/m1.jpg" title="" alt="" /></a></label></td>
                                                <td class="number small-bold-red"><span>139</span></td>
                                                <td class="input-group">
                                                    <span class="input-group-addon minus">-</span>
                                                    <input type="text" class="number form-control input-sm" value="1" />
                                                    <span class="input-group-addon plus">+</span>
                                                </td>
                                                <td class="subtotal number small-bold-red">139</td>
                                                <td class="operation"><button type="button" class="delete btn btn-danger">删除</button></td>
                                            </tr>
                                            </tbody>
                                        </table>
                                        <div class="row">
                                            <div class="col-md-12 col-lg-12 col-sm-12">
                                                <div style="border-top:1px solid #0FA68C; padding:5px 10px;">
                                                    <div style="margin:20px 0 0 20px;" class="pull-right total">
                                                        <label>金额合计：<span class="currency">￥</span><span id="priceTotal" class="large-bold-red">0.00</span></label>
                                                    </div>
                                                    <div class="pull-right selected" id="selected">
                                                        <span id="selectedTotal"></span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="pull-right pay"><button type="button" class="btn btn-default btn-lg">确认支付</button></div>

                                    </div>
                                </div>

                                <!--has bought-->
                                <div>
                                    <div class="category" id="has-bought">
                                        <ul class="list">
                                            <li>
                                                <a href="single.html"><img src="images/m1.jpg" title="" alt="" /></a>
                                                <section class="list-left">
                                                    <h5 class="title">**********************************</h5>
                                                    <span class="adprice">￥290</span>
                                                </section>
                                                <div class="judge"><button type="button" class="btn btn-default btn-lg" data-toggle="modal" data-target="#threemodal">评价</button></div>
                                                <div class="clearfix"></div>
                                            </li>

                                            <li>
                                                <a href="single.html"><img src="images/m2.jpg" title="" alt="" /></a>
                                                <section class="list-left">
                                                    <h5 class="title">**********************************</h5>
                                                    <span class="adprice">￥310</span>
                                                </section>
                                                <div class="judge"><button type="button" class="btn btn-default btn-lg" data-toggle="modal" data-target="#threemodal">评价</button></div>
                                                <div class="clearfix"></div>
                                            </li>
                                        </ul>

                                        <div class="modal fade" id="threemodal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h3>评价~~</h3>
                                                    </div>
                                                    <div class="modal-body">
                                                        <textarea rows="10px" cols="70px"></textarea>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                                                        <button type="button" class="btn btn-danger">确定</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <!--goods-->
                                <div>
                                    <div class="category" id="goods">
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

                                        <div class="pull-right new"><button type="button" class="btn btn-default btn-lg" data-toggle="modal" data-target="#twomodal">发布新商品</button></div>
                                        <div class="modal fade" id="twomodal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h3>发布新商品~~</h3>
                                                    </div>
                                                    <div class="modal-body">

                                                        <textarea rows="5px" cols="20px"></textarea>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                                                        <button type="button" class="btn btn-danger">确定</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <!--order-->
                                <div>
                                    <div class="category" id="order">
                                        <ul class="list">
                                            <li>
                                                <a href="single.html"><img src="images/m1.jpg" title="" alt="" /></a>
                                                <section class="list-left">
                                                    <h5 class="title">**********************************</h5>
                                                    <span class="adprice">￥290</span>
                                                </section>
                                                <div class="state">
                                                    <button type="button" class="btn btn-default btn-lg">等待接单</button>
                                                    <button type="button" class="btn btn-danger btn-xs pull-right">删除订单</button>
                                                </div>
                                                <div class="clearfix"></div>
                                            </li>

                                            <li>
                                                <a href="single.html"><img src="images/m2.jpg" title="" alt="" /></a>
                                                <section class="list-left">
                                                    <h5 class="title">**********************************</h5>
                                                    <span class="adprice">￥310</span>

                                                </section>
                                                <div class="state">
                                                    <button type="button" class="btn btn-default btn-lg">等待接单</button>
                                                    <button type="button" class="btn btn-danger btn-xs pull-right">删除订单</button>
                                                </div>
                                                <div class="clearfix"></div>
                                            </li>
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
<footer>
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