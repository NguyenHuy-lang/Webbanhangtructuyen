<%@ page import="com.example.DAO.implDAO" %>
<%@ page import="com.example.Model.product" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.Model.Users" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="com.example.Model.productCart" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%--<html>--%>
<%@include file="includes/head.jsp"%>

<body>
<%@include file="includes/mid.jsp"%>

<!-- Hero Section Begin -->

<!-- Product Section Begin -->
<section class="product spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-5">
                <div class="sidebar">
                    <div class="sidebar__item">
                        <h4>Department</h4>
                        <ul>
                            <li><a href="classification?label=thit">Thịt tươi ngon</a></li>
                            <li><a href="classification?label=rau">Rau xanh</a></li>
                            <li><a href="classification?label=hoaqua">Trái cây và các loại hạt</a></li>
                            <li><a href="classification?label=haisan">Hải sản</a></li>
                            <li><a href="classification?label=nongsan">Nông sản</a></li>
                            <li><a href="classification?label=nuocngot">Nước ngọt</a></li>
                            <li><a href="classification?label=bia">Bia</a></li>
                            <li><a href="classification?label=ruou">Rượu</a></li>
                            <li><a href="classification?label=doannhanh">Đồ ăn nhanh</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-lg-9 col-md-7">
                <div class="product__discount">

                </div>
                <div class="filter__item">
                    <div class="row">
                        <div class="col-lg-4 col-md-5">
                            <div class="filter__sort">
                                <span>Sort By</span>
                                <select>
                                    <option value="0">Default</option>
                                    <option value="0">Default</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4">
                            <div class="filter__found">
                                <h6><span>16</span> Products found</h6>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-3">
                            <div class="filter__option">
                                <span class="icon_grid-2x2"></span>
                                <span class="icon_ul"></span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <c:forEach var="p" items="${classifyByName}">
                        <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="product__item">
                                <div class="product__item__pic set-bg" data-setbg=${p.getAnh()}>
                                    <ul class="product__item__pic__hover">

                                        <li><a href="cart?id=${p.getMa()}" title><i class="fa fa-heart"></i></a></li>
                                            <%--them vào giỏ hàng*/--%>
                                        <li><a href="getProductServlet?id=${p.getMa()}" ><i class="fa fa-retweet"></i></a></li>
                                        <li><a href="detailproduct?id=${p.getMa()}"><i
                                                class="fa fa-shopping-cart"></i></a></li>
                                            <%--di chuyển đến trang giỏ hàng*/--%>
                                    </ul>
                                </div>
                                <div class="product__item__text">
                                    <h6><a href="detailproduct?id=${Integer.toString(p.getMa())}">
                                        <c:out value="${p.getTen()}"></c:out>
                                    </a></h6>
                                    <h5>
                                        <c:out value="${p.getGia()}"></c:out>

                                    </h5>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
                <div class="product__pagination">
                    <a href="#">1</a>
                    <a href="#">2</a>
                    <a href="#">3</a>
                    <a href="#"><i class="fa fa-long-arrow-right"></i></a>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Product Section End -->

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