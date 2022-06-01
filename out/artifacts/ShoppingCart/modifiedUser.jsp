<%--<%@ page import="com.example.DAO.implDAO" %>--%>
<%--<%@ page import="com.example.Model.product" %>--%>
<%--<%@ page import="java.util.List" %>--%>
<%--<%@ page import="java.util.ArrayList" %>--%>
<%--<%@ page import="com.example.Model.Users" %>--%>
<%--<%@ page import="java.sql.SQLException" %>--%>
<%--<%@ page import="com.example.Model.productCart" %>--%>
<%--<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<html >--%>
<%--<%@include file="includes/head.jsp"%>--%>
<%--<body>--%>
<%--<%@include file="includes/mid.jsp"%>--%>

<%--<section class="checkout spad">--%>
<%--    <div class="container">--%>
<%--        <div class="checkout__form">--%>
<%--            <h4>CHỈNH SỬA THÔNG TIN KHÁCH HÀNG</h4>--%>
<%--            <form action="modifiedUserServlet" method="post">--%>
<%--                <div class="row">--%>
<%--                    <div class="col-lg-8 col-md-6">--%>
<%--                        <div class="row">--%>
<%--                            <div class="col-lg-6">--%>
<%--                                <div class="checkout__input" >--%>
<%--                                    <p>TÊN ĐẦY ĐỦ <span>*</span></p>--%>
<%--                                    <input type="text" name="tendaydu" value="${user.getTen_day_du()}">--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                            <div class="col-lg-6">--%>
<%--                                <div class="checkout__input" >--%>
<%--                                    <p>TÊN TÀI KHOẢN<span>*</span></p>--%>
<%--                                    <input type="text" name="tentaikhoan" value="${user.getTen_tai_khoan()}">--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>

<%--                        <div class="checkout__input" >--%>
<%--                            <p>EMAIL<span>*</span></p>--%>
<%--                            <input type="text" name="email" value="${user.getEmail()}" class="checkout__input__add">--%>

<%--                        </div>--%>
<%--                        <div class="checkout__input" >--%>
<%--                            <p>SỐ ĐIỆN THOẠI<span>*</span></p>--%>
<%--                            <input type="text" name="sdt" value="${user.getSdt()}">--%>
<%--                        </div>--%>

<%--                        <div class="row">--%>
<%--                            <div class="col-lg-6">--%>
<%--                                <div class="checkout__input" >--%>
<%--                                    <p>MẬT KHẨU<span>*</span></p>--%>
<%--                                    <input type="text" name="matkhau" value="${user.getMat_khau()}">--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                            <div class="col-lg-6">--%>
<%--                                <div class="checkout__input" >--%>
<%--                                    <p>GIỚI TÍNH<span>*</span></p>--%>
<%--                                    <input type="text" name="gioitinh" value="${user.getGioi_tinh()}">--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>

<%--                    </div>--%>

<%--                </div>--%>
<%--                <input type="submit" value="XÁC NHẬN">--%>
<%--            </form>--%>
<%--        </div>--%>

<%--    </div>--%>
<%--</section>--%>
<%--<!-- Checkout Section End -->--%>

<%--<!-- Footer Section Begin -->--%>
<%--<%@include file="includes/footer.jsp" %>--%>

<%--<!-- Footer Section End -->--%>

<%--<!-- Js Plugins -->--%>
<%--<script src="js/jquery-3.3.1.min.js"></script>--%>
<%--<script src="js/bootstrap.min.js"></script>--%>
<%--<script src="js/jquery.nice-select.min.js"></script>--%>
<%--<script src="js/jquery-ui.min.js"></script>--%>
<%--<script src="js/jquery.slicknav.js"></script>--%>
<%--<script src="js/mixitup.min.js"></script>--%>
<%--<script src="js/owl.carousel.min.js"></script>--%>
<%--<script src="js/main.js"></script>--%>



<%--</body>--%>

<%--</html>--%>


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
<%--<script>--%>
<%--    function Confirm()--%>
<%--    {--%>
<%--        var x = confirm("Xác nhận?");--%>
<%--        if (x)--%>
<%--            return true;--%>
<%--        else--%>
<%--            return false;--%>
<%--    }--%>
<%--</script>--%>

<body>
<%@include file="includes/mid.jsp"%>

<section class="checkout spad">
    <div class="container">
        <div class="checkout__form">
            <h4>CHỈNH SỬA THÔNG TIN KHÁCH HÀNG</h4>
            <form action="modifiedUserServlet" method="post">
<%--                <input type="hidden" value="${token_csrf}" name="token_csrf">&ndash;%&gt;--%>
                <div class="row">
                    <div class="col-lg-8 col-md-6">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="checkout__input" >
                                    <p>TÊN ĐẦY ĐỦ <span>*</span></p>
                                    <input style="color:black"
                                           type="text" name="tendaydu" value="${user.getTen_day_du()}">
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="checkout__input" >
                                    <p>TÊN TÀI KHOẢN<span>*</span></p>
                                    <input style="color:black"
                                           type="text" name="tentaikhoan" value="${user.getTen_tai_khoan()}">
                                </div>
                            </div>
                        </div>

                        <div class="checkout__input" >
                            <p>EMAIL<span>*</span></p>
                            <input style="color:black"
                                    type="text" name="email" value="${user.getEmail()}" class="checkout__input__add">

                        </div>
                        <div class="checkout__input" >
                            <p>SỐ ĐIỆN THOẠI<span>*</span></p>
                            <input style="color:black"
                                    type="text" name="sdt" value="${user.getSdt()}">
                        </div>

                        <div class="row">
                            <div class="col-lg-6">
                                <div class="checkout__input" >
                                    <p>MẬT KHẨU<span>*</span></p>
                                    <input style="color:black"
                                            type="text" name="matkhau" value="${user.getMat_khau()}">
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="checkout__input" >
                                    <p>GIỚI TÍNH<span>*</span></p>
                                    <input style="color:black"
                                            type="text" name="gioitinh" value="${user.getGioi_tinh()}">
                                </div>
                            </div>
                        </div>

                    </div>

                </div>

                <input type="submit" value="XÁC NHẬN" onclick="return Confirm()">
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