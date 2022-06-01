<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%--<!DOCTYPE html>--%>

<%--<html>--%>

<head>
    <meta charset="UTF-8">
    <title>Thống kê đơn hàng</title>
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
<h1 class="a"> DANH SÁCH ĐƠN HÀNG CỦA KHÁCH HÀNG</h1>
<table>
    <tr>
        <th style="width:50px">ID</th>
        <th style="width:150px">Tên đầy đủ</th>
        <th style="width:100px">Số điện thoại</th>
        <th style="width:120px">gmail</th>
        <th style="width:120px">Địa chỉ</th>
        <th style="width:120px">Ngay đặt hàng</th>
        <th style="width:120px">Ngày nhận hàng</th>
        <th style="width:120px">Xóa đơn hàng</th>

    </tr>
    <c:forEach var="p" items="${listBill}">
        <tr>
            <td><a href="boughtProduct?id_bill=${p.getId()}">${p.getId()}</a></td>
            <td>${p.getFirstName()} ${p.getLastName()}</td>
            <td>${p.getSdt()}</td>
            <td>${p.getEmail()}</td>
            <td>${p.getDia_chi()}</td>
            <td>${p.getNgay_dat()}</td>
            <td>${p.getNgay_nhan()}</td>
            <td><a href="deleteBill?id_bill=${p.getId()}">Xóa đơn hàng</a> </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>