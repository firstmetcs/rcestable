function defaultAddr(obj) {
    // var divNum = $("div[name='addr']");
    // var index = divNum.length;
    var addrdiv = $("div[name='addr']");
    $(addrdiv).each(function () {
        $(this).removeAttr("style");
        $(this).removeClass("iniStyle");
    });
    $("#optionsRadios" + obj.id).prop("checked", true);
    // alert($('input[name="optionsRadios"]:checked').val(););
    obj.style.border = "1px solid red";
}


function getInfo() {
    // addrFlag+1是radio的value值
    alert($("input[name='optionsRadios']:checked").val() + " " + sendtimeFlag + " " + invoiceFlag);

    var param = {};
    param.addressid = $("input[name='optionsRadios']:checked").val();
    param.delivertype = 1;
    param.paytype = 1;
    param.deliverytime = 1;
    // param.orderremarks = $("#orderremarks").val();

    $.ajax({
        type: "POST",
        url: "/rcestore/order/submit",
        data: param,
        dataType: "json",
        async: true,
        success: function (data) {
            window.location.href = "/rcestore/order/success";
        },
        error: function (data) {
            alert("提交订单失败");
        }
    });


}


//送货时间样式
var send_time1 = $("#send-time1");
var send_time2 = $("#send-time2");
var send_time3 = $("#send-time3");

//发票种类样式
var e_invoice = $("#electric-invoice");
var p_invoice = $("#paper-invoice");

var invoiceFlag = 1;
var sendtimeFlag = 1;

function changeStyle() {
    //发票种类选择
    if (e_invoice.html() == event.target.innerHTML) {
        e_invoice.css("border", "1px solid red");
        p_invoice.css("border", "1px solid #CFCFCF");
        // getInvoiceinfo =  $("input[name='invoiceinfo']").val(event.target.innerHTML);
        getInvoiceinfo = event.target.innerHTML;
        invoiceFlag = 1;
    }
    if (p_invoice.html() == event.target.innerHTML) {
        p_invoice.css("border", "1px solid red");
        e_invoice.css("border", "1px solid #CFCFCF");
        // getInvoiceinfo =  $("input[name='invoiceinfo']").val(event.target.innerHTML);
        getInvoiceinfo = event.target.innerHTML;
        invoiceFlag = 2;
    }
    //送货时间选择
    if (send_time1.html() == event.target.innerHTML) {
        send_time1.css("border", "1px solid red");
        send_time2.css("border", "1px solid #CFCFCF");
        send_time3.css("border", "1px solid #CFCFCF");
        // getSendtime = $("input[name='sendtime']").val(event.target.innerHTML);
        getSendtime = event.target.innerHTML;
        sendtimeFlag = 1;
    }
    if (send_time2.html() == event.target.innerHTML) {
        send_time2.css("border", "1px solid red");
        send_time1.css("border", "1px solid #CFCFCF");
        send_time3.css("border", "1px solid #CFCFCF");
        // getSendtime = $("input[name='sendtime']").val(event.target.innerHTML);
        getSendtime = event.target.innerHTML;
        sendtimeFlag = 2;
        // alert(sendtimeFlag);
    }
    if (send_time3.html() == event.target.innerHTML) {
        send_time3.css("border", "1px solid red");
        send_time1.css("border", "1px solid #CFCFCF");
        send_time2.css("border", "1px solid #CFCFCF");
        // getSendtime = $("input[name='sendtime']").val(event.target.innerHTML);
        getSendtime = event.target.innerHTML;
        sendtimeFlag = 3;
    }
}