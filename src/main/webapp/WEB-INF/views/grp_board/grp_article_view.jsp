<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- INCLUDE ARTICLE HEADER -->
   <%@ include file="/WEB-INF/views/include/ARTICLE_HEADER.jsp" %>
<!-- /INCLUDE ARTICLE HEADER -->
<style>
	.notice{
	   	display:inline-block;
	   	padding:4px 8px;
	   	background-color:#fd7216;
	   	border-radius:2px;
	   	color:#fff;
	}
</style>
		
<body>
    <div class="page-wrap bg-gray p10">
        <div class="container p10 bg-white">
            <div class="title">
                <h3 class="tomato font18 noto">
                    <i class="fas fa-feather-alt">그룹웨어 알림판 상세보기</i>
                </h3>
            </div>
            <div class="board-insert">
                    <table>
                        <tr>
                            <td class="td-10 center weight700 noto under bg-gray">게시글 분류</td>
                            <td class="td-40 p-lr3">
                                <span class="btn-red">
	                               	<c:if test="${view.division eq 'Y'}">
		                        		<span class="notice">공지사항</span>
		                        	</c:if>
		                        	
		                        	<c:if test="${view.division eq 'N'}">
		                        		일반
		                        	</c:if>
                                </span>
                            </td>
                            <td class="td-10 center weight700 noto under bg-gray">게시글 비밀번호</td>
                            <td class="td-40 p-lr3">****</td>
                        </tr>
                        <tr>
                            <td class="td-10 center weight700 noto under bg-gray">게시글 제목</td>
                            <td colspan="3" class="td-90 p-lr3">
                                <strong>${view.subject}</strong>
                            </td>
                        </tr>
                        <tr>
                            <td class="td-10 center weight700 noto under bg-gray">작성자</td>
                            <td colspan="3" class="td-90 p-lr3">
                                <strong>${view.writer}</strong>
                            </td>
                        </tr>
                        <tr>
                            <td class="td-10 center weight700 noto under bg-gray">게시글 내용</td>
                            <td colspan="3" class="td-90 p-lr3" style="padding-top: 2px; padding-bottom: 2px; height: 300px;">
                                <strong>${view.content}</strong>
                            </td>
                        </tr>
                        <tr>
                            <td class="td-10 center weight700 noto under bg-gray">첨부파일</td>
                            <td colspan="3" class="td-90 p-lr3">
                            	<c:if test="${view.fileOriName eq null}">
                            		<strong>첨부파일이 없습니다.</strong>                            	
                            	</c:if>
                            	<c:if test="${view.fileOriName ne null}">
                            		<a href="${pageContext.request.contextPath}/article/grp_article_download?boardCode=${boardCode}&aid={view.aid}">
                            			<strong>${view.fileOriName}</strong>   
                            		</a>                         	
                            	</c:if>
                            </td>
                        </tr>
                        <tr>
                            <td class="td-10 center weight700 noto under bg-gray">게시물 조회수</td>
                            <td colspan="3" class="td-90 p-lr3">${view.hit}회</td>
                        </tr>
                    </table>
                    <div class="btn-grp center m-t10 flex flex-justify">
                        <div class="btn-left">
                            <button type="button" class="btn-red" 
                        	onclick="location.href='${pageContext.request.contextPath}/article/grp_article_list?boardCode=${boardCode}'">
                        	게시글 목록
                        </button>
                        </div>
                        <div class="btn-right">
                            <button type="button" class="btn-on" onClick="location.href='${pageContext.request.contextPath}/article/grp_article_reply?boardCode=${boardCode}&aid=${view.aid}'">게시글 답글</button>
                            <button type="button" class="btn-on" onClick="location.href='${pageContext.request.contextPath}/article/grp_article_insert?boardCode=${boardCode}'">게시글 작성</button>
                            <button type="button" class="btn-on" onclick="location.href='grp_board_modify.html'">게시글 수정</button>
                            <button type="button" class="btn-off" >게시글 삭제</button>
                        </div>
                    </div>
            </div>
        </div>
    </div>
    
    <!-- 댓글 화면 구성 -->
    <hr style="margin:30px 0px; border: 1px solid #eee;" />

    <div class="p-lr20">
        <div id="commentList">
            
        </div>
        <hr style="margin:30px 0px; border: 1px solid #f1f1f1;" />
        <div style="margin-top: 20px;">
            <form id="frm"> <!-- ajax로 자료 전체 전송하기(input -> name을 사용) -->
            	<input type="hidden" name="boardCode" value="${boardCode}" readonly />
                <input type="hidden" name="aid" value="${article.aid}" readonly />
                <input type="hidden" name="who" value="${sessionScope.empName}" readonly />
                <textarea class="p10 noto font16" id="comment" name="comment" style="border: 1px solid #e7e7e7; width: 100%; height: 100px;" placeholder="댓글 내용을 입력하세요."></textarea>
                <div class="flex flex-justify p10"> <!-- 비밀댓글 & 저장 버튼 -->
                    <div class="">
                        <input type="checkbox" name="" /> 비밀댓글
                    </div>
                    <div class="">
                        <button id="btn" class="noto font16 weight700" type="button" style="background-color: #3f51b5; color:#fff; border-radius: 3px; padding: 8px 10px;">댓글등록</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <!-- //댓글 화면 구성 -->
    
</body>
<script>
    function checkComment(){
        if($("#comment").val() == ''){
            alert("댓글 내용을 입력하세요.");
            $("#comment").focus();
            return false;
        }

        var formData = $("#frm").serialize(); //form안의 name값의 데이터를 전부 가져오기
        $.ajax({
			url		:"${pageContext.request.contextPath}/comment/grp_comment_register",
			type	:"POST",
			data	:formData,
			success	:function(resData){
				alert("댓글이 등록 되었습니다.");
				listComment();
			},
			error	:function(){
				alert("관리자에게 문의하세요.");
			},
			complete:function(){
			}
			
        });
    }

    function listComment(){
    	var formData = $("#frm").serialize();
    	$.ajax({
			url		:"${pageContext.request.contextPath}/comment/grp_comment_list",
			type	:"POST",
			data	:formData,
			success	:function(resData){

				var a = '';
				//resData.list -> who(key), 관리자(value)
				$.each(resData.list, function(key, value){ //내용을 key, value값으로 분리
					a += '<div>';
						a += '<div class="flex" style="margin:10px 0;">';
							a += '<div style="width: 6%;">';
								a += '<span style="width: 60px; height: 60px; border-radius: 50%; background-color: tomato; display: inline-block; line-height: 60px; text-align: center;">';
									a += '<i class="far fa-user f6 font20"></i>';
								a += '</span>';
							a += '</div>';
							a += '<div style="width: 94%;">';
								a += '<div class="noto font16 weight700" style="color: #555;">';
									a += '<span>'+value.who+'</span>';
									a += '<span style="margin-left: 20px;"><i class="far fa-calendar-alt"></i>'+value.regdate+'</span>';
								a += '</div>';
								a += '<div class="noto font16">';
									a += '<span>'+value.comment+'</span>';
								a += '</div>';
							a += '</div>';
						a += '</div>';
						a += '<div style="text-align: right;">';
							a += '<button class="s-btn-on">수정</button>';
							a += '<button class="s-btn-off">삭제</button>';
						a += '</div>';
						a += '<hr style="margin:30px 0px; border: 1px solid #f7f7f7;" />';
					a += '</div>';
				});

				var b = '';
					b += '<h2>댓글: '+resData.count+'</h2>';
					
				$("#commentList").html(b+a); //위에서 작업한 변수a 내용을 id commentList에 표시
			},
			error	:function(){
				alert("관리자에게 문의하세요.");
			},
			complete:function(){
			}
			
        });
    }

    $("#btn").click(function(){
        checkComment();
    });

    $(function(){
		listComment();
    });
</script>
</html>