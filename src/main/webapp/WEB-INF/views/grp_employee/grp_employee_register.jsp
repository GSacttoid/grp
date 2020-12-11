<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "/WEB-INF/views/include/ADMIN_HEADER.jsp" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/board.css">
<script src="${pageContext.request.contextPath}/ckeditor/ckeditor.js"></script>
<style>
.member-left {
	width:185px;
	min-width:185px;
}

.photo-area {
	width:175px;
	height:230px;
}

.photo-area img {
	width:100%;
	height:100%;
	display:inline-block;
}

.member-right {
	width:100%;
	min-width:1440px;
}
</style>
<body>
    <div class="page-wrap bg-gray">
        <div class="container p10">
            <div class="page-main-wrap flex flex-justify">
                <!-- include logo -->
                <%@ include file = "/WEB-INF/views/include/ADMIN_LOGO.jsp" %>
                <!-- include logo -->
                <div class="page-right bg-white height40">
                    <!-- include auth -->
                    <%@ include file = "/WEB-INF/views/include/ADMIN_AUTH.jsp" %>
                    <!-- include auth -->
                </div>
            </div>

            <div class="page-main-wrap flex flex-justify m-t10">
                <div class="page-left bg-white p10">
                    <!-- include menu -->
                    <%@ include file = "/WEB-INF/views/include/ADMIN_MENU.jsp" %>
                    <!-- include menu -->
                </div>
                <div class="page-right bg-white p10">
                    <div class="page-main-wrap">
                        <div class="page-member-top flex flex-justify">
                            <div class="">
                            	<a href="${pageContext.request.contextPath}/employee/grp_employee_list">
	                                <span class="btn-off">사원목록</span>
	                            </a>
	                            <a href="${pageContext.request.contextPath}/employee/grp_employee_register">
	                                <span class="btn-on">사원등록</span>
	                            </a>
	                            <a href="${pageContext.request.contextPath}/employee/grp_employee_org">
	                                <span class="btn-off">조직도보기</span>
								</a>
	                                <span class="btn-off">조직도등록</span>
                            </div>
                        </div>
                        <div class="title">
                            <h3 class="tomato font18 noto m-t20">
                                <i class="fas fa-feather-alt"></i> 사원조직/연락처 > 2. 사원등록
                            </h3>
                        </div>
                        <div class="page-member-bottom">
                            <div class="page-content">
                                <form id="frm" method="post" action="${pageContext.request.contextPath}/employee/grp_admin_register" enctype="multipart/form-data">
                                	<input type="hidden" name="empIDFK" value="${empOne.empID}" />
                                    <div class="member-info flex flex-justify">
                                        <div class="member-left">
                                            <div class="photo-area">
                                                <img src="${pageContext.request.contextPath}/images/no.jpg" id="empPhotoImg" />
                                            </div>
                                            <div class="photo-btn center m-t5">
                                                <input type="file" name="file" id="empPhoto" />
                                            </div>
                                        </div>
                                        <div class="member-right">
                                            <table>
                                                <tr>
                                                    <td class="td-7 center under bg-gray weight700">회사명</td>
                                                    <td class="td-13 p-lr3">
                                                        <input type="text" name="" id="" class="input-135" value="그린컴퓨터아카데미" />
                                                    </td>
                                                    <td class="td-7 center under bg-gray weight700">부서명</td>
                                                    <td class="td-13 p-lr3">
                                                        <select name="empBuseoCode" id="empBuseoCode" class="sel-135"></select>
                                                    </td>
                                                    <td class="td-7 center under bg-gray weight700">직급</td>
                                                    <td class="td-13 p-lr3">
                                                        <select name="empGradeCode" id="empGradeCode" class="sel-135"></select>
                                                    </td>
                                                    <td class="td-7 center under bg-gray weight700">입사년월</td>
                                                    <td class="td-13 p-lr3">
                                                        <input type="date" name="empEnter" id="empEnter" class="input-135" />
                                                    </td>
                                                    <td class="td-7 center under bg-gray weight700">사번</td>
                                                    <td class="td-13 p-lr3">
                                                        <input type="text" name="empNum" id="empNum" class="input-135"  />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="td-7 center under bg-gray weight700">사원명/성별</td>
                                                    <td class="td-13 p-lr3">
                                                        <input type="text" name="empName" id="empName" class="input-75"  />
                                                        <select name="empGender" class="sel-55" id="">
                                                            <option value="남">남</option>
                                                            <option value="여">여</option>
                                                        </select>
                                                    </td>
                                                    <td class="td-7 center under bg-gray weight700">생년월일</td>
                                                    <td class="td-13 p-lr3">
                                                        <input maxlength="10" type="text" name="empBirth" id="empBirth" class="input-75" autofocus />
                                                        <select name="" class="sel-55" id="">
                                                            <option value="">양력</option>
                                                            <option value="">음력</option>
                                                        </select>
                                                    </td>
                                                    <td class="td-7 center under bg-gray weight700">C.P</td>
                                                    <td class="td-13 p-lr3">
                                                        <select name="" class="sel-55" id="">
                                                            <option value="">010</option>
                                                            <option value="">011</option>
                                                        </select>
                                                        <input  maxlength="14" type="text" name="empCp" id="empCp" class="input-75" autofocus />
                                                    </td>
                                                    <td class="td-7 center under bg-gray weight700">Tel.</td>
                                                    <td class="td-13 p-lr3">
                                                        <select name="" class="sel-55" id="">
                                                            <option value="">02</option>
                                                            <option value="">051</option>
                                                        </select>
                                                        <input maxlength="14" type="text" name="empTel" id="empTel" class="input-75" autofocus />
                                                    </td>
                                                    <td class="td-7 center under bg-gray weight700">내선번호</td>
                                                    <td class="td-13 p-lr3">
                                                        <select name="" class="sel-55" id="">
                                                            <option value="">02</option>
                                                            <option value="">051</option>
                                                        </select>
                                                        <input maxlength="14" type="text" name="empIn" id="empIn" class="input-75" autofocus />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="td-7 center under bg-gray weight700">채용형태</td>
                                                    <td class="td-13 p-lr3">
                                                        <select name="empRecruit" class="sel-135" id="empRecruit">
                                                            <option value="공개채용">공개채용</option>
                                                            <option value="특별채용">특별채용</option>
                                                            <option value="수시채용">수시채용</option>
                                                        </select>
                                                    </td>
                                                    <td class="td-7 center under bg-gray weight700">희망직무</td>
                                                    <td class="td-13 p-lr3">
                                                        <input maxlength="30" type="text" name="empHope" id="empHope" class="input-135" />
                                                    </td>
                                                    <td class="td-7 center under bg-gray weight700">키/몸무게</td>
                                                    <td class="td-13 p-lr3">
                                                        <input maxlength="3" type="text" name="empHeight" id="empHeight" class="input-65"
                                                            placeholder="cm" />
                                                        <input maxlength="3" type="text" name="empWeight" id="empWeight" class="input-65"
                                                            placeholder="kg" />
                                                    </td>
                                                    <td class="td-7 center under bg-gray weight700">병역구분</td>
                                                    <td class="td-13 p-lr3">
                                                        <select name="empService" class="sel-135" id="empService">
                                                            <option value="병역필">병역필</option>
                                                            <option value="병역미필">병역미필</option>
                                                        </select>
                                                    </td>
                                                    <td class="td-7 center under bg-gray weight700">종교</td>
                                                    <td class="td-13 p-lr3">
                                                        <select name="empReligion" class="sel-135" id="empReligion">
                                                            <option value="무교">무교</option>
                                                            <option value="불교">불교</option>
                                                            <option value="기독교">기독교</option>
                                                        </select>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="td-7 center under bg-gray weight700">취미</td>
                                                    <td class="td-13 p-lr3">
                                                        <input maxlength="20" type="text" name="empHobby" id="empHobby" class="input-135" />
                                                    </td>
                                                    <td class="td-7 center under bg-gray weight700">특기</td>
                                                    <td class="td-13 p-lr3">
                                                        <input maxlength="20" type="text" name="empSpeciality" id="empSpeciality" class="input-135" />
                                                    </td>
                                                    <td class="td-7 center under bg-gray weight700">장애여부</td>
                                                    <td class="td-13 p-lr3">
                                                        <select name="empDisability" class="sel-135" id="empDisability">
                                                            <option value="비장애">비장애</option>
                                                            <option value="장애">장애</option>
                                                        </select>
                                                    </td>
                                                    <td class="td-7 center under bg-gray weight700">보훈대상여부</td>
                                                    <td class="td-13 p-lr3">
                                                        <select name="empReward" class="sel-135" id="empReward">
                                                            <option value="비대상">비대상</option>
                                                            <option value="대상">대상</option>
                                                        </select>
                                                    </td>
                                                    <td class="td-7 center under bg-gray weight700">결혼여부</td>
                                                    <td class="td-13 p-lr3">
                                                        <select name="empMarried" class="sel-135" id="empMarried">
                                                            <option value="미혼">미혼</option>
                                                            <option value="기혼">기혼</option>
                                                        </select>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="td-7 center under bg-gray weight700">보유자격 1</td>
                                                    <td class="td-13 p-lr3">
                                                        <input maxlength="20" type="text" name="empLicense1" id="empLicense1" class="input-135" />
                                                    </td>
                                                    <td class="td-7 center under bg-gray weight700">보유자격 2</td>
                                                    <td class="td-13 p-lr3">
                                                        <input maxlength="20" type="text" name="empLicense2" id="empLicense2" class="input-135" />
                                                    </td>
                                                    <td class="td-7 center under bg-gray weight700">보유자격 3</td>
                                                    <td class="td-13 p-lr3">
                                                        <input maxlength="20" type="text" name="empLicense3" id="empLicense3" class="input-135" />
                                                    </td>
                                                    <td class="td-7 center under bg-gray weight700">보유자격 4</td>
                                                    <td class="td-13 p-lr3">
                                                        <input maxlength="20" type="text" name="empLicense4" id="empLicense4" class="input-135" />
                                                    </td>
                                                    <td class="td-7 center under bg-gray weight700">보유자격 5</td>
                                                    <td class="td-13 p-lr3">
                                                        <input maxlength="20" type="text" name="empLicense5" id="empLicense5" class="input-135" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="td-7 center under bg-gray weight700">어학사항 1</td>
                                                    <td class="td-13 p-lr3">
                                                        <input maxlength="20" type="text" name="empLang1" id="empLang1" class="input-75" />
                                                        <select name="" class="sel-55" id="">
                                                            <option value="">상</option>
                                                            <option value="">중</option>
                                                            <option value="">하</option>
                                                        </select>
                                                    </td>
                                                    <td class="td-7 center under bg-gray weight700">어학사항 2</td>
                                                    <td class="td-13 p-lr3">
                                                        <input maxlength="20" type="text" name="empLang2" id="empLang2" class="input-75" />
                                                        <select name="" class="sel-55" id="">
                                                            <option value="">상</option>
                                                            <option value="">중</option>
                                                            <option value="">하</option>
                                                        </select>
                                                    </td>
                                                    <td class="td-7 center under bg-gray weight700">어학사항 3</td>
                                                    <td class="td-13 p-lr3">
                                                        <input maxlength="20" type="text" name="empLang3" id="empLang3" class="input-75" />
                                                        <select name="" class="sel-55" id="">
                                                            <option value="">상</option>
                                                            <option value="">중</option>
                                                            <option value="">하</option>
                                                        </select>
                                                    </td>
                                                    <td class="td-7 center under bg-gray weight700">어학사항 4</td>
                                                    <td class="td-13 p-lr3">
                                                        <input maxlength="20" type="text" name="empLang4" id="empLang4" class="input-75" />
                                                        <select name="" class="sel-55" id="">
                                                            <option value="">상</option>
                                                            <option value="">중</option>
                                                            <option value="">하</option>
                                                        </select>
                                                    </td>
                                                    <td class="td-7 center under bg-gray weight700">어학사항 5</td>
                                                    <td class="td-13 p-lr3">
                                                        <input maxlength="20" type="text" name="empLang5" id="empLang5" class="input-75" />
                                                        <select name="" class="sel-55" id="">
                                                            <option value="">상</option>
                                                            <option value="">중</option>
                                                            <option value="">하</option>
                                                        </select>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="td-7 center under bg-gray weight700">상벌사항 1</td>
                                                    <td class="td-13 p-lr3">
                                                        <input maxlength="20" type="text" name="empRnp1" id="empRnp1" class="input-135" />
                                                    </td>
                                                    <td class="td-7 center under bg-gray weight700">상벌사항 2</td>
                                                    <td class="td-13 p-lr3">
                                                        <input maxlength="20" type="text" name="empRnp2" id="empRnp2" class="input-135" />
                                                    </td>
                                                    <td class="td-7 center under bg-gray weight700">상벌사항 3</td>
                                                    <td class="td-13 p-lr3">
                                                        <input maxlength="20" type="text" name="empRnp3" id="empRnp3" class="input-135" />
                                                    </td>
                                                    <td class="td-7 center under bg-gray weight700">상벌사항 4</td>
                                                    <td class="td-13 p-lr3">
                                                        <input maxlength="20" type="text" name="empRnp4" id="empRnp4" class="input-135" />
                                                    </td>
                                                    <td class="td-7 center under bg-gray weight700">상벌사항 5</td>
                                                    <td class="td-13 p-lr3">
                                                        <input maxlength="20" type="text" name="empRnp5" id="empRnp5" class="input-135" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                    <div class="comment">
                                        <div class="title">
                                            <h3 class="tomato font14 noto m-t20">추가사항 입력</h3>
                                        </div>
                                        <div class="content">
                                            <textarea id="editor" name="empComment"
                                                style="border:1px solid #ccc;padding:10px;border-radius: 2px;"
                                                class="noto"></textarea>
                                            <script>
                                                CKEDITOR.replace('editor');
                                                CKEDITOR.config.height = 150;
                                            </script>
                                        </div>
                                    </div>

                                    <div class="btn-grp center m-t10">
                                        <button type="submit" class="btn-normal">내용저장</button>                        
                                        <button type="reset" class="btn-red">새로고침</button>
                                    </div>
                                </form>
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
	function readImg(imgFile) { //메소드
		if( imgFile.files && imgFile.files[0] ) {
			var reader = new FileReader();
			reader.onload = function(e) {
				$("#empPhotoImg").attr("src", e.target.result);
			}
			reader.readAsDataURL(imgFile.files[0]);
		}
	}

	$(function() { //실행
		$("#empPhoto").change(function() {
			readImg(this); //현재 선택 img
		});
	});
</script>

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
	
	$(function(){
		loadBuseo();
		loadGrade();
	});	
</script>
</html>











