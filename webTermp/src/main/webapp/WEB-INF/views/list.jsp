<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html class="no-js">
<head>
    <!-- Basic Page Needs
    ================================================== -->
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link rel="icon" type="image/png" href="/resoures/bootstrap/images/favicon.ico">
    <title>Timer Agency Template</title>
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
</head>
<body>
<!--
==================================================
Header Section Start
================================================== -->
<%@ include file="headerBar.jsp" %>
<%-- 헤더 끝! --%>

<!--
==================================================
    Global Page Section Start
================================================== -->
<section class="global-page-header">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="block">
                    <div class="wow fadeInDown animated cd-headline slide" data-wow-delay=".4s">
                        <h2>LOG-IN</h2>
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
</section><!--/#Page header-->
<html>
<!--<head>
  <title>list</title>
  <style>
    table, tr, td {
      border: 1px solid black;
      text-align:center;
    }
  </style>
</head>-->
<body>
<!--<a href="/user/signup">회원가입으로 가기</a>
<br/>
<table>
  <thead>
  <tr>
    <td>ID</td>
    <td>이름</td>
    <td>E-mail</td>
    <td>비밀번호</td>
    <td>나이</td>
    <td></td>
  </tr>
  </thead>
  <tbody>
  <c:forEach var="u" items="${users}">
    <tr>
      <td>${u.id}</td>
      <td>${u.name}</td>
      <td>${u.email}</td>
      <td>${u.password}</td>
      <td>${u.age}</td>
      <td>
        <a href="/user/edit?id=${u.id}">수정</a><br/>
        <a href="/user/delete?id=${u.id}">삭제</a>
      </td>
    </tr>
  </c:forEach>
  </tbody>
</table>-->
<section id="contact-section">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="block">

                    <h2 class="subtitle wow fadeInDown" data-wow-duration="500ms" data-wow-delay=".3s">Log in</h2>
                    <p class="subtitle-des wow fadeInDown" data-wow-duration="500ms" data-wow-delay=".5s">
                        if you don't have id. click the link 'join' under the page
                    </p>

                    <div class="contact-form">
                        <form id="contact-form" method="post" action="sendmail.php" role="form">

                            <div class="form-group wow fadeInDown" data-wow-duration="500ms" data-wow-delay=".6s">
                                <input type="text" placeholder="Your Id" class="form-control" name="j_username"
                                       id="name">
                            </div>

                            <div class="form-group wow fadeInDown" data-wow-duration="500ms" data-wow-delay=".8s">
                                <input type="password" placeholder="Password" class="form-control" name="j_password"
                                       id="password">
                            </div>

                            <!--<div class="form-group wow fadeInDown" data-wow-duration="500ms" data-wow-delay="1s">
                              <input type="text" placeholder="Subject" class="form-control" name="subject" id="subject">
                            </div>

                            <div class="form-group wow fadeInDown" data-wow-duration="500ms" data-wow-delay="1.2s">
                              <textarea rows="6" placeholder="Message" class="form-control" name="message" id="message"></textarea>
                            </div>-->

                            <div>
                                <form action="j_spring_security_check" method="post">
                                    <a id="login" type="submit" class="btn btn-default btn-send wow fadeInDown"
                                       data-wow-duration="500ms" data-wow-delay="1.2s">login</a>
                                </form>
                                <a id="join" class="btn btn-default btn-send wow fadeInDown" href="/user/signup"
                                   data-wow-duration="500ms" data-wow-delay="1.2s">join</a>
                            </div>

                            <!--   < div id="submit"  class="wow fadeInDown" data-wow-duration="500ms" data-wow-delay="1.4s">
                                 <input type="submit" id="contact-submit" class="btn btn-default btn-send" value="Send Message">
                              < div id="join" class="wow fadeInDown" data-wow-duration="500ms" data-wow-delay="1.4s">
                                <input type="submit" id="join-account" class="btn btn-default btn-send" value="join">
                               </adiv>-->


                        </form>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="map-area">
                    <h2 class="subtitle  wow fadeInDown" data-wow-duration="500ms">Find Us</h2>
                    <p class="subtitle-des wow fadeInDown" data-wow-duration="500ms">
                        <한국기술교육대학교 1캠퍼스><br>충청남도 천안시 동남구 병천면 충절로 1600</한국기술교육대학교>
                    </p>
                    <div class="map">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3196.283044511175!2d127.2794127152889!3d36.763776779956125!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357b2ac6c614c717%3A0x820bda83618bd53b!2z7ZWc6rWt6riw7Iig6rWQ7Jyh64yA7ZWZ6rWQ!5e0!3m2!1sko!2skr!4v1512317364400"
                                width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>

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
