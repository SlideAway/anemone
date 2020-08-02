<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/jsp/common/common.jsp" %>

<script src="${CR}/resources/weblb/js/common/CM002.js"></script>

<div class="container">
<div class="card o-hidden border-0 shadow-lg my-5">
    <div class="card-body p-0">
        <!-- Nested Row within Card Body -->
        <div class="row">
            <div class="col-lg-5 d-none d-lg-block bg-login-image"></div>
            <div class="col-lg-7">
                <div class="p-5">
                    <form class="user">
                        <div class="form-group">
                            <input type="text" class="form-control form-control-user" id="userNm" name="userNm" placeholder="Enter your name...">
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control form-control-user" id="userId" name="userId" placeholder="Nickname">
                        </div>
                        <div class="form-group row">
                            <div class="col-sm-6 mb-3 mb-sm-0">
                                <input type="password" class="form-control form-control-user" id="userPwd" name="userPwd" placeholder="Password">
                            </div>
                            <div class="col-sm-6">
                                <input type="password" class="form-control form-control-user" id="chkPassword" placeholder="Repeat Password">
                            </div>
                        </div>
                        <div class="form-group">
                            <input type="email" class="form-control form-control-user" id="Email" name="email" placeholder="Email Address">
                        </div>
                        <a href="#" onclick="doSubmit($('form'));" class="btn btn-primary btn-user btn-block">
                            Register Account
                        </a>
                        <!--<hr>
                        <a href="#" class="btn btn-google btn-user btn-block">
                            <i class="fab fa-google fa-fw"></i> Register with Google
                        </a>
                        <a href="#" class="btn btn-facebook btn-user btn-block">
                            <i class="fab fa-facebook-f fa-fw"></i> Register with Facebook
                        </a>-->
                    </form>
                    <hr>
                    <div class="text-center">
                        <a class="small" href="/CM003.do">Already have an account? Login!</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
<%--<form class="was-validated">--%>
<%--    <div class="form-group row">--%>
<%--        <label for="userNm" class="col-sm-2 col-form-label">Name</label>--%>
<%--        <div class="col-sm-4">--%>
<%--            <input type="text" class="form-control is-invalid" id="userNm" name="userNm" placeholder="Name" required>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--    <div class="form-group row">--%>
<%--        <label for="nickname" class="col-sm-2 col-form-label">Nickname</label>--%>
<%--        <div class="col-sm-4">--%>
<%--            <input type="text" class="form-control is-invalid" id="nickname" name="nickName" placeholder="Nickname"--%>
<%--                   onkeyup="chkLength(value);" required>--%>
<%--            <p id="chkNick"></p>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--    <div class="form-group row">--%>
<%--        <label for="userId" class="col-sm-2 col-form-label">ID</label>--%>
<%--        <div class="col-sm-4">--%>
<%--            <input type="text" class="form-control is-invalid" id="userId" name="userId" placeholder="ID"--%>
<%--                   onkeyup="idChk(value);" required>--%>
<%--            <p id="chkId"></p>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--    <div class="form-group row">--%>
<%--        <label for="userPwd" class="col-sm-2 col-form-label">Password</label>--%>
<%--        <div class="col-sm-4">--%>
<%--            <input type="password" class="form-control is-invalid" id="userPwd" name="userPwd" placeholder="Password"--%>
<%--                   onkeyup="pwdChk(value);" required>--%>
<%--            <p id="chkPw"></p>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--    <div class="form-group row">--%>
<%--        <label for="chkPwd" class="col-sm-2 col-form-label">Password 확인</label>--%>
<%--        <div class="col-sm-4">--%>
<%--            <input type="password" class="form-control is-invalid" id="chkPwd" placeholder="Password 확인"--%>
<%--                   onkeyup="isSame(value);" required>--%>
<%--            <input type="hidden" id="encPwd" name="encPwd">--%>
<%--            <p id="confPwd"></p>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--    <div class="form-group row">--%>
<%--        <label for="Email" class="col-sm-2 col-form-label">Email</label>--%>
<%--        <div class="col-sm-4">--%>
<%--            <input type="text" class="form-control is-invalid" id="Email" name="email" onkeyup="emailChk(value);"--%>
<%--                   placeholder="Email" required>--%>
<%--            <p id="chkEmail"></p>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--    <button type="button" class="btn btn-primary" onclick="doSubmit($(form));">회원 가입</button>--%>
<%--</form>--%>