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
    <title>Shopping Cart</title>
</head>
<body>
    <h2>Shopping Cart</h2>
    <form action="<%=request.getContextPath()%>/UserServlet?pageRequestLogin=${pageContext.request.requestURI}" method="post">
        <input type="submit" value="Check Out" name="action"/>
    </form>
</body>
</html>
