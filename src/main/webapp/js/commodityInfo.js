		function read() {
		    var chk = document.getElementById("read");
		    var border1 = document.getElementById("security-service-div");
		    if (chk.checked) {
		        border1.style.borderColor = "#008b8b";
		        document.getElementById("accident-service").innerHTML = "意外保障服务  59元";
		        changeTotalPrice(59);
		        display();
		    } else {
		        border1.style.borderColor = "#b0b0b0";
		        document.getElementById("accident-service").innerHTML = "";
		        changeTotalPrice(0);
		        display();
		    }
		}

		function $(id) {
		    return document.getElementById(id);
		}

		// 默认选择第一个版本
		init();

		function init() {
		    $("version-li").innerHTML = $("version1").innerHTML + " " + $("colorText1").innerHTML;
		    // alert($("version-li").innerHTML);
		    var versionLi = $("version-li").innerHTML.split(" ");
		    $("price-top").innerHTML = versionLi[versionLi.length - 2];
		    document.getElementById("totalPrice").innerHTML = "总计：" + versionLi[versionLi.length - 2];
		}

		function getVersion(i) {
		    return $("version" + i);
		}

		function getColor(i) {
		    return document.getElementById("color" + i);
		}

		var colorNum = $("color-div").getElementsByTagName("button").length;

		var color = new Array();
		for (var i = 1; i <= colorNum; i++) { //颜色数量4
		    color[i] = getColor(i);
		}

		var colorText = new Array();
		for (var i = 1; i <= colorNum; i++) { //颜色数量4
		    colorText[i] = getColor("Text" + i);
		}

		var totalVersion = document.getElementById("sel-version").getElementsByTagName("button").length; //版本数量

		var version = new Array();
		for (var i = 1; i <= totalVersion; i++) { //版本数量3
		    version[i] = getVersion(i);
		}

		function removeColor() {
		    for (var i = 1; i <= colorNum; i++) { //颜色数量4
		        color[i].removeAttribute("style");
		    }
		}

		function remove(i) {
		    for (var j = 1; j <= totalVersion; j++) { //版本数量3
		        if (i == j) {
		            for (var k = 1; k <= totalVersion; k++) { //版本数量3
		                if (k != i) {
		                    version[k].removeAttribute("style");
		                }
		            }
		            version[1].style.borderColor = "#b0b0b0";
		            removeColor();
		        }
		    }
		}

		function clearCheckbox() {
		    var as = document.getElementById("accident-service");
		    as.innerHTML = "";
		    var chk = document.getElementById("read");
		    var border = document.getElementById("security-service-div");
		    if (chk.checked) {
		        chk.checked = "";
		        border.style.borderColor = "#b0b0b0";
		    }
		}

		checkState(1);

		function checkState(i) {
		    var state = document.getElementById("state");
		    for (var j = 1; j <= totalVersion; j++) { //版本数量3
		        if (state.innerHTML == "有现货") {
		            if (i == j) {
		                version[j].style.border = '1px solid #008b8b';
		                color[1].style.border = '1px solid #008b8b';
		            }
		        }
		        if (state.innerHTML == "该地区暂时缺货") {
		            if (i == j) {
		                version[j].style.border = '1px dashed #008b8b';
		                color[1].style.border = '1px dashed #008b8b';
		            }
		        }
		    }
		}

		judgeVersionAcount();

        function judgeVersionAcount() {
            if (totalVersion > 3) {
                for (var i = 4; i <= totalVersion; i++) {
                    if (i % 2 == 0) { //偶数
                        version[i].style.marginTop = '10px';
                        version[i].style.width = '260px';
                        version[i].style.height = '50px';
                    } else {
                        version[i].style.marginTop = '10px';
                        version[i].style.marginLeft = '0';
                        version[i].style.width = '260px';
                        version[i].style.height = '50px';
                    }
                }
            }
        }

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

		function removeColorStyle(i) {
		    for (var j = 1; j <= colorNum; j++) { //这里的4是颜色的数量
		        if (i == j) {
		            for (var k = 1; k <= colorNum; k++) {
		                if (k != j) {
		                    color[k].removeAttribute("style");
		                }
		            }
		        }
		        if (i != 1) {
		            color[1].style.borderColor = "#b0b0b0";
		        }
		    }
		}

		judgeColorAcount();

        function judgeColorAcount() {
            if (colorNum > 4) {
                for (var i = 5; i <= colorNum; i++) {
                    if (i % 2 == 0) { //偶数
                        color[i].style.marginTop = '10px';
                        color[i].style.width = '260px';
                        color[i].style.height = '50px';
                    } else {
                        color[i].style.marginTop = '10px';
                        color[i].style.marginLeft = '0';
                        color[i].style.width = '260px';
                        color[i].style.height = '50px';
                    }
                }
            }
        }


        function changeColor(i, imgName) {
		    display();
		    var mess = document.getElementById("version-li");
		    var sp = mess.innerHTML.split(" ");
		    var state = document.getElementById("state");
		    var img = document.getElementById("commodity-img");
		    for (var j = 1; j <= colorNum; j++) {
		        if (state.innerHTML == "有现货") {
		            if (i == j) {
		                color[j].style.border = '1px solid #008b8b';
		                removeColorStyle(j);
		                img.src = imgName;
		                mess.innerHTML = sp[0] + " " + sp[1] + " " + colorText[j].innerHTML;
		            }
		            judgeColorAcount();
		        }
		        if (state.innerHTML == "该地区暂时缺货") {
		            judgeColorAcount();
		            if (i == j) {
		                color[j].style.border = '1px dashed #008b8b';
		                removeColorStyle(j);
		                img.src = imgName;
		                mess.innerHTML = sp[0] + " " + sp[1] + " " + colorText[j].innerHTML;
		            }
		            judgeColorAcount();
		        }
		    }
		}

		function changeTotalPrice(i) {
		    var mess = document.getElementById("version-li");
		    var sp = mess.innerHTML.split(" ");
		    var price = sp[sp.length - 2];
		    if (i == 0) {
		        document.getElementById("price-top").innerHTML = price;
		        document.getElementById("totalPrice").innerHTML = "总计：" + price;
		    }
		    if (i == 59) {
		        var total = parseInt(price.split("元")) + 59;
		        document.getElementById("totalPrice").innerHTML = "总计：" + total + "元";
		    }
		}

		changeState();

		function changeState() {
		    var state = document.getElementById("state");
		    var buyBtn = document.getElementById("buy-btn");
		    if (state.innerHTML == "该地区暂时缺货") {
		        buyBtn.disabled = true;
		    }
		    if (state.innerHTML == "有现货") {
		        buyBtn.disabled = false;
		    }
		}

		display();

		function display() {
		    var mess = document.getElementById("version-li");
		    var sp = mess.innerHTML.split(" ");
		    var price = document.getElementById("totalPrice").innerHTML.split("：")[1];
		    document.getElementById("goodsPrice").value = price;
		    document.getElementById("goodsColor").value = sp[2];
		    var rom = sp[0].split("+")[0];
		    var ram = sp[0].split("+")[1];
		    document.getElementById("goodsVersionRom").value = rom;
		    document.getElementById("goodsVersionRam").value = ram;
		}