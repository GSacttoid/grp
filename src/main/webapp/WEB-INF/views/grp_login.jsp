<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/HEADER.jsp" %>
<body>
    <div class="logo-wrap">
	    <a href="${pageContext.request.contextPath}/grp_login">
	        <h1 class="roboto">${comName}</h1>
	        <h2 class="roboto">${comSubName}</h2>
	    </a>
    </div>
    <div class="login-wrap">
        <div class="login-box">
        	<div id="" class="" style="color:#fff; text-align:center; margin-bottom:5px;">${msg}</div>
            <form method="post" action="${pageContext.request.contextPath}/grp_login" autocomplete="off">
                <input type="text" name="empNum" id="empNum" placeholder="사원번호를 입력하세요." required autofocus />
                <input type="password" name="empPwd" id="empPwd" placeholder="비밀번호를 입력하세요." required />
                <div class="">
                    <button type="submit" class="btn roboto">Login</button>
                </div>
                <div class="register-wrap">
                    <a href="${pageContext.request.contextPath}/grp_register" class="">사원가입</a>
                </div>
            </form>
        </div>
    </div>
</body>
</html>