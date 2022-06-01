<%@ page import="com.example.Model.Users" %>
<%@ page import="com.example.Model.product" %>
<%@ page import="com.example.DAO.implDAO" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.Model.productCart" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<html lang="zxx">--%>
<%
    ArrayList<productCart> ListProduct;
    implDAO productDao = new implDAO();
    ListProduct = productDao.getProduct();
    ArrayList<productCart> listCart = (ArrayList<productCart>) request.getSession().getAttribute("listCart");
%>
<%@include file="includes/head.jsp"%>
<body>
<%@include file="includes/mid.jsp"%>

<section class="shoping-cart spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="shoping__cart__table">
                    <table>
                        <thead>
                        <tr>
                            <th class="shoping__product">SẢN PHẨM</th>
                            <th>ĐƠN GIÁ</th>
                            <th>SỐ LƯỢNG</th>
                            <th>THÀNH TIỀN</th>
                            <th></th>
                        </tr>
                        </thead>
                        <tbody>

                        <%if (listCart != null) {%>
                        <%
                            for (int i = 0; i < listCart.size(); i++) {
                                productCart p = listCart.get(i);
                        %>
                        <tr>
                            <td class="shoping__cart__item">
                                <img src=<%=p.getAnh()%>>
                            </td>
                            <td class="shoping__cart__price">
                                $<%=p.getGia()%>
                            </td>
                            <td>
                                <form action="inc-decServlet" method="get" class="form-inline">
                                    <input type="hidden" name="id"
                                           value=<%=Integer.toString(p.getMa())%> class="form-input">
                                    <div class="form-group d-flex justify-content-between">
                                        <a class="btn bnt-sm btn-incre"
                                           href="inc-decServlet?action=inc&id=<%=Integer.toString(p.getMa())%>"><i
                                                class="fa fa-plus-square"></i></a>
                                        <input type="text" name="quantity" class="form-control"
                                               value=<%=p.getSo_luong()%> readonly>
                                        <a class="btn btn-sm btn-decre"
                                           href="inc-decServlet?action=dec&id=<%=Integer.toString(p.getMa())%>"><i
                                                class="fa fa-minus-square"></i></a>
                                    </div>
                                </form>
                            </td>
                            <td class="shoping__cart__total">
                                $<%=p.getSo_luong() * p.getGia()%>
                            </td>
                            <td class="shoping__cart__item__close">
                                <span class="icon_close"></span>
                            </td>
                        </tr>
                        <%}%>
                        <%}%>

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="shoping__cart__btns">
                    <a href="#" class="primary-btn cart-btn">TIẾP TỤC MUA HÀNG</a>
                    <a href="#" class="primary-btn cart-btn cart-btn-right"><span class="icon_loading"></span>
                        CẬP NHẬP GIỎ HÀNG</a>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="shoping__continue">
                    <div class="shoping__discount">
                        <h5>MÃ GIẢM GIÁ</h5>
                        <form action="#">
                            <input type="text" placeholder="Enter your coupon code">
                            <button type="submit" class="site-btn">XÁC NHẬN</button>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="shoping__checkout">
                    <h5>TỔNG TIỀN</h5>
                    <%
                        ArrayList<productCart> v = new ArrayList<productCart>();
                        v = (ArrayList<productCart>) request.getSession().getAttribute("listCart");
                        Double total = 0.0;
                    %>
                    <%
                        if (v != null) {
                            for (productCart pc : v) {
                                total += pc.getSo_luong() * pc.getGia();
                            }
                        }
                    %>
                    <ul>
                        <li>TỔNG TIỀN <span><%=Double.toString(total)%></span></li>
                        <li>THÀNH TIỀN<span><%=Double.toString(total)%></span></li>
                    </ul>
                    <a href="checkout" class="primary-btn">THANH TOÁN</a>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Shoping Cart Section End -->

<!-- Footer Section Begin -->
<%@include file="includes/footer.jsp"%>
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