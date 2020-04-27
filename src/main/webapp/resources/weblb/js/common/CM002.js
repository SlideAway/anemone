$(function () {
    idTooltip($("#userId"));
    nickTooltip($("#nickname"));
    pwTooltip($("#userPwd"));
});



function idTooltip(obj) {
    obj.attr("data-placement", "bottom");
    obj.attr("title", "ID는 최소 5글자, 최대 12글자입니다. ");
    obj.attr("data-trigger", "focus");
    obj.tooltip();
}

function nickTooltip(obj) {
    obj.attr("data-placement", "bottom");
    obj.attr("title", "닉네임은 최대 10글자 입니다. ");
    obj.attr("data-trigger", "focus");
    obj.tooltip();
}

function pwTooltip(obj) {
    obj.attr("data-placement", "bottom");
    obj.attr("title", "PW는 영, 대소문자, 숫자, 특수문자 포함하여 최소 8글자, 최대 20글자 입니다. ");
    obj.attr("data-trigger", "focus");
    obj.tooltip();
}

function chkLength(value) {
    if(value.length> 10 || value.length <1) {
        $("#chkNick").attr("class", "text-danger");
        $("#chkNick").text("It's invalid Nickname...");
    } else {
        $("#chkNick").attr("class", "text-primary");
        $("#chkNick").text("It's valid Nickname!");
    }
}

function idChk(value) {
    //ID는 최소 5글자, 최대 12글자까지
    if (value.length > 5 && value.length < 13) {
        $("#chkId").attr("class", "text-primary");
        $("#chkId").text("It's valid ID!");
    } else {
        $("#chkId").attr("class", "text-danger");
        $("#chkId").text("It's invalid ID...")
    }

}

function pwdChk(value) {
    var re = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z])(?=.*[\W]).{8,20}$/gm;
    re.exec(value);
    if (re.lastIndex < 1) {
        $("#chkPw").attr("class", "text-danger");
        $("#chkPw").text("It's invalid password...");
    } else {
        $("#chkPw").attr("class", "text-primary");
        $("#chkPw").text("It's valid password!");
    }
}

function emailChk(value) {
    var re = /[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?/g;
    re.exec(value);
    if(re.lastIndex < 1 ) {
        $("#chkEmail").attr("class", "text-danger");
        $("#chkEmail").text("It's invalid Email...");
    } else {
        $("#chkEmail").attr("class", "text-primary");
        $("#chkEmail").text("It's valid Email!");
    }
}

function isSame(value) {
    var pwdCon = $("#userPwd").val();
    if (value === pwdCon) {
        $("#confPwd").text("Correct Password!");
        $("#confPwd").attr("class", "text-primary");
    } else {
        $("#confPwd").text("Wrong Password...");
        $("#confPwd").attr("class", "text-danger");
    }
}


function doSubmit(obj) {
    //미입력 검증
    if(JMLib.isEmpty(obj.find("#userNm"), "이름을 입력해주세요. ")) return false;
    if(JMLib.isEmpty(obj.find("#nickname"), "닉네임을 입력해주세요. ")) return false;
    if(JMLib.isEmpty(obj.find("#userId"), "ID를 입력해주세요. ")) return false;
    if(JMLib.isEmpty(obj.find("#userPwd"), "패스워드를 입력해주세요. ")) return false;
    if(JMLib.isEmpty(obj.find("#Email"), "이메일을 입력해주세요. ")) return false;
    
    //유효한 값을 입력했는지 검증
    if(JMLib.isinValid(obj.find("#chkNick"), "닉네임이 유효하지 않습니다. ")) return false;
    if(JMLib.isinValid(obj.find("#chkId"), "ID가 유효하지 않습니다. ")) return false;
    if(JMLib.isinValid(obj.find("#chkPw"), "패스워드가 유효하지 않습니다. ")) return false;
    if(JMLib.isinValid(obj.find("#confPwd"), "패스워드가 다릅니다. ")) return false;
    if(JMLib.isinValid(obj.find("#chkEmail"), "이메일이 유효하지 않습니다. ")) return false;

    //ID중복확인
    var value = obj.find("#userId").val();

    JMLib.Ajax("userId="+value, "/CM002_ID.do", function(data) {
        console.log(data);
        if(!data) {
            JMLib.JMalert("중복된 ID입니다. ");
            return false;
        } else {
            //닉네임 중복확인
            value = obj.find("#nickname").val();
            JMLib.Ajax("nickName="+value, "/CM002_NICK.do", function(data) {
                console.log(data);
                if(!data) {
                    JMLib.JMalert("중복된 닉네임입니다. ");
                    return false;
                } else {
                    //전송
                    var form = $("form");
                    $("#encPwd").val(CryptoJS.SHA1($("#userPwd").val()).toString());
                    $("#userPwd").val('');
                    $("#chkPwd").val('');
                    form.attr("action", getContextPath() + "/CM002_SAVE.do")
                    form.attr("method", "post");
                    form.submit();
                }
            });
        }
    });


}