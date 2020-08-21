function doLogin(obj) {
    if(JMLib.isEmpty(obj.find("#userId"), "ID를 입력해주세요. ")) return false;
    if(JMLib.isEmpty(obj.find("#userPwd"), "패스워드를 입력해주세요. ")) return false;
    var sendDate = {
        "username" : obj.find("#userId").val(),
        "userPwd" : obj.find("#userPwd").val()
    } ;
    obj.submit();
    obj.find("#password").val('');
    // JMLib.Ajax(sendDate, "/CM003_LOGIN.do", function (data) {
    //     if(data.success == true) {
    //         location.href = getContextPath();
    //     } else if(data.success == false) {
    //         JMLib.JMalert(data.msg);
    //     }
    //
    // }, opt);
}

function enterKey(evt) {
    if(evt.keyCode == 13) {
        doLogin($("form"));
    }
}