/*
 Navicat Premium Data Transfer

 Source Server         : AliyunJSP
 Source Server Type    : MySQL
 Source Server Version : 50716
 Source Host           : 47.95.119.102:3306
 Source Schema         : rce_store

 Target Server Type    : MySQL
 Target Server Version : 50716
 File Encoding         : 65001

 Date: 13/07/2018 18:05:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for city
-- ----------------------------
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `pid`(`pid`) USING BTREE,
  CONSTRAINT `city_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `city` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 3529 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of city
-- ----------------------------
INSERT INTO `city` VALUES (1, '北京', NULL);
INSERT INTO `city` VALUES (2, '北京市', 1);
INSERT INTO `city` VALUES (3, '东城区', 2);
INSERT INTO `city` VALUES (4, '西城区', 2);
INSERT INTO `city` VALUES (5, '崇文区', 2);
INSERT INTO `city` VALUES (6, '宣武区', 2);
INSERT INTO `city` VALUES (7, '朝阳区', 2);
INSERT INTO `city` VALUES (8, '丰台区', 2);
INSERT INTO `city` VALUES (9, '石景山区', 2);
INSERT INTO `city` VALUES (10, '海淀区', 2);
INSERT INTO `city` VALUES (11, '门头沟区', 2);
INSERT INTO `city` VALUES (12, '房山区', 2);
INSERT INTO `city` VALUES (13, '通州区', 2);
INSERT INTO `city` VALUES (14, '顺义区', 2);
INSERT INTO `city` VALUES (15, '昌平区', 2);
INSERT INTO `city` VALUES (16, '大兴区', 2);
INSERT INTO `city` VALUES (17, '怀柔区', 2);
INSERT INTO `city` VALUES (18, '平谷区', 2);
INSERT INTO `city` VALUES (19, '密云县', 2);
INSERT INTO `city` VALUES (20, '延庆县', 2);
INSERT INTO `city` VALUES (21, '上海', NULL);
INSERT INTO `city` VALUES (22, '上海市', 21);
INSERT INTO `city` VALUES (23, '黄浦区', 22);
INSERT INTO `city` VALUES (24, '卢湾区', 22);
INSERT INTO `city` VALUES (25, '徐汇区', 22);
INSERT INTO `city` VALUES (26, '长宁区', 22);
INSERT INTO `city` VALUES (27, '静安区', 22);
INSERT INTO `city` VALUES (28, '普陀区', 22);
INSERT INTO `city` VALUES (29, '闸北区', 22);
INSERT INTO `city` VALUES (30, '虹口区', 22);
INSERT INTO `city` VALUES (31, '杨浦区', 22);
INSERT INTO `city` VALUES (32, '闵行区', 22);
INSERT INTO `city` VALUES (33, '宝山区', 22);
INSERT INTO `city` VALUES (34, '嘉定区', 22);
INSERT INTO `city` VALUES (35, '浦东新区', 22);
INSERT INTO `city` VALUES (36, '金山区', 22);
INSERT INTO `city` VALUES (37, '松江区', 22);
INSERT INTO `city` VALUES (38, '青浦区', 22);
INSERT INTO `city` VALUES (39, '南汇区', 22);
INSERT INTO `city` VALUES (40, '奉贤区', 22);
INSERT INTO `city` VALUES (41, '崇明县', 22);
INSERT INTO `city` VALUES (42, '天津', NULL);
INSERT INTO `city` VALUES (43, '天津市', 42);
INSERT INTO `city` VALUES (44, '和平区', 43);
INSERT INTO `city` VALUES (45, '河东区', 43);
INSERT INTO `city` VALUES (46, '河西区', 43);
INSERT INTO `city` VALUES (47, '南开区', 43);
INSERT INTO `city` VALUES (48, '河北区', 43);
INSERT INTO `city` VALUES (49, '红桥区', 43);
INSERT INTO `city` VALUES (50, '塘沽区', 43);
INSERT INTO `city` VALUES (51, '汉沽区', 43);
INSERT INTO `city` VALUES (52, '大港区', 43);
INSERT INTO `city` VALUES (53, '东丽区', 43);
INSERT INTO `city` VALUES (54, '西青区', 43);
INSERT INTO `city` VALUES (55, '津南区', 43);
INSERT INTO `city` VALUES (56, '北辰区', 43);
INSERT INTO `city` VALUES (57, '武清区', 43);
INSERT INTO `city` VALUES (58, '宝坻区', 43);
INSERT INTO `city` VALUES (59, '宁河县', 43);
INSERT INTO `city` VALUES (60, '静海县', 43);
INSERT INTO `city` VALUES (61, '蓟县', 43);
INSERT INTO `city` VALUES (62, '重庆', NULL);
INSERT INTO `city` VALUES (63, '重庆市', 62);
INSERT INTO `city` VALUES (64, '万州区', 63);
INSERT INTO `city` VALUES (65, '涪陵区', 63);
INSERT INTO `city` VALUES (66, '渝中区', 63);
INSERT INTO `city` VALUES (67, '大渡口区', 63);
INSERT INTO `city` VALUES (68, '江北区', 63);
INSERT INTO `city` VALUES (69, '沙坪坝区', 63);
INSERT INTO `city` VALUES (70, '九龙坡区', 63);
INSERT INTO `city` VALUES (71, '南岸区', 63);
INSERT INTO `city` VALUES (72, '北碚区', 63);
INSERT INTO `city` VALUES (73, '万盛区', 63);
INSERT INTO `city` VALUES (74, '双桥区', 63);
INSERT INTO `city` VALUES (75, '渝北区', 63);
INSERT INTO `city` VALUES (76, '巴南区', 63);
INSERT INTO `city` VALUES (77, '黔江区', 63);
INSERT INTO `city` VALUES (78, '长寿区', 63);
INSERT INTO `city` VALUES (79, '綦江县', 63);
INSERT INTO `city` VALUES (80, '潼南县', 63);
INSERT INTO `city` VALUES (81, '铜梁县', 63);
INSERT INTO `city` VALUES (82, '大足县', 63);
INSERT INTO `city` VALUES (83, '荣昌县', 63);
INSERT INTO `city` VALUES (84, '璧山县', 63);
INSERT INTO `city` VALUES (85, '梁平县', 63);
INSERT INTO `city` VALUES (86, '城口县', 63);
INSERT INTO `city` VALUES (87, '丰都县', 63);
INSERT INTO `city` VALUES (88, '垫江县', 63);
INSERT INTO `city` VALUES (89, '武隆县', 63);
INSERT INTO `city` VALUES (90, '忠　县', 63);
INSERT INTO `city` VALUES (91, '开县', 63);
INSERT INTO `city` VALUES (92, '云阳县', 63);
INSERT INTO `city` VALUES (93, '奉节县', 63);
INSERT INTO `city` VALUES (94, '巫山县', 63);
INSERT INTO `city` VALUES (95, '巫溪县', 63);
INSERT INTO `city` VALUES (96, '石柱土家族自治县', 63);
INSERT INTO `city` VALUES (97, '秀山土家族苗族自治县', 63);
INSERT INTO `city` VALUES (98, '酉阳土家族苗族自治县', 63);
INSERT INTO `city` VALUES (99, '彭水苗族土家族自治县', 63);
INSERT INTO `city` VALUES (100, '江津市', 63);
INSERT INTO `city` VALUES (101, '合川市', 63);
INSERT INTO `city` VALUES (102, '永川市', 63);
INSERT INTO `city` VALUES (103, '南川市', 63);
INSERT INTO `city` VALUES (104, '四川省', NULL);
INSERT INTO `city` VALUES (105, '成都市', 104);
INSERT INTO `city` VALUES (106, '市辖区', 105);
INSERT INTO `city` VALUES (107, '锦江区', 105);
INSERT INTO `city` VALUES (108, '青羊区', 105);
INSERT INTO `city` VALUES (109, '金牛区', 105);
INSERT INTO `city` VALUES (110, '武侯区', 105);
INSERT INTO `city` VALUES (111, '成华区', 105);
INSERT INTO `city` VALUES (112, '龙泉驿区', 105);
INSERT INTO `city` VALUES (113, '青白江区', 105);
INSERT INTO `city` VALUES (114, '新都区', 105);
INSERT INTO `city` VALUES (115, '温江县', 105);
INSERT INTO `city` VALUES (116, '金堂县', 105);
INSERT INTO `city` VALUES (117, '双流县', 105);
INSERT INTO `city` VALUES (118, '郫　县', 105);
INSERT INTO `city` VALUES (119, '大邑县', 105);
INSERT INTO `city` VALUES (120, '蒲江县', 105);
INSERT INTO `city` VALUES (121, '新津县', 105);
INSERT INTO `city` VALUES (122, '都江堰市', 105);
INSERT INTO `city` VALUES (123, '彭州市', 105);
INSERT INTO `city` VALUES (124, '邛崃市', 105);
INSERT INTO `city` VALUES (125, '崇州市', 105);
INSERT INTO `city` VALUES (126, '自贡市', 104);
INSERT INTO `city` VALUES (127, '市辖区', 126);
INSERT INTO `city` VALUES (128, '自流井区', 126);
INSERT INTO `city` VALUES (129, '贡井区', 126);
INSERT INTO `city` VALUES (130, '大安区', 126);
INSERT INTO `city` VALUES (131, '沿滩区', 126);
INSERT INTO `city` VALUES (132, '荣县', 126);
INSERT INTO `city` VALUES (133, '富顺县', 126);
INSERT INTO `city` VALUES (134, '攀枝花市', 104);
INSERT INTO `city` VALUES (135, '市辖区', 134);
INSERT INTO `city` VALUES (136, '东区', 134);
INSERT INTO `city` VALUES (137, '西区', 134);
INSERT INTO `city` VALUES (138, '仁和区', 134);
INSERT INTO `city` VALUES (139, '米易县', 134);
INSERT INTO `city` VALUES (140, '盐边县', 134);
INSERT INTO `city` VALUES (141, '泸州市', 104);
INSERT INTO `city` VALUES (142, '市辖区', 141);
INSERT INTO `city` VALUES (143, '江阳区', 141);
INSERT INTO `city` VALUES (144, '纳溪区', 141);
INSERT INTO `city` VALUES (145, '龙马潭区', 141);
INSERT INTO `city` VALUES (146, '泸　县', 141);
INSERT INTO `city` VALUES (147, '合江县', 141);
INSERT INTO `city` VALUES (148, '叙永县', 141);
INSERT INTO `city` VALUES (149, '古蔺县', 141);
INSERT INTO `city` VALUES (150, '德阳市', 104);
INSERT INTO `city` VALUES (151, '市辖区', 150);
INSERT INTO `city` VALUES (152, '旌阳区', 150);
INSERT INTO `city` VALUES (153, '中江县', 150);
INSERT INTO `city` VALUES (154, '罗江县', 150);
INSERT INTO `city` VALUES (155, '广汉市', 150);
INSERT INTO `city` VALUES (156, '什邡市', 150);
INSERT INTO `city` VALUES (157, '绵竹市', 150);
INSERT INTO `city` VALUES (158, '绵阳市', 104);
INSERT INTO `city` VALUES (159, '市辖区', 158);
INSERT INTO `city` VALUES (160, '涪城区', 158);
INSERT INTO `city` VALUES (161, '游仙区', 158);
INSERT INTO `city` VALUES (162, '三台县', 158);
INSERT INTO `city` VALUES (163, '盐亭县', 158);
INSERT INTO `city` VALUES (164, '安　县', 158);
INSERT INTO `city` VALUES (165, '梓潼县', 158);
INSERT INTO `city` VALUES (166, '北川羌族自治县', 158);
INSERT INTO `city` VALUES (167, '平武县', 158);
INSERT INTO `city` VALUES (168, '江油市', 158);
INSERT INTO `city` VALUES (169, '广元市', 104);
INSERT INTO `city` VALUES (170, '市辖区', 169);
INSERT INTO `city` VALUES (171, '市中区', 169);
INSERT INTO `city` VALUES (172, '元坝区', 169);
INSERT INTO `city` VALUES (173, '朝天区', 169);
INSERT INTO `city` VALUES (174, '旺苍县', 169);
INSERT INTO `city` VALUES (175, '青川县', 169);
INSERT INTO `city` VALUES (176, '剑阁县', 169);
INSERT INTO `city` VALUES (177, '苍溪县', 169);
INSERT INTO `city` VALUES (178, '遂宁市', 104);
INSERT INTO `city` VALUES (179, '市辖区', 178);
INSERT INTO `city` VALUES (180, '船山区', 178);
INSERT INTO `city` VALUES (181, '安居区', 178);
INSERT INTO `city` VALUES (182, '蓬溪县', 178);
INSERT INTO `city` VALUES (183, '射洪县', 178);
INSERT INTO `city` VALUES (184, '大英县', 178);
INSERT INTO `city` VALUES (185, '内江市', 104);
INSERT INTO `city` VALUES (186, '市辖区', 185);
INSERT INTO `city` VALUES (187, '市中区', 185);
INSERT INTO `city` VALUES (188, '东兴区', 185);
INSERT INTO `city` VALUES (189, '威远县', 185);
INSERT INTO `city` VALUES (190, '资中县', 185);
INSERT INTO `city` VALUES (191, '隆昌县', 185);
INSERT INTO `city` VALUES (192, '乐山市', 104);
INSERT INTO `city` VALUES (193, '市辖区', 192);
INSERT INTO `city` VALUES (194, '市中区', 192);
INSERT INTO `city` VALUES (195, '沙湾区', 192);
INSERT INTO `city` VALUES (196, '五通桥区', 192);
INSERT INTO `city` VALUES (197, '金口河区', 192);
INSERT INTO `city` VALUES (198, '犍为县', 192);
INSERT INTO `city` VALUES (199, '井研县', 192);
INSERT INTO `city` VALUES (200, '夹江县', 192);
INSERT INTO `city` VALUES (201, '沐川县', 192);
INSERT INTO `city` VALUES (202, '峨边彝族自治县', 192);
INSERT INTO `city` VALUES (203, '马边彝族自治县', 192);
INSERT INTO `city` VALUES (204, '峨眉山市', 192);
INSERT INTO `city` VALUES (205, '南充市', 104);
INSERT INTO `city` VALUES (206, '市辖区', 205);
INSERT INTO `city` VALUES (207, '顺庆区', 205);
INSERT INTO `city` VALUES (208, '高坪区', 205);
INSERT INTO `city` VALUES (209, '嘉陵区', 205);
INSERT INTO `city` VALUES (210, '南部县', 205);
INSERT INTO `city` VALUES (211, '营山县', 205);
INSERT INTO `city` VALUES (212, '蓬安县', 205);
INSERT INTO `city` VALUES (213, '仪陇县', 205);
INSERT INTO `city` VALUES (214, '西充县', 205);
INSERT INTO `city` VALUES (215, '阆中市', 205);
INSERT INTO `city` VALUES (216, '眉山市', 104);
INSERT INTO `city` VALUES (217, '市辖区', 216);
INSERT INTO `city` VALUES (218, '东坡区', 216);
INSERT INTO `city` VALUES (219, '仁寿县', 216);
INSERT INTO `city` VALUES (220, '彭山县', 216);
INSERT INTO `city` VALUES (221, '洪雅县', 216);
INSERT INTO `city` VALUES (222, '丹棱县', 216);
INSERT INTO `city` VALUES (223, '青神县', 216);
INSERT INTO `city` VALUES (224, '宜宾市', 104);
INSERT INTO `city` VALUES (225, '市辖区', 224);
INSERT INTO `city` VALUES (226, '翠屏区', 224);
INSERT INTO `city` VALUES (227, '宜宾县', 224);
INSERT INTO `city` VALUES (228, '南溪县', 224);
INSERT INTO `city` VALUES (229, '江安县', 224);
INSERT INTO `city` VALUES (230, '长宁县', 224);
INSERT INTO `city` VALUES (231, '高　县', 224);
INSERT INTO `city` VALUES (232, '珙　县', 224);
INSERT INTO `city` VALUES (233, '筠连县', 224);
INSERT INTO `city` VALUES (234, '兴文县', 224);
INSERT INTO `city` VALUES (235, '屏山县', 224);
INSERT INTO `city` VALUES (236, '广安市', 104);
INSERT INTO `city` VALUES (237, '市辖区', 236);
INSERT INTO `city` VALUES (238, '广安区', 236);
INSERT INTO `city` VALUES (239, '岳池县', 236);
INSERT INTO `city` VALUES (240, '武胜县', 236);
INSERT INTO `city` VALUES (241, '邻水县', 236);
INSERT INTO `city` VALUES (242, '华莹市', 236);
INSERT INTO `city` VALUES (243, '达州市', 104);
INSERT INTO `city` VALUES (244, '市辖区', 243);
INSERT INTO `city` VALUES (245, '通川区', 243);
INSERT INTO `city` VALUES (246, '达　县', 243);
INSERT INTO `city` VALUES (247, '宣汉县', 243);
INSERT INTO `city` VALUES (248, '开江县', 243);
INSERT INTO `city` VALUES (249, '大竹县', 243);
INSERT INTO `city` VALUES (250, '渠　县', 243);
INSERT INTO `city` VALUES (251, '万源市', 243);
INSERT INTO `city` VALUES (252, '雅安市', 104);
INSERT INTO `city` VALUES (253, '市辖区', 252);
INSERT INTO `city` VALUES (254, '雨城区', 252);
INSERT INTO `city` VALUES (255, '名山县', 252);
INSERT INTO `city` VALUES (256, '荥经县', 252);
INSERT INTO `city` VALUES (257, '汉源县', 252);
INSERT INTO `city` VALUES (258, '石棉县', 252);
INSERT INTO `city` VALUES (259, '天全县', 252);
INSERT INTO `city` VALUES (260, '芦山县', 252);
INSERT INTO `city` VALUES (261, '宝兴县', 252);
INSERT INTO `city` VALUES (262, '巴中市', 104);
INSERT INTO `city` VALUES (263, '市辖区', 262);
INSERT INTO `city` VALUES (264, '巴州区', 262);
INSERT INTO `city` VALUES (265, '通江县', 262);
INSERT INTO `city` VALUES (266, '南江县', 262);
INSERT INTO `city` VALUES (267, '平昌县', 262);
INSERT INTO `city` VALUES (268, '资阳市', 104);
INSERT INTO `city` VALUES (269, '市辖区', 268);
INSERT INTO `city` VALUES (270, '雁江区', 268);
INSERT INTO `city` VALUES (271, '安岳县', 268);
INSERT INTO `city` VALUES (272, '乐至县', 268);
INSERT INTO `city` VALUES (273, '简阳市', 268);
INSERT INTO `city` VALUES (274, '阿坝藏族羌族自治州', 104);
INSERT INTO `city` VALUES (275, '汶川县', 274);
INSERT INTO `city` VALUES (276, '理　县', 274);
INSERT INTO `city` VALUES (277, '茂　县', 274);
INSERT INTO `city` VALUES (278, '松潘县', 274);
INSERT INTO `city` VALUES (279, '九寨沟县', 274);
INSERT INTO `city` VALUES (280, '金川县', 274);
INSERT INTO `city` VALUES (281, '小金县', 274);
INSERT INTO `city` VALUES (282, '黑水县', 274);
INSERT INTO `city` VALUES (283, '马尔康县', 274);
INSERT INTO `city` VALUES (284, '壤塘县', 274);
INSERT INTO `city` VALUES (285, '阿坝县', 274);
INSERT INTO `city` VALUES (286, '若尔盖县', 274);
INSERT INTO `city` VALUES (287, '红原县', 274);
INSERT INTO `city` VALUES (288, '甘孜藏族自治州', 104);
INSERT INTO `city` VALUES (289, '康定县', 288);
INSERT INTO `city` VALUES (290, '泸定县', 288);
INSERT INTO `city` VALUES (291, '丹巴县', 288);
INSERT INTO `city` VALUES (292, '九龙县', 288);
INSERT INTO `city` VALUES (293, '雅江县', 288);
INSERT INTO `city` VALUES (294, '道孚县', 288);
INSERT INTO `city` VALUES (295, '炉霍县', 288);
INSERT INTO `city` VALUES (296, '甘孜县', 288);
INSERT INTO `city` VALUES (297, '新龙县', 288);
INSERT INTO `city` VALUES (298, '德格县', 288);
INSERT INTO `city` VALUES (299, '白玉县', 288);
INSERT INTO `city` VALUES (300, '石渠县', 288);
INSERT INTO `city` VALUES (301, '色达县', 288);
INSERT INTO `city` VALUES (302, '理塘县', 288);
INSERT INTO `city` VALUES (303, '巴塘县', 288);
INSERT INTO `city` VALUES (304, '乡城县', 288);
INSERT INTO `city` VALUES (305, '稻城县', 288);
INSERT INTO `city` VALUES (306, '得荣县', 288);
INSERT INTO `city` VALUES (307, '凉山彝族自治州', 104);
INSERT INTO `city` VALUES (308, '西昌市', 307);
INSERT INTO `city` VALUES (309, '木里藏族自治县', 307);
INSERT INTO `city` VALUES (310, '盐源县', 307);
INSERT INTO `city` VALUES (311, '德昌县', 307);
INSERT INTO `city` VALUES (312, '会理县', 307);
INSERT INTO `city` VALUES (313, '会东县', 307);
INSERT INTO `city` VALUES (314, '宁南县', 307);
INSERT INTO `city` VALUES (315, '普格县', 307);
INSERT INTO `city` VALUES (316, '布拖县', 307);
INSERT INTO `city` VALUES (317, '金阳县', 307);
INSERT INTO `city` VALUES (318, '昭觉县', 307);
INSERT INTO `city` VALUES (319, '喜德县', 307);
INSERT INTO `city` VALUES (320, '冕宁县', 307);
INSERT INTO `city` VALUES (321, '越西县', 307);
INSERT INTO `city` VALUES (322, '甘洛县', 307);
INSERT INTO `city` VALUES (323, '美姑县', 307);
INSERT INTO `city` VALUES (324, '雷波县', 307);
INSERT INTO `city` VALUES (325, '贵州省', NULL);
INSERT INTO `city` VALUES (326, '贵阳市', 325);
INSERT INTO `city` VALUES (327, '市辖区', 326);
INSERT INTO `city` VALUES (328, '南明区', 326);
INSERT INTO `city` VALUES (329, '云岩区', 326);
INSERT INTO `city` VALUES (330, '花溪区', 326);
INSERT INTO `city` VALUES (331, '乌当区', 326);
INSERT INTO `city` VALUES (332, '白云区', 326);
INSERT INTO `city` VALUES (333, '小河区', 326);
INSERT INTO `city` VALUES (334, '开阳县', 326);
INSERT INTO `city` VALUES (335, '息烽县', 326);
INSERT INTO `city` VALUES (336, '修文县', 326);
INSERT INTO `city` VALUES (337, '清镇市', 326);
INSERT INTO `city` VALUES (338, '六盘水市', 325);
INSERT INTO `city` VALUES (339, '钟山区', 338);
INSERT INTO `city` VALUES (340, '六枝特区', 338);
INSERT INTO `city` VALUES (341, '水城县', 338);
INSERT INTO `city` VALUES (342, '盘　县', 338);
INSERT INTO `city` VALUES (343, '遵义市', 325);
INSERT INTO `city` VALUES (344, '市辖区', 343);
INSERT INTO `city` VALUES (345, '红花岗区', 343);
INSERT INTO `city` VALUES (346, '汇川区', 343);
INSERT INTO `city` VALUES (347, '遵义县', 343);
INSERT INTO `city` VALUES (348, '桐梓县', 343);
INSERT INTO `city` VALUES (349, '绥阳县', 343);
INSERT INTO `city` VALUES (350, '正安县', 343);
INSERT INTO `city` VALUES (351, '道真仡佬族苗族自治县', 343);
INSERT INTO `city` VALUES (352, '务川仡佬族苗族自治县', 343);
INSERT INTO `city` VALUES (353, '凤冈县', 343);
INSERT INTO `city` VALUES (354, '湄潭县', 343);
INSERT INTO `city` VALUES (355, '余庆县', 343);
INSERT INTO `city` VALUES (356, '习水县', 343);
INSERT INTO `city` VALUES (357, '赤水市', 343);
INSERT INTO `city` VALUES (358, '仁怀市', 343);
INSERT INTO `city` VALUES (359, '安顺市', 325);
INSERT INTO `city` VALUES (360, '市辖区', 359);
INSERT INTO `city` VALUES (361, '西秀区', 359);
INSERT INTO `city` VALUES (362, '平坝县', 359);
INSERT INTO `city` VALUES (363, '普定县', 359);
INSERT INTO `city` VALUES (364, '镇宁布依族苗族自治县', 359);
INSERT INTO `city` VALUES (365, '关岭布依族苗族自治县', 359);
INSERT INTO `city` VALUES (366, '紫云苗族布依族自治县', 359);
INSERT INTO `city` VALUES (367, '铜仁地区', 325);
INSERT INTO `city` VALUES (368, '铜仁市', 367);
INSERT INTO `city` VALUES (369, '江口县', 367);
INSERT INTO `city` VALUES (370, '玉屏侗族自治县', 367);
INSERT INTO `city` VALUES (371, '石阡县', 367);
INSERT INTO `city` VALUES (372, '思南县', 367);
INSERT INTO `city` VALUES (373, '印江土家族苗族自治县', 367);
INSERT INTO `city` VALUES (374, '德江县', 367);
INSERT INTO `city` VALUES (375, '沿河土家族自治县', 367);
INSERT INTO `city` VALUES (376, '松桃苗族自治县', 367);
INSERT INTO `city` VALUES (377, '万山特区', 367);
INSERT INTO `city` VALUES (378, '黔西南布依族苗族自治州', 325);
INSERT INTO `city` VALUES (379, '兴义市', 378);
INSERT INTO `city` VALUES (380, '兴仁县', 378);
INSERT INTO `city` VALUES (381, '普安县', 378);
INSERT INTO `city` VALUES (382, '晴隆县', 378);
INSERT INTO `city` VALUES (383, '贞丰县', 378);
INSERT INTO `city` VALUES (384, '望谟县', 378);
INSERT INTO `city` VALUES (385, '册亨县', 378);
INSERT INTO `city` VALUES (386, '安龙县', 378);
INSERT INTO `city` VALUES (387, '毕节地区', 325);
INSERT INTO `city` VALUES (388, '毕节市', 387);
INSERT INTO `city` VALUES (389, '大方县', 387);
INSERT INTO `city` VALUES (390, '黔西县', 387);
INSERT INTO `city` VALUES (391, '金沙县', 387);
INSERT INTO `city` VALUES (392, '织金县', 387);
INSERT INTO `city` VALUES (393, '纳雍县', 387);
INSERT INTO `city` VALUES (394, '威宁彝族回族苗族自治县', 387);
INSERT INTO `city` VALUES (395, '赫章县', 387);
INSERT INTO `city` VALUES (396, '黔东南苗族侗族自治州', 325);
INSERT INTO `city` VALUES (397, '凯里市', 396);
INSERT INTO `city` VALUES (398, '黄平县', 396);
INSERT INTO `city` VALUES (399, '施秉县', 396);
INSERT INTO `city` VALUES (400, '三穗县', 396);
INSERT INTO `city` VALUES (401, '镇远县', 396);
INSERT INTO `city` VALUES (402, '岑巩县', 396);
INSERT INTO `city` VALUES (403, '天柱县', 396);
INSERT INTO `city` VALUES (404, '锦屏县', 396);
INSERT INTO `city` VALUES (405, '剑河县', 396);
INSERT INTO `city` VALUES (406, '台江县', 396);
INSERT INTO `city` VALUES (407, '黎平县', 396);
INSERT INTO `city` VALUES (408, '榕江县', 396);
INSERT INTO `city` VALUES (409, '从江县', 396);
INSERT INTO `city` VALUES (410, '雷山县', 396);
INSERT INTO `city` VALUES (411, '麻江县', 396);
INSERT INTO `city` VALUES (412, '丹寨县', 396);
INSERT INTO `city` VALUES (413, '黔南布依族苗族自治州', 325);
INSERT INTO `city` VALUES (414, '都匀市', 413);
INSERT INTO `city` VALUES (415, '福泉市', 413);
INSERT INTO `city` VALUES (416, '荔波县', 413);
INSERT INTO `city` VALUES (417, '贵定县', 413);
INSERT INTO `city` VALUES (418, '瓮安县', 413);
INSERT INTO `city` VALUES (419, '独山县', 413);
INSERT INTO `city` VALUES (420, '平塘县', 413);
INSERT INTO `city` VALUES (421, '罗甸县', 413);
INSERT INTO `city` VALUES (422, '长顺县', 413);
INSERT INTO `city` VALUES (423, '龙里县', 413);
INSERT INTO `city` VALUES (424, '惠水县', 413);
INSERT INTO `city` VALUES (425, '三都水族自治县', 413);
INSERT INTO `city` VALUES (426, '云南省', NULL);
INSERT INTO `city` VALUES (427, '昆明市', 426);
INSERT INTO `city` VALUES (428, '市辖区', 427);
INSERT INTO `city` VALUES (429, '五华区', 427);
INSERT INTO `city` VALUES (430, '盘龙区', 427);
INSERT INTO `city` VALUES (431, '官渡区', 427);
INSERT INTO `city` VALUES (432, '西山区', 427);
INSERT INTO `city` VALUES (433, '东川区', 427);
INSERT INTO `city` VALUES (434, '呈贡县', 427);
INSERT INTO `city` VALUES (435, '晋宁县', 427);
INSERT INTO `city` VALUES (436, '富民县', 427);
INSERT INTO `city` VALUES (437, '宜良县', 427);
INSERT INTO `city` VALUES (438, '石林彝族自治县', 427);
INSERT INTO `city` VALUES (439, '嵩明县', 427);
INSERT INTO `city` VALUES (440, '禄劝彝族苗族自治县', 427);
INSERT INTO `city` VALUES (441, '寻甸回族彝族自治县', 427);
INSERT INTO `city` VALUES (442, '安宁市', 427);
INSERT INTO `city` VALUES (443, '曲靖市', 426);
INSERT INTO `city` VALUES (444, '市辖区', 443);
INSERT INTO `city` VALUES (445, '麒麟区', 443);
INSERT INTO `city` VALUES (446, '马龙县', 443);
INSERT INTO `city` VALUES (447, '陆良县', 443);
INSERT INTO `city` VALUES (448, '师宗县', 443);
INSERT INTO `city` VALUES (449, '罗平县', 443);
INSERT INTO `city` VALUES (450, '富源县', 443);
INSERT INTO `city` VALUES (451, '会泽县', 443);
INSERT INTO `city` VALUES (452, '沾益县', 443);
INSERT INTO `city` VALUES (453, '宣威市', 443);
INSERT INTO `city` VALUES (454, '玉溪市', 426);
INSERT INTO `city` VALUES (455, '市辖区', 454);
INSERT INTO `city` VALUES (456, '红塔区', 454);
INSERT INTO `city` VALUES (457, '江川县', 454);
INSERT INTO `city` VALUES (458, '澄江县', 454);
INSERT INTO `city` VALUES (459, '通海县', 454);
INSERT INTO `city` VALUES (460, '华宁县', 454);
INSERT INTO `city` VALUES (461, '易门县', 454);
INSERT INTO `city` VALUES (462, '峨山彝族自治县', 454);
INSERT INTO `city` VALUES (463, '新平彝族傣族自治县', 454);
INSERT INTO `city` VALUES (464, '元江哈尼族彝族傣族自治县', 454);
INSERT INTO `city` VALUES (465, '保山市', 426);
INSERT INTO `city` VALUES (466, '市辖区', 465);
INSERT INTO `city` VALUES (467, '隆阳区', 465);
INSERT INTO `city` VALUES (468, '施甸县', 465);
INSERT INTO `city` VALUES (469, '腾冲县', 465);
INSERT INTO `city` VALUES (470, '龙陵县', 465);
INSERT INTO `city` VALUES (471, '昌宁县', 465);
INSERT INTO `city` VALUES (472, '昭通市', 426);
INSERT INTO `city` VALUES (473, '市辖区', 472);
INSERT INTO `city` VALUES (474, '昭阳区', 472);
INSERT INTO `city` VALUES (475, '鲁甸县', 472);
INSERT INTO `city` VALUES (476, '巧家县', 472);
INSERT INTO `city` VALUES (477, '盐津县', 472);
INSERT INTO `city` VALUES (478, '大关县', 472);
INSERT INTO `city` VALUES (479, '永善县', 472);
INSERT INTO `city` VALUES (480, '绥江县', 472);
INSERT INTO `city` VALUES (481, '镇雄县', 472);
INSERT INTO `city` VALUES (482, '彝良县', 472);
INSERT INTO `city` VALUES (483, '威信县', 472);
INSERT INTO `city` VALUES (484, '水富县', 472);
INSERT INTO `city` VALUES (485, '丽江市', 426);
INSERT INTO `city` VALUES (486, '市辖区', 485);
INSERT INTO `city` VALUES (487, '古城区', 485);
INSERT INTO `city` VALUES (488, '玉龙纳西族自治县', 485);
INSERT INTO `city` VALUES (489, '永胜县', 485);
INSERT INTO `city` VALUES (490, '华坪县', 485);
INSERT INTO `city` VALUES (491, '宁蒗彝族自治县', 485);
INSERT INTO `city` VALUES (492, '思茅市', 426);
INSERT INTO `city` VALUES (493, '市辖区', 492);
INSERT INTO `city` VALUES (494, '翠云区', 492);
INSERT INTO `city` VALUES (495, '普洱哈尼族彝族自治县', 492);
INSERT INTO `city` VALUES (496, '墨江哈尼族自治县', 492);
INSERT INTO `city` VALUES (497, '景东彝族自治县', 492);
INSERT INTO `city` VALUES (498, '景谷傣族彝族自治县', 492);
INSERT INTO `city` VALUES (499, '镇沅彝族哈尼族拉祜族自治县', 492);
INSERT INTO `city` VALUES (500, '江城哈尼族彝族自治县', 492);
INSERT INTO `city` VALUES (501, '孟连傣族拉祜族佤族自治县', 492);
INSERT INTO `city` VALUES (502, '澜沧拉祜族自治县', 492);
INSERT INTO `city` VALUES (503, '西盟佤族自治县', 492);
INSERT INTO `city` VALUES (504, '临沧市', 426);
INSERT INTO `city` VALUES (505, '市辖区', 504);
INSERT INTO `city` VALUES (506, '临翔区', 504);
INSERT INTO `city` VALUES (507, '凤庆县', 504);
INSERT INTO `city` VALUES (508, '云　县', 504);
INSERT INTO `city` VALUES (509, '永德县', 504);
INSERT INTO `city` VALUES (510, '镇康县', 504);
INSERT INTO `city` VALUES (511, '双江拉祜族佤族布朗族傣族自治县', 504);
INSERT INTO `city` VALUES (512, '耿马傣族佤族自治县', 504);
INSERT INTO `city` VALUES (513, '沧源佤族自治县', 504);
INSERT INTO `city` VALUES (514, '楚雄彝族自治州', 426);
INSERT INTO `city` VALUES (515, '楚雄市', 514);
INSERT INTO `city` VALUES (516, '双柏县', 514);
INSERT INTO `city` VALUES (517, '牟定县', 514);
INSERT INTO `city` VALUES (518, '南华县', 514);
INSERT INTO `city` VALUES (519, '姚安县', 514);
INSERT INTO `city` VALUES (520, '大姚县', 514);
INSERT INTO `city` VALUES (521, '永仁县', 514);
INSERT INTO `city` VALUES (522, '元谋县', 514);
INSERT INTO `city` VALUES (523, '武定县', 514);
INSERT INTO `city` VALUES (524, '禄丰县', 514);
INSERT INTO `city` VALUES (525, '红河哈尼族彝族自治州', 426);
INSERT INTO `city` VALUES (526, '个旧市', 525);
INSERT INTO `city` VALUES (527, '开远市', 525);
INSERT INTO `city` VALUES (528, '蒙自县', 525);
INSERT INTO `city` VALUES (529, '屏边苗族自治县', 525);
INSERT INTO `city` VALUES (530, '建水县', 525);
INSERT INTO `city` VALUES (531, '石屏县', 525);
INSERT INTO `city` VALUES (532, '弥勒县', 525);
INSERT INTO `city` VALUES (533, '泸西县', 525);
INSERT INTO `city` VALUES (534, '元阳县', 525);
INSERT INTO `city` VALUES (535, '红河县', 525);
INSERT INTO `city` VALUES (536, '金平苗族瑶族傣族自治县', 525);
INSERT INTO `city` VALUES (537, '绿春县', 525);
INSERT INTO `city` VALUES (538, '河口瑶族自治县', 525);
INSERT INTO `city` VALUES (539, '文山壮族苗族自治州', 426);
INSERT INTO `city` VALUES (540, '文山县', 539);
INSERT INTO `city` VALUES (541, '砚山县', 539);
INSERT INTO `city` VALUES (542, '西畴县', 539);
INSERT INTO `city` VALUES (543, '麻栗坡县', 539);
INSERT INTO `city` VALUES (544, '马关县', 539);
INSERT INTO `city` VALUES (545, '丘北县', 539);
INSERT INTO `city` VALUES (546, '广南县', 539);
INSERT INTO `city` VALUES (547, '富宁县', 539);
INSERT INTO `city` VALUES (548, '西双版纳傣族自治州', 426);
INSERT INTO `city` VALUES (549, '景洪市', 548);
INSERT INTO `city` VALUES (550, '勐海县', 548);
INSERT INTO `city` VALUES (551, '勐腊县', 548);
INSERT INTO `city` VALUES (552, '大理白族自治州', 426);
INSERT INTO `city` VALUES (553, '大理市', 552);
INSERT INTO `city` VALUES (554, '漾濞彝族自治县', 552);
INSERT INTO `city` VALUES (555, '祥云县', 552);
INSERT INTO `city` VALUES (556, '宾川县', 552);
INSERT INTO `city` VALUES (557, '弥渡县', 552);
INSERT INTO `city` VALUES (558, '南涧彝族自治县', 552);
INSERT INTO `city` VALUES (559, '巍山彝族回族自治县', 552);
INSERT INTO `city` VALUES (560, '永平县', 552);
INSERT INTO `city` VALUES (561, '云龙县', 552);
INSERT INTO `city` VALUES (562, '洱源县', 552);
INSERT INTO `city` VALUES (563, '剑川县', 552);
INSERT INTO `city` VALUES (564, '鹤庆县', 552);
INSERT INTO `city` VALUES (565, '德宏傣族景颇族自治州', 426);
INSERT INTO `city` VALUES (566, '瑞丽市', 565);
INSERT INTO `city` VALUES (567, '潞西市', 565);
INSERT INTO `city` VALUES (568, '梁河县', 565);
INSERT INTO `city` VALUES (569, '盈江县', 565);
INSERT INTO `city` VALUES (570, '陇川县', 565);
INSERT INTO `city` VALUES (571, '怒江傈僳族自治州', 426);
INSERT INTO `city` VALUES (572, '泸水县', 571);
INSERT INTO `city` VALUES (573, '福贡县', 571);
INSERT INTO `city` VALUES (574, '贡山独龙族怒族自治县', 571);
INSERT INTO `city` VALUES (575, '兰坪白族普米族自治县', 571);
INSERT INTO `city` VALUES (576, '迪庆藏族自治州', 426);
INSERT INTO `city` VALUES (577, '香格里拉县', 576);
INSERT INTO `city` VALUES (578, '德钦县', 576);
INSERT INTO `city` VALUES (579, '维西傈僳族自治县', 576);
INSERT INTO `city` VALUES (580, '西藏自治区', NULL);
INSERT INTO `city` VALUES (581, '拉萨市', 580);
INSERT INTO `city` VALUES (582, '市辖区', 581);
INSERT INTO `city` VALUES (583, '城关区', 581);
INSERT INTO `city` VALUES (584, '林周县', 581);
INSERT INTO `city` VALUES (585, '当雄县', 581);
INSERT INTO `city` VALUES (586, '尼木县', 581);
INSERT INTO `city` VALUES (587, '曲水县', 581);
INSERT INTO `city` VALUES (588, '堆龙德庆县', 581);
INSERT INTO `city` VALUES (589, '达孜县', 581);
INSERT INTO `city` VALUES (590, '墨竹工卡县', 581);
INSERT INTO `city` VALUES (591, '昌都市', 580);
INSERT INTO `city` VALUES (592, '昌都县', 591);
INSERT INTO `city` VALUES (593, '江达县', 591);
INSERT INTO `city` VALUES (594, '贡觉县', 591);
INSERT INTO `city` VALUES (595, '类乌齐县', 591);
INSERT INTO `city` VALUES (596, '丁青县', 591);
INSERT INTO `city` VALUES (597, '察雅县', 591);
INSERT INTO `city` VALUES (598, '八宿县', 591);
INSERT INTO `city` VALUES (599, '左贡县', 591);
INSERT INTO `city` VALUES (600, '芒康县', 591);
INSERT INTO `city` VALUES (601, '洛隆县', 591);
INSERT INTO `city` VALUES (602, '边坝县', 591);
INSERT INTO `city` VALUES (603, '山南地区', 580);
INSERT INTO `city` VALUES (604, '乃东县', 603);
INSERT INTO `city` VALUES (605, '扎囊县', 603);
INSERT INTO `city` VALUES (606, '贡嘎县', 603);
INSERT INTO `city` VALUES (607, '桑日县', 603);
INSERT INTO `city` VALUES (608, '琼结县', 603);
INSERT INTO `city` VALUES (609, '曲松县', 603);
INSERT INTO `city` VALUES (610, '措美县', 603);
INSERT INTO `city` VALUES (611, '洛扎县', 603);
INSERT INTO `city` VALUES (612, '加查县', 603);
INSERT INTO `city` VALUES (613, '隆子县', 603);
INSERT INTO `city` VALUES (614, '错那县', 603);
INSERT INTO `city` VALUES (615, '浪卡子县', 603);
INSERT INTO `city` VALUES (616, '日喀则市', 580);
INSERT INTO `city` VALUES (617, '南木林县', 616);
INSERT INTO `city` VALUES (618, '江孜县', 616);
INSERT INTO `city` VALUES (619, '定日县', 616);
INSERT INTO `city` VALUES (620, '萨迦县', 616);
INSERT INTO `city` VALUES (621, '拉孜县', 616);
INSERT INTO `city` VALUES (622, '昂仁县', 616);
INSERT INTO `city` VALUES (623, '谢通门县', 616);
INSERT INTO `city` VALUES (624, '白朗县', 616);
INSERT INTO `city` VALUES (625, '仁布县', 616);
INSERT INTO `city` VALUES (626, '康马县', 616);
INSERT INTO `city` VALUES (627, '定结县', 616);
INSERT INTO `city` VALUES (628, '仲巴县', 616);
INSERT INTO `city` VALUES (629, '亚东县', 616);
INSERT INTO `city` VALUES (630, '吉隆县', 616);
INSERT INTO `city` VALUES (631, '聂拉木县', 616);
INSERT INTO `city` VALUES (632, '萨嘎县', 616);
INSERT INTO `city` VALUES (633, '岗巴县', 616);
INSERT INTO `city` VALUES (634, '那曲地区', 580);
INSERT INTO `city` VALUES (635, '那曲县', 634);
INSERT INTO `city` VALUES (636, '嘉黎县', 634);
INSERT INTO `city` VALUES (637, '比如县', 634);
INSERT INTO `city` VALUES (638, '聂荣县', 634);
INSERT INTO `city` VALUES (639, '安多县', 634);
INSERT INTO `city` VALUES (640, '申扎县', 634);
INSERT INTO `city` VALUES (641, '索　县', 634);
INSERT INTO `city` VALUES (642, '班戈县', 634);
INSERT INTO `city` VALUES (643, '巴青县', 634);
INSERT INTO `city` VALUES (644, '尼玛县', 634);
INSERT INTO `city` VALUES (645, '阿里地区', 580);
INSERT INTO `city` VALUES (646, '普兰县', 645);
INSERT INTO `city` VALUES (647, '札达县', 645);
INSERT INTO `city` VALUES (648, '噶尔县', 645);
INSERT INTO `city` VALUES (649, '日土县', 645);
INSERT INTO `city` VALUES (650, '革吉县', 645);
INSERT INTO `city` VALUES (651, '改则县', 645);
INSERT INTO `city` VALUES (652, '措勤县', 645);
INSERT INTO `city` VALUES (653, '林芝市', 580);
INSERT INTO `city` VALUES (654, '林芝县', 653);
INSERT INTO `city` VALUES (655, '工布江达县', 653);
INSERT INTO `city` VALUES (656, '米林县', 653);
INSERT INTO `city` VALUES (657, '墨脱县', 653);
INSERT INTO `city` VALUES (658, '波密县', 653);
INSERT INTO `city` VALUES (659, '察隅县', 653);
INSERT INTO `city` VALUES (660, '朗　县', 653);
INSERT INTO `city` VALUES (661, '河南省', NULL);
INSERT INTO `city` VALUES (662, '郑州市', 661);
INSERT INTO `city` VALUES (663, '市辖区', 662);
INSERT INTO `city` VALUES (664, '中原区', 662);
INSERT INTO `city` VALUES (665, '二七区', 662);
INSERT INTO `city` VALUES (666, '管城回族区', 662);
INSERT INTO `city` VALUES (667, '金水区', 662);
INSERT INTO `city` VALUES (668, '上街区', 662);
INSERT INTO `city` VALUES (669, '邙山区', 662);
INSERT INTO `city` VALUES (670, '中牟县', 662);
INSERT INTO `city` VALUES (671, '巩义市', 662);
INSERT INTO `city` VALUES (672, '荥阳市', 662);
INSERT INTO `city` VALUES (673, '新密市', 662);
INSERT INTO `city` VALUES (674, '新郑市', 662);
INSERT INTO `city` VALUES (675, '登封市', 662);
INSERT INTO `city` VALUES (676, '开封市', 661);
INSERT INTO `city` VALUES (677, '市辖区', 676);
INSERT INTO `city` VALUES (678, '龙亭区', 676);
INSERT INTO `city` VALUES (679, '顺河回族区', 676);
INSERT INTO `city` VALUES (680, '鼓楼区', 676);
INSERT INTO `city` VALUES (681, '南关区', 676);
INSERT INTO `city` VALUES (682, '郊　区', 676);
INSERT INTO `city` VALUES (683, '杞　县', 676);
INSERT INTO `city` VALUES (684, '通许县', 676);
INSERT INTO `city` VALUES (685, '尉氏县', 676);
INSERT INTO `city` VALUES (686, '开封县', 676);
INSERT INTO `city` VALUES (687, '兰考县', 676);
INSERT INTO `city` VALUES (688, '洛阳市', 661);
INSERT INTO `city` VALUES (689, '市辖区', 688);
INSERT INTO `city` VALUES (690, '老城区', 688);
INSERT INTO `city` VALUES (691, '西工区', 688);
INSERT INTO `city` VALUES (692, '廛河回族区', 688);
INSERT INTO `city` VALUES (693, '涧西区', 688);
INSERT INTO `city` VALUES (694, '吉利区', 688);
INSERT INTO `city` VALUES (695, '洛龙区', 688);
INSERT INTO `city` VALUES (696, '孟津县', 688);
INSERT INTO `city` VALUES (697, '新安县', 688);
INSERT INTO `city` VALUES (698, '栾川县', 688);
INSERT INTO `city` VALUES (699, '嵩　县', 688);
INSERT INTO `city` VALUES (700, '汝阳县', 688);
INSERT INTO `city` VALUES (701, '宜阳县', 688);
INSERT INTO `city` VALUES (702, '洛宁县', 688);
INSERT INTO `city` VALUES (703, '伊川县', 688);
INSERT INTO `city` VALUES (704, '偃师市', 688);
INSERT INTO `city` VALUES (705, '平顶山市', 661);
INSERT INTO `city` VALUES (706, '市辖区', 705);
INSERT INTO `city` VALUES (707, '新华区', 705);
INSERT INTO `city` VALUES (708, '卫东区', 705);
INSERT INTO `city` VALUES (709, '石龙区', 705);
INSERT INTO `city` VALUES (710, '湛河区', 705);
INSERT INTO `city` VALUES (711, '宝丰县', 705);
INSERT INTO `city` VALUES (712, '叶　县', 705);
INSERT INTO `city` VALUES (713, '鲁山县', 705);
INSERT INTO `city` VALUES (714, '郏　县', 705);
INSERT INTO `city` VALUES (715, '舞钢市', 705);
INSERT INTO `city` VALUES (716, '汝州市', 705);
INSERT INTO `city` VALUES (717, '安阳市', 661);
INSERT INTO `city` VALUES (718, '市辖区', 717);
INSERT INTO `city` VALUES (719, '文峰区', 717);
INSERT INTO `city` VALUES (720, '北关区', 717);
INSERT INTO `city` VALUES (721, '殷都区', 717);
INSERT INTO `city` VALUES (722, '龙安区', 717);
INSERT INTO `city` VALUES (723, '安阳县', 717);
INSERT INTO `city` VALUES (724, '汤阴县', 717);
INSERT INTO `city` VALUES (725, '滑　县', 717);
INSERT INTO `city` VALUES (726, '内黄县', 717);
INSERT INTO `city` VALUES (727, '林州市', 717);
INSERT INTO `city` VALUES (728, '鹤壁市', 661);
INSERT INTO `city` VALUES (729, '市辖区', 728);
INSERT INTO `city` VALUES (730, '鹤山区', 728);
INSERT INTO `city` VALUES (731, '山城区', 728);
INSERT INTO `city` VALUES (732, '淇滨区', 728);
INSERT INTO `city` VALUES (733, '浚　县', 728);
INSERT INTO `city` VALUES (734, '淇　县', 728);
INSERT INTO `city` VALUES (735, '新乡市', 661);
INSERT INTO `city` VALUES (736, '市辖区', 735);
INSERT INTO `city` VALUES (737, '红旗区', 735);
INSERT INTO `city` VALUES (738, '卫滨区', 735);
INSERT INTO `city` VALUES (739, '凤泉区', 735);
INSERT INTO `city` VALUES (740, '牧野区', 735);
INSERT INTO `city` VALUES (741, '新乡县', 735);
INSERT INTO `city` VALUES (742, '获嘉县', 735);
INSERT INTO `city` VALUES (743, '原阳县', 735);
INSERT INTO `city` VALUES (744, '延津县', 735);
INSERT INTO `city` VALUES (745, '封丘县', 735);
INSERT INTO `city` VALUES (746, '长垣县', 735);
INSERT INTO `city` VALUES (747, '卫辉市', 735);
INSERT INTO `city` VALUES (748, '辉县市', 735);
INSERT INTO `city` VALUES (749, '焦作市', 661);
INSERT INTO `city` VALUES (750, '市辖区', 749);
INSERT INTO `city` VALUES (751, '解放区', 749);
INSERT INTO `city` VALUES (752, '中站区', 749);
INSERT INTO `city` VALUES (753, '马村区', 749);
INSERT INTO `city` VALUES (754, '山阳区', 749);
INSERT INTO `city` VALUES (755, '修武县', 749);
INSERT INTO `city` VALUES (756, '博爱县', 749);
INSERT INTO `city` VALUES (757, '武陟县', 749);
INSERT INTO `city` VALUES (758, '温　县', 749);
INSERT INTO `city` VALUES (759, '济源市', 749);
INSERT INTO `city` VALUES (760, '沁阳市', 749);
INSERT INTO `city` VALUES (761, '孟州市', 749);
INSERT INTO `city` VALUES (762, '濮阳市', 661);
INSERT INTO `city` VALUES (763, '市辖区', 762);
INSERT INTO `city` VALUES (764, '华龙区', 762);
INSERT INTO `city` VALUES (765, '清丰县', 762);
INSERT INTO `city` VALUES (766, '南乐县', 762);
INSERT INTO `city` VALUES (767, '范　县', 762);
INSERT INTO `city` VALUES (768, '台前县', 762);
INSERT INTO `city` VALUES (769, '濮阳县', 762);
INSERT INTO `city` VALUES (770, '许昌市', 661);
INSERT INTO `city` VALUES (771, '市辖区', 770);
INSERT INTO `city` VALUES (772, '魏都区', 770);
INSERT INTO `city` VALUES (773, '许昌县', 770);
INSERT INTO `city` VALUES (774, '鄢陵县', 770);
INSERT INTO `city` VALUES (775, '襄城县', 770);
INSERT INTO `city` VALUES (776, '禹州市', 770);
INSERT INTO `city` VALUES (777, '长葛市', 770);
INSERT INTO `city` VALUES (778, '漯河市', 661);
INSERT INTO `city` VALUES (779, '市辖区', 778);
INSERT INTO `city` VALUES (780, '源汇区', 778);
INSERT INTO `city` VALUES (781, '郾城区', 778);
INSERT INTO `city` VALUES (782, '召陵区', 778);
INSERT INTO `city` VALUES (783, '舞阳县', 778);
INSERT INTO `city` VALUES (784, '临颍县', 778);
INSERT INTO `city` VALUES (785, '三门峡市', 661);
INSERT INTO `city` VALUES (786, '市辖区', 785);
INSERT INTO `city` VALUES (787, '湖滨区', 785);
INSERT INTO `city` VALUES (788, '渑池县', 785);
INSERT INTO `city` VALUES (789, '陕　县', 785);
INSERT INTO `city` VALUES (790, '卢氏县', 785);
INSERT INTO `city` VALUES (791, '义马市', 785);
INSERT INTO `city` VALUES (792, '灵宝市', 785);
INSERT INTO `city` VALUES (793, '南阳市', 661);
INSERT INTO `city` VALUES (794, '市辖区', 793);
INSERT INTO `city` VALUES (795, '宛城区', 793);
INSERT INTO `city` VALUES (796, '卧龙区', 793);
INSERT INTO `city` VALUES (797, '南召县', 793);
INSERT INTO `city` VALUES (798, '方城县', 793);
INSERT INTO `city` VALUES (799, '西峡县', 793);
INSERT INTO `city` VALUES (800, '镇平县', 793);
INSERT INTO `city` VALUES (801, '内乡县', 793);
INSERT INTO `city` VALUES (802, '淅川县', 793);
INSERT INTO `city` VALUES (803, '社旗县', 793);
INSERT INTO `city` VALUES (804, '唐河县', 793);
INSERT INTO `city` VALUES (805, '新野县', 793);
INSERT INTO `city` VALUES (806, '桐柏县', 793);
INSERT INTO `city` VALUES (807, '邓州市', 793);
INSERT INTO `city` VALUES (808, '商丘市', 661);
INSERT INTO `city` VALUES (809, '市辖区', 808);
INSERT INTO `city` VALUES (810, '梁园区', 808);
INSERT INTO `city` VALUES (811, '睢阳区', 808);
INSERT INTO `city` VALUES (812, '民权县', 808);
INSERT INTO `city` VALUES (813, '睢　县', 808);
INSERT INTO `city` VALUES (814, '宁陵县', 808);
INSERT INTO `city` VALUES (815, '柘城县', 808);
INSERT INTO `city` VALUES (816, '虞城县', 808);
INSERT INTO `city` VALUES (817, '夏邑县', 808);
INSERT INTO `city` VALUES (818, '永城市', 808);
INSERT INTO `city` VALUES (819, '信阳市', 661);
INSERT INTO `city` VALUES (820, '市辖区', 819);
INSERT INTO `city` VALUES (821, '师河区', 819);
INSERT INTO `city` VALUES (822, '平桥区', 819);
INSERT INTO `city` VALUES (823, '罗山县', 819);
INSERT INTO `city` VALUES (824, '光山县', 819);
INSERT INTO `city` VALUES (825, '新　县', 819);
INSERT INTO `city` VALUES (826, '商城县', 819);
INSERT INTO `city` VALUES (827, '固始县', 819);
INSERT INTO `city` VALUES (828, '潢川县', 819);
INSERT INTO `city` VALUES (829, '淮滨县', 819);
INSERT INTO `city` VALUES (830, '息　县', 819);
INSERT INTO `city` VALUES (831, '周口市', 661);
INSERT INTO `city` VALUES (832, '市辖区', 831);
INSERT INTO `city` VALUES (833, '川汇区', 831);
INSERT INTO `city` VALUES (834, '扶沟县', 831);
INSERT INTO `city` VALUES (835, '西华县', 831);
INSERT INTO `city` VALUES (836, '商水县', 831);
INSERT INTO `city` VALUES (837, '沈丘县', 831);
INSERT INTO `city` VALUES (838, '郸城县', 831);
INSERT INTO `city` VALUES (839, '淮阳县', 831);
INSERT INTO `city` VALUES (840, '太康县', 831);
INSERT INTO `city` VALUES (841, '鹿邑县', 831);
INSERT INTO `city` VALUES (842, '项城市', 831);
INSERT INTO `city` VALUES (843, '驻马店市', 661);
INSERT INTO `city` VALUES (844, '市辖区', 843);
INSERT INTO `city` VALUES (845, '驿城区', 843);
INSERT INTO `city` VALUES (846, '西平县', 843);
INSERT INTO `city` VALUES (847, '上蔡县', 843);
INSERT INTO `city` VALUES (848, '平舆县', 843);
INSERT INTO `city` VALUES (849, '正阳县', 843);
INSERT INTO `city` VALUES (850, '确山县', 843);
INSERT INTO `city` VALUES (851, '泌阳县', 843);
INSERT INTO `city` VALUES (852, '汝南县', 843);
INSERT INTO `city` VALUES (853, '遂平县', 843);
INSERT INTO `city` VALUES (854, '新蔡县', 843);
INSERT INTO `city` VALUES (855, '湖北省', NULL);
INSERT INTO `city` VALUES (856, '武汉市', 855);
INSERT INTO `city` VALUES (857, '市辖区', 856);
INSERT INTO `city` VALUES (858, '江岸区', 856);
INSERT INTO `city` VALUES (859, '江汉区', 856);
INSERT INTO `city` VALUES (860, '乔口区', 856);
INSERT INTO `city` VALUES (861, '汉阳区', 856);
INSERT INTO `city` VALUES (862, '武昌区', 856);
INSERT INTO `city` VALUES (863, '青山区', 856);
INSERT INTO `city` VALUES (864, '洪山区', 856);
INSERT INTO `city` VALUES (865, '东西湖区', 856);
INSERT INTO `city` VALUES (866, '汉南区', 856);
INSERT INTO `city` VALUES (867, '蔡甸区', 856);
INSERT INTO `city` VALUES (868, '江夏区', 856);
INSERT INTO `city` VALUES (869, '黄陂区', 856);
INSERT INTO `city` VALUES (870, '新洲区', 856);
INSERT INTO `city` VALUES (871, '黄石市', 855);
INSERT INTO `city` VALUES (872, '市辖区', 871);
INSERT INTO `city` VALUES (873, '黄石港区', 871);
INSERT INTO `city` VALUES (874, '西塞山区', 871);
INSERT INTO `city` VALUES (875, '下陆区', 871);
INSERT INTO `city` VALUES (876, '铁山区', 871);
INSERT INTO `city` VALUES (877, '阳新县', 871);
INSERT INTO `city` VALUES (878, '大冶市', 871);
INSERT INTO `city` VALUES (879, '十堰市', 855);
INSERT INTO `city` VALUES (880, '市辖区', 879);
INSERT INTO `city` VALUES (881, '茅箭区', 879);
INSERT INTO `city` VALUES (882, '张湾区', 879);
INSERT INTO `city` VALUES (883, '郧　县', 879);
INSERT INTO `city` VALUES (884, '郧西县', 879);
INSERT INTO `city` VALUES (885, '竹山县', 879);
INSERT INTO `city` VALUES (886, '竹溪县', 879);
INSERT INTO `city` VALUES (887, '房　县', 879);
INSERT INTO `city` VALUES (888, '丹江口市', 879);
INSERT INTO `city` VALUES (889, '宜昌市', 855);
INSERT INTO `city` VALUES (890, '市辖区', 889);
INSERT INTO `city` VALUES (891, '西陵区', 889);
INSERT INTO `city` VALUES (892, '伍家岗区', 889);
INSERT INTO `city` VALUES (893, '点军区', 889);
INSERT INTO `city` VALUES (894, '猇亭区', 889);
INSERT INTO `city` VALUES (895, '夷陵区', 889);
INSERT INTO `city` VALUES (896, '远安县', 889);
INSERT INTO `city` VALUES (897, '兴山县', 889);
INSERT INTO `city` VALUES (898, '秭归县', 889);
INSERT INTO `city` VALUES (899, '长阳土家族自治县', 889);
INSERT INTO `city` VALUES (900, '五峰土家族自治县', 889);
INSERT INTO `city` VALUES (901, '宜都市', 889);
INSERT INTO `city` VALUES (902, '当阳市', 889);
INSERT INTO `city` VALUES (903, '枝江市', 889);
INSERT INTO `city` VALUES (904, '襄樊市', 855);
INSERT INTO `city` VALUES (905, '市辖区', 904);
INSERT INTO `city` VALUES (906, '襄城区', 904);
INSERT INTO `city` VALUES (907, '樊城区', 904);
INSERT INTO `city` VALUES (908, '襄阳区', 904);
INSERT INTO `city` VALUES (909, '南漳县', 904);
INSERT INTO `city` VALUES (910, '谷城县', 904);
INSERT INTO `city` VALUES (911, '保康县', 904);
INSERT INTO `city` VALUES (912, '老河口市', 904);
INSERT INTO `city` VALUES (913, '枣阳市', 904);
INSERT INTO `city` VALUES (914, '宜城市', 904);
INSERT INTO `city` VALUES (915, '鄂州市', 855);
INSERT INTO `city` VALUES (916, '市辖区', 915);
INSERT INTO `city` VALUES (917, '梁子湖区', 915);
INSERT INTO `city` VALUES (918, '华容区', 915);
INSERT INTO `city` VALUES (919, '鄂城区', 915);
INSERT INTO `city` VALUES (920, '荆门市', 855);
INSERT INTO `city` VALUES (921, '市辖区', 920);
INSERT INTO `city` VALUES (922, '东宝区', 920);
INSERT INTO `city` VALUES (923, '掇刀区', 920);
INSERT INTO `city` VALUES (924, '京山县', 920);
INSERT INTO `city` VALUES (925, '沙洋县', 920);
INSERT INTO `city` VALUES (926, '钟祥市', 920);
INSERT INTO `city` VALUES (927, '孝感市', 855);
INSERT INTO `city` VALUES (928, '市辖区', 927);
INSERT INTO `city` VALUES (929, '孝南区', 927);
INSERT INTO `city` VALUES (930, '孝昌县', 927);
INSERT INTO `city` VALUES (931, '大悟县', 927);
INSERT INTO `city` VALUES (932, '云梦县', 927);
INSERT INTO `city` VALUES (933, '应城市', 927);
INSERT INTO `city` VALUES (934, '安陆市', 927);
INSERT INTO `city` VALUES (935, '汉川市', 927);
INSERT INTO `city` VALUES (936, '荆州市', 855);
INSERT INTO `city` VALUES (937, '市辖区', 936);
INSERT INTO `city` VALUES (938, '沙市区', 936);
INSERT INTO `city` VALUES (939, '荆州区', 936);
INSERT INTO `city` VALUES (940, '公安县', 936);
INSERT INTO `city` VALUES (941, '监利县', 936);
INSERT INTO `city` VALUES (942, '江陵县', 936);
INSERT INTO `city` VALUES (943, '石首市', 936);
INSERT INTO `city` VALUES (944, '洪湖市', 936);
INSERT INTO `city` VALUES (945, '松滋市', 936);
INSERT INTO `city` VALUES (946, '黄冈市', 855);
INSERT INTO `city` VALUES (947, '市辖区', 946);
INSERT INTO `city` VALUES (948, '黄州区', 946);
INSERT INTO `city` VALUES (949, '团风县', 946);
INSERT INTO `city` VALUES (950, '红安县', 946);
INSERT INTO `city` VALUES (951, '罗田县', 946);
INSERT INTO `city` VALUES (952, '英山县', 946);
INSERT INTO `city` VALUES (953, '浠水县', 946);
INSERT INTO `city` VALUES (954, '蕲春县', 946);
INSERT INTO `city` VALUES (955, '黄梅县', 946);
INSERT INTO `city` VALUES (956, '麻城市', 946);
INSERT INTO `city` VALUES (957, '武穴市', 946);
INSERT INTO `city` VALUES (958, '咸宁市', 855);
INSERT INTO `city` VALUES (959, '市辖区', 958);
INSERT INTO `city` VALUES (960, '咸安区', 958);
INSERT INTO `city` VALUES (961, '嘉鱼县', 958);
INSERT INTO `city` VALUES (962, '通城县', 958);
INSERT INTO `city` VALUES (963, '崇阳县', 958);
INSERT INTO `city` VALUES (964, '通山县', 958);
INSERT INTO `city` VALUES (965, '赤壁市', 958);
INSERT INTO `city` VALUES (966, '随州市', 855);
INSERT INTO `city` VALUES (967, '市辖区', 966);
INSERT INTO `city` VALUES (968, '曾都区', 966);
INSERT INTO `city` VALUES (969, '广水市', 966);
INSERT INTO `city` VALUES (970, '恩施土家族苗族自治州', 855);
INSERT INTO `city` VALUES (971, '恩施市', 970);
INSERT INTO `city` VALUES (972, '利川市', 970);
INSERT INTO `city` VALUES (973, '建始县', 970);
INSERT INTO `city` VALUES (974, '巴东县', 970);
INSERT INTO `city` VALUES (975, '宣恩县', 970);
INSERT INTO `city` VALUES (976, '咸丰县', 970);
INSERT INTO `city` VALUES (977, '来凤县', 970);
INSERT INTO `city` VALUES (978, '鹤峰县', 970);
INSERT INTO `city` VALUES (979, '省直辖行政单位', 855);
INSERT INTO `city` VALUES (980, '石河子市', 979);
INSERT INTO `city` VALUES (981, '阿拉尔市', 979);
INSERT INTO `city` VALUES (982, '图木舒克市', 979);
INSERT INTO `city` VALUES (983, '五家渠市', 979);
INSERT INTO `city` VALUES (984, '湖南省', NULL);
INSERT INTO `city` VALUES (985, '长沙市', 984);
INSERT INTO `city` VALUES (986, '市辖区', 985);
INSERT INTO `city` VALUES (987, '芙蓉区', 985);
INSERT INTO `city` VALUES (988, '天心区', 985);
INSERT INTO `city` VALUES (989, '岳麓区', 985);
INSERT INTO `city` VALUES (990, '开福区', 985);
INSERT INTO `city` VALUES (991, '雨花区', 985);
INSERT INTO `city` VALUES (992, '长沙县', 985);
INSERT INTO `city` VALUES (993, '望城县', 985);
INSERT INTO `city` VALUES (994, '宁乡县', 985);
INSERT INTO `city` VALUES (995, '浏阳市', 985);
INSERT INTO `city` VALUES (996, '株洲市', 984);
INSERT INTO `city` VALUES (997, '市辖区', 996);
INSERT INTO `city` VALUES (998, '荷塘区', 996);
INSERT INTO `city` VALUES (999, '芦淞区', 996);
INSERT INTO `city` VALUES (1000, '石峰区', 996);
INSERT INTO `city` VALUES (1001, '天元区', 996);
INSERT INTO `city` VALUES (1002, '株洲县', 996);
INSERT INTO `city` VALUES (1003, '攸　县', 996);
INSERT INTO `city` VALUES (1004, '茶陵县', 996);
INSERT INTO `city` VALUES (1005, '炎陵县', 996);
INSERT INTO `city` VALUES (1006, '醴陵市', 996);
INSERT INTO `city` VALUES (1007, '湘潭市', 984);
INSERT INTO `city` VALUES (1008, '市辖区', 1007);
INSERT INTO `city` VALUES (1009, '雨湖区', 1007);
INSERT INTO `city` VALUES (1010, '岳塘区', 1007);
INSERT INTO `city` VALUES (1011, '湘潭县', 1007);
INSERT INTO `city` VALUES (1012, '湘乡市', 1007);
INSERT INTO `city` VALUES (1013, '韶山市', 1007);
INSERT INTO `city` VALUES (1014, '衡阳市', 984);
INSERT INTO `city` VALUES (1015, '市辖区', 1014);
INSERT INTO `city` VALUES (1016, '珠晖区', 1014);
INSERT INTO `city` VALUES (1017, '雁峰区', 1014);
INSERT INTO `city` VALUES (1018, '石鼓区', 1014);
INSERT INTO `city` VALUES (1019, '蒸湘区', 1014);
INSERT INTO `city` VALUES (1020, '南岳区', 1014);
INSERT INTO `city` VALUES (1021, '衡阳县', 1014);
INSERT INTO `city` VALUES (1022, '衡南县', 1014);
INSERT INTO `city` VALUES (1023, '衡山县', 1014);
INSERT INTO `city` VALUES (1024, '衡东县', 1014);
INSERT INTO `city` VALUES (1025, '祁东县', 1014);
INSERT INTO `city` VALUES (1026, '耒阳市', 1014);
INSERT INTO `city` VALUES (1027, '常宁市', 1014);
INSERT INTO `city` VALUES (1028, '邵阳市', 984);
INSERT INTO `city` VALUES (1029, '市辖区', 1028);
INSERT INTO `city` VALUES (1030, '双清区', 1028);
INSERT INTO `city` VALUES (1031, '大祥区', 1028);
INSERT INTO `city` VALUES (1032, '北塔区', 1028);
INSERT INTO `city` VALUES (1033, '邵东县', 1028);
INSERT INTO `city` VALUES (1034, '新邵县', 1028);
INSERT INTO `city` VALUES (1035, '邵阳县', 1028);
INSERT INTO `city` VALUES (1036, '隆回县', 1028);
INSERT INTO `city` VALUES (1037, '洞口县', 1028);
INSERT INTO `city` VALUES (1038, '绥宁县', 1028);
INSERT INTO `city` VALUES (1039, '新宁县', 1028);
INSERT INTO `city` VALUES (1040, '城步苗族自治县', 1028);
INSERT INTO `city` VALUES (1041, '武冈市', 1028);
INSERT INTO `city` VALUES (1042, '岳阳市', 984);
INSERT INTO `city` VALUES (1043, '市辖区', 1042);
INSERT INTO `city` VALUES (1044, '岳阳楼区', 1042);
INSERT INTO `city` VALUES (1045, '云溪区', 1042);
INSERT INTO `city` VALUES (1046, '君山区', 1042);
INSERT INTO `city` VALUES (1047, '岳阳县', 1042);
INSERT INTO `city` VALUES (1048, '华容县', 1042);
INSERT INTO `city` VALUES (1049, '湘阴县', 1042);
INSERT INTO `city` VALUES (1050, '平江县', 1042);
INSERT INTO `city` VALUES (1051, '汨罗市', 1042);
INSERT INTO `city` VALUES (1052, '临湘市', 1042);
INSERT INTO `city` VALUES (1053, '常德市', 984);
INSERT INTO `city` VALUES (1054, '市辖区', 1053);
INSERT INTO `city` VALUES (1055, '武陵区', 1053);
INSERT INTO `city` VALUES (1056, '鼎城区', 1053);
INSERT INTO `city` VALUES (1057, '安乡县', 1053);
INSERT INTO `city` VALUES (1058, '汉寿县', 1053);
INSERT INTO `city` VALUES (1059, '澧　县', 1053);
INSERT INTO `city` VALUES (1060, '临澧县', 1053);
INSERT INTO `city` VALUES (1061, '桃源县', 1053);
INSERT INTO `city` VALUES (1062, '石门县', 1053);
INSERT INTO `city` VALUES (1063, '津市市', 1053);
INSERT INTO `city` VALUES (1064, '张家界市', 984);
INSERT INTO `city` VALUES (1065, '市辖区', 1064);
INSERT INTO `city` VALUES (1066, '永定区', 1064);
INSERT INTO `city` VALUES (1067, '武陵源区', 1064);
INSERT INTO `city` VALUES (1068, '慈利县', 1064);
INSERT INTO `city` VALUES (1069, '桑植县', 1064);
INSERT INTO `city` VALUES (1070, '益阳市', 984);
INSERT INTO `city` VALUES (1071, '市辖区', 1070);
INSERT INTO `city` VALUES (1072, '资阳区', 1070);
INSERT INTO `city` VALUES (1073, '赫山区', 1070);
INSERT INTO `city` VALUES (1074, '南　县', 1070);
INSERT INTO `city` VALUES (1075, '桃江县', 1070);
INSERT INTO `city` VALUES (1076, '安化县', 1070);
INSERT INTO `city` VALUES (1077, '沅江市', 1070);
INSERT INTO `city` VALUES (1078, '郴州市', 984);
INSERT INTO `city` VALUES (1079, '市辖区', 1078);
INSERT INTO `city` VALUES (1080, '北湖区', 1078);
INSERT INTO `city` VALUES (1081, '苏仙区', 1078);
INSERT INTO `city` VALUES (1082, '桂阳县', 1078);
INSERT INTO `city` VALUES (1083, '宜章县', 1078);
INSERT INTO `city` VALUES (1084, '永兴县', 1078);
INSERT INTO `city` VALUES (1085, '嘉禾县', 1078);
INSERT INTO `city` VALUES (1086, '临武县', 1078);
INSERT INTO `city` VALUES (1087, '汝城县', 1078);
INSERT INTO `city` VALUES (1088, '桂东县', 1078);
INSERT INTO `city` VALUES (1089, '安仁县', 1078);
INSERT INTO `city` VALUES (1090, '资兴市', 1078);
INSERT INTO `city` VALUES (1091, '永州市', 984);
INSERT INTO `city` VALUES (1092, '市辖区', 1091);
INSERT INTO `city` VALUES (1093, '芝山区', 1091);
INSERT INTO `city` VALUES (1094, '冷水滩区', 1091);
INSERT INTO `city` VALUES (1095, '祁阳县', 1091);
INSERT INTO `city` VALUES (1096, '东安县', 1091);
INSERT INTO `city` VALUES (1097, '双牌县', 1091);
INSERT INTO `city` VALUES (1098, '道　县', 1091);
INSERT INTO `city` VALUES (1099, '江永县', 1091);
INSERT INTO `city` VALUES (1100, '宁远县', 1091);
INSERT INTO `city` VALUES (1101, '蓝山县', 1091);
INSERT INTO `city` VALUES (1102, '新田县', 1091);
INSERT INTO `city` VALUES (1103, '江华瑶族自治县', 1091);
INSERT INTO `city` VALUES (1104, '怀化市', 984);
INSERT INTO `city` VALUES (1105, '市辖区', 1104);
INSERT INTO `city` VALUES (1106, '鹤城区', 1104);
INSERT INTO `city` VALUES (1107, '中方县', 1104);
INSERT INTO `city` VALUES (1108, '沅陵县', 1104);
INSERT INTO `city` VALUES (1109, '辰溪县', 1104);
INSERT INTO `city` VALUES (1110, '溆浦县', 1104);
INSERT INTO `city` VALUES (1111, '会同县', 1104);
INSERT INTO `city` VALUES (1112, '麻阳苗族自治县', 1104);
INSERT INTO `city` VALUES (1113, '新晃侗族自治县', 1104);
INSERT INTO `city` VALUES (1114, '芷江侗族自治县', 1104);
INSERT INTO `city` VALUES (1115, '靖州苗族侗族自治县', 1104);
INSERT INTO `city` VALUES (1116, '通道侗族自治县', 1104);
INSERT INTO `city` VALUES (1117, '洪江市', 1104);
INSERT INTO `city` VALUES (1118, '娄底市', 984);
INSERT INTO `city` VALUES (1119, '市辖区', 1118);
INSERT INTO `city` VALUES (1120, '娄星区', 1118);
INSERT INTO `city` VALUES (1121, '双峰县', 1118);
INSERT INTO `city` VALUES (1122, '新化县', 1118);
INSERT INTO `city` VALUES (1123, '冷水江市', 1118);
INSERT INTO `city` VALUES (1124, '涟源市', 1118);
INSERT INTO `city` VALUES (1125, '湘西土家族苗族自治州', 984);
INSERT INTO `city` VALUES (1126, '吉首市', 1125);
INSERT INTO `city` VALUES (1127, '泸溪县', 1125);
INSERT INTO `city` VALUES (1128, '凤凰县', 1125);
INSERT INTO `city` VALUES (1129, '花垣县', 1125);
INSERT INTO `city` VALUES (1130, '保靖县', 1125);
INSERT INTO `city` VALUES (1131, '古丈县', 1125);
INSERT INTO `city` VALUES (1132, '永顺县', 1125);
INSERT INTO `city` VALUES (1133, '龙山县', 1125);
INSERT INTO `city` VALUES (1134, '广东省', NULL);
INSERT INTO `city` VALUES (1135, '广州市', 1134);
INSERT INTO `city` VALUES (1136, '市辖区', 1135);
INSERT INTO `city` VALUES (1137, '东山区', 1135);
INSERT INTO `city` VALUES (1138, '荔湾区', 1135);
INSERT INTO `city` VALUES (1139, '越秀区', 1135);
INSERT INTO `city` VALUES (1140, '海珠区', 1135);
INSERT INTO `city` VALUES (1141, '天河区', 1135);
INSERT INTO `city` VALUES (1142, '芳村区', 1135);
INSERT INTO `city` VALUES (1143, '白云区', 1135);
INSERT INTO `city` VALUES (1144, '黄埔区', 1135);
INSERT INTO `city` VALUES (1145, '番禺区', 1135);
INSERT INTO `city` VALUES (1146, '花都区', 1135);
INSERT INTO `city` VALUES (1147, '增城市', 1135);
INSERT INTO `city` VALUES (1148, '从化市', 1135);
INSERT INTO `city` VALUES (1149, '韶关市', 1134);
INSERT INTO `city` VALUES (1150, '市辖区', 1149);
INSERT INTO `city` VALUES (1151, '武江区', 1149);
INSERT INTO `city` VALUES (1152, '浈江区', 1149);
INSERT INTO `city` VALUES (1153, '曲江区', 1149);
INSERT INTO `city` VALUES (1154, '始兴县', 1149);
INSERT INTO `city` VALUES (1155, '仁化县', 1149);
INSERT INTO `city` VALUES (1156, '翁源县', 1149);
INSERT INTO `city` VALUES (1157, '乳源瑶族自治县', 1149);
INSERT INTO `city` VALUES (1158, '新丰县', 1149);
INSERT INTO `city` VALUES (1159, '乐昌市', 1149);
INSERT INTO `city` VALUES (1160, '南雄市', 1149);
INSERT INTO `city` VALUES (1161, '深圳市', 1134);
INSERT INTO `city` VALUES (1162, '市辖区', 1161);
INSERT INTO `city` VALUES (1163, '罗湖区', 1161);
INSERT INTO `city` VALUES (1164, '福田区', 1161);
INSERT INTO `city` VALUES (1165, '南山区', 1161);
INSERT INTO `city` VALUES (1166, '宝安区', 1161);
INSERT INTO `city` VALUES (1167, '龙岗区', 1161);
INSERT INTO `city` VALUES (1168, '盐田区', 1161);
INSERT INTO `city` VALUES (1169, '珠海市', 1134);
INSERT INTO `city` VALUES (1170, '市辖区', 1169);
INSERT INTO `city` VALUES (1171, '香洲区', 1169);
INSERT INTO `city` VALUES (1172, '斗门区', 1169);
INSERT INTO `city` VALUES (1173, '金湾区', 1169);
INSERT INTO `city` VALUES (1174, '汕头市', 1134);
INSERT INTO `city` VALUES (1175, '市辖区', 1174);
INSERT INTO `city` VALUES (1176, '龙湖区', 1174);
INSERT INTO `city` VALUES (1177, '金平区', 1174);
INSERT INTO `city` VALUES (1178, '濠江区', 1174);
INSERT INTO `city` VALUES (1179, '潮阳区', 1174);
INSERT INTO `city` VALUES (1180, '潮南区', 1174);
INSERT INTO `city` VALUES (1181, '澄海区', 1174);
INSERT INTO `city` VALUES (1182, '南澳县', 1174);
INSERT INTO `city` VALUES (1183, '佛山市', 1134);
INSERT INTO `city` VALUES (1184, '市辖区', 1183);
INSERT INTO `city` VALUES (1185, '禅城区', 1183);
INSERT INTO `city` VALUES (1186, '南海区', 1183);
INSERT INTO `city` VALUES (1187, '顺德区', 1183);
INSERT INTO `city` VALUES (1188, '三水区', 1183);
INSERT INTO `city` VALUES (1189, '高明区', 1183);
INSERT INTO `city` VALUES (1190, '江门市', 1134);
INSERT INTO `city` VALUES (1191, '市辖区', 1190);
INSERT INTO `city` VALUES (1192, '蓬江区', 1190);
INSERT INTO `city` VALUES (1193, '江海区', 1190);
INSERT INTO `city` VALUES (1194, '新会区', 1190);
INSERT INTO `city` VALUES (1195, '台山市', 1190);
INSERT INTO `city` VALUES (1196, '开平市', 1190);
INSERT INTO `city` VALUES (1197, '鹤山市', 1190);
INSERT INTO `city` VALUES (1198, '恩平市', 1190);
INSERT INTO `city` VALUES (1199, '湛江市', 1134);
INSERT INTO `city` VALUES (1200, '市辖区', 1199);
INSERT INTO `city` VALUES (1201, '赤坎区', 1199);
INSERT INTO `city` VALUES (1202, '霞山区', 1199);
INSERT INTO `city` VALUES (1203, '坡头区', 1199);
INSERT INTO `city` VALUES (1204, '麻章区', 1199);
INSERT INTO `city` VALUES (1205, '遂溪县', 1199);
INSERT INTO `city` VALUES (1206, '徐闻县', 1199);
INSERT INTO `city` VALUES (1207, '廉江市', 1199);
INSERT INTO `city` VALUES (1208, '雷州市', 1199);
INSERT INTO `city` VALUES (1209, '吴川市', 1199);
INSERT INTO `city` VALUES (1210, '茂名市', 1134);
INSERT INTO `city` VALUES (1211, '市辖区', 1210);
INSERT INTO `city` VALUES (1212, '茂南区', 1210);
INSERT INTO `city` VALUES (1213, '茂港区', 1210);
INSERT INTO `city` VALUES (1214, '电白县', 1210);
INSERT INTO `city` VALUES (1215, '高州市', 1210);
INSERT INTO `city` VALUES (1216, '化州市', 1210);
INSERT INTO `city` VALUES (1217, '信宜市', 1210);
INSERT INTO `city` VALUES (1218, '肇庆市', 1134);
INSERT INTO `city` VALUES (1219, '市辖区', 1218);
INSERT INTO `city` VALUES (1220, '端州区', 1218);
INSERT INTO `city` VALUES (1221, '鼎湖区', 1218);
INSERT INTO `city` VALUES (1222, '广宁县', 1218);
INSERT INTO `city` VALUES (1223, '怀集县', 1218);
INSERT INTO `city` VALUES (1224, '封开县', 1218);
INSERT INTO `city` VALUES (1225, '德庆县', 1218);
INSERT INTO `city` VALUES (1226, '高要市', 1218);
INSERT INTO `city` VALUES (1227, '四会市', 1218);
INSERT INTO `city` VALUES (1228, '惠州市', 1134);
INSERT INTO `city` VALUES (1229, '市辖区', 1228);
INSERT INTO `city` VALUES (1230, '惠城区', 1228);
INSERT INTO `city` VALUES (1231, '惠阳区', 1228);
INSERT INTO `city` VALUES (1232, '博罗县', 1228);
INSERT INTO `city` VALUES (1233, '惠东县', 1228);
INSERT INTO `city` VALUES (1234, '龙门县', 1228);
INSERT INTO `city` VALUES (1235, '梅州市', 1134);
INSERT INTO `city` VALUES (1236, '市辖区', 1235);
INSERT INTO `city` VALUES (1237, '梅江区', 1235);
INSERT INTO `city` VALUES (1238, '梅　县', 1235);
INSERT INTO `city` VALUES (1239, '大埔县', 1235);
INSERT INTO `city` VALUES (1240, '丰顺县', 1235);
INSERT INTO `city` VALUES (1241, '五华县', 1235);
INSERT INTO `city` VALUES (1242, '平远县', 1235);
INSERT INTO `city` VALUES (1243, '蕉岭县', 1235);
INSERT INTO `city` VALUES (1244, '兴宁市', 1235);
INSERT INTO `city` VALUES (1245, '汕尾市', 1134);
INSERT INTO `city` VALUES (1246, '市辖区', 1245);
INSERT INTO `city` VALUES (1247, '城　区', 1245);
INSERT INTO `city` VALUES (1248, '海丰县', 1245);
INSERT INTO `city` VALUES (1249, '陆河县', 1245);
INSERT INTO `city` VALUES (1250, '陆丰市', 1245);
INSERT INTO `city` VALUES (1251, '河源市', 1134);
INSERT INTO `city` VALUES (1252, '市辖区', 1251);
INSERT INTO `city` VALUES (1253, '源城区', 1251);
INSERT INTO `city` VALUES (1254, '紫金县', 1251);
INSERT INTO `city` VALUES (1255, '龙川县', 1251);
INSERT INTO `city` VALUES (1256, '连平县', 1251);
INSERT INTO `city` VALUES (1257, '和平县', 1251);
INSERT INTO `city` VALUES (1258, '东源县', 1251);
INSERT INTO `city` VALUES (1259, '阳江市', 1134);
INSERT INTO `city` VALUES (1260, '市辖区', 1259);
INSERT INTO `city` VALUES (1261, '江城区', 1259);
INSERT INTO `city` VALUES (1262, '阳西县', 1259);
INSERT INTO `city` VALUES (1263, '阳东县', 1259);
INSERT INTO `city` VALUES (1264, '阳春市', 1259);
INSERT INTO `city` VALUES (1265, '清远市', 1134);
INSERT INTO `city` VALUES (1266, '市辖区', 1265);
INSERT INTO `city` VALUES (1267, '清城区', 1265);
INSERT INTO `city` VALUES (1268, '佛冈县', 1265);
INSERT INTO `city` VALUES (1269, '阳山县', 1265);
INSERT INTO `city` VALUES (1270, '连山壮族瑶族自治县', 1265);
INSERT INTO `city` VALUES (1271, '连南瑶族自治县', 1265);
INSERT INTO `city` VALUES (1272, '清新县', 1265);
INSERT INTO `city` VALUES (1273, '英德市', 1265);
INSERT INTO `city` VALUES (1274, '连州市', 1265);
INSERT INTO `city` VALUES (1275, '东莞市', 1134);
INSERT INTO `city` VALUES (1276, '东莞市', 1275);
INSERT INTO `city` VALUES (1277, '中山市', 1134);
INSERT INTO `city` VALUES (1278, '中山市', 1277);
INSERT INTO `city` VALUES (1279, '潮州市', 1134);
INSERT INTO `city` VALUES (1280, '市辖区', 1279);
INSERT INTO `city` VALUES (1281, '湘桥区', 1279);
INSERT INTO `city` VALUES (1282, '潮安县', 1279);
INSERT INTO `city` VALUES (1283, '饶平县', 1279);
INSERT INTO `city` VALUES (1284, '揭阳市', 1134);
INSERT INTO `city` VALUES (1285, '市辖区', 1284);
INSERT INTO `city` VALUES (1286, '榕城区', 1284);
INSERT INTO `city` VALUES (1287, '揭东县', 1284);
INSERT INTO `city` VALUES (1288, '揭西县', 1284);
INSERT INTO `city` VALUES (1289, '惠来县', 1284);
INSERT INTO `city` VALUES (1290, '普宁市', 1284);
INSERT INTO `city` VALUES (1291, '云浮市', 1134);
INSERT INTO `city` VALUES (1292, '市辖区', 1291);
INSERT INTO `city` VALUES (1293, '云城区', 1291);
INSERT INTO `city` VALUES (1294, '新兴县', 1291);
INSERT INTO `city` VALUES (1295, '郁南县', 1291);
INSERT INTO `city` VALUES (1296, '云安县', 1291);
INSERT INTO `city` VALUES (1297, '罗定市', 1291);
INSERT INTO `city` VALUES (1298, '广西壮族自治区', NULL);
INSERT INTO `city` VALUES (1299, '南宁市', 1298);
INSERT INTO `city` VALUES (1300, '市辖区', 1299);
INSERT INTO `city` VALUES (1301, '兴宁区', 1299);
INSERT INTO `city` VALUES (1302, '青秀区', 1299);
INSERT INTO `city` VALUES (1303, '江南区', 1299);
INSERT INTO `city` VALUES (1304, '西乡塘区', 1299);
INSERT INTO `city` VALUES (1305, '良庆区', 1299);
INSERT INTO `city` VALUES (1306, '邕宁区', 1299);
INSERT INTO `city` VALUES (1307, '武鸣县', 1299);
INSERT INTO `city` VALUES (1308, '隆安县', 1299);
INSERT INTO `city` VALUES (1309, '马山县', 1299);
INSERT INTO `city` VALUES (1310, '上林县', 1299);
INSERT INTO `city` VALUES (1311, '宾阳县', 1299);
INSERT INTO `city` VALUES (1312, '横　县', 1299);
INSERT INTO `city` VALUES (1313, '柳州市', 1298);
INSERT INTO `city` VALUES (1314, '市辖区', 1313);
INSERT INTO `city` VALUES (1315, '城中区', 1313);
INSERT INTO `city` VALUES (1316, '鱼峰区', 1313);
INSERT INTO `city` VALUES (1317, '柳南区', 1313);
INSERT INTO `city` VALUES (1318, '柳北区', 1313);
INSERT INTO `city` VALUES (1319, '柳江县', 1313);
INSERT INTO `city` VALUES (1320, '柳城县', 1313);
INSERT INTO `city` VALUES (1321, '鹿寨县', 1313);
INSERT INTO `city` VALUES (1322, '融安县', 1313);
INSERT INTO `city` VALUES (1323, '融水苗族自治县', 1313);
INSERT INTO `city` VALUES (1324, '三江侗族自治县', 1313);
INSERT INTO `city` VALUES (1325, '桂林市', 1298);
INSERT INTO `city` VALUES (1326, '市辖区', 1325);
INSERT INTO `city` VALUES (1327, '秀峰区', 1325);
INSERT INTO `city` VALUES (1328, '叠彩区', 1325);
INSERT INTO `city` VALUES (1329, '象山区', 1325);
INSERT INTO `city` VALUES (1330, '七星区', 1325);
INSERT INTO `city` VALUES (1331, '雁山区', 1325);
INSERT INTO `city` VALUES (1332, '阳朔县', 1325);
INSERT INTO `city` VALUES (1333, '临桂县', 1325);
INSERT INTO `city` VALUES (1334, '灵川县', 1325);
INSERT INTO `city` VALUES (1335, '全州县', 1325);
INSERT INTO `city` VALUES (1336, '兴安县', 1325);
INSERT INTO `city` VALUES (1337, '永福县', 1325);
INSERT INTO `city` VALUES (1338, '灌阳县', 1325);
INSERT INTO `city` VALUES (1339, '龙胜各族自治县', 1325);
INSERT INTO `city` VALUES (1340, '资源县', 1325);
INSERT INTO `city` VALUES (1341, '平乐县', 1325);
INSERT INTO `city` VALUES (1342, '荔蒲县', 1325);
INSERT INTO `city` VALUES (1343, '恭城瑶族自治县', 1325);
INSERT INTO `city` VALUES (1344, '梧州市', 1298);
INSERT INTO `city` VALUES (1345, '市辖区', 1344);
INSERT INTO `city` VALUES (1346, '万秀区', 1344);
INSERT INTO `city` VALUES (1347, '蝶山区', 1344);
INSERT INTO `city` VALUES (1348, '长洲区', 1344);
INSERT INTO `city` VALUES (1349, '苍梧县', 1344);
INSERT INTO `city` VALUES (1350, '藤　县', 1344);
INSERT INTO `city` VALUES (1351, '蒙山县', 1344);
INSERT INTO `city` VALUES (1352, '岑溪市', 1344);
INSERT INTO `city` VALUES (1353, '北海市', 1298);
INSERT INTO `city` VALUES (1354, '市辖区', 1353);
INSERT INTO `city` VALUES (1355, '海城区', 1353);
INSERT INTO `city` VALUES (1356, '银海区', 1353);
INSERT INTO `city` VALUES (1357, '铁山港区', 1353);
INSERT INTO `city` VALUES (1358, '合浦县', 1353);
INSERT INTO `city` VALUES (1359, '防城港市', 1298);
INSERT INTO `city` VALUES (1360, '市辖区', 1359);
INSERT INTO `city` VALUES (1361, '港口区', 1359);
INSERT INTO `city` VALUES (1362, '防城区', 1359);
INSERT INTO `city` VALUES (1363, '上思县', 1359);
INSERT INTO `city` VALUES (1364, '东兴市', 1359);
INSERT INTO `city` VALUES (1365, '钦州市', 1298);
INSERT INTO `city` VALUES (1366, '市辖区', 1365);
INSERT INTO `city` VALUES (1367, '钦南区', 1365);
INSERT INTO `city` VALUES (1368, '钦北区', 1365);
INSERT INTO `city` VALUES (1369, '灵山县', 1365);
INSERT INTO `city` VALUES (1370, '浦北县', 1365);
INSERT INTO `city` VALUES (1371, '贵港市', 1298);
INSERT INTO `city` VALUES (1372, '市辖区', 1371);
INSERT INTO `city` VALUES (1373, '港北区', 1371);
INSERT INTO `city` VALUES (1374, '港南区', 1371);
INSERT INTO `city` VALUES (1375, '覃塘区', 1371);
INSERT INTO `city` VALUES (1376, '平南县', 1371);
INSERT INTO `city` VALUES (1377, '桂平市', 1371);
INSERT INTO `city` VALUES (1378, '玉林市', 1298);
INSERT INTO `city` VALUES (1379, '市辖区', 1378);
INSERT INTO `city` VALUES (1380, '玉州区', 1378);
INSERT INTO `city` VALUES (1381, '容　县', 1378);
INSERT INTO `city` VALUES (1382, '陆川县', 1378);
INSERT INTO `city` VALUES (1383, '博白县', 1378);
INSERT INTO `city` VALUES (1384, '兴业县', 1378);
INSERT INTO `city` VALUES (1385, '北流市', 1378);
INSERT INTO `city` VALUES (1386, '百色市', 1298);
INSERT INTO `city` VALUES (1387, '市辖区', 1386);
INSERT INTO `city` VALUES (1388, '右江区', 1386);
INSERT INTO `city` VALUES (1389, '田阳县', 1386);
INSERT INTO `city` VALUES (1390, '田东县', 1386);
INSERT INTO `city` VALUES (1391, '平果县', 1386);
INSERT INTO `city` VALUES (1392, '德保县', 1386);
INSERT INTO `city` VALUES (1393, '靖西县', 1386);
INSERT INTO `city` VALUES (1394, '那坡县', 1386);
INSERT INTO `city` VALUES (1395, '凌云县', 1386);
INSERT INTO `city` VALUES (1396, '乐业县', 1386);
INSERT INTO `city` VALUES (1397, '田林县', 1386);
INSERT INTO `city` VALUES (1398, '西林县', 1386);
INSERT INTO `city` VALUES (1399, '隆林各族自治县', 1386);
INSERT INTO `city` VALUES (1400, '贺州市', 1298);
INSERT INTO `city` VALUES (1401, '市辖区', 1400);
INSERT INTO `city` VALUES (1402, '八步区', 1400);
INSERT INTO `city` VALUES (1403, '昭平县', 1400);
INSERT INTO `city` VALUES (1404, '钟山县', 1400);
INSERT INTO `city` VALUES (1405, '富川瑶族自治县', 1400);
INSERT INTO `city` VALUES (1406, '河池市', 1298);
INSERT INTO `city` VALUES (1407, '市辖区', 1406);
INSERT INTO `city` VALUES (1408, '金城江区', 1406);
INSERT INTO `city` VALUES (1409, '南丹县', 1406);
INSERT INTO `city` VALUES (1410, '天峨县', 1406);
INSERT INTO `city` VALUES (1411, '凤山县', 1406);
INSERT INTO `city` VALUES (1412, '东兰县', 1406);
INSERT INTO `city` VALUES (1413, '罗城仫佬族自治县', 1406);
INSERT INTO `city` VALUES (1414, '环江毛南族自治县', 1406);
INSERT INTO `city` VALUES (1415, '巴马瑶族自治县', 1406);
INSERT INTO `city` VALUES (1416, '都安瑶族自治县', 1406);
INSERT INTO `city` VALUES (1417, '大化瑶族自治县', 1406);
INSERT INTO `city` VALUES (1418, '宜州市', 1406);
INSERT INTO `city` VALUES (1419, '来宾市', 1298);
INSERT INTO `city` VALUES (1420, '市辖区', 1419);
INSERT INTO `city` VALUES (1421, '兴宾区', 1419);
INSERT INTO `city` VALUES (1422, '忻城县', 1419);
INSERT INTO `city` VALUES (1423, '象州县', 1419);
INSERT INTO `city` VALUES (1424, '武宣县', 1419);
INSERT INTO `city` VALUES (1425, '金秀瑶族自治县', 1419);
INSERT INTO `city` VALUES (1426, '合山市', 1419);
INSERT INTO `city` VALUES (1427, '崇左市', 1298);
INSERT INTO `city` VALUES (1428, '市辖区', 1427);
INSERT INTO `city` VALUES (1429, '江洲区', 1427);
INSERT INTO `city` VALUES (1430, '扶绥县', 1427);
INSERT INTO `city` VALUES (1431, '宁明县', 1427);
INSERT INTO `city` VALUES (1432, '龙州县', 1427);
INSERT INTO `city` VALUES (1433, '大新县', 1427);
INSERT INTO `city` VALUES (1434, '天等县', 1427);
INSERT INTO `city` VALUES (1435, '凭祥市', 1427);
INSERT INTO `city` VALUES (1436, '陕西省', NULL);
INSERT INTO `city` VALUES (1437, '西安市', 1436);
INSERT INTO `city` VALUES (1438, '市辖区', 1437);
INSERT INTO `city` VALUES (1439, '新城区', 1437);
INSERT INTO `city` VALUES (1440, '碑林区', 1437);
INSERT INTO `city` VALUES (1441, '莲湖区', 1437);
INSERT INTO `city` VALUES (1442, '灞桥区', 1437);
INSERT INTO `city` VALUES (1443, '未央区', 1437);
INSERT INTO `city` VALUES (1444, '雁塔区', 1437);
INSERT INTO `city` VALUES (1445, '阎良区', 1437);
INSERT INTO `city` VALUES (1446, '临潼区', 1437);
INSERT INTO `city` VALUES (1447, '长安区', 1437);
INSERT INTO `city` VALUES (1448, '蓝田县', 1437);
INSERT INTO `city` VALUES (1449, '周至县', 1437);
INSERT INTO `city` VALUES (1450, '户　县', 1437);
INSERT INTO `city` VALUES (1451, '高陵县', 1437);
INSERT INTO `city` VALUES (1452, '铜川市', 1436);
INSERT INTO `city` VALUES (1453, '市辖区', 1452);
INSERT INTO `city` VALUES (1454, '王益区', 1452);
INSERT INTO `city` VALUES (1455, '印台区', 1452);
INSERT INTO `city` VALUES (1456, '耀州区', 1452);
INSERT INTO `city` VALUES (1457, '宜君县', 1452);
INSERT INTO `city` VALUES (1458, '宝鸡市', 1436);
INSERT INTO `city` VALUES (1459, '市辖区', 1458);
INSERT INTO `city` VALUES (1460, '渭滨区', 1458);
INSERT INTO `city` VALUES (1461, '金台区', 1458);
INSERT INTO `city` VALUES (1462, '陈仓区', 1458);
INSERT INTO `city` VALUES (1463, '凤翔县', 1458);
INSERT INTO `city` VALUES (1464, '岐山县', 1458);
INSERT INTO `city` VALUES (1465, '扶风县', 1458);
INSERT INTO `city` VALUES (1466, '眉　县', 1458);
INSERT INTO `city` VALUES (1467, '陇　县', 1458);
INSERT INTO `city` VALUES (1468, '千阳县', 1458);
INSERT INTO `city` VALUES (1469, '麟游县', 1458);
INSERT INTO `city` VALUES (1470, '凤　县', 1458);
INSERT INTO `city` VALUES (1471, '太白县', 1458);
INSERT INTO `city` VALUES (1472, '咸阳市', 1436);
INSERT INTO `city` VALUES (1473, '市辖区', 1472);
INSERT INTO `city` VALUES (1474, '秦都区', 1472);
INSERT INTO `city` VALUES (1475, '杨凌区', 1472);
INSERT INTO `city` VALUES (1476, '渭城区', 1472);
INSERT INTO `city` VALUES (1477, '三原县', 1472);
INSERT INTO `city` VALUES (1478, '泾阳县', 1472);
INSERT INTO `city` VALUES (1479, '乾　县', 1472);
INSERT INTO `city` VALUES (1480, '礼泉县', 1472);
INSERT INTO `city` VALUES (1481, '永寿县', 1472);
INSERT INTO `city` VALUES (1482, '彬　县', 1472);
INSERT INTO `city` VALUES (1483, '长武县', 1472);
INSERT INTO `city` VALUES (1484, '旬邑县', 1472);
INSERT INTO `city` VALUES (1485, '淳化县', 1472);
INSERT INTO `city` VALUES (1486, '武功县', 1472);
INSERT INTO `city` VALUES (1487, '兴平市', 1472);
INSERT INTO `city` VALUES (1488, '渭南市', 1436);
INSERT INTO `city` VALUES (1489, '市辖区', 1488);
INSERT INTO `city` VALUES (1490, '临渭区', 1488);
INSERT INTO `city` VALUES (1491, '华　县', 1488);
INSERT INTO `city` VALUES (1492, '潼关县', 1488);
INSERT INTO `city` VALUES (1493, '大荔县', 1488);
INSERT INTO `city` VALUES (1494, '合阳县', 1488);
INSERT INTO `city` VALUES (1495, '澄城县', 1488);
INSERT INTO `city` VALUES (1496, '蒲城县', 1488);
INSERT INTO `city` VALUES (1497, '白水县', 1488);
INSERT INTO `city` VALUES (1498, '富平县', 1488);
INSERT INTO `city` VALUES (1499, '韩城市', 1488);
INSERT INTO `city` VALUES (1500, '华阴市', 1488);
INSERT INTO `city` VALUES (1501, '延安市', 1436);
INSERT INTO `city` VALUES (1502, '市辖区', 1501);
INSERT INTO `city` VALUES (1503, '宝塔区', 1501);
INSERT INTO `city` VALUES (1504, '延长县', 1501);
INSERT INTO `city` VALUES (1505, '延川县', 1501);
INSERT INTO `city` VALUES (1506, '子长县', 1501);
INSERT INTO `city` VALUES (1507, '安塞县', 1501);
INSERT INTO `city` VALUES (1508, '志丹县', 1501);
INSERT INTO `city` VALUES (1509, '吴旗县', 1501);
INSERT INTO `city` VALUES (1510, '甘泉县', 1501);
INSERT INTO `city` VALUES (1511, '富　县', 1501);
INSERT INTO `city` VALUES (1512, '洛川县', 1501);
INSERT INTO `city` VALUES (1513, '宜川县', 1501);
INSERT INTO `city` VALUES (1514, '黄龙县', 1501);
INSERT INTO `city` VALUES (1515, '黄陵县', 1501);
INSERT INTO `city` VALUES (1516, '汉中市', 1436);
INSERT INTO `city` VALUES (1517, '市辖区', 1516);
INSERT INTO `city` VALUES (1518, '汉台区', 1516);
INSERT INTO `city` VALUES (1519, '南郑县', 1516);
INSERT INTO `city` VALUES (1520, '城固县', 1516);
INSERT INTO `city` VALUES (1521, '洋　县', 1516);
INSERT INTO `city` VALUES (1522, '西乡县', 1516);
INSERT INTO `city` VALUES (1523, '勉　县', 1516);
INSERT INTO `city` VALUES (1524, '宁强县', 1516);
INSERT INTO `city` VALUES (1525, '略阳县', 1516);
INSERT INTO `city` VALUES (1526, '镇巴县', 1516);
INSERT INTO `city` VALUES (1527, '留坝县', 1516);
INSERT INTO `city` VALUES (1528, '佛坪县', 1516);
INSERT INTO `city` VALUES (1529, '榆林市', 1436);
INSERT INTO `city` VALUES (1530, '市辖区', 1529);
INSERT INTO `city` VALUES (1531, '榆阳区', 1529);
INSERT INTO `city` VALUES (1532, '神木县', 1529);
INSERT INTO `city` VALUES (1533, '府谷县', 1529);
INSERT INTO `city` VALUES (1534, '横山县', 1529);
INSERT INTO `city` VALUES (1535, '靖边县', 1529);
INSERT INTO `city` VALUES (1536, '定边县', 1529);
INSERT INTO `city` VALUES (1537, '绥德县', 1529);
INSERT INTO `city` VALUES (1538, '米脂县', 1529);
INSERT INTO `city` VALUES (1539, '佳　县', 1529);
INSERT INTO `city` VALUES (1540, '吴堡县', 1529);
INSERT INTO `city` VALUES (1541, '清涧县', 1529);
INSERT INTO `city` VALUES (1542, '子洲县', 1529);
INSERT INTO `city` VALUES (1543, '安康市', 1436);
INSERT INTO `city` VALUES (1544, '市辖区', 1543);
INSERT INTO `city` VALUES (1545, '汉滨区', 1543);
INSERT INTO `city` VALUES (1546, '汉阴县', 1543);
INSERT INTO `city` VALUES (1547, '石泉县', 1543);
INSERT INTO `city` VALUES (1548, '宁陕县', 1543);
INSERT INTO `city` VALUES (1549, '紫阳县', 1543);
INSERT INTO `city` VALUES (1550, '岚皋县', 1543);
INSERT INTO `city` VALUES (1551, '平利县', 1543);
INSERT INTO `city` VALUES (1552, '镇坪县', 1543);
INSERT INTO `city` VALUES (1553, '旬阳县', 1543);
INSERT INTO `city` VALUES (1554, '白河县', 1543);
INSERT INTO `city` VALUES (1555, '商洛市', 1436);
INSERT INTO `city` VALUES (1556, '市辖区', 1555);
INSERT INTO `city` VALUES (1557, '商州区', 1555);
INSERT INTO `city` VALUES (1558, '洛南县', 1555);
INSERT INTO `city` VALUES (1559, '丹凤县', 1555);
INSERT INTO `city` VALUES (1560, '商南县', 1555);
INSERT INTO `city` VALUES (1561, '山阳县', 1555);
INSERT INTO `city` VALUES (1562, '镇安县', 1555);
INSERT INTO `city` VALUES (1563, '柞水县', 1555);
INSERT INTO `city` VALUES (1564, '甘肃省', NULL);
INSERT INTO `city` VALUES (1565, '兰州市', 1564);
INSERT INTO `city` VALUES (1566, '市辖区', 1565);
INSERT INTO `city` VALUES (1567, '城关区', 1565);
INSERT INTO `city` VALUES (1568, '七里河区', 1565);
INSERT INTO `city` VALUES (1569, '西固区', 1565);
INSERT INTO `city` VALUES (1570, '安宁区', 1565);
INSERT INTO `city` VALUES (1571, '红古区', 1565);
INSERT INTO `city` VALUES (1572, '永登县', 1565);
INSERT INTO `city` VALUES (1573, '皋兰县', 1565);
INSERT INTO `city` VALUES (1574, '榆中县', 1565);
INSERT INTO `city` VALUES (1575, '嘉峪关市', 1564);
INSERT INTO `city` VALUES (1576, '市辖区', 1575);
INSERT INTO `city` VALUES (1577, '金昌市', 1564);
INSERT INTO `city` VALUES (1578, '市辖区', 1577);
INSERT INTO `city` VALUES (1579, '金川区', 1577);
INSERT INTO `city` VALUES (1580, '永昌县', 1577);
INSERT INTO `city` VALUES (1581, '白银市', 1564);
INSERT INTO `city` VALUES (1582, '市辖区', 1581);
INSERT INTO `city` VALUES (1583, '白银区', 1581);
INSERT INTO `city` VALUES (1584, '平川区', 1581);
INSERT INTO `city` VALUES (1585, '靖远县', 1581);
INSERT INTO `city` VALUES (1586, '会宁县', 1581);
INSERT INTO `city` VALUES (1587, '景泰县', 1581);
INSERT INTO `city` VALUES (1588, '天水市', 1564);
INSERT INTO `city` VALUES (1589, '市辖区', 1588);
INSERT INTO `city` VALUES (1590, '秦城区', 1588);
INSERT INTO `city` VALUES (1591, '北道区', 1588);
INSERT INTO `city` VALUES (1592, '清水县', 1588);
INSERT INTO `city` VALUES (1593, '秦安县', 1588);
INSERT INTO `city` VALUES (1594, '甘谷县', 1588);
INSERT INTO `city` VALUES (1595, '武山县', 1588);
INSERT INTO `city` VALUES (1596, '张家川回族自治县', 1588);
INSERT INTO `city` VALUES (1597, '武威市', 1564);
INSERT INTO `city` VALUES (1598, '市辖区', 1597);
INSERT INTO `city` VALUES (1599, '凉州区', 1597);
INSERT INTO `city` VALUES (1600, '民勤县', 1597);
INSERT INTO `city` VALUES (1601, '古浪县', 1597);
INSERT INTO `city` VALUES (1602, '天祝藏族自治县', 1597);
INSERT INTO `city` VALUES (1603, '张掖市', 1564);
INSERT INTO `city` VALUES (1604, '市辖区', 1603);
INSERT INTO `city` VALUES (1605, '甘州区', 1603);
INSERT INTO `city` VALUES (1606, '肃南裕固族自治县', 1603);
INSERT INTO `city` VALUES (1607, '民乐县', 1603);
INSERT INTO `city` VALUES (1608, '临泽县', 1603);
INSERT INTO `city` VALUES (1609, '高台县', 1603);
INSERT INTO `city` VALUES (1610, '山丹县', 1603);
INSERT INTO `city` VALUES (1611, '平凉市', 1564);
INSERT INTO `city` VALUES (1612, '市辖区', 1611);
INSERT INTO `city` VALUES (1613, '崆峒区', 1611);
INSERT INTO `city` VALUES (1614, '泾川县', 1611);
INSERT INTO `city` VALUES (1615, '灵台县', 1611);
INSERT INTO `city` VALUES (1616, '崇信县', 1611);
INSERT INTO `city` VALUES (1617, '华亭县', 1611);
INSERT INTO `city` VALUES (1618, '庄浪县', 1611);
INSERT INTO `city` VALUES (1619, '静宁县', 1611);
INSERT INTO `city` VALUES (1620, '酒泉市', 1564);
INSERT INTO `city` VALUES (1621, '市辖区', 1620);
INSERT INTO `city` VALUES (1622, '肃州区', 1620);
INSERT INTO `city` VALUES (1623, '金塔县', 1620);
INSERT INTO `city` VALUES (1624, '安西县', 1620);
INSERT INTO `city` VALUES (1625, '肃北蒙古族自治县', 1620);
INSERT INTO `city` VALUES (1626, '阿克塞哈萨克族自治县', 1620);
INSERT INTO `city` VALUES (1627, '玉门市', 1620);
INSERT INTO `city` VALUES (1628, '敦煌市', 1620);
INSERT INTO `city` VALUES (1629, '庆阳市', 1564);
INSERT INTO `city` VALUES (1630, '市辖区', 1629);
INSERT INTO `city` VALUES (1631, '西峰区', 1629);
INSERT INTO `city` VALUES (1632, '庆城县', 1629);
INSERT INTO `city` VALUES (1633, '环　县', 1629);
INSERT INTO `city` VALUES (1634, '华池县', 1629);
INSERT INTO `city` VALUES (1635, '合水县', 1629);
INSERT INTO `city` VALUES (1636, '正宁县', 1629);
INSERT INTO `city` VALUES (1637, '宁　县', 1629);
INSERT INTO `city` VALUES (1638, '镇原县', 1629);
INSERT INTO `city` VALUES (1639, '定西市', 1564);
INSERT INTO `city` VALUES (1640, '市辖区', 1639);
INSERT INTO `city` VALUES (1641, '安定区', 1639);
INSERT INTO `city` VALUES (1642, '通渭县', 1639);
INSERT INTO `city` VALUES (1643, '陇西县', 1639);
INSERT INTO `city` VALUES (1644, '渭源县', 1639);
INSERT INTO `city` VALUES (1645, '临洮县', 1639);
INSERT INTO `city` VALUES (1646, '漳　县', 1639);
INSERT INTO `city` VALUES (1647, '岷　县', 1639);
INSERT INTO `city` VALUES (1648, '陇南市', 1564);
INSERT INTO `city` VALUES (1649, '市辖区', 1648);
INSERT INTO `city` VALUES (1650, '武都区', 1648);
INSERT INTO `city` VALUES (1651, '成　县', 1648);
INSERT INTO `city` VALUES (1652, '文　县', 1648);
INSERT INTO `city` VALUES (1653, '宕昌县', 1648);
INSERT INTO `city` VALUES (1654, '康　县', 1648);
INSERT INTO `city` VALUES (1655, '西和县', 1648);
INSERT INTO `city` VALUES (1656, '礼　县', 1648);
INSERT INTO `city` VALUES (1657, '徽　县', 1648);
INSERT INTO `city` VALUES (1658, '两当县', 1648);
INSERT INTO `city` VALUES (1659, '临夏回族自治州', 1564);
INSERT INTO `city` VALUES (1660, '临夏市', 1659);
INSERT INTO `city` VALUES (1661, '临夏县', 1659);
INSERT INTO `city` VALUES (1662, '康乐县', 1659);
INSERT INTO `city` VALUES (1663, '永靖县', 1659);
INSERT INTO `city` VALUES (1664, '广河县', 1659);
INSERT INTO `city` VALUES (1665, '和政县', 1659);
INSERT INTO `city` VALUES (1666, '东乡族自治县', 1659);
INSERT INTO `city` VALUES (1667, '积石山保安族东乡族撒拉族自治县', 1659);
INSERT INTO `city` VALUES (1668, '甘南藏族自治州', 1564);
INSERT INTO `city` VALUES (1669, '合作市', 1668);
INSERT INTO `city` VALUES (1670, '临潭县', 1668);
INSERT INTO `city` VALUES (1671, '卓尼县', 1668);
INSERT INTO `city` VALUES (1672, '舟曲县', 1668);
INSERT INTO `city` VALUES (1673, '迭部县', 1668);
INSERT INTO `city` VALUES (1674, '玛曲县', 1668);
INSERT INTO `city` VALUES (1675, '碌曲县', 1668);
INSERT INTO `city` VALUES (1676, '夏河县', 1668);
INSERT INTO `city` VALUES (1677, '青海省', NULL);
INSERT INTO `city` VALUES (1678, '西宁市', 1677);
INSERT INTO `city` VALUES (1679, '市辖区', 1678);
INSERT INTO `city` VALUES (1680, '城东区', 1678);
INSERT INTO `city` VALUES (1681, '城中区', 1678);
INSERT INTO `city` VALUES (1682, '城西区', 1678);
INSERT INTO `city` VALUES (1683, '城北区', 1678);
INSERT INTO `city` VALUES (1684, '大通回族土族自治县', 1678);
INSERT INTO `city` VALUES (1685, '湟中县', 1678);
INSERT INTO `city` VALUES (1686, '湟源县', 1678);
INSERT INTO `city` VALUES (1687, '海东地区', 1677);
INSERT INTO `city` VALUES (1688, '平安县', 1687);
INSERT INTO `city` VALUES (1689, '民和回族土族自治县', 1687);
INSERT INTO `city` VALUES (1690, '乐都县', 1687);
INSERT INTO `city` VALUES (1691, '互助土族自治县', 1687);
INSERT INTO `city` VALUES (1692, '化隆回族自治县', 1687);
INSERT INTO `city` VALUES (1693, '循化撒拉族自治县', 1687);
INSERT INTO `city` VALUES (1694, '海北藏族自治州', 1677);
INSERT INTO `city` VALUES (1695, '门源回族自治县', 1694);
INSERT INTO `city` VALUES (1696, '祁连县', 1694);
INSERT INTO `city` VALUES (1697, '海晏县', 1694);
INSERT INTO `city` VALUES (1698, '刚察县', 1694);
INSERT INTO `city` VALUES (1699, '黄南藏族自治州', 1677);
INSERT INTO `city` VALUES (1700, '同仁县', 1699);
INSERT INTO `city` VALUES (1701, '尖扎县', 1699);
INSERT INTO `city` VALUES (1702, '泽库县', 1699);
INSERT INTO `city` VALUES (1703, '河南蒙古族自治县', 1699);
INSERT INTO `city` VALUES (1704, '海南藏族自治州', 1677);
INSERT INTO `city` VALUES (1705, '共和县', 1704);
INSERT INTO `city` VALUES (1706, '同德县', 1704);
INSERT INTO `city` VALUES (1707, '贵德县', 1704);
INSERT INTO `city` VALUES (1708, '兴海县', 1704);
INSERT INTO `city` VALUES (1709, '贵南县', 1704);
INSERT INTO `city` VALUES (1710, '果洛藏族自治州', 1677);
INSERT INTO `city` VALUES (1711, '玛沁县', 1710);
INSERT INTO `city` VALUES (1712, '班玛县', 1710);
INSERT INTO `city` VALUES (1713, '甘德县', 1710);
INSERT INTO `city` VALUES (1714, '达日县', 1710);
INSERT INTO `city` VALUES (1715, '久治县', 1710);
INSERT INTO `city` VALUES (1716, '玛多县', 1710);
INSERT INTO `city` VALUES (1717, '玉树藏族自治州', 1677);
INSERT INTO `city` VALUES (1718, '玉树县', 1717);
INSERT INTO `city` VALUES (1719, '杂多县', 1717);
INSERT INTO `city` VALUES (1720, '称多县', 1717);
INSERT INTO `city` VALUES (1721, '治多县', 1717);
INSERT INTO `city` VALUES (1722, '囊谦县', 1717);
INSERT INTO `city` VALUES (1723, '曲麻莱县', 1717);
INSERT INTO `city` VALUES (1724, '海西蒙古族藏族自治州', 1677);
INSERT INTO `city` VALUES (1725, '格尔木市', 1724);
INSERT INTO `city` VALUES (1726, '德令哈市', 1724);
INSERT INTO `city` VALUES (1727, '乌兰县', 1724);
INSERT INTO `city` VALUES (1728, '都兰县', 1724);
INSERT INTO `city` VALUES (1729, '天峻县', 1724);
INSERT INTO `city` VALUES (1730, '宁夏回族自治区', NULL);
INSERT INTO `city` VALUES (1731, '银川市', 1730);
INSERT INTO `city` VALUES (1732, '市辖区', 1731);
INSERT INTO `city` VALUES (1733, '兴庆区', 1731);
INSERT INTO `city` VALUES (1734, '西夏区', 1731);
INSERT INTO `city` VALUES (1735, '金凤区', 1731);
INSERT INTO `city` VALUES (1736, '永宁县', 1731);
INSERT INTO `city` VALUES (1737, '贺兰县', 1731);
INSERT INTO `city` VALUES (1738, '灵武市', 1731);
INSERT INTO `city` VALUES (1739, '石嘴山市', 1730);
INSERT INTO `city` VALUES (1740, '市辖区', 1739);
INSERT INTO `city` VALUES (1741, '大武口区', 1739);
INSERT INTO `city` VALUES (1742, '惠农区', 1739);
INSERT INTO `city` VALUES (1743, '平罗县', 1739);
INSERT INTO `city` VALUES (1744, '吴忠市', 1730);
INSERT INTO `city` VALUES (1745, '市辖区', 1744);
INSERT INTO `city` VALUES (1746, '利通区', 1744);
INSERT INTO `city` VALUES (1747, '盐池县', 1744);
INSERT INTO `city` VALUES (1748, '同心县', 1744);
INSERT INTO `city` VALUES (1749, '青铜峡市', 1744);
INSERT INTO `city` VALUES (1750, '固原市', 1730);
INSERT INTO `city` VALUES (1751, '市辖区', 1750);
INSERT INTO `city` VALUES (1752, '原州区', 1750);
INSERT INTO `city` VALUES (1753, '西吉县', 1750);
INSERT INTO `city` VALUES (1754, '隆德县', 1750);
INSERT INTO `city` VALUES (1755, '泾源县', 1750);
INSERT INTO `city` VALUES (1756, '彭阳县', 1750);
INSERT INTO `city` VALUES (1757, '海原县', 1750);
INSERT INTO `city` VALUES (1758, '中卫市', 1730);
INSERT INTO `city` VALUES (1759, '市辖区', 1758);
INSERT INTO `city` VALUES (1760, '沙坡头区', 1758);
INSERT INTO `city` VALUES (1761, '中宁县', 1758);
INSERT INTO `city` VALUES (1762, '新疆维吾尔自治区', NULL);
INSERT INTO `city` VALUES (1763, '乌鲁木齐市', 1762);
INSERT INTO `city` VALUES (1764, '市辖区', 1763);
INSERT INTO `city` VALUES (1765, '天山区', 1763);
INSERT INTO `city` VALUES (1766, '沙依巴克区', 1763);
INSERT INTO `city` VALUES (1767, '新市区', 1763);
INSERT INTO `city` VALUES (1768, '水磨沟区', 1763);
INSERT INTO `city` VALUES (1769, '头屯河区', 1763);
INSERT INTO `city` VALUES (1770, '达坂城区', 1763);
INSERT INTO `city` VALUES (1771, '东山区', 1763);
INSERT INTO `city` VALUES (1772, '乌鲁木齐县', 1763);
INSERT INTO `city` VALUES (1773, '克拉玛依市', 1762);
INSERT INTO `city` VALUES (1774, '市辖区', 1773);
INSERT INTO `city` VALUES (1775, '独山子区', 1773);
INSERT INTO `city` VALUES (1776, '克拉玛依区', 1773);
INSERT INTO `city` VALUES (1777, '白碱滩区', 1773);
INSERT INTO `city` VALUES (1778, '乌尔禾区', 1773);
INSERT INTO `city` VALUES (1779, '吐鲁番地区', 1762);
INSERT INTO `city` VALUES (1780, '吐鲁番市', 1779);
INSERT INTO `city` VALUES (1781, '鄯善县', 1779);
INSERT INTO `city` VALUES (1782, '托克逊县', 1779);
INSERT INTO `city` VALUES (1783, '哈密地区', 1762);
INSERT INTO `city` VALUES (1784, '哈密市', 1783);
INSERT INTO `city` VALUES (1785, '巴里坤哈萨克自治县', 1783);
INSERT INTO `city` VALUES (1786, '伊吾县', 1783);
INSERT INTO `city` VALUES (1787, '昌吉回族自治州', 1762);
INSERT INTO `city` VALUES (1788, '昌吉市', 1787);
INSERT INTO `city` VALUES (1789, '阜康市', 1787);
INSERT INTO `city` VALUES (1790, '米泉市', 1787);
INSERT INTO `city` VALUES (1791, '呼图壁县', 1787);
INSERT INTO `city` VALUES (1792, '玛纳斯县', 1787);
INSERT INTO `city` VALUES (1793, '奇台县', 1787);
INSERT INTO `city` VALUES (1794, '吉木萨尔县', 1787);
INSERT INTO `city` VALUES (1795, '木垒哈萨克自治县', 1787);
INSERT INTO `city` VALUES (1796, '博尔塔拉蒙古自治州', 1762);
INSERT INTO `city` VALUES (1797, '博乐市', 1796);
INSERT INTO `city` VALUES (1798, '精河县', 1796);
INSERT INTO `city` VALUES (1799, '温泉县', 1796);
INSERT INTO `city` VALUES (1800, '巴音郭楞蒙古自治州', 1762);
INSERT INTO `city` VALUES (1801, '库尔勒市', 1800);
INSERT INTO `city` VALUES (1802, '轮台县', 1800);
INSERT INTO `city` VALUES (1803, '尉犁县', 1800);
INSERT INTO `city` VALUES (1804, '若羌县', 1800);
INSERT INTO `city` VALUES (1805, '且末县', 1800);
INSERT INTO `city` VALUES (1806, '焉耆回族自治县', 1800);
INSERT INTO `city` VALUES (1807, '和静县', 1800);
INSERT INTO `city` VALUES (1808, '和硕县', 1800);
INSERT INTO `city` VALUES (1809, '博湖县', 1800);
INSERT INTO `city` VALUES (1810, '阿克苏地区', 1762);
INSERT INTO `city` VALUES (1811, '阿克苏市', 1810);
INSERT INTO `city` VALUES (1812, '温宿县', 1810);
INSERT INTO `city` VALUES (1813, '库车县', 1810);
INSERT INTO `city` VALUES (1814, '沙雅县', 1810);
INSERT INTO `city` VALUES (1815, '新和县', 1810);
INSERT INTO `city` VALUES (1816, '拜城县', 1810);
INSERT INTO `city` VALUES (1817, '乌什县', 1810);
INSERT INTO `city` VALUES (1818, '阿瓦提县', 1810);
INSERT INTO `city` VALUES (1819, '柯坪县', 1810);
INSERT INTO `city` VALUES (1820, '克孜勒苏柯尔克孜自治州', 1762);
INSERT INTO `city` VALUES (1821, '阿图什市', 1820);
INSERT INTO `city` VALUES (1822, '阿克陶县', 1820);
INSERT INTO `city` VALUES (1823, '阿合奇县', 1820);
INSERT INTO `city` VALUES (1824, '乌恰县', 1820);
INSERT INTO `city` VALUES (1825, '喀什地区', 1762);
INSERT INTO `city` VALUES (1826, '喀什市', 1825);
INSERT INTO `city` VALUES (1827, '疏附县', 1825);
INSERT INTO `city` VALUES (1828, '疏勒县', 1825);
INSERT INTO `city` VALUES (1829, '英吉沙县', 1825);
INSERT INTO `city` VALUES (1830, '泽普县', 1825);
INSERT INTO `city` VALUES (1831, '莎车县', 1825);
INSERT INTO `city` VALUES (1832, '叶城县', 1825);
INSERT INTO `city` VALUES (1833, '麦盖提县', 1825);
INSERT INTO `city` VALUES (1834, '岳普湖县', 1825);
INSERT INTO `city` VALUES (1835, '伽师县', 1825);
INSERT INTO `city` VALUES (1836, '巴楚县', 1825);
INSERT INTO `city` VALUES (1837, '塔什库尔干塔吉克自治县', 1825);
INSERT INTO `city` VALUES (1838, '和田地区', 1762);
INSERT INTO `city` VALUES (1839, '和田市', 1838);
INSERT INTO `city` VALUES (1840, '和田县', 1838);
INSERT INTO `city` VALUES (1841, '墨玉县', 1838);
INSERT INTO `city` VALUES (1842, '皮山县', 1838);
INSERT INTO `city` VALUES (1843, '洛浦县', 1838);
INSERT INTO `city` VALUES (1844, '策勒县', 1838);
INSERT INTO `city` VALUES (1845, '于田县', 1838);
INSERT INTO `city` VALUES (1846, '民丰县', 1838);
INSERT INTO `city` VALUES (1847, '伊犁哈萨克自治州', 1762);
INSERT INTO `city` VALUES (1848, '伊宁市', 1847);
INSERT INTO `city` VALUES (1849, '奎屯市', 1847);
INSERT INTO `city` VALUES (1850, '伊宁县', 1847);
INSERT INTO `city` VALUES (1851, '察布查尔锡伯自治县', 1847);
INSERT INTO `city` VALUES (1852, '霍城县', 1847);
INSERT INTO `city` VALUES (1853, '巩留县', 1847);
INSERT INTO `city` VALUES (1854, '新源县', 1847);
INSERT INTO `city` VALUES (1855, '昭苏县', 1847);
INSERT INTO `city` VALUES (1856, '特克斯县', 1847);
INSERT INTO `city` VALUES (1857, '尼勒克县', 1847);
INSERT INTO `city` VALUES (1858, '塔城地区', 1762);
INSERT INTO `city` VALUES (1859, '塔城市', 1858);
INSERT INTO `city` VALUES (1860, '乌苏市', 1858);
INSERT INTO `city` VALUES (1861, '额敏县', 1858);
INSERT INTO `city` VALUES (1862, '沙湾县', 1858);
INSERT INTO `city` VALUES (1863, '托里县', 1858);
INSERT INTO `city` VALUES (1864, '裕民县', 1858);
INSERT INTO `city` VALUES (1865, '和布克赛尔蒙古自治县', 1858);
INSERT INTO `city` VALUES (1866, '阿勒泰地区', 1762);
INSERT INTO `city` VALUES (1867, '阿勒泰市', 1866);
INSERT INTO `city` VALUES (1868, '布尔津县', 1866);
INSERT INTO `city` VALUES (1869, '富蕴县', 1866);
INSERT INTO `city` VALUES (1870, '福海县', 1866);
INSERT INTO `city` VALUES (1871, '哈巴河县', 1866);
INSERT INTO `city` VALUES (1872, '青河县', 1866);
INSERT INTO `city` VALUES (1873, '吉木乃县', 1866);
INSERT INTO `city` VALUES (1874, '省直辖行政单位', 1762);
INSERT INTO `city` VALUES (1875, '石河子市', 979);
INSERT INTO `city` VALUES (1876, '阿拉尔市', 979);
INSERT INTO `city` VALUES (1877, '图木舒克市', 979);
INSERT INTO `city` VALUES (1878, '五家渠市', 979);
INSERT INTO `city` VALUES (1879, '河北省', NULL);
INSERT INTO `city` VALUES (1880, '石家庄市', 1879);
INSERT INTO `city` VALUES (1881, '市辖区', 1880);
INSERT INTO `city` VALUES (1882, '长安区', 1880);
INSERT INTO `city` VALUES (1883, '桥东区', 1880);
INSERT INTO `city` VALUES (1884, '桥西区', 1880);
INSERT INTO `city` VALUES (1885, '新华区', 1880);
INSERT INTO `city` VALUES (1886, '井陉矿区', 1880);
INSERT INTO `city` VALUES (1887, '裕华区', 1880);
INSERT INTO `city` VALUES (1888, '井陉县', 1880);
INSERT INTO `city` VALUES (1889, '正定县', 1880);
INSERT INTO `city` VALUES (1890, '栾城县', 1880);
INSERT INTO `city` VALUES (1891, '行唐县', 1880);
INSERT INTO `city` VALUES (1892, '灵寿县', 1880);
INSERT INTO `city` VALUES (1893, '高邑县', 1880);
INSERT INTO `city` VALUES (1894, '深泽县', 1880);
INSERT INTO `city` VALUES (1895, '赞皇县', 1880);
INSERT INTO `city` VALUES (1896, '无极县', 1880);
INSERT INTO `city` VALUES (1897, '平山县', 1880);
INSERT INTO `city` VALUES (1898, '元氏县', 1880);
INSERT INTO `city` VALUES (1899, '赵　县', 1880);
INSERT INTO `city` VALUES (1900, '辛集市', 1880);
INSERT INTO `city` VALUES (1901, '藁城市', 1880);
INSERT INTO `city` VALUES (1902, '晋州市', 1880);
INSERT INTO `city` VALUES (1903, '新乐市', 1880);
INSERT INTO `city` VALUES (1904, '鹿泉市', 1880);
INSERT INTO `city` VALUES (1905, '唐山市', 1879);
INSERT INTO `city` VALUES (1906, '市辖区', 1905);
INSERT INTO `city` VALUES (1907, '路南区', 1905);
INSERT INTO `city` VALUES (1908, '路北区', 1905);
INSERT INTO `city` VALUES (1909, '古冶区', 1905);
INSERT INTO `city` VALUES (1910, '开平区', 1905);
INSERT INTO `city` VALUES (1911, '丰南区', 1905);
INSERT INTO `city` VALUES (1912, '丰润区', 1905);
INSERT INTO `city` VALUES (1913, '滦　县', 1905);
INSERT INTO `city` VALUES (1914, '滦南县', 1905);
INSERT INTO `city` VALUES (1915, '乐亭县', 1905);
INSERT INTO `city` VALUES (1916, '迁西县', 1905);
INSERT INTO `city` VALUES (1917, '玉田县', 1905);
INSERT INTO `city` VALUES (1918, '唐海县', 1905);
INSERT INTO `city` VALUES (1919, '遵化市', 1905);
INSERT INTO `city` VALUES (1920, '迁安市', 1905);
INSERT INTO `city` VALUES (1921, '秦皇岛市', 1879);
INSERT INTO `city` VALUES (1922, '市辖区', 1921);
INSERT INTO `city` VALUES (1923, '海港区', 1921);
INSERT INTO `city` VALUES (1924, '山海关区', 1921);
INSERT INTO `city` VALUES (1925, '北戴河区', 1921);
INSERT INTO `city` VALUES (1926, '青龙满族自治县', 1921);
INSERT INTO `city` VALUES (1927, '昌黎县', 1921);
INSERT INTO `city` VALUES (1928, '抚宁县', 1921);
INSERT INTO `city` VALUES (1929, '卢龙县', 1921);
INSERT INTO `city` VALUES (1930, '邯郸市', 1879);
INSERT INTO `city` VALUES (1931, '市辖区', 1930);
INSERT INTO `city` VALUES (1932, '邯山区', 1930);
INSERT INTO `city` VALUES (1933, '丛台区', 1930);
INSERT INTO `city` VALUES (1934, '复兴区', 1930);
INSERT INTO `city` VALUES (1935, '峰峰矿区', 1930);
INSERT INTO `city` VALUES (1936, '邯郸县', 1930);
INSERT INTO `city` VALUES (1937, '临漳县', 1930);
INSERT INTO `city` VALUES (1938, '成安县', 1930);
INSERT INTO `city` VALUES (1939, '大名县', 1930);
INSERT INTO `city` VALUES (1940, '涉　县', 1930);
INSERT INTO `city` VALUES (1941, '磁　县', 1930);
INSERT INTO `city` VALUES (1942, '肥乡县', 1930);
INSERT INTO `city` VALUES (1943, '永年县', 1930);
INSERT INTO `city` VALUES (1944, '邱　县', 1930);
INSERT INTO `city` VALUES (1945, '鸡泽县', 1930);
INSERT INTO `city` VALUES (1946, '广平县', 1930);
INSERT INTO `city` VALUES (1947, '馆陶县', 1930);
INSERT INTO `city` VALUES (1948, '魏　县', 1930);
INSERT INTO `city` VALUES (1949, '曲周县', 1930);
INSERT INTO `city` VALUES (1950, '武安市', 1930);
INSERT INTO `city` VALUES (1951, '邢台市', 1879);
INSERT INTO `city` VALUES (1952, '市辖区', 1951);
INSERT INTO `city` VALUES (1953, '桥东区', 1951);
INSERT INTO `city` VALUES (1954, '桥西区', 1951);
INSERT INTO `city` VALUES (1955, '邢台县', 1951);
INSERT INTO `city` VALUES (1956, '临城县', 1951);
INSERT INTO `city` VALUES (1957, '内丘县', 1951);
INSERT INTO `city` VALUES (1958, '柏乡县', 1951);
INSERT INTO `city` VALUES (1959, '隆尧县', 1951);
INSERT INTO `city` VALUES (1960, '任　县', 1951);
INSERT INTO `city` VALUES (1961, '南和县', 1951);
INSERT INTO `city` VALUES (1962, '宁晋县', 1951);
INSERT INTO `city` VALUES (1963, '巨鹿县', 1951);
INSERT INTO `city` VALUES (1964, '新河县', 1951);
INSERT INTO `city` VALUES (1965, '广宗县', 1951);
INSERT INTO `city` VALUES (1966, '平乡县', 1951);
INSERT INTO `city` VALUES (1967, '威　县', 1951);
INSERT INTO `city` VALUES (1968, '清河县', 1951);
INSERT INTO `city` VALUES (1969, '临西县', 1951);
INSERT INTO `city` VALUES (1970, '南宫市', 1951);
INSERT INTO `city` VALUES (1971, '沙河市', 1951);
INSERT INTO `city` VALUES (1972, '保定市', 1879);
INSERT INTO `city` VALUES (1973, '市辖区', 1972);
INSERT INTO `city` VALUES (1974, '新市区', 1972);
INSERT INTO `city` VALUES (1975, '北市区', 1972);
INSERT INTO `city` VALUES (1976, '南市区', 1972);
INSERT INTO `city` VALUES (1977, '满城县', 1972);
INSERT INTO `city` VALUES (1978, '清苑县', 1972);
INSERT INTO `city` VALUES (1979, '涞水县', 1972);
INSERT INTO `city` VALUES (1980, '阜平县', 1972);
INSERT INTO `city` VALUES (1981, '徐水县', 1972);
INSERT INTO `city` VALUES (1982, '定兴县', 1972);
INSERT INTO `city` VALUES (1983, '唐　县', 1972);
INSERT INTO `city` VALUES (1984, '高阳县', 1972);
INSERT INTO `city` VALUES (1985, '容城县', 1972);
INSERT INTO `city` VALUES (1986, '涞源县', 1972);
INSERT INTO `city` VALUES (1987, '望都县', 1972);
INSERT INTO `city` VALUES (1988, '安新县', 1972);
INSERT INTO `city` VALUES (1989, '易　县', 1972);
INSERT INTO `city` VALUES (1990, '曲阳县', 1972);
INSERT INTO `city` VALUES (1991, '蠡　县', 1972);
INSERT INTO `city` VALUES (1992, '顺平县', 1972);
INSERT INTO `city` VALUES (1993, '博野县', 1972);
INSERT INTO `city` VALUES (1994, '雄　县', 1972);
INSERT INTO `city` VALUES (1995, '涿州市', 1972);
INSERT INTO `city` VALUES (1996, '定州市', 1972);
INSERT INTO `city` VALUES (1997, '安国市', 1972);
INSERT INTO `city` VALUES (1998, '高碑店市', 1972);
INSERT INTO `city` VALUES (1999, '张家口市', 1879);
INSERT INTO `city` VALUES (2000, '市辖区', 1999);
INSERT INTO `city` VALUES (2001, '桥东区', 1999);
INSERT INTO `city` VALUES (2002, '桥西区', 1999);
INSERT INTO `city` VALUES (2003, '宣化区', 1999);
INSERT INTO `city` VALUES (2004, '下花园区', 1999);
INSERT INTO `city` VALUES (2005, '宣化县', 1999);
INSERT INTO `city` VALUES (2006, '张北县', 1999);
INSERT INTO `city` VALUES (2007, '康保县', 1999);
INSERT INTO `city` VALUES (2008, '沽源县', 1999);
INSERT INTO `city` VALUES (2009, '尚义县', 1999);
INSERT INTO `city` VALUES (2010, '蔚　县', 1999);
INSERT INTO `city` VALUES (2011, '阳原县', 1999);
INSERT INTO `city` VALUES (2012, '怀安县', 1999);
INSERT INTO `city` VALUES (2013, '万全县', 1999);
INSERT INTO `city` VALUES (2014, '怀来县', 1999);
INSERT INTO `city` VALUES (2015, '涿鹿县', 1999);
INSERT INTO `city` VALUES (2016, '赤城县', 1999);
INSERT INTO `city` VALUES (2017, '崇礼县', 1999);
INSERT INTO `city` VALUES (2018, '承德市', 1879);
INSERT INTO `city` VALUES (2019, '市辖区', 2018);
INSERT INTO `city` VALUES (2020, '双桥区', 2018);
INSERT INTO `city` VALUES (2021, '双滦区', 2018);
INSERT INTO `city` VALUES (2022, '鹰手营子矿区', 2018);
INSERT INTO `city` VALUES (2023, '承德县', 2018);
INSERT INTO `city` VALUES (2024, '兴隆县', 2018);
INSERT INTO `city` VALUES (2025, '平泉县', 2018);
INSERT INTO `city` VALUES (2026, '滦平县', 2018);
INSERT INTO `city` VALUES (2027, '隆化县', 2018);
INSERT INTO `city` VALUES (2028, '丰宁满族自治县', 2018);
INSERT INTO `city` VALUES (2029, '宽城满族自治县', 2018);
INSERT INTO `city` VALUES (2030, '围场满族蒙古族自治县', 2018);
INSERT INTO `city` VALUES (2031, '沧州市', 1879);
INSERT INTO `city` VALUES (2032, '市辖区', 2031);
INSERT INTO `city` VALUES (2033, '新华区', 2031);
INSERT INTO `city` VALUES (2034, '运河区', 2031);
INSERT INTO `city` VALUES (2035, '沧　县', 2031);
INSERT INTO `city` VALUES (2036, '青　县', 2031);
INSERT INTO `city` VALUES (2037, '东光县', 2031);
INSERT INTO `city` VALUES (2038, '海兴县', 2031);
INSERT INTO `city` VALUES (2039, '盐山县', 2031);
INSERT INTO `city` VALUES (2040, '肃宁县', 2031);
INSERT INTO `city` VALUES (2041, '南皮县', 2031);
INSERT INTO `city` VALUES (2042, '吴桥县', 2031);
INSERT INTO `city` VALUES (2043, '献　县', 2031);
INSERT INTO `city` VALUES (2044, '孟村回族自治县', 2031);
INSERT INTO `city` VALUES (2045, '泊头市', 2031);
INSERT INTO `city` VALUES (2046, '任丘市', 2031);
INSERT INTO `city` VALUES (2047, '黄骅市', 2031);
INSERT INTO `city` VALUES (2048, '河间市', 2031);
INSERT INTO `city` VALUES (2049, '廊坊市', 1879);
INSERT INTO `city` VALUES (2050, '市辖区', 2049);
INSERT INTO `city` VALUES (2051, '安次区', 2049);
INSERT INTO `city` VALUES (2052, '广阳区', 2049);
INSERT INTO `city` VALUES (2053, '固安县', 2049);
INSERT INTO `city` VALUES (2054, '永清县', 2049);
INSERT INTO `city` VALUES (2055, '香河县', 2049);
INSERT INTO `city` VALUES (2056, '大城县', 2049);
INSERT INTO `city` VALUES (2057, '文安县', 2049);
INSERT INTO `city` VALUES (2058, '大厂回族自治县', 2049);
INSERT INTO `city` VALUES (2059, '霸州市', 2049);
INSERT INTO `city` VALUES (2060, '三河市', 2049);
INSERT INTO `city` VALUES (2061, '衡水市', 1879);
INSERT INTO `city` VALUES (2062, '市辖区', 2061);
INSERT INTO `city` VALUES (2063, '桃城区', 2061);
INSERT INTO `city` VALUES (2064, '枣强县', 2061);
INSERT INTO `city` VALUES (2065, '武邑县', 2061);
INSERT INTO `city` VALUES (2066, '武强县', 2061);
INSERT INTO `city` VALUES (2067, '饶阳县', 2061);
INSERT INTO `city` VALUES (2068, '安平县', 2061);
INSERT INTO `city` VALUES (2069, '故城县', 2061);
INSERT INTO `city` VALUES (2070, '景　县', 2061);
INSERT INTO `city` VALUES (2071, '阜城县', 2061);
INSERT INTO `city` VALUES (2072, '冀州市', 2061);
INSERT INTO `city` VALUES (2073, '深州市', 2061);
INSERT INTO `city` VALUES (2074, '山西省', NULL);
INSERT INTO `city` VALUES (2075, '太原市', 2074);
INSERT INTO `city` VALUES (2076, '市辖区', 2075);
INSERT INTO `city` VALUES (2077, '小店区', 2075);
INSERT INTO `city` VALUES (2078, '迎泽区', 2075);
INSERT INTO `city` VALUES (2079, '杏花岭区', 2075);
INSERT INTO `city` VALUES (2080, '尖草坪区', 2075);
INSERT INTO `city` VALUES (2081, '万柏林区', 2075);
INSERT INTO `city` VALUES (2082, '晋源区', 2075);
INSERT INTO `city` VALUES (2083, '清徐县', 2075);
INSERT INTO `city` VALUES (2084, '阳曲县', 2075);
INSERT INTO `city` VALUES (2085, '娄烦县', 2075);
INSERT INTO `city` VALUES (2086, '古交市', 2075);
INSERT INTO `city` VALUES (2087, '大同市', 2074);
INSERT INTO `city` VALUES (2088, '市辖区', 2087);
INSERT INTO `city` VALUES (2089, '城　区', 2087);
INSERT INTO `city` VALUES (2090, '矿　区', 2087);
INSERT INTO `city` VALUES (2091, '南郊区', 2087);
INSERT INTO `city` VALUES (2092, '新荣区', 2087);
INSERT INTO `city` VALUES (2093, '阳高县', 2087);
INSERT INTO `city` VALUES (2094, '天镇县', 2087);
INSERT INTO `city` VALUES (2095, '广灵县', 2087);
INSERT INTO `city` VALUES (2096, '灵丘县', 2087);
INSERT INTO `city` VALUES (2097, '浑源县', 2087);
INSERT INTO `city` VALUES (2098, '左云县', 2087);
INSERT INTO `city` VALUES (2099, '大同县', 2087);
INSERT INTO `city` VALUES (2100, '阳泉市', 2074);
INSERT INTO `city` VALUES (2101, '市辖区', 2100);
INSERT INTO `city` VALUES (2102, '城　区', 2100);
INSERT INTO `city` VALUES (2103, '矿　区', 2100);
INSERT INTO `city` VALUES (2104, '郊　区', 2100);
INSERT INTO `city` VALUES (2105, '平定县', 2100);
INSERT INTO `city` VALUES (2106, '盂　县', 2100);
INSERT INTO `city` VALUES (2107, '长治市', 2074);
INSERT INTO `city` VALUES (2108, '市辖区', 2107);
INSERT INTO `city` VALUES (2109, '城　区', 2107);
INSERT INTO `city` VALUES (2110, '郊　区', 2107);
INSERT INTO `city` VALUES (2111, '长治县', 2107);
INSERT INTO `city` VALUES (2112, '襄垣县', 2107);
INSERT INTO `city` VALUES (2113, '屯留县', 2107);
INSERT INTO `city` VALUES (2114, '平顺县', 2107);
INSERT INTO `city` VALUES (2115, '黎城县', 2107);
INSERT INTO `city` VALUES (2116, '壶关县', 2107);
INSERT INTO `city` VALUES (2117, '长子县', 2107);
INSERT INTO `city` VALUES (2118, '武乡县', 2107);
INSERT INTO `city` VALUES (2119, '沁　县', 2107);
INSERT INTO `city` VALUES (2120, '沁源县', 2107);
INSERT INTO `city` VALUES (2121, '潞城市', 2107);
INSERT INTO `city` VALUES (2122, '晋城市', 2074);
INSERT INTO `city` VALUES (2123, '市辖区', 2122);
INSERT INTO `city` VALUES (2124, '城　区', 2122);
INSERT INTO `city` VALUES (2125, '沁水县', 2122);
INSERT INTO `city` VALUES (2126, '阳城县', 2122);
INSERT INTO `city` VALUES (2127, '陵川县', 2122);
INSERT INTO `city` VALUES (2128, '泽州县', 2122);
INSERT INTO `city` VALUES (2129, '高平市', 2122);
INSERT INTO `city` VALUES (2130, '朔州市', 2074);
INSERT INTO `city` VALUES (2131, '市辖区', 2130);
INSERT INTO `city` VALUES (2132, '朔城区', 2130);
INSERT INTO `city` VALUES (2133, '平鲁区', 2130);
INSERT INTO `city` VALUES (2134, '山阴县', 2130);
INSERT INTO `city` VALUES (2135, '应　县', 2130);
INSERT INTO `city` VALUES (2136, '右玉县', 2130);
INSERT INTO `city` VALUES (2137, '怀仁县', 2130);
INSERT INTO `city` VALUES (2138, '晋中市', 2074);
INSERT INTO `city` VALUES (2139, '市辖区', 2138);
INSERT INTO `city` VALUES (2140, '榆次区', 2138);
INSERT INTO `city` VALUES (2141, '榆社县', 2138);
INSERT INTO `city` VALUES (2142, '左权县', 2138);
INSERT INTO `city` VALUES (2143, '和顺县', 2138);
INSERT INTO `city` VALUES (2144, '昔阳县', 2138);
INSERT INTO `city` VALUES (2145, '寿阳县', 2138);
INSERT INTO `city` VALUES (2146, '太谷县', 2138);
INSERT INTO `city` VALUES (2147, '祁　县', 2138);
INSERT INTO `city` VALUES (2148, '平遥县', 2138);
INSERT INTO `city` VALUES (2149, '灵石县', 2138);
INSERT INTO `city` VALUES (2150, '介休市', 2138);
INSERT INTO `city` VALUES (2151, '运城市', 2074);
INSERT INTO `city` VALUES (2152, '市辖区', 2151);
INSERT INTO `city` VALUES (2153, '盐湖区', 2151);
INSERT INTO `city` VALUES (2154, '临猗县', 2151);
INSERT INTO `city` VALUES (2155, '万荣县', 2151);
INSERT INTO `city` VALUES (2156, '闻喜县', 2151);
INSERT INTO `city` VALUES (2157, '稷山县', 2151);
INSERT INTO `city` VALUES (2158, '新绛县', 2151);
INSERT INTO `city` VALUES (2159, '绛　县', 2151);
INSERT INTO `city` VALUES (2160, '垣曲县', 2151);
INSERT INTO `city` VALUES (2161, '夏　县', 2151);
INSERT INTO `city` VALUES (2162, '平陆县', 2151);
INSERT INTO `city` VALUES (2163, '芮城县', 2151);
INSERT INTO `city` VALUES (2164, '永济市', 2151);
INSERT INTO `city` VALUES (2165, '河津市', 2151);
INSERT INTO `city` VALUES (2166, '忻州市', 2074);
INSERT INTO `city` VALUES (2167, '市辖区', 2166);
INSERT INTO `city` VALUES (2168, '忻府区', 2166);
INSERT INTO `city` VALUES (2169, '定襄县', 2166);
INSERT INTO `city` VALUES (2170, '五台县', 2166);
INSERT INTO `city` VALUES (2171, '代　县', 2166);
INSERT INTO `city` VALUES (2172, '繁峙县', 2166);
INSERT INTO `city` VALUES (2173, '宁武县', 2166);
INSERT INTO `city` VALUES (2174, '静乐县', 2166);
INSERT INTO `city` VALUES (2175, '神池县', 2166);
INSERT INTO `city` VALUES (2176, '五寨县', 2166);
INSERT INTO `city` VALUES (2177, '岢岚县', 2166);
INSERT INTO `city` VALUES (2178, '河曲县', 2166);
INSERT INTO `city` VALUES (2179, '保德县', 2166);
INSERT INTO `city` VALUES (2180, '偏关县', 2166);
INSERT INTO `city` VALUES (2181, '原平市', 2166);
INSERT INTO `city` VALUES (2182, '临汾市', 2074);
INSERT INTO `city` VALUES (2183, '市辖区', 2182);
INSERT INTO `city` VALUES (2184, '尧都区', 2182);
INSERT INTO `city` VALUES (2185, '曲沃县', 2182);
INSERT INTO `city` VALUES (2186, '翼城县', 2182);
INSERT INTO `city` VALUES (2187, '襄汾县', 2182);
INSERT INTO `city` VALUES (2188, '洪洞县', 2182);
INSERT INTO `city` VALUES (2189, '古　县', 2182);
INSERT INTO `city` VALUES (2190, '安泽县', 2182);
INSERT INTO `city` VALUES (2191, '浮山县', 2182);
INSERT INTO `city` VALUES (2192, '吉　县', 2182);
INSERT INTO `city` VALUES (2193, '乡宁县', 2182);
INSERT INTO `city` VALUES (2194, '大宁县', 2182);
INSERT INTO `city` VALUES (2195, '隰　县', 2182);
INSERT INTO `city` VALUES (2196, '永和县', 2182);
INSERT INTO `city` VALUES (2197, '蒲　县', 2182);
INSERT INTO `city` VALUES (2198, '汾西县', 2182);
INSERT INTO `city` VALUES (2199, '侯马市', 2182);
INSERT INTO `city` VALUES (2200, '霍州市', 2182);
INSERT INTO `city` VALUES (2201, '吕梁市', 2074);
INSERT INTO `city` VALUES (2202, '市辖区', 2201);
INSERT INTO `city` VALUES (2203, '离石区', 2201);
INSERT INTO `city` VALUES (2204, '文水县', 2201);
INSERT INTO `city` VALUES (2205, '交城县', 2201);
INSERT INTO `city` VALUES (2206, '兴　县', 2201);
INSERT INTO `city` VALUES (2207, '临　县', 2201);
INSERT INTO `city` VALUES (2208, '柳林县', 2201);
INSERT INTO `city` VALUES (2209, '石楼县', 2201);
INSERT INTO `city` VALUES (2210, '岚　县', 2201);
INSERT INTO `city` VALUES (2211, '方山县', 2201);
INSERT INTO `city` VALUES (2212, '中阳县', 2201);
INSERT INTO `city` VALUES (2213, '交口县', 2201);
INSERT INTO `city` VALUES (2214, '孝义市', 2201);
INSERT INTO `city` VALUES (2215, '汾阳市', 2201);
INSERT INTO `city` VALUES (2216, '内蒙古自治区', NULL);
INSERT INTO `city` VALUES (2217, '呼和浩特市', 2216);
INSERT INTO `city` VALUES (2218, '市辖区', 2217);
INSERT INTO `city` VALUES (2219, '新城区', 2217);
INSERT INTO `city` VALUES (2220, '回民区', 2217);
INSERT INTO `city` VALUES (2221, '玉泉区', 2217);
INSERT INTO `city` VALUES (2222, '赛罕区', 2217);
INSERT INTO `city` VALUES (2223, '土默特左旗', 2217);
INSERT INTO `city` VALUES (2224, '托克托县', 2217);
INSERT INTO `city` VALUES (2225, '和林格尔县', 2217);
INSERT INTO `city` VALUES (2226, '清水河县', 2217);
INSERT INTO `city` VALUES (2227, '武川县', 2217);
INSERT INTO `city` VALUES (2228, '包头市', 2216);
INSERT INTO `city` VALUES (2229, '市辖区', 2228);
INSERT INTO `city` VALUES (2230, '东河区', 2228);
INSERT INTO `city` VALUES (2231, '昆都仑区', 2228);
INSERT INTO `city` VALUES (2232, '青山区', 2228);
INSERT INTO `city` VALUES (2233, '石拐区', 2228);
INSERT INTO `city` VALUES (2234, '白云矿区', 2228);
INSERT INTO `city` VALUES (2235, '九原区', 2228);
INSERT INTO `city` VALUES (2236, '土默特右旗', 2228);
INSERT INTO `city` VALUES (2237, '固阳县', 2228);
INSERT INTO `city` VALUES (2238, '达尔罕茂明安联合旗', 2228);
INSERT INTO `city` VALUES (2239, '乌海市', 2216);
INSERT INTO `city` VALUES (2240, '市辖区', 2239);
INSERT INTO `city` VALUES (2241, '海勃湾区', 2239);
INSERT INTO `city` VALUES (2242, '海南区', 2239);
INSERT INTO `city` VALUES (2243, '乌达区', 2239);
INSERT INTO `city` VALUES (2244, '赤峰市', 2216);
INSERT INTO `city` VALUES (2245, '市辖区', 2244);
INSERT INTO `city` VALUES (2246, '红山区', 2244);
INSERT INTO `city` VALUES (2247, '元宝山区', 2244);
INSERT INTO `city` VALUES (2248, '松山区', 2244);
INSERT INTO `city` VALUES (2249, '阿鲁科尔沁旗', 2244);
INSERT INTO `city` VALUES (2250, '巴林左旗', 2244);
INSERT INTO `city` VALUES (2251, '巴林右旗', 2244);
INSERT INTO `city` VALUES (2252, '林西县', 2244);
INSERT INTO `city` VALUES (2253, '克什克腾旗', 2244);
INSERT INTO `city` VALUES (2254, '翁牛特旗', 2244);
INSERT INTO `city` VALUES (2255, '喀喇沁旗', 2244);
INSERT INTO `city` VALUES (2256, '宁城县', 2244);
INSERT INTO `city` VALUES (2257, '敖汉旗', 2244);
INSERT INTO `city` VALUES (2258, '通辽市', 2216);
INSERT INTO `city` VALUES (2259, '市辖区', 2258);
INSERT INTO `city` VALUES (2260, '科尔沁区', 2258);
INSERT INTO `city` VALUES (2261, '科尔沁左翼中旗', 2258);
INSERT INTO `city` VALUES (2262, '科尔沁左翼后旗', 2258);
INSERT INTO `city` VALUES (2263, '开鲁县', 2258);
INSERT INTO `city` VALUES (2264, '库伦旗', 2258);
INSERT INTO `city` VALUES (2265, '奈曼旗', 2258);
INSERT INTO `city` VALUES (2266, '扎鲁特旗', 2258);
INSERT INTO `city` VALUES (2267, '霍林郭勒市', 2258);
INSERT INTO `city` VALUES (2268, '鄂尔多斯市', 2216);
INSERT INTO `city` VALUES (2269, '东胜区', 2268);
INSERT INTO `city` VALUES (2270, '达拉特旗', 2268);
INSERT INTO `city` VALUES (2271, '准格尔旗', 2268);
INSERT INTO `city` VALUES (2272, '鄂托克前旗', 2268);
INSERT INTO `city` VALUES (2273, '鄂托克旗', 2268);
INSERT INTO `city` VALUES (2274, '杭锦旗', 2268);
INSERT INTO `city` VALUES (2275, '乌审旗', 2268);
INSERT INTO `city` VALUES (2276, '伊金霍洛旗', 2268);
INSERT INTO `city` VALUES (2277, '呼伦贝尔市', 2216);
INSERT INTO `city` VALUES (2278, '市辖区', 2277);
INSERT INTO `city` VALUES (2279, '海拉尔区', 2277);
INSERT INTO `city` VALUES (2280, '阿荣旗', 2277);
INSERT INTO `city` VALUES (2281, '莫力达瓦达斡尔族自治旗', 2277);
INSERT INTO `city` VALUES (2282, '鄂伦春自治旗', 2277);
INSERT INTO `city` VALUES (2283, '鄂温克族自治旗', 2277);
INSERT INTO `city` VALUES (2284, '陈巴尔虎旗', 2277);
INSERT INTO `city` VALUES (2285, '新巴尔虎左旗', 2277);
INSERT INTO `city` VALUES (2286, '新巴尔虎右旗', 2277);
INSERT INTO `city` VALUES (2287, '满洲里市', 2277);
INSERT INTO `city` VALUES (2288, '牙克石市', 2277);
INSERT INTO `city` VALUES (2289, '扎兰屯市', 2277);
INSERT INTO `city` VALUES (2290, '额尔古纳市', 2277);
INSERT INTO `city` VALUES (2291, '根河市', 2277);
INSERT INTO `city` VALUES (2292, '巴彦淖尔市', 2216);
INSERT INTO `city` VALUES (2293, '市辖区', 2292);
INSERT INTO `city` VALUES (2294, '临河区', 2292);
INSERT INTO `city` VALUES (2295, '五原县', 2292);
INSERT INTO `city` VALUES (2296, '磴口县', 2292);
INSERT INTO `city` VALUES (2297, '乌拉特前旗', 2292);
INSERT INTO `city` VALUES (2298, '乌拉特中旗', 2292);
INSERT INTO `city` VALUES (2299, '乌拉特后旗', 2292);
INSERT INTO `city` VALUES (2300, '杭锦后旗', 2292);
INSERT INTO `city` VALUES (2301, '乌兰察布市', 2216);
INSERT INTO `city` VALUES (2302, '市辖区', 2301);
INSERT INTO `city` VALUES (2303, '集宁区', 2301);
INSERT INTO `city` VALUES (2304, '卓资县', 2301);
INSERT INTO `city` VALUES (2305, '化德县', 2301);
INSERT INTO `city` VALUES (2306, '商都县', 2301);
INSERT INTO `city` VALUES (2307, '兴和县', 2301);
INSERT INTO `city` VALUES (2308, '凉城县', 2301);
INSERT INTO `city` VALUES (2309, '察哈尔右翼前旗', 2301);
INSERT INTO `city` VALUES (2310, '察哈尔右翼中旗', 2301);
INSERT INTO `city` VALUES (2311, '察哈尔右翼后旗', 2301);
INSERT INTO `city` VALUES (2312, '四子王旗', 2301);
INSERT INTO `city` VALUES (2313, '丰镇市', 2301);
INSERT INTO `city` VALUES (2314, '兴安盟', 2216);
INSERT INTO `city` VALUES (2315, '乌兰浩特市', 2314);
INSERT INTO `city` VALUES (2316, '阿尔山市', 2314);
INSERT INTO `city` VALUES (2317, '科尔沁右翼前旗', 2314);
INSERT INTO `city` VALUES (2318, '科尔沁右翼中旗', 2314);
INSERT INTO `city` VALUES (2319, '扎赉特旗', 2314);
INSERT INTO `city` VALUES (2320, '突泉县', 2314);
INSERT INTO `city` VALUES (2321, '锡林郭勒盟', 2216);
INSERT INTO `city` VALUES (2322, '二连浩特市', 2321);
INSERT INTO `city` VALUES (2323, '锡林浩特市', 2321);
INSERT INTO `city` VALUES (2324, '阿巴嘎旗', 2321);
INSERT INTO `city` VALUES (2325, '苏尼特左旗', 2321);
INSERT INTO `city` VALUES (2326, '苏尼特右旗', 2321);
INSERT INTO `city` VALUES (2327, '东乌珠穆沁旗', 2321);
INSERT INTO `city` VALUES (2328, '西乌珠穆沁旗', 2321);
INSERT INTO `city` VALUES (2329, '太仆寺旗', 2321);
INSERT INTO `city` VALUES (2330, '镶黄旗', 2321);
INSERT INTO `city` VALUES (2331, '正镶白旗', 2321);
INSERT INTO `city` VALUES (2332, '正蓝旗', 2321);
INSERT INTO `city` VALUES (2333, '多伦县', 2321);
INSERT INTO `city` VALUES (2334, '阿拉善盟', 2216);
INSERT INTO `city` VALUES (2335, '阿拉善左旗', 2334);
INSERT INTO `city` VALUES (2336, '阿拉善右旗', 2334);
INSERT INTO `city` VALUES (2337, '额济纳旗', 2334);
INSERT INTO `city` VALUES (2338, '江苏省', NULL);
INSERT INTO `city` VALUES (2339, '南京市', 2338);
INSERT INTO `city` VALUES (2340, '市辖区', 2339);
INSERT INTO `city` VALUES (2341, '玄武区', 2339);
INSERT INTO `city` VALUES (2342, '白下区', 2339);
INSERT INTO `city` VALUES (2343, '秦淮区', 2339);
INSERT INTO `city` VALUES (2344, '建邺区', 2339);
INSERT INTO `city` VALUES (2345, '鼓楼区', 2339);
INSERT INTO `city` VALUES (2346, '下关区', 2339);
INSERT INTO `city` VALUES (2347, '浦口区', 2339);
INSERT INTO `city` VALUES (2348, '栖霞区', 2339);
INSERT INTO `city` VALUES (2349, '雨花台区', 2339);
INSERT INTO `city` VALUES (2350, '江宁区', 2339);
INSERT INTO `city` VALUES (2351, '六合区', 2339);
INSERT INTO `city` VALUES (2352, '溧水县', 2339);
INSERT INTO `city` VALUES (2353, '高淳县', 2339);
INSERT INTO `city` VALUES (2354, '无锡市', 2338);
INSERT INTO `city` VALUES (2355, '市辖区', 2354);
INSERT INTO `city` VALUES (2356, '崇安区', 2354);
INSERT INTO `city` VALUES (2357, '南长区', 2354);
INSERT INTO `city` VALUES (2358, '北塘区', 2354);
INSERT INTO `city` VALUES (2359, '锡山区', 2354);
INSERT INTO `city` VALUES (2360, '惠山区', 2354);
INSERT INTO `city` VALUES (2361, '滨湖区', 2354);
INSERT INTO `city` VALUES (2362, '江阴市', 2354);
INSERT INTO `city` VALUES (2363, '宜兴市', 2354);
INSERT INTO `city` VALUES (2364, '徐州市', 2338);
INSERT INTO `city` VALUES (2365, '市辖区', 2364);
INSERT INTO `city` VALUES (2366, '鼓楼区', 2364);
INSERT INTO `city` VALUES (2367, '云龙区', 2364);
INSERT INTO `city` VALUES (2368, '九里区', 2364);
INSERT INTO `city` VALUES (2369, '贾汪区', 2364);
INSERT INTO `city` VALUES (2370, '泉山区', 2364);
INSERT INTO `city` VALUES (2371, '丰　县', 2364);
INSERT INTO `city` VALUES (2372, '沛　县', 2364);
INSERT INTO `city` VALUES (2373, '铜山县', 2364);
INSERT INTO `city` VALUES (2374, '睢宁县', 2364);
INSERT INTO `city` VALUES (2375, '新沂市', 2364);
INSERT INTO `city` VALUES (2376, '邳州市', 2364);
INSERT INTO `city` VALUES (2377, '常州市', 2338);
INSERT INTO `city` VALUES (2378, '市辖区', 2377);
INSERT INTO `city` VALUES (2379, '天宁区', 2377);
INSERT INTO `city` VALUES (2380, '钟楼区', 2377);
INSERT INTO `city` VALUES (2381, '戚墅堰区', 2377);
INSERT INTO `city` VALUES (2382, '新北区', 2377);
INSERT INTO `city` VALUES (2383, '武进区', 2377);
INSERT INTO `city` VALUES (2384, '溧阳市', 2377);
INSERT INTO `city` VALUES (2385, '金坛市', 2377);
INSERT INTO `city` VALUES (2386, '苏州市', 2338);
INSERT INTO `city` VALUES (2387, '市辖区', 2386);
INSERT INTO `city` VALUES (2388, '沧浪区', 2386);
INSERT INTO `city` VALUES (2389, '平江区', 2386);
INSERT INTO `city` VALUES (2390, '金阊区', 2386);
INSERT INTO `city` VALUES (2391, '虎丘区', 2386);
INSERT INTO `city` VALUES (2392, '吴中区', 2386);
INSERT INTO `city` VALUES (2393, '相城区', 2386);
INSERT INTO `city` VALUES (2394, '常熟市', 2386);
INSERT INTO `city` VALUES (2395, '张家港市', 2386);
INSERT INTO `city` VALUES (2396, '昆山市', 2386);
INSERT INTO `city` VALUES (2397, '吴江市', 2386);
INSERT INTO `city` VALUES (2398, '太仓市', 2386);
INSERT INTO `city` VALUES (2399, '南通市', 2338);
INSERT INTO `city` VALUES (2400, '市辖区', 2399);
INSERT INTO `city` VALUES (2401, '崇川区', 2399);
INSERT INTO `city` VALUES (2402, '港闸区', 2399);
INSERT INTO `city` VALUES (2403, '海安县', 2399);
INSERT INTO `city` VALUES (2404, '如东县', 2399);
INSERT INTO `city` VALUES (2405, '启东市', 2399);
INSERT INTO `city` VALUES (2406, '如皋市', 2399);
INSERT INTO `city` VALUES (2407, '通州市', 2399);
INSERT INTO `city` VALUES (2408, '海门市', 2399);
INSERT INTO `city` VALUES (2409, '连云港市', 2338);
INSERT INTO `city` VALUES (2410, '市辖区', 2409);
INSERT INTO `city` VALUES (2411, '连云区', 2409);
INSERT INTO `city` VALUES (2412, '新浦区', 2409);
INSERT INTO `city` VALUES (2413, '海州区', 2409);
INSERT INTO `city` VALUES (2414, '赣榆县', 2409);
INSERT INTO `city` VALUES (2415, '东海县', 2409);
INSERT INTO `city` VALUES (2416, '灌云县', 2409);
INSERT INTO `city` VALUES (2417, '灌南县', 2409);
INSERT INTO `city` VALUES (2418, '淮安市', 2338);
INSERT INTO `city` VALUES (2419, '市辖区', 2418);
INSERT INTO `city` VALUES (2420, '清河区', 2418);
INSERT INTO `city` VALUES (2421, '楚州区', 2418);
INSERT INTO `city` VALUES (2422, '淮阴区', 2418);
INSERT INTO `city` VALUES (2423, '清浦区', 2418);
INSERT INTO `city` VALUES (2424, '涟水县', 2418);
INSERT INTO `city` VALUES (2425, '洪泽县', 2418);
INSERT INTO `city` VALUES (2426, '盱眙县', 2418);
INSERT INTO `city` VALUES (2427, '金湖县', 2418);
INSERT INTO `city` VALUES (2428, '淮安区', 2418);
INSERT INTO `city` VALUES (2429, '盐城市', 2338);
INSERT INTO `city` VALUES (2430, '市辖区', 2429);
INSERT INTO `city` VALUES (2431, '亭湖区', 2429);
INSERT INTO `city` VALUES (2432, '盐都区', 2429);
INSERT INTO `city` VALUES (2433, '响水县', 2429);
INSERT INTO `city` VALUES (2434, '滨海县', 2429);
INSERT INTO `city` VALUES (2435, '阜宁县', 2429);
INSERT INTO `city` VALUES (2436, '射阳县', 2429);
INSERT INTO `city` VALUES (2437, '建湖县', 2429);
INSERT INTO `city` VALUES (2438, '东台市', 2429);
INSERT INTO `city` VALUES (2439, '大丰市', 2429);
INSERT INTO `city` VALUES (2440, '扬州市', 2338);
INSERT INTO `city` VALUES (2441, '市辖区', 2440);
INSERT INTO `city` VALUES (2442, '广陵区', 2440);
INSERT INTO `city` VALUES (2443, '邗江区', 2440);
INSERT INTO `city` VALUES (2444, '郊　区', 2440);
INSERT INTO `city` VALUES (2445, '宝应县', 2440);
INSERT INTO `city` VALUES (2446, '仪征市', 2440);
INSERT INTO `city` VALUES (2447, '高邮市', 2440);
INSERT INTO `city` VALUES (2448, '江都市', 2440);
INSERT INTO `city` VALUES (2449, '镇江市', 2338);
INSERT INTO `city` VALUES (2450, '市辖区', 2449);
INSERT INTO `city` VALUES (2451, '京口区', 2449);
INSERT INTO `city` VALUES (2452, '润州区', 2449);
INSERT INTO `city` VALUES (2453, '丹徒区', 2449);
INSERT INTO `city` VALUES (2454, '丹阳市', 2449);
INSERT INTO `city` VALUES (2455, '扬中市', 2449);
INSERT INTO `city` VALUES (2456, '句容市', 2449);
INSERT INTO `city` VALUES (2457, '泰州市', 2338);
INSERT INTO `city` VALUES (2458, '市辖区', 2457);
INSERT INTO `city` VALUES (2459, '海陵区', 2457);
INSERT INTO `city` VALUES (2460, '高港区', 2457);
INSERT INTO `city` VALUES (2461, '兴化市', 2457);
INSERT INTO `city` VALUES (2462, '靖江市', 2457);
INSERT INTO `city` VALUES (2463, '泰兴市', 2457);
INSERT INTO `city` VALUES (2464, '姜堰市', 2457);
INSERT INTO `city` VALUES (2465, '宿迁市', 2338);
INSERT INTO `city` VALUES (2466, '市辖区', 2465);
INSERT INTO `city` VALUES (2467, '宿城区', 2465);
INSERT INTO `city` VALUES (2468, '宿豫区', 2465);
INSERT INTO `city` VALUES (2469, '沭阳县', 2465);
INSERT INTO `city` VALUES (2470, '泗阳县', 2465);
INSERT INTO `city` VALUES (2471, '泗洪县', 2465);
INSERT INTO `city` VALUES (2472, '浙江省', NULL);
INSERT INTO `city` VALUES (2473, '杭州市', 2472);
INSERT INTO `city` VALUES (2474, '市辖区', 2473);
INSERT INTO `city` VALUES (2475, '上城区', 2473);
INSERT INTO `city` VALUES (2476, '下城区', 2473);
INSERT INTO `city` VALUES (2477, '江干区', 2473);
INSERT INTO `city` VALUES (2478, '拱墅区', 2473);
INSERT INTO `city` VALUES (2479, '西湖区', 2473);
INSERT INTO `city` VALUES (2480, '滨江区', 2473);
INSERT INTO `city` VALUES (2481, '萧山区', 2473);
INSERT INTO `city` VALUES (2482, '余杭区', 2473);
INSERT INTO `city` VALUES (2483, '桐庐县', 2473);
INSERT INTO `city` VALUES (2484, '淳安县', 2473);
INSERT INTO `city` VALUES (2485, '建德市', 2473);
INSERT INTO `city` VALUES (2486, '富阳市', 2473);
INSERT INTO `city` VALUES (2487, '临安市', 2473);
INSERT INTO `city` VALUES (2488, '宁波市', 2472);
INSERT INTO `city` VALUES (2489, '市辖区', 2488);
INSERT INTO `city` VALUES (2490, '海曙区', 2488);
INSERT INTO `city` VALUES (2491, '江东区', 2488);
INSERT INTO `city` VALUES (2492, '江北区', 2488);
INSERT INTO `city` VALUES (2493, '北仑区', 2488);
INSERT INTO `city` VALUES (2494, '镇海区', 2488);
INSERT INTO `city` VALUES (2495, '鄞州区', 2488);
INSERT INTO `city` VALUES (2496, '象山县', 2488);
INSERT INTO `city` VALUES (2497, '宁海县', 2488);
INSERT INTO `city` VALUES (2498, '余姚市', 2488);
INSERT INTO `city` VALUES (2499, '慈溪市', 2488);
INSERT INTO `city` VALUES (2500, '奉化市', 2488);
INSERT INTO `city` VALUES (2501, '温州市', 2472);
INSERT INTO `city` VALUES (2502, '市辖区', 2501);
INSERT INTO `city` VALUES (2503, '鹿城区', 2501);
INSERT INTO `city` VALUES (2504, '龙湾区', 2501);
INSERT INTO `city` VALUES (2505, '瓯海区', 2501);
INSERT INTO `city` VALUES (2506, '洞头县', 2501);
INSERT INTO `city` VALUES (2507, '永嘉县', 2501);
INSERT INTO `city` VALUES (2508, '平阳县', 2501);
INSERT INTO `city` VALUES (2509, '苍南县', 2501);
INSERT INTO `city` VALUES (2510, '文成县', 2501);
INSERT INTO `city` VALUES (2511, '泰顺县', 2501);
INSERT INTO `city` VALUES (2512, '瑞安市', 2501);
INSERT INTO `city` VALUES (2513, '乐清市', 2501);
INSERT INTO `city` VALUES (2514, '嘉兴市', 2472);
INSERT INTO `city` VALUES (2515, '市辖区', 2514);
INSERT INTO `city` VALUES (2516, '秀城区', 2514);
INSERT INTO `city` VALUES (2517, '秀洲区', 2514);
INSERT INTO `city` VALUES (2518, '嘉善县', 2514);
INSERT INTO `city` VALUES (2519, '海盐县', 2514);
INSERT INTO `city` VALUES (2520, '海宁市', 2514);
INSERT INTO `city` VALUES (2521, '平湖市', 2514);
INSERT INTO `city` VALUES (2522, '桐乡市', 2514);
INSERT INTO `city` VALUES (2523, '湖州市', 2472);
INSERT INTO `city` VALUES (2524, '市辖区', 2523);
INSERT INTO `city` VALUES (2525, '吴兴区', 2523);
INSERT INTO `city` VALUES (2526, '南浔区', 2523);
INSERT INTO `city` VALUES (2527, '德清县', 2523);
INSERT INTO `city` VALUES (2528, '长兴县', 2523);
INSERT INTO `city` VALUES (2529, '安吉县', 2523);
INSERT INTO `city` VALUES (2530, '绍兴市', 2472);
INSERT INTO `city` VALUES (2531, '市辖区', 2530);
INSERT INTO `city` VALUES (2532, '越城区', 2530);
INSERT INTO `city` VALUES (2533, '绍兴县', 2530);
INSERT INTO `city` VALUES (2534, '新昌县', 2530);
INSERT INTO `city` VALUES (2535, '诸暨市', 2530);
INSERT INTO `city` VALUES (2536, '上虞市', 2530);
INSERT INTO `city` VALUES (2537, '嵊州市', 2530);
INSERT INTO `city` VALUES (2538, '金华市', 2472);
INSERT INTO `city` VALUES (2539, '市辖区', 2538);
INSERT INTO `city` VALUES (2540, '婺城区', 2538);
INSERT INTO `city` VALUES (2541, '金东区', 2538);
INSERT INTO `city` VALUES (2542, '武义县', 2538);
INSERT INTO `city` VALUES (2543, '浦江县', 2538);
INSERT INTO `city` VALUES (2544, '磐安县', 2538);
INSERT INTO `city` VALUES (2545, '兰溪市', 2538);
INSERT INTO `city` VALUES (2546, '义乌市', 2538);
INSERT INTO `city` VALUES (2547, '东阳市', 2538);
INSERT INTO `city` VALUES (2548, '永康市', 2538);
INSERT INTO `city` VALUES (2549, '衢州市', 2472);
INSERT INTO `city` VALUES (2550, '市辖区', 2549);
INSERT INTO `city` VALUES (2551, '柯城区', 2549);
INSERT INTO `city` VALUES (2552, '衢江区', 2549);
INSERT INTO `city` VALUES (2553, '常山县', 2549);
INSERT INTO `city` VALUES (2554, '开化县', 2549);
INSERT INTO `city` VALUES (2555, '龙游县', 2549);
INSERT INTO `city` VALUES (2556, '江山市', 2549);
INSERT INTO `city` VALUES (2557, '舟山市', 2472);
INSERT INTO `city` VALUES (2558, '市辖区', 2557);
INSERT INTO `city` VALUES (2559, '定海区', 2557);
INSERT INTO `city` VALUES (2560, '普陀区', 2557);
INSERT INTO `city` VALUES (2561, '岱山县', 2557);
INSERT INTO `city` VALUES (2562, '嵊泗县', 2557);
INSERT INTO `city` VALUES (2563, '台州市', 2472);
INSERT INTO `city` VALUES (2564, '市辖区', 2563);
INSERT INTO `city` VALUES (2565, '椒江区', 2563);
INSERT INTO `city` VALUES (2566, '黄岩区', 2563);
INSERT INTO `city` VALUES (2567, '路桥区', 2563);
INSERT INTO `city` VALUES (2568, '玉环县', 2563);
INSERT INTO `city` VALUES (2569, '三门县', 2563);
INSERT INTO `city` VALUES (2570, '天台县', 2563);
INSERT INTO `city` VALUES (2571, '仙居县', 2563);
INSERT INTO `city` VALUES (2572, '温岭市', 2563);
INSERT INTO `city` VALUES (2573, '临海市', 2563);
INSERT INTO `city` VALUES (2574, '丽水市', 2472);
INSERT INTO `city` VALUES (2575, '市辖区', 2574);
INSERT INTO `city` VALUES (2576, '莲都区', 2574);
INSERT INTO `city` VALUES (2577, '青田县', 2574);
INSERT INTO `city` VALUES (2578, '缙云县', 2574);
INSERT INTO `city` VALUES (2579, '遂昌县', 2574);
INSERT INTO `city` VALUES (2580, '松阳县', 2574);
INSERT INTO `city` VALUES (2581, '云和县', 2574);
INSERT INTO `city` VALUES (2582, '庆元县', 2574);
INSERT INTO `city` VALUES (2583, '景宁畲族自治县', 2574);
INSERT INTO `city` VALUES (2584, '龙泉市', 2574);
INSERT INTO `city` VALUES (2585, '安徽省', NULL);
INSERT INTO `city` VALUES (2586, '合肥市', 2585);
INSERT INTO `city` VALUES (2587, '市辖区', 2586);
INSERT INTO `city` VALUES (2588, '瑶海区', 2586);
INSERT INTO `city` VALUES (2589, '庐阳区', 2586);
INSERT INTO `city` VALUES (2590, '蜀山区', 2586);
INSERT INTO `city` VALUES (2591, '包河区', 2586);
INSERT INTO `city` VALUES (2592, '长丰县', 2586);
INSERT INTO `city` VALUES (2593, '肥东县', 2586);
INSERT INTO `city` VALUES (2594, '肥西县', 2586);
INSERT INTO `city` VALUES (2595, '芜湖市', 2585);
INSERT INTO `city` VALUES (2596, '市辖区', 2595);
INSERT INTO `city` VALUES (2597, '镜湖区', 2595);
INSERT INTO `city` VALUES (2598, '马塘区', 2595);
INSERT INTO `city` VALUES (2599, '新芜区', 2595);
INSERT INTO `city` VALUES (2600, '鸠江区', 2595);
INSERT INTO `city` VALUES (2601, '芜湖县', 2595);
INSERT INTO `city` VALUES (2602, '繁昌县', 2595);
INSERT INTO `city` VALUES (2603, '南陵县', 2595);
INSERT INTO `city` VALUES (2604, '蚌埠市', 2585);
INSERT INTO `city` VALUES (2605, '市辖区', 2604);
INSERT INTO `city` VALUES (2606, '龙子湖区', 2604);
INSERT INTO `city` VALUES (2607, '蚌山区', 2604);
INSERT INTO `city` VALUES (2608, '禹会区', 2604);
INSERT INTO `city` VALUES (2609, '淮上区', 2604);
INSERT INTO `city` VALUES (2610, '怀远县', 2604);
INSERT INTO `city` VALUES (2611, '五河县', 2604);
INSERT INTO `city` VALUES (2612, '固镇县', 2604);
INSERT INTO `city` VALUES (2613, '淮南市', 2585);
INSERT INTO `city` VALUES (2614, '市辖区', 2613);
INSERT INTO `city` VALUES (2615, '大通区', 2613);
INSERT INTO `city` VALUES (2616, '田家庵区', 2613);
INSERT INTO `city` VALUES (2617, '谢家集区', 2613);
INSERT INTO `city` VALUES (2618, '八公山区', 2613);
INSERT INTO `city` VALUES (2619, '潘集区', 2613);
INSERT INTO `city` VALUES (2620, '凤台县', 2613);
INSERT INTO `city` VALUES (2621, '马鞍山市', 2585);
INSERT INTO `city` VALUES (2622, '市辖区', 2621);
INSERT INTO `city` VALUES (2623, '金家庄区', 2621);
INSERT INTO `city` VALUES (2624, '花山区', 2621);
INSERT INTO `city` VALUES (2625, '雨山区', 2621);
INSERT INTO `city` VALUES (2626, '当涂县', 2621);
INSERT INTO `city` VALUES (2627, '淮北市', 2585);
INSERT INTO `city` VALUES (2628, '市辖区', 2627);
INSERT INTO `city` VALUES (2629, '杜集区', 2627);
INSERT INTO `city` VALUES (2630, '相山区', 2627);
INSERT INTO `city` VALUES (2631, '烈山区', 2627);
INSERT INTO `city` VALUES (2632, '濉溪县', 2627);
INSERT INTO `city` VALUES (2633, '铜陵市', 2585);
INSERT INTO `city` VALUES (2634, '市辖区', 2633);
INSERT INTO `city` VALUES (2635, '铜官山区', 2633);
INSERT INTO `city` VALUES (2636, '狮子山区', 2633);
INSERT INTO `city` VALUES (2637, '郊　区', 2633);
INSERT INTO `city` VALUES (2638, '铜陵县', 2633);
INSERT INTO `city` VALUES (2639, '安庆市', 2585);
INSERT INTO `city` VALUES (2640, '市辖区', 2639);
INSERT INTO `city` VALUES (2641, '迎江区', 2639);
INSERT INTO `city` VALUES (2642, '大观区', 2639);
INSERT INTO `city` VALUES (2643, '郊　区', 2639);
INSERT INTO `city` VALUES (2644, '怀宁县', 2639);
INSERT INTO `city` VALUES (2645, '枞阳县', 2639);
INSERT INTO `city` VALUES (2646, '潜山县', 2639);
INSERT INTO `city` VALUES (2647, '太湖县', 2639);
INSERT INTO `city` VALUES (2648, '宿松县', 2639);
INSERT INTO `city` VALUES (2649, '望江县', 2639);
INSERT INTO `city` VALUES (2650, '岳西县', 2639);
INSERT INTO `city` VALUES (2651, '桐城市', 2639);
INSERT INTO `city` VALUES (2652, '黄山市', 2585);
INSERT INTO `city` VALUES (2653, '市辖区', 2652);
INSERT INTO `city` VALUES (2654, '屯溪区', 2652);
INSERT INTO `city` VALUES (2655, '黄山区', 2652);
INSERT INTO `city` VALUES (2656, '徽州区', 2652);
INSERT INTO `city` VALUES (2657, '歙　县', 2652);
INSERT INTO `city` VALUES (2658, '休宁县', 2652);
INSERT INTO `city` VALUES (2659, '黟　县', 2652);
INSERT INTO `city` VALUES (2660, '祁门县', 2652);
INSERT INTO `city` VALUES (2661, '滁州市', 2585);
INSERT INTO `city` VALUES (2662, '市辖区', 2661);
INSERT INTO `city` VALUES (2663, '琅琊区', 2661);
INSERT INTO `city` VALUES (2664, '南谯区', 2661);
INSERT INTO `city` VALUES (2665, '来安县', 2661);
INSERT INTO `city` VALUES (2666, '全椒县', 2661);
INSERT INTO `city` VALUES (2667, '定远县', 2661);
INSERT INTO `city` VALUES (2668, '凤阳县', 2661);
INSERT INTO `city` VALUES (2669, '天长市', 2661);
INSERT INTO `city` VALUES (2670, '明光市', 2661);
INSERT INTO `city` VALUES (2671, '阜阳市', 2585);
INSERT INTO `city` VALUES (2672, '市辖区', 2671);
INSERT INTO `city` VALUES (2673, '颍州区', 2671);
INSERT INTO `city` VALUES (2674, '颍东区', 2671);
INSERT INTO `city` VALUES (2675, '颍泉区', 2671);
INSERT INTO `city` VALUES (2676, '临泉县', 2671);
INSERT INTO `city` VALUES (2677, '太和县', 2671);
INSERT INTO `city` VALUES (2678, '阜南县', 2671);
INSERT INTO `city` VALUES (2679, '颍上县', 2671);
INSERT INTO `city` VALUES (2680, '界首市', 2671);
INSERT INTO `city` VALUES (2681, '宿州市', 2585);
INSERT INTO `city` VALUES (2682, '市辖区', 2681);
INSERT INTO `city` VALUES (2683, '墉桥区', 2681);
INSERT INTO `city` VALUES (2684, '砀山县', 2681);
INSERT INTO `city` VALUES (2685, '萧　县', 2681);
INSERT INTO `city` VALUES (2686, '灵璧县', 2681);
INSERT INTO `city` VALUES (2687, '泗　县', 2681);
INSERT INTO `city` VALUES (2688, '巢湖市', 2585);
INSERT INTO `city` VALUES (2689, '市辖区', 2688);
INSERT INTO `city` VALUES (2690, '居巢区', 2688);
INSERT INTO `city` VALUES (2691, '庐江县', 2688);
INSERT INTO `city` VALUES (2692, '无为县', 2688);
INSERT INTO `city` VALUES (2693, '含山县', 2688);
INSERT INTO `city` VALUES (2694, '和　县', 2688);
INSERT INTO `city` VALUES (2695, '六安市', 2585);
INSERT INTO `city` VALUES (2696, '市辖区', 2695);
INSERT INTO `city` VALUES (2697, '金安区', 2695);
INSERT INTO `city` VALUES (2698, '裕安区', 2695);
INSERT INTO `city` VALUES (2699, '寿　县', 2695);
INSERT INTO `city` VALUES (2700, '霍邱县', 2695);
INSERT INTO `city` VALUES (2701, '舒城县', 2695);
INSERT INTO `city` VALUES (2702, '金寨县', 2695);
INSERT INTO `city` VALUES (2703, '霍山县', 2695);
INSERT INTO `city` VALUES (2704, '亳州市', 2585);
INSERT INTO `city` VALUES (2705, '市辖区', 2704);
INSERT INTO `city` VALUES (2706, '谯城区', 2704);
INSERT INTO `city` VALUES (2707, '涡阳县', 2704);
INSERT INTO `city` VALUES (2708, '蒙城县', 2704);
INSERT INTO `city` VALUES (2709, '利辛县', 2704);
INSERT INTO `city` VALUES (2710, '池州市', 2585);
INSERT INTO `city` VALUES (2711, '市辖区', 2710);
INSERT INTO `city` VALUES (2712, '贵池区', 2710);
INSERT INTO `city` VALUES (2713, '东至县', 2710);
INSERT INTO `city` VALUES (2714, '石台县', 2710);
INSERT INTO `city` VALUES (2715, '青阳县', 2710);
INSERT INTO `city` VALUES (2716, '宣城市', 2585);
INSERT INTO `city` VALUES (2717, '市辖区', 2716);
INSERT INTO `city` VALUES (2718, '宣州区', 2716);
INSERT INTO `city` VALUES (2719, '郎溪县', 2716);
INSERT INTO `city` VALUES (2720, '广德县', 2716);
INSERT INTO `city` VALUES (2721, '泾　县', 2716);
INSERT INTO `city` VALUES (2722, '绩溪县', 2716);
INSERT INTO `city` VALUES (2723, '旌德县', 2716);
INSERT INTO `city` VALUES (2724, '宁国市', 2716);
INSERT INTO `city` VALUES (2725, '福建省', NULL);
INSERT INTO `city` VALUES (2726, '福州市', 2725);
INSERT INTO `city` VALUES (2727, '市辖区', 2726);
INSERT INTO `city` VALUES (2728, '鼓楼区', 2726);
INSERT INTO `city` VALUES (2729, '台江区', 2726);
INSERT INTO `city` VALUES (2730, '仓山区', 2726);
INSERT INTO `city` VALUES (2731, '马尾区', 2726);
INSERT INTO `city` VALUES (2732, '晋安区', 2726);
INSERT INTO `city` VALUES (2733, '闽侯县', 2726);
INSERT INTO `city` VALUES (2734, '连江县', 2726);
INSERT INTO `city` VALUES (2735, '罗源县', 2726);
INSERT INTO `city` VALUES (2736, '闽清县', 2726);
INSERT INTO `city` VALUES (2737, '永泰县', 2726);
INSERT INTO `city` VALUES (2738, '平潭县', 2726);
INSERT INTO `city` VALUES (2739, '福清市', 2726);
INSERT INTO `city` VALUES (2740, '长乐市', 2726);
INSERT INTO `city` VALUES (2741, '厦门市', 2725);
INSERT INTO `city` VALUES (2742, '市辖区', 2741);
INSERT INTO `city` VALUES (2743, '思明区', 2741);
INSERT INTO `city` VALUES (2744, '海沧区', 2741);
INSERT INTO `city` VALUES (2745, '湖里区', 2741);
INSERT INTO `city` VALUES (2746, '集美区', 2741);
INSERT INTO `city` VALUES (2747, '同安区', 2741);
INSERT INTO `city` VALUES (2748, '翔安区', 2741);
INSERT INTO `city` VALUES (2749, '莆田市', 2725);
INSERT INTO `city` VALUES (2750, '市辖区', 2749);
INSERT INTO `city` VALUES (2751, '城厢区', 2749);
INSERT INTO `city` VALUES (2752, '涵江区', 2749);
INSERT INTO `city` VALUES (2753, '荔城区', 2749);
INSERT INTO `city` VALUES (2754, '秀屿区', 2749);
INSERT INTO `city` VALUES (2755, '仙游县', 2749);
INSERT INTO `city` VALUES (2756, '三明市', 2725);
INSERT INTO `city` VALUES (2757, '市辖区', 2756);
INSERT INTO `city` VALUES (2758, '梅列区', 2756);
INSERT INTO `city` VALUES (2759, '三元区', 2756);
INSERT INTO `city` VALUES (2760, '明溪县', 2756);
INSERT INTO `city` VALUES (2761, '清流县', 2756);
INSERT INTO `city` VALUES (2762, '宁化县', 2756);
INSERT INTO `city` VALUES (2763, '大田县', 2756);
INSERT INTO `city` VALUES (2764, '尤溪县', 2756);
INSERT INTO `city` VALUES (2765, '沙　县', 2756);
INSERT INTO `city` VALUES (2766, '将乐县', 2756);
INSERT INTO `city` VALUES (2767, '泰宁县', 2756);
INSERT INTO `city` VALUES (2768, '建宁县', 2756);
INSERT INTO `city` VALUES (2769, '永安市', 2756);
INSERT INTO `city` VALUES (2770, '泉州市', 2725);
INSERT INTO `city` VALUES (2771, '市辖区', 2770);
INSERT INTO `city` VALUES (2772, '鲤城区', 2770);
INSERT INTO `city` VALUES (2773, '丰泽区', 2770);
INSERT INTO `city` VALUES (2774, '洛江区', 2770);
INSERT INTO `city` VALUES (2775, '泉港区', 2770);
INSERT INTO `city` VALUES (2776, '惠安县', 2770);
INSERT INTO `city` VALUES (2777, '安溪县', 2770);
INSERT INTO `city` VALUES (2778, '永春县', 2770);
INSERT INTO `city` VALUES (2779, '德化县', 2770);
INSERT INTO `city` VALUES (2780, '金门县', 2770);
INSERT INTO `city` VALUES (2781, '石狮市', 2770);
INSERT INTO `city` VALUES (2782, '晋江市', 2770);
INSERT INTO `city` VALUES (2783, '南安市', 2770);
INSERT INTO `city` VALUES (2784, '漳州市', 2725);
INSERT INTO `city` VALUES (2785, '市辖区', 2784);
INSERT INTO `city` VALUES (2786, '芗城区', 2784);
INSERT INTO `city` VALUES (2787, '龙文区', 2784);
INSERT INTO `city` VALUES (2788, '云霄县', 2784);
INSERT INTO `city` VALUES (2789, '漳浦县', 2784);
INSERT INTO `city` VALUES (2790, '诏安县', 2784);
INSERT INTO `city` VALUES (2791, '长泰县', 2784);
INSERT INTO `city` VALUES (2792, '东山县', 2784);
INSERT INTO `city` VALUES (2793, '南靖县', 2784);
INSERT INTO `city` VALUES (2794, '平和县', 2784);
INSERT INTO `city` VALUES (2795, '华安县', 2784);
INSERT INTO `city` VALUES (2796, '龙海市', 2784);
INSERT INTO `city` VALUES (2797, '南平市', 2725);
INSERT INTO `city` VALUES (2798, '市辖区', 2797);
INSERT INTO `city` VALUES (2799, '延平区', 2797);
INSERT INTO `city` VALUES (2800, '顺昌县', 2797);
INSERT INTO `city` VALUES (2801, '浦城县', 2797);
INSERT INTO `city` VALUES (2802, '光泽县', 2797);
INSERT INTO `city` VALUES (2803, '松溪县', 2797);
INSERT INTO `city` VALUES (2804, '政和县', 2797);
INSERT INTO `city` VALUES (2805, '邵武市', 2797);
INSERT INTO `city` VALUES (2806, '武夷山市', 2797);
INSERT INTO `city` VALUES (2807, '建瓯市', 2797);
INSERT INTO `city` VALUES (2808, '建阳市', 2797);
INSERT INTO `city` VALUES (2809, '龙岩市', 2725);
INSERT INTO `city` VALUES (2810, '市辖区', 2809);
INSERT INTO `city` VALUES (2811, '新罗区', 2809);
INSERT INTO `city` VALUES (2812, '长汀县', 2809);
INSERT INTO `city` VALUES (2813, '永定县', 2809);
INSERT INTO `city` VALUES (2814, '上杭县', 2809);
INSERT INTO `city` VALUES (2815, '武平县', 2809);
INSERT INTO `city` VALUES (2816, '连城县', 2809);
INSERT INTO `city` VALUES (2817, '漳平市', 2809);
INSERT INTO `city` VALUES (2818, '宁德市', 2725);
INSERT INTO `city` VALUES (2819, '市辖区', 2818);
INSERT INTO `city` VALUES (2820, '蕉城区', 2818);
INSERT INTO `city` VALUES (2821, '霞浦县', 2818);
INSERT INTO `city` VALUES (2822, '古田县', 2818);
INSERT INTO `city` VALUES (2823, '屏南县', 2818);
INSERT INTO `city` VALUES (2824, '寿宁县', 2818);
INSERT INTO `city` VALUES (2825, '周宁县', 2818);
INSERT INTO `city` VALUES (2826, '柘荣县', 2818);
INSERT INTO `city` VALUES (2827, '福安市', 2818);
INSERT INTO `city` VALUES (2828, '福鼎市', 2818);
INSERT INTO `city` VALUES (2829, '江西省', NULL);
INSERT INTO `city` VALUES (2830, '南昌市', 2829);
INSERT INTO `city` VALUES (2831, '市辖区', 2830);
INSERT INTO `city` VALUES (2832, '东湖区', 2830);
INSERT INTO `city` VALUES (2833, '西湖区', 2830);
INSERT INTO `city` VALUES (2834, '青云谱区', 2830);
INSERT INTO `city` VALUES (2835, '湾里区', 2830);
INSERT INTO `city` VALUES (2836, '青山湖区', 2830);
INSERT INTO `city` VALUES (2837, '南昌县', 2830);
INSERT INTO `city` VALUES (2838, '新建县', 2830);
INSERT INTO `city` VALUES (2839, '安义县', 2830);
INSERT INTO `city` VALUES (2840, '进贤县', 2830);
INSERT INTO `city` VALUES (2841, '景德镇市', 2829);
INSERT INTO `city` VALUES (2842, '市辖区', 2841);
INSERT INTO `city` VALUES (2843, '昌江区', 2841);
INSERT INTO `city` VALUES (2844, '珠山区', 2841);
INSERT INTO `city` VALUES (2845, '浮梁县', 2841);
INSERT INTO `city` VALUES (2846, '乐平市', 2841);
INSERT INTO `city` VALUES (2847, '萍乡市', 2829);
INSERT INTO `city` VALUES (2848, '市辖区', 2847);
INSERT INTO `city` VALUES (2849, '安源区', 2847);
INSERT INTO `city` VALUES (2850, '湘东区', 2847);
INSERT INTO `city` VALUES (2851, '莲花县', 2847);
INSERT INTO `city` VALUES (2852, '上栗县', 2847);
INSERT INTO `city` VALUES (2853, '芦溪县', 2847);
INSERT INTO `city` VALUES (2854, '九江市', 2829);
INSERT INTO `city` VALUES (2855, '市辖区', 2854);
INSERT INTO `city` VALUES (2856, '庐山区', 2854);
INSERT INTO `city` VALUES (2857, '浔阳区', 2854);
INSERT INTO `city` VALUES (2858, '九江县', 2854);
INSERT INTO `city` VALUES (2859, '武宁县', 2854);
INSERT INTO `city` VALUES (2860, '修水县', 2854);
INSERT INTO `city` VALUES (2861, '永修县', 2854);
INSERT INTO `city` VALUES (2862, '德安县', 2854);
INSERT INTO `city` VALUES (2863, '星子县', 2854);
INSERT INTO `city` VALUES (2864, '都昌县', 2854);
INSERT INTO `city` VALUES (2865, '湖口县', 2854);
INSERT INTO `city` VALUES (2866, '彭泽县', 2854);
INSERT INTO `city` VALUES (2867, '瑞昌市', 2854);
INSERT INTO `city` VALUES (2868, '新余市', 2829);
INSERT INTO `city` VALUES (2869, '市辖区', 2868);
INSERT INTO `city` VALUES (2870, '渝水区', 2868);
INSERT INTO `city` VALUES (2871, '分宜县', 2868);
INSERT INTO `city` VALUES (2872, '鹰潭市', 2829);
INSERT INTO `city` VALUES (2873, '市辖区', 2872);
INSERT INTO `city` VALUES (2874, '月湖区', 2872);
INSERT INTO `city` VALUES (2875, '余江县', 2872);
INSERT INTO `city` VALUES (2876, '贵溪市', 2872);
INSERT INTO `city` VALUES (2877, '赣州市', 2829);
INSERT INTO `city` VALUES (2878, '市辖区', 2877);
INSERT INTO `city` VALUES (2879, '章贡区', 2877);
INSERT INTO `city` VALUES (2880, '赣　县', 2877);
INSERT INTO `city` VALUES (2881, '信丰县', 2877);
INSERT INTO `city` VALUES (2882, '大余县', 2877);
INSERT INTO `city` VALUES (2883, '上犹县', 2877);
INSERT INTO `city` VALUES (2884, '崇义县', 2877);
INSERT INTO `city` VALUES (2885, '安远县', 2877);
INSERT INTO `city` VALUES (2886, '龙南县', 2877);
INSERT INTO `city` VALUES (2887, '定南县', 2877);
INSERT INTO `city` VALUES (2888, '全南县', 2877);
INSERT INTO `city` VALUES (2889, '宁都县', 2877);
INSERT INTO `city` VALUES (2890, '于都县', 2877);
INSERT INTO `city` VALUES (2891, '兴国县', 2877);
INSERT INTO `city` VALUES (2892, '会昌县', 2877);
INSERT INTO `city` VALUES (2893, '寻乌县', 2877);
INSERT INTO `city` VALUES (2894, '石城县', 2877);
INSERT INTO `city` VALUES (2895, '瑞金市', 2877);
INSERT INTO `city` VALUES (2896, '南康市', 2877);
INSERT INTO `city` VALUES (2897, '吉安市', 2829);
INSERT INTO `city` VALUES (2898, '市辖区', 2897);
INSERT INTO `city` VALUES (2899, '吉州区', 2897);
INSERT INTO `city` VALUES (2900, '青原区', 2897);
INSERT INTO `city` VALUES (2901, '吉安县', 2897);
INSERT INTO `city` VALUES (2902, '吉水县', 2897);
INSERT INTO `city` VALUES (2903, '峡江县', 2897);
INSERT INTO `city` VALUES (2904, '新干县', 2897);
INSERT INTO `city` VALUES (2905, '永丰县', 2897);
INSERT INTO `city` VALUES (2906, '泰和县', 2897);
INSERT INTO `city` VALUES (2907, '遂川县', 2897);
INSERT INTO `city` VALUES (2908, '万安县', 2897);
INSERT INTO `city` VALUES (2909, '安福县', 2897);
INSERT INTO `city` VALUES (2910, '永新县', 2897);
INSERT INTO `city` VALUES (2911, '井冈山市', 2897);
INSERT INTO `city` VALUES (2912, '宜春市', 2829);
INSERT INTO `city` VALUES (2913, '市辖区', 2912);
INSERT INTO `city` VALUES (2914, '袁州区', 2912);
INSERT INTO `city` VALUES (2915, '奉新县', 2912);
INSERT INTO `city` VALUES (2916, '万载县', 2912);
INSERT INTO `city` VALUES (2917, '上高县', 2912);
INSERT INTO `city` VALUES (2918, '宜丰县', 2912);
INSERT INTO `city` VALUES (2919, '靖安县', 2912);
INSERT INTO `city` VALUES (2920, '铜鼓县', 2912);
INSERT INTO `city` VALUES (2921, '丰城市', 2912);
INSERT INTO `city` VALUES (2922, '樟树市', 2912);
INSERT INTO `city` VALUES (2923, '高安市', 2912);
INSERT INTO `city` VALUES (2924, '抚州市', 2829);
INSERT INTO `city` VALUES (2925, '市辖区', 2924);
INSERT INTO `city` VALUES (2926, '临川区', 2924);
INSERT INTO `city` VALUES (2927, '南城县', 2924);
INSERT INTO `city` VALUES (2928, '黎川县', 2924);
INSERT INTO `city` VALUES (2929, '南丰县', 2924);
INSERT INTO `city` VALUES (2930, '崇仁县', 2924);
INSERT INTO `city` VALUES (2931, '乐安县', 2924);
INSERT INTO `city` VALUES (2932, '宜黄县', 2924);
INSERT INTO `city` VALUES (2933, '金溪县', 2924);
INSERT INTO `city` VALUES (2934, '资溪县', 2924);
INSERT INTO `city` VALUES (2935, '东乡县', 2924);
INSERT INTO `city` VALUES (2936, '广昌县', 2924);
INSERT INTO `city` VALUES (2937, '上饶市', 2829);
INSERT INTO `city` VALUES (2938, '市辖区', 2937);
INSERT INTO `city` VALUES (2939, '信州区', 2937);
INSERT INTO `city` VALUES (2940, '上饶县', 2937);
INSERT INTO `city` VALUES (2941, '广丰县', 2937);
INSERT INTO `city` VALUES (2942, '玉山县', 2937);
INSERT INTO `city` VALUES (2943, '铅山县', 2937);
INSERT INTO `city` VALUES (2944, '横峰县', 2937);
INSERT INTO `city` VALUES (2945, '弋阳县', 2937);
INSERT INTO `city` VALUES (2946, '余干县', 2937);
INSERT INTO `city` VALUES (2947, '鄱阳县', 2937);
INSERT INTO `city` VALUES (2948, '万年县', 2937);
INSERT INTO `city` VALUES (2949, '婺源县', 2937);
INSERT INTO `city` VALUES (2950, '德兴市', 2937);
INSERT INTO `city` VALUES (2951, '山东省', NULL);
INSERT INTO `city` VALUES (2952, '济南市', 2951);
INSERT INTO `city` VALUES (2953, '市辖区', 2952);
INSERT INTO `city` VALUES (2954, '历下区', 2952);
INSERT INTO `city` VALUES (2955, '市中区', 2952);
INSERT INTO `city` VALUES (2956, '槐荫区', 2952);
INSERT INTO `city` VALUES (2957, '天桥区', 2952);
INSERT INTO `city` VALUES (2958, '历城区', 2952);
INSERT INTO `city` VALUES (2959, '长清区', 2952);
INSERT INTO `city` VALUES (2960, '平阴县', 2952);
INSERT INTO `city` VALUES (2961, '济阳县', 2952);
INSERT INTO `city` VALUES (2962, '商河县', 2952);
INSERT INTO `city` VALUES (2963, '章丘市', 2952);
INSERT INTO `city` VALUES (2964, '青岛市', 2951);
INSERT INTO `city` VALUES (2965, '市辖区', 2964);
INSERT INTO `city` VALUES (2966, '市南区', 2964);
INSERT INTO `city` VALUES (2967, '市北区', 2964);
INSERT INTO `city` VALUES (2968, '四方区', 2964);
INSERT INTO `city` VALUES (2969, '黄岛区', 2964);
INSERT INTO `city` VALUES (2970, '崂山区', 2964);
INSERT INTO `city` VALUES (2971, '李沧区', 2964);
INSERT INTO `city` VALUES (2972, '城阳区', 2964);
INSERT INTO `city` VALUES (2973, '胶州市', 2964);
INSERT INTO `city` VALUES (2974, '即墨市', 2964);
INSERT INTO `city` VALUES (2975, '平度市', 2964);
INSERT INTO `city` VALUES (2976, '胶南市', 2964);
INSERT INTO `city` VALUES (2977, '莱西市', 2964);
INSERT INTO `city` VALUES (2978, '淄博市', 2951);
INSERT INTO `city` VALUES (2979, '市辖区', 2978);
INSERT INTO `city` VALUES (2980, '淄川区', 2978);
INSERT INTO `city` VALUES (2981, '张店区', 2978);
INSERT INTO `city` VALUES (2982, '博山区', 2978);
INSERT INTO `city` VALUES (2983, '临淄区', 2978);
INSERT INTO `city` VALUES (2984, '周村区', 2978);
INSERT INTO `city` VALUES (2985, '桓台县', 2978);
INSERT INTO `city` VALUES (2986, '高青县', 2978);
INSERT INTO `city` VALUES (2987, '沂源县', 2978);
INSERT INTO `city` VALUES (2988, '枣庄市', 2951);
INSERT INTO `city` VALUES (2989, '市辖区', 2988);
INSERT INTO `city` VALUES (2990, '市中区', 2988);
INSERT INTO `city` VALUES (2991, '薛城区', 2988);
INSERT INTO `city` VALUES (2992, '峄城区', 2988);
INSERT INTO `city` VALUES (2993, '台儿庄区', 2988);
INSERT INTO `city` VALUES (2994, '山亭区', 2988);
INSERT INTO `city` VALUES (2995, '滕州市', 2988);
INSERT INTO `city` VALUES (2996, '东营市', 2951);
INSERT INTO `city` VALUES (2997, '市辖区', 2996);
INSERT INTO `city` VALUES (2998, '东营区', 2996);
INSERT INTO `city` VALUES (2999, '河口区', 2996);
INSERT INTO `city` VALUES (3000, '垦利县', 2996);
INSERT INTO `city` VALUES (3001, '利津县', 2996);
INSERT INTO `city` VALUES (3002, '广饶县', 2996);
INSERT INTO `city` VALUES (3003, '烟台市', 2951);
INSERT INTO `city` VALUES (3004, '市辖区', 3003);
INSERT INTO `city` VALUES (3005, '芝罘区', 3003);
INSERT INTO `city` VALUES (3006, '福山区', 3003);
INSERT INTO `city` VALUES (3007, '牟平区', 3003);
INSERT INTO `city` VALUES (3008, '莱山区', 3003);
INSERT INTO `city` VALUES (3009, '长岛县', 3003);
INSERT INTO `city` VALUES (3010, '龙口市', 3003);
INSERT INTO `city` VALUES (3011, '莱阳市', 3003);
INSERT INTO `city` VALUES (3012, '莱州市', 3003);
INSERT INTO `city` VALUES (3013, '蓬莱市', 3003);
INSERT INTO `city` VALUES (3014, '招远市', 3003);
INSERT INTO `city` VALUES (3015, '栖霞市', 3003);
INSERT INTO `city` VALUES (3016, '海阳市', 3003);
INSERT INTO `city` VALUES (3017, '潍坊市', 2951);
INSERT INTO `city` VALUES (3018, '市辖区', 3017);
INSERT INTO `city` VALUES (3019, '潍城区', 3017);
INSERT INTO `city` VALUES (3020, '寒亭区', 3017);
INSERT INTO `city` VALUES (3021, '坊子区', 3017);
INSERT INTO `city` VALUES (3022, '奎文区', 3017);
INSERT INTO `city` VALUES (3023, '临朐县', 3017);
INSERT INTO `city` VALUES (3024, '昌乐县', 3017);
INSERT INTO `city` VALUES (3025, '青州市', 3017);
INSERT INTO `city` VALUES (3026, '诸城市', 3017);
INSERT INTO `city` VALUES (3027, '寿光市', 3017);
INSERT INTO `city` VALUES (3028, '安丘市', 3017);
INSERT INTO `city` VALUES (3029, '高密市', 3017);
INSERT INTO `city` VALUES (3030, '昌邑市', 3017);
INSERT INTO `city` VALUES (3031, '济宁市', 2951);
INSERT INTO `city` VALUES (3032, '市辖区', 3031);
INSERT INTO `city` VALUES (3033, '市中区', 3031);
INSERT INTO `city` VALUES (3034, '任城区', 3031);
INSERT INTO `city` VALUES (3035, '微山县', 3031);
INSERT INTO `city` VALUES (3036, '鱼台县', 3031);
INSERT INTO `city` VALUES (3037, '金乡县', 3031);
INSERT INTO `city` VALUES (3038, '嘉祥县', 3031);
INSERT INTO `city` VALUES (3039, '汶上县', 3031);
INSERT INTO `city` VALUES (3040, '泗水县', 3031);
INSERT INTO `city` VALUES (3041, '梁山县', 3031);
INSERT INTO `city` VALUES (3042, '曲阜市', 3031);
INSERT INTO `city` VALUES (3043, '兖州市', 3031);
INSERT INTO `city` VALUES (3044, '邹城市', 3031);
INSERT INTO `city` VALUES (3045, '泰安市', 2951);
INSERT INTO `city` VALUES (3046, '市辖区', 3045);
INSERT INTO `city` VALUES (3047, '泰山区', 3045);
INSERT INTO `city` VALUES (3048, '岱岳区', 3045);
INSERT INTO `city` VALUES (3049, '宁阳县', 3045);
INSERT INTO `city` VALUES (3050, '东平县', 3045);
INSERT INTO `city` VALUES (3051, '新泰市', 3045);
INSERT INTO `city` VALUES (3052, '肥城市', 3045);
INSERT INTO `city` VALUES (3053, '威海市', 2951);
INSERT INTO `city` VALUES (3054, '市辖区', 3053);
INSERT INTO `city` VALUES (3055, '环翠区', 3053);
INSERT INTO `city` VALUES (3056, '文登市', 3053);
INSERT INTO `city` VALUES (3057, '荣成市', 3053);
INSERT INTO `city` VALUES (3058, '乳山市', 3053);
INSERT INTO `city` VALUES (3059, '日照市', 2951);
INSERT INTO `city` VALUES (3060, '市辖区', 3059);
INSERT INTO `city` VALUES (3061, '东港区', 3059);
INSERT INTO `city` VALUES (3062, '岚山区', 3059);
INSERT INTO `city` VALUES (3063, '五莲县', 3059);
INSERT INTO `city` VALUES (3064, '莒　县', 3059);
INSERT INTO `city` VALUES (3065, '莱芜市', 2951);
INSERT INTO `city` VALUES (3066, '市辖区', 3065);
INSERT INTO `city` VALUES (3067, '莱城区', 3065);
INSERT INTO `city` VALUES (3068, '钢城区', 3065);
INSERT INTO `city` VALUES (3069, '临沂市', 2951);
INSERT INTO `city` VALUES (3070, '市辖区', 3069);
INSERT INTO `city` VALUES (3071, '兰山区', 3069);
INSERT INTO `city` VALUES (3072, '罗庄区', 3069);
INSERT INTO `city` VALUES (3073, '河东区', 3069);
INSERT INTO `city` VALUES (3074, '沂南县', 3069);
INSERT INTO `city` VALUES (3075, '郯城县', 3069);
INSERT INTO `city` VALUES (3076, '沂水县', 3069);
INSERT INTO `city` VALUES (3077, '苍山县', 3069);
INSERT INTO `city` VALUES (3078, '费　县', 3069);
INSERT INTO `city` VALUES (3079, '平邑县', 3069);
INSERT INTO `city` VALUES (3080, '莒南县', 3069);
INSERT INTO `city` VALUES (3081, '蒙阴县', 3069);
INSERT INTO `city` VALUES (3082, '临沭县', 3069);
INSERT INTO `city` VALUES (3083, '德州市', 2951);
INSERT INTO `city` VALUES (3084, '市辖区', 3083);
INSERT INTO `city` VALUES (3085, '德城区', 3083);
INSERT INTO `city` VALUES (3086, '陵　县', 3083);
INSERT INTO `city` VALUES (3087, '宁津县', 3083);
INSERT INTO `city` VALUES (3088, '庆云县', 3083);
INSERT INTO `city` VALUES (3089, '临邑县', 3083);
INSERT INTO `city` VALUES (3090, '齐河县', 3083);
INSERT INTO `city` VALUES (3091, '平原县', 3083);
INSERT INTO `city` VALUES (3092, '夏津县', 3083);
INSERT INTO `city` VALUES (3093, '武城县', 3083);
INSERT INTO `city` VALUES (3094, '乐陵市', 3083);
INSERT INTO `city` VALUES (3095, '禹城市', 3083);
INSERT INTO `city` VALUES (3096, '聊城市', 2951);
INSERT INTO `city` VALUES (3097, '市辖区', 3096);
INSERT INTO `city` VALUES (3098, '东昌府区', 3096);
INSERT INTO `city` VALUES (3099, '阳谷县', 3096);
INSERT INTO `city` VALUES (3100, '莘　县', 3096);
INSERT INTO `city` VALUES (3101, '茌平县', 3096);
INSERT INTO `city` VALUES (3102, '东阿县', 3096);
INSERT INTO `city` VALUES (3103, '冠　县', 3096);
INSERT INTO `city` VALUES (3104, '高唐县', 3096);
INSERT INTO `city` VALUES (3105, '临清市', 3096);
INSERT INTO `city` VALUES (3106, '滨州市', 2951);
INSERT INTO `city` VALUES (3107, '市辖区', 3106);
INSERT INTO `city` VALUES (3108, '滨城区', 3106);
INSERT INTO `city` VALUES (3109, '惠民县', 3106);
INSERT INTO `city` VALUES (3110, '阳信县', 3106);
INSERT INTO `city` VALUES (3111, '无棣县', 3106);
INSERT INTO `city` VALUES (3112, '沾化县', 3106);
INSERT INTO `city` VALUES (3113, '博兴县', 3106);
INSERT INTO `city` VALUES (3114, '邹平县', 3106);
INSERT INTO `city` VALUES (3115, '荷泽市', 2951);
INSERT INTO `city` VALUES (3116, '市辖区', 3115);
INSERT INTO `city` VALUES (3117, '牡丹区', 3115);
INSERT INTO `city` VALUES (3118, '曹　县', 3115);
INSERT INTO `city` VALUES (3119, '单　县', 3115);
INSERT INTO `city` VALUES (3120, '成武县', 3115);
INSERT INTO `city` VALUES (3121, '巨野县', 3115);
INSERT INTO `city` VALUES (3122, '郓城县', 3115);
INSERT INTO `city` VALUES (3123, '鄄城县', 3115);
INSERT INTO `city` VALUES (3124, '定陶县', 3115);
INSERT INTO `city` VALUES (3125, '东明县', 3115);
INSERT INTO `city` VALUES (3126, '辽宁省', NULL);
INSERT INTO `city` VALUES (3127, '沈阳市', 3126);
INSERT INTO `city` VALUES (3128, '市辖区', 3127);
INSERT INTO `city` VALUES (3129, '和平区', 3127);
INSERT INTO `city` VALUES (3130, '沈河区', 3127);
INSERT INTO `city` VALUES (3131, '大东区', 3127);
INSERT INTO `city` VALUES (3132, '皇姑区', 3127);
INSERT INTO `city` VALUES (3133, '铁西区', 3127);
INSERT INTO `city` VALUES (3134, '苏家屯区', 3127);
INSERT INTO `city` VALUES (3135, '东陵区', 3127);
INSERT INTO `city` VALUES (3136, '新城子区', 3127);
INSERT INTO `city` VALUES (3137, '于洪区', 3127);
INSERT INTO `city` VALUES (3138, '辽中县', 3127);
INSERT INTO `city` VALUES (3139, '康平县', 3127);
INSERT INTO `city` VALUES (3140, '法库县', 3127);
INSERT INTO `city` VALUES (3141, '新民市', 3127);
INSERT INTO `city` VALUES (3142, '大连市', 3126);
INSERT INTO `city` VALUES (3143, '市辖区', 3142);
INSERT INTO `city` VALUES (3144, '中山区', 3142);
INSERT INTO `city` VALUES (3145, '西岗区', 3142);
INSERT INTO `city` VALUES (3146, '沙河口区', 3142);
INSERT INTO `city` VALUES (3147, '甘井子区', 3142);
INSERT INTO `city` VALUES (3148, '旅顺口区', 3142);
INSERT INTO `city` VALUES (3149, '金州区', 3142);
INSERT INTO `city` VALUES (3150, '长海县', 3142);
INSERT INTO `city` VALUES (3151, '瓦房店市', 3142);
INSERT INTO `city` VALUES (3152, '普兰店市', 3142);
INSERT INTO `city` VALUES (3153, '庄河市', 3142);
INSERT INTO `city` VALUES (3154, '鞍山市', 3126);
INSERT INTO `city` VALUES (3155, '市辖区', 3154);
INSERT INTO `city` VALUES (3156, '铁东区', 3154);
INSERT INTO `city` VALUES (3157, '铁西区', 3154);
INSERT INTO `city` VALUES (3158, '立山区', 3154);
INSERT INTO `city` VALUES (3159, '千山区', 3154);
INSERT INTO `city` VALUES (3160, '台安县', 3154);
INSERT INTO `city` VALUES (3161, '岫岩满族自治县', 3154);
INSERT INTO `city` VALUES (3162, '海城市', 3154);
INSERT INTO `city` VALUES (3163, '抚顺市', 3126);
INSERT INTO `city` VALUES (3164, '市辖区', 3163);
INSERT INTO `city` VALUES (3165, '新抚区', 3163);
INSERT INTO `city` VALUES (3166, '东洲区', 3163);
INSERT INTO `city` VALUES (3167, '望花区', 3163);
INSERT INTO `city` VALUES (3168, '顺城区', 3163);
INSERT INTO `city` VALUES (3169, '抚顺县', 3163);
INSERT INTO `city` VALUES (3170, '新宾满族自治县', 3163);
INSERT INTO `city` VALUES (3171, '清原满族自治县', 3163);
INSERT INTO `city` VALUES (3172, '本溪市', 3126);
INSERT INTO `city` VALUES (3173, '市辖区', 3172);
INSERT INTO `city` VALUES (3174, '平山区', 3172);
INSERT INTO `city` VALUES (3175, '溪湖区', 3172);
INSERT INTO `city` VALUES (3176, '明山区', 3172);
INSERT INTO `city` VALUES (3177, '南芬区', 3172);
INSERT INTO `city` VALUES (3178, '本溪满族自治县', 3172);
INSERT INTO `city` VALUES (3179, '桓仁满族自治县', 3172);
INSERT INTO `city` VALUES (3180, '丹东市', 3126);
INSERT INTO `city` VALUES (3181, '市辖区', 3180);
INSERT INTO `city` VALUES (3182, '元宝区', 3180);
INSERT INTO `city` VALUES (3183, '振兴区', 3180);
INSERT INTO `city` VALUES (3184, '振安区', 3180);
INSERT INTO `city` VALUES (3185, '宽甸满族自治县', 3180);
INSERT INTO `city` VALUES (3186, '东港市', 3180);
INSERT INTO `city` VALUES (3187, '凤城市', 3180);
INSERT INTO `city` VALUES (3188, '锦州市', 3126);
INSERT INTO `city` VALUES (3189, '市辖区', 3188);
INSERT INTO `city` VALUES (3190, '古塔区', 3188);
INSERT INTO `city` VALUES (3191, '凌河区', 3188);
INSERT INTO `city` VALUES (3192, '太和区', 3188);
INSERT INTO `city` VALUES (3193, '黑山县', 3188);
INSERT INTO `city` VALUES (3194, '义　县', 3188);
INSERT INTO `city` VALUES (3195, '凌海市', 3188);
INSERT INTO `city` VALUES (3196, '北宁市', 3188);
INSERT INTO `city` VALUES (3197, '营口市', 3126);
INSERT INTO `city` VALUES (3198, '市辖区', 3197);
INSERT INTO `city` VALUES (3199, '站前区', 3197);
INSERT INTO `city` VALUES (3200, '西市区', 3197);
INSERT INTO `city` VALUES (3201, '鲅鱼圈区', 3197);
INSERT INTO `city` VALUES (3202, '老边区', 3197);
INSERT INTO `city` VALUES (3203, '盖州市', 3197);
INSERT INTO `city` VALUES (3204, '大石桥市', 3197);
INSERT INTO `city` VALUES (3205, '阜新市', 3126);
INSERT INTO `city` VALUES (3206, '市辖区', 3205);
INSERT INTO `city` VALUES (3207, '海州区', 3205);
INSERT INTO `city` VALUES (3208, '新邱区', 3205);
INSERT INTO `city` VALUES (3209, '太平区', 3205);
INSERT INTO `city` VALUES (3210, '清河门区', 3205);
INSERT INTO `city` VALUES (3211, '细河区', 3205);
INSERT INTO `city` VALUES (3212, '阜新蒙古族自治县', 3205);
INSERT INTO `city` VALUES (3213, '彰武县', 3205);
INSERT INTO `city` VALUES (3214, '辽阳市', 3126);
INSERT INTO `city` VALUES (3215, '市辖区', 3214);
INSERT INTO `city` VALUES (3216, '白塔区', 3214);
INSERT INTO `city` VALUES (3217, '文圣区', 3214);
INSERT INTO `city` VALUES (3218, '宏伟区', 3214);
INSERT INTO `city` VALUES (3219, '弓长岭区', 3214);
INSERT INTO `city` VALUES (3220, '太子河区', 3214);
INSERT INTO `city` VALUES (3221, '辽阳县', 3214);
INSERT INTO `city` VALUES (3222, '灯塔市', 3214);
INSERT INTO `city` VALUES (3223, '盘锦市', 3126);
INSERT INTO `city` VALUES (3224, '市辖区', 3223);
INSERT INTO `city` VALUES (3225, '双台子区', 3223);
INSERT INTO `city` VALUES (3226, '兴隆台区', 3223);
INSERT INTO `city` VALUES (3227, '大洼县', 3223);
INSERT INTO `city` VALUES (3228, '盘山县', 3223);
INSERT INTO `city` VALUES (3229, '铁岭市', 3126);
INSERT INTO `city` VALUES (3230, '市辖区', 3229);
INSERT INTO `city` VALUES (3231, '银州区', 3229);
INSERT INTO `city` VALUES (3232, '清河区', 3229);
INSERT INTO `city` VALUES (3233, '铁岭县', 3229);
INSERT INTO `city` VALUES (3234, '西丰县', 3229);
INSERT INTO `city` VALUES (3235, '昌图县', 3229);
INSERT INTO `city` VALUES (3236, '调兵山市', 3229);
INSERT INTO `city` VALUES (3237, '开原市', 3229);
INSERT INTO `city` VALUES (3238, '朝阳市', 3126);
INSERT INTO `city` VALUES (3239, '市辖区', 3238);
INSERT INTO `city` VALUES (3240, '双塔区', 3238);
INSERT INTO `city` VALUES (3241, '龙城区', 3238);
INSERT INTO `city` VALUES (3242, '朝阳县', 3238);
INSERT INTO `city` VALUES (3243, '建平县', 3238);
INSERT INTO `city` VALUES (3244, '喀喇沁左翼蒙古族自治县', 3238);
INSERT INTO `city` VALUES (3245, '北票市', 3238);
INSERT INTO `city` VALUES (3246, '凌源市', 3238);
INSERT INTO `city` VALUES (3247, '葫芦岛市', 3126);
INSERT INTO `city` VALUES (3248, '市辖区', 3247);
INSERT INTO `city` VALUES (3249, '连山区', 3247);
INSERT INTO `city` VALUES (3250, '龙港区', 3247);
INSERT INTO `city` VALUES (3251, '南票区', 3247);
INSERT INTO `city` VALUES (3252, '绥中县', 3247);
INSERT INTO `city` VALUES (3253, '建昌县', 3247);
INSERT INTO `city` VALUES (3254, '兴城市', 3247);
INSERT INTO `city` VALUES (3255, '吉林省', NULL);
INSERT INTO `city` VALUES (3256, '长春市', 3255);
INSERT INTO `city` VALUES (3257, '市辖区', 3256);
INSERT INTO `city` VALUES (3258, '南关区', 3256);
INSERT INTO `city` VALUES (3259, '宽城区', 3256);
INSERT INTO `city` VALUES (3260, '朝阳区', 3256);
INSERT INTO `city` VALUES (3261, '二道区', 3256);
INSERT INTO `city` VALUES (3262, '绿园区', 3256);
INSERT INTO `city` VALUES (3263, '双阳区', 3256);
INSERT INTO `city` VALUES (3264, '农安县', 3256);
INSERT INTO `city` VALUES (3265, '九台市', 3256);
INSERT INTO `city` VALUES (3266, '榆树市', 3256);
INSERT INTO `city` VALUES (3267, '德惠市', 3256);
INSERT INTO `city` VALUES (3268, '吉林市', 3255);
INSERT INTO `city` VALUES (3269, '市辖区', 3268);
INSERT INTO `city` VALUES (3270, '昌邑区', 3268);
INSERT INTO `city` VALUES (3271, '龙潭区', 3268);
INSERT INTO `city` VALUES (3272, '船营区', 3268);
INSERT INTO `city` VALUES (3273, '丰满区', 3268);
INSERT INTO `city` VALUES (3274, '永吉县', 3268);
INSERT INTO `city` VALUES (3275, '蛟河市', 3268);
INSERT INTO `city` VALUES (3276, '桦甸市', 3268);
INSERT INTO `city` VALUES (3277, '舒兰市', 3268);
INSERT INTO `city` VALUES (3278, '磐石市', 3268);
INSERT INTO `city` VALUES (3279, '四平市', 3255);
INSERT INTO `city` VALUES (3280, '市辖区', 3279);
INSERT INTO `city` VALUES (3281, '铁西区', 3279);
INSERT INTO `city` VALUES (3282, '铁东区', 3279);
INSERT INTO `city` VALUES (3283, '梨树县', 3279);
INSERT INTO `city` VALUES (3284, '伊通满族自治县', 3279);
INSERT INTO `city` VALUES (3285, '公主岭市', 3279);
INSERT INTO `city` VALUES (3286, '双辽市', 3279);
INSERT INTO `city` VALUES (3287, '辽源市', 3255);
INSERT INTO `city` VALUES (3288, '市辖区', 3287);
INSERT INTO `city` VALUES (3289, '龙山区', 3287);
INSERT INTO `city` VALUES (3290, '西安区', 3287);
INSERT INTO `city` VALUES (3291, '东丰县', 3287);
INSERT INTO `city` VALUES (3292, '东辽县', 3287);
INSERT INTO `city` VALUES (3293, '通化市', 3255);
INSERT INTO `city` VALUES (3294, '市辖区', 3293);
INSERT INTO `city` VALUES (3295, '东昌区', 3293);
INSERT INTO `city` VALUES (3296, '二道江区', 3293);
INSERT INTO `city` VALUES (3297, '通化县', 3293);
INSERT INTO `city` VALUES (3298, '辉南县', 3293);
INSERT INTO `city` VALUES (3299, '柳河县', 3293);
INSERT INTO `city` VALUES (3300, '梅河口市', 3293);
INSERT INTO `city` VALUES (3301, '集安市', 3293);
INSERT INTO `city` VALUES (3302, '白山市', 3255);
INSERT INTO `city` VALUES (3303, '市辖区', 3302);
INSERT INTO `city` VALUES (3304, '八道江区', 3302);
INSERT INTO `city` VALUES (3305, '抚松县', 3302);
INSERT INTO `city` VALUES (3306, '靖宇县', 3302);
INSERT INTO `city` VALUES (3307, '长白朝鲜族自治县', 3302);
INSERT INTO `city` VALUES (3308, '江源县', 3302);
INSERT INTO `city` VALUES (3309, '临江市', 3302);
INSERT INTO `city` VALUES (3310, '松原市', 3255);
INSERT INTO `city` VALUES (3311, '市辖区', 3310);
INSERT INTO `city` VALUES (3312, '宁江区', 3310);
INSERT INTO `city` VALUES (3313, '前郭尔罗斯蒙古族自治县', 3310);
INSERT INTO `city` VALUES (3314, '长岭县', 3310);
INSERT INTO `city` VALUES (3315, '乾安县', 3310);
INSERT INTO `city` VALUES (3316, '扶余县', 3310);
INSERT INTO `city` VALUES (3317, '白城市', 3255);
INSERT INTO `city` VALUES (3318, '市辖区', 3317);
INSERT INTO `city` VALUES (3319, '洮北区', 3317);
INSERT INTO `city` VALUES (3320, '镇赉县', 3317);
INSERT INTO `city` VALUES (3321, '通榆县', 3317);
INSERT INTO `city` VALUES (3322, '洮南市', 3317);
INSERT INTO `city` VALUES (3323, '大安市', 3317);
INSERT INTO `city` VALUES (3324, '延边朝鲜族自治州', 3255);
INSERT INTO `city` VALUES (3325, '延吉市', 3324);
INSERT INTO `city` VALUES (3326, '图们市', 3324);
INSERT INTO `city` VALUES (3327, '敦化市', 3324);
INSERT INTO `city` VALUES (3328, '珲春市', 3324);
INSERT INTO `city` VALUES (3329, '龙井市', 3324);
INSERT INTO `city` VALUES (3330, '和龙市', 3324);
INSERT INTO `city` VALUES (3331, '汪清县', 3324);
INSERT INTO `city` VALUES (3332, '安图县', 3324);
INSERT INTO `city` VALUES (3333, '黑龙江省', NULL);
INSERT INTO `city` VALUES (3334, '哈尔滨市', 3333);
INSERT INTO `city` VALUES (3335, '市辖区', 3334);
INSERT INTO `city` VALUES (3336, '道里区', 3334);
INSERT INTO `city` VALUES (3337, '南岗区', 3334);
INSERT INTO `city` VALUES (3338, '道外区', 3334);
INSERT INTO `city` VALUES (3339, '香坊区', 3334);
INSERT INTO `city` VALUES (3340, '动力区', 3334);
INSERT INTO `city` VALUES (3341, '平房区', 3334);
INSERT INTO `city` VALUES (3342, '松北区', 3334);
INSERT INTO `city` VALUES (3343, '呼兰区', 3334);
INSERT INTO `city` VALUES (3344, '依兰县', 3334);
INSERT INTO `city` VALUES (3345, '方正县', 3334);
INSERT INTO `city` VALUES (3346, '宾　县', 3334);
INSERT INTO `city` VALUES (3347, '巴彦县', 3334);
INSERT INTO `city` VALUES (3348, '木兰县', 3334);
INSERT INTO `city` VALUES (3349, '通河县', 3334);
INSERT INTO `city` VALUES (3350, '延寿县', 3334);
INSERT INTO `city` VALUES (3351, '阿城市', 3334);
INSERT INTO `city` VALUES (3352, '双城市', 3334);
INSERT INTO `city` VALUES (3353, '尚志市', 3334);
INSERT INTO `city` VALUES (3354, '五常市', 3334);
INSERT INTO `city` VALUES (3355, '齐齐哈尔市', 3333);
INSERT INTO `city` VALUES (3356, '市辖区', 3355);
INSERT INTO `city` VALUES (3357, '龙沙区', 3355);
INSERT INTO `city` VALUES (3358, '建华区', 3355);
INSERT INTO `city` VALUES (3359, '铁锋区', 3355);
INSERT INTO `city` VALUES (3360, '昂昂溪区', 3355);
INSERT INTO `city` VALUES (3361, '富拉尔基区', 3355);
INSERT INTO `city` VALUES (3362, '碾子山区', 3355);
INSERT INTO `city` VALUES (3363, '梅里斯达斡尔族区', 3355);
INSERT INTO `city` VALUES (3364, '龙江县', 3355);
INSERT INTO `city` VALUES (3365, '依安县', 3355);
INSERT INTO `city` VALUES (3366, '泰来县', 3355);
INSERT INTO `city` VALUES (3367, '甘南县', 3355);
INSERT INTO `city` VALUES (3368, '富裕县', 3355);
INSERT INTO `city` VALUES (3369, '克山县', 3355);
INSERT INTO `city` VALUES (3370, '克东县', 3355);
INSERT INTO `city` VALUES (3371, '拜泉县', 3355);
INSERT INTO `city` VALUES (3372, '讷河市', 3355);
INSERT INTO `city` VALUES (3373, '鸡西市', 3333);
INSERT INTO `city` VALUES (3374, '市辖区', 3373);
INSERT INTO `city` VALUES (3375, '鸡冠区', 3373);
INSERT INTO `city` VALUES (3376, '恒山区', 3373);
INSERT INTO `city` VALUES (3377, '滴道区', 3373);
INSERT INTO `city` VALUES (3378, '梨树区', 3373);
INSERT INTO `city` VALUES (3379, '城子河区', 3373);
INSERT INTO `city` VALUES (3380, '麻山区', 3373);
INSERT INTO `city` VALUES (3381, '鸡东县', 3373);
INSERT INTO `city` VALUES (3382, '虎林市', 3373);
INSERT INTO `city` VALUES (3383, '密山市', 3373);
INSERT INTO `city` VALUES (3384, '鹤岗市', 3333);
INSERT INTO `city` VALUES (3385, '市辖区', 3384);
INSERT INTO `city` VALUES (3386, '向阳区', 3384);
INSERT INTO `city` VALUES (3387, '工农区', 3384);
INSERT INTO `city` VALUES (3388, '南山区', 3384);
INSERT INTO `city` VALUES (3389, '兴安区', 3384);
INSERT INTO `city` VALUES (3390, '东山区', 3384);
INSERT INTO `city` VALUES (3391, '兴山区', 3384);
INSERT INTO `city` VALUES (3392, '萝北县', 3384);
INSERT INTO `city` VALUES (3393, '绥滨县', 3384);
INSERT INTO `city` VALUES (3394, '双鸭山市', 3333);
INSERT INTO `city` VALUES (3395, '市辖区', 3394);
INSERT INTO `city` VALUES (3396, '尖山区', 3394);
INSERT INTO `city` VALUES (3397, '岭东区', 3394);
INSERT INTO `city` VALUES (3398, '四方台区', 3394);
INSERT INTO `city` VALUES (3399, '宝山区', 3394);
INSERT INTO `city` VALUES (3400, '集贤县', 3394);
INSERT INTO `city` VALUES (3401, '友谊县', 3394);
INSERT INTO `city` VALUES (3402, '宝清县', 3394);
INSERT INTO `city` VALUES (3403, '饶河县', 3394);
INSERT INTO `city` VALUES (3404, '大庆市', 3333);
INSERT INTO `city` VALUES (3405, '市辖区', 3404);
INSERT INTO `city` VALUES (3406, '萨尔图区', 3404);
INSERT INTO `city` VALUES (3407, '龙凤区', 3404);
INSERT INTO `city` VALUES (3408, '让胡路区', 3404);
INSERT INTO `city` VALUES (3409, '红岗区', 3404);
INSERT INTO `city` VALUES (3410, '大同区', 3404);
INSERT INTO `city` VALUES (3411, '肇州县', 3404);
INSERT INTO `city` VALUES (3412, '肇源县', 3404);
INSERT INTO `city` VALUES (3413, '林甸县', 3404);
INSERT INTO `city` VALUES (3414, '杜尔伯特蒙古族自治县', 3404);
INSERT INTO `city` VALUES (3415, '伊春市', 3333);
INSERT INTO `city` VALUES (3416, '市辖区', 3415);
INSERT INTO `city` VALUES (3417, '伊春区', 3415);
INSERT INTO `city` VALUES (3418, '南岔区', 3415);
INSERT INTO `city` VALUES (3419, '友好区', 3415);
INSERT INTO `city` VALUES (3420, '西林区', 3415);
INSERT INTO `city` VALUES (3421, '翠峦区', 3415);
INSERT INTO `city` VALUES (3422, '新青区', 3415);
INSERT INTO `city` VALUES (3423, '美溪区', 3415);
INSERT INTO `city` VALUES (3424, '金山屯区', 3415);
INSERT INTO `city` VALUES (3425, '五营区', 3415);
INSERT INTO `city` VALUES (3426, '乌马河区', 3415);
INSERT INTO `city` VALUES (3427, '汤旺河区', 3415);
INSERT INTO `city` VALUES (3428, '带岭区', 3415);
INSERT INTO `city` VALUES (3429, '乌伊岭区', 3415);
INSERT INTO `city` VALUES (3430, '红星区', 3415);
INSERT INTO `city` VALUES (3431, '上甘岭区', 3415);
INSERT INTO `city` VALUES (3432, '嘉荫县', 3415);
INSERT INTO `city` VALUES (3433, '铁力市', 3415);
INSERT INTO `city` VALUES (3434, '佳木斯市', 3333);
INSERT INTO `city` VALUES (3435, '市辖区', 3434);
INSERT INTO `city` VALUES (3436, '永红区', 3434);
INSERT INTO `city` VALUES (3437, '向阳区', 3434);
INSERT INTO `city` VALUES (3438, '前进区', 3434);
INSERT INTO `city` VALUES (3439, '东风区', 3434);
INSERT INTO `city` VALUES (3440, '郊　区', 3434);
INSERT INTO `city` VALUES (3441, '桦南县', 3434);
INSERT INTO `city` VALUES (3442, '桦川县', 3434);
INSERT INTO `city` VALUES (3443, '汤原县', 3434);
INSERT INTO `city` VALUES (3444, '抚远县', 3434);
INSERT INTO `city` VALUES (3445, '同江市', 3434);
INSERT INTO `city` VALUES (3446, '富锦市', 3434);
INSERT INTO `city` VALUES (3447, '七台河市', 3333);
INSERT INTO `city` VALUES (3448, '市辖区', 3447);
INSERT INTO `city` VALUES (3449, '新兴区', 3447);
INSERT INTO `city` VALUES (3450, '桃山区', 3447);
INSERT INTO `city` VALUES (3451, '茄子河区', 3447);
INSERT INTO `city` VALUES (3452, '勃利县', 3447);
INSERT INTO `city` VALUES (3453, '牡丹江市', 3333);
INSERT INTO `city` VALUES (3454, '市辖区', 3453);
INSERT INTO `city` VALUES (3455, '东安区', 3453);
INSERT INTO `city` VALUES (3456, '阳明区', 3453);
INSERT INTO `city` VALUES (3457, '爱民区', 3453);
INSERT INTO `city` VALUES (3458, '西安区', 3453);
INSERT INTO `city` VALUES (3459, '东宁县', 3453);
INSERT INTO `city` VALUES (3460, '林口县', 3453);
INSERT INTO `city` VALUES (3461, '绥芬河市', 3453);
INSERT INTO `city` VALUES (3462, '海林市', 3453);
INSERT INTO `city` VALUES (3463, '宁安市', 3453);
INSERT INTO `city` VALUES (3464, '穆棱市', 3453);
INSERT INTO `city` VALUES (3465, '黑河市', 3333);
INSERT INTO `city` VALUES (3466, '市辖区', 3465);
INSERT INTO `city` VALUES (3467, '爱辉区', 3465);
INSERT INTO `city` VALUES (3468, '嫩江县', 3465);
INSERT INTO `city` VALUES (3469, '逊克县', 3465);
INSERT INTO `city` VALUES (3470, '孙吴县', 3465);
INSERT INTO `city` VALUES (3471, '北安市', 3465);
INSERT INTO `city` VALUES (3472, '五大连池市', 3465);
INSERT INTO `city` VALUES (3473, '绥化市', 3333);
INSERT INTO `city` VALUES (3474, '市辖区', 3473);
INSERT INTO `city` VALUES (3475, '北林区', 3473);
INSERT INTO `city` VALUES (3476, '望奎县', 3473);
INSERT INTO `city` VALUES (3477, '兰西县', 3473);
INSERT INTO `city` VALUES (3478, '青冈县', 3473);
INSERT INTO `city` VALUES (3479, '庆安县', 3473);
INSERT INTO `city` VALUES (3480, '明水县', 3473);
INSERT INTO `city` VALUES (3481, '绥棱县', 3473);
INSERT INTO `city` VALUES (3482, '安达市', 3473);
INSERT INTO `city` VALUES (3483, '肇东市', 3473);
INSERT INTO `city` VALUES (3484, '海伦市', 3473);
INSERT INTO `city` VALUES (3485, '大兴安岭地区', 3333);
INSERT INTO `city` VALUES (3486, '呼玛县', 3485);
INSERT INTO `city` VALUES (3487, '塔河县', 3485);
INSERT INTO `city` VALUES (3488, '漠河县', 3485);
INSERT INTO `city` VALUES (3489, '海南省', NULL);
INSERT INTO `city` VALUES (3490, '海口市', 3489);
INSERT INTO `city` VALUES (3491, '市辖区', 3490);
INSERT INTO `city` VALUES (3492, '秀英区', 3490);
INSERT INTO `city` VALUES (3493, '龙华区', 3490);
INSERT INTO `city` VALUES (3494, '琼山区', 3490);
INSERT INTO `city` VALUES (3495, '美兰区', 3490);
INSERT INTO `city` VALUES (3496, '三亚市', 3489);
INSERT INTO `city` VALUES (3497, '市辖区', 3496);
INSERT INTO `city` VALUES (3498, '省直辖县级行政单位', 3489);
INSERT INTO `city` VALUES (3499, '五指山市', 3498);
INSERT INTO `city` VALUES (3500, '琼海市', 3498);
INSERT INTO `city` VALUES (3501, '儋州市', 3498);
INSERT INTO `city` VALUES (3502, '文昌市', 3498);
INSERT INTO `city` VALUES (3503, '万宁市', 3498);
INSERT INTO `city` VALUES (3504, '东方市', 3498);
INSERT INTO `city` VALUES (3505, '定安县', 3498);
INSERT INTO `city` VALUES (3506, '屯昌县', 3498);
INSERT INTO `city` VALUES (3507, '澄迈县', 3498);
INSERT INTO `city` VALUES (3508, '临高县', 3498);
INSERT INTO `city` VALUES (3509, '白沙黎族自治县', 3498);
INSERT INTO `city` VALUES (3510, '昌江黎族自治县', 3498);
INSERT INTO `city` VALUES (3511, '乐东黎族自治县', 3498);
INSERT INTO `city` VALUES (3512, '陵水黎族自治县', 3498);
INSERT INTO `city` VALUES (3513, '保亭黎族苗族自治县', 3498);
INSERT INTO `city` VALUES (3514, '琼中黎族苗族自治县', 3498);
INSERT INTO `city` VALUES (3515, '西沙群岛', 3498);
INSERT INTO `city` VALUES (3516, '南沙群岛', 3498);
INSERT INTO `city` VALUES (3517, '中沙群岛的岛礁及其海域', 3498);
INSERT INTO `city` VALUES (3518, '台湾省', NULL);
INSERT INTO `city` VALUES (3519, '台湾省', 3518);
INSERT INTO `city` VALUES (3520, '台湾省', 3519);
INSERT INTO `city` VALUES (3521, '香港', NULL);
INSERT INTO `city` VALUES (3522, '香港', 3521);
INSERT INTO `city` VALUES (3523, '香港', 3522);
INSERT INTO `city` VALUES (3524, '澳门', NULL);
INSERT INTO `city` VALUES (3525, '澳门', 3524);
INSERT INTO `city` VALUES (3526, '澳门', 3525);
INSERT INTO `city` VALUES (3527, 'XX', NULL);
INSERT INTO `city` VALUES (3528, '内网IP', 3527);

-- ----------------------------
-- Table structure for coupons
-- ----------------------------
DROP TABLE IF EXISTS `coupons`;
CREATE TABLE `coupons`  (
  `couponId` int(10) NOT NULL,
  `cats_Id` int(10) NULL DEFAULT NULL,
  `couponName` varchar(200) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `couponType` int(4) NULL DEFAULT NULL,
  `couponMoney` int(10) NULL DEFAULT NULL,
  `spendMoney` int(10) NULL DEFAULT NULL,
  `couponDes` text CHARACTER SET gbk COLLATE gbk_chinese_ci NULL,
  `sendNum` int(10) NULL DEFAULT NULL,
  `receiveNum` int(10) NULL DEFAULT NULL,
  `sendStartTime` date NULL DEFAULT NULL,
  `sendEndTime` date NULL DEFAULT NULL,
  `validStartTime` date NULL DEFAULT NULL,
  `validEndTime` date NULL DEFAULT NULL,
  `createTime` datetime(0) NULL DEFAULT NULL,
  `dataFlag` int(4) NULL DEFAULT NULL,
  PRIMARY KEY (`couponId`) USING BTREE,
  INDEX `cats_Id`(`cats_Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for coupons_users
-- ----------------------------
DROP TABLE IF EXISTS `coupons_users`;
CREATE TABLE `coupons_users`  (
  `coup_userId` int(11) NOT NULL,
  `couponId` int(11) NULL DEFAULT NULL,
  `userId` int(11) NULL DEFAULT NULL,
  `receiveTime` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `couponStatus` int(4) NULL DEFAULT NULL,
  `dataFlag` int(4) NULL DEFAULT NULL,
  INDEX `couponId`(`couponId`) USING BTREE,
  INDEX `userId`(`userId`) USING BTREE,
  CONSTRAINT `coupons_users_ibfk_1` FOREIGN KEY (`couponId`) REFERENCES `coupons` (`couponId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `goodsId` int(11) NOT NULL,
  `goodsName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `goodsSaleCount` int(10) NULL DEFAULT NULL,
  `goodsIsBook` int(4) NULL DEFAULT NULL,
  `goodsBookQuantity` int(10) NULL DEFAULT NULL,
  `goodsIsSale` int(4) NULL DEFAULT NULL,
  `goodsIsHot` int(4) NULL DEFAULT NULL,
  `goodsIsNew` int(4) NULL DEFAULT NULL,
  `goodsIsRecommend` int(4) NULL DEFAULT NULL,
  `goodsStatus` int(4) NULL DEFAULT NULL,
  `goodsSaleTime` datetime(0) NULL DEFAULT NULL,
  `goodsSaleDesc` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `goodsAttrDesc` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `goodsEvaluationId` int(11) NULL DEFAULT NULL,
  `goodsImg` varchar(500) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `goodsTotalDesc` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `goodsScreenDesc` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `goodsBatteryDesc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `goodsPreCameraDesc` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `goodsCameraDesc` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `goodsCPUDesc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `goodsSystemDesc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `goodsType` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`goodsId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (1, '小米8', 0, 1, 12333, 0, 0, 1, 1, 1, '2018-06-28 00:00:00', '“小米8周年618狂欢”，2GB+16GB/3GB+32GB立减100元，领券再减50元；4GB+32GB立减200元。更享小米分期免息', '搭载了玩游戏超给力的高通骁龙处理器，后置12MP旗舰相机，前置柔光自拍，配备5.7英寸全面屏。', NULL, '小米8/index_intro2.jpg#小米8/index_screen.jpg#小米8/index_pre_camera.jpg#小米8/index_after_camera.jpg#小米8/index_miui.jpg#小米8/index_cpu.jpg#小米8/index_electricity.jpg', '千元全面屏', '18：9  全面屏#新一代手机屏幕标准', '4000mAh 大电量#17 天超长待机', '前置柔光自拍#暗光依然明亮动人', '1.25μm 大像素相机#摄影大片般出色画质', '14nm 骁龙八核处理器#>>流畅运行大型游戏', 'MIUI 9#快如闪电的手机系统', '小米');
INSERT INTO `goods` VALUES (2, '红米Note5', 0, 1, 12333, 0, 0, 1, 1, 1, '2018-04-26 07:00:00', 'AI 双摄, 梦幻般的背景虚化', '迄今拍照最好的红米手机*，1.4μm超大像素，暗光拍照更清晰。', NULL, '红米Note5/battery.jpg#红米Note5/camera.jpg#红米Note5/cpu.jpg#红米Note5/pre_camera.jpg#红米Note5/screen.jpg#红米Note5/system.jpg#红米Note5/红米Note5.jpg', '暗光逆光更出色', '5.99\" FHD+#18:9 全面屏', '4000mAh 大电量#超长续航', '1.4μm 超大像素#暗光拍照更清晰', '1200万+500万#旗舰级双摄', '骁龙 636 处理器#四大核+四小核', 'MIUI 9#快如闪电的手机系统', '小米');
INSERT INTO `goods` VALUES (3, '小米6X', 0, 1, 12333, 0, 0, 1, 1, 1, '2018-04-12 00:00:00', '入手瞬间便已怦然心动！', '精致纤薄的“杨柳腰”收弧设计，精雕细琢的全金属机身，细腻饱满的磨砂质感', NULL, '小米6X/battery.jpg#小米6X/camera.jpg#小米6X/cpu.jpg#小米6X/pre_camera.jpg#小米6X/screen.jpg#小米6X/system.jpg#小米6X/小米6X.jpg', '“杨柳腰”纤薄机身', '5.99\" FHD+#18:9 全面屏', '4000mAh 大电量#超长续航', '前置2000万“治愈系”自拍#一拍就有好心情', '后置2000万 AI 双摄#白天夜晚都清晰', '标配骁龙660 AIE处理器#旗舰性能', 'MIUI 9#快如闪电的手机系统', '小米');
INSERT INTO `goods` VALUES (4, 'vivoY85', 0, 1, 12333, 0, 0, 1, 1, 1, '2018-04-21 21:00:00', '炫彩外观 个性体验', 'Y85采用全新的高分子高光喷涂工艺，带来精美镜面外观，给你炫潮个性体验。', NULL, 'vivoY85/battery.jpg#vivoY85/camera.jpg#vivoY85/cpu.jpg#vivoY85/pre_camera.jpg#vivoY85/screen.jpg#vivoY85/system.jpg#vivoY85/vivo Y85.jpg', '全面大屏，大不一样', 'Y85采用6.26英寸#19:9比例的全新全面屏', 'Face Wake 面部识别#一瞬之间 解锁新体验', '前置1600万 AI美颜#每张自拍都是私人定制', 'AI智慧双摄#拍照更出色', '高通八核处理器#高速应对多任务处理', '全新Funtouch OS 4.0系统#享受更轻松便捷的智能生活', 'vivo');
INSERT INTO `goods` VALUES (5, 'vivoX20', 0, 1, 12333, 0, 0, 1, 1, 1, '2018-04-12 00:00:00', '高清全面屏，视野无止境', 'X20 & X20Plus高清全面屏，带来震撼视觉享受。', NULL, 'vivoX20/battery.jpg#vivoX20/camera.jpg#vivoX20/cpu.jpg#vivoX20/pre_camera.jpg#vivoX20/screen.jpg#vivoX20/system.jpg#vivoX20/vivo X20.jpg', '两种方式，便捷解锁', '18：9显示比例#给你更宽广的视觉体验', '高清全面屏#视野无止境', 'Hi-Fi#音乐与我，天生一对', '2400万像素#逆光也清晰', 'X20&X20Plus#你的贴心私人助理', '强劲性能#vivo Game Engine游戏引擎', 'vivo');
INSERT INTO `goods` VALUES (6, 'vivo NEX旗舰版', 0, 1, 12333, 0, 0, 1, 1, 1, '2018-04-14 06:00:00', '零界全面屏，视野无阻', '无刘海、零界全面屏，让你拥有零界视野。', NULL, 'vivoNEX/bateery.jpg#vivoNEX/camera.jpg#vivoNEX/cpu.jpg#vivoNEX/pre_camera.jpg#vivoNEX/screen.jpg#vivoNEX/system.jpg#vivoNEX/vivo NEX.jpg', '一场视觉盛宴，再无“槽”点', '零界全面屏#视野无阻', '4000mAh高密度大容量电池#告别插电党', '升降式前置摄像头#自拍依旧随心', 'AI智慧拍照#升级你的美', '高通骁龙845#澎湃性能 电竞级游戏体验', 'Jovi智能语音助手#面向未来的人工智能体验 ', 'vivo');
INSERT INTO `goods` VALUES (7, 'oppo R15', 0, 1, 12333, 0, 0, 1, 1, 1, '2018-04-16 00:00:00', 'R15 天生丽质又聪慧过人', '采用超视野全面屏，拥有炫彩流光机身，散发全面闪亮的魅力。', NULL, 'oppoR15/batery.jpg#oppoR15/camera.jpg#oppoR15/cpu.jpg#oppoR15/oppo R15.jpg#oppoR15/pre_camera.jpg#oppoR15/screen.jpg#oppoR15/system.jpg', '超视野全面屏', '\n\n19:9全面屏#超视野全面屏\n', 'VOOC闪充#充电5分钟，通话两小时', 'AI 人像模式#光影的高级艺术', '梦镜版陶瓷黑#美如琼玉', '2000 万 AI 智慧美颜#适合你的才更美', '炫彩流光机身#就要闪亮出色', 'oppo');
INSERT INTO `goods` VALUES (8, 'oppo R11s', 0, 1, 12333, 0, 0, 1, 1, 1, '2018-04-08 16:00:00', '星幕新年版，你的2018新年礼物', '新的一年，从拥有一款红色时尚单品开始。', NULL, 'oppoR11s/battery.jpg#oppoR11s/camerajpg.jpg#oppoR11s/cpu.jpg#oppoR11s/opo R11s.jpg#oppoR11s/oppo R11s.jpg#oppoR11s/pre_camera.jpg#oppoR11s/system.jpg', '新年正当红', 'Lucky Dog#好运多', 'VOOC闪充#充电5分钟，通话两小时', '2000万AI智慧美艳#你的专属形象顾问', '2000万智选双摄#白天黑色都清晰', '精彩色彩搭配#即刻感受新年', '奢侈品级工艺#Lucky Dog 立体呈现', 'oppo');
INSERT INTO `goods` VALUES (9, 'oppo A3', 0, 1, 12333, 0, 0, 1, 1, 1, '2018-04-12 00:00:00', '钻石纹理，超视野全面屏手机', '超视野全面屏，屏幕\n尺寸高达 6.2 英寸，屏占比高达 88%。', NULL, 'oppoA3/battery.jpg#oppoA3/camera.jpg#oppoA3/cpu.jpg#oppoA3/oppoA3.jpg#oppoA3/pre_camera.jpg#oppoA3/screen.jpg#oppoA3/system.jpg', '钻石纹理，超视野全面屏手机', '超视野全面屏#超多精彩', '纳米级微晶工艺#再造百变光影', '更大容量#更少烦恼', 'AI 智能芯片#又快又省电', '3400mAh 大电池#还有 AI 为你精打细算', '面部识别#比眨眼更快的解锁体验', 'oppo');
INSERT INTO `goods` VALUES (10, 'HUAWEI P20', 0, 1, 12333, 0, 0, 1, 1, 1, '2018-04-26 00:00:00', '4000万徕卡三射*   AI摄影大师', '搭载麒麟970处理器+6GB内存，采用5.8英寸显示屏，分辨率2240x1080，后置徕卡双摄镜头，通过AI技术实现场景识别模式适配。', NULL, 'HUAWEI_P20/goodsBatteryDesc.jpg#HUAWEI_P20/goodsCameraDesc.jpg#HUAWEI_P20/goodsCPUDesc.jpg#HUAWEI_P20/goodsPreCameraDesc.jpg#HUAWEI_P20/goodsScreenDesc.jpg#HUAWEI_P20/goodsSystemDesc.jpg#HUAWEI_P20/goodsTotalDesc.jpg', '4000完徕卡三射*   AI摄影大师   眼界大开', '全面屏，全面不平凡#5.8英寸全面屏', '惊艳外表下,其实很强悍#人工智能芯片，3400mAh电池', '随时随地,影棚级人像自拍#2400万像素 3D人像光效 智能美颜\n', '无惧暗色，自成光芒#1.55um 1200万1.55μm f/1.6大光圈 色温传感器 RAW-HDR+2000万像素大像素尺寸', '高性能、高智能#麒麟970芯片\n人工智能芯片(NPU)', '你想要的, AI都帮你准备好了#麒麟970芯片\n人工智能芯片(NPU)', '华为');
INSERT INTO `goods` VALUES (11, 'HUAWEI P20  Pro', 0, 1, 12333, 0, 0, 1, 1, 1, '2018-04-12 00:00:00', '4000万徕卡三射*   AI摄影大师', '搭载麒麟970处理器+6GB内存，采用5.8英寸显示屏，分辨率2240x1080，后置徕卡双摄镜头，', NULL, 'HUAWEI_P20_Pro/goodsBatteryDesc.jpg#HUAWEI_P20_Pro/goodsCameraDesc.jpg#HUAWEI_P20_Pro/goodsCPUDesc.jpg#HUAWEI_P20_Pro/goodsPreCameraDesc.jpg#HUAWEI_P20_Pro/goodsScreenDesc.jpg#HUAWEI_P20_Pro/goodsSystemDesc.jpg#HUAWEI_P20_Pro/goodsTotalDesc.jpg', '4000完徕卡三射*       AI摄影大师  眼界大开', '全面屏，全面不平凡#5.8英寸全面屏', '惊艳外表下,其实很强悍#人工智能芯片，3400mAh电池', '随时随地,影棚级人像自拍#2400万像素 3D人像光效 智能美颜\n', '无惧暗色，自成光芒#4000万像素徕卡三摄 f/1.6大光圈 色温传感器 RAW-HDR', '高性能、高智能#麒麟970芯片\n人工智能芯片(NPU) ', '你想要的, AI都帮你准备好了#麒麟970芯片\n人工智能芯片(NPU)', '华为');
INSERT INTO `goods` VALUES (12, 'HUAWEI nova 3e', 0, 1, 12333, 0, 0, 1, 1, 1, '2018-04-12 00:00:00', 'HUAWEI nova 3e#\n高颜值爱自拍#5.8英寸新一代全面屏2400万自然美妆', '主打美颜自拍，该款手机的亮点是采用异形全面屏，配备2400万像素前置摄像头。', NULL, 'HUAWEI_nova_3e/goodsBatteryDesc.jpg#HUAWEI_nova_3e/goodsCameraDesc.jpg#HUAWEI_nova_3e/goodsCPUDesc.jpg#HUAWEI_nova_3e/goodsPreCameraDesc.jpg#HUAWEI_nova_3e/goodsScreenDesc.jpg#HUAWEI_nova_3e/goodsSystemDesc.jpg#HUAWEI_nova_3e/goodsTotalDesc.jpg', '高颜值爱自拍', '机身更小，视野更大#握在手心的流光溢彩', '出众性能，体验非凡#8V2A高压快充，15层安全防护', '前置2400万自然美妆#2400万前置摄像头，自然美妆', '后置1600万虚化双摄#1600万+2000万双摄，大光圈模式', '高性能、高智能#麒麟970芯片\n人工智能芯片(NPU) ', '你想要的, AI都帮你准备好了#麒麟970芯片\n人工智能芯片(NPU)', '华为');
INSERT INTO `goods` VALUES (13, '荣耀10 ', 0, 1, 12333, 0, 0, 1, 1, 1, '2018-04-20 00:00:00', '荣耀10#2400万AI摄影', '荣耀10，是荣耀手机推出的荣耀系列新机，背面采用了变色镀膜，正面采用双轴曲面玻璃设计，搭载麒麟970处理器，后置AI双摄。', NULL, '荣耀10/goodsBatteryDesc.jpg#荣耀10/goodsCameraDesc.jpg#荣耀10/goodsCPUDesc.jpg#荣耀10/goodsPreCameraDesc.jpg#荣耀10/goodsScreenDesc.jpg#荣耀10/goodsSystemDesc.jpg#荣耀10/goodsTotalDesc.jpg', '荣耀10 2400万AI摄影  会变色更潮美', '只手握住大视界#5.84英寸大屏，单手握持的小机身', '25分钟充50%电量#5V 4.5A超级快充#3400mAh电池\nHonor(典型值)SuperCharge快充', '自拍更清晰#前置2400万感光增强镜头', '拍出自然美#2400万AI自拍', '高性能、高智能#麒麟970芯片\n人工智能芯片(NPU)', '更美未来进化而来后#麒麟970 Al芯片+EMUI 8.1系统', '荣耀');
INSERT INTO `goods` VALUES (14, '荣耀Play', 0, 1, 12333, 0, 0, 1, 1, 1, '2018-04-25 00:00:00', '荣耀Play#很吓人的技术#购机享多重好礼', '荣耀首部搭载GPU Turbo的机型。荣耀Play搭载麒麟970，内置独立NPU神经网络单元，首发EMUI8.2智慧系统，基于安卓8.1。', NULL, '荣耀Play/goodsBatteryDesc.jpg#荣耀Play/goodsCameraDesc.jpg#荣耀Play/goodsCPUDesc.jpg#荣耀Play/goodsPreCameraDesc.jpg#荣耀Play/goodsScreenDesc.jpg#荣耀Play/goodsSystemDesc.jpg#荣耀Play/goodsTotalDesc.jpg', '荣耀play突破让快更快', '6.3英寸全面屏*大屏好手感#荣耀Play,搭载6.3英寸大视野全面屏', '容量3750mAh（典型值）#支持（快充9V/2A）数据线接口Type-C', '3D人像光效随身携带的摄影棚#荣耀Play的Al摄影算法', '1600万AI自拍清晰自然美#荣耀Play的1600万像素自拍镜头', '澎湃性能快上加快#轻松驾驭大型3D游戏', '荣耀Play#荣耀首款搭载GPU Turbo 的手机', '荣耀');
INSERT INTO `goods` VALUES (15, 'HUAWEI Mate 10?', 0, 1, 12333, 0, 0, 1, 1, 1, '2018-04-12 00:00:00', 'HUAWEI Mate 10 限时优惠200元', '采用10nm制程的麒麟970处理器和5.9英寸2K分辨率屏幕，预装基于Android 8.0的EMUI8.0操作系统。', NULL, 'HUAWEI_Mate_10/goodsBatteryDesc.jpg#HUAWEI_Mate_10/goodsCameraDesc.jpg#HUAWEI_Mate_10/goodsCPUDesc.jpg#HUAWEI_Mate_10/goodsPreCameraDesc.jpg#HUAWEI_Mate_10/goodsScreenDesc.jpg#HUAWEI_Mate_10/goodsSystemDesc.jpg#HUAWEI_Mate_10/goodsTotalDesc.jpg', 'HUAWEI Mate10系列 华为 徕卡\n联合设计 搭载人工智能芯片卓越性能;强劲续航', '灵感,造就器物之美#尊享臻品，源自设计师的匠心雕琢。', '体验畅快淋漓,续航从容有度#HUAWEI Mate 10基于AI的用户行为学习,带来更持久的流畅体验。', '是手机摄影,更是光和影的艺术#HUAWEI Mate 10搭载徕卡', '是手机摄影,更是光和影的艺术#HUAWEI Mate 10搭载徕卡', '懂你想不到的贴心#麒麟970芯片', '智与美的大成#EMUI8.0人工智能', '华为');
INSERT INTO `goods` VALUES (16, '荣耀V10', 0, 1, 12333, 0, 0, 1, 1, 1, '2018-04-17 00:00:00', '华为荣耀V10，享购机优惠', '荣耀V10  配备5.99英寸18：9全面屏，搭载麒麟970处理器，运行基于Android 8.0的EMUI 8.0系统。', NULL, '荣耀V10/goodsBatteryDesc.jpg#荣耀V10/goodsCameraDesc.jpg#荣耀V10/goodsCPUDesc.jpg#荣耀V10/goodsPreCameraDesc.jpg#荣耀V10/goodsScreenDesc.jpg#荣耀V10/goodsSystemDesc.jpg#荣耀V10/goodsTotalDesc.jpg', '  荣耀V10全面升级搭载GPU Turbo*1,人工智能NPU加上6GB大内存*2和EMUI8.0智慧系统', '5.99英寸全面屏#屏幕体验更纯粹', '一次充满电#一天用不完', '前置1300万AI人像模式#前置自拍AI人像模式，基于AI算法背景虚化更准确，人像更突出，自拍更美', '2000万AI变焦双摄#小白轻松拍出专业大片', '新一代的系统怪兽#这是速度和智慧的结合', '有AI更聪明#新的操作系统让你的手机更聪明', '荣耀');
INSERT INTO `goods` VALUES (17, '魅族15Plus', 0, 1, 12333, 0, 0, 1, 1, 1, '2018-04-12 00:00:00', '定制全面屏，人机交互体验', '15系列在延续魅族往代经典设计语言的同时，又更进一步。', NULL, '魅族15Plus/goodsBatteryDesc.jpg#魅族15Plus/goodsCameraDesc.jpg#魅族15Plus/goodsCPUDesc.jpg#魅族15Plus/goodsPreCameraDesc.jpg#魅族15Plus/goodsScreenDesc.jpg#魅族15Plus/goodsSystemDesc.jpg#魅族15Plus/goodsTotalDesc.jpg', '魅族 15 Plus\n定制全面屏，人机交互新体验', '一次经典的全面进化#设计与体验', '冲的快，用的持久#mycharge4.0闪充', '你的贴身美颜管家#前置2000万AI智能美颜', '2000万暗光双摄#最高三倍无损变焦', '优中选优，突破极限#Exynos8895', '更好的额操作系统#Flyme7', '魅族');
INSERT INTO `goods` VALUES (18, '魅族15', 0, 1, 12333, 0, 0, 1, 1, 1, '2018-04-04 09:00:00', '2000万暗光双摄，智能美颜', '15系列在延续魅族往代经典设计语言的同时，又更进一步。', NULL, '魅族15/goodsBatteryDesc.jpg#魅族15/goodsCameraDesc.jpg#魅族15/goodsCPUDesc.jpg#魅族15/goodsPreCameraDesc.jpg#魅族15/goodsScreenDesc.jpg#魅族15/goodsSystemDesc.jpg#魅族15/goodsTotalDesc.jpg', '魅族 15\n定制全面屏，人机交互新体验', '一次经典的全面进化#设计与体验', '冲的快，用的持久#mycharge4.0闪充', '你的贴身美颜管家#前置2000万AI智能美颜', '2000万暗光双摄#最高三倍无损变焦', '优中选优，突破极限#骁龙660', '更好的额操作系统#Flyme7', '魅族');
INSERT INTO `goods` VALUES (19, '魅族M15', 0, 1, 12333, 0, 0, 1, 1, 1, '2018-04-12 00:00:00', '支持人脸识别，抬腕即亮屏', 'M15采用了魅族15系列同样的设计语言，搭载了骁龙8核处理器', NULL, '魅族M15/goodsBatteryDesc.jpg#魅族M15/goodsCameraDesc.jpg#魅族M15/goodsCPUDesc.jpg#魅族M15/goodsPreCameraDesc.jpg#魅族M15/goodsScreenDesc.jpg#魅族M15/goodsSystemDesc.jpg#魅族M15/goodsTotalDesc.jpg', '魅族 15 青春版，支持人脸识别，抬腕即解锁', '更人性化的全面屏手机#设计', '冲的快，用的持久#mycharge闪充', '2000万AI只能美颜，没得与众不同#前置', '毫秒级对焦，更快更清晰#后置', '为全面屏而生#感触引擎', '运行更快，存储更多#Flyme7', '魅族');
INSERT INTO `goods` VALUES (20, '魅蓝E3', 0, 1, 12333, 0, 0, 1, 1, 1, '2018-04-22 00:00:00', '玩的畅快，拍的清晰', '魅蓝E3 ，是魅族科技于2018年3月21日在北京演艺中心发布的手机', NULL, '魅蓝E3/goodsBatteryDesc.jpg#魅蓝E3/goodsCameraDesc.jpg#魅蓝E3/goodsCPUDesc.jpg#魅蓝E3/goodsPreCameraDesc .jpg#魅蓝E3/goodsScreenDesc .jpg#魅蓝E3/goodsSystemDesc.jpg#魅蓝E3/goodsTotalDesc.jpg', '魅蓝E3 玩的畅快，拍的清晰', '5.99英寸全面屏#身临其境，只需一眼', 'cold Mcharge 20W快充#更快，却更凉', '给你2000万像素副摄#给你2.5倍无损变焦', '索尼IMX362#再次刷新自我', '性能，从不缺席#>>高通骁龙636移动平台', 'Super mBack 用体验说话#Flyme7', '');

-- ----------------------------
-- Table structure for goods_afterSale
-- ----------------------------
DROP TABLE IF EXISTS `goods_afterSale`;
CREATE TABLE `goods_afterSale`  (
  `afterSaleId` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` int(11) NULL DEFAULT NULL,
  `userId` int(11) NULL DEFAULT NULL,
  `goodsAttrId` int(11) NULL DEFAULT NULL,
  `postscript` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(2) NULL DEFAULT NULL,
  `num` int(4) NULL DEFAULT NULL,
  `reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `afterSaleType` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`afterSaleId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_afterSale
-- ----------------------------
INSERT INTO `goods_afterSale` VALUES (13, 4, 1, 1, '质量原因', 1, 1, '快递中屏幕损坏。', '退货');
INSERT INTO `goods_afterSale` VALUES (14, 4, 1, 1, '质量原因', 1, 1, '想换颜色', '退货');
INSERT INTO `goods_afterSale` VALUES (15, 4, 1, 1, '商品与描述不符', 1, 1, '无', '换货');
INSERT INTO `goods_afterSale` VALUES (16, 4, 1, 1, '无', 0, 1, '无', '退货');
INSERT INTO `goods_afterSale` VALUES (17, 27, 1, 104, '七天无理由退换', 0, 1, 'weq', '换货');

-- ----------------------------
-- Table structure for goods_attributes
-- ----------------------------
DROP TABLE IF EXISTS `goods_attributes`;
CREATE TABLE `goods_attributes`  (
  `goodsAttrId` int(11) NOT NULL AUTO_INCREMENT,
  `goodsId` int(11) NULL DEFAULT NULL,
  `goodsVersion` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `goodsNetType` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `goodsRom` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `goodsRam` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `goodsSize` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `goodsColor` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `goodsPrice` decimal(10, 2) NULL DEFAULT NULL,
  `goodsResRatio` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `goodsImage` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `goodsStock` int(10) NULL DEFAULT NULL,
  PRIMARY KEY (`goodsAttrId`) USING BTREE,
  INDEX `goodsId`(`goodsId`) USING BTREE,
  CONSTRAINT `goods_attributes_ibfk_1` FOREIGN KEY (`goodsId`) REFERENCES `goods` (`goodsId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 166 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_attributes
-- ----------------------------
INSERT INTO `goods_attributes` VALUES (1, 1, '全网通6G+64G', '支持移动/联通/电信 4G+/4G/3G/2G', '6G', '64G', '6.1英寸', '黑色', 2699.00, '2248 x 1080 FHD+', '小米8/黑色.jpg', 100);
INSERT INTO `goods_attributes` VALUES (2, 1, '全网通6G+64G', '支持移动/联通/电信 4G+/4G/3G/2G', '6G', '64G', '6.1英寸', '白色', 2699.00, '2248 x 1080 FHD+', '小米8/白色.jpg', 100);
INSERT INTO `goods_attributes` VALUES (3, 1, '全网通6G+64G', '支持移动/联通/电信 4G+/4G/3G/2G', '6G', '64G', '6.1英寸', '蓝色', 2699.00, '2248 x 1080 FHD+', '小米8/蓝色.jpg', 100);
INSERT INTO `goods_attributes` VALUES (4, 1, '全网通6G+128G', '支持移动/联通/电信 4G+/4G/3G/2G', '6G', '128G', '6.1英寸', '黑色', 2999.00, '2248 x 1080 FHD+', '小米8/黑色.jpg', 100);
INSERT INTO `goods_attributes` VALUES (5, 1, '全网通6G+128G', '支持移动/联通/电信 4G+/4G/3G/2G', '128G', '128G', '6.1英寸', '白色', 2999.00, '2248 x 1080 FHD+', '小米8/白色.jpg', 100);
INSERT INTO `goods_attributes` VALUES (6, 1, '全网通6G+128G', '支持移动/联通/电信 4G+/4G/3G/2G', '6G', '128G', '6.1英寸', '蓝色', 2999.00, '2248 x 1080 FHD+', '小米8/蓝色.jpg', 100);
INSERT INTO `goods_attributes` VALUES (7, 1, '全网通6G+256G', '支持移动/联通/电信 4G+/4G/3G/2G', '6G', '256G', '6.1英寸', '黑色', 3299.00, '2248 x 1080 FHD+', '小米8/黑色.jpg', 100);
INSERT INTO `goods_attributes` VALUES (8, 1, '全网通6G+256G', '支持移动/联通/电信 4G+/4G/3G/2G', '6G', '256G', '6.1英寸', '白色', 3299.00, '2248 x 1080 FHD+', '小米8/白色.jpg', 100);
INSERT INTO `goods_attributes` VALUES (9, 1, '全网通6G+256G', '支持移动/联通/电信 4G+/4G/3G/2G', '6G', '256G', '6.1英寸', '蓝色', 3299.00, '2248 x 1080 FHD+', '小米8/蓝色.jpg', 100);
INSERT INTO `goods_attributes` VALUES (10, 2, '全网通3G+32G', '支持移动/联通/电信 4G+/4G/3G/2G', '3G', '32G', '5.8英寸', '魔力蓝', 1500.00, '2244*1080像素', '小米Note5/魔力蓝.jpg', 100);
INSERT INTO `goods_attributes` VALUES (11, 2, '全网通4G+64G', '支持移动/联通/电信 4G+/4G/3G/2G', '4G', '64G', '5.8英寸', '玫瑰金', 1500.00, '2244*1080像素', '小米Note5/玫瑰金.jpg', 100);
INSERT INTO `goods_attributes` VALUES (12, 2, '全网通4G+64G', '支持移动/联通/电信 4G+/4G/3G/2G', '4G', '64G', '5.8英寸', '金色', 1500.00, '2244*1080像素', '小米Note5/金色.jpg', 100);
INSERT INTO `goods_attributes` VALUES (13, 2, '全网通6G+64G', '支持移动/联通/电信 4G+/4G/3G/2G', '6G', '64G', '5.8英寸', '黑色', 1500.00, '2244*1080像素', '小米Note5/黑色.jpg', 100);
INSERT INTO `goods_attributes` VALUES (14, 2, '全网通6G+64G', '支持移动/联通/电信 4G+/4G/3G/2G', '6G', '64G', '5.8英寸', '黑色', 1500.00, '2244*1080像素', '小米Note5/黑色.jpg', 100);
INSERT INTO `goods_attributes` VALUES (15, 3, '全网通4G+32G', '支持移动/联通/电信 4G+/4G/3G/2G', '4G', '32G', '5.46英寸', '流沙金', 1399.00, '1920*1080', '小米6X/流沙金.jpg', 100);
INSERT INTO `goods_attributes` VALUES (16, 3, '全网通4G+64G', '支持移动/联通/电信 4G+/4G/3G/2G', '4G', '64G', '5.46英寸', '曜石黑', 1599.00, '1920*1080', '小米6X/曜石黑.jpg', 100);
INSERT INTO `goods_attributes` VALUES (17, 3, '全网通6G+64G', '支持移动/联通/电信 4G+/4G/3G/2G', '6G', '64G', '5.46英寸', '赤艳红', 1799.00, '1920*1080', '小米6X/冰川蓝.jpg', 100);
INSERT INTO `goods_attributes` VALUES (18, 3, '全网通6G+128G', '支持移动/联通/电信 4G+/4G/3G/2G', '6G', '128G', '5.46英寸', '冰川蓝', 1999.00, '1920*1080', '小米6X/流沙金.jpg', 100);
INSERT INTO `goods_attributes` VALUES (19, 3, '全网通6G+64G', '支持移动/联通/电信 4G+/4G/3G/2G', '6G', '64G', '5.46英寸', '曜石黑', 1799.00, '1920*1080', '小米6X/曜石黑.jpg', 100);
INSERT INTO `goods_attributes` VALUES (20, 3, '全网通4G+64G', '支持移动/联通/电信 4G+/4G/3G/2G', '4G', '64G', '5.46英寸', '冰川蓝', 1599.00, '1920*1080', '小米6X/冰川蓝.jpg', 100);
INSERT INTO `goods_attributes` VALUES (21, 4, '全网通4G+32G', '支持移动/联通/电信 4G+/4G/3G/2G', '4G', '32G', '5.8英寸', '香槟金', 1398.00, '1920*1080', 'vivoY85/流沙金.jpg', 100);
INSERT INTO `goods_attributes` VALUES (22, 4, '全网通4G+32G', '支持移动/联通/电信 4G+/4G/3G/2G', '4G', '32G', '5.8英寸', '黑色', 1398.00, '1920*1080', 'vivoY85/黑色.jpg', 100);
INSERT INTO `goods_attributes` VALUES (23, 4, '全网通4G+32G', '支持移动/联通/电信 4G+/4G/3G/2G', '4G', '32G', '5.8英寸', '红色', 1398.00, '1920*1080', 'vivoY85/红色.jpg', 100);
INSERT INTO `goods_attributes` VALUES (24, 4, '全网通4G+64G', '支持移动/联通/电信 4G+/4G/3G/2G', '4G', '64G', '5.8英寸', '香槟金', 1598.00, '1920*1080', 'vivoY85/流沙金.jpg', 100);
INSERT INTO `goods_attributes` VALUES (25, 4, '全网通4G+64G', '支持移动/联通/电信 4G+/4G/3G/2G', '4G', '64G', '5.8英寸', '黑色', 1598.00, '1920*1080', 'vivoY85/黑色.jpg', 100);
INSERT INTO `goods_attributes` VALUES (26, 4, '全网通4G+64G', '支持移动/联通/电信 4G+/4G/3G/2G', '4G', '64G', '5.8英寸', '红色', 1598.00, '1920*1080', 'vivoY85/红色.jpg', 100);
INSERT INTO `goods_attributes` VALUES (27, 5, '全网通4G+64G', '支持移动/联通/电信 4G+/4G/3G/2G', '4G', '64G', '6.1英寸', '玫瑰金', 2598.00, '2240*1081像素', 'vivoX20/玫瑰金.jpg', 100);
INSERT INTO `goods_attributes` VALUES (28, 5, '全网通4G+64G', '支持移动/联通/电信 4G+/4G/3G/2G', '4G', '64G', '6.1英寸', '磨砂黑', 2598.00, '2240*1081像素', 'vivoX20/磨砂黑.jpg', 100);
INSERT INTO `goods_attributes` VALUES (29, 5, '全网通4G+64G', '支持移动/联通/电信 4G+/4G/3G/2G', '4G', '64G', '6.1英寸', 'vivo蓝', 2598.00, '2240*1081像素', 'vivoX20/vivo蓝.jpg', 100);
INSERT INTO `goods_attributes` VALUES (30, 5, '全网通6G+64G', '支持移动/联通/电信 4G+/4G/3G/2G', '6G', '64G', '6.1英寸', '星耀红', 2998.00, '2240*1081像素', 'vivoX20/vivo蓝.jpg', 100);
INSERT INTO `goods_attributes` VALUES (31, 5, '全网通6G+64G', '支持移动/联通/电信 4G+/4G/3G/2G', '6G', '64G', '6.1英寸', '玫瑰金', 2998.00, '2240*1081像素', 'vivoX20/玫瑰金.jpg', 100);
INSERT INTO `goods_attributes` VALUES (32, 5, '全网通6G+64G', '支持移动/联通/电信 4G+/4G/3G/2G', '6G', '64G', '6.1英寸', '磨砂黑', 2998.00, '2240*1081像素', 'vivoX20/磨砂黑.jpg', 100);
INSERT INTO `goods_attributes` VALUES (33, 6, '全网通6G+128G', '支持移动/联通/电信 4G+/4G/3G/2G', '6G', '128G', '6.28英寸', '宝石红', 3898.00, '2240*1085像素', 'vivoNEX旗舰版/宝石红.jpg', 100);
INSERT INTO `goods_attributes` VALUES (34, 6, '全网通6G+128G', '支持移动/联通/电信 4G+/4G/3G/2G', '6G', '128G', '6.28英寸', '钻石黑', 3898.00, '2240*1085像素', 'vivoNEX旗舰版/钻石黑.jpg', 100);
INSERT INTO `goods_attributes` VALUES (35, 6, '全网通8G+128G', '支持移动/联通/电信 4G+/4G/3G/2G', '8G', '128G', '6.28英寸', '宝石红', 4498.00, '2240*1085像素', 'vivoNEX旗舰版/宝石红.jpg', 100);
INSERT INTO `goods_attributes` VALUES (36, 6, '全网通8G+128G', '支持移动/联通/电信 4G+/4G/3G/2G', '8G', '128G', '6.28英寸', '钻石黑', 4498.00, '2240*1085像素', 'vivoNEX旗舰版/钻石黑.jpg', 100);
INSERT INTO `goods_attributes` VALUES (37, 6, '全网通6G+256G', '支持移动/联通/电信 4G+/4G/3G/2G', '8G', '256G', '6.28英寸', '宝石红', 4998.00, '2240*1085像素', 'vivoNEX旗舰版/宝石红.jpg', 100);
INSERT INTO `goods_attributes` VALUES (38, 6, '全网通6G+256G', '支持移动/联通/电信 4G+/4G/3G/2G', '8G', '256G', '6.28英寸', '钻石黑', 4998.00, '2240*1085像素', 'vivoNEX旗舰版/钻石黑.jpg', 100);
INSERT INTO `goods_attributes` VALUES (39, 7, '全网通4G+128G', '支持移动/联通/电信 4G+/4G/3G/2G', '4G', '128G', '6.28英寸', '星空紫', 2999.00, 'FHD+ 2280x1080 像素', 'oppoR15/星空紫.jpg', 100);
INSERT INTO `goods_attributes` VALUES (40, 7, '全网通4G+128G', '支持移动/联通/电信 4G+/4G/3G/2G', '4G', '128G', '6.28英寸', '陶瓷黑', 3499.00, 'FHD+ 2280x1080 像素', 'oppoR15/陶瓷黑.jpg', 100);
INSERT INTO `goods_attributes` VALUES (41, 7, '全网通4G+128G', '支持移动/联通/电信 4G+/4G/3G/2G', '4G', '128G', '6.28英寸', '雪盈白', 2699.00, 'FHD+ 2280x1080 像素', 'oppoR15/雪盈白.jpg', 100);
INSERT INTO `goods_attributes` VALUES (42, 7, '全网通4G+128G', '支持移动/联通/电信 4G+/4G/3G/2G', '4G', '128G', '6.28英寸', '梦境红', 3299.00, 'FHD+ 2280x1080 像素', 'oppoR15/梦境红.jpg', 100);
INSERT INTO `goods_attributes` VALUES (43, 7, '全网通6G+128G', '支持移动/联通/电信 4G+/4G/3G/2G', '6G', '128G', '6.28英寸', '星空紫', 2999.00, 'FHD+ 2280x1080 像素', 'oppoR15/星空紫.jpg', 100);
INSERT INTO `goods_attributes` VALUES (44, 7, '全网通6G+128G', '支持移动/联通/电信 4G+/4G/3G/2G', '6G', '128G', '6.28英寸', '陶瓷黑', 3499.00, 'FHD+ 2280x1080 像素', 'oppoR15/陶瓷黑.jpg', 100);
INSERT INTO `goods_attributes` VALUES (45, 7, '全网通6G+128G', '支持移动/联通/电信 4G+/4G/3G/2G', '6G', '128G', '6.28英寸', '雪盈白', 2699.00, 'FHD+ 2280x1080 像素', 'oppoR15/雪盈白.jpg', 100);
INSERT INTO `goods_attributes` VALUES (46, 7, '全网通6G+128G', '支持移动/联通/电信 4G+/4G/3G/2G', '6G', '128G', '6.28英寸', '梦境红', 3299.00, 'FHD+ 2280x1080 像素', 'oppoR15/梦境红.jpg', 100);
INSERT INTO `goods_attributes` VALUES (47, 8, '全网通4G+64G', '支持移动/联通/电信 4G+/4G/3G/2G', '4G', '64G', '6.01英寸', '黑色', 3299.00, '2240*1085像素', 'oppoR11s/黑色.jpg', 100);
INSERT INTO `goods_attributes` VALUES (48, 8, '全网通4G+64G', '支持移动/联通/电信 4G+/4G/3G/2G', '4G', '64G', '6.01英寸', '香槟色', 2599.00, '2240*1085像素', 'oppoR11s/香槟色.jpg', 100);
INSERT INTO `goods_attributes` VALUES (49, 8, '全网通4G+64G', '支持移动/联通/电信 4G+/4G/3G/2G', '4G', '64G', '6.01英寸', '红色', 2799.00, '2240*1085像素', 'oppoR11s/红色.jpg', 100);
INSERT INTO `goods_attributes` VALUES (50, 8, '全网通6G+128G', '支持移动/联通/电信 4G+/4G/3G/2G', '6G', '128G', '6.01英寸', '黑色', 3299.00, '2240*1085像素', 'oppoR11s/黑色.jpg', 100);
INSERT INTO `goods_attributes` VALUES (51, 8, '全网通6G+128G', '支持移动/联通/电信 4G+/4G/3G/2G', '6G', '128G', '6.01英寸', '香槟色', 2599.00, '2240*1085像素', 'oppoR11s/香槟色.jpg', 100);
INSERT INTO `goods_attributes` VALUES (52, 8, '全网通6G+128G', '支持移动/联通/电信 4G+/4G/3G/2G', '6G', '128G', '6.01英寸', '红色', 2799.00, '2240*1085像素', 'oppoR11s/红色.jpg', 100);
INSERT INTO `goods_attributes` VALUES (53, 9, '全网通4G+64G', '支持移动/联通/电信 4G+/4G/3G/2G', '4G', '64G', '6.2英寸', '石榴红', 1999.00, '1920*1080', 'oppoA3/石榴红.jpg', 100);
INSERT INTO `goods_attributes` VALUES (54, 9, '全网通4G+64G', '支持移动/联通/电信 4G+/4G/3G/2G', '4G', '64G', '6.2英寸', '骑士黑', 1999.00, '1920*1080', 'oppoA3/骑士黑.jpg', 100);
INSERT INTO `goods_attributes` VALUES (55, 9, '全网通4G+64G', '支持移动/联通/电信 4G+/4G/3G/2G', '4G', '64G', '6.2英寸', '星尘银', 1999.00, '1920*1080', 'oppoA3/星尘银.jpg', 100);
INSERT INTO `goods_attributes` VALUES (56, 9, '全网通4G+64G', '支持移动/联通/电信 4G+/4G/3G/2G', '4G', '64G', '6.2英寸', '豆蔻粉', 1699.00, '1920*1080', 'oppoA3/豆蔻粉.jpg', 100);
INSERT INTO `goods_attributes` VALUES (57, 9, '全网通4G+128G', '支持移动/联通/电信 4G+/4G/3G/2G', '4G', '128G', '6.2英寸', '石榴红', 1999.00, '1920*1080', 'oppoA3/石榴红.jpg', 100);
INSERT INTO `goods_attributes` VALUES (58, 9, '全网通4G+128G', '支持移动/联通/电信 4G+/4G/3G/2G', '4G', '128G', '6.2英寸', '骑士黑', 1999.00, '1920*1080', 'oppoA3/骑士黑.jpg', 100);
INSERT INTO `goods_attributes` VALUES (59, 9, '全网通4G+128G', '支持移动/联通/电信 4G+/4G/3G/2G', '4G', '128G', '6.2英寸', '星尘银', 1999.00, '1920*1080', 'oppoA3/星尘银.jpg', 100);
INSERT INTO `goods_attributes` VALUES (60, 9, '全网通4G+128G', '支持移动/联通/电信 4G+/4G/3G/2G', '4G', '128G', '6.2英寸', '豆蔻粉', 1699.00, '1920*1080', 'oppoA3/豆蔻粉.jpg', 100);
INSERT INTO `goods_attributes` VALUES (61, 10, '全网通6G+64G', '支持移动/联通/电信 4G+/4G/3G/2G', '6G', '64G', '5.8英寸', '亮黑色', 3788.00, '2244*1080像素', 'HUAWEI_P20/亮黑色.jpg', 100);
INSERT INTO `goods_attributes` VALUES (62, 10, '全网通6G+64G', '支持移动/联通/电信 4G+/4G/3G/2G', '6G', '64G', '5.8英寸', '宝石蓝', 3788.00, '2244*1080像素', 'HUAWEI_P20/宝石蓝.jpg', 100);
INSERT INTO `goods_attributes` VALUES (63, 10, '全网通6G+64G', '支持移动/联通/电信 4G+/4G/3G/2G', '6G', '64G', '5.8英寸', '樱粉金', 3788.00, '2244*1080像素', 'HUAWEI_P20/樱粉金.jpg', 100);
INSERT INTO `goods_attributes` VALUES (64, 10, '全网通6G+64G', '支持移动/联通/电信 4G+/4G/3G/2G', '6G', '64G', '5.8英寸', '极光色', 3788.00, '2244*1080像素', 'HUAWEI_P20/极光色.jpg', 100);
INSERT INTO `goods_attributes` VALUES (65, 10, '全网通6G+128G', '支持移动/联通/电信 4G+/4G/3G/2G', '6G', '128G', '5.8英寸', '亮黑色', 4288.00, '2244*1081像素', 'HUAWEI_P20/亮黑色.jpg', 100);
INSERT INTO `goods_attributes` VALUES (66, 10, '全网通6G+128G', '支持移动/联通/电信 4G+/4G/3G/2G', '6G', '128G', '5.8英寸', '宝石蓝', 4288.00, '2244*1082像素', 'HUAWEI_P20/宝石蓝.jpg', 100);
INSERT INTO `goods_attributes` VALUES (67, 10, '全网通6G+128G', '支持移动/联通/电信 4G+/4G/3G/2G', '6G', '128G', '5.8英寸', '樱粉金', 4288.00, '2244*1083像素', 'HUAWEI_P20/樱粉金.jpg', 100);
INSERT INTO `goods_attributes` VALUES (68, 10, '全网通6G+128G', '支持移动/联通/电信 4G+/4G/3G/2G', '6G', '128G', '5.8英寸', '极光色', 4288.00, '2244*1084像素', 'HUAWEI_P20/极光色.jpg', 100);
INSERT INTO `goods_attributes` VALUES (69, 11, '全网通6G+64G', '支持移动/联通/电信 4G+/4G/3G/2G', '6G', '64G', '6.1英寸', '亮黑色', 4988.00, '2240*1080像素', 'HUAWEI_P20/亮黑色.jpg', 100);
INSERT INTO `goods_attributes` VALUES (70, 11, '全网通6G+64G', '支持移动/联通/电信 4G+/4G/3G/2G', '6G', '64G', '6.1英寸', '宝石蓝', 4988.00, '2240*1081像素', 'HUAWEI_P20/宝石蓝.jpg', 100);
INSERT INTO `goods_attributes` VALUES (71, 11, '全网通6G+64G', '支持移动/联通/电信 4G+/4G/3G/2G', '6G', '64G', '6.1英寸', '樱粉金', 4988.00, '2240*1082像素', 'HUAWEI_P20/樱粉金.jpg', 100);
INSERT INTO `goods_attributes` VALUES (72, 11, '全网通6G+64G', '支持移动/联通/电信 4G+/4G/3G/2G', '6G', '64G', '6.1英寸', '极光色', 4988.00, '2240*1083像素', 'HUAWEI_P20/极光色.jpg', 100);
INSERT INTO `goods_attributes` VALUES (73, 11, '全网通6G+128G', '支持移动/联通/电信 4G+/4G/3G/2G', '6G', '128G', '6.1英寸', '亮黑色', 5488.00, '2240*1084像素', 'HUAWEI_P20/亮黑色.jpg', 100);
INSERT INTO `goods_attributes` VALUES (74, 11, '全网通6G+128G', '支持移动/联通/电信 4G+/4G/3G/2G', '6G', '128G', '6.1英寸', '宝石蓝', 5488.00, '2240*1085像素', 'HUAWEI_P20/宝石蓝.jpg', 100);
INSERT INTO `goods_attributes` VALUES (75, 11, '全网通6G+128G', '支持移动/联通/电信 4G+/4G/3G/2G', '6G', '128G', '6.1英寸', '樱粉金', 5488.00, '2240*1086像素', 'HUAWEI_P20/樱粉金.jpg', 100);
INSERT INTO `goods_attributes` VALUES (76, 11, '全网通6G+128G', '支持移动/联通/电信 4G+/4G/3G/2G', '6G', '128G', '6.1英寸', '极光色', 5488.00, '2240*1087像素', 'HUAWEI_P20/极光色.jpg', 100);
INSERT INTO `goods_attributes` VALUES (77, 11, '全网通6G+256G', '支持移动/联通/电信 4G+/4G/3G/2G', '6G', '256G', '6.1英寸', '亮黑色', 6288.00, '2240*1088像素', 'HUAWEI_P20/亮黑色.jpg', 100);
INSERT INTO `goods_attributes` VALUES (78, 11, '全网通6G+256G', '支持移动/联通/电信 4G+/4G/3G/2G', '6G', '256G', '6.1英寸', '宝石蓝', 6288.00, '2240*1089像素', 'HUAWEI_P20/宝石蓝.jpg', 100);
INSERT INTO `goods_attributes` VALUES (79, 11, '全网通6G+256G', '支持移动/联通/电信 4G+/4G/3G/2G', '6G', '256G', '6.1英寸', '樱粉金', 6288.00, '2240*1090像素', 'HUAWEI_P20/樱粉金.jpg', 100);
INSERT INTO `goods_attributes` VALUES (80, 11, '全网通6G+256G', '支持移动/联通/电信 4G+/4G/3G/2G', '6G', '256G', '6.1英寸', '极光色', 6288.00, '2240*1091像素', 'HUAWEI_P20/极光色.jpg', 100);
INSERT INTO `goods_attributes` VALUES (81, 12, '全网通4G+64G', '支持移动/联通/电信 4G+/4G/3G/2G', '4G', '64G', '5.84英寸', '幻夜黑', 1999.00, 'FHD+ 2280x1080 像素', 'HUAWEI_nova_3e/幻夜黑.jpg', 100);
INSERT INTO `goods_attributes` VALUES (82, 12, '全网通4G+64G', '支持移动/联通/电信 4G+/4G/3G/2G', '4G', '64G', '5.84英寸', '克莱因蓝', 1999.00, 'FHD+ 2280x1080 像素', 'HUAWEI_nova_3e/克莱因蓝.jpg', 100);
INSERT INTO `goods_attributes` VALUES (83, 12, '全网通4G+64G', '支持移动/联通/电信 4G+/4G/3G/2G', '4G', '64G', '5.84英寸', '樱语粉', 1999.00, 'FHD+ 2280x1080 像素', 'HUAWEI_nova_3e/樱语粉.jpg', 100);
INSERT INTO `goods_attributes` VALUES (84, 12, '全网通4G+64G', '支持移动/联通/电信 4G+/4G/3G/2G', '4G', '64G', '5.84英寸', '铂光金', 1999.00, 'FHD+ 2280x1080 像素', 'HUAWEI_nova_3e/铂光金.jpg', 100);
INSERT INTO `goods_attributes` VALUES (85, 12, '全网通4G+128G', '支持移动/联通/电信 4G+/4G/3G/2G', '4G', '128G', '5.84英寸', '幻夜黑', 2199.00, 'FHD+ 2280x1080 像素', 'HUAWEI_nova_3e/幻夜黑.jpg', 100);
INSERT INTO `goods_attributes` VALUES (86, 12, '全网通4G+129G', '支持移动/联通/电信 4G+/4G/3G/2G', '4G', '128G', '5.84英寸', '克莱因蓝', 2199.00, 'FHD+ 2280x1080 像素', 'HUAWEI_nova_3e/克莱因蓝.jpg', 100);
INSERT INTO `goods_attributes` VALUES (87, 12, '全网通4G+130G', '支持移动/联通/电信 4G+/4G/3G/2G', '4G', '128G', '5.84英寸', '樱语粉', 2199.00, 'FHD+ 2280x1080 像素', 'HUAWEI_nova_3e/樱语粉.jpg', 100);
INSERT INTO `goods_attributes` VALUES (88, 12, '全网通4G+131G', '支持移动/联通/电信 4G+/4G/3G/2G', '4G', '128G', '5.84英寸', '铂光金', 2199.00, 'FHD+ 2280x1080 像素', 'HUAWEI_nova_3e/铂光金.jpg', 100);
INSERT INTO `goods_attributes` VALUES (89, 13, '全网通6G+64G', '支持移动/联通/电信 4G+/4G/3G/2G', '6G', '64G', '5.84英寸', '幻影紫', 2599.00, '2280 x 1080 像素', '荣耀10/幻影紫.jpg', 100);
INSERT INTO `goods_attributes` VALUES (90, 13, '全网通6G+64G', '支持移动/联通/电信 4G+/4G/3G/2G', '6G', '64G', '5.84英寸', '幻影蓝', 2599.00, '2280 x 1080 像素', '荣耀10/幻影蓝.jpg', 100);
INSERT INTO `goods_attributes` VALUES (91, 13, '全网通6G+64G', '支持移动/联通/电信 4G+/4G/3G/2G', '6G', '64G', '5.84英寸', '幻夜黑', 2599.00, '2280 x 1080 像素', '荣耀10/幻夜黑.jpg', 100);
INSERT INTO `goods_attributes` VALUES (92, 13, '全网通6G+64G', '支持移动/联通/电信 4G+/4G/3G/2G', '6G', '64G', '5.84英寸', '海鸥灰', 2599.00, '2280 x 1080 像素', '荣耀10/海鸥灰.jpg', 100);
INSERT INTO `goods_attributes` VALUES (93, 13, '全网通6G+128G', '支持移动/联通/电信 4G+/4G/3G/2G', '6G', '128G', '5.84英寸', '幻影紫', 2999.00, '2280 x 1080 像素', '荣耀10/幻影紫.jpg', 100);
INSERT INTO `goods_attributes` VALUES (94, 13, '全网通6G+128G', '支持移动/联通/电信 4G+/4G/3G/2G', '6G', '128G', '5.84英寸', '幻影蓝', 2999.00, '2280 x 1080 像素', '荣耀10/幻影蓝.jpg', 100);
INSERT INTO `goods_attributes` VALUES (95, 13, '全网通6G+128G', '支持移动/联通/电信 4G+/4G/3G/2G', '6G', '128G', '5.84英寸', '幻夜黑', 2999.00, '2280 x 1080 像素', '荣耀10/幻夜黑.jpg', 100);
INSERT INTO `goods_attributes` VALUES (96, 13, '全网通6G+128G', '支持移动/联通/电信 4G+/4G/3G/2G', '6G', '128G', '5.84英寸', '海鸥灰', 2999.00, '2280 x 1080 像素', '荣耀10/海鸥灰.jpg', 100);
INSERT INTO `goods_attributes` VALUES (97, 14, '全网通4G+64G', '支持移动/联通/电信 4G+/4G/3G/2G', '4G', '64G', '6.3英寸', '幻夜黑', 1999.00, '2340 x 1080 像素', '荣耀Play/幻夜黑.jpg', 100);
INSERT INTO `goods_attributes` VALUES (98, 14, '全网通4G+64G', '支持移动/联通/电信 4G+/4G/3G/2G', '4G', '64G', '6.3英寸', '极光蓝', 1999.00, '2340 x 1080 像素', '荣耀Play/极光蓝.jpg', 100);
INSERT INTO `goods_attributes` VALUES (99, 14, '全网通4G+64G', '支持移动/联通/电信 4G+/4G/3G/2G', '4G', '64G', '6.3英寸', '星云紫', 1999.00, '2340 x 1080 像素', '荣耀Play/星云紫.jpg', 100);
INSERT INTO `goods_attributes` VALUES (100, 14, '全网通6G+64G', '支持移动/联通/电信 4G+/4G/3G/2G', '6G', '64G', '6.3英寸', '幻夜黑', 2399.00, '2340 x 1080 像素', '荣耀Play/幻夜黑.jpg', 100);
INSERT INTO `goods_attributes` VALUES (101, 14, '全网通6G+64G', '支持移动/联通/电信 4G+/4G/3G/2G', '6G', '64G', '6.3英寸', '极光蓝', 2399.00, '2340 x 1080 像素', '荣耀Play/极光蓝.jpg', 100);
INSERT INTO `goods_attributes` VALUES (102, 14, '全网通6G+64G', '支持移动/联通/电信 4G+/4G/3G/2G', '6G', '64G', '6.3英寸', '星云紫', 2399.00, '2340 x 1080 像素', '荣耀Play/星云紫.jpg', 100);
INSERT INTO `goods_attributes` VALUES (103, 15, '全网通4G+64G', '支持移动/联通/电信 4G+/4G/3G/2G', '4G', '64G', '5.9英寸', '香槟金', 3399.00, '2560*1440像素', 'HUAWEI_Mate_10/香槟金.jpg', 100);
INSERT INTO `goods_attributes` VALUES (104, 15, '全网通4G+64G', '支持移动/联通/电信 4G+/4G/3G/2G', '4G', '64G', '5.9英寸', '摩卡金', 3399.00, '2560*1440像素', 'HUAWEI_Mate_10/摩卡金.jpg', 100);
INSERT INTO `goods_attributes` VALUES (105, 15, '全网通4G+64G', '支持移动/联通/电信 4G+/4G/3G/2G', '4G', '64G', '5.9英寸', '亮黑色', 3399.00, '2560*1440像素', 'HUAWEI_Mate_10/亮黑色.jpg', 100);
INSERT INTO `goods_attributes` VALUES (106, 15, '全网通4G+64G', '支持移动/联通/电信 4G+/4G/3G/2G', '4G', '64G', '5.9英寸', '樱粉金', 3399.00, '2560*1440像素', 'HUAWEI_Mate_10/樱粉金.jpg', 100);
INSERT INTO `goods_attributes` VALUES (107, 15, '全网通6G+128G', '支持移动/联通/电信 4G+/4G/3G/2G', '6G', '128G', '5.9英寸', '香槟金', 3999.00, '2560*1440像素', 'HUAWEI_Mate_10/香槟金.jpg', 100);
INSERT INTO `goods_attributes` VALUES (108, 15, '全网通6G+128G', '支持移动/联通/电信 4G+/4G/3G/2G', '6G', '128G', '5.9英寸', '摩卡金', 3999.00, '2560*1440像素', 'HUAWEI_Mate_10/摩卡金.jpg', 100);
INSERT INTO `goods_attributes` VALUES (109, 15, '全网通6G+128G', '支持移动/联通/电信 4G+/4G/3G/2G', '6G', '128G', '5.9英寸', '亮黑色', 3999.00, '2560*1440像素', 'HUAWEI_Mate_10/亮黑色.jpg', 100);
INSERT INTO `goods_attributes` VALUES (110, 15, '全网通6G+128G', '支持移动/联通/电信 4G+/4G/3G/2G', '6G', '128G', '5.9英寸', '樱粉金', 3999.00, '2560*1440像素', 'HUAWEI_Mate_10/樱粉金.jpg', 100);
INSERT INTO `goods_attributes` VALUES (111, 16, '全网通4G+64G', '支持移动/联通/电信 4G+/4G/3G/2G', '4G', '64G', '5.99英寸', '沙滩金', 2299.00, 'FHD+ 1080x2160 像素', '荣耀V10/沙滩金.jpg', 100);
INSERT INTO `goods_attributes` VALUES (112, 16, '全网通4G+64G', '支持移动/联通/电信 4G+/4G/3G/2G', '4G', '64G', '5.99英寸', '极光蓝', 2299.00, 'FHD+ 1080x2160 像素', '荣耀V10/极光蓝.jpg', 100);
INSERT INTO `goods_attributes` VALUES (113, 16, '全网通4G+64G', '支持移动/联通/电信 4G+/4G/3G/2G', '4G', '64G', '5.99英寸', '幻夜黑', 2299.00, 'FHD+ 1080x2160 像素', '荣耀V10/幻夜黑.jpg', 100);
INSERT INTO `goods_attributes` VALUES (114, 16, '全网通4G+64G', '支持移动/联通/电信 4G+/4G/3G/2G', '4G', '64G', '5.99英寸', '魅力红', 2299.00, 'FHD+ 1080x2160 像素', '荣耀V10/魅力红.jpg', 100);
INSERT INTO `goods_attributes` VALUES (115, 16, '全网通6G+64G', '支持移动/联通/电信 4G+/4G/3G/2G', '6G', '64G', '5.99英寸', '沙滩金', 2799.00, 'FHD+ 1080x2160 像素', '荣耀V10/沙滩金.jpg', 100);
INSERT INTO `goods_attributes` VALUES (116, 16, '全网通6G+64G', '支持移动/联通/电信 4G+/4G/3G/2G', '6G', '64G', '5.99英寸', '极光蓝', 2799.00, 'FHD+ 1080x2160 像素', '荣耀V10/极光蓝.jpg', 100);
INSERT INTO `goods_attributes` VALUES (117, 16, '全网通6G+64G', '支持移动/联通/电信 4G+/4G/3G/2G', '6G', '64G', '5.99英寸', '幻夜黑', 2799.00, 'FHD+ 1080x2160 像素', '荣耀V10/幻夜黑.jpg', 100);
INSERT INTO `goods_attributes` VALUES (118, 16, '全网通6G+64G', '支持移动/联通/电信 4G+/4G/3G/2G', '6G', '64G', '5.99英寸', '魅力红', 2799.00, 'FHD+ 1080x2160 像素', '荣耀V10/魅力红.jpg', 100);
INSERT INTO `goods_attributes` VALUES (119, 16, '全网通6G+128G', '支持移动/联通/电信 4G+/4G/3G/2G', '6G', '128G', '5.99英寸', '沙滩金', 3299.00, 'FHD+ 1080x2160 像素', '荣耀V10/沙滩金.jpg', 100);
INSERT INTO `goods_attributes` VALUES (120, 16, '全网通6G+128G', '支持移动/联通/电信 4G+/4G/3G/2G', '6G', '128G', '5.99英寸', '极光蓝', 3299.00, 'FHD+ 1080x2160 像素', '荣耀V10/极光蓝.jpg', 100);
INSERT INTO `goods_attributes` VALUES (121, 16, '全网通6G+128G', '支持移动/联通/电信 4G+/4G/3G/2G', '6G', '128G', '5.99英寸', '幻夜黑', 3299.00, 'FHD+ 1080x2160 像素', '荣耀V10/幻夜黑.jpg', 100);
INSERT INTO `goods_attributes` VALUES (122, 16, '全网通6G+128G', '支持移动/联通/电信 4G+/4G/3G/2G', '6G', '128G', '5.99英寸', '魅力红', 3299.00, 'FHD+ 1080x2160 像素', '荣耀V10/魅力红.jpg', 100);
INSERT INTO `goods_attributes` VALUES (123, 17, '全网通6G+64G', '支持移动/联通/电信 4G+/4G/3G/2G', '6G', '64G', '5.95英寸', '玄武灰', 3299.00, '1920*1080', '魅族15Plus/玄武灰.jpg', 100);
INSERT INTO `goods_attributes` VALUES (124, 17, '全网通6G+64G', '支持移动/联通/电信 4G+/4G/3G/2G', '6G', '64G', '5.95英寸', '砚墨', 3299.00, '1920*1080', '魅族15Plus/砚墨.jpg', 100);
INSERT INTO `goods_attributes` VALUES (125, 17, '全网通6G+64G', '支持移动/联通/电信 4G+/4G/3G/2G', '6G', '64G', '5.95英寸', '雅金', 2999.00, '1920*1080', '魅族15Plus/雅金.jpg', 100);
INSERT INTO `goods_attributes` VALUES (126, 17, '全网通6G+128G', '支持移动/联通/电信 4G+/4G/3G/2G', '6G', '128G', '5.95英寸', '玄武灰', 3299.00, '1920*1080', '魅族15Plus/玄武灰.jpg', 100);
INSERT INTO `goods_attributes` VALUES (127, 17, '全网通6G+128G', '支持移动/联通/电信 4G+/4G/3G/2G', '6G', '128G', '5.95英寸', '砚墨', 3299.00, '1920*1080', '魅族15Plus/砚墨.jpg', 100);
INSERT INTO `goods_attributes` VALUES (128, 17, '全网通6G+128G', '支持移动/联通/电信 4G+/4G/3G/2G', '6G', '128G', '5.95英寸', '雅金', 2999.00, '1920*1080', '魅族15Plus/雅金.jpg', 100);
INSERT INTO `goods_attributes` VALUES (129, 19, '全网通4G+64G', '支持移动/联通/电信 4G+/4G/3G/2G', '4G', '64G', '5.46英寸', '曜岩黑', 1699.00, '1920*1080', '魅族15/曜岩黑.jpg', 100);
INSERT INTO `goods_attributes` VALUES (130, 19, '全网通4G+64G', '支持移动/联通/电信 4G+/4G/3G/2G', '4G', '64G', '5.46英寸', '砂砾金', 1699.00, '1920*1080', '魅族15/砂砾金.jpg', 100);
INSERT INTO `goods_attributes` VALUES (131, 19, '全网通4G+64G', '支持移动/联通/电信 4G+/4G/3G/2G', '4G', '64G', '5.46英寸', '朱雀红', 1699.00, '1920*1080', '魅族15/朱雀红.jpg', 100);
INSERT INTO `goods_attributes` VALUES (132, 19, '全网通4G+128G', '支持移动/联通/电信 4G+/4G/3G/2G', '4G', '128G', '5.46英寸', '曜岩黑', 1999.00, '1920*1080', '魅族15/曜岩黑.jpg', 100);
INSERT INTO `goods_attributes` VALUES (133, 19, '全网通4G+128G', '支持移动/联通/电信 4G+/4G/3G/2G', '4G', '128G', '5.46英寸', '砂砾金', 1999.00, '1920*1080', '魅族15/砂砾金.jpg', 100);
INSERT INTO `goods_attributes` VALUES (134, 19, '全网通4G+128G', '支持移动/联通/电信 4G+/4G/3G/2G', '4G', '128G', '5.46英寸', '朱雀红', 1999.00, '1920*1080', '魅族15/朱雀红.jpg', 100);
INSERT INTO `goods_attributes` VALUES (135, 18, '全网通4G+64G', '支持移动/联通/电信 4G+/4G/3G/2G', '4G', '64G', '5.46英寸', '雅金', 2499.00, '1920*1080', '魅族M15/雅金.jpg', 100);
INSERT INTO `goods_attributes` VALUES (136, 18, '全网通4G+64G', '支持移动/联通/电信 4G+/4G/3G/2G', '4G', '64G', '5.46英寸', '砚墨', 2499.00, '1920*1080', '魅族M15/砚墨.jpg', 100);
INSERT INTO `goods_attributes` VALUES (137, 18, '全网通4G+64G', '支持移动/联通/电信 4G+/4G/3G/2G', '4G', '64G', '5.46英寸', '黛蓝', 2499.00, '1920*1080', '魅族M15/黛蓝.jpg', 100);
INSERT INTO `goods_attributes` VALUES (138, 18, '全网通4G+64G', '支持移动/联通/电信 4G+/4G/3G/2G', '4G', '64G', '5.46英寸', '汝窑白', 2499.00, '1920*1080', '魅族M15/汝窑白.jpg', 100);
INSERT INTO `goods_attributes` VALUES (139, 18, '全网通4G+128G', '支持移动/联通/电信 4G+/4G/3G/2G', '4G', '128G', '5.46英寸', '雅金', 2799.00, '1920*1080', '魅族M15/雅金.jpg', 100);
INSERT INTO `goods_attributes` VALUES (140, 18, '全网通4G+128G', '支持移动/联通/电信 4G+/4G/3G/2G', '4G', '128G', '5.46英寸', '砚墨', 2799.00, '1920*1080', '魅族M15/砚墨.jpg', 100);
INSERT INTO `goods_attributes` VALUES (141, 18, '全网通4G+128G', '支持移动/联通/电信 4G+/4G/3G/2G', '4G', '128G', '5.46英寸', '黛蓝', 2799.00, '1920*1080', '魅族M15/黛蓝.jpg', 100);
INSERT INTO `goods_attributes` VALUES (142, 18, '全网通4G+128G', '支持移动/联通/电信 4G+/4G/3G/2G', '4G', '128G', '5.46英寸', '汝窑白', 2799.00, '1920*1080', '魅族M15/汝窑白.jpg', 100);
INSERT INTO `goods_attributes` VALUES (143, 20, '全网通6G+64G', '支持移动/联通/电信 4G+/4G/3G/2G', '6G', '64G', '5.99英寸', '丹青', 1799.00, '2160x1080', '魅蓝E3/丹青.jpg', 100);
INSERT INTO `goods_attributes` VALUES (145, 20, '全网通6G+64G', '支持移动/联通/电信 4G+/4G/3G/2G', '6G', '64G', '5.99英寸', '曜石黑', 1799.00, '2160x1080', '魅蓝E3/曜石黑.jpg', 100);
INSERT INTO `goods_attributes` VALUES (146, 20, '全网通6G+64G', '支持移动/联通/电信 4G+/4G/3G/2G', '6G', '64G', '5.99英寸', 'J-20定制', 1999.00, '2160x1080', '魅蓝E3/J-20定制版.jpg', 100);
INSERT INTO `goods_attributes` VALUES (147, 20, '全网通6G+128G', '支持移动/联通/电信 4G+/4G/3G/2G', '6G', '128G', '5.99英寸', '丹青', 1999.00, '2160x1080', '魅蓝E3/丹青.jpg', 100);
INSERT INTO `goods_attributes` VALUES (148, 20, '全网通6G+128G', '支持移动/联通/电信 4G+/4G/3G/2G', '6G', '128G', '5.99英寸', '香槟金', 1999.00, '2160x1080', '魅蓝E3/香槟金.jpg', 100);
INSERT INTO `goods_attributes` VALUES (149, 20, '全网通6G+128G', '支持移动/联通/电信 4G+/4G/3G/2G', '6G', '128G', '5.99英寸', '曜石黑', 1999.00, '2160x1080', '魅蓝E3/曜石黑.jpg', 100);
INSERT INTO `goods_attributes` VALUES (150, 20, '全网通6G+128G', '支持移动/联通/电信 4G+/4G/3G/2G', '6G', '128G', '5.99英寸', 'J-20定制', 2299.00, '2160x1080', '魅蓝E3/J-20定制版.jpg', 100);

-- ----------------------------
-- Table structure for goods_change
-- ----------------------------
DROP TABLE IF EXISTS `goods_change`;
CREATE TABLE `goods_change`  (
  `goodsChangeId` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` int(11) NULL DEFAULT NULL,
  `userId` int(11) NULL DEFAULT NULL,
  `goodsAttrId` int(11) NULL DEFAULT NULL,
  `postscript` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(2) NULL DEFAULT NULL,
  `num` int(4) NULL DEFAULT NULL,
  `reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`goodsChangeId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_change
-- ----------------------------
INSERT INTO `goods_change` VALUES (1, 3, 1, 2, '浏览', 1, NULL, NULL);

-- ----------------------------
-- Table structure for goods_evaluate
-- ----------------------------
DROP TABLE IF EXISTS `goods_evaluate`;
CREATE TABLE `goods_evaluate`  (
  `goodsEvaluateId` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` int(11) NULL DEFAULT NULL,
  `goodId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `goodsScore` int(10) NOT NULL,
  `serviceScore` int(10) NULL DEFAULT NULL,
  `logisticsScore` int(10) NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `createTime` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`goodsEvaluateId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_evaluate
-- ----------------------------
INSERT INTO `goods_evaluate` VALUES (1, NULL, 4, 26, 2, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (2, NULL, 9, 4, 4, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (3, NULL, 11, 11, 2, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (4, NULL, 20, 49, 3, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (5, NULL, 14, 31, 5, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (6, NULL, 15, 26, 4, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (7, NULL, 9, 45, 1, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (8, NULL, 3, 11, 1, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (9, NULL, 16, 7, 2, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (10, NULL, 3, 42, 1, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (11, NULL, 11, 5, 4, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (12, NULL, 17, 31, 4, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (13, NULL, 5, 22, 3, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (14, NULL, 2, 8, 5, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (15, NULL, 6, 46, 2, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (16, NULL, 18, 43, 2, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (17, NULL, 13, 21, 1, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (18, NULL, 6, 34, 2, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (19, NULL, 8, 22, 2, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (20, NULL, 13, 21, 2, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (21, NULL, 12, 30, 3, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (22, NULL, 15, 20, 1, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (23, NULL, 1, 18, 1, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (24, NULL, 15, 34, 5, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (25, NULL, 15, 6, 3, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (26, NULL, 8, 15, 4, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (27, NULL, 12, 43, 2, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (28, NULL, 10, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (29, NULL, 18, 19, 5, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (30, NULL, 18, 24, 3, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (31, NULL, 20, 25, 4, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (32, NULL, 14, 29, 2, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (33, NULL, 16, 28, 5, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (34, NULL, 1, 18, 1, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (35, NULL, 9, 9, 3, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (36, NULL, 12, 34, 5, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (37, NULL, 7, 43, 2, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (38, NULL, 13, 5, 3, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (39, NULL, 10, 42, 1, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (40, NULL, 7, 17, 1, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (41, NULL, 6, 30, 4, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (42, NULL, 3, 16, 5, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (43, NULL, 16, 38, 3, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (44, NULL, 15, 16, 4, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (45, NULL, 12, 7, 3, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (46, NULL, 4, 33, 3, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (47, NULL, 18, 11, 5, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (48, NULL, 13, 48, 2, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (49, NULL, 19, 18, 5, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (50, NULL, 5, 41, 2, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (51, NULL, 17, 1, 3, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (52, NULL, 10, 28, 3, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (53, NULL, 13, 42, 2, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (54, NULL, 6, 10, 2, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (55, NULL, 6, 10, 2, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (56, NULL, 19, 46, 5, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (57, NULL, 14, 49, 3, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (58, NULL, 3, 33, 2, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (59, NULL, 10, 14, 2, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (60, NULL, 14, 26, 2, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (61, NULL, 13, 23, 2, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (62, NULL, 1, 12, 5, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (63, NULL, 12, 22, 3, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (64, NULL, 15, 37, 4, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (65, NULL, 1, 42, 5, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (66, NULL, 1, 17, 4, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (67, NULL, 1, 42, 1, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (68, NULL, 9, 16, 5, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (69, NULL, 7, 28, 1, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (70, NULL, 19, 22, 2, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (71, NULL, 7, 32, 1, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (72, NULL, 9, 37, 2, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (73, NULL, 19, 20, 5, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (74, NULL, 4, 45, 1, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (75, NULL, 18, 13, 5, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (76, NULL, 11, 14, 1, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (77, NULL, 15, 8, 3, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (78, NULL, 6, 30, 5, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (79, NULL, 10, 42, 2, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (80, NULL, 14, 28, 1, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (81, NULL, 3, 45, 4, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (82, NULL, 9, 19, 2, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (83, NULL, 19, 18, 4, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (84, NULL, 11, 49, 1, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (85, NULL, 16, 7, 3, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (86, NULL, 20, 29, 4, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (87, NULL, 4, 26, 5, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (88, NULL, 5, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (89, NULL, 20, 9, 1, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (90, NULL, 5, 38, 4, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (91, NULL, 5, 35, 3, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (92, NULL, 1, 15, 4, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (93, NULL, 9, 15, 3, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (94, NULL, 13, 6, 4, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (95, NULL, 9, 35, 1, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (96, NULL, 8, 10, 2, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (97, NULL, 3, 49, 4, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (98, NULL, 8, 38, 4, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (99, NULL, 5, 15, 1, NULL, NULL, NULL, NULL);
INSERT INTO `goods_evaluate` VALUES (100, NULL, 1, 48, 3, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for goods_recommand
-- ----------------------------
DROP TABLE IF EXISTS `goods_recommand`;
CREATE TABLE `goods_recommand`  (
  `goodsRecId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NULL DEFAULT NULL,
  `goodsIdStr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`goodsRecId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 53 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_recommand
-- ----------------------------
INSERT INTO `goods_recommand` VALUES (1, 1, '14#9#16#19#');
INSERT INTO `goods_recommand` VALUES (2, 2, '');
INSERT INTO `goods_recommand` VALUES (3, 3, '');
INSERT INTO `goods_recommand` VALUES (4, 4, '1#5#16#15#');
INSERT INTO `goods_recommand` VALUES (5, 5, '10#1#20#14#');
INSERT INTO `goods_recommand` VALUES (6, 6, '1#9#4#10#');
INSERT INTO `goods_recommand` VALUES (7, 7, '8#6#5#10#');
INSERT INTO `goods_recommand` VALUES (8, 8, '4#6#19#12#');
INSERT INTO `goods_recommand` VALUES (9, 9, '14#5#15#11#');
INSERT INTO `goods_recommand` VALUES (10, 10, '5#19#16#1#');
INSERT INTO `goods_recommand` VALUES (11, 11, '10#20#9#14#');
INSERT INTO `goods_recommand` VALUES (12, 12, '7#8#10#19#');
INSERT INTO `goods_recommand` VALUES (13, 13, '11#12#3#9#');
INSERT INTO `goods_recommand` VALUES (14, 14, '14#13#16#7#');
INSERT INTO `goods_recommand` VALUES (15, 15, '16#12#10#13#');
INSERT INTO `goods_recommand` VALUES (16, 16, '11#10#20#2#');
INSERT INTO `goods_recommand` VALUES (17, 17, '13#16#12#14#');
INSERT INTO `goods_recommand` VALUES (18, 18, '5#13#6#12#');
INSERT INTO `goods_recommand` VALUES (19, 19, '5#15#7#11#');
INSERT INTO `goods_recommand` VALUES (20, 20, '12#2#9#8#');
INSERT INTO `goods_recommand` VALUES (21, 21, '10#11#3#');
INSERT INTO `goods_recommand` VALUES (22, 22, '16#1#9#15#');
INSERT INTO `goods_recommand` VALUES (23, 23, '10#11#3#');
INSERT INTO `goods_recommand` VALUES (24, 24, '11#12#3#9#');
INSERT INTO `goods_recommand` VALUES (25, 25, '11#3#9#');
INSERT INTO `goods_recommand` VALUES (26, 26, '9#20#2#17#');
INSERT INTO `goods_recommand` VALUES (27, 27, '');
INSERT INTO `goods_recommand` VALUES (28, 28, '11#20#1#3#');
INSERT INTO `goods_recommand` VALUES (29, 29, '3#17#4#16#');
INSERT INTO `goods_recommand` VALUES (30, 30, '19#15#16#7#');
INSERT INTO `goods_recommand` VALUES (31, 31, '5#4#16#7#');
INSERT INTO `goods_recommand` VALUES (32, 32, '10#12#14#18#');
INSERT INTO `goods_recommand` VALUES (33, 33, '14#11#15#10#');
INSERT INTO `goods_recommand` VALUES (34, 34, '8#2#9#16#');
INSERT INTO `goods_recommand` VALUES (35, 35, '1#3#17#15#');
INSERT INTO `goods_recommand` VALUES (36, 36, '');
INSERT INTO `goods_recommand` VALUES (37, 37, '2#3#5#6#');
INSERT INTO `goods_recommand` VALUES (38, 38, '9#19#1#7#');
INSERT INTO `goods_recommand` VALUES (39, 39, '');
INSERT INTO `goods_recommand` VALUES (40, 40, '');
INSERT INTO `goods_recommand` VALUES (41, 41, '9#17#16#19#');
INSERT INTO `goods_recommand` VALUES (42, 42, '4#9#7#14#');
INSERT INTO `goods_recommand` VALUES (43, 43, '6#10#8#11#');
INSERT INTO `goods_recommand` VALUES (44, 44, '');
INSERT INTO `goods_recommand` VALUES (45, 45, '14#11#10#20#');
INSERT INTO `goods_recommand` VALUES (46, 46, '8#15#1#5#');
INSERT INTO `goods_recommand` VALUES (47, 47, '');
INSERT INTO `goods_recommand` VALUES (48, 48, '7#8#11#19#');
INSERT INTO `goods_recommand` VALUES (49, 49, '10#9#18#13#');
INSERT INTO `goods_recommand` VALUES (50, 50, '');

-- ----------------------------
-- Table structure for goods_repair
-- ----------------------------
DROP TABLE IF EXISTS `goods_repair`;
CREATE TABLE `goods_repair`  (
  `goodsRepairId` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` int(11) NULL DEFAULT NULL,
  `userId` int(11) NULL DEFAULT NULL,
  `goodsAttrId` int(11) NULL DEFAULT NULL,
  `postscript` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(2) NULL DEFAULT NULL,
  `num` int(4) NULL DEFAULT NULL,
  `reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`goodsRepairId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_repair
-- ----------------------------
INSERT INTO `goods_repair` VALUES (1, 3, 1, 2, '啦啦啦', 1, NULL, NULL);

-- ----------------------------
-- Table structure for goods_return
-- ----------------------------
DROP TABLE IF EXISTS `goods_return`;
CREATE TABLE `goods_return`  (
  `goodsReturnId` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` int(11) NULL DEFAULT NULL,
  `userId` int(11) NULL DEFAULT NULL,
  `goodsAttrId` int(11) NULL DEFAULT NULL,
  `postscript` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(2) NULL DEFAULT NULL,
  `num` int(4) NULL DEFAULT NULL,
  `reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`goodsReturnId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_return
-- ----------------------------
INSERT INTO `goods_return` VALUES (1, 3, 1, 2, '啦啦啦', 1, NULL, NULL);
INSERT INTO `goods_return` VALUES (8, 2, 1, 2, '', 0, NULL, NULL);
INSERT INTO `goods_return` VALUES (9, 7, 1, 2, '啦啦啦', 0, NULL, NULL);
INSERT INTO `goods_return` VALUES (10, 3, 1, 2, '啦啦啦', 0, NULL, NULL);
INSERT INTO `goods_return` VALUES (11, 3, 1, 2, '啦啦啦', 0, NULL, NULL);
INSERT INTO `goods_return` VALUES (12, 3, 1, 2, 'info', 0, NULL, NULL);

-- ----------------------------
-- Table structure for goods_settle
-- ----------------------------
DROP TABLE IF EXISTS `goods_settle`;
CREATE TABLE `goods_settle`  (
  `settleId` int(11) NOT NULL AUTO_INCREMENT,
  `goodsId` int(11) NULL DEFAULT NULL,
  `settleNum` int(5) NULL DEFAULT NULL,
  `settleMoney` double(10, 0) NULL DEFAULT NULL,
  `settleTime` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `goodsType` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `goodsName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`settleId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_settle
-- ----------------------------
INSERT INTO `goods_settle` VALUES (1, 1, 1, 1, '2018-02-16 10:41:43', '华为', '华为');
INSERT INTO `goods_settle` VALUES (2, 2, 2, 4, '2018-03-15 10:42:50', '华为', '华为');
INSERT INTO `goods_settle` VALUES (3, 3, 4, 4, '2018-03-16 10:42:51', '小米', '小米');

-- ----------------------------
-- Table structure for goods_stock
-- ----------------------------
DROP TABLE IF EXISTS `goods_stock`;
CREATE TABLE `goods_stock`  (
  `goodsStockId` int(11) NOT NULL AUTO_INCREMENT,
  `goodsType` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `goodsName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `goodsRom` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `goodsRam` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `goodsColor` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `goodsSize` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `StockNum` int(10) NULL DEFAULT NULL,
  `stockTime` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `goodsId` int(11) NULL DEFAULT NULL,
  `goodsPrice` decimal(10, 2) NULL DEFAULT NULL,
  `goodsTotalPrice` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`goodsStockId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_stock
-- ----------------------------
INSERT INTO `goods_stock` VALUES (1, '222', '22', '22', '22', '22', '22', 22, '2018-07-12 09:20:10', NULL, NULL, NULL);
INSERT INTO `goods_stock` VALUES (2, '55', '55', '55', '55', '55', '55', 55, '2018-07-04 09:21:29', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for log_user_logins
-- ----------------------------
DROP TABLE IF EXISTS `log_user_logins`;
CREATE TABLE `log_user_logins`  (
  `loginId` int(20) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `loginTime` datetime(0) NOT NULL,
  `loginIp` varchar(16) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `loginSrc` int(3) NULL DEFAULT NULL,
  `loginRemark` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`loginId`) USING BTREE,
  INDEX `log_user_logins_ibfk_1`(`userId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for login_area
-- ----------------------------
DROP TABLE IF EXISTS `login_area`;
CREATE TABLE `login_area`  (
  `loginAreaId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NULL DEFAULT NULL,
  `cityId` int(11) NULL DEFAULT NULL,
  `areaId` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`loginAreaId`) USING BTREE,
  INDEX `userId`(`userId`) USING BTREE,
  INDEX `cityId`(`cityId`) USING BTREE,
  CONSTRAINT `login_area_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`UserId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `login_area_ibfk_2` FOREIGN KEY (`cityId`) REFERENCES `city` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of login_area
-- ----------------------------
INSERT INTO `login_area` VALUES (1, 1, 2964, NULL);
INSERT INTO `login_area` VALUES (2, 1, 2952, NULL);
INSERT INTO `login_area` VALUES (22, 1, 3528, NULL);
INSERT INTO `login_area` VALUES (23, 1, 1437, NULL);

-- ----------------------------
-- Table structure for order_goods
-- ----------------------------
DROP TABLE IF EXISTS `order_goods`;
CREATE TABLE `order_goods`  (
  `godOrderId` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` int(11) NOT NULL,
  `goodsId` int(11) NOT NULL,
  `goodsNums` int(11) NOT NULL,
  `goodsPrice` decimal(11, 0) NOT NULL,
  `goodsAttrId` int(11) NOT NULL,
  PRIMARY KEY (`godOrderId`) USING BTREE,
  INDEX `orderId`(`orderId`) USING BTREE,
  INDEX `goodsId`(`goodsId`) USING BTREE,
  INDEX `goodsAttrId`(`goodsAttrId`) USING BTREE,
  CONSTRAINT `order_goods_ibfk_2` FOREIGN KEY (`goodsId`) REFERENCES `goods` (`goodsId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `order_goods_ibfk_3` FOREIGN KEY (`goodsAttrId`) REFERENCES `goods_attribute` (`goodsAttrId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `order_goods_ibfk_4` FOREIGN KEY (`orderId`) REFERENCES `order_table` (`orderId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 100005 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for order_settlements
-- ----------------------------
DROP TABLE IF EXISTS `order_settlements`;
CREATE TABLE `order_settlements`  (
  `settlementId` int(11) NOT NULL,
  `settlementNo` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `settlementType` int(4) NOT NULL,
  `accName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `accNo` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `accUser` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `orderMoney` decimal(10, 0) NOT NULL,
  `settlementMoney` decimal(10, 0) NOT NULL,
  `createTime` datetime(0) NOT NULL,
  `isFinish` int(4) NOT NULL,
  `finishTime` datetime(0) NULL DEFAULT NULL,
  `remarks` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`settlementId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for order_table
-- ----------------------------
DROP TABLE IF EXISTS `order_table`;
CREATE TABLE `order_table`  (
  `orderId` int(11) NOT NULL AUTO_INCREMENT,
  `orderNo` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `userId` int(11) NOT NULL,
  `addressId` int(11) NOT NULL,
  `orderStatus` int(4) NOT NULL,
  `totalMoney` decimal(11, 2) NOT NULL,
  `deliverMoney` decimal(11, 2) NOT NULL,
  `payType` int(4) NOT NULL,
  `isPay` int(4) NOT NULL,
  `deliverType` int(4) NOT NULL,
  `deliveryTime` int(4) NULL DEFAULT NULL,
  `invoiceClient` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `orderRemarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `isAppraises` int(4) NOT NULL,
  `creatTime` datetime(0) NOT NULL,
  `isRefund` int(4) NOT NULL,
  `refundRemark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `backMoney` decimal(11, 2) NULL DEFAULT NULL,
  `needPay` decimal(11, 2) NULL DEFAULT NULL,
  `tradeNo` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `settlementId` int(11) NULL DEFAULT NULL,
  `realTotalMoney` decimal(11, 2) NOT NULL,
  `receiveTime` datetime(0) NULL DEFAULT NULL,
  `expressCompany` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `expressCode` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`orderId`) USING BTREE,
  INDEX `addressId`(`addressId`) USING BTREE,
  INDEX `userId`(`userId`) USING BTREE,
  INDEX `settlementId`(`settlementId`) USING BTREE,
  CONSTRAINT `order_table_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`UserId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `order_table_ibfk_2` FOREIGN KEY (`settlementId`) REFERENCES `order_settlements` (`settlementId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `order_table_ibfk_3` FOREIGN KEY (`addressId`) REFERENCES `user_address` (`addressId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_table
-- ----------------------------
INSERT INTO `order_table` VALUES (3, '201806291021424801', 1, 7, 1, 2796.00, 5.00, 1, 0, 2, 2, '', '', 0, '2018-06-29 10:21:42', 0, NULL, NULL, NULL, NULL, NULL, 2796.00, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `roleid` int(11) NULL DEFAULT NULL,
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES (1, '/readName', 1, '查看名单');
INSERT INTO `permission` VALUES (2, '/readData', 2, '查看数据');
INSERT INTO `permission` VALUES (3, '/showAllUser', 1, '管理用户');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, '管理员', '管理员');
INSERT INTO `role` VALUES (2, '普通用户', '普通用户');

-- ----------------------------
-- Table structure for shopping_cart
-- ----------------------------
DROP TABLE IF EXISTS `shopping_cart`;
CREATE TABLE `shopping_cart`  (
  `shoppingCartId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `isCheck` int(4) NOT NULL,
  `goodsAttrId` int(11) NOT NULL,
  `goodsId` int(11) NOT NULL,
  `goodsCount` int(10) NOT NULL,
  PRIMARY KEY (`shoppingCartId`) USING BTREE,
  INDEX `userId`(`userId`) USING BTREE,
  INDEX `goodAttrId`(`goodsAttrId`) USING BTREE,
  INDEX `goodsId`(`goodsId`) USING BTREE,
  CONSTRAINT `shopping_cart_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `shopping_cart_ibfk_2` FOREIGN KEY (`goodsAttrId`) REFERENCES `goods_attributes` (`goodsAttrId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `shopping_cart_ibfk_3` FOREIGN KEY (`goodsId`) REFERENCES `goods` (`goodsId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shopping_cart
-- ----------------------------
INSERT INTO `shopping_cart` VALUES (19, 1, 0, 1, 1, 2);

-- ----------------------------
-- Table structure for shoppingcart
-- ----------------------------
DROP TABLE IF EXISTS `shoppingcart`;
CREATE TABLE `shoppingcart`  (
  `cartId` int(10) NOT NULL AUTO_INCREMENT,
  `userId` int(10) NOT NULL,
  `isCheck` int(4) NOT NULL,
  `goodId` int(10) NOT NULL,
  `goodCount` int(10) NOT NULL,
  PRIMARY KEY (`cartId`) USING BTREE,
  INDEX `userId`(`userId`) USING BTREE,
  INDEX `goodId`(`goodId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for staff_login
-- ----------------------------
DROP TABLE IF EXISTS `staff_login`;
CREATE TABLE `staff_login`  (
  `loginId` int(10) NOT NULL AUTO_INCREMENT,
  `staffId` int(20) NOT NULL,
  `loginTime` datetime(0) NOT NULL,
  `loginIp` varchar(20) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  PRIMARY KEY (`loginId`) USING BTREE,
  INDEX `staffId`(`staffId`) USING BTREE,
  CONSTRAINT `staff_login_ibfk_1` FOREIGN KEY (`staffId`) REFERENCES `staffs` (`staffId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for staff_role
-- ----------------------------
DROP TABLE IF EXISTS `staff_role`;
CREATE TABLE `staff_role`  (
  `roleId` int(20) NOT NULL,
  `roleNo` int(20) NOT NULL,
  `roleName` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `grant` varchar(10) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `createTime` datetime(0) NOT NULL,
  PRIMARY KEY (`roleId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for staffs
-- ----------------------------
DROP TABLE IF EXISTS `staffs`;
CREATE TABLE `staffs`  (
  `staffId` int(10) NOT NULL,
  `loginName` varchar(40) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `loginPwd` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `secretKey` int(32) NOT NULL,
  `staffName` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `staffNo` varchar(40) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `staffPhoto` varchar(150) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `roleId` int(10) NOT NULL,
  `workStatus` int(4) NOT NULL,
  `staffStatus` int(4) NOT NULL,
  `createTime` datetime(0) NOT NULL,
  `lastTime` datetime(0) NULL DEFAULT NULL,
  `lastIP` char(16) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  PRIMARY KEY (`staffId`) USING BTREE,
  INDEX `roleId`(`roleId`) USING BTREE,
  CONSTRAINT `staffs_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `staff_role` (`roleId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_address
-- ----------------------------
DROP TABLE IF EXISTS `user_address`;
CREATE TABLE `user_address`  (
  `addressId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `userName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `userPhone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userTel` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `areaId1` int(11) NOT NULL,
  `areaId2` int(11) NOT NULL,
  `areaId3` int(11) NOT NULL,
  `communityId` int(11) NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `postCode` char(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `isDefault` int(4) NOT NULL,
  `addressFlag` int(4) NOT NULL,
  `createTime` datetime(0) NOT NULL,
  PRIMARY KEY (`addressId`) USING BTREE,
  INDEX `userId`(`userId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_login
-- ----------------------------
DROP TABLE IF EXISTS `user_login`;
CREATE TABLE `user_login`  (
  `loginId` int(20) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `loginTime` datetime(0) NOT NULL,
  `loginIp` varchar(16) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `loginSrc` int(3) NULL DEFAULT NULL,
  `loginRemark` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`loginId`) USING BTREE,
  INDEX `log_user_logins_ibfk_1`(`userId`) USING BTREE,
  CONSTRAINT `user_login_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 612 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_login
-- ----------------------------
INSERT INTO `user_login` VALUES (1, 1, '2018-06-27 09:33:17', '192.168.43.124', NULL, 'Normal');
INSERT INTO `user_login` VALUES (2, 1, '2018-06-27 09:35:20', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (3, 1, '2018-06-27 16:39:52', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (4, 1, '2018-06-27 16:54:39', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (5, 1, '2018-06-27 17:38:37', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (6, 1, '2018-06-27 17:40:01', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (7, 1, '2018-06-27 18:05:16', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (8, 1, '2018-06-27 18:07:52', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (9, 1, '2018-06-27 18:08:52', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (10, 1, '2018-06-27 18:09:35', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (11, 1, '2018-06-27 18:10:30', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (12, 1, '2018-06-27 18:11:24', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (13, 1, '2018-06-27 18:12:56', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (14, 1, '2018-06-27 18:13:35', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (15, 1, '2018-06-27 18:14:21', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (16, 1, '2018-06-27 18:15:10', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (17, 1, '2018-06-27 18:21:16', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (18, 1, '2018-06-27 18:22:57', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (19, 1, '2018-06-27 18:25:34', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (20, 1, '2018-06-27 18:26:10', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (21, 1, '2018-06-27 18:26:52', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (22, 1, '2018-06-27 18:27:37', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (23, 1, '2018-06-28 08:12:48', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (24, 1, '2018-06-28 08:16:54', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (25, 1, '2018-06-28 08:18:12', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (26, 1, '2018-06-28 08:20:36', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (27, 1, '2018-06-28 08:27:11', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (28, 1, '2018-06-28 08:29:00', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (29, 1, '2018-06-28 08:32:04', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (30, 1, '2018-06-28 08:33:09', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (31, 1, '2018-06-28 08:34:36', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (32, 1, '2018-06-28 08:46:45', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (33, 1, '2018-06-28 08:48:55', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (34, 1, '2018-06-28 08:50:14', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (35, 1, '2018-06-28 08:50:59', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (36, 1, '2018-06-28 08:51:38', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (37, 1, '2018-06-28 08:57:56', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (38, 1, '2018-06-28 09:00:12', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (39, 1, '2018-06-28 09:02:54', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (40, 1, '2018-06-28 09:04:20', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (41, 1, '2018-06-28 09:06:10', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (42, 1, '2018-06-28 09:08:08', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (43, 1, '2018-06-28 09:09:06', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (44, 1, '2018-06-28 09:10:08', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (45, 1, '2018-06-28 09:12:10', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (46, 1, '2018-06-28 09:13:47', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (47, 1, '2018-06-28 09:17:35', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (48, 1, '2018-06-28 09:18:07', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (49, 1, '2018-06-28 09:26:42', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (50, 1, '2018-06-28 09:30:39', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (51, 1, '2018-06-28 09:31:39', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (52, 1, '2018-06-28 09:46:42', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (53, 1, '2018-06-28 09:48:03', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (54, 1, '2018-06-28 09:49:42', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (55, 1, '2018-06-28 09:51:12', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (56, 1, '2018-06-28 09:55:00', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (57, 1, '2018-06-28 09:59:31', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (58, 1, '2018-06-28 10:02:01', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (59, 1, '2018-06-28 10:03:27', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (60, 1, '2018-06-28 10:06:54', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (61, 1, '2018-06-28 10:07:51', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (62, 1, '2018-06-28 10:08:30', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (63, 1, '2018-06-28 10:09:35', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (64, 1, '2018-06-28 10:10:34', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (65, 1, '2018-06-28 10:11:12', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (66, 1, '2018-06-28 10:11:56', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (67, 1, '2018-06-28 10:13:35', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (68, 1, '2018-06-28 10:16:33', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (69, 1, '2018-06-28 10:18:36', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (70, 1, '2018-06-28 10:21:59', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (71, 1, '2018-06-28 10:22:44', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (72, 1, '2018-06-28 10:33:17', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (73, 1, '2018-06-28 10:35:15', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (74, 1, '2018-06-28 10:37:22', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (75, 1, '2018-06-28 10:38:15', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (76, 1, '2018-06-28 10:39:34', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (77, 1, '2018-06-28 10:40:17', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (78, 1, '2018-06-28 10:42:19', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (79, 1, '2018-06-28 10:43:14', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (80, 1, '2018-06-28 10:44:48', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (81, 1, '2018-06-28 10:46:13', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (82, 1, '2018-06-28 10:57:58', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (83, 1, '2018-06-28 10:59:55', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (84, 1, '2018-06-28 11:00:53', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (85, 1, '2018-06-28 11:16:48', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (86, 1, '2018-06-28 11:36:49', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (87, 1, '2018-06-28 13:03:59', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (88, 1, '2018-06-28 13:09:03', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (89, 1, '2018-06-29 11:56:06', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (90, 1, '2018-06-29 11:58:55', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (91, 1, '2018-06-29 11:58:58', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (92, 1, '2018-06-29 11:59:00', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (93, 1, '2018-06-30 19:59:20', '192.168.137.119', 1, 'Normal');
INSERT INTO `user_login` VALUES (94, 1, '2018-06-30 20:05:45', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (95, 1, '2018-06-30 21:10:20', '192.168.2.197', 1, 'Normal');
INSERT INTO `user_login` VALUES (96, 1, '2018-06-30 22:48:33', '192.168.2.197', 1, 'Normal');
INSERT INTO `user_login` VALUES (97, 1, '2018-06-30 23:22:39', '192.168.2.197', 1, 'Normal');
INSERT INTO `user_login` VALUES (98, 1, '2018-07-02 15:31:40', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (99, 1, '2018-07-02 18:33:43', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (100, 1, '2018-07-02 19:44:09', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (101, 1, '2018-07-03 08:06:43', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (102, 1, '2018-07-03 08:25:20', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (103, 1, '2018-07-03 10:27:55', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (104, 1, '2018-07-04 09:40:14', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (105, 1, '2018-07-05 17:39:43', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (106, 1, '2018-07-06 10:29:08', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (107, 1, '2018-07-06 10:31:34', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (108, 1, '2018-07-06 10:31:35', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (109, 1, '2018-07-09 09:33:49', '169.254.70.163', 1, 'Normal');
INSERT INTO `user_login` VALUES (110, 1, '2018-07-09 09:58:30', '169.254.70.163', 1, 'Normal');
INSERT INTO `user_login` VALUES (111, 1, '2018-07-09 09:58:56', '169.254.70.163', 1, 'Normal');
INSERT INTO `user_login` VALUES (112, 1, '2018-07-09 11:59:26', '169.254.70.163', 1, 'Normal');
INSERT INTO `user_login` VALUES (113, 1, '2018-07-09 14:36:46', '169.254.70.163', 1, 'Normal');
INSERT INTO `user_login` VALUES (114, 1, '2018-07-09 14:43:09', '169.254.70.163', 1, 'Normal');
INSERT INTO `user_login` VALUES (115, 1, '2018-07-09 14:50:13', '192.168.137.154', 1, 'Normal');
INSERT INTO `user_login` VALUES (116, 1, '2018-07-09 15:03:40', '169.254.70.163', 1, 'Normal');
INSERT INTO `user_login` VALUES (117, 1, '2018-07-09 15:06:19', '169.254.70.163', 1, 'Normal');
INSERT INTO `user_login` VALUES (118, 1, '2018-07-09 15:10:12', '169.254.70.163', 1, 'Normal');
INSERT INTO `user_login` VALUES (119, 1, '2018-07-09 15:12:06', '169.254.70.163', 1, 'Normal');
INSERT INTO `user_login` VALUES (120, 1, '2018-07-09 16:23:25', '169.254.70.163', 1, 'Normal');
INSERT INTO `user_login` VALUES (121, 1, '2018-07-09 16:31:56', '172.29.11.193', 1, 'Normal');
INSERT INTO `user_login` VALUES (122, 1, '2018-07-09 16:34:10', '169.254.70.163', 1, 'Normal');
INSERT INTO `user_login` VALUES (123, 1, '2018-07-09 16:34:38', '172.29.11.193', 1, 'Normal');
INSERT INTO `user_login` VALUES (124, 1, '2018-07-09 16:39:37', '169.254.70.163', 1, 'Normal');
INSERT INTO `user_login` VALUES (125, 1, '2018-07-09 16:41:08', '169.254.70.163', 1, 'Normal');
INSERT INTO `user_login` VALUES (126, 1, '2018-07-09 16:42:06', '169.254.70.163', 1, 'Normal');
INSERT INTO `user_login` VALUES (127, 1, '2018-07-09 16:55:20', '169.254.70.163', 1, 'Normal');
INSERT INTO `user_login` VALUES (128, 1, '2018-07-09 16:56:50', '169.254.70.163', 1, 'Normal');
INSERT INTO `user_login` VALUES (129, 1, '2018-07-09 16:58:03', '169.254.70.163', 1, 'Normal');
INSERT INTO `user_login` VALUES (130, 1, '2018-07-09 17:29:29', '169.254.70.163', 1, 'Normal');
INSERT INTO `user_login` VALUES (131, 1, '2018-07-09 18:41:03', '192.168.137.154', 1, 'Normal');
INSERT INTO `user_login` VALUES (132, 1, '2018-07-09 19:41:51', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (133, 1, '2018-07-09 19:52:44', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (134, 1, '2018-07-09 19:57:48', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (135, 1, '2018-07-09 20:06:40', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (136, 1, '2018-07-09 20:06:45', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (137, 1, '2018-07-09 20:09:13', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (138, 1, '2018-07-09 20:12:13', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (139, 1, '2018-07-09 20:21:06', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (140, 1, '2018-07-09 20:26:54', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (141, 1, '2018-07-09 20:27:54', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (142, 1, '2018-07-09 20:31:46', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (143, 1, '2018-07-09 20:35:36', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (144, 1, '2018-07-09 21:00:44', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (145, 1, '2018-07-09 22:16:13', '192.168.2.197', 1, 'Normal');
INSERT INTO `user_login` VALUES (146, 1, '2018-07-09 22:57:08', '192.168.2.197', 1, 'Normal');
INSERT INTO `user_login` VALUES (147, 1, '2018-07-10 08:17:02', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (148, 1, '2018-07-10 08:36:36', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (149, 1, '2018-07-10 08:44:01', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (150, 1, '2018-07-10 08:57:16', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (151, 1, '2018-07-10 09:39:40', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (152, 1, '2018-07-10 10:07:37', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (153, 1, '2018-07-10 11:01:56', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (154, 1, '2018-07-10 11:03:43', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (155, 1, '2018-07-10 11:04:35', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (156, 1, '2018-07-10 11:08:47', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (157, 1, '2018-07-10 11:10:27', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (158, 1, '2018-07-10 12:14:53', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (159, 1, '2018-07-10 12:40:29', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (160, 1, '2018-07-10 12:58:15', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (161, 1, '2018-07-10 15:02:00', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (162, 1, '2018-07-10 15:08:10', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (163, 1, '2018-07-10 15:49:43', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (164, 1, '2018-07-10 15:49:51', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (165, 1, '2018-07-10 17:13:19', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (166, 1, '2018-07-10 17:29:42', '169.254.70.163', 1, 'Normal');
INSERT INTO `user_login` VALUES (167, 1, '2018-07-10 17:48:32', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (168, 1, '2018-07-10 17:50:47', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (169, 1, '2018-07-10 17:52:43', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (170, 1, '2018-07-10 17:55:10', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (171, 1, '2018-07-10 17:56:29', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (172, 1, '2018-07-10 18:35:29', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (173, 1, '2018-07-10 18:42:30', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (174, 1, '2018-07-10 18:57:01', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (175, 1, '2018-07-10 18:58:22', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (176, 1, '2018-07-10 19:01:21', '172.29.11.194', 1, 'Normal');
INSERT INTO `user_login` VALUES (177, 1, '2018-07-10 20:03:08', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (178, 1, '2018-07-10 21:28:43', '192.168.78.1', 1, 'Normal');
INSERT INTO `user_login` VALUES (179, 1, '2018-07-11 00:29:24', '192.168.78.1', 1, 'Normal');
INSERT INTO `user_login` VALUES (180, 1, '2018-07-11 09:06:27', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (181, 1, '2018-07-11 09:08:18', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (182, 1, '2018-07-11 09:17:27', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (183, 1, '2018-07-11 09:20:04', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (184, 1, '2018-07-11 09:32:04', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (185, 1, '2018-07-11 09:34:39', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (186, 1, '2018-07-11 09:38:11', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (187, 1, '2018-07-11 09:40:33', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (188, 1, '2018-07-11 09:53:21', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (189, 1, '2018-07-11 09:53:46', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (190, 1, '2018-07-11 10:31:07', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (191, 1, '2018-07-11 10:49:57', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (192, 1, '2018-07-11 10:49:59', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (193, 1, '2018-07-11 10:50:01', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (194, 1, '2018-07-11 10:50:07', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (195, 1, '2018-07-11 10:50:15', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (196, 1, '2018-07-11 10:50:16', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (197, 1, '2018-07-11 10:50:36', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (198, 1, '2018-07-11 10:50:38', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (199, 1, '2018-07-11 10:50:38', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (200, 1, '2018-07-11 10:50:44', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (201, 1, '2018-07-11 10:50:46', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (202, 1, '2018-07-11 10:50:47', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (203, 1, '2018-07-11 10:51:20', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (204, 1, '2018-07-11 10:52:27', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (205, 1, '2018-07-11 10:52:28', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (206, 1, '2018-07-11 10:53:06', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (207, 1, '2018-07-11 10:53:07', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (208, 1, '2018-07-11 10:53:10', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (209, 1, '2018-07-11 10:53:10', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (210, 1, '2018-07-11 10:53:23', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (211, 1, '2018-07-11 10:53:24', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (212, 1, '2018-07-11 10:53:27', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (213, 1, '2018-07-11 10:53:27', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (214, 1, '2018-07-11 10:53:28', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (215, 1, '2018-07-11 10:53:37', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (216, 1, '2018-07-11 10:53:49', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (217, 1, '2018-07-11 10:53:50', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (218, 1, '2018-07-11 10:53:51', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (219, 1, '2018-07-11 10:53:59', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (220, 1, '2018-07-11 10:53:59', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (221, 1, '2018-07-11 10:54:00', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (222, 1, '2018-07-11 10:54:01', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (223, 1, '2018-07-11 10:54:05', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (224, 1, '2018-07-11 10:54:07', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (225, 1, '2018-07-11 11:00:58', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (226, 1, '2018-07-11 11:01:06', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (227, 1, '2018-07-11 11:01:44', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (228, 1, '2018-07-11 11:01:57', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (229, 1, '2018-07-11 11:02:27', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (230, 1, '2018-07-11 11:02:36', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (231, 1, '2018-07-11 11:05:01', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (232, 1, '2018-07-11 11:05:44', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (233, 1, '2018-07-11 11:14:13', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (234, 1, '2018-07-11 11:16:23', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (235, 1, '2018-07-11 11:19:28', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (236, 1, '2018-07-11 11:41:43', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (237, 1, '2018-07-11 11:44:30', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (238, 1, '2018-07-11 11:46:01', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (239, 1, '2018-07-11 11:46:56', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (240, 1, '2018-07-11 11:47:57', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (241, 1, '2018-07-11 11:48:48', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (242, 1, '2018-07-11 11:49:27', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (243, 1, '2018-07-11 11:52:52', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (244, 1, '2018-07-11 11:56:10', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (245, 1, '2018-07-11 12:02:40', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (246, 1, '2018-07-11 12:11:43', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (247, 1, '2018-07-11 12:13:49', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (248, 1, '2018-07-11 12:15:05', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (249, 1, '2018-07-11 12:15:11', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (250, 1, '2018-07-11 12:16:19', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (251, 1, '2018-07-11 12:19:18', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (252, 1, '2018-07-11 12:19:55', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (253, 1, '2018-07-11 12:20:58', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (254, 1, '2018-07-11 12:21:58', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (255, 1, '2018-07-11 12:23:36', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (256, 1, '2018-07-11 12:26:05', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (257, 1, '2018-07-11 12:28:57', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (258, 1, '2018-07-11 12:30:29', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (259, 1, '2018-07-11 12:32:32', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (260, 1, '2018-07-11 12:39:28', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (261, 1, '2018-07-11 12:42:05', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (262, 1, '2018-07-11 12:42:36', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (263, 1, '2018-07-11 12:44:36', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (264, 1, '2018-07-11 12:48:29', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (265, 1, '2018-07-11 12:49:41', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (266, 1, '2018-07-11 12:50:35', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (267, 1, '2018-07-11 12:56:45', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (268, 1, '2018-07-11 12:58:10', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (269, 1, '2018-07-11 12:59:28', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (270, 1, '2018-07-11 13:00:33', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (271, 1, '2018-07-11 13:03:10', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (272, 1, '2018-07-11 13:04:41', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (273, 1, '2018-07-11 13:05:48', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (274, 1, '2018-07-11 13:14:44', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (275, 1, '2018-07-11 13:15:52', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (276, 1, '2018-07-11 13:18:20', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (277, 1, '2018-07-11 13:20:22', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (278, 1, '2018-07-11 13:22:32', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (279, 1, '2018-07-11 13:23:34', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (280, 1, '2018-07-11 13:25:29', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (281, 1, '2018-07-11 13:28:22', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (282, 1, '2018-07-11 13:29:39', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (283, 1, '2018-07-11 13:30:57', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (284, 1, '2018-07-11 13:32:10', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (285, 1, '2018-07-11 13:36:27', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (286, 1, '2018-07-11 13:37:58', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (287, 1, '2018-07-11 13:39:26', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (288, 1, '2018-07-11 13:41:13', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (289, 1, '2018-07-11 13:42:56', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (290, 1, '2018-07-11 13:46:21', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (291, 1, '2018-07-11 13:53:33', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (292, 1, '2018-07-11 13:57:02', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (293, 1, '2018-07-11 13:59:23', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (294, 1, '2018-07-11 14:00:33', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (295, 1, '2018-07-11 14:03:19', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (296, 1, '2018-07-11 14:08:50', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (297, 1, '2018-07-11 14:12:23', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (298, 1, '2018-07-11 14:21:01', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (299, 1, '2018-07-11 14:23:58', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (300, 1, '2018-07-11 14:28:12', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (301, 1, '2018-07-11 14:34:09', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (302, 1, '2018-07-11 14:39:11', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (303, 1, '2018-07-11 14:43:32', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (304, 1, '2018-07-11 14:44:57', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (305, 1, '2018-07-11 14:54:20', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (306, 1, '2018-07-11 14:59:59', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (307, 1, '2018-07-11 15:00:45', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (308, 1, '2018-07-11 15:01:19', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (309, 1, '2018-07-11 15:02:07', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (310, 1, '2018-07-11 15:02:46', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (311, 1, '2018-07-11 15:04:26', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (312, 1, '2018-07-11 15:05:02', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (313, 1, '2018-07-11 15:08:44', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (314, 1, '2018-07-11 15:12:59', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (315, 1, '2018-07-11 15:16:27', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (316, 1, '2018-07-11 15:16:58', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (317, 1, '2018-07-11 15:44:51', '169.254.70.163', 1, 'Normal');
INSERT INTO `user_login` VALUES (318, 1, '2018-07-11 15:46:07', '169.254.70.163', 1, 'Normal');
INSERT INTO `user_login` VALUES (319, 1, '2018-07-11 15:48:13', '169.254.70.163', 1, 'Normal');
INSERT INTO `user_login` VALUES (320, 1, '2018-07-11 16:08:21', '169.254.70.163', 1, 'Normal');
INSERT INTO `user_login` VALUES (321, 1, '2018-07-11 16:10:34', '169.254.70.163', 1, 'Normal');
INSERT INTO `user_login` VALUES (322, 1, '2018-07-11 16:29:05', '169.254.70.163', 1, 'Normal');
INSERT INTO `user_login` VALUES (323, 1, '2018-07-11 16:29:40', '169.254.70.163', 1, 'Normal');
INSERT INTO `user_login` VALUES (324, 1, '2018-07-11 16:30:39', '169.254.70.163', 1, 'Normal');
INSERT INTO `user_login` VALUES (325, 1, '2018-07-11 16:31:29', '169.254.70.163', 1, 'Normal');
INSERT INTO `user_login` VALUES (326, 1, '2018-07-11 16:32:33', '169.254.70.163', 1, 'Normal');
INSERT INTO `user_login` VALUES (327, 1, '2018-07-11 16:33:17', '169.254.70.163', 1, 'Normal');
INSERT INTO `user_login` VALUES (328, 1, '2018-07-11 16:41:33', '169.254.70.163', 1, 'Normal');
INSERT INTO `user_login` VALUES (329, 1, '2018-07-11 16:45:27', '169.254.70.163', 1, 'Normal');
INSERT INTO `user_login` VALUES (330, 1, '2018-07-11 16:53:58', '169.254.70.163', 1, 'Normal');
INSERT INTO `user_login` VALUES (331, 1, '2018-07-11 16:55:44', '169.254.70.163', 1, 'Normal');
INSERT INTO `user_login` VALUES (332, 1, '2018-07-11 16:57:58', '169.254.70.163', 1, 'Normal');
INSERT INTO `user_login` VALUES (333, 1, '2018-07-11 16:59:14', '169.254.70.163', 1, 'Normal');
INSERT INTO `user_login` VALUES (334, 1, '2018-07-11 17:05:59', '169.254.70.163', 1, 'Normal');
INSERT INTO `user_login` VALUES (335, 1, '2018-07-11 17:17:15', '169.254.70.163', 1, 'Normal');
INSERT INTO `user_login` VALUES (336, 1, '2018-07-11 17:20:50', '169.254.70.163', 1, 'Normal');
INSERT INTO `user_login` VALUES (337, 1, '2018-07-11 17:29:22', '169.254.70.163', 1, 'Normal');
INSERT INTO `user_login` VALUES (338, 1, '2018-07-11 17:31:30', '169.254.70.163', 1, 'Normal');
INSERT INTO `user_login` VALUES (339, 1, '2018-07-11 17:44:41', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (340, 1, '2018-07-11 17:45:48', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (341, 1, '2018-07-11 17:48:02', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (342, 1, '2018-07-11 17:49:53', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (343, 1, '2018-07-11 17:51:51', '169.254.70.163', 1, 'Normal');
INSERT INTO `user_login` VALUES (344, 1, '2018-07-11 17:59:42', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (345, 1, '2018-07-11 18:13:01', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (346, 1, '2018-07-11 18:15:28', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (347, 1, '2018-07-11 18:19:43', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (348, 1, '2018-07-11 18:27:52', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (349, 1, '2018-07-11 18:35:34', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (350, 1, '2018-07-11 18:42:06', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (351, 1, '2018-07-11 18:42:44', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (352, 1, '2018-07-11 18:46:14', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (353, 1, '2018-07-11 18:47:15', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (354, 1, '2018-07-11 18:49:14', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (355, 1, '2018-07-11 18:51:07', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (356, 1, '2018-07-11 18:55:18', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (357, 1, '2018-07-11 18:57:20', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (358, 1, '2018-07-11 19:24:46', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (359, 1, '2018-07-11 19:27:08', '172.29.11.196', 1, 'Normal');
INSERT INTO `user_login` VALUES (360, 1, '2018-07-11 19:37:41', '172.29.11.196', 1, 'Normal');
INSERT INTO `user_login` VALUES (361, 1, '2018-07-11 19:56:56', '172.29.11.196', 1, 'Normal');
INSERT INTO `user_login` VALUES (362, 1, '2018-07-11 20:10:58', '172.29.11.196', 1, 'Normal');
INSERT INTO `user_login` VALUES (363, 1, '2018-07-11 20:11:54', '172.29.11.196', 1, 'Normal');
INSERT INTO `user_login` VALUES (364, 1, '2018-07-11 20:12:40', '172.29.11.196', 1, 'Normal');
INSERT INTO `user_login` VALUES (365, 1, '2018-07-11 20:15:20', '172.29.11.196', 1, 'Normal');
INSERT INTO `user_login` VALUES (366, 1, '2018-07-11 20:36:36', '172.29.11.196', 1, 'Normal');
INSERT INTO `user_login` VALUES (367, 1, '2018-07-11 22:57:30', '169.254.118.17', 1, 'Normal');
INSERT INTO `user_login` VALUES (368, 1, '2018-07-11 23:30:17', '169.254.118.17', 1, 'Normal');
INSERT INTO `user_login` VALUES (369, 1, '2018-07-11 23:34:36', '169.254.118.17', 1, 'Normal');
INSERT INTO `user_login` VALUES (370, 1, '2018-07-11 23:45:28', '169.254.118.17', 1, 'Normal');
INSERT INTO `user_login` VALUES (371, 1, '2018-07-11 23:52:04', '169.254.118.17', 1, 'Normal');
INSERT INTO `user_login` VALUES (372, 1, '2018-07-11 23:55:30', '169.254.118.17', 1, 'Normal');
INSERT INTO `user_login` VALUES (373, 1, '2018-07-12 08:12:22', '172.29.11.196', 1, 'Normal');
INSERT INTO `user_login` VALUES (374, 1, '2018-07-12 08:14:26', '172.29.11.196', 1, 'Normal');
INSERT INTO `user_login` VALUES (375, 1, '2018-07-12 08:15:22', '172.29.11.196', 1, 'Normal');
INSERT INTO `user_login` VALUES (376, 1, '2018-07-12 08:16:47', '172.29.11.196', 1, 'Normal');
INSERT INTO `user_login` VALUES (377, 1, '2018-07-12 08:24:22', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (378, 1, '2018-07-12 08:26:30', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (379, 1, '2018-07-12 08:28:29', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (380, 1, '2018-07-12 08:30:18', '169.254.70.163', 1, 'Normal');
INSERT INTO `user_login` VALUES (381, 1, '2018-07-12 08:32:14', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (382, 1, '2018-07-12 08:33:50', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (383, 1, '2018-07-12 08:35:49', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (384, 1, '2018-07-12 09:03:02', '172.29.11.196', 1, 'Normal');
INSERT INTO `user_login` VALUES (385, 1, '2018-07-12 09:05:12', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (386, 1, '2018-07-12 09:06:30', '172.29.11.196', 1, 'Normal');
INSERT INTO `user_login` VALUES (387, 1, '2018-07-12 09:08:29', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (388, 1, '2018-07-12 09:13:41', '169.254.70.163', 1, 'Normal');
INSERT INTO `user_login` VALUES (389, 1, '2018-07-12 09:37:36', '172.29.11.196', 1, 'Normal');
INSERT INTO `user_login` VALUES (390, 1, '2018-07-12 09:52:32', '172.29.11.196', 1, 'Normal');
INSERT INTO `user_login` VALUES (391, 1, '2018-07-12 09:56:33', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (392, 1, '2018-07-12 10:11:30', '172.29.11.196', 1, 'Normal');
INSERT INTO `user_login` VALUES (393, 1, '2018-07-12 10:31:35', '169.254.70.163', 1, 'Normal');
INSERT INTO `user_login` VALUES (394, 1, '2018-07-12 10:41:25', '169.254.70.163', 1, 'Normal');
INSERT INTO `user_login` VALUES (395, 1, '2018-07-12 10:42:05', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (396, 1, '2018-07-12 10:46:43', '169.254.70.163', 1, 'Normal');
INSERT INTO `user_login` VALUES (397, 1, '2018-07-12 10:51:34', '169.254.70.163', 1, 'Normal');
INSERT INTO `user_login` VALUES (398, 1, '2018-07-12 10:58:01', '169.254.70.163', 1, 'Normal');
INSERT INTO `user_login` VALUES (399, 1, '2018-07-12 11:10:36', '172.29.11.196', 1, 'Normal');
INSERT INTO `user_login` VALUES (400, 1, '2018-07-12 11:12:05', '169.254.70.163', 1, 'Normal');
INSERT INTO `user_login` VALUES (401, 1, '2018-07-12 11:18:17', '169.254.70.163', 1, 'Normal');
INSERT INTO `user_login` VALUES (402, 1, '2018-07-12 11:20:14', '169.254.70.163', 1, 'Normal');
INSERT INTO `user_login` VALUES (403, 1, '2018-07-12 11:26:29', '169.254.70.163', 1, 'Normal');
INSERT INTO `user_login` VALUES (404, 1, '2018-07-12 11:35:15', '172.29.11.196', 1, 'Normal');
INSERT INTO `user_login` VALUES (405, 1, '2018-07-12 11:59:21', '172.29.11.196', 1, 'Normal');
INSERT INTO `user_login` VALUES (406, 1, '2018-07-12 12:01:51', '172.29.11.196', 1, 'Normal');
INSERT INTO `user_login` VALUES (407, 1, '2018-07-12 12:04:29', '172.29.11.196', 1, 'Normal');
INSERT INTO `user_login` VALUES (408, 1, '2018-07-12 12:09:28', '172.29.11.196', 1, 'Normal');
INSERT INTO `user_login` VALUES (409, 1, '2018-07-12 12:10:47', '172.29.11.196', 1, 'Normal');
INSERT INTO `user_login` VALUES (410, 1, '2018-07-12 12:12:37', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (411, 1, '2018-07-12 12:13:41', '172.29.11.196', 1, 'Normal');
INSERT INTO `user_login` VALUES (412, 1, '2018-07-12 12:14:56', '172.29.11.196', 1, 'Normal');
INSERT INTO `user_login` VALUES (413, 1, '2018-07-12 12:16:59', '172.29.11.196', 1, 'Normal');
INSERT INTO `user_login` VALUES (414, 1, '2018-07-12 12:53:27', '172.29.11.196', 1, 'Normal');
INSERT INTO `user_login` VALUES (415, 1, '2018-07-12 13:20:08', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (416, 1, '2018-07-12 13:22:54', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (417, 1, '2018-07-12 13:28:02', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (418, 1, '2018-07-12 13:40:13', '172.29.11.196', 1, 'Normal');
INSERT INTO `user_login` VALUES (419, 1, '2018-07-12 13:47:58', '169.254.70.163', 1, 'Normal');
INSERT INTO `user_login` VALUES (420, 1, '2018-07-12 14:00:48', '169.254.70.163', 1, 'Normal');
INSERT INTO `user_login` VALUES (421, 1, '2018-07-12 14:03:18', '169.254.70.163', 1, 'Normal');
INSERT INTO `user_login` VALUES (422, 1, '2018-07-12 14:05:30', '169.254.70.163', 1, 'Normal');
INSERT INTO `user_login` VALUES (423, 1, '2018-07-12 14:22:52', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (424, 1, '2018-07-12 14:29:05', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (425, 1, '2018-07-12 14:34:30', '172.29.11.196', 1, 'Normal');
INSERT INTO `user_login` VALUES (426, 1, '2018-07-12 14:48:18', '169.254.70.163', 1, 'Normal');
INSERT INTO `user_login` VALUES (427, 1, '2018-07-12 14:50:54', '169.254.70.163', 1, 'Normal');
INSERT INTO `user_login` VALUES (428, 1, '2018-07-12 14:53:59', '169.254.70.163', 1, 'Normal');
INSERT INTO `user_login` VALUES (429, 1, '2018-07-12 14:54:04', '172.29.11.196', 1, 'Normal');
INSERT INTO `user_login` VALUES (430, 1, '2018-07-12 15:14:53', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (431, 1, '2018-07-12 15:26:35', '172.29.11.196', 1, 'Normal');
INSERT INTO `user_login` VALUES (432, 1, '2018-07-12 15:32:50', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (433, 1, '2018-07-12 15:43:03', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (434, 1, '2018-07-12 15:46:08', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (435, 1, '2018-07-12 15:48:22', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (436, 1, '2018-07-12 15:49:43', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (437, 1, '2018-07-12 15:54:46', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (438, 1, '2018-07-12 15:58:16', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (439, 1, '2018-07-12 16:06:13', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (440, 1, '2018-07-12 16:08:54', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (441, 1, '2018-07-12 16:17:58', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (442, 1, '2018-07-12 16:19:48', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (443, 1, '2018-07-12 16:22:30', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (444, 1, '2018-07-12 16:23:13', '172.29.11.196', 1, 'Normal');
INSERT INTO `user_login` VALUES (445, 1, '2018-07-12 16:23:55', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (446, 1, '2018-07-12 16:33:49', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (447, 1, '2018-07-12 16:34:30', '172.29.11.196', 1, 'Normal');
INSERT INTO `user_login` VALUES (448, 1, '2018-07-12 16:36:45', '172.29.11.196', 1, 'Normal');
INSERT INTO `user_login` VALUES (449, 1, '2018-07-12 16:43:00', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (450, 1, '2018-07-12 16:43:23', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (451, 1, '2018-07-12 16:44:03', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (452, 1, '2018-07-12 16:45:00', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (453, 1, '2018-07-12 16:57:07', '172.29.11.196', 1, 'Normal');
INSERT INTO `user_login` VALUES (454, 1, '2018-07-12 16:59:27', '172.29.11.196', 1, 'Normal');
INSERT INTO `user_login` VALUES (455, 1, '2018-07-12 17:04:06', '172.29.11.196', 1, 'Normal');
INSERT INTO `user_login` VALUES (456, 1, '2018-07-12 17:05:21', '172.29.11.196', 1, 'Normal');
INSERT INTO `user_login` VALUES (457, 1, '2018-07-12 17:12:37', '172.29.11.196', 1, 'Normal');
INSERT INTO `user_login` VALUES (458, 1, '2018-07-12 17:16:26', '172.29.11.196', 1, 'Normal');
INSERT INTO `user_login` VALUES (459, 1, '2018-07-12 17:18:35', '169.254.70.163', 1, 'Normal');
INSERT INTO `user_login` VALUES (460, 1, '2018-07-12 17:18:26', '172.29.11.196', 1, 'Normal');
INSERT INTO `user_login` VALUES (461, 1, '2018-07-12 17:24:56', '172.29.11.196', 1, 'Normal');
INSERT INTO `user_login` VALUES (462, 1, '2018-07-12 17:28:41', '172.29.11.196', 1, 'Normal');
INSERT INTO `user_login` VALUES (463, 1, '2018-07-12 17:32:38', '172.29.11.196', 1, 'Normal');
INSERT INTO `user_login` VALUES (464, 1, '2018-07-12 17:33:09', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (465, 1, '2018-07-12 17:36:11', '169.254.70.163', 1, 'Normal');
INSERT INTO `user_login` VALUES (466, 1, '2018-07-12 17:38:04', '169.254.70.163', 1, 'Normal');
INSERT INTO `user_login` VALUES (467, 1, '2018-07-12 17:37:55', '172.29.11.196', 1, 'Normal');
INSERT INTO `user_login` VALUES (468, 1, '2018-07-12 17:46:35', '172.29.11.196', 1, 'Normal');
INSERT INTO `user_login` VALUES (469, 1, '2018-07-12 17:47:32', '169.254.70.163', 1, 'Normal');
INSERT INTO `user_login` VALUES (470, 1, '2018-07-12 17:51:17', '169.254.70.163', 1, 'Normal');
INSERT INTO `user_login` VALUES (471, 1, '2018-07-12 17:52:10', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (472, 1, '2018-07-12 17:52:32', '169.254.70.163', 1, 'Normal');
INSERT INTO `user_login` VALUES (473, 1, '2018-07-12 18:04:17', '169.254.70.163', 1, 'Normal');
INSERT INTO `user_login` VALUES (474, 1, '2018-07-12 18:15:12', '169.254.70.163', 1, 'Normal');
INSERT INTO `user_login` VALUES (475, 1, '2018-07-12 18:20:58', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (476, 1, '2018-07-12 18:29:31', '169.254.70.163', 1, 'Normal');
INSERT INTO `user_login` VALUES (477, 1, '2018-07-12 18:30:35', '169.254.70.163', 1, 'Normal');
INSERT INTO `user_login` VALUES (478, 1, '2018-07-12 18:31:35', '169.254.70.163', 1, 'Normal');
INSERT INTO `user_login` VALUES (479, 1, '2018-07-12 18:32:33', '169.254.70.163', 1, 'Normal');
INSERT INTO `user_login` VALUES (480, 1, '2018-07-12 18:42:44', '169.254.70.163', 1, 'Normal');
INSERT INTO `user_login` VALUES (481, 1, '2018-07-12 18:49:18', '169.254.70.163', 1, 'Normal');
INSERT INTO `user_login` VALUES (482, 1, '2018-07-12 18:49:10', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (483, 1, '2018-07-12 19:00:48', '172.29.11.191', 1, 'Normal');
INSERT INTO `user_login` VALUES (484, 1, '2018-07-12 19:08:33', '172.29.11.196', 1, 'Normal');
INSERT INTO `user_login` VALUES (485, 1, '2018-07-12 19:08:54', '172.29.11.191', 1, 'Normal');
INSERT INTO `user_login` VALUES (486, 1, '2018-07-12 19:24:38', '172.29.11.196', 1, 'Normal');
INSERT INTO `user_login` VALUES (487, 1, '2018-07-12 19:25:58', '172.29.11.196', 1, 'Normal');
INSERT INTO `user_login` VALUES (488, 1, '2018-07-12 19:29:03', '172.29.11.196', 1, 'Normal');
INSERT INTO `user_login` VALUES (489, 1, '2018-07-12 19:33:23', '172.29.11.196', 1, 'Normal');
INSERT INTO `user_login` VALUES (490, 1, '2018-07-12 19:38:20', '172.29.11.196', 1, 'Normal');
INSERT INTO `user_login` VALUES (491, 1, '2018-07-12 19:41:31', '172.29.11.196', 1, 'Normal');
INSERT INTO `user_login` VALUES (492, 1, '2018-07-12 19:44:01', '172.29.11.196', 1, 'Normal');
INSERT INTO `user_login` VALUES (493, 1, '2018-07-12 19:54:06', '192.168.137.119', 1, 'Normal');
INSERT INTO `user_login` VALUES (494, 1, '2018-07-12 20:09:43', '172.29.11.196', 1, 'Normal');
INSERT INTO `user_login` VALUES (495, 1, '2018-07-12 20:41:52', '172.29.11.191', 1, 'Normal');
INSERT INTO `user_login` VALUES (496, 1, '2018-07-12 20:44:48', '172.29.11.191', 1, 'Normal');
INSERT INTO `user_login` VALUES (497, 1, '2018-07-12 20:47:30', '172.29.11.191', 1, 'Normal');
INSERT INTO `user_login` VALUES (498, 1, '2018-07-12 21:46:12', '172.29.11.196', 1, 'Normal');
INSERT INTO `user_login` VALUES (499, 1, '2018-07-12 21:48:03', '192.168.137.119', 1, 'Normal');
INSERT INTO `user_login` VALUES (500, 1, '2018-07-12 21:53:09', '192.168.137.119', 1, 'Normal');
INSERT INTO `user_login` VALUES (501, 1, '2018-07-12 21:55:01', '192.168.137.119', 1, 'Normal');
INSERT INTO `user_login` VALUES (502, 1, '2018-07-12 21:59:42', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (503, 1, '2018-07-12 22:06:41', '172.29.11.196', 1, 'Normal');
INSERT INTO `user_login` VALUES (504, 1, '2018-07-12 22:06:54', '192.168.137.119', 1, 'Normal');
INSERT INTO `user_login` VALUES (505, 1, '2018-07-12 22:09:36', '172.29.11.196', 1, 'Normal');
INSERT INTO `user_login` VALUES (506, 1, '2018-07-12 22:21:34', '172.29.11.196', 1, 'Normal');
INSERT INTO `user_login` VALUES (507, 1, '2018-07-12 22:56:26', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (508, 1, '2018-07-12 23:07:59', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (509, 1, '2018-07-12 23:14:30', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (510, 1, '2018-07-12 23:21:11', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (511, 1, '2018-07-12 23:25:02', '192.168.78.1', 1, 'Normal');
INSERT INTO `user_login` VALUES (512, 1, '2018-07-12 23:38:16', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (513, 1, '2018-07-12 23:41:52', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (514, 1, '2018-07-12 23:49:16', '169.254.118.17', 1, 'Normal');
INSERT INTO `user_login` VALUES (515, 1, '2018-07-12 23:51:49', '169.254.118.17', 1, 'Normal');
INSERT INTO `user_login` VALUES (516, 1, '2018-07-13 00:00:42', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (517, 1, '2018-07-13 00:16:16', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (518, 1, '2018-07-13 00:19:13', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (519, 1, '2018-07-13 00:21:34', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (520, 1, '2018-07-13 00:24:09', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (521, 1, '2018-07-13 00:25:49', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (522, 1, '2018-07-13 00:27:32', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (523, 1, '2018-07-13 00:31:42', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (524, 1, '2018-07-13 00:34:16', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (525, 1, '2018-07-13 00:37:08', '169.254.118.17', 1, 'Normal');
INSERT INTO `user_login` VALUES (526, 1, '2018-07-13 00:37:13', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (527, 1, '2018-07-13 00:40:04', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (528, 1, '2018-07-13 00:45:56', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (529, 1, '2018-07-13 00:48:26', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (530, 1, '2018-07-13 00:59:43', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (531, 1, '2018-07-13 01:00:39', '192.168.78.1', 1, 'Normal');
INSERT INTO `user_login` VALUES (532, 1, '2018-07-13 01:01:44', '169.254.118.17', 1, 'Normal');
INSERT INTO `user_login` VALUES (533, 1, '2018-07-13 01:02:40', '169.254.118.17', 1, 'Normal');
INSERT INTO `user_login` VALUES (534, 1, '2018-07-13 01:14:47', '169.254.118.17', 1, 'Normal');
INSERT INTO `user_login` VALUES (535, 1, '2018-07-13 01:39:51', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (536, 1, '2018-07-13 01:42:36', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (537, 1, '2018-07-13 02:08:10', '169.254.118.17', 1, 'Normal');
INSERT INTO `user_login` VALUES (538, 1, '2018-07-13 02:40:03', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (539, 1, '2018-07-13 02:43:49', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (540, 1, '2018-07-13 02:44:45', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (541, 1, '2018-07-13 02:45:33', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (542, 1, '2018-07-13 02:46:49', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (543, 1, '2018-07-13 02:50:00', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (544, 1, '2018-07-13 03:10:11', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (545, 1, '2018-07-13 03:23:28', '117.136.86.135', 1, 'Normal');
INSERT INTO `user_login` VALUES (546, 1, '2018-07-13 03:24:53', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (547, 1, '2018-07-13 04:10:37', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (548, 54, '2018-07-13 04:15:11', '117.136.86.132', 1, 'Normal');
INSERT INTO `user_login` VALUES (549, 1, '2018-07-13 04:18:39', '117.136.86.135', 1, 'Normal');
INSERT INTO `user_login` VALUES (550, 54, '2018-07-13 04:20:34', '117.136.86.135', 1, 'Normal');
INSERT INTO `user_login` VALUES (551, 54, '2018-07-13 04:26:07', '117.136.86.132', 1, 'Normal');
INSERT INTO `user_login` VALUES (552, 52, '2018-07-13 04:26:27', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (553, 1, '2018-07-13 04:30:48', '117.136.86.135', 1, 'Normal');
INSERT INTO `user_login` VALUES (554, 54, '2018-07-13 04:32:53', '117.136.86.132', 1, 'Normal');
INSERT INTO `user_login` VALUES (555, 54, '2018-07-13 04:45:43', '117.136.86.132', 1, 'Normal');
INSERT INTO `user_login` VALUES (556, 52, '2018-07-13 04:52:40', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (557, 1, '2018-07-13 04:55:30', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (558, 1, '2018-07-13 04:55:41', '117.136.86.132', 1, 'Normal');
INSERT INTO `user_login` VALUES (559, 1, '2018-07-13 05:00:48', '117.136.86.135', 1, 'Normal');
INSERT INTO `user_login` VALUES (560, 1, '2018-07-13 05:08:29', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (561, 1, '2018-07-13 05:10:09', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (562, 1, '2018-07-13 05:15:09', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (563, 1, '2018-07-13 05:17:15', '117.136.86.132', 1, 'Normal');
INSERT INTO `user_login` VALUES (564, 1, '2018-07-13 05:31:22', '117.136.86.132', 1, 'Normal');
INSERT INTO `user_login` VALUES (565, 1, '2018-07-13 05:41:14', '117.136.86.132', 1, 'Normal');
INSERT INTO `user_login` VALUES (566, 1, '2018-07-13 06:05:55', '192.168.78.1', 1, 'Normal');
INSERT INTO `user_login` VALUES (567, 54, '2018-07-13 06:14:01', '117.136.86.132', 1, 'Normal');
INSERT INTO `user_login` VALUES (568, 1, '2018-07-13 06:14:30', '117.136.86.132', 1, 'Normal');
INSERT INTO `user_login` VALUES (569, 1, '2018-07-13 06:23:14', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (570, 1, '2018-07-13 06:23:28', '117.136.86.132', 1, 'Normal');
INSERT INTO `user_login` VALUES (571, 1, '2018-07-13 06:23:39', '117.136.86.132', 1, 'Normal');
INSERT INTO `user_login` VALUES (572, 1, '2018-07-13 06:24:01', '117.136.86.135', 1, 'Normal');
INSERT INTO `user_login` VALUES (573, 54, '2018-07-13 06:24:03', '117.136.86.132', 1, 'Normal');
INSERT INTO `user_login` VALUES (574, 1, '2018-07-13 06:46:11', '192.168.78.1', 1, 'Normal');
INSERT INTO `user_login` VALUES (575, 1, '2018-07-13 06:59:53', '117.136.86.135', 1, 'Normal');
INSERT INTO `user_login` VALUES (576, 1, '2018-07-13 07:02:36', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (577, 1, '2018-07-13 07:42:58', '169.254.118.17', 1, 'Normal');
INSERT INTO `user_login` VALUES (578, 1, '2018-07-13 07:56:42', '169.254.118.17', 1, 'Normal');
INSERT INTO `user_login` VALUES (579, 1, '2018-07-13 08:02:01', '172.29.11.196', 1, 'Normal');
INSERT INTO `user_login` VALUES (580, 1, '2018-07-13 08:26:53', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (581, 1, '2018-07-13 08:28:35', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (582, 1, '2018-07-13 08:30:46', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (583, 1, '2018-07-13 08:40:58', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (584, 1, '2018-07-13 08:42:00', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (585, 1, '2018-07-13 08:52:55', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (586, 1, '2018-07-13 08:54:20', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (587, 1, '2018-07-13 08:56:37', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (588, 1, '2018-07-13 09:01:34', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (589, 1, '2018-07-13 09:05:31', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (590, 1, '2018-07-13 09:14:00', '172.29.11.193', 1, 'Normal');
INSERT INTO `user_login` VALUES (591, 1, '2018-07-13 09:34:59', '172.29.11.193', 1, 'Normal');
INSERT INTO `user_login` VALUES (592, 1, '2018-07-13 09:45:42', '192.168.43.124', 1, 'Normal');
INSERT INTO `user_login` VALUES (593, 1, '2018-07-13 10:14:54', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (594, 1, '2018-07-13 10:49:03', '172.29.11.196', 1, 'Normal');
INSERT INTO `user_login` VALUES (595, 1, '2018-07-13 10:51:25', '172.29.11.196', 1, 'Normal');
INSERT INTO `user_login` VALUES (596, 1, '2018-07-13 11:38:19', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (597, 1, '2018-07-13 11:38:19', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (598, 1, '2018-07-13 11:53:01', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (599, 1, '2018-07-13 11:56:52', '172.29.11.192', 1, 'Normal');
INSERT INTO `user_login` VALUES (600, 1, '2018-07-13 12:06:40', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (601, 1, '2018-07-13 12:15:50', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (602, 1, '2018-07-13 12:47:34', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (603, 1, '2018-07-13 12:52:30', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (604, 1, '2018-07-13 12:52:46', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (605, 1, '2018-07-13 12:52:55', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (606, 1, '2018-07-13 13:36:52', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (607, 1, '2018-07-13 13:41:12', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (608, 1, '2018-07-13 13:46:11', '172.29.11.195', 1, 'Normal');
INSERT INTO `user_login` VALUES (609, 1, '2018-07-13 13:47:57', '113.200.245.41', 1, 'Normal');
INSERT INTO `user_login` VALUES (610, 1, '2018-07-13 14:40:54', '172.29.11.209', 1, 'Normal');
INSERT INTO `user_login` VALUES (611, 1, '2018-07-13 16:26:36', '117.136.50.205', 1, 'Normal');

-- ----------------------------
-- Table structure for user_test
-- ----------------------------
DROP TABLE IF EXISTS `user_test`;
CREATE TABLE `user_test`  (
  `userName` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `passWord` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_test
-- ----------------------------
INSERT INTO `user_test` VALUES ('sinror', '123456');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `UserId` int(20) NOT NULL AUTO_INCREMENT,
  `LoginName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `LoginPwd` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `UserName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `UserSex` int(4) NULL DEFAULT NULL,
  `UserEmail` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `UserPhone` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `UserStatus` int(4) NULL DEFAULT NULL,
  `UserFlag` int(4) NULL DEFAULT NULL,
  `CreateTime` datetime(0) NULL DEFAULT NULL,
  `LastIP` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `LastTime` datetime(0) NULL DEFAULT NULL,
  `PayPwd` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Cookieid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`UserId`) USING BTREE,
  INDEX `UserId`(`UserId`) USING BTREE,
  INDEX `UserId_2`(`UserId`) USING BTREE,
  INDEX `UserId_3`(`UserId`) USING BTREE,
  INDEX `UserId_4`(`UserId`) USING BTREE,
  INDEX `UserId_5`(`UserId`) USING BTREE,
  INDEX `UserId_6`(`UserId`) USING BTREE,
  INDEX `UserId_7`(`UserId`) USING BTREE,
  INDEX `UserId_8`(`UserId`) USING BTREE,
  INDEX `UserId_9`(`UserId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, '456789', '4QrcOUm6Wau+VuBX8g+IPg==', '456789', 1, '9687637@qq.com', '10987654321', 1, 1, '2018-06-21 15:10:14', '172.29.11.194', '2018-06-28 13:09:03', '4QrcOUm6Wau+VuBX8g+IPg==', 'a91b4c000b56471498eb791a977eb0d6', 'test');
INSERT INTO `users` VALUES (2, '4a41fc', 'joTy7RgQidhd8rL7+T57gw==', '4a41fc', 0, 'jq534u5l@ask.com', '15908462223', 1, 1, '2018-06-21 00:00:00', '47.95.119.102', '2018-06-21 00:00:00', 'joTy7RgQidhd8rL7+T57gw==', NULL, 'adb8020233ca479b83ede809a5a727e0');
INSERT INTO `users` VALUES (3, '420d68', 'B13hwCBS/u0v8aJXNqkEZA==', '420d68', 0, 'tedy546l@3721.net', '13700208482', 1, 1, '2018-06-21 00:00:00', '47.95.119.102', '2018-06-21 00:00:00', 'B13hwCBS/u0v8aJXNqkEZA==', NULL, '05bcb206df304fc1acaaeb0e2d8a729b');
INSERT INTO `users` VALUES (4, '3aa691', 'aUf5Surk6YbjgdmphZP3fg==', '3aa691', 0, '64lts3z@qq.com', '15506905623', 1, 1, '2018-06-21 00:00:00', '47.95.119.102', '2018-06-21 00:00:00', 'aUf5Surk6YbjgdmphZP3fg==', NULL, '7bb656bf477747edb79eae0cf5bc0f84');
INSERT INTO `users` VALUES (5, '4f8f93', 'xEpZjwTQ6pvui2dhMlMg7Q==', '4f8f93', 0, '5963sol4@googlemail.com', '13400128160', 1, 1, '2018-06-21 00:00:00', '47.95.119.102', '2018-06-21 00:00:00', 'xEpZjwTQ6pvui2dhMlMg7Q==', NULL, 'ec321be65eda4be4aacfc147d1cce444');
INSERT INTO `users` VALUES (6, '8833e0', 'YbqpPXAL7aeMQeG5wJU2uw==', '8833e0', 0, '51y1go@yeah.net', '15804646388', 1, 1, '2018-06-21 00:00:00', '47.95.119.102', '2018-06-21 00:00:00', 'YbqpPXAL7aeMQeG5wJU2uw==', NULL, '4865e6ff187e45daba1461ef12f3cead');
INSERT INTO `users` VALUES (7, 'fbe023', 'U/+sGm0MPja1x5y/xoAIAw==', 'fbe023', 0, 'y4u88ckb@sina.com', '13307913715', 1, 1, '2018-06-21 00:00:00', '47.95.119.102', '2018-06-21 00:00:00', 'U/+sGm0MPja1x5y/xoAIAw==', NULL, '9003194dd4ad4645847034120c9d5b28');
INSERT INTO `users` VALUES (8, '51e693', 'as0Q/NXsHTilnL5xpHPnHg==', '51e693', 0, '049z7n6@yahoo.com.cn', '15100161023', 1, 1, '2018-06-21 00:00:00', '47.95.119.102', '2018-06-21 00:00:00', 'as0Q/NXsHTilnL5xpHPnHg==', NULL, 'b9f8f4b75e73467b940df4df83edd80a');
INSERT INTO `users` VALUES (9, 'a6da52', 'rLoBe6sA5zYzvdQL/92sIg==', 'a6da52', 0, 'twtcite8@126.com', '13708825708', 1, 1, '2018-06-21 00:00:00', '47.95.119.102', '2018-06-21 00:00:00', 'rLoBe6sA5zYzvdQL/92sIg==', NULL, '2b26bf9dd0504f71b4781165f8060e86');
INSERT INTO `users` VALUES (10, '6684d4', 'La8PgzcmvrgCN+MxfKOI2w==', '6684d4', 0, '68ednom@263.net', '15003424208', 1, 1, '2018-06-21 00:00:00', '47.95.119.102', '2018-06-21 00:00:00', 'La8PgzcmvrgCN+MxfKOI2w==', NULL, '18f3c6073f964d6c846942e9f7a7f6c1');
INSERT INTO `users` VALUES (11, 'f37cb2', 'Ic1CRWtfyf2LSbhjR8a8Yw==', 'f37cb2', 0, 'a0smqyrlh@263.net', '15208696453', 1, 1, '2018-06-21 00:00:00', '47.95.119.102', '2018-06-21 00:00:00', 'Ic1CRWtfyf2LSbhjR8a8Yw==', NULL, 'dfd4d3f264104435988fa182162b6fa4');
INSERT INTO `users` VALUES (12, '9a0eb9', 'Ah4jIqKMeAw+5gXvfCis7g==', '9a0eb9', 0, '7icwl7eqv@sina.com', '13707125056', 1, 1, '2018-06-21 00:00:00', '192.168.2.197', '2018-06-22 21:09:07', 'Ah4jIqKMeAw+5gXvfCis7g==', '72cb2cd34fff412ba28c5a3577426b63', '17018b5693f949cc91f6b87f770cb91b');
INSERT INTO `users` VALUES (13, '91cac6', 'YDI+pZTQ9ziA1CmH19Ucjg==', '91cac6', 0, 'b5lvlb0f8@263.net', '13006565056', 1, 1, '2018-06-21 00:00:00', '47.95.119.102', '2018-06-21 00:00:00', 'YDI+pZTQ9ziA1CmH19Ucjg==', NULL, 'ac8bc9caf7f44a2ab967c37f15918740');
INSERT INTO `users` VALUES (14, '1093bd', '9gFv9C1q8ddF4EERmvwb6Q==', '1093bd', 0, 'k21ba2s@126.com', '15006692807', 1, 1, '2018-06-21 00:00:00', '47.95.119.102', '2018-06-21 00:00:00', '9gFv9C1q8ddF4EERmvwb6Q==', NULL, 'd99a7dfdb1a3431583f73c5cf7c6d787');
INSERT INTO `users` VALUES (15, '96121a', '3r/u5Dxrc3XCSvqOgxWXoA==', '96121a', 0, '6eba2fkg@sohu.com', '13608376287', 1, 1, '2018-06-21 00:00:00', '192.168.2.197', '2018-06-22 21:06:43', '3r/u5Dxrc3XCSvqOgxWXoA==', '7c15ff3c751340fc81de1370a1c1dfe7', '4c11fc5389614056b0c20249644c0d09');
INSERT INTO `users` VALUES (16, 'dbbf97', 'EeZ0BVJth6FPWp5CBQp27Q==', 'dbbf97', 0, 'n7s6l4@0355.net', '15005807648', 1, 1, '2018-06-21 00:00:00', '47.95.119.102', '2018-06-21 00:00:00', 'EeZ0BVJth6FPWp5CBQp27Q==', NULL, '106dfc524c3d494e97fbed1b4726fa4d');
INSERT INTO `users` VALUES (17, '1fcec4', 'LJYeZ3KR60sXLlETBTWClw==', '1fcec4', 0, 'k4num1b0@gmail.com', '13501503652', 1, 1, '2018-06-21 00:00:00', '47.95.119.102', '2018-06-21 00:00:00', 'LJYeZ3KR60sXLlETBTWClw==', NULL, 'b791d894fb2048a680e9a5024dcdaedc');
INSERT INTO `users` VALUES (18, 'eef0d9', '6kbiePgHGOUzDxccRKdwHA==', 'eef0d9', 0, 'vivbddzj@qq.com', '15901827980', 1, 1, '2018-06-21 00:00:00', '47.95.119.102', '2018-06-21 00:00:00', '6kbiePgHGOUzDxccRKdwHA==', NULL, 'cf42523cbb8243358d3c77c933622e85');
INSERT INTO `users` VALUES (19, '3741b8', 'xGelvv4efuQA7Ga1xfKS3w==', '3741b8', 0, 'erxsxg@msn.com', '15007674079', 1, 1, '2018-06-21 00:00:00', '47.95.119.102', '2018-06-21 00:00:00', 'xGelvv4efuQA7Ga1xfKS3w==', NULL, 'abc71095dc9a4df7aa2e73a184e04d71');
INSERT INTO `users` VALUES (20, '4ee56a', 'OPEvTrRJYrd0rGjjID8UUQ==', '4ee56a', 0, '19tym4@yahoo.com.cn', '13601212315', 1, 1, '2018-06-21 00:00:00', '47.95.119.102', '2018-06-21 00:00:00', 'OPEvTrRJYrd0rGjjID8UUQ==', NULL, '449ff5288aaf41b6aac5487ecee2ac0b');
INSERT INTO `users` VALUES (21, '5fe40e', 'EZqfzRlv6lg/Nu8D/bIXkA==', '5fe40e', 0, 'pucjuqobx@yahoo.com.cn', '15500515919', 1, 1, '2018-06-21 00:00:00', '47.95.119.102', '2018-06-21 00:00:00', 'EZqfzRlv6lg/Nu8D/bIXkA==', NULL, 'a01cae7a6ea14fb9910c2ee08ce2cf97');
INSERT INTO `users` VALUES (22, '4b4c5b', 'HDX2UBP0+xD7xy49kSVShg==', '4b4c5b', 0, '13tx3en3@yahoo.com.cn', '15104860674', 1, 1, '2018-06-21 00:00:00', '47.95.119.102', '2018-06-21 00:00:00', 'HDX2UBP0+xD7xy49kSVShg==', NULL, '6da79ea2ab2f4533909bcecb6f42e14c');
INSERT INTO `users` VALUES (23, '073169', 'Uu25ckpih8E6i3Mrj3gZAg==', '073169', 0, 'nq38jguf@msn.com', '15700766280', 1, 1, '2018-06-21 00:00:00', '47.95.119.102', '2018-06-21 00:00:00', 'Uu25ckpih8E6i3Mrj3gZAg==', NULL, '41d1efb66dda4bfb8cc20f63dfe833be');
INSERT INTO `users` VALUES (24, 'fd4842', 'Kl74RI7GBThrEWYtF/y6YA==', 'fd4842', 0, '1pekyre@126.com', '13907591918', 1, 1, '2018-06-21 00:00:00', '47.95.119.102', '2018-06-21 00:00:00', 'Kl74RI7GBThrEWYtF/y6YA==', NULL, 'e259b6cecf1e4922b5e0899ab1f2a72b');
INSERT INTO `users` VALUES (25, 'dff353', 'GIQ5QrD3vAzKAT8SmEHCyg==', 'dff353', 0, 'porwc1s@live.com', '13907283304', 1, 1, '2018-06-21 00:00:00', '47.95.119.102', '2018-06-21 00:00:00', 'GIQ5QrD3vAzKAT8SmEHCyg==', NULL, '3ef0c826499e470e86490d2bfb7cc761');
INSERT INTO `users` VALUES (26, 'fe3a40', 'UvOXCWReqmwLF/prRu7gDw==', 'fe3a40', 0, 'f5vbjo2@hotmail.com', '15807440913', 1, 1, '2018-06-21 00:00:00', '47.95.119.102', '2018-06-21 00:00:00', 'UvOXCWReqmwLF/prRu7gDw==', NULL, 'e0961ec31886489b9446d9a61fb33bbc');
INSERT INTO `users` VALUES (27, 'a61692', '+Msf+nIhctbhNyNuvPOQcQ==', 'a61692', 0, 'y56u4jz0p@live.com', '15302013794', 1, 1, '2018-06-21 00:00:00', '47.95.119.102', '2018-06-21 00:00:00', '+Msf+nIhctbhNyNuvPOQcQ==', NULL, '71520f4faab449f4992146ff3cc7282a');
INSERT INTO `users` VALUES (28, 'cadfd4', 'bYuN2IMwOJZKM6eOoC+BlA==', 'cadfd4', 0, 'l94bj72ja@googlemail.com', '15600211713', 1, 1, '2018-06-21 00:00:00', '47.95.119.102', '2018-06-21 00:00:00', 'bYuN2IMwOJZKM6eOoC+BlA==', NULL, 'd350cf479e144c0f84736f163a43f889');
INSERT INTO `users` VALUES (29, '5f2308', 'z0RqrIaf5BVCH7y8GQ6dUg==', '5f2308', 0, '1qzse1p@yahoo.com', '15501716264', 1, 1, '2018-06-21 00:00:00', '47.95.119.102', '2018-06-21 00:00:00', 'z0RqrIaf5BVCH7y8GQ6dUg==', NULL, '76554b08d8d4401d975f4f041edb6200');
INSERT INTO `users` VALUES (30, '7124bf', 'Bx/vLUKj5jzbu9pq1fJsPw==', '7124bf', 0, 'fkblseyxw@yeah.net', '13300170189', 1, 1, '2018-06-21 00:00:00', '47.95.119.102', '2018-06-21 00:00:00', 'Bx/vLUKj5jzbu9pq1fJsPw==', NULL, '389c6b1e4a7241ceb3421c0b48f20ad3');
INSERT INTO `users` VALUES (31, '03085b', '/yOUMXMtiMSxKso+Cr1AVg==', '03085b', 0, '6awe9qhcg@163.com', '13902435799', 1, 1, '2018-06-21 00:00:00', '47.95.119.102', '2018-06-21 00:00:00', '/yOUMXMtiMSxKso+Cr1AVg==', NULL, 'e93eff3a59f8439499347bdc5e0b405e');
INSERT INTO `users` VALUES (32, '801144', 'KqYnDywso/v98rsWBenR5A==', '801144', 0, 'r4qoeqj@gmail.com', '13003688260', 1, 1, '2018-06-21 00:00:00', '47.95.119.102', '2018-06-21 00:00:00', 'KqYnDywso/v98rsWBenR5A==', NULL, 'd7f2b856bfb14f32893a83cc90a3f74c');
INSERT INTO `users` VALUES (33, 'f0835f', 'TQvuz/b6S1GM8EZxKcnwBQ==', 'f0835f', 0, 'jq8ctqp23@263.net', '13005848405', 1, 1, '2018-06-21 00:00:00', '47.95.119.102', '2018-06-21 00:00:00', 'TQvuz/b6S1GM8EZxKcnwBQ==', NULL, '1f8df1c81337447d9982c616eada76a9');
INSERT INTO `users` VALUES (34, '6dee3c', 'tVc9DKSKPt7GyIgstkMuiw==', '6dee3c', 0, 'ydtkos@126.com', '13105912465', 1, 1, '2018-06-21 00:00:00', '47.95.119.102', '2018-06-21 00:00:00', 'tVc9DKSKPt7GyIgstkMuiw==', NULL, 'aea68d5729a041cf9f6f5b0e96b50be9');
INSERT INTO `users` VALUES (35, '69b593', 'Jr8J/a9cBvE/kI7bbFgO6Q==', '69b593', 0, 'nzw80iarp@163.net', '15602300686', 1, 1, '2018-06-21 00:00:00', '47.95.119.102', '2018-06-21 00:00:00', 'Jr8J/a9cBvE/kI7bbFgO6Q==', NULL, 'a3baf3fc5dc249b485ebe85e3291a782');
INSERT INTO `users` VALUES (36, 'f19720', 'SN8ew2OorGSC4i12EDCtSw==', 'f19720', 0, 'cr07grph@aol.com', '15103354394', 1, 1, '2018-06-21 00:00:00', '47.95.119.102', '2018-06-21 00:00:00', 'SN8ew2OorGSC4i12EDCtSw==', NULL, '435e2f969ec3472cbb807f0945bbcf4c');
INSERT INTO `users` VALUES (37, 'ed9fe1', 'WxmQcrd3pzuemF/V7Vk5lw==', 'ed9fe1', 0, 'q97deg@0355.net', '15504878029', 1, 1, '2018-06-21 00:00:00', '47.95.119.102', '2018-06-21 00:00:00', 'WxmQcrd3pzuemF/V7Vk5lw==', NULL, '05fbe63a1f4e4975997697c3b0ef207b');
INSERT INTO `users` VALUES (38, '91fd20', 'DdvJojGKKhLDmNwrgTRXXg==', '91fd20', 0, '7t40aem@0355.net', '15206237281', 1, 1, '2018-06-21 00:00:00', '47.95.119.102', '2018-06-21 00:00:00', 'DdvJojGKKhLDmNwrgTRXXg==', NULL, '0a3c7b43a01b4438896f4fe3bfe446a9');
INSERT INTO `users` VALUES (39, '337bb4', 'nC275XR1nfW+QTr5bWHDIQ==', '337bb4', 0, 'prqwpb@126.com', '15701290893', 1, 1, '2018-06-21 00:00:00', '47.95.119.102', '2018-06-21 00:00:00', 'nC275XR1nfW+QTr5bWHDIQ==', NULL, 'fbef89b50f394f6b94b551aa3dc29cfe');
INSERT INTO `users` VALUES (40, '8ff667', 'EXzY1+SeLMuWet21UsFd9g==', '8ff667', 0, '6ul6or@163.com', '15103155614', 1, 1, '2018-06-21 00:00:00', '47.95.119.102', '2018-06-21 00:00:00', 'EXzY1+SeLMuWet21UsFd9g==', NULL, '5693a3dfb33b4fc1ad2fe7bc0d0196b5');
INSERT INTO `users` VALUES (41, 'b1c677', 'ln3elyiVu7UBogi58vqOGA==', 'b1c677', 0, 'wjacj2n3k@126.com', '13603741526', 1, 1, '2018-06-21 00:00:00', '47.95.119.102', '2018-06-21 00:00:00', 'ln3elyiVu7UBogi58vqOGA==', NULL, '994b4ecc6b4b4c989757075977f6e3c0');
INSERT INTO `users` VALUES (42, '541ea4', 'M7lHBdAbmnnpwrY0F1ol5g==', '541ea4', 0, 'r47gpf@163.net', '15101547822', 1, 1, '2018-06-21 00:00:00', '47.95.119.102', '2018-06-21 00:00:00', 'M7lHBdAbmnnpwrY0F1ol5g==', NULL, '153c642595a7489aadb73cdfa0d84446');
INSERT INTO `users` VALUES (43, '755e16', 'DQ078KTaHMmqKN+lZjr2vA==', '755e16', 0, 'vlodh2@163.com', '15202892566', 1, 1, '2018-06-21 00:00:00', '47.95.119.102', '2018-06-21 00:00:00', 'DQ078KTaHMmqKN+lZjr2vA==', NULL, 'c968d20a97554fe683b3fb962e08966f');
INSERT INTO `users` VALUES (44, '98b308', 'nTxv6G9UiVxefGKsHuxA0g==', '98b308', 0, '41ojb7@126.com', '13003378961', 1, 1, '2018-06-21 00:00:00', '47.95.119.102', '2018-06-21 00:00:00', 'nTxv6G9UiVxefGKsHuxA0g==', NULL, 'f1ceffc97edf427a90ec45435d79789b');
INSERT INTO `users` VALUES (45, '98dacb', 'ecbiSNH22r6G4U/U/yn7Xg==', '98dacb', 0, '109gvy1g2@ask.com', '13801639086', 1, 1, '2018-06-21 00:00:00', '47.95.119.102', '2018-06-21 00:00:00', 'ecbiSNH22r6G4U/U/yn7Xg==', NULL, '32fdf7fb27b04e3c8da989b1c4276e5c');
INSERT INTO `users` VALUES (46, 'a9a99a', '09k/dpKPBHenYLScBIajBg==', 'a9a99a', 0, 'vh653xl@googlemail.com', '13706823066', 1, 1, '2018-06-21 00:00:00', '47.95.119.102', '2018-06-21 00:00:00', '09k/dpKPBHenYLScBIajBg==', NULL, 'f77105b6f6624cbaaac7ce7c533c7e11');
INSERT INTO `users` VALUES (47, 'ea3fcb', 'cIteVAOzNUVKSfwiWG9Orw==', 'ea3fcb', 0, 'ky05cy814@aol.com', '13405986947', 1, 1, '2018-06-21 00:00:00', '47.95.119.102', '2018-06-21 00:00:00', 'cIteVAOzNUVKSfwiWG9Orw==', NULL, '63950705becb49dda44c8e2ad9f3c19d');
INSERT INTO `users` VALUES (48, '566c77', 'QScADzPV0yVpCq/07KVWlA==', '566c77', 0, 'i9tjegfhu@sina.com', '13000546485', 1, 1, '2018-06-21 00:00:00', '47.95.119.102', '2018-06-21 00:00:00', 'QScADzPV0yVpCq/07KVWlA==', NULL, '946611822690406199d85e9689de5cce');
INSERT INTO `users` VALUES (49, '2cc4c8', 'bF6LImDscqqOibaX/O8lLA==', '2cc4c8', 0, 'windzoc3@live.com', '15306991334', 1, 1, '2018-06-21 00:00:00', '47.95.119.102', '2018-06-21 00:00:00', 'bF6LImDscqqOibaX/O8lLA==', NULL, '5db8fc3318204fb79b124161bd3f766f');
INSERT INTO `users` VALUES (50, 'c0942b', 'Y/7ua0L6gH1sLTOczyessA==', 'c0942b', 0, 'lgokse@msn.com', '15707477531', 1, 1, '2018-06-21 00:00:00', '47.95.119.102', '2018-06-21 00:00:00', 'Y/7ua0L6gH1sLTOczyessA==', NULL, '4ce8da30c13941aa8b2634108b4800a6');

SET FOREIGN_KEY_CHECKS = 1;
