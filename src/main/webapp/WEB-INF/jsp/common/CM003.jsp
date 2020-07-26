<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/common/common.jsp" %>

<script src="${CR}/resources/weblb/js/common/CM003.js"></script>


<div class="container">

    <!-- Outer Row -->
    <div class="row justify-content-center">

        <div class="col-xl-10 col-lg-12 col-md-9">

            <div class="card o-hidden border-0 shadow-lg my-5">
                <div class="card-body p-0">
                    <!-- Nested Row within Card Body -->
                    <div class="row">
                        <div class="col-lg-6 d-none d-lg-block bg-login-image"></div>
                        <div class="col-lg-6">
                            <div class="p-5">
                                <div class="text-center">
                                    <h1 class="h4 text-gray-900 mb-4">Welcome Back!</h1>
                                </div>
                                <form class="user">
                                    <div class="form-group">
                                        <input type="email" class="form-control form-control-user" id="username" aria-describedby="emailHelp" placeholder="Enter ID...">
                                    </div>
                                    <div class="form-group">
                                        <input type="password" class="form-control form-control-user" id="userPwd" placeholder="Password">
                                    </div>
                                    <div class="form-group">
                                        <div class="custom-control custom-checkbox small">
                                            <input type="checkbox" class="custom-control-input" id="customCheck">
                                            <label class="custom-control-label" for="customCheck">Remember Me</label>
                                        </div>
                                    </div>
                                    <a href="#" onclick="doLogin($('.user'));" class="btn btn-primary btn-user btn-block">
                                        Login
                                    </a>
                                    <hr>
                                    <a href="" class="btn btn-google btn-user btn-block">
                                        <i class="fab fa-google fa-fw"></i> Login with Google
                                    </a>
                                    <a href="" class="btn btn-facebook btn-user btn-block">
                                        <i class="fab fa-facebook-f fa-fw"></i> Login with Facebook
                                    </a>
                                </form>
                                <hr>
                                <div class="text-center">
                                    <a class="small" href="/CM003_FINDID.do">Forgot ID?</a>
                                </div>
                                <div class="text-center">
                                    <a class="small" href="/CM003_FINDPASS.do">Forgot Password?</a>
                                </div>
                                <div class="text-center">
                                    <a class="small" href="/CM002.do">Create an Account!</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>

    </div>


</div>

<%--<form class="was-validated">--%>
<%--    <div class="form-group row">--%>
<%--        <label for="username" class="col-sm-1 col-form-label">ID</label>--%>
<%--        <div class="col-sm-3">--%>
<%--            <input type="text" class="form-control is-invalid" id="username" name="username" placeholder="ID" required>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--    <div class="form-group row">--%>
<%--        <label for="plain" class="col-sm-1 col-form-label">Password</label>--%>
<%--        <div class="col-sm-3">--%>
<%--            <input type="password" class="form-control is-invalid" id="plain" name="plain" placeholder="Password" onkeyup="enterKey(event);" required>--%>
<%--            <input type="hidden" id="password" name="password">--%>
<%--        </div>--%>
<%--    </div>--%>
<%--    <div class="form-group row">--%>
<%--        <div class="col-sm-2">--%>
<%--            <a href="/CM003_FINDID.do" style="margin: 10px;" class="card-link text-right">Forgot ID?</a>--%>
<%--            <br>--%>
<%--            <a href="/CM003_FINDPASS.do" style="margin: 10px;" class="card-link text-right">Forgot Password?</a>--%>
<%--            <br>--%>

<%--        </div>--%>
<%--        <div class="col-sm-2">--%>
<%--            <button type="button" style="float: right;" class="btn btn-primary" onclick="doLogin($(form));">로그인</button>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</form>--%>