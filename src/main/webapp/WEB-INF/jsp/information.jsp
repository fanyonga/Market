<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

    <!--for-mobile-apps -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Resale Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>


    <!--fonts
    <link href='http://fonts.useso.com/css?family=Ubuntu+Condensed' rel='stylesheet' type='text/css'>
    <link href='http://fonts.useso.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
    //fonts-->

    <!-- js -->
    <script type="text/javascript" src="<%=basePath%>static/js/jquery.min.js"></script>
    <script src="<%=basePath%>static/js/bootstrap.min.js"></script>
    <script src="<%=basePath%>static/js/easyResponsiveTabs.js"></script>
    <script type="text/javascript" src="<%=basePath%>static/js/information.js"></script>
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
                                <li>已接收的订单</li>
                            </ul>

                            <div class="resp-tabs-container hor_1">
                                <!--shopcart-->
                                <div>
                                    <div id="cart" class="category">
                                        <table  class="cart table table-striped">
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

                                                <c:forEach items="${cartGoodList}" var="good">
                                                    <tr>
                                                        <td><input class="check check-one" type="checkbox"/></td>
                                                        <td class="good"><label><a href="single.html?id=${good.gid}">
                                                            <img src="<%=basePath%>static/images/${good.picture}" title="" alt="" /></a></label></td>
                                                        <td class="number small-bold-red"><span>${good.price}</span></td>
                                                        <td class="input-group">
                                                            <span class="input-group-addon minus">-</span>
                                                            <input type="text" class="number form-control input-sm" value="1" />
                                                            <span class="input-group-addon plus">+</span>
                                                        </td>
                                                        <td class="subtotal number small-bold-red">${good.price}</td>
                                                        <td class="operation"><button type="button" class="delete btn btn-danger">删除</button></td>
                                                    </tr>
                                                </c:forEach>
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
                                            <c:forEach items="${buyedList}" var="good">
                                            <li>
                                                <a href="single.html?id=${good.gid}">
                                                    <img src="<%=basePath%>static/images/${good.picture}" title="" alt="" />
                                                </a>
                                                <section class="list-left">
                                                    <h5 class="title">${good.gname}</h5>
                                                    <span class="adprice">${good.price}</span>
                                                </section>
                                                <div class="judge"><button type="button" class="btn btn-default btn-lg" data-toggle="modal" data-target="#threemodal">评价</button></div>
                                                <div class="clearfix"/>
                                            </li>
                                            </c:forEach>
                                        </ul>

                                        <div class="modal fade" id="threemodal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h3>评价~~</h3>
                                                    </div>
                                                    <div class="modal-body">
                                                        <textarea rows="5px" cols="75px"></textarea>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                                                        <button type="submit" class="btn btn-danger">确定</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <!--goods-->
                                <!--添加商品是否成功是否成功-->
                                <%
                                    String msg=(String)session.getAttribute("msg");
                                    if(msg!=null){
                                        out.print("<span id=\"goods_result\" style=\"color:red; font-size:30px;\">"+msg+"</span>");
                                        session.removeAttribute("msg");
                                    }
                                %>
                                <div>
                                    <div class="category" id="goods">
                                        <ul class="list">
                                            <c:forEach items="${myGoodList}" var="goods">
                                                <a href="single.html?id=${goods.gid}">
                                                    <li>
                                                        <img src="<%=basePath%>static/images/${goods.picture}" title="" alt="" />
                                                        <section class="list-left">
                                                            <h5 class="title">${goods.gname}</h5>
                                                            <span class="adprice">￥${goods.price}</span>
                                                        </section>
                                                        <div class="clearfix"></div>
                                                    </li>
                                                </a>
                                            </c:forEach>
                                        </ul>

                                        <div class="pull-right new"><button type="button" class="btn btn-default btn-lg" data-toggle="modal" data-target="#twomodal">发布新商品</button></div>
                                        <div class="modal fade" id="twomodal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h3>发布新商品~~</h3>
                                                    </div>
                                                    <form action="addGoodInfo" method="post" enctype="multipart/form-data" >
                                                        <div class="modal-body">
                                                            上传图片：<input type="file" id="upload" name="file" onChange="preview()"/><br>
                                                            <img id="face"/>
                                                            <div class="add_detail">
                                                                <input type="text" id="add_gname" name="gname" placeholder="商品名称"/><br>
                                                                <input type="text" id="add_price" name="price" placeholder="商品价格"/><br>
                                                                <input type="text" id="add_stock" name="stock" placeholder="商品存货"/>
                                                                <textarea placeholder="商品描述" name="descript"></textarea>
                                                            </div>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                                                            <button type="submit" class="btn btn-danger">确定</button>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <!--order-->
                                <div>
                                    <div class="category" id="order">
                                        <ul class="list">
                                            <c:forEach items="${myOrder}" var="order">
                                                <li>
                                                    <a href="single.html?id=${order.goods.gid}"><img src="<%=basePath%>static/images/${order.goods.picture}" title="" alt="" /></a>
                                                    <section class="list-left">
                                                        <h5 class="title">${order.goods.gname}</h5>
                                                        <span class="adprice">￥${order.goods.price*order.number}</span>
                                                        <label>卖家家：<span class="customer">${order.goods.user.username}</span><br>
                                                            卖家电话：<span class="customer_phone">${order.goods.user.phone}</span><br>
                                                            卖家地址：<span class="customer_address">${order.goods.user.address}</span>
                                                        </label>
                                                    </section>
                                                    <div class="state">
                                                        <button type="button" class="btn btn-default btn-lg">等待接单</button>
                                                        <button type="button" class="btn btn-danger btn-xs pull-right">删除订单</button>
                                                    </div>
                                                    <div class="clearfix"></div>
                                                </li>
                                            </c:forEach>
                                        </ul>
                                    </div>
                                </div>

                                <!--has-ordered-->
                                <div>
                                    <div class="category" id="has-ordered">
                                        <ul class="list">
                                            <c:forEach items="${myRecOrder}" var="order">
                                                <li>
                                                    <a href="single.html?id=${order.goods.gid}">
                                                        <img src="<%=basePath%>static/images/${order.goods.picture}" title="" alt="" />
                                                    </a>
                                                    <section class="list-left">
                                                        <h5 class="title">${order.goods.gname}</h5>
                                                        <span class="adprice">￥${order.goods.price*order.number}</span>
                                                        <label>买家：<span class="customer">${order.user.username}</span><br>
                                                            买家电话：<span class="customer_phone">${order.user.phone}</span><br>
                                                            买家收货地址：<span class="customer_address">${order.user.address}</span>
                                                        </label>
                                                    </section>
                                                    <div class="state">
                                                        <button type="button" class="btn btn-default btn-lg">等待接单</button>
                                                        <button type="button" class="btn btn-danger btn-xs pull-right">删除订单</button>
                                                    </div>
                                                    <div class="clearfix"></div>
                                                </li>
                                            </c:forEach>
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