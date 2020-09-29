function doLogin(obj) {
    if (JMLib.isEmpty(obj.find("#userId"), "ID를 입력해주세요. ")) return false;
    if (JMLib.isEmpty(obj.find("#userPwd"), "패스워드를 입력해주세요. ")) return false;
    var sendDate = {
        "username": obj.find("#userId").val(),
        "userPwd": obj.find("#userPwd").val()
    };
    obj.submit();
    obj.find("#password").val('');
}

function enterKey() {
    if (event.keyCode === 13) {
        doLogin($("form"));
    }
}

function setError(err) {
    if (err != undefined) {
        JMLib.JMalert("ID 또는 패스워드가 일치하지 않습니다. ");
    }

}

function doFindId(obj) {
    if (JMLib.isEmpty(obj.find("#userNm"), "이름을 입력하세요. ")) return false;
    if (JMLib.isEmpty(obj.find("#email"), "이메일을 입력하세요. ")) return false;


    var sendData = {
        "userNm": obj.find("#userNm").val(),
        "email": obj.find("#email").val()
    };

    JMLib.Ajax(sendData, "/CM003_doFINDID.do", function (data) {
        if (data) {
            JMLib.JMinfo("회원님의 ID는 " + data + "입니다. ");
        } else {
            JMLib.JMalert("ID를 찾을 수 없습니다. ");
        }
    });
}

function doFindPass(obj) {
    if (JMLib.isEmpty(obj.find("#userNm"), "이름을 입력하세요. ")) return false;
    if (JMLib.isEmpty(obj.find("#userId"), "ID를 입력하세요. ")) return false;
    if (JMLib.isEmpty(obj.find("#email"), "이메일을 입력하세요. ")) return false;

    var sendData = {
        "userNm": obj.find("#userNm").val(),
        "userId": obj.find("#userId").val(),
        "email": obj.find("#email").val()
    };

    JMLib.Ajax(sendData, "/CM003_doFINDPASS.do", function (data) {
        if (data) {
            JMLib.JMinfo("회원님의 임시 패스워드는 " + data + "입니다. ");
        } else {
            JMLib.JMalert("인적사항이 틀립니다. ");
        }
    })
}