function doView(seq) {
    if(seq == undefined) {
        return false;
    }
    location.href = getContextPath() + "/CT001_DETAIL.do?contentSeq="+seq;
}
function goPage(num) {
    console.log(num);
}
function goNext(num) {

}
function goPre(num) {

}
function goInsert() {
    location.href = getContextPath() + "/CT001_INS.do";
}