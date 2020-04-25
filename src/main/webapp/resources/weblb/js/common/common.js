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
    isinValid(obj, String) {
        if(obj.attr("class") === "text-danger") {
            swal({
                title: "Error",
                text: String,
                icon: "error",
                button: "확인",
            });
            return true;
        }
    },
    Ajax(value, url) {
        $.ajax({
            url : url,
            type : "post",
            data : value,
            success:function (data) {
                return data;
            }, error:function (status) {
                return status;
            }
        })
    },
    JMalert(String) {
        swal({
            title: "Error",
            text: String,
            icon: "error",
            button: "확인",
        });
    }
}