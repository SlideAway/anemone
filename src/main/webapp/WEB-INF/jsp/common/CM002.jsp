<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/jsp/common/common.jsp" %>

<script src="${CR}/weblb/js/common/CM002.js"></script>

<input type="button" onclick="">


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
                        <a class="small" href="#" onclick="goTo('/CM003.do');">Already have an account? Login!</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>