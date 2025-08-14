<!doctype html>
<html class="no-js" lang="zxx">   
    <%@page contentType="text/html" pageEncoding="UTF-8"%>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>MystBloom - Flower Shop</title>
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
        <!-- header start -->       
        <jsp:include page="../common/homePage/header-start.jsp"></jsp:include>

            <div class="breadcrumb-area gray-bg">
                <div class="container">
                    <div class="breadcrumb-content">
                        <ul>
                            <li><a href="../homepage/home.jsp">Home</a></li>
                            <li class="active"> Login / Register </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="login-register-area pt-70 pb-75">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-7 col-md-12 ms-auto me-auto">
                            <div class="login-register-wrapper">
                                <div class="login-register-tab-list nav">
                                    <a class="active" data-bs-toggle="tab" href="#lg1">
                                        <h4> login </h4>
                                    </a>
                                    <a data-bs-toggle="tab" href="#lg2">
                                        <h4> register </h4>
                                    </a>
                                </div>
                                <div class="tab-content">
                                    <div id="lg1" class="tab-pane active">
                                        <div class="login-form-container">
                                            <div class="login-register-form">
                                                <form action="<%= request.getContextPath() %>/login?service=loginUser" method="post">
                                                <input type="text" name="input" placeholder="Email or Phone">
                                                <input type="password" name="password" placeholder="Password">
                                                <div class="button-box">
                                                    <div class="login-toggle-btn">
                                                        <input type="checkbox" name="rememberMe">
                                                        <label>Remember me</label>
                                                        <a href="#">Forgot Password?</a>
                                                    </div>
                                                    <button type="submit" name="submit"><span>Login</span></button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <div id="lg2" class="tab-pane">
                                    <div class="login-form-container">
                                        <div class="login-register-form">
                                            <form action="<%= request.getContextPath() %>/login?service=register" method="post"">
                                                <input type="text" name="fullName" placeholder="Họ và tên">
                                                <input name="user-email" placeholder="Email" type="Email">
                                                <input type="password" name="user-password" placeholder="Mật khẩu">
                                                <input type="text" name="phone" placeholder="Số điện thoại">
                                                <input type="text" name="address" placeholder="Địa chỉ">
                                                <div class="button-box">
                                                    <button name="submit" type="submit"><span>Đăng ký</span></button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <footer class="footer-area pt-58 gray-bg-3">
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
                                        <li><a href="../homepage/about-us.jsp">About Us</a></li>
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
                                        <li><a href="../user/my-account.jsp">My Account</a></li>
                                        <li><a href="../homepage/about-us.jsp">Order History</a></li>
                                        <li><a href="../user/wishlist.jsp">WishList</a></li>
                                        <li><a href="#">Newsletter</a></li>
                                        <li><a href="../homepage/about-us.jsp">Order History</a></li>
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
                                                <!-- real people should not fill this in and expect good things - do not remove this or risk form bot signups-->
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
                                <p>Copyright © <a href="#">MystBloom</a>. All Right Reserved.</p>
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
        </footer>
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
        <script>
            window.addEventListener("DOMContentLoaded", function () {
                const urlParams = new URLSearchParams(window.location.search);
                const tab = urlParams.get("tab");

                if (tab === "register") {
                    // Chuyển nội dung tab
                    document.getElementById("lg1").classList.remove("active", "show");
                    document.getElementById("lg2").classList.add("active", "show");

                    // Chuyển tiêu đề tab
                    document.getElementById("tab-login").classList.remove("active");
                    document.getElementById("tab-register").classList.add("active");
                }
            });
        </script>

        <%
            String status = (String) request.getAttribute("registerStatus");
            if ("success".equals(status)) {
        %>
        <script>alert("Account created successfully. Please log in.");</script>
        <%
            } else if ("fail".equals(status)) {
        %>
        <script>alert("Registration failed. Please try again.");</script>
        <%
            }
        %>
        <%
            String registerError = (String) request.getAttribute("registerError");
            if (registerError != null) {
        %>
        <script>alert("<%= registerError %>");</script>
        <%
            }
        %>

    </body>


</html>
