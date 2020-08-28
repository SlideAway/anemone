<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/jsp/common/common.jsp" %>

<script src="${CR}/weblb/js/user/US001.js"></script>

<div class="row">
    <div class="col-xl-4"></div>
    <div class="col-xl-4">
        <div class="card shadow mb-4">
            <div class="card-header">
                <h6 class="m-0 font-weight-bold text-primary">
                    본인확인
                </h6>
            </div>
            <div class="card-body">
                <div class="row mb-4">
                    <div class="col-xl-4">
                        비밀번호 재확인 :
                    </div>
                    <div class="col-xl-8">
                        <input type="password" class="form-control" name="userPwd">
                    </div>
                </div>
                <div class="row">
                    <div class="col-xl-6"></div>
                    <div class="col-xl-6">
                        <button type="button" class="btn btn-primary" style="float:right;" onclick="submitCheckPass()">
                            확인
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-xl-4"></div>
</div>
