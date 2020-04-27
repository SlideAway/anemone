<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file ="/WEB-INF/views/common/common.jsp" %>


<script src="${CR}/resources/weblb/js/common/CM002.js"></script>

<div class="container" style="width:30%;">
    <h1>${pageContext.request.contextPath}</h1>
    <h1>회원 가입</h1>
    <form>
        <div class="form-group">
            <label for="name">Name</label>
            <input type="text" class="form-control" id="name" placeholder="Name">
        </div>
        <div class="form-group">
            <label for="nickname">Nickname</label>
            <input type="text" class="form-control" id="nickname" placeholder="Nickname" onkeyup="chkLength(value);">
            <p id="chkNick"></p>
        </div>
        <div class="form-group">
            <label for="userId">ID</label>
            <input type="text" class="form-control" id="userId" placeholder="ID" onkeyup="idChk(value);">
            <p id="chkId"></p>
        </div>
        <div class="form-group">
            <label for="userPwd">Password</label>
            <input type="password" class="form-control" id="userPwd" placeholder="Password" onkeyup="pwdChk(value);">
            <p id="chkPw"></p>
        </div>
        <div class="form-group">
            <label for="chkPwd">Password 확인</label>
            <input type="password" class="form-control" id="chkPwd" placeholder="Password 확인" onkeyup="isSame(value);">
            <p id="confPwd"></p>
        </div>
        <div class="form-group">
            <label for="Email">Email</label>
            <input type="email" class="form-control" id="Email" onkeyup="emailChk(value);">
            <p id="chkEmail"></p>
        </div>
        <button type="button" class="btn btn-primary" onclick="doSubmit($(form));">회원 가입</button>
    </form>
</div>