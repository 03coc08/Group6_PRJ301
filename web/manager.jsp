<%-- 
    Document   : homepage
    Created on : May 24, 2025, 12:03:02 AM
    Author     : khanh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>MystBloom - Flower </title>
        <meta name="description" content="">
        <meta name="robots" content="noindex, follow" />
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/img/favicon.png">

        <!-- all css here -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/animate.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/owl.carousel.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/slick.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/simple-line-icons.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/ionicons.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/meanmenu.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/responsive.css">
        <script src="${pageContext.request.contextPath}/js/vendor/modernizr-3.11.7.min.js"></script>
    </head>
    <body>
        <!-- header start -->
         <!-- Modal -->
      <%@include file="view/common/homePage/header-start-login.jsp" %>
            <!-- Modal end -->

            <div class="slider-area">
                <div class="slider-active owl-dot-style owl-carousel">
                    <div class="single-slider pt-175 pb-258 bg-img" style="background-image:url(${pageContext.request.contextPath}/img/slider/slider-1.jpg);">
                    <div class="container">
                        <div class="slider-content slider-animated-1">
                            <h3 class="animated">New Arrivals</h3>
                            <h1 class="animated">For Mother’s Day!</h1>
                            <h5 class="animated">Exclusive Offer -10% Off This Week</h5>
                            <div class="slider-btn mt-45">
                                <a class="animated" href="product-details.jsp">shop Now</a>
                              
                            </div>
                        </div>
                    </div>
                </div>
                <div class="single-slider pt-175 pb-258 bg-img" style="background-image:url(${pageContext.request.contextPath}/img/slider/slider-2.jpg);">
                    <div class="container">
                        <div class="slider-content slider-animated-2">
                            <h3 class="animated">New Arrivals</h3>
                            <h1 class="animated">For Mother’s Day!</h1>
                            <h5 class="animated">Exclusive Offer -10% Off This Week</h5>
                            <div class="slider-btn mt-45">
                                <a class="animated" href="product-details.jsp">shop Now</a>
                                <a class="animated" href="<%= request.getContextPath() %>/Logout">Đăng xuất</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="banner-area">
            <div class="container">
                <div class="banner-wrap">
                    <div class="row">
                        <div class="col-lg-4 col-md-4">
                            <div class="single-banner img-zoom mb-30">
                                <a href="#">
                                    <img src="${pageContext.request.contextPath}/img/banner/banner-1.png" alt="">
                                </a>
                                <div class="banner-content">
                                    <h4>Camellias</h4>
                                    <a href="#">shop Now</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4">
                            <div class="single-banner img-zoom mb-30">
                                <a href="#">
                                    <img src="${pageContext.request.contextPath}/img/banner/banner-2.png" alt="">
                                </a>
                                <div class="banner-content">
                                    <h4>Bergamot</h4>
                                    <a href="#">shop Now</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4">
                            <div class="single-banner mb-xs-banner img-zoom mb-30">
                                <a href="#">
                                    <img src="${pageContext.request.contextPath}/img/banner/banner-3.png" alt="">
                                </a>
                                <div class="banner-content">
                                    <h4>Bottlebrush</h4>
                                    <a href="#">shop Now</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="product-area pt-40 pb-70">
            <div class="container">
                <div class="product-top-bar section-border mb-35">
                    <div class="section-title-wrap">
                        <h3 class="section-title section-bg-white">Featured Products</h3>
                    </div>
                    <div class="product-tab-list nav section-bg-white">
                        <a class="active" data-bs-toggle="tab" href="#tab1">
                            <h4>All </h4>
                        </a>
                        <a data-bs-toggle="tab" href="#tab2">
                            <h4>Winter </h4>
                        </a>
                        <a data-bs-toggle="tab" href="#tab3">
                            <h4> Various  </h4>
                        </a>
                        <a data-bs-toggle="tab" href="#tab4">
                            <h4>Greens </h4>
                        </a>
                    </div>
                </div>
                <div class="tab-content jump">
                    <div id="tab1" class="tab-pane active">
                        <div class="featured-product-active owl-carousel product-nav">
                            <div class="product-wrapper">
                                <div class="product-img">
                                    <a href="product-details.jsp">
                                        <img alt="" src="${pageContext.request.contextPath}/img/product/product-1.jpg">
                                    </a>
                                    <span>-30%</span>
                                    <div class="product-action">
                                        <a class="action-wishlist" href="#" title="Wishlist">
                                            <i class="icon-heart"></i>
                                        </a>
                                        <a class="action-cart" href="#" title="Add To Cart">
                                            <i class="icon-handbag"></i>
                                        </a>
                                        <a class="action-compare" href="#" data-bs-target="#exampleModal" data-bs-toggle="modal" title="Quick View">
                                            <i class="icon-magnifier-add"></i>
                                        </a>
                                    </div>
                                </div>
                                <div class="product-content text-center">
                                    <h4>
                                        <a href="product-details.jsp">Dutchman's Breeches </a>
                                    </h4>
                                    <div class="product-price-wrapper">
                                        <span>$100.00</span>
                                        <span class="product-price-old">$120.00 </span>
                                    </div>
                                </div>
                            </div>
                            <div class="product-wrapper">
                                <div class="product-img">
                                    <a href="product-details.jsp">
                                        <img alt="" src="${pageContext.request.contextPath}/img/product/product-2.jpg">
                                    </a>
                                    <div class="product-action">
                                        <a class="action-wishlist" href="#" title="Wishlist">
                                            <i class="icon-heart"></i>
                                        </a>
                                        <a class="action-cart" href="#" title="Add To Cart">
                                            <i class="icon-handbag"></i>
                                        </a>
                                        <a class="action-compare" href="#" data-bs-target="#exampleModal" data-bs-toggle="modal" title="Quick View">
                                            <i class="icon-magnifier-add"></i>
                                        </a>
                                    </div>
                                </div>
                                <div class="product-content text-center">
                                    <h4>
                                        <a href="product-details.jsp">Flowers Bouquet Pink	</a>
                                    </h4>
                                    <div class="product-price-wrapper">
                                        <span>$100.00</span>
                                    </div>
                                </div>
                            </div>
                            <div class="product-wrapper">
                                <div class="product-img">
                                    <a href="product-details.jsp">
                                        <img alt="" src="${pageContext.request.contextPath}/img/product/product-3.jpg">
                                    </a>
                                    <span>-30%</span>
                                    <div class="product-action">
                                        <a class="action-wishlist" href="#" title="Wishlist">
                                            <i class="icon-heart"></i>
                                        </a>
                                        <a class="action-cart" href="#" title="Add To Cart">
                                            <i class="icon-handbag"></i>
                                        </a>
                                        <a class="action-compare" href="#" data-bs-target="#exampleModal" data-bs-toggle="modal" title="Quick View">
                                            <i class="icon-magnifier-add"></i>
                                        </a>
                                    </div>
                                </div>
                                <div class="product-content text-center">
                                    <h4>
                                        <a href="product-details.jsp">Evergreen Candytuft </a>
                                    </h4>
                                    <div class="product-price-wrapper">
                                        <span>$100.00</span>
                                        <span class="product-price-old">$120.00 </span>
                                    </div>
                                </div>
                            </div>
                            <div class="product-wrapper">
                                <div class="product-img">
                                    <a href="product-details.jsp">
                                        <img alt="" src="${pageContext.request.contextPath}/img/product/product-4.jpg">
                                    </a>
                                    <div class="product-action">
                                        <a class="action-wishlist" href="#" title="Wishlist">
                                            <i class="icon-heart"></i>
                                        </a>
                                        <a class="action-cart" href="#" title="Add To Cart">
                                            <i class="icon-handbag"></i>
                                        </a>
                                        <a class="action-compare" href="#" data-bs-target="#exampleModal" data-bs-toggle="modal" title="Quick View">
                                            <i class="icon-magnifier-add"></i>
                                        </a>
                                    </div>
                                </div>
                                <div class="product-content text-center">
                                    <h4>
                                        <a href="product-details.jsp">Pearly Everlasting</a>
                                    </h4>
                                    <div class="product-price-wrapper">
                                        <span>$100.00</span>
                                    </div>
                                </div>
                            </div>
                            <div class="product-wrapper">
                                <div class="product-img">
                                    <a href="product-details.jsp">
                                        <img alt="" src="${pageContext.request.contextPath}/img/product/product-2.jpg">
                                    </a>
                                    <span>-30%</span>
                                    <div class="product-action">
                                        <a class="action-wishlist" href="#" title="Wishlist">
                                            <i class="icon-heart"></i>
                                        </a>
                                        <a class="action-cart" href="#" title="Add To Cart">
                                            <i class="icon-handbag"></i>
                                        </a>
                                        <a class="action-compare" href="#" data-bs-target="#exampleModal" data-bs-toggle="modal" title="Quick View">
                                            <i class="icon-magnifier-add"></i>
                                        </a>
                                    </div>
                                </div>
                                <div class="product-content text-center">
                                    <h4>
                                        <a href="product-details.jsp">Yellow Loosestrife</a>
                                    </h4>
                                    <div class="product-price-wrapper">
                                        <span>$100.00</span>
                                        <span class="product-price-old">$120.00 </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="tab2" class="tab-pane">
                        <div class="featured-product-active owl-carousel product-nav">
                            <div class="product-wrapper">
                                <div class="product-img">
                                    <a href="product-details.jsp">
                                        <img alt="" src="${pageContext.request.contextPath}/img/product/product-5.jpg">
                                    </a>
                                    <span>-30%</span>
                                    <div class="product-action">
                                        <a class="action-wishlist" href="#" title="Wishlist">
                                            <i class="icon-heart"></i>
                                        </a>
                                        <a class="action-cart" href="#" title="Add To Cart">
                                            <i class="icon-handbag"></i>
                                        </a>
                                        <a class="action-compare" href="#" data-bs-target="#exampleModal" data-bs-toggle="modal" title="Quick View">
                                            <i class="icon-magnifier-add"></i>
                                        </a>
                                    </div>
                                </div>
                                <div class="product-content text-center">
                                    <h4>
                                        <a href="product-details.jsp">Golden Marguerite</a>
                                    </h4>
                                    <div class="product-price-wrapper">
                                        <span>$100.00</span>
                                        <span class="product-price-old">$120.00 </span>
                                    </div>
                                </div>
                            </div>
                            <div class="product-wrapper">
                                <div class="product-img">
                                    <a href="product-details.jsp">
                                        <img alt="" src="${pageContext.request.contextPath}/img/product/product-6.jpg">
                                    </a>
                                    <div class="product-action">
                                        <a class="action-wishlist" href="#" title="Wishlist">
                                            <i class="icon-heart"></i>
                                        </a>
                                        <a class="action-cart" href="#" title="Add To Cart">
                                            <i class="icon-handbag"></i>
                                        </a>
                                        <a class="action-compare" href="#" data-bs-target="#exampleModal" data-bs-toggle="modal" title="Quick View">
                                            <i class="icon-magnifier-add"></i>
                                        </a>
                                    </div>
                                </div>
                                <div class="product-content text-center">
                                    <h4>
                                        <a href="product-details.jsp">Pearly Everlasting</a>
                                    </h4>
                                    <div class="product-price-wrapper">
                                        <span>$100.00</span>
                                    </div>
                                </div>
                            </div>
                            <div class="product-wrapper">
                                <div class="product-img">
                                    <a href="product-details.jsp">
                                        <img alt="" src="${pageContext.request.contextPath}/img/product/product-7.jpg">
                                    </a>
                                    <span>-30%</span>
                                    <div class="product-action">
                                        <a class="action-wishlist" href="#" title="Wishlist">
                                            <i class="icon-heart"></i>
                                        </a>
                                        <a class="action-cart" href="#" title="Add To Cart">
                                            <i class="icon-handbag"></i>
                                        </a>
                                        <a class="action-compare" href="#" data-bs-target="#exampleModal" data-bs-toggle="modal" title="Quick View">
                                            <i class="icon-magnifier-add"></i>
                                        </a>
                                    </div>
                                </div>
                                <div class="product-content text-center">
                                    <h4>
                                        <a href="product-details.jsp">Polka Dot Plant</a>
                                    </h4>
                                    <div class="product-price-wrapper">
                                        <span>$100.00</span>
                                        <span class="product-price-old">$120.00 </span>
                                    </div>
                                </div>
                            </div>
                            <div class="product-wrapper">
                                <div class="product-img">
                                    <a href="product-details.jsp">
                                        <img alt="" src="${pageContext.request.contextPath}/img/product/product-8.jpg">
                                    </a>
                                    <div class="product-action">
                                        <a class="action-wishlist" href="#" title="Wishlist">
                                            <i class="icon-heart"></i>
                                        </a>
                                        <a class="action-cart" href="#" title="Add To Cart">
                                            <i class="icon-handbag"></i>
                                        </a>
                                        <a class="action-compare" href="#" data-bs-target="#exampleModal" data-bs-toggle="modal" title="Quick View">
                                            <i class="icon-magnifier-add"></i>
                                        </a>
                                    </div>
                                </div>
                                <div class="product-content text-center">
                                    <h4>
                                        <a href="product-details.jsp">Glory of the Snow</a>
                                    </h4>
                                    <div class="product-price-wrapper">
                                        <span>$100.00</span>
                                    </div>
                                </div>
                            </div>
                            <div class="product-wrapper">
                                <div class="product-img">
                                    <a href="product-details.jsp">
                                        <img alt="" src="${pageContext.request.contextPath}/img/product/product-6.jpg">
                                    </a>
                                    <span>-30%</span>
                                    <div class="product-action">
                                        <a class="action-wishlist" href="#" title="Wishlist">
                                            <i class="icon-heart"></i>
                                        </a>
                                        <a class="action-cart" href="#" title="Add To Cart">
                                            <i class="icon-handbag"></i>
                                        </a>
                                        <a class="action-compare" href="#" data-bs-target="#exampleModal" data-bs-toggle="modal" title="Quick View">
                                            <i class="icon-magnifier-add"></i>
                                        </a>
                                    </div>
                                </div>
                                <div class="product-content text-center">
                                    <h4>
                                        <a href="product-details.jsp">Jack in the Pulpit</a>
                                    </h4>
                                    <div class="product-price-wrapper">
                                        <span>$100.00</span>
                                        <span class="product-price-old">$120.00 </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="tab3" class="tab-pane">
                        <div class="featured-product-active owl-carousel product-nav">
                            <div class="product-wrapper">
                                <div class="product-img">
                                    <a href="product-details.jsp">
                                        <img alt="" src="${pageContext.request.contextPath}/img/product/product-4.jpg">
                                    </a>
                                    <span>-30%</span>
                                    <div class="product-action">
                                        <a class="action-wishlist" href="#" title="Wishlist">
                                            <i class="icon-heart"></i>
                                        </a>
                                        <a class="action-cart" href="#" title="Add To Cart">
                                            <i class="icon-handbag"></i>
                                        </a>
                                        <a class="action-compare" href="#" data-bs-target="#exampleModal" data-bs-toggle="modal" title="Quick View">
                                            <i class="icon-magnifier-add"></i>
                                        </a>
                                    </div>
                                </div>
                                <div class="product-content text-center">
                                    <h4>
                                        <<a href="product-details.jsp">Dutchman's Breeches </a>
                                    </h4>
                                    <div class="product-price-wrapper">
                                        <span>$100.00</span>
                                        <span class="product-price-old">$120.00 </span>
                                    </div>
                                </div>
                            </div>
                            <div class="product-wrapper">
                                <div class="product-img">
                                    <<a href="product-details.jsp">
                                        <img alt="" src="${pageContext.request.contextPath}/img/product/product-2.jpg">
                                    </a>
                                    <div class="product-action">
                                        <a class="action-wishlist" href="#" title="Wishlist">
                                            <i class="icon-heart"></i>
                                        </a>
                                        <a class="action-cart" href="#" title="Add To Cart">
                                            <i class="icon-handbag"></i>
                                        </a>
                                        <a class="action-compare" href="#" data-bs-target="#exampleModal" data-bs-toggle="modal" title="Quick View">
                                            <i class="icon-magnifier-add"></i>
                                        </a>
                                    </div>
                                </div>
                                <div class="product-content text-center">
                                    <h4>
                                        <<a href="product-details.jsp">Flowers Bouquet Pink</a>
                                    </h4>
                                    <div class="product-price-wrapper">
                                        <span>$100.00</span>
                                    </div>
                                </div>
                            </div>
                            <div class="product-wrapper">
                                <div class="product-img">
                                    <<a href="product-details.jsp">
                                        <img alt="" src="${pageContext.request.contextPath}/img/product/product-1.jpg">
                                    </a>
                                    <span>-30%</span>
                                    <div class="product-action">
                                        <a class="action-wishlist" href="#" title="Wishlist">
                                            <i class="icon-heart"></i>
                                        </a>
                                        <a class="action-cart" href="#" title="Add To Cart">
                                            <i class="icon-handbag"></i>
                                        </a>
                                        <a class="action-compare" href="#" data-bs-target="#exampleModal" data-bs-toggle="modal" title="Quick View">
                                            <i class="icon-magnifier-add"></i>
                                        </a>
                                    </div>
                                </div>
                                <div class="product-content text-center">
                                    <h4>
                                        <<a href="product-details.jsp">Evergreen Candytuft </a>
                                    </h4>
                                    <div class="product-price-wrapper">
                                        <span>$100.00</span>
                                        <span class="product-price-old">$120.00 </span>
                                    </div>
                                </div>
                            </div>
                            <div class="product-wrapper">
                                <div class="product-img">
                                    <<a href="product-details.jsp">
                                        <img alt="" src="${pageContext.request.contextPath}/img/product/product-3.jpg">
                                    </a>
                                    <div class="product-action">
                                        <a class="action-wishlist" href="#" title="Wishlist">
                                            <i class="icon-heart"></i>
                                        </a>
                                        <a class="action-cart" href="#" title="Add To Cart">
                                            <i class="icon-handbag"></i>
                                        </a>
                                        <a class="action-compare" href="#" data-bs-target="#exampleModal" data-bs-toggle="modal" title="Quick View">
                                            <i class="icon-magnifier-add"></i>
                                        </a>
                                    </div>
                                </div>
                                <div class="product-content text-center">
                                    <h4>
                                        <<a href="product-details.jsp">Pearly Everlasting</a>
                                    </h4>
                                    <div class="product-price-wrapper">
                                        <span>$100.00</span>
                                    </div>
                                </div>
                            </div>
                            <div class="product-wrapper">
                                <div class="product-img">
                                    <<a href="product-details.jsp">
                                        <img alt="" src="${pageContext.request.contextPath}/img/product/product-2.jpg">
                                    </a>
                                    <span>-30%</span>
                                    <div class="product-action">
                                        <a class="action-wishlist" href="#" title="Wishlist">
                                            <i class="icon-heart"></i>
                                        </a>
                                        <a class="action-cart" href="#" title="Add To Cart">
                                            <i class="icon-handbag"></i>
                                        </a>
                                        <a class="action-compare" href="#" data-bs-target="#exampleModal" data-bs-toggle="modal" title="Quick View">
                                            <i class="icon-magnifier-add"></i>
                                        </a>
                                    </div>
                                </div>
                                <div class="product-content text-center">
                                    <h4>
                                        <<a href="product-details.jsp">Yellow Loosestrife</a>
                                    </h4>
                                    <div class="product-price-wrapper">
                                        <span>$100.00</span>
                                        <span class="product-price-old">$120.00 </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="tab4" class="tab-pane">
                        <div class="featured-product-active owl-carousel product-nav">
                            <div class="product-wrapper">
                                <div class="product-img">
                                    <<a href="product-details.jsp">
                                        <img alt="" src="${pageContext.request.contextPath}/img/product/product-8.jpg">
                                    </a>
                                    <span>-30%</span>
                                    <div class="product-action">
                                        <a class="action-wishlist" href="#" title="Wishlist">
                                            <i class="icon-heart"></i>
                                        </a>
                                        <a class="action-cart" href="#" title="Add To Cart">
                                            <i class="icon-handbag"></i>
                                        </a>
                                        <a class="action-compare" href="#" data-bs-target="#exampleModal" data-bs-toggle="modal" title="Quick View">
                                            <i class="icon-magnifier-add"></i>
                                        </a>
                                    </div>
                                </div>
                                <div class="product-content text-center">
                                    <h4>
                                        <<a href="product-details.jsp">Golden Marguerite</a>
                                    </h4>
                                    <div class="product-price-wrapper">
                                        <span>$100.00</span>
                                        <span class="product-price-old">$120.00 </span>
                                    </div>
                                </div>
                            </div>
                            <div class="product-wrapper">
                                <div class="product-img">
                                    <<a href="product-details.jsp">
                                        <img alt="" src="${pageContext.request.contextPath}/img/product/product-6.jpg">
                                    </a>
                                    <div class="product-action">
                                        <a class="action-wishlist" href="#" title="Wishlist">
                                            <i class="icon-heart"></i>
                                        </a>
                                        <a class="action-cart" href="#" title="Add To Cart">
                                            <i class="icon-handbag"></i>
                                        </a>
                                        <a class="action-compare" href="#" data-bs-target="#exampleModal" data-bs-toggle="modal" title="Quick View">
                                            <i class="icon-magnifier-add"></i>
                                        </a>
                                    </div>
                                </div>
                                <div class="product-content text-center">
                                    <h4>
                                        <<a href="product-details.jsp">Pearly Everlasting</a>
                                    </h4>
                                    <div class="product-price-wrapper">
                                        <span>$100.00</span>
                                    </div>
                                </div>
                            </div>
                            <div class="product-wrapper">
                                <div class="product-img">
                                    <<a href="product-details.jsp">
                                        <img alt="" src="${pageContext.request.contextPath}/img/product/product-5.jpg">
                                    </a>
                                    <span>-30%</span>
                                    <div class="product-action">
                                        <a class="action-wishlist" href="#" title="Wishlist">
                                            <i class="icon-heart"></i>
                                        </a>
                                        <a class="action-cart" href="#" title="Add To Cart">
                                            <i class="icon-handbag"></i>
                                        </a>
                                        <a class="action-compare" href="#" data-bs-target="#exampleModal" data-bs-toggle="modal" title="Quick View">
                                            <i class="icon-magnifier-add"></i>
                                        </a>
                                    </div>
                                </div>
                                <div class="product-content text-center">
                                    <h4>
                                        <<a href="product-details.jsp">Polka Dot Plant</a>
                                    </h4>
                                    <div class="product-price-wrapper">
                                        <span>$100.00</span>
                                        <span class="product-price-old">$120.00 </span>
                                    </div>
                                </div>
                            </div>
                            <div class="product-wrapper">
                                <div class="product-img">
                                    <a href="product-details.jsp">
                                        <img alt="" src="${pageContext.request.contextPath}/img/product/product-7.jpg">
                                    </a>
                                    <div class="product-action">
                                        <a class="action-wishlist" href="#" title="Wishlist">
                                            <i class="icon-heart"></i>
                                        </a>
                                        <a class="action-cart" href="#" title="Add To Cart">
                                            <i class="icon-handbag"></i>
                                        </a>
                                        <a class="action-compare" href="#" data-bs-target="#exampleModal" data-bs-toggle="modal" title="Quick View">
                                            <i class="icon-magnifier-add"></i>
                                        </a>
                                    </div>
                                </div>
                                <div class="product-content text-center">
                                    <h4>
                                        <a href="product-details.jsp">Glory of the Snow</a>
                                    </h4>
                                    <div class="product-price-wrapper">
                                        <span>$100.00</span>
                                    </div>
                                </div>
                            </div>
                            <div class="product-wrapper">
                                <div class="product-img">
                                    <a href="product-details.jsp">
                                        <img alt="" src="${pageContext.request.contextPath}/img/product/product-4.jpg">
                                    </a>
                                    <span>-30%</span>
                                    <div class="product-action">
                                        <a class="action-wishlist" href="#" title="Wishlist">
                                            <i class="icon-heart"></i>
                                        </a>
                                        <a class="action-cart" href="#" title="Add To Cart">
                                            <i class="icon-handbag"></i>
                                        </a>
                                        <a class="action-compare" href="#" data-bs-target="#exampleModal" data-bs-toggle="modal" title="Quick View">
                                            <i class="icon-magnifier-add"></i>
                                        </a>
                                    </div>
                                </div>
                                <div class="product-content text-center">
                                    <h4>
                                        <a href="product-details.jsp">Jack in the Pulpit</a>
                                    </h4>
                                    <div class="product-price-wrapper">
                                        <span>$100.00</span>
                                        <span class="product-price-old">$120.00 </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="testimonials-area bg-img pt-120 pb-115" style="background-image:url(${pageContext.request.contextPath}/img/bg/bg-1.jpg);">
            <div class="container">
                <div class="row">
                    <div class="col-lg-7 col-md-12 ms-auto col-12">
                        <div class="testimonial-active owl-carousel">
                            <div class="single-testimonial text-center">
                                <div class="testimonial-img">
                                    <img alt="" src="${pageContext.request.contextPath}/img/icon-img/testi.png">
                                </div>
                                <p>When a beautiful design is combined with powerful technology,<br> it truly is an artwork. I love how my website operates and looks with this theme. <br>Thank you for the awesome product. </p>
                                <h4>Samia Robiul</h4>
                            </div>
                            <div class="single-testimonial text-center">
                                <div class="testimonial-img">
                                    <img alt="" src="${pageContext.request.contextPath}/img/icon-img/testi.png">
                                </div>
                                <p>“ Lorem ipsum dolor sit, con adipisicing elit, sed do eiusmod tempor <br>incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud <br>exercitati ullamco laboris  ” </p>
                                <h4> Tayeb Rayed</h4>
                            </div>
                            <div class="single-testimonial text-center">
                                <div class="testimonial-img">
                                    <img alt="" src="${pageContext.request.contextPath}/img/icon-img/testi.png">
                                </div>
                                <p>When a beautiful design is combined with powerful ,<br> technology it truly is an artwork. I love how my website operates and looks with this  <br>theme. Thank you for the awesome product. </p>
                                <h4>Hamim Ahamed</h4>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="best-selling-product pt-70 pb-75 gray-bg">
            <div class="container">
                <div class="product-top-bar section-border mb-35">
                    <div class="section-title-wrap">
                        <h3 class="section-title section-bg-gray">Best Selling Products</h3>
                    </div>
                </div>
                <div class="best-selling-wrap">
                    <div class="best-selling-active owl-carousel product-nav">
                        <div class="single-best-selling">
                            <div class="row">
                                <div class="col-lg-6 col-xl-5 col-md-6">
                                    <div class="single-best-img">
                                        <img class="tilter" src="${pageContext.request.contextPath}/img/banner/deal-1.png" alt="">
                                    </div>
                                </div>
                                <div class="col-lg-6 col-xl-7 col-md-6">
                                    <div class="deals-content text-center deal-mrg">
                                        <img alt="" src="${pageContext.request.contextPath}/img/icon-img/deals-2.png">
                                        <h2>Hot Deal ! Sale Up To <span>20% Off</span></h2>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam. </p>
                                        <div class="timer timer-style">
                                            <div data-countdown="2023/09/01"></div>
                                        </div>
                                        <div class="deals-btn">
                                            <a href="#">Shop Now</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="single-best-selling">
                            <div class="row">
                                <div class="col-lg-6 col-xl-5 col-md-6">
                                    <div class="single-best-img">
                                        <img class="tilter" src="${pageContext.request.contextPath}/img/banner/deal-1.png" alt="">
                                    </div>
                                </div>
                                <div class="col-lg-6 col-xl-7 col-md-6">
                                    <div class="deals-content text-center deal-mrg">
                                        <img alt="" src="${pageContext.request.contextPath}/img/icon-img/deals-2.png">
                                        <h2>Hot Deal ! Sale Up To <span>20% Off</span></h2>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam. </p>
                                        <div class="timer timer-style">
                                            <div data-countdown="2023/09/01"></div>
                                        </div>
                                        <div class="deals-btn">
                                            <a href="#">Shop Now</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="product-area pt-70 pb-70">
            <div class="container">
                <div class="product-top-bar section-border mb-35">
                    <div class="section-title-wrap">
                        <h3 class="section-title section-bg-white">Hot Flower</h3>
                    </div>
                </div>
                <div class="featured-product-active hot-flower owl-carousel product-nav">
                    <div class="product-wrapper">
                        <div class="product-img">
                            <<a href="product-details.jsp">
                                <img alt="" src="${pageContext.request.contextPath}/img/product/product-5.jpg">
                            </a>
                            <span>-30%</span>
                            <div class="product-action">
                                <a class="action-wishlist" href="#" title="Wishlist">
                                    <i class="icon-heart"></i>
                                </a>
                                <a class="action-cart" href="#" title="Add To Cart">
                                    <i class="icon-handbag"></i>
                                </a>
                                <a class="action-compare" href="#" data-bs-target="#exampleModal" data-bs-toggle="modal" title="Quick View">
                                    <i class="icon-magnifier-add"></i>
                                </a>
                            </div>
                        </div>
                        <div class="product-content text-center">
                            <h4>
                                <<a href="product-details.jsp">Pearly Everlasting</a>
                            </h4>
                            <div class="product-price-wrapper">
                                <span>$100.00</span>
                                <span class="product-price-old">$120.00 </span>
                            </div>
                        </div>
                    </div>
                    <div class="product-wrapper">
                        <div class="product-img">
                            <<a href="product-details.jsp">
                                <img alt="" src="${pageContext.request.contextPath}/img/product/product-6.jpg">
                            </a>
                            <div class="product-action">
                                <a class="action-wishlist" href="#" title="Wishlist">
                                    <i class="icon-heart"></i>
                                </a>
                                <a class="action-cart" href="#" title="Add To Cart">
                                    <i class="icon-handbag"></i>
                                </a>
                                <a class="action-compare" href="#" data-bs-target="#exampleModal" data-bs-toggle="modal" title="Quick View">
                                    <i class="icon-magnifier-add"></i>
                                </a>
                            </div>
                        </div>
                        <div class="product-content text-center">
                            <h4>
                                <<a href="product-details.jsp">Polka Dot Plant</a>
                            </h4>
                            <div class="product-price-wrapper">
                                <span>$100.00</span>
                            </div>
                        </div>
                    </div>
                    <div class="product-wrapper">
                        <div class="product-img">
                            <<a href="product-details.jsp">
                                <img alt="" src="${pageContext.request.contextPath}/img/product/product-7.jpg">
                            </a>
                            <span>-30%</span>
                            <div class="product-action">
                                <a class="action-wishlist" href="#" title="Wishlist">
                                    <i class="icon-heart"></i>
                                </a>
                                <a class="action-cart" href="#" title="Add To Cart">
                                    <i class="icon-handbag"></i>
                                </a>
                                <a class="action-compare" href="#" data-bs-target="#exampleModal" data-bs-toggle="modal" title="Quick View">
                                    <i class="icon-magnifier-add"></i>
                                </a>
                            </div>
                        </div>
                        <div class="product-content text-center">
                            <h4>
                                <<a href="product-details.jsp">Glory of the Snow</a>
                            </h4>
                            <div class="product-price-wrapper">
                                <span>$100.00</span>
                                <span class="product-price-old">$120.00 </span>
                            </div>
                        </div>
                    </div>
                    <div class="product-wrapper">
                        <div class="product-img">
                            <<a href="product-details.jsp">
                                <img alt="" src="${pageContext.request.contextPath}/img/product/product-8.jpg">
                            </a>
                            <div class="product-action">
                                <a class="action-wishlist" href="#" title="Wishlist">
                                    <i class="icon-heart"></i>
                                </a>
                                <a class="action-cart" href="#" title="Add To Cart">
                                    <i class="icon-handbag"></i>
                                </a>
                                <a class="action-compare" href="#" data-bs-target="#exampleModal" data-bs-toggle="modal" title="Quick View">
                                    <i class="icon-magnifier-add"></i>
                                </a>
                            </div>
                        </div>
                        <div class="product-content text-center">
                            <h4>
                                <<a href="product-details.jsp">Jack in the Pulpit</a>
                            </h4>
                            <div class="product-price-wrapper">
                                <span>$100.00</span>
                            </div>
                        </div>
                    </div>
                    <div class="product-wrapper">
                        <div class="product-img">
                            <<a href="product-details.jsp">
                                <img alt="" src="${pageContext.request.contextPath}/img/product/product-6.jpg">
                            </a>
                            <span>-30%</span>
                            <div class="product-action">
                                <a class="action-wishlist" href="#" title="Wishlist">
                                    <i class="icon-heart"></i>
                                </a>
                                <a class="action-cart" href="#" title="Add To Cart">
                                    <i class="icon-handbag"></i>
                                </a>
                                <a class="action-compare" href="#" data-bs-target="#exampleModal" data-bs-toggle="modal" title="Quick View">
                                    <i class="icon-magnifier-add"></i>
                                </a>
                            </div>
                        </div>
                        <div class="product-content text-center">
                            <h4>
                                <<a href="product-details.jsp">Flowers Bouquet Pink	</a>
                            </h4>
                            <div class="product-price-wrapper">
                                <span>$100.00</span>
                                <span class="product-price-old">$120.00 </span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="new-year-offer-area pb-75">
            <div class="container">
                <div class="new-year-offer-wrap pt-70 pb-75 bg-img" style="background-image:url(${pageContext.request.contextPath}/img/banner/banner-4.jpg);">
                    <div class="new-year-offer-content text-center">
                        <h4>New Year Offer</h4>
                        <h3>Fresh flowers for any special occasion</h3>
                        <a href="#">Discover now</a>
                    </div>
                </div>
            </div>
        </div>    



        <!-- all js here -->
        <script src="${pageContext.request.contextPath}/js/vendor/jquery-v2.2.4.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/popper.js"></script>
        <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/imagesloaded.pkgd.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/isotope.pkgd.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/ajax-mail.js"></script>
        <script src="${pageContext.request.contextPath}/js/owl.carousel.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/plugins.js"></script>
        <script src="${pageContext.request.contextPath}/js/main.js"></script>
    </body>


</html>

