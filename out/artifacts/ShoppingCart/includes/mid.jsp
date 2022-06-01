<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div id="preloder">
    <div class="loader"></div>
</div>
<div class="humberger__menu__overlay"></div>
<div class="humberger__menu__wrapper">
    <div class="humberger__menu__logo">
        <a href="#"><img src="img/logo.png" alt=""></a>
    </div>
    <div class="humberger__menu__cart">
        <ul>
            <li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>
            <li><a href="#"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
        </ul>
        <div class="header__cart__price">item: <span>0 đồng</span></div>
    </div>
    <div class="humberger__menu__widget">
        <div class="header__top__right__auth">
            <%
                Users user = (Users) request.getSession().getAttribute("user");
            %>
            <% if (user != null) { %>
            <a href="logout"><i class="fa fa-user"></i> Đăng xuất</a>
            <%} else {%>
            <a href="login"><i class="fa fa-user"></i> Đăng nhập</a>
            <%}%>


        </div>
    </div>
    <div id="mobile-menu-wrap"></div>
    <div class="header__top__right__social">
        <a href="#"><i class="fa fa-facebook"></i></a>
        <a href="#"><i class="fa fa-twitter"></i></a>
        <a href="#"><i class="fa fa-linkedin"></i></a>
        <a href="#"><i class="fa fa-pinterest-p"></i></a>
    </div>
    <div class="humberger__menu__contact">
        <ul>
            <li><i class="fa fa-envelope"></i> huynguyend19ptit@gmail.com</li>
            <li>Miễn phi ship cho tất cả đơn hàng trên 1000000 đồng</li>
        </ul>
    </div>
</div>
<!-- Humberger End -->
<!-- Header Section Begin -->
<header class="header">
    <div class="header__top">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="header__top__left">
                        <ul>
                            <li><i class="fa fa-envelope"></i> huynguyend19ptit@gmail.com</li>
                            <li>Miễn phi ship cho tất cả đơn hàng trên 1000000 đồng</li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="header__top__right">
                        <div class="header__top__right__social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-linkedin"></i></a>
                            <a href="#"><i class="fa fa-pinterest-p"></i></a>
                        </div>
                        <div class="header__top__right__auth">
                            <% if (user != null) { %>
                            <a href="logout"><i class="fa fa-user"></i> Đăng xuất</a>
                            <%} else {%>
                            <a href="login.jsp"><i class="fa fa-user"></i> Đăng nhập</a>
                            <%}%>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="header__logo">
                    <a href="shop-grid.jsp"><img src="img/logo.png" alt=""></a>
                </div>
            </div>
            <div class="col-lg-6">
                <nav class="header__menu">
                    <ul>
                        <li><a href="shop-grid.jsp">Trang chủ</a></li>
                        <li><a href="shop-grid.jsp">Sản phẩm</a></li>
                        <li><a href="shoping-cart.jsp">Giỏ hàng</a></li>
                        <li><a href="checkout.jsp">Thanh toán</a></li>
                        <%if(user != null && user.getVai_tro().equals("admin")){ %>
                                <li><a href="listUserServlet">Thống kê</a></li>
                                <li><a href="addProduct.jsp">Thêm sản phẩm</a></li>
                        <%}%>


                    </ul>
                </nav>
            </div>
            <div class="col-lg-3">
                <div class="header__cart">
                    <ul>
                        <li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>
                        <li><a href="#"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
                    </ul>
                    <div class="header__cart__price"><span><a href="modifiedUser.jsp"> ${user.getTen_tai_khoan()}</a></span> item: <span>${sumcart} đồng</span></div>
                    <div class="header__cart__price"><span><a href="statisticBill?idUser=${user.getId()}">Đơn hàng của bạn</a></span></div>

                </div>
            </div>
        </div>
        <div class="humberger__open">
            <i class="fa fa-bars"></i>
        </div>
    </div>
</header>
<section class="hero hero-normal">
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="hero__categories">
                    <div class="hero__categories__all">
                        <i class="fa fa-bars"></i>
                        <span>Các loại sản phẩm</span>
                    </div>
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
            <div class="col-lg-9">
                <div class="hero__search">
                    <div class="hero__search__form">
                        <form action="searchProductServlet" method="post">
                            <div class="hero__search__categories">
                                Danh mục sản phẩm
                                <span class="arrow_carrot-down"></span>
                            </div>
                            <input type="text" placeholder="Bạn đang tìm kiếm gì ?" name="keyword">
                            <button type="submit" class="site-btn">TÌM KIẾM</button>
                        </form>
                    </div>
                    <div class="hero__search__phone">
                        <div class="hero__search__phone__icon">
                            <i class="fa fa-phone"></i>
                        </div>
                        <div class="hero__search__phone__text">
                            <h5>0327894689</h5>
                            <span>Luôn mở cửa</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Hero Section End -->

<!-- Breadcrumb Section Begin -->
<section class="breadcrumb-section set-bg" data-setbg="img/breadcrumb.jpg">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="breadcrumb__text">
                    <h2>Cửa hàng tiện lợi</h2>
                    <div class="breadcrumb__option">
                        <a href="shop-grid.jsp">Home</a>
                        <span> Nguyễn Huy</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>