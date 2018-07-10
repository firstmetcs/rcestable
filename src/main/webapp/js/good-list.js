function changeVersion(j) {
    clearCheckbox();
    var mess = document.getElementById("version-li");
    var state = document.getElementById("state");
    for (var k = 1; k <= totalVersion; k++) { //版本数量3
        if (state.innerHTML == "有现货") {
            if (j == k) {
                version[k].style.border = '1px solid #008b8b';
                remove(k);
                checkState(k);
                mess.innerHTML = version[k].innerHTML + " " + colorText[1].innerHTML;
            }
            judgeVersionAcount();
            judgeColorAcount();
        }
        if (state.innerHTML == "该地区暂时缺货") {
            if (j == k) {
                version[k].style.border = '1px dashed #008b8b';
                remove(k);
                checkState(k);
                mess.innerHTML = version[k].innerHTML + " " + colorText[1].innerHTML;
            }
            judgeVersionAcount();
            judgeColorAcount();
        }
    }
    changeTotalPrice(0);
    display();
}