JMLib = {
    isEmpty(obj, String) {
        if(obj.val() == null || obj.val() === '') {
            swal({
                title: "Error",
                text: String,
                icon: "error",
                button: "확인",
            });
            return true;
        }
    },
    isinValid(value, String) {
        if(value == false) {
            swal({
                title: "Error",
                text: String,
                icon: "error",
                button: "확인",
            });
            return true;
        }
    },
    Ajax(value, url, sucHandler, options) {
        var opt = {
            url : url,
            type : "POST",
            data : value,
            dataType : "",
            success : sucHandler,
            error : function (req, textStatus, errorThrown) {
                switch(req.status) {
                    case 503:
                        JMLib.JMalert("서버와 연결이 종료되었습니다. ", {
                            close : goMain
                        });
                        break;
                    case 401:
                        JMLib.JMalert("세션이 만료되었습니다. <br/> 다시 로그인해주십시오. ", {
                            close : goMain
                        });
                        break;
                    case 403:
                        JMLib.JMalert("요청하신 기능에 대한 접근 권한이 없습니다. ");
                    case 404:
                        JMLib.JMalert("잘못된 요청입니다. (code : 404)");
                    case 500:
                        JMLib.JMalert("오류가 발생했습니다. (code : 500)");
                    default:
                        JMLib.JMalert("오류가 발생했습니다. (code : " + req.status + ", status : " + textStatus + ")");
                }
            }
        }
        $.extend(opt, options);
        $.ajax(opt);
    },
    JMalert(String) {
        swal({
            title: "Error",
            text: String,
            icon: "error",
            button: "확인",
        });
    },
    JMinfo(String) {
        swal({
            title : "Success!",
            text : String,
            icon : "success",
            button : "확인"
        });
    }
}
function getContextPath() {
    var hostIndex = location.href.indexOf( location.host ) + location.host.length;
    return location.href.substring( hostIndex, location.href.indexOf('/', hostIndex + 1) );
}

function goBack() {
    location.href=getContextPath();
}