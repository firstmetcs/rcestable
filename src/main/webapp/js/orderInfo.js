function showDIV(divID) {
    var v = document.getElementById(divID);
    if (v.style.display == "none") {
        v.style.display = "inline";
    }
}

function hiddenDIV(divID) {
    var d = document.getElementById(divID);
    if (divID != null && divID != "") {
        var vv = document.getElementById(divID);
        if (vv.style.display == "inline") {
            vv.style.display = "none";
        }
    }
}