<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html class="no-js">
<head>
    <!-- Basic Page Needs
    ================================================== -->
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link rel="icon" type="image/png" href="/resources/bootstrap/images/favicon.png">
    <title>NW2017_Service</title>
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
</head>
<body>
<%@ include file="/WEB-INF/views/headerBar.jsp" %>
<!--
==================================================
    Global Page Section Start
================================================== -->
<section class="global-page-header">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="block">
                    <h2>INSERT</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a href="/">
                                <i class="ion-ios-home"></i>
                                Home
                            </a>
                        </li>
                        <li class="active">Study</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
</section>
<!--
==================================================
    Contact Section Start
================================================== -->
<section id="contact-section" >
    <form:form>
        <table border="2" align="center" width = "700" height = "500" style = "border-color: white">
            <tr valign = "center">
                <td align="center" style="background-color: #02bdd5; font-size: 17px; color: #fff;font-weight: bold">Type1</td>
                <td><input type="textarea" name="type1" style ="width: 100%; height: 100%"></td>
            </tr>
            <tr>
                <td align = "center" style="background-color: #02bdd5; font-size: 17px; color: #fff;font-weight: bold">Type2</td>
                <td><input type="textarea" name="type2" style ="width: 100%; height: 100%"></td>
            </tr>
            <tr>
                <td align = "center" style="background-color: #02bdd5; font-size: 17px; color: #fff;font-weight: bold">Type3</td>
                <td><input type="textarea" name="type3" style ="width: 100%; height: 100%"></td>
            </tr>
            <tr>
                <td align = "center" style="background-color: #02bdd5; font-size: 17px; color: #fff; font-weight: bold">Type4</td>
                <td><input type="textarea" name="type4" style ="width: 100%; height: 100%"></td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type=submit value="저장" style="float: right; margin-left: 3px">
                    <input type=reset value="초기화" style="float: right; margin-left: 3px">
                    <input type="button" value="전체목록" onclick="javascript:history.back(-1)" style="float: right; margin-left: 3px">
                </td>
            </tr>
        </table>
    </form:form>
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