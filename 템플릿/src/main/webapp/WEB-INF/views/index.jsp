<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<html class="no-js">
    <head>
        <!-- Basic Page Needs
        ================================================== -->
        <meta charset="utf-8">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <link rel="icon" type="image/png" href="resources/bootstrap/images/favicon.png">
        <title>NW 2017</title>
        <meta name="description" content="">
        <meta name="keywords" content="">
        <meta name="author" content="">
        <!-- Mobile Specific Metas
        ================================================== -->
        <meta name="format-detection" content="telephone=no">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        
        <!-- Template CSS Files
        ================================================== -->
        <!-- Twitter Bootstrs CSS -->
        <link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css">
        <!-- Ionicons Fonts Css -->
        <link rel="stylesheet" href="resources/bootstrap/css/ionicons.min.css">
        <!-- animate css -->
        <link rel="stylesheet" href="resources/bootstrap/css/animate.css">
        <!-- Hero area slider css-->
        <link rel="stylesheet" href="resources/bootstrap/css/slider.css">
        <!-- owl craousel css -->
        <link rel="stylesheet" href="resources/bootstrap/css/owl.carousel.css">
        <link rel="stylesheet" href="resources/bootstrap/css/owl.theme.css">
        <link rel="stylesheet" href="resources/bootstrap/css/jquery.fancybox.css">
        <!-- template main css file -->
        <link rel="stylesheet" href="resources/bootstrap/css/main.css">
        <!-- responsive css -->
        <link rel="stylesheet" href="resources/bootstrap/css/responsive.css">
        
        <!-- Template Javascript Files
        ================================================== -->
        <!-- modernizr js -->
        <script src="resources/bootstrap/js/vendor/modernizr-2.6.2.min.js"></script>
        <!-- jquery -->
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
        <!-- owl carouserl js -->
        <script src="resources/bootstrap/js/owl.carousel.min.js"></script>
        <!-- bootstrap js -->

        <script src="resources/bootstrap/js/bootstrap.min.js"></script>
        <!-- wow js -->
        <script src="resources/bootstrap/js/wow.min.js"></script>
        <!-- slider js -->
        <script src="resources/bootstrap/js/slider.js"></script>
        <script src="resources/bootstrap/js/jquery.fancybox.js"></script>
        <!-- template main js -->
        <script src="resources/bootstrap/js/main.js"></script>
    </head>
    <body>
    <%@ include file="headerBar.jsp" %>
    <!--
    ==================================================
    Slider Section Start
    ================================================== -->
        <section id="hero-area" >
            <div class="container">
                <div class="row">
                    <div class="col-md-12 text-center">
                        <div class="block wow fadeInUp" data-wow-delay=".3s">
                            
                            <!-- Slider -->
                            <section class="cd-intro">
                                <h1 class="wow fadeInUp animated cd-headline slide" data-wow-delay=".4s" >
                                <span>HI, MY NAME IS JONATHON & I AM A</span><br>
                                <span class="cd-words-wrapper">
                                    <b class="is-visible">DESIGNER</b>
                                    <b>DEVELOPER</b>
                                    <b>FATHER</b>
                                </span>
                                </h1>
                                </section> <!-- cd-intro -->
                                <!-- /.slider -->
                                <h2 class="wow fadeInUp animated" data-wow-delay=".6s" >
                                    With 10 years experience, I've occupied many roles including digital design director,<br> web designer and developer. This site showcases some of my work.
                                </h2>
                            <sec:authorize access="isAnonymous()">
                            <a href="/user/signup" class="btn btn-default btn-contact wow fadeInDown" data-wow-delay=".9s"  >SIGNUP</a>
                            <a href="/user/signin" class="btn btn-default btn-contact wow fadeInDown" data-wow-delay=".9s"  >SIGNIN</a>
                            </sec:authorize>
                            <sec:authorize access="isAuthenticated()">
                                <c:set var="user" value="${SPRING_SECURITY_CONTEXT.authentication.principal}"/>
                                <a href="/book/service?email=${user.email}" class="btn btn-default btn-contact wow fadeInDown" data-wow-delay=".9s"  >공부하기</a>
                                <a href="/user/signout" class="btn btn-default btn-contact wow fadeInDown" data-wow-delay=".9s"  >SiGNOUT</a>
                            </sec:authorize>
                        </div>
                        </div>
                    </div>
                </div>
            </section>
            <!--
            ==================================================
            Footer Section Start
            ================================================== -->
            <footer id="footer">
                <div class="container">
                    <div class="col-md-8">
                        <p class="copyright">Copyright: <span>2015</span> . Design and Developed by <a href="http://www.Themefisher.com">Themefisher</a></p>
                    </div>
                    <div class="col-md-4">
                        <!-- Social Media -->
                        <ul class="social">
                            <li>
                                <a href="http://www.facebook.com" class="Facebook">
                                    <i class="ion-social-facebook"></i>
                                </a>
                            </li>
                            <li>
                                <a href="http://www.twitter.com/" class="Twitter">
                                    <i class="ion-social-twitter"></i>
                                </a>
                            </li>
                            <li>
                                <a href="https://plus.google.com/" class="Google Plus">
                                    <i class="ion-social-googleplus"></i>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </footer> <!-- /#footer -->
        </body>
    </html>