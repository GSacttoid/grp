<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/ADMIN_HEADER.jsp"%>
<style>
.page-main-left {
	width: 69.7%;
	padding: 20px;
}

.page-main-right {
	width: 29.7%;
}

.main-right-top {
	height: 260px;
}

.main-right-bottom {
	height: 220px;
}

.buseo-icon {
	width: 40px;
	height: 40px;
	margin-right: 20px;
}

.buseo-icon img {
	width: 100%;
	height: 100%;
	border-radius: 50%;
	display: inline-block;
}

.attend-btn-on {
	width: 220px;
	border: 1px solid #ccc;
	border-radius: 50px;
	background-color: transparent;
	color: #ccc;
	padding: 10px 0;
}

.attend-btn-off {
	width: 220px;
	border: 1px solid #5ebfd9;
	border-radius: 50px;
	background-color: transparent;
	color: #5ebfd9;
	padding: 10px 0;
}
</style>
<body>
	<div class="page-wrap bg-gray">
		<div class="container p10">
			<div class="page-main-wrap flex flex-justify">
				<!-- INCLUDE LOGO -->
				<%@ include file="/WEB-INF/views/include/ADMIN_LOGO.jsp"%>
				<!-- INCLUDE LOGO -->
				<div class="page-right bg-white height40">
					<!-- INCLUDE AUTH -->
					<%@ include file="/WEB-INF/views/include/ADMIN_AUTH.jsp"%>
					<!-- /INCLUDE AUTH -->
				</div>
			</div>

			<div class="page-main-wrap flex flex-justify m-t10">
				<div class="page-left bg-white p10">
					<!-- INCLUDE MENU -->
					<%@ include file="/WEB-INF/views/include/ADMIN_MENU.jsp"%>
					<!-- /INCLUDE MENU -->
				</div>
				<div class="page-right bg-white p10">
					<div class="title">
						<h3 class="tomato font18 noto">
							<i class="fas fa-feather-alt"></i> 회사기본정보 > 1. 회사기본정보
						</h3>
					</div>
					<div class="">
						<form action="${pageContext.request.contextPath}/company/grp_company" id="frm" method="post">
							<table class="m-t5">
								<tr>
									<td class="bg-gray weight700 td-15 center">로고 타이틀</td>
									<td class="p-lr3">
										<input type="text" name="comName" id="comName" maxlength="100" class="input-100" required>
									</td>
									<td class="bg-gray weight700 td-15 center">로고 서브타이틀</td>
									<td class="p-lr3">
										<input type="text" name="comSubName" id="comSubName" maxlength="100" class="input-100" required>
									</td>
								</tr>
								<tr>
									<td class="bg-gray weight700 td-15 center">대표명</td>
									<td class="p-lr3">
										<input type="text" name="comCeo" id="comCeo" maxlength="10" class="input-100" required>
									</td>
									<td class="bg-gray weight700 td-15 center">대표전화</td>
									<td class="p-lr3">
										<input type="text" name="comTel" id="comTel" maxlength="15" class="input-100" required>
									</td>
								</tr>
								<tr>
									<td class="bg-gray weight700 td-15 center">웹사이트 url</td>
									<td class="p-lr3" colspan="3">
										<input type="text" name="comUrl" id="comUrl" maxlength="50" class="input-100" required>
									</td>
								</tr>
								<tr>
									<td class="bg-gray weight700 td-15 center">웹사이트 Copyright</td>
									<td class="p-lr3" colspan="3">
										<input type="text" name="comCopy" id="comCopy" maxlength="100" class="input-100" required>
									</td>
								</tr>
								<tr>
									<td class="bg-gray weight700 td-15 center">웹사이트 접근권한</td>
									<td class="p-lr3" colspan="3">
										<select name="comAuth" id="comAuth">
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4">4</option>
											<option value="5">5</option>
											<option value="6">6</option>
											<option value="7">7</option>
											<option value="8">8</option>
											<option value="9">9</option>
											<option value="10">10</option>
										</select>
									</td>
								</tr>
								
								<tr>
									<td class="bg-gray weight700 td-15 center">웹사이트 로고 타이틀</td>
									<td class="p-lr3" colspan="3">
										<input placeholder="Logo로 사용할 문자를 입력하세요." type="text" name="comMainLogo" id="comMainLogo" maxlength="200" class="input-100" required>
									</td>
								</tr>
								
								<tr>
									<td class="bg-gray weight700 td-15 center">웹사이트 메뉴</td>
									<td class="p-lr3" colspan="3">
										<input placeholder="메뉴는 세미콜론(;)으로 구분하세요." type="text" name="comMenu" id="comMenu" maxlength="200" class="input-100" required>
									</td>
								</tr>
								
								<tr>
									<td class="bg-gray weight700 td-15 center">웹사이트 메인텍스트 (상단)</td>
									<td class="p-lr3" colspan="3">
										<input placeholder="메인텍스트 (상단) 메세지를 입력하세요." type="text" name="comMainUp" id="comMainUp" maxlength="200" class="input-100" required>
									</td>
								</tr>
								
								<tr>
									<td class="bg-gray weight700 td-15 center">웹사이트 메인텍스트 (하단)</td>
									<td class="p-lr3" colspan="3">
										<input placeholder="메인텍스트 (하단) 메세지를 입력하세요." type="text" name="comMainDown" id="comMainDown" maxlength="200" class="input-100" required>
									</td>
								</tr>
							</table>
							<div class="btn=grp center m-t5">
								<button type="submit" class="btn-on">정보수정</button>
								<button type="reset" class="btn-off">새로고침</button>
							</div>
						</form>
					</div>

				</div>
			</div>
		</div>
	</div>
</body>
<script src="${pageContext.request.contextPath}/js/treeview.js"></script>
<script src="${pageContext.request.contextPath}/js/tab.js"></script>
<script>
	$(function() {
		$("tr:nth-child(2n+1)").addClass("tr-even");
	})
</script>

<script>
	function comInfo(){
		$.ajax({
			url		:"${pageContext.request.contextPath}/company",
			type	:"POST",
			data	:"",
			success	:function(resData){
				$("#comName").val(resData.comName);
				$("#comSubName").val(resData.comSubName);
				$("#comCeo").val(resData.comCeo);
				$("#comTel").val(resData.comTel);
				$("#comUrl").val(resData.comUrl);
				$("#comCopy").val(resData.comCopy);
				$("#comAuth").val(resData.comAuth);
			},
			error	:function(){
				alert("시스템에러");
			}
		});
	}

	$(function(){
		comInfo();
	});
</script>
</html>