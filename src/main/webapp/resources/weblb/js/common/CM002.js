$(function () {
    idTooltip($("#userId"));
    pwTooltip($("#password"));
});


function idChk(value) {
    //ID는 최소 5글자, 최대 12글자까지
    if(value.length > 5 && value.length < 13) {
        $("#chkId").text("사용할 수 있는 ID입니다. ");
        $("#chkId").attr("class", "text-primary");
    } else {
        $("#chkId").text("ID는 최소 5글자, 최대 12글자이어야 합니다. ");
        $("#chkId").attr("class", "text-danger");
    }

}

function pwdChk(value) {
    //PW는 최소 8글자, 최대 20글자
    //영대소문자, 숫자, 특수문자 포함
    var pwdReg = /^(?=.*\d)(?=.*[A-Z])(?=.*[a-z])(?=.*[^\w\d\s:])([^\s]){8,20}$/g
    var arr = pwdReg.exec(value);
     if(arr != null) {
         $("#chkPwd").text("Valid Password!");
         $("#chkPwd").attr("class", "text-primary");
     } else {
         $("#chkPwd").text("Invalid Password...");
         $("#chkPwd").attr("class", "text-danger");
     }

}

function isSame(value) {
    var pwdCon = $("#password").val();
    if(value === pwdCon) {
        $("#chkConf").text("Correct Password!");
        $("#chkConf").attr("class", "text-primary");
    } else {
        $("#chkConf").text("Wrong Password...");
        $("#chkConf").attr("class", "text-danger");
    }
}

function mailChk(value) {

}

function idTooltip(obj) {
    obj.attr("data-placement", "bottom");
    obj.attr("title", "ID는 최소 5글자, 최대 12글자입니다. ");
    obj.attr("data-trigger", "focus");
    obj.tooltip();
}
function pwTooltip(obj) {
    obj.attr("data-placement", "bottom");
    obj.attr("title", "패스워드는 최소 8글자, 최대 20글자 입니다. ");
    obj.attr("data-trigger", "focus");
    obj.tooltip();
}

function doSubmit() {

}
