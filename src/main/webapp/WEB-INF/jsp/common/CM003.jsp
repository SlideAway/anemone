<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/jsp/common/common.jsp" %>

<script src="${CR}/weblb/js/common/CM003.js"></script>
<script>
    $(document).ready(function () {
        setError(${error});
    });
</script>


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
                            <form class="user" action="CM003_LOGIN.do" method="post">
                                <div class="form-group">
                                    <input type="email" class="form-control form-control-user" id="userId" name="userId"
                                           aria-describedby="emailHelp" placeholder="Enter ID...">
                                </div>
                                <div class="form-group">
                                    <input type="password" class="form-control form-control-user" id="userPwd"
                                           name="userPwd" placeholder="Password" onkeydown="enterKey()">
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
                                <a class="small" href="#" onclick="goTo('/CM003_FINDID.do')">Forgot ID?</a>
                            </div>
                            <div class="text-center">
                                <a class="small" href="#" onclick="goTo('/CM003_FINDPASS.do')">Forgot Password?</a>
                            </div>
                            <div class="text-center">
                                <a class="small" href="#" onclick="goTo('/CM002.do');">Create an Account!</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>

</div>