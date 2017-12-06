<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<html class="no-js">
<body>
<!--
==================================================
Header Section Start
================================================== -->
<header id="top-bar" class="navbar-fixed-top animated-header">
    <div class="container">
        <div class="navbar-header">
            <!-- responsive nav button -->
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <!-- /responsive nav button -->

            <!-- logo -->
            <div class="navbar-brand">
                <a href="/" >
                    <img src="/resources/bootstrap/images/logo.PNG" alt="">
                </a>
                <c:set var="user" value="${SPRING_SECURITY_CONTEXT.authentication.principal}"/>
                <sec:authorize access="isAuthenticated()">
                <br>
                <b><font size = "3" color = "#6495ed">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;${user.name} 님의 방문을 환영합니다.</b>
                </sec:authorize>
            </div>
            <!-- /logo -->
        </div>
        <!-- main menu -->
        <nav class="collapse navbar-collapse navbar-right" role="navigation">
            <div class="main-menu">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="/" >Home</a></li>
                    <li><a href="/service" >Service</a></li>
                </ul>
            </div>
        </nav>
        <!-- /main nav -->
    </div>
</header>
</body>
</html>