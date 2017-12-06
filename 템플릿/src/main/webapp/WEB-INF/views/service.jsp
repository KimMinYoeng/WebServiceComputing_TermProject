<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

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
    <script>
        function searchCheck(frm){
        //검색
        if(frm.keyWord.value ==""){
            alert("검색 단어를 입력하세요.");
            frm.keyWord.focus();
            return;
        }
        frm.submit();
    }
    </script>
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
                    <h2>Learning Book</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a href="/">
                                <i class="ion-ios-home"></i>
                                Home
                            </a>
                        </li>
                        <li class="active">List</li>
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
<section id="contact-section">
    <table>
        <thead>
        <tr>
            <td>도서관명</td>
            <td>주소</td>
            <td>전화번호</td>
            <td>홈페이지</td>
            <td>휴무</td>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="u" items="${library}">
            <tr>
                <td>${u.name}</td>
                <td>${u.address}</td>
                <td>${u.phone}</td>
                <td>${u.homepage}</td>
                <td>${u.holiday}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
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