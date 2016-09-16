<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path=request.getContextPath();
    String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>
<!DOCTYPE html>
<html>
<head>
    <title>Single</title>
    <meta charset="utf-8">

    <!--css-->
    <link rel="stylesheet" href="<%=basePath%>static/css/bootstrap.min.css">
    <link href="<%=basePath%>static/css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link rel="stylesheet" href="<%=basePath%>static/css/flexslider.css" type="text/css" media="screen" />

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
    <script type="text/javascript" src="<%=basePath%>static/js/jquery.flexslider.js"></script>
    <script>
        $(document).ready(function() {
            $('.flexslider').flexslider({
                animation: "slide",
                controlNav: "thumbnails"
            });
        });
    </script>

    <script type="text/javascript">
        $(document).ready(function() {
            $("#add_cart").click(function() {
                var gid=$("#good_id").text();
                $.ajax({
                    url:'cart.json',
                    type:'post',
                    data:{'action':'add','gid':gid},
                    datatype:'json',
                    success:function (data) {
                        //将返回的提示信息data{code,msg}输出到modal-header这里
                        $(".modal-header").html("&nbsp;"+data.msg)
                    }
                })
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

    <div class="main-banner banner text-center">
        <div class="container">
            <h1> 用我们的<span class="segment-heading">双手  </span>创造奇迹 </h1>
            <p>用平凡换来的惊奇，分享才能带来更大的快乐！</p>
        </div>
    </div>
</div>
<div id="good_id" hidden="hidden">${goods.gid}</div>
<!--single-page-->
<div class="single-page main-grid-border">
    <div class="container">
        <div class="product-desc">
            <div class="col-md-12 product-view">
                <div class="flexslider">
                    <ul class="slides">
                        <li data-thumb="<%=basePath%>static/images/${goods.picture}">
                            <img src="<%=basePath%>static/images/${goods.picture}" />
                        </li>
                        <li data-thumb="<%=basePath%>static/images/${goods.picture}">
                            <img src="<%=basePath%>static/images/${goods.picture}" />
                        </li>
                        <li data-thumb="<%=basePath%>static/images/${goods.picture}">
                            <img src="<%=basePath%>static/images/${goods.picture}" />
                        </li>
                    </ul>
                </div>

                <div class="product-details">
                    <div class="left-content">
                        <p><strong>详情：</strong>${goods.descript}</p>
                        <label><strong>商家：</strong><span class="sh_username">${goods.user.username}</span><br><strong>商家电话：</strong><span class="sh_phone">${goods.user.phone}</span></label>
                    </div>
                    <div class="right-content">
                        <h2>价格：<span>￥</span>${goods.price}</h2>
                        <a class="btn btn-primary btn-lg" data-toggle="modal" data-target="#mymodal">
                            <img src="<%=basePath%>static/images/btn_cart.png" id="add_cart"/>
                        </a>
                    </div>
                    <div class="modal fade" id="mymodal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                </div>
                                <div class="modal-body" align="center"><img src="<%=basePath%>static/images/${goods.picture}" /></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>

<!--footer-->
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