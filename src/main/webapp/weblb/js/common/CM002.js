// $(function () {
//     idTooltip($("#userId"));
//     pwTooltip($("#userPwd"));
// });
//
//
//
// function idTooltip(obj) {
//     obj.attr("data-placement", "bottom");
//     obj.attr("title", "ID는 최소 5글자, 최대 12글자입니다. ");
//     obj.attr("data-trigger", "focus");
//     obj.tooltip();
// }
//
// function pwTooltip(obj) {
//     obj.attr("data-placement", "bottom");
//     obj.attr("title", "PW는 영, 대소문자, 숫자, 특수문자 포함하여 최소 8글자, 최대 20글자 입니다. ");
//     obj.attr("data-trigger", "focus");
//     obj.tooltip();
// }

function idChk(obj) {
    //ID는 최소 5글자, 최대 12글자까지
    if (obj.val().length > 5 && obj.val().length < 13) {
        return true;
    } else {
        return false;
    }

}

function pwdChk(obj) {
    var re = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z])(?=.*[\W]).{8,20}$/gm;
    re.exec(obj.val());
    if (re.lastIndex < 1) {
        return false;
    } else {
        return true;
    }
}

function emailChk(obj) {
    var re = /[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?/g;
    re.exec(obj.val());
    if(re.lastIndex < 1 ) {
        return false;
    } else {
        return true
    }
}

function isSame(obj1, obj2) {
    if (obj1.val() === obj2.val()) {
        return true;
    } else {
        return false;
    }
}


function doSubmit(obj) {
    //미입력 검증
    if(JMLib.isEmpty(obj.find("#userNm"), "이름을 입력해주세요. ")) return false;
    if(JMLib.isEmpty(obj.find("#userId"), "ID를 입력해주세요. ")) return false;
    if(JMLib.isEmpty(obj.find("#userPwd"), "패스워드를 입력해주세요. ")) return false;
    if(JMLib.isEmpty(obj.find("#Email"), "이메일을 입력해주세요. ")) return false;
    
    //유효한 값을 입력했는지 검증
    if(JMLib.isinValid(idChk($("#userId")), "ID가 유효하지 않습니다. ")) return false;
    if(JMLib.isinValid(pwdChk($("#userPwd")), "패스워드가 유효하지 않습니다. ")) return false;
    if(JMLib.isinValid(isSame($("#userPwd"), $("#chkPassword")), "패스워드가 같지 않습니다. ")) return false;
    if(JMLib.isinValid(emailChk($("#Email")), "이메일이 유효하지 않습니다. ")) return false;

    //ID중복확인
    var value = obj.find("#userId").val();

    JMLib.Ajax("userId="+value, "/CM002_ID.do", function(data) {
        if(!data) {
            JMLib.JMalert("중복된 ID입니다. ");
            $("#userPwd").val('');
            $("#chkPwd").val('');
            return false;
        } else {
            //전송
            var form = $("form");
            form.attr("action", getContextPath() + "/CM002_SAVE.do")
            form.attr("method", "post");
            form.submit();
                }
            });
}