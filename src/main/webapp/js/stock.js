function changeGoodsName(goodsType) {
    var goodsNames = new Array();

    if (goodsType == "小米") {
        goodsNames = ['小米8', '红米Note5', '小米6X'];
    }
    else if (goodsType == "vivo") {
        goodsNames = ['vivoY85', 'vivo NEX旗舰版', 'vivoX20'];
    }
    else if (goodsType == "oppo") {
        goodsNames = ['oppo R15', 'oppo A3', 'oppo R11s'];
    }
    else if (goodsType == "华为") {
        goodsNames = ['HUAWEI P20', 'HUAWEI P20  Pro', 'HUAWEI nova 3e', 'HUAWEI Mate 10'];

    }
    else if (goodsType == "荣耀") {
        goodsNames = ['荣耀Play', '荣耀10', '荣耀V10'];
    }
    else {
        goodsNames = ['魅蓝E3', '魅族15Plus', '魅族M15', '魅族15'];
    }


    for (var i = 0; i < goodsNames.length; i++) {
        $("#goodsName").append('<option value="' + goodsNames[i] + '">' + goodsNames[i] + '</option>');
    }

}

function changeGoodsInfo(goodsType, goodsName) {
    var goodsRoms = new Array();
    var goodsRams = new Array();
    var goodsColor = new Array();
    var goodsSize = new Array();

    if (goodsType == "小米") {
        if (goodsName == "小米8") {
            goodsRoms = ['6G', '128G'];
            goodsRams = ['64G', '128G', '256G'];
            goodsColor = ['黑色', '白色', '蓝色'];
            goodsSize = ['6.1英寸'];
        } else if (goodsName == "红米Note5") {
            goodsRoms = ['3G', '4G', '6G'];
            goodsRams = ['32G', '64G'];
            goodsColor = ['黑色', '魔力蓝', '玫瑰金', '金色'];
            goodsSize = ['5.8英寸'];
        } else if (goodsName == "小米6X") {
            goodsRoms = ['3G', '4G', '6G'];
            goodsRams = ['32G', '64G'];
            goodsColor = ['黑色', '魔力蓝', '玫瑰金', '金色'];
            goodsSize = ['5.8英寸'];
        }
    } else if (goodsType == "vivo") {
        if (goodsName == "vivoY85") {
            goodsRoms = ['4G'];
            goodsRams = ['32G', '64G'];
            goodsColor = ['黑色', '红色', '香槟金'];
            goodsSize = ['5.8英寸'];
        } else if (goodsName == "vivo NEX旗舰版") {
            goodsRoms = ['6G', '8G'];
            goodsRams = ['128G', '256G'];
            goodsColor = ['宝石红', '钻石黑'];
            goodsSize = ['6.28英寸'];
        } else if (goodsName == "vivoX20") {
            goodsRoms = ['4G', '6G'];
            goodsRams = ['64G'];
            goodsColor = ['玫瑰金', '磨砂黑', 'vivo蓝', '星耀红'];
            goodsSize = ['6.1英寸'];
        }
    } else if (goodsType == "oppo") {
        if (goodsName == "oppo R15") {
            goodsRoms = ['4G', '6G'];
            goodsRams = ['128G'];
            goodsColor = ['星空紫', '陶瓷黑', '雪盈白', '梦境红'];
            goodsSize = ['6.28英寸]'];
        } else if (goodsName == "oppo A3") {
            goodsRoms = ['4G'];
            goodsRams = ['64G', '128G'];
            goodsColor = ['石榴红', '骑士黑', '星尘银', '豆蔻粉'];
            goodsSize = ['6.2英寸'];
        } else if (goodsName == "oppo R11s") {
            goodsRoms = ['4G', '6G'];
            goodsRams = ['64G', '128G'];
            goodsColor = ['香槟金', '摩卡金', '亮黑色', '樱粉金'];
            goodsSize = ['5.9英寸'];
        }
    } else if (goodsType == "华为") {
        if (goodsName == "HUAWEI P20") {
            goodsRoms = ['4G', '6G'];
            goodsRams = ['128G'];
            goodsColor = ['星空紫', '陶瓷黑', '雪盈白', '梦境红'];
            goodsSize = ['6.28英寸]'];
        } else if (goodsName == "HUAWEI P20  Pro") {
            goodsRoms = ['4G'];
            goodsRams = ['64G', '128G'];
            goodsColor = ['石榴红', '骑士黑', '星尘银', '豆蔻粉'];
            goodsSize = ['6.2英寸'];
        } else if (goodsName == "HUAWEI nova 3e") {
            goodsRoms = ['4G', '6G'];
            goodsRams = ['64G', '128G'];
            goodsColor = ['香槟金', '摩卡金', '亮黑色', '樱粉金'];
            goodsSize = ['5.9英寸'];
        } else if (goodsName == "HUAWEI Mate 10") {
            goodsRoms = ['4G', '6G'];
            goodsRams = ['64G', '128G'];
            goodsColor = ['香槟金', '摩卡金', '亮黑色', '樱粉金'];
            goodsSize = ['5.9英寸'];
        }
    } else if (goodsType == "荣耀") {
        if (goodsName == "荣耀Play") {
            goodsRoms = ['4G', '6G'];
            goodsRams = ['64G'];
            goodsColor = ['幻夜黑', '极光蓝', '星云紫'];
            goodsSize = ['6.3英寸]'];
        } else if (goodsName == "荣耀10") {
            goodsRoms = ['6G'];
            goodsRams = ['64G', '128G'];
            goodsColor = ['幻影紫', '幻影蓝', '幻夜黑', '海鸥灰'];
            goodsSize = ['5.84英寸'];
        } else if (goodsName == "荣耀V10") {
            goodsRoms = ['4G'];
            goodsRams = ['64G', '128G'];
            goodsColor = ['沙滩金', '极光蓝', '幻夜黑', '魅力红'];
            goodsSize = ['5.99英寸'];
        }
    } else if (goodsType == "魅族") {
        if (goodsName == "魅蓝E3") {
            goodsRoms = ['4G', '6G'];
            goodsRams = ['64G'];
            goodsColor = ['丹青', '曜石黑', 'J-20定制', '香槟金'];
            goodsSize = ['5.99英寸]'];
        } else if (goodsName == "魅族15Plus") {
            goodsRoms = ['6G'];
            goodsRams = ['64G', '128G'];
            goodsColor = ['玄武灰', '砚墨', '雅金'];
            goodsSize = ['5.95英寸'];
        } else if (goodsName == "魅族M15") {
            goodsRoms = ['4G'];
            goodsRams = ['64G', '128G'];
            goodsColor = ['曜岩黑', '砂砾金', '朱雀红'];
            goodsSize = ['5.46英寸'];
        } else if (goodsName == "魅族15") {
            goodsRoms = ['4G'];
            goodsRams = ['64G', '128G'];
            goodsColor = ['雅金', '砚墨', '黛蓝', '汝窑白'];
            goodsSize = ['5.46英寸'];
        }
    }

    for (var i = 0; i < goodsRoms.length; i++) {
        $("#goodsRom").append('<option value="' + goodsRoms[i] + '">' + goodsRoms[i] + '</option>');
    }
    for (var i = 0; i < goodsRams.length; i++) {
        $("#goodsRam").append('<option value="' + goodsRams[i] + '">' + goodsRams[i] + '</option>');
    }
    for (var i = 0; i < goodsColor.length; i++) {
        $("#goodsColor").append('<option value="' + goodsColor[i] + '">' + goodsColor[i] + '</option>');
    }
    for (var i = 0; i < goodsSize.length; i++) {
        $("#goodsSize").append('<option value="' + goodsSize[i] + '">' + goodsSize[i] + '</option>');
    }

}

function clearn(name) {
    var ctr = document.getElementById(name);
    for (var i = 0; i < ctr.options.length;) {
        ctr.removeChild(ctr.options[i]);
    }
}