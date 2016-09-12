<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path=request.getContextPath();
    String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>
<!DOCTYPE html>
<html>
<head>
    <title>Home</title>
    <meta charset="utf-8">

    <!--css-->
    <link rel="stylesheet" href="<%=basePath%>static/css/bootstrap.min.css">
    <link rel="stylesheet" href="<%=basePath%>static/css/style.css" type="text/css" media="all" />
    <link rel="stylesheet" href="<%=basePath%>static/css/flexslider.css" type="text/css" media="screen" />
    <link rel="stylesheet" href="<%=basePath%>static/css/font-awesome.min.css" />

    <!-- for-mobile-apps-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Resale Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>


    <!--fonts
    <!--<link href='http://fonts.useso.com/css?family=Ubuntu+Condensed' rel='stylesheet' type='text/css'>
    <link href='http://fonts.useso.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
    //fonts-->

    <!-- js -->
    <script type="text/javascript" src="<%=basePath%>static/js/jquery.min.js"></script>
    <script src="<%=basePath%>static/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>static/js/jquery.flexisel.js"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            $("#flexiselDemo3").flexisel({
                visibleItems:1,
                animationSpeed: 1000,
                autoPlay: true,
                autoPlaySpeed: 5000,
                pauseOnHover: true,
                enableResponsiveBreakpoints: true,
                responsiveBreakpoints: {
                    portrait: {
                        changePoint:480,
                        visibleItems:1
                    },
                    landscape: {
                        changePoint:640,
                        visibleItems:1
                    },
                    tablet: {
                        changePoint:768,
                        visibleItems:1
                    },
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
        <div class="header-right">
            <%
                String username=(String)session.getAttribute("username");
                if(username==null){
                    out.print("<a class=\"login\" href=\"login.html\">登录</a>");
                }
                else {
                    out.print("<a class=\"login\" href=\"information.html\">"+username+",你好!</a>");
                    out.print("<a class=\"out\" href=\"loginOut\">退出</a>");
                }
            %>
        </div>
    </div>

    <div class="main-banner banner text-center">
        <div class="container">
            <h1> 用我们的<span class="segment-heading">双手  </span>创造奇迹 </h1>
            <p>用平凡换来的惊奇，分享才能带来更大的快乐！</p>
        </div>
    </div>
</div>
<!-- content -->
<div class="content">
    <div class="categories">
        <div class="container">
            <div class="col-md-3 focus-grid">
                <a href="categories.html">
                    <div class="focus-border">
                        <div class="focus-layout">
                            <div class="focus-image"><i class="fa fa-mobile"></i></div>
                            <h4 class="clrchg">手机</h4>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-md-3 focus-grid">
                <a href="categories.html#parentVerticalTab2">
                    <div class="focus-border">
                        <div class="focus-layout">
                            <div class="focus-image"><i class="fa fa-laptop"></i></div>
                            <h4 class="clrchg">电脑</h4>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-md-3 focus-grid">
                <a href="categories.html#parentVerticalTab3">
                    <div class="focus-border">
                        <div class="focus-layout">
                            <div class="focus-image"><i class="fa fa-car"></i></div>
                            <h4 class="clrchg">汽车</h4>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-md-3 focus-grid">
                <a href="categories.html#parentVerticalTab4">
                    <div class="focus-border">
                        <div class="focus-layout">
                            <div class="focus-image"><i class="fa fa-wheelchair"></i></div>
                            <h4 class="clrchg">家居</h4>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-md-3 focus-grid">
                <a href="categories.html#parentVerticalTab5">
                    <div class="focus-border">
                        <div class="focus-layout">
                            <div class="focus-image"><i class="fa fa-paw"></i></div>
                            <h4 class="clrchg">宠物</h4>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-md-3 focus-grid">
                <a href="categories.html#parentVerticalTab6">
                    <div class="focus-border">
                        <div class="focus-layout">
                            <div class="focus-image"><i class="fa fa-book"></i></div>
                            <h4 class="clrchg">书籍</h4>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-md-3 focus-grid">
                <a href="categories.html#parentVerticalTab7">
                    <div class="focus-border">
                        <div class="focus-layout">
                            <div class="focus-image"><i class="fa fa-asterisk"></i></div>
                            <h4 class="clrchg">服饰</h4>
                        </div>
                    </div>
                </a>
            </div>

            <div class="col-md-3 focus-grid">
                <a href="categories.html#parentVerticalTab8">
                    <div class="focus-border">
                        <div class="focus-layout">
                            <div class="focus-image"><i class="fa fa-home"></i></div>
                            <h4 class="clrchg">公寓</h4>
                        </div>
                    </div>
                </a>
            </div>

            <div class="clearfix"></div>
        </div>
    </div>
</div>

<!-- slider -->
<div class="trending-ads">
    <div class="container">
        <div class="trend-ads">
            <h2>热门商品</h2>
            <ul id="flexiselDemo3">
                <c:forEach items="${goodList}" var="good" varStatus="status">
                    <c:if test="${status.index%4==1}"><li></c:if>
                    <div class="col-md-3 biseller-column">
                        <a href="single.html?${good.id}>
                            <img src="<%=basePath%>static/images/${good.name}"/>
                            <span class="price">&yen; ${good.price}</span>
                        </a>
                    </div>
                    <c:if test="${status.index%4==1}"></li></c:if>
                </c:forEach>
            </ul>
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