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

    <!-- for-mobile-apps -->
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
    <script type="text/javascript" src="<%=basePath%>static/js/checkRegister.js"></script>
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
            <div class="sign-up">
                <h1>注册</h1>
                <p class="creating">为了更好的用户体验，您可以注册登录网站享受更多服务！</p>

                <div class="sign-u">
                    <form action="#" method="post" id="register-form">
                        <table border="0" align="center">
                            <tr>
                                <td class="sign-up1">用户&nbsp;名：</td>
                                <td class="sign-up2">
                                    <input type="text" id="username" name="username" required/>
                                    <span id="isusername" class="check">用户名不能为空</span>
                                </td>
                            </tr>
                            <tr>
                                <td class="sign-up1">账&nbsp;&nbsp;号：</td>
                                <td class="sign-up2">
                                    <input id="account" name="account" type="text" required/>
                                    <span id="isaccount" class="check">账号为6~18个字符</span>
                                </td>
                            </tr>
                            <tr>
                                <td class="sign-up1">密&nbsp;&nbsp;码：</td>
                                <td class="sign-up2">
                                    <input id="pwd1" name="password" type="password" required/>
                                    <span id="ispassword" class="check">密码为6~16个字符可由英文、数字和符号组成</span>
                                </td>
                            </tr>
                            <tr>
                                <td class="sign-up1">确认密码：</td>
                                <td class="sign-up2">
                                    <input id="pwd2" name="password2" type="password" required/>
                                    <span id="issure" class="check">请再次输入密码，两次密码必须一致</span>
                                </td>
                            </tr>
                            <tr>
                                <td class="sign-up1">性&nbsp;&nbsp;别：</td>
                                <td class="sign-up2">
                                    <label><input type="radio" name="sex" value="1" checked/>男</label>
                                    <label><input type="radio" name="sex" value="0"/>女</label>
                                </td>
                            </tr>
                            <tr>
                                <td class="sign-up1">手机号码：</td>
                                <td class="sign-up2">
                                    <input type="tel" id="telephone" name="telephone" required/>
                                    <span id="istelephone" class="check">手机号码必须合法</span>
                                </td>
                            </tr>
                            <tr>
                                <td class="sign-up1">邮&nbsp;&nbsp;箱：</td>
                                <td class="sign-up2">
                                    <input id="email" name="email" type="email" required />
                                    <span id="ismail" class="check">邮箱必须合法</span>
                                </td>
                            </tr>
                            <tr>
                                <td class="sign-up1">收货地址：</td>
                                <td class="sign-up2">
                                    <textarea rows="3px" cols="20px" id="address" name="address" required></textarea>
                                    <span class="check" id="isaddress">收货地址不能为空</span>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td><span id="register_result" style="color:red;"></span></td>
                            </tr>
                            <tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <td><input type="button" value="立即注册" id="register_submit"></td>
                            <td class="sub_home"><p>去 &nbsp;<a href="login.html">登录</a></p></td>

                            </tr>
                        </table>
                    </form>
                    <div class="clearfix"> </div>
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