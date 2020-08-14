<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/jsp/common/common.jsp" %>

<script src="${CR}/resources/weblb/js/community/CT001Detail.js"></script>
<div class="container-fluid">
    <div class="card">
        <div class="card-header">
            <h3 style=" display: inline-block; white-space: nowrap;">${detail.title}</h3>
                <p style="float:right;">작성 일 : ${detail.regDate}</p>
        </div>
        <div class="card-body">
            <h5 class="card-title">작성자 : ${detail.nickname}</h5>
            <p class="card-text">${detail.content}</p>
        </div>
    </div>
    <br>
    <a href="/CT001.do" class="btn btn-secondary">목록</a>
</div>