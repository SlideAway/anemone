<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/jsp/common/common.jsp" %>

<script src="${CR}/weblb/js/user/US002.js"></script>

<div class="container-fluid">
    <form class="was-validated">
        <div class="form-group row">
            <label for="password">패스워드 재입력</label>
            <div class="col-sm-4">
                <input type="password" id="password" name="password">
                <input type="hidden"  id="userPwd" name="userPwd">
            </div>
        </div>
        <div class="form-group row">
            <button type="button" class="btn btn-primary" onclick="submitPwd($(form));">확인</button>
        </div>
    </form>
</div>

