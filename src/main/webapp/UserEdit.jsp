<%--
  Created by IntelliJ IDEA.
  User: Pratik
  Date: 3/15/2023
  Time: 10:20 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

</head>
<body>
<%@ include file="pages/nav.jsp" %>
<form action="user?page=editUser" method="POST">
    <input type="hidden" name="id" value="${college.id}">
    <input type="text" name="userName" value="${college.userName}">
    <input type="password" name="password"  value="${college.password}">
    <input type="text" name="location" value="${college.location}">
    <input type="submit" value="Update User">
</form>
</body>
</html>
