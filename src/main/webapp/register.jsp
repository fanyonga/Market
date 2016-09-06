<%--
  Created by IntelliJ IDEA.
  User: fanyong
  Date: 16-9-6
  Time: 上午9:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path=request.getContextPath();
    String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
    <title>Register</title>
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

    <script type="text/javascript">
        function formtest_submit(sender)
        {
            var usernameOK=yzusername(sender.username.value);  //在表单中元素可直接通过表单寻找元素id或name获取其值
            var password1OK=yzpwd1(sender.pwd1.value);
            var password2OK=yzpwd2(sender.pwd1.value,sender.pwd2.value);
            var istrue=usernameOK&&password1OK&&password2OK;
            if(istrue){
                alert("恭喜你！注册成功");
            }
        }
        function yzusername(username)
        {
            var regex=/^\w{6,18}$/;
            if(regex.test(username)){
                document.getElementById("isusername").style.color="green";
                return true;
            }else{
                document.getElementById("isusername").style.color="red";
                return false;
            }
        }

        function yzpwd1(pwd1)
        {
            var regex=/^\w[a-zA-Z0-9_\.\~]{5,15}$/;
            if(regex.test(pwd1)){
                document.getElementById("ispassword").style.color="green";
                return true;
            }else{
                document.getElementById("ispassword").style.color="red";
                return false;
            }
        }

        function yzpwd2(pwd1,pwd2)
        {
            if(yzpwd1(pwd1)&&pwd1==pwd2){
                document.getElementById("issure").style.color="green";
                return true;
            }else{
                document.getElementById("issure").style.color="red";
                return false;
            }

        }
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
                                <div>
                                    <div class="sign-up">
                                        <h1>注册</h1>
                                        <p class="creating">为了更好的用户体验，您可以注册登录网站享受更多服务！</p>
                                        <div class="sign-u">
                                            <div class="sign-up2">
                                                <table border="0">
                                                    <form method="post" onSubmit="return formtest_submit(this)">
                                                        <tr>
                                                            <td class="sign-up1">账&nbsp;&nbsp;号：</td>
                                                            <td><input type="text" id="username" onBlur="yzusername(this.value)" required/>
                                                                <span class="check" id="isusername">账号为6~18个字符</span>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="sign-up1">密&nbsp;&nbsp;码：</td>
                                                            <td><input type="password" id="pwd1" onBlur="yzpwd1(this.value)" required/>
                                                                <span class="check" id="ispassword">密码为6~16个字符可由英文、数字和符号组成</span>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="sign-up1">确认密码：</td>
                                                            <td><input type="password" id="pwd2" onBlur="yzpwd2(pwd1.value,this.value)" required/>
                                                                <span class="check" id="issure">再次输入密码，两次密码必须一致</span>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td><input type="submit" value="立即注册"></td>
                                                            <td><div class="sub_home_right">
                                                                <p>去 &nbsp;<a href="login.jsp">登录</a></p>
                                                            </div></td>
                                                        </tr>
                                                    </form>
                                                </table>
                                                <div class="clearfix"> </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!--footer section start-->
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