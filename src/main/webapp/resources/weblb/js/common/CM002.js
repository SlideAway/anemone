$(function () {
    idTooltip($("#userId"));
});


function chkId(value) {
    //ID는 최소 5글자, 최대 12글자까지
    if(value.length < 5 || value.length > 13) {
        return false;
    } else {
        return true;
    }

}
function idTooltip(obj) {
    obj.attr("data-placement", "bottom");
    obj.attr("title", "ID는 최소 5글자, 최대 12글자입니다. ");
    obj.attr("data-trigger", "focus");
    obj.tooltip();
}

function chkPwd(value) {

}

function isSame(value) {
    var pwdCon = $("#password").val();
    if(value === pwdCon) {
        $("#result").text("Correct Password!");
        $("#result").attr("class", "text-primary");
    } else {
        $("#result").text("Wrong Password...");
        $("#result").attr("class", "text-danger");
    }
}

function doSubmit() {

}