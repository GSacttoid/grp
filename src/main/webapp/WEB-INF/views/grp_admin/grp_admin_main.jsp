<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/ADMIN_HEADER.jsp" %>
<style>
     .page-main-left {
         width:69.7%;
         padding:20px;
     }

     .page-main-right {
         width: 29.7%;
     }

     .main-right-top {
         height:260px;
     }

     .main-right-bottom {
         height:220px;
     }

     .buseo-icon {
         width:40px;
         height:40px;
         margin-right:20px;
     }

     .buseo-icon img {
         width:100%;
         height:100%;
         border-radius: 50%;
         display: inline-block;
     }

     .attend-btn-on {
         width:220px;
         border:1px solid #ccc;
         border-radius: 50px;
         background-color:transparent;
         color:#ccc;
         padding:10px 0;
     }

     .attend-btn-off {
         width:220px;
         border:1px solid #5ebfd9;
         border-radius: 50px;
         background-color:transparent;
         color:#5ebfd9;
         padding:10px 0;
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
                <div class="page-right">
                    <div class="page-main-wrap flex flex-justify">
                        <div class="page-main-left bg-white">
                            <div class="title">
                                <h2 class="font16 noto m-b10">최근 부서 알림글</h2>
                            </div>
                            <div class="buseo-wrap">
                                <div class="buseo-content flex flex-justify p-tb20" style="border-bottom:1px solid #e7e7e7;">
                                    <div class="content-left flex">
                                        <div class="buseo-icon">
                                            <img src="${pageContext.request.contextPath}/images/1.jpg" alt="" />
                                        </div>
                                        <div class="buseo-info">
                                            <p class="noto font14 weight700">[인사과 알림] 운영자 확인이 필요한 근태 정보가 있습니다. 근태관리에서 확인하세요.</p>
                                            <p class="noto font14">09-15 09:50 김그린 과장</p>
                                        </div>
                                    </div>
                                    <div class="content-right" style="width:50px;">
                                        <span style="font-size:24px;color:#555;"><i class="fas fa-angle-right"></i></span>
                                    </div>
                                </div>
                                <div class="buseo-content flex flex-justify p-tb20" style="border-bottom:1px solid #e7e7e7;">
                                    <div class="content-left flex">
                                        <div class="buseo-icon">
                                            <img src="${pageContext.request.contextPath}/images/1.jpg" alt="" />
                                        </div>
                                        <div class="buseo-info">
                                            <p class="noto font14 weight700">[인사과 알림] 운영자 확인이 필요한 근태 정보가 있습니다. 근태관리에서 확인하세요.</p>
                                            <p class="noto font14">09-15 09:50 김그린 과장</p>
                                        </div>
                                    </div>
                                    <div class="content-right" style="width:50px;">
                                        <span style="font-size:24px;color:#555;"><i class="fas fa-angle-right"></i></span>
                                    </div>
                                </div>
                                <div class="buseo-content flex flex-justify p-tb20" style="border-bottom:1px solid #e7e7e7;">
                                    <div class="content-left flex">
                                        <div class="buseo-icon">
                                            <img src="${pageContext.request.contextPath}/images/1.jpg" alt="" />
                                        </div>
                                        <div class="buseo-info">
                                            <p class="noto font14 weight700">[인사과 알림] 운영자 확인이 필요한 근태 정보가 있습니다. 근태관리에서 확인하세요.</p>
                                            <p class="noto font14">09-15 09:50 김그린 과장</p>
                                        </div>
                                    </div>
                                    <div class="content-right" style="width:50px;">
                                        <span style="font-size:24px;color:#555;"><i class="fas fa-angle-right"></i></span>
                                    </div>
                                </div>
                                <div class="buseo-content flex flex-justify p-tb20" style="border-bottom:1px solid #e7e7e7;">
                                    <div class="content-left flex">
                                        <div class="buseo-icon">
                                            <img src="${pageContext.request.contextPath}/images/1.jpg" alt="" />
                                        </div>
                                        <div class="buseo-info">
                                            <p class="noto font14 weight700">[인사과 알림] 운영자 확인이 필요한 근태 정보가 있습니다. 근태관리에서 확인하세요.</p>
                                            <p class="noto font14">09-15 09:50 김그린 과장</p>
                                        </div>
                                    </div>
                                    <div class="content-right" style="width:50px;">
                                        <span style="font-size:24px;color:#555;"><i class="fas fa-angle-right"></i></span>
                                    </div>
                                </div>
                                <div class="buseo-content flex flex-justify p-tb20" style="border-bottom:1px solid #e7e7e7;">
                                    <div class="content-left flex">
                                        <div class="buseo-icon">
                                            <img src="${pageContext.request.contextPath}/images/1.jpg" alt="" />
                                        </div>
                                        <div class="buseo-info">
                                            <p class="noto font14 weight700">[인사과 알림] 운영자 확인이 필요한 근태 정보가 있습니다. 근태관리에서 확인하세요.</p>
                                            <p class="noto font14">09-15 09:50 김그린 과장</p>
                                        </div>
                                    </div>
                                    <div class="content-right" style="width:50px;">
                                        <span style="font-size:24px;color:#555;"><i class="fas fa-angle-right"></i></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="page-main-right">
                            <div class="main-right-top bg-white p20" style="border:1px solid #5ebfd9;">
                                <div class="main-attend">
                                    <div class="title">
                                        <h2 class="font16 noto m-b10">근태관리</h2>
                                        <p>2020년 09월 15일 화요일</p>
                                    </div>
                                    <div class="attend flex flex-justify noto font14 weight700 m-t20">
                                        <span>출근시간</span>
                                        <span>AM 08:55</span>
                                    </div>
                                    <div class="attend flex flex-justify noto font14 weight700 m-t10">
                                        <span>퇴근시간</span>
                                        <span>PM 18:30</span>
                                    </div>
                                    <div class="attend flex flex-justify noto font14 weight700 m-t10">
                                        <span>현재상태</span>
                                        <span>
                                            <select class="sel-attend">
                                                <option value="">업무중</option>
                                                <option value="">외근중</option>
                                                <option value="">퇴근</option>
                                            </select>
                                        </span>
                                    </div>
                                    <div class="attend flex flex-justify noto font14 weight700 m-t10">
                                        <button class="noto font14 weight700 attend-btn-on">출근하기</button>
                                        <button class="noto font14 weight700 attend-btn-off">퇴근하기</button>
                                    </div>
                                </div>
                            </div>
                            <div class="main-right-bottom bg-white m-t10 p20">3</div>
                        </div>
                    </div>

                    <div class="page-main-bottom flex flex-justify m-t10">
                        <div class="main-bottom-left bg-white p20" style="width:49.7%;">
                            <div class="title">
                                <h2 class="font16 noto m-b10">결재 대기 문서</h2>
                            </div>
                            <div class="app-content m-t20">
                                <div style="border-bottom:1px solid #e7e7e7; padding-bottom:10px;" class="app-list flex flex-justify noto weight700 font14">
                                    <div class="app-date" style="width:10%;">기안일</div>
                                    <div class="app-form" style="width:10%;">문서양식</div>
                                    <div class="app-subject center" style="width:70%;">결재문서제목</div>
                                    <div class="app-file" style="width:10%;">첨부</div>
                                </div>
                                <div class="center p-tb10">
                                    <span class="noto font16 weight700">결재할 문서가 없습니다.</span>
                                </div>
                            </div>
                        </div>
                        <div class="main-bottom-right bg-white p20" style="width:49.7%;">
                            <div class="title">
                                <h2 class="font16 noto m-b10">공지사항 알림글</h2>
                            </div>
                            <div class="notice-content flex flex-justify p-tb10" style="border-bottom:1px solid #e7e7e7;">
                                <div class="notice-left">
                                    <p class="noto weight700 font14">
                                        <span style="color:#d92550; margin-right:10px;">[공지]</span> 운영자 확인이 필요한 근태 정보가 있습니다. 근태관리에서 확인하세요.
                                    </p>
                                </div>
                                <div class="notice-right">
                                    <span class="noto font14" style="color:#555;">09.15</span>
                                </div>
                            </div>

                            <div class="notice-content flex flex-justify p-tb10" style="border-bottom:1px solid #e7e7e7;">
                                <div class="notice-left">
                                    <p class="noto weight700 font14">
                                        <span style="color:#d92550; margin-right:10px;">[공지]</span> 운영자 확인이 필요한 근태 정보가 있습니다. 근태관리에서 확인하세요.
                                    </p>
                                </div>
                                <div class="notice-right">
                                    <span class="noto font14" style="color:#555;">09.15</span>
                                </div>
                            </div>
                            <div class="notice-content flex flex-justify p-tb10" style="border-bottom:1px solid #e7e7e7;">
                                <div class="notice-left">
                                    <p class="noto weight700 font14">
                                        <span style="color:#d92550; margin-right:10px;">[공지]</span> 운영자 확인이 필요한 근태 정보가 있습니다. 근태관리에서 확인하세요.
                                    </p>
                                </div>
                                <div class="notice-right">
                                    <span class="noto font14" style="color:#555;">09.15</span>
                                </div>
                            </div>
                            <div class="notice-content flex flex-justify p-tb10" style="border-bottom:1px solid #e7e7e7;">
                                <div class="notice-left">
                                    <p class="noto weight700 font14">
                                        <span style="color:#d92550; margin-right:10px;">[공지]</span> 운영자 확인이 필요한 근태 정보가 있습니다. 근태관리에서 확인하세요.
                                    </p>
                                </div>
                                <div class="notice-right">
                                    <span class="noto font14" style="color:#555;">09.15</span>
                                </div>
                            </div>
                            <div class="notice-content flex flex-justify p-tb10" style="border-bottom:1px solid #e7e7e7;">
                                <div class="notice-left">
                                    <p class="noto weight700 font14">
                                        <span style="color:#d92550; margin-right:10px;">[공지]</span> 운영자 확인이 필요한 근태 정보가 있습니다. 근태관리에서 확인하세요.
                                    </p>
                                </div>
                                <div class="notice-right">
                                    <span class="noto font14" style="color:#555;">09.15</span>
                                </div>
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
</html>