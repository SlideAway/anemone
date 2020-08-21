<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/jsp/common/common.jsp" %>

<script src="${CR}/weblb/js/user/US001.js"></script>


    <div style="display: inline-block;">
        <%--                <button class="btn btn-primary" onclick="chgInfo();">정보 수정</button>--%>
        <%--                <button class="btn btn-primary" onclick="chgPass();">패스워드 변경</button>--%>
    </div>
    <div class="row" style="height:100px;">
        <div class="col-lg-1 profile-thumb">
            <span class="profile-thumb">
                <img class="img-profile rounded-circle" style="width:100%; height:100%;" src="${CR}/resources/img/avatar/user-solid.svg">
            </span>
        </div>
        <div class="col-lg-6 profile">
            ${userInfo.userNm}님 환영합니다.
        </div>
        <div class="col-xl-5">

        </div>
    </div>