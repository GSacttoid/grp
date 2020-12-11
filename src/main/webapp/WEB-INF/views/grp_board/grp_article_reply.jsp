<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- INCLUDE ARTICLE HEADER -->
   <%@ include file="/WEB-INF/views/include/ARTICLE_HEADER.jsp" %>
<!-- /INCLUDE ARTICLE HEADER -->

<body>
    <div class="page-wrap bg-gray p10">
        <div class="container p10 bg-white">
            <div class="title">
                <h3 class="tomato font18 noto">
                    <i class="fas fa-feather-alt">${boardTitle}</i>
                </h3>
            </div>
            <div class="board-insert">
                <form method="post" action="${pageContext.request.contextPath}/article/grp_article_reply" enctype="multipart/form-data">
                    
                    <!-- boardCode,aid 숨겨서 넘김 -->
                    <input type="hidden" name="boardCode" value="${boardCode}"/>
                    <input type="hidden" name="aid" value="${view.aid}"/>
                    <!-- /boardCode,aid 숨겨서 넘김 -->
                    
                    <table>
                        <tr>
                            <td class="td-10 center weight700 noto under bg-gray f6" style="background-color:${boardColor}">게시글 분류</td>
                            <td class="td-40 p-lr3">
                                <select name="division" class="sel-100">
                                    <option value="N">일반게시글</option>
									<option value="Y">알림게시글</option>
                                </select>
                            </td>
                            <td class="td-10 center weight700 noto under bg-gray f6" style="background-color:${boardColor}">게시글 비밀번호</td>
                            <td class="td-40 p-lr3">
                                <input type="password" maxlength="4" name="passwd" placeholder="비밀번호 4자리"/>
                            </td>
                        </tr>
                        <tr>
                            <td class="td-10 center weight700 noto under bg-gray f6" style="background-color:${boardColor}">게시글 제목</td>
                            <td colspan="3" class="td-90 p-lr3">
                                <input type="text" name="subject" class="input-100" maxlength="100" required />
                            </td>
                        </tr>
                        <tr>
                            <td class="td-10 center weight700 noto under bg-gray f6" style="background-color:${boardColor}">작성자</td>
                            <td colspan="3" class="td-90 p-lr3">
                                <input type="text" class="" name="writer" maxlength="5" value="${sessionScope.empName}" readonly required />
                            </td>
                        </tr>
                        <tr>
                            <td class="td-10 center weight700 noto under bg-gray f6" style="background-color:${boardColor}">게시글 내용</td>
                            <td colspan="3" class="td-90 p-lr3" style="padding-top: 2px; padding-bottom: 2px;">
                                <textarea id="editor" name="content" style="border: 1px solid #ccc; border-radius: 2px; padding: 10px;" class="noto"></textarea>
                                <script>
                                    CKEDITOR.replace('editor');
                                    CKEDITOR.config.height = 300;
                                </script>
                            </td>
                        </tr>
                        <tr>
                            <td class="td-10 center weight700 noto under bg-gray f6" style="background-color:${boardColor}">첨부파일</td>
                            <td colspan="3" class="td-90 p-lr3">
                                <input type="file" class="input-100" name="files" multiple="multiple" />
                            </td>
                        </tr>
                    </table>
                    <div class="btn-grp center m-t10">
                        <button type="submit" class="btn-normal">게시글 답글</button>
                        <button type="button" class="btn-red" 
                        	onclick="location.href='${pageContext.request.contextPath}/article/grp_article_list?boardCode=${boardCode}'">
                        	게시글 목록
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
<script>
    $(function () {
        $("tr:nth-child(2n+1)").addClass("tr-even");
    });
</script>

</html>