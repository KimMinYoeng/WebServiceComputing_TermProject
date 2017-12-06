<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<html class="no-js">
    <head>
        <!-- Basic Page Needs
        ================================================== -->
        <meta charset="utf-8">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <link rel="icon" type="image/png" href="/resources/bootstrap/images/favicon.png">
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
        <link rel="stylesheet" href="/resources/bootstrap/css/bootstrap.min.css">
        <!-- Ionicons Fonts Css -->
        <link rel="stylesheet" href="/resources/bootstrap/css/ionicons.min.css">
        <!-- animate css -->
        <link rel="stylesheet" href="resources/bootstrap/css/animate.css">
        <!-- Hero area slider css-->
        <link rel="stylesheet" href="/resources/bootstrap/css/slider.css">
        <!-- owl craousel css -->
        <link rel="stylesheet" href="/resources/bootstrap/css/owl.carousel.css">
        <link rel="stylesheet" href="/resources/bootstrap/css/owl.theme.css">
        <link rel="stylesheet" href="/resources/bootstrap/css/jquery.fancybox.css">
        <!-- template main css file -->
        <link rel="stylesheet" href="/resources/bootstrap/css/main.css">
        <!-- responsive css -->
        <link rel="stylesheet" href="/resources/bootstrap/css/responsive.css">
        
        <!-- Template Javascript Files
        ================================================== -->
        <!-- modernizr js -->
        <script src="/resources/bootstrap/js/vendor/modernizr-2.6.2.min.js"></script>
        <!-- jquery -->
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
        <!-- owl carouserl js -->
        <script src="/resources/bootstrap/js/owl.carousel.min.js"></script>
        <!-- bootstrap js -->

        <script src="/resources/bootstrap/js/bootstrap.min.js"></script>
        <!-- wow js -->
        <script src="/resources/bootstrap/js/wow.min.js"></script>
        <!-- slider js -->
        <script src="/resources/bootstrap/js/slider.js"></script>
        <script src="/resources/bootstrap/js/jquery.fancybox.js"></script>
        <!-- template main js -->
        <script src="/resources/bootstrap/js/main.js"></script>
    </head>
    <body>
    <%@ include file="headerBar.jsp" %>
    <!--
    ==================================================
        Global Page Section Start
    ================================================== -->
    <section class="global-page-header">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="block">
                        <h2>회원 정보</h2>
                        <ol class="breadcrumb">
                            <li>
                                <a href="/">
                                    <i class="ion-ios-home"></i>
                                    Home
                                </a>
                            </li>
                            <li class="active">Edit</li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
    </section><!--/#page-header-->
    <!--
    ==================================================
        Contact Section Start
    ================================================== -->
    <section id="contact-section">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-md-offset-3 col-sm-6 col-sm-offset-3">
                    <div class="block">
                        <h2 class="subtitle wow fadeInDown" data-wow-duration="500ms" data-wow-delay=".3s">회원 정보</h2>
                        <p class="subtitle-des wow fadeInDown" data-wow-duration="500ms" data-wow-delay=".5s">
                            정보 수정
                        </p>
                        <div class="contact-form">
                            <form:form modelAttribute="user">
                                <input type = "hidden" name = "id" id = "id">
                                <div class="form-group wow fadeInDown" data-wow-duration="500ms" data-wow-delay=".8s">
                                    <input path = "name" placeholder="${user.name}" class="form-control" name="name" id="name" >
                                </div>
                                <div class="form-group wow fadeInDown" data-wow-duration="500ms" data-wow-delay=".8s">
                                    <input path = "email" placeholder="${user.email}" class="form-control" name="email" id="email" >
                                </div>
                                <div class="form-group wow fadeInDown" data-wow-duration="500ms" data-wow-delay=".8s">
                                    <input type="password" placeholder="***********" class="form-control" name="password" id="password" showPassword="true">
                                </div>
                                <div class="form-group wow fadeInDown" data-wow-duration="500ms" data-wow-delay=".8s">
                                    <input type="age" placeholder="${user.age}" class="form-control" name="age" id="age">
                                </div>
                                <div id="submit" class="wow fadeInDown" data-wow-duration="500ms" data-wow-delay=".8s" style="float: right; margin-left: 3px">
                                    <input type="button" id = "delete" class="btn btn-default btn-send" value = "회원 탈퇴" onclick = "location.href='/user/delete?id=${user.id}'">
                                </div>
                                <div id="submit" class="wow fadeInDown" data-wow-duration="500ms" data-wow-delay=".8s"style="float: right">
                                    <input type="submit" id="contact-submit" class="btn btn-default btn-send" value="Modify">
                                </div>
                            </form:form>
                        </div>
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