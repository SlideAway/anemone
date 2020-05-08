function doFind(obj) {
    var sendData = {
        "userNm" : obj.find("#userNm").val(),
        "email" : obj.find("#email").val()
    };
    JMLib.Ajax(sendData, "/CM003_doFINDID.do", function (data) {
        if(data.success) {
            JMLib.JMinfo("고객님의 ID는 " + data.result + "입니다. ");
        } else {
            JMLib.JMalert(data.msg);
        }
    })
}