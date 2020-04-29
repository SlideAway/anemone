function doView(seq) {
    location.href = getContextPath() + "/CT002_DETAIL.do?contentSeq="+seq;
}

function goInsert() {
    location.href = getContextPath() + "/CT002_INS.do"
}