<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html class="no-js">
<head>
    <!-- Basic Page Needs
    ================================================== -->
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link rel="icon" type="image/png" href="/resoures/bootstrap/images/favicon.ico">
    <title>Signup</title>
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
    <link rel="stylesheet" href="/resources/bootstrap/css/animate.css">
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
    <style type="text/css">
        table td {
            margin-top: auto;
            margin-bottom: auto;
        }

        table th {
            text-align: center;
        }
    </style>
    <style>

        #wrap {
            text-align: center;
        }

    </style>
</head>
<body>
<!--
==================================================
Header Section Start
================================================== -->
<%@ include file="headerBar.jsp" %>
<!--
==================================================
해더 끝
================================================== -->
<section class="global-page-header">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="block">
                    <div class="wow fadeInUp animated cd-headline slide" data-wow-delay=".4s">
                        <h2>JOIN</h2>
                        <ol class="breadcrumb">
                            <li>
                                <a href="/">
                                    <i class="ion-ios-home"></i>
                                    Home
                                </a>
                            </li>
                            <li class="active">회원가입</li>
                        </ol>

                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="container">
    <div id="wrap">
        <div class="outer">
            <div class="innder">
                <div class="centered">
                    <div class="wow fadeInUp animated cd-headline slide" data-wow-delay=".8s">
                        <div class="btn-lines dark light"></div>
                        <form:form modelAttribute="user">
                            <div style="width:180px;margin:0 auto;">
                                <ol class="smooth-scroll btn btn-default btn-green">
                                    name: <form:input path="name"/><br/></ol>
                                <ol class="smooth-scroll btn btn-default btn-green">
                                    email: <form:input path="email"/><br/></ol>

                                <ol class="smooth-scroll btn btn-default btn-green">
                                    password: <form:password path="password"/><br/></ol>

                                <ol class="smooth-scroll btn btn-default btn-green">
                                    age: <form:input path="age"/><br/></ol>
                            </div>
                            <input type="submit" class="btn btn-default btn-send" value="Signup"/>
                        </form:form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
</section>

<footer id="footer">
    <div class="container">
        <div class="col-md-8">
            <p class="copyright">Copyright: <span>2017</span> . Design and Developed by <a
                    href="https://github.com/KimMinYoeng/WebServiceComputing_TermProject">wsc project team</a></p>
        </div>
        <div class="col-md-4">
            <!-- Social Media -->
            <ul class="social">
                <li>
                    <a href="https://www.facebook.com/profile.php?id=100003644582958&ref=bookmarks" class="Facebook">
                        <i class="ion-social-facebook"></i>
                    </a>
                </li>
                <li>
                    <a href="https://twitter.com/rlawnd963" class="Twitter">
                        <i class="ion-social-twitter"></i>
                    </a>
                </li>
                <li>
                    <a href="#" class="Linkedin">
                        <i class="ion-social-linkedin"></i>
                    </a>
                </li>
                <li>
                    <a href="https://plus.google.com/u/0/105386382350300879173" class="Google Plus">
                        <i class="ion-social-googleplus"></i>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</footer> <!-- /#footer -->

</body>
</html>