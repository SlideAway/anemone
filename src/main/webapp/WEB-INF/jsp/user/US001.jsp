<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/jsp/common/common.jsp" %>

<script src="${CR}/resources/weblb/js/user/US001.js"></script>

<div class="container-fluid">
    <div class="jumbotron jumbotron-fluid">
        <div class="container">
            <h1 class="display-4">사용자 정보</h1>
            <div style="display: inline-block;">
                <button class="btn btn-primary" onclick="chgInfo();">정보 수정</button>
                <button class="btn btn-primary" onclick="chgPass();">패스워드 변경</button>
            </div>
            <div class="row">
                <div class="col-xs-1" style="width: 30%;">
                    <h4>ID</h4>
                    <h4>이름</h4>
                    <h4>등급</h4>
                    <h4>닉네임</h4>
                    <h4>이메일</h4>
                    <h4>가입일</h4>
                </div>
                <div class="col-xs-1" style="width: 30%;">
                    <h4>${data.userId}</h4>
                    <h4>${data.userNm}</h4>
                    <h4>${data.roleNm}</h4>
                    <h4>${data.nickname}</h4>
                    <h4>${data.email}</h4>
                    <h4>${data.regDate}</h4>
                </div>
            </div>
        </div>
    </div>
</div>