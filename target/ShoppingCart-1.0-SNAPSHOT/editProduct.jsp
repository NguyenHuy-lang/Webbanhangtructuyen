<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">
<head>
    <style type="text/css">
        textarea1 t1 {
            width: 70%;
            height: 300px;
            padding: 12px 20px;
            box-sizing: border-box;
            border: 2px solid #ccc;
            border-radius: 4px;
            background-color: #f8f8f8;
            resize: none;
        }
    </style>
</head>
<body>
<form action="edit" method="post">


    <label for="id">Id sản phẩm:</label><br>
    <input type="text" id="id" name="id" value="${product.ma}"readonly><br><br>

    <label for="name">Tên sản phẩm:</label><br>
    <input type="text" id="name" name="name" value="${product.ten}"><br><br>

    <label for="price">Giá sản phẩm:</label><br>
    <input type="text" id="price" name="price" value="${product.gia}"><br><br>

    <label for="link">Link ảnh sản phẩm:</label><br>
    <input type="text" id="link" name="link" value="${product.getAnh()}"><br><br>

    <label for="mota">Mô tả chi tiết:</label><br>
    <textarea t1 placeholder="${product.chi_tiet()}" id="mota" name="mota" value="${product.chi_tiet()}">${product.chi_tiet()}</textarea><br>

    <label for="xuatxu">Xuất xứ sản phẩm:</label><br>
    <input type="text" id="xuatxu" name="xuatxu" value="${product.getXuat_xu()}"><br>

    <label for="label">Nhãn sản phẩm</label> <br>
    <input type="text" id="label" name="label" value="${product.label}"><br>

    <label for="number">so_luong</label> <br>
    <input type="text" id="number" name="number" value="${product.so_luong}"><br>

    <input type="submit" value="Submit">
</form>
</body>
</html>