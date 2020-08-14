<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/jsp/common/common.jsp" %>

<script src="${CR}/resources/weblb/js/common/CM003ID.js"></script>

<div class="container-fluid was-validated" style="width: 50%">
    <form>
        <h4>가입 시 입력한 이름과 이메일 주소를 입력해주세요. </h4><br><br>
        <div class="form-group row">
            <label for="userNm" class="col-sm-1 col-form-label">이름</label>
            <div class="col-sm-4">
                <input type="text" class="form-control is-invalid" id="userNm" name="userNm" placeholder="Name"
                       required>
            </div>
        </div>
        <div class="form-group row">
            <label for="email" class="col-sm-1 col-form-label">Email</label>
            <div class="col-sm-4">
                <input type="text" class="form-control is-invalid" id="email" name="email" placeholder="Email"
                       required>
            </div>
        </div>
        <div class="form-group row">
            <div class="col-sm-1"></div>
            <div class="col-sm-4">
                <button type="button" style="float: right;" class="btn btn-primary" onclick="doFind($(form));">확인
                </button>
            </div>
        </div>
    </form>
</div>
