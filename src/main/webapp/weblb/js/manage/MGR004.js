function doEdit(obj) {

}

function doSave() {

}

function doAdd() {
}


function allCheck(obj){
    if(obj.parent().find("input").is(":checked") == true) {
        $(".table").find("input").prop("checked", true);
    } else {
        $(".table").find("input").prop("checked", false);
    }

}