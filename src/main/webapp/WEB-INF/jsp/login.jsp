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
</head>
<body>
<!--header-->
<div class="header">
    <div class="container">
        <div class="logo">
            <a href="/index.html"><span>二次</span>购</a>
        </div>

    </div>
</div>

<!--section-->
<section>
    <div id="page-wrapper" class="sign-in-wrapper">
        <div class="graphs">
            <div class="sign-in-form">
                <div class="sign-in-form-top">
                    <h1>用户登录</h1>
                </div>
                <div class="signin">
                    <form class="form-group" action="\loginJudge" method="post">
                        <div class="log-input">
                            <div class="log-input-left">
                                <input type="text" class="user form-control" name="account" value="账号" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '账号';}"/>
                            </div>

                            <div class="clearfix"> </div>
                        </div>

                        <div class="log-input">
                            <div class="log-input-left">
                                <input type="password" class="lock form-control" name="password" value="密码" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '密码';}"/>
                            </div>

                            <div class="clearfix"> </div>
                        </div>
                        <input type="submit" value="登录">
                    </form>
                </div>
                <div class="new_people">
                    <h2>为了新用户</h2>
                    <p>为了更好的用户体验，您可以注册登录网站享受更多服务！</p>
                    <a href="register.html">立即注册</a>
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