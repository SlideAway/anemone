<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/common/common.jsp" %>


<script src="${CR}/resources/weblb/js/common/CM002.js"></script>

<div class="container">
    <form class="was-validated">
        <div class="form-group row">
            <label for="userNm" class="col-sm-2 col-form-label">Name</label>
            <div class="col-sm-4">
                <input type="text" class="form-control is-invalid" id="userNm" name="userNm" placeholder="Name" required>
            </div>
        </div>
        <div class="form-group row">
            <label for="nickname" class="col-sm-2 col-form-label">Nickname</label>
            <div class="col-sm-4">
                <input type="text" class="form-control is-invalid" id="nickname" name="nickName" placeholder="Nickname"
                       onkeyup="chkLength(value);" required>
                <p id="chkNick"></p>
            </div>
        </div>
        <div class="form-group row">
            <label for="userId" class="col-sm-2 col-form-label">ID</label>
            <div class="col-sm-4">
                <input type="text" class="form-control is-invalid" id="userId" name="userId" placeholder="ID"
                       onkeyup="idChk(value);" required>
                <p id="chkId"></p>
            </div>
        </div>
        <div class="form-group row">
            <label for="userPwd" class="col-sm-2 col-form-label">Password</label>
            <div class="col-sm-4">
                <input type="password" class="form-control is-invalid" id="userPwd" name="userPwd" placeholder="Password"
                       onkeyup="pwdChk(value);" required>
                <p id="chkPw"></p>
            </div>
        </div>
        <div class="form-group row">
            <label for="chkPwd" class="col-sm-2 col-form-label">Password 확인</label>
            <div class="col-sm-4">
                <input type="password" class="form-control is-invalid" id="chkPwd" placeholder="Password 확인"
                       onkeyup="isSame(value);" required>
                <input type="hidden" id="encPwd" name="encPwd">
                <p id="confPwd"></p>
            </div>
        </div>
        <div class="form-group row">
            <label for="Email" class="col-sm-2 col-form-label">Email</label>
            <div class="col-sm-4">
                <input type="text" class="form-control is-invalid" id="Email" name="email" onkeyup="emailChk(value);"
                       placeholder="Email" required>
                <p id="chkEmail"></p>
            </div>
        </div>
        <button type="button" class="btn btn-primary" onclick="doSubmit($(form));">회원 가입</button>
    </form>
</div>