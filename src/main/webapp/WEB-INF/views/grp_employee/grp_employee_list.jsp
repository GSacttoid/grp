<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/ADMIN_HEADER.jsp" %>

<style>
    tr:first-child {
        background-color:#6f809a;
    }
    .tr-even {
        background-color:#eff3f9;
    }
    .sel-70 {
	    font-size:12px;
	    border-radius: 2px;
	    border:1px solid #d5d5d5;
	    width:70px;
	    height:35px;
	}
</style>
<body>
    <div class="page-wrap bg-gray">
        <div class="container p10">
            <div class="page-main-wrap flex flex-justify">
                <!-- INCLUDE LOGO -->
                <%@ include file="/WEB-INF/views/include/ADMIN_LOGO.jsp" %>
            	<!-- INCLUDE LOGO -->
                <div class="page-right bg-white height40">
                    <!-- INCLUDE AUTH -->
                    <%@ include file="/WEB-INF/views/include/ADMIN_AUTH.jsp" %>
                	<!-- /INCLUDE AUTH -->
                </div>
            </div>

            <div class="page-main-wrap flex flex-justify m-t10">
                <div class="page-left bg-white p10">
                    <!-- INCLUDE MENU -->
                    <%@ include file="/WEB-INF/views/include/ADMIN_MENU.jsp" %>
                    <!-- /INCLUDE MENU -->
                </div>
                <div class="page-right bg-white p10">
                    <div class="page-main-wrap">
                        <div class="page-member-top flex flex-justify">
                            <div class="">
                            	<a href="${pageContext.request.contextPath}/employee/grp_employee_list">
                            		<span class="btn-on">사원목록</span>
                            	</a>
	                            <a href="${pageContext.request.contextPath}/employee/grp_employee_register">
	                                <span class="btn-off">사원등록</span>
                                </a>
                                <a href="${pageContext.request.contextPath}/employee/grp_employee_org">
	                                <span class="btn-off">조직도보기</span>
                                </a>
                                <a href="#">
	                                <span class="btn-off">조직도등록</span>
                                </a>
                            </div>
                            <div class="">
                                
                            </div>
                        </div>
                        <div class="title">
                            <h3 class="tomato font18 noto m-t20">
                                <i class="fas fa-feather-alt"></i> 사원조직/연락처 > 1. 사원목록
                            </h3>
                        </div>
                        <div class="btn-grp flex flex-justify m-b5">
                        	<div>
                        		<button class="btn-red" id="deleteAll">선택 삭제</button>
                        	</div>
                        	<div class="m-t10">
                        		<span class="font14 weight700 noto">전체사원수: ${count} 명 (${curPage} of ${totalPage} Pages)</span>
                        	</div>
                        	<div>
                        		<form method="post" action="${pageContext.request.contextPath}/employee/grp_employee_list">
                                    <select class="" name="searchOpt">
                                    	<option value="all" <c:if test="${searchOpt eq 'all'}">selected</c:if> >전체</option>
                                        <option value="emp_name" <c:if test="${searchOpt eq 'emp_name'}">selected</c:if> >사원명</option>
                                        <option value="emp_num" <c:if test="${searchOpt eq 'emp_num'}">selected</c:if> >사원번호</option>
                                    </select>
                                    <input type="text" name="words" value="${words}" required style="margin-left:-2px" />
                                    <button type="submit" class="btn-on" style="margin-left:-2px">직원검색</button>
                                </form>
                        	</div>
                        </div>
                        <div class="page-member-bottom">
                            <div class="page-content">
                                <table>
                                    <tr class="weight700 center tr-color f6 font14 under">
                                    	<td class="td-5">
                                    		<input type="checkbox" onclick="chkAll();" id="chkAll" />
                                    	</td>
                                        <td class="td-5">번호</td>
                                        <td class="td-5">부서코드</td>
                                        <td class="td-5">부서명</td>
                                        <td class="td-5">직급코드</td>
                                        <td class="td-5">직급명</td>
                                        <td class="td-5">호봉</td>
                                        <td class="td-10">사원번호</td>
                                        <td class="td-10">사원명</td>
                                        <td class="td-5">부서장</td>
                                        <td class="td-10">입사년월</td>
                                        <td class="td-10">가입년월</td>
                                        <td class="td-5">승인여부</td>
                                        <td class="td-5">권한</td>
                                        <td class="td-10">비고</td>
                                    </tr>
                                <c:if test="${count == 0}">
                                    <tr>
                                    	<td colspan="15" class="font14 center weight700">등록된 사원이 없습니다.</td>
                                    </tr>
                                </c:if>
                               	<c:forEach items="${list}" var="emp" varStatus="status">
                                    <tr class="center font14" >
                                        <td>
                                        	<input type="checkbox" name="chk" class="chk" data-uid="${emp.empID}" />
                                        </td>
                                        <td>${(count - status.index) - ( (curPage - 1) * end )}</td>
                                        <td>${emp.empBuseoCode}</td>
                                        <td>${emp.empBuseoName}</td>
                                        <td>${emp.empGradeCode}</td>
                                        <td>${emp.empGradeName}</td>
                                        <td>${emp.empStep}</td>
                                        <td>
                                        	<a href="#"><u><strong>${emp.empNum}</strong></u></a>
                                       	</td>
                                        <td>
                                        	<a href="#"><u><strong>${emp.empName}</strong></u></a>
                                       	</td>
                                        <td>
                                        	<input type="checkbox" value="${emp.empHead}" onClick="headChange(this.value,'${emp.empID}');"
                                        	<c:if test="${emp.empHead eq 'Y'}">checked</c:if>
                                        	/>
                                        </td>
                                        <td>${emp.empEnter}</td>
                                        <td>${emp.empRegdate}</td>
                                        <td>
                                        	<select onChange="confirmChange(this.value, ${emp.empID});" class="sel-70">
                                        		<option style="color: #f00;"value="N" <c:if test="${emp.empConfirm eq 'N'}">selected</c:if> >거부</option>
                                        		<option value="Y" <c:if test="${emp.empConfirm eq 'Y'}">selected</c:if> >승인</option>
                                        	</select>
                                        </td>
                                        <td>
                                        	<select class="sel-70">
                                        		<option value="1">협력업체</option>
                                        		<option value="2">사원</option>
                                        		<option value="3">부서장</option>
                                        		<option value="4">임원</option>
                                        		<option value="10">관리자</option>
                                        	</select>
                                        </td>
                                        <td>
                                        	<button class="s-btn-on">수정</button>
                                        	<button class="s-btn-off" onClick="deleteOne('${emp.empID}');">삭제</button>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </table>
                               	<!-- 페이징 UI 시작 -->
                               	<c:if test="${count>0}">
	                                <div class="page-grp center m-t10">
	                                	<!-- 맨 앞으로 -->
	                                	<c:choose>
	                                		<c:when test="${curPage>1}">
		                                    	<a href="${pageContext.request.contextPath}/employee/grp_employee_list?curPage=1&searchOpt=${searchOpt}&words=${words}" class="">
		                                        	<span class="page"><i class="fas fa-angle-double-left"></i></span>
	                                        	</a>
		                                    </c:when>
		                                    <c:otherwise>
		                                    		<span class="page">
				                                        <i class="fas fa-angle-double-left"></i>
				                                    </span>
		                                    </c:otherwise>
	                                    </c:choose>
                                    	<!-- /맨 앞으로 -->
                                    
                                    	<!-- 한블럭 앞으로 -->
                                    	<c:choose>
	                                		<c:when test="${curPage>1}">
		                                    	<a href="${pageContext.request.contextPath}/employee/grp_employee_list?curPage=${curPage-1}&searchOpt=${searchOpt}&words=${words}" class="">
		                                        	<span class="page"><i class="fas fa-angle-left"></i></span>
	                                        	</a>
		                                    </c:when>
		                                    <c:otherwise>
	                                    		<span class="page">
			                                        <i class="fas fa-angle-left"></i>
			                                    </span>
		                                    </c:otherwise>
	                                    </c:choose>
	                                    <!-- /한블럭 앞으로 -->
	                                    
	                                    <!-- 페이지 번호 출력  -->
	                                    <c:forEach begin="${blockBegin}" end="${blockEnd}" var="num"> <!-- 시작, 끝, 변수명 -->
	                                    	<c:if test="${selected == num}">
		                                    	<a href="#" class="f6">
		                                    	    <span class="page page-active">${num}</span>
			                                    </a>
		                                    </c:if>
		                                    <c:if test="${selected != num}">
		                                    	<a href="${pageContext.request.contextPath}/employee/grp_employee_list?curPage=${num}&searchOpt=${searchOpt}&words=${words}" class="">
				                                    <span class="page">${num}</span>
			                                    </a>
		                                    </c:if>
	                                    </c:forEach>
										 <!-- /페이지 번호 출력  -->
										
	                                    <!-- 한블럭 뒤로 -->
                                    	<c:choose>
	                                		<c:when test="${curPage!=totalPage}">
		                                    	<a href="${pageContext.request.contextPath}/employee/grp_employee_list?curPage=${curPage+1}&searchOpt=${searchOpt}&words=${words}" class="">
		                                        	<span class="page"><i class="fas fa-angle-right"></i></span>
	                                        	</a>
		                                    </c:when>
		                                    <c:otherwise>
	                                    		<span class="page">
			                                        <i class="fas fa-angle-right"></i>
			                                    </span>
		                                    </c:otherwise>
	                                    </c:choose>
	                                    <!-- /한블럭 뒤로 -->
	                                    
	                                    
	                                    <!-- 맨 뒤로 -->
	                                	<c:choose>
	                                		<c:when test="${curPage!=totalPage}">
		                                    	<a href="${pageContext.request.contextPath}/employee/grp_employee_list?curPage=${blockEnd}&searchOpt=${searchOpt}&words=${words}" class="">
		                                        	<span class="page"><i class="fas fa-angle-double-right"></i></span>
	                                        	</a>
		                                    </c:when>
		                                    <c:otherwise>
		                                    		<span class="page">
				                                        <i class="fas fa-angle-double-right"></i>
				                                    </span>
		                                    </c:otherwise>
	                                    </c:choose>
                                    	<!-- /맨 뒤로 -->
	                                </div>
                                </c:if>
                                <!-- 페이징 UI 끝 -->
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
<script src="${pageContext.request.contextPath}/js/treeview.js"></script>
<script src="${pageContext.request.contextPath}/js/tab.js"></script>
<script>
    $(function () {
        $("tr:nth-child(2n+1)").addClass("tr-even");
    })
</script>

<script>
/* 전체선택
function chkAll(){ 
	if($("#chkAll").is(":checked")){
		$(".chk").prop("checked",true);
	}else{
		$(".chk").prop("checked",false);
	};
}
$(function(){
	$("#chkAll").click(function(){
		chkAll();
	});
}); */

	var flag = false;
	function chkAll(){
		var chk = document.getElementsByName("chk");
		if(flag == false){
			flag = true;
			for(var i = 0; i<chk.length; i++){
				chk[i].checked = true;
			}
		}else{
			flag = false;
			for(var i=0; i<chk.length; i++){
				chk[i].checked = false;
			}
		}
	}

	function deleteOne(eid){
		var msg = "선택하신 사원의 모든 정보가 삭제됩니다.\n삭제하시겠습니까?";
		if(confirm(msg)){
			$.ajax({
				url		:"${pageContext.request.contextPath}/employee/grp_employee_delete",
				type	:"POST",
				data	:{eid:eid},
				success	:function(resData){
					if(resData == "success"){
						alert("선택하신 사원이 삭제되었습니다.");
					}
				},
				error	:function(){
					alert("선택하신 정보를 삭제할 수 없습니다.");
				},
				complete:function(){
					window.location.reload();
				}
			});
		}
	}

	function headChange(empHead,empID) {
		var msg = "선택하신 사원의 부서장 설정을 변경합니다.\n변경하시겠습니까?";
		if(confirm(msg)){
			var headValue;
			if(empHead == 'Y'){
				headValue = 'N';
			}else{
				headValue = 'Y';
			}
			
			var formData = {
					empHead	:headValue,
					empID	:empID
				};
			$.ajax({
				url		:"${pageContext.request.contextPath}/employee/grp_employee_head_change",
				type	:"POST",
				data	:formData,
				success	:function(resData){
					if(resData == "success"){
						alert("부서장 설정이 변경 되었습니다.");
					}
				},
				error	:function(){
					alert("부서장 변경에 실패했습니다.");
				},
				complete:function(){
					window.location.reload();
				}
			});
		}
	}

	function confirmChange(empConfirm, empID) {
		var msg = "선택하신 사원의 승인설정을 변경합니다.\n변경하시겠습니까?";
		if(confirm(msg)){

			var formData = {
					empConfirm	:empConfirm,
					empID	:empID
				};
			$.ajax({
				url		:"${pageContext.request.contextPath}/employee/grp_employee_confirm_change",
				type	:"POST",
				data	:formData,
				success	:function(resData){
					if(resData == "success"){
						alert("승인 설정이 변경 되었습니다.");
					}
				},
				error	:function(){
					alert("승인 설정 변경에 실패했습니다.");
				},
				complete:function(){
					window.location.reload();
				}
			});
		}
	}
</script>

<script>
	$(function(){
		$("#deleteAll").click(function(){
			var msg = "선택하신 사원을 삭제합니다.\n삭제하시겠습니까?";
			if(confirm(msg)){
				var chkArray = new Array(); //배열생성
				$(".chk:checked").each(function(){
					chkArray.push($(this).attr("data-uid"));
				});
				$.ajax({
					url		:"${pageContext.request.contextPath}/employee/grp_employee_delete_all",
					type	:"POST",
					data	:{chkArr : chkArray},
					success	:function(resData){
						alert("선택하신 사원이 삭제되었습니다.");
					},
					error	:function(){
						alert("선택하신 정보를 삭제할 수 없습니다.");
					},
					complete:function(){
						window.location.reload();
					}
				});
			}
		});
	});
</script>
</html>













