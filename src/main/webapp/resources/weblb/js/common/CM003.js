function doLogin(obj) {
    if(JMLib.isEmpty(obj.find("#username"), "ID를 입력해주세요. ")) return false;
    if(JMLib.isEmpty(obj.find("#password"), "패스워드를 입력해주세요. ")) return false;

    $("#encPwd").val(CryptoJS.SHA1($("#userPwd").val()).toString());
    obj.find("#userPwd").val('');
    obj.attr("action", getContextPath() + "/CM003_LOGIN.do");
    obj.attr("method", "post");
    obj.submit();
}