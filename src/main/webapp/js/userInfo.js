function getDefault(i){
	return document.getElementById("toDefault"+i);
}

function swapRow(){
	//获取要交换的行号
	var row1 = document.getElementById("toDefault1").parentNode.parentNode.rowIndex;
	var id = event.target.id;
	var row2 = document.getElementById(id).parentNode.parentNode.rowIndex;
	var tr1 = document.getElementById("tr1");
	var tr2 = document.getElementById(id).parentNode.parentNode;
	//使用javascript写好的交换方法
	//tr1.swapNode(tr2);

	// var cloneTr = tr1.cloneNode(true); //交换位置,交换会失败,替换后,会少一行
	// tr2.parentNode.replaceChild(cloneTr, tr2); //???
	// tr1.parentNode.replaceChild(tr2, tr1);

	var t = document.getElementById("a").children.length;
	for (var i = 1; i <= t; i++) {
		if (i == row2) {
			var btn = document.getElementById(id);
			btn.innerHTML = "默认地址";
			btn.disabled = true;
		}else if(getDefault(i).innerHTML == "默认地址"){
			getDefault(i).innerHTML = "设为默认";
			getDefault(i).disabled = false;
		}
	}
}