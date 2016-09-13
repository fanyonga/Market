<%--
  Created by IntelliJ IDEA.
  User: fanyong
  Date: 16-9-13
  Time: 下午12:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path=request.getContextPath();
    String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

    response.sendRedirect(basePath+"index.html");
%>
