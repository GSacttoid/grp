<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Green Company Website</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/common.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/fullpage.css">
    
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/fullpage.js"></script>
    
    <style>
    .bg {
		background-repeat: no-repeat;
		background-size: cover;
		background-position: center;
		width: 100%;
		height: 100vh;
	}

	.nav {
		position: fixed;
		top: 0;
		left: 0;
		z-index: 9999;
		width: 100%;
		height: 110px;
		color: #fff;
		line-height: 110px;
		padding: 0 50px;
	}
	
	.nav a {
		color: #fff;
	}
	
	.firstPage-content {
		text-align: center;
		opacity: 0;
		animation: run .8s 0.3s forwards;
		margin-top: 300px;
	}
	
	@
	keyframes run { 100% {
		opacity: 1;
		margin: 0;
	}
	
	}
	.firstPage-content h3 {
		font-size: 25px;
		margin-bottom: 20px;
	}
	
	.firstPage-content h2 {
		font-size: 60px;
		text-shadow: 2px 2px 1px #000;
	}
	
	.firstPage-wrap {
		margin: 0 auto;
		width: 800px;
	}
	
	.login {
		color:tomato;
	}
    </style>
    
</head>
<body>
    <div class="nav">
        <div class="flex flex-justify">
            <div class="logo">
                <h1 class="roboto" style="font-size:30px">
                    <a href="${pageContext.request.contextPath}">GREENART SYSTEM</a>
                </h1>
            </div>
            <div class="navbar">
                <ul id="menu" class="flex flex-justify">
                    <li class="noto weight700 font20" style="margin:0 30px;" data-menuanchor="1stPage"><a href="#1stPage">회사소개</a></li>
                    <li class="noto weight700 font20" style="margin:0 30px;" data-menuanchor="2ndPage"><a href="#2ndPage">고객센터</a></li>
                    <li class="noto weight700 font20" style="margin:0 30px;" data-menuanchor="3rdPage"><a href="#3rdPage">포트폴리오</a></li>
                    <li class="noto weight700 font20" style="margin:0 30px;" data-menuanchor="4rdPage"><a href="#4rdPage">서비스</a></li>
                    <li class="noto weight700 font20" style="margin:0 30px;" data-menuanchor="5rdPage"><a href="#5rdPage">제품소개</a></li>
                </ul>
            </div>
            <div class="login">
            	<c:if test="${sessionScope.empName == null}">
                	<a href="${pageContext.request.contextPath}/grp_login" class="noto font16">그룹웨어 로그인</a>
                </c:if>
                <c:if test="${sessionScope.empName != null}">
                	${sessionScope.empName}
                	<a href="${pageContext.request.contextPath}/grp_logout">${sessionScope.empName} | 로그아웃</a>
                </c:if>
            </div>
        </div>
    </div>
    <div id="fullpage">
        <div class="section bg" style="background-image: url(${pageContext.request.contextPath}/images/main/m0.jpg);">
            <div class="firstPage-wrap">
                <div class="firstPage-content">
                    <h3 class="noto f6">새로운 플랫폼을 제시합니다.</h3>
                    <h2 class="roboto f6">TOTAL INFRASTRUCTURE PLATFORM</h2>
                </div>
            </div>
        </div>
        <div class="section bg" style="background-image: url(${pageContext.request.contextPath}/images/main/m1.jpg);">
            <h1>1</h1>
        </div>
        <div class="section bg" style="background-image: url(${pageContext.request.contextPath}/images/main/m2.jpg);">
            <h1>1</h1>
        </div>
        <div class="section bg" style="background-image: url(${pageContext.request.contextPath}/images/main/m3.jpg);">
            <h1>1</h1>
        </div>
        <div class="section bg" style="background-image: url(${pageContext.request.contextPath}/images/main/m4.jpg);">
            <h1>1</h1>
        </div>
    </div>
</body>
<script>
    $(function() {
        $("#fullpage").fullpage({
            navigation: true,
            easingcss3: 'cubic-bezier(0.175, 0.585, 0.820, 1.275)',
            menu : '#menu',
            anchors: ['1stPage', '2ndPage', '3rdPage', '4rdPage', '5rdPage'],
            scrollingSpeed: 600
        });
    });
</script>
</html>