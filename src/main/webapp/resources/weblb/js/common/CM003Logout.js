$(function () {
    setTimeout(goMain, 5000);
})

function goMain() {
    location.href = getContextPath();
}