<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.example.Model.Users" %>
<%--<html lang="en">--%>
<%@include file="includes/head.jsp"%>


<%--<head>--%>

<%--    <style type="text/css">--%>
<%--        textarea1 t1 {--%>
<%--            width: 70%;--%>
<%--            height: 300px;--%>
<%--            padding: 12px 20px;--%>
<%--            box-sizing: border-box;--%>
<%--            border: 2px solid #ccc;--%>
<%--            border-radius: 4px;--%>
<%--            background-color: #f8f8f8;--%>
<%--            resize: none;--%>
<%--        }--%>
<%--    </style>--%>
<%--</head>--%>
<body>
<%@include file="includes/mid.jsp"%>
<section class="checkout spad">
    <div class="container">

        <div class="checkout__form">
            <h4>THÔNG TIN CHI TIẾT VỀ SẢN PHẨM</h4>
            <form action="addProductServlet" method="post">
                <div class="row">
                    <div class="col-lg-8 col-md-6">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="checkout__input" >
                                    <p>TÊN SẢN PHẨM<span>*</span></p>
                                    <input type="text" name="tensp" >
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="checkout__input" >
                                    <p>GIÁ SẢN PHẨM<span>*</span></p>
                                    <input type="text" name="giasp" >
                                </div>
                            </div>
                        </div>

                        <div class="checkout__input" >
                            <p>lINK ẢNH SẢN PHẨM<span>*</span></p>
                            <input type="text" name="anhsp"  class="checkout__input__add">

                        </div>
                        <div class="checkout__input" >
                            <p>MÔ TẢ CHI TIẾT<span>*</span></p>
                            <input type="text" name="motasp" >
                        </div>

                        <div class="row">
                            <div class="col-lg-6">
                                <div class="checkout__input" >
                                    <p>xuất xứ<span>*</span></p>
                                    <input type="text" name="xuatxusp" >
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="checkout__input" >
                                    <p>Nhãn sản phẩm<span>*</span></p>
                                    <input type="text" name="nhansp">
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="checkout__input" >
                                    <p>số lượng<span>*</span></p>
                                    <input type="text" name="soluongsp" >
                                </div>
                            </div>
                        </div>
                        <input type="submit" value="THÊM SẢN PHẨM" class="site-btn"></input>

                    </div>

                </div>
            </form>
        </div>
    </div>
</section>
<%--<div class="col-lg-9 col-md-7">--%>
<%--<form action="edit" method="post">--%>


<%--    <label for="name">Tên sản phẩm:</label><br>--%>
<%--    <textarea type="text" id="name" name="name" value="${product.ten}"></textarea><br>--%>

<%--    <label for="price">Giá sản phẩm:</label><br>--%>
<%--    <textarea type="text" id="price" name="price" value="${product.gia}"></textarea><br>--%>

<%--    <label for="link">Link ảnh sản phẩm:</label><br>--%>
<%--    <textarea t1 placeholder="${product.getAnh()}" id="link" name="link" value="${product.getAnh()}"></textarea><br>--%>

<%--    <label for="mota">Mô tả chi tiết:</label><br>--%>
<%--    <textarea t1 placeholder="${product.chi_tiet()}" id="mota" name="mota" value="${product.chi_tiet()}">${product.chi_tiet()}</textarea><br>--%>

<%--    <label for="xuatxu">Xuất xứ sản phẩm:</label><br>--%>
<%--    <textarea t1  id="xuatxu" name="xuatxu" value="${product.getXuat_xu()}"></textarea><br>--%>

<%--    <label for="label">Nhãn sản phẩm</label> <br>--%>
<%--    <textarea t1 type="text" id="label" name="label" value="${product.label}"></textarea><br>--%>

<%--    <label for="number">so_luong</label> <br>--%>
<%--    <textarea t1 type="text" id="number" name="number" value="${product.so_luong}"></textarea><br>--%>

<%--    <input type="submit" value="Thêm sản phẩm">--%>
<%--</form>--%>
<%--</div>--%>
<%@include file="includes/footer.jsp" %>
<!-- Js Plugins -->
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.nice-select.min.js"></script>
<script src="js/jquery-ui.min.js"></script>
<script src="js/jquery.slicknav.js"></script>
<script src="js/mixitup.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/main.js"></script>
</body>

</html>