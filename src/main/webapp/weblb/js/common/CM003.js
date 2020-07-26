function doLogin(obj) {
    if(JMLib.isEmpty(obj.find("#username"), "ID를 입력해주세요. ")) return false;
    if(JMLib.isEmpty(obj.find("#userPwd"), "패스워드를 입력해주세요. ")) return false;

    obj.find("#password").val('');
    var sendDate = {
        "username" : obj.find("#username").val(),
        "password" : obj.find("#password").val()
    } ;
    JMLib.Ajax(sendDate, "/CM003_LOGIN.do", function (data) {
        if(data.success == true) {
            location.href = getContextPath();
        } else if(data.success == false) {
            JMLib.JMalert(data.msg);
        }

    });
}

function enterKey(evt) {
    if(evt.keyCode == 13) {
        doLogin($("form"));
    }
}