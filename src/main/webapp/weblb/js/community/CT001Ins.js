function doInsert() {
    if(JMLib.isEmpty($("#title"), "제목을 입력해주세요. ")) return false;
    if(JMLib.isEmpty($("#content"), "내용을 입력해주세요. ")) return false;

    $("form").attr("action", getContextPath() + "/CT001_SAVE.do");
    $("form").attr("method", "post");
    $("form").submit();
}

function goList() {
    location.href = getContextPath() + "/CT001.do"
}