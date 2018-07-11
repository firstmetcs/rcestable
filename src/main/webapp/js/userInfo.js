function Mouseover(obj) {
    obj.style.color = "white";
}

var addrCount;
var count = $("#receive-addr tbody tr").length;

changeCount();

// 修改已保存的地址数和剩余的地址数
function changeCount() {
    addrCount = $("#receive-addr tbody tr").length;
    $("#saved-address span").html(addrCount);
    var leftCount = $("#leftover").html(10 - addrCount);
}


var rowIndex;
var username;
var detail_addr;
var zipcode;
var phone;

// 获得当前行的数据
function getData() {
    rowIndex = event.target.parentNode.parentNode.rowIndex;
    username = $("#username" + rowIndex);
    detail_addr = $("#detail-addr" + rowIndex);
    zipcode = $("#zipcode" + rowIndex);
    phone = $("#phone" + rowIndex);
}

var new_username;
var new_detail_addr;
var new_zipcode;
var new_phone;

// 获得模态框中的数据
function getModalData() {
    var province = $("#provinceid").find("option:selected").text();
    var city = $("#cityid").find("option:selected").text();
    var county = $("#areaid").find("option:selected").text();

    new_detail_addr = province + city + county + $("#address").val();
    new_username = $("#username").val();
    new_zipcode = $("#postcode").val();
    new_phone = $("#userphone").val();

}

// function changeModalData(){
//     $("#provinceid").find("option:selected").text(username);
//     $("#cityid").find("option:selected").text();
// }

// 修改表格中的数据
function changeData() {
    if (new_username != "") {
        username.html(new_username);
    }
    if (new_detail_addr != "") {
        detail_addr.html(new_detail_addr);
    }
    if (new_zipcode != "") {
        zipcode.html(new_zipcode);
    }
    if (new_phone != "") {
        phone.html(new_phone);
    }

}

$("#save-btn-modal").click(function() {
    getModalData();
    changeData();
})


function getDefault(i) {
    return document.getElementById("toDefault" + i);
}

function swapRow() {
    //获取要交换的行号
    var row1 = document.getElementById("toDefault1").parentNode.parentNode.rowIndex;
    var id = event.target.id;
    var row2 = document.getElementById(id).parentNode.parentNode.rowIndex;
    var tr1 = document.getElementById("tr1");
    var tr2 = document.getElementById(id).parentNode.parentNode;
    for (var i = 1; i <= addrCount; i++) {
        if (i == row2) {
            var btn = document.getElementById(id);
            btn.innerHTML = "默认地址";
            btn.disabled = "disabled";
        } else if (getDefault(i).innerHTML == "默认地址") {
            getDefault(i).innerHTML = "设为默认";
            getDefault(i).removeAttribute("disabled");
        }
    }
}

var add_provin;
var add_city;
var add_county;
var add_detail_addr;
var add_zipcode;
var add_receiver_name;
var add_phone;
var add_mobile;

// 获得新增地址模块的数据
function getAddr() {
    add_provin = $("#provinceidAdd").find("option:selected").text();
    add_city = $("#cityidAdd").find("option:selected").text();
    add_county = $("#areaidAdd").find("option:selected").text();
    add_detail_addr = add_provin + add_city + add_county + $("#addressAdd").val();
    add_zipcode = $("#postcodeAdd").val();
    add_receiver_name = $("#usernameAdd").val();
    add_phone = $("#usertelAdd").val();
    add_mobile = $("#userphoneAdd").val();
}

function addCurrentRow() {
    if (addrCount < 10) {
        getAddr();
        var index = addrCount + 1;
        var chkbox = $("#setDefaul");

        var usernameTd = $("<td></td>").attr("id", "username" + index).append(add_receiver_name);
        var detailTd = $("<td></td>").attr("id", "detail-addr" + index).append(add_detail_addr);
        var zipcodeTd = $("<td></td>").attr("id", "zipcode" + index).append(add_zipcode);
        var phoneTd = $("<td></td>").attr("id", "phone" + index).append(add_phone);
        var editTd = $("<a href='javascript:;' class='md-trigger btn-md' onclick='getData()' data-toggle='modal' data-target='#myModal'>修改</a>")
        // var editTd = $("<a></a>").attr("href", "javascript:;").addClass("md-trigger btn-md").attr("data-modal", "modal-1").attr("onclick", "getData()").append("修改");
        var seprateLine = " &nbsp;| &nbsp;&nbsp;";
        var delTd = $("<a class='del'></a>").attr("href", "javascript:;").attr("onclick", "deleteCurrentRow(this)").append("删除");
        // var delTd = $("<a class='del'></a>").attr("href", "javascript:;").append("删除");
        var operateTd = $("<td></td>").append(editTd).append(seprateLine).append(delTd);
        var defaultBtn = $("<td></td>").addClass("btn btn-primary btn-xs set-default").attr("id", "toDefault" + index).attr("onclick", "swapRow()").append("设为默认");
        var defaultTd = $("<td></td>").append(defaultBtn);
        var tr = $("<tr></tr>").addClass("active").attr("id", "tr" + index).append(usernameTd).append(detailTd).append(zipcodeTd).append(phoneTd).append(operateTd).append(defaultTd);
        // var trcomp="<tr><td><input type='file' name='imageFile'/></td><td><input name='imageName'></input></td><td><input name='note' /></td><td><a href='javascript:;' onclick='deleteCurrentRow(this);'><font color='red'>删除</font></a></td></tr>";
        
        if (addrCount >= 0) {
            $("#receive-addr tbody tr:last-child").after(tr);
        }
        
        changeCount();

        for (var i = 1; i <= addrCount; i++) {
            if (getDefault(i).innerHTML == "默认地址") {
                getDefault(i).innerHTML = "设为默认";
                getDefault(i).removeAttribute("disabled");
            }
            if (chkbox.is(':checked')) {
                $("#toDefault" + index).html("默认地址");
                $("#toDefault" + index).attr("disabled", "disabled");
            }

        }
        chkbox.attr("checked", false);
    }
}

function deleteCurrentRow(obj) {
    var isDelete = confirm("真的要删除吗？");
    if (isDelete) {
        var tr = obj.parentNode.parentNode;
        var tbody = tr.parentNode;
        tbody.removeChild(tr);
        changeCount();
    }
}