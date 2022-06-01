<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.example.Model.Users" %>
<%--<html lang="en">--%>
<%@include file="includes/head.jsp"%>
<body>
<%@include file="includes/mid.jsp"%>
<section class="checkout spad">
    <div class="container">

        <div class="checkout__form">
            <h4>THÔNG TIN CHI TIẾT VỀ SẢN PHẨM</h4>
            <form action="editOrDelete?idDelete=${product.getMa()}" method="post">
                <div class="row">
                    <div class="col-lg-6 col-md-8">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="checkout__input" >
                                    <p>TÊN SẢN PHẨM<span>*</span></p>
                                    <input style="color:black" type="text" name="tensp" value="${product.getTen()}" >
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="checkout__input" >
                                    <p>GIÁ SẢN PHẨM<span>*</span></p>
                                    <input style="color:black" type="text" name="giasp" value="${product.getGia()}">
                                </div>
                            </div>
                        </div>

                        <div class="checkout__input" >
                            <p>lINK ẢNH SẢN PHẨM<span>*</span></p>
                            <input style="color:black" type="text" name="anhsp"  class="checkout__input__add" value="${product.getAnh()}">

                        </div>
                        <div class="checkout__input" >
                            <p>MÔ TẢ CHI TIẾT<span>*</span></p>
                                <textarea rows="5" cols="120" t1 style="color:black" placeholder="${product.chi_tiet()}" id="mota" name="motasp" value="${product.chi_tiet()}">${product.chi_tiet()}</textarea><br>

                        </div>

                        <div class="row">
                            <div class="col-lg-6">
                                <div class="checkout__input" >
                                    <p>xuất xứ<span>*</span></p>
                                    <input style="color:black" type="text" name="xuatxusp" value="${product.getXuat_xu()}">
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="checkout__input" >
                                    <p>Nhãn sản phẩm<span>*</span></p>
                                    <input style="color:black" type="text" name="nhansp" value="${product.getLabel()}">
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="checkout__input" >
                                    <p>số lượng<span>*</span></p>
                                    <input style="color:black" type="text" name="soluongsp" value="${product.getSo_luong()}">
                                </div>
                            </div>
                        </div>
                        <input type="submit" name="type" value="delete" class="site-btn"></input>
                        <input type="submit" name="type" value="update" class="site-btn"></input>


                    </div>

                </div>
            </form>
        </div>
    </div>
</section>

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