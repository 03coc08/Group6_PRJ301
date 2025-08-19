<%-- 
    Document   : header-start-login
    Created on : May 24, 2025
    Author     : khanh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String userID = (String) session.getAttribute("userID");
    String role = (String) session.getAttribute("role");
%>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>MystBloom - Flower Shop</title>
    <meta name="description" content="">
    <meta name="robots" content="noindex, follow" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/img/favicon.png">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/animate.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/owl.carousel.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/slick.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/ionicons.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/simple-line-icons.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/jquery-ui.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/meanmenu.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/responsive.css">
    <script src="${pageContext.request.contextPath}/js/vendor/modernizr-3.11.7.min.js"></script>
</head>
<body>
    <header class="header-area clearfix">
        <div class="header-top">
            <div class="container">
                <div class="border-bottom-1">
                    <div class="row">
                        <div class="col-lg-4 col-md-4 col-12">
                            <div class="welcome-area">
                                <p>Welcome <%= role!=null?role:"" %> <%= userID!=null?userID:"" %></p>
                            </div>
                        </div>
                        <div class="col-lg-8 col-md-8 col-12">
                            <div class="account-curr-lang-wrap f-right">
                                <ul>
                                    <li class="top-hover"><a href="#">Tài khoản <i class="ion-chevron-down"></i></a>
                                        <ul>
                                            <li><a href="../user/wishlist.jsp">Đã thích</a></li>
                                         <li><a href="UserAccount">Tài khoản của tôi</a></li>
                                            <li><a href="<%= request.getContextPath() %>/Logout">Đăng xuất</a></li>
                                        </ul>
                                    </li>
                                    <li class="top-hover"><a href="#">$Doller (US) <i class="ion-chevron-down"></i></a>
                                        <ul>
                                            <li><a href="#">Taka (BDT)</a></li>
                                            <li><a href="#">Riyal (SAR)</a></li>
                                            <li><a href="#">Rupee (INR)</a></li>
                                            <li><a href="#">Dirham (AED)</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#"><img alt="flag" src="${pageContext.request.contextPath}/img/icon-img/en.jpg"> English  <i class="ion-chevron-down"></i></a>
                                        <ul>
                                            <li><a href="#"><img alt="flag" src="${pageContext.request.contextPath}/img/icon-img/bl.jpg">Bangla </a></li>
                                            <li><a href="#"><img alt="flag" src="${pageContext.request.contextPath}/img/icon-img/ar.jpg">Arabic</a></li>
                                            <li><a href="#"><img alt="flag" src="${pageContext.request.contextPath}/img/icon-img/in.jpg">Hindi </a></li>
                                            <li><a href="#"><img alt="flag" src="${pageContext.request.contextPath}/img/icon-img/sp.jpg">Spanish</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="header-bottom transparent-bar">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-4 col-6">
                        <div class="logo">
                            <a href="home.jsp">
                                <img alt="" src="${pageContext.request.contextPath}/img/logo/logo.png">
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-9 col-md-8 col-6">
                        <div class="header-bottom-right">
                            <div class="main-menu">
                                <nav>
                                    <ul>
                                        <li class="top-hover"><a href="home.jsp">home</a>
                                            <ul class="submenu">
                                                <li><a href="../homepage/home.jsp">home version 1</a></li>
                                                <li><a href="index-2.jsp">home version 2</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="../homepage/about-us.jsp">about</a></li>
                                        <li class="mega-menu-position top-hover"><a href="../homepage/shop.jsp">shop</a>
                                            <ul class="mega-menu">
                                                <li>
                                                    <ul>
                                                        <li class="mega-menu-title">Categories 01</li>
                                                        <li><a href="../homepage/shop.jsp">Aconite</a></li>
                                                        <li><a href="../homepage/shop.jsp">Ageratum</a></li>
                                                        <li><a href="../homepage/shop.jsp">Allium</a></li>
                                                        <li><a href="../homepage/shop.jsp">Anemone</a></li>
                                                        <li><a href="../homepage/shop.jsp">Angelica</a></li>
                                                        <li><a href="../homepage/shop.jsp">Angelonia</a></li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <ul>
                                                        <li class="mega-menu-title">Categories 02</li>
                                                        <li><a href="../homepage/shop.jsp">Balsam</a></li>
                                                        <li><a href="../homepage/shop.jsp">Baneberry</a></li>
                                                        <li><a href="../homepage/shop.jsp">Bee Balm</a></li>
                                                        <li><a href="../homepage/shop.jsp">Begonia</a></li>
                                                        <li><a href="../homepage/shop.jsp">Bellflower</a></li>
                                                        <li><a href="../homepage/shop.jsp">Bergenia</a></li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <ul>
                                                        <li class="mega-menu-title">Categories 03</li>
                                                        <li><a href="../homepage/shop.jsp">Caladium</a></li>
                                                        <li><a href="../homepage/shop.jsp">Calendula</a></li>
                                                        <li><a href="../homepage/shop.jsp">Carnation</a></li>
                                                        <li><a href="../homepage/shop.jsp">Catmint</a></li>
                                                        <li><a href="../homepage/shop.jsp">Celosia</a></li>
                                                        <li><a href="../homepage/shop.jsp">Chives</a></li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <ul>
                                                        <li class="mega-menu-title">Categories 04</li>
                                                        <li><a href="../homepage/shop.jsp">Daffodil</a></li>
                                                        <li><a href="../homepage/shop.jsp">Dahlia</a></li>
                                                        <li><a href="../homepage/shop.jsp">Daisy</a></li>
                                                        <li><a href="../homepage/shop.jsp">Diascia</a></li>
                                                        <li><a href="../homepage/shop.jsp">Dusty Miller</a></li>
                                                        <li><a href="../homepage/shop.jsp">Dame’s Rocket</a></li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </li>
                                        <li class="top-hover"><a href="blog-left-sidebar.jsp">blog</a>
                                            <ul class="submenu">
                                                <li><a href="blog-masonry.jsp">Blog Masonry</a></li>
                                                <li><a href="#">Blog Standard <span><i class="ion-ios-arrow-right"></i></span></a>
                                                    <ul class="lavel-menu">
                                                        <li><a href="blog-left-sidebar.jsp">left sidebar</a></li>
                                                        <li><a href="blog-right-sidebar.jsp">right sidebar</a></li>
                                                        <li><a href="blog-no-sidebar.jsp">no sidebar</a></li>
                                                    </ul>
                                                </li>
                                                <li><a href="#">Post Types <span><i class="ion-ios-arrow-right"></i></span> </a>
                                                    <ul class="lavel-menu">
                                                        <li><a href="blog-details-standerd.jsp">Standard post</a></li>
                                                        <li><a href="blog-details-audio.jsp">audio post</a></li>
                                                        <li><a href="blog-details-video.jsp">video post</a></li>
                                                        <li><a href="blog-details-gallery.jsp">gallery post</a></li>
                                                        <li><a href="blog-details-link.jsp">link post</a></li>
                                                        <li><a href="blog-details-quote.jsp">quote post</a></li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </li>
                                        <li class="top-hover"><a href="#">pages</a>
                                            <ul class="submenu">
                                                <li><a href="../homepage/about-us.jsp">about us </a></li>
                                                <li><a href="../homepage/shop.jsp">shop Grid</a></li>
                                                <li><a href="../homepage/shop-list.jsp">shop list</a></li>
                                                <li><a href="../homepage/product-details.jsp">product details</a></li>
                                                <li><a href="../user/cart-page.jsp">cart page</a></li>
                                                <li><a href="../user/checkout.jsp">checkout</a></li>
                                                <li><a href="../user/wishlist.jsp">wishlist</a></li>
                                                <li><a href="../user/my-account.jsp">my account</a></li>
                                                <li><a href="login-register.jsp">login / register</a></li>
                                                <li><a href="../homepage/contact.jsp">contact</a></li>
                                                <li><a href="testimonial.jsp">Testimonials</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="../homepage/contact.jsp"> contact</a></li>
                                    </ul>
                                </nav>
                            </div>
                            <div class="header-cart">
                                <a href="#">
                                    <div class="cart-icon">
                                        <i class="ion-bag"></i>
                                        <span class="count-style">02</span>
                                    </div>
                                    <div class="cart-text">
                                        <span class="digit">My Cart</span>
                                        <span>$0.00</span>
                                    </div>
                                </a>
                                <div class="shopping-cart-content">
                                    <ul>
                                        <li class="single-shopping-cart">
                                            <div class="shopping-cart-img">
                                                <a href="#"><img alt="" src="${pageContext.request.contextPath}/img/cart/cart-1.jpg"></a>
                                            </div>
                                            <div class="shopping-cart-title">
                                                <h4><a href="#">Phantom Remote </a></h4>
                                                <h6>Qty: 02</h6>
                                                <span>$260.00</span>
                                            </div>
                                            <div class="shopping-cart-delete">
                                                <a href="#"><i class="ion ion-close"></i></a>
                                            </div>
                                        </li>
                                        <li class="single-shopping-cart">
                                            <div class="shopping-cart-img">
                                                <a href="#"><img alt="" src="${pageContext.request.contextPath}/img/cart/cart-2.jpg"></a>
                                            </div>
                                            <div class="shopping-cart-title">
                                                <h4><a href="#">Phantom Remote</a></h4>
                                                <h6>Qty: 02</h6>
                                                <span>$260.00</span>
                                            </div>
                                            <div class="shopping-cart-delete">
                                                <a href="#"><i class="ion ion-close"></i></a>
                                            </div>
                                        </li>
                                    </ul>
                                    <div class="shopping-cart-total">
                                        <h4>Shipping : <span>$20.00</span></h4>
                                        <h4>Total : <span class="shop-total">$260.00</span></h4>
                                    </div>
                                    <div class="shopping-cart-btn">
                                        <a href="cart-page.jsp">view cart</a>
                                        <a href="checkout.jsp">checkout</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="mobile-menu-area">
                    <div class="mobile-menu">
                        <nav id="mobile-menu-active">
                            <ul class="menu-overflow">
                                <li><a href="#">HOME</a>
                                    <ul>
                                        <li><a href="../homepage/home.jsp">home version 1</a></li>
                                        <li><a href="index-2.jsp">home version 2</a></li>
                                    </ul>
                                </li>
                                <li><a href="#">pages</a>
                                    <ul>
                                        <li><a href="../homepage/about-us.jsp">about us </a></li>
                                        <li><a href="../homepage/shop.jsp">shop Grid</a></li>
                                        <li><a href="../homepage/shop-list.jsp">shop list</a></li>
                                        <li><a href="../homepage/product-details.jsp">product details</a></li>
                                        <li><a href="../user/cart-page.jsp">cart page</a></li>
                                        <li><a href="../user/checkout.jsp">checkout</a></li>
                                        <li><a href="../user/wishlist.jsp">wishlist</a></li>
                                        <li><a href="../user/my-account.jsp">my account</a></li>
                                        <li><a href="login-register.jsp">login / register</a></li>
                                        <li><a href="../homepage/contact.jsp">contact</a></li>
                                        <li><a href="testimonial.jsp">Testimonials</a></li>
                                    </ul>
                                </li>
                                <li><a href="../homepage/shop.jsp"> Shop </a>
                                    <ul>
                                        <li><a href="#">Categories 01</a>
                                            <ul>
                                                <li><a href="../homepage/shop.jsp">Aconite</a></li>
                                                <li><a href="../homepage/shop.jsp">Ageratum</a></li>
                                                <li><a href="../homepage/shop.jsp">Allium</a></li>
                                                <li><a href="../homepage/shop.jsp">Anemone</a></li>
                                                <li><a href="../homepage/shop.jsp">Angelica</a></li>
                                                <li><a href="../homepage/shop.jsp">Angelonia</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="#">Categories 02</a>
                                            <ul>
                                                <li><a href="../homepage/shop.jsp">Balsam</a></li>
                                                <li><a href="../homepage/shop.jsp">Baneberry</a></li>
                                                <li><a href="../homepage/shop.jsp">Bee Balm</a></li>
                                                <li><a href="../homepage/shop.jsp">Begonia</a></li>
                                                <li><a href="../homepage/shop.jsp">Bellflower</a></li>
                                                <li><a href="../homepage/shop.jsp">Bergenia</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="#">Categories 03</a>
                                            <ul>
                                                <li><a href="../homepage/shop.jsp">Caladium</a></li>
                                                <li><a href="../homepage/shop.jsp">Calendula</a></li>
                                                <li><a href="../homepage/shop.jsp">Carnation</a></li>
                                                <li><a href="../homepage/shop.jsp">Catmint</a></li>
                                                <li><a href="../homepage/shop.jsp">Celosia</a></li>
                                                <li><a href="../homepage/shop.jsp">Chives</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="#">Categories 04</a>
                                            <ul>
                                                <li><a href="../homepage/shop.jsp">Daffodil</a></li>
                                                <li><a href="../homepage/shop.jsp">Dahlia</a></li>
                                                <li><a href="../homepage/shop.jsp">Daisy</a></li>
                                                <li><a href="../homepage/shop.jsp">Diascia</a></li>
                                                <li><a href="../homepage/shop.jsp">Dusty Miller</a></li>
                                                <li><a href="../homepage/shop.jsp">Dame’s Rocket</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                                <li><a href="#">BLOG</a>
                                    <ul>
                                        <li><a href="blog-masonry.jsp">Blog Masonry</a></li>
                                        <li><a href="#">Blog Standard</a>
                                            <ul>
                                                <li><a href="blog-left-sidebar.jsp">left sidebar</a></li>
                                                <li><a href="blog-right-sidebar.jsp">right sidebar</a></li>
                                                <li><a href="blog-no-sidebar.jsp">no sidebar</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="#">Post Types</a>
                                            <ul>
                                                <li><a href="blog-details-standerd.jsp">Standard post</a></li>
                                                <li><a href="blog-details-audio.jsp">audio post</a></li>
                                                <li><a href="blog-details-video.jsp">video post</a></li>
                                                <li><a href="blog-details-gallery.jsp">gallery post</a></li>
                                                <li><a href="blog-details-link.jsp">link post</a></li>
                                                <li><a href="blog-details-quote.jsp">quote post</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                                <li><a href="contact.jsp"> Contact us </a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <!--    <footer class="footer-area pt-58 gray-bg-3">
            <div class="footer-top gray-bg-3 pb-20">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="footer-widget footer-widget-red footer-black-color mb-40">
                                <div class="footer-title mb-30">
                                    <h4>About Us</h4>
                                </div>
                                <div class="footer-about">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit sed do eiusmod tempor incididun</p>
                                    <div class="footer-contact mt-20">
                                        <ul>
                                            <li>Address: 123 Main Street, Anytown, CA 12345 - USA.</li>
                                            <li>Telephone: (012) 800 456 789-987 </li>
                                            <li>Email: <a href="#">yourmail@example.com</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="social-icon">
                                    <ul>
                                        <li><a class="facebook" href="#"><i class="ion-social-facebook"></i></a></li>
                                        <li><a class="twitter" href="#"><i class="ion-social-twitter"></i></a></li>
                                        <li><a class="instagram" href="#"><i class="ion-social-instagram-outline"></i></a></li>
                                        <li><a class="googleplus" href="#"><i class="ion-social-googleplus-outline"></i></a></li>
                                        <li><a class="rss" href="#"><i class="ion-social-rss"></i></a></li>
                                        <li><a class="dribbble" href="#"><i class="ion-social-dribbble-outline"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-6 col-sm-6">
                            <div class="footer-widget mb-40">
                                <div class="footer-title mb-30">
                                    <h4>Information</h4>
                                </div>
                                <div class="footer-content">
                                    <ul>
                                        <li><a href="about-us.jsp">About Us</a></li>
                                        <li><a href="#">Delivery Information</a></li>
                                        <li><a href="#">Privacy Policy</a></li>
                                        <li><a href="#">Terms & Conditions</a></li>
                                        <li><a href="#">Customer Service</a></li>
                                        <li><a href="#">Return Policy</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-6 col-sm-6">
                            <div class="footer-widget mb-40">
                                <div class="footer-title mb-30">
                                    <h4>My Account</h4>
                                </div>
                                <div class="footer-content">
                                    <ul>
                                        <li><a href="my-account.jsp">My Account</a></li>
                                        <li><a href="about-us.jsp">Order History</a></li>
                                        <li><a href="wishlist.jsp">WishList</a></li>
                                        <li><a href="#">Newsletter</a></li>
                                        <li><a href="about-us.jsp">Order History</a></li>
                                        <li><a href="#">International Orders</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="footer-widget mb-40">
                                <div class="footer-title mb-30">
                                    <h4>Join Our Newsletter Now</h4>
                                </div>
                                <div class="footer-newsletter">
                                    <p>Get E-mail updates about our latest shop and special offers.</p>
                                    <div id="mc_embed_signup" class="subscribe-form">
                                        <form action="https://devitems.us11.list-manage.com/subscribe/post?u=6bbb9b6f5827bd842d9640c82&amp;id=05d85f18ef" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" class="validate" target="_blank" novalidate>
                                            <div id="mc_embed_signup_scroll" class="mc-form">
                                                <input type="email" value="" name="EMAIL" class="email" placeholder="Your Email Address..." required>
                                                 real people should not fill this in and expect good things - do not remove this or risk form bot signups
                                                <div class="mc-news" aria-hidden="true"><input type="text" name="b_6bbb9b6f5827bd842d9640c82_05d85f18ef" tabindex="-1" value=""></div>
                                                <div class="clear-2"><input type="submit" value="Subscribe" name="subscribe" id="mc-embedded-subscribe" class="button"></div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="footer-bottom pb-25 pt-25 gray-bg-2">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="copyright">
                                <p>Copyright © <a href="#">Phuler</a>. All Right Reserved.</p>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="payment-img f-right">
                                <a href="#">
                                    <img alt="" src="${pageContext.request.contextPath}/img/icon-img/payment.png">
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>-->
</body>