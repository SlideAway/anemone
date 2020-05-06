<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/common/common.jsp" %>

<script src="${CR}/resources/weblb/js/community/ER002.js"></script>


<div class="container-fluid">
    <div style="text-align: center">
        <h1>${errorCode}</h1><br><br>
        <h1>${msg}</h1><br><br>
        <button class="btn btn-primary" type="button" onclick="goBack();">메인 화면으로 가기</button>
    </div>
</div>