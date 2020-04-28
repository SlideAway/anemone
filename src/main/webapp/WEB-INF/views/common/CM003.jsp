<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/common/common.jsp" %>

<script src="${CR}/resources/weblb/js/common/CM003.js"></script>


<div class="container">
    <form class="was-validated">
        <div class="form-group row">
            <label for="userId" class="col-sm-2 col-form-label">ID</label>
            <div class="col-sm-4">
                <input type="text" class="form-control is-invalid" id="userId" name="userId" placeholder="ID" required>
            </div>
        </div>
        <div class="form-group row">
            <label for="userPwd" class="col-sm-2 col-form-label">Password</label>
            <div class="col-sm-4">
                <input type="password" class="form-control is-invalid" id="userPwd" name="userPwd" placeholder="Password" required>
                <input type="hidden" id="encPwd">
            </div>
        </div>
        <div class="form-group row">
            <div class="col-sm-3">
                <a href="/CT002_FINDID.do" style="margin: 10px;" class="card-link text-right">Forgot ID?</a>
                <br>
                <a href="/CT002_FINDPASS.do" style="margin: 10px;" class="card-link text-right">Forgot Password?</a>
            </div>
            <div class="col-sm-2">
                <button type="button" style="float: right;" class="btn btn-primary" onclick="doLogin($(form));">로그인</button>
            </div>
        </div>




    </form>
</div>