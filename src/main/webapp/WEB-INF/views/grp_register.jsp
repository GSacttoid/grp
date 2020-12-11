<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/HEADER.jsp" %>
<style>
	::placeholder{
		color:#fff;
	}

</style>
<body>
    <div class="logo-wrap">
        <a href="${pageContext.request.contextPath}/grp_login">
	        <h1 class="roboto">GREEN ACADEMY</h1>
	        <h2 class="roboto">Enterprise Groupware System</h2>
	    </a>
    </div>
    <div class="login-wrap">
        <div class="login-box">
            <form onSubmit="return checkPwd();" method="post" action="${pageContext.request.contextPath}/grp_register" autocomplete="off">
                <select name="empBuseoCode" id="empBuseoCode">

                </select>
                <select name="empGradeCode" id="empGradeCode">

                </select>
                <input type="date" max="2020-12-31" min="1980-01-01" name="empEnter" id="empEnter" required tabindex="3" />
                <input type="text" name="empName" id="empName" placeholder="사원명을 입력하세요." required tabindex="4" />
                <input type="password" name="empPwd" id="empPwd" placeholder="비밀번호를 입력하세요." required tabindex="5" />
                <input type="password" name="repasswd" id="repasswd" placeholder="비밀번호 확인을 입력하세요." required tabindex="6" />
                <div class="">
                    <button type="submit" class="btn roboto">Registration</button>
                </div>
                <div class="register-wrap">
                    <a href="${pageContext.request.contextPath}/grp_login" class="">로그인</a>
                </div>
            </form>
        </div>
    </div>
</body>
<script>
	function loadBuseo(){
		$.ajax({
			url		:"${pageContext.request.contextPath}/grp_get_buseo",
			type	:"POST",
			data	:"",
			contentType:"application/x-www-form-urlemcoded; charset=utf-8",
			dataType:"json",
			success	:function(resData){
				$.each(resData, function(key, value){
					$("#empBuseoCode").append("<option value="+value.buseo_id+">"+value.buseo_name+"</option>");
				});
			},
			error	:function(){
				alert("시스템 오류");
			},
			complete:function(){
			}
		});
	}
	
	function loadGrade(){
		$.ajax({
			url		:"${pageContext.request.contextPath}/grp_get_grade",
			type	:"POST",
			data	:"",
			contentType:"application/x-www-form-urlemcoded; charset=utf-8",
			dataType:"json",
			success	:function(resData){
				$.each(resData, function(key, value){
					$("#empGradeCode").append("<option value="+value.grade_id+">"+value.grade_name+"</option>");
				});
			},
			error	:function(){
				alert("시스템 오류");
			},
			complete:function(){
			}
		});
	}
	
	function checkPwd(){
		var a = $("#empPwd");
		var b = $("#repasswd");
		
		if(a.val().length > 15 || a.val().length < 8){
			alert("비밀번호는 8자리 이상 15자리 이하로 입력하셔야 합니다.");
			a.val("");
			a.focus();
			return false;
		}
		
		if(a.val() != b.val()){
			alert("입력하신 비밀번호가 다릅니다. 확인하세요.");
			a.val("");
			b.val("");
			a.focus();
			return false;
		}
	}
	$(function(){
		loadBuseo();
		loadGrade();
	});	
</script>
</html>