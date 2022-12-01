<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: This MC
  Date: 29/11/2022
  Time: 8:23 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User Login</title>
</head>
<body>
    <h2>User Login Page</h2>
    <form action="<%=request.getContextPath()%>/UserServlet" method="post">
        <table border="1">
            <tr>
                <td>User Name</td>
                <td><input type="text" name="userName"/></td>
            </tr>
            <tr>
                <td>Password</td>
                <td><input type="password" name="password"/></td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit" value="Login" name="action"></td>
            </tr>
            <tr>
                <td colspan="2"><input type="hidden" name="pageRequestLogin" value="<%=request.getParameter("pageRequestLogin")%>"/></td>
            </tr>
            <tr>
                <td colspan="2">
                    <p style="color: red"><c:if test="${errorLogin!=null}">${errorLogin}</c:if></p>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
