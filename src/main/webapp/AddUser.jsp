<%--
  Created by IntelliJ IDEA.
  User: Pratik
  Date: 3/17/2023
  Time: 9:48 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="user?page=adduser" method="POST">
    <input type="hidden" name="id" value="${college.id}">
    <input type="text" name="userName" placeholder="Username" value="${college.userName}">
    <input type="password" name="password"  placeholder="Password" value="${college.password}">
    <input type="text" name="location" placeholder="Location" value="${college.location}">
    <input type="submit" value="Add Users">
</form>
</body>
</html>
