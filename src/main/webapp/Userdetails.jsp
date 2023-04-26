<%--
  Created by IntelliJ IDEA.
  User: Pratik
  Date: 3/15/2023
  Time: 9:53 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css">
</head>
<body>
<%@ include file="pages/nav.jsp" %>
<table class="table">

  <tr>
    <th scope="col">ID</th>
    <td>${college.id}</td>
  </tr>
  <tr>
    <th scope="col">USERNAME</th>
    <td>${college.userName}</td>
  </tr>
  <tr>
    <th scope="col">PASSWORD</th>
    <td>${college.password}</td>
  </tr>
  <tr>
    <th scope="col">LOCATION</th>
    <td>${college.location}</td>
  </tr>
  <tr><a href="user?page=deleteUser&id=${college.id}">Delete User</a></tr>
  <tr><a href="user?page=userEdit&id=${college.id}">Edit User</a></tr>

</table>

<%--<table class="table">--%>
<%--<thead class="thead-dark">--%>
<%--<tr>--%>
<%--  <th scope="col">ID</th>--%>
<%--  <th scope="col">USERNAME</th>--%>
<%--  <th scope="col">PASSWORD</th>--%>
<%--  <th scope="col">LOCATION</th>--%>
<%--  <th scope="col">Details</th>--%>
<%--</tr>--%>
<%--</thead>--%>
<%--<tbody>--%>
<%--  <tr>--%>
<%--    <td>${college.id}</td>--%>
<%--    <td>${college.userName}</td>--%>
<%--    <td>${college.password}</td>--%>
<%--    <td>${college.location}</td>--%>
<%--    <td> <a href="user?page=Deleteuser&id=${college.id}">Delete User</a></td>--%>
<%--  </tr>--%>

<%--</tbody>--%>
<%--</table>--%>

</body>
</html>
