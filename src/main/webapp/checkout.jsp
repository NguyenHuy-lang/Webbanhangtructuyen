<%@ page import="com.example.DAO.implDAO" %>
<%@ page import="com.example.Model.product" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.Model.Users" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="com.example.Model.productCart" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<html >--%>
<%@include file="includes/head.jsp"%>
<body>
<%@include file="includes/mid.jsp"%>

<section class="checkout spad">
    <div class="container">

        <div class="checkout__form">
            <h4>THÔNG TIN CHI TIẾT VỀ KHÁCH HÀNG</h4>
            <form action="order" method="post">
                <div class="row">
                    <div class="col-lg-8 col-md-6">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="checkout__input" >
                                    <p>Tên <span>*</span></p>
                                    <input type="text" name="firstname" placeholder="vd: Huy , Đạt, Linh, Thắng">
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="checkout__input" >
                                    <p>Họ<span>*</span></p>
                                    <input type="text" name="lastname" placeholder="vd: Nguyễn , Trần, Đinh">
                                </div>
                            </div>
                        </div>

                        <div class="checkout__input" >
                            <p>Địa chỉ nhà<span>*</span></p>
                            <input type="text" name="address" placeholder="tên quận huyên, đường, số nhà" class="checkout__input__add">

                        </div>
                        <div class="checkout__input" >
                            <p>Thành phố<span>*</span></p>
                            <input type="text" name="city" placeholder="tên tình, thành phố của bạn">
                        </div>

                        <div class="row">
                            <div class="col-lg-6">
                                <div class="checkout__input" >
                                    <p>Số điện thoại<span>*</span></p>
                                    <input type="text" name="phone" placeholder="08946xxxxx">
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="checkout__input" >
                                    <p>Địa chỉ gmail<span>*</span></p>
                                    <input type="text" name="email" placeholder="vd : nam@gmail.com">
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="checkout__order">
                            <h4>Đơn hàng của bạn</h4>
                            <div class="checkout__order__products">SẢN PHẨM<span>TỔNG TIỀN</span></div>
                            <ul>
                                <c:forEach var="p" items="${listCart}">
                                    <li><img src="img/product/product-${p.getMa()}.jpg" alt="ảnh bị lỗi"
                                             style="width:80px;height:80px;"><span> ${p.getGia() * p.getSo_luong()}</span></li>
                                </c:forEach>
                            </ul>
                            <div class="checkout__order__subtotal">Số tiền được giảm <span>0 đồng</span></div>
                            <div class="checkout__order__total">Tổng tiền <span>${total}</span></div>

                            <input type="submit" value="ĐẶT HÀNG" class="site-btn"></input>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</section>
<!-- Checkout Section End -->

<!-- Footer Section Begin -->
<%@include file="includes/footer.jsp" %>

<!-- Footer Section End -->

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