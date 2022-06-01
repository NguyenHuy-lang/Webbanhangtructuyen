<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%--<!DOCTYPE html>--%>

<%--<html>--%>

<head>
  <meta charset="UTF-8">
  <title>Thống kê người dùng </title>
  <style type="text/css">
    table, th, td{
      border:1px solid #868585;
    }
    table{
      border-collapse:collapse;
      width:100%;
    }
    th, td{
      text-align:left;
      padding:10px;
    }
    table tr:nth-child(odd){
      background-color:#eee;
    }
    table tr:nth-child(even){
      background-color:white;
    }
    table tr:nth-child(1){
      background-color:skyblue;
    }
    h1.a{
      text-align: center;
    }
  </style>
</head>

<body>
<h1 class="a">DANH SÁCH NGƯỜI DÙNG</h1>

<table>

  <tr>
    <th>ID</th>
    <th>Tên đầy đủ</th>
    <th>Tên tài khoản</th>
    <th>Email</th>
    <th>Số điện thoại</th>
    <th>Giới tính</th>
    <th></th>
  </tr>
  <c:forEach var="p" items="${listUser}">
    <tr>
      <td><a href="statisticBill?idUser=${p.getId()}">${p.getId()}</a></td>
      <td>${p.getTen_day_du()}</td>
      <td>${p.getTen_tai_khoan()}</td>
      <td>${p.getEmail()}</td>
      <td>${p.getSdt()}</td>
      <td>${p.getGioi_tinh()}</td>
      <td><a href="deleteaccount?id=${p.getId()}">Xóa tài khoản người dùng </a> </td>
    </tr>
  </c:forEach>



</table>




</body>
</html>