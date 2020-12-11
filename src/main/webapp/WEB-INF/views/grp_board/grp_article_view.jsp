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
</body>

</html>