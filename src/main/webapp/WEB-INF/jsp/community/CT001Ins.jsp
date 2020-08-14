<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/jsp/common/common.jsp" %>

<script src="${CR}/resources/weblb/js/community/CT001Ins.js"></script>

<div class="container-fluid">
    <form class="was-validated">
        <div class="form-group row">
            <label for="title" class="col-sm-2 col-form-label">제목</label>
            <div class="col-sm-10">
                <input type="text" class="form-control is-invalid" id="title" required>
            </div>
        </div>
        <div class="form-group row">
            <label for="content" class="col-sm-2 col-form-label">내용</label>
            <div class="col-sm-10">
                <textarea class="form-control is-invalid" id="content" required></textarea>
            </div>
        </div>
    </form>
    <input class="btn btn-primary " style="float:right;" type="button" value="확인" onclick="doInsert();">
    <input class="btn btn-secondary"  type="button" value="목록" onclick="goList();">
</div>



