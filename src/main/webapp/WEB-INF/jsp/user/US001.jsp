<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/jsp/common/common.jsp" %>

<script src="${CR}/weblb/js/user/US001.js"></script>


<div style="display:none;">
    <%--                <button class="btn btn-primary" onclick="chgInfo();">정보 수정</button>--%>
    <%--                <button class="btn btn-primary" onclick="chgPass();">패스워드 변경</button>--%>
</div>
<div class="row">
    <div class="col-xl-6">
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <div class="row">
                    <div class="col-xl-7">
                        <h6 class="m-0 font-weight-bold text-primary">
                            기본 정보
                        </h6>
                    </div>
                    <div class="col-xl-3">
                        <a href="#" onclick="chgInfo(0);">
                            <i class="fas fa-fw fa-edit"></i>
                            비밀번호 수정
                        </a>
                    </div>
                    <div class="col-xl-2">
                        <a href="#" onclick="chgInfo(1);">
                            <i class="fas fa-fw fa-edit"></i>
                            정보 수정
                        </a>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col-xl-3">
                        <i class="fas fa-9x fa-user-circle" style="color:black;"></i>
                    </div>
                    <div class="col-xl-6 profile">
                        ${userInfo.userNm}님 환영합니다.
                        <div class="row">
                            <div class="col-xl-3">
                                등급
                            </div>
                            <div class="col-xl-6">
                                ${userInfo.roleNm}
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xl-3">
                                가입일
                            </div>
                            <div class="col-xl-6">
                                ${userInfo.regDate}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-xl-6">
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <div class="row">
                    <div class="col-xl-10">

                    </div>
                    <div class="col-xl-2">
                        <a href="#">
                            <i class="fas fa-fw fa-edit"></i>

                        </a>
                    </div>
                </div>
            </div>
            <div class="card-body">

            </div>
        </div>
    </div>
</div>
