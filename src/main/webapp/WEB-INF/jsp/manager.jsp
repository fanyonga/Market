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

    <!--goods_manager-->
    <script type="text/javascript">
        $(document).ready(function() {
            $(".goods_check").children(".btn-default").click(function() {
                if(confirm("确定该商品通过审核吗？")){
                    $(this).css("background","#CCC");
                    $(this).html("已审核");

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
                                <li>用户管理</li>
                                <li>商品管理</li>
                                <li>留言管理</li>
                                <li>公告管理</li>

                            </ul>

                            <div class="resp-tabs-container hor_1">
                                <!--user-manager-->
                                <div>
                                    <div class="category" id="user_manager">
                                        <h4>在线人数&nbsp;<span>??</span></h4>
                                        <section>
                                            <ul>
                                                <li>nvfh c</li>
                                                <li>xshdd</li>
                                            </ul>
                                        </section>
                                    </div>
                                </div>

                                <!--goods-manager-->
                                <div>
                                    <div class="category" id="goods_manager">
                                        <ul class="list">
                                            <li>
                                                <a href="single.html"><img src="images/m1.jpg" title="" alt="" /></a>
                                                <section class="list-left">
                                                    <h5 class="title">**********************************</h5>
                                                    <span class="adprice">￥290</span>
                                                </section>
                                                <div class="goods_check"><button type="button" class="btn btn-default btn-lg">等待审核</button></div>
                                                <div class="clearfix"></div>
                                            </li>

                                            <li>
                                                <a href="single.html"><img src="images/m2.jpg" title="" alt="" /></a>
                                                <section class="list-left">
                                                    <h5 class="title">**********************************</h5>
                                                    <span class="adprice">￥310</span>
                                                </section>
                                                <div class="goods_check"><button type="button" class="btn btn-default btn-lg">等待审核</button></div>
                                                <div class="clearfix"></div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>

                                <!--messager-manager-->
                                <div>

                                </div>

                                <!--notice-manager-->
                                <div>
                                    <div class="category" id="notice">
                                        <ul class="list">
                                            <li>
                                                <h3>公告1</h3>
                                            </li>

                                            <li>
                                                <h3>公告2</h3>

                                            </li>
                                        </ul>

                                        <div class="pull-right add_notice"><button type="button" class="btn btn-default btn-lg" data-toggle="modal" data-target="#fourmodal">新公告</button></div>
                                        <div class="modal fade" id="fourmodal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h3>新公告</h3>
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