function submitPwd(obj) {
    if(JMLib.isEmpty(obj.find("#password"),"패스워드가 입력해주세요. ")) return false;
    var encpwd = CryptoJS.SHA1(obj.find("#password").val()).toString();
    obj.find("#password").val('');
    obj.find("#userPwd").val(encpwd);
    obj.attr("method", "post");
    obj.attr("action", getContextPath()+"/US002_COMPARE.do");
    obj.submit()
}
