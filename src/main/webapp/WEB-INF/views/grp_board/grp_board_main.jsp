<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/ADMIN_HEADER.jsp" %>

<style>
	td{
		border:1px solid #d6dce7;
	}
	.board-list tr:first-child{
		background-color:#6f809a;
	}
	tr:nth-child(2n+1){
		background-color:#eff3f9;
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
                        <div class="">
                            <span class="btn-normal">생성된 게시판 수 ${count}개</span>
                        </div>
                        <div class="title">
                            <h3 class="tomato font18 noto m-t20">
                                <i class="fas fa-feather-alt">게시판 관리 > 1. 게시판 생성</i>
                            </h3>
                        </div>
                        <div class="board-maker">
                            <form method="post" id="frm" autocomplete="off">
                                <table>
                                    <tr class="center">
                                        <td class="bg-gray weight700 td-10">게시판 그룹</td>
                                        <td class="td-15 p-lr3">
                                            <select class="sel-100" name="boardGrp" id="boardGrp">
                                            </select>
                                        </td>
                                        <td class="bg-gray weight700 td-10">게시판 코드</td>
                                        <td class="td-15 p-lr3">
                                            <input onBlur="chkBoardCode();" required name="boardCode" id="boardCode" type="text" placeholder="영어로 입력" class="input-100" />
                                        </td>
                                        <td class="bg-gray weight700 td-10">게시판 색상</td>
                                        <td class="td-15 p-lr3">
                                            <select class="sel-100" name="boardColor" id="boardColor">
                                                <option value="#5D1049">#5D1049</option>
						                        <option value="#4A148C">#4A148C</option>
						                        <option value="#2962FF">#2962FF</option>
						                        <option value="#404E67">#404E67</option>
						                        <option value="#FE5E71">#FE5E71</option>
	                        					<option value="#1A237E">#1A237E</option>
                                            </select>
                                            <span class="color"></span>
                                        </td>
                                        <td class="bg-gray weight700 td-10">게시판 관리자</td>
                                        <td class="td-15 p-lr3">
                                            <input type="text" class="input-100" value="${sessionScope.empName}" name="boardMaker" readonly />
                                        </td>
                                    </tr>
                                    <tr class="center">
                                        <td class="bg-gray weight700 td-10">게시판 제목</td>
                                        <td colspan="5" class="p-lr3">
                                            <input type="text" name="boardTitle" required class="input-100" />
                                        </td>
                                        <td class="bg-gray weight700 td-10">게시판 타입</td>
                                        <td class="td-15 p-lr3">
                                            <select class="sel-100" name="boardType">
                                                <option value="1">답변형 게시판</option>
                                                <option value="2">공지사항 게시판</option>
                                            </select>
                                        </td>
                                    </tr>
                                    <tr class="center">
                                        <td class="bg-gray weight700 td-10">읽기 권한</td>
                                        <td class="td-15 p-lr3">
                                            <select class="sel-100" name="boardRead">
                                                <option value="0">모두</option>
                                                <option value="1">직원</option>
                                            </select>
                                        </td>
                                        <td class="bg-gray weight700 td-10">쓰기 권한</td>
                                        <td class="td-15 p-lr3">
                                            <select class="sel-100" name="boardWrite">
                                                <option value="0">모두</option>
                                                <option value="1">직원</option>
                                            </select>
                                        </td>
                                        <td class="bg-gray weight700 td-10">댓글 권한</td>
                                        <td class="td-15 p-lr3">
                                            <select class="sel-100" name="boardReply">
                                                <option value="0">모두</option>
                                                <option value="1">직원</option>
                                            </select>
                                        </td>
                                        <td class="bg-gray weight700 td-10">다운 권한</td>
                                        <td class="td-15 p-lr3">
                                            <select class="sel-100" name="boardDownload">
                                                <option value="0">모두</option>
                                                <option value="1">직원</option>
                                            </select>
                                        </td>
                                    </tr>
                                </table>
                                <div class="btn-grp center m-t10">
                                    <button class="btn-on" type="button" id="btn">게시판생성</button>
                                    <button class="btn-off" type="reset">취소하기</button>
                                </div>
                            </form>
                        </div>
                        <div class="title">
                            <h3 class="tomato font18 noto m-t20">
                                <i class="fas fa-feather-alt">게시판 관리 > 2. 게시판 목록</i>
                            </h3>
                        </div>
                        <div class="btn-grp flex flex-justify m-b5">
                        	<div>
                        		<button class="btn-red" id="deleteAll">선택 삭제</button>
                        	</div>
                        	
                        	<div>
                        		<form method="post" action="${pageContext.request.contextPath}/board">
                                    <select class="" name="searchOpt">
                                    	<option value="boardCode">게시판코드</option>
                                    	<option value="boardTitle">게시판제목</option>
                                    	<option value="boardGrp">게시판그룹</option>
                                    </select>
                                    <input type="text" name="words" value="${words}" required style="margin-left:-2px" />
                                    <button type="submit" class="btn-on" style="margin-left:-2px">게시판검색</button>
                                </form>
                        	</div>
                        </div>
                        <div class="board-list">
                            <table>
                                <tr class="center under weight700 tr-color f6 font14" id="rowColor">
                                    <td class="td-5"><input type="checkbox" onclick="chkAll();"/></td>
                                    <td class="td-10">게시판그룹</td>
                                    <td class="td-10">게시판코드</td>
                                    <td class="td-10">게시판색상</td>
                                    <td class="td-30">게시판제목</td>
                                    <td class="td-5">읽기권한</td>
                                    <td class="td-5">쓰기권한</td>
                                    <td class="td-5">댓글권한</td>
                                    <td class="td-5">다운권한</td>
                                    <td class="td-10">게시판관리</td>
                                    
                                </tr>
							<c:forEach items="${list}" var="board">
                                <tr class="center font14 weight700">
                                    <td><input type="checkbox" name="chk" class="chk" data-uid="${board.boardCode}"/></td>
                                    <td>${board.buseo_name}</td>
                                    <td>
                                        <a href="${pageContext.request.contextPath}/article/grp_article_list?boardCode=${board.boardCode}"
                                         target="_blank" class="under">${board.boardCode}</a>
                                    </td>
                                    <td>${board.boardColor}</td>
                                    <td>
                                        <a href="${pageContext.request.contextPath}/article/grp_article_list?boardCode=${board.boardCode}"
                                         target="_blank" class="under">${board.boardTitle}</a>
                                    </td>
                                    <td>${board.boardRead}</td>
                                    <td>${board.boardWrite}</td>
                                    <td>${board.boardReply}</td>
                                    <td>${board.boardDownload}</td>
                                    <td>
                                        <button class="s-btn-on">수정</button>
                                        <button class="s-btn-off" onclick="boardDel('${board.boardCode}');">삭제</button>
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
		                                    	<a href="${pageContext.request.contextPath}/board?curPage=1&searchOpt=${searchOpt}&words=${words}" class="">
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
		                                    	<a href="${pageContext.request.contextPath}/board?curPage=${curPage-1}&searchOpt=${searchOpt}&words=${words}" class="">
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
		                                    	<a href="${pageContext.request.contextPath}/board?curPage=${num}&searchOpt=${searchOpt}&words=${words}" class="">
				                                    <span class="page">${num}</span>
			                                    </a>
		                                    </c:if>
	                                    </c:forEach>
										 <!-- /페이지 번호 출력  -->
										
	                                    <!-- 한블럭 뒤로 -->
                                    	<c:choose>
	                                		<c:when test="${curPage!=totalPage}">
		                                    	<a href="${pageContext.request.contextPath}/board?curPage=${curPage+1}&searchOpt=${searchOpt}&words=${words}" class="">
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
		                                    	<a href="${pageContext.request.contextPath}/board?curPage=${blockEnd}&searchOpt=${searchOpt}&words=${words}" class="">
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
</body>
<script src="${pageContext.request.contextPath}/js/treeview.js"></script>
<script src="${pageContext.request.contextPath}/js/tab.js"></script>
<script>
    $(function () {
        $("tr:nth-child(2n+3)").addClass("tr-even");
    })
</script>
<script>
	$(function() {
		$("#boardCode").keyup(function(){ //키보드 입력시
			$(this).val($(this).val().replace(/[0-9]|[^\!-z]/gi,"")); //영어만 가능한... 정규표현식
		});
	});

	function loadBuseo(){
		$.ajax({
			url		:"${pageContext.request.contextPath}/grp_get_buseo",
			type	:"POST",
			data	:"",
			contentType:"application/x-www-form-urlemcoded; charset=utf-8",
			dataType:"json",
			success	:function(resData){
				//$("#boardGrp").append("<option value='0'>전체</option>");
				$.each(resData, function(key, value){
					$("#boardGrp").append("<option value="+value.buseo_id+">"+value.buseo_name+"</option>");
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
		$("#boardColor").change(function(){  //js: onChange(), jquery: change()
			$("#rowColor").css({
				backgroundColor : this.value
			});
		});
	});

	$(function(){
		$("#btn").click(function(){ //json,jquery: id, serialize: name
			//alert($("#frm").serialize());

			var a = $("#boardCode").val();
			var b = $("#boardTitle").val();
			if(a ==""){
				alert("게시판 코드(영문)를 입력하세요.");
				$("#boardCode").focus();
				return false;
			}
			if(b ==""){
				alert("게시판 제목 입력하세요.");
				$("#boardTitle").focus();
				return false;
			}
			$.ajax({
				url		:"${pageContext.request.contextPath}/board/grp_board_insert",
				type	:"POST",
				data	:$("#frm").serialize(),
				success	:function(resData){
					alert(a + "게시판 & 댓글게시판이 생성되었습니다.");
					window.location.reload();
				},
				error	:function(){
					alert("시스템 오류");
				},
				complete:function(){}
			});
		});
	});

	function chkBoardCode(){
		
		var formData = {
			boardCode : $("#boardCode").val()
		};
		
		$.ajax({
			url		:"${pageContext.request.contextPath}/board/grp_board_check",
			type	:"POST",
			data	:formData,
			success	:function(resData){
				if(resData == 'failure'){
					alert("중복으로 사용할 수 없는 게시판 코드입니다.");
					$("#boardCode").val("");
					$("#boardCode").focus();
				}
			},
			error	:function(){
				alert("시스템 오류");
			},
			complete:function(){}
		});
	}

	function boardDel(boardCode){
		var msg = "삭제 후 복구는 불가능합니다.\n선택하신 게시판 & 댓글을 삭제하시겠습니까?";
		if(confirm(msg)){
			var formData = {
				boardCode : boardCode
			}
			$.ajax({
				url		:"${pageContext.request.contextPath}/board/grp_board_delete",
				type	:"POST",
				data	:formData,
				success	:function(resData){
					if(resData == "success"){
						alert("선택하신 게시판 & 댓글이 삭제 되었습니다.");
						window.location.reload();
					}
				},
				error	:function(){
					alert("시스템 오류");
				},
				complete:function(){}
			});
		}
	}

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

	$(function(){
		$("#deleteAll").click(function(){
			var msg = "선택하신 게시판을 삭제합니다.\n삭제하시겠습니까?";
			if(confirm(msg)){
				var chkArray = new Array(); //배열생성
				$(".chk:checked").each(function(){
					chkArray.push($(this).attr("data-uid"));
				});
				$.ajax({
					url		:"${pageContext.request.contextPath}/board/grp_board_delete_all",
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
	
	$(function(){
		loadBuseo();
	});
</script>

</html>













