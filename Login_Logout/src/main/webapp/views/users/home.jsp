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
    <title>Home</title>
</head>
<body>
    <h2>User Home</h2>
    <ul>
        <li><a href="<%=request.getContextPath()%>/views/users/login.jsp?pageRequestLogin=${pageContext.request.requestURI}">Login</a></li>
        <li><a href="">Logout</a></li>
        <li><a href="<%=request.getContextPath()%>/views/users/shoppingCart.jsp">ShoppingCart</a> </li>
    </ul>
</body>
</html>
