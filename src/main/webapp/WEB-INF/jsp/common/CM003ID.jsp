<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/jsp/common/common.jsp" %>

<script src="${CR}/weblb/js/common/CM003.js"></script>

<div class="row">
    <div class="col-xl-4"></div>
    <div class="col-xl-4">
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">가입 시 입력한 이름과 이메일 주소를 입력해주세요. </h6>
            </div>
            <div class="card-body">
                <form>
                    <div class="form-group row">
                        <label for="userNm" class="col-xl-2 col-form-label">이름</label>
                        <div class="col-xl-6">
                            <input type="text" class="form-control" id="userNm" name="userNm"
                                   placeholder="Name"
                                   required>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="email" class="col-xl-2 col-form-label">Email</label>
                        <div class="col-xl-6">
                            <input type="text" class="form-control" id="email" name="email"
                                   placeholder="Email"
                                   required>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-xl-6">
                            <button type="button" style="float:right;" class="btn btn-primary"
                                    onclick="goTo('/CM003.do');">
                                Back to Login
                            </button>
                        </div>
                        <div class="col-xl-2">
                            <button type="button" style="float:right;" class="btn btn-primary"
                                    onclick="doFindId($(form));">
                                확인
                            </button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <div class="col-xl-4"></div>
</div>