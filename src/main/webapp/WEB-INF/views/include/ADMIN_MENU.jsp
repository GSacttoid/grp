<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="tree-wrap">
	<div id="sidetreecontrol" class="">
		<a href="#" class="tab active" id="open">전체닫기</a> <a href="#"
			class="tab" id="close">전체열기</a>
	</div>
	<div class="clearfix"></div>
	<ul id="tree" class="">
		<li><img
			src="${pageContext.request.contextPath}/images/folder-closed.gif" />
			사내조직/연락처
			<ul>
				<li><img
					src="${pageContext.request.contextPath}/images/folder.gif" /> 1. <a
					href="${pageContext.request.contextPath}/employee/grp_employee_list">사원목록</a></li>
				<li><img
					src="${pageContext.request.contextPath}/images/folder.gif" /> 2. <a
					href="${pageContext.request.contextPath}/employee/grp_employee_register">사원등록</a>
				</li>
				<li><img
					src="${pageContext.request.contextPath}/images/folder.gif" /> 3. <a	
					href="${pageContext.request.contextPath}/employee/grp_employee_org">조직도</a></li>
			</ul>
		</li>

		<li>
			<img src="${pageContext.request.contextPath}/images/folder-closed.gif" />
			전자결재
			<ul>
				<li><img
					src="${pageContext.request.contextPath}/images/folder.gif" /> 1. <a
					href="${pageContext.request.contextPath}/approval" target="_blank">전자결재</a></li>
			</ul></li>

		<li>
			<img src="${pageContext.request.contextPath}/images/folder-closed.gif" />게시판관리	
			<ul>
				<li><img src="${pageContext.request.contextPath}/images/folder.gif" /> 1. <a href="${pageContext.request.contextPath}/board">게시판 생성</a></li>
			</ul>
		</li>

		<li><img
			src="${pageContext.request.contextPath}/images/folder-closed.gif" />
			일정관리
			<ul>
				<li><img
					src="${pageContext.request.contextPath}/images/folder.gif" /> 1. <a
					href="${pageContext.request.contextPath}/calendar">일정목록</a>
				</li>
			</ul></li>

		<li><img
			src="${pageContext.request.contextPath}/images/folder-closed.gif" />
			근태관리
			<ul>
				<li><img
					src="${pageContext.request.contextPath}/images/folder.gif" /> 1. <a
					href="${pageContext.request.contextPath}/attend">내 근태현황</a></li>
			</ul></li>

		<li><img
			src="${pageContext.request.contextPath}/images/folder-closed.gif" />
			설문조사
			<ul>
				<li><img
					src="${pageContext.request.contextPath}/images/folder.gif" /> 1. <a
					href="${pageContext.request.contextPath}/survey/grp_survey_open">진행중인 설문</a></li>
				<li><img
					src="${pageContext.request.contextPath}/images/folder.gif" /> 2. <a
					href="${pageContext.request.contextPath}/survey/grp_survey_close">종료된 설문</a></li>
			</ul></li>

		<li><img src="${pageContext.request.contextPath}/images/folder-closed.gif" />자료실<ul>
				<li><img
					src="${pageContext.request.contextPath}/images/folder.gif" /> 1. <a
					href="${pageContext.request.contextPath}/reference">문서양식</a>
				</li>
			</ul>
		</li>

		<li><img src="${pageContext.request.contextPath}/images/folder-closed.gif" />회사기본정보<ul>
				<li><img
					src="${pageContext.request.contextPath}/images/folder.gif" /> 1. <a
					href="${pageContext.request.contextPath}/company">회사기본정보</a>
				</li>
			</ul>
		</li>
	</ul>
</div>