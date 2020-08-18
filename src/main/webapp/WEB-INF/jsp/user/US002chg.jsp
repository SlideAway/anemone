<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/jsp/common/common.jsp" %>

<script src="${CR}/weblb/js/user/US002chg.js"></script>

<div class="container-fluid">
    <form class="was-validated">
        <div class="form-group row">
            <label for="userNm">이름</label>
            <div class="col-sm-4">
                <h4 id="userNm">${data.userNm}</h4>
            </div>
        </div>
        <div class="form-group row">
            <label for="userId">ID</label>
            <div class="col-sm-4">
                <h4 id="userId">${data.userId}</h4>
            </div>
        </div>
        <div class="form-group row">
            <label for="nickname">닉네임</label>
            <div class="col-sm-4">
                <input type="text" id="nickname" value="${data.nickname}">
            </div>
        </div>
        <div class="form-group row">
            <label for="email">이메일</label>
            <div class="col-sm-4">
                <input type="text" id="email" value="${data.email}">
            </div>
        </div>
    </form>
</div>