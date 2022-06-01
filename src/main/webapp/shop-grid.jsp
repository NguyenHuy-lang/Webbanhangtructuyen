<%@ page import="com.example.DAO.implDAO" %>
<%@ page import="com.example.Model.product" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.Model.Users" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="com.example.Model.productCart" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    ArrayList<productCart> ListProduct;
    implDAO productDao = new implDAO();
    ListProduct = productDao.getProduct();
%>
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
                        <h4>Các loại sản phẩm</h4>
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
                    <div class="sidebar__item">
                        <div class="latest-product__text">
                            <h4>Sản phầm mới nhất</h4>
                            <div class="latest-product__slider owl-carousel">
                                <div class="latest-prdouct__slider__item">
                                    <a href="#" class="latest-product__item">
                                        <div class="latest-product__item__pic">
                                            <img src="img/latest-product/lp-1.jpg" alt="">
                                        </div>
                                        <div class="latest-product__item__text">
                                            <h6>1kg thịt thăn bò [gia hàng nhanh trong 1-2h]</h6>
                                            <span>200000</span>
                                        </div>
                                    </a>
                                    <a href="#" class="latest-product__item">
                                        <div class="latest-product__item__pic">
                                            <img src="img/latest-product/lp-2.jpg" alt="">
                                        </div>
                                        <div class="latest-product__item__text">
                                            <h6>Ổi Nữ Hoàng chín cây ngon dòn ngọt trọng lượng 1 kí [CHỈ GIAO TPHCM]</h6>
                                            <span>50000 đồng</span>
                                        </div>
                                    </a>
                                    <a href="#" class="latest-product__item">
                                        <div class="latest-product__item__pic">
                                            <img src="img/latest-product/lp-3.jpg" alt="">
                                        </div>
                                        <div class="latest-product__item__text">
                                            <h6>Nho tím Ninh thuận</h6>
                                            <span>30000 đồng</span>
                                        </div>
                                    </a>
                                </div>
                                <div class="latest-prdouct__slider__item">
                                    <a href="#" class="latest-product__item">
                                        <div class="latest-product__item__pic">
                                            <img src="img/latest-product/lp-1.jpg" alt="">
                                        </div>
                                        <div class="latest-product__item__text">
                                            <h6>bánh Mì pate thịt chả, hải sản</h6>
                                            <span>40000 đồng</span>
                                        </div>
                                    </a>
                                    <a href="#" class="latest-product__item">
                                        <div class="latest-product__item__pic">
                                            <img src="img/latest-product/lp-2.jpg" alt="">
                                        </div>
                                        <div class="latest-product__item__text">
                                            <h6>[HCM] 1 Kg Xoài cát chu miền Tây - Tươi ngon mỗi ngày</h6>
                                            <span>20000 đồng</span>
                                        </div>
                                    </a>
                                    <a href="#" class="latest-product__item">
                                        <div class="latest-product__item__pic">
                                            <img src="img/latest-product/lp-3.jpg" alt="">
                                        </div>
                                        <div class="latest-product__item__text">
                                            <h6>Dưa hấu Sài Gòn - 1 quả (~2,7kg)</h6>
                                            <span>39000 đồng</span>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-9 col-md-7">
                <div class="product__discount">
                    <div class="section-title product__discount__title">
                        <h2>Sản phẩm khuyến mãi</h2>
                    </div>
                    <div class="row">
                        <div class="product__discount__slider owl-carousel">
                            <div class="col-lg-4">
                                <div class="product__discount__item">
                                    <div class="product__discount__item__pic set-bg"
                                         data-setbg="img/product/discount/pd-1.jpg">
                                        <div class="product__discount__percent">-20%</div>
                                        <ul class="product__item__pic__hover">
                                            <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                            <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                            <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                        </ul>
                                    </div>
                                    <div class="product__discount__item__text">
                                        <span>Dried Fruit</span>
                                        <h5><a href="#">Dưa hấu Sài Gòn - 1 quả (~2,7kg)</a></h5>
                                        <div class="product__item__price">54000 đồng <span>54000 đồng</span></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="product__discount__item">
                                    <div class="product__discount__item__pic set-bg"
                                         data-setbg="img/product/discount/pd-2.jpg">
                                        <div class="product__discount__percent">-20%</div>
                                        <ul class="product__item__pic__hover">
                                            <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                            <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                            <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                        </ul>
                                    </div>
                                    <div class="product__discount__item__text">
                                        <span>Vegetables</span>
                                        <h5><a href="#">[HCM]Trái táo đỏ - Quả táo mỹ cao cấp</a></h5>
                                        <div class="product__item__price">39000 đồng <span>39000 đồng</span></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="product__discount__item">
                                    <div class="product__discount__item__pic set-bg"
                                         data-setbg="img/product/discount/pd-3.jpg">
                                        <div class="product__discount__percent">-20%</div>
                                        <ul class="product__item__pic__hover">
                                            <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                            <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                            <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                        </ul>
                                    </div>
                                    <div class="product__discount__item__text">
                                        <span>Dried Fruit</span>
                                        <h5><a href="#">Combo 4 cái đùi gà giòn CP gói 500g</a></h5>
                                        <div class="product__item__price">119000 đồng<span>119000 đồng</span></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="product__discount__item">
                                    <div class="product__discount__item__pic set-bg"
                                         data-setbg="img/product/discount/pd-4.jpg">
                                        <div class="product__discount__percent">-20%</div>
                                        <ul class="product__item__pic__hover">
                                            <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                            <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                            <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                        </ul>
                                    </div>
                                    <div class="product__discount__item__text">
                                        <span>Dried Fruit</span>
                                        <h5><a href="#"> Nước cam ép Vfresh nguyên chất 100% hộp 1 lít</a></h5>
                                        <div class="product__item__price">44000 đồng <span>44000 đồng</span></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="product__discount__item">
                                    <div class="product__discount__item__pic set-bg"
                                         data-setbg="img/product/discount/pd-5.jpg">
                                        <div class="product__discount__percent">-20%</div>
                                        <ul class="product__item__pic__hover">
                                            <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                            <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                            <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                        </ul>
                                    </div>
                                    <div class="product__discount__item__text">
                                        <span>Dried Fruit</span>
                                        <h5><a href="#">Sữa trái cây Nutri Boost hương nho chai 1 lít</a></h5>
                                        <div class="product__item__price">30000 đồng<span>30000 đồng</span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
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
                    <%
                        if (!ListProduct.isEmpty()) {
                            for (productCart p : ListProduct) {
                    %>
                    <div class="col-lg-4 col-md-6 col-sm-6">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg=<%= p.getAnh()%>>
                                <ul class="product__item__pic__hover">
                                    <%--them vào giỏ hàng*/--%>
                                        <%Users u = (Users) request.getSession().getAttribute("user");
                                            if(u != null && u.getVai_tro().equals("user")){%>

                                    <li><a href="cart?id=<%=Integer.toString(p.getMa())%>" title><i class="fa fa-heart"></i></a></li>
                                        <%}%>
                                    <%-- chỉnh sưa gio hang --%>

                                    <%if(u != null && u.getVai_tro().equals("admin")){%>
                                        <li><a href="getProductServlet?id=<%=Integer.toString(p.getMa())%>"><i class="fa fa-retweet"></i></a></li>
                                        <%}%>
                                    <%-- xem chi tiet mat hang --%>
                                        <%if(u != null && u.getVai_tro().equals("user")){%>

                                        <li><a href="detailproduct?id=<%=Integer.toString(p.getMa())%>"><i
                                            class="fa fa-shopping-cart"></i></a></li>
                                        <%}%>
                                    <%--di chuyển đến trang giỏ hàng*/--%>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a href="detailproduct?id=${p.getMa()}"><%
                                    out.print(p.getTen());%></a></h6>
                                <h5><%out.print(p.getGia() +"đồng");%></h5>
                            </div>
                        </div>
                    </div>
                    <%
                            }
                        }
                    %>
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