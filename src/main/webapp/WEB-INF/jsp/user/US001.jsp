<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/jsp/common/common.jsp" %>

<script src="${CR}/weblb/js/user/US001.js"></script>


    <div style="display: inline-block;">
        <%--                <button class="btn btn-primary" onclick="chgInfo();">정보 수정</button>--%>
        <%--                <button class="btn btn-primary" onclick="chgPass();">패스워드 변경</button>--%>
    </div>
    <div class="row">
        <div class="col-xl-1">
                <i class="fas fa-9x fa-user-circle" style="color:black;"></i>
        </div>
        <div class="col-lg-6 profile">
            ${userInfo.userNm}님 환영합니다.
        </div>
        <div class="col-xl-5">

        </div>
    </div>
