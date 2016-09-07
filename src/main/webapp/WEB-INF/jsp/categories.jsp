<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path=request.getContextPath();
    String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>
<!DOCTYPE html>
<html>
<head>
    <title>Categories</title>
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
            //Vertical Tab
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

<div class="banner text-center">
    <div class="container">
        <h1> 用我们的<span class="segment-heading">双手  </span>创造奇迹 </h1>
        <p>用平凡换来的惊奇，分享才能带来更大的快乐！</p>
    </div>
</div>

<!-- Categories-section -->
<div class="categories-section main-grid-border">
    <div class="container">
        <h2 class="head">主要种类</h2>
        <div class="category-list">
            <div id="parentVerticalTab">
                <ul class="resp-tabs-list hor_1">
                    <li>手机</li>
                    <li>电脑</li>
                    <li>汽车</li>
                    <li>家居</li>
                    <li>宠物</li>
                    <li>书籍</li>
                    <li>服饰</li>
                    <li>公寓</li>
                </ul>
                <div class="resp-tabs-container hor_1">
                    <span class="active total" style="display:block;" >用户&nbsp;<strong><a href="login.html">请先登录</a></strong></span>
                    <!--mobile-phone-->
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

                                <a href="single.html">
                                    <li>
                                        <img src="images/m3.jpg" title="" alt="" />
                                        <section class="list-left">
                                            <h5 class="title">***********************************</h5>
                                            <span class="adprice">￥190</span>
                                        </section>
                                        <section class="list-right">
                                            <div class="clearfix"></div>
                                        </section>
                                    </li>
                                </a>

                                <a href="single.html">
                                    <li>
                                        <img src="images/m4.jpg" title="" alt="" />
                                        <section class="list-left">
                                            <h5 class="title">************************************</h5>
                                            <span class="adprice">￥480</span>
                                        </section>
                                        <div class="clearfix"></div>
                                    </li>
                                </a>

                                <a href="single.html">
                                    <li>
                                        <img src="images/m5.jpg" title="" alt="" />
                                        <section class="list-left">
                                            <h5 class="title">*************************************</h5>
                                            <span class="adprice">￥859</span>
                                        </section>
                                        <div class="clearfix"></div>
                                    </li>
                                </a>
                            </ul>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                    <!--laptops-->
                    <div>
                        <div class="category">
                            <ul class="list">
                                <a href="single.html">
                                    <li>
                                        <img src="images/e1.jpg" title="" alt="" />
                                        <section class="list-left">
                                            <h5 class="title">***********************************</h5>
                                            <span class="adprice">￥290</span>
                                        </section>
                                        <div class="clearfix"></div>
                                    </li>
                                </a>

                                <a href="single.html">
                                    <li>
                                        <img src="images/e2.jpg" title="" alt="" />
                                        <section class="list-left">
                                            <h5 class="title">***********************************</h5>
                                            <span class="adprice">￥310</span>
                                        </section>
                                        <div class="clearfix"></div>
                                    </li>
                                </a>

                                <a href="single.html">
                                    <li>
                                        <img src="images/e3.jpg" title="" alt="" />
                                        <section class="list-left">
                                            <h5 class="title">***********************************</h5>
                                            <span class="adprice">￥190</span>
                                        </section>
                                        <div class="clearfix"></div>
                                    </li>
                                </a>

                                <a href="single.html">
                                    <li>
                                        <img src="images/e4.jpg" title="" alt="" />
                                        <section class="list-left">
                                            <h5 class="title">**********************************</h5>
                                            <span class="adprice">￥480</span>
                                        </section>
                                        <div class="clearfix"></div>
                                    </li>
                                </a>

                                <a href="single.html">
                                    <li>
                                        <img src="images/e5.jpg" title="" alt="" />
                                        <section class="list-left">
                                            <h5 class="title">**********************************</h5>
                                            <span class="adprice">￥859</span>
                                        </section>
                                        <div class="clearfix"></div>
                                    </li>
                                </a>
                            </ul>
                        </div>
                    </div>
                    <!--cars-->
                    <div>
                        <div class="category">
                            <ul class="list">
                                <a href="single.html">
                                    <li>
                                        <img src="images/c1.jpg" title="" alt="" />
                                        <section class="list-left">
                                            <h5 class="title">***********************************</h5>
                                            <span class="adprice">￥290</span>
                                        </section>
                                        <div class="clearfix"></div>
                                    </li>
                                </a>

                                <a href="single.html">
                                    <li>
                                        <img src="images/c2.jpg" title="" alt="" />
                                        <section class="list-left">
                                            <h5 class="title">***********************************</h5>
                                            <span class="adprice">￥310</span>
                                        </section>
                                        <div class="clearfix"></div>
                                    </li>
                                </a>

                                <a href="single.html">
                                    <li>
                                        <img src="images/c3.jpg" title="" alt="" />
                                        <section class="list-left">
                                            <h5 class="title">***********************************</h5>
                                            <span class="adprice">￥190</span>
                                        </section>
                                        <div class="clearfix"></div>
                                    </li>
                                </a>

                                <a href="single.html">
                                    <li>
                                        <img src="images/c4.jpg" title="" alt="" />
                                        <section class="list-left">
                                            <h5 class="title">**********************************</h5>
                                            <span class="adprice">￥480</span>
                                        </section>
                                        <div class="clearfix"></div>
                                    </li>
                                </a>

                                <a href="single.html">
                                    <li>
                                        <img src="images/c5.jpg" title="" alt="" />
                                        <section class="list-left">
                                            <h5 class="title">**********************************</h5>
                                            <span class="adprice">￥859</span>
                                        </section>
                                        <div class="clearfix"></div>
                                    </li>
                                </a>
                            </ul>
                        </div>
                    </div>
                    <!--furniture-->
                    <div>
                        <div class="category">
                            <ul class="list">
                                <a href="single.html">
                                    <li>
                                        <img src="images/fr1.jpg" title="" alt="" />
                                        <section class="list-left">
                                            <h5 class="title">***********************************</h5>
                                            <span class="adprice">￥290</span>
                                        </section>
                                        <div class="clearfix"></div>
                                    </li>
                                </a>

                                <a href="single.html">
                                    <li>
                                        <img src="images/fr2.jpg" title="" alt="" />
                                        <section class="list-left">
                                            <h5 class="title">***********************************</h5>
                                            <span class="adprice">￥310</span>
                                        </section>
                                        <div class="clearfix"></div>
                                    </li>
                                </a>

                                <a href="single.html">
                                    <li>
                                        <img src="images/fr3.jpg" title="" alt="" />
                                        <section class="list-left">
                                            <h5 class="title">***********************************</h5>
                                            <span class="adprice">￥190</span>
                                        </section>
                                        <div class="clearfix"></div>
                                    </li>
                                </a>

                                <a href="single.html">
                                    <li>
                                        <img src="images/fr4.jpg" title="" alt="" />
                                        <section class="list-left">
                                            <h5 class="title">**********************************</h5>
                                            <span class="adprice">￥480</span>
                                        </section>
                                        <div class="clearfix"></div>
                                    </li>
                                </a>

                                <a href="single.html">
                                    <li>
                                        <img src="images/fr5.jpg" title="" alt="" />
                                        <section class="list-left">
                                            <h5 class="title">**********************************</h5>
                                            <span class="adprice">￥859</span>
                                        </section>
                                        <div class="clearfix"></div>
                                    </li>
                                </a>
                            </ul>
                        </div>
                    </div>
                    <!--pets-->
                    <div>
                        <div class="category">
                            <ul class="list">
                                <a href="single.html">
                                    <li>
                                        <img src="images/d1.jpg" title="" alt="" />
                                        <section class="list-left">
                                            <h5 class="title">***********************************</h5>
                                            <span class="adprice">￥290</span>
                                        </section>
                                        <div class="clearfix"></div>
                                    </li>
                                </a>

                                <a href="single.html">
                                    <li>
                                        <img src="images/d2.jpg" title="" alt="" />
                                        <section class="list-left">
                                            <h5 class="title">***********************************</h5>
                                            <span class="adprice">￥310</span>
                                        </section>
                                        <div class="clearfix"></div>
                                    </li>
                                </a>

                                <a href="single.html">
                                    <li>
                                        <img src="images/d3.jpg" title="" alt="" />
                                        <section class="list-left">
                                            <h5 class="title">***********************************</h5>
                                            <span class="adprice">￥190</span>
                                        </section>
                                        <div class="clearfix"></div>
                                    </li>
                                </a>

                                <a href="single.html">
                                    <li>
                                        <img src="images/d4.jpg" title="" alt="" />
                                        <section class="list-left">
                                            <h5 class="title">**********************************</h5>
                                            <span class="adprice">￥480</span>
                                        </section>
                                        <div class="clearfix"></div>
                                    </li>
                                </a>

                                <a href="single.html">
                                    <li>
                                        <img src="images/d5.jpg" title="" alt="" />
                                        <section class="list-left">
                                            <h5 class="title">**********************************</h5>
                                            <span class="adprice">￥859</span>
                                        </section>
                                        <div class="clearfix"></div>
                                    </li>
                                </a>
                            </ul>
                        </div>
                    </div>
                    <!--books-->
                    <div>
                        <div class="category">
                            <ul class="list">
                                <a href="single.html">
                                    <li>
                                        <img src="images/b4.jpg" title="" alt="" />
                                        <section class="list-left">
                                            <h5 class="title">***********************************</h5>
                                            <span class="adprice">￥290</span>
                                        </section>
                                        <div class="clearfix"></div>
                                    </li>
                                </a>
                                <a href="single.html">
                                    <li>
                                        <img src="images/b5.jpg" title="" alt="" />
                                        <section class="list-left">
                                            <h5 class="title">***********************************</h5>
                                            <span class="adprice">￥310</span>
                                        </section>
                                        <div class="clearfix"></div>
                                    </li>
                                </a>
                                <a href="single.html">
                                    <li>
                                        <img src="images/b10.jpg" title="" alt="" />
                                        <section class="list-left">
                                            <h5 class="title">***********************************</h5>
                                            <span class="adprice">￥190</span>
                                        </section>
                                        <div class="clearfix"></div>
                                    </li>
                                </a>
                                <a href="single.html">
                                    <li>
                                        <img src="images/b12.jpg" title="" alt="" />
                                        <section class="list-left">
                                            <h5 class="title">**********************************</h5>
                                            <span class="adprice">￥480</span>
                                        </section>
                                        <div class="clearfix"></div>
                                    </li>
                                </a>
                                <a href="single.html">
                                    <li>
                                        <img src="images/b13.jpg" title="" alt="" />
                                        <section class="list-left">
                                            <h5 class="title">**********************************</h5>
                                            <span class="adprice">￥859</span>
                                        </section>
                                        <div class="clearfix"></div>
                                    </li>
                                </a>
                            </ul>
                        </div>
                    </div>
                    <!--fashion-->
                    <div>
                        <div class="category">
                            <ul class="list">
                                <a href="single.html">
                                    <li>
                                        <img src="images/fa1.jpg" title="" alt="" />
                                        <section class="list-left">
                                            <h5 class="title">***********************************</h5>
                                            <span class="adprice">￥290</span>
                                        </section>
                                        <div class="clearfix"></div>
                                    </li>
                                </a>
                                <a href="single.html">
                                    <li>
                                        <img src="images/fa2.jpg" title="" alt="" />
                                        <section class="list-left">
                                            <h5 class="title">***********************************</h5>
                                            <span class="adprice">￥310</span>
                                        </section>
                                        <div class="clearfix"></div>
                                    </li>
                                </a>
                                <a href="single.html">
                                    <li>
                                        <img src="images/fa3.jpg" title="" alt="" />
                                        <section class="list-left">
                                            <h5 class="title">***********************************</h5>
                                            <span class="adprice">￥190</span>
                                        </section>
                                        <div class="clearfix"></div>
                                    </li>
                                </a>
                                <a href="single.html">
                                    <li>
                                        <img src="images/fa4.jpg" title="" alt="" />
                                        <section class="list-left">
                                            <h5 class="title">**********************************</h5>
                                            <span class="adprice">￥480</span>
                                        </section>
                                        <div class="clearfix"></div>
                                    </li>
                                </a>
                                <a href="single.html">
                                    <li>
                                        <img src="images/fa5.jpg" title="" alt="" />
                                        <section class="list-left">
                                            <h5 class="title">**********************************</h5>
                                            <span class="adprice">￥859</span>
                                        </section>
                                        <div class="clearfix"></div>
                                    </li>
                                </a>
                            </ul>
                        </div>
                    </div>
                    <!--apartment-->
                    <div>
                        <div class="category">
                            <ul class="list">
                                <a href="single.html">
                                    <li>
                                        <img src="images/r1.jpg" title="" alt="" />
                                        <section class="list-left">
                                            <h5 class="title">***********************************</h5>
                                            <span class="adprice">￥290</span>
                                        </section>
                                        <div class="clearfix"></div>
                                    </li>
                                </a>
                                <a href="single.html">
                                    <li>
                                        <img src="images/r2.jpg" title="" alt="" />
                                        <section class="list-left">
                                            <h5 class="title">***********************************</h5>
                                            <span class="adprice">￥310</span>
                                        </section>
                                        <div class="clearfix"></div>
                                    </li>
                                </a>
                                <a href="single.html">
                                    <li>
                                        <img src="images/r3.jpg" title="" alt="" />
                                        <section class="list-left">
                                            <h5 class="title">***********************************</h5>
                                            <span class="adprice">￥190</span>
                                        </section>
                                        <div class="clearfix"></div>
                                    </li>
                                </a>
                                <a href="single.html">
                                    <li>
                                        <img src="images/r4.jpg" title="" alt="" />
                                        <section class="list-left">
                                            <h5 class="title">**********************************</h5>
                                            <span class="adprice">￥480</span>
                                        </section>
                                        <div class="clearfix"></div>
                                    </li>
                                </a>
                                <a href="single.html">
                                    <li>
                                        <img src="images/r5.jpg" title="" alt="" />
                                        <section class="list-left">
                                            <h5 class="title">**********************************</h5>
                                            <span class="adprice">￥859</span>
                                        </section>
                                        <div class="clearfix"></div>
                                    </li>
                                </a>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
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