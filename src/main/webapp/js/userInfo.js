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
var addressid;

// 获得当前行的数据
function getData(addressidGet, proid, citid, areid) {
    addressid = addressidGet;
    alert(addressidGet + " " + proid + " " + citid + " " + areid);
    $("#provinceid").val(proid);
    getCity();
    $("#cityid").val(citid);
    getArea();
    $("#areaid").val(areid);
    $("#address").val($("#addressc" + addressidGet).text());
    $("#userphone").val($("#userphone" + addressidGet).text());
    $("#usernamec").val($("#username" + addressidGet).text());
    $("#postcode").val($("#postcode" + addressidGet).text());
}

// 修改表格中的数据
function changeData() {

    var param = {};

    param.addressid = addressid;
    param.provinceid = $("#provinceid").val();
    param.cityid = $("#cityid").val();
    param.areaid = $("#areaid").val();
    param.address = $("#address").val();
    param.userphone = $("#userphone").val();
    param.username = $("#usernamec").val();
    param.postcode = $("#postcode").val();
    $.ajax({
        type: "POST",
        data: param,
        dataType: "json",
        async: false,
        url: "/rcestore/address/update",
        success: function (data) {
            if (data == 1) {
                alert("success");
                $("#username" + addressid).html($("#usernamec").val());
                $("#addre" + addressid).html($("#provinceid").find("option:selected").text() + $("#cityid").find("option:selected").text() + $("#areaid").find("option:selected").text() + $("#address").val());
                $("#postcode" + addressid).html($("#postcode").val());
                $("#userphone" + addressid).html($("#userphone").val());
            }

        },
        error: function () {
            alert("失败");
        }
    });
}


function getDefault(i) {
    return document.getElementById("toDefault" + i);
}

function swapRow() {
    //获取要交换的行号
    var row1 = document.getElementById("toDefault1").parentNode.parentNode.rowIndex;
    var id = event.target.id;
    var row2 = document.getElementById(id).parentNode.parentNode.rowIndex;
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

        var provinceid = $("#provinceidAdd").find("option:selected").val();
        var cityid = $("#cityidAdd").find("option:selected").val();
        var areaid = $("#areaidAdd").find("option:selected").val();
        var address = $("#addressAdd").val();
        var postcode = $("#postcodeAdd").val();
        var username = $("#usernameAdd").val();
        var usertel = $("#usertelAdd").val();
        var userphone = $("#userphoneAdd").val();

        alert(provinceid);

        var param = {};
        param.provinceid = provinceid;
        param.cityid = cityid;
        param.areaid = areaid;
        param.address = address;
        param.postcode = postcode;
        param.username = username;
        param.usertel = usertel;
        param.userphone = userphone;
        $.ajax({
            type: "POST",
            data: param,
            dataType: "json",
            async: false,
            url: "/rcestore/address/add",
            success: function (data) {
                if (data != 0) {
                    alert("添加成功");
                    getAddr();
                    var index = addrCount + 1;
                    var chkbox = $("#setDefaul");

                    var usernameTd = $("<td></td>").attr("id", "username" + index).append(add_receiver_name);
                    var detailTd = $("<td></td>").attr("id", "detail-addr" + index).append(add_detail_addr);
                    var zipcodeTd = $("<td></td>").attr("id", "zipcode" + index).append(add_zipcode);
                    var phoneTd = $("<td></td>").attr("id", "phone" + index).append(add_mobile);
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
            },
            error: function () {
                alert("添加失败");
            }
        });
    }
}

function deleteCurrentRow(obj,add) {
    var isDelete = confirm("真的要删除吗？");
    if (isDelete) {

        var param = {};

        param.addressid = add;
        $.ajax({
            type: "POST",
            data: param,
            dataType: "json",
            async: false,
            url: "/rcestore/address/delete",
            success: function (data) {
                if (data == 1) {
                    var tr = obj.parentNode.parentNode;
                    var tbody = tr.parentNode;
                    tbody.removeChild(tr);
                    changeCount();
                }

            },
            error: function () {
                alert("失败");
            }
        });
    }
}