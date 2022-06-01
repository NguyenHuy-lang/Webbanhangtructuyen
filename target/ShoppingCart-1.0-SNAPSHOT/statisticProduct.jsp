<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html>

<head>
    <meta charset="UTF-8">
    <title>Xem ví dụ</title>
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
<table>
    <h1 class="a">CHI TIẾT SẢN PHẨM CỦA ĐƠN HÀNG</h1>
    <tr>
        <th style="width:200px">Tên sản phẩm</th>
        <th style="width:120px">Giá</th>
        <th style="width:120px">Số lượng</th>
        <th style="width:120px">Tổng Tiền </th>
        <th style="width:120px"></th>
    </tr>
    <c:forEach var="p" items="${BoughtProduct}">
        <tr>
            <td>${p.getTen()}</td>
            <td>${p.getGia()}</td>
            <td>${p.getSo_luong()}</td>
            <td>${p.getGia() * p.getSo_luong()}</td>
            <td><a href="deleteProductOfBill?product_id=${p.getProduct_ma()}&amp;bill_id=${p.getBill_id()}">Xóa sản phẩm này </a>  </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>