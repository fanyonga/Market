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

    <!--注册验证-->
    <script>
        //账号为6~18个字符
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
        //密码为6~16个字符可由英文、数字和符号组成
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
        //请再次输入密码，两次密码必须一致
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
        //邮箱验证
        function yzmail(mail)
        {
            var regex=/^\w+@\w+([\-]\w+)?[\.](com|cn|net|org)$/;
            if(regex.test(mail)){
                document.getElementById("ismail").style.color="green";
                return true;
            }else{
                document.getElementById("ismail").style.color="red";
                return false;
            }
        }
        $(document).ready(function () {
            $("#reg").click(function () {
                var param=$("#form").serialize();
                $.ajax({
                    url:'<%=path%>/register.json',
                    type:'post',
                    data:param,
                    datatype:'json',
                    success:function (data) {
                        alert(data.errCode+","+data.errMsg);
                        if(data.errCode==-1){
                            alert(data.errMsg);
                        }else if(data.errCode==1){
                            alert("注册成功")
                        }
                    }
                })
            });
        })
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
            <div class="sign-up">
                <h1>注册</h1>
                <p class="creating">为了更好的用户体验，您可以注册登录网站享受更多服务！</p>

                <div class="sign-u">
                    <form action="" method="post" name="formtest"  id="form">
                        <table border="0" align="center">
                            <tr>
                                <td class="sign-up1">账&nbsp;&nbsp;号：</td>
                                <td class="sign-up2">
                                    <input type="text" name="account" onBlur="yzusername(this.value)" required/>
                                    <span id="isusername" class="check">账号为6~18个字符</span>
                                </td>
                            </tr>
                            <tr>
                                <td class="sign-up1">密&nbsp;&nbsp;码：</td>
                                <td class="sign-up2">
                                    <input type="password" name="password" onBlur="yzpwd1(this.value)" required/>
                                    <span id="ispassword" class="check">密码为6~16个字符可由英文、数字和符号组成</span>
                                </td>
                            </tr>
                            <%--<tr>--%>
                                <%--<td class="sign-up1">确认密码：</td>--%>
                                <%--<td class="sign-up2">--%>
                                    <%--<input type="password" onBlur="yzpwd2(pwd1.value,this.value)" required/>--%>
                                    <%--<span id="issure" class="check">请再次输入密码，两次密码必须一致</span>--%>
                                <%--</td>--%>
                            <%--</tr>--%>
                            <tr>
                                <td class="sign-up1">邮&nbsp;&nbsp;箱：</td>
                                <td class="sign-up2">
                                    <input type="email" name="email" required onBlur="yzmail(this.value)"/>
                                    <span id="ismail" class="check">邮箱必须合法</span>
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
                                <td><input id="reg" type="button" value="立即注册"></td>
                                <td class="sub_home"><p>去 &nbsp;<a href="login.jsp">登录</a></p></td>

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