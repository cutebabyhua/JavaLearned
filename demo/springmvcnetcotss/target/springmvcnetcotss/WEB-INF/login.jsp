<%--
  Created by IntelliJ IDEA.
  User: jinhua.chen
  Date: 2018/4/23
  Time: 下午1:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>达内－NetCTOSS</title>
    <link type="text/css" rel="stylesheet" media="all" href="styles/global.css" />
    <link type="text/css" rel="stylesheet" media="all" href="styles/global_color.css" />
</head>
<body class="index">
<div class="login_box">
    <form action="login.do" method="post">
    <table>
        <tr>
            <td class="login_info">账号：</td>
            <td colspan="2"><input name="username" value="${param.loginName}" type="text" class="width150" /></td>
            <td class="login_error_info"><span class="required">30长度的字母、数字和下划线</span></td>
        </tr>
        <tr>
            <td class="login_info">密码：</td>
            <td colspan="2"><input name="password" value="${param.loginPasswd}" type="password" class="width150" /></td>
            <td><span class="required">30长度的字母、数字和下划线</span></td>
        </tr>
        <tr>
            <td class="login_info">验证码：</td>
            <td class="width70"><input name="pageCode" type="text" class="width70" /></td>
            <td><img src="checkCode.do" alt="验证码"  onclick="this.src='checkCode?x=' + Math.random(); "/></td>
            <td><span class="required">${codeError}</span></td>
        </tr>
        <tr>
            <td></td>
            <td class="login_button" colspan="2">
                <input type="submit" value="登录" />
                <%--<a href="location.href='login.do'"><img src="images/login_btn.png" /></a>--%>
            </td>
            <td><span class="required">${login_failed}</span></td>
        </tr>
    </table>
    </form>
</div>
</body>
</html>

