/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80200
 Source Host           : localhost:3306
 Source Schema         : qihang-erp-weishop

 Target Server Type    : MySQL
 Target Server Version : 80200
 File Encoding         : 65001

 Date: 05/04/2024 00:02:15
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for erp_goods
-- ----------------------------
DROP TABLE IF EXISTS `erp_goods`;
CREATE TABLE `erp_goods`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '商品名称',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '商品图片地址',
  `number` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '商品编号',
  `unit_name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '单位名称',
  `category_id` int NULL DEFAULT 0 COMMENT '商品分类ID',
  `bar_code` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '条码',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '状态1销售中2已下架',
  `length` float NOT NULL DEFAULT 0 COMMENT '衣长/裙长/裤长',
  `height` float NOT NULL DEFAULT 0 COMMENT '高度/袖长',
  `width` float NOT NULL DEFAULT 0 COMMENT '宽度/胸阔(围)',
  `width1` float NOT NULL DEFAULT 0 COMMENT '肩阔',
  `width2` float NOT NULL DEFAULT 0 COMMENT '腰阔',
  `width3` float NOT NULL DEFAULT 0 COMMENT '臀阔',
  `weight` float NOT NULL DEFAULT 0 COMMENT '重量',
  `disable` tinyint(1) NULL DEFAULT 0 COMMENT '0启用   1禁用',
  `period` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '保质期',
  `pur_price` decimal(8, 2) NULL DEFAULT 0.00 COMMENT '预计采购价格',
  `whole_price` decimal(8, 2) NULL DEFAULT 0.00 COMMENT '建议批发价',
  `retail_price` decimal(8, 2) NULL DEFAULT 0.00 COMMENT '建议零售价',
  `unit_cost` decimal(8, 2) NULL DEFAULT NULL COMMENT '单位成本',
  `supplier_id` int NULL DEFAULT 0 COMMENT '供应商id',
  `brand_id` int NULL DEFAULT 0 COMMENT '品牌id',
  `attr1` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '属性1：季节',
  `attr2` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '属性2：分类',
  `attr3` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '属性3：风格',
  `attr4` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '属性4：年份',
  `attr5` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '属性5：面料',
  `link_url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '外链url',
  `low_qty` int NULL DEFAULT 0 COMMENT '最低库存（预警）',
  `high_qty` int NULL DEFAULT 0 COMMENT '最高库存（预警）',
  `create_by` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `number`(`number`) USING BTREE,
  INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 75 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '商品库存管理' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of erp_goods
-- ----------------------------
INSERT INTO `erp_goods` VALUES (9, 'HN8026牛仔短裤', 'http://img.huayiyungou.com/niuzaiduanku/HN8026.jpg', 'HN8026', '', 27, '', '80-130斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 19.00, 0.00, 29.00, NULL, 26, 0, '夏季', '', '', '2021', '牛仔布', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (10, 'HN858牛仔短裤', 'http://img.huayiyungou.com/niuzaiduanku/HN858.jpg', 'HN858', '', 27, '', '建议80-125斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 20.00, 0.00, 39.00, NULL, 26, 0, '夏季', '', '', '2022', '牛仔布', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (11, 'HN608牛仔短裤', 'http://img.huayiyungou.com/niuzaiduanku/HN608.jpg', 'HN608', '', 27, '', '建议80-120斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 19.00, 0.00, 29.00, NULL, 26, 0, '夏季', '', '', '2022', '牛仔布', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (12, 'HN270牛仔短裤', 'http://img.huayiyungou.com/niuzaiduanku/HN270.jpg', 'HN270', '', 27, '', '建议80-125斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 19.00, 0.00, 29.00, NULL, 26, 0, '夏季', '', '', '2022', '牛仔布', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (13, '681直筒拖地牛仔裤夏款', 'https://cbu01.alicdn.com/img/ibank/O1CN01qHvRwi2FOyGhhNR4M_!!2208857268871-0-cib.jpg', 'HN681', '', 28, '', '建议80-125斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 29.00, 0.00, 49.00, NULL, 26, 0, '夏季', '', '', '2022', '牛仔布', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (14, '708灰色牛仔短裤', 'https://cbu01.alicdn.com/img/ibank/O1CN011fcYH72FOyGTbaYJO_!!2208857268871-0-cib.jpg', 'HN708', '', 27, '', '建议80-125斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 24.00, 0.00, 40.00, NULL, 26, 0, '夏季', '', '', '2022', '牛仔布', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (15, '661高腰复古牛仔裤', 'https://cbu01.alicdn.com/img/ibank/O1CN01rXl5A92FOyBlp8KB2_!!2208857268871-0-cib.jpg', 'HN661', '', 28, '', '建议80-125斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 29.00, 0.00, 49.00, NULL, 26, 0, '夏季', '', '', '2021', '牛仔布', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (16, '678高腰直筒开叉拖地牛仔裤', 'https://cbu01.alicdn.com/img/ibank/O1CN01adpyGm2FOyBpyqNJ5_!!2208857268871-0-cib.jpg', 'HN678', '', 28, '', '建议80-125斤', 1, 97, 0, 0, 0, 66, 93.5, 0, 0, '', 29.00, 0.00, 59.00, NULL, 26, 0, '夏季', '', '', '2021', '牛仔布', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (17, '抽绳修身短袖T恤', 'http://img.huayikeji.com/gm40mpqfc53scyxjou2epwqhjqbqp8cv', '0320220801', '', 3, '', '建议80-125斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 12.00, 0.00, 12.00, NULL, 28, 0, '夏季', '', '', '2022', '棉', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (18, 'HN0014前开叉微喇叭牛仔裤', 'https://cbu01.alicdn.com/img/ibank/O1CN01kdGpaF2FOyFHMzMrK_!!2208857268871-0-cib.jpg', 'HN0014', '', 29, '', '建议80-125斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 32.00, 0.00, 39.00, NULL, 26, 0, '夏季', '', '', '2022', '牛仔布', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (19, 'HN025紧身毛边小脚铅笔裤', 'http://img.huayikeji.com/eih7qcgodthjs3v6oiwl49s0ngs6opjs', 'HN025', '', 31, '', '建议80-125斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 29.00, 0.00, 39.00, NULL, 26, 0, '春秋季', '', '', '2022', '牛仔布', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (20, 'HN029小脚九分铅笔裤弹力紧身', 'https://cbu01.alicdn.com/img/ibank/O1CN01ptoyH92FOyCPES9l4_!!2208857268871-0-cib.jpg', 'HN029', '', 31, '', '建议80-125斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 29.00, 0.00, 39.00, NULL, 26, 0, '春秋季', '', '', '2022', '牛仔布', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (21, 'HN0015裤脚开叉牛仔裤', 'https://cbu01.alicdn.com/img/ibank/O1CN01xcpzIU2FOyBl2dOl6_!!2208857268871-0-cib.jpg', 'HN015', '', 29, '', '建议80-125斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 30.00, 0.00, 39.00, NULL, 26, 0, '夏季', '', '', '2022', '牛仔布', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (22, 'HN0020九分铅笔小脚裤子', 'https://cbu01.alicdn.com/img/ibank/O1CN01hMirkD2FOyA8dH5gg_!!2208857268871-0-cib.jpg', 'HN020', '', 31, '', '建议80-125斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 29.00, 0.00, 39.00, NULL, 26, 0, '夏季', '', '', '2022', '牛仔布', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (23, 'HN0024小脚裤弹力九分铅笔牛仔裤', 'https://cbu01.alicdn.com/img/ibank/O1CN01pMo6Nw2FOyH7h62R2_!!2208857268871-0-cib.jpg', 'HN024', '', 31, '', '建议80-125斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 29.00, 0.00, 39.00, NULL, 26, 0, '春秋季', '', '', '2022', '牛仔布', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (24, 'HN0012竖条纹阔腿牛仔裤', 'https://cbu01.alicdn.com/img/ibank/O1CN01fNcjNj2FOyFLNrkHL_!!2208857268871-0-cib.jpg', 'HN012', '', 28, '', '建议80-125斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 31.00, 0.00, 49.00, NULL, 26, 0, '春秋季', '', '', '2022', '牛仔布', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (25, 'OXN691中腰薄款破洞七分小脚裤', 'http://img.huayikeji.com/76yre98jhd5mgvkhgvqcdlktdthof0z0', 'OXN0691', '', 28, '', '建议80-125斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 42.00, 0.00, 79.00, NULL, 29, 0, '春秋季', '裤子', '瑞丽', '2022', '牛仔布', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (26, 'HN0630松紧腰九分老爹哈伦裤', 'https://cbu01.alicdn.com/img/ibank/O1CN01emC4ZW2FOyCPWDBJP_!!2208857268871-0-cib.jpg', 'HN0630', '', 30, '', '建议80-125斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 29.00, 0.00, 39.00, NULL, 26, 0, '春秋季', '', '', '2022', '牛仔布', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (27, 'HN023小直筒牛仔裤', 'https://cbu01.alicdn.com/img/ibank/O1CN01oWnpE72FOyGvFmm8P_!!2208857268871-0-cib.jpg', 'HN023', '', 31, '', '建议80-125斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 29.00, 0.00, 39.00, NULL, 26, 0, '春秋季', '', '', '2022', '牛仔布', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (28, 'HN670高腰哈伦牛仔裤', 'https://cbu01.alicdn.com/img/ibank/2020/033/066/21020660330_900849200.jpg', 'HN670', '', 30, '', '建议80-125斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 29.00, 0.00, 39.00, NULL, 26, 0, '春秋季', '', '', '2022', '牛仔布', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (29, 'HNP182弹力紧身贴标牛仔短裤女ins', 'https://cbu01.alicdn.com/img/ibank/O1CN01O6JSPt2FOyGJVlNSt_!!2208857268871-0-cib.jpg', 'HNP182', '', 27, '', '建议80-125斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 21.00, 0.00, 29.00, NULL, 26, 0, '夏季', '', '', '2022', '牛仔布', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (30, 'HN672微喇牛仔裤女', 'https://cbu01.alicdn.com/img/ibank/O1CN01O9k7a72FOyF40eXdL_!!2208857268871-0-cib.jpg', 'HN672', '', 29, '', '建议80-125斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 29.00, 0.00, 39.00, NULL, 26, 0, '春秋季', '', '', '2022', '牛仔布', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (31, 'HN801九分哈伦萝卜老爹裤', 'https://cbu01.alicdn.com/img/ibank/2020/995/164/22330461599_900849200.jpg', 'HN801', '', 30, '', '建议80-125斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 28.00, 0.00, 39.00, NULL, 26, 0, '春秋季', '', '', '2022', '牛仔布', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (32, 'HN697双扣后松紧高腰宽松萝卜牛仔裤', 'https://cbu01.alicdn.com/img/ibank/O1CN011EipyD2FOyGlVSb58_!!2208857268871-0-cib.jpg', 'HN697', '', 30, '', '建议80-125斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 29.00, 0.00, 39.00, NULL, 26, 0, '春秋季', '', '', '2022', '牛仔布', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (33, 'HN0801高腰弹力直筒哈伦老爹萝卜裤', 'https://cbu01.alicdn.com/img/ibank/O1CN01veMucP2FOyCvGWh20_!!2208857268871-0-cib.jpg', 'HN0801', '', 30, '', '建议80-125斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 25.00, 0.00, 39.00, NULL, 26, 0, '不分季节', '', '', '2022', '牛仔布', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (34, 'HN621高腰直筒宽松破洞牛仔裤', 'https://cbu01.alicdn.com/img/ibank/O1CN01DMb5Yv2FOyEph4yYB_!!2208857268871-0-cib.jpg', 'HN621', '', 28, '', '建议80-125斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 29.00, 0.00, 39.00, NULL, 26, 0, '不分季节', '', '', '2022', '牛仔布', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (35, 'HN662高腰直筒牛仔裤女泫雅bf风小雏菊绣花', 'https://cbu01.alicdn.com/img/ibank/2020/732/346/22406643237_900849200.jpg', 'HN662', '', 28, '', '建议80-125斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 29.00, 0.00, 39.00, NULL, 26, 0, '不分季节', '', '', '2022', '牛仔布', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (36, 'HN692松紧高腰宽松直筒萝卜哈伦九分裤', 'https://cbu01.alicdn.com/img/ibank/O1CN01FDRxMp2FOyDOB1iTE_!!2208857268871-0-cib.jpg', 'HN692', '', 30, '', '建议80-125斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 29.00, 0.00, 39.00, NULL, 26, 0, '不分季节', '', '', '2022', '牛仔布', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (37, 'HN106高腰弹力紧身小脚九分铅笔裤', 'https://cbu01.alicdn.com/img/ibank/O1CN01xwzF522FOyCIOnqKM_!!2208857268871-0-cib.jpg', 'HN106', '', 31, '', '建议80-125斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 31.00, 0.00, 39.00, NULL, 26, 0, '不分季节', '', '', '2022', '牛仔布', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (38, 'HN663高腰阔腿裤宽松直筒爱心刺绣拖地长裤潮', 'https://cbu01.alicdn.com/img/ibank/O1CN01ARPAL32FOyAcs8t96_!!2208857268871-0-cib.jpg', 'HN663', '', 28, '', '建议80-125斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 30.00, 0.00, 39.00, NULL, 26, 0, '不分季节', '', '', '2022', '牛仔布', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (39, 'HN022高腰弹力九分小脚铅笔裤', 'https://cbu01.alicdn.com/img/ibank/O1CN018JTrMY2FOyA4kgljs_!!2208857268871-0-cib.jpg', 'HN022', '', 31, '', '建议80-125斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 30.00, 0.00, 39.00, NULL, 26, 0, '不分季节', '', '', '2022', '牛仔布', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (40, 'HN668高腰哈伦松紧腰小个子束脚老爹九分裤子', 'https://cbu01.alicdn.com/img/ibank/O1CN01lUqTwm2FOy9rP6Jod_!!2208857268871-0-cib.jpg', 'HN668', '', 30, '', '建议80-125斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 30.00, 0.00, 39.00, NULL, 26, 0, '不分季节', '', '', '2022', '牛仔布', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (41, 'HN667可调节高腰直筒牛仔裤女', 'https://cbu01.alicdn.com/img/ibank/O1CN01J3Quqe2FOyH5tjtiy_!!2208857268871-0-cib.jpg', 'HN667', '', 28, '', '建议80-125斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 29.00, 0.00, 39.00, NULL, 26, 0, '不分季节', '', '', '2022', '牛仔布', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (42, 'HN222高腰宽松阔腿牛仔裤', 'https://cbu01.alicdn.com/img/ibank/2020/176/214/19868412671_900849200.jpg', 'HN222', '', 28, '', '建议80-125斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 30.00, 0.00, 39.00, NULL, 26, 0, '不分季节', '', '', '2022', '牛仔布', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (43, 'HN694半松紧高腰牛仔裤老爹裤', 'https://cbu01.alicdn.com/img/ibank/2020/842/093/21808390248_900849200.jpg', 'HN694', '', 30, '', '建议80-125斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 29.00, 0.00, 39.00, NULL, 26, 0, '不分季节', '', '', '2022', '牛仔布', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (44, 'HN660高腰直筒牛仔裤女腰围可调春秋季', 'https://cbu01.alicdn.com/img/ibank/O1CN01DIe7Es2FOyCYIZFWt_!!2208857268871-0-cib.jpg', 'HN660', '', 28, '', '建议80-125斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 31.00, 0.00, 39.00, NULL, 26, 0, '不分季节', '', '', '2022', '牛仔布', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (45, 'HN686牛仔裤女宽松vibe风', 'https://cbu01.alicdn.com/img/ibank/O1CN01E4FgMe2FOyCf3EUih_!!2208857268871-0-cib.jpg', 'HN686', '', 28, '', '建议80-125斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 31.00, 0.00, 39.00, NULL, 26, 0, '不分季节', '', '', '2022', '牛仔布', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (46, 'HN021豹纹加绒牛仔裤女铅笔小脚裤', 'https://cbu01.alicdn.com/img/ibank/O1CN01Nak9ys2FOyE9IvLef_!!2208857268871-0-cib.jpg', 'HN021', '', 31, '', '建议80-125斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 31.00, 0.00, 39.00, NULL, 26, 0, '冬季', '', '', '2022', '牛仔布', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (47, 'JKL805高腰阔腿牛仔裤女直筒宽松', 'https://cbu01.alicdn.com/img/ibank/O1CN01KtZqKM2Arl3fk5KtK_!!2513908257-0-cib.jpg', 'JKL805', '', 28, '', '建议80-145斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 40.00, 5.00, 69.00, NULL, 31, 0, '不分季节', '', '', '2022', '棉85% 聚酯纤维6.5% 再生纤维素纤维8.5%', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (48, 'HN180高腰牛仔裤女秋季九分老爹裤', 'https://cbu01.alicdn.com/img/ibank/O1CN01D94VIz2FOyCZdAhrE_!!2208857268871-0-cib.jpg', 'HN180', '', 30, '', '建议80-125斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 29.00, 0.00, 39.00, NULL, 26, 0, '春秋季', '', '', '2022', '牛仔布', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (49, 'JKL9098哈伦裤', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9098.jpg', 'JKL9098', '', 30, '', '有弹力', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 48.00, 0.00, 69.00, NULL, 31, 0, '不分季节', '', '', '2022', '棉72% 聚酯纤维25.5% 氨纶2.5%', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (53, 'JKL9907小直筒烟管裤', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9907.jpg', 'JKL9907', '', 32, '', '建议80-140斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 40.00, 0.00, 89.00, NULL, 31, 0, '不分季节', '微弹', '高腰', '2022', '棉72% 聚酯纤维25.5% 氨纶2.5%', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (54, 'JKL6010松紧腰哈伦裤', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6010.jpg', 'JKL6010', '', 30, '', '建议80-145斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 43.00, 0.00, 69.00, NULL, 31, 0, '不分季节', '无弹', '高腰', '2022', '70%棉     20%聚酯纤维     10%再生纤维素纤维', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (55, 'JKL906阔腿牛仔裤', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL906.jpg', 'JKL906', '', 28, '', '建议80-145斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 42.00, 0.00, 69.00, NULL, 31, 0, '不分季节', '无弹', '高腰', '2022', '棉85% 聚酯纤维6.5% 再生纤维素纤维8.5%', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (56, 'JKL9977喇叭牛仔裤锁边', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/9977.jpg', 'JKL9977', '', 29, '', '建议70-145斤', 1, 99, 0, 0, 103, 58, 75, 0, 0, '', 50.00, 0.00, 89.00, NULL, 31, 0, '不分季节', '中弹', '高腰', '2022', '72%棉 25.5%聚酯纤维 2.5%氨纶', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (59, 'JKL9978喇叭牛仔裤毛边', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/9978.jpg', 'JKL9978', '', 29, '', '建议70-145斤', 1, 99, 0, 0, 103, 58, 75, 0, 0, '', 50.00, 0.00, 89.00, NULL, 31, 0, '不分季节', '中弹', '高腰', '2022', '72%棉 25.5%聚酯纤维 2.5%氨纶', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (60, 'JKL9950高腰阔腿直筒牛仔裤', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9950_11.jpg', 'JKL9950', '', 28, '', '建议70-145斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 46.00, 0.00, 79.00, NULL, 31, 0, '不分季节', '中弹', '高腰', '2022', '72%棉 25.5%聚酯纤维 2.5%氨纶', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (61, 'JKL8990高腰阔腿牛仔裤', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL8990.jpg', 'JKL8990', '', 28, '', '建议80-145斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 43.00, 0.00, 79.00, NULL, 31, 0, '不分季节', '无弹', '高腰', '2022', '棉93.6% 粘纤4.7% 聚酯纤维1.7%', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (62, 'JKL9938牛仔微喇裤裤脚开叉', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9938_黑色.jpg', 'JKL9938', '', 29, '', '建议70-150斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 44.00, 0.00, 79.00, NULL, 31, 0, '不分季节', '高弹', '高腰', '2022', '72%棉 25.5%聚酯纤维 2.5%氨纶', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (63, 'JKL6001小脚牛仔裤', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_黑色.jpg', 'JKL6001', '', 31, '', '建议80-145斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 40.00, 0.00, 69.00, NULL, 31, 0, '不分季节', '中弹', '高腰', '2022', '棉：98% 氨纶：2%', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (64, 'JKL9909开叉微喇叭裤', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_黑色.jpg', 'JKL9909', '', 29, '', '建议80-145斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 50.00, 0.00, 89.00, NULL, 31, 0, '不分季节', '高弹', '高腰', '2022', '72%棉 25.5%聚酯纤维 2.5%氨纶', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (65, 'GZYYZ7277复古显瘦灯芯绒a字半身裙', 'https://cbu01.alicdn.com/img/ibank/O1CN01lfHUDo1p3HVme2o7Q_!!2214743335304-0-cib.jpg', 'GZYYZ7277', '', 8, '', '建议80-135斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 54.00, 0.00, 79.00, NULL, 32, 0, '不分季节', '无弹', '高腰', '2022', '棉，涤纶（聚酯纤维）', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (66, 'JKL1973复古蓝哈伦牛仔裤长裤', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1973_复古蓝.jpg', 'JKL1973', '', 30, '', '建议80-135斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 44.00, 0.00, 79.00, NULL, 31, 0, '不分季节', '无弹', '高腰', '2022', '棉85%再生纤维素纤维8.5%聚酯纤维6.5%', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (67, 'JKL1951阔腿长裤加长裤', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_深蓝色.jpg', 'JKL1951', '', 28, '', '建议80-135斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 42.00, 0.00, 79.00, NULL, 31, 0, '不分季节', '无弹', '高腰', '2022', '棉85%再生纤维素纤维8.5%聚酯纤维6.5%', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (68, 'JKL3112松紧腰束脚哈伦裤', 'https://cbu01.alicdn.com/img/ibank/O1CN01rCYlbl2Arl3CqVwkG_!!2513908257-0-cib.jpg', 'JKL3112', '', 30, '', '建议80-135斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 42.00, 0.00, 69.00, NULL, 31, 0, '春秋季', '无弹', '高腰', '2022', '72%棉 25.5%聚酯纤维 2.5%氨纶', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (69, 'KH9734微喇叭牛仔裤女开叉', 'https://gd1.alicdn.com/imgextra/i2/49616689/O1CN01NkZm6L1zHc5upnyRW_!!49616689.jpg_400x400.jpg', 'KH9734', '', 29, '', '建议80-135斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 39.00, 0.00, 69.00, NULL, 33, 0, '春秋季', '高弹', '高腰', '2022', '69%棉  29.5%聚酯纤维 1.5%氨纶', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (70, 'KH9826小脚牛仔裤女', 'https://gd3.alicdn.com/imgextra/i2/49616689/O1CN01j5qyuA1zHc63KaMAY_!!49616689.jpg_400x400.jpg', 'KH9826', '', 31, '', '建议80-135斤', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 40.00, 0.00, 79.00, NULL, 33, 0, '春秋季', '中弹', '高腰', '2022', '69%棉  29.5%聚酯纤维 1.5%氨纶', NULL, 0, 0, 'admin', '2023-12-29 15:55:39', 'admin', '2023-12-29 15:55:39');
INSERT INTO `erp_goods` VALUES (71, 'aaa', 'aaa', 'aaaaa', '', 2, '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, '0', 12.00, 0.00, 0.00, NULL, 33, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'admin', '2024-01-14 21:52:30', NULL, NULL);
INSERT INTO `erp_goods` VALUES (74, '测试测试', 'http://localhost:8080/preview/images/47', 'A0012D', '', 2, '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, '0', 12.00, 0.00, 0.00, NULL, 33, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'admin', '2024-01-16 10:34:33', NULL, NULL);

-- ----------------------------
-- Table structure for erp_goods_attribute
-- ----------------------------
DROP TABLE IF EXISTS `erp_goods_attribute`;
CREATE TABLE `erp_goods_attribute`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `goods_id` bigint NULL DEFAULT 0 COMMENT '商品id',
  `attribute_id` int NULL DEFAULT NULL COMMENT '属性id',
  `name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '属性名',
  `value` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '属性值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '商品属性表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of erp_goods_attribute
-- ----------------------------

-- ----------------------------
-- Table structure for erp_goods_attribute_config
-- ----------------------------
DROP TABLE IF EXISTS `erp_goods_attribute_config`;
CREATE TABLE `erp_goods_attribute_config`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `category_id` int NULL DEFAULT NULL COMMENT '分类id（0为所有共用）',
  `name` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '属性名',
  `value` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '属性值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '商品属性表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of erp_goods_attribute_config
-- ----------------------------
INSERT INTO `erp_goods_attribute_config` VALUES (1, 1, '年份', '2022,2023');
INSERT INTO `erp_goods_attribute_config` VALUES (2, 1, '季节', '春季,夏季,秋季,冬季');

-- ----------------------------
-- Table structure for erp_goods_brand
-- ----------------------------
DROP TABLE IF EXISTS `erp_goods_brand`;
CREATE TABLE `erp_goods_brand`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '品牌名',
  `status` int NULL DEFAULT NULL COMMENT '状态',
  `create_by` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of erp_goods_brand
-- ----------------------------
INSERT INTO `erp_goods_brand` VALUES (1, '梦小妮', 1, 'admin', '2023-12-29 13:44:29', 'admin', '2023-12-29 13:44:29');

-- ----------------------------
-- Table structure for erp_goods_category
-- ----------------------------
DROP TABLE IF EXISTS `erp_goods_category`;
CREATE TABLE `erp_goods_category`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `number` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '分类编码',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '分类名称',
  `remark` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `parent_id` int NULL DEFAULT NULL COMMENT '上架分类id',
  `path` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '分类路径',
  `sort` int NULL DEFAULT 0 COMMENT '排序值',
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '图片',
  `isDelete` tinyint(1) NULL DEFAULT 0 COMMENT '0正常  1删除',
  `create_by` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of erp_goods_category
-- ----------------------------
INSERT INTO `erp_goods_category` VALUES (1, 'NVZHUANG', '女装', NULL, 0, '0', 0, '', 0, 'admin', '2023-12-29 14:42:36', NULL, NULL);
INSERT INTO `erp_goods_category` VALUES (2, 'MAOYI', '毛衣/针织衫', NULL, 1, '0|1', 0, NULL, 0, 'admin', '2023-12-29 14:42:36', NULL, NULL);
INSERT INTO `erp_goods_category` VALUES (3, 'TXU', 'T恤', NULL, 1, '0|1', 0, NULL, 0, 'admin', '2023-12-29 14:42:36', NULL, NULL);
INSERT INTO `erp_goods_category` VALUES (4, 'LIANYIQUN', '连衣裙', NULL, 1, '0|1', 0, NULL, 0, 'admin', '2023-12-29 14:42:36', NULL, NULL);
INSERT INTO `erp_goods_category` VALUES (5, 'XIUXIANKU', '休闲裤', NULL, 1, '0|1', 0, NULL, 0, 'admin', '2023-12-29 14:42:36', NULL, NULL);
INSERT INTO `erp_goods_category` VALUES (6, 'WAITAO', '外套', NULL, 1, '0|1', 0, NULL, 0, 'admin', '2023-12-29 14:42:36', NULL, NULL);
INSERT INTO `erp_goods_category` VALUES (7, 'ZHENZHIPJ', '内衣/背心', NULL, 1, '0|1', 0, NULL, 0, 'admin', '2023-12-29 14:42:36', NULL, NULL);
INSERT INTO `erp_goods_category` VALUES (8, 'SUOZHI', '半身裙', NULL, 1, '0|1', 0, NULL, 0, 'admin', '2023-12-29 14:42:36', NULL, NULL);
INSERT INTO `erp_goods_category` VALUES (9, NULL, '衬衫', NULL, 1, '0|1', 0, NULL, 0, 'admin', '2023-12-29 14:42:36', NULL, NULL);
INSERT INTO `erp_goods_category` VALUES (10, NULL, '箱包', NULL, 0, '0|1', 0, NULL, 0, 'admin', '2023-12-29 14:42:36', NULL, NULL);
INSERT INTO `erp_goods_category` VALUES (11, NULL, '双肩包', NULL, 10, '0|10', 0, NULL, 0, 'admin', '2023-12-29 14:42:36', NULL, NULL);
INSERT INTO `erp_goods_category` VALUES (12, NULL, '单肩包', NULL, 10, '0|10', 0, NULL, 0, 'admin', '2023-12-29 14:42:36', NULL, NULL);
INSERT INTO `erp_goods_category` VALUES (13, NULL, '套装', NULL, 1, '0|1', 0, NULL, 0, 'admin', '2023-12-29 14:42:36', NULL, NULL);
INSERT INTO `erp_goods_category` VALUES (14, NULL, '短裙', NULL, 10, '0|8', 0, NULL, 1, 'admin', '2023-12-29 14:42:36', NULL, NULL);
INSERT INTO `erp_goods_category` VALUES (15, NULL, '半身裙', NULL, 10, '0|8', 0, NULL, 1, 'admin', '2023-12-29 14:42:36', NULL, NULL);
INSERT INTO `erp_goods_category` VALUES (16, NULL, '连衣裙', NULL, 10, '0|1', 0, NULL, 1, 'admin', '2023-12-29 14:42:36', NULL, NULL);
INSERT INTO `erp_goods_category` VALUES (17, NULL, '针织裤', NULL, 10, '0|1', 0, NULL, 1, 'admin', '2023-12-29 14:42:36', NULL, NULL);
INSERT INTO `erp_goods_category` VALUES (18, NULL, '针织短裙', NULL, 10, '0|1', 0, NULL, 1, 'admin', '2023-12-29 14:42:36', NULL, NULL);
INSERT INTO `erp_goods_category` VALUES (19, NULL, '针织外套', NULL, 10, '0|1', 0, NULL, 1, 'admin', '2023-12-29 14:42:36', NULL, NULL);
INSERT INTO `erp_goods_category` VALUES (20, NULL, '针织背心', NULL, 10, '0|1', 0, NULL, 1, 'admin', '2023-12-29 14:42:36', NULL, NULL);
INSERT INTO `erp_goods_category` VALUES (21, NULL, 'T恤衫', NULL, 10, '0|8', 0, NULL, 1, 'admin', '2023-12-29 14:42:36', NULL, NULL);
INSERT INTO `erp_goods_category` VALUES (22, NULL, '梭织衬衫', NULL, 10, '0|8', 0, NULL, 1, 'admin', '2023-12-29 14:42:36', NULL, NULL);
INSERT INTO `erp_goods_category` VALUES (23, 'BAIHUO', '百货', NULL, 0, '0', 0, NULL, 0, 'admin', '2023-12-29 14:42:36', NULL, NULL);
INSERT INTO `erp_goods_category` VALUES (24, NULL, '调味调料', NULL, 23, '0|23', 0, NULL, 0, 'admin', '2023-12-29 14:42:36', NULL, NULL);
INSERT INTO `erp_goods_category` VALUES (25, NULL, '小百货', NULL, 23, '0|23', 0, NULL, 0, 'admin', '2023-12-29 14:42:36', NULL, NULL);
INSERT INTO `erp_goods_category` VALUES (26, 'NIUZAI', '牛仔裤', NULL, 1, '0|1|26', 0, NULL, 0, 'admin', '2023-12-29 14:42:36', NULL, NULL);
INSERT INTO `erp_goods_category` VALUES (27, NULL, '牛仔短裤', NULL, 26, '0|26', 0, NULL, 0, 'admin', '2023-12-29 14:42:36', NULL, NULL);
INSERT INTO `erp_goods_category` VALUES (28, NULL, '阔腿裤', NULL, 26, '0|26', 0, NULL, 0, 'admin', '2023-12-29 14:42:36', NULL, NULL);
INSERT INTO `erp_goods_category` VALUES (29, NULL, '喇叭裤', NULL, 26, '0|26', 0, NULL, 0, 'admin', '2023-12-29 14:42:36', NULL, NULL);
INSERT INTO `erp_goods_category` VALUES (30, NULL, '哈伦裤', '哈伦萝卜老爹裤', 26, '0|26', 0, NULL, 0, 'admin', '2023-12-29 14:42:36', NULL, NULL);
INSERT INTO `erp_goods_category` VALUES (31, NULL, '铅笔裤', '小脚裤、紧身裤、铅笔裤', 26, '0|26', 0, NULL, 0, 'admin', '2023-12-29 14:42:36', NULL, NULL);
INSERT INTO `erp_goods_category` VALUES (32, NULL, '直筒裤', '小直筒烟管裤', 26, '0|26', 0, NULL, 0, 'admin', '2023-12-29 14:42:36', NULL, NULL);
INSERT INTO `erp_goods_category` VALUES (33, NULL, '背带裤', '', 26, '0|26', 0, NULL, 0, 'admin', '2023-12-29 14:42:36', NULL, NULL);

-- ----------------------------
-- Table structure for erp_goods_category_attribute
-- ----------------------------
DROP TABLE IF EXISTS `erp_goods_category_attribute`;
CREATE TABLE `erp_goods_category_attribute`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `category_id` int NOT NULL,
  `type` int NOT NULL DEFAULT 0 COMMENT '类型：0属性1规格',
  `title` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '\'属性名\'',
  `code` char(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '固定值color颜色size尺码style款式',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 117 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of erp_goods_category_attribute
-- ----------------------------
INSERT INTO `erp_goods_category_attribute` VALUES (114, 1, 1, '颜色', 'color');
INSERT INTO `erp_goods_category_attribute` VALUES (115, 1, 1, '尺码', 'size');
INSERT INTO `erp_goods_category_attribute` VALUES (116, 1, 1, '款式', 'style');

-- ----------------------------
-- Table structure for erp_goods_category_attribute_value
-- ----------------------------
DROP TABLE IF EXISTS `erp_goods_category_attribute_value`;
CREATE TABLE `erp_goods_category_attribute_value`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键，属性值id',
  `category_attribute_id` int NULL DEFAULT NULL COMMENT '属性id',
  `value` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '属性值文本',
  `sku_code` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '生成SKU的编码',
  `orderNum` int NULL DEFAULT 0,
  `isDelete` int NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 424 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of erp_goods_category_attribute_value
-- ----------------------------
INSERT INTO `erp_goods_category_attribute_value` VALUES (308, 114, '黑色', '01', 999, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (309, 114, '米杏', '02', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (310, 114, '芒果黄', '03', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (311, 114, '中花灰', '04', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (312, 114, '浅杏', '05', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (313, 114, '中粉', '06', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (314, 114, '烟灰色', '07', 88, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (315, 114, '秋香绿', '08', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (316, 114, '花兰', '09', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (317, 114, '杏色', '10', 698, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (318, 114, '芥黄', '11', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (319, 114, '深蓝色', '12', 993, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (320, 114, '大红', '13', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (321, 114, '彩兰', '14', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (322, 114, '白色', '15', 99, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (323, 114, '花米驼', '16', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (324, 114, '粉红', '17', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (325, 114, '黄杏', '18', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (326, 114, '橙红', '19', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (327, 114, '木绿', '20', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (328, 114, '草绿', '21', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (329, 114, '早红', '22', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (330, 114, '咖啡', '23', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (331, 114, '灰色', '24', 99, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (332, 114, '浅绿', '25', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (333, 114, '大红色', '26', 99, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (334, 114, '桔色', '27', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (335, 114, '卡其', '28', 992, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (336, 114, '蓝灰色', '29', 996, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (337, 114, '湖蓝', '30', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (338, 114, '咖啡色', '31', 99, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (339, 114, '蓝绿', '32', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (340, 115, '均码', '00', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (341, 115, 'S', '01', 88, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (342, 115, 'M', '02', 87, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (343, 115, 'L', '03', 86, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (344, 115, 'XL', '04', 85, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (345, 115, '2XL', '05', 84, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (346, 115, '3XL', '06', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (347, 115, '4XL', '07', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (348, 115, '5XL', '08', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (349, 114, '雾霾蓝', '33', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (350, 114, '浅粉红', '34', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (351, 114, '蓝色', '35', 998, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (352, 114, '花色', '36', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (353, 114, '香槟色', '37', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (354, 114, '紫色', '38', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (355, 114, '砖红色', '39', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (356, 114, '复古蓝', '40', 995, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (357, 114, '烟灰', '41', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (358, 114, '橙黄', '42', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (359, 114, '黄色', '43', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (360, 114, '梅子色', '56', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (361, 114, '浅蓝色', '50', 994, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (362, 114, '宝蓝色', '44', 99, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (363, 114, '浅黄', '45', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (364, 114, '浅紫', '49', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (365, 114, '酒红', '57', 99, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (366, 114, '米白', '47', 99, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (367, 114, '复古蓝九分', '48', 88, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (368, 114, '卡灰', '51', 992, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (369, 114, '玫红', '52', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (370, 114, '彩蓝', '53', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (371, 114, '青蓝淡黄', '54', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (372, 114, '紫白', '55', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (373, 114, '碳灰', '58', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (374, 114, '深蓝色加绒', '59', 794, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (375, 114, '深紫色', '60', 99, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (376, 114, '橙色', '61', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (377, 114, '墨绿色', '62', 99, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (378, 114, '桃粉色', '63', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (379, 114, '蓝灰色九分', '64', 88, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (380, 114, '黑色九分', '65', 88, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (381, 114, '新洋米', '67', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (382, 114, '藏蓝色', '68', 99, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (383, 114, '深蓝九分', '69', 88, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (384, 114, '深蓝长款', '70', 88, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (385, 114, '米白色', '71', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (386, 114, '军绿色', '72', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (387, 114, '柠檬黄', '73', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (388, 114, '灰紫', '74', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (389, 114, '黑灰色', '75', 997, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (390, 114, '焦糖红', '76', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (391, 114, '酱紫', '78', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (392, 114, '红杏', '46', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (393, 114, '银灰', '79', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (394, 115, 'XS', '09', 89, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (395, 114, '无色', '00', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (396, 114, '条纹', '80', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (397, 114, '花色/彩色', '81', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (398, 114, '波点', '82', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (399, 114, '字母', '83', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (400, 114, '绿色', '84', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (401, 115, '25', '25', 69, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (402, 115, '26', '26', 68, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (403, 115, '27', '27', 67, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (404, 115, '28', '28', 66, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (405, 115, '29', '29', 65, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (406, 115, '30', '30', 64, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (407, 115, '31', '31', 63, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (408, 115, '32', '32', 62, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (409, 114, '黑色加绒', '101', 799, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (410, 114, '黑灰色加绒', '175', 798, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (411, 114, '蓝灰色加绒', '129', 797, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (412, 114, '复古蓝加绒', '140', 796, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (413, 114, '浅蓝色加绒', '150', 795, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (414, 116, '默认', NULL, 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (415, 116, '加长裤', 'JC', 66, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (416, 116, '长裤', 'CK', 68, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (417, 116, '九分', 'JF', 88, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (418, 116, '八分', 'BF', 86, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (419, 116, '九分加绒', 'JFR', 87, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (420, 116, '单裤', 'D', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (421, 116, '加绒', 'R', 0, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (422, 116, '长裤加绒', 'CR', 65, 0);
INSERT INTO `erp_goods_category_attribute_value` VALUES (423, 116, '加长裤加绒', 'JCR', 67, 0);

-- ----------------------------
-- Table structure for erp_goods_img
-- ----------------------------
DROP TABLE IF EXISTS `erp_goods_img`;
CREATE TABLE `erp_goods_img`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `goods_id` bigint NULL DEFAULT 0 COMMENT '商品Id',
  `type` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '类型',
  `url` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '图片url',
  `remark` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '图片说明',
  `sort` int NULL DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of erp_goods_img
-- ----------------------------

-- ----------------------------
-- Table structure for erp_goods_inventory
-- ----------------------------
DROP TABLE IF EXISTS `erp_goods_inventory`;
CREATE TABLE `erp_goods_inventory`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `goodsId` int NOT NULL COMMENT '商品id',
  `goodsNumber` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商品编码',
  `specId` int NOT NULL COMMENT '商品规格id',
  `specNumber` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '规格编码（唯一）',
  `currentQty` bigint NOT NULL DEFAULT 0 COMMENT '当前库存',
  `lockedQty` bigint NOT NULL DEFAULT 0 COMMENT '锁定库存',
  `isDelete` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0正常  1删除',
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `createBy` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `updateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `updateBy` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `specIdIndex`(`specId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '商品库存表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of erp_goods_inventory
-- ----------------------------
INSERT INTO `erp_goods_inventory` VALUES (6, 9, 'HN8026', 32, '2720210080260105', 8, 0, 0, '2024-01-16 14:51:50', 'admin', '2024-01-16 15:05:44', 'admin');

-- ----------------------------
-- Table structure for erp_goods_inventory_detail
-- ----------------------------
DROP TABLE IF EXISTS `erp_goods_inventory_detail`;
CREATE TABLE `erp_goods_inventory_detail`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `inventoryId` bigint NOT NULL COMMENT '商品库存id',
  `inQty` int NOT NULL DEFAULT 0 COMMENT '入库数量',
  `originQty` bigint NOT NULL COMMENT '入库前数量',
  `currentQty` bigint NOT NULL DEFAULT 0 COMMENT '当前库存数量',
  `purPrice` double NULL DEFAULT 0 COMMENT '采购价',
  `entryId` bigint NOT NULL COMMENT '入库单id',
  `entryItemId` bigint NOT NULL COMMENT '入库单itemId',
  `remark` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '备注',
  `specId` int NOT NULL COMMENT '规格id',
  `goodsId` int NOT NULL COMMENT '商品id',
  `inLocation` int NOT NULL COMMENT '入库仓位id',
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `createBy` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '商品库存明细表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of erp_goods_inventory_detail
-- ----------------------------
INSERT INTO `erp_goods_inventory_detail` VALUES (7, 6, 10, 0, 8, NULL, 8, 4, NULL, 32, 9, 20, '2024-01-16 14:51:50', 'admin');

-- ----------------------------
-- Table structure for erp_goods_spec
-- ----------------------------
DROP TABLE IF EXISTS `erp_goods_spec`;
CREATE TABLE `erp_goods_spec`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `goods_id` bigint NOT NULL COMMENT '商品id',
  `spec_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '规格名',
  `spec_num` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '规格编码',
  `color_id` int NULL DEFAULT 0 COMMENT '颜色id',
  `color_value` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '颜色值',
  `color_image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '颜色图片',
  `size_id` int NULL DEFAULT 0 COMMENT '尺码id',
  `size_value` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '尺码值',
  `style_id` int NULL DEFAULT 0 COMMENT '款式id',
  `style_value` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '款式值',
  `bar_code` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '库存条形码',
  `pur_price` decimal(8, 2) NULL DEFAULT 0.00 COMMENT '预计采购价',
  `whole_price` decimal(8, 2) NULL DEFAULT 0.00 COMMENT '建议批发价',
  `retail_price` decimal(8, 2) NULL DEFAULT 0.00 COMMENT '建议零售价',
  `unit_cost` decimal(8, 2) NULL DEFAULT 0.00 COMMENT '单位成本',
  `remark` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  `status` tinyint(1) NULL DEFAULT 1 COMMENT '状态',
  `low_qty` int NULL DEFAULT 0 COMMENT '最低库存（预警）',
  `high_qty` int NULL DEFAULT 0 COMMENT '最高库存（预警）',
  `disable` tinyint(1) NULL DEFAULT 0 COMMENT '0启用   1禁用',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id`(`id`) USING BTREE,
  INDEX `number`(`spec_num`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1372 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '商品规格库存管理' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of erp_goods_spec
-- ----------------------------
INSERT INTO `erp_goods_spec` VALUES (23, 9, '', '2720210080260001', 322, '白色', 'https://cbu01.alicdn.com/img/ibank/O1CN01eJxjQM2FOyB3IsiuU_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (24, 9, '', '2720210080260002', 322, '白色', 'https://cbu01.alicdn.com/img/ibank/O1CN01eJxjQM2FOyB3IsiuU_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (25, 9, '', '2720210080260003', 322, '白色', 'https://cbu01.alicdn.com/img/ibank/O1CN01eJxjQM2FOyB3IsiuU_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (26, 9, '', '2720210080260004', 322, '白色', 'https://cbu01.alicdn.com/img/ibank/O1CN01eJxjQM2FOyB3IsiuU_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (27, 9, '', '2720210080260005', 322, '白色', 'https://cbu01.alicdn.com/img/ibank/O1CN01eJxjQM2FOyB3IsiuU_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (28, 9, '', '2720210080260101', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01AfNgvA2FOyAvwXZxv_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (29, 9, '', '2720210080260102', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01AfNgvA2FOyAvwXZxv_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (30, 9, '', '2720210080260103', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01AfNgvA2FOyAvwXZxv_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (31, 9, '', '2720210080260104', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01AfNgvA2FOyAvwXZxv_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (32, 9, '', '2720210080260105', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01AfNgvA2FOyAvwXZxv_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (33, 9, '', '2720210080260201', 319, '深蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN016mr0RO2FOyB3ItCEP_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (34, 9, '', '2720210080260202', 319, '深蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN016mr0RO2FOyB3ItCEP_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (35, 9, '', '2720210080260203', 319, '深蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN016mr0RO2FOyB3ItCEP_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (36, 9, '', '2720210080260204', 319, '深蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN016mr0RO2FOyB3ItCEP_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (37, 9, '', '2720210080260205', 319, '深蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN016mr0RO2FOyB3ItCEP_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (38, 9, '', '2720210080260301', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01PHFmsX2FOyB14fPie_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (39, 9, '', '2720210080260302', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01PHFmsX2FOyB14fPie_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (40, 9, '', '2720210080260303', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01PHFmsX2FOyB14fPie_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (41, 9, '', '2720210080260304', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01PHFmsX2FOyB14fPie_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (42, 9, '', '2720210080260305', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01PHFmsX2FOyB14fPie_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (43, 10, '', '27202208580101', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01SJelLi2FOyFPEQgvg_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 20.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (44, 10, '', '27202208580102', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01SJelLi2FOyFPEQgvg_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 20.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (45, 10, '', '27202208580103', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01SJelLi2FOyFPEQgvg_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 20.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (46, 10, '', '27202208580104', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01SJelLi2FOyFPEQgvg_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 20.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (47, 10, '', '27202208580105', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01SJelLi2FOyFPEQgvg_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 20.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (48, 10, '', '27202208580201', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01AWoRY32FOyFNn0erQ_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 20.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (49, 10, '', '27202208580202', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01AWoRY32FOyFNn0erQ_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 20.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (50, 10, '', '27202208580203', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01AWoRY32FOyFNn0erQ_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 20.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (51, 10, '', '27202208580204', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01AWoRY32FOyFNn0erQ_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 20.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (52, 10, '', '27202208580205', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01AWoRY32FOyFNn0erQ_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 20.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (53, 10, '', '27202208580301', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01jpsOio2FOyFVLvlmx_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 20.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (54, 10, '', '27202208580302', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01jpsOio2FOyFVLvlmx_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 20.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (55, 10, '', '27202208580303', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01jpsOio2FOyFVLvlmx_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 20.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (56, 10, '', '27202208580304', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01jpsOio2FOyFVLvlmx_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 20.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (57, 10, '', '27202208580305', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01jpsOio2FOyFVLvlmx_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 20.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (58, 11, '', '27202206080101', 322, '白色', 'http://img.huayikeji.com/zggrr12gadsncs7q4ecdy2v47cj7g073', 341, 'S', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (59, 11, '', '27202206080102', 322, '白色', 'http://img.huayikeji.com/zggrr12gadsncs7q4ecdy2v47cj7g073', 342, 'M', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (60, 11, '', '27202206080103', 322, '白色', 'http://img.huayikeji.com/zggrr12gadsncs7q4ecdy2v47cj7g073', 343, 'L', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (61, 11, '', '27202206080104', 322, '白色', 'http://img.huayikeji.com/zggrr12gadsncs7q4ecdy2v47cj7g073', 344, 'XL', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (62, 11, '', '27202206080105', 322, '白色', 'http://img.huayikeji.com/zggrr12gadsncs7q4ecdy2v47cj7g073', 345, '2XL', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (63, 11, '', '27202206080201', 308, '黑色', 'http://img.huayikeji.com/jx2xgaui8rrw8ol4kazfgr0p7u3c3iqe', 341, 'S', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (64, 11, '', '27202206080202', 308, '黑色', 'http://img.huayikeji.com/jx2xgaui8rrw8ol4kazfgr0p7u3c3iqe', 342, 'M', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (65, 11, '', '27202206080203', 308, '黑色', 'http://img.huayikeji.com/jx2xgaui8rrw8ol4kazfgr0p7u3c3iqe', 343, 'L', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (66, 11, '', '27202206080204', 308, '黑色', 'http://img.huayikeji.com/jx2xgaui8rrw8ol4kazfgr0p7u3c3iqe', 344, 'XL', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (67, 11, '', '27202206080205', 308, '黑色', 'http://img.huayikeji.com/jx2xgaui8rrw8ol4kazfgr0p7u3c3iqe', 345, '2XL', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (68, 11, '', '27202206080301', 389, '黑灰色', 'http://img.huayikeji.com/8gfzlq5mtu373cl4snlbpr1tsdty6fkp', 341, 'S', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (69, 11, '', '27202206080302', 389, '黑灰色', 'http://img.huayikeji.com/8gfzlq5mtu373cl4snlbpr1tsdty6fkp', 342, 'M', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (70, 11, '', '27202206080303', 389, '黑灰色', 'http://img.huayikeji.com/8gfzlq5mtu373cl4snlbpr1tsdty6fkp', 343, 'L', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (71, 11, '', '27202206080304', 389, '黑灰色', 'http://img.huayikeji.com/8gfzlq5mtu373cl4snlbpr1tsdty6fkp', 344, 'XL', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (72, 11, '', '27202206080305', 389, '黑灰色', 'http://img.huayikeji.com/8gfzlq5mtu373cl4snlbpr1tsdty6fkp', 345, '2XL', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (73, 11, '', '27202206080401', 361, '浅蓝色', 'http://img.huayikeji.com/o91btx5iuz3qyl55u022m6zonzk7aykv', 341, 'S', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (74, 11, '', '27202206080402', 361, '浅蓝色', 'http://img.huayikeji.com/o91btx5iuz3qyl55u022m6zonzk7aykv', 342, 'M', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (75, 11, '', '27202206080403', 361, '浅蓝色', 'http://img.huayikeji.com/o91btx5iuz3qyl55u022m6zonzk7aykv', 343, 'L', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (76, 11, '', '27202206080404', 361, '浅蓝色', 'http://img.huayikeji.com/o91btx5iuz3qyl55u022m6zonzk7aykv', 344, 'XL', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (77, 11, '', '27202206080405', 361, '浅蓝色', 'http://img.huayikeji.com/o91btx5iuz3qyl55u022m6zonzk7aykv', 345, '2XL', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (78, 11, '', '27202206080501', 319, '深蓝色', 'http://img.huayikeji.com/j7xyuq39n4fc7sb84yctn47iqsce9hkw', 341, 'S', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (79, 11, '', '27202206080502', 319, '深蓝色', 'http://img.huayikeji.com/j7xyuq39n4fc7sb84yctn47iqsce9hkw', 342, 'M', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (80, 11, '', '27202206080503', 319, '深蓝色', 'http://img.huayikeji.com/j7xyuq39n4fc7sb84yctn47iqsce9hkw', 343, 'L', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (81, 11, '', '27202206080504', 319, '深蓝色', 'http://img.huayikeji.com/j7xyuq39n4fc7sb84yctn47iqsce9hkw', 344, 'XL', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (82, 11, '', '27202206080505', 319, '深蓝色', 'http://img.huayikeji.com/j7xyuq39n4fc7sb84yctn47iqsce9hkw', 345, '2XL', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (83, 12, '', '27202202700101', 308, '黑色', 'http://img.huayikeji.com/0wx2dy9e6yhrd2vy1y7lrr4e0bd1vvh3', 341, 'S', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (84, 12, '', '27202202700102', 308, '黑色', 'http://img.huayikeji.com/0wx2dy9e6yhrd2vy1y7lrr4e0bd1vvh3', 342, 'M', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (85, 12, '', '27202202700103', 308, '黑色', 'http://img.huayikeji.com/0wx2dy9e6yhrd2vy1y7lrr4e0bd1vvh3', 343, 'L', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (86, 12, '', '27202202700104', 308, '黑色', 'http://img.huayikeji.com/0wx2dy9e6yhrd2vy1y7lrr4e0bd1vvh3', 344, 'XL', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (87, 12, '', '27202202700105', 308, '黑色', 'http://img.huayikeji.com/0wx2dy9e6yhrd2vy1y7lrr4e0bd1vvh3', 345, '2XL', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (88, 13, '', '28202206810101', 356, '复古蓝', 'http://img.huayikeji.com/6xzfygyzbjppcn51wxfmuoaikp4p0o7w', 341, 'S', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (89, 13, '', '28202206810102', 356, '复古蓝', 'http://img.huayikeji.com/6xzfygyzbjppcn51wxfmuoaikp4p0o7w', 342, 'M', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (90, 13, '', '28202206810103', 356, '复古蓝', 'http://img.huayikeji.com/6xzfygyzbjppcn51wxfmuoaikp4p0o7w', 343, 'L', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (91, 13, '', '28202206810104', 356, '复古蓝', 'http://img.huayikeji.com/6xzfygyzbjppcn51wxfmuoaikp4p0o7w', 344, 'XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (92, 13, '', '28202206810105', 356, '复古蓝', 'http://img.huayikeji.com/6xzfygyzbjppcn51wxfmuoaikp4p0o7w', 345, '2XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (93, 13, '', '28202206810201', 361, '浅蓝色', 'http://img.huayikeji.com/eis9r0e4dnb7kis9qaia5xu4j9brkoof', 341, 'S', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (94, 13, '', '28202206810202', 361, '浅蓝色', 'http://img.huayikeji.com/eis9r0e4dnb7kis9qaia5xu4j9brkoof', 342, 'M', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (95, 13, '', '28202206810203', 361, '浅蓝色', 'http://img.huayikeji.com/eis9r0e4dnb7kis9qaia5xu4j9brkoof', 343, 'L', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (96, 13, '', '28202206810204', 361, '浅蓝色', 'http://img.huayikeji.com/eis9r0e4dnb7kis9qaia5xu4j9brkoof', 344, 'XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (97, 13, '', '28202206810205', 361, '浅蓝色', 'http://img.huayikeji.com/eis9r0e4dnb7kis9qaia5xu4j9brkoof', 345, '2XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (98, 13, '', '28202206810301', 389, '黑灰色', 'http://img.huayikeji.com/2nqlidwzpxb5x836krxpge56x2l8003p', 341, 'S', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (99, 13, '', '28202206810302', 389, '黑灰色', 'http://img.huayikeji.com/2nqlidwzpxb5x836krxpge56x2l8003p', 342, 'M', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (100, 13, '', '28202206810303', 389, '黑灰色', 'http://img.huayikeji.com/2nqlidwzpxb5x836krxpge56x2l8003p', 343, 'L', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (101, 13, '', '28202206810304', 389, '黑灰色', 'http://img.huayikeji.com/2nqlidwzpxb5x836krxpge56x2l8003p', 344, 'XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (102, 13, '', '28202206810305', 389, '黑灰色', 'http://img.huayikeji.com/2nqlidwzpxb5x836krxpge56x2l8003p', 345, '2XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (103, 14, '', '27202207080101', 0, '灰色', 'http://img.huayikeji.com/5ztnyd9ahc2g6xw2l05kmcmcpk2rx6vh', 341, 'S', 0, '', NULL, 24.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (104, 14, '', '27202207080102', 0, '灰色', 'http://img.huayikeji.com/5ztnyd9ahc2g6xw2l05kmcmcpk2rx6vh', 342, 'M', 0, '', NULL, 24.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (105, 14, '', '27202207080103', 0, '灰色', 'http://img.huayikeji.com/5ztnyd9ahc2g6xw2l05kmcmcpk2rx6vh', 343, 'L', 0, '', NULL, 24.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (106, 14, '', '27202207080104', 0, '灰色', 'http://img.huayikeji.com/5ztnyd9ahc2g6xw2l05kmcmcpk2rx6vh', 344, 'XL', 0, '', NULL, 24.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (107, 14, '', '27202207080105', 0, '灰色', 'http://img.huayikeji.com/5ztnyd9ahc2g6xw2l05kmcmcpk2rx6vh', 345, '2XL', 0, '', NULL, 24.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (108, 14, '', '27202207080201', 308, '黑色', 'http://img.huayikeji.com/wx72lmbomku46xjskbp8nrsj346wamnk', 341, 'S', 0, '', NULL, 24.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (109, 14, '', '27202207080202', 308, '黑色', 'http://img.huayikeji.com/wx72lmbomku46xjskbp8nrsj346wamnk', 342, 'M', 0, '', NULL, 24.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (110, 14, '', '27202207080203', 308, '黑色', 'http://img.huayikeji.com/wx72lmbomku46xjskbp8nrsj346wamnk', 343, 'L', 0, '', NULL, 24.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (111, 14, '', '27202207080204', 308, '黑色', 'http://img.huayikeji.com/wx72lmbomku46xjskbp8nrsj346wamnk', 344, 'XL', 0, '', NULL, 24.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (112, 14, '', '27202207080205', 308, '黑色', 'http://img.huayikeji.com/wx72lmbomku46xjskbp8nrsj346wamnk', 345, '2XL', 0, '', NULL, 24.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (113, 14, '', '27202207080301', 361, '浅蓝色', 'http://img.huayikeji.com/jg9g9ntyor1c0khja0v6jn8qc0jzslgw', 341, 'S', 0, '', NULL, 24.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (114, 14, '', '27202207080302', 361, '浅蓝色', 'http://img.huayikeji.com/jg9g9ntyor1c0khja0v6jn8qc0jzslgw', 342, 'M', 0, '', NULL, 24.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (115, 14, '', '27202207080303', 361, '浅蓝色', 'http://img.huayikeji.com/jg9g9ntyor1c0khja0v6jn8qc0jzslgw', 343, 'L', 0, '', NULL, 24.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (116, 14, '', '27202207080304', 361, '浅蓝色', 'http://img.huayikeji.com/jg9g9ntyor1c0khja0v6jn8qc0jzslgw', 344, 'XL', 0, '', NULL, 24.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (117, 14, '', '27202207080305', 361, '浅蓝色', 'http://img.huayikeji.com/jg9g9ntyor1c0khja0v6jn8qc0jzslgw', 345, '2XL', 0, '', NULL, 24.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (118, 15, '', '28202106610101', 356, '复古蓝', 'http://img.huayikeji.com/2a125jimb6nh37qjqp9k7jkov8hyo3ek', 341, 'S', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (119, 15, '', '28202106610102', 356, '复古蓝', 'http://img.huayikeji.com/2a125jimb6nh37qjqp9k7jkov8hyo3ek', 342, 'M', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (120, 15, '', '28202106610103', 356, '复古蓝', 'http://img.huayikeji.com/2a125jimb6nh37qjqp9k7jkov8hyo3ek', 343, 'L', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (121, 15, '', '28202106610104', 356, '复古蓝', 'http://img.huayikeji.com/2a125jimb6nh37qjqp9k7jkov8hyo3ek', 344, 'XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (122, 15, '', '28202106610105', 356, '复古蓝', 'http://img.huayikeji.com/2a125jimb6nh37qjqp9k7jkov8hyo3ek', 345, '2XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (123, 15, '', '28202106610201', 361, '浅蓝色', 'http://img.huayikeji.com/600qtwzefc9qj9njwwoza2zllzph4p6n', 341, 'S', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (124, 15, '', '28202106610202', 361, '浅蓝色', 'http://img.huayikeji.com/600qtwzefc9qj9njwwoza2zllzph4p6n', 342, 'M', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (125, 15, '', '28202106610203', 361, '浅蓝色', 'http://img.huayikeji.com/600qtwzefc9qj9njwwoza2zllzph4p6n', 343, 'L', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (126, 15, '', '28202106610204', 361, '浅蓝色', 'http://img.huayikeji.com/600qtwzefc9qj9njwwoza2zllzph4p6n', 344, 'XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (127, 15, '', '28202106610205', 361, '浅蓝色', 'http://img.huayikeji.com/600qtwzefc9qj9njwwoza2zllzph4p6n', 345, '2XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (128, 15, '', '28202106610301', 389, '黑灰色', 'http://img.huayikeji.com/qj2p2e89qmlk1fa0n1f43xr23a8r6gmc', 341, 'S', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (129, 15, '', '28202106610302', 389, '黑灰色', 'http://img.huayikeji.com/qj2p2e89qmlk1fa0n1f43xr23a8r6gmc', 342, 'M', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (130, 15, '', '28202106610303', 389, '黑灰色', 'http://img.huayikeji.com/qj2p2e89qmlk1fa0n1f43xr23a8r6gmc', 343, 'L', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (131, 15, '', '28202106610304', 389, '黑灰色', 'http://img.huayikeji.com/qj2p2e89qmlk1fa0n1f43xr23a8r6gmc', 344, 'XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (132, 15, '', '28202106610305', 389, '黑灰色', 'http://img.huayikeji.com/qj2p2e89qmlk1fa0n1f43xr23a8r6gmc', 345, '2XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (133, 15, '', '28202106610401', 308, '黑色', 'http://img.huayikeji.com/zb6q0hbaqi6r9z1glijty6olfaijtnvv', 341, 'S', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (134, 15, '', '28202106610402', 308, '黑色', 'http://img.huayikeji.com/zb6q0hbaqi6r9z1glijty6olfaijtnvv', 342, 'M', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (135, 15, '', '28202106610403', 308, '黑色', 'http://img.huayikeji.com/zb6q0hbaqi6r9z1glijty6olfaijtnvv', 343, 'L', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (136, 15, '', '28202106610404', 308, '黑色', 'http://img.huayikeji.com/zb6q0hbaqi6r9z1glijty6olfaijtnvv', 344, 'XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (137, 15, '', '28202106610405', 308, '黑色', 'http://img.huayikeji.com/zb6q0hbaqi6r9z1glijty6olfaijtnvv', 345, '2XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (138, 15, '', '28202106610501', 0, '粉色', 'http://img.huayikeji.com/icme41bh1veeeqadhqflep3rl3p0tsvq', 341, 'S', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (139, 15, '', '28202106610502', 0, '粉色', 'http://img.huayikeji.com/icme41bh1veeeqadhqflep3rl3p0tsvq', 342, 'M', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (140, 15, '', '28202106610503', 0, '粉色', 'http://img.huayikeji.com/icme41bh1veeeqadhqflep3rl3p0tsvq', 343, 'L', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (141, 15, '', '28202106610504', 0, '粉色', 'http://img.huayikeji.com/icme41bh1veeeqadhqflep3rl3p0tsvq', 344, 'XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (142, 15, '', '28202106610505', 0, '粉色', 'http://img.huayikeji.com/icme41bh1veeeqadhqflep3rl3p0tsvq', 345, '2XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (143, 15, '', '28202106610601', 0, '黄色', 'http://img.huayikeji.com/ma9jyuic0d3p1mqt3afzahoev5ypzzby', 341, 'S', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (144, 15, '', '28202106610602', 0, '黄色', 'http://img.huayikeji.com/ma9jyuic0d3p1mqt3afzahoev5ypzzby', 342, 'M', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (145, 15, '', '28202106610603', 0, '黄色', 'http://img.huayikeji.com/ma9jyuic0d3p1mqt3afzahoev5ypzzby', 343, 'L', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (146, 15, '', '28202106610604', 0, '黄色', 'http://img.huayikeji.com/ma9jyuic0d3p1mqt3afzahoev5ypzzby', 344, 'XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (147, 15, '', '28202106610605', 0, '黄色', 'http://img.huayikeji.com/ma9jyuic0d3p1mqt3afzahoev5ypzzby', 345, '2XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (148, 15, '', '28202106610701', 0, '薄荷绿', 'http://img.huayikeji.com/5e4mbxb12qt8j1hi2yrd92io21m8izrs', 341, 'S', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (149, 15, '', '28202106610702', 0, '薄荷绿', 'http://img.huayikeji.com/5e4mbxb12qt8j1hi2yrd92io21m8izrs', 342, 'M', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (150, 15, '', '28202106610703', 0, '薄荷绿', 'http://img.huayikeji.com/5e4mbxb12qt8j1hi2yrd92io21m8izrs', 343, 'L', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (151, 15, '', '28202106610704', 0, '薄荷绿', 'http://img.huayikeji.com/5e4mbxb12qt8j1hi2yrd92io21m8izrs', 344, 'XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (152, 15, '', '28202106610705', 0, '薄荷绿', 'http://img.huayikeji.com/5e4mbxb12qt8j1hi2yrd92io21m8izrs', 345, '2XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (153, 15, '', '28202106610801', 0, '卡其色', 'http://img.huayikeji.com/us3g4u9qqoj3g8vxeedcjd8clv5estoo', 341, 'S', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (154, 15, '', '28202106610802', 0, '卡其色', 'http://img.huayikeji.com/us3g4u9qqoj3g8vxeedcjd8clv5estoo', 342, 'M', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (155, 15, '', '28202106610803', 0, '卡其色', 'http://img.huayikeji.com/us3g4u9qqoj3g8vxeedcjd8clv5estoo', 343, 'L', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (156, 15, '', '28202106610804', 0, '卡其色', 'http://img.huayikeji.com/us3g4u9qqoj3g8vxeedcjd8clv5estoo', 344, 'XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (157, 15, '', '28202106610805', 0, '卡其色', 'http://img.huayikeji.com/us3g4u9qqoj3g8vxeedcjd8clv5estoo', 345, '2XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (158, 16, '', '28202106780001', 361, '浅蓝色', 'http://img.huayikeji.com/ux09zfd120aalurr55707gndmhn1rf21', 341, 'S', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (159, 16, '', '28202106780002', 361, '浅蓝色', 'http://img.huayikeji.com/ux09zfd120aalurr55707gndmhn1rf21', 342, 'M', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (160, 16, '', '28202106780003', 361, '浅蓝色', 'http://img.huayikeji.com/ux09zfd120aalurr55707gndmhn1rf21', 343, 'L', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (161, 16, '', '28202106780004', 361, '浅蓝色', 'http://img.huayikeji.com/ux09zfd120aalurr55707gndmhn1rf21', 344, 'XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (162, 16, '', '28202106780005', 361, '浅蓝色', 'http://img.huayikeji.com/ux09zfd120aalurr55707gndmhn1rf21', 345, '2XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (163, 17, '', '03202208010101', 308, '黑色', 'http://img.huayikeji.com/gm40mpqfc53scyxjou2epwqhjqbqp8cv', 342, 'M', 0, '', NULL, 12.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (164, 17, '', '03202208010102', 308, '黑色', 'http://img.huayikeji.com/gm40mpqfc53scyxjou2epwqhjqbqp8cv', 343, 'L', 0, '', NULL, 12.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (165, 17, '', '03202208010103', 308, '黑色', 'http://img.huayikeji.com/gm40mpqfc53scyxjou2epwqhjqbqp8cv', 344, 'XL', 0, '', NULL, 12.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (166, 17, '', '03202208010104', 308, '黑色', 'http://img.huayikeji.com/gm40mpqfc53scyxjou2epwqhjqbqp8cv', 345, '2XL', 0, '', NULL, 12.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (167, 17, '', '03202208010201', 322, '白色', 'http://img.huayikeji.com/k1bcjvacakh7t65tt541z636hrbv086m', 342, 'M', 0, '', NULL, 12.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (168, 17, '', '03202208010202', 322, '白色', 'http://img.huayikeji.com/k1bcjvacakh7t65tt541z636hrbv086m', 343, 'L', 0, '', NULL, 12.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (169, 17, '', '03202208010203', 322, '白色', 'http://img.huayikeji.com/k1bcjvacakh7t65tt541z636hrbv086m', 344, 'XL', 0, '', NULL, 12.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (170, 17, '', '03202208010204', 322, '白色', 'http://img.huayikeji.com/k1bcjvacakh7t65tt541z636hrbv086m', 345, '2XL', 0, '', NULL, 12.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (171, 17, '', '03202208010301', 0, '粉色', 'http://img.huayikeji.com/wsqqp8sdqc5e8x9noarg9fswdo17wtu4', 342, 'M', 0, '', NULL, 12.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (172, 17, '', '03202208010302', 0, '粉色', 'http://img.huayikeji.com/wsqqp8sdqc5e8x9noarg9fswdo17wtu4', 343, 'L', 0, '', NULL, 12.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (173, 17, '', '03202208010303', 0, '粉色', 'http://img.huayikeji.com/wsqqp8sdqc5e8x9noarg9fswdo17wtu4', 344, 'XL', 0, '', NULL, 12.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (174, 17, '', '03202208010304', 0, '粉色', 'http://img.huayikeji.com/wsqqp8sdqc5e8x9noarg9fswdo17wtu4', 345, '2XL', 0, '', NULL, 12.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (175, 17, '', '03202208010401', 0, '深灰色', 'http://img.huayikeji.com/68dgqc2s773upieznl528i0sqs8ib484', 342, 'M', 0, '', NULL, 12.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (176, 17, '', '03202208010402', 0, '深灰色', 'http://img.huayikeji.com/68dgqc2s773upieznl528i0sqs8ib484', 343, 'L', 0, '', NULL, 12.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (177, 17, '', '03202208010403', 0, '深灰色', 'http://img.huayikeji.com/68dgqc2s773upieznl528i0sqs8ib484', 344, 'XL', 0, '', NULL, 12.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (178, 17, '', '03202208010404', 0, '深灰色', 'http://img.huayikeji.com/68dgqc2s773upieznl528i0sqs8ib484', 345, '2XL', 0, '', NULL, 12.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (179, 18, '', 'HN202200140101', 308, '黑色', 'http://img.huayikeji.com/pofzt3pqrtravmzd1jrnd605xqu0usic', 341, 'S', 0, '', NULL, 32.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (180, 18, '', 'HN202200140102', 308, '黑色', 'http://img.huayikeji.com/pofzt3pqrtravmzd1jrnd605xqu0usic', 342, 'M', 0, '', NULL, 32.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (181, 18, '', 'HN202200140103', 308, '黑色', 'http://img.huayikeji.com/pofzt3pqrtravmzd1jrnd605xqu0usic', 343, 'L', 0, '', NULL, 32.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (182, 18, '', 'HN202200140104', 308, '黑色', 'http://img.huayikeji.com/pofzt3pqrtravmzd1jrnd605xqu0usic', 344, 'XL', 0, '', NULL, 32.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (183, 18, '', 'HN202200140105', 308, '黑色', 'http://img.huayikeji.com/pofzt3pqrtravmzd1jrnd605xqu0usic', 345, '2XL', 0, '', NULL, 32.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (184, 18, '', 'HN202200140201', 356, '复古蓝', 'http://img.huayikeji.com/tc51gyersphju6cgsns937bc3x7m2ph5', 341, 'S', 0, '', NULL, 32.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (185, 18, '', 'HN202200140202', 356, '复古蓝', 'http://img.huayikeji.com/tc51gyersphju6cgsns937bc3x7m2ph5', 342, 'M', 0, '', NULL, 32.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (186, 18, '', 'HN202200140203', 356, '复古蓝', 'http://img.huayikeji.com/tc51gyersphju6cgsns937bc3x7m2ph5', 343, 'L', 0, '', NULL, 32.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (187, 18, '', 'HN202200140204', 356, '复古蓝', 'http://img.huayikeji.com/tc51gyersphju6cgsns937bc3x7m2ph5', 344, 'XL', 0, '', NULL, 32.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (188, 18, '', 'HN202200140205', 356, '复古蓝', 'http://img.huayikeji.com/tc51gyersphju6cgsns937bc3x7m2ph5', 345, '2XL', 0, '', NULL, 32.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (189, 18, '', 'HN202200140301', 361, '浅蓝色', 'http://img.huayikeji.com/l1dj9ovhl9xkcln5lrv09txbvbd4i4ug', 341, 'S', 0, '', NULL, 32.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (190, 18, '', 'HN202200140302', 361, '浅蓝色', 'http://img.huayikeji.com/l1dj9ovhl9xkcln5lrv09txbvbd4i4ug', 342, 'M', 0, '', NULL, 32.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (191, 18, '', 'HN202200140303', 361, '浅蓝色', 'http://img.huayikeji.com/l1dj9ovhl9xkcln5lrv09txbvbd4i4ug', 343, 'L', 0, '', NULL, 32.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (192, 18, '', 'HN202200140304', 361, '浅蓝色', 'http://img.huayikeji.com/l1dj9ovhl9xkcln5lrv09txbvbd4i4ug', 344, 'XL', 0, '', NULL, 32.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (193, 18, '', 'HN202200140305', 361, '浅蓝色', 'http://img.huayikeji.com/l1dj9ovhl9xkcln5lrv09txbvbd4i4ug', 345, '2XL', 0, '', NULL, 32.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (194, 19, '', 'HN202200250125', 308, '黑色', 'http://img.huayikeji.com/eih7qcgodthjs3v6oiwl49s0ngs6opjs', 0, '25', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (195, 19, '', 'HN202200250126', 308, '黑色', 'http://img.huayikeji.com/eih7qcgodthjs3v6oiwl49s0ngs6opjs', 0, '26', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (196, 19, '', 'HN202200250107', 308, '黑色', 'http://img.huayikeji.com/eih7qcgodthjs3v6oiwl49s0ngs6opjs', 0, '27', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (197, 19, '', 'HN202200250128', 308, '黑色', 'http://img.huayikeji.com/eih7qcgodthjs3v6oiwl49s0ngs6opjs', 0, '28', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (198, 19, '', 'HN202200250129', 308, '黑色', 'http://img.huayikeji.com/eih7qcgodthjs3v6oiwl49s0ngs6opjs', 0, '29', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (199, 19, '', 'HN202200250130', 308, '黑色', 'http://img.huayikeji.com/eih7qcgodthjs3v6oiwl49s0ngs6opjs', 0, '30', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (200, 19, '', 'HN202200250131', 308, '黑色', 'http://img.huayikeji.com/eih7qcgodthjs3v6oiwl49s0ngs6opjs', 0, '31', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (201, 19, '', 'HN202200250132', 308, '黑色', 'http://img.huayikeji.com/eih7qcgodthjs3v6oiwl49s0ngs6opjs', 0, '32', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (202, 19, '', 'HN202200250225', 389, '黑灰色', 'http://img.huayikeji.com/x29km17ivbfkzzcuqvjrxwpzo52l9jzf', 0, '25', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (203, 19, '', 'HN202200250226', 389, '黑灰色', 'http://img.huayikeji.com/x29km17ivbfkzzcuqvjrxwpzo52l9jzf', 0, '26', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (204, 19, '', 'HN202200250227', 389, '黑灰色', 'http://img.huayikeji.com/x29km17ivbfkzzcuqvjrxwpzo52l9jzf', 0, '27', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (205, 19, '', 'HN202200250228', 389, '黑灰色', 'http://img.huayikeji.com/x29km17ivbfkzzcuqvjrxwpzo52l9jzf', 0, '28', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (206, 19, '', 'HN202200250229', 389, '黑灰色', 'http://img.huayikeji.com/x29km17ivbfkzzcuqvjrxwpzo52l9jzf', 0, '29', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (207, 19, '', 'HN202200250230', 389, '黑灰色', 'http://img.huayikeji.com/x29km17ivbfkzzcuqvjrxwpzo52l9jzf', 0, '30', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (208, 19, '', 'HN202200250231', 389, '黑灰色', 'http://img.huayikeji.com/x29km17ivbfkzzcuqvjrxwpzo52l9jzf', 0, '31', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (209, 19, '', 'HN202200250232', 389, '黑灰色', 'http://img.huayikeji.com/x29km17ivbfkzzcuqvjrxwpzo52l9jzf', 0, '32', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (210, 19, '', 'HN202200250325', 361, '浅蓝色', 'http://img.huayikeji.com/kh86knehjulsigqzexr4jgknbkrwcarr', 0, '25', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (211, 19, '', 'HN202200250326', 361, '浅蓝色', 'http://img.huayikeji.com/kh86knehjulsigqzexr4jgknbkrwcarr', 0, '26', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (212, 19, '', 'HN202200250327', 361, '浅蓝色', 'http://img.huayikeji.com/kh86knehjulsigqzexr4jgknbkrwcarr', 0, '27', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (213, 19, '', 'HN202200250328', 361, '浅蓝色', 'http://img.huayikeji.com/kh86knehjulsigqzexr4jgknbkrwcarr', 0, '28', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (214, 19, '', 'HN202200250329', 361, '浅蓝色', 'http://img.huayikeji.com/kh86knehjulsigqzexr4jgknbkrwcarr', 0, '29', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (215, 19, '', 'HN202200250330', 361, '浅蓝色', 'http://img.huayikeji.com/kh86knehjulsigqzexr4jgknbkrwcarr', 0, '30', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (216, 19, '', 'HN202200250331', 361, '浅蓝色', 'http://img.huayikeji.com/kh86knehjulsigqzexr4jgknbkrwcarr', 0, '31', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (217, 19, '', 'HN202200250332', 361, '浅蓝色', 'http://img.huayikeji.com/kh86knehjulsigqzexr4jgknbkrwcarr', 0, '32', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (218, 19, '', 'HN202200250425', 336, '蓝灰色', 'http://img.huayikeji.com/wgn8xbsgs3mac0j8uqc7xcebeziu3lc2', 0, '25', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (219, 19, '', 'HN202200250426', 336, '蓝灰色', 'http://img.huayikeji.com/wgn8xbsgs3mac0j8uqc7xcebeziu3lc2', 0, '26', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (220, 19, '', 'HN202200250427', 336, '蓝灰色', 'http://img.huayikeji.com/wgn8xbsgs3mac0j8uqc7xcebeziu3lc2', 0, '27', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (221, 19, '', 'HN202200250428', 336, '蓝灰色', 'http://img.huayikeji.com/wgn8xbsgs3mac0j8uqc7xcebeziu3lc2', 0, '28', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (222, 19, '', 'HN202200250429', 336, '蓝灰色', 'http://img.huayikeji.com/wgn8xbsgs3mac0j8uqc7xcebeziu3lc2', 0, '29', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (223, 19, '', 'HN202200250430', 336, '蓝灰色', 'http://img.huayikeji.com/wgn8xbsgs3mac0j8uqc7xcebeziu3lc2', 0, '30', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (224, 19, '', 'HN202200250431', 336, '蓝灰色', 'http://img.huayikeji.com/wgn8xbsgs3mac0j8uqc7xcebeziu3lc2', 0, '31', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (225, 19, '', 'HN202200250432', 336, '蓝灰色', 'http://img.huayikeji.com/wgn8xbsgs3mac0j8uqc7xcebeziu3lc2', 0, '32', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (226, 20, '', 'HN202200290125', 308, '黑色', 'http://img.huayikeji.com/rbmhovahs9a3hqvq28z2d00h3qt6ko38', 0, '25', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (227, 20, '', 'HN202200290126', 308, '黑色', 'http://img.huayikeji.com/rbmhovahs9a3hqvq28z2d00h3qt6ko38', 0, '26', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (228, 20, '', 'HN202200290127', 308, '黑色', 'http://img.huayikeji.com/rbmhovahs9a3hqvq28z2d00h3qt6ko38', 0, '27', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (229, 20, '', 'HN202200290128', 308, '黑色', 'http://img.huayikeji.com/rbmhovahs9a3hqvq28z2d00h3qt6ko38', 0, '28', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (230, 20, '', 'HN202200290129', 308, '黑色', 'http://img.huayikeji.com/rbmhovahs9a3hqvq28z2d00h3qt6ko38', 0, '29', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (231, 20, '', 'HN202200290130', 308, '黑色', 'http://img.huayikeji.com/rbmhovahs9a3hqvq28z2d00h3qt6ko38', 0, '30', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (232, 20, '', 'HN202200290131', 308, '黑色', 'http://img.huayikeji.com/rbmhovahs9a3hqvq28z2d00h3qt6ko38', 0, '31', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (233, 20, '', 'HN202200290132', 308, '黑色', 'http://img.huayikeji.com/rbmhovahs9a3hqvq28z2d00h3qt6ko38', 0, '32', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (234, 20, '', 'HN202200290225', 389, '黑灰色', 'http://img.huayikeji.com/k0vt2gtit508e8yt36o04jdijk1ukgr4', 0, '25', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (235, 20, '', 'HN202200290226', 389, '黑灰色', 'http://img.huayikeji.com/k0vt2gtit508e8yt36o04jdijk1ukgr4', 0, '26', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (236, 20, '', 'HN202200290227', 389, '黑灰色', 'http://img.huayikeji.com/k0vt2gtit508e8yt36o04jdijk1ukgr4', 0, '27', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (237, 20, '', 'HN202200290228', 389, '黑灰色', 'http://img.huayikeji.com/k0vt2gtit508e8yt36o04jdijk1ukgr4', 0, '28', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (238, 20, '', 'HN202200290229', 389, '黑灰色', 'http://img.huayikeji.com/k0vt2gtit508e8yt36o04jdijk1ukgr4', 0, '29', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (239, 20, '', 'HN202200290230', 389, '黑灰色', 'http://img.huayikeji.com/k0vt2gtit508e8yt36o04jdijk1ukgr4', 0, '30', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (240, 20, '', 'HN202200290231', 389, '黑灰色', 'http://img.huayikeji.com/k0vt2gtit508e8yt36o04jdijk1ukgr4', 0, '31', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (241, 20, '', 'HN202200290232', 389, '黑灰色', 'http://img.huayikeji.com/k0vt2gtit508e8yt36o04jdijk1ukgr4', 0, '32', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (242, 20, '', 'HN202200290325', 356, '复古蓝', 'http://img.huayikeji.com/crqikzuy0nm2e4yem856va2xk48i7cf4', 0, '25', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (243, 20, '', 'HN202200290326', 356, '复古蓝', 'http://img.huayikeji.com/crqikzuy0nm2e4yem856va2xk48i7cf4', 0, '26', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (244, 20, '', 'HN202200290327', 356, '复古蓝', 'http://img.huayikeji.com/crqikzuy0nm2e4yem856va2xk48i7cf4', 0, '27', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (245, 20, '', 'HN202200290328', 356, '复古蓝', 'http://img.huayikeji.com/crqikzuy0nm2e4yem856va2xk48i7cf4', 0, '28', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (246, 20, '', 'HN202200290329', 356, '复古蓝', 'http://img.huayikeji.com/crqikzuy0nm2e4yem856va2xk48i7cf4', 0, '29', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (247, 20, '', 'HN202200290330', 356, '复古蓝', 'http://img.huayikeji.com/crqikzuy0nm2e4yem856va2xk48i7cf4', 0, '30', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (248, 20, '', 'HN202200290331', 356, '复古蓝', 'http://img.huayikeji.com/crqikzuy0nm2e4yem856va2xk48i7cf4', 0, '31', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (249, 20, '', 'HN202200290332', 356, '复古蓝', 'http://img.huayikeji.com/crqikzuy0nm2e4yem856va2xk48i7cf4', 0, '32', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (250, 21, '', 'HN202200150125', 361, '浅蓝色', 'http://img.huayikeji.com/jw7wxsu4uwiv7khvaocru7t9yhhdodol', 394, 'XS', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (251, 21, '', 'HN202200150126', 361, '浅蓝色', 'http://img.huayikeji.com/jw7wxsu4uwiv7khvaocru7t9yhhdodol', 341, 'S', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (252, 21, '', 'HN202200150127', 361, '浅蓝色', 'http://img.huayikeji.com/jw7wxsu4uwiv7khvaocru7t9yhhdodol', 342, 'M', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (253, 21, '', 'HN202200150128', 361, '浅蓝色', 'http://img.huayikeji.com/jw7wxsu4uwiv7khvaocru7t9yhhdodol', 343, 'L', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (254, 21, '', 'HN202200150129', 361, '浅蓝色', 'http://img.huayikeji.com/jw7wxsu4uwiv7khvaocru7t9yhhdodol', 344, 'XL', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (255, 21, '', 'HN202200150130', 361, '浅蓝色', 'http://img.huayikeji.com/jw7wxsu4uwiv7khvaocru7t9yhhdodol', 345, '2XL', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (256, 21, '', 'HN202200150225', 356, '复古蓝', 'http://img.huayikeji.com/o1pijvy2umsa8mlgfkyjbgs3vwmotkdh', 394, 'XS', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (257, 21, '', 'HN202200150226', 356, '复古蓝', 'http://img.huayikeji.com/o1pijvy2umsa8mlgfkyjbgs3vwmotkdh', 341, 'S', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (258, 21, '', 'HN202200150227', 356, '复古蓝', 'http://img.huayikeji.com/o1pijvy2umsa8mlgfkyjbgs3vwmotkdh', 342, 'M', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (259, 21, '', 'HN202200150228', 356, '复古蓝', 'http://img.huayikeji.com/o1pijvy2umsa8mlgfkyjbgs3vwmotkdh', 343, 'L', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (260, 21, '', 'HN202200150229', 356, '复古蓝', 'http://img.huayikeji.com/o1pijvy2umsa8mlgfkyjbgs3vwmotkdh', 344, 'XL', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (261, 21, '', 'HN202200150230', 356, '复古蓝', 'http://img.huayikeji.com/o1pijvy2umsa8mlgfkyjbgs3vwmotkdh', 345, '2XL', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (262, 21, '', 'HN202200150325', 308, '黑色', 'http://img.huayikeji.com/1mcrsm44mbg8ekvlayfjwulvdzzhl9ym', 394, 'XS', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (263, 21, '', 'HN202200150326', 308, '黑色', 'http://img.huayikeji.com/1mcrsm44mbg8ekvlayfjwulvdzzhl9ym', 341, 'S', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (264, 21, '', 'HN202200150327', 308, '黑色', 'http://img.huayikeji.com/1mcrsm44mbg8ekvlayfjwulvdzzhl9ym', 342, 'M', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (265, 21, '', 'HN202200150328', 308, '黑色', 'http://img.huayikeji.com/1mcrsm44mbg8ekvlayfjwulvdzzhl9ym', 343, 'L', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (266, 21, '', 'HN202200150329', 308, '黑色', 'http://img.huayikeji.com/1mcrsm44mbg8ekvlayfjwulvdzzhl9ym', 344, 'XL', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (267, 21, '', 'HN202200150330', 308, '黑色', 'http://img.huayikeji.com/1mcrsm44mbg8ekvlayfjwulvdzzhl9ym', 345, '2XL', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (268, 22, '', 'HN202200200125', 308, '黑色', 'http://img.huayikeji.com/b2z1rl4pv3rzhotpxeoru2k8okkscy0f', 0, '25', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (269, 22, '', 'HN202200200126', 308, '黑色', 'http://img.huayikeji.com/b2z1rl4pv3rzhotpxeoru2k8okkscy0f', 0, '26', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (270, 22, '', 'HN202200200127', 308, '黑色', 'http://img.huayikeji.com/b2z1rl4pv3rzhotpxeoru2k8okkscy0f', 0, '27', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (271, 22, '', 'HN202200200128', 308, '黑色', 'http://img.huayikeji.com/b2z1rl4pv3rzhotpxeoru2k8okkscy0f', 0, '28', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (272, 22, '', 'HN202200200129', 308, '黑色', 'http://img.huayikeji.com/b2z1rl4pv3rzhotpxeoru2k8okkscy0f', 0, '29', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (273, 22, '', 'HN202200200130', 308, '黑色', 'http://img.huayikeji.com/b2z1rl4pv3rzhotpxeoru2k8okkscy0f', 0, '30', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (274, 22, '', 'HN202200200131', 308, '黑色', 'http://img.huayikeji.com/b2z1rl4pv3rzhotpxeoru2k8okkscy0f', 0, '31', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (275, 22, '', 'HN202200200132', 308, '黑色', 'http://img.huayikeji.com/b2z1rl4pv3rzhotpxeoru2k8okkscy0f', 0, '32', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (276, 22, '', 'HN202200200225', 389, '黑灰色', 'http://img.huayikeji.com/1xye55g2xefzzxm883tvxq5v1z75r82z', 0, '25', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (277, 22, '', 'HN202200200226', 389, '黑灰色', 'http://img.huayikeji.com/1xye55g2xefzzxm883tvxq5v1z75r82z', 0, '26', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (278, 22, '', 'HN202200200227', 389, '黑灰色', 'http://img.huayikeji.com/1xye55g2xefzzxm883tvxq5v1z75r82z', 0, '27', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (279, 22, '', 'HN202200200228', 389, '黑灰色', 'http://img.huayikeji.com/1xye55g2xefzzxm883tvxq5v1z75r82z', 0, '28', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (280, 22, '', 'HN202200200229', 389, '黑灰色', 'http://img.huayikeji.com/1xye55g2xefzzxm883tvxq5v1z75r82z', 0, '29', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (281, 22, '', 'HN202200200230', 389, '黑灰色', 'http://img.huayikeji.com/1xye55g2xefzzxm883tvxq5v1z75r82z', 0, '30', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (282, 22, '', 'HN202200200231', 389, '黑灰色', 'http://img.huayikeji.com/1xye55g2xefzzxm883tvxq5v1z75r82z', 0, '31', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (283, 22, '', 'HN202200200232', 389, '黑灰色', 'http://img.huayikeji.com/1xye55g2xefzzxm883tvxq5v1z75r82z', 0, '32', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (284, 22, '', 'HN202200200325', 361, '浅蓝色', 'http://img.huayikeji.com/ms87oxxsvn3fi422bsil1rgnqbko3wf8', 0, '25', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (285, 22, '', 'HN202200200326', 361, '浅蓝色', 'http://img.huayikeji.com/ms87oxxsvn3fi422bsil1rgnqbko3wf8', 0, '26', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (286, 22, '', 'HN202200200327', 361, '浅蓝色', 'http://img.huayikeji.com/ms87oxxsvn3fi422bsil1rgnqbko3wf8', 0, '27', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (287, 22, '', 'HN202200200328', 361, '浅蓝色', 'http://img.huayikeji.com/ms87oxxsvn3fi422bsil1rgnqbko3wf8', 0, '28', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (288, 22, '', 'HN202200200329', 361, '浅蓝色', 'http://img.huayikeji.com/ms87oxxsvn3fi422bsil1rgnqbko3wf8', 0, '29', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (289, 22, '', 'HN202200200330', 361, '浅蓝色', 'http://img.huayikeji.com/ms87oxxsvn3fi422bsil1rgnqbko3wf8', 0, '30', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (290, 22, '', 'HN202200200331', 361, '浅蓝色', 'http://img.huayikeji.com/ms87oxxsvn3fi422bsil1rgnqbko3wf8', 0, '31', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (291, 22, '', 'HN202200200332', 361, '浅蓝色', 'http://img.huayikeji.com/ms87oxxsvn3fi422bsil1rgnqbko3wf8', 0, '32', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (292, 22, '', 'HN202200200425', 336, '蓝灰色', 'http://img.huayikeji.com/32e4srov0ypum7hy03oxtwc8p6jejy4g', 0, '25', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (293, 22, '', 'HN202200200426', 336, '蓝灰色', 'http://img.huayikeji.com/32e4srov0ypum7hy03oxtwc8p6jejy4g', 0, '26', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (294, 22, '', 'HN202200200427', 336, '蓝灰色', 'http://img.huayikeji.com/32e4srov0ypum7hy03oxtwc8p6jejy4g', 0, '27', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (295, 22, '', 'HN202200200428', 336, '蓝灰色', 'http://img.huayikeji.com/32e4srov0ypum7hy03oxtwc8p6jejy4g', 0, '28', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (296, 22, '', 'HN202200200429', 336, '蓝灰色', 'http://img.huayikeji.com/32e4srov0ypum7hy03oxtwc8p6jejy4g', 0, '29', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (297, 22, '', 'HN202200200430', 336, '蓝灰色', 'http://img.huayikeji.com/32e4srov0ypum7hy03oxtwc8p6jejy4g', 0, '30', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (298, 22, '', 'HN202200200431', 336, '蓝灰色', 'http://img.huayikeji.com/32e4srov0ypum7hy03oxtwc8p6jejy4g', 0, '31', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (299, 22, '', 'HN202200200435', 336, '蓝灰色', 'http://img.huayikeji.com/32e4srov0ypum7hy03oxtwc8p6jejy4g', 0, '32', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (300, 23, '', 'HN202200240125', 308, '黑色', 'http://img.huayikeji.com/po0fayle1t2gsas9jh0rhkgytkyze9ig', 0, '25', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (301, 23, '', 'HN202200240126', 308, '黑色', 'http://img.huayikeji.com/po0fayle1t2gsas9jh0rhkgytkyze9ig', 0, '26', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (302, 23, '', 'HN202200240127', 308, '黑色', 'http://img.huayikeji.com/po0fayle1t2gsas9jh0rhkgytkyze9ig', 0, '27', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (303, 23, '', 'HN202200240128', 308, '黑色', 'http://img.huayikeji.com/po0fayle1t2gsas9jh0rhkgytkyze9ig', 0, '28', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (304, 23, '', 'HN202200240129', 308, '黑色', 'http://img.huayikeji.com/po0fayle1t2gsas9jh0rhkgytkyze9ig', 0, '29', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (305, 23, '', 'HN202200240130', 308, '黑色', 'http://img.huayikeji.com/po0fayle1t2gsas9jh0rhkgytkyze9ig', 0, '30', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (306, 23, '', 'HN202200240131', 308, '黑色', 'http://img.huayikeji.com/po0fayle1t2gsas9jh0rhkgytkyze9ig', 0, '31', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (307, 23, '', 'HN202200240132', 308, '黑色', 'http://img.huayikeji.com/po0fayle1t2gsas9jh0rhkgytkyze9ig', 0, '32', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (308, 23, '', 'HN202200240225', 389, '黑灰色', 'http://img.huayikeji.com/k2klo0djjmqvrg72zqkwpz303zyxbpik', 0, '25', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (309, 23, '', 'HN202200240226', 389, '黑灰色', 'http://img.huayikeji.com/k2klo0djjmqvrg72zqkwpz303zyxbpik', 0, '26', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (310, 23, '', 'HN202200240227', 389, '黑灰色', 'http://img.huayikeji.com/k2klo0djjmqvrg72zqkwpz303zyxbpik', 0, '27', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (311, 23, '', 'HN202200240228', 389, '黑灰色', 'http://img.huayikeji.com/k2klo0djjmqvrg72zqkwpz303zyxbpik', 0, '28', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (312, 23, '', 'HN202200240229', 389, '黑灰色', 'http://img.huayikeji.com/k2klo0djjmqvrg72zqkwpz303zyxbpik', 0, '29', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (313, 23, '', 'HN202200240230', 389, '黑灰色', 'http://img.huayikeji.com/k2klo0djjmqvrg72zqkwpz303zyxbpik', 0, '30', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (314, 23, '', 'HN202200240231', 389, '黑灰色', 'http://img.huayikeji.com/k2klo0djjmqvrg72zqkwpz303zyxbpik', 0, '31', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (315, 23, '', 'HN202200240232', 389, '黑灰色', 'http://img.huayikeji.com/k2klo0djjmqvrg72zqkwpz303zyxbpik', 0, '32', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (316, 23, '', 'HN202200240325', 361, '浅蓝色', 'http://img.huayikeji.com/jobye46pas210pj9ltbh81kagpn87uuj', 0, '25', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (317, 23, '', 'HN202200240326', 361, '浅蓝色', 'http://img.huayikeji.com/jobye46pas210pj9ltbh81kagpn87uuj', 0, '26', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (318, 23, '', 'HN202200240327', 361, '浅蓝色', 'http://img.huayikeji.com/jobye46pas210pj9ltbh81kagpn87uuj', 0, '27', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (319, 23, '', 'HN202200240328', 361, '浅蓝色', 'http://img.huayikeji.com/jobye46pas210pj9ltbh81kagpn87uuj', 0, '28', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (320, 23, '', 'HN202200240329', 361, '浅蓝色', 'http://img.huayikeji.com/jobye46pas210pj9ltbh81kagpn87uuj', 0, '29', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (321, 23, '', 'HN202200240330', 361, '浅蓝色', 'http://img.huayikeji.com/jobye46pas210pj9ltbh81kagpn87uuj', 0, '30', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (322, 23, '', 'HN202200240331', 361, '浅蓝色', 'http://img.huayikeji.com/jobye46pas210pj9ltbh81kagpn87uuj', 0, '31', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (323, 23, '', 'HN202200240332', 361, '浅蓝色', 'http://img.huayikeji.com/jobye46pas210pj9ltbh81kagpn87uuj', 0, '32', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (324, 23, '', 'HN202200240425', 336, '蓝灰色', 'http://img.huayikeji.com/66vexicx9dqs2terim416pbyw6cimwzr', 0, '25', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (325, 23, '', 'HN202200240426', 336, '蓝灰色', 'http://img.huayikeji.com/66vexicx9dqs2terim416pbyw6cimwzr', 0, '26', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (326, 23, '', 'HN202200240427', 336, '蓝灰色', 'http://img.huayikeji.com/66vexicx9dqs2terim416pbyw6cimwzr', 0, '27', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (327, 23, '', 'HN202200240428', 336, '蓝灰色', 'http://img.huayikeji.com/66vexicx9dqs2terim416pbyw6cimwzr', 0, '28', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (328, 23, '', 'HN202200240429', 336, '蓝灰色', 'http://img.huayikeji.com/66vexicx9dqs2terim416pbyw6cimwzr', 0, '29', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (329, 23, '', 'HN202200240430', 336, '蓝灰色', 'http://img.huayikeji.com/66vexicx9dqs2terim416pbyw6cimwzr', 0, '30', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (330, 23, '', 'HN202200240431', 336, '蓝灰色', 'http://img.huayikeji.com/66vexicx9dqs2terim416pbyw6cimwzr', 0, '31', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (331, 23, '', 'HN202200240432', 336, '蓝灰色', 'http://img.huayikeji.com/66vexicx9dqs2terim416pbyw6cimwzr', 0, '32', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (332, 24, '', 'HN202200120101', 319, '深蓝色', 'http://img.huayikeji.com/tglr5vq19k3f9kpt25bn3hxvwue8s8o9', 341, 'S', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (333, 24, '', 'HN202200120102', 319, '深蓝色', 'http://img.huayikeji.com/tglr5vq19k3f9kpt25bn3hxvwue8s8o9', 342, 'M', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (334, 24, '', 'HN202200120103', 319, '深蓝色', 'http://img.huayikeji.com/tglr5vq19k3f9kpt25bn3hxvwue8s8o9', 343, 'L', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (335, 24, '', 'HN202200120104', 319, '深蓝色', 'http://img.huayikeji.com/tglr5vq19k3f9kpt25bn3hxvwue8s8o9', 344, 'XL', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (336, 24, '', 'HN202200120105', 319, '深蓝色', 'http://img.huayikeji.com/tglr5vq19k3f9kpt25bn3hxvwue8s8o9', 345, '2XL', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (337, 25, '', 'OXN06910125', 361, '浅蓝色', 'http://img.huayikeji.com/76yre98jhd5mgvkhgvqcdlktdthof0z0', 0, '25', 0, '', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (338, 25, '', 'OXN06910126', 361, '浅蓝色', 'http://img.huayikeji.com/76yre98jhd5mgvkhgvqcdlktdthof0z0', 0, '26', 0, '', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (339, 25, '', 'OXN06910127', 361, '浅蓝色', 'http://img.huayikeji.com/76yre98jhd5mgvkhgvqcdlktdthof0z0', 0, '27', 0, '', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (340, 25, '', 'OXN06910128', 361, '浅蓝色', 'http://img.huayikeji.com/76yre98jhd5mgvkhgvqcdlktdthof0z0', 0, '28', 0, '', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (341, 25, '', 'OXN06910129', 361, '浅蓝色', 'http://img.huayikeji.com/76yre98jhd5mgvkhgvqcdlktdthof0z0', 0, '29', 0, '', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (342, 25, '', 'OXN06910130', 361, '浅蓝色', 'http://img.huayikeji.com/76yre98jhd5mgvkhgvqcdlktdthof0z0', 0, '30', 0, '', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (343, 25, '', 'OXN06910131', 361, '浅蓝色', 'http://img.huayikeji.com/76yre98jhd5mgvkhgvqcdlktdthof0z0', 0, '31', 0, '', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (344, 25, '', 'OXN06910132', 361, '浅蓝色', 'http://img.huayikeji.com/76yre98jhd5mgvkhgvqcdlktdthof0z0', 0, '32', 0, '', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (345, 25, '', 'OXN06910225', 319, '深蓝色', 'http://img.huayikeji.com/tmx42ow0jykbhjrid8d41cr1lsvaidql', 0, '25', 0, '', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (346, 25, '', 'OXN06910226', 319, '深蓝色', 'http://img.huayikeji.com/tmx42ow0jykbhjrid8d41cr1lsvaidql', 0, '26', 0, '', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (347, 25, '', 'OXN06910227', 319, '深蓝色', 'http://img.huayikeji.com/tmx42ow0jykbhjrid8d41cr1lsvaidql', 0, '27', 0, '', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (348, 25, '', 'OXN06910228', 319, '深蓝色', 'http://img.huayikeji.com/tmx42ow0jykbhjrid8d41cr1lsvaidql', 0, '28', 0, '', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (349, 25, '', 'OXN06910229', 319, '深蓝色', 'http://img.huayikeji.com/tmx42ow0jykbhjrid8d41cr1lsvaidql', 0, '29', 0, '', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (350, 25, '', 'OXN06910230', 319, '深蓝色', 'http://img.huayikeji.com/tmx42ow0jykbhjrid8d41cr1lsvaidql', 0, '30', 0, '', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (351, 25, '', 'OXN06910231', 319, '深蓝色', 'http://img.huayikeji.com/tmx42ow0jykbhjrid8d41cr1lsvaidql', 0, '31', 0, '', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (352, 25, '', 'OXN06910232', 319, '深蓝色', 'http://img.huayikeji.com/tmx42ow0jykbhjrid8d41cr1lsvaidql', 0, '32', 0, '', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (353, 26, '', 'HN06300101', 389, '黑灰色', 'http://img.huayikeji.com/kcjtgriwhgpz0njn420akyrcfflk6yrd', 341, 'S', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (354, 26, '', 'HN06300102', 389, '黑灰色', 'http://img.huayikeji.com/kcjtgriwhgpz0njn420akyrcfflk6yrd', 342, 'M', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (355, 26, '', 'HN06300103', 389, '黑灰色', 'http://img.huayikeji.com/kcjtgriwhgpz0njn420akyrcfflk6yrd', 343, 'L', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (356, 26, '', 'HN06300104', 389, '黑灰色', 'http://img.huayikeji.com/kcjtgriwhgpz0njn420akyrcfflk6yrd', 344, 'XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (357, 26, '', 'HN06300105', 389, '黑灰色', 'http://img.huayikeji.com/kcjtgriwhgpz0njn420akyrcfflk6yrd', 345, '2XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (358, 26, '', 'HN06300201', 361, '浅蓝色', 'http://img.huayikeji.com/86rh8lzpijus7pc7zcx4ld052uyzew7p', 341, 'S', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (359, 26, '', 'HN06300202', 361, '浅蓝色', 'http://img.huayikeji.com/86rh8lzpijus7pc7zcx4ld052uyzew7p', 342, 'M', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (360, 26, '', 'HN06300203', 361, '浅蓝色', 'http://img.huayikeji.com/86rh8lzpijus7pc7zcx4ld052uyzew7p', 343, 'L', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (361, 26, '', 'HN06300204', 361, '浅蓝色', 'http://img.huayikeji.com/86rh8lzpijus7pc7zcx4ld052uyzew7p', 344, 'XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (362, 26, '', 'HN06300205', 361, '浅蓝色', 'http://img.huayikeji.com/86rh8lzpijus7pc7zcx4ld052uyzew7p', 345, '2XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (363, 26, '', 'HN06300301', 319, '深蓝色', 'http://img.huayikeji.com/6193racfe6v2gls3c5582rxs6h6xpvqo', 341, 'S', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (364, 26, '', 'HN06300302', 319, '深蓝色', 'http://img.huayikeji.com/6193racfe6v2gls3c5582rxs6h6xpvqo', 342, 'M', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (365, 26, '', 'HN06300303', 319, '深蓝色', 'http://img.huayikeji.com/6193racfe6v2gls3c5582rxs6h6xpvqo', 343, 'L', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (366, 26, '', 'HN06300304', 319, '深蓝色', 'http://img.huayikeji.com/6193racfe6v2gls3c5582rxs6h6xpvqo', 344, 'XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (367, 26, '', 'HN06300305', 319, '深蓝色', 'http://img.huayikeji.com/6193racfe6v2gls3c5582rxs6h6xpvqo', 345, '2XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (368, 27, '', 'HN0234025', 356, '复古蓝', 'http://img.huayikeji.com/g0gsgjfmuvl7jkl22sdbfpbcvb2ozki1', 401, '25', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (369, 27, '', 'HN0234026', 356, '复古蓝', 'http://img.huayikeji.com/g0gsgjfmuvl7jkl22sdbfpbcvb2ozki1', 402, '26', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (370, 27, '', 'HN0234027', 356, '复古蓝', 'http://img.huayikeji.com/g0gsgjfmuvl7jkl22sdbfpbcvb2ozki1', 403, '27', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (371, 27, '', 'HN0234028', 356, '复古蓝', 'http://img.huayikeji.com/g0gsgjfmuvl7jkl22sdbfpbcvb2ozki1', 404, '28', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (372, 27, '', 'HN0234029', 356, '复古蓝', 'http://img.huayikeji.com/g0gsgjfmuvl7jkl22sdbfpbcvb2ozki1', 405, '29', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (373, 27, '', 'HN0234030', 356, '复古蓝', 'http://img.huayikeji.com/g0gsgjfmuvl7jkl22sdbfpbcvb2ozki1', 406, '30', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (374, 27, '', 'HN0234031', 356, '复古蓝', 'http://img.huayikeji.com/g0gsgjfmuvl7jkl22sdbfpbcvb2ozki1', 407, '31', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (375, 27, '', 'HN0234032', 356, '复古蓝', 'http://img.huayikeji.com/g0gsgjfmuvl7jkl22sdbfpbcvb2ozki1', 408, '32', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (376, 27, '', 'HN0237525', 389, '黑灰色', 'http://img.huayikeji.com/zydifc6i4epw9fnf192l6la94vu18pyw', 401, '25', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (377, 27, '', 'HN0237526', 389, '黑灰色', 'http://img.huayikeji.com/zydifc6i4epw9fnf192l6la94vu18pyw', 402, '26', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (378, 27, '', 'HN0237527', 389, '黑灰色', 'http://img.huayikeji.com/zydifc6i4epw9fnf192l6la94vu18pyw', 403, '27', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (379, 27, '', 'HN0237528', 389, '黑灰色', 'http://img.huayikeji.com/zydifc6i4epw9fnf192l6la94vu18pyw', 404, '28', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (380, 27, '', 'HN0237529', 389, '黑灰色', 'http://img.huayikeji.com/zydifc6i4epw9fnf192l6la94vu18pyw', 405, '29', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (381, 27, '', 'HN0237530', 389, '黑灰色', 'http://img.huayikeji.com/zydifc6i4epw9fnf192l6la94vu18pyw', 406, '30', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (382, 27, '', 'HN0237531', 389, '黑灰色', 'http://img.huayikeji.com/zydifc6i4epw9fnf192l6la94vu18pyw', 407, '31', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (383, 27, '', 'HN0237532', 389, '黑灰色', 'http://img.huayikeji.com/zydifc6i4epw9fnf192l6la94vu18pyw', 408, '32', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (384, 27, '', 'HN0232925', 336, '蓝灰色', 'http://img.huayikeji.com/6mux70whkwvf28pb6k9avl8ql7m9hnyo', 401, '25', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (385, 27, '', 'HN0232926', 336, '蓝灰色', 'http://img.huayikeji.com/6mux70whkwvf28pb6k9avl8ql7m9hnyo', 402, '26', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (386, 27, '', 'HN0232927', 336, '蓝灰色', 'http://img.huayikeji.com/6mux70whkwvf28pb6k9avl8ql7m9hnyo', 403, '27', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (387, 27, '', 'HN0232928', 336, '蓝灰色', 'http://img.huayikeji.com/6mux70whkwvf28pb6k9avl8ql7m9hnyo', 404, '28', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (388, 27, '', 'HN0232929', 336, '蓝灰色', 'http://img.huayikeji.com/6mux70whkwvf28pb6k9avl8ql7m9hnyo', 405, '29', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (389, 27, '', 'HN0232930', 336, '蓝灰色', 'http://img.huayikeji.com/6mux70whkwvf28pb6k9avl8ql7m9hnyo', 406, '30', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (390, 27, '', 'HN0232931', 336, '蓝灰色', 'http://img.huayikeji.com/6mux70whkwvf28pb6k9avl8ql7m9hnyo', 407, '31', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (391, 27, '', 'HN0232932', 336, '蓝灰色', 'http://img.huayikeji.com/6mux70whkwvf28pb6k9avl8ql7m9hnyo', 408, '32', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (392, 27, '', 'HN0230125', 308, '黑色', 'http://img.huayikeji.com/8p4iw27ejggt0fr66jpbbwxrif65aey7', 401, '25', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (393, 27, '', 'HN0230126', 308, '黑色', 'http://img.huayikeji.com/8p4iw27ejggt0fr66jpbbwxrif65aey7', 402, '26', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (394, 27, '', 'HN0230127', 308, '黑色', 'http://img.huayikeji.com/8p4iw27ejggt0fr66jpbbwxrif65aey7', 403, '27', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (395, 27, '', 'HN0230128', 308, '黑色', 'http://img.huayikeji.com/8p4iw27ejggt0fr66jpbbwxrif65aey7', 404, '28', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (396, 27, '', 'HN0230129', 308, '黑色', 'http://img.huayikeji.com/8p4iw27ejggt0fr66jpbbwxrif65aey7', 405, '29', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (397, 27, '', 'HN0230130', 308, '黑色', 'http://img.huayikeji.com/8p4iw27ejggt0fr66jpbbwxrif65aey7', 406, '30', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (398, 27, '', 'HN0230131', 308, '黑色', 'http://img.huayikeji.com/8p4iw27ejggt0fr66jpbbwxrif65aey7', 407, '31', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (399, 27, '', 'HN0230132', 308, '黑色', 'http://img.huayikeji.com/8p4iw27ejggt0fr66jpbbwxrif65aey7', 408, '32', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (400, 9, '', 'HN80264001', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01gpoCDV2FOyAxsRAur_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (401, 9, '', 'HN80264002', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01gpoCDV2FOyAxsRAur_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (402, 9, '', 'HN80264003', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01gpoCDV2FOyAxsRAur_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (403, 9, '', 'HN80264004', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01gpoCDV2FOyAxsRAur_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (404, 9, '', 'HN80264005', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01gpoCDV2FOyAxsRAur_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (405, 9, '', 'HN80267501', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01xa9IvK2FOyB0MYQJW_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (406, 9, '', 'HN80267502', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01xa9IvK2FOyB0MYQJW_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (407, 9, '', 'HN80267503', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01xa9IvK2FOyB0MYQJW_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (408, 9, '', 'HN80267504', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01xa9IvK2FOyB0MYQJW_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (409, 9, '', 'HN80267505', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01xa9IvK2FOyB0MYQJW_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 19.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (410, 28, '', 'HN6705001', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/2020/033/066/21020660330_900849200.jpg', 341, 'S', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (411, 28, '', 'HN6705002', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/2020/033/066/21020660330_900849200.jpg', 342, 'M', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (412, 28, '', 'HN6705003', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/2020/033/066/21020660330_900849200.jpg', 343, 'L', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (413, 28, '', 'HN6705004', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/2020/033/066/21020660330_900849200.jpg', 344, 'XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (414, 28, '', 'HN6705005', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/2020/033/066/21020660330_900849200.jpg', 345, '2XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (415, 28, '', 'HN6707501', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/2020/657/708/20862807756_900849200.jpg', 341, 'S', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (416, 28, '', 'HN6707502', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/2020/657/708/20862807756_900849200.jpg', 342, 'M', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (417, 28, '', 'HN6707503', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/2020/657/708/20862807756_900849200.jpg', 343, 'L', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (418, 28, '', 'HN6707504', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/2020/657/708/20862807756_900849200.jpg', 344, 'XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (419, 28, '', 'HN6707505', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/2020/657/708/20862807756_900849200.jpg', 345, '2XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (420, 28, '', 'HN6704001', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/2020/080/060/20938060080_900849200.jpg', 341, 'S', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (421, 28, '', 'HN6704002', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/2020/080/060/20938060080_900849200.jpg', 342, 'M', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (422, 28, '', 'HN6704003', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/2020/080/060/20938060080_900849200.jpg', 343, 'L', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (423, 28, '', 'HN6704004', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/2020/080/060/20938060080_900849200.jpg', 344, 'XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (424, 28, '', 'HN6704005', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/2020/080/060/20938060080_900849200.jpg', 345, '2XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (425, 29, '', 'HNP1820101', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01O6JSPt2FOyGJVlNSt_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 21.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (426, 29, '', 'HNP1820102', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01O6JSPt2FOyGJVlNSt_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 21.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (427, 29, '', 'HNP1820103', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01O6JSPt2FOyGJVlNSt_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 21.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (428, 29, '', 'HNP1820104', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01O6JSPt2FOyGJVlNSt_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 21.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (429, 29, '', 'HNP1820105', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01O6JSPt2FOyGJVlNSt_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 21.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (430, 29, '', 'HNP1821501', 322, '白色', 'https://cbu01.alicdn.com/img/ibank/O1CN01nMB3GV2FOyGSIAxrm_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 21.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (431, 29, '', 'HNP1821502', 322, '白色', 'https://cbu01.alicdn.com/img/ibank/O1CN01nMB3GV2FOyGSIAxrm_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 21.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (432, 29, '', 'HNP1821503', 322, '白色', 'https://cbu01.alicdn.com/img/ibank/O1CN01nMB3GV2FOyGSIAxrm_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 21.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (433, 29, '', 'HNP1821504', 322, '白色', 'https://cbu01.alicdn.com/img/ibank/O1CN01nMB3GV2FOyGSIAxrm_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 21.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (434, 29, '', 'HNP1821505', 322, '白色', 'https://cbu01.alicdn.com/img/ibank/O1CN01nMB3GV2FOyGSIAxrm_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 21.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (435, 29, '', 'HNP1825001', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01yp4pfJ2FOyGRQhOVF_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 21.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (436, 29, '', 'HNP1825002', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01yp4pfJ2FOyGRQhOVF_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 21.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (437, 29, '', 'HNP1825003', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01yp4pfJ2FOyGRQhOVF_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 21.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (438, 29, '', 'HNP1825004', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01yp4pfJ2FOyGRQhOVF_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 21.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (439, 29, '', 'HNP1825005', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01yp4pfJ2FOyGRQhOVF_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 21.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (440, 30, '', 'HN6724001', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01O9k7a72FOyF40eXdL_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (441, 30, '', 'HN6724002', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01O9k7a72FOyF40eXdL_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (442, 30, '', 'HN6724003', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01O9k7a72FOyF40eXdL_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (443, 30, '', 'HN6724004', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01O9k7a72FOyF40eXdL_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (444, 30, '', 'HN6724005', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01O9k7a72FOyF40eXdL_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (445, 31, '', 'HN8010101', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/2020/995/164/22330461599_900849200.jpg', 341, 'S', 0, '', NULL, 28.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (446, 31, '', 'HN8010102', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/2020/995/164/22330461599_900849200.jpg', 342, 'M', 0, '', NULL, 28.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (447, 31, '', 'HN8010103', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/2020/995/164/22330461599_900849200.jpg', 343, 'L', 0, '', NULL, 28.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (448, 31, '', 'HN8010104', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/2020/995/164/22330461599_900849200.jpg', 344, 'XL', 0, '', NULL, 28.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (449, 31, '', 'HN8010105', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/2020/995/164/22330461599_900849200.jpg', 345, '2XL', 0, '', NULL, 28.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (450, 31, '', 'HN8017501', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/2020/343/344/22330443343_900849200.jpg', 341, 'S', 0, '', NULL, 28.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (451, 31, '', 'HN8017502', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/2020/343/344/22330443343_900849200.jpg', 342, 'M', 0, '', NULL, 28.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (452, 31, '', 'HN8017503', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/2020/343/344/22330443343_900849200.jpg', 343, 'L', 0, '', NULL, 28.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (453, 31, '', 'HN8017504', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/2020/343/344/22330443343_900849200.jpg', 344, 'XL', 0, '', NULL, 28.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (454, 31, '', 'HN8017505', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/2020/343/344/22330443343_900849200.jpg', 345, '2XL', 0, '', NULL, 28.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (455, 31, '', 'HN8014001', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/2020/195/327/22411723591_900849200.jpg', 341, 'S', 0, '', NULL, 28.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (456, 31, '', 'HN8014002', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/2020/195/327/22411723591_900849200.jpg', 342, 'M', 0, '', NULL, 28.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (457, 31, '', 'HN8014003', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/2020/195/327/22411723591_900849200.jpg', 343, 'L', 0, '', NULL, 28.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (458, 31, '', 'HN8014004', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/2020/195/327/22411723591_900849200.jpg', 344, 'XL', 0, '', NULL, 28.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (459, 31, '', 'HN8014005', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/2020/195/327/22411723591_900849200.jpg', 345, '2XL', 0, '', NULL, 28.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (460, 31, '', 'HN8012901', 336, '蓝灰色', 'https://cbu01.alicdn.com/img/ibank/2020/281/876/22411678182_900849200.jpg', 341, 'S', 0, '', NULL, 28.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (461, 31, '', 'HN8012902', 336, '蓝灰色', 'https://cbu01.alicdn.com/img/ibank/2020/281/876/22411678182_900849200.jpg', 342, 'M', 0, '', NULL, 28.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (462, 31, '', 'HN8012903', 336, '蓝灰色', 'https://cbu01.alicdn.com/img/ibank/2020/281/876/22411678182_900849200.jpg', 343, 'L', 0, '', NULL, 28.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (463, 31, '', 'HN8012904', 336, '蓝灰色', 'https://cbu01.alicdn.com/img/ibank/2020/281/876/22411678182_900849200.jpg', 344, 'XL', 0, '', NULL, 28.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (464, 31, '', 'HN8012905', 336, '蓝灰色', 'https://cbu01.alicdn.com/img/ibank/2020/281/876/22411678182_900849200.jpg', 345, '2XL', 0, '', NULL, 28.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (465, 31, '', 'HN8015001', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/2020/024/282/22502282420_900849200.jpg', 341, 'S', 0, '', NULL, 28.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (466, 31, '', 'HN8015002', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/2020/024/282/22502282420_900849200.jpg', 342, 'M', 0, '', NULL, 28.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (467, 31, '', 'HN8015003', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/2020/024/282/22502282420_900849200.jpg', 343, 'L', 0, '', NULL, 28.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (468, 31, '', 'HN8015004', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/2020/024/282/22502282420_900849200.jpg', 344, 'XL', 0, '', NULL, 28.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (469, 31, '', 'HN8015005', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/2020/024/282/22502282420_900849200.jpg', 345, '2XL', 0, '', NULL, 28.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (470, 31, '', 'HN8011001', 317, '杏色', 'https://cbu01.alicdn.com/img/ibank/2020/685/864/22502468586_900849200.jpg', 341, 'S', 0, '', NULL, 28.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (471, 31, '', 'HN8011002', 317, '杏色', 'https://cbu01.alicdn.com/img/ibank/2020/685/864/22502468586_900849200.jpg', 342, 'M', 0, '', NULL, 28.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (472, 31, '', 'HN8011003', 317, '杏色', 'https://cbu01.alicdn.com/img/ibank/2020/685/864/22502468586_900849200.jpg', 343, 'L', 0, '', NULL, 28.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (473, 31, '', 'HN8011004', 317, '杏色', 'https://cbu01.alicdn.com/img/ibank/2020/685/864/22502468586_900849200.jpg', 344, 'XL', 0, '', NULL, 28.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (474, 31, '', 'HN8011005', 317, '杏色', 'https://cbu01.alicdn.com/img/ibank/2020/685/864/22502468586_900849200.jpg', 345, '2XL', 0, '', NULL, 28.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (475, 32, '', 'HN6975001', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN011EipyD2FOyGlVSb58_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (476, 32, '', 'HN6975002', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN011EipyD2FOyGlVSb58_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (477, 32, '', 'HN6975003', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN011EipyD2FOyGlVSb58_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (478, 32, '', 'HN6975004', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN011EipyD2FOyGlVSb58_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (479, 32, '', 'HN6975005', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN011EipyD2FOyGlVSb58_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (480, 32, '', 'HN6977501', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01zhhpHl2FOyGk0i8Nf_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (481, 32, '', 'HN6977502', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01zhhpHl2FOyGk0i8Nf_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (482, 32, '', 'HN6977503', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01zhhpHl2FOyGk0i8Nf_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (483, 32, '', 'HN6977504', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01zhhpHl2FOyGk0i8Nf_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (484, 32, '', 'HN6977505', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01zhhpHl2FOyGk0i8Nf_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (485, 32, '', 'HN6971001', 317, '杏色', 'https://cbu01.alicdn.com/img/ibank/O1CN01u87ebo2FOyGsDbhyd_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (486, 32, '', 'HN6971002', 317, '杏色', 'https://cbu01.alicdn.com/img/ibank/O1CN01u87ebo2FOyGsDbhyd_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (487, 32, '', 'HN6971003', 317, '杏色', 'https://cbu01.alicdn.com/img/ibank/O1CN01u87ebo2FOyGsDbhyd_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (488, 32, '', 'HN6971004', 317, '杏色', 'https://cbu01.alicdn.com/img/ibank/O1CN01u87ebo2FOyGsDbhyd_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (489, 32, '', 'HN6971005', 317, '杏色', 'https://cbu01.alicdn.com/img/ibank/O1CN01u87ebo2FOyGsDbhyd_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (490, 33, '', 'HN08010101', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01veMucP2FOyCvGWh20_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 25.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (491, 33, '', 'HN08010102', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01veMucP2FOyCvGWh20_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 25.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (492, 33, '', 'HN08010103', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01veMucP2FOyCvGWh20_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 25.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (493, 33, '', 'HN08010104', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01veMucP2FOyCvGWh20_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 25.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (494, 33, '', 'HN08010105', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01veMucP2FOyCvGWh20_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 25.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (495, 33, '', 'HN08017501', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01T4m3Jm2FOyCuMBQ9v_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 25.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (496, 33, '', 'HN08017502', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01T4m3Jm2FOyCuMBQ9v_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 25.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (497, 33, '', 'HN08017503', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01T4m3Jm2FOyCuMBQ9v_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 25.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (498, 33, '', 'HN08017504', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01T4m3Jm2FOyCuMBQ9v_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 25.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (499, 33, '', 'HN08017505', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01T4m3Jm2FOyCuMBQ9v_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 25.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (500, 33, '', 'HN08012901', 336, '蓝灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01eWGzKH2FOyCrd3HjP_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 25.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (501, 33, '', 'HN08012902', 336, '蓝灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01eWGzKH2FOyCrd3HjP_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 25.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (502, 33, '', 'HN08012903', 336, '蓝灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01eWGzKH2FOyCrd3HjP_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 25.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (503, 33, '', 'HN08012904', 336, '蓝灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01eWGzKH2FOyCrd3HjP_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 25.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (504, 33, '', 'HN08012905', 336, '蓝灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01eWGzKH2FOyCrd3HjP_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 25.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (505, 33, '', 'HN08014001', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01zJ8R7I2FOyCr3v2cC_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 25.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (506, 33, '', 'HN08014002', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01zJ8R7I2FOyCr3v2cC_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 25.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (507, 33, '', 'HN08014003', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01zJ8R7I2FOyCr3v2cC_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 25.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (508, 33, '', 'HN08014004', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01zJ8R7I2FOyCr3v2cC_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 25.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (509, 33, '', 'HN08014005', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01zJ8R7I2FOyCr3v2cC_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 25.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (510, 34, '', 'HN6210101', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01DMb5Yv2FOyEph4yYB_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (511, 34, '', 'HN6210102', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01DMb5Yv2FOyEph4yYB_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (512, 34, '', 'HN6210103', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01DMb5Yv2FOyEph4yYB_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (513, 34, '', 'HN6210104', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01DMb5Yv2FOyEph4yYB_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (514, 34, '', 'HN6210105', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01DMb5Yv2FOyEph4yYB_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (515, 34, '', 'HN6217501', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01HLBVQl2FOyEn4nMnB_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (516, 34, '', 'HN6217502', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01HLBVQl2FOyEn4nMnB_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (517, 34, '', 'HN6217503', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01HLBVQl2FOyEn4nMnB_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (518, 34, '', 'HN6217504', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01HLBVQl2FOyEn4nMnB_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (519, 34, '', 'HN6217505', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01HLBVQl2FOyEn4nMnB_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (520, 34, '', 'HN6215001', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01YPm5Yc2FOyEkRHf9E_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (521, 34, '', 'HN6215002', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01YPm5Yc2FOyEkRHf9E_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (522, 34, '', 'HN6215003', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01YPm5Yc2FOyEkRHf9E_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (523, 34, '', 'HN6215004', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01YPm5Yc2FOyEkRHf9E_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (524, 34, '', 'HN6215005', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01YPm5Yc2FOyEkRHf9E_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (525, 34, '', 'HN6214001', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01TLlyFy2FOyEkRLLyI_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (526, 34, '', 'HN6214002', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01TLlyFy2FOyEkRLLyI_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (527, 34, '', 'HN6214003', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01TLlyFy2FOyEkRLLyI_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (528, 34, '', 'HN6214004', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01TLlyFy2FOyEkRLLyI_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (529, 34, '', 'HN6214005', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01TLlyFy2FOyEkRLLyI_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (530, 35, '', 'HN6625001', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/2020/732/346/22406643237_900849200.jpg', 341, 'S', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (531, 35, '', 'HN6625002', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/2020/732/346/22406643237_900849200.jpg', 342, 'M', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (532, 35, '', 'HN6625003', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/2020/732/346/22406643237_900849200.jpg', 343, 'L', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (533, 35, '', 'HN6625004', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/2020/732/346/22406643237_900849200.jpg', 344, 'XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (534, 35, '', 'HN6625005', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/2020/732/346/22406643237_900849200.jpg', 345, '2XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (535, 36, '', 'HN6927501', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01FDRxMp2FOyDOB1iTE_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (536, 36, '', 'HN6927502', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01FDRxMp2FOyDOB1iTE_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (537, 36, '', 'HN6927503', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01FDRxMp2FOyDOB1iTE_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (538, 36, '', 'HN6927504', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01FDRxMp2FOyDOB1iTE_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (539, 36, '', 'HN6927505', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01FDRxMp2FOyDOB1iTE_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (540, 36, '', 'HN6925001', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01Kn6Ove2FOyDUNlzou_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (541, 36, '', 'HN6925002', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01Kn6Ove2FOyDUNlzou_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (542, 36, '', 'HN6925003', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01Kn6Ove2FOyDUNlzou_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (543, 36, '', 'HN6925004', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01Kn6Ove2FOyDUNlzou_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (544, 36, '', 'HN6925005', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01Kn6Ove2FOyDUNlzou_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (545, 37, '', 'HN1060101', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01xwzF522FOyCIOnqKM_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (546, 37, '', 'HN1060102', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01xwzF522FOyCIOnqKM_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (547, 37, '', 'HN1060103', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01xwzF522FOyCIOnqKM_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (548, 37, '', 'HN1060104', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01xwzF522FOyCIOnqKM_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (549, 37, '', 'HN1060105', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01xwzF522FOyCIOnqKM_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (550, 37, '', 'HN1064001', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01C6Sn4s2FOyCMDu0n5_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (551, 37, '', 'HN1064002', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01C6Sn4s2FOyCMDu0n5_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (552, 37, '', 'HN1064003', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01C6Sn4s2FOyCMDu0n5_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (553, 37, '', 'HN1064004', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01C6Sn4s2FOyCMDu0n5_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (554, 37, '', 'HN1064005', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01C6Sn4s2FOyCMDu0n5_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (555, 37, '', 'HN1062901', 336, '蓝灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN013vTM8R2FOyCEFuCQk_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (556, 37, '', 'HN1062902', 336, '蓝灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN013vTM8R2FOyCEFuCQk_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (557, 37, '', 'HN1062903', 336, '蓝灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN013vTM8R2FOyCEFuCQk_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (558, 37, '', 'HN1062904', 336, '蓝灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN013vTM8R2FOyCEFuCQk_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (559, 37, '', 'HN1062905', 336, '蓝灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN013vTM8R2FOyCEFuCQk_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (560, 38, '', 'HN6635001', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01ARPAL32FOyAcs8t96_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (561, 38, '', 'HN6635002', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01ARPAL32FOyAcs8t96_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (562, 38, '', 'HN6635003', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01ARPAL32FOyAcs8t96_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (563, 38, '', 'HN6635004', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01ARPAL32FOyAcs8t96_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (564, 38, '', 'HN6635005', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01ARPAL32FOyAcs8t96_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (565, 38, '', 'HN6637501', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01y01tnq2FOyAbctZxT_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (566, 38, '', 'HN6637502', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01y01tnq2FOyAbctZxT_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (567, 38, '', 'HN6637503', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01y01tnq2FOyAbctZxT_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (568, 38, '', 'HN6637504', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01y01tnq2FOyAbctZxT_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (569, 38, '', 'HN6637505', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01y01tnq2FOyAbctZxT_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (570, 39, '', 'HN0220126', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN018JTrMY2FOyA4kgljs_!!2208857268871-0-cib.jpg', 402, '26', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (571, 39, '', 'HN0220127', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN018JTrMY2FOyA4kgljs_!!2208857268871-0-cib.jpg', 403, '27', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (572, 39, '', 'HN0220128', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN018JTrMY2FOyA4kgljs_!!2208857268871-0-cib.jpg', 404, '28', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (573, 39, '', 'HN0220129', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN018JTrMY2FOyA4kgljs_!!2208857268871-0-cib.jpg', 405, '29', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (574, 39, '', 'HN0220130', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN018JTrMY2FOyA4kgljs_!!2208857268871-0-cib.jpg', 406, '30', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (575, 39, '', 'HN0220131', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN018JTrMY2FOyA4kgljs_!!2208857268871-0-cib.jpg', 407, '31', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (576, 39, '', 'HN0220132', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN018JTrMY2FOyA4kgljs_!!2208857268871-0-cib.jpg', 408, '32', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (577, 39, '', 'HN0222926', 336, '蓝灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN012TyoAb2FOyA5iihhy_!!2208857268871-0-cib.jpg', 402, '26', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (578, 39, '', 'HN0222927', 336, '蓝灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN012TyoAb2FOyA5iihhy_!!2208857268871-0-cib.jpg', 403, '27', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (579, 39, '', 'HN0222928', 336, '蓝灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN012TyoAb2FOyA5iihhy_!!2208857268871-0-cib.jpg', 404, '28', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (580, 39, '', 'HN0222929', 336, '蓝灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN012TyoAb2FOyA5iihhy_!!2208857268871-0-cib.jpg', 405, '29', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (581, 39, '', 'HN0222930', 336, '蓝灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN012TyoAb2FOyA5iihhy_!!2208857268871-0-cib.jpg', 406, '30', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (582, 39, '', 'HN0222931', 336, '蓝灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN012TyoAb2FOyA5iihhy_!!2208857268871-0-cib.jpg', 407, '31', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (583, 39, '', 'HN0222932', 336, '蓝灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN012TyoAb2FOyA5iihhy_!!2208857268871-0-cib.jpg', 408, '32', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (584, 40, '', 'HN6685001', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01lUqTwm2FOy9rP6Jod_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (585, 40, '', 'HN6685002', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01lUqTwm2FOy9rP6Jod_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (586, 40, '', 'HN6685003', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01lUqTwm2FOy9rP6Jod_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (587, 40, '', 'HN6685004', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01lUqTwm2FOy9rP6Jod_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (588, 40, '', 'HN6685005', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01lUqTwm2FOy9rP6Jod_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (589, 40, '', 'HN6681201', 319, '深蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01D3ndSV2FOy9hbKsqA_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (590, 40, '', 'HN6681202', 319, '深蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01D3ndSV2FOy9hbKsqA_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (591, 40, '', 'HN6681203', 319, '深蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01D3ndSV2FOy9hbKsqA_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (592, 40, '', 'HN6681204', 319, '深蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01D3ndSV2FOy9hbKsqA_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (593, 40, '', 'HN6681205', 319, '深蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01D3ndSV2FOy9hbKsqA_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (594, 40, '', 'HN6687501', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01YsByd92FOy9lGqpvL_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (595, 40, '', 'HN6687502', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01YsByd92FOy9lGqpvL_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (596, 40, '', 'HN6687503', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01YsByd92FOy9lGqpvL_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (597, 40, '', 'HN6687504', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01YsByd92FOy9lGqpvL_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (598, 40, '', 'HN6687505', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01YsByd92FOy9lGqpvL_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (599, 41, '', 'HN6675001', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01J3Quqe2FOyH5tjtiy_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (600, 41, '', 'HN6675002', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01J3Quqe2FOyH5tjtiy_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (601, 41, '', 'HN6675003', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01J3Quqe2FOyH5tjtiy_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (602, 41, '', 'HN6675004', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01J3Quqe2FOyH5tjtiy_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (603, 41, '', 'HN6675005', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01J3Quqe2FOyH5tjtiy_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (604, 41, '', 'HN6674001', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01a2j3nN2FOyHBXnetl_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (605, 41, '', 'HN6674002', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01a2j3nN2FOyHBXnetl_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (606, 41, '', 'HN6674003', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01a2j3nN2FOyHBXnetl_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (607, 41, '', 'HN6674004', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01a2j3nN2FOyHBXnetl_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (608, 41, '', 'HN6674005', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01a2j3nN2FOyHBXnetl_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (609, 42, '', 'HN2221226', 319, '深蓝色', 'https://cbu01.alicdn.com/img/ibank/2020/176/214/19868412671_900849200.jpg', 402, '26', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (610, 42, '', 'HN2221227', 319, '深蓝色', 'https://cbu01.alicdn.com/img/ibank/2020/176/214/19868412671_900849200.jpg', 403, '27', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (611, 42, '', 'HN2221228', 319, '深蓝色', 'https://cbu01.alicdn.com/img/ibank/2020/176/214/19868412671_900849200.jpg', 404, '28', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (612, 42, '', 'HN2221229', 319, '深蓝色', 'https://cbu01.alicdn.com/img/ibank/2020/176/214/19868412671_900849200.jpg', 405, '29', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (613, 42, '', 'HN2221230', 319, '深蓝色', 'https://cbu01.alicdn.com/img/ibank/2020/176/214/19868412671_900849200.jpg', 406, '30', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (614, 42, '', 'HN2221231', 319, '深蓝色', 'https://cbu01.alicdn.com/img/ibank/2020/176/214/19868412671_900849200.jpg', 407, '31', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (615, 42, '', 'HN2221232', 319, '深蓝色', 'https://cbu01.alicdn.com/img/ibank/2020/176/214/19868412671_900849200.jpg', 408, '32', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (616, 42, '', 'HN2225026', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/2020/537/457/19941754735_900849200.jpg', 402, '26', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (617, 42, '', 'HN2225027', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/2020/537/457/19941754735_900849200.jpg', 403, '27', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (618, 42, '', 'HN2225028', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/2020/537/457/19941754735_900849200.jpg', 404, '28', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (619, 42, '', 'HN2225029', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/2020/537/457/19941754735_900849200.jpg', 405, '29', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (620, 42, '', 'HN2225030', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/2020/537/457/19941754735_900849200.jpg', 406, '30', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (621, 42, '', 'HN2225031', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/2020/537/457/19941754735_900849200.jpg', 407, '31', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (622, 42, '', 'HN2225032', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/2020/537/457/19941754735_900849200.jpg', 408, '32', 0, '', NULL, 30.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (623, 43, '', 'HN6945001', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/2020/842/093/21808390248_900849200.jpg', 341, 'S', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (624, 43, '', 'HN6945002', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/2020/842/093/21808390248_900849200.jpg', 342, 'M', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (625, 43, '', 'HN6945003', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/2020/842/093/21808390248_900849200.jpg', 343, 'L', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (626, 43, '', 'HN6945004', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/2020/842/093/21808390248_900849200.jpg', 344, 'XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (627, 43, '', 'HN6945005', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/2020/842/093/21808390248_900849200.jpg', 345, '2XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (628, 43, '', 'HN6947501', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/2020/705/941/21730149507_900849200.jpg', 341, 'S', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (629, 43, '', 'HN6947502', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/2020/705/941/21730149507_900849200.jpg', 342, 'M', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (630, 43, '', 'HN6947503', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/2020/705/941/21730149507_900849200.jpg', 343, 'L', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (631, 43, '', 'HN6947504', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/2020/705/941/21730149507_900849200.jpg', 344, 'XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (632, 43, '', 'HN6947505', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/2020/705/941/21730149507_900849200.jpg', 345, '2XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (633, 44, '', 'HN6600101', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01DIe7Es2FOyCYIZFWt_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (634, 44, '', 'HN6600102', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01DIe7Es2FOyCYIZFWt_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (635, 44, '', 'HN6600103', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01DIe7Es2FOyCYIZFWt_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (636, 44, '', 'HN6600104', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01DIe7Es2FOyCYIZFWt_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (637, 44, '', 'HN6600105', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01DIe7Es2FOyCYIZFWt_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (638, 44, '', 'HN6605001', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN016QWq2N2FOyCSH3gt9_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (639, 44, '', 'HN6605002', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN016QWq2N2FOyCSH3gt9_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (640, 44, '', 'HN6605003', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN016QWq2N2FOyCSH3gt9_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (641, 44, '', 'HN6605004', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN016QWq2N2FOyCSH3gt9_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (642, 44, '', 'HN6605005', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN016QWq2N2FOyCSH3gt9_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (643, 44, '', 'HN6607501', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01evRAWu2FOyCUPwcyo_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (644, 44, '', 'HN6607502', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01evRAWu2FOyCUPwcyo_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (645, 44, '', 'HN6607503', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01evRAWu2FOyCUPwcyo_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (646, 44, '', 'HN6607504', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01evRAWu2FOyCUPwcyo_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (647, 44, '', 'HN6607505', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01evRAWu2FOyCUPwcyo_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (648, 44, '', 'HN6604001', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01ZxdpVe2FOyCUVHjc2_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (649, 44, '', 'HN6604002', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01ZxdpVe2FOyCUVHjc2_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (650, 44, '', 'HN6604003', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01ZxdpVe2FOyCUVHjc2_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (651, 44, '', 'HN6604004', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01ZxdpVe2FOyCUVHjc2_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (652, 44, '', 'HN6604005', 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01ZxdpVe2FOyCUVHjc2_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (653, 45, '', 'HN6861501', 322, '白色', 'https://cbu01.alicdn.com/img/ibank/O1CN01E4FgMe2FOyCf3EUih_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (654, 45, '', 'HN6861502', 322, '白色', 'https://cbu01.alicdn.com/img/ibank/O1CN01E4FgMe2FOyCf3EUih_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (655, 45, '', 'HN6861503', 322, '白色', 'https://cbu01.alicdn.com/img/ibank/O1CN01E4FgMe2FOyCf3EUih_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (656, 45, '', 'HN6861504', 322, '白色', 'https://cbu01.alicdn.com/img/ibank/O1CN01E4FgMe2FOyCf3EUih_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (657, 45, '', 'HN6861505', 322, '白色', 'https://cbu01.alicdn.com/img/ibank/O1CN01E4FgMe2FOyCf3EUih_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (658, 45, '', 'HN6860101', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01WpxUo32FOyCb3IFRu_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (659, 45, '', 'HN6860102', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01WpxUo32FOyCb3IFRu_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (660, 45, '', 'HN6860103', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01WpxUo32FOyCb3IFRu_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (661, 45, '', 'HN6860104', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01WpxUo32FOyCb3IFRu_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (662, 45, '', 'HN6860105', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01WpxUo32FOyCb3IFRu_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (663, 45, '', 'HN6865001', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01LNgHTm2FOyCf3KXQX_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (664, 45, '', 'HN6865002', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01LNgHTm2FOyCf3KXQX_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (665, 45, '', 'HN6865003', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01LNgHTm2FOyCf3KXQX_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (666, 45, '', 'HN6865004', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01LNgHTm2FOyCf3KXQX_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (667, 45, '', 'HN6865005', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01LNgHTm2FOyCf3KXQX_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (668, 45, '', 'HN6867501', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01A6gZ4a2FOyChQ6oRF_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (669, 45, '', 'HN6867502', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01A6gZ4a2FOyChQ6oRF_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (670, 45, '', 'HN6867503', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01A6gZ4a2FOyChQ6oRF_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (671, 45, '', 'HN6867504', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01A6gZ4a2FOyChQ6oRF_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (672, 45, '', 'HN6867505', 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01A6gZ4a2FOyChQ6oRF_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (673, 46, '', 'HN0210126', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01Nak9ys2FOyE9IvLef_!!2208857268871-0-cib.jpg', 402, '26', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (674, 46, '', 'HN0210127', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01Nak9ys2FOyE9IvLef_!!2208857268871-0-cib.jpg', 403, '27', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (675, 46, '', 'HN0210128', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01Nak9ys2FOyE9IvLef_!!2208857268871-0-cib.jpg', 404, '28', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (676, 46, '', 'HN0210129', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01Nak9ys2FOyE9IvLef_!!2208857268871-0-cib.jpg', 405, '29', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (677, 46, '', 'HN0210130', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01Nak9ys2FOyE9IvLef_!!2208857268871-0-cib.jpg', 406, '30', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (678, 46, '', 'HN0210131', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01Nak9ys2FOyE9IvLef_!!2208857268871-0-cib.jpg', 407, '31', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (679, 46, '', 'HN0210132', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01Nak9ys2FOyE9IvLef_!!2208857268871-0-cib.jpg', 408, '32', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (680, 46, '', 'HN0212826', 336, '烟灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01Oi8GB62FOyEARfNQF_!!2208857268871-0-cib.jpg', 402, '26', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (681, 46, '', 'HN0212827', 336, '烟灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01Oi8GB62FOyEARfNQF_!!2208857268871-0-cib.jpg', 403, '27', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (682, 46, '', 'HN0212828', 336, '烟灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01Oi8GB62FOyEARfNQF_!!2208857268871-0-cib.jpg', 404, '28', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (683, 46, '', 'HN0212829', 336, '烟灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01Oi8GB62FOyEARfNQF_!!2208857268871-0-cib.jpg', 405, '29', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (684, 46, '', 'HN0212830', 336, '烟灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01Oi8GB62FOyEARfNQF_!!2208857268871-0-cib.jpg', 406, '30', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (685, 46, '', 'HN0212831', 336, '烟灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01Oi8GB62FOyEARfNQF_!!2208857268871-0-cib.jpg', 407, '31', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (686, 46, '', 'HN0212832', 336, '烟灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01Oi8GB62FOyEARfNQF_!!2208857268871-0-cib.jpg', 408, '32', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (687, 46, '', 'HN0215026', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01yMCDYu2FOyEARqBVY_!!2208857268871-0-cib.jpg', 402, '26', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (688, 46, '', 'HN0215027', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01yMCDYu2FOyEARqBVY_!!2208857268871-0-cib.jpg', 403, '27', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (689, 46, '', 'HN0215028', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01yMCDYu2FOyEARqBVY_!!2208857268871-0-cib.jpg', 404, '28', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (690, 46, '', 'HN0215029', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01yMCDYu2FOyEARqBVY_!!2208857268871-0-cib.jpg', 405, '29', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (691, 46, '', 'HN0215030', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01yMCDYu2FOyEARqBVY_!!2208857268871-0-cib.jpg', 406, '30', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (692, 46, '', 'HN0215031', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01yMCDYu2FOyEARqBVY_!!2208857268871-0-cib.jpg', 407, '31', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (693, 46, '', 'HN0215032', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01yMCDYu2FOyEARqBVY_!!2208857268871-0-cib.jpg', 408, '32', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (694, 46, '', 'HN0212926', 336, '蓝灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01SzZ7qE2FOyE5Ahn5c_!!2208857268871-0-cib.jpg', 402, '26', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (695, 46, '', 'HN0212927', 336, '蓝灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01SzZ7qE2FOyE5Ahn5c_!!2208857268871-0-cib.jpg', 403, '27', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (696, 46, '', 'HN0212928', 336, '蓝灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01SzZ7qE2FOyE5Ahn5c_!!2208857268871-0-cib.jpg', 404, '28', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (697, 46, '', 'HN0212929', 336, '蓝灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01SzZ7qE2FOyE5Ahn5c_!!2208857268871-0-cib.jpg', 405, '29', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (698, 46, '', 'HN0212930', 336, '蓝灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01SzZ7qE2FOyE5Ahn5c_!!2208857268871-0-cib.jpg', 406, '30', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (699, 46, '', 'HN0212931', 336, '蓝灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01SzZ7qE2FOyE5Ahn5c_!!2208857268871-0-cib.jpg', 407, '31', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (700, 46, '', 'HN0212932', 336, '蓝灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01SzZ7qE2FOyE5Ahn5c_!!2208857268871-0-cib.jpg', 408, '32', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (701, 46, '', 'HN02110026', 0, '黑色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01GXj19V2FOyDvtRpMI_!!2208857268871-0-cib.jpg', 402, '26', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (702, 46, '', 'HN02110027', 0, '黑色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01GXj19V2FOyDvtRpMI_!!2208857268871-0-cib.jpg', 403, '27', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (703, 46, '', 'HN02110028', 0, '黑色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01GXj19V2FOyDvtRpMI_!!2208857268871-0-cib.jpg', 404, '28', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (704, 46, '', 'HN02110029', 0, '黑色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01GXj19V2FOyDvtRpMI_!!2208857268871-0-cib.jpg', 405, '29', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (705, 46, '', 'HN02110030', 0, '黑色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01GXj19V2FOyDvtRpMI_!!2208857268871-0-cib.jpg', 406, '30', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (706, 46, '', 'HN02110031', 0, '黑色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01GXj19V2FOyDvtRpMI_!!2208857268871-0-cib.jpg', 407, '31', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (707, 46, '', 'HN02110032', 0, '黑色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01GXj19V2FOyDvtRpMI_!!2208857268871-0-cib.jpg', 408, '32', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (708, 46, '', 'HN02128026', 0, '烟灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01nw66Rp2FOyECsleSF_!!2208857268871-0-cib.jpg', 402, '26', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (709, 46, '', 'HN02128027', 0, '烟灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01nw66Rp2FOyECsleSF_!!2208857268871-0-cib.jpg', 403, '27', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (710, 46, '', 'HN02128028', 0, '烟灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01nw66Rp2FOyECsleSF_!!2208857268871-0-cib.jpg', 404, '28', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (711, 46, '', 'HN02128029', 0, '烟灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01nw66Rp2FOyECsleSF_!!2208857268871-0-cib.jpg', 405, '29', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (712, 46, '', 'HN02128030', 0, '烟灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01nw66Rp2FOyECsleSF_!!2208857268871-0-cib.jpg', 406, '30', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (713, 46, '', 'HN02128031', 0, '烟灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01nw66Rp2FOyECsleSF_!!2208857268871-0-cib.jpg', 407, '31', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (714, 46, '', 'HN02128032', 0, '烟灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01nw66Rp2FOyECsleSF_!!2208857268871-0-cib.jpg', 408, '32', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (715, 46, '', 'HN02129026', 0, '蓝灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01tCa6sF2FOyE8JtRoh_!!2208857268871-0-cib.jpg', 402, '26', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (716, 46, '', 'HN02129027', 0, '蓝灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01tCa6sF2FOyE8JtRoh_!!2208857268871-0-cib.jpg', 403, '27', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (717, 46, '', 'HN02129028', 0, '蓝灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01tCa6sF2FOyE8JtRoh_!!2208857268871-0-cib.jpg', 404, '28', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (718, 46, '', 'HN02129029', 0, '蓝灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01tCa6sF2FOyE8JtRoh_!!2208857268871-0-cib.jpg', 405, '29', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (719, 46, '', 'HN02129030', 0, '蓝灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01tCa6sF2FOyE8JtRoh_!!2208857268871-0-cib.jpg', 406, '30', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (720, 46, '', 'HN02129031', 0, '蓝灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01tCa6sF2FOyE8JtRoh_!!2208857268871-0-cib.jpg', 407, '31', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (721, 46, '', 'HN02129032', 0, '蓝灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01tCa6sF2FOyE8JtRoh_!!2208857268871-0-cib.jpg', 408, '32', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (722, 46, '', 'HN02150026', 0, '浅蓝色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01XHjrys2FOyE9si0Q8_!!2208857268871-0-cib.jpg', 402, '26', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (723, 46, '', 'HN02150027', 0, '浅蓝色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01XHjrys2FOyE9si0Q8_!!2208857268871-0-cib.jpg', 403, '27', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (724, 46, '', 'HN02150028', 0, '浅蓝色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01XHjrys2FOyE9si0Q8_!!2208857268871-0-cib.jpg', 404, '28', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (725, 46, '', 'HN02150029', 0, '浅蓝色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01XHjrys2FOyE9si0Q8_!!2208857268871-0-cib.jpg', 405, '29', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (726, 46, '', 'HN02150030', 0, '浅蓝色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01XHjrys2FOyE9si0Q8_!!2208857268871-0-cib.jpg', 406, '30', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (727, 46, '', 'HN02150031', 0, '浅蓝色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01XHjrys2FOyE9si0Q8_!!2208857268871-0-cib.jpg', 407, '31', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (728, 46, '', 'HN02150032', 0, '浅蓝色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01XHjrys2FOyE9si0Q8_!!2208857268871-0-cib.jpg', 408, '32', 0, '', NULL, 31.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (729, 47, '', 'JKL8051209', 319, '深蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01KtZqKM2Arl3fk5KtK_!!2513908257-0-cib.jpg', 394, 'XS', 0, '长款', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (730, 47, '', 'JKL8051201', 319, '深蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01KtZqKM2Arl3fk5KtK_!!2513908257-0-cib.jpg', 341, 'S', 0, '长款', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (731, 47, '', 'JKL8051202', 319, '深蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01KtZqKM2Arl3fk5KtK_!!2513908257-0-cib.jpg', 342, 'M', 0, '长款', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (732, 47, '', 'JKL8051203', 319, '深蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01KtZqKM2Arl3fk5KtK_!!2513908257-0-cib.jpg', 343, 'L', 0, '长款', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (733, 47, '', 'JKL8051204', 319, '深蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01KtZqKM2Arl3fk5KtK_!!2513908257-0-cib.jpg', 344, 'XL', 0, '长款', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (734, 47, '', 'JKL8051205', 319, '深蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01KtZqKM2Arl3fk5KtK_!!2513908257-0-cib.jpg', 345, '2XL', 0, '长款', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (735, 47, '', 'JKL80512009', 0, '深蓝色加长', 'https://cbu01.alicdn.com/img/ibank/O1CN01fz1zp42Arl3SMD5sS_!!2513908257-0-cib.jpg', 394, 'XS', 0, '', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (736, 47, '', 'JKL80512001', 0, '深蓝色加长', 'https://cbu01.alicdn.com/img/ibank/O1CN01fz1zp42Arl3SMD5sS_!!2513908257-0-cib.jpg', 341, 'S', 0, '', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (737, 47, '', 'JKL80512002', 0, '深蓝色加长', 'https://cbu01.alicdn.com/img/ibank/O1CN01fz1zp42Arl3SMD5sS_!!2513908257-0-cib.jpg', 342, 'M', 0, '', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (738, 47, '', 'JKL80512003', 0, '深蓝色加长', 'https://cbu01.alicdn.com/img/ibank/O1CN01fz1zp42Arl3SMD5sS_!!2513908257-0-cib.jpg', 343, 'L', 0, '', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (739, 47, '', 'JKL80512004', 0, '深蓝色加长', 'https://cbu01.alicdn.com/img/ibank/O1CN01fz1zp42Arl3SMD5sS_!!2513908257-0-cib.jpg', 344, 'XL', 0, '', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (740, 47, '', 'JKL80512005', 0, '深蓝色加长', 'https://cbu01.alicdn.com/img/ibank/O1CN01fz1zp42Arl3SMD5sS_!!2513908257-0-cib.jpg', 345, '2XL', 0, '', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (741, 33, '', 'HN08015001', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01Kv2ymz2FOyCNsDP1S_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 25.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (742, 33, '', 'HN08015002', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01Kv2ymz2FOyCNsDP1S_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 25.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (743, 33, '', 'HN08015003', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01Kv2ymz2FOyCNsDP1S_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 25.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (744, 33, '', 'HN08015004', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01Kv2ymz2FOyCNsDP1S_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 25.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (745, 33, '', 'HN08015005', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01Kv2ymz2FOyCNsDP1S_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 25.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (746, 33, '', 'HN08011001', 317, '杏色', 'https://cbu01.alicdn.com/img/ibank/O1CN01O3yq8p2FOyCOMzdUR_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 25.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (747, 33, '', 'HN08011002', 317, '杏色', 'https://cbu01.alicdn.com/img/ibank/O1CN01O3yq8p2FOyCOMzdUR_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 25.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (748, 33, '', 'HN08011003', 317, '杏色', 'https://cbu01.alicdn.com/img/ibank/O1CN01O3yq8p2FOyCOMzdUR_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 25.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (749, 33, '', 'HN08011004', 317, '杏色', 'https://cbu01.alicdn.com/img/ibank/O1CN01O3yq8p2FOyCOMzdUR_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 25.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (750, 33, '', 'HN08011005', 317, '杏色', 'https://cbu01.alicdn.com/img/ibank/O1CN01O3yq8p2FOyCOMzdUR_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 25.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (751, 33, '', 'HN080110101', 409, '黑色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01wWwtXm2FOyDIpC0BY_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 32.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (752, 33, '', 'HN080110102', 409, '黑色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01wWwtXm2FOyDIpC0BY_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 32.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (753, 33, '', 'HN080110103', 409, '黑色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01wWwtXm2FOyDIpC0BY_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 32.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (754, 33, '', 'HN080110104', 409, '黑色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01wWwtXm2FOyDIpC0BY_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 32.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (755, 33, '', 'HN080110105', 409, '黑色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01wWwtXm2FOyDIpC0BY_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 32.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (756, 33, '', 'HN080117501', 410, '黑灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01lqQeRn2FOyDLJRi9c_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 32.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (757, 33, '', 'HN080117502', 410, '黑灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01lqQeRn2FOyDLJRi9c_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 32.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (758, 33, '', 'HN080117503', 410, '黑灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01lqQeRn2FOyDLJRi9c_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 32.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (759, 33, '', 'HN080117504', 410, '黑灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01lqQeRn2FOyDLJRi9c_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 32.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (760, 33, '', 'HN080117505', 410, '黑灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01lqQeRn2FOyDLJRi9c_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 32.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (761, 33, '', 'HN080112901', 411, '蓝灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01tQBYWC2FOyD8HYB3p_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 32.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (762, 33, '', 'HN080112902', 411, '蓝灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01tQBYWC2FOyD8HYB3p_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 32.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (763, 33, '', 'HN080112903', 411, '蓝灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01tQBYWC2FOyD8HYB3p_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 32.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (764, 33, '', 'HN080112904', 411, '蓝灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01tQBYWC2FOyD8HYB3p_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 32.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (765, 33, '', 'HN080112905', 411, '蓝灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01tQBYWC2FOyD8HYB3p_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 32.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (766, 33, '', 'HN080114001', 412, '复古蓝加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01tS1yRE2FOyDMvwj7p_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 32.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (767, 33, '', 'HN080114002', 412, '复古蓝加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01tS1yRE2FOyDMvwj7p_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 32.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (768, 33, '', 'HN080114003', 412, '复古蓝加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01tS1yRE2FOyDMvwj7p_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 32.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (769, 33, '', 'HN080114004', 412, '复古蓝加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01tS1yRE2FOyDMvwj7p_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 32.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (770, 33, '', 'HN080114005', 412, '复古蓝加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01tS1yRE2FOyDMvwj7p_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 32.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (771, 33, '', 'HN080115001', 413, '浅蓝色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN010gs0ON2FOyDNfPddh_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 32.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (772, 33, '', 'HN080115002', 413, '浅蓝色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN010gs0ON2FOyDNfPddh_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 32.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (773, 33, '', 'HN080115003', 413, '浅蓝色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN010gs0ON2FOyDNfPddh_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 32.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (774, 33, '', 'HN080115004', 413, '浅蓝色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN010gs0ON2FOyDNfPddh_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 32.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (775, 33, '', 'HN080115005', 413, '浅蓝色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN010gs0ON2FOyDNfPddh_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 32.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (776, 22, '', 'HN2022002010125', 409, '黑色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01yUmRNW2FOyDTbXvyF_!!2208857268871-0-cib.jpg', 401, '25', 0, '', NULL, 35.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (777, 22, '', 'HN2022002010126', 409, '黑色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01yUmRNW2FOyDTbXvyF_!!2208857268871-0-cib.jpg', 402, '26', 0, '', NULL, 35.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (778, 22, '', 'HN2022002010127', 409, '黑色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01yUmRNW2FOyDTbXvyF_!!2208857268871-0-cib.jpg', 403, '27', 0, '', NULL, 35.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (779, 22, '', 'HN2022002010128', 409, '黑色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01yUmRNW2FOyDTbXvyF_!!2208857268871-0-cib.jpg', 404, '28', 0, '', NULL, 35.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (780, 22, '', 'HN2022002010129', 409, '黑色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01yUmRNW2FOyDTbXvyF_!!2208857268871-0-cib.jpg', 405, '29', 0, '', NULL, 35.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (781, 22, '', 'HN2022002010130', 409, '黑色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01yUmRNW2FOyDTbXvyF_!!2208857268871-0-cib.jpg', 406, '30', 0, '', NULL, 35.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (782, 22, '', 'HN2022002010131', 409, '黑色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01yUmRNW2FOyDTbXvyF_!!2208857268871-0-cib.jpg', 407, '31', 0, '', NULL, 35.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (783, 22, '', 'HN2022002010132', 409, '黑色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01yUmRNW2FOyDTbXvyF_!!2208857268871-0-cib.jpg', 408, '32', 0, '', NULL, 35.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (784, 22, '', 'HN2022002017525', 410, '黑灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN016nREfS2FOyDXxglpQ_!!2208857268871-0-cib.jpg', 401, '25', 0, '', NULL, 35.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (785, 22, '', 'HN2022002017526', 410, '黑灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN016nREfS2FOyDXxglpQ_!!2208857268871-0-cib.jpg', 402, '26', 0, '', NULL, 35.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (786, 22, '', 'HN2022002017527', 410, '黑灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN016nREfS2FOyDXxglpQ_!!2208857268871-0-cib.jpg', 403, '27', 0, '', NULL, 35.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (787, 22, '', 'HN2022002017528', 410, '黑灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN016nREfS2FOyDXxglpQ_!!2208857268871-0-cib.jpg', 404, '28', 0, '', NULL, 35.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (788, 22, '', 'HN2022002017529', 410, '黑灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN016nREfS2FOyDXxglpQ_!!2208857268871-0-cib.jpg', 405, '29', 0, '', NULL, 35.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (789, 22, '', 'HN2022002017530', 410, '黑灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN016nREfS2FOyDXxglpQ_!!2208857268871-0-cib.jpg', 406, '30', 0, '', NULL, 35.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (790, 22, '', 'HN2022002017531', 410, '黑灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN016nREfS2FOyDXxglpQ_!!2208857268871-0-cib.jpg', 407, '31', 0, '', NULL, 35.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (791, 22, '', 'HN2022002017532', 410, '黑灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN016nREfS2FOyDXxglpQ_!!2208857268871-0-cib.jpg', 408, '32', 0, '', NULL, 35.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (792, 22, '', 'HN2022002012925', 411, '蓝灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN0121IGEy2FOyDeZm8MH_!!2208857268871-0-cib.jpg', 401, '25', 0, '', NULL, 35.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (793, 22, '', 'HN2022002012926', 411, '蓝灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN0121IGEy2FOyDeZm8MH_!!2208857268871-0-cib.jpg', 402, '26', 0, '', NULL, 35.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (794, 22, '', 'HN2022002012927', 411, '蓝灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN0121IGEy2FOyDeZm8MH_!!2208857268871-0-cib.jpg', 403, '27', 0, '', NULL, 35.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (795, 22, '', 'HN2022002012928', 411, '蓝灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN0121IGEy2FOyDeZm8MH_!!2208857268871-0-cib.jpg', 404, '28', 0, '', NULL, 35.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (796, 22, '', 'HN2022002012929', 411, '蓝灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN0121IGEy2FOyDeZm8MH_!!2208857268871-0-cib.jpg', 405, '29', 0, '', NULL, 35.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (797, 22, '', 'HN2022002012930', 411, '蓝灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN0121IGEy2FOyDeZm8MH_!!2208857268871-0-cib.jpg', 406, '30', 0, '', NULL, 35.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (798, 22, '', 'HN2022002012931', 411, '蓝灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN0121IGEy2FOyDeZm8MH_!!2208857268871-0-cib.jpg', 407, '31', 0, '', NULL, 35.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (799, 22, '', 'HN2022002012932', 411, '蓝灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN0121IGEy2FOyDeZm8MH_!!2208857268871-0-cib.jpg', 408, '32', 0, '', NULL, 35.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (800, 22, '', 'HN2022002015025', 413, '浅蓝色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN013dvLD62FOyDS4ElK6_!!2208857268871-0-cib.jpg', 401, '25', 0, '', NULL, 35.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (801, 22, '', 'HN2022002015026', 413, '浅蓝色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN013dvLD62FOyDS4ElK6_!!2208857268871-0-cib.jpg', 402, '26', 0, '', NULL, 35.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (802, 22, '', 'HN2022002015027', 413, '浅蓝色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN013dvLD62FOyDS4ElK6_!!2208857268871-0-cib.jpg', 403, '27', 0, '', NULL, 35.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (803, 22, '', 'HN2022002015028', 413, '浅蓝色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN013dvLD62FOyDS4ElK6_!!2208857268871-0-cib.jpg', 404, '28', 0, '', NULL, 35.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (804, 22, '', 'HN2022002015029', 413, '浅蓝色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN013dvLD62FOyDS4ElK6_!!2208857268871-0-cib.jpg', 405, '29', 0, '', NULL, 35.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (805, 22, '', 'HN2022002015030', 413, '浅蓝色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN013dvLD62FOyDS4ElK6_!!2208857268871-0-cib.jpg', 406, '30', 0, '', NULL, 35.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (806, 22, '', 'HN2022002015031', 413, '浅蓝色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN013dvLD62FOyDS4ElK6_!!2208857268871-0-cib.jpg', 407, '31', 0, '', NULL, 35.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (807, 22, '', 'HN2022002015032', 413, '浅蓝色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN013dvLD62FOyDS4ElK6_!!2208857268871-0-cib.jpg', 408, '32', 0, '', NULL, 35.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (808, 48, '', 'HN1805001', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01D94VIz2FOyCZdAhrE_!!2208857268871-0-cib.jpg', 341, 'S', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (809, 48, '', 'HN1805002', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01D94VIz2FOyCZdAhrE_!!2208857268871-0-cib.jpg', 342, 'M', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (810, 48, '', 'HN1805003', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01D94VIz2FOyCZdAhrE_!!2208857268871-0-cib.jpg', 343, 'L', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (811, 48, '', 'HN1805004', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01D94VIz2FOyCZdAhrE_!!2208857268871-0-cib.jpg', 344, 'XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (812, 48, '', 'HN1805005', 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01D94VIz2FOyCZdAhrE_!!2208857268871-0-cib.jpg', 345, '2XL', 0, '', NULL, 29.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (813, 49, '', 'JKL90984026', 356, '复古蓝', 'http://img.huayikeji.com/wom2cb3klac7d95x97wwxyck8n7eb5a4', 402, '26', 416, '长裤', NULL, 48.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (814, 49, '', 'JKL90984027', 356, '复古蓝', 'http://img.huayikeji.com/wom2cb3klac7d95x97wwxyck8n7eb5a4', 403, '27', 416, '长裤', NULL, 48.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (815, 49, '', 'JKL90984028', 356, '复古蓝', 'http://img.huayikeji.com/wom2cb3klac7d95x97wwxyck8n7eb5a4', 404, '28', 416, '长裤', NULL, 48.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (816, 49, '', 'JKL90984029', 356, '复古蓝', 'http://img.huayikeji.com/wom2cb3klac7d95x97wwxyck8n7eb5a4', 405, '29', 416, '长裤', NULL, 48.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (817, 49, '', 'JKL90984030', 356, '复古蓝', 'http://img.huayikeji.com/wom2cb3klac7d95x97wwxyck8n7eb5a4', 406, '30', 416, '长裤', NULL, 48.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (818, 49, '', 'JKL90984031', 356, '复古蓝', 'http://img.huayikeji.com/wom2cb3klac7d95x97wwxyck8n7eb5a4', 407, '31', 416, '长裤', NULL, 48.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (819, 49, '', 'JKL90984032', 356, '复古蓝', 'http://img.huayikeji.com/wom2cb3klac7d95x97wwxyck8n7eb5a4', 408, '32', 416, '长裤', NULL, 48.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (820, 49, '', 'JKL90982926', 336, '蓝灰色', 'http://img.huayikeji.com/imrkrpuewyt1y7bfgewp99moz6qs8hzp', 402, '26', 416, '长裤', NULL, 48.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (821, 49, '', 'JKL90982927', 336, '蓝灰色', 'http://img.huayikeji.com/imrkrpuewyt1y7bfgewp99moz6qs8hzp', 403, '27', 416, '长裤', NULL, 48.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (822, 49, '', 'JKL90982928', 336, '蓝灰色', 'http://img.huayikeji.com/imrkrpuewyt1y7bfgewp99moz6qs8hzp', 404, '28', 416, '长裤', NULL, 48.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (823, 49, '', 'JKL90982929', 336, '蓝灰色', 'http://img.huayikeji.com/imrkrpuewyt1y7bfgewp99moz6qs8hzp', 405, '29', 416, '长裤', NULL, 48.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (824, 49, '', 'JKL90982930', 336, '蓝灰色', 'http://img.huayikeji.com/imrkrpuewyt1y7bfgewp99moz6qs8hzp', 406, '30', 416, '长裤', NULL, 48.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (825, 49, '', 'JKL90982931', 336, '蓝灰色', 'http://img.huayikeji.com/imrkrpuewyt1y7bfgewp99moz6qs8hzp', 407, '31', 416, '长裤', NULL, 48.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (826, 49, '', 'JKL90982932', 336, '蓝灰色', 'http://img.huayikeji.com/imrkrpuewyt1y7bfgewp99moz6qs8hzp', 408, '32', 416, '长裤', NULL, 48.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (827, 49, '', 'JKL90980126', 308, '黑色', 'http://img.huayikeji.com/0teyrqyzfhwyvgvxf8gyo1lzdxs20gr2', 402, '26', 416, '长裤', NULL, 48.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (828, 49, '', 'JKL90980127', 308, '黑色', 'http://img.huayikeji.com/0teyrqyzfhwyvgvxf8gyo1lzdxs20gr2', 403, '27', 416, '长裤', NULL, 48.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (829, 49, '', 'JKL90980128', 308, '黑色', 'http://img.huayikeji.com/0teyrqyzfhwyvgvxf8gyo1lzdxs20gr2', 404, '28', 416, '长裤', NULL, 48.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (830, 49, '', 'JKL90980129', 308, '黑色', 'http://img.huayikeji.com/0teyrqyzfhwyvgvxf8gyo1lzdxs20gr2', 405, '29', 416, '长裤', NULL, 48.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (831, 49, '', 'JKL90980130', 308, '黑色', 'http://img.huayikeji.com/0teyrqyzfhwyvgvxf8gyo1lzdxs20gr2', 406, '30', 416, '长裤', NULL, 48.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (832, 49, '', 'JKL90980131', 308, '黑色', 'http://img.huayikeji.com/0teyrqyzfhwyvgvxf8gyo1lzdxs20gr2', 407, '31', 416, '长裤', NULL, 48.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (833, 49, '', 'JKL90980132', 308, '黑色', 'http://img.huayikeji.com/0teyrqyzfhwyvgvxf8gyo1lzdxs20gr2', 408, '32', 416, '长裤', NULL, 48.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (834, 49, '', 'JKL909814026', 412, '复古蓝', 'http://img.huayikeji.com/wom2cb3klac7d95x97wwxyck8n7eb5a4', 402, '26', 422, '长裤加绒', NULL, 56.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (835, 49, '', 'JKL909814027', 412, '复古蓝', 'http://img.huayikeji.com/wom2cb3klac7d95x97wwxyck8n7eb5a4', 403, '27', 422, '长裤加绒', NULL, 56.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (836, 49, '', 'JKL909814028', 412, '复古蓝', 'http://img.huayikeji.com/wom2cb3klac7d95x97wwxyck8n7eb5a4', 404, '28', 422, '长裤加绒', NULL, 56.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (837, 49, '', 'JKL909814029', 412, '复古蓝', 'http://img.huayikeji.com/wom2cb3klac7d95x97wwxyck8n7eb5a4', 405, '29', 422, '长裤加绒', NULL, 56.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (838, 49, '', 'JKL909814030', 412, '复古蓝', 'http://img.huayikeji.com/wom2cb3klac7d95x97wwxyck8n7eb5a4', 406, '30', 422, '长裤加绒', NULL, 56.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (839, 49, '', 'JKL909814031', 412, '复古蓝', 'http://img.huayikeji.com/wom2cb3klac7d95x97wwxyck8n7eb5a4', 407, '31', 422, '长裤加绒', NULL, 56.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (840, 49, '', 'JKL909814032', 412, '复古蓝', 'http://img.huayikeji.com/wom2cb3klac7d95x97wwxyck8n7eb5a4', 408, '32', 422, '长裤加绒', NULL, 56.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (841, 49, '', 'JKL909812926', 411, '蓝灰色', 'http://img.huayikeji.com/imrkrpuewyt1y7bfgewp99moz6qs8hzp', 402, '26', 422, '长裤加绒', NULL, 56.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (842, 49, '', 'JKL909812927', 411, '蓝灰色', 'http://img.huayikeji.com/imrkrpuewyt1y7bfgewp99moz6qs8hzp', 403, '27', 422, '长裤加绒', NULL, 56.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (843, 49, '', 'JKL909812928', 411, '蓝灰色', 'http://img.huayikeji.com/imrkrpuewyt1y7bfgewp99moz6qs8hzp', 404, '28', 422, '长裤加绒', NULL, 56.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (844, 49, '', 'JKL909812929', 411, '蓝灰色', 'http://img.huayikeji.com/imrkrpuewyt1y7bfgewp99moz6qs8hzp', 405, '29', 422, '长裤加绒', NULL, 56.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (845, 49, '', 'JKL909812930', 411, '蓝灰色', 'http://img.huayikeji.com/imrkrpuewyt1y7bfgewp99moz6qs8hzp', 406, '30', 422, '长裤加绒', NULL, 56.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (846, 49, '', 'JKL909812931', 411, '蓝灰色', 'http://img.huayikeji.com/imrkrpuewyt1y7bfgewp99moz6qs8hzp', 407, '31', 422, '长裤加绒', NULL, 56.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (847, 49, '', 'JKL909812932', 411, '蓝灰色', 'http://img.huayikeji.com/imrkrpuewyt1y7bfgewp99moz6qs8hzp', 408, '32', 422, '长裤加绒', NULL, 56.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (848, 49, '', 'JKL909810126', 409, '黑色', 'http://img.huayikeji.com/0teyrqyzfhwyvgvxf8gyo1lzdxs20gr2', 402, '26', 422, '长裤加绒', NULL, 56.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (849, 49, '', 'JKL909810127', 409, '黑色', 'http://img.huayikeji.com/0teyrqyzfhwyvgvxf8gyo1lzdxs20gr2', 403, '27', 422, '长裤加绒', NULL, 56.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (850, 49, '', 'JKL909810128', 409, '黑色', 'http://img.huayikeji.com/0teyrqyzfhwyvgvxf8gyo1lzdxs20gr2', 404, '28', 422, '长裤加绒', NULL, 56.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (851, 49, '', 'JKL909810129', 409, '黑色', 'http://img.huayikeji.com/0teyrqyzfhwyvgvxf8gyo1lzdxs20gr2', 405, '29', 422, '长裤加绒', NULL, 56.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (852, 49, '', 'JKL909810130', 409, '黑色', 'http://img.huayikeji.com/0teyrqyzfhwyvgvxf8gyo1lzdxs20gr2', 406, '30', 422, '长裤加绒', NULL, 56.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (853, 49, '', 'JKL909810131', 409, '黑色', 'http://img.huayikeji.com/0teyrqyzfhwyvgvxf8gyo1lzdxs20gr2', 407, '31', 422, '长裤加绒', NULL, 56.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (854, 49, '', 'JKL909810132', 409, '黑色', 'http://img.huayikeji.com/0teyrqyzfhwyvgvxf8gyo1lzdxs20gr2', 408, '32', 422, '长裤加绒', NULL, 56.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (855, 49, '', 'JKL90984826', 367, '复古蓝九分', 'http://img.huayikeji.com/wom2cb3klac7d95x97wwxyck8n7eb5a4', 402, '26', 0, '', NULL, 48.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (856, 49, '', 'JKL90984827', 367, '复古蓝九分', 'http://img.huayikeji.com/wom2cb3klac7d95x97wwxyck8n7eb5a4', 403, '27', 0, '', NULL, 48.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (857, 49, '', 'JKL90984828', 367, '复古蓝九分', 'http://img.huayikeji.com/wom2cb3klac7d95x97wwxyck8n7eb5a4', 404, '28', 0, '', NULL, 48.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (858, 49, '', 'JKL90984829', 367, '复古蓝九分', 'http://img.huayikeji.com/wom2cb3klac7d95x97wwxyck8n7eb5a4', 405, '29', 0, '', NULL, 48.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (859, 49, '', 'JKL90984830', 367, '复古蓝九分', 'http://img.huayikeji.com/wom2cb3klac7d95x97wwxyck8n7eb5a4', 406, '30', 0, '', NULL, 48.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (860, 49, '', 'JKL90984831', 367, '复古蓝九分', 'http://img.huayikeji.com/wom2cb3klac7d95x97wwxyck8n7eb5a4', 407, '31', 0, '', NULL, 48.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (861, 49, '', 'JKL90984832', 367, '复古蓝九分', 'http://img.huayikeji.com/wom2cb3klac7d95x97wwxyck8n7eb5a4', 408, '32', 0, '', NULL, 48.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (862, 49, '', 'JKL90986426', 379, '蓝灰色九分', 'http://img.huayikeji.com/imrkrpuewyt1y7bfgewp99moz6qs8hzp', 402, '26', 0, '', NULL, 48.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (863, 49, '', 'JKL90986427', 379, '蓝灰色九分', 'http://img.huayikeji.com/imrkrpuewyt1y7bfgewp99moz6qs8hzp', 403, '27', 0, '', NULL, 48.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (864, 49, '', 'JKL90986428', 379, '蓝灰色九分', 'http://img.huayikeji.com/imrkrpuewyt1y7bfgewp99moz6qs8hzp', 404, '28', 0, '', NULL, 48.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (865, 49, '', 'JKL90986429', 379, '蓝灰色九分', 'http://img.huayikeji.com/imrkrpuewyt1y7bfgewp99moz6qs8hzp', 405, '29', 0, '', NULL, 48.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (866, 49, '', 'JKL90986430', 379, '蓝灰色九分', 'http://img.huayikeji.com/imrkrpuewyt1y7bfgewp99moz6qs8hzp', 406, '30', 0, '', NULL, 48.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (867, 49, '', 'JKL90986431', 379, '蓝灰色九分', 'http://img.huayikeji.com/imrkrpuewyt1y7bfgewp99moz6qs8hzp', 407, '31', 0, '', NULL, 48.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (868, 49, '', 'JKL90986432', 379, '蓝灰色九分', 'http://img.huayikeji.com/imrkrpuewyt1y7bfgewp99moz6qs8hzp', 408, '32', 0, '', NULL, 48.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (869, 49, '', 'JKL90986526', 380, '黑色九分', 'http://img.huayikeji.com/0teyrqyzfhwyvgvxf8gyo1lzdxs20gr2', 402, '26', 0, '', NULL, 48.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (870, 49, '', 'JKL90986527', 380, '黑色九分', 'http://img.huayikeji.com/0teyrqyzfhwyvgvxf8gyo1lzdxs20gr2', 403, '27', 0, '', NULL, 48.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (871, 49, '', 'JKL90986528', 380, '黑色九分', 'http://img.huayikeji.com/0teyrqyzfhwyvgvxf8gyo1lzdxs20gr2', 404, '28', 0, '', NULL, 48.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (872, 49, '', 'JKL90986529', 380, '黑色九分', 'http://img.huayikeji.com/0teyrqyzfhwyvgvxf8gyo1lzdxs20gr2', 405, '29', 0, '', NULL, 48.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (873, 49, '', 'JKL90986530', 380, '黑色九分', 'http://img.huayikeji.com/0teyrqyzfhwyvgvxf8gyo1lzdxs20gr2', 406, '30', 0, '', NULL, 48.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (874, 49, '', 'JKL90986531', 380, '黑色九分', 'http://img.huayikeji.com/0teyrqyzfhwyvgvxf8gyo1lzdxs20gr2', 407, '31', 0, '', NULL, 48.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (875, 49, '', 'JKL90986532', 380, '黑色九分', 'http://img.huayikeji.com/0teyrqyzfhwyvgvxf8gyo1lzdxs20gr2', 408, '32', 0, '', NULL, 48.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (879, 53, '', 'JKL99070125JIU', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01BdL9qd2Arl3f70ZFz_!!2513908257-0-cib.jpg', 401, '25', 417, '九分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (880, 53, '', 'JKL99070125BA', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01BdL9qd2Arl3f70ZFz_!!2513908257-0-cib.jpg', 401, '25', 418, '八分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (881, 53, '', 'JKL99070125JR', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01BdL9qd2Arl3f70ZFz_!!2513908257-0-cib.jpg', 401, '25', 419, '九分加绒', NULL, 53.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (882, 53, '', 'JKL99070126JIU', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01BdL9qd2Arl3f70ZFz_!!2513908257-0-cib.jpg', 402, '26', 417, '九分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (883, 53, '', 'JKL99070126BA', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01BdL9qd2Arl3f70ZFz_!!2513908257-0-cib.jpg', 402, '26', 418, '八分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (884, 53, '', 'JKL99070126JR', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01BdL9qd2Arl3f70ZFz_!!2513908257-0-cib.jpg', 402, '26', 419, '九分加绒', NULL, 53.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (885, 53, '', 'JKL99070127JIU', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01BdL9qd2Arl3f70ZFz_!!2513908257-0-cib.jpg', 403, '27', 417, '九分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (886, 53, '', 'JKL99070127BA', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01BdL9qd2Arl3f70ZFz_!!2513908257-0-cib.jpg', 403, '27', 418, '八分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (887, 53, '', 'JKL99070127JR', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01BdL9qd2Arl3f70ZFz_!!2513908257-0-cib.jpg', 403, '27', 419, '九分加绒', NULL, 53.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (888, 53, '', 'JKL99070128JIU', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01BdL9qd2Arl3f70ZFz_!!2513908257-0-cib.jpg', 404, '28', 417, '九分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (889, 53, '', 'JKL99070128BA', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01BdL9qd2Arl3f70ZFz_!!2513908257-0-cib.jpg', 404, '28', 418, '八分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (890, 53, '', 'JKL99070128JR', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01BdL9qd2Arl3f70ZFz_!!2513908257-0-cib.jpg', 404, '28', 419, '九分加绒', NULL, 53.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (891, 53, '', 'JKL99070129JIU', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01BdL9qd2Arl3f70ZFz_!!2513908257-0-cib.jpg', 405, '29', 417, '九分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (892, 53, '', 'JKL99070129BA', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01BdL9qd2Arl3f70ZFz_!!2513908257-0-cib.jpg', 405, '29', 418, '八分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (893, 53, '', 'JKL99070129JR', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01BdL9qd2Arl3f70ZFz_!!2513908257-0-cib.jpg', 405, '29', 419, '九分加绒', NULL, 53.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (894, 53, '', 'JKL99070130JIU', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01BdL9qd2Arl3f70ZFz_!!2513908257-0-cib.jpg', 406, '30', 417, '九分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (895, 53, '', 'JKL99070130BA', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01BdL9qd2Arl3f70ZFz_!!2513908257-0-cib.jpg', 406, '30', 418, '八分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (896, 53, '', 'JKL99070130JR', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01BdL9qd2Arl3f70ZFz_!!2513908257-0-cib.jpg', 406, '30', 419, '九分加绒', NULL, 53.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (897, 53, '', 'JKL99070131JIU', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01BdL9qd2Arl3f70ZFz_!!2513908257-0-cib.jpg', 407, '31', 417, '九分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (898, 53, '', 'JKL99070131BA', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01BdL9qd2Arl3f70ZFz_!!2513908257-0-cib.jpg', 407, '31', 418, '八分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (899, 53, '', 'JKL99070131JR', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01BdL9qd2Arl3f70ZFz_!!2513908257-0-cib.jpg', 407, '31', 419, '九分加绒', NULL, 53.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (900, 53, '', 'JKL99070132JIU', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01BdL9qd2Arl3f70ZFz_!!2513908257-0-cib.jpg', 408, '32', 417, '九分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (901, 53, '', 'JKL99070132BA', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01BdL9qd2Arl3f70ZFz_!!2513908257-0-cib.jpg', 408, '32', 418, '八分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (902, 53, '', 'JKL99070132JR', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01BdL9qd2Arl3f70ZFz_!!2513908257-0-cib.jpg', 408, '32', 419, '九分加绒', NULL, 53.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (903, 53, '', 'JKL99072825JIU', 335, '卡其', 'http://img.huayikeji.com/59ihabwqyajwiik7cf4364zpsta40w80', 401, '25', 417, '九分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (904, 53, '', 'JKL99072825BA', 335, '卡其', 'http://img.huayikeji.com/59ihabwqyajwiik7cf4364zpsta40w80', 401, '25', 418, '八分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (905, 53, '', 'JKL99072825JR', 335, '卡其', 'http://img.huayikeji.com/59ihabwqyajwiik7cf4364zpsta40w80', 401, '25', 419, '九分加绒', NULL, 53.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (906, 53, '', 'JKL99072826JIU', 335, '卡其', 'http://img.huayikeji.com/59ihabwqyajwiik7cf4364zpsta40w80', 402, '26', 417, '九分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (907, 53, '', 'JKL99072826BA', 335, '卡其', 'http://img.huayikeji.com/59ihabwqyajwiik7cf4364zpsta40w80', 402, '26', 418, '八分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (908, 53, '', 'JKL99072826JR', 335, '卡其', 'http://img.huayikeji.com/59ihabwqyajwiik7cf4364zpsta40w80', 402, '26', 419, '九分加绒', NULL, 53.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (909, 53, '', 'JKL99072827JIU', 335, '卡其', 'http://img.huayikeji.com/59ihabwqyajwiik7cf4364zpsta40w80', 403, '27', 417, '九分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (910, 53, '', 'JKL99072827BA', 335, '卡其', 'http://img.huayikeji.com/59ihabwqyajwiik7cf4364zpsta40w80', 403, '27', 418, '八分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (911, 53, '', 'JKL99072827JR', 335, '卡其', 'http://img.huayikeji.com/59ihabwqyajwiik7cf4364zpsta40w80', 403, '27', 419, '九分加绒', NULL, 53.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (912, 53, '', 'JKL99072828JIU', 335, '卡其', 'http://img.huayikeji.com/59ihabwqyajwiik7cf4364zpsta40w80', 404, '28', 417, '九分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (913, 53, '', 'JKL99072828BA', 335, '卡其', 'http://img.huayikeji.com/59ihabwqyajwiik7cf4364zpsta40w80', 404, '28', 418, '八分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (914, 53, '', 'JKL99072828JR', 335, '卡其', 'http://img.huayikeji.com/59ihabwqyajwiik7cf4364zpsta40w80', 404, '28', 419, '九分加绒', NULL, 53.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (915, 53, '', 'JKL99072829JIU', 335, '卡其', 'http://img.huayikeji.com/59ihabwqyajwiik7cf4364zpsta40w80', 405, '29', 417, '九分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (916, 53, '', 'JKL99072829BA', 335, '卡其', 'http://img.huayikeji.com/59ihabwqyajwiik7cf4364zpsta40w80', 405, '29', 418, '八分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (917, 53, '', 'JKL99072829JR', 335, '卡其', 'http://img.huayikeji.com/59ihabwqyajwiik7cf4364zpsta40w80', 405, '29', 419, '九分加绒', NULL, 53.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (918, 53, '', 'JKL99072830JIU', 335, '卡其', 'http://img.huayikeji.com/59ihabwqyajwiik7cf4364zpsta40w80', 406, '30', 417, '九分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (919, 53, '', 'JKL99072830BA', 335, '卡其', 'http://img.huayikeji.com/59ihabwqyajwiik7cf4364zpsta40w80', 406, '30', 418, '八分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (920, 53, '', 'JKL99072830JR', 335, '卡其', 'http://img.huayikeji.com/59ihabwqyajwiik7cf4364zpsta40w80', 406, '30', 419, '九分加绒', NULL, 53.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (921, 53, '', 'JKL99072831JIU', 335, '卡其', 'http://img.huayikeji.com/59ihabwqyajwiik7cf4364zpsta40w80', 407, '31', 417, '九分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (922, 53, '', 'JKL99072831BA', 335, '卡其', 'http://img.huayikeji.com/59ihabwqyajwiik7cf4364zpsta40w80', 407, '31', 418, '八分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (923, 53, '', 'JKL99072831JR', 335, '卡其', 'http://img.huayikeji.com/59ihabwqyajwiik7cf4364zpsta40w80', 407, '31', 419, '九分加绒', NULL, 53.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (924, 53, '', 'JKL99072832JIU', 335, '卡其', 'http://img.huayikeji.com/59ihabwqyajwiik7cf4364zpsta40w80', 408, '32', 417, '九分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (925, 53, '', 'JKL99072832BA', 335, '卡其', 'http://img.huayikeji.com/59ihabwqyajwiik7cf4364zpsta40w80', 408, '32', 418, '八分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (926, 53, '', 'JKL99072832JR', 335, '卡其', 'http://img.huayikeji.com/59ihabwqyajwiik7cf4364zpsta40w80', 408, '32', 419, '九分加绒', NULL, 53.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (927, 53, '', 'JKL99074725JIU', 366, '米白', 'http://img.huayikeji.com/4cptgqnxzy9ftbi8l3x6tb1t1fv4vfz9', 401, '25', 417, '九分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (928, 53, '', 'JKL99074725BA', 366, '米白', 'http://img.huayikeji.com/4cptgqnxzy9ftbi8l3x6tb1t1fv4vfz9', 401, '25', 418, '八分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (929, 53, '', 'JKL99074725JR', 366, '米白', 'http://img.huayikeji.com/4cptgqnxzy9ftbi8l3x6tb1t1fv4vfz9', 401, '25', 419, '九分加绒', NULL, 53.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (930, 53, '', 'JKL99074726JIU', 366, '米白', 'http://img.huayikeji.com/4cptgqnxzy9ftbi8l3x6tb1t1fv4vfz9', 402, '26', 417, '九分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (931, 53, '', 'JKL99074726BA', 366, '米白', 'http://img.huayikeji.com/4cptgqnxzy9ftbi8l3x6tb1t1fv4vfz9', 402, '26', 418, '八分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (932, 53, '', 'JKL99074726JR', 366, '米白', 'http://img.huayikeji.com/4cptgqnxzy9ftbi8l3x6tb1t1fv4vfz9', 402, '26', 419, '九分加绒', NULL, 53.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (933, 53, '', 'JKL99074727JIU', 366, '米白', 'http://img.huayikeji.com/4cptgqnxzy9ftbi8l3x6tb1t1fv4vfz9', 403, '27', 417, '九分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (934, 53, '', 'JKL99074727BA', 366, '米白', 'http://img.huayikeji.com/4cptgqnxzy9ftbi8l3x6tb1t1fv4vfz9', 403, '27', 418, '八分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (935, 53, '', 'JKL99074727JR', 366, '米白', 'http://img.huayikeji.com/4cptgqnxzy9ftbi8l3x6tb1t1fv4vfz9', 403, '27', 419, '九分加绒', NULL, 53.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (936, 53, '', 'JKL99074728JIU', 366, '米白', 'http://img.huayikeji.com/4cptgqnxzy9ftbi8l3x6tb1t1fv4vfz9', 404, '28', 417, '九分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (937, 53, '', 'JKL99074728BA', 366, '米白', 'http://img.huayikeji.com/4cptgqnxzy9ftbi8l3x6tb1t1fv4vfz9', 404, '28', 418, '八分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (938, 53, '', 'JKL99074728JR', 366, '米白', 'http://img.huayikeji.com/4cptgqnxzy9ftbi8l3x6tb1t1fv4vfz9', 404, '28', 419, '九分加绒', NULL, 53.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (939, 53, '', 'JKL99074729JIU', 366, '米白', 'http://img.huayikeji.com/4cptgqnxzy9ftbi8l3x6tb1t1fv4vfz9', 405, '29', 417, '九分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (940, 53, '', 'JKL99074729BA', 366, '米白', 'http://img.huayikeji.com/4cptgqnxzy9ftbi8l3x6tb1t1fv4vfz9', 405, '29', 418, '八分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (941, 53, '', 'JKL99074729JR', 366, '米白', 'http://img.huayikeji.com/4cptgqnxzy9ftbi8l3x6tb1t1fv4vfz9', 405, '29', 419, '九分加绒', NULL, 53.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (942, 53, '', 'JKL99074730JIU', 366, '米白', 'http://img.huayikeji.com/4cptgqnxzy9ftbi8l3x6tb1t1fv4vfz9', 406, '30', 417, '九分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (943, 53, '', 'JKL99074730BA', 366, '米白', 'http://img.huayikeji.com/4cptgqnxzy9ftbi8l3x6tb1t1fv4vfz9', 406, '30', 418, '八分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (944, 53, '', 'JKL99074730JR', 366, '米白', 'http://img.huayikeji.com/4cptgqnxzy9ftbi8l3x6tb1t1fv4vfz9', 406, '30', 419, '九分加绒', NULL, 53.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (945, 53, '', 'JKL99074731JIU', 366, '米白', 'http://img.huayikeji.com/4cptgqnxzy9ftbi8l3x6tb1t1fv4vfz9', 407, '31', 417, '九分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (946, 53, '', 'JKL99074731BA', 366, '米白', 'http://img.huayikeji.com/4cptgqnxzy9ftbi8l3x6tb1t1fv4vfz9', 407, '31', 418, '八分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (947, 53, '', 'JKL99074731JR', 366, '米白', 'http://img.huayikeji.com/4cptgqnxzy9ftbi8l3x6tb1t1fv4vfz9', 407, '31', 419, '九分加绒', NULL, 53.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (948, 53, '', 'JKL99074732JIU', 366, '米白', 'http://img.huayikeji.com/4cptgqnxzy9ftbi8l3x6tb1t1fv4vfz9', 408, '32', 417, '九分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (949, 53, '', 'JKL99074732BA', 366, '米白', 'http://img.huayikeji.com/4cptgqnxzy9ftbi8l3x6tb1t1fv4vfz9', 408, '32', 418, '八分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (950, 53, '', 'JKL99074732JR', 366, '米白', 'http://img.huayikeji.com/4cptgqnxzy9ftbi8l3x6tb1t1fv4vfz9', 408, '32', 419, '九分加绒', NULL, 53.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (951, 53, '', 'JKL99075125JIU', 368, '卡灰', 'http://img.huayikeji.com/dh7fvio3h8zyqs5fbtzb5oxqovvmrol6', 401, '25', 417, '九分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (952, 53, '', 'JKL99075125BA', 368, '卡灰', 'http://img.huayikeji.com/dh7fvio3h8zyqs5fbtzb5oxqovvmrol6', 401, '25', 418, '八分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (953, 53, '', 'JKL99075125JR', 368, '卡灰', 'http://img.huayikeji.com/dh7fvio3h8zyqs5fbtzb5oxqovvmrol6', 401, '25', 419, '九分加绒', NULL, 53.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (954, 53, '', 'JKL99075126JIU', 368, '卡灰', 'http://img.huayikeji.com/dh7fvio3h8zyqs5fbtzb5oxqovvmrol6', 402, '26', 417, '九分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (955, 53, '', 'JKL99075126BA', 368, '卡灰', 'http://img.huayikeji.com/dh7fvio3h8zyqs5fbtzb5oxqovvmrol6', 402, '26', 418, '八分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (956, 53, '', 'JKL99075126JR', 368, '卡灰', 'http://img.huayikeji.com/dh7fvio3h8zyqs5fbtzb5oxqovvmrol6', 402, '26', 419, '九分加绒', NULL, 53.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (957, 53, '', 'JKL99075127JIU', 368, '卡灰', 'http://img.huayikeji.com/dh7fvio3h8zyqs5fbtzb5oxqovvmrol6', 403, '27', 417, '九分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (958, 53, '', 'JKL99075127BA', 368, '卡灰', 'http://img.huayikeji.com/dh7fvio3h8zyqs5fbtzb5oxqovvmrol6', 403, '27', 418, '八分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (959, 53, '', 'JKL99075127JR', 368, '卡灰', 'http://img.huayikeji.com/dh7fvio3h8zyqs5fbtzb5oxqovvmrol6', 403, '27', 419, '九分加绒', NULL, 53.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (960, 53, '', 'JKL99075128JIU', 368, '卡灰', 'http://img.huayikeji.com/dh7fvio3h8zyqs5fbtzb5oxqovvmrol6', 404, '28', 417, '九分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (961, 53, '', 'JKL99075128BA', 368, '卡灰', 'http://img.huayikeji.com/dh7fvio3h8zyqs5fbtzb5oxqovvmrol6', 404, '28', 418, '八分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (962, 53, '', 'JKL99075128JR', 368, '卡灰', 'http://img.huayikeji.com/dh7fvio3h8zyqs5fbtzb5oxqovvmrol6', 404, '28', 419, '九分加绒', NULL, 53.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (963, 53, '', 'JKL99075129JIU', 368, '卡灰', 'http://img.huayikeji.com/dh7fvio3h8zyqs5fbtzb5oxqovvmrol6', 405, '29', 417, '九分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (964, 53, '', 'JKL99075129BA', 368, '卡灰', 'http://img.huayikeji.com/dh7fvio3h8zyqs5fbtzb5oxqovvmrol6', 405, '29', 418, '八分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (965, 53, '', 'JKL99075129JR', 368, '卡灰', 'http://img.huayikeji.com/dh7fvio3h8zyqs5fbtzb5oxqovvmrol6', 405, '29', 419, '九分加绒', NULL, 53.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (966, 53, '', 'JKL99075130JIU', 368, '卡灰', 'http://img.huayikeji.com/dh7fvio3h8zyqs5fbtzb5oxqovvmrol6', 406, '30', 417, '九分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (967, 53, '', 'JKL99075130BA', 368, '卡灰', 'http://img.huayikeji.com/dh7fvio3h8zyqs5fbtzb5oxqovvmrol6', 406, '30', 418, '八分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (968, 53, '', 'JKL99075130JR', 368, '卡灰', 'http://img.huayikeji.com/dh7fvio3h8zyqs5fbtzb5oxqovvmrol6', 406, '30', 419, '九分加绒', NULL, 53.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (969, 53, '', 'JKL99075131JIU', 368, '卡灰', 'http://img.huayikeji.com/dh7fvio3h8zyqs5fbtzb5oxqovvmrol6', 407, '31', 417, '九分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (970, 53, '', 'JKL99075131BA', 368, '卡灰', 'http://img.huayikeji.com/dh7fvio3h8zyqs5fbtzb5oxqovvmrol6', 407, '31', 418, '八分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (971, 53, '', 'JKL99075131JR', 368, '卡灰', 'http://img.huayikeji.com/dh7fvio3h8zyqs5fbtzb5oxqovvmrol6', 407, '31', 419, '九分加绒', NULL, 53.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (972, 53, '', 'JKL99075132JIU', 368, '卡灰', 'http://img.huayikeji.com/dh7fvio3h8zyqs5fbtzb5oxqovvmrol6', 408, '32', 417, '九分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (973, 53, '', 'JKL99075132BA', 368, '卡灰', 'http://img.huayikeji.com/dh7fvio3h8zyqs5fbtzb5oxqovvmrol6', 408, '32', 418, '八分', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (974, 53, '', 'JKL99075132JR', 368, '卡灰', 'http://img.huayikeji.com/dh7fvio3h8zyqs5fbtzb5oxqovvmrol6', 408, '32', 419, '九分加绒', NULL, 53.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (975, 54, '', 'JKL60103526', 351, '蓝色', 'http://img.huayikeji.com/fex2kmy8mmraboudesodz9mig2wcbidi', 402, '26', 0, '', NULL, 43.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (976, 54, '', 'JKL60103527', 351, '蓝色', 'http://img.huayikeji.com/fex2kmy8mmraboudesodz9mig2wcbidi', 403, '27', 0, '', NULL, 43.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (977, 54, '', 'JKL60103528', 351, '蓝色', 'http://img.huayikeji.com/fex2kmy8mmraboudesodz9mig2wcbidi', 404, '28', 0, '', NULL, 43.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (978, 54, '', 'JKL60103529', 351, '蓝色', 'http://img.huayikeji.com/fex2kmy8mmraboudesodz9mig2wcbidi', 405, '29', 0, '', NULL, 43.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (979, 54, '', 'JKL60103530', 351, '蓝色', 'http://img.huayikeji.com/fex2kmy8mmraboudesodz9mig2wcbidi', 406, '30', 0, '', NULL, 43.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (980, 54, '', 'JKL60103531', 351, '蓝色', 'http://img.huayikeji.com/fex2kmy8mmraboudesodz9mig2wcbidi', 407, '31', 0, '', NULL, 43.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (981, 54, '', 'JKL60107526', 389, '黑灰色', 'http://img.huayikeji.com/8okq5agwo00vy221pyylgvu47va7pet4', 402, '26', 0, '', NULL, 43.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (982, 54, '', 'JKL60107527', 389, '黑灰色', 'http://img.huayikeji.com/8okq5agwo00vy221pyylgvu47va7pet4', 403, '27', 0, '', NULL, 43.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (983, 54, '', 'JKL60107528', 389, '黑灰色', 'http://img.huayikeji.com/8okq5agwo00vy221pyylgvu47va7pet4', 404, '28', 0, '', NULL, 43.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (984, 54, '', 'JKL60107529', 389, '黑灰色', 'http://img.huayikeji.com/8okq5agwo00vy221pyylgvu47va7pet4', 405, '29', 0, '', NULL, 43.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (985, 54, '', 'JKL60107530', 389, '黑灰色', 'http://img.huayikeji.com/8okq5agwo00vy221pyylgvu47va7pet4', 406, '30', 0, '', NULL, 43.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (986, 54, '', 'JKL60107531', 389, '黑灰色', 'http://img.huayikeji.com/8okq5agwo00vy221pyylgvu47va7pet4', 407, '31', 0, '', NULL, 43.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (987, 55, '', 'JKL9064009', 356, '复古蓝', 'http://img.huayikeji.com/egma3seljl77hcbpjpw9ks000kkf3rs5', 394, 'XS', 0, '', NULL, 47.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (988, 55, '', 'JKL9064001', 356, '复古蓝', 'http://img.huayikeji.com/egma3seljl77hcbpjpw9ks000kkf3rs5', 341, 'S', 0, '', NULL, 47.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (989, 55, '', 'JKL9064002', 356, '复古蓝', 'http://img.huayikeji.com/egma3seljl77hcbpjpw9ks000kkf3rs5', 342, 'M', 0, '', NULL, 47.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (990, 55, '', 'JKL9064003', 356, '复古蓝', 'http://img.huayikeji.com/egma3seljl77hcbpjpw9ks000kkf3rs5', 343, 'L', 0, '', NULL, 47.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (991, 55, '', 'JKL9064004', 356, '复古蓝', 'http://img.huayikeji.com/egma3seljl77hcbpjpw9ks000kkf3rs5', 344, 'XL', 0, '', NULL, 47.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (992, 55, '', 'JKL9064005', 356, '复古蓝', 'http://img.huayikeji.com/egma3seljl77hcbpjpw9ks000kkf3rs5', 345, '2XL', 0, '', NULL, 47.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (993, 55, '', 'JKL9065009', 361, '浅蓝色', 'http://img.huayikeji.com/zgtp829lecxrqml16kqkfuo5ajxoh49h', 394, 'XS', 0, '', NULL, 47.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (994, 55, '', 'JKL9065001', 361, '浅蓝色', 'http://img.huayikeji.com/zgtp829lecxrqml16kqkfuo5ajxoh49h', 341, 'S', 0, '', NULL, 47.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (995, 55, '', 'JKL9065002', 361, '浅蓝色', 'http://img.huayikeji.com/zgtp829lecxrqml16kqkfuo5ajxoh49h', 342, 'M', 0, '', NULL, 47.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (996, 55, '', 'JKL9065003', 361, '浅蓝色', 'http://img.huayikeji.com/zgtp829lecxrqml16kqkfuo5ajxoh49h', 343, 'L', 0, '', NULL, 47.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (997, 55, '', 'JKL9065004', 361, '浅蓝色', 'http://img.huayikeji.com/zgtp829lecxrqml16kqkfuo5ajxoh49h', 344, 'XL', 0, '', NULL, 47.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (998, 55, '', 'JKL9065005', 361, '浅蓝色', 'http://img.huayikeji.com/zgtp829lecxrqml16kqkfuo5ajxoh49h', 345, '2XL', 0, '', NULL, 47.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (999, 56, '', 'JKL99774009CK', 356, '复古蓝', 'http://img.huayikeji.com/0ac55odg8e0d7y714svpcvtoqfxld5dk', 394, 'XS', 416, '长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1000, 56, '', 'JKL99774009JC', 356, '复古蓝', 'http://img.huayikeji.com/0ac55odg8e0d7y714svpcvtoqfxld5dk', 394, 'XS', 415, '加长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1001, 56, '', 'JKL99774001CK', 356, '复古蓝', 'http://img.huayikeji.com/0ac55odg8e0d7y714svpcvtoqfxld5dk', 341, 'S', 416, '长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1002, 56, '', 'JKL99774001JC', 356, '复古蓝', 'http://img.huayikeji.com/0ac55odg8e0d7y714svpcvtoqfxld5dk', 341, 'S', 415, '加长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1003, 56, '', 'JKL99774002CK', 356, '复古蓝', 'http://img.huayikeji.com/0ac55odg8e0d7y714svpcvtoqfxld5dk', 342, 'M', 416, '长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1004, 56, '', 'JKL99774002JC', 356, '复古蓝', 'http://img.huayikeji.com/0ac55odg8e0d7y714svpcvtoqfxld5dk', 342, 'M', 415, '加长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1005, 56, '', 'JKL99774003CK', 356, '复古蓝', 'http://img.huayikeji.com/0ac55odg8e0d7y714svpcvtoqfxld5dk', 343, 'L', 416, '长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1006, 56, '', 'JKL99774003JC', 356, '复古蓝', 'http://img.huayikeji.com/0ac55odg8e0d7y714svpcvtoqfxld5dk', 343, 'L', 415, '加长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1007, 56, '', 'JKL99774004CK', 356, '复古蓝', 'http://img.huayikeji.com/0ac55odg8e0d7y714svpcvtoqfxld5dk', 344, 'XL', 416, '长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1008, 56, '', 'JKL99774004JC', 356, '复古蓝', 'http://img.huayikeji.com/0ac55odg8e0d7y714svpcvtoqfxld5dk', 344, 'XL', 415, '加长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1009, 56, '', 'JKL99774005CK', 356, '复古蓝', 'http://img.huayikeji.com/0ac55odg8e0d7y714svpcvtoqfxld5dk', 345, '2XL', 416, '长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1010, 56, '', 'JKL99774005JC', 356, '复古蓝', 'http://img.huayikeji.com/0ac55odg8e0d7y714svpcvtoqfxld5dk', 345, '2XL', 415, '加长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1031, 59, '', 'JKL99784009CK', 356, '复古蓝', 'http://img.huayikeji.com/n732o54er4aigs0vl0k2mmu1koqwgu6k', 394, 'XS', 416, '长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1032, 59, '', 'JKL99784009JC', 356, '复古蓝', 'http://img.huayikeji.com/n732o54er4aigs0vl0k2mmu1koqwgu6k', 394, 'XS', 415, '加长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1033, 59, '', 'JKL99784001CK', 356, '复古蓝', 'http://img.huayikeji.com/n732o54er4aigs0vl0k2mmu1koqwgu6k', 341, 'S', 416, '长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1034, 59, '', 'JKL99784001JC', 356, '复古蓝', 'http://img.huayikeji.com/n732o54er4aigs0vl0k2mmu1koqwgu6k', 341, 'S', 415, '加长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1035, 59, '', 'JKL99784002CK', 356, '复古蓝', 'http://img.huayikeji.com/n732o54er4aigs0vl0k2mmu1koqwgu6k', 342, 'M', 416, '长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1036, 59, '', 'JKL99784002JC', 356, '复古蓝', 'http://img.huayikeji.com/n732o54er4aigs0vl0k2mmu1koqwgu6k', 342, 'M', 415, '加长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1037, 59, '', 'JKL99784003CK', 356, '复古蓝', 'http://img.huayikeji.com/n732o54er4aigs0vl0k2mmu1koqwgu6k', 343, 'L', 416, '长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1038, 59, '', 'JKL99784003JC', 356, '复古蓝', 'http://img.huayikeji.com/n732o54er4aigs0vl0k2mmu1koqwgu6k', 343, 'L', 415, '加长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1039, 59, '', 'JKL99784004CK', 356, '复古蓝', 'http://img.huayikeji.com/n732o54er4aigs0vl0k2mmu1koqwgu6k', 344, 'XL', 416, '长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1040, 59, '', 'JKL99784004JC', 356, '复古蓝', 'http://img.huayikeji.com/n732o54er4aigs0vl0k2mmu1koqwgu6k', 344, 'XL', 415, '加长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1041, 59, '', 'JKL99784005CK', 356, '复古蓝', 'http://img.huayikeji.com/n732o54er4aigs0vl0k2mmu1koqwgu6k', 345, '2XL', 416, '长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1042, 59, '', 'JKL99784005JC', 356, '复古蓝', 'http://img.huayikeji.com/n732o54er4aigs0vl0k2mmu1koqwgu6k', 345, '2XL', 415, '加长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1043, 60, '', 'JKL99505025', 361, '浅蓝色', 'http://img.huayikeji.com/lmk2699b6lpcoraaxij10kemlqmkqfgr', 401, '25', 0, '', NULL, 41.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1044, 60, '', 'JKL99505026', 361, '浅蓝色', 'http://img.huayikeji.com/lmk2699b6lpcoraaxij10kemlqmkqfgr', 402, '26', 0, '', NULL, 41.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1045, 60, '', 'JKL99505027', 361, '浅蓝色', 'http://img.huayikeji.com/lmk2699b6lpcoraaxij10kemlqmkqfgr', 403, '27', 0, '', NULL, 41.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1046, 60, '', 'JKL99505028', 361, '浅蓝色', 'http://img.huayikeji.com/lmk2699b6lpcoraaxij10kemlqmkqfgr', 404, '28', 0, '', NULL, 41.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1047, 60, '', 'JKL99505029', 361, '浅蓝色', 'http://img.huayikeji.com/lmk2699b6lpcoraaxij10kemlqmkqfgr', 405, '29', 0, '', NULL, 41.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1048, 60, '', 'JKL99505030', 361, '浅蓝色', 'http://img.huayikeji.com/lmk2699b6lpcoraaxij10kemlqmkqfgr', 406, '30', 0, '', NULL, 41.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1049, 60, '', 'JKL99505031', 361, '浅蓝色', 'http://img.huayikeji.com/lmk2699b6lpcoraaxij10kemlqmkqfgr', 407, '31', 0, '', NULL, 41.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1050, 60, '', 'JKL99505032', 361, '浅蓝色', 'http://img.huayikeji.com/lmk2699b6lpcoraaxij10kemlqmkqfgr', 408, '32', 0, '', NULL, 41.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1051, 60, '', 'JKL99501225', 319, '深蓝色', 'http://img.huayikeji.com/fzvbk24z186xmk1nmtsobbasv4quxv8q', 401, '25', 0, '', NULL, 41.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1052, 60, '', 'JKL99501226', 319, '深蓝色', 'http://img.huayikeji.com/fzvbk24z186xmk1nmtsobbasv4quxv8q', 402, '26', 0, '', NULL, 41.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1053, 60, '', 'JKL99501227', 319, '深蓝色', 'http://img.huayikeji.com/fzvbk24z186xmk1nmtsobbasv4quxv8q', 403, '27', 0, '', NULL, 41.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1054, 60, '', 'JKL99501228', 319, '深蓝色', 'http://img.huayikeji.com/fzvbk24z186xmk1nmtsobbasv4quxv8q', 404, '28', 0, '', NULL, 41.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1055, 60, '', 'JKL99501229', 319, '深蓝色', 'http://img.huayikeji.com/fzvbk24z186xmk1nmtsobbasv4quxv8q', 405, '29', 0, '', NULL, 41.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1056, 60, '', 'JKL99501230', 319, '深蓝色', 'http://img.huayikeji.com/fzvbk24z186xmk1nmtsobbasv4quxv8q', 406, '30', 0, '', NULL, 41.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1057, 60, '', 'JKL99501231', 319, '深蓝色', 'http://img.huayikeji.com/fzvbk24z186xmk1nmtsobbasv4quxv8q', 407, '31', 0, '', NULL, 41.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1058, 60, '', 'JKL99501232', 319, '深蓝色', 'http://img.huayikeji.com/fzvbk24z186xmk1nmtsobbasv4quxv8q', 408, '32', 0, '', NULL, 41.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1059, 60, '', 'JKL99505925', 374, '深蓝色加绒', 'http://img.huayikeji.com/0yzpga8017ikg8on2ejo03dgo2uulzbi', 401, '25', 0, '', NULL, 41.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1060, 60, '', 'JKL99505926', 374, '深蓝色加绒', 'http://img.huayikeji.com/0yzpga8017ikg8on2ejo03dgo2uulzbi', 402, '26', 0, '', NULL, 41.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1061, 60, '', 'JKL99505927', 374, '深蓝色加绒', 'http://img.huayikeji.com/0yzpga8017ikg8on2ejo03dgo2uulzbi', 403, '27', 0, '', NULL, 41.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1062, 60, '', 'JKL99505928', 374, '深蓝色加绒', 'http://img.huayikeji.com/0yzpga8017ikg8on2ejo03dgo2uulzbi', 404, '28', 0, '', NULL, 41.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1063, 60, '', 'JKL99505929', 374, '深蓝色加绒', 'http://img.huayikeji.com/0yzpga8017ikg8on2ejo03dgo2uulzbi', 405, '29', 0, '', NULL, 41.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1064, 60, '', 'JKL99505930', 374, '深蓝色加绒', 'http://img.huayikeji.com/0yzpga8017ikg8on2ejo03dgo2uulzbi', 406, '30', 0, '', NULL, 41.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1065, 60, '', 'JKL99505931', 374, '深蓝色加绒', 'http://img.huayikeji.com/0yzpga8017ikg8on2ejo03dgo2uulzbi', 407, '31', 0, '', NULL, 41.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1066, 60, '', 'JKL99505932', 374, '深蓝色加绒', 'http://img.huayikeji.com/0yzpga8017ikg8on2ejo03dgo2uulzbi', 408, '32', 0, '', NULL, 41.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1067, 61, '', 'JKL89903509', 351, '蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022/JKL8990_蓝色.jpg', 394, 'XS', 0, '', NULL, 43.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1068, 61, '', 'JKL89903501', 351, '蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022/JKL8990_蓝色.jpg', 341, 'S', 0, '', NULL, 43.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1069, 61, '', 'JKL89903502', 351, '蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022/JKL8990_蓝色.jpg', 342, 'M', 0, '', NULL, 43.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1070, 61, '', 'JKL89903503', 351, '蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022/JKL8990_蓝色.jpg', 343, 'L', 0, '', NULL, 43.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1071, 61, '', 'JKL89903504', 351, '蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022/JKL8990_蓝色.jpg', 344, 'XL', 0, '', NULL, 43.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1072, 61, '', 'JKL89903505', 351, '蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022/JKL8990_蓝色.jpg', 345, '2XL', 0, '', NULL, 43.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1073, 61, '', 'JKL89907509', 389, '黑灰色', 'http://img.huayiyungou.com/ecom_goods_img_2022/JKL8990_黑色.jpg', 394, 'XS', 0, '', NULL, 43.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1074, 61, '', 'JKL89907501', 389, '黑灰色', 'http://img.huayiyungou.com/ecom_goods_img_2022/JKL8990_黑色.jpg', 341, 'S', 0, '', NULL, 43.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1075, 61, '', 'JKL89907502', 389, '黑灰色', 'http://img.huayiyungou.com/ecom_goods_img_2022/JKL8990_黑色.jpg', 342, 'M', 0, '', NULL, 43.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1076, 61, '', 'JKL89907503', 389, '黑灰色', 'http://img.huayiyungou.com/ecom_goods_img_2022/JKL8990_黑色.jpg', 343, 'L', 0, '', NULL, 43.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1077, 61, '', 'JKL89907504', 389, '黑灰色', 'http://img.huayiyungou.com/ecom_goods_img_2022/JKL8990_黑色.jpg', 344, 'XL', 0, '', NULL, 43.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1078, 61, '', 'JKL89907505', 389, '黑灰色', 'http://img.huayiyungou.com/ecom_goods_img_2022/JKL8990_黑色.jpg', 345, '2XL', 0, '', NULL, 43.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1079, 62, '', 'JKL99380109JIU', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9938_黑色.jpg', 394, 'XS', 417, '九分', NULL, 44.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1080, 62, '', 'JKL99380109CK', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9938_黑色.jpg', 394, 'XS', 416, '长款', NULL, 44.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1081, 62, '', 'JKL99380101JIU', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9938_黑色.jpg', 341, 'S', 417, '九分', NULL, 44.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1082, 62, '', 'JKL99380101CK', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9938_黑色.jpg', 341, 'S', 416, '长款', NULL, 44.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1083, 62, '', 'JKL99380102JIU', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9938_黑色.jpg', 342, 'M', 417, '九分', NULL, 44.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1084, 62, '', 'JKL99380102CK', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9938_黑色.jpg', 342, 'M', 416, '长款', NULL, 44.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1085, 62, '', 'JKL99380103JIU', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9938_黑色.jpg', 343, 'L', 417, '九分', NULL, 44.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1086, 62, '', 'JKL99380103CK', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9938_黑色.jpg', 343, 'L', 416, '长款', NULL, 44.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1087, 62, '', 'JKL99380104JIU', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9938_黑色.jpg', 344, 'XL', 417, '九分', NULL, 44.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1088, 62, '', 'JKL99380104CK', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9938_黑色.jpg', 344, 'XL', 416, '长款', NULL, 44.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1089, 62, '', 'JKL99380105JIU', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9938_黑色.jpg', 345, '2XL', 417, '九分', NULL, 44.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1090, 62, '', 'JKL99380105CK', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9938_黑色.jpg', 345, '2XL', 416, '长款', NULL, 44.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1091, 62, '', 'JKL99384009JIU', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9938_复古蓝.jpg', 394, 'XS', 417, '九分', NULL, 44.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1092, 62, '', 'JKL99384009CK', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9938_复古蓝.jpg', 394, 'XS', 416, '长款', NULL, 44.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1093, 62, '', 'JKL99384001JIU', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9938_复古蓝.jpg', 341, 'S', 417, '九分', NULL, 44.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1094, 62, '', 'JKL99384001CK', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9938_复古蓝.jpg', 341, 'S', 416, '长款', NULL, 44.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1095, 62, '', 'JKL99384002JIU', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9938_复古蓝.jpg', 342, 'M', 417, '九分', NULL, 44.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1096, 62, '', 'JKL99384002CK', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9938_复古蓝.jpg', 342, 'M', 416, '长款', NULL, 44.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1097, 62, '', 'JKL99384003JIU', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9938_复古蓝.jpg', 343, 'L', 417, '九分', NULL, 44.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1098, 62, '', 'JKL99384003CK', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9938_复古蓝.jpg', 343, 'L', 416, '长款', NULL, 44.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1099, 62, '', 'JKL99384004JIU', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9938_复古蓝.jpg', 344, 'XL', 417, '九分', NULL, 44.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1100, 62, '', 'JKL99384004CK', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9938_复古蓝.jpg', 344, 'XL', 416, '长款', NULL, 44.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1101, 62, '', 'JKL99384005JIU', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9938_复古蓝.jpg', 345, '2XL', 417, '九分', NULL, 44.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1102, 62, '', 'JKL99384005CK', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9938_复古蓝.jpg', 345, '2XL', 416, '长款', NULL, 44.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1103, 62, '', 'JKL99385009JIU', 361, '浅蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9938_浅蓝色.jpg', 394, 'XS', 417, '九分', NULL, 44.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1104, 62, '', 'JKL99385009CK', 361, '浅蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9938_浅蓝色.jpg', 394, 'XS', 416, '长款', NULL, 44.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1105, 62, '', 'JKL99385001JIU', 361, '浅蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9938_浅蓝色.jpg', 341, 'S', 417, '九分', NULL, 44.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1106, 62, '', 'JKL99385001CK', 361, '浅蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9938_浅蓝色.jpg', 341, 'S', 416, '长款', NULL, 44.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1107, 62, '', 'JKL99385002JIU', 361, '浅蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9938_浅蓝色.jpg', 342, 'M', 417, '九分', NULL, 44.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1108, 62, '', 'JKL99385002CK', 361, '浅蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9938_浅蓝色.jpg', 342, 'M', 416, '长款', NULL, 44.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1109, 62, '', 'JKL99385003JIU', 361, '浅蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9938_浅蓝色.jpg', 343, 'L', 417, '九分', NULL, 44.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1110, 62, '', 'JKL99385003CK', 361, '浅蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9938_浅蓝色.jpg', 343, 'L', 416, '长款', NULL, 44.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1111, 62, '', 'JKL99385004JIU', 361, '浅蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9938_浅蓝色.jpg', 344, 'XL', 417, '九分', NULL, 44.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1112, 62, '', 'JKL99385004CK', 361, '浅蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9938_浅蓝色.jpg', 344, 'XL', 416, '长款', NULL, 44.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1113, 62, '', 'JKL99385005JIU', 361, '浅蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9938_浅蓝色.jpg', 345, '2XL', 417, '九分', NULL, 44.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1114, 62, '', 'JKL99385005CK', 361, '浅蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9938_浅蓝色.jpg', 345, '2XL', 416, '长款', NULL, 44.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1115, 63, '', 'JKL600101258', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_黑色.jpg', 401, '25', 420, '单裤', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1116, 63, '', 'JKL600101259', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_黑色.jpg', 401, '25', 421, '加绒', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1117, 63, '', 'JKL600101268', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_黑色.jpg', 402, '26', 420, '单裤', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1118, 63, '', 'JKL600101269', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_黑色.jpg', 402, '26', 421, '加绒', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1119, 63, '', 'JKL600101278', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_黑色.jpg', 403, '27', 420, '单裤', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1120, 63, '', 'JKL600101279', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_黑色.jpg', 403, '27', 421, '加绒', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1121, 63, '', 'JKL600101288', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_黑色.jpg', 404, '28', 420, '单裤', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1122, 63, '', 'JKL600101289', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_黑色.jpg', 404, '28', 421, '加绒', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1123, 63, '', 'JKL600101298', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_黑色.jpg', 405, '29', 420, '单裤', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1124, 63, '', 'JKL600101299', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_黑色.jpg', 405, '29', 421, '加绒', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1125, 63, '', 'JKL600101308', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_黑色.jpg', 406, '30', 420, '单裤', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1126, 63, '', 'JKL600101309', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_黑色.jpg', 406, '30', 421, '加绒', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1127, 63, '', 'JKL600101318', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_黑色.jpg', 407, '31', 420, '单裤', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1128, 63, '', 'JKL600101319', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_黑色.jpg', 407, '31', 421, '加绒', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1129, 63, '', 'JKL600101328', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_黑色.jpg', 408, '32', 420, '单裤', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1130, 63, '', 'JKL600101329', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_黑色.jpg', 408, '32', 421, '加绒', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1131, 63, '', 'JKL600128258', 335, '卡其', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_卡其.jpg', 401, '25', 420, '单裤', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1132, 63, '', 'JKL600128259', 335, '卡其', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_卡其.jpg', 401, '25', 421, '加绒', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1133, 63, '', 'JKL600128268', 335, '卡其', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_卡其.jpg', 402, '26', 420, '单裤', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1134, 63, '', 'JKL600128269', 335, '卡其', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_卡其.jpg', 402, '26', 421, '加绒', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1135, 63, '', 'JKL600128278', 335, '卡其', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_卡其.jpg', 403, '27', 420, '单裤', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1136, 63, '', 'JKL600128279', 335, '卡其', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_卡其.jpg', 403, '27', 421, '加绒', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1137, 63, '', 'JKL600128288', 335, '卡其', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_卡其.jpg', 404, '28', 420, '单裤', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1138, 63, '', 'JKL600128289', 335, '卡其', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_卡其.jpg', 404, '28', 421, '加绒', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1139, 63, '', 'JKL600128298', 335, '卡其', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_卡其.jpg', 405, '29', 420, '单裤', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1140, 63, '', 'JKL600128299', 335, '卡其', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_卡其.jpg', 405, '29', 421, '加绒', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1141, 63, '', 'JKL600128308', 335, '卡其', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_卡其.jpg', 406, '30', 420, '单裤', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1142, 63, '', 'JKL600128309', 335, '卡其', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_卡其.jpg', 406, '30', 421, '加绒', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1143, 63, '', 'JKL600128318', 335, '卡其', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_卡其.jpg', 407, '31', 420, '单裤', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1144, 63, '', 'JKL600128319', 335, '卡其', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_卡其.jpg', 407, '31', 421, '加绒', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1145, 63, '', 'JKL600128328', 335, '卡其', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_卡其.jpg', 408, '32', 420, '单裤', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1146, 63, '', 'JKL600128329', 335, '卡其', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_卡其.jpg', 408, '32', 421, '加绒', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1147, 63, '', 'JKL600151258', 368, '卡灰', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_卡灰.jpg', 401, '25', 420, '单裤', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1148, 63, '', 'JKL600151259', 368, '卡灰', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_卡灰.jpg', 401, '25', 421, '加绒', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1149, 63, '', 'JKL600151268', 368, '卡灰', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_卡灰.jpg', 402, '26', 420, '单裤', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1150, 63, '', 'JKL600151269', 368, '卡灰', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_卡灰.jpg', 402, '26', 421, '加绒', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1151, 63, '', 'JKL600151278', 368, '卡灰', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_卡灰.jpg', 403, '27', 420, '单裤', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1152, 63, '', 'JKL600151279', 368, '卡灰', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_卡灰.jpg', 403, '27', 421, '加绒', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1153, 63, '', 'JKL600151288', 368, '卡灰', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_卡灰.jpg', 404, '28', 420, '单裤', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1154, 63, '', 'JKL600151289', 368, '卡灰', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_卡灰.jpg', 404, '28', 421, '加绒', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1155, 63, '', 'JKL600151298', 368, '卡灰', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_卡灰.jpg', 405, '29', 420, '单裤', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1156, 63, '', 'JKL600151299', 368, '卡灰', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_卡灰.jpg', 405, '29', 421, '加绒', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1157, 63, '', 'JKL600151308', 368, '卡灰', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_卡灰.jpg', 406, '30', 420, '单裤', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1158, 63, '', 'JKL600151309', 368, '卡灰', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_卡灰.jpg', 406, '30', 421, '加绒', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1159, 63, '', 'JKL600151318', 368, '卡灰', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_卡灰.jpg', 407, '31', 420, '单裤', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1160, 63, '', 'JKL600151319', 368, '卡灰', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_卡灰.jpg', 407, '31', 421, '加绒', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1161, 63, '', 'JKL600151328', 368, '卡灰', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_卡灰.jpg', 408, '32', 420, '单裤', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1162, 63, '', 'JKL600151329', 368, '卡灰', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_卡灰.jpg', 408, '32', 421, '加绒', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1163, 63, '', 'JKL600147258', 366, '米白', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_米白.jpg', 401, '25', 420, '单裤', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1164, 63, '', 'JKL600147259', 366, '米白', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_米白.jpg', 401, '25', 421, '加绒', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1165, 63, '', 'JKL600147268', 366, '米白', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_米白.jpg', 402, '26', 420, '单裤', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1166, 63, '', 'JKL600147269', 366, '米白', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_米白.jpg', 402, '26', 421, '加绒', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1167, 63, '', 'JKL600147278', 366, '米白', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_米白.jpg', 403, '27', 420, '单裤', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1168, 63, '', 'JKL600147279', 366, '米白', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_米白.jpg', 403, '27', 421, '加绒', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1169, 63, '', 'JKL600147288', 366, '米白', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_米白.jpg', 404, '28', 420, '单裤', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1170, 63, '', 'JKL600147289', 366, '米白', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_米白.jpg', 404, '28', 421, '加绒', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1171, 63, '', 'JKL600147298', 366, '米白', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_米白.jpg', 405, '29', 420, '单裤', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1172, 63, '', 'JKL600147299', 366, '米白', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_米白.jpg', 405, '29', 421, '加绒', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1173, 63, '', 'JKL600147308', 366, '米白', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_米白.jpg', 406, '30', 420, '单裤', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1174, 63, '', 'JKL600147309', 366, '米白', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_米白.jpg', 406, '30', 421, '加绒', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1175, 63, '', 'JKL600147318', 366, '米白', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_米白.jpg', 407, '31', 420, '单裤', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1176, 63, '', 'JKL600147319', 366, '米白', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_米白.jpg', 407, '31', 421, '加绒', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1177, 63, '', 'JKL600147328', 366, '米白', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_米白.jpg', 408, '32', 420, '单裤', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1178, 63, '', 'JKL600147329', 366, '米白', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_米白.jpg', 408, '32', 421, '加绒', NULL, 45.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1179, 64, '', 'JKL99090125JIU', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_黑色.jpg', 401, '25', 417, '九分', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1180, 64, '', 'JKL99090125CK', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_黑色.jpg', 401, '25', 416, '长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1181, 64, '', 'JKL99090126JIU', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_黑色.jpg', 402, '26', 417, '九分', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1182, 64, '', 'JKL99090126CK', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_黑色.jpg', 402, '26', 416, '长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1183, 64, '', 'JKL99090127JIU', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_黑色.jpg', 403, '27', 417, '九分', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1184, 64, '', 'JKL99090127CK', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_黑色.jpg', 403, '27', 416, '长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1185, 64, '', 'JKL99090128JIU', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_黑色.jpg', 404, '28', 417, '九分', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1186, 64, '', 'JKL99090128CK', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_黑色.jpg', 404, '28', 416, '长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1187, 64, '', 'JKL99090129JIU', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_黑色.jpg', 405, '29', 417, '九分', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1188, 64, '', 'JKL99090129CK', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_黑色.jpg', 405, '29', 416, '长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1189, 64, '', 'JKL99090130JIU', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_黑色.jpg', 406, '30', 417, '九分', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1190, 64, '', 'JKL99090130CK', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_黑色.jpg', 406, '30', 416, '长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1191, 64, '', 'JKL99090131JIU', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_黑色.jpg', 407, '31', 417, '九分', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1192, 64, '', 'JKL99090131CK', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_黑色.jpg', 407, '31', 416, '长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1193, 64, '', 'JKL99090132JIU', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_黑色.jpg', 408, '32', 417, '九分', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1194, 64, '', 'JKL99090132CK', 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_黑色.jpg', 408, '32', 416, '长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1195, 64, '', 'JKL99091225JIU', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_深蓝色.jpg', 401, '25', 417, '九分', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1196, 64, '', 'JKL99091225CK', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_深蓝色.jpg', 401, '25', 416, '长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1197, 64, '', 'JKL99091226JIU', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_深蓝色.jpg', 402, '26', 417, '九分', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1198, 64, '', 'JKL99091226CK', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_深蓝色.jpg', 402, '26', 416, '长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1199, 64, '', 'JKL99091227JIU', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_深蓝色.jpg', 403, '27', 417, '九分', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1200, 64, '', 'JKL99091227CK', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_深蓝色.jpg', 403, '27', 416, '长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1201, 64, '', 'JKL99091228JIU', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_深蓝色.jpg', 404, '28', 417, '九分', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1202, 64, '', 'JKL99091228CK', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_深蓝色.jpg', 404, '28', 416, '长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1203, 64, '', 'JKL99091229JIU', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_深蓝色.jpg', 405, '29', 417, '九分', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1204, 64, '', 'JKL99091229CK', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_深蓝色.jpg', 405, '29', 416, '长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1205, 64, '', 'JKL99091230JIU', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_深蓝色.jpg', 406, '30', 417, '九分', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1206, 64, '', 'JKL99091230CK', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_深蓝色.jpg', 406, '30', 416, '长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1207, 64, '', 'JKL99091231JIU', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_深蓝色.jpg', 407, '31', 417, '九分', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1208, 64, '', 'JKL99091231CK', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_深蓝色.jpg', 407, '31', 416, '长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1209, 64, '', 'JKL99091232JIU', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_深蓝色.jpg', 408, '32', 417, '九分', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1210, 64, '', 'JKL99091232CK', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_深蓝色.jpg', 408, '32', 416, '长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1211, 64, '', 'JKL99095025JIU', 361, '浅蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_浅蓝色.JPG', 401, '25', 417, '九分', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1212, 64, '', 'JKL99095025CK', 361, '浅蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_浅蓝色.JPG', 401, '25', 416, '长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1213, 64, '', 'JKL99095026JIU', 361, '浅蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_浅蓝色.JPG', 402, '26', 417, '九分', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1214, 64, '', 'JKL99095026CK', 361, '浅蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_浅蓝色.JPG', 402, '26', 416, '长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1215, 64, '', 'JKL99095027JIU', 361, '浅蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_浅蓝色.JPG', 403, '27', 417, '九分', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1216, 64, '', 'JKL99095027CK', 361, '浅蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_浅蓝色.JPG', 403, '27', 416, '长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1217, 64, '', 'JKL99095028JIU', 361, '浅蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_浅蓝色.JPG', 404, '28', 417, '九分', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1218, 64, '', 'JKL99095028CK', 361, '浅蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_浅蓝色.JPG', 404, '28', 416, '长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1219, 64, '', 'JKL99095029JIU', 361, '浅蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_浅蓝色.JPG', 405, '29', 417, '九分', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1220, 64, '', 'JKL99095029CK', 361, '浅蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_浅蓝色.JPG', 405, '29', 416, '长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1221, 64, '', 'JKL99095030JIU', 361, '浅蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_浅蓝色.JPG', 406, '30', 417, '九分', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1222, 64, '', 'JKL99095030CK', 361, '浅蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_浅蓝色.JPG', 406, '30', 416, '长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1223, 64, '', 'JKL99095031JIU', 361, '浅蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_浅蓝色.JPG', 407, '31', 417, '九分', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1224, 64, '', 'JKL99095031CK', 361, '浅蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_浅蓝色.JPG', 407, '31', 416, '长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1225, 64, '', 'JKL99095032JIU', 361, '浅蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_浅蓝色.JPG', 408, '32', 417, '九分', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1226, 64, '', 'JKL99095032CK', 361, '浅蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_浅蓝色.JPG', 408, '32', 416, '长款', NULL, 50.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1227, 65, '', 'GZYYZ72770100', 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01lfHUDo1p3HVme2o7Q_!!2214743335304-0-cib.jpg', 340, '均码', 0, '', NULL, 54.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1228, 65, '', 'GZYYZ72773100', 338, '咖啡色', 'https://cbu01.alicdn.com/img/ibank/O1CN01kneLsV1p3HVu8u1xi_!!2214743335304-0-cib.jpg', 340, '均码', 0, '', NULL, 54.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1229, 65, '', 'GZYYZ72776200', 377, '墨绿色', 'https://cbu01.alicdn.com/img/ibank/O1CN01nPrwCh1p3HVouHmtq_!!2214743335304-0-cib.jpg', 340, '均码', 0, '', NULL, 54.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1230, 66, '', 'JKL197340098', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1973_复古蓝.jpg', 394, 'XS', 420, '单裤', NULL, 44.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1231, 66, '', 'JKL197340099', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1973_复古蓝.jpg', 394, 'XS', 421, '加绒', NULL, 52.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1232, 66, '', 'JKL197340018', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1973_复古蓝.jpg', 341, 'S', 420, '单裤', NULL, 44.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1233, 66, '', 'JKL197340019', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1973_复古蓝.jpg', 341, 'S', 421, '加绒', NULL, 52.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1234, 66, '', 'JKL197340028', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1973_复古蓝.jpg', 342, 'M', 420, '单裤', NULL, 44.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1235, 66, '', 'JKL197340029', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1973_复古蓝.jpg', 342, 'M', 421, '加绒', NULL, 52.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1236, 66, '', 'JKL197340038', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1973_复古蓝.jpg', 343, 'L', 420, '单裤', NULL, 44.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1237, 66, '', 'JKL197340039', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1973_复古蓝.jpg', 343, 'L', 421, '加绒', NULL, 52.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1238, 66, '', 'JKL197340048', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1973_复古蓝.jpg', 344, 'XL', 420, '单裤', NULL, 44.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1239, 66, '', 'JKL197340049', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1973_复古蓝.jpg', 344, 'XL', 421, '加绒', NULL, 52.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1240, 66, '', 'JKL197340058', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1973_复古蓝.jpg', 345, '2XL', 420, '单裤', NULL, 44.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1241, 66, '', 'JKL197340059', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1973_复古蓝.jpg', 345, '2XL', 421, '加绒', NULL, 52.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1242, 67, '', 'JKL19511225CK', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_深蓝色.jpg', 401, '25', 416, '长裤', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1243, 67, '', 'JKL19511225CR', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_深蓝色.jpg', 401, '25', 422, '长裤加绒', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1244, 67, '', 'JKL19511225JC', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_深蓝色.jpg', 401, '25', 415, '加长裤', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1245, 67, '', 'JKL19511225JCR', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_深蓝色.jpg', 401, '25', 423, '加长裤加绒', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1246, 67, '', 'JKL19511226CK', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_深蓝色.jpg', 402, '26', 416, '长裤', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1247, 67, '', 'JKL19511226CR', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_深蓝色.jpg', 402, '26', 422, '长裤加绒', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1248, 67, '', 'JKL19511226JC', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_深蓝色.jpg', 402, '26', 415, '加长裤', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1249, 67, '', 'JKL19511226JCR', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_深蓝色.jpg', 402, '26', 423, '加长裤加绒', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1250, 67, '', 'JKL19511227CK', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_深蓝色.jpg', 403, '27', 416, '长裤', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1251, 67, '', 'JKL19511227CR', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_深蓝色.jpg', 403, '27', 422, '长裤加绒', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1252, 67, '', 'JKL19511227JC', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_深蓝色.jpg', 403, '27', 415, '加长裤', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1253, 67, '', 'JKL19511227JCR', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_深蓝色.jpg', 403, '27', 423, '加长裤加绒', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1254, 67, '', 'JKL19511228CK', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_深蓝色.jpg', 404, '28', 416, '长裤', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1255, 67, '', 'JKL19511228CR', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_深蓝色.jpg', 404, '28', 422, '长裤加绒', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1256, 67, '', 'JKL19511228JC', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_深蓝色.jpg', 404, '28', 415, '加长裤', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1257, 67, '', 'JKL19511228JCR', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_深蓝色.jpg', 404, '28', 423, '加长裤加绒', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1258, 67, '', 'JKL19511229CK', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_深蓝色.jpg', 405, '29', 416, '长裤', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1259, 67, '', 'JKL19511229CR', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_深蓝色.jpg', 405, '29', 422, '长裤加绒', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1260, 67, '', 'JKL19511229JC', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_深蓝色.jpg', 405, '29', 415, '加长裤', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1261, 67, '', 'JKL19511229JCR', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_深蓝色.jpg', 405, '29', 423, '加长裤加绒', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1262, 67, '', 'JKL19511230CK', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_深蓝色.jpg', 406, '30', 416, '长裤', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1263, 67, '', 'JKL19511230CR', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_深蓝色.jpg', 406, '30', 422, '长裤加绒', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1264, 67, '', 'JKL19511230JC', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_深蓝色.jpg', 406, '30', 415, '加长裤', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1265, 67, '', 'JKL19511230JCR', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_深蓝色.jpg', 406, '30', 423, '加长裤加绒', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1266, 67, '', 'JKL19511231CK', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_深蓝色.jpg', 407, '31', 416, '长裤', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1267, 67, '', 'JKL19511231CR', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_深蓝色.jpg', 407, '31', 422, '长裤加绒', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1268, 67, '', 'JKL19511231JC', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_深蓝色.jpg', 407, '31', 415, '加长裤', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1269, 67, '', 'JKL19511231JCR', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_深蓝色.jpg', 407, '31', 423, '加长裤加绒', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1270, 67, '', 'JKL19511232CK', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_深蓝色.jpg', 408, '32', 416, '长裤', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1271, 67, '', 'JKL19511232CR', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_深蓝色.jpg', 408, '32', 422, '长裤加绒', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1272, 67, '', 'JKL19511232JC', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_深蓝色.jpg', 408, '32', 415, '加长裤', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1273, 67, '', 'JKL19511232JCR', 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_深蓝色.jpg', 408, '32', 423, '加长裤加绒', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1274, 67, '', 'JKL19514025CK', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_复古蓝.png', 401, '25', 416, '长裤', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1275, 67, '', 'JKL19514025CR', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_复古蓝.png', 401, '25', 422, '长裤加绒', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1276, 67, '', 'JKL19514025JC', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_复古蓝.png', 401, '25', 415, '加长裤', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1277, 67, '', 'JKL19514025JCR', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_复古蓝.png', 401, '25', 423, '加长裤加绒', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1278, 67, '', 'JKL19514026CK', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_复古蓝.png', 402, '26', 416, '长裤', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1279, 67, '', 'JKL19514026CR', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_复古蓝.png', 402, '26', 422, '长裤加绒', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1280, 67, '', 'JKL19514026JC', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_复古蓝.png', 402, '26', 415, '加长裤', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1281, 67, '', 'JKL19514026JCR', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_复古蓝.png', 402, '26', 423, '加长裤加绒', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1282, 67, '', 'JKL19514027CK', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_复古蓝.png', 403, '27', 416, '长裤', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1283, 67, '', 'JKL19514027CR', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_复古蓝.png', 403, '27', 422, '长裤加绒', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1284, 67, '', 'JKL19514027JC', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_复古蓝.png', 403, '27', 415, '加长裤', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1285, 67, '', 'JKL19514027JCR', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_复古蓝.png', 403, '27', 423, '加长裤加绒', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1286, 67, '', 'JKL19514028CK', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_复古蓝.png', 404, '28', 416, '长裤', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1287, 67, '', 'JKL19514028CR', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_复古蓝.png', 404, '28', 422, '长裤加绒', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1288, 67, '', 'JKL19514028JC', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_复古蓝.png', 404, '28', 415, '加长裤', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1289, 67, '', 'JKL19514028JCR', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_复古蓝.png', 404, '28', 423, '加长裤加绒', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1290, 67, '', 'JKL19514029CK', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_复古蓝.png', 405, '29', 416, '长裤', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1291, 67, '', 'JKL19514029CR', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_复古蓝.png', 405, '29', 422, '长裤加绒', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1292, 67, '', 'JKL19514029JC', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_复古蓝.png', 405, '29', 415, '加长裤', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1293, 67, '', 'JKL19514029JCR', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_复古蓝.png', 405, '29', 423, '加长裤加绒', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1294, 67, '', 'JKL19514030CK', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_复古蓝.png', 406, '30', 416, '长裤', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1295, 67, '', 'JKL19514030CR', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_复古蓝.png', 406, '30', 422, '长裤加绒', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1296, 67, '', 'JKL19514030JC', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_复古蓝.png', 406, '30', 415, '加长裤', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1297, 67, '', 'JKL19514030JCR', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_复古蓝.png', 406, '30', 423, '加长裤加绒', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1298, 67, '', 'JKL19514031CK', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_复古蓝.png', 407, '31', 416, '长裤', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1299, 67, '', 'JKL19514031CR', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_复古蓝.png', 407, '31', 422, '长裤加绒', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1300, 67, '', 'JKL19514031JC', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_复古蓝.png', 407, '31', 415, '加长裤', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1301, 67, '', 'JKL19514031JCR', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_复古蓝.png', 407, '31', 423, '加长裤加绒', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1302, 67, '', 'JKL19514032CK', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_复古蓝.png', 408, '32', 416, '长裤', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1303, 67, '', 'JKL19514032CR', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_复古蓝.png', 408, '32', 422, '长裤加绒', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1304, 67, '', 'JKL19514032JC', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_复古蓝.png', 408, '32', 415, '加长裤', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1305, 67, '', 'JKL19514032JCR', 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_复古蓝.png', 408, '32', 423, '加长裤加绒', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1306, 62, '', 'JKL99387009', 384, '深蓝长款', '', 394, 'XS', 0, '', NULL, 0.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1307, 62, '', 'JKL99387001', 384, '深蓝长款', '', 341, 'S', 0, '', NULL, 0.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1308, 62, '', 'JKL99387002', 384, '深蓝长款', '', 342, 'M', 0, '', NULL, 0.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1309, 62, '', 'JKL99387003', 384, '深蓝长款', '', 343, 'L', 0, '', NULL, 0.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1310, 62, '', 'JKL99387004', 384, '深蓝长款', '', 344, 'XL', 0, '', NULL, 0.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1311, 62, '', 'JKL99387005', 384, '深蓝长款', '', 345, '2XL', 0, '', NULL, 0.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1312, 62, '', 'JKL99386909', 383, '深蓝九分', '', 394, 'XS', 0, '', NULL, 0.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1313, 62, '', 'JKL99386901', 383, '深蓝九分', '', 341, 'S', 0, '', NULL, 0.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1314, 62, '', 'JKL99386902', 383, '深蓝九分', '', 342, 'M', 0, '', NULL, 0.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1315, 62, '', 'JKL99386903', 383, '深蓝九分', '', 343, 'L', 0, '', NULL, 0.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1316, 62, '', 'JKL99386904', 383, '深蓝九分', '', 344, 'XL', 0, '', NULL, 0.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1317, 62, '', 'JKL99386905', 383, '深蓝九分', '', 345, '2XL', 0, '', NULL, 0.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1318, 68, '', 'JKL31121201', 319, '深蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01rCYlbl2Arl3CqVwkG_!!2513908257-0-cib.jpg', 341, 'S', 0, '', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1319, 68, '', 'JKL31121202', 319, '深蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01rCYlbl2Arl3CqVwkG_!!2513908257-0-cib.jpg', 342, 'M', 0, '', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1320, 68, '', 'JKL31121203', 319, '深蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01rCYlbl2Arl3CqVwkG_!!2513908257-0-cib.jpg', 343, 'L', 0, '', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1321, 68, '', 'JKL31121204', 319, '深蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01rCYlbl2Arl3CqVwkG_!!2513908257-0-cib.jpg', 344, 'XL', 0, '', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1322, 68, '', 'JKL31121205', 319, '深蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01rCYlbl2Arl3CqVwkG_!!2513908257-0-cib.jpg', 345, '2XL', 0, '', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1323, 68, '', 'JKL31120701', 314, '烟灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01vLP3RW2Arl35fOv3d_!!2513908257-0-cib.jpg', 341, 'S', 0, '', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1324, 68, '', 'JKL31120702', 314, '烟灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01vLP3RW2Arl35fOv3d_!!2513908257-0-cib.jpg', 342, 'M', 0, '', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1325, 68, '', 'JKL31120703', 314, '烟灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01vLP3RW2Arl35fOv3d_!!2513908257-0-cib.jpg', 343, 'L', 0, '', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1326, 68, '', 'JKL31120704', 314, '烟灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01vLP3RW2Arl35fOv3d_!!2513908257-0-cib.jpg', 344, 'XL', 0, '', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1327, 68, '', 'JKL31120705', 314, '烟灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01vLP3RW2Arl35fOv3d_!!2513908257-0-cib.jpg', 345, '2XL', 0, '', NULL, 42.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1328, 69, '', 'KH97347526', 389, '黑灰色', 'https://gd1.alicdn.com/imgextra/i2/49616689/O1CN01NkZm6L1zHc5upnyRW_!!49616689.jpg_400x400.jpg', 402, '26', 0, '', NULL, 39.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1329, 69, '', 'KH97347527', 389, '黑灰色', 'https://gd1.alicdn.com/imgextra/i2/49616689/O1CN01NkZm6L1zHc5upnyRW_!!49616689.jpg_400x400.jpg', 403, '27', 0, '', NULL, 39.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1330, 69, '', 'KH97347528', 389, '黑灰色', 'https://gd1.alicdn.com/imgextra/i2/49616689/O1CN01NkZm6L1zHc5upnyRW_!!49616689.jpg_400x400.jpg', 404, '28', 0, '', NULL, 39.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1331, 69, '', 'KH97347529', 389, '黑灰色', 'https://gd1.alicdn.com/imgextra/i2/49616689/O1CN01NkZm6L1zHc5upnyRW_!!49616689.jpg_400x400.jpg', 405, '29', 0, '', NULL, 39.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1332, 69, '', 'KH97347530', 389, '黑灰色', 'https://gd1.alicdn.com/imgextra/i2/49616689/O1CN01NkZm6L1zHc5upnyRW_!!49616689.jpg_400x400.jpg', 406, '30', 0, '', NULL, 39.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1333, 69, '', 'KH97347531', 389, '黑灰色', 'https://gd1.alicdn.com/imgextra/i2/49616689/O1CN01NkZm6L1zHc5upnyRW_!!49616689.jpg_400x400.jpg', 407, '31', 0, '', NULL, 39.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1334, 69, '', 'KH97347532', 389, '黑灰色', 'https://gd1.alicdn.com/imgextra/i2/49616689/O1CN01NkZm6L1zHc5upnyRW_!!49616689.jpg_400x400.jpg', 408, '32', 0, '', NULL, 39.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1335, 69, '', 'KH97345026', 361, '浅蓝色', 'https://gd3.alicdn.com/imgextra/i1/49616689/O1CN01bzPmrs1zHc5ynDOyo_!!49616689.jpg_400x400.jpg', 402, '26', 0, '', NULL, 39.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1336, 69, '', 'KH97345027', 361, '浅蓝色', 'https://gd3.alicdn.com/imgextra/i1/49616689/O1CN01bzPmrs1zHc5ynDOyo_!!49616689.jpg_400x400.jpg', 403, '27', 0, '', NULL, 39.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1337, 69, '', 'KH97345028', 361, '浅蓝色', 'https://gd3.alicdn.com/imgextra/i1/49616689/O1CN01bzPmrs1zHc5ynDOyo_!!49616689.jpg_400x400.jpg', 404, '28', 0, '', NULL, 39.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1338, 69, '', 'KH97345029', 361, '浅蓝色', 'https://gd3.alicdn.com/imgextra/i1/49616689/O1CN01bzPmrs1zHc5ynDOyo_!!49616689.jpg_400x400.jpg', 405, '29', 0, '', NULL, 39.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1339, 69, '', 'KH97345030', 361, '浅蓝色', 'https://gd3.alicdn.com/imgextra/i1/49616689/O1CN01bzPmrs1zHc5ynDOyo_!!49616689.jpg_400x400.jpg', 406, '30', 0, '', NULL, 39.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1340, 69, '', 'KH97345031', 361, '浅蓝色', 'https://gd3.alicdn.com/imgextra/i1/49616689/O1CN01bzPmrs1zHc5ynDOyo_!!49616689.jpg_400x400.jpg', 407, '31', 0, '', NULL, 39.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1341, 69, '', 'KH97345032', 361, '浅蓝色', 'https://gd3.alicdn.com/imgextra/i1/49616689/O1CN01bzPmrs1zHc5ynDOyo_!!49616689.jpg_400x400.jpg', 408, '32', 0, '', NULL, 39.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1342, 70, '', 'KH98265026', 361, '浅蓝色', 'https://gd3.alicdn.com/imgextra/i2/49616689/O1CN01j5qyuA1zHc63KaMAY_!!49616689.jpg_400x400.jpg', 402, '26', 0, '', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1343, 70, '', 'KH98265027', 361, '浅蓝色', 'https://gd3.alicdn.com/imgextra/i2/49616689/O1CN01j5qyuA1zHc63KaMAY_!!49616689.jpg_400x400.jpg', 403, '27', 0, '', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1344, 70, '', 'KH98265028', 361, '浅蓝色', 'https://gd3.alicdn.com/imgextra/i2/49616689/O1CN01j5qyuA1zHc63KaMAY_!!49616689.jpg_400x400.jpg', 404, '28', 0, '', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1345, 70, '', 'KH98265029', 361, '浅蓝色', 'https://gd3.alicdn.com/imgextra/i2/49616689/O1CN01j5qyuA1zHc63KaMAY_!!49616689.jpg_400x400.jpg', 405, '29', 0, '', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1346, 70, '', 'KH98265030', 361, '浅蓝色', 'https://gd3.alicdn.com/imgextra/i2/49616689/O1CN01j5qyuA1zHc63KaMAY_!!49616689.jpg_400x400.jpg', 406, '30', 0, '', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1347, 70, '', 'KH98265031', 361, '浅蓝色', 'https://gd3.alicdn.com/imgextra/i2/49616689/O1CN01j5qyuA1zHc63KaMAY_!!49616689.jpg_400x400.jpg', 407, '31', 0, '', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1348, 70, '', 'KH98265032', 361, '浅蓝色', 'https://gd3.alicdn.com/imgextra/i2/49616689/O1CN01j5qyuA1zHc63KaMAY_!!49616689.jpg_400x400.jpg', 408, '32', 0, '', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1349, 70, '', 'KH98260126', 308, '黑色', 'https://gd2.alicdn.com/imgextra/i4/49616689/O1CN01GAdjtB1zHc5yvskHx_!!49616689.jpg_400x400.jpg', 402, '26', 0, '', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1350, 70, '', 'KH98260127', 308, '黑色', 'https://gd2.alicdn.com/imgextra/i4/49616689/O1CN01GAdjtB1zHc5yvskHx_!!49616689.jpg_400x400.jpg', 403, '27', 0, '', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1351, 70, '', 'KH98260128', 308, '黑色', 'https://gd2.alicdn.com/imgextra/i4/49616689/O1CN01GAdjtB1zHc5yvskHx_!!49616689.jpg_400x400.jpg', 404, '28', 0, '', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1352, 70, '', 'KH98260129', 308, '黑色', 'https://gd2.alicdn.com/imgextra/i4/49616689/O1CN01GAdjtB1zHc5yvskHx_!!49616689.jpg_400x400.jpg', 405, '29', 0, '', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1353, 70, '', 'KH98260130', 308, '黑色', 'https://gd2.alicdn.com/imgextra/i4/49616689/O1CN01GAdjtB1zHc5yvskHx_!!49616689.jpg_400x400.jpg', 406, '30', 0, '', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1354, 70, '', 'KH98260131', 308, '黑色', 'https://gd2.alicdn.com/imgextra/i4/49616689/O1CN01GAdjtB1zHc5yvskHx_!!49616689.jpg_400x400.jpg', 407, '31', 0, '', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1355, 70, '', 'KH98260132', 308, '黑色', 'https://gd2.alicdn.com/imgextra/i4/49616689/O1CN01GAdjtB1zHc5yvskHx_!!49616689.jpg_400x400.jpg', 408, '32', 0, '', NULL, 40.00, 0.00, 0.00, 0.00, '', 0, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1356, 71, '', 'aaaaa15030', 413, '浅蓝色加绒', 'aaa', 406, '30', 0, '', NULL, 12.00, 0.00, 0.00, 0.00, '', 1, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1357, 71, '', 'aaaaa15029', 413, '浅蓝色加绒', 'aaa', 405, '29', 0, '', NULL, 12.00, 0.00, 0.00, 0.00, '', 1, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1358, 71, '', 'aaaaa14030', 412, '复古蓝加绒', 'aaa', 406, '30', 0, '', NULL, 12.00, 0.00, 0.00, 0.00, '', 1, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1359, 71, '', 'aaaaa14029', 412, '复古蓝加绒', 'aaa', 405, '29', 0, '', NULL, 12.00, 0.00, 0.00, 0.00, '', 1, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1368, 74, '', 'A0012D15032', 413, '浅蓝色加绒', 'http://localhost:8080/preview/images/48', 408, '32', 0, '', NULL, 12.00, 0.00, 0.00, 0.00, '', 1, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1369, 74, '', 'A0012D15031', 413, '浅蓝色加绒', 'http://localhost:8080/preview/images/48', 407, '31', 0, '', NULL, 12.00, 0.00, 0.00, 0.00, '', 1, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1370, 74, '', 'A0012D14032', 412, '复古蓝加绒', 'http://localhost:8080/preview/images/49', 408, '32', 0, '', NULL, 12.00, 0.00, 0.00, 0.00, '', 1, 0, 0, 0);
INSERT INTO `erp_goods_spec` VALUES (1371, 74, '', 'A0012D14031', 412, '复古蓝加绒', 'http://localhost:8080/preview/images/49', 407, '31', 0, '', NULL, 12.00, 0.00, 0.00, 0.00, '', 1, 0, 0, 0);

-- ----------------------------
-- Table structure for erp_goods_spec_attr
-- ----------------------------
DROP TABLE IF EXISTS `erp_goods_spec_attr`;
CREATE TABLE `erp_goods_spec_attr`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `goods_id` int NOT NULL,
  `type` char(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `k` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `kid` int NULL DEFAULT NULL,
  `vid` int NULL DEFAULT NULL,
  `v` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `img` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 603 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of erp_goods_spec_attr
-- ----------------------------
INSERT INTO `erp_goods_spec_attr` VALUES (1, 1, 'color', '颜色', 1, 0, '250ml', 'http://img.huayikeji.com/wveyzkbvilkzaj3eu9084pmqb9405hag');
INSERT INTO `erp_goods_spec_attr` VALUES (2, 4, 'color', '颜色', 1, 0, '香辣味1瓶+麻辣味1瓶', 'http://img.huayikeji.com/kw5i7anb3tydpu8kz0f7o8jrszuczlw1');
INSERT INTO `erp_goods_spec_attr` VALUES (3, 4, 'color', '颜色', 1, 0, '麻辣味420g*2瓶中辣', 'http://img.huayikeji.com/8ltvsrs9huscohzi2qd20qj0daynz012');
INSERT INTO `erp_goods_spec_attr` VALUES (4, 4, 'color', '颜色', 1, 0, '香辣味420g*2瓶微辣', 'http://img.huayikeji.com/z01l0tjah6vwpwdp4yhppthum9l44our');
INSERT INTO `erp_goods_spec_attr` VALUES (5, 5, 'color', '颜色', 1, 0, '5A精品', 'http://img.huayikeji.com/kx3ikkjuand5huibpsh3s4o7jsuzilfa');
INSERT INTO `erp_goods_spec_attr` VALUES (6, 6, 'color', '颜色', 1, 0, '甜味型20袋', 'http://img.huayikeji.com/u4ga7xp1swww4t7y40eh3gvgs3kikf83');
INSERT INTO `erp_goods_spec_attr` VALUES (7, 7, 'color', '颜色', 1, 0, '深蓝色', 'http://img.huayikeji.com/0lzoyn7adrkv8iv7xjy8kcejl9yelkcg');
INSERT INTO `erp_goods_spec_attr` VALUES (8, 7, 'color', '颜色', 1, 0, '浅蓝色', 'http://img.huayikeji.com/ahc832bn59qoxq7vlrnvue9lrsiqxsbd');
INSERT INTO `erp_goods_spec_attr` VALUES (9, 7, 'color', '颜色', 1, 0, '欧美白', 'http://img.huayikeji.com/df8eqd6e9t46vfjx3j7tk84z72yhc3uy');
INSERT INTO `erp_goods_spec_attr` VALUES (10, 7, 'size', '尺码', 2, 0, '5寸', '');
INSERT INTO `erp_goods_spec_attr` VALUES (11, 7, 'size', '尺码', 2, 0, '6寸', '');
INSERT INTO `erp_goods_spec_attr` VALUES (12, 7, 'size', '尺码', 2, 0, '8寸', '');
INSERT INTO `erp_goods_spec_attr` VALUES (13, 8, 'color', '颜色', 1, 0, '30g * 5包', 'http://img.huayikeji.com/0n40n4ctz61o2rtdlt9wldmxucsio789');
INSERT INTO `erp_goods_spec_attr` VALUES (14, 9, 'color', '颜色', 1, 322, '白色', 'https://cbu01.alicdn.com/img/ibank/O1CN01eJxjQM2FOyB3IsiuU_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (15, 9, 'color', '颜色', 1, 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01AfNgvA2FOyAvwXZxv_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (16, 9, 'color', '颜色', 1, 319, '深蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01F1W2O12FOyB2UfQnX_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (17, 9, 'color', '颜色', 1, 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01PHFmsX2FOyB14fPie_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (18, 9, 'size', '尺码', 2, 341, 'S', '');
INSERT INTO `erp_goods_spec_attr` VALUES (19, 9, 'size', '尺码', 2, 342, 'M', '');
INSERT INTO `erp_goods_spec_attr` VALUES (20, 9, 'size', '尺码', 2, 343, 'L', '');
INSERT INTO `erp_goods_spec_attr` VALUES (21, 9, 'size', '尺码', 2, 344, 'XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (22, 9, 'size', '尺码', 2, 345, '2XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (23, 10, 'color', '颜色', 1, 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01SJelLi2FOyFPEQgvg_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (24, 10, 'color', '颜色', 1, 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01AWoRY32FOyFNn0erQ_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (25, 10, 'color', '颜色', 1, 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01jpsOio2FOyFVLvlmx_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (26, 10, 'size', '尺码', 2, 341, 'S', '');
INSERT INTO `erp_goods_spec_attr` VALUES (27, 10, 'size', '尺码', 2, 342, 'M', '');
INSERT INTO `erp_goods_spec_attr` VALUES (28, 10, 'size', '尺码', 2, 343, 'L', '');
INSERT INTO `erp_goods_spec_attr` VALUES (29, 10, 'size', '尺码', 2, 344, 'XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (30, 10, 'size', '尺码', 2, 345, '2XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (31, 11, 'color', '颜色', 1, 322, '白色', 'https://cbu01.alicdn.com/img/ibank/O1CN013LdA8s2FOyBfwOjXh_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (32, 11, 'color', '颜色', 1, 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01giGdo92FOyBjYLUBx_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (33, 11, 'color', '颜色', 1, 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN017OhDC42FOyBpOE5Xh_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (34, 11, 'color', '颜色', 1, 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN018SPmsV1Bs2ghEUUei_!!0-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (35, 11, 'color', '颜色', 1, 319, '深蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01BMEINy2FOyBhvpaPZ_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (36, 11, 'size', '尺码', 2, 341, 'S', '');
INSERT INTO `erp_goods_spec_attr` VALUES (37, 11, 'size', '尺码', 2, 342, 'M', '');
INSERT INTO `erp_goods_spec_attr` VALUES (38, 11, 'size', '尺码', 2, 343, 'L', '');
INSERT INTO `erp_goods_spec_attr` VALUES (39, 11, 'size', '尺码', 2, 344, 'XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (40, 11, 'size', '尺码', 2, 345, '2XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (41, 12, 'color', '颜色', 1, 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01UR16Tw2FOyJNPJHCZ_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (42, 12, 'size', '尺码', 2, 341, 'S', '');
INSERT INTO `erp_goods_spec_attr` VALUES (43, 12, 'size', '尺码', 2, 342, 'M', '');
INSERT INTO `erp_goods_spec_attr` VALUES (44, 12, 'size', '尺码', 2, 343, 'L', '');
INSERT INTO `erp_goods_spec_attr` VALUES (45, 12, 'size', '尺码', 2, 344, 'XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (46, 12, 'size', '尺码', 2, 345, '2XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (47, 13, 'color', '颜色', 1, 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01gJpwlK2FOyGoJJ3sH_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (48, 13, 'color', '颜色', 1, 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01wZ3ye12FOyGhhUDOe_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (49, 13, 'color', '颜色', 1, 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01453F082FOyGp5H3Gv_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (50, 13, 'size', '尺码', 2, 341, 'S', '');
INSERT INTO `erp_goods_spec_attr` VALUES (51, 13, 'size', '尺码', 2, 342, 'M', '');
INSERT INTO `erp_goods_spec_attr` VALUES (52, 13, 'size', '尺码', 2, 343, 'L', '');
INSERT INTO `erp_goods_spec_attr` VALUES (53, 13, 'size', '尺码', 2, 344, 'XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (54, 13, 'size', '尺码', 2, 345, '2XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (55, 14, 'color', '颜色', 1, 331, '灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01J0a5Ij2FOyGVsqune_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (56, 14, 'color', '颜色', 1, 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01i45X3r2FOyGVsraSQ_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (57, 14, 'color', '颜色', 1, 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01yx4kr52FOyGOtErWx_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (58, 14, 'size', '尺码', 2, 341, 'S', '');
INSERT INTO `erp_goods_spec_attr` VALUES (59, 14, 'size', '尺码', 2, 342, 'M', '');
INSERT INTO `erp_goods_spec_attr` VALUES (60, 14, 'size', '尺码', 2, 343, 'L', '');
INSERT INTO `erp_goods_spec_attr` VALUES (61, 14, 'size', '尺码', 2, 344, 'XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (62, 14, 'size', '尺码', 2, 345, '2XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (63, 15, 'color', '颜色', 1, 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01rXl5A92FOyBlp8KB2_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (64, 15, 'color', '颜色', 1, 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01lW8xsq2FOyBboDwmS_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (65, 15, 'color', '颜色', 1, 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01eRnnro2FOyBl7HmaB_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (66, 15, 'color', '颜色', 1, 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN010pmtuT2FOyGqBp6dx_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (67, 15, 'color', '颜色', 1, 324, '粉色', 'https://cbu01.alicdn.com/img/ibank/O1CN01jE2Cq12FOyGlWgGFO_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (68, 15, 'color', '颜色', 1, 359, '黄色', 'https://cbu01.alicdn.com/img/ibank/O1CN01Fc0SiP2FOyGwQA0CS_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (69, 15, 'color', '颜色', 1, 0, '薄荷绿', 'https://cbu01.alicdn.com/img/ibank/O1CN010KmHBz2FOyGrTpnqo_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (70, 15, 'color', '颜色', 1, 335, '卡其色', 'https://cbu01.alicdn.com/img/ibank/O1CN01VRmnz72FOyGuOVemn_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (71, 15, 'size', '尺码', 2, 341, 'S', '');
INSERT INTO `erp_goods_spec_attr` VALUES (72, 15, 'size', '尺码', 2, 342, 'M', '');
INSERT INTO `erp_goods_spec_attr` VALUES (73, 15, 'size', '尺码', 2, 343, 'L', '');
INSERT INTO `erp_goods_spec_attr` VALUES (74, 15, 'size', '尺码', 2, 344, 'XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (75, 15, 'size', '尺码', 2, 345, '2XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (76, 16, 'color', '颜色', 1, 0, '浅蓝色', 'http://img.huayikeji.com/ux09zfd120aalurr55707gndmhn1rf21');
INSERT INTO `erp_goods_spec_attr` VALUES (77, 16, 'size', '尺码', 2, 341, 'S', '');
INSERT INTO `erp_goods_spec_attr` VALUES (78, 16, 'size', '尺码', 2, 342, 'M', '');
INSERT INTO `erp_goods_spec_attr` VALUES (79, 16, 'size', '尺码', 2, 343, 'L', '');
INSERT INTO `erp_goods_spec_attr` VALUES (80, 16, 'size', '尺码', 2, 344, 'XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (81, 16, 'size', '尺码', 2, 345, '2XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (82, 17, 'color', '颜色', 1, 308, '黑色', 'http://img.huayikeji.com/gm40mpqfc53scyxjou2epwqhjqbqp8cv');
INSERT INTO `erp_goods_spec_attr` VALUES (83, 17, 'color', '颜色', 1, 322, '白色', 'http://img.huayikeji.com/k1bcjvacakh7t65tt541z636hrbv086m');
INSERT INTO `erp_goods_spec_attr` VALUES (84, 17, 'color', '颜色', 1, 0, '粉色', 'http://img.huayikeji.com/wsqqp8sdqc5e8x9noarg9fswdo17wtu4');
INSERT INTO `erp_goods_spec_attr` VALUES (85, 17, 'color', '颜色', 1, 0, '深灰色', 'http://img.huayikeji.com/68dgqc2s773upieznl528i0sqs8ib484');
INSERT INTO `erp_goods_spec_attr` VALUES (86, 17, 'size', '尺码', 2, 342, 'M', '');
INSERT INTO `erp_goods_spec_attr` VALUES (87, 17, 'size', '尺码', 2, 343, 'L', '');
INSERT INTO `erp_goods_spec_attr` VALUES (88, 17, 'size', '尺码', 2, 344, 'XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (89, 17, 'size', '尺码', 2, 345, '2XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (90, 18, 'color', '颜色', 1, 308, '黑色', 'http://img.huayikeji.com/pofzt3pqrtravmzd1jrnd605xqu0usic');
INSERT INTO `erp_goods_spec_attr` VALUES (91, 18, 'color', '颜色', 1, 0, '复古蓝', 'http://img.huayikeji.com/tc51gyersphju6cgsns937bc3x7m2ph5');
INSERT INTO `erp_goods_spec_attr` VALUES (92, 18, 'color', '颜色', 1, 0, '浅蓝色', 'http://img.huayikeji.com/l1dj9ovhl9xkcln5lrv09txbvbd4i4ug');
INSERT INTO `erp_goods_spec_attr` VALUES (93, 18, 'size', '尺码', 2, 341, 'S', '');
INSERT INTO `erp_goods_spec_attr` VALUES (94, 18, 'size', '尺码', 2, 342, 'M', '');
INSERT INTO `erp_goods_spec_attr` VALUES (95, 18, 'size', '尺码', 2, 343, 'L', '');
INSERT INTO `erp_goods_spec_attr` VALUES (96, 18, 'size', '尺码', 2, 344, 'XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (97, 18, 'size', '尺码', 2, 345, '2XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (98, 19, 'color', '颜色', 1, 308, '黑色', 'http://img.huayikeji.com/eih7qcgodthjs3v6oiwl49s0ngs6opjs');
INSERT INTO `erp_goods_spec_attr` VALUES (99, 19, 'color', '颜色', 1, 0, '黑灰色', 'http://img.huayikeji.com/x29km17ivbfkzzcuqvjrxwpzo52l9jzf');
INSERT INTO `erp_goods_spec_attr` VALUES (100, 19, 'color', '颜色', 1, 0, '浅蓝色', 'http://img.huayikeji.com/kh86knehjulsigqzexr4jgknbkrwcarr');
INSERT INTO `erp_goods_spec_attr` VALUES (101, 19, 'color', '颜色', 1, 0, '蓝灰色', 'http://img.huayikeji.com/wgn8xbsgs3mac0j8uqc7xcebeziu3lc2');
INSERT INTO `erp_goods_spec_attr` VALUES (102, 19, 'size', '尺码', 2, 0, '25', '');
INSERT INTO `erp_goods_spec_attr` VALUES (103, 19, 'size', '尺码', 2, 0, '26', '');
INSERT INTO `erp_goods_spec_attr` VALUES (104, 19, 'size', '尺码', 2, 0, '27', '');
INSERT INTO `erp_goods_spec_attr` VALUES (105, 19, 'size', '尺码', 2, 0, '28', '');
INSERT INTO `erp_goods_spec_attr` VALUES (106, 19, 'size', '尺码', 2, 0, '29', '');
INSERT INTO `erp_goods_spec_attr` VALUES (107, 19, 'size', '尺码', 2, 0, '30', '');
INSERT INTO `erp_goods_spec_attr` VALUES (108, 19, 'size', '尺码', 2, 0, '31', '');
INSERT INTO `erp_goods_spec_attr` VALUES (109, 19, 'size', '尺码', 2, 0, '32', '');
INSERT INTO `erp_goods_spec_attr` VALUES (110, 20, 'color', '颜色', 1, 308, '黑色', 'http://img.huayikeji.com/rbmhovahs9a3hqvq28z2d00h3qt6ko38');
INSERT INTO `erp_goods_spec_attr` VALUES (111, 20, 'color', '颜色', 1, 0, '黑灰色', 'http://img.huayikeji.com/k0vt2gtit508e8yt36o04jdijk1ukgr4');
INSERT INTO `erp_goods_spec_attr` VALUES (112, 20, 'color', '颜色', 1, 0, '复古蓝', 'http://img.huayikeji.com/crqikzuy0nm2e4yem856va2xk48i7cf4');
INSERT INTO `erp_goods_spec_attr` VALUES (113, 20, 'size', '尺码', 2, 0, '25', '');
INSERT INTO `erp_goods_spec_attr` VALUES (114, 20, 'size', '尺码', 2, 0, '26', '');
INSERT INTO `erp_goods_spec_attr` VALUES (115, 20, 'size', '尺码', 2, 0, '27', '');
INSERT INTO `erp_goods_spec_attr` VALUES (116, 20, 'size', '尺码', 2, 0, '28', '');
INSERT INTO `erp_goods_spec_attr` VALUES (117, 20, 'size', '尺码', 2, 0, '29', '');
INSERT INTO `erp_goods_spec_attr` VALUES (118, 20, 'size', '尺码', 2, 0, '30', '');
INSERT INTO `erp_goods_spec_attr` VALUES (119, 20, 'size', '尺码', 2, 0, '31', '');
INSERT INTO `erp_goods_spec_attr` VALUES (120, 20, 'size', '尺码', 2, 0, '32', '');
INSERT INTO `erp_goods_spec_attr` VALUES (121, 21, 'color', '颜色', 1, 0, '浅蓝色', 'http://img.huayikeji.com/jw7wxsu4uwiv7khvaocru7t9yhhdodol');
INSERT INTO `erp_goods_spec_attr` VALUES (122, 21, 'color', '颜色', 1, 0, '复古蓝', 'http://img.huayikeji.com/o1pijvy2umsa8mlgfkyjbgs3vwmotkdh');
INSERT INTO `erp_goods_spec_attr` VALUES (123, 21, 'color', '颜色', 1, 308, '黑色', 'http://img.huayikeji.com/1mcrsm44mbg8ekvlayfjwulvdzzhl9ym');
INSERT INTO `erp_goods_spec_attr` VALUES (124, 21, 'size', '尺码', 2, 394, 'XS', '');
INSERT INTO `erp_goods_spec_attr` VALUES (125, 21, 'size', '尺码', 2, 341, 'S', '');
INSERT INTO `erp_goods_spec_attr` VALUES (126, 21, 'size', '尺码', 2, 342, 'M', '');
INSERT INTO `erp_goods_spec_attr` VALUES (127, 21, 'size', '尺码', 2, 343, 'L', '');
INSERT INTO `erp_goods_spec_attr` VALUES (128, 21, 'size', '尺码', 2, 344, 'XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (129, 21, 'size', '尺码', 2, 345, '2XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (130, 22, 'color', '颜色', 1, 308, '黑色', 'http://img.huayikeji.com/b2z1rl4pv3rzhotpxeoru2k8okkscy0f');
INSERT INTO `erp_goods_spec_attr` VALUES (131, 22, 'color', '颜色', 1, 0, '黑灰色', 'http://img.huayikeji.com/1xye55g2xefzzxm883tvxq5v1z75r82z');
INSERT INTO `erp_goods_spec_attr` VALUES (132, 22, 'color', '颜色', 1, 0, '浅蓝色', 'http://img.huayikeji.com/ms87oxxsvn3fi422bsil1rgnqbko3wf8');
INSERT INTO `erp_goods_spec_attr` VALUES (133, 22, 'color', '颜色', 1, 0, '蓝灰色', 'http://img.huayikeji.com/32e4srov0ypum7hy03oxtwc8p6jejy4g');
INSERT INTO `erp_goods_spec_attr` VALUES (134, 22, 'size', '尺码', 2, 0, '25', '');
INSERT INTO `erp_goods_spec_attr` VALUES (135, 22, 'size', '尺码', 2, 0, '26', '');
INSERT INTO `erp_goods_spec_attr` VALUES (136, 22, 'size', '尺码', 2, 0, '27', '');
INSERT INTO `erp_goods_spec_attr` VALUES (137, 22, 'size', '尺码', 2, 0, '28', '');
INSERT INTO `erp_goods_spec_attr` VALUES (138, 22, 'size', '尺码', 2, 0, '29', '');
INSERT INTO `erp_goods_spec_attr` VALUES (139, 22, 'size', '尺码', 2, 0, '30', '');
INSERT INTO `erp_goods_spec_attr` VALUES (140, 22, 'size', '尺码', 2, 0, '31', '');
INSERT INTO `erp_goods_spec_attr` VALUES (141, 22, 'size', '尺码', 2, 0, '32', '');
INSERT INTO `erp_goods_spec_attr` VALUES (142, 23, 'color', '颜色', 1, 308, '黑色', 'http://img.huayikeji.com/po0fayle1t2gsas9jh0rhkgytkyze9ig');
INSERT INTO `erp_goods_spec_attr` VALUES (143, 23, 'color', '颜色', 1, 389, '黑灰色', 'http://img.huayikeji.com/k2klo0djjmqvrg72zqkwpz303zyxbpik');
INSERT INTO `erp_goods_spec_attr` VALUES (144, 23, 'color', '颜色', 1, 361, '浅蓝色', 'http://img.huayikeji.com/jobye46pas210pj9ltbh81kagpn87uuj');
INSERT INTO `erp_goods_spec_attr` VALUES (145, 23, 'color', '颜色', 1, 336, '蓝灰色', 'http://img.huayikeji.com/66vexicx9dqs2terim416pbyw6cimwzr');
INSERT INTO `erp_goods_spec_attr` VALUES (146, 23, 'size', '尺码', 2, 0, '25', '');
INSERT INTO `erp_goods_spec_attr` VALUES (147, 23, 'size', '尺码', 2, 0, '26', '');
INSERT INTO `erp_goods_spec_attr` VALUES (148, 23, 'size', '尺码', 2, 0, '27', '');
INSERT INTO `erp_goods_spec_attr` VALUES (149, 23, 'size', '尺码', 2, 0, '28', '');
INSERT INTO `erp_goods_spec_attr` VALUES (150, 23, 'size', '尺码', 2, 0, '29', '');
INSERT INTO `erp_goods_spec_attr` VALUES (151, 23, 'size', '尺码', 2, 0, '30', '');
INSERT INTO `erp_goods_spec_attr` VALUES (152, 23, 'size', '尺码', 2, 0, '31', '');
INSERT INTO `erp_goods_spec_attr` VALUES (153, 23, 'size', '尺码', 2, 0, '32', '');
INSERT INTO `erp_goods_spec_attr` VALUES (154, 24, 'color', '颜色', 1, 319, '深蓝色', 'http://img.huayikeji.com/tglr5vq19k3f9kpt25bn3hxvwue8s8o9');
INSERT INTO `erp_goods_spec_attr` VALUES (155, 24, 'size', '尺码', 2, 341, 'S', '');
INSERT INTO `erp_goods_spec_attr` VALUES (156, 24, 'size', '尺码', 2, 342, 'M', '');
INSERT INTO `erp_goods_spec_attr` VALUES (157, 24, 'size', '尺码', 2, 343, 'L', '');
INSERT INTO `erp_goods_spec_attr` VALUES (158, 24, 'size', '尺码', 2, 344, 'XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (159, 24, 'size', '尺码', 2, 345, '2XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (160, 25, 'color', '颜色', 1, 361, '浅蓝色', 'http://img.huayikeji.com/76yre98jhd5mgvkhgvqcdlktdthof0z0');
INSERT INTO `erp_goods_spec_attr` VALUES (161, 25, 'color', '颜色', 1, 319, '深蓝色', 'http://img.huayikeji.com/tmx42ow0jykbhjrid8d41cr1lsvaidql');
INSERT INTO `erp_goods_spec_attr` VALUES (162, 25, 'size', '尺码', 2, 0, '25', '');
INSERT INTO `erp_goods_spec_attr` VALUES (163, 25, 'size', '尺码', 2, 0, '26', '');
INSERT INTO `erp_goods_spec_attr` VALUES (164, 25, 'size', '尺码', 2, 0, '27', '');
INSERT INTO `erp_goods_spec_attr` VALUES (165, 25, 'size', '尺码', 2, 0, '28', '');
INSERT INTO `erp_goods_spec_attr` VALUES (166, 25, 'size', '尺码', 2, 0, '29', '');
INSERT INTO `erp_goods_spec_attr` VALUES (167, 25, 'size', '尺码', 2, 0, '30', '');
INSERT INTO `erp_goods_spec_attr` VALUES (168, 25, 'size', '尺码', 2, 0, '31', '');
INSERT INTO `erp_goods_spec_attr` VALUES (169, 25, 'size', '尺码', 2, 0, '32', '');
INSERT INTO `erp_goods_spec_attr` VALUES (170, 26, 'color', '颜色', 1, 389, '黑灰色', 'http://img.huayikeji.com/kcjtgriwhgpz0njn420akyrcfflk6yrd');
INSERT INTO `erp_goods_spec_attr` VALUES (171, 26, 'color', '颜色', 1, 361, '浅蓝色', 'http://img.huayikeji.com/86rh8lzpijus7pc7zcx4ld052uyzew7p');
INSERT INTO `erp_goods_spec_attr` VALUES (172, 26, 'color', '颜色', 1, 319, '深蓝色', 'http://img.huayikeji.com/6193racfe6v2gls3c5582rxs6h6xpvqo');
INSERT INTO `erp_goods_spec_attr` VALUES (173, 26, 'size', '尺码', 2, 341, 'S', '');
INSERT INTO `erp_goods_spec_attr` VALUES (174, 26, 'size', '尺码', 2, 342, 'M', '');
INSERT INTO `erp_goods_spec_attr` VALUES (175, 26, 'size', '尺码', 2, 343, 'L', '');
INSERT INTO `erp_goods_spec_attr` VALUES (176, 26, 'size', '尺码', 2, 344, 'XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (177, 26, 'size', '尺码', 2, 345, '2XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (178, 27, 'color', '颜色', 1, 356, '复古蓝', 'http://img.huayikeji.com/g0gsgjfmuvl7jkl22sdbfpbcvb2ozki1');
INSERT INTO `erp_goods_spec_attr` VALUES (179, 27, 'color', '颜色', 1, 389, '黑灰色', 'http://img.huayikeji.com/zydifc6i4epw9fnf192l6la94vu18pyw');
INSERT INTO `erp_goods_spec_attr` VALUES (180, 27, 'color', '颜色', 1, 336, '蓝灰色', 'http://img.huayikeji.com/6mux70whkwvf28pb6k9avl8ql7m9hnyo');
INSERT INTO `erp_goods_spec_attr` VALUES (181, 27, 'color', '颜色', 1, 308, '黑色', 'http://img.huayikeji.com/8p4iw27ejggt0fr66jpbbwxrif65aey7');
INSERT INTO `erp_goods_spec_attr` VALUES (182, 27, 'size', '尺码', 2, 401, '25', '');
INSERT INTO `erp_goods_spec_attr` VALUES (183, 27, 'size', '尺码', 2, 402, '26', '');
INSERT INTO `erp_goods_spec_attr` VALUES (184, 27, 'size', '尺码', 2, 403, '27', '');
INSERT INTO `erp_goods_spec_attr` VALUES (185, 27, 'size', '尺码', 2, 404, '28', '');
INSERT INTO `erp_goods_spec_attr` VALUES (186, 27, 'size', '尺码', 2, 405, '29', '');
INSERT INTO `erp_goods_spec_attr` VALUES (187, 27, 'size', '尺码', 2, 406, '30', '');
INSERT INTO `erp_goods_spec_attr` VALUES (188, 27, 'size', '尺码', 2, 407, '31', '');
INSERT INTO `erp_goods_spec_attr` VALUES (189, 27, 'size', '尺码', 2, 408, '32', '');
INSERT INTO `erp_goods_spec_attr` VALUES (190, 9, 'color', '颜色', 1, 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01gpoCDV2FOyAxsRAur_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (191, 9, 'color', '颜色', 1, 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01AfNgvA2FOyAvwXZxv_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (197, 28, 'color', '颜色', 1, 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/2020/033/066/21020660330_900849200.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (198, 28, 'color', '颜色', 1, 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/2020/657/708/20862807756_900849200.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (199, 28, 'color', '颜色', 1, 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/2020/080/060/20938060080_900849200.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (200, 28, 'size', '尺码', 2, 341, 'S', '');
INSERT INTO `erp_goods_spec_attr` VALUES (201, 28, 'size', '尺码', 2, 342, 'M', '');
INSERT INTO `erp_goods_spec_attr` VALUES (202, 28, 'size', '尺码', 2, 343, 'L', '');
INSERT INTO `erp_goods_spec_attr` VALUES (203, 28, 'size', '尺码', 2, 344, 'XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (204, 28, 'size', '尺码', 2, 345, '2XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (205, 29, 'color', '颜色', 1, 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01O6JSPt2FOyGJVlNSt_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (206, 29, 'color', '颜色', 1, 322, '白色', 'https://cbu01.alicdn.com/img/ibank/O1CN01nMB3GV2FOyGSIAxrm_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (207, 29, 'color', '颜色', 1, 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01yp4pfJ2FOyGRQhOVF_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (208, 29, 'size', '尺码', 2, 341, 'S', '');
INSERT INTO `erp_goods_spec_attr` VALUES (209, 29, 'size', '尺码', 2, 342, 'M', '');
INSERT INTO `erp_goods_spec_attr` VALUES (210, 29, 'size', '尺码', 2, 343, 'L', '');
INSERT INTO `erp_goods_spec_attr` VALUES (211, 29, 'size', '尺码', 2, 344, 'XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (212, 29, 'size', '尺码', 2, 345, '2XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (213, 30, 'color', '颜色', 1, 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01O9k7a72FOyF40eXdL_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (214, 30, 'size', '尺码', 2, 341, 'S', '');
INSERT INTO `erp_goods_spec_attr` VALUES (215, 30, 'size', '尺码', 2, 342, 'M', '');
INSERT INTO `erp_goods_spec_attr` VALUES (216, 30, 'size', '尺码', 2, 343, 'L', '');
INSERT INTO `erp_goods_spec_attr` VALUES (217, 30, 'size', '尺码', 2, 344, 'XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (218, 30, 'size', '尺码', 2, 345, '2XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (219, 31, 'color', '颜色', 1, 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/2020/995/164/22330461599_900849200.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (220, 31, 'color', '颜色', 1, 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/2020/343/344/22330443343_900849200.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (221, 31, 'color', '颜色', 1, 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/2020/195/327/22411723591_900849200.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (222, 31, 'color', '颜色', 1, 336, '蓝灰色', 'https://cbu01.alicdn.com/img/ibank/2020/281/876/22411678182_900849200.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (223, 31, 'color', '颜色', 1, 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/2020/024/282/22502282420_900849200.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (224, 31, 'color', '颜色', 1, 317, '杏色', 'https://cbu01.alicdn.com/img/ibank/2020/685/864/22502468586_900849200.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (225, 31, 'size', '尺码', 2, 341, 'S', '');
INSERT INTO `erp_goods_spec_attr` VALUES (226, 31, 'size', '尺码', 2, 342, 'M', '');
INSERT INTO `erp_goods_spec_attr` VALUES (227, 31, 'size', '尺码', 2, 343, 'L', '');
INSERT INTO `erp_goods_spec_attr` VALUES (228, 31, 'size', '尺码', 2, 344, 'XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (229, 31, 'size', '尺码', 2, 345, '2XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (230, 32, 'color', '颜色', 1, 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN011EipyD2FOyGlVSb58_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (231, 32, 'color', '颜色', 1, 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01zhhpHl2FOyGk0i8Nf_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (232, 32, 'color', '颜色', 1, 317, '杏色', 'https://cbu01.alicdn.com/img/ibank/O1CN01u87ebo2FOyGsDbhyd_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (233, 32, 'size', '尺码', 2, 341, 'S', '');
INSERT INTO `erp_goods_spec_attr` VALUES (234, 32, 'size', '尺码', 2, 342, 'M', '');
INSERT INTO `erp_goods_spec_attr` VALUES (235, 32, 'size', '尺码', 2, 343, 'L', '');
INSERT INTO `erp_goods_spec_attr` VALUES (236, 32, 'size', '尺码', 2, 344, 'XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (237, 32, 'size', '尺码', 2, 345, '2XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (238, 33, 'color', '颜色', 1, 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01veMucP2FOyCvGWh20_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (239, 33, 'color', '颜色', 1, 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01T4m3Jm2FOyCuMBQ9v_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (240, 33, 'color', '颜色', 1, 336, '蓝灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01eWGzKH2FOyCrd3HjP_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (241, 33, 'color', '颜色', 1, 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01zJ8R7I2FOyCr3v2cC_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (242, 33, 'size', '尺码', 2, 341, 'S', '');
INSERT INTO `erp_goods_spec_attr` VALUES (243, 33, 'size', '尺码', 2, 342, 'M', '');
INSERT INTO `erp_goods_spec_attr` VALUES (244, 33, 'size', '尺码', 2, 343, 'L', '');
INSERT INTO `erp_goods_spec_attr` VALUES (245, 33, 'size', '尺码', 2, 344, 'XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (246, 33, 'size', '尺码', 2, 345, '2XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (247, 34, 'color', '颜色', 1, 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01DMb5Yv2FOyEph4yYB_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (248, 34, 'color', '颜色', 1, 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01HLBVQl2FOyEn4nMnB_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (249, 34, 'color', '颜色', 1, 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01YPm5Yc2FOyEkRHf9E_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (250, 34, 'color', '颜色', 1, 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01TLlyFy2FOyEkRLLyI_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (251, 34, 'size', '尺码', 2, 341, 'S', '');
INSERT INTO `erp_goods_spec_attr` VALUES (252, 34, 'size', '尺码', 2, 342, 'M', '');
INSERT INTO `erp_goods_spec_attr` VALUES (253, 34, 'size', '尺码', 2, 343, 'L', '');
INSERT INTO `erp_goods_spec_attr` VALUES (254, 34, 'size', '尺码', 2, 344, 'XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (255, 34, 'size', '尺码', 2, 345, '2XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (256, 35, 'color', '颜色', 1, 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/2020/732/346/22406643237_900849200.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (257, 35, 'size', '尺码', 2, 341, 'S', '');
INSERT INTO `erp_goods_spec_attr` VALUES (258, 35, 'size', '尺码', 2, 342, 'M', '');
INSERT INTO `erp_goods_spec_attr` VALUES (259, 35, 'size', '尺码', 2, 343, 'L', '');
INSERT INTO `erp_goods_spec_attr` VALUES (260, 35, 'size', '尺码', 2, 344, 'XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (261, 35, 'size', '尺码', 2, 345, '2XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (262, 36, 'color', '颜色', 1, 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01FDRxMp2FOyDOB1iTE_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (263, 36, 'color', '颜色', 1, 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01Kn6Ove2FOyDUNlzou_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (264, 36, 'size', '尺码', 2, 341, 'S', '');
INSERT INTO `erp_goods_spec_attr` VALUES (265, 36, 'size', '尺码', 2, 342, 'M', '');
INSERT INTO `erp_goods_spec_attr` VALUES (266, 36, 'size', '尺码', 2, 343, 'L', '');
INSERT INTO `erp_goods_spec_attr` VALUES (267, 36, 'size', '尺码', 2, 344, 'XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (268, 36, 'size', '尺码', 2, 345, '2XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (269, 37, 'color', '颜色', 1, 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01xwzF522FOyCIOnqKM_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (270, 37, 'color', '颜色', 1, 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01C6Sn4s2FOyCMDu0n5_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (271, 37, 'color', '颜色', 1, 336, '蓝灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN013vTM8R2FOyCEFuCQk_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (272, 37, 'size', '尺码', 2, 341, 'S', '');
INSERT INTO `erp_goods_spec_attr` VALUES (273, 37, 'size', '尺码', 2, 342, 'M', '');
INSERT INTO `erp_goods_spec_attr` VALUES (274, 37, 'size', '尺码', 2, 343, 'L', '');
INSERT INTO `erp_goods_spec_attr` VALUES (275, 37, 'size', '尺码', 2, 344, 'XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (276, 37, 'size', '尺码', 2, 345, '2XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (277, 38, 'color', '颜色', 1, 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01ARPAL32FOyAcs8t96_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (278, 38, 'color', '颜色', 1, 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01y01tnq2FOyAbctZxT_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (279, 38, 'size', '尺码', 2, 341, 'S', '');
INSERT INTO `erp_goods_spec_attr` VALUES (280, 38, 'size', '尺码', 2, 342, 'M', '');
INSERT INTO `erp_goods_spec_attr` VALUES (281, 38, 'size', '尺码', 2, 343, 'L', '');
INSERT INTO `erp_goods_spec_attr` VALUES (282, 38, 'size', '尺码', 2, 344, 'XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (283, 38, 'size', '尺码', 2, 345, '2XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (284, 39, 'color', '颜色', 1, 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN018JTrMY2FOyA4kgljs_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (285, 39, 'color', '颜色', 1, 336, '蓝灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN012TyoAb2FOyA5iihhy_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (286, 39, 'size', '尺码', 2, 402, '26', '');
INSERT INTO `erp_goods_spec_attr` VALUES (287, 39, 'size', '尺码', 2, 403, '27', '');
INSERT INTO `erp_goods_spec_attr` VALUES (288, 39, 'size', '尺码', 2, 404, '28', '');
INSERT INTO `erp_goods_spec_attr` VALUES (289, 39, 'size', '尺码', 2, 405, '29', '');
INSERT INTO `erp_goods_spec_attr` VALUES (290, 39, 'size', '尺码', 2, 406, '30', '');
INSERT INTO `erp_goods_spec_attr` VALUES (291, 39, 'size', '尺码', 2, 407, '31', '');
INSERT INTO `erp_goods_spec_attr` VALUES (292, 39, 'size', '尺码', 2, 408, '32', '');
INSERT INTO `erp_goods_spec_attr` VALUES (293, 40, 'color', '颜色', 1, 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01lUqTwm2FOy9rP6Jod_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (294, 40, 'color', '颜色', 1, 319, '深蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01D3ndSV2FOy9hbKsqA_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (295, 40, 'color', '颜色', 1, 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01YsByd92FOy9lGqpvL_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (296, 40, 'size', '尺码', 2, 341, 'S', '');
INSERT INTO `erp_goods_spec_attr` VALUES (297, 40, 'size', '尺码', 2, 342, 'M', '');
INSERT INTO `erp_goods_spec_attr` VALUES (298, 40, 'size', '尺码', 2, 343, 'L', '');
INSERT INTO `erp_goods_spec_attr` VALUES (299, 40, 'size', '尺码', 2, 344, 'XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (300, 40, 'size', '尺码', 2, 345, '2XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (301, 41, 'color', '颜色', 1, 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01J3Quqe2FOyH5tjtiy_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (302, 41, 'color', '颜色', 1, 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01a2j3nN2FOyHBXnetl_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (303, 41, 'size', '尺码', 2, 341, 'S', '');
INSERT INTO `erp_goods_spec_attr` VALUES (304, 41, 'size', '尺码', 2, 342, 'M', '');
INSERT INTO `erp_goods_spec_attr` VALUES (305, 41, 'size', '尺码', 2, 343, 'L', '');
INSERT INTO `erp_goods_spec_attr` VALUES (306, 41, 'size', '尺码', 2, 344, 'XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (307, 41, 'size', '尺码', 2, 345, '2XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (308, 42, 'color', '颜色', 1, 319, '深蓝色', 'https://cbu01.alicdn.com/img/ibank/2020/176/214/19868412671_900849200.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (309, 42, 'color', '颜色', 1, 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/2020/537/457/19941754735_900849200.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (310, 42, 'size', '尺码', 2, 402, '26', '');
INSERT INTO `erp_goods_spec_attr` VALUES (311, 42, 'size', '尺码', 2, 403, '27', '');
INSERT INTO `erp_goods_spec_attr` VALUES (312, 42, 'size', '尺码', 2, 404, '28', '');
INSERT INTO `erp_goods_spec_attr` VALUES (313, 42, 'size', '尺码', 2, 405, '29', '');
INSERT INTO `erp_goods_spec_attr` VALUES (314, 42, 'size', '尺码', 2, 406, '30', '');
INSERT INTO `erp_goods_spec_attr` VALUES (315, 42, 'size', '尺码', 2, 407, '31', '');
INSERT INTO `erp_goods_spec_attr` VALUES (316, 42, 'size', '尺码', 2, 408, '32', '');
INSERT INTO `erp_goods_spec_attr` VALUES (317, 43, 'color', '颜色', 1, 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/2020/842/093/21808390248_900849200.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (318, 43, 'color', '颜色', 1, 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/2020/705/941/21730149507_900849200.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (319, 43, 'size', '尺码', 2, 341, 'S', '');
INSERT INTO `erp_goods_spec_attr` VALUES (320, 43, 'size', '尺码', 2, 342, 'M', '');
INSERT INTO `erp_goods_spec_attr` VALUES (321, 43, 'size', '尺码', 2, 343, 'L', '');
INSERT INTO `erp_goods_spec_attr` VALUES (322, 43, 'size', '尺码', 2, 344, 'XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (323, 43, 'size', '尺码', 2, 345, '2XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (324, 44, 'color', '颜色', 1, 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01DIe7Es2FOyCYIZFWt_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (325, 44, 'color', '颜色', 1, 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN016QWq2N2FOyCSH3gt9_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (326, 44, 'color', '颜色', 1, 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01evRAWu2FOyCUPwcyo_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (327, 44, 'color', '颜色', 1, 356, '复古蓝', 'https://cbu01.alicdn.com/img/ibank/O1CN01ZxdpVe2FOyCUVHjc2_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (328, 44, 'size', '尺码', 2, 341, 'S', '');
INSERT INTO `erp_goods_spec_attr` VALUES (329, 44, 'size', '尺码', 2, 342, 'M', '');
INSERT INTO `erp_goods_spec_attr` VALUES (330, 44, 'size', '尺码', 2, 343, 'L', '');
INSERT INTO `erp_goods_spec_attr` VALUES (331, 44, 'size', '尺码', 2, 344, 'XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (332, 44, 'size', '尺码', 2, 345, '2XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (333, 45, 'color', '颜色', 1, 322, '白色', 'https://cbu01.alicdn.com/img/ibank/O1CN01E4FgMe2FOyCf3EUih_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (334, 45, 'color', '颜色', 1, 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01WpxUo32FOyCb3IFRu_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (335, 45, 'color', '颜色', 1, 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01LNgHTm2FOyCf3KXQX_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (336, 45, 'color', '颜色', 1, 389, '黑灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01A6gZ4a2FOyChQ6oRF_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (337, 45, 'size', '尺码', 2, 341, 'S', '');
INSERT INTO `erp_goods_spec_attr` VALUES (338, 45, 'size', '尺码', 2, 342, 'M', '');
INSERT INTO `erp_goods_spec_attr` VALUES (339, 45, 'size', '尺码', 2, 343, 'L', '');
INSERT INTO `erp_goods_spec_attr` VALUES (340, 45, 'size', '尺码', 2, 344, 'XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (341, 45, 'size', '尺码', 2, 345, '2XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (342, 46, 'color', '颜色', 1, 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01Nak9ys2FOyE9IvLef_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (343, 46, 'color', '颜色', 1, 336, '烟灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01Oi8GB62FOyEARfNQF_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (344, 46, 'color', '颜色', 1, 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01yMCDYu2FOyEARqBVY_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (345, 46, 'color', '颜色', 1, 336, '蓝灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01SzZ7qE2FOyE5Ahn5c_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (346, 46, 'color', '颜色', 1, 0, '黑色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01GXj19V2FOyDvtRpMI_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (347, 46, 'color', '颜色', 1, 0, '烟灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01nw66Rp2FOyECsleSF_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (348, 46, 'color', '颜色', 1, 0, '蓝灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01tCa6sF2FOyE8JtRoh_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (349, 46, 'color', '颜色', 1, 0, '浅蓝色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01XHjrys2FOyE9si0Q8_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (350, 46, 'size', '尺码', 2, 402, '26', '');
INSERT INTO `erp_goods_spec_attr` VALUES (351, 46, 'size', '尺码', 2, 403, '27', '');
INSERT INTO `erp_goods_spec_attr` VALUES (352, 46, 'size', '尺码', 2, 404, '28', '');
INSERT INTO `erp_goods_spec_attr` VALUES (353, 46, 'size', '尺码', 2, 405, '29', '');
INSERT INTO `erp_goods_spec_attr` VALUES (354, 46, 'size', '尺码', 2, 406, '30', '');
INSERT INTO `erp_goods_spec_attr` VALUES (355, 46, 'size', '尺码', 2, 407, '31', '');
INSERT INTO `erp_goods_spec_attr` VALUES (356, 46, 'size', '尺码', 2, 408, '32', '');
INSERT INTO `erp_goods_spec_attr` VALUES (357, 47, 'color', '颜色', 1, 319, '深蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01KtZqKM2Arl3fk5KtK_!!2513908257-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (358, 47, 'color', '颜色', 1, 0, '深蓝色加长', 'https://cbu01.alicdn.com/img/ibank/O1CN01fz1zp42Arl3SMD5sS_!!2513908257-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (359, 47, 'size', '尺码', 2, 394, 'XS', '');
INSERT INTO `erp_goods_spec_attr` VALUES (360, 47, 'size', '尺码', 2, 341, 'S', '');
INSERT INTO `erp_goods_spec_attr` VALUES (361, 47, 'size', '尺码', 2, 342, 'M', '');
INSERT INTO `erp_goods_spec_attr` VALUES (362, 47, 'size', '尺码', 2, 343, 'L', '');
INSERT INTO `erp_goods_spec_attr` VALUES (363, 47, 'size', '尺码', 2, 344, 'XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (364, 47, 'size', '尺码', 2, 345, '2XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (365, 33, 'color', '颜色', 1, 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01Kv2ymz2FOyCNsDP1S_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (366, 33, 'color', '颜色', 1, 317, '杏色', 'https://cbu01.alicdn.com/img/ibank/O1CN01O3yq8p2FOyCOMzdUR_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (367, 33, 'color', '颜色', 1, 409, '黑色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01wWwtXm2FOyDIpC0BY_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (368, 33, 'color', '颜色', 1, 410, '黑灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01lqQeRn2FOyDLJRi9c_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (369, 33, 'color', '颜色', 1, 411, '蓝灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01tQBYWC2FOyD8HYB3p_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (370, 33, 'color', '颜色', 1, 412, '复古蓝加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01tS1yRE2FOyDMvwj7p_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (371, 33, 'color', '颜色', 1, 413, '浅蓝色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN010gs0ON2FOyDNfPddh_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (372, 33, 'size', '尺码', 2, 341, 'S', '');
INSERT INTO `erp_goods_spec_attr` VALUES (373, 33, 'size', '尺码', 2, 342, 'M', '');
INSERT INTO `erp_goods_spec_attr` VALUES (374, 33, 'size', '尺码', 2, 343, 'L', '');
INSERT INTO `erp_goods_spec_attr` VALUES (375, 33, 'size', '尺码', 2, 344, 'XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (376, 33, 'size', '尺码', 2, 345, '2XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (377, 22, 'color', '颜色', 1, 409, '黑色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN01yUmRNW2FOyDTbXvyF_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (378, 22, 'color', '颜色', 1, 410, '黑灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN016nREfS2FOyDXxglpQ_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (379, 22, 'color', '颜色', 1, 411, '蓝灰色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN0121IGEy2FOyDeZm8MH_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (380, 22, 'color', '颜色', 1, 413, '浅蓝色加绒', 'https://cbu01.alicdn.com/img/ibank/O1CN013dvLD62FOyDS4ElK6_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (381, 22, 'size', '尺码', 2, 401, '25', '');
INSERT INTO `erp_goods_spec_attr` VALUES (382, 22, 'size', '尺码', 2, 402, '26', '');
INSERT INTO `erp_goods_spec_attr` VALUES (383, 22, 'size', '尺码', 2, 403, '27', '');
INSERT INTO `erp_goods_spec_attr` VALUES (384, 22, 'size', '尺码', 2, 404, '28', '');
INSERT INTO `erp_goods_spec_attr` VALUES (385, 22, 'size', '尺码', 2, 405, '29', '');
INSERT INTO `erp_goods_spec_attr` VALUES (386, 22, 'size', '尺码', 2, 406, '30', '');
INSERT INTO `erp_goods_spec_attr` VALUES (387, 22, 'size', '尺码', 2, 407, '31', '');
INSERT INTO `erp_goods_spec_attr` VALUES (388, 22, 'size', '尺码', 2, 408, '32', '');
INSERT INTO `erp_goods_spec_attr` VALUES (389, 48, 'color', '颜色', 1, 361, '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01D94VIz2FOyCZdAhrE_!!2208857268871-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (390, 48, 'size', '尺码', 2, 341, 'S', '');
INSERT INTO `erp_goods_spec_attr` VALUES (391, 48, 'size', '尺码', 2, 342, 'M', '');
INSERT INTO `erp_goods_spec_attr` VALUES (392, 48, 'size', '尺码', 2, 343, 'L', '');
INSERT INTO `erp_goods_spec_attr` VALUES (393, 48, 'size', '尺码', 2, 344, 'XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (394, 48, 'size', '尺码', 2, 345, '2XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (395, 49, 'color', '颜色', 1, 356, '复古蓝', 'http://img.huayikeji.com/wom2cb3klac7d95x97wwxyck8n7eb5a4');
INSERT INTO `erp_goods_spec_attr` VALUES (396, 49, 'color', '颜色', 1, 336, '蓝灰色', 'http://img.huayikeji.com/imrkrpuewyt1y7bfgewp99moz6qs8hzp');
INSERT INTO `erp_goods_spec_attr` VALUES (397, 49, 'color', '颜色', 1, 308, '黑色', 'http://img.huayikeji.com/0teyrqyzfhwyvgvxf8gyo1lzdxs20gr2');
INSERT INTO `erp_goods_spec_attr` VALUES (398, 49, 'color', '颜色', 1, 412, '复古蓝加绒', 'http://img.huayikeji.com/wom2cb3klac7d95x97wwxyck8n7eb5a4');
INSERT INTO `erp_goods_spec_attr` VALUES (399, 49, 'color', '颜色', 1, 411, '蓝灰色加绒', 'http://img.huayikeji.com/imrkrpuewyt1y7bfgewp99moz6qs8hzp');
INSERT INTO `erp_goods_spec_attr` VALUES (400, 49, 'color', '颜色', 1, 409, '黑色加绒', 'http://img.huayikeji.com/0teyrqyzfhwyvgvxf8gyo1lzdxs20gr2');
INSERT INTO `erp_goods_spec_attr` VALUES (401, 49, 'size', '尺码', 2, 402, '26', '');
INSERT INTO `erp_goods_spec_attr` VALUES (402, 49, 'size', '尺码', 2, 403, '27', '');
INSERT INTO `erp_goods_spec_attr` VALUES (403, 49, 'size', '尺码', 2, 404, '28', '');
INSERT INTO `erp_goods_spec_attr` VALUES (404, 49, 'size', '尺码', 2, 405, '29', '');
INSERT INTO `erp_goods_spec_attr` VALUES (405, 49, 'size', '尺码', 2, 406, '30', '');
INSERT INTO `erp_goods_spec_attr` VALUES (406, 49, 'size', '尺码', 2, 407, '31', '');
INSERT INTO `erp_goods_spec_attr` VALUES (407, 49, 'size', '尺码', 2, 408, '32', '');
INSERT INTO `erp_goods_spec_attr` VALUES (408, 49, 'color', '颜色', 1, 367, '复古蓝九分', 'http://img.huayikeji.com/wom2cb3klac7d95x97wwxyck8n7eb5a4');
INSERT INTO `erp_goods_spec_attr` VALUES (409, 49, 'color', '颜色', 1, 379, '蓝灰色九分', 'http://img.huayikeji.com/imrkrpuewyt1y7bfgewp99moz6qs8hzp');
INSERT INTO `erp_goods_spec_attr` VALUES (410, 49, 'color', '颜色', 1, 380, '黑色九分', 'http://img.huayikeji.com/0teyrqyzfhwyvgvxf8gyo1lzdxs20gr2');
INSERT INTO `erp_goods_spec_attr` VALUES (411, 49, 'size', '尺码', 2, 402, '26', '');
INSERT INTO `erp_goods_spec_attr` VALUES (412, 49, 'size', '尺码', 2, 403, '27', '');
INSERT INTO `erp_goods_spec_attr` VALUES (413, 49, 'size', '尺码', 2, 404, '28', '');
INSERT INTO `erp_goods_spec_attr` VALUES (414, 49, 'size', '尺码', 2, 405, '29', '');
INSERT INTO `erp_goods_spec_attr` VALUES (415, 49, 'size', '尺码', 2, 406, '30', '');
INSERT INTO `erp_goods_spec_attr` VALUES (416, 49, 'size', '尺码', 2, 407, '31', '');
INSERT INTO `erp_goods_spec_attr` VALUES (417, 49, 'size', '尺码', 2, 408, '32', '');
INSERT INTO `erp_goods_spec_attr` VALUES (418, 53, 'color', '颜色', 1, 308, '黑色', 'http://img.huayikeji.com/2ekpro9obesysm6vf1h0ihhfx1z9bgqz');
INSERT INTO `erp_goods_spec_attr` VALUES (419, 53, 'color', '颜色', 1, 335, '卡其', 'http://img.huayikeji.com/59ihabwqyajwiik7cf4364zpsta40w80');
INSERT INTO `erp_goods_spec_attr` VALUES (420, 53, 'color', '颜色', 1, 366, '米白', 'http://img.huayikeji.com/4cptgqnxzy9ftbi8l3x6tb1t1fv4vfz9');
INSERT INTO `erp_goods_spec_attr` VALUES (421, 53, 'color', '颜色', 1, 368, '卡灰', 'http://img.huayikeji.com/dh7fvio3h8zyqs5fbtzb5oxqovvmrol6');
INSERT INTO `erp_goods_spec_attr` VALUES (422, 53, 'size', '尺码', 2, 401, '25', '');
INSERT INTO `erp_goods_spec_attr` VALUES (423, 53, 'size', '尺码', 2, 402, '26', '');
INSERT INTO `erp_goods_spec_attr` VALUES (424, 53, 'size', '尺码', 2, 403, '27', '');
INSERT INTO `erp_goods_spec_attr` VALUES (425, 53, 'size', '尺码', 2, 404, '28', '');
INSERT INTO `erp_goods_spec_attr` VALUES (426, 53, 'size', '尺码', 2, 405, '29', '');
INSERT INTO `erp_goods_spec_attr` VALUES (427, 53, 'size', '尺码', 2, 406, '30', '');
INSERT INTO `erp_goods_spec_attr` VALUES (428, 53, 'size', '尺码', 2, 407, '31', '');
INSERT INTO `erp_goods_spec_attr` VALUES (429, 53, 'size', '尺码', 2, 408, '32', '');
INSERT INTO `erp_goods_spec_attr` VALUES (430, 53, 'style', '款式', 3, 417, '九分', '');
INSERT INTO `erp_goods_spec_attr` VALUES (431, 53, 'style', '款式', 3, 418, '八分', '');
INSERT INTO `erp_goods_spec_attr` VALUES (432, 53, 'style', '款式', 3, 419, '九分加绒', '');
INSERT INTO `erp_goods_spec_attr` VALUES (433, 54, 'color', '颜色', 1, 351, '蓝色', 'http://img.huayikeji.com/fex2kmy8mmraboudesodz9mig2wcbidi');
INSERT INTO `erp_goods_spec_attr` VALUES (434, 54, 'color', '颜色', 1, 389, '黑灰色', 'http://img.huayikeji.com/8okq5agwo00vy221pyylgvu47va7pet4');
INSERT INTO `erp_goods_spec_attr` VALUES (435, 54, 'size', '尺码', 2, 402, '26', '');
INSERT INTO `erp_goods_spec_attr` VALUES (436, 54, 'size', '尺码', 2, 403, '27', '');
INSERT INTO `erp_goods_spec_attr` VALUES (437, 54, 'size', '尺码', 2, 404, '28', '');
INSERT INTO `erp_goods_spec_attr` VALUES (438, 54, 'size', '尺码', 2, 405, '29', '');
INSERT INTO `erp_goods_spec_attr` VALUES (439, 54, 'size', '尺码', 2, 406, '30', '');
INSERT INTO `erp_goods_spec_attr` VALUES (440, 54, 'size', '尺码', 2, 407, '31', '');
INSERT INTO `erp_goods_spec_attr` VALUES (441, 55, 'color', '颜色', 1, 356, '复古蓝', 'http://img.huayikeji.com/egma3seljl77hcbpjpw9ks000kkf3rs5');
INSERT INTO `erp_goods_spec_attr` VALUES (442, 55, 'color', '颜色', 1, 361, '浅蓝色', 'http://img.huayikeji.com/zgtp829lecxrqml16kqkfuo5ajxoh49h');
INSERT INTO `erp_goods_spec_attr` VALUES (443, 55, 'size', '尺码', 2, 394, 'XS', '');
INSERT INTO `erp_goods_spec_attr` VALUES (444, 55, 'size', '尺码', 2, 341, 'S', '');
INSERT INTO `erp_goods_spec_attr` VALUES (445, 55, 'size', '尺码', 2, 342, 'M', '');
INSERT INTO `erp_goods_spec_attr` VALUES (446, 55, 'size', '尺码', 2, 343, 'L', '');
INSERT INTO `erp_goods_spec_attr` VALUES (447, 55, 'size', '尺码', 2, 344, 'XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (448, 55, 'size', '尺码', 2, 345, '2XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (449, 56, 'color', '颜色', 1, 356, '复古蓝', 'http://img.huayikeji.com/0ac55odg8e0d7y714svpcvtoqfxld5dk');
INSERT INTO `erp_goods_spec_attr` VALUES (450, 56, 'size', '尺码', 2, 394, 'XS', '');
INSERT INTO `erp_goods_spec_attr` VALUES (451, 56, 'size', '尺码', 2, 341, 'S', '');
INSERT INTO `erp_goods_spec_attr` VALUES (452, 56, 'size', '尺码', 2, 342, 'M', '');
INSERT INTO `erp_goods_spec_attr` VALUES (453, 56, 'size', '尺码', 2, 343, 'L', '');
INSERT INTO `erp_goods_spec_attr` VALUES (454, 56, 'size', '尺码', 2, 344, 'XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (455, 56, 'size', '尺码', 2, 345, '2XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (456, 56, 'style', '款式', 3, 416, '长款', '');
INSERT INTO `erp_goods_spec_attr` VALUES (457, 56, 'style', '款式', 3, 415, '加长款', '');
INSERT INTO `erp_goods_spec_attr` VALUES (458, 59, 'color', '颜色', 1, 356, '复古蓝', 'http://img.huayikeji.com/n732o54er4aigs0vl0k2mmu1koqwgu6k');
INSERT INTO `erp_goods_spec_attr` VALUES (459, 59, 'size', '尺码', 2, 394, 'XS', '');
INSERT INTO `erp_goods_spec_attr` VALUES (460, 59, 'size', '尺码', 2, 341, 'S', '');
INSERT INTO `erp_goods_spec_attr` VALUES (461, 59, 'size', '尺码', 2, 342, 'M', '');
INSERT INTO `erp_goods_spec_attr` VALUES (462, 59, 'size', '尺码', 2, 343, 'L', '');
INSERT INTO `erp_goods_spec_attr` VALUES (463, 59, 'size', '尺码', 2, 344, 'XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (464, 59, 'size', '尺码', 2, 345, '2XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (465, 59, 'style', '款式', 3, 416, '长款', '');
INSERT INTO `erp_goods_spec_attr` VALUES (466, 59, 'style', '款式', 3, 415, '加长款', '');
INSERT INTO `erp_goods_spec_attr` VALUES (467, 60, 'color', '颜色', 1, 361, '浅蓝色', 'http://img.huayikeji.com/lmk2699b6lpcoraaxij10kemlqmkqfgr');
INSERT INTO `erp_goods_spec_attr` VALUES (468, 60, 'color', '颜色', 1, 319, '深蓝色', 'http://img.huayikeji.com/fzvbk24z186xmk1nmtsobbasv4quxv8q');
INSERT INTO `erp_goods_spec_attr` VALUES (469, 60, 'color', '颜色', 1, 374, '深蓝色加绒', 'http://img.huayikeji.com/0yzpga8017ikg8on2ejo03dgo2uulzbi');
INSERT INTO `erp_goods_spec_attr` VALUES (470, 60, 'size', '尺码', 2, 401, '25', '');
INSERT INTO `erp_goods_spec_attr` VALUES (471, 60, 'size', '尺码', 2, 402, '26', '');
INSERT INTO `erp_goods_spec_attr` VALUES (472, 60, 'size', '尺码', 2, 403, '27', '');
INSERT INTO `erp_goods_spec_attr` VALUES (473, 60, 'size', '尺码', 2, 404, '28', '');
INSERT INTO `erp_goods_spec_attr` VALUES (474, 60, 'size', '尺码', 2, 405, '29', '');
INSERT INTO `erp_goods_spec_attr` VALUES (475, 60, 'size', '尺码', 2, 406, '30', '');
INSERT INTO `erp_goods_spec_attr` VALUES (476, 60, 'size', '尺码', 2, 407, '31', '');
INSERT INTO `erp_goods_spec_attr` VALUES (477, 60, 'size', '尺码', 2, 408, '32', '');
INSERT INTO `erp_goods_spec_attr` VALUES (478, 61, 'color', '颜色', 1, 351, '蓝色', 'http://img.huayiyungou.com/q3t7loa0mz6lokizz93fp52cltgxhuq2');
INSERT INTO `erp_goods_spec_attr` VALUES (479, 61, 'color', '颜色', 1, 389, '黑灰色', 'http://img.huayiyungou.com/qx67wj65nlvrs514g02bs7ocptl5b6ec');
INSERT INTO `erp_goods_spec_attr` VALUES (480, 61, 'size', '尺码', 2, 394, 'XS', '');
INSERT INTO `erp_goods_spec_attr` VALUES (481, 61, 'size', '尺码', 2, 341, 'S', '');
INSERT INTO `erp_goods_spec_attr` VALUES (482, 61, 'size', '尺码', 2, 342, 'M', '');
INSERT INTO `erp_goods_spec_attr` VALUES (483, 61, 'size', '尺码', 2, 343, 'L', '');
INSERT INTO `erp_goods_spec_attr` VALUES (484, 61, 'size', '尺码', 2, 344, 'XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (485, 61, 'size', '尺码', 2, 345, '2XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (486, 62, 'color', '颜色', 1, 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9938_黑色.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (487, 62, 'color', '颜色', 1, 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9938_复古蓝.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (488, 62, 'color', '颜色', 1, 361, '浅蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9938_浅蓝色.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (489, 62, 'size', '尺码', 2, 394, 'XS', '');
INSERT INTO `erp_goods_spec_attr` VALUES (490, 62, 'size', '尺码', 2, 341, 'S', '');
INSERT INTO `erp_goods_spec_attr` VALUES (491, 62, 'size', '尺码', 2, 342, 'M', '');
INSERT INTO `erp_goods_spec_attr` VALUES (492, 62, 'size', '尺码', 2, 343, 'L', '');
INSERT INTO `erp_goods_spec_attr` VALUES (493, 62, 'size', '尺码', 2, 344, 'XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (494, 62, 'size', '尺码', 2, 345, '2XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (495, 62, 'style', '款式', 3, 417, '九分', '');
INSERT INTO `erp_goods_spec_attr` VALUES (496, 62, 'style', '款式', 3, 416, '长款', '');
INSERT INTO `erp_goods_spec_attr` VALUES (497, 63, 'color', '颜色', 1, 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_黑色.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (498, 63, 'color', '颜色', 1, 335, '卡其', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_卡其.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (499, 63, 'color', '颜色', 1, 368, '卡灰', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_卡灰.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (500, 63, 'color', '颜色', 1, 366, '米白', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL6001_米白.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (501, 63, 'size', '尺码', 2, 401, '25', '');
INSERT INTO `erp_goods_spec_attr` VALUES (502, 63, 'size', '尺码', 2, 402, '26', '');
INSERT INTO `erp_goods_spec_attr` VALUES (503, 63, 'size', '尺码', 2, 403, '27', '');
INSERT INTO `erp_goods_spec_attr` VALUES (504, 63, 'size', '尺码', 2, 404, '28', '');
INSERT INTO `erp_goods_spec_attr` VALUES (505, 63, 'size', '尺码', 2, 405, '29', '');
INSERT INTO `erp_goods_spec_attr` VALUES (506, 63, 'size', '尺码', 2, 406, '30', '');
INSERT INTO `erp_goods_spec_attr` VALUES (507, 63, 'size', '尺码', 2, 407, '31', '');
INSERT INTO `erp_goods_spec_attr` VALUES (508, 63, 'size', '尺码', 2, 408, '32', '');
INSERT INTO `erp_goods_spec_attr` VALUES (509, 63, 'style', '款式', 3, 420, '单裤', '');
INSERT INTO `erp_goods_spec_attr` VALUES (510, 63, 'style', '款式', 3, 421, '加绒', '');
INSERT INTO `erp_goods_spec_attr` VALUES (511, 64, 'color', '颜色', 1, 308, '黑色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_黑色.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (512, 64, 'color', '颜色', 1, 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_深蓝色.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (513, 64, 'color', '颜色', 1, 361, '浅蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-11/JKL9909_浅蓝色.JPG');
INSERT INTO `erp_goods_spec_attr` VALUES (514, 64, 'size', '尺码', 2, 401, '25', '');
INSERT INTO `erp_goods_spec_attr` VALUES (515, 64, 'size', '尺码', 2, 402, '26', '');
INSERT INTO `erp_goods_spec_attr` VALUES (516, 64, 'size', '尺码', 2, 403, '27', '');
INSERT INTO `erp_goods_spec_attr` VALUES (517, 64, 'size', '尺码', 2, 404, '28', '');
INSERT INTO `erp_goods_spec_attr` VALUES (518, 64, 'size', '尺码', 2, 405, '29', '');
INSERT INTO `erp_goods_spec_attr` VALUES (519, 64, 'size', '尺码', 2, 406, '30', '');
INSERT INTO `erp_goods_spec_attr` VALUES (520, 64, 'size', '尺码', 2, 407, '31', '');
INSERT INTO `erp_goods_spec_attr` VALUES (521, 64, 'size', '尺码', 2, 408, '32', '');
INSERT INTO `erp_goods_spec_attr` VALUES (522, 64, 'style', '款式', 3, 417, '九分', '');
INSERT INTO `erp_goods_spec_attr` VALUES (523, 64, 'style', '款式', 3, 416, '长款', '');
INSERT INTO `erp_goods_spec_attr` VALUES (524, 65, 'color', '颜色', 1, 308, '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01lfHUDo1p3HVme2o7Q_!!2214743335304-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (525, 65, 'color', '颜色', 1, 338, '咖啡色', 'https://cbu01.alicdn.com/img/ibank/O1CN01kneLsV1p3HVu8u1xi_!!2214743335304-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (526, 65, 'color', '颜色', 1, 377, '墨绿色', 'https://cbu01.alicdn.com/img/ibank/O1CN01nPrwCh1p3HVouHmtq_!!2214743335304-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (527, 65, 'size', '尺码', 2, 340, '均码', '');
INSERT INTO `erp_goods_spec_attr` VALUES (528, 66, 'color', '颜色', 1, 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1973_复古蓝.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (529, 66, 'size', '尺码', 2, 394, 'XS', '');
INSERT INTO `erp_goods_spec_attr` VALUES (530, 66, 'size', '尺码', 2, 341, 'S', '');
INSERT INTO `erp_goods_spec_attr` VALUES (531, 66, 'size', '尺码', 2, 342, 'M', '');
INSERT INTO `erp_goods_spec_attr` VALUES (532, 66, 'size', '尺码', 2, 343, 'L', '');
INSERT INTO `erp_goods_spec_attr` VALUES (533, 66, 'size', '尺码', 2, 344, 'XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (534, 66, 'size', '尺码', 2, 345, '2XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (535, 66, 'style', '款式', 3, 420, '单裤', '');
INSERT INTO `erp_goods_spec_attr` VALUES (536, 66, 'style', '款式', 3, 421, '加绒', '');
INSERT INTO `erp_goods_spec_attr` VALUES (537, 67, 'color', '颜色', 1, 319, '深蓝色', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_深蓝色.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (538, 67, 'color', '颜色', 1, 356, '复古蓝', 'http://img.huayiyungou.com/ecom_goods_img_2022-12/JKL1951_复古蓝.png');
INSERT INTO `erp_goods_spec_attr` VALUES (539, 67, 'size', '尺码', 2, 401, '25', '');
INSERT INTO `erp_goods_spec_attr` VALUES (540, 67, 'size', '尺码', 2, 402, '26', '');
INSERT INTO `erp_goods_spec_attr` VALUES (541, 67, 'size', '尺码', 2, 403, '27', '');
INSERT INTO `erp_goods_spec_attr` VALUES (542, 67, 'size', '尺码', 2, 404, '28', '');
INSERT INTO `erp_goods_spec_attr` VALUES (543, 67, 'size', '尺码', 2, 405, '29', '');
INSERT INTO `erp_goods_spec_attr` VALUES (544, 67, 'size', '尺码', 2, 406, '30', '');
INSERT INTO `erp_goods_spec_attr` VALUES (545, 67, 'size', '尺码', 2, 407, '31', '');
INSERT INTO `erp_goods_spec_attr` VALUES (546, 67, 'size', '尺码', 2, 408, '32', '');
INSERT INTO `erp_goods_spec_attr` VALUES (547, 67, 'style', '款式', 3, 416, '长裤', '');
INSERT INTO `erp_goods_spec_attr` VALUES (548, 67, 'style', '款式', 3, 422, '长裤加绒', '');
INSERT INTO `erp_goods_spec_attr` VALUES (549, 67, 'style', '款式', 3, 415, '加长裤', '');
INSERT INTO `erp_goods_spec_attr` VALUES (550, 67, 'style', '款式', 3, 423, '加长裤加绒', '');
INSERT INTO `erp_goods_spec_attr` VALUES (551, 62, 'color', '颜色', 1, 384, '深蓝长款', '');
INSERT INTO `erp_goods_spec_attr` VALUES (552, 62, 'color', '颜色', 1, 383, '深蓝九分', '');
INSERT INTO `erp_goods_spec_attr` VALUES (553, 62, 'size', '尺码', 2, 394, 'XS', '');
INSERT INTO `erp_goods_spec_attr` VALUES (554, 62, 'size', '尺码', 2, 341, 'S', '');
INSERT INTO `erp_goods_spec_attr` VALUES (555, 62, 'size', '尺码', 2, 342, 'M', '');
INSERT INTO `erp_goods_spec_attr` VALUES (556, 62, 'size', '尺码', 2, 343, 'L', '');
INSERT INTO `erp_goods_spec_attr` VALUES (557, 62, 'size', '尺码', 2, 344, 'XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (558, 62, 'size', '尺码', 2, 345, '2XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (559, 68, 'color', '颜色', 1, 319, '深蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01rCYlbl2Arl3CqVwkG_!!2513908257-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (560, 68, 'color', '颜色', 1, 314, '烟灰色', 'https://cbu01.alicdn.com/img/ibank/O1CN01vLP3RW2Arl35fOv3d_!!2513908257-0-cib.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (561, 68, 'size', '尺码', 2, 341, 'S', '');
INSERT INTO `erp_goods_spec_attr` VALUES (562, 68, 'size', '尺码', 2, 342, 'M', '');
INSERT INTO `erp_goods_spec_attr` VALUES (563, 68, 'size', '尺码', 2, 343, 'L', '');
INSERT INTO `erp_goods_spec_attr` VALUES (564, 68, 'size', '尺码', 2, 344, 'XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (565, 68, 'size', '尺码', 2, 345, '2XL', '');
INSERT INTO `erp_goods_spec_attr` VALUES (566, 69, 'color', '颜色', 1, 389, '黑灰色', 'https://gd1.alicdn.com/imgextra/i2/49616689/O1CN01NkZm6L1zHc5upnyRW_!!49616689.jpg_400x400.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (567, 69, 'color', '颜色', 1, 361, '浅蓝色', 'https://gd3.alicdn.com/imgextra/i1/49616689/O1CN01bzPmrs1zHc5ynDOyo_!!49616689.jpg_400x400.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (568, 69, 'size', '尺码', 2, 402, '26', '');
INSERT INTO `erp_goods_spec_attr` VALUES (569, 69, 'size', '尺码', 2, 403, '27', '');
INSERT INTO `erp_goods_spec_attr` VALUES (570, 69, 'size', '尺码', 2, 404, '28', '');
INSERT INTO `erp_goods_spec_attr` VALUES (571, 69, 'size', '尺码', 2, 405, '29', '');
INSERT INTO `erp_goods_spec_attr` VALUES (572, 69, 'size', '尺码', 2, 406, '30', '');
INSERT INTO `erp_goods_spec_attr` VALUES (573, 69, 'size', '尺码', 2, 407, '31', '');
INSERT INTO `erp_goods_spec_attr` VALUES (574, 69, 'size', '尺码', 2, 408, '32', '');
INSERT INTO `erp_goods_spec_attr` VALUES (575, 70, 'color', '颜色', 1, 361, '浅蓝色', 'https://gd3.alicdn.com/imgextra/i2/49616689/O1CN01j5qyuA1zHc63KaMAY_!!49616689.jpg_400x400.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (576, 70, 'color', '颜色', 1, 308, '黑色', 'https://gd2.alicdn.com/imgextra/i4/49616689/O1CN01GAdjtB1zHc5yvskHx_!!49616689.jpg_400x400.jpg');
INSERT INTO `erp_goods_spec_attr` VALUES (577, 70, 'size', '尺码', 2, 402, '26', '');
INSERT INTO `erp_goods_spec_attr` VALUES (578, 70, 'size', '尺码', 2, 403, '27', '');
INSERT INTO `erp_goods_spec_attr` VALUES (579, 70, 'size', '尺码', 2, 404, '28', '');
INSERT INTO `erp_goods_spec_attr` VALUES (580, 70, 'size', '尺码', 2, 405, '29', '');
INSERT INTO `erp_goods_spec_attr` VALUES (581, 70, 'size', '尺码', 2, 406, '30', '');
INSERT INTO `erp_goods_spec_attr` VALUES (582, 70, 'size', '尺码', 2, 407, '31', '');
INSERT INTO `erp_goods_spec_attr` VALUES (583, 70, 'size', '尺码', 2, 408, '32', '');
INSERT INTO `erp_goods_spec_attr` VALUES (584, 71, 'color', '颜色', 114, 413, NULL, NULL);
INSERT INTO `erp_goods_spec_attr` VALUES (585, 71, 'color', '颜色', 114, 412, NULL, NULL);
INSERT INTO `erp_goods_spec_attr` VALUES (586, 71, 'size', '尺码', 115, 406, NULL, NULL);
INSERT INTO `erp_goods_spec_attr` VALUES (587, 71, 'size', '尺码', 115, 405, NULL, NULL);
INSERT INTO `erp_goods_spec_attr` VALUES (588, 71, 'style', '款式', 116, 413, NULL, NULL);
INSERT INTO `erp_goods_spec_attr` VALUES (589, 71, 'style', '款式', 116, 412, NULL, NULL);
INSERT INTO `erp_goods_spec_attr` VALUES (597, 74, 'color', '颜色', 114, 413, NULL, NULL);
INSERT INTO `erp_goods_spec_attr` VALUES (598, 74, 'color', '颜色', 114, 412, NULL, NULL);
INSERT INTO `erp_goods_spec_attr` VALUES (599, 74, 'size', '尺码', 115, 408, NULL, NULL);
INSERT INTO `erp_goods_spec_attr` VALUES (600, 74, 'size', '尺码', 115, 407, NULL, NULL);
INSERT INTO `erp_goods_spec_attr` VALUES (601, 74, 'style', '款式', 116, 413, NULL, NULL);
INSERT INTO `erp_goods_spec_attr` VALUES (602, 74, 'style', '款式', 116, 412, NULL, NULL);

-- ----------------------------
-- Table structure for erp_order
-- ----------------------------
DROP TABLE IF EXISTS `erp_order`;
CREATE TABLE `erp_order`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '订单id，自增',
  `order_num` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '订单编号（第三方平台订单号）',
  `shop_type` int NOT NULL COMMENT '店铺类型',
  `shop_id` int NOT NULL COMMENT '店铺ID',
  `remark` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '订单备注',
  `buyer_memo` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '买家留言信息',
  `seller_memo` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '卖家留言信息',
  `tag` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '标签',
  `refund_status` int NOT NULL COMMENT '售后状态 1：无售后或售后关闭，2：售后处理中，3：退款中，4： 退款成功 ',
  `order_status` int NOT NULL COMMENT '订单状态0:未确认1：待发货，2：已发货，3：已完成',
  `goods_amount` double NULL DEFAULT NULL COMMENT '订单商品金额',
  `amount` double NOT NULL COMMENT '订单实际金额',
  `receiver_name` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '收件人姓名',
  `receiver_mobile` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '收件人手机号',
  `address` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '收件人地址',
  `province` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '省',
  `city` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '市',
  `town` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '区',
  `order_time` datetime NULL DEFAULT NULL COMMENT '订单时间',
  `ship_type` int NOT NULL COMMENT '发货类型（-1未指定；0仓库发货；1供应商代发）',
  `shipping_time` datetime NULL DEFAULT NULL COMMENT '发货时间',
  `shipping_number` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '快递单号',
  `shipping_company` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '物流公司',
  `shipping_man` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '发货人',
  `shipping_cost` decimal(10, 2) NULL DEFAULT NULL COMMENT '发货费用',
  `has_push_erp` int NULL DEFAULT 0 COMMENT '是否推送到ERP',
  `length` float NULL DEFAULT 0 COMMENT '长',
  `width` float NULL DEFAULT 0 COMMENT '宽',
  `height` float NULL DEFAULT 0 COMMENT '高',
  `weight` float NULL DEFAULT NULL COMMENT '重量',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `update_by` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `order_sn_index`(`order_num`) USING BTREE,
  INDEX `shopid_index`(`shop_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1775086022772002818 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '订单表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of erp_order
-- ----------------------------

-- ----------------------------
-- Table structure for erp_order_item
-- ----------------------------
DROP TABLE IF EXISTS `erp_order_item`;
CREATE TABLE `erp_order_item`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id，自增',
  `order_id` bigint NOT NULL COMMENT '订单ID（o_order外键）',
  `order_num` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '订单号（第三方平台）',
  `sub_order_num` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '子订单号（第三方平台）',
  `sku_id` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '第三方平台skuId',
  `erp_goods_id` bigint NOT NULL DEFAULT 0 COMMENT 'erp系统商品id',
  `erp_sku_id` bigint NOT NULL DEFAULT 0 COMMENT 'erp系统商品规格id',
  `goods_title` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商品标题',
  `goods_img` varchar(300) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商品图片',
  `goods_num` varchar(35) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商品编码',
  `goods_spec` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商品规格',
  `sku_num` varchar(35) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商品规格编码',
  `goods_price` double NOT NULL COMMENT '商品单价',
  `item_amount` double NULL DEFAULT NULL COMMENT '子订单金额',
  `quantity` int NOT NULL COMMENT '商品数量',
  `remark` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '备注',
  `refund_count` int NULL DEFAULT 0 COMMENT '已退货数量',
  `refund_status` int NULL DEFAULT NULL COMMENT '售后状态 1：无售后或售后关闭，2：售后处理中，3：退款中，4： 退款成功 ',
  `has_push_erp` int NULL DEFAULT 0 COMMENT '是否推送到ERP',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `update_by` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `goodId_index`(`erp_goods_id`) USING BTREE,
  INDEX `order_id`(`order_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1775086024109985794 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '订单明细表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of erp_order_item
-- ----------------------------

-- ----------------------------
-- Table structure for erp_order_shipping
-- ----------------------------
DROP TABLE IF EXISTS `erp_order_shipping`;
CREATE TABLE `erp_order_shipping`  (
  `id` bigint NOT NULL,
  `shop_id` int NULL DEFAULT NULL COMMENT '店铺id',
  `order_id` bigint NULL DEFAULT NULL COMMENT 'o_order表id',
  `order_num` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '订单编号',
  `ship_type` int NULL DEFAULT NULL COMMENT '发货类型（1订单发货2商品补发3商品换货）',
  `ship_company` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '物流公司',
  `ship_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '物流单号',
  `ship_fee` decimal(6, 0) NULL DEFAULT NULL COMMENT '物流费用',
  `ship_time` datetime NULL DEFAULT NULL COMMENT '发货时间',
  `ship_operator` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '发货操作人',
  `ship_status` int NULL DEFAULT NULL COMMENT '物流状态（1运输中2已完成）',
  `package_weight` float NULL DEFAULT NULL COMMENT '包裹重量',
  `package_length` float NULL DEFAULT NULL COMMENT '包裹长度',
  `package_width` float NULL DEFAULT NULL COMMENT '包裹宽度',
  `package_height` float NULL DEFAULT NULL COMMENT '包裹高度',
  `packsge_operator` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '打包操作人',
  `packsge_time` datetime NULL DEFAULT NULL COMMENT '打包时间',
  `packages` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '包裹内容JSON',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_time` datetime NULL DEFAULT NULL,
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `update_by` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '发货记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of erp_order_shipping
-- ----------------------------
INSERT INTO `erp_order_shipping` VALUES (1774281299046006785, 1, NULL, '233', 1, 'SF', '323323', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '手动发货', '2024-03-31 11:43:21', NULL, NULL, NULL);
INSERT INTO `erp_order_shipping` VALUES (1774284255539507201, 2, 1771780749159133187, '285501634587', 1, 'SF', '344344334', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '手动发货', '2024-03-31 11:55:06', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for erp_refund
-- ----------------------------
DROP TABLE IF EXISTS `erp_refund`;
CREATE TABLE `erp_refund`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `refund_num` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '退货单号',
  `refund_type` int NULL DEFAULT NULL COMMENT '类型(10-退货 20-换货 30-维修 40-大家电安装 50-大家电移机 60-大家电增值服务 70-上门维修 90-优鲜赔 80-补发商品 100-试用收回 11-仅退款)',
  `shop_id` int NULL DEFAULT NULL COMMENT '店铺id',
  `shop_type` int NULL DEFAULT NULL COMMENT '店铺类型',
  `refund_fee` float NOT NULL COMMENT '退款金额',
  `refund_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '退款原因',
  `order_num` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '源订单号',
  `order_item_num` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '子订单号或id',
  `sku_id` bigint NULL DEFAULT NULL COMMENT '源skuId',
  `erp_goods_id` bigint NULL DEFAULT NULL COMMENT 'erp商品id',
  `erp_sku_id` bigint NULL DEFAULT NULL COMMENT 'erp sku id',
  `sku_num` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT 'sku编码',
  `goods_name` varchar(55) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `goods_sku` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商品sku',
  `goods_image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商品图片',
  `quantity` bigint NULL DEFAULT NULL COMMENT '退货数量',
  `return_logistics_company` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '退货物流公司',
  `return_logistics_code` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '退货物流单号',
  `receive_time` datetime NULL DEFAULT NULL COMMENT '收货时间',
  `remark` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '备注',
  `contactPerson` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '发货人',
  `mobile` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '发货人手机号',
  `address` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '发货地址',
  `status` int NOT NULL COMMENT '状态（10001待审核10002等待买家退货10005等待卖家收货14000拒绝退款10011退款关闭10010退款完成）',
  `create_time` datetime NOT NULL COMMENT '订单创建时间',
  `create_by` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `update_by` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1771749215664414723 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '退换货表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of erp_refund
-- ----------------------------
INSERT INTO `erp_refund` VALUES (1771749215664414722, '149005526432678759', 11, 1, 1, 0, NULL, '2090155476352675987', '2090155476353675987', 5222928542211, 0, 0, 'ZH-SF-04-DS-F1-QM23-NT2(R)', '曲美家居现代轻奢简约床头柜床边高脚储物柜卧室置物储藏柜', '颜色分类:石墨黑-右;安装方式:组装', 'https://img.alicdn.com/bao/uploaded/i1/351855490/O1CN012NaoeQ1qQTGEg68L3_!!351855490.jpg', 1, NULL, NULL, NULL, '', '', '', '', 10010, '2024-03-24 12:01:45', 'REFUND_MESSAGE', NULL, NULL);

-- ----------------------------
-- Table structure for fms_payable_agent_ship
-- ----------------------------
DROP TABLE IF EXISTS `fms_payable_agent_ship`;
CREATE TABLE `fms_payable_agent_ship`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `order_num` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '订单号',
  `shop_id` int NOT NULL COMMENT '店铺id',
  `supplier_id` int NOT NULL COMMENT '供应商id',
  `supplier_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '供应商名称',
  `date` date NOT NULL COMMENT '日期',
  `ship_company` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '物流公司',
  `ship_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '物流单号',
  `amount` decimal(10, 2) NOT NULL COMMENT '应付总金额',
  `ship_amount` decimal(5, 2) NOT NULL COMMENT '物流费用',
  `goods_amount` decimal(10, 2) NOT NULL COMMENT '商品金额',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `status` int NOT NULL COMMENT '状态（0已生成1已结算)',
  `create_time` datetime NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_by` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `update_by` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '财务管理-应付款-代发账单' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of fms_payable_agent_ship
-- ----------------------------
INSERT INTO `fms_payable_agent_ship` VALUES (2, '1635222253871665598', 6, 26, '韩牛服饰', '2024-01-28', '菜鸟速递', 'CN52500021', 17.00, 2.00, 15.00, NULL, 0, '2024-01-28 21:06:44', 'admin', NULL, NULL);

-- ----------------------------
-- Table structure for fms_payable_purchase
-- ----------------------------
DROP TABLE IF EXISTS `fms_payable_purchase`;
CREATE TABLE `fms_payable_purchase`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `supplier_id` int NOT NULL COMMENT '供应商id',
  `supplier_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '供应商名称',
  `amount` decimal(10, 2) NOT NULL COMMENT '应付金额',
  `date` date NOT NULL COMMENT '应付日期',
  `invoice_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '发票号码',
  `purchase_order_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '采购单号',
  `purchase_desc` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '采购说明',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `status` int NOT NULL COMMENT '状态（0已生成1已结算)',
  `create_time` datetime NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_by` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `update_by` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '财务管理-应付款-采购货款' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of fms_payable_purchase
-- ----------------------------
INSERT INTO `fms_payable_purchase` VALUES (1, 33, '中山裤豪', 52.00, '2024-01-28', NULL, 'PUR20240128113656', '{采购商品总数量:2,不同款式:1,不同SKU:1,商品总价:42.00,运费:10}', NULL, 0, '2024-01-28 12:07:32', 'admin', NULL, NULL);

-- ----------------------------
-- Table structure for fms_payable_ship_fee
-- ----------------------------
DROP TABLE IF EXISTS `fms_payable_ship_fee`;
CREATE TABLE `fms_payable_ship_fee`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `logistics_company` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '物流公司',
  `logistics_company_id` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '物流公司id',
  `logistics_num` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '物流单号',
  `order_num` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '订单号',
  `shop_id` int NULL DEFAULT NULL COMMENT '店铺id',
  `amount` decimal(10, 2) NOT NULL COMMENT '应付金额',
  `date` date NOT NULL COMMENT '应付日期',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `status` int NOT NULL COMMENT '状态（0已生成1已结算)',
  `create_time` datetime NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_by` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `update_by` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '更新人',
  `length` float NULL DEFAULT 0 COMMENT '长',
  `width` float NULL DEFAULT 0 COMMENT '宽',
  `height` float NULL DEFAULT 0 COMMENT '高',
  `weight` float NULL DEFAULT NULL COMMENT '重量',
  `receiver_name` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '收件人姓名',
  `receiver_phone` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '收件人手机号',
  `province` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '省',
  `city` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '市',
  `town` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '区',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '财务管理-应付款-物流费用' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of fms_payable_ship_fee
-- ----------------------------
INSERT INTO `fms_payable_ship_fee` VALUES (1, '33', '中山裤豪', '', 'PUR20240128113656', NULL, 52.00, '2024-01-28', NULL, 0, '2024-01-28 12:07:32', 'admin', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for scm_purchase_contract
-- ----------------------------
DROP TABLE IF EXISTS `scm_purchase_contract`;
CREATE TABLE `scm_purchase_contract`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `contact_id` bigint NULL DEFAULT NULL COMMENT '供应商id',
  `bill_no` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '单据编号',
  `contractNo` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `billDate` date NULL DEFAULT NULL COMMENT '单据日期',
  `userId` smallint NULL DEFAULT 0 COMMENT '制单人id',
  `userName` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '制单人',
  `transType` char(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '0' COMMENT '交易类型:BUY购货 BUYR退货 SALE销售 SALER退销 OTHER其他入库',
  `transTypeName` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '交易类型名称',
  `totalAmount` decimal(10, 2) NULL DEFAULT NULL COMMENT '购货总金额',
  `disRate` double NULL DEFAULT 0 COMMENT '整单折扣率',
  `disAmount` double NULL DEFAULT 0 COMMENT '整单折扣金额',
  `amount` double NULL DEFAULT 0 COMMENT '折扣后金额',
  `totalDiscount` double NULL DEFAULT 0 COMMENT '总折扣（计算商品折扣和整单折扣之和）',
  `totalQuantity` bigint NULL DEFAULT 0 COMMENT '总数量',
  `qualifiedQuantity` bigint NULL DEFAULT 0 COMMENT '合格数量',
  `inQuantity` bigint NULL DEFAULT 0 COMMENT '已入库数量(已出库数量)',
  `rpAmount` double NULL DEFAULT 0 COMMENT '本次付款',
  `arrears` double NULL DEFAULT 0 COMMENT '本次欠款',
  `freight` double NULL DEFAULT 0 COMMENT '运费',
  `description` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '备注',
  `billType` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT 'PO采购订单 OI其他入库 PUR采购入库 BAL初期余额',
  `billStatus` tinyint(1) NULL DEFAULT 0 COMMENT '订单状态 0待审核1正常2已作废3已入库 11已验货',
  `isDelete` tinyint(1) NULL DEFAULT 0 COMMENT '1删除  0正常',
  `checkName` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '采购单审核人',
  `checked` tinyint(1) NULL DEFAULT 0 COMMENT '采购单审核状态0待审核1已审核',
  `createTime` bigint NULL DEFAULT NULL COMMENT '创建时间',
  `modifyTime` bigint NULL DEFAULT NULL COMMENT '更新时间',
  `salesId` smallint NULL DEFAULT NULL,
  `customerFree` double NULL DEFAULT 0 COMMENT '客户承担费用',
  `hxStateCode` tinyint NULL DEFAULT 0 COMMENT '核销状态 0未付款  1部分付款  2全部付款',
  `hxAmount` double NULL DEFAULT 0 COMMENT '本次核销金额',
  `payment` double NULL DEFAULT 0 COMMENT '本次预收款',
  `srcOrderNo` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '订单编号',
  `srcOrderId` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '订单id',
  `logisticsNo` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '快递物流单号（）',
  `logisticsCompany` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '物流公司',
  `logisticsCompanyCode` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '物流公司代码',
  `logisticsNumber` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '物流单号',
  `locationId` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '仓库id多个,分割',
  `inLocationId` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '调入仓库ID多个,分割',
  `outLocationId` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '调出仓库ID多个,分割',
  `serialno` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '序列号',
  `checkoutName` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '检验人',
  `checkoutTime` bigint NULL DEFAULT 0 COMMENT '检验时间',
  `checkoutStatus` int NULL DEFAULT 0 COMMENT '0 未检验  1已检验',
  `qualifiedStatus` int NULL DEFAULT 0 COMMENT '0为合格数量为0,1为合格数量不为0',
  `stockInName` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '入库人',
  `stockInTime` bigint NULL DEFAULT 0 COMMENT '入库时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '采购单' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of scm_purchase_contract
-- ----------------------------

-- ----------------------------
-- Table structure for scm_purchase_order
-- ----------------------------
DROP TABLE IF EXISTS `scm_purchase_order`;
CREATE TABLE `scm_purchase_order`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `contact_id` bigint NOT NULL COMMENT '供应商id',
  `order_no` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '订单编号',
  `order_date` date NOT NULL COMMENT '订单日期',
  `order_time` bigint NOT NULL COMMENT '订单创建时间',
  `order_amount` decimal(10, 2) NOT NULL COMMENT '订单总金额',
  `ship_amount` decimal(6, 2) NOT NULL COMMENT '物流费用',
  `remark` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '备注',
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '订单状态 0待审核1已审核101供应商已确认102供应商已发货2已收货3已入库',
  `audit_user` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '采购单审核人',
  `audit_time` bigint NULL DEFAULT 0 COMMENT '审核时间',
  `supplier_confirm_time` datetime NULL DEFAULT NULL COMMENT '供应商确认时间',
  `supplier_delivery_time` datetime NULL DEFAULT NULL COMMENT '供应商发货时间',
  `received_time` datetime NULL DEFAULT NULL COMMENT '收货时间',
  `stock_in_time` datetime NULL DEFAULT NULL COMMENT '入库时间',
  `create_by` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 468 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '采购订单' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of scm_purchase_order
-- ----------------------------
INSERT INTO `scm_purchase_order` VALUES (466, 33, 'PUR20240116144408', '2024-01-16', 1705387448, 190.00, 0.00, NULL, 3, '启航', 1705387461, '2024-01-16 14:44:30', '2024-01-16 14:49:49', '2024-01-16 00:00:00', '2024-01-16 14:50:58', 'admin', '2024-01-16 14:44:09', 'admin', '2024-01-16 14:50:58');
INSERT INTO `scm_purchase_order` VALUES (467, 33, 'PUR20240128113656', '2024-01-28', 1706413016, 42.00, 10.00, NULL, 102, '启航', 1706413030, '2024-01-28 11:42:19', '2024-01-28 12:07:32', NULL, NULL, 'admin', '2024-01-28 11:36:56', 'admin', '2024-01-28 12:07:32');

-- ----------------------------
-- Table structure for scm_purchase_order_cost
-- ----------------------------
DROP TABLE IF EXISTS `scm_purchase_order_cost`;
CREATE TABLE `scm_purchase_order_cost`  (
  `id` bigint NOT NULL COMMENT '采购单ID（主键）',
  `order_amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '采购单金额',
  `order_date` date NULL DEFAULT NULL COMMENT '采购订单日期',
  `order_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '采购订单编号',
  `order_spec_unit` int NULL DEFAULT NULL COMMENT '采购订单商品规格数',
  `order_goods_unit` int NULL DEFAULT NULL COMMENT '采购订单商品数',
  `order_spec_unit_total` int NULL DEFAULT NULL COMMENT '采购订单总件数',
  `actual_amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '实际金额',
  `freight` decimal(6, 2) NULL DEFAULT NULL COMMENT '运费',
  `confirm_user` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '确认人',
  `confirm_time` datetime NULL DEFAULT NULL COMMENT '确认时间',
  `create_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `pay_amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '已支付金额',
  `pay_time` datetime NULL DEFAULT NULL COMMENT '支付时间',
  `pay_count` int NULL DEFAULT NULL COMMENT '支付次数',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '说明',
  `status` int NULL DEFAULT NULL COMMENT '状态（0未支付1已支付）',
  `update_by` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '采购订单费用确认表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of scm_purchase_order_cost
-- ----------------------------
INSERT INTO `scm_purchase_order_cost` VALUES (466, 190.00, '2024-01-16', 'PUR20240116144408', 1, 1, 10, 190.00, 0.00, '启航', '2024-01-16 14:44:30', 'admin', 0.00, NULL, 0, NULL, 0, NULL, NULL);

-- ----------------------------
-- Table structure for scm_purchase_order_item
-- ----------------------------
DROP TABLE IF EXISTS `scm_purchase_order_item`;
CREATE TABLE `scm_purchase_order_item`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `order_id` bigint NULL DEFAULT 0 COMMENT '订单id',
  `order_no` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '订单编号',
  `transType` char(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '0' COMMENT '150501采购 150502退货',
  `amount` double NULL DEFAULT 0 COMMENT '购货金额',
  `order_date` date NULL DEFAULT NULL COMMENT '订单日期',
  `remark` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '备注',
  `goods_id` bigint NULL DEFAULT 0 COMMENT '商品ID',
  `goods_num` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商品编码',
  `goods_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `spec_id` bigint NULL DEFAULT 0 COMMENT '商品规格id',
  `spec_num` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商品规格编码',
  `color_value` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '颜色',
  `color_image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '图片',
  `size_value` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '尺码',
  `style_value` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '款式',
  `price` decimal(8, 2) NULL DEFAULT 0.00 COMMENT '单价',
  `dis_amount` decimal(8, 2) NULL DEFAULT 0.00 COMMENT '折扣额',
  `dis_rate` decimal(8, 2) NULL DEFAULT 0.00 COMMENT '折扣率',
  `quantity` bigint NOT NULL DEFAULT 0 COMMENT '数量(采购单据)',
  `inQty` bigint NOT NULL DEFAULT 0 COMMENT '已入库数量',
  `locationId` int NULL DEFAULT NULL COMMENT '入库的仓库id',
  `is_delete` tinyint(1) NULL DEFAULT 0 COMMENT '1删除 0正常',
  `status` int NULL DEFAULT 0 COMMENT '状态（同billStatus）0待审核1正常2已作废3已入库',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `type`(`transType`) USING BTREE,
  INDEX `billdate`(`order_date`) USING BTREE,
  INDEX `invId`(`goods_id`) USING BTREE,
  INDEX `transType`(`transType`) USING BTREE,
  INDEX `iid`(`order_id`) USING BTREE,
  INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1964 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '采购订单明细' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of scm_purchase_order_item
-- ----------------------------
INSERT INTO `scm_purchase_order_item` VALUES (1962, 466, 'PUR20240116144408', 'Purchase', 190, '2024-01-16', '', 9, 'HN8026', 'HN8026牛仔短裤', 32, '2720210080260105', '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01AfNgvA2FOyAvwXZxv_!!2208857268871-0-cib.jpg', '2XL', '', 19.00, 0.00, 0.00, 10, 0, NULL, 0, 0);
INSERT INTO `scm_purchase_order_item` VALUES (1963, 467, 'PUR20240128113656', 'Purchase', 42, '2024-01-28', '', 29, 'HNP182', 'HNP182弹力紧身贴标牛仔短裤女ins', 438, 'HNP1825004', '浅蓝色', 'https://cbu01.alicdn.com/img/ibank/O1CN01yp4pfJ2FOyGRQhOVF_!!2208857268871-0-cib.jpg', 'XL', '', 21.00, 0.00, 0.00, 2, 0, NULL, 0, 0);

-- ----------------------------
-- Table structure for scm_purchase_order_ship
-- ----------------------------
DROP TABLE IF EXISTS `scm_purchase_order_ship`;
CREATE TABLE `scm_purchase_order_ship`  (
  `id` bigint NOT NULL COMMENT '采购单ID（主键）',
  `ship_company` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '物流公司',
  `ship_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '物流单号',
  `freight` decimal(6, 0) NULL DEFAULT NULL COMMENT '运费',
  `ship_time` datetime NULL DEFAULT NULL COMMENT '发货时间',
  `receipt_time` datetime NULL DEFAULT NULL COMMENT '收货时间',
  `create_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `status` int NULL DEFAULT NULL COMMENT '状态（0未收货1已收货2已入库）',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '说明',
  `back_count` int NULL DEFAULT NULL COMMENT '退回数量',
  `stock_in_time` datetime NULL DEFAULT NULL COMMENT '入库时间',
  `stock_in_count` int NULL DEFAULT NULL COMMENT '入库数量',
  `update_by` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `order_date` date NULL DEFAULT NULL COMMENT '采购订单日期',
  `order_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '采购订单编号',
  `order_spec_unit` int NULL DEFAULT NULL COMMENT '采购订单商品规格数',
  `order_goods_unit` int NULL DEFAULT NULL COMMENT '采购订单商品数',
  `order_spec_unit_total` int NULL DEFAULT NULL COMMENT '采购订单总件数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '采购订单物流表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of scm_purchase_order_ship
-- ----------------------------
INSERT INTO `scm_purchase_order_ship` VALUES (466, '菜鸟速递', 'CN223533300022', 0, '2024-01-16 00:00:00', '2024-01-16 00:00:00', 'admin', '2024-01-16 14:49:49', 2, NULL, 0, '2024-01-16 14:50:58', 0, 'admin', '2024-01-16 14:50:58', '2024-01-16', 'PUR20240116144408', 1, 1, 10);
INSERT INTO `scm_purchase_order_ship` VALUES (467, '菜鸟速递', 'CN345565767', 10, '2024-01-28 00:00:00', NULL, 'admin', '2024-01-28 12:07:32', 0, NULL, 0, NULL, 0, NULL, NULL, '2024-01-28', 'PUR20240128113656', 1, 1, 2);

-- ----------------------------
-- Table structure for scm_supplier
-- ----------------------------
DROP TABLE IF EXISTS `scm_supplier`;
CREATE TABLE `scm_supplier`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '供应商名称',
  `number` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '供应商编码',
  `taxRate` double NULL DEFAULT 0 COMMENT '税率',
  `amount` double NULL DEFAULT 0 COMMENT '期初应付款',
  `periodMoney` double NULL DEFAULT 0 COMMENT '期初预付款',
  `difMoney` double NULL DEFAULT 0 COMMENT '初期往来余额',
  `beginDate` date NULL DEFAULT NULL COMMENT '余额日期',
  `remark` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '备注',
  `place` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '职位',
  `linkMan` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '联系人',
  `contact` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '联系方式',
  `province` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '省',
  `city` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '市',
  `county` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '区县',
  `address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '收货地址详情',
  `pinYin` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '',
  `disable` tinyint(1) NULL DEFAULT 0 COMMENT '0启用   1禁用',
  `isDelete` tinyint(1) NULL DEFAULT 0 COMMENT '0正常 1删除',
  `purchaserName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '分管采购员',
  `createTime` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of scm_supplier
-- ----------------------------
INSERT INTO `scm_supplier` VALUES (1, '自营仓库', 'A0001', 0, 0, 0, 0, NULL, '', '', NULL, '15000000000', NULL, NULL, NULL, NULL, '', 0, 0, NULL, '2023-12-29 11:01:02');
INSERT INTO `scm_supplier` VALUES (13, '可可家一号店', '6972501884875', 0, 0, 0, 0, NULL, '', '', NULL, '15815252000', NULL, NULL, NULL, NULL, '', 1, 1, NULL, '2023-12-29 11:01:03');
INSERT INTO `scm_supplier` VALUES (14, '衫人家', '6972501884876', 0, 0, 0, 0, NULL, '', '', NULL, '15815252000', NULL, NULL, NULL, NULL, '', 1, 1, NULL, '2023-12-29 11:01:03');
INSERT INTO `scm_supplier` VALUES (15, '依依', 'ZB001', 0, 0, 0, 0, NULL, '', '', NULL, '13000000000', NULL, NULL, NULL, NULL, '', 0, 0, NULL, '2023-12-29 11:01:03');
INSERT INTO `scm_supplier` VALUES (16, '念念', 'ZB002', 0, 0, 0, 0, NULL, '', '', NULL, '13000000000', NULL, NULL, NULL, NULL, '', 0, 0, NULL, '2023-12-29 11:01:03');
INSERT INTO `scm_supplier` VALUES (17, '华衣服饰', 'ZB003', 0, 0, 0, 0, NULL, '', '', NULL, '13000000000', NULL, NULL, NULL, NULL, '', 0, 0, NULL, '2023-12-29 11:01:03');
INSERT INTO `scm_supplier` VALUES (18, '小颖家', 'ZB004', 0, 0, 0, 0, NULL, '', '', NULL, '13000000000', NULL, NULL, NULL, NULL, '', 0, 0, NULL, '2023-12-29 11:01:03');
INSERT INTO `scm_supplier` VALUES (19, '森庄农品旗舰店', 'TM-SZNPQJD', 0, 0, 0, 0, NULL, '', '', NULL, '13600000000', NULL, NULL, NULL, NULL, '', 1, 1, NULL, '2023-12-29 11:01:03');
INSERT INTO `scm_supplier` VALUES (20, '小仙', 'XFZ001', 0, 0, 0, 0, NULL, '', '', NULL, '18516258530', '上海', '上海市', '松江区', '上海市松江区中山街道松江万达广场一号楼417', '', 0, 0, NULL, '2023-12-29 11:01:03');
INSERT INTO `scm_supplier` VALUES (21, '岳鑫', '', 0, 0, 0, 0, NULL, '', '', NULL, '15081033273', '河北省', '邯郸市', '黄粱梦镇', '河北省 邯郸市 丛台区 黄粱梦镇黄粱梦村', '', 0, 0, NULL, '2023-12-29 11:01:03');
INSERT INTO `scm_supplier` VALUES (22, '三夫食品专营店', 'SFSP', 0, 0, 0, 0, NULL, '', '', NULL, '13600000000', NULL, NULL, NULL, NULL, '', 1, 1, NULL, '2023-12-29 11:01:03');
INSERT INTO `scm_supplier` VALUES (23, '安琪酵母旗舰店', 'ANQIJM', 0, 0, 0, 0, NULL, '', '', NULL, '13600000000', NULL, NULL, NULL, NULL, '', 1, 1, NULL, '2023-12-29 11:01:03');
INSERT INTO `scm_supplier` VALUES (24, '慈溪市观海卫滕洋电器厂', '1688', 0, 0, 0, 0, NULL, '', '', NULL, '13000001111', NULL, NULL, NULL, NULL, '', 1, 1, NULL, '2023-12-29 11:01:03');
INSERT INTO `scm_supplier` VALUES (25, '小熊驾到旗舰店', 'XXJD', 0, 0, 0, 0, NULL, '', '', NULL, '13600000000', NULL, NULL, NULL, NULL, '', 1, 1, NULL, '2023-12-29 11:01:03');
INSERT INTO `scm_supplier` VALUES (26, '韩牛服饰', 'HN', 0, 0, 0, 0, NULL, '', '', NULL, '13249571426', NULL, NULL, NULL, NULL, '', 0, 0, NULL, '2023-12-29 11:01:03');
INSERT INTO `scm_supplier` VALUES (27, '深圳市罗湖区晨蝶衣服装厂', 'CDYFZC', 0, 0, 0, 0, NULL, '', '', NULL, '13600000000', NULL, NULL, NULL, NULL, '', 1, 1, NULL, '2023-12-29 11:01:03');
INSERT INTO `scm_supplier` VALUES (28, '广州衣菲妮服装厂', 'YIFEINI', 0, 0, 0, 0, NULL, '', '', NULL, '13600000000', NULL, NULL, NULL, NULL, '', 1, 1, NULL, '2023-12-29 11:01:03');
INSERT INTO `scm_supplier` VALUES (29, '中山欧熙妮服饰有限公司', 'ZSOXNFS', 0, 0, 0, 0, NULL, '', '', NULL, '13600000000', NULL, NULL, NULL, NULL, '', 0, 0, NULL, '2023-12-29 11:01:03');
INSERT INTO `scm_supplier` VALUES (30, '零零伊', NULL, 0, 0, 0, 0, NULL, '', '抖音', NULL, 'fsd1027', NULL, NULL, NULL, '', '', 0, 0, NULL, '2023-12-29 11:01:03');
INSERT INTO `scm_supplier` VALUES (31, '中山市金客隆服饰有限公司', 'JKL', 0, 0, 0, 0, NULL, '', '', NULL, '13600000000', NULL, NULL, NULL, NULL, '', 0, 0, NULL, '2023-12-29 11:01:04');
INSERT INTO `scm_supplier` VALUES (32, '广州柚柚子服饰商行', 'GZYYZ', 0, 0, 0, 0, NULL, '', '', NULL, '18557527708', NULL, NULL, NULL, NULL, '', 0, 0, NULL, '2023-12-29 11:01:04');
INSERT INTO `scm_supplier` VALUES (33, '中山裤豪', 'ZSKH', 0, 0, 0, 0, NULL, '档口微信18928102400陈小姐工厂微信18022115438何超贤 ', '', NULL, '18928102400', NULL, NULL, NULL, '中山市沙溪镇水牛城三区二楼35-38卡', '', 0, 0, NULL, '2023-12-29 11:01:04');

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '字典数据表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2023-08-07 19:31:38', '', NULL, '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2023-08-07 19:31:38', '', NULL, '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2023-08-07 19:31:38', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2023-08-07 19:31:38', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2023-08-07 19:31:38', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2023-08-07 19:31:38', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2023-08-07 19:31:38', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2023-08-07 19:31:38', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2023-08-07 19:31:38', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2023-08-07 19:31:38', '', NULL, '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2023-08-07 19:31:38', '', NULL, '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2023-08-07 19:31:38', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2023-08-07 19:31:38', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2023-08-07 19:31:38', '', NULL, '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2023-08-07 19:31:38', '', NULL, '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2023-08-07 19:31:38', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2023-08-07 19:31:38', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 99, '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2023-08-07 19:31:38', '', NULL, '其他操作');
INSERT INTO `sys_dict_data` VALUES (19, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2023-08-07 19:31:38', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` VALUES (20, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2023-08-07 19:31:38', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` VALUES (21, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-08-07 19:31:38', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` VALUES (22, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2023-08-07 19:31:38', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` VALUES (23, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-08-07 19:31:38', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` VALUES (24, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-08-07 19:31:38', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` VALUES (25, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-08-07 19:31:38', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` VALUES (26, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-08-07 19:31:38', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` VALUES (27, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-08-07 19:31:38', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` VALUES (28, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2023-08-07 19:31:38', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (29, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2023-08-07 19:31:38', '', NULL, '停用状态');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '字典类型表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2023-08-07 19:31:38', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2023-08-07 19:31:38', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2023-08-07 19:31:38', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2023-08-07 19:31:38', '', NULL, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2023-08-07 19:31:38', '', NULL, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2023-08-07 19:31:38', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2023-08-07 19:31:38', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2023-08-07 19:31:38', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2023-08-07 19:31:38', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2023-08-07 19:31:38', '', NULL, '登录状态列表');

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE,
  INDEX `idx_sys_logininfor_s`(`status`) USING BTREE,
  INDEX `idx_sys_logininfor_lt`(`login_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统访问记录' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (1, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-01-13 19:29:08');
INSERT INTO `sys_logininfor` VALUES (2, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-01-13 20:22:02');
INSERT INTO `sys_logininfor` VALUES (3, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-01-13 22:30:52');
INSERT INTO `sys_logininfor` VALUES (4, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-01-14 00:01:24');
INSERT INTO `sys_logininfor` VALUES (5, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-01-14 10:00:50');
INSERT INTO `sys_logininfor` VALUES (6, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-01-14 11:05:33');
INSERT INTO `sys_logininfor` VALUES (7, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-01-14 11:57:27');
INSERT INTO `sys_logininfor` VALUES (8, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-01-14 12:57:19');
INSERT INTO `sys_logininfor` VALUES (9, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-01-14 14:52:13');
INSERT INTO `sys_logininfor` VALUES (10, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-01-14 16:15:12');
INSERT INTO `sys_logininfor` VALUES (11, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-01-14 18:51:18');
INSERT INTO `sys_logininfor` VALUES (12, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-01-15 11:38:23');
INSERT INTO `sys_logininfor` VALUES (13, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-01-15 14:35:52');
INSERT INTO `sys_logininfor` VALUES (14, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-01-15 18:32:32');
INSERT INTO `sys_logininfor` VALUES (15, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-01-15 19:02:57');
INSERT INTO `sys_logininfor` VALUES (16, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-01-15 19:45:03');
INSERT INTO `sys_logininfor` VALUES (17, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-01-15 20:38:14');
INSERT INTO `sys_logininfor` VALUES (18, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-01-15 21:13:41');
INSERT INTO `sys_logininfor` VALUES (19, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-01-16 09:11:56');
INSERT INTO `sys_logininfor` VALUES (20, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-01-16 13:42:46');
INSERT INTO `sys_logininfor` VALUES (21, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-01-18 17:26:16');
INSERT INTO `sys_logininfor` VALUES (22, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-01-18 18:56:13');
INSERT INTO `sys_logininfor` VALUES (23, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', 'Unable to connect to Redis; nested exception is org.springframework.data.redis.connection.PoolException: Could not get a resource from the pool; nested exception is io.lettuce.core.RedisConnectionException: Unable to connect to 127.0.0.1/<unresolved>:6379', '2024-01-19 14:23:14');
INSERT INTO `sys_logininfor` VALUES (24, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-01-19 14:23:48');
INSERT INTO `sys_logininfor` VALUES (25, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-01-19 14:35:47');
INSERT INTO `sys_logininfor` VALUES (26, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-01-27 20:22:04');
INSERT INTO `sys_logininfor` VALUES (27, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-01-27 21:01:21');
INSERT INTO `sys_logininfor` VALUES (28, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-01-28 11:03:32');
INSERT INTO `sys_logininfor` VALUES (29, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-01-28 12:38:55');
INSERT INTO `sys_logininfor` VALUES (30, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-01-28 13:09:27');
INSERT INTO `sys_logininfor` VALUES (31, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-01-28 14:33:07');
INSERT INTO `sys_logininfor` VALUES (32, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-01-28 19:19:58');
INSERT INTO `sys_logininfor` VALUES (33, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-02-17 10:09:48');
INSERT INTO `sys_logininfor` VALUES (34, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2024-03-17 16:50:42');
INSERT INTO `sys_logininfor` VALUES (35, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-18 08:22:39');
INSERT INTO `sys_logininfor` VALUES (36, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-18 08:42:43');
INSERT INTO `sys_logininfor` VALUES (37, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-18 18:29:41');
INSERT INTO `sys_logininfor` VALUES (38, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-24 18:44:22');
INSERT INTO `sys_logininfor` VALUES (39, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-24 19:30:24');
INSERT INTO `sys_logininfor` VALUES (40, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-24 20:26:51');
INSERT INTO `sys_logininfor` VALUES (41, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-24 22:49:19');
INSERT INTO `sys_logininfor` VALUES (42, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-04-01 15:37:17');

-- ----------------------------
-- Table structure for sys_logistics_company
-- ----------------------------
DROP TABLE IF EXISTS `sys_logistics_company`;
CREATE TABLE `sys_logistics_company`  (
  `id` bigint NOT NULL COMMENT '主键ID',
  `platform_id` int NULL DEFAULT NULL COMMENT '平台id',
  `shop_id` int NULL DEFAULT NULL COMMENT '店铺ID',
  `logistics_id` bigint NULL DEFAULT NULL COMMENT '物流公司id（值来自于平台返回）',
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '物流公司编码（值来自于平台返回）',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '物流公司名称（值来自于平台返回）',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `status` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_logistics_company
-- ----------------------------

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int NULL DEFAULT 0 COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '路由参数',
  `is_frame` int NULL DEFAULT 1 COMMENT '是否为外链（0是 1否）',
  `is_cache` int NULL DEFAULT 0 COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2078 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '菜单权限表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 99, 'system', '', '', 1, 0, 'M', '0', '0', '', 'system', 'admin', '2023-12-27 15:00:27', 'admin', '2023-12-29 09:07:42.856856', '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 100, 'monitor', '', '', 1, 0, 'M', '1', '0', '', 'monitor', 'admin', '2023-12-27 15:00:27', 'admin', '2024-03-24 21:09:18', '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 101, 'tool', '', '', 1, 0, 'M', '1', '0', '', 'tool', 'admin', '2023-12-27 15:00:27', 'admin', '2024-03-24 21:09:13', '系统工具目录');
INSERT INTO `sys_menu` VALUES (4, '采购管理', 0, 1, 'scm', '', '', 1, 0, 'M', '0', '1', '', 'server', 'admin', '2023-12-27 15:00:27', 'admin', '2024-04-05 00:00:20', '至简官网地址');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, 'user', 'system/user/index', '', 1, 0, 'C', '0', '0', 'system:user:list', 'user', 'admin', '2023-12-27 15:00:27', '', '', '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, 'role', 'system/role/index', '', 1, 0, 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2023-12-27 15:00:27', '', '', '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, 'menu', 'system/menu/index', '', 1, 0, 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2023-12-27 15:00:27', '', '', '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, 'dept', 'system/dept/index', '', 1, 0, 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2023-12-27 15:00:27', '', '', '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, 'post', 'system/post/index', '', 1, 0, 'C', '0', '0', 'system:post:list', 'post', 'admin', '2023-12-27 15:00:27', '', '', '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, 'dict', 'system/dict/index', '', 1, 0, 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2023-12-27 15:00:27', '', '', '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, 'config', 'system/config/index', '', 1, 0, 'C', '0', '0', 'system:config:list', 'edit', 'admin', '2023-12-27 15:00:27', '', '', '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, 'notice', 'system/notice/index', '', 1, 0, 'C', '0', '0', 'system:notice:list', 'message', 'admin', '2023-12-27 15:00:27', '', '', '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, 'log', '', '', 1, 0, 'M', '0', '0', '', 'log', 'admin', '2023-12-27 15:00:27', '', '', '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, 'online', 'monitor/online/index', '', 1, 0, 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2023-12-27 15:00:27', '', '', '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, 'job', 'monitor/job/index', '', 1, 0, 'C', '0', '0', 'monitor:job:list', 'job', 'admin', '2023-12-27 15:00:27', '', '', '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, 'druid', 'monitor/druid/index', '', 1, 0, 'C', '0', '0', 'monitor:druid:list', 'druid', 'admin', '2023-12-27 15:00:27', '', '', '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 4, 'server', 'monitor/server/index', '', 1, 0, 'C', '0', '0', 'monitor:server:list', 'server', 'admin', '2023-12-27 15:00:27', '', '', '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '缓存监控', 2, 5, 'cache', 'monitor/cache/index', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis', 'admin', '2023-12-27 15:00:27', '', '', '缓存监控菜单');
INSERT INTO `sys_menu` VALUES (114, '缓存列表', 2, 6, 'cacheList', 'monitor/cache/list', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis-list', 'admin', '2023-12-27 15:00:27', '', '', '缓存列表菜单');
INSERT INTO `sys_menu` VALUES (115, '表单构建', 3, 1, 'build', 'tool/build/index', '', 1, 0, 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2023-12-27 15:00:27', '', '', '表单构建菜单');
INSERT INTO `sys_menu` VALUES (116, '代码生成', 3, 2, 'gen', 'tool/gen/index', '', 1, 0, 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2023-12-27 15:00:27', '', '', '代码生成菜单');
INSERT INTO `sys_menu` VALUES (117, '系统接口', 3, 3, 'swagger', 'tool/swagger/index', '', 1, 0, 'C', '0', '0', 'tool:swagger:list', 'swagger', 'admin', '2023-12-27 15:00:27', '', '', '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, 'operlog', 'monitor/operlog/index', '', 1, 0, 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2023-12-27 15:00:27', '', '', '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, 'logininfor', 'monitor/logininfor/index', '', 1, 0, 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2023-12-27 15:00:27', '', '', '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1000, '用户查询', 100, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:user:query', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1001, '用户新增', 100, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:user:add', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1002, '用户修改', 100, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:user:edit', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1003, '用户删除', 100, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:user:remove', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1004, '用户导出', 100, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:user:export', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1005, '用户导入', 100, 6, '', '', '', 1, 0, 'F', '0', '0', 'system:user:import', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1006, '重置密码', 100, 7, '', '', '', 1, 0, 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1007, '角色查询', 101, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:role:query', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1008, '角色新增', 101, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:role:add', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1009, '角色修改', 101, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:role:edit', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1010, '角色删除', 101, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:role:remove', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1011, '角色导出', 101, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:role:export', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1012, '菜单查询', 102, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:query', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1013, '菜单新增', 102, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:add', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1014, '菜单修改', 102, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1015, '菜单删除', 102, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1016, '部门查询', 103, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:query', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1017, '部门新增', 103, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:add', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1018, '部门修改', 103, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1019, '部门删除', 103, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1020, '岗位查询', 104, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:post:query', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1021, '岗位新增', 104, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:post:add', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1022, '岗位修改', 104, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:post:edit', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1023, '岗位删除', 104, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:post:remove', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1024, '岗位导出', 104, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:post:export', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1025, '字典查询', 105, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:query', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1026, '字典新增', 105, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:add', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1027, '字典修改', 105, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1028, '字典删除', 105, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1029, '字典导出', 105, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:export', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1030, '参数查询', 106, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:query', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1031, '参数新增', 106, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:add', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1032, '参数修改', 106, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:edit', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1033, '参数删除', 106, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:remove', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1034, '参数导出', 106, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:export', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1035, '公告查询', 107, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:query', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1036, '公告新增', 107, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:add', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1037, '公告修改', 107, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1038, '公告删除', 107, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1039, '操作查询', 500, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1040, '操作删除', 500, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1041, '日志导出', 500, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1042, '登录查询', 501, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1043, '登录删除', 501, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1044, '日志导出', 501, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1045, '账户解锁', 501, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:unlock', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1046, '在线查询', 109, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1047, '批量强退', 109, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1048, '单条强退', 109, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1049, '任务查询', 110, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1050, '任务新增', 110, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1051, '任务修改', 110, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1052, '任务删除', 110, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1053, '状态修改', 110, 5, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1054, '任务导出', 110, 6, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1055, '生成查询', 116, 1, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1056, '生成修改', 116, 2, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1057, '生成删除', 116, 3, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1058, '导入代码', 116, 4, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1059, '预览代码', 116, 5, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (1060, '生成代码', 116, 6, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2023-12-27 15:00:27', '', '', '');
INSERT INTO `sys_menu` VALUES (2000, '市场洞察', 0, 20, 'data', '', '', 1, 0, 'M', '0', '1', '', 'international', 'admin', '2023-12-22 16:20:02', 'admin', '2024-01-12 18:36:19', '');
INSERT INTO `sys_menu` VALUES (2001, '热搜词', 2000, 1, 'keyword/hot_keyword_list', 'data/keyword/hot_keyword', '', 1, 0, 'C', '0', '0', 'data:keyword:list', 'dict', 'admin', '2023-12-22 16:22:59', 'admin', '2023-12-26 11:55:45', '');
INSERT INTO `sys_menu` VALUES (2002, '推荐商品', 2000, 8, 'goods/goods_recommend', 'data/goods/recommend_list', '', 1, 0, 'C', '1', '0', 'data:goods:recommend', 'star', 'admin', '2023-12-25 16:57:48', 'admin', '2023-12-29 09:07:16.570167', '');
INSERT INTO `sys_menu` VALUES (2003, '商品热卖榜', 2000, 9, 'goods/sale_hot_list', 'data/goods/sale_hot_list', '', 1, 0, 'C', '1', '0', 'data:goods:salehot', 'list', 'admin', '2023-12-25 17:08:24', 'admin', '2023-12-29 09:07:20.615237', '');
INSERT INTO `sys_menu` VALUES (2004, '市场动态', 2000, 0, 'market_info', 'data/market/info', '', 1, 0, 'C', '1', '0', 'data:market:info', 'guide', 'admin', '2023-12-26 11:55:33', 'admin', '2023-12-29 09:07:09.697533', '');
INSERT INTO `sys_menu` VALUES (2005, '供应商管理', 4, 9, 'supplier/list', 'scm/supplier/index', '', 1, 0, 'C', '0', '0', 'scm:supplier', 'qq', 'admin', '2023-12-29 09:14:02', 'admin', '2023-12-29 09:17:27.514466', '');
INSERT INTO `sys_menu` VALUES (2006, '商品管理', 0, 9, 'goods', '', '', 1, 0, 'M', '0', '0', '', 'theme', 'admin', '2023-12-29 13:29:44', '', '', '');
INSERT INTO `sys_menu` VALUES (2007, '商品管理', 2006, 1, 'goods_list', 'goods/index', '', 1, 0, 'C', '0', '0', 'goods:list', 'theme', 'admin', '2023-12-29 13:31:01', 'admin', '2023-12-29 15:02:40.869685', '');
INSERT INTO `sys_menu` VALUES (2008, '商品分类', 2006, 88, 'goods_category', 'goods/category/index', '', 1, 0, 'C', '0', '0', 'goods:category', 'tree-table', 'admin', '2023-12-29 13:32:41', 'admin', '2023-12-29 15:02:22.220534', '');
INSERT INTO `sys_menu` VALUES (2009, '品牌管理', 2006, 99, 'goods/brand', 'goods/brand/index', '', 1, 0, 'C', '0', '0', 'goods:brand', 'clipboard', 'admin', '2023-12-29 13:34:49', 'admin', '2023-12-29 13:58:43.724029', '');
INSERT INTO `sys_menu` VALUES (2010, '采购订单管理', 4, 1, 'purchase/order', 'scm/purchase/order', '', 1, 0, 'C', '0', '0', 'scm:purchase:order', 'button', 'admin', '2023-12-29 16:35:55', 'admin', '2023-12-29 16:36:57.653118', '');
INSERT INTO `sys_menu` VALUES (2011, '采购合同管理', 4, 2, 'purchase/contract', 'scm/purchase/contract', '', 1, 0, 'C', '0', '1', 'scm:purchase:contract', 'clipboard', 'admin', '2023-12-29 16:39:43', 'admin', '2023-12-30 18:07:58.363465', '');
INSERT INTO `sys_menu` VALUES (2012, '采购物流管理', 4, 3, 'purchase/ship', 'scm/purchase/ship', '', 1, 0, 'C', '0', '0', 'scm:purchase:ship', 'component', 'admin', '2023-12-29 16:45:42', 'admin', '2023-12-30 20:48:47.282509', '');
INSERT INTO `sys_menu` VALUES (2013, '采购费用管理', 4, 4, 'purchase/cost', 'scm/purchase/cost', '', 1, 0, 'C', '0', '1', 'scm:purchase:cost', 'checkbox', 'admin', '2023-12-29 16:47:07', 'admin', '2024-01-13 18:32:21', '');
INSERT INTO `sys_menu` VALUES (2014, '订单管理', 0, 2, 'sale', '', '', 1, 0, 'M', '0', '0', '', 'shopping', 'admin', '2023-12-29 16:53:03', 'admin', '2024-03-24 19:31:53', '');
INSERT INTO `sys_menu` VALUES (2015, '店铺管理', 2014, 10, 'shop', 'shop/index', '', 1, 0, 'C', '0', '0', 'shop:list', 'example', 'admin', '2023-12-29 16:54:02', 'admin', '2024-01-04 14:39:08', '');
INSERT INTO `sys_menu` VALUES (2016, '店铺商品管理', 2014, 9, 'shop/goods', 'shop/goods', '', 1, 0, 'C', '0', '1', 'shop:goods', 'color', 'admin', '2023-12-29 17:02:42', 'admin', '2024-01-14 14:04:20', '');
INSERT INTO `sys_menu` VALUES (2017, '店铺数据统计', 2014, 8, 'data', 'shop/data', '', 1, 0, 'C', '0', '1', 'shop:data', 'chart', 'admin', '2023-12-29 17:04:08', 'admin', '2023-12-31 19:04:58.785609', '');
INSERT INTO `sys_menu` VALUES (2018, '财务管理', 0, 6, 'fms', '', '', 1, 0, 'M', '0', '1', '', 'money', 'admin', '2023-12-29 17:07:23', 'admin', '2024-03-24 21:08:38', '');
INSERT INTO `sys_menu` VALUES (2019, '采购账单管理', 2018, 1, 'purchase', 'scm/purchase/cost', '', 1, 0, 'C', '0', '1', '', 'shopping', 'admin', '2023-12-29 17:09:32', 'admin', '2024-01-28 11:22:15', '');
INSERT INTO `sys_menu` VALUES (2021, '创建采购订单', 4, 0, 'purchase/order/create', 'scm/purchase/order/create', '', 1, 0, 'C', '1', '0', '', 'edit', 'admin', '2023-12-29 21:23:45', 'admin', '2024-01-06 23:56:06', '');
INSERT INTO `sys_menu` VALUES (2025, '采购订单详情', 4, 1, 'purchase/order/detail', 'scm/purchase/order/detail', '', 1, 0, 'C', '1', '0', '', 'button', 'admin', '2023-12-30 17:08:01', 'admin', '2023-12-30 17:09:38.154348', '');
INSERT INTO `sys_menu` VALUES (2026, '库存管理', 0, 5, 'wms', '', '', 1, 0, 'M', '0', '0', '', 'stock1', 'admin', '2023-12-31 12:14:33', 'admin', '2024-01-14 15:10:51', '');
INSERT INTO `sys_menu` VALUES (2027, '入库管理', 2026, 0, 'stock_in_entry/list', 'wms/stockInEntry', '', 1, 0, 'C', '0', '0', 'wms:stock_in_entry:list', 'stockin', 'admin', '2023-12-31 12:27:37', 'admin', '2024-01-14 15:12:48', '');
INSERT INTO `sys_menu` VALUES (2028, '生成采购入库单', 4, 3, 'purchase/ship/create_stock_in_entry', 'scm/purchase/ship/create_stock_in_entry', '', 1, 0, 'C', '1', '0', '', 'button', 'admin', '2023-12-31 12:31:32', 'admin', '2023-12-31 12:37:39.956753', '');
INSERT INTO `sys_menu` VALUES (2029, '店铺售后导入', 2053, 2, 'shop_refund', 'shop/refund/index', '', 1, 0, 'C', '0', '0', '', 'clipboard', 'admin', '2023-12-31 17:29:03', 'admin', '2024-03-24 20:29:07', '');
INSERT INTO `sys_menu` VALUES (2030, '手动创建订单', 2014, 1, 'order/create', 'sale/order/create', '', 1, 0, 'C', '1', '0', '', 'documentation', 'admin', '2023-12-31 20:01:22', 'admin', '2024-03-24 19:32:32', '');
INSERT INTO `sys_menu` VALUES (2032, 'API拉取订单', 2014, 3, 'order/pull', 'shop/order/pull', '', 1, 0, 'M', '0', '1', '', 'upload', 'admin', '2023-12-31 20:04:12', 'admin', '2024-01-01 14:34:22.157829', '');
INSERT INTO `sys_menu` VALUES (2033, '订单查询', 2014, 1, 'order/list', 'sale/order/index', '', 1, 0, 'C', '0', '0', '', 'list', 'admin', '2023-12-31 20:05:05', 'admin', '2024-03-24 19:32:00', '');
INSERT INTO `sys_menu` VALUES (2034, '发货管理', 0, 3, 'ship', '', '', 1, 0, 'M', '0', '0', '', 'excel', 'admin', '2024-01-01 14:08:04', 'admin', '2024-01-03 14:07:29', '');
INSERT INTO `sys_menu` VALUES (2035, '多多售后', 2029, 2, 'pdd', 'pdd/refund', '', 1, 0, 'C', '0', '0', '', 'cascader', 'admin', '2024-01-01 14:13:47', 'admin', '2024-01-13 10:28:36', '');
INSERT INTO `sys_menu` VALUES (2036, '网店订单导入', 2014, 2, 'shop_order', 'shop/order/index', '', 1, 0, 'C', '0', '0', '', 'excel', 'admin', '2024-01-01 14:14:42', 'admin', '2024-03-24 20:35:32', '');
INSERT INTO `sys_menu` VALUES (2037, '多多订单', 2036, 2, 'pdd', 'pdd/order', '', 1, 0, 'C', '0', '0', '', 'button', 'admin', '2024-01-01 14:15:28', 'admin', '2024-01-05 18:45:37', '');
INSERT INTO `sys_menu` VALUES (2038, '拼多多订单拉取', 2032, 0, 'pdd', '', '', 1, 0, 'C', '0', '0', '', 'bug', 'admin', '2024-01-01 14:20:19', '', '', '');
INSERT INTO `sys_menu` VALUES (2039, '抖店订单', 2036, 3, 'dou', 'dou/order', '', 1, 0, 'C', '0', '0', '', 'cascader', 'admin', '2024-01-01 14:35:27', 'admin', '2024-01-05 18:45:29', '');
INSERT INTO `sys_menu` VALUES (2040, '淘宝订单', 2036, 1, 'tao', 'tao/order', NULL, 1, 0, 'C', '0', '0', '', 'checkbox', 'admin', '2024-01-02 13:54:15', 'admin', '2024-01-05 17:43:20', '');
INSERT INTO `sys_menu` VALUES (2041, '抖店售后', 2029, 3, 'dou', 'dou/refund', NULL, 1, 0, 'C', '0', '0', '', 'checkbox', 'admin', '2024-01-02 14:11:34', 'admin', '2024-01-13 10:28:26', '');
INSERT INTO `sys_menu` VALUES (2042, '淘宝售后', 2029, 1, 'tao', 'tao/refund', NULL, 1, 0, 'C', '0', '0', '', 'edit', 'admin', '2024-01-02 14:11:56', 'admin', '2024-01-13 10:18:57', '');
INSERT INTO `sys_menu` VALUES (2043, '小红书', 2036, 4, 'xhs', 'xhs/order', NULL, 1, 0, 'C', '0', '1', '', 'color', 'admin', '2024-01-02 18:53:14', 'admin', '2024-01-13 10:27:50', '');
INSERT INTO `sys_menu` VALUES (2044, '小红书', 2029, 4, 'xhs', 'xhs/refund', NULL, 1, 0, 'C', '0', '1', '', 'cascader', 'admin', '2024-01-03 09:18:53', 'admin', '2024-01-13 10:31:52', '');
INSERT INTO `sys_menu` VALUES (2046, '出库管理', 2026, 5, 'stockOut', 'wms/stockOutEntry', NULL, 1, 0, 'C', '0', '0', '', 'link', 'admin', '2024-01-03 11:00:53', 'admin', '2024-01-12 15:52:19', '');
INSERT INTO `sys_menu` VALUES (2047, '库存查询', 2026, 6, 'goodsInventory', 'goods/goodsInventory', NULL, 1, 0, 'C', '0', '0', '', 'monitor', 'admin', '2024-01-03 11:01:14', 'admin', '2024-01-09 17:55:33', '');
INSERT INTO `sys_menu` VALUES (2048, '库存盘点', 2026, 9, 'pan', NULL, NULL, 1, 0, 'C', '0', '1', '', 'bug', 'admin', '2024-01-03 11:01:43', 'admin', '2024-01-09 19:57:08', '');
INSERT INTO `sys_menu` VALUES (2049, '打包发货', 2034, 3, 'shipping', 'wms/orderShipping/shipping', NULL, 1, 0, 'C', '0', '0', '', 'guide', 'admin', '2024-01-03 14:09:18', 'admin', '2024-01-10 09:21:26', '');
INSERT INTO `sys_menu` VALUES (2051, '物流跟踪', 2034, 4, 'logistics', 'wms/orderShipping/logistics', NULL, 1, 0, 'C', '0', '0', '', 'email', 'admin', '2024-01-03 14:13:12', 'admin', '2024-01-12 17:03:49', '');
INSERT INTO `sys_menu` VALUES (2052, '发货统计', 2034, 9, 'statistics', NULL, NULL, 1, 0, 'C', '0', '1', '', '404', 'admin', '2024-01-03 14:14:09', 'admin', '2024-01-12 08:59:52', '');
INSERT INTO `sys_menu` VALUES (2053, '售后管理', 0, 4, 'saleafter', NULL, NULL, 1, 0, 'M', '0', '0', '', 'clipboard', 'admin', '2024-01-03 14:23:55', 'admin', '2024-01-12 19:47:33', '');
INSERT INTO `sys_menu` VALUES (2054, '售后管理', 2053, 1, 'refund_list', 'sale/returned', NULL, 1, 0, 'C', '0', '0', '', 'size', 'admin', '2024-01-03 14:24:36', 'admin', '2024-03-24 20:28:24', '');
INSERT INTO `sys_menu` VALUES (2055, '客户管理', 0, 7, 'kefu', NULL, NULL, 1, 0, 'M', '0', '1', '', 'button', 'admin', '2024-01-03 14:27:59', 'admin', '2024-01-12 09:00:43', '');
INSERT INTO `sys_menu` VALUES (2056, '客户管理', 2055, 0, '0', NULL, NULL, 1, 0, 'C', '0', '0', NULL, '404', 'admin', '2024-01-03 14:28:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2057, '供应商代发管理', 2034, 99, 'supplier/agentShipping', 'scm/agentShipping', NULL, 1, 0, 'C', '0', '0', '', 'clipboard', 'admin', '2024-01-06 23:57:14', 'admin', '2024-03-24 20:30:29', '');
INSERT INTO `sys_menu` VALUES (2058, '代发结算', 4, 6, 'daifajiesuan', NULL, NULL, 1, 0, 'C', '0', '1', '', 'documentation', 'admin', '2024-01-06 23:59:17', 'admin', '2024-01-12 08:58:52', '');
INSERT INTO `sys_menu` VALUES (2059, '备货清单', 2034, 1, 'stocking', 'wms/orderShipping/stocking', '{\"status\":0}', 1, 0, 'C', '0', '0', '', 'component', 'admin', '2024-01-09 11:51:52', 'admin', '2024-01-11 19:59:40', '');
INSERT INTO `sys_menu` VALUES (2060, '拣货出库', 2034, 2, 'stockout', 'wms/orderShipping/stockOut', NULL, 1, 0, 'C', '0', '0', '', 'bug', 'admin', '2024-01-09 13:39:00', 'admin', '2024-01-12 15:51:56', '');
INSERT INTO `sys_menu` VALUES (2061, '库位管理', 2026, 99, 'stock_location', 'wms/location', NULL, 1, 0, 'C', '0', '0', '', 'education', 'admin', '2024-01-09 13:54:30', 'admin', '2024-01-09 14:50:33', '');
INSERT INTO `sys_menu` VALUES (2062, '代发账单', 4, 3, 'agentShip', 'fms/payable/agentShip', NULL, 1, 0, 'C', '0', '0', '', 'theme', 'admin', '2024-01-12 18:35:02', 'admin', '2024-03-24 21:07:38', '');
INSERT INTO `sys_menu` VALUES (2063, '物流费用', 2034, 3, 'shipFee', 'fms/payable/shipFee', NULL, 1, 0, 'C', '0', '0', '', 'guide', 'admin', '2024-01-12 18:35:31', 'admin', '2024-03-24 21:07:53', '');
INSERT INTO `sys_menu` VALUES (2064, '店铺账单管理', 2018, 4, 's', NULL, NULL, 1, 0, 'M', '0', '1', '', 'example', 'admin', '2024-01-12 18:35:55', 'admin', '2024-01-16 15:28:47', '');
INSERT INTO `sys_menu` VALUES (2066, '添加商品', 2006, 2, 'create', 'goods/create', NULL, 1, 0, 'C', '0', '0', NULL, 'component', 'admin', '2024-01-14 19:42:11', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2067, '商品规格查询', 2006, 3, 'spec_list', 'goods/spec', NULL, 1, 0, 'C', '0', '0', '', 'theme', 'admin', '2024-01-16 14:17:39', 'admin', '2024-01-16 14:18:10', '');
INSERT INTO `sys_menu` VALUES (2068, '应收管理', 2018, 1, 'receivable', NULL, NULL, 1, 0, 'M', '0', '0', NULL, 'example', 'admin', '2024-01-28 11:23:36', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2069, '订单收入', 2068, 1, 'order', 'fms/receivable/order', NULL, 1, 0, 'C', '0', '0', '', 'checkbox', 'admin', '2024-01-28 11:24:35', 'admin', '2024-01-28 14:48:11', '');
INSERT INTO `sys_menu` VALUES (2070, '退款款项', 2068, 2, 'refund', NULL, NULL, 1, 0, 'M', '0', '0', NULL, 'bug', 'admin', '2024-01-28 11:26:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2071, '平台服务费', 2068, 3, 'service_fee', NULL, NULL, 1, 0, 'M', '0', '1', '', 'cascader', 'admin', '2024-01-28 11:28:03', 'admin', '2024-01-28 19:35:31', '');
INSERT INTO `sys_menu` VALUES (2072, '应付管理', 2018, 2, 'payable', NULL, NULL, 1, 0, 'M', '0', '0', NULL, 'clipboard', 'admin', '2024-01-28 11:29:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2073, '采购应付', 4, 1, 'purchase', 'fms/payable/purchase', NULL, 1, 0, 'C', '0', '0', '', 'component', 'admin', '2024-01-28 11:30:49', 'admin', '2024-03-24 21:07:23', '');
INSERT INTO `sys_menu` VALUES (2074, '采购退货', 2072, 2, 'return', NULL, NULL, 1, 0, 'C', '0', '0', NULL, 'cascader', 'admin', '2024-01-28 11:32:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2075, '营销费用', 2072, 5, 'market_fee', NULL, NULL, 1, 0, 'C', '0', '0', NULL, 'cascader', 'admin', '2024-01-28 11:33:36', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2076, '其他费用', 2072, 6, 'other_fee', NULL, NULL, 1, 0, 'C', '0', '1', '', 'clipboard', 'admin', '2024-01-28 11:34:01', 'admin', '2024-01-28 19:49:00', '');
INSERT INTO `sys_menu` VALUES (2077, '存货报表', 2018, 3, 'inventory_report', 'fms/inventoryReport', NULL, 1, 0, 'C', '0', '0', '', 'druid', 'admin', '2024-01-28 11:36:05', 'admin', '2024-01-28 14:49:01', '');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime NULL DEFAULT NULL COMMENT '操作时间',
  `cost_time` bigint NULL DEFAULT 0 COMMENT '消耗时间',
  PRIMARY KEY (`oper_id`) USING BTREE,
  INDEX `idx_sys_oper_log_bt`(`business_type`) USING BTREE,
  INDEX `idx_sys_oper_log_s`(`status`) USING BTREE,
  INDEX `idx_sys_oper_log_ot`(`oper_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 174 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '操作日志记录' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (1, '淘宝订单', 1, 'com.qihang.erp.api.controller.TaoOrderController.add()', 'POST', 1, 'admin', NULL, '/tao/order', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"params\":{},\"taoOrderItemList\":[]}', '{\"msg\":\"请添加商品\",\"code\":506}', 0, NULL, '2024-01-13 20:31:20', 31);
INSERT INTO `sys_oper_log` VALUES (2, '淘宝退款订单', 1, 'com.qihang.erp.api.controller.TaoOrderRefundController.add()', 'POST', 1, 'admin', NULL, '/tao/taoRefund', '127.0.0.1', '内网IP', '{\"afterSalesType\":1,\"num\":1,\"oid\":\"3238963057148759844\",\"params\":{},\"refundFee\":82.21,\"tid\":\"3238963057148759844\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-13 20:58:32', 25131);
INSERT INTO `sys_oper_log` VALUES (3, '淘宝退款订单', 1, 'com.qihang.erp.api.controller.TaoOrderRefundController.add()', 'POST', 1, 'admin', NULL, '/tao/taoRefund', '127.0.0.1', '内网IP', '{\"afterSalesType\":9,\"num\":1,\"oid\":\"3238963057148759844\",\"params\":{},\"refundFee\":82.21,\"refundId\":\"11\",\"tid\":\"3238963057148759844\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-13 21:00:25', 7879);
INSERT INTO `sys_oper_log` VALUES (4, '淘宝退款订单', 1, 'com.qihang.erp.api.controller.TaoOrderRefundController.add()', 'POST', 1, 'admin', NULL, '/tao/taoRefund', '127.0.0.1', '内网IP', '{\"afterSalesType\":9,\"num\":1,\"oid\":\"3238963057148759844\",\"params\":{},\"refundFee\":82.21,\"refundId\":\"11\",\"tid\":\"3238963057148759844\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-13 21:00:32', 0);
INSERT INTO `sys_oper_log` VALUES (5, '淘宝退款订单', 1, 'com.qihang.erp.api.controller.TaoOrderRefundController.add()', 'POST', 1, 'admin', NULL, '/tao/taoRefund', '127.0.0.1', '内网IP', '{\"afterSalesType\":9,\"num\":1,\"oid\":\"3238963057148759844\",\"params\":{},\"refundFee\":82.21,\"refundId\":\"11\",\"tid\":\"3238963057148759844\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-13 21:00:36', 0);
INSERT INTO `sys_oper_log` VALUES (6, '淘宝退款订单', 1, 'com.qihang.erp.api.controller.TaoOrderRefundController.add()', 'POST', 1, 'admin', NULL, '/tao/taoRefund', '127.0.0.1', '内网IP', '{\"afterSalesType\":3,\"num\":1,\"oid\":\"3238963057148759844\",\"params\":{},\"refundFee\":82.21,\"refundId\":\"2323\",\"tid\":\"3238963057148759844\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-13 21:01:10', 0);
INSERT INTO `sys_oper_log` VALUES (7, '淘宝退款订单', 1, 'com.qihang.erp.api.controller.TaoOrderRefundController.add()', 'POST', 1, 'admin', NULL, '/tao/taoRefund', '127.0.0.1', '内网IP', '{\"afterSalesType\":9,\"num\":1,\"oid\":\"3238963057148759844\",\"params\":{},\"refundFee\":82.21,\"refundId\":\"dd\",\"tid\":\"3238963057148759844\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-13 21:01:56', 0);
INSERT INTO `sys_oper_log` VALUES (8, '淘宝退款订单', 1, 'com.qihang.erp.api.controller.TaoOrderRefundController.add()', 'POST', 1, 'admin', NULL, '/tao/taoRefund', '127.0.0.1', '内网IP', '{\"afterSalesType\":1,\"num\":1,\"oid\":\"3198002834286896419\",\"params\":{},\"refundFee\":24,\"refundId\":\"205639742516891964\",\"tid\":\"3198002834286896419\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-13 21:03:29', 0);
INSERT INTO `sys_oper_log` VALUES (9, '淘宝退款订单', 1, 'com.qihang.erp.api.controller.TaoOrderRefundController.add()', 'POST', 1, 'admin', NULL, '/tao/taoRefund', '127.0.0.1', '内网IP', '{\"afterSalesType\":1,\"num\":1,\"oid\":\"3198002834286896419\",\"params\":{},\"refundFee\":24,\"refundId\":\"205639742516891964\",\"tid\":\"3198002834286896419\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-13 21:12:45', 24108);
INSERT INTO `sys_oper_log` VALUES (10, '淘宝退款订单', 1, 'com.qihang.erp.api.controller.TaoOrderRefundController.add()', 'POST', 1, 'admin', NULL, '/tao/taoRefund', '127.0.0.1', '内网IP', '{\"afterSalesType\":1,\"num\":1,\"oid\":\"3198002834286896419\",\"params\":{},\"refundFee\":24,\"refundId\":\"205639742516891964\",\"tid\":\"3198002834286896419\"}', '{\"msg\":\"子订单已经在售后中！请勿重复提交！\",\"code\":502}', 0, NULL, '2024-01-13 21:14:10', 6809);
INSERT INTO `sys_oper_log` VALUES (11, '代码生成', 3, 'com.zhijian.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/46,47,48,49,50,51', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-13 21:27:42', 16);
INSERT INTO `sys_oper_log` VALUES (12, '代码生成', 6, 'com.zhijian.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"s_tao_order_refund\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-13 21:27:53', 107);
INSERT INTO `sys_oper_log` VALUES (13, '代码生成', 2, 'com.zhijian.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"refund\",\"className\":\"STaoOrderRefund\",\"columns\":[{\"capJavaField\":\"Id\",\"columnId\":1156,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-01-13 21:27:53\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":52,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"RefundId\",\"columnComment\":\"退款id\",\"columnId\":1157,\"columnName\":\"refund_id\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-13 21:27:53\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"refundId\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":52,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"AfterSalesType\",\"columnComment\":\"类型（1退货3换货）\",\"columnId\":1158,\"columnName\":\"after_sales_type\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-01-13 21:27:53\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"afterSalesType\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":52,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ShopId\",\"columnComment\":\"店铺id\",\"columnId\":1159,\"columnName\":\"shopId\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-01-13 21:27:53\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"shopId\",\"javaType\":\"Long\",\"list\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-13 21:28:07', 71);
INSERT INTO `sys_oper_log` VALUES (14, '代码生成', 2, 'com.zhijian.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"refund\",\"className\":\"TaoOrderRefund\",\"columns\":[{\"capJavaField\":\"Id\",\"columnId\":1156,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-01-13 21:27:53\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":52,\"updateBy\":\"\",\"updateTime\":\"2024-01-13 21:28:07\",\"usableColumn\":false},{\"capJavaField\":\"RefundId\",\"columnComment\":\"退款id\",\"columnId\":1157,\"columnName\":\"refund_id\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-13 21:27:53\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"refundId\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":52,\"updateBy\":\"\",\"updateTime\":\"2024-01-13 21:28:07\",\"usableColumn\":false},{\"capJavaField\":\"AfterSalesType\",\"columnComment\":\"类型（1退货3换货）\",\"columnId\":1158,\"columnName\":\"after_sales_type\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-01-13 21:27:53\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"afterSalesType\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":52,\"updateBy\":\"\",\"updateTime\":\"2024-01-13 21:28:07\",\"usableColumn\":false},{\"capJavaField\":\"ShopId\",\"columnComment\":\"店铺id\",\"columnId\":1159,\"columnName\":\"shopId\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-01-13 21:27:53\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-13 21:28:16', 54);
INSERT INTO `sys_oper_log` VALUES (15, '代码生成', 8, 'com.zhijian.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"s_tao_order_refund\"}', NULL, 0, NULL, '2024-01-13 21:28:31', 385);
INSERT INTO `sys_oper_log` VALUES (16, '淘宝退款订单', 1, 'com.qihang.erp.api.controller.TaoOrderRefundController.add()', 'POST', 1, 'admin', NULL, '/tao/taoRefund', '127.0.0.1', '内网IP', '{\"afterSalesType\":3,\"createBy\":\"admin\",\"goodsTitle\":\"8026牛仔短裤\",\"num\":1,\"oid\":3198002834286896419,\"params\":{},\"productImgUrl\":\"https://cbu01.alicdn.com/img/ibank/O1CN01PHFmsX2FOyB14fPie_!!2208857268871-0-cib.jpg\",\"refundFee\":24,\"refundId\":\"205639742516891970\",\"skuInfo\":\"颜色分类：浅蓝色;尺寸：2XL[121-125斤]\",\"tid\":3198002834286896419}', '{\"msg\":\"子订单已经在售后中！请勿重复提交！\",\"code\":502}', 0, NULL, '2024-01-13 21:43:22', 13894);
INSERT INTO `sys_oper_log` VALUES (17, '淘宝退款订单', 1, 'com.qihang.erp.api.controller.TaoOrderRefundController.add()', 'POST', 1, 'admin', NULL, '/tao/taoRefund', '127.0.0.1', '内网IP', '{\"afterSalesType\":3,\"createBy\":\"admin\",\"goodsTitle\":\"8026牛仔短裤\",\"num\":1,\"oid\":3198002834286896419,\"params\":{},\"productImgUrl\":\"https://cbu01.alicdn.com/img/ibank/O1CN01PHFmsX2FOyB14fPie_!!2208857268871-0-cib.jpg\",\"refundFee\":24,\"refundId\":\"205639742516891970\",\"skuInfo\":\"颜色分类：浅蓝色;尺寸：2XL[121-125斤]\",\"tid\":3198002834286896419}', '{\"msg\":\"子订单已经在售后中！请勿重复提交！\",\"code\":502}', 0, NULL, '2024-01-13 21:43:44', 13860);
INSERT INTO `sys_oper_log` VALUES (18, '淘宝退款订单', 1, 'com.qihang.erp.api.controller.TaoOrderRefundController.add()', 'POST', 1, 'admin', NULL, '/tao/taoRefund', '127.0.0.1', '内网IP', '{\"afterSalesType\":3,\"createBy\":\"admin\",\"goodsTitle\":\"8026牛仔短裤\",\"num\":1,\"oid\":3198002834286896419,\"params\":{},\"productImgUrl\":\"https://cbu01.alicdn.com/img/ibank/O1CN01PHFmsX2FOyB14fPie_!!2208857268871-0-cib.jpg\",\"refundFee\":24,\"refundId\":\"205639742516891970\",\"skuInfo\":\"颜色分类：浅蓝色;尺寸：2XL[121-125斤]\",\"tid\":3198002834286896419}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'updateTime\' in \'field list\'\r\n### The error may exist in file [D:\\projects\\qihang.ecom.erp\\ecerp-api\\target\\classes\\mapper\\tao\\TaoOrderMapper.xml]\r\n### The error may involve com.qihang.erp.api.mapper.TaoOrderMapper.updateTaoOrderItem-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update s_tao_order_item      SET refundStatus = ?,         updateTime = ?,         updateBy = ?          where id = ?\r\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'updateTime\' in \'field list\'\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'updateTime\' in \'field list\'', '2024-01-13 21:44:19', 16613);
INSERT INTO `sys_oper_log` VALUES (19, '淘宝退款订单', 1, 'com.qihang.erp.api.controller.TaoOrderRefundController.add()', 'POST', 1, 'admin', NULL, '/tao/taoRefund', '127.0.0.1', '内网IP', '{\"afterSalesType\":3,\"createBy\":\"admin\",\"goodsTitle\":\"8026牛仔短裤\",\"num\":1,\"oid\":3198002834286896419,\"params\":{},\"productImgUrl\":\"https://cbu01.alicdn.com/img/ibank/O1CN01PHFmsX2FOyB14fPie_!!2208857268871-0-cib.jpg\",\"refundFee\":24,\"refundId\":\"205639742516891970\",\"skuInfo\":\"颜色分类：浅蓝色;尺寸：2XL[121-125斤]\",\"tid\":3198002834286896419}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-13 21:46:58', 17009);
INSERT INTO `sys_oper_log` VALUES (20, '淘宝退款订单', 2, 'com.qihang.erp.api.controller.TaoOrderRefundController.edit()', 'PUT', 1, 'admin', NULL, '/tao/taoRefund', '127.0.0.1', '内网IP', '{\"afterSalesType\":1,\"auditStatus\":0,\"createBy\":\"admin\",\"createTime\":\"2024-01-13 21:46:51\",\"created\":1705153607,\"erpGoodsId\":0,\"erpGoodsSpecId\":0,\"goodsNumber\":\"2720218026\",\"goodsTitle\":\"8026牛仔短裤\",\"id\":29,\"logisticsCode\":\"SF10235566202\",\"logisticsCompany\":\"顺丰快递\",\"num\":1,\"oid\":3198002834286896600,\"params\":{},\"productImgUrl\":\"https://cbu01.alicdn.com/img/ibank/O1CN01PHFmsX2FOyB14fPie_!!2208857268871-0-cib.jpg\",\"refundFee\":24,\"refundId\":\"205639742516891970\",\"sendTime\":\"2024-01-13\",\"shopId\":6,\"skuId\":42,\"skuInfo\":\"颜色分类：浅蓝色;尺寸：2XL[121-125斤]\",\"specNumber\":\"2720210080260305\",\"status\":1,\"tid\":3198002834286896600,\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-13 22:53:43', 37654);
INSERT INTO `sys_oper_log` VALUES (21, '淘宝退款订单', 2, 'com.qihang.erp.api.controller.TaoOrderRefundController.edit()', 'PUT', 1, 'admin', NULL, '/tao/taoRefund', '127.0.0.1', '内网IP', '{\"afterSalesType\":1,\"auditStatus\":0,\"createBy\":\"admin\",\"createTime\":\"2024-01-13 21:46:51\",\"created\":1705153607,\"erpGoodsId\":0,\"erpGoodsSpecId\":0,\"goodsNumber\":\"2720218026\",\"goodsTitle\":\"8026牛仔短裤\",\"id\":29,\"logisticsCode\":\"SF100255698552\",\"logisticsCompany\":\"顺丰物流\",\"num\":1,\"oid\":3198002834286896600,\"params\":{},\"productImgUrl\":\"https://cbu01.alicdn.com/img/ibank/O1CN01PHFmsX2FOyB14fPie_!!2208857268871-0-cib.jpg\",\"refundFee\":24,\"refundId\":\"205639742516891970\",\"sendTime\":\"2024-01-13\",\"shopId\":6,\"skuId\":42,\"skuInfo\":\"颜色分类：浅蓝色;尺寸：2XL[121-125斤]\",\"specNumber\":\"2720210080260305\",\"status\":1,\"tid\":3198002834286896600,\"updateBy\":\"admin\"}', NULL, 1, 'nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'orderTimeId\' in \'class com.qihang.erp.api.domain.ErpOrderReturned\'', '2024-01-13 23:15:25', 29);
INSERT INTO `sys_oper_log` VALUES (22, '淘宝退款订单', 2, 'com.qihang.erp.api.controller.TaoOrderRefundController.edit()', 'PUT', 1, 'admin', NULL, '/tao/taoRefund', '127.0.0.1', '内网IP', '{\"afterSalesType\":1,\"auditStatus\":0,\"createBy\":\"admin\",\"createTime\":\"2024-01-13 21:46:51\",\"created\":1705153607,\"erpGoodsId\":0,\"erpGoodsSpecId\":0,\"goodsNumber\":\"2720218026\",\"goodsTitle\":\"8026牛仔短裤\",\"id\":29,\"logisticsCode\":\"SF100255698552\",\"logisticsCompany\":\"顺丰物流\",\"num\":1,\"oid\":3198002834286896600,\"params\":{},\"productImgUrl\":\"https://cbu01.alicdn.com/img/ibank/O1CN01PHFmsX2FOyB14fPie_!!2208857268871-0-cib.jpg\",\"refundFee\":24,\"refundId\":\"205639742516891970\",\"sendTime\":\"2024-01-13\",\"shopId\":6,\"skuId\":42,\"skuInfo\":\"颜色分类：浅蓝色;尺寸：2XL[121-125斤]\",\"specNumber\":\"2720210080260305\",\"status\":1,\"tid\":3198002834286896600,\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-13 23:17:14', 134);
INSERT INTO `sys_oper_log` VALUES (23, '淘宝退款订单', 2, 'com.qihang.erp.api.controller.TaoOrderRefundController.edit()', 'PUT', 1, 'admin', NULL, '/tao/taoRefund', '127.0.0.1', '内网IP', '{\"afterSalesType\":1,\"auditStatus\":0,\"createTime\":\"2023-02-21 18:08:29\",\"erpGoodsId\":9,\"erpGoodsSpecId\":42,\"id\":27,\"logisticsCode\":\"YT7054813104977\",\"logisticsCompany\":\"圆通速递\",\"num\":1,\"oid\":3198002834286896600,\"params\":{},\"refundFee\":24,\"refundId\":\"205639742516891964\",\"sendTime\":\"2023-02-21 18:09:17\",\"shopId\":6,\"specNumber\":\"2720210080260305\",\"status\":1,\"tid\":3198002834286896600,\"updateBy\":\"admin\"}', NULL, 1, '\r\n### Error querying database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'s_tao_order a on a.id = b.order_id\n        where b.order_item_num = \'31980028342\' at line 4\r\n### The error may exist in file [D:\\projects\\qihang.ecom.erp\\ecerp-api\\target\\classes\\mapper\\api\\ErpOrderMapper.xml]\r\n### The error may involve com.qihang.erp.api.mapper.ErpOrderMapper.selectOrderItemByOrderItemNum-Inline\r\n### The error occurred while setting parameters\r\n### SQL: select         b.id as sub_id, b.order_item_num as sub_order_item_num,b.supplier_id as sub_supplier_id,b.order_id as sub_order_id, b.goods_id as sub_goods_id, b.spec_id as sub_spec_id, b.goods_title as sub_goods_title, b.goods_img as sub_goods_img, b.goods_num as sub_goods_num, b.goods_spec as sub_goods_spec, b.spec_num as sub_spec_num, b.goods_price as sub_goods_price, b.item_amount as sub_item_amount, b.quantity as sub_quantity, b.remark as sub_remark, b.is_gift as sub_is_gift, b.refund_count as sub_refund_count, b.refund_status as sub_refund_status, b.create_time as sub_create_time, b.create_by as sub_create_by, b.update_time as sub_update_time, b.update_by as sub_update_by         from  erp_order_item b         left s_tao_order a on a.id = b.order_id         where b.order_item_num = ? and shop_id = ?\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'s_tao_order a on a.id = b.order_id\n        where b.order_item_num = \'31980028342\' at line 4\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'s_tao_order a on a.id = b.order_id\n        where b.order_item_num = \'31980028342\' at line 4', '2024-01-14 10:03:29', 139555);
INSERT INTO `sys_oper_log` VALUES (24, '淘宝退款订单', 2, 'com.qihang.erp.api.controller.TaoOrderRefundController.edit()', 'PUT', 1, 'admin', NULL, '/tao/taoRefund', '127.0.0.1', '内网IP', '{\"afterSalesType\":1,\"auditStatus\":0,\"createTime\":\"2023-02-21 18:08:29\",\"erpGoodsId\":9,\"erpGoodsSpecId\":42,\"id\":27,\"logisticsCode\":\"YT7054813104977\",\"logisticsCompany\":\"圆通速递\",\"num\":1,\"oid\":3198002834286896600,\"params\":{},\"refundFee\":24,\"refundId\":\"205639742516891964\",\"sendTime\":\"2023-02-21 18:09:17\",\"shopId\":6,\"specNumber\":\"2720210080260305\",\"status\":1,\"tid\":3198002834286896600,\"updateBy\":\"admin\"}', NULL, 1, '\r\n### Error querying database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'shop_id\' in \'where clause\'\r\n### The error may exist in file [D:\\projects\\qihang.ecom.erp\\ecerp-api\\target\\classes\\mapper\\api\\ErpOrderMapper.xml]\r\n### The error may involve com.qihang.erp.api.mapper.ErpOrderMapper.selectOrderItemByOrderItemNum-Inline\r\n### The error occurred while setting parameters\r\n### SQL: select         b.id as sub_id, b.order_item_num as sub_order_item_num,b.supplier_id as sub_supplier_id,b.order_id as sub_order_id, b.goods_id as sub_goods_id, b.spec_id as sub_spec_id, b.goods_title as sub_goods_title, b.goods_img as sub_goods_img, b.goods_num as sub_goods_num, b.goods_spec as sub_goods_spec, b.spec_num as sub_spec_num, b.goods_price as sub_goods_price, b.item_amount as sub_item_amount, b.quantity as sub_quantity, b.remark as sub_remark, b.is_gift as sub_is_gift, b.refund_count as sub_refund_count, b.refund_status as sub_refund_status, b.create_time as sub_create_time, b.create_by as sub_create_by, b.update_time as sub_update_time, b.update_by as sub_update_by         from  erp_order_item b         left join s_tao_order a on a.id = b.order_id         where b.order_item_num = ? and shop_id = ?\r\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'shop_id\' in \'where clause\'\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'shop_id\' in \'where clause\'', '2024-01-14 10:03:45', 86);
INSERT INTO `sys_oper_log` VALUES (25, '淘宝退款订单', 2, 'com.qihang.erp.api.controller.TaoOrderRefundController.edit()', 'PUT', 1, 'admin', NULL, '/tao/taoRefund', '127.0.0.1', '内网IP', '{\"afterSalesType\":1,\"auditStatus\":0,\"createTime\":\"2023-02-21 18:08:29\",\"erpGoodsId\":9,\"erpGoodsSpecId\":42,\"id\":27,\"logisticsCode\":\"YT7054813104977\",\"logisticsCompany\":\"圆通速递\",\"num\":1,\"oid\":3198002834286896600,\"params\":{},\"refundFee\":24,\"refundId\":\"205639742516891964\",\"sendTime\":\"2023-02-21 18:09:17\",\"shopId\":6,\"specNumber\":\"2720210080260305\",\"status\":1,\"tid\":3198002834286896600,\"updateBy\":\"admin\"}', NULL, 1, '\r\n### Error querying database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'a.shop_id\' in \'where clause\'\r\n### The error may exist in file [D:\\projects\\qihang.ecom.erp\\ecerp-api\\target\\classes\\mapper\\api\\ErpOrderMapper.xml]\r\n### The error may involve com.qihang.erp.api.mapper.ErpOrderMapper.selectOrderItemByOrderItemNum-Inline\r\n### The error occurred while setting parameters\r\n### SQL: select         b.id as sub_id, b.order_item_num as sub_order_item_num,b.supplier_id as sub_supplier_id,b.order_id as sub_order_id, b.goods_id as sub_goods_id, b.spec_id as sub_spec_id, b.goods_title as sub_goods_title, b.goods_img as sub_goods_img, b.goods_num as sub_goods_num, b.goods_spec as sub_goods_spec, b.spec_num as sub_spec_num, b.goods_price as sub_goods_price, b.item_amount as sub_item_amount, b.quantity as sub_quantity, b.remark as sub_remark, b.is_gift as sub_is_gift, b.refund_count as sub_refund_count, b.refund_status as sub_refund_status, b.create_time as sub_create_time, b.create_by as sub_create_by, b.update_time as sub_update_time, b.update_by as sub_update_by         from  erp_order_item b         left join s_tao_order a on a.id = b.order_id         where b.order_item_num = ? and a.shop_id = ?\r\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'a.shop_id\' in \'where clause\'\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'a.shop_id\' in \'where clause\'', '2024-01-14 10:04:18', 65);
INSERT INTO `sys_oper_log` VALUES (26, '淘宝退款订单', 2, 'com.qihang.erp.api.controller.TaoOrderRefundController.edit()', 'PUT', 1, 'admin', NULL, '/tao/taoRefund', '127.0.0.1', '内网IP', '{\"afterSalesType\":1,\"auditStatus\":0,\"createTime\":\"2023-02-21 18:08:29\",\"erpGoodsId\":9,\"erpGoodsSpecId\":42,\"id\":27,\"logisticsCode\":\"YT7054813104977\",\"logisticsCompany\":\"圆通速递\",\"num\":1,\"oid\":3198002834286896600,\"params\":{},\"refundFee\":24,\"refundId\":\"205639742516891964\",\"sendTime\":\"2023-02-21 18:09:17\",\"shopId\":6,\"specNumber\":\"2720210080260305\",\"status\":1,\"tid\":3198002834286896600,\"updateBy\":\"admin\"}', '{\"msg\":\"数据错误：ErpOrderItem未找到！\",\"code\":521}', 0, NULL, '2024-01-14 10:05:11', 46);
INSERT INTO `sys_oper_log` VALUES (27, '拼多多订单退款', 1, 'com.qihang.erp.api.controller.PddOrderRefundController.add()', 'POST', 1, 'admin', NULL, '/pdd/pddRefund', '127.0.0.1', '内网IP', '{\"afterSalesType\":2,\"discountAmount\":null,\"goodsImage\":\"https://img.pddpic.com/mms-material-img/2022-07-23/b68b46a8-b269-4328-8909-7facf0a6354a.jpeg\",\"goodsName\":\"牛仔短裤辣妹高腰裤短款弹力紧身a字型抽绳绑带纯欲风学生潮流夏\",\"goodsPrice\":null,\"goodsSpec\":\"深灰色 黑灰色,S\",\"id\":15745472193,\"orderAmount\":null,\"orderItemId\":3490,\"orderSn\":\"230405-342695669310441\",\"params\":{},\"quantity\":1,\"refundAmount\":32,\"refundQty\":1}', NULL, 1, 'nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'skuNumber\' in \'class com.qihang.erp.api.domain.PddOrderRefund\'', '2024-01-14 11:58:09', 25929);
INSERT INTO `sys_oper_log` VALUES (28, '拼多多订单退款', 1, 'com.qihang.erp.api.controller.PddOrderRefundController.add()', 'POST', 1, 'admin', NULL, '/pdd/pddRefund', '127.0.0.1', '内网IP', '{\"afterSalesType\":2,\"discountAmount\":null,\"goodsImage\":\"https://img.pddpic.com/mms-material-img/2022-07-23/b68b46a8-b269-4328-8909-7facf0a6354a.jpeg\",\"goodsName\":\"牛仔短裤辣妹高腰裤短款弹力紧身a字型抽绳绑带纯欲风学生潮流夏\",\"goodsPrice\":null,\"goodsSpec\":\"深灰色 黑灰色,S\",\"id\":15745472193,\"orderAmount\":null,\"orderItemId\":3490,\"orderSn\":\"230405-342695669310441\",\"params\":{},\"quantity\":1,\"refundAmount\":32,\"refundQty\":1}', NULL, 1, 'nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'spec_number\' in \'class com.qihang.erp.api.domain.PddOrderRefund\'', '2024-01-14 12:00:40', 18382);
INSERT INTO `sys_oper_log` VALUES (29, '拼多多订单退款', 1, 'com.qihang.erp.api.controller.PddOrderRefundController.add()', 'POST', 1, 'admin', NULL, '/pdd/pddRefund', '127.0.0.1', '内网IP', '{\"afterSalesType\":2,\"discountAmount\":null,\"goodsImage\":\"https://img.pddpic.com/mms-material-img/2022-07-23/b68b46a8-b269-4328-8909-7facf0a6354a.jpeg\",\"goodsName\":\"牛仔短裤辣妹高腰裤短款弹力紧身a字型抽绳绑带纯欲风学生潮流夏\",\"goodsPrice\":null,\"goodsSpec\":\"深灰色 黑灰色,S\",\"id\":15745472193,\"orderAmount\":null,\"orderItemId\":3490,\"orderSn\":\"230405-342695669310441\",\"params\":{},\"quantity\":1,\"refundAmount\":32,\"refundQty\":1}', NULL, 1, 'nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'spec_number\' in \'class com.qihang.erp.api.domain.PddOrderRefund\'', '2024-01-14 12:02:11', 12582);
INSERT INTO `sys_oper_log` VALUES (30, '拼多多订单退款', 1, 'com.qihang.erp.api.controller.PddOrderRefundController.add()', 'POST', 1, 'admin', NULL, '/pdd/pddRefund', '127.0.0.1', '内网IP', '{\"afterSalesType\":2,\"discountAmount\":null,\"goodsImage\":\"https://img.pddpic.com/mms-material-img/2022-07-23/b68b46a8-b269-4328-8909-7facf0a6354a.jpeg\",\"goodsName\":\"牛仔短裤辣妹高腰裤短款弹力紧身a字型抽绳绑带纯欲风学生潮流夏\",\"goodsPrice\":null,\"goodsSpec\":\"深灰色 黑灰色,S\",\"id\":15745472193,\"orderAmount\":null,\"orderItemId\":3490,\"orderSn\":\"230405-342695669310441\",\"params\":{},\"quantity\":1,\"refundAmount\":32,\"refundQty\":1}', NULL, 1, 'nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'spec_number\' in \'class com.qihang.erp.api.domain.PddOrderRefund\'', '2024-01-14 12:05:49', 4496);
INSERT INTO `sys_oper_log` VALUES (31, '拼多多订单退款', 1, 'com.qihang.erp.api.controller.PddOrderRefundController.add()', 'POST', 1, 'admin', NULL, '/pdd/pddRefund', '127.0.0.1', '内网IP', '{\"afterSalesType\":2,\"discountAmount\":null,\"goodsImage\":\"https://img.pddpic.com/mms-material-img/2022-07-23/b68b46a8-b269-4328-8909-7facf0a6354a.jpeg\",\"goodsName\":\"牛仔短裤辣妹高腰裤短款弹力紧身a字型抽绳绑带纯欲风学生潮流夏\",\"goodsPrice\":null,\"goodsSpec\":\"深灰色 黑灰色,S\",\"id\":15745472193,\"orderAmount\":null,\"orderItemId\":3490,\"orderSn\":\"230405-342695669310441\",\"params\":{},\"quantity\":1,\"refundAmount\":32,\"refundQty\":1}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'after_sale_reason\' doesn\'t have a default value\r\n### The error may exist in file [D:\\projects\\qihang.ecom.erp\\ecerp-api\\target\\classes\\mapper\\pdd\\PddOrderRefundMapper.xml]\r\n### The error may involve com.qihang.erp.api.mapper.PddOrderRefundMapper.insertPddOrderRefund-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into s_pdd_order_refund          ( id,             order_sn,             shopId,             after_sales_type,             after_sales_status,                          confirm_time,             created_time,             discount_amount,             order_amount,             refund_amount,             goods_image,             goods_id,             sku_id,             goods_name,             goods_number,             spec_number,             goods_spec,             quantity,             goods_price,                                                    audit_status )           values ( ?,             ?,             ?,             ?,             ?,                          ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,                                                    ? )\r\n### Cause: java.sql.SQLException: Field \'after_sale_reason\' doesn\'t have a default value\n; Field \'after_sale_reason\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'after_sale_reason\' doesn\'t have a default value', '2024-01-14 12:08:09', 7758);
INSERT INTO `sys_oper_log` VALUES (32, '拼多多订单退款', 1, 'com.qihang.erp.api.controller.PddOrderRefundController.add()', 'POST', 1, 'admin', NULL, '/pdd/pddRefund', '127.0.0.1', '内网IP', '{\"afterSalesType\":2,\"discountAmount\":null,\"goodsImage\":\"https://img.pddpic.com/mms-material-img/2022-07-23/b68b46a8-b269-4328-8909-7facf0a6354a.jpeg\",\"goodsName\":\"牛仔短裤辣妹高腰裤短款弹力紧身a字型抽绳绑带纯欲风学生潮流夏\",\"goodsPrice\":null,\"goodsSpec\":\"深灰色 黑灰色,S\",\"id\":15745472193,\"orderAmount\":null,\"orderItemId\":3490,\"orderSn\":\"230405-342695669310441\",\"params\":{},\"quantity\":1,\"refundAmount\":32,\"refundQty\":1}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'15745472193\' for key \'s_pdd_order_refund.PRIMARY\'\r\n### The error may exist in file [D:\\projects\\qihang.ecom.erp\\ecerp-api\\target\\classes\\mapper\\pdd\\PddOrderRefundMapper.xml]\r\n### The error may involve com.qihang.erp.api.mapper.PddOrderRefundMapper.insertPddOrderRefund-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into s_pdd_order_refund          ( id,             order_sn,             shopId,             after_sales_type,             after_sales_status,                          confirm_time,             created_time,             discount_amount,             order_amount,             refund_amount,             goods_image,             goods_id,             sku_id,             goods_name,             goods_number,             spec_number,             goods_spec,             quantity,             goods_price,                                                    audit_status )           values ( ?,             ?,             ?,             ?,             ?,                          ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,                                                    ? )\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'15745472193\' for key \'s_pdd_order_refund.PRIMARY\'\n; Duplicate entry \'15745472193\' for key \'s_pdd_order_refund.PRIMARY\'; nested exception is java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'15745472193\' for key \'s_pdd_order_refund.PRIMARY\'', '2024-01-14 12:09:02', 4150);
INSERT INTO `sys_oper_log` VALUES (33, '拼多多订单退款', 1, 'com.qihang.erp.api.controller.PddOrderRefundController.add()', 'POST', 1, 'admin', NULL, '/pdd/pddRefund', '127.0.0.1', '内网IP', '{\"afterSalesType\":2,\"discountAmount\":null,\"goodsImage\":\"https://img.pddpic.com/mms-material-img/2022-07-23/b68b46a8-b269-4328-8909-7facf0a6354a.jpeg\",\"goodsName\":\"牛仔短裤辣妹高腰裤短款弹力紧身a字型抽绳绑带纯欲风学生潮流夏\",\"goodsPrice\":null,\"goodsSpec\":\"深灰色 黑灰色,S\",\"id\":1,\"orderAmount\":null,\"orderItemId\":3490,\"orderSn\":\"230405-342695669310441\",\"params\":{},\"quantity\":1,\"refundAmount\":32,\"refundQty\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-14 12:09:37', 18522);
INSERT INTO `sys_oper_log` VALUES (34, '抖店订单退款', 1, 'com.qihang.erp.api.controller.DouOrderRefundController.add()', 'POST', 1, 'admin', NULL, '/dou/douRefund', '127.0.0.1', '内网IP', '{\"aftersaleId\":7149891465417507000,\"aftersaleType\":1,\"comboAmount\":29.9,\"comboNum\":1,\"goodsSpec\":\"\\t浅蓝色;L\",\"orderAmount\":null,\"orderId\":\"5030436502888242865\",\"params\":{},\"productName\":\"\\t【夏款清仓】牛仔短裤女夏高腰宽松毛边牛仔裤甜欲风辣妹阔腿新款\",\"productPic\":\"http://img.huayiyungou.com/niuzaiduanku/HN8026.jpg\",\"subOrderId\":\"\\t5030436502888242865\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-14 13:43:00', 16479);
INSERT INTO `sys_oper_log` VALUES (35, '菜单管理', 2, 'com.zhijian.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"shop/goods\",\"createTime\":\"2023-12-29 17:02:42\",\"icon\":\"color\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2016,\"menuName\":\"店铺商品管理\",\"menuType\":\"C\",\"orderNum\":9,\"params\":{},\"parentId\":2014,\"path\":\"shop/goods\",\"perms\":\"shop:goods\",\"query\":\"\",\"status\":\"1\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-14 14:04:20', 15);
INSERT INTO `sys_oper_log` VALUES (36, '菜单管理', 2, 'com.zhijian.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"\",\"createTime\":\"2023-12-31 12:14:33\",\"icon\":\"stock\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2026,\"menuName\":\"库存管理\",\"menuType\":\"M\",\"orderNum\":5,\"params\":{},\"parentId\":0,\"path\":\"wms\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-14 15:07:56', 7);
INSERT INTO `sys_oper_log` VALUES (37, '菜单管理', 2, 'com.zhijian.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"\",\"createTime\":\"2023-12-31 12:14:33\",\"icon\":\"stock1\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2026,\"menuName\":\"库存管理\",\"menuType\":\"M\",\"orderNum\":5,\"params\":{},\"parentId\":0,\"path\":\"wms\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-14 15:10:51', 9);
INSERT INTO `sys_oper_log` VALUES (38, '菜单管理', 2, 'com.zhijian.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"wms/stockInEntry\",\"createTime\":\"2023-12-31 12:27:37\",\"icon\":\"stockin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2027,\"menuName\":\"入库管理\",\"menuType\":\"C\",\"orderNum\":0,\"params\":{},\"parentId\":2026,\"path\":\"stock_in_entry/list\",\"perms\":\"wms:stock_in_entry:list\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-14 15:12:48', 9);
INSERT INTO `sys_oper_log` VALUES (39, '商品分类', 1, 'com.qihang.erp.api.controller.ErpGoodsCategoryController.add()', 'POST', 1, 'admin', NULL, '/goods/category', '127.0.0.1', '内网IP', '{\"createTime\":\"2024-01-14 19:33:40\",\"id\":34,\"name\":\"男装\",\"number\":\"NANZ\",\"params\":{},\"parentId\":0}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-14 19:33:40', 94);
INSERT INTO `sys_oper_log` VALUES (40, '商品分类', 1, 'com.qihang.erp.api.controller.ErpGoodsCategoryController.add()', 'POST', 1, 'admin', NULL, '/goods/category', '127.0.0.1', '内网IP', '{\"createTime\":\"2024-01-14 19:33:56\",\"id\":35,\"name\":\"牛仔裤\",\"number\":\"NZK\",\"params\":{},\"parentId\":34}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-14 19:33:56', 7);
INSERT INTO `sys_oper_log` VALUES (41, '商品分类', 2, 'com.qihang.erp.api.controller.ErpGoodsCategoryController.edit()', 'PUT', 1, 'admin', NULL, '/goods/category', '127.0.0.1', '内网IP', '{\"createTime\":\"2024-01-14 19:33:57\",\"id\":35,\"isDelete\":0,\"name\":\"牛仔裤2\",\"number\":\"NZK\",\"params\":{},\"parentId\":34,\"path\":\"\",\"sort\":0,\"updateTime\":\"2024-01-14 19:34:07\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-14 19:34:07', 9);
INSERT INTO `sys_oper_log` VALUES (42, '商品分类', 3, 'com.qihang.erp.api.controller.ErpGoodsCategoryController.remove()', 'DELETE', 1, 'admin', NULL, '/goods/category/35', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-14 19:34:12', 9);
INSERT INTO `sys_oper_log` VALUES (43, '商品分类', 3, 'com.qihang.erp.api.controller.ErpGoodsCategoryController.remove()', 'DELETE', 1, 'admin', NULL, '/goods/category/34', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-14 19:34:17', 9);
INSERT INTO `sys_oper_log` VALUES (44, '菜单管理', 1, 'com.zhijian.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"goods/create\",\"createBy\":\"admin\",\"icon\":\"component\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"添加商品\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":2006,\"path\":\"create\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-14 19:42:11', 17);
INSERT INTO `sys_oper_log` VALUES (45, '商品管理', 1, 'com.qihang.erp.api.controller.GoodsController.add()', 'POST', 1, 'admin', NULL, '/goods/goods', '127.0.0.1', '内网IP', '{\"categoryId\":2,\"colorValues\":[413,412],\"image\":\"http://\",\"name\":\"asaa\",\"number\":\"dsfds\",\"params\":{},\"purPrice\":122.9,\"sizeValues\":[408,407,406,405],\"specList\":[{\"colorId\":413,\"colorValue\":\"浅蓝色加绒\",\"purPrice\":null,\"sizeId\":408,\"sizeValue\":\"32\",\"styleValue\":\"\"},{\"colorId\":413,\"colorValue\":\"浅蓝色加绒\",\"purPrice\":null,\"sizeId\":407,\"sizeValue\":\"31\",\"styleValue\":\"\"},{\"colorId\":413,\"colorValue\":\"浅蓝色加绒\",\"purPrice\":null,\"sizeId\":406,\"sizeValue\":\"30\",\"styleValue\":\"\"},{\"colorId\":413,\"colorValue\":\"浅蓝色加绒\",\"purPrice\":null,\"sizeId\":405,\"sizeValue\":\"29\",\"styleValue\":\"\"},{\"colorId\":412,\"colorValue\":\"复古蓝加绒\",\"purPrice\":null,\"sizeId\":408,\"sizeValue\":\"32\",\"styleValue\":\"\"},{\"colorId\":412,\"colorValue\":\"复古蓝加绒\",\"purPrice\":null,\"sizeId\":407,\"sizeValue\":\"31\",\"styleValue\":\"\"},{\"colorId\":412,\"colorValue\":\"复古蓝加绒\",\"purPrice\":null,\"sizeId\":406,\"sizeValue\":\"30\",\"styleValue\":\"\"},{\"colorId\":412,\"colorValue\":\"复古蓝加绒\",\"purPrice\":null,\"sizeId\":405,\"sizeValue\":\"29\",\"styleValue\":\"\"}],\"supplierId\":33}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-14 21:23:20', 28844);
INSERT INTO `sys_oper_log` VALUES (46, '商品管理', 1, 'com.qihang.erp.api.controller.GoodsController.add()', 'POST', 1, 'admin', NULL, '/goods/goods', '127.0.0.1', '内网IP', '{\"categoryId\":2,\"colorValues\":[413,412],\"image\":\"aa\",\"name\":\"aa\",\"number\":\"aa\",\"params\":{},\"purPrice\":233,\"sizeValues\":[408,407,406],\"specList\":[{\"colorId\":413,\"colorValue\":\"浅蓝色加绒\",\"purPrice\":null,\"sizeId\":408,\"sizeValue\":\"32\",\"specNum\":\"1223\",\"styleValue\":\"\"},{\"colorId\":413,\"colorValue\":\"浅蓝色加绒\",\"purPrice\":null,\"sizeId\":407,\"sizeValue\":\"31\",\"specNum\":\"232\",\"styleValue\":\"\"},{\"colorId\":413,\"colorValue\":\"浅蓝色加绒\",\"purPrice\":null,\"sizeId\":406,\"sizeValue\":\"30\",\"specNum\":\"232\",\"styleValue\":\"\"},{\"colorId\":412,\"colorValue\":\"复古蓝加绒\",\"purPrice\":null,\"sizeId\":408,\"sizeValue\":\"32\",\"specNum\":\"232\",\"styleValue\":\"\"},{\"colorId\":412,\"colorValue\":\"复古蓝加绒\",\"purPrice\":null,\"sizeId\":407,\"sizeValue\":\"31\",\"specNum\":\"34\",\"styleValue\":\"\"},{\"colorId\":412,\"colorValue\":\"复古蓝加绒\",\"purPrice\":null,\"sizeId\":406,\"sizeValue\":\"30\",\"specNum\":\"34\",\"styleValue\":\"\"}],\"supplierId\":33}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-14 21:28:22', 5230);
INSERT INTO `sys_oper_log` VALUES (47, '商品管理', 1, 'com.qihang.erp.api.controller.GoodsController.add()', 'POST', 1, 'admin', NULL, '/goods/goods', '127.0.0.1', '内网IP', '{\"categoryId\":2,\"colorValues\":[413,412],\"image\":\"ASDF\",\"name\":\"ASFD\",\"number\":\"AF02551\",\"params\":{},\"purPrice\":12,\"sizeValues\":[408,406],\"specList\":[{\"colorId\":413,\"colorValue\":\"浅蓝色加绒\",\"purPrice\":null,\"sizeId\":408,\"sizeValue\":\"32\",\"specNum\":\"AF0255115032\",\"styleValue\":\"\"},{\"colorId\":413,\"colorValue\":\"浅蓝色加绒\",\"purPrice\":null,\"sizeId\":406,\"sizeValue\":\"30\",\"specNum\":\"AF0255115030\",\"styleValue\":\"\"},{\"colorId\":412,\"colorValue\":\"复古蓝加绒\",\"purPrice\":null,\"sizeId\":408,\"sizeValue\":\"32\",\"specNum\":\"AF0255114032\",\"styleValue\":\"\"},{\"colorId\":412,\"colorValue\":\"复古蓝加绒\",\"purPrice\":null,\"sizeId\":406,\"sizeValue\":\"30\",\"specNum\":\"AF0255114030\",\"styleValue\":\"\"}],\"supplierId\":33}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-14 21:32:30', 19313);
INSERT INTO `sys_oper_log` VALUES (48, '商品管理', 1, 'com.qihang.erp.api.controller.GoodsController.add()', 'POST', 1, 'admin', NULL, '/goods/goods', '127.0.0.1', '内网IP', '{\"categoryId\":2,\"colorValues\":[413,412],\"createBy\":\"admin\",\"createTime\":\"2024-01-14 21:52:29\",\"id\":71,\"image\":\"aaa\",\"name\":\"aaa\",\"number\":\"aaaaa\",\"params\":{},\"purPrice\":12,\"sizeValues\":[406,405],\"specList\":[{\"colorId\":413,\"colorValue\":\"浅蓝色加绒\",\"sizeId\":406,\"sizeValue\":\"30\",\"specNum\":\"aaaaa15030\",\"styleValue\":\"\"},{\"colorId\":413,\"colorValue\":\"浅蓝色加绒\",\"sizeId\":405,\"sizeValue\":\"29\",\"specNum\":\"aaaaa15029\",\"styleValue\":\"\"},{\"colorId\":412,\"colorValue\":\"复古蓝加绒\",\"sizeId\":406,\"sizeValue\":\"30\",\"specNum\":\"aaaaa14030\",\"styleValue\":\"\"},{\"colorId\":412,\"colorValue\":\"复古蓝加绒\",\"sizeId\":405,\"sizeValue\":\"29\",\"specNum\":\"aaaaa14029\",\"styleValue\":\"\"}],\"supplierId\":33}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-14 21:52:45', 22292);
INSERT INTO `sys_oper_log` VALUES (49, '代码生成', 6, 'com.zhijian.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"sys_oss\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-15 15:25:41', 370);
INSERT INTO `sys_oper_log` VALUES (50, '代码生成', 8, 'com.zhijian.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"sys_oss\"}', NULL, 0, NULL, '2024-01-15 15:25:45', 417);
INSERT INTO `sys_oper_log` VALUES (51, '商品管理', 1, 'com.qihang.erp.api.controller.GoodsController.add()', 'POST', 1, 'admin', NULL, '/goods/goods', '127.0.0.1', '内网IP', '{\"categoryId\":2,\"colorImages\":{\"412\":\"http://localhost:8080/preview/images/49\",\"413\":\"http://localhost:8080/preview/images/48\"},\"colorNames\":{\"412\":\"复古蓝加绒\",\"413\":\"浅蓝色加绒\"},\"colorValues\":[413,412],\"createBy\":\"admin\",\"image\":\"http://localhost:8080/preview/images/47\",\"name\":\"测试测试\",\"number\":\"A0012D\",\"params\":{},\"purPrice\":12,\"sizeValues\":[408,407],\"specList\":[{\"colorId\":413,\"colorValue\":\"浅蓝色加绒\",\"sizeId\":408,\"sizeValue\":\"32\",\"specNum\":\"A0012D15032\",\"styleValue\":\"\"},{\"colorId\":413,\"colorValue\":\"浅蓝色加绒\",\"sizeId\":407,\"sizeValue\":\"31\",\"specNum\":\"A0012D15031\",\"styleValue\":\"\"},{\"colorId\":412,\"colorValue\":\"复古蓝加绒\",\"sizeId\":408,\"sizeValue\":\"32\",\"specNum\":\"A0012D14032\",\"styleValue\":\"\"},{\"colorId\":412,\"colorValue\":\"复古蓝加绒\",\"sizeId\":407,\"sizeValue\":\"31\",\"specNum\":\"A0012D14031\",\"styleValue\":\"\"}],\"supplierId\":33}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-16 10:29:29', 127497);
INSERT INTO `sys_oper_log` VALUES (52, '商品管理', 1, 'com.qihang.erp.api.controller.GoodsController.add()', 'POST', 1, 'admin', NULL, '/goods/goods', '127.0.0.1', '内网IP', '{\"categoryId\":2,\"colorImages\":{\"412\":\"http://localhost:8080/preview/images/49\",\"413\":\"http://localhost:8080/preview/images/48\"},\"colorValues\":[413,412],\"createBy\":\"admin\",\"createTime\":\"2024-01-16 10:34:33\",\"id\":74,\"image\":\"http://localhost:8080/preview/images/47\",\"name\":\"测试测试\",\"number\":\"A0012D\",\"params\":{},\"purPrice\":12,\"sizeValues\":[408,407],\"specList\":[{\"colorId\":413,\"colorValue\":\"浅蓝色加绒\",\"sizeId\":408,\"sizeValue\":\"32\",\"specNum\":\"A0012D15032\",\"styleValue\":\"\"},{\"colorId\":413,\"colorValue\":\"浅蓝色加绒\",\"sizeId\":407,\"sizeValue\":\"31\",\"specNum\":\"A0012D15031\",\"styleValue\":\"\"},{\"colorId\":412,\"colorValue\":\"复古蓝加绒\",\"sizeId\":408,\"sizeValue\":\"32\",\"specNum\":\"A0012D14032\",\"styleValue\":\"\"},{\"colorId\":412,\"colorValue\":\"复古蓝加绒\",\"sizeId\":407,\"sizeValue\":\"31\",\"specNum\":\"A0012D14031\",\"styleValue\":\"\"}],\"supplierId\":33}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-16 10:34:33', 262);
INSERT INTO `sys_oper_log` VALUES (53, '菜单管理', 2, 'com.zhijian.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"\",\"createTime\":\"2023-12-27 15:00:27\",\"icon\":\"tool\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":3,\"menuName\":\"系统工具\",\"menuType\":\"M\",\"orderNum\":101,\"params\":{},\"parentId\":0,\"path\":\"tool\",\"perms\":\"\",\"query\":\"\",\"status\":\"1\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-16 10:44:35', 314);
INSERT INTO `sys_oper_log` VALUES (54, '菜单管理', 2, 'com.zhijian.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"\",\"createTime\":\"2023-12-27 15:00:27\",\"icon\":\"tool\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":3,\"menuName\":\"系统工具\",\"menuType\":\"M\",\"orderNum\":101,\"params\":{},\"parentId\":0,\"path\":\"tool\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-16 10:45:25', 26);
INSERT INTO `sys_oper_log` VALUES (55, '淘宝订单', 2, 'com.qihang.erp.api.controller.TaoOrderController.confirmOrder()', 'POST', 1, 'admin', NULL, '/tao/order/confirmOrder', '127.0.0.1', '内网IP', '{\"address\":\"吉林吉林省松原市扶余市 三井子镇 里\",\"auditStatus\":0,\"auditTime\":\"2022-07-31\",\"buyerName\":\"\",\"city\":\"\",\"closeReason\":\"\",\"createTime\":\"2022-07-31 18:13:59\",\"discountAmount\":0,\"discountRemark\":\"\",\"id\":\"1631273557325601885\",\"isMerge\":0,\"logisticsCode\":\"432700565699461\",\"logisticsCompany\":\"韵达速递\",\"orderCreateTime\":\"2022-07-31\",\"orderModifyTime\":\"2022-07-31\",\"orderSource\":0,\"params\":{},\"payAmount\":28.9,\"payTime\":\"2022-07-31\",\"phone\":\"18704389133\",\"province\":\"吉林\",\"receiver\":\"王淑芳\",\"sellerMemo\":\"\",\"sendStatus\":0,\"sendTime\":\"2022-07-31\",\"shipType\":0,\"shippingFee\":0,\"shopId\":6,\"status\":3,\"statusStr\":\"等待买家确认收货\",\"taoOrderItemList\":[],\"totalAmount\":28.9,\"updateBy\":\"admin\",\"updateTime\":\"2022-07-31 19:55:48\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-16 13:44:26', 127);
INSERT INTO `sys_oper_log` VALUES (56, '仓库订单发货', 1, 'com.qihang.erp.api.controller.WmsOrderShippingController.stockingAdd()', 'POST', 1, 'admin', NULL, '/wms/shipping/stockingAdd', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2024-01-16 14:10:02.57\",\"ids\":[11],\"stockOutNum\":\"202401161410022\"}', '{\"msg\":\"商品库存不足！\",\"code\":503}', 0, NULL, '2024-01-16 14:10:05', 39);
INSERT INTO `sys_oper_log` VALUES (57, '代码生成', 6, 'com.zhijian.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"erp_goods_spec\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-16 14:12:38', 220);
INSERT INTO `sys_oper_log` VALUES (58, '代码生成', 2, 'com.zhijian.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"goodsSpec\",\"className\":\"ErpGoodsSpec\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"主键id\",\"columnId\":1205,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-01-16 14:12:38\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":54,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"GoodsId\",\"columnComment\":\"商品id\",\"columnId\":1206,\"columnName\":\"goods_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-01-16 14:12:38\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"goodsId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":54,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"SpecName\",\"columnComment\":\"规格名\",\"columnId\":1207,\"columnName\":\"spec_name\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-16 14:12:38\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"specName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":54,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"SpecNum\",\"columnComment\":\"规格编码\",\"columnId\":1208,\"columnName\":\"spec_num\",\"columnType\":\"varchar(25)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-16 14:12:38\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"specNum\",\"javaType\":\"St', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-16 14:12:56', 122);
INSERT INTO `sys_oper_log` VALUES (59, '代码生成', 8, 'com.zhijian.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"erp_goods_spec\"}', NULL, 0, NULL, '2024-01-16 14:13:01', 653);
INSERT INTO `sys_oper_log` VALUES (60, '菜单管理', 1, 'com.zhijian.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"goods/spec\",\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"商品规格查询\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":2006,\"path\":\"spec_list\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-16 14:17:39', 29);
INSERT INTO `sys_oper_log` VALUES (61, '菜单管理', 2, 'com.zhijian.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"goods/spec\",\"createTime\":\"2024-01-16 14:17:39\",\"icon\":\"theme\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2067,\"menuName\":\"商品规格查询\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":2006,\"path\":\"spec_list\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-16 14:18:10', 13);
INSERT INTO `sys_oper_log` VALUES (62, '采购订单', 1, 'com.qihang.erp.api.controller.ScmPurchaseOrderController.add()', 'POST', 1, 'admin', NULL, '/purchase/purchaseOrder', '127.0.0.1', '内网IP', '{\"contactId\":33,\"createBy\":\"admin\",\"goodsList\":[{\"amount\":190,\"colorImage\":\"https://cbu01.alicdn.com/img/ibank/O1CN01AfNgvA2FOyAvwXZxv_!!2208857268871-0-cib.jpg\",\"colorValue\":\"黑色\",\"goodsId\":9,\"id\":32,\"name\":\"HN8026牛仔短裤\",\"number\":\"HN8026\",\"purPrice\":19,\"qty\":10,\"sizeValue\":\"2XL\",\"specNum\":\"2720210080260105\",\"styleValue\":\"\"}],\"orderAmount\":190,\"orderDate\":\"2024-01-16 00:00:00\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-16 14:44:08', 86);
INSERT INTO `sys_oper_log` VALUES (63, '采购订单', 2, 'com.qihang.erp.api.controller.ScmPurchaseOrderController.edit()', 'PUT', 1, 'admin', NULL, '/purchase/purchaseOrder', '127.0.0.1', '内网IP', '{\"auditUser\":\"启航\",\"id\":466,\"optionType\":\"audit\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-16 14:44:21', 14);
INSERT INTO `sys_oper_log` VALUES (64, '采购订单', 2, 'com.qihang.erp.api.controller.ScmPurchaseOrderController.edit()', 'PUT', 1, 'admin', NULL, '/purchase/purchaseOrder', '127.0.0.1', '内网IP', '{\"auditUser\":\"启航\",\"confirmUser\":\"启航\",\"id\":466,\"optionType\":\"confirm\",\"totalAmount\":190,\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-16 14:44:30', 48);
INSERT INTO `sys_oper_log` VALUES (65, '采购订单', 2, 'com.qihang.erp.api.controller.ScmPurchaseOrderController.edit()', 'PUT', 1, 'admin', NULL, '/purchase/purchaseOrder', '127.0.0.1', '内网IP', '{\"auditUser\":\"启航\",\"id\":466,\"optionType\":\"SupplierShip\",\"shipCompany\":\"菜鸟速递\",\"shipCost\":0,\"shipNo\":\"CN223533300022\",\"supplierDeliveryTime\":\"2024-01-16 00:00:00\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-16 14:49:49', 24);
INSERT INTO `sys_oper_log` VALUES (66, '采购订单物流', 2, 'com.qihang.erp.api.controller.ScmPurchaseOrderShipController.confirmReceipt()', 'PUT', 1, 'admin', NULL, '/purchase/PurchaseOrderShip', '127.0.0.1', '内网IP', '{\"backCount\":0,\"createBy\":\"admin\",\"createTime\":\"2024-01-16 14:49:49\",\"freight\":0,\"id\":466,\"orderDate\":\"2024-01-16\",\"orderGoodsUnit\":1,\"orderNo\":\"PUR20240116144408\",\"orderSpecUnit\":1,\"orderSpecUnitTotal\":10,\"params\":{},\"receiptTime\":\"2024-01-16 00:00:00\",\"shipCompany\":\"菜鸟速递\",\"shipNo\":\"CN223533300022\",\"shipTime\":\"2024-01-16\",\"status\":0,\"stockInCount\":0,\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-16 14:50:46', 16);
INSERT INTO `sys_oper_log` VALUES (67, '采购订单物流', 2, 'com.qihang.erp.api.controller.ScmPurchaseOrderShipController.createStockInEntry()', 'POST', 1, 'admin', NULL, '/purchase/PurchaseOrderShip/createStockInEntry', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2024-01-16 14:44:09\",\"goodsList\":[{\"colorImage\":\"https://cbu01.alicdn.com/img/ibank/O1CN01AfNgvA2FOyAvwXZxv_!!2208857268871-0-cib.jpg\",\"colorValue\":\"黑色\",\"goodsId\":9,\"goodsName\":\"HN8026牛仔短裤\",\"goodsNum\":\"HN8026\",\"id\":1962,\"inQty\":10,\"orderId\":466,\"params\":{},\"quantity\":10,\"remark\":\"\",\"sizeValue\":\"2XL\",\"specId\":32,\"specNum\":\"2720210080260105\",\"styleValue\":\"\"}],\"id\":466,\"params\":{},\"updateBy\":\"admin\",\"updateTime\":\"2024-01-16 14:50:46\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-16 14:50:57', 39);
INSERT INTO `sys_oper_log` VALUES (68, '入库单', 2, 'com.qihang.erp.api.controller.WmsStockInEntryController.stockIn()', 'POST', 1, 'admin', NULL, '/wms/WmsStockInEntry/stockIn', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2024-01-16 14:50:58\",\"id\":8,\"no\":\"20240116145057\",\"params\":{},\"sourceGoodsUnit\":1,\"sourceId\":466,\"sourceNo\":\"PUR20240116144408\",\"sourceSpecUnit\":1,\"sourceSpecUnitTotal\":10,\"sourceType\":1,\"status\":0,\"stockInOperator\":\"启航\",\"stockInOperatorId\":1,\"stockInTime\":\"2024-01-16 00:00:00\",\"updateBy\":\"admin\",\"wmsStockInEntryItemList\":[{\"colorImage\":\"https://cbu01.alicdn.com/img/ibank/O1CN01AfNgvA2FOyAvwXZxv_!!2208857268871-0-cib.jpg\",\"colorValue\":\"黑色\",\"createBy\":\"admin\",\"createTime\":\"2024-01-16 14:50:58\",\"entryId\":8,\"goodsId\":9,\"goodsName\":\"HN8026牛仔短裤\",\"goodsNum\":\"HN8026\",\"id\":4,\"inQuantity\":0,\"locationId\":20,\"locationNum\":\"A01-1-16\",\"originalQuantity\":10,\"params\":{},\"quantity\":10,\"remark\":\"\",\"sizeValue\":\"2XL\",\"sourceId\":466,\"sourceItemId\":1962,\"sourceType\":1,\"specId\":32,\"specNum\":\"2720210080260105\",\"status\":0,\"styleValue\":\"\",\"totalQuantity\":10}]}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-16 14:51:50', 42);
INSERT INTO `sys_oper_log` VALUES (69, '仓库订单发货', 1, 'com.qihang.erp.api.controller.WmsOrderShippingController.stockingAdd()', 'POST', 1, 'admin', NULL, '/wms/shipping/stockingAdd', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2024-01-16 14:52:27.889\",\"ids\":[11],\"stockOutNum\":\"202401161452276\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-16 14:52:29', 30);
INSERT INTO `sys_oper_log` VALUES (70, '出库单', 1, 'com.qihang.erp.api.controller.WmsStockOutEntryController.stockOut()', 'POST', 1, 'admin', NULL, '/wms/stockOutEntry/stockOut', '127.0.0.1', '内网IP', '{\"entryId\":2,\"entryItemId\":8,\"inventoryDetailId\":7,\"operatorId\":1,\"operatorName\":\"admin\",\"outQty\":1,\"specId\":32}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-16 14:52:43', 45);
INSERT INTO `sys_oper_log` VALUES (71, '出库单', 1, 'com.qihang.erp.api.controller.WmsStockOutEntryController.stockOut()', 'POST', 1, 'admin', NULL, '/wms/stockOutEntry/stockOut', '127.0.0.1', '内网IP', '{\"entryId\":2,\"entryItemId\":8,\"inventoryDetailId\":7,\"operatorId\":1,\"operatorName\":\"admin\",\"outQty\":1,\"specId\":32}', '{\"msg\":\"状态错误！\",\"code\":502}', 0, NULL, '2024-01-16 14:53:11', 8);
INSERT INTO `sys_oper_log` VALUES (72, '淘宝订单', 2, 'com.qihang.erp.api.controller.TaoOrderController.confirmOrder()', 'POST', 1, 'admin', NULL, '/tao/order/confirmOrder', '127.0.0.1', '内网IP', '{\"address\":\"上海上海 上海市 徐汇区 天平路街道 建国西路382号三楼4室 \",\"auditStatus\":0,\"auditTime\":\"2022-08-13\",\"buyerName\":\"\",\"city\":\"\",\"closeReason\":\"\",\"createTime\":\"2022-08-13 19:09:13\",\"discountAmount\":0,\"discountRemark\":\"\",\"id\":\"1642473483353670599\",\"isMerge\":0,\"logisticsCode\":\"432723807526979\",\"logisticsCompany\":\"韵达速递\",\"orderCreateTime\":\"2022-08-13\",\"orderModifyTime\":\"2022-08-13\",\"orderSource\":0,\"params\":{},\"payAmount\":29.92,\"payTime\":\"2022-08-13\",\"phone\":\"17321293202\",\"province\":\"上海\",\"receiver\":\"戴志兰\",\"sellerMemo\":\"\",\"sendStatus\":0,\"sendTime\":\"2022-08-13\",\"shipType\":0,\"shippingFee\":0,\"shopId\":6,\"status\":3,\"statusStr\":\"等待买家确认收货\",\"taoOrderItemList\":[],\"totalAmount\":29.92,\"updateBy\":\"admin\",\"updateTime\":\"2022-08-13 21:23:33\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-16 15:04:52', 73);
INSERT INTO `sys_oper_log` VALUES (73, '仓库订单发货', 1, 'com.qihang.erp.api.controller.WmsOrderShippingController.stockingAdd()', 'POST', 1, 'admin', NULL, '/wms/shipping/stockingAdd', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2024-01-16 15:04:59.9\",\"ids\":[12],\"stockOutNum\":\"202401161504597\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-16 15:05:01', 14);
INSERT INTO `sys_oper_log` VALUES (74, '出库单', 1, 'com.qihang.erp.api.controller.WmsStockOutEntryController.stockOut()', 'POST', 1, 'admin', NULL, '/wms/stockOutEntry/stockOut', '127.0.0.1', '内网IP', '{\"entryId\":3,\"entryItemId\":9,\"inventoryDetailId\":7,\"operatorId\":1,\"operatorName\":\"admin\",\"outQty\":1,\"specId\":32}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-16 15:06:05', 43952);
INSERT INTO `sys_oper_log` VALUES (75, '菜单管理', 2, 'com.zhijian.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"bill/orderShipCost\",\"createTime\":\"2024-01-12 18:35:31\",\"icon\":\"guide\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2063,\"menuName\":\"发货物流账单\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":2018,\"path\":\"orderShipCost\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-16 15:28:42', 33);
INSERT INTO `sys_oper_log` VALUES (76, '菜单管理', 2, 'com.zhijian.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2024-01-12 18:35:55\",\"icon\":\"example\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2064,\"menuName\":\"店铺账单管理\",\"menuType\":\"M\",\"orderNum\":4,\"params\":{},\"parentId\":2018,\"path\":\"s\",\"perms\":\"\",\"status\":\"1\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-16 15:28:47', 12);
INSERT INTO `sys_oper_log` VALUES (77, '菜单管理', 2, 'com.zhijian.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2024-01-12 18:35:02\",\"icon\":\"theme\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2062,\"menuName\":\"代发账单管理\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":2018,\"path\":\"d\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-16 15:29:08', 13);
INSERT INTO `sys_oper_log` VALUES (78, '店铺订单', 2, 'com.qihang.erp.api.controller.ErpOrderController.ship()', 'POST', 1, 'admin', NULL, '/api/order/ship', '127.0.0.1', '内网IP', '{\"address\":\"上海上海 上海市 徐汇区 天平路街道 建国西路382号三楼4室 \",\"amount\":29.92,\"city\":\"\",\"confirmTime\":\"2024-01-16\",\"country\":\"中国\",\"createBy\":\"admin\",\"createTime\":\"2024-01-16 15:04:52\",\"discountAmount\":0,\"erpOrderItemList\":[{\"createBy\":\"admin\",\"createTime\":\"2024-01-16 15:04:52\",\"goodsId\":9,\"goodsImg\":\"https://cbu01.alicdn.com/img/ibank/O1CN01AfNgvA2FOyAvwXZxv_!!2208857268871-0-cib.jpg\",\"goodsNum\":\"272021008026\",\"goodsPrice\":29.92,\"goodsSpec\":\"黑色,2XL\",\"goodsTitle\":\"8026牛仔短裤\",\"id\":13,\"isGift\":0,\"itemAmount\":29.92,\"orderId\":16,\"orderItemNum\":\"1642473483353670599\",\"params\":{},\"quantity\":1,\"refundCount\":0,\"refundStatus\":1,\"specId\":32,\"specNum\":\"2720210080260105\",\"supplierId\":26}],\"goodsAmount\":29.92,\"height\":19.0,\"id\":16,\"length\":20.0,\"orderNum\":\"1642473483353670599\",\"orderStatus\":2,\"params\":{},\"payTime\":\"2022-08-13\",\"postage\":0,\"province\":\"上海\",\"receiverName\":\"戴志兰\",\"receiverPhone\":\"17321293202\",\"refundStatus\":1,\"shipType\":0,\"shippingCompany\":\"菜鸟速递\",\"shippingCost\":3,\"shippingMan\":\"启航\",\"shippingNumber\":\"CN2210003552\",\"shopId\":6,\"shopType\":4,\"town\":\"\",\"updateBy\":\"admin\",\"updateTime\":\"2024-01-16 15:05:56\",\"weight\":409.0,\"width\":56.0}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-16 15:42:53', 17950);
INSERT INTO `sys_oper_log` VALUES (79, '代码生成', 6, 'com.zhijian.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"s_shop_setting\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-18 17:42:22', 344);
INSERT INTO `sys_oper_log` VALUES (80, '代码生成', 2, 'com.zhijian.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"shopSetting\",\"className\":\"ShopSetting\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"主键\",\"columnId\":1226,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-01-18 17:42:22\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":55,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"配置名\",\"columnId\":1227,\"columnName\":\"name\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-18 17:42:22\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":55,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"AppKey\",\"columnComment\":\"appKey\",\"columnId\":1228,\"columnName\":\"app_key\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-18 17:42:22\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"appKey\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":55,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"AppSecret\",\"columnComment\":\"appSecret\",\"columnId\":1229,\"columnName\":\"app_secret\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-18 17:42:22\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"appSecre', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-18 17:43:02', 109);
INSERT INTO `sys_oper_log` VALUES (81, '代码生成', 8, 'com.zhijian.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"s_shop_setting\"}', NULL, 0, NULL, '2024-01-18 17:43:15', 534);
INSERT INTO `sys_oper_log` VALUES (82, '店铺', 2, 'com.qihang.erp.api.controller.ShopController.edit()', 'PUT', 1, 'admin', NULL, '/shop/shop', '127.0.0.1', '内网IP', '{\"appSercet\":\"\",\"appkey\":\"\",\"company\":\"华衣云商\",\"ename\":\"douyin\",\"id\":22,\"isDelete\":0,\"isShow\":1,\"modifyOn\":1653672695,\"name\":\"梦小妮牛仔裤\",\"nickName\":\"抖音-梦小妮\",\"orderNum\":87,\"params\":{},\"sellerUserId\":0,\"sellerUserIdStr\":\"0\",\"sessionKey\":\"\",\"type\":6,\"url\":\"http://openapi.jinritemai.com\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-18 19:46:21', 21);
INSERT INTO `sys_oper_log` VALUES (83, '店铺', 2, 'com.qihang.erp.api.controller.ShopController.edit()', 'PUT', 1, 'admin', NULL, '/shop/shop', '127.0.0.1', '内网IP', '{\"apiRequestUrl\":\"http://gw.api.taobao.com/router/rest\",\"appSercet\":\"7b0769269b0c0ca88949791c14eb3a5c\",\"appkey\":\"31014100\",\"company\":\"煜梦服饰\",\"ename\":\"taobao\",\"id\":6,\"isDelete\":0,\"isShow\":1,\"modifyOn\":0,\"name\":\"梦小妮牛仔裤\",\"nickName\":\"淘宝-梦小妮\",\"orderNum\":98,\"params\":{},\"remark\":\"\",\"sellerUserId\":2200787809358,\"sellerUserIdStr\":\"0\",\"sessionKey\":\"610140071d1070a37cecea89f1c1f3d6e5d19bf4b58dd942200787809358\",\"type\":4,\"url\":\"\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-18 19:56:00', 28);
INSERT INTO `sys_oper_log` VALUES (84, '店铺', 2, 'com.qihang.erp.api.controller.ShopController.edit()', 'PUT', 1, 'admin', NULL, '/shop/shop', '127.0.0.1', '内网IP', '{\"apiRequestUrl\":\"http://gw.api.taobao.com/router/rest\",\"appSercet\":\"7b0769269b0c0ca88949791c14eb3a5c\",\"appkey\":\"31014100\",\"company\":\"煜梦服饰\",\"ename\":\"taobao\",\"id\":6,\"isDelete\":0,\"isShow\":1,\"modifyOn\":0,\"name\":\"梦小妮牛仔裤\",\"nickName\":\"淘宝-梦小妮\",\"orderNum\":98,\"params\":{},\"remark\":\"\",\"sellerUserId\":2200787809358,\"sellerUserIdStr\":\"0\",\"sessionKey\":\"610140071d1070a37cecea89f1c1f3d6e5d19bf4b58dd942200787809358\",\"type\":4,\"url\":\"\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-18 19:57:45', 27);
INSERT INTO `sys_oper_log` VALUES (85, '菜单管理', 2, 'com.zhijian.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"\",\"createTime\":\"2023-12-29 17:07:23\",\"icon\":\"money\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2018,\"menuName\":\"财务管理\",\"menuType\":\"M\",\"orderNum\":6,\"params\":{},\"parentId\":0,\"path\":\"fms\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-28 11:21:32', 18);
INSERT INTO `sys_oper_log` VALUES (86, '菜单管理', 2, 'com.zhijian.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"scm/purchase/cost\",\"createTime\":\"2023-12-29 17:09:32\",\"icon\":\"shopping\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2019,\"menuName\":\"采购账单管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2018,\"path\":\"purchase\",\"perms\":\"\",\"query\":\"\",\"status\":\"1\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-28 11:22:15', 10);
INSERT INTO `sys_oper_log` VALUES (87, '菜单管理', 1, 'com.zhijian.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"example\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"应收管理\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":2018,\"path\":\"receivable\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-28 11:23:36', 10);
INSERT INTO `sys_oper_log` VALUES (88, '菜单管理', 1, 'com.zhijian.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"checkbox\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"商品销售收入\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2068,\"path\":\"order\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-28 11:24:35', 9);
INSERT INTO `sys_oper_log` VALUES (89, '菜单管理', 2, 'com.zhijian.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2024-01-28 11:24:35\",\"icon\":\"checkbox\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2069,\"menuName\":\"订单应收\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2068,\"path\":\"order\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-28 11:25:16', 10);
INSERT INTO `sys_oper_log` VALUES (90, '菜单管理', 1, 'com.zhijian.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"bug\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"退款款项\",\"menuType\":\"M\",\"orderNum\":2,\"params\":{},\"parentId\":2068,\"path\":\"refund\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-28 11:26:55', 7);
INSERT INTO `sys_oper_log` VALUES (91, '菜单管理', 2, 'com.zhijian.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2024-01-28 11:24:35\",\"icon\":\"checkbox\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2069,\"menuName\":\"订单收入\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2068,\"path\":\"order\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-28 11:27:25', 11);
INSERT INTO `sys_oper_log` VALUES (92, '菜单管理', 1, 'com.zhijian.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"cascader\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"平台服务费\",\"menuType\":\"M\",\"orderNum\":3,\"params\":{},\"parentId\":2068,\"path\":\"service_fee\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-28 11:28:03', 8);
INSERT INTO `sys_oper_log` VALUES (93, '菜单管理', 1, 'com.zhijian.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"clipboard\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"应付管理\",\"menuType\":\"M\",\"orderNum\":2,\"params\":{},\"parentId\":2018,\"path\":\"payable\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-28 11:29:21', 7);
INSERT INTO `sys_oper_log` VALUES (94, '菜单管理', 2, 'com.zhijian.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2024-01-12 18:35:02\",\"icon\":\"theme\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2062,\"menuName\":\"代发账单\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":2072,\"path\":\"d\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-28 11:29:56', 9);
INSERT INTO `sys_oper_log` VALUES (95, '菜单管理', 1, 'com.zhijian.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"component\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"采购应付\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2072,\"path\":\"purchase\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-28 11:30:49', 23);
INSERT INTO `sys_oper_log` VALUES (96, '菜单管理', 2, 'com.zhijian.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"bill/orderShipCost\",\"createTime\":\"2024-01-12 18:35:31\",\"icon\":\"guide\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2063,\"menuName\":\"物流费用\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":2072,\"path\":\"orderShipCost\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-28 11:31:38', 9);
INSERT INTO `sys_oper_log` VALUES (97, '菜单管理', 1, 'com.zhijian.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"cascader\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"采购退货\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":2072,\"path\":\"return\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-28 11:32:21', 9);
INSERT INTO `sys_oper_log` VALUES (98, '菜单管理', 2, 'com.zhijian.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2024-01-12 18:35:02\",\"icon\":\"theme\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2062,\"menuName\":\"代发账单\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":2072,\"path\":\"daifa\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-28 11:32:39', 8);
INSERT INTO `sys_oper_log` VALUES (99, '菜单管理', 2, 'com.zhijian.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"bill/orderShipCost\",\"createTime\":\"2024-01-12 18:35:31\",\"icon\":\"guide\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2063,\"menuName\":\"物流费用\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":2072,\"path\":\"shipCost\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-28 11:32:53', 8);
INSERT INTO `sys_oper_log` VALUES (100, '菜单管理', 1, 'com.zhijian.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"cascader\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"营销费用\",\"menuType\":\"C\",\"orderNum\":5,\"params\":{},\"parentId\":2072,\"path\":\"market_fee\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-28 11:33:37', 10);
INSERT INTO `sys_oper_log` VALUES (101, '菜单管理', 1, 'com.zhijian.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"clipboard\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"其他费用\",\"menuType\":\"C\",\"orderNum\":6,\"params\":{},\"parentId\":2072,\"path\":\"other_fee\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-28 11:34:01', 6);
INSERT INTO `sys_oper_log` VALUES (102, '菜单管理', 1, 'com.zhijian.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"druid\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"存货报表\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":2018,\"path\":\"inventory_report\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-28 11:36:05', 9);
INSERT INTO `sys_oper_log` VALUES (103, '采购订单', 1, 'com.qihang.erp.api.controller.ScmPurchaseOrderController.add()', 'POST', 1, 'admin', NULL, '/purchase/purchaseOrder', '127.0.0.1', '内网IP', '{\"contactId\":33,\"createBy\":\"admin\",\"goodsList\":[{\"amount\":42,\"colorImage\":\"https://cbu01.alicdn.com/img/ibank/O1CN01yp4pfJ2FOyGRQhOVF_!!2208857268871-0-cib.jpg\",\"colorValue\":\"浅蓝色\",\"goodsId\":29,\"id\":438,\"name\":\"HNP182弹力紧身贴标牛仔短裤女ins\",\"number\":\"HNP182\",\"purPrice\":21,\"qty\":2,\"sizeValue\":\"XL\",\"specNum\":\"HNP1825004\",\"styleValue\":\"\"}],\"orderAmount\":42,\"orderDate\":\"2024-01-28 00:00:00\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-28 11:36:56', 30);
INSERT INTO `sys_oper_log` VALUES (104, '采购订单', 2, 'com.qihang.erp.api.controller.ScmPurchaseOrderController.edit()', 'PUT', 1, 'admin', NULL, '/purchase/purchaseOrder', '127.0.0.1', '内网IP', '{\"auditUser\":\"启航\",\"id\":467,\"optionType\":\"audit\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-28 11:37:11', 11);
INSERT INTO `sys_oper_log` VALUES (105, '采购订单', 2, 'com.qihang.erp.api.controller.ScmPurchaseOrderController.edit()', 'PUT', 1, 'admin', NULL, '/purchase/purchaseOrder', '127.0.0.1', '内网IP', '{\"auditUser\":\"启航\",\"confirmUser\":\"启航\",\"id\":467,\"optionType\":\"confirm\",\"totalAmount\":42,\"updateBy\":\"admin\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: Table \'qihang-erp.scm_purchase_order_cost\' doesn\'t exist\r\n### The error may exist in file [D:\\projects\\qihang.ecom.erp\\ecerp-api\\target\\classes\\mapper\\api\\ScmPurchaseOrderCostMapper.xml]\r\n### The error may involve com.qihang.erp.api.mapper.ScmPurchaseOrderCostMapper.insertScmPurchaseOrderCost-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into scm_purchase_order_cost          ( id,             order_amount,             order_date,             order_no,             order_spec_unit,             order_goods_unit,             order_spec_unit_total,             actual_amount,             freight,             confirm_user,             confirm_time,             create_by,             pay_amount,                          pay_count,                          status )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,                          ?,                          ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: Table \'qihang-erp.scm_purchase_order_cost\' doesn\'t exist\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Table \'qihang-erp.scm_purchase_order_cost\' doesn\'t exist', '2024-01-28 11:37:18', 14);
INSERT INTO `sys_oper_log` VALUES (106, '采购订单', 2, 'com.qihang.erp.api.controller.ScmPurchaseOrderController.edit()', 'PUT', 1, 'admin', NULL, '/purchase/purchaseOrder', '127.0.0.1', '内网IP', '{\"auditUser\":\"启航\",\"confirmUser\":\"启航\",\"id\":467,\"optionType\":\"confirm\",\"totalAmount\":42,\"updateBy\":\"admin\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: Table \'qihang-erp.scm_purchase_order_cost\' doesn\'t exist\r\n### The error may exist in file [D:\\projects\\qihang.ecom.erp\\ecerp-api\\target\\classes\\mapper\\api\\ScmPurchaseOrderCostMapper.xml]\r\n### The error may involve com.qihang.erp.api.mapper.ScmPurchaseOrderCostMapper.insertScmPurchaseOrderCost-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into scm_purchase_order_cost          ( id,             order_amount,             order_date,             order_no,             order_spec_unit,             order_goods_unit,             order_spec_unit_total,             actual_amount,             freight,             confirm_user,             confirm_time,             create_by,             pay_amount,                          pay_count,                          status )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,                          ?,                          ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: Table \'qihang-erp.scm_purchase_order_cost\' doesn\'t exist\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Table \'qihang-erp.scm_purchase_order_cost\' doesn\'t exist', '2024-01-28 11:39:26', 6);
INSERT INTO `sys_oper_log` VALUES (107, '采购订单', 2, 'com.qihang.erp.api.controller.ScmPurchaseOrderController.edit()', 'PUT', 1, 'admin', NULL, '/purchase/purchaseOrder', '127.0.0.1', '内网IP', '{\"auditUser\":\"启航\",\"confirmUser\":\"启航\",\"id\":467,\"optionType\":\"confirm\",\"totalAmount\":42,\"updateBy\":\"admin\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: Table \'qihang-erp.scm_purchase_order_cost\' doesn\'t exist\r\n### The error may exist in file [D:\\projects\\qihang.ecom.erp\\ecerp-api\\target\\classes\\mapper\\api\\ScmPurchaseOrderCostMapper.xml]\r\n### The error may involve com.qihang.erp.api.mapper.ScmPurchaseOrderCostMapper.insertScmPurchaseOrderCost-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into scm_purchase_order_cost          ( id,             order_amount,             order_date,             order_no,             order_spec_unit,             order_goods_unit,             order_spec_unit_total,             actual_amount,             freight,             confirm_user,             confirm_time,             create_by,             pay_amount,                          pay_count,                          status )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,                          ?,                          ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: Table \'qihang-erp.scm_purchase_order_cost\' doesn\'t exist\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Table \'qihang-erp.scm_purchase_order_cost\' doesn\'t exist', '2024-01-28 11:39:48', 7);
INSERT INTO `sys_oper_log` VALUES (108, '采购订单', 2, 'com.qihang.erp.api.controller.ScmPurchaseOrderController.edit()', 'PUT', 1, 'admin', NULL, '/purchase/purchaseOrder', '127.0.0.1', '内网IP', '{\"auditUser\":\"启航\",\"confirmUser\":\"启航\",\"id\":467,\"optionType\":\"confirm\",\"totalAmount\":42,\"updateBy\":\"admin\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: Table \'qihang-erp.scm_purchase_order_cost\' doesn\'t exist\r\n### The error may exist in file [D:\\projects\\qihang.ecom.erp\\ecerp-api\\target\\classes\\mapper\\api\\ScmPurchaseOrderCostMapper.xml]\r\n### The error may involve com.qihang.erp.api.mapper.ScmPurchaseOrderCostMapper.insertScmPurchaseOrderCost-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into scm_purchase_order_cost          ( id,             order_amount,             order_date,             order_no,             order_spec_unit,             order_goods_unit,             order_spec_unit_total,             actual_amount,             freight,             confirm_user,             confirm_time,             create_by,             pay_amount,                          pay_count,                          status )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,                          ?,                          ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: Table \'qihang-erp.scm_purchase_order_cost\' doesn\'t exist\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Table \'qihang-erp.scm_purchase_order_cost\' doesn\'t exist', '2024-01-28 11:41:41', 61065);
INSERT INTO `sys_oper_log` VALUES (109, '采购订单', 2, 'com.qihang.erp.api.controller.ScmPurchaseOrderController.edit()', 'PUT', 1, 'admin', NULL, '/purchase/purchaseOrder', '127.0.0.1', '内网IP', '{\"auditUser\":\"启航\",\"confirmUser\":\"启航\",\"id\":467,\"optionType\":\"confirm\",\"totalAmount\":42,\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-28 11:42:19', 7648);
INSERT INTO `sys_oper_log` VALUES (110, '采购订单', 2, 'com.qihang.erp.api.controller.ScmPurchaseOrderController.edit()', 'PUT', 1, 'admin', NULL, '/purchase/purchaseOrder', '127.0.0.1', '内网IP', '{\"auditUser\":\"启航\",\"confirmUser\":\"启航\",\"id\":467,\"optionType\":\"SupplierShip\",\"shipCompany\":\"德邦快递\",\"shipCost\":0,\"shipNo\":\"DFB455552202632\",\"supplierDeliveryTime\":\"2024-01-28 00:00:00\",\"totalAmount\":42,\"updateBy\":\"admin\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: Table \'qihang-erp.scm_purchase_order_cost\' doesn\'t exist\r\n### The error may exist in file [D:\\projects\\qihang.ecom.erp\\ecerp-api\\target\\classes\\mapper\\api\\ScmPurchaseOrderCostMapper.xml]\r\n### The error may involve com.qihang.erp.api.mapper.ScmPurchaseOrderCostMapper.updateScmPurchaseOrderCost-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update scm_purchase_order_cost          SET freight = ?          where id = ?\r\n### Cause: java.sql.SQLSyntaxErrorException: Table \'qihang-erp.scm_purchase_order_cost\' doesn\'t exist\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Table \'qihang-erp.scm_purchase_order_cost\' doesn\'t exist', '2024-01-28 11:43:43', 39170);
INSERT INTO `sys_oper_log` VALUES (111, '采购订单', 2, 'com.qihang.erp.api.controller.ScmPurchaseOrderController.edit()', 'PUT', 1, 'admin', NULL, '/purchase/purchaseOrder', '127.0.0.1', '内网IP', '{\"auditUser\":\"启航\",\"confirmUser\":\"启航\",\"id\":467,\"optionType\":\"SupplierShip\",\"shipCompany\":\"德邦快递\",\"shipCost\":0,\"shipNo\":\"DFB455552202632\",\"supplierDeliveryTime\":\"2024-01-28 00:00:00\",\"totalAmount\":42,\"updateBy\":\"admin\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: Table \'qihang-erp.scm_purchase_order_cost\' doesn\'t exist\r\n### The error may exist in file [D:\\projects\\qihang.ecom.erp\\ecerp-api\\target\\classes\\mapper\\api\\ScmPurchaseOrderCostMapper.xml]\r\n### The error may involve com.qihang.erp.api.mapper.ScmPurchaseOrderCostMapper.updateScmPurchaseOrderCost-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update scm_purchase_order_cost          SET freight = ?          where id = ?\r\n### Cause: java.sql.SQLSyntaxErrorException: Table \'qihang-erp.scm_purchase_order_cost\' doesn\'t exist\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Table \'qihang-erp.scm_purchase_order_cost\' doesn\'t exist', '2024-01-28 11:43:54', 15);
INSERT INTO `sys_oper_log` VALUES (112, '代码生成', 6, 'com.zhijian.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"fms_payable_purchase\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-28 11:50:56', 66);
INSERT INTO `sys_oper_log` VALUES (113, '代码生成', 2, 'com.zhijian.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"payablePurchase\",\"className\":\"FmsPayablePurchase\",\"columns\":[{\"capJavaField\":\"Id\",\"columnId\":1239,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-01-28 11:50:56\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":56,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"SupplierId\",\"columnComment\":\"供应商id\",\"columnId\":1240,\"columnName\":\"supplier_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-01-28 11:50:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"supplierId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":56,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"SupplierName\",\"columnComment\":\"供应商名称\",\"columnId\":1241,\"columnName\":\"supplier_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-28 11:50:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"supplierName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":56,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Amount\",\"columnComment\":\"应付金额\",\"columnId\":1242,\"columnName\":\"amount\",\"columnType\":\"decimal(10,2)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-28 11:50:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaFiel', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-28 11:51:30', 34);
INSERT INTO `sys_oper_log` VALUES (114, '代码生成', 8, 'com.zhijian.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"fms_payable_purchase\"}', NULL, 0, NULL, '2024-01-28 11:51:53', 337);
INSERT INTO `sys_oper_log` VALUES (115, '菜单管理', 2, 'com.zhijian.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"fms/payable/purchase\",\"createTime\":\"2024-01-28 11:30:49\",\"icon\":\"component\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2073,\"menuName\":\"采购应付\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2072,\"path\":\"purchase\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-28 11:55:53', 15);
INSERT INTO `sys_oper_log` VALUES (116, '采购订单', 2, 'com.qihang.erp.api.controller.ScmPurchaseOrderController.edit()', 'PUT', 1, 'admin', NULL, '/purchase/purchaseOrder', '127.0.0.1', '内网IP', '{\"auditUser\":\"启航\",\"id\":467,\"optionType\":\"SupplierShip\",\"shipCompany\":\"菜鸟速递\",\"shipCost\":10,\"shipNo\":\"CN345565767\",\"supplierDeliveryTime\":\"2024-01-28 00:00:00\",\"updateBy\":\"admin\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\r\n### The error may exist in file [D:\\projects\\qihang.ecom.erp\\ecerp-api\\target\\classes\\mapper\\fms\\FmsPayablePurchaseMapper.xml]\r\n### The error may involve com.qihang.erp.api.mapper.FmsPayablePurchaseMapper.insertFmsPayablePurchase-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into fms_payable_purchase          ( supplier_id,             supplier_name,             amount,             date,                          purchase_order_no,             purchase_desc,                          status,             create_time,             create_by )           values ( ?,             ?,             ?,             ?,                          ?,             ?,                          ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n; Field \'id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'id\' doesn\'t have a default value', '2024-01-28 12:07:03', 19882);
INSERT INTO `sys_oper_log` VALUES (117, '采购订单', 2, 'com.qihang.erp.api.controller.ScmPurchaseOrderController.edit()', 'PUT', 1, 'admin', NULL, '/purchase/purchaseOrder', '127.0.0.1', '内网IP', '{\"auditUser\":\"启航\",\"id\":467,\"optionType\":\"SupplierShip\",\"shipCompany\":\"菜鸟速递\",\"shipCost\":10,\"shipNo\":\"CN345565767\",\"supplierDeliveryTime\":\"2024-01-28 00:00:00\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-28 12:07:31', 26);
INSERT INTO `sys_oper_log` VALUES (118, '定时任务', 2, 'com.zhijian.quartz.controller.SysJobController.edit()', 'PUT', 1, 'admin', NULL, '/monitor/job', '127.0.0.1', '内网IP', '{\"concurrent\":\"1\",\"createBy\":\"admin\",\"createTime\":\"2023-08-07 19:31:38\",\"cronExpression\":\"0/10 * * * * ?\",\"invokeTarget\":\"ryTask.ryNoParams\",\"jobGroup\":\"DEFAULT\",\"jobId\":1,\"jobName\":\"系统默认（无参）\",\"misfirePolicy\":\"1\",\"nextValidTime\":\"2024-01-28 13:30:00\",\"params\":{},\"remark\":\"\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-28 13:29:54', 14);
INSERT INTO `sys_oper_log` VALUES (119, '定时任务', 2, 'com.zhijian.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', NULL, '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":1,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-28 13:30:18', 7);
INSERT INTO `sys_oper_log` VALUES (120, '定时任务', 1, 'com.zhijian.quartz.controller.SysJobController.add()', 'POST', 1, 'admin', NULL, '/monitor/job', '127.0.0.1', '内网IP', '{\"concurrent\":\"1\",\"cronExpression\":\"0/30 * * * * ?\",\"invokeTarget\":\"inventoryReportTask\",\"jobGroup\":\"SYSTEM\",\"jobName\":\"库存存货日报生成\",\"misfirePolicy\":\"1\",\"nextValidTime\":\"2024-01-28 13:33:00\",\"params\":{},\"status\":\"0\"}', NULL, 1, 'No bean named \'inventoryReportTask\' available', '2024-01-28 13:32:30', 0);
INSERT INTO `sys_oper_log` VALUES (121, '定时任务', 1, 'com.zhijian.quartz.controller.SysJobController.add()', 'POST', 1, 'admin', NULL, '/monitor/job', '127.0.0.1', '内网IP', '{\"concurrent\":\"1\",\"cronExpression\":\"0/30 * * * * ?\",\"invokeTarget\":\"inventoryReportTask\",\"jobGroup\":\"SYSTEM\",\"jobName\":\"库存存货日报生成\",\"misfirePolicy\":\"1\",\"nextValidTime\":\"2024-01-28 13:34:30\",\"params\":{},\"status\":\"0\"}', NULL, 1, 'No bean named \'inventoryReportTask\' available', '2024-01-28 13:34:11', 0);
INSERT INTO `sys_oper_log` VALUES (122, '定时任务', 1, 'com.zhijian.quartz.controller.SysJobController.add()', 'POST', 1, 'admin', NULL, '/monitor/job', '127.0.0.1', '内网IP', '{\"concurrent\":\"1\",\"cronExpression\":\"0/30 * * * * ?\",\"invokeTarget\":\"inventoryReportTask\",\"jobGroup\":\"SYSTEM\",\"jobName\":\"库存存货日报生成\",\"misfirePolicy\":\"1\",\"nextValidTime\":\"2024-01-28 13:36:00\",\"params\":{},\"status\":\"0\"}', NULL, 1, 'No bean named \'inventoryReportTask\' available', '2024-01-28 13:35:34', 1);
INSERT INTO `sys_oper_log` VALUES (123, '定时任务', 1, 'com.zhijian.quartz.controller.SysJobController.add()', 'POST', 1, 'admin', NULL, '/monitor/job', '127.0.0.1', '内网IP', '{\"concurrent\":\"1\",\"cronExpression\":\"0/30 * * * * ?\",\"invokeTarget\":\"inventoryReportTask\",\"jobGroup\":\"SYSTEM\",\"jobName\":\"库存存货日报生成\",\"misfirePolicy\":\"1\",\"nextValidTime\":\"2024-01-28 13:36:00\",\"params\":{},\"status\":\"0\"}', NULL, 1, 'No bean named \'inventoryReportTask\' available', '2024-01-28 13:35:44', 1);
INSERT INTO `sys_oper_log` VALUES (124, '定时任务', 1, 'com.zhijian.quartz.controller.SysJobController.add()', 'POST', 1, 'admin', NULL, '/monitor/job', '127.0.0.1', '内网IP', '{\"concurrent\":\"1\",\"cronExpression\":\"0/30 * * * * ?\",\"invokeTarget\":\"inventoryReportTask.run()\",\"jobGroup\":\"SYSTEM\",\"jobName\":\"库存存货日报生成\",\"misfirePolicy\":\"1\",\"nextValidTime\":\"2024-01-28 13:40:30\",\"params\":{},\"status\":\"0\"}', NULL, 1, 'No bean named \'inventoryReportTask\' available', '2024-01-28 13:40:24', 1);
INSERT INTO `sys_oper_log` VALUES (125, '定时任务', 1, 'com.zhijian.quartz.controller.SysJobController.add()', 'POST', 1, 'admin', NULL, '/monitor/job', '127.0.0.1', '内网IP', '{\"concurrent\":\"1\",\"cronExpression\":\"0/30 * * * * ?\",\"invokeTarget\":\"inventoryReportTask.run()\",\"jobGroup\":\"SYSTEM\",\"jobName\":\"库存存货日报生成\",\"misfirePolicy\":\"1\",\"nextValidTime\":\"2024-01-28 13:42:00\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"新增任务\'库存存货日报生成\'失败，目标字符串不在白名单内\",\"code\":500}', 0, NULL, '2024-01-28 13:41:58', 7);
INSERT INTO `sys_oper_log` VALUES (126, '定时任务', 1, 'com.zhijian.quartz.controller.SysJobController.add()', 'POST', 1, 'admin', NULL, '/monitor/job', '127.0.0.1', '内网IP', '{\"concurrent\":\"1\",\"createBy\":\"admin\",\"cronExpression\":\"0/30 * * * * ?\",\"invokeTarget\":\"inventoryReportTask.run()\",\"jobGroup\":\"SYSTEM\",\"jobId\":100,\"jobName\":\"库存存货日报生成\",\"misfirePolicy\":\"1\",\"nextValidTime\":\"2024-01-28 13:45:00\",\"params\":{},\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-28 13:44:43', 114);
INSERT INTO `sys_oper_log` VALUES (127, '定时任务', 2, 'com.zhijian.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', NULL, '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":100,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-28 13:44:54', 13);
INSERT INTO `sys_oper_log` VALUES (128, '定时任务', 2, 'com.zhijian.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', NULL, '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"jobId\":100,\"misfirePolicy\":\"0\",\"params\":{},\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-28 13:47:14', 28);
INSERT INTO `sys_oper_log` VALUES (129, '代码生成', 3, 'com.zhijian.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/52,53,54,55,56', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-28 14:33:26', 10);
INSERT INTO `sys_oper_log` VALUES (130, '代码生成', 6, 'com.zhijian.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"fms_inventory_report,fms_inventory_report_detail,fms_receivable_order\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-28 14:33:45', 96);
INSERT INTO `sys_oper_log` VALUES (131, '代码生成', 2, 'com.zhijian.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"receivableOrder\",\"className\":\"FmsReceivableOrder\",\"columns\":[{\"capJavaField\":\"Id\",\"columnId\":1275,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-01-28 14:33:45\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":59,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Date\",\"columnComment\":\"日期\",\"columnId\":1276,\"columnName\":\"date\",\"columnType\":\"date\",\"createBy\":\"admin\",\"createTime\":\"2024-01-28 14:33:45\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"datetime\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"date\",\"javaType\":\"Date\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":59,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"OrderNum\",\"columnComment\":\"订单号\",\"columnId\":1277,\"columnName\":\"order_num\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-28 14:33:45\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"orderNum\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":true,\"tableId\":59,\"updateBy\":\"\",\"usableColumn\":true},{\"capJavaField\":\"OrderId\",\"columnComment\":\"订单id\",\"columnId\":1278,\"columnName\":\"order_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-01-28 14:33:45\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"orderId\",\"javaType\":\"Long\",\"list\":true', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-28 14:34:14', 47);
INSERT INTO `sys_oper_log` VALUES (132, '代码生成', 2, 'com.zhijian.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"reportDetail\",\"className\":\"FmsInventoryReportDetail\",\"columns\":[{\"capJavaField\":\"Id\",\"columnId\":1263,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-01-28 14:33:45\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":58,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ReportId\",\"columnComment\":\"Report外键ID\",\"columnId\":1264,\"columnName\":\"report_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-01-28 14:33:45\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"reportId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":58,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Date\",\"columnComment\":\"日期\",\"columnId\":1265,\"columnName\":\"date\",\"columnType\":\"date\",\"createBy\":\"admin\",\"createTime\":\"2024-01-28 14:33:45\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"datetime\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"date\",\"javaType\":\"Date\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":58,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"GoodsId\",\"columnComment\":\"商品id\",\"columnId\":1266,\"columnName\":\"goods_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-01-28 14:33:45\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"goodsId\",\"javaType\":\"Long\",\"list\":t', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-28 14:34:44', 26);
INSERT INTO `sys_oper_log` VALUES (133, '代码生成', 2, 'com.zhijian.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"inventoryReport\",\"className\":\"FmsInventoryReport\",\"columns\":[{\"capJavaField\":\"Id\",\"columnId\":1253,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-01-28 14:33:45\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":57,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Date\",\"columnComment\":\"日期\",\"columnId\":1254,\"columnName\":\"date\",\"columnType\":\"date\",\"createBy\":\"admin\",\"createTime\":\"2024-01-28 14:33:45\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"datetime\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"date\",\"javaType\":\"Date\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":57,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Total\",\"columnComment\":\"库存总数量\",\"columnId\":1255,\"columnName\":\"total\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-01-28 14:33:45\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"total\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":57,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"GoodsCount\",\"columnComment\":\"商品总数\",\"columnId\":1256,\"columnName\":\"goods_count\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-01-28 14:33:45\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"goodsCount\",\"javaType\":\"Long\",\"list\":true,\"params\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-28 14:35:19', 17);
INSERT INTO `sys_oper_log` VALUES (134, '代码生成', 8, 'com.zhijian.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"fms_inventory_report,fms_receivable_order\"}', NULL, 0, NULL, '2024-01-28 14:35:30', 314);
INSERT INTO `sys_oper_log` VALUES (135, '菜单管理', 2, 'com.zhijian.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"fms/receivable/order\",\"createTime\":\"2024-01-28 11:24:35\",\"icon\":\"checkbox\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2069,\"menuName\":\"订单收入\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2068,\"path\":\"order\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-28 14:48:11', 18);
INSERT INTO `sys_oper_log` VALUES (136, '菜单管理', 2, 'com.zhijian.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"fms/inventoryReport\",\"createTime\":\"2024-01-28 11:36:05\",\"icon\":\"druid\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2077,\"menuName\":\"存货报表\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":2018,\"path\":\"inventory_report\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-28 14:49:01', 11);
INSERT INTO `sys_oper_log` VALUES (137, '代码生成', 6, 'com.zhijian.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"fms_payable_ship_fee\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-28 15:11:12', 66);
INSERT INTO `sys_oper_log` VALUES (138, '代码生成', 2, 'com.zhijian.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"shipFee\",\"className\":\"FmsPayableShipFee\",\"columns\":[{\"capJavaField\":\"Id\",\"columnId\":1295,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-01-28 15:11:12\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":60,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"LogisticsCompany\",\"columnComment\":\"物流公司\",\"columnId\":1296,\"columnName\":\"logistics_company\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-28 15:11:12\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"logisticsCompany\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":60,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"LogisticsCompanyId\",\"columnComment\":\"物流公司id\",\"columnId\":1297,\"columnName\":\"logistics_company_id\",\"columnType\":\"varchar(10)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-28 15:11:12\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"logisticsCompanyId\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":60,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"LogisticsNum\",\"columnComment\":\"物流单号\",\"columnId\":1298,\"columnName\":\"logistics_num\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-28 15:11:12\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-28 15:11:39', 45);
INSERT INTO `sys_oper_log` VALUES (139, '代码生成', 8, 'com.zhijian.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"fms_payable_ship_fee\"}', NULL, 0, NULL, '2024-01-28 15:11:48', 204);
INSERT INTO `sys_oper_log` VALUES (140, '菜单管理', 2, 'com.zhijian.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"fms/payable/shipFee\",\"createTime\":\"2024-01-12 18:35:31\",\"icon\":\"guide\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2063,\"menuName\":\"物流费用\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":2072,\"path\":\"shipFee\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-28 15:16:13', 20);
INSERT INTO `sys_oper_log` VALUES (141, '菜单管理', 2, 'com.zhijian.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2024-01-28 11:28:03\",\"icon\":\"cascader\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2071,\"menuName\":\"平台服务费\",\"menuType\":\"M\",\"orderNum\":3,\"params\":{},\"parentId\":2068,\"path\":\"service_fee\",\"perms\":\"\",\"status\":\"1\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-28 19:35:31', 28);
INSERT INTO `sys_oper_log` VALUES (142, '菜单管理', 2, 'com.zhijian.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2024-01-28 11:34:01\",\"icon\":\"clipboard\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2076,\"menuName\":\"其他费用\",\"menuType\":\"C\",\"orderNum\":6,\"params\":{},\"parentId\":2072,\"path\":\"other_fee\",\"perms\":\"\",\"status\":\"1\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-28 19:49:00', 11);
INSERT INTO `sys_oper_log` VALUES (143, '淘宝订单', 2, 'com.qihang.erp.api.controller.TaoOrderController.confirmOrder()', 'POST', 1, 'admin', NULL, '/tao/order/confirmOrder', '127.0.0.1', '内网IP', '{\"address\":\"上海上海 上海市 徐汇区 华泾镇 华发路368弄 馨宁公寓馨宁公寓368弄23号楼1501\",\"auditStatus\":0,\"auditTime\":\"2022-08-05\",\"buyerName\":\"\",\"city\":\"\",\"closeReason\":\"\",\"createTime\":\"2022-08-05 18:48:51\",\"discountAmount\":0,\"discountRemark\":\"\",\"id\":\"1635222253871665598\",\"isMerge\":0,\"logisticsCode\":\"432709738409767\",\"logisticsCompany\":\"韵达速递\",\"orderCreateTime\":\"2022-08-05\",\"orderModifyTime\":\"2022-08-05\",\"orderSource\":0,\"params\":{},\"payAmount\":29.92,\"payTime\":\"2022-08-05\",\"phone\":\"15635244122\",\"province\":\"上海\",\"receiver\":\"小红\",\"sellerMemo\":\"\",\"sendStatus\":0,\"sendTime\":\"2022-08-05\",\"shipType\":1,\"shippingFee\":0,\"shopId\":6,\"status\":3,\"statusStr\":\"等待买家确认收货\",\"taoOrderItemList\":[],\"totalAmount\":29.92,\"updateBy\":\"admin\",\"updateTime\":\"2022-08-05 19:49:12\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-28 19:55:37', 69);
INSERT INTO `sys_oper_log` VALUES (144, '供应商代发货', 2, 'com.qihang.erp.api.controller.ScmSupplierAgentShippingController.edit()', 'PUT', 1, 'admin', NULL, '/scm/agentShipping', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2024-01-28 19:55:37\",\"erpOrderId\":17,\"erpOrderItemId\":14,\"goodsId\":9,\"goodsImg\":\"https://cbu01.alicdn.com/img/ibank/O1CN01PHFmsX2FOyB14fPie_!!2208857268871-0-cib.jpg\",\"goodsNum\":\"272021008026\",\"goodsPrice\":16,\"goodsSpec\":\"浅蓝色,L\",\"goodsTitle\":\"8026牛仔短裤\",\"id\":1,\"itemAmount\":29.92,\"orderDate\":\"2022-08-05\",\"orderNum\":\"1635222253871665598\",\"params\":{},\"quantity\":1,\"shipCompany\":\"菜鸟速递\",\"shipCost\":3,\"shipNo\":\"CN4550110\",\"shipTime\":\"2024-01-28\",\"shopId\":6,\"shopType\":4,\"specId\":40,\"specNum\":\"2720210080260303\",\"status\":0,\"supplierId\":26,\"updateTime\":\"2024-01-28 20:40:06\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-28 20:40:06', 326903);
INSERT INTO `sys_oper_log` VALUES (145, '代码生成', 6, 'com.zhijian.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"fms_payable_agent_ship\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-28 20:48:33', 156);
INSERT INTO `sys_oper_log` VALUES (146, '代码生成', 2, 'com.zhijian.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"agentShip\",\"className\":\"FmsPayableAgentShip\",\"columns\":[{\"capJavaField\":\"Id\",\"columnId\":1318,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-01-28 20:48:33\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":61,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"OrderNum\",\"columnComment\":\"订单号\",\"columnId\":1319,\"columnName\":\"order_num\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-01-28 20:48:33\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"orderNum\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":true,\"tableId\":61,\"updateBy\":\"\",\"usableColumn\":true},{\"capJavaField\":\"ShopId\",\"columnComment\":\"店铺id\",\"columnId\":1320,\"columnName\":\"shop_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-01-28 20:48:33\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"shopId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":61,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"SupplierId\",\"columnComment\":\"供应商id\",\"columnId\":1321,\"columnName\":\"supplier_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-01-28 20:48:33\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"supplierId\",\"javaType\":\"Long\",\"lis', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-28 20:48:59', 43);
INSERT INTO `sys_oper_log` VALUES (147, '代码生成', 8, 'com.zhijian.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"fms_payable_agent_ship\"}', NULL, 0, NULL, '2024-01-28 20:49:04', 287);
INSERT INTO `sys_oper_log` VALUES (148, '菜单管理', 2, 'com.zhijian.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"fms/payable/agentShip\",\"createTime\":\"2024-01-12 18:35:02\",\"icon\":\"theme\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2062,\"menuName\":\"代发账单\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":2072,\"path\":\"agentShip\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-28 20:57:14', 23);
INSERT INTO `sys_oper_log` VALUES (149, '供应商代发货', 2, 'com.qihang.erp.api.controller.ScmSupplierAgentShippingController.edit()', 'PUT', 1, 'admin', NULL, '/scm/agentShipping', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2024-01-28 19:55:37\",\"erpOrderId\":17,\"erpOrderItemId\":14,\"goodsId\":9,\"goodsImg\":\"https://cbu01.alicdn.com/img/ibank/O1CN01PHFmsX2FOyB14fPie_!!2208857268871-0-cib.jpg\",\"goodsNum\":\"272021008026\",\"goodsPrice\":16,\"goodsSpec\":\"浅蓝色,L\",\"goodsTitle\":\"8026牛仔短裤\",\"id\":1,\"itemAmount\":29.92,\"orderDate\":\"2022-08-05\",\"orderNum\":\"1635222253871665598\",\"params\":{},\"quantity\":1,\"shipCompany\":\"菜鸟速递\",\"shipCost\":2.0,\"shipNo\":\"CN52500021\",\"shipTime\":\"2024-01-28\",\"shopId\":6,\"shopType\":4,\"specId\":40,\"specNum\":\"2720210080260303\",\"status\":0,\"supplierId\":26,\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-28 21:06:20', 504629);
INSERT INTO `sys_oper_log` VALUES (150, '供应商代发货', 2, 'com.qihang.erp.api.controller.ScmSupplierAgentShippingController.edit()', 'PUT', 1, 'admin', NULL, '/scm/agentShipping', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2024-01-28 19:55:37\",\"erpOrderId\":17,\"erpOrderItemId\":14,\"goodsId\":9,\"goodsImg\":\"https://cbu01.alicdn.com/img/ibank/O1CN01PHFmsX2FOyB14fPie_!!2208857268871-0-cib.jpg\",\"goodsNum\":\"272021008026\",\"goodsPrice\":16,\"goodsSpec\":\"浅蓝色,L\",\"goodsTitle\":\"8026牛仔短裤\",\"id\":1,\"itemAmount\":29.92,\"orderDate\":\"2022-08-05\",\"orderNum\":\"1635222253871665598\",\"params\":{},\"quantity\":1,\"shipCompany\":\"菜鸟速递\",\"shipCost\":2.0,\"shipNo\":\"CN52500021\",\"shipTime\":\"2024-01-28\",\"shopId\":6,\"shopType\":4,\"specId\":40,\"specNum\":\"2720210080260303\",\"status\":0,\"supplierId\":26,\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-28 21:06:44', 8276);
INSERT INTO `sys_oper_log` VALUES (151, '店铺', 2, 'com.qihang.erp.api.controller.ShopController.edit()', 'PUT', 1, 'admin', NULL, '/shop/shop', '127.0.0.1', '内网IP', '{\"apiRequestUrl\":\"2\",\"appSercet\":\"36a12497-fb9d-4b54-8cd1-fd1617346687\",\"appkey\":\"7249607407477720636\",\"company\":\"华衣云商\",\"ename\":\"douyin\",\"id\":22,\"isDelete\":0,\"isShow\":1,\"modifyOn\":1653672695,\"name\":\"梦小妮牛仔裤\",\"nickName\":\"抖音-梦小妮\",\"orderNum\":87,\"params\":{},\"sellerUserId\":0,\"sellerUserIdStr\":\"0\",\"sessionKey\":\"\",\"type\":6,\"url\":\"http://openapi.jinritemai.com\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-17 10:47:35', 17);
INSERT INTO `sys_oper_log` VALUES (152, '店铺', 2, 'com.qihang.erp.api.controller.ShopController.edit()', 'PUT', 1, 'admin', NULL, '/shop/shop', '127.0.0.1', '内网IP', '{\"apiRequestUrl\":\"2\",\"appSercet\":\"36a12497-fb9d-4b54-8cd1-fd1617346687\",\"appkey\":\"7249607407477720636\",\"company\":\"华衣云商\",\"ename\":\"douyin\",\"id\":22,\"isDelete\":0,\"isShow\":1,\"modifyOn\":1653672695,\"name\":\"梦小妮牛仔裤\",\"nickName\":\"抖音-梦小妮\",\"orderNum\":87,\"params\":{},\"sellerUserId\":4463798,\"sellerUserIdStr\":\"0\",\"sessionKey\":\"\",\"type\":6,\"url\":\"http://openapi.jinritemai.com\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-02-17 11:54:47', 16);
INSERT INTO `sys_oper_log` VALUES (153, '菜单管理', 2, 'com.zhijian.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"\",\"createTime\":\"2023-12-27 15:00:27\",\"icon\":\"server\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":4,\"menuName\":\"采购管理\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"scm\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-03-24 19:30:46', 14);
INSERT INTO `sys_oper_log` VALUES (154, '菜单管理', 2, 'com.zhijian.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"\",\"createTime\":\"2023-12-29 16:53:03\",\"icon\":\"shopping\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2014,\"menuName\":\"订单管理\",\"menuType\":\"M\",\"orderNum\":2,\"params\":{},\"parentId\":0,\"path\":\"sale\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-03-24 19:31:53', 10);
INSERT INTO `sys_oper_log` VALUES (155, '菜单管理', 2, 'com.zhijian.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"sale/order/index\",\"createTime\":\"2023-12-31 20:05:05\",\"icon\":\"list\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2033,\"menuName\":\"订单查询\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2014,\"path\":\"order/list\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-03-24 19:32:00', 5);
INSERT INTO `sys_oper_log` VALUES (156, '菜单管理', 2, 'com.zhijian.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"sale/order/create\",\"createTime\":\"2023-12-31 20:01:22\",\"icon\":\"documentation\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2030,\"menuName\":\"手动创建订单\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2014,\"path\":\"order/create\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-03-24 19:32:32', 9);
INSERT INTO `sys_oper_log` VALUES (157, '菜单管理', 2, 'com.zhijian.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"\",\"createTime\":\"2024-01-01 14:14:42\",\"icon\":\"excel\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2036,\"menuName\":\"网店订单导入\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":2014,\"path\":\"shop_order\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-03-24 19:33:50', 7);
INSERT INTO `sys_oper_log` VALUES (158, '菜单管理', 2, 'com.zhijian.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"shop/order/import\",\"createTime\":\"2024-01-01 14:14:42\",\"icon\":\"excel\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2036,\"menuName\":\"网店订单导入\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":2014,\"path\":\"shopOrder/import\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-03-24 19:36:40', 7);
INSERT INTO `sys_oper_log` VALUES (159, '菜单管理', 2, 'com.zhijian.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"shop/order/import\",\"createTime\":\"2024-01-01 14:14:42\",\"icon\":\"excel\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2036,\"menuName\":\"网店订单导入\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":2014,\"path\":\"shopOrder/import\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-03-24 19:36:40', 7);
INSERT INTO `sys_oper_log` VALUES (160, '菜单管理', 2, 'com.zhijian.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"shop/order/index\",\"createTime\":\"2024-01-01 14:14:42\",\"icon\":\"excel\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2036,\"menuName\":\"网店订单导入\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":2014,\"path\":\"shopOrder/import\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-03-24 19:39:56', 7);
INSERT INTO `sys_oper_log` VALUES (161, '菜单管理', 2, 'com.zhijian.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"sale/returned\",\"createTime\":\"2024-01-03 14:24:36\",\"icon\":\"size\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2054,\"menuName\":\"售后管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2053,\"path\":\"returned\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-03-24 20:27:33', 7);
INSERT INTO `sys_oper_log` VALUES (162, '菜单管理', 2, 'com.zhijian.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"\",\"createTime\":\"2023-12-31 17:29:03\",\"icon\":\"clipboard\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2029,\"menuName\":\"店铺售后管理\",\"menuType\":\"M\",\"orderNum\":2,\"params\":{},\"parentId\":2053,\"path\":\"refund\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-03-24 20:27:41', 7);
INSERT INTO `sys_oper_log` VALUES (163, '菜单管理', 2, 'com.zhijian.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"sale/returned\",\"createTime\":\"2024-01-03 14:24:36\",\"icon\":\"size\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2054,\"menuName\":\"售后管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2053,\"path\":\"refund_list\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-03-24 20:28:24', 7);
INSERT INTO `sys_oper_log` VALUES (164, '菜单管理', 2, 'com.zhijian.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"shop/refund/index\",\"createTime\":\"2023-12-31 17:29:03\",\"icon\":\"clipboard\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2029,\"menuName\":\"店铺售后导入\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":2053,\"path\":\"shop_refund\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-03-24 20:29:07', 7);
INSERT INTO `sys_oper_log` VALUES (165, '菜单管理', 2, 'com.zhijian.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"scm/agentShipping\",\"createTime\":\"2024-01-06 23:57:14\",\"icon\":\"clipboard\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2057,\"menuName\":\"供应商代发管理\",\"menuType\":\"C\",\"orderNum\":99,\"params\":{},\"parentId\":2034,\"path\":\"supplier/agentShipping\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-03-24 20:30:29', 11);
INSERT INTO `sys_oper_log` VALUES (166, '菜单管理', 2, 'com.zhijian.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"shop/order/index\",\"createTime\":\"2024-01-01 14:14:42\",\"icon\":\"excel\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2036,\"menuName\":\"网店订单导入\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":2014,\"path\":\"shop_order\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-03-24 20:35:32', 6);
INSERT INTO `sys_oper_log` VALUES (167, '菜单管理', 2, 'com.zhijian.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"fms/payable/purchase\",\"createTime\":\"2024-01-28 11:30:49\",\"icon\":\"component\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2073,\"menuName\":\"采购应付\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":4,\"path\":\"purchase\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-03-24 21:07:23', 5);
INSERT INTO `sys_oper_log` VALUES (168, '菜单管理', 2, 'com.zhijian.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"fms/payable/agentShip\",\"createTime\":\"2024-01-12 18:35:02\",\"icon\":\"theme\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2062,\"menuName\":\"代发账单\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":4,\"path\":\"agentShip\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-03-24 21:07:38', 10);
INSERT INTO `sys_oper_log` VALUES (169, '菜单管理', 2, 'com.zhijian.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"fms/payable/shipFee\",\"createTime\":\"2024-01-12 18:35:31\",\"icon\":\"guide\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2063,\"menuName\":\"物流费用\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":2034,\"path\":\"shipFee\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-03-24 21:07:53', 7);
INSERT INTO `sys_oper_log` VALUES (170, '菜单管理', 2, 'com.zhijian.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"\",\"createTime\":\"2023-12-29 17:07:23\",\"icon\":\"money\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2018,\"menuName\":\"财务管理\",\"menuType\":\"M\",\"orderNum\":6,\"params\":{},\"parentId\":0,\"path\":\"fms\",\"perms\":\"\",\"query\":\"\",\"status\":\"1\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-03-24 21:08:38', 8);
INSERT INTO `sys_oper_log` VALUES (171, '菜单管理', 2, 'com.zhijian.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"\",\"createTime\":\"2023-12-27 15:00:27\",\"icon\":\"tool\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":3,\"menuName\":\"系统工具\",\"menuType\":\"M\",\"orderNum\":101,\"params\":{},\"parentId\":0,\"path\":\"tool\",\"perms\":\"\",\"query\":\"\",\"status\":\"1\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-03-24 21:08:58', 8);
INSERT INTO `sys_oper_log` VALUES (172, '菜单管理', 2, 'com.zhijian.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"\",\"createTime\":\"2023-12-27 15:00:27\",\"icon\":\"tool\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":3,\"menuName\":\"系统工具\",\"menuType\":\"M\",\"orderNum\":101,\"params\":{},\"parentId\":0,\"path\":\"tool\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-03-24 21:09:13', 8);
INSERT INTO `sys_oper_log` VALUES (173, '菜单管理', 2, 'com.zhijian.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"\",\"createTime\":\"2023-12-27 15:00:27\",\"icon\":\"monitor\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2,\"menuName\":\"系统监控\",\"menuType\":\"M\",\"orderNum\":100,\"params\":{},\"parentId\":0,\"path\":\"monitor\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-03-24 21:09:18', 8);

-- ----------------------------
-- Table structure for sys_platform
-- ----------------------------
DROP TABLE IF EXISTS `sys_platform`;
CREATE TABLE `sys_platform`  (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '平台名',
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '平台编码',
  `app_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `app_secret` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `redirect_uri` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '平台回调uri',
  `server_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '接口访问地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_platform
-- ----------------------------
INSERT INTO `sys_platform` VALUES (5, '视频号小店', 'WEI', '', NULL, NULL, 'https://api.weixin.qq.com');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '部门树选择项是否关联显示',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', 1, 1, '0', '0', 'admin', '2023-08-07 19:31:37', '', NULL, '超级管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '2', 1, 1, '0', '0', 'admin', '2023-08-07 19:31:37', '', NULL, '普通角色');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `menu_id` bigint NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 1);
INSERT INTO `sys_role_menu` VALUES (2, 2);
INSERT INTO `sys_role_menu` VALUES (2, 3);
INSERT INTO `sys_role_menu` VALUES (2, 4);
INSERT INTO `sys_role_menu` VALUES (2, 100);
INSERT INTO `sys_role_menu` VALUES (2, 101);
INSERT INTO `sys_role_menu` VALUES (2, 102);
INSERT INTO `sys_role_menu` VALUES (2, 103);
INSERT INTO `sys_role_menu` VALUES (2, 104);
INSERT INTO `sys_role_menu` VALUES (2, 105);
INSERT INTO `sys_role_menu` VALUES (2, 106);
INSERT INTO `sys_role_menu` VALUES (2, 107);
INSERT INTO `sys_role_menu` VALUES (2, 108);
INSERT INTO `sys_role_menu` VALUES (2, 109);
INSERT INTO `sys_role_menu` VALUES (2, 110);
INSERT INTO `sys_role_menu` VALUES (2, 111);
INSERT INTO `sys_role_menu` VALUES (2, 112);
INSERT INTO `sys_role_menu` VALUES (2, 113);
INSERT INTO `sys_role_menu` VALUES (2, 114);
INSERT INTO `sys_role_menu` VALUES (2, 115);
INSERT INTO `sys_role_menu` VALUES (2, 116);
INSERT INTO `sys_role_menu` VALUES (2, 117);
INSERT INTO `sys_role_menu` VALUES (2, 500);
INSERT INTO `sys_role_menu` VALUES (2, 501);
INSERT INTO `sys_role_menu` VALUES (2, 1000);
INSERT INTO `sys_role_menu` VALUES (2, 1001);
INSERT INTO `sys_role_menu` VALUES (2, 1002);
INSERT INTO `sys_role_menu` VALUES (2, 1003);
INSERT INTO `sys_role_menu` VALUES (2, 1004);
INSERT INTO `sys_role_menu` VALUES (2, 1005);
INSERT INTO `sys_role_menu` VALUES (2, 1006);
INSERT INTO `sys_role_menu` VALUES (2, 1007);
INSERT INTO `sys_role_menu` VALUES (2, 1008);
INSERT INTO `sys_role_menu` VALUES (2, 1009);
INSERT INTO `sys_role_menu` VALUES (2, 1010);
INSERT INTO `sys_role_menu` VALUES (2, 1011);
INSERT INTO `sys_role_menu` VALUES (2, 1012);
INSERT INTO `sys_role_menu` VALUES (2, 1013);
INSERT INTO `sys_role_menu` VALUES (2, 1014);
INSERT INTO `sys_role_menu` VALUES (2, 1015);
INSERT INTO `sys_role_menu` VALUES (2, 1016);
INSERT INTO `sys_role_menu` VALUES (2, 1017);
INSERT INTO `sys_role_menu` VALUES (2, 1018);
INSERT INTO `sys_role_menu` VALUES (2, 1019);
INSERT INTO `sys_role_menu` VALUES (2, 1020);
INSERT INTO `sys_role_menu` VALUES (2, 1021);
INSERT INTO `sys_role_menu` VALUES (2, 1022);
INSERT INTO `sys_role_menu` VALUES (2, 1023);
INSERT INTO `sys_role_menu` VALUES (2, 1024);
INSERT INTO `sys_role_menu` VALUES (2, 1025);
INSERT INTO `sys_role_menu` VALUES (2, 1026);
INSERT INTO `sys_role_menu` VALUES (2, 1027);
INSERT INTO `sys_role_menu` VALUES (2, 1028);
INSERT INTO `sys_role_menu` VALUES (2, 1029);
INSERT INTO `sys_role_menu` VALUES (2, 1030);
INSERT INTO `sys_role_menu` VALUES (2, 1031);
INSERT INTO `sys_role_menu` VALUES (2, 1032);
INSERT INTO `sys_role_menu` VALUES (2, 1033);
INSERT INTO `sys_role_menu` VALUES (2, 1034);
INSERT INTO `sys_role_menu` VALUES (2, 1035);
INSERT INTO `sys_role_menu` VALUES (2, 1036);
INSERT INTO `sys_role_menu` VALUES (2, 1037);
INSERT INTO `sys_role_menu` VALUES (2, 1038);
INSERT INTO `sys_role_menu` VALUES (2, 1039);
INSERT INTO `sys_role_menu` VALUES (2, 1040);
INSERT INTO `sys_role_menu` VALUES (2, 1041);
INSERT INTO `sys_role_menu` VALUES (2, 1042);
INSERT INTO `sys_role_menu` VALUES (2, 1043);
INSERT INTO `sys_role_menu` VALUES (2, 1044);
INSERT INTO `sys_role_menu` VALUES (2, 1045);
INSERT INTO `sys_role_menu` VALUES (2, 1046);
INSERT INTO `sys_role_menu` VALUES (2, 1047);
INSERT INTO `sys_role_menu` VALUES (2, 1048);
INSERT INTO `sys_role_menu` VALUES (2, 1049);
INSERT INTO `sys_role_menu` VALUES (2, 1050);
INSERT INTO `sys_role_menu` VALUES (2, 1051);
INSERT INTO `sys_role_menu` VALUES (2, 1052);
INSERT INTO `sys_role_menu` VALUES (2, 1053);
INSERT INTO `sys_role_menu` VALUES (2, 1054);
INSERT INTO `sys_role_menu` VALUES (2, 1055);
INSERT INTO `sys_role_menu` VALUES (2, 1056);
INSERT INTO `sys_role_menu` VALUES (2, 1057);
INSERT INTO `sys_role_menu` VALUES (2, 1058);
INSERT INTO `sys_role_menu` VALUES (2, 1059);
INSERT INTO `sys_role_menu` VALUES (2, 1060);

-- ----------------------------
-- Table structure for sys_shop
-- ----------------------------
DROP TABLE IF EXISTS `sys_shop`;
CREATE TABLE `sys_shop`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '店铺名',
  `type` int NOT NULL COMMENT '对应第三方平台Id',
  `url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '店铺url',
  `sort` int NOT NULL DEFAULT 9 COMMENT '排序',
  `status` int NULL DEFAULT 0 COMMENT '状态（1正常2已删除）',
  `modify_on` bigint NOT NULL COMMENT '更新时间',
  `remark` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  `seller_id` bigint NOT NULL DEFAULT 0 COMMENT '第三方平台店铺id，淘宝天猫开放平台使用',
  `app_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'Appkey',
  `app_sercet` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'Appsercet',
  `access_token` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '第三方平台sessionKey（access_token）',
  `expires_in` bigint NULL DEFAULT NULL COMMENT '到期',
  `access_token_begin` bigint NULL DEFAULT NULL COMMENT 'access_token开始时间',
  `refresh_token` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '刷新token',
  `refresh_token_timeout` bigint NULL DEFAULT NULL COMMENT '刷新token过期时间',
  `api_request_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '请求url',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '数据中心-店铺' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_shop
-- ----------------------------
INSERT INTO `sys_shop` VALUES (6, '视频号小店', 5, NULL, 9, 0, 0, NULL, 0, '', '', '', NULL, NULL, NULL, NULL, 'https://api.weixin.qq.com');

-- ----------------------------
-- Table structure for sys_shop_pull_lasttime
-- ----------------------------
DROP TABLE IF EXISTS `sys_shop_pull_lasttime`;
CREATE TABLE `sys_shop_pull_lasttime`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `shop_id` int NULL DEFAULT NULL COMMENT '店铺id',
  `pull_type` enum('ORDER','REFUND') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '类型（ORDER:订单，REFUND:退款）',
  `lasttime` datetime NULL DEFAULT NULL COMMENT '最后更新时间',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '店铺更新最后时间记录' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_shop_pull_lasttime
-- ----------------------------
INSERT INTO `sys_shop_pull_lasttime` VALUES (1, 6, 'ORDER', '2024-03-23 16:02:53', '2024-03-23 15:56:13', '2024-03-23 16:02:53');
INSERT INTO `sys_shop_pull_lasttime` VALUES (2, 6, 'REFUND', '2024-03-24 13:03:50', '2024-03-24 13:03:54', NULL);

-- ----------------------------
-- Table structure for sys_shop_pull_logs
-- ----------------------------
DROP TABLE IF EXISTS `sys_shop_pull_logs`;
CREATE TABLE `sys_shop_pull_logs`  (
  `id` bigint NOT NULL COMMENT '主键Id',
  `shop_id` int NULL DEFAULT NULL COMMENT '店铺id',
  `shop_type` int NOT NULL COMMENT '平台id',
  `pull_type` enum('ORDER','REFUND','GOODS') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '类型（ORDER订单，GOODS商品，REFUND退款）',
  `pull_way` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '拉取方式（主动拉取、定时任务）',
  `pull_params` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '拉取参数',
  `pull_result` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '拉取结果',
  `pull_time` datetime NULL DEFAULT NULL COMMENT '拉取时间',
  `duration` bigint NULL DEFAULT NULL COMMENT '耗时（毫秒）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '更新日志表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_shop_pull_logs
-- ----------------------------
INSERT INTO `sys_shop_pull_logs` VALUES (1771373938119639041, 2, 2, 'GOODS', '主动拉取', '{WareStatusValue:8,PageNo:1,PageSize:100}', '{successTotal:61}', '2024-03-23 11:10:10', 22115);
INSERT INTO `sys_shop_pull_logs` VALUES (1771423380642209794, 2, 2, 'ORDER', '主动拉取', '{startTime:2024-03-10T11:59:58,endTime:2024-03-11T11:59:58}', '{insertSuccess:14,hasExistOrder:4,totalError:0}', '2024-03-23 14:26:59', 927);
INSERT INTO `sys_shop_pull_logs` VALUES (1771445830457229314, 1, 1, 'ORDER', '主动拉取', '{startTime:2024-03-22T15:56:09.353561200,endTime:2024-03-23T15:56:09.353561200}', '{insertSuccess:25,hasExistOrder:2,totalError:0}', '2024-03-23 15:56:09', 3181);
INSERT INTO `sys_shop_pull_logs` VALUES (1771446958322380802, 1, 1, 'ORDER', '主动拉取', '{startTime:2024-03-23T14:56:09,endTime:2024-03-23T16:00:41.205604700}', '{insertSuccess:0,hasExistOrder:0,totalError:0}', '2024-03-23 16:00:41', 219);
INSERT INTO `sys_shop_pull_logs` VALUES (1771447441799819265, 1, 1, 'ORDER', '主动拉取', '{startTime:2024-03-23T15:00:41,endTime:2024-03-23T16:02:36.495455100}', '{insertSuccess:0,hasExistOrder:0,totalError:0}', '2024-03-23 16:02:36', 227);
INSERT INTO `sys_shop_pull_logs` VALUES (1771447509432971265, 1, 1, 'ORDER', '主动拉取', '{startTime:2024-03-23T15:02:36,endTime:2024-03-23T16:02:52.700359100}', '{insertSuccess:0,hasExistOrder:0,totalError:0}', '2024-03-23 16:02:53', 122);
INSERT INTO `sys_shop_pull_logs` VALUES (1771453852395032578, 2, 2, 'ORDER', '主动拉取', '{startTime:2024-03-11T10:59:58,endTime:2024-03-12T10:59:58}', '{insertSuccess:19,hasExistOrder:5,totalError:0}', '2024-03-23 16:28:04', 1086);
INSERT INTO `sys_shop_pull_logs` VALUES (1771542266519748610, 1, 1, 'REFUND', '主动拉取', '{startTime:2024-03-22T22:19:19.564048,endTime:2024-03-23T22:19:19.564048}', '{insertSuccess:0,hasExistOrder:5,totalError:0}', '2024-03-23 22:19:17', 7557);
INSERT INTO `sys_shop_pull_logs` VALUES (1771542873649504258, 1, 1, 'REFUND', '主动拉取', '{startTime:2024-03-22T22:21:48.244864800,endTime:2024-03-23T22:21:48.244864800}', '{insert:0,update:5,fail:0}', '2024-03-23 22:21:48', 1183);
INSERT INTO `sys_shop_pull_logs` VALUES (1771543300528988161, 1, 1, 'REFUND', '主动拉取', '{startTime:2024-03-23T21:21:48,endTime:2024-03-23T22:22:56.873263500}', '{insert:0,update:0,fail:0}', '2024-03-23 22:22:40', 51238);
INSERT INTO `sys_shop_pull_logs` VALUES (1771764678028984322, 2, 2, 'ORDER', '主动拉取', '{startTime:2024-03-12T09:59:58,endTime:2024-03-13T09:59:58}', '{insertSuccess:15,hasExistOrder:5,totalError:0}', '2024-03-24 13:03:11', 925);
INSERT INTO `sys_shop_pull_logs` VALUES (1771764854827368449, 1, 1, 'REFUND', '主动拉取', '{startTime:2024-03-23T13:03:49.686601100,endTime:2024-03-24T13:03:49.686601100}', '{insert:8,update:0,fail:0}', '2024-03-24 13:03:44', 9665);
INSERT INTO `sys_shop_pull_logs` VALUES (1771776559355596801, 2, 2, 'REFUND', '主动拉取', '{ApplyTimeBegin:2024-03-23 13:48:33,ApplyTimeEnd:2024-03-24 13:48:33,PageIndex:1,PageSize:100}', '{total:0,hasExist:2,totalError:0}', '2024-03-24 13:48:29', 115059);
INSERT INTO `sys_shop_pull_logs` VALUES (1771780749221974017, 2, 2, 'ORDER', '主动拉取', '{startTime:2024-03-13T08:59:58,endTime:2024-03-14T08:59:58}', '{insertSuccess:11,hasExistOrder:2,totalError:0}', '2024-03-24 14:07:03', 635);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint NULL DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime NULL DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'admin', '至简', '00', 'ry@163.com', '15888888888', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2024-04-04 23:54:02', 'admin', '2023-08-07 19:31:37', '', '2024-04-04 23:54:02', '管理员');
INSERT INTO `sys_user` VALUES (2, 105, 'qihang', 'qihang', '00', 'qihang@qq.com', '15666666666', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2023-08-07 19:31:37', 'admin', '2023-08-07 19:31:37', 'admin', '2024-01-05 18:29:55', '测试员');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `role_id` bigint NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户和角色关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);

-- ----------------------------
-- Table structure for wei_goods
-- ----------------------------
DROP TABLE IF EXISTS `wei_goods`;
CREATE TABLE `wei_goods`  (
  `id` bigint NOT NULL,
  `shop_id` int NULL DEFAULT NULL COMMENT '店铺id',
  `product_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '平台商品id',
  `out_product_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商家编码id',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品标题',
  `sub_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `head_imgs` varchar(2550) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '主图集合',
  `head_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '第一张主图',
  `desc_info` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品详情字符串',
  `attrs` varchar(2550) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '属性字符串',
  `status` int NULL DEFAULT NULL COMMENT '状态',
  `edit_status` int NULL DEFAULT NULL COMMENT '编辑状态',
  `min_price` int NULL DEFAULT NULL COMMENT '商品 SKU 最小价格（单位：分）',
  `spu_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品编码',
  `product_type` int NULL DEFAULT NULL COMMENT '商品类型。1: 小店普通自营商品；2: 福袋抽奖商品；3: 直播间闪电购商品。注意: 福袋抽奖、直播间闪电购类型的商品为只读数据，不支持编辑、上架操作，不支持用data_type=2的参数获取。',
  `edit_time` int NULL DEFAULT NULL COMMENT '商品草稿最近一次修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of wei_goods
-- ----------------------------
INSERT INTO `wei_goods` VALUES (1773592665390514178, 6, NULL, NULL, '2024春季农家燕麦麸皮 高纤高蛋白营养 500g/罐', NULL, '[\"https://mmecimage.cn/p/wx2b826d52663c3ac5/HARN-Ewu9KkyLbQ-i1dzG59Ipxaw0KClDQNn3hhHkA\",\"https://mmecimage.cn/p/wx2b826d52663c3ac5/HNTp4qhlDC5kLroYp101uOiUKRsRT80lqEgjTh9CTg\",\"https://mmecimage.cn/p/wx2b826d52663c3ac5/HNgPr5tM10t4f0CYz_N2Rnm0uIqlA29Cn3jv9Sb6Bw\",\"https://mmecimage.cn/p/wx2b826d52663c3ac5/HHOtQob6n82y6ijcRwWQCvjaAKNu8ZolouugfAKNTg\",\"https://mmecimage.cn/p/wx2b826d52663c3ac5/HLKaJe2eR_YipU8DX4LRyzyNm60j2T2APKqvvYamoA\",\"https://mmecimage.cn/p/wx2b826d52663c3ac5/HBFvYUZTgdpcakf6aeSqe-cd-rJOHvN_MUD92oO1rA\",\"https://mmecimage.cn/p/wx2b826d52663c3ac5/HP84p2a6MjxCbuEdefZWkUpbZKBA8co8_6B_w5LOjQ\",\"https://mmecimage.cn/p/wx2b826d52663c3ac5/HD4wfyh4AFwMJkwsV3zgzVtOZnD50fhW3ixMzUaN_w\",\"https://mmecimage.cn/p/wx2b826d52663c3ac5/HGrC9ZiOuk9MKbnJBowwWNVBZ9uUjg_STZzXNzy8PQ\"]', 'https://mmecimage.cn/p/wx2b826d52663c3ac5/HARN-Ewu9KkyLbQ-i1dzG59Ipxaw0KClDQNn3hhHkA', '{\"imgs\":[\"https://mmecimage.cn/p/wx2b826d52663c3ac5/HIGYaktEgmvz24ajkAAJhH6uDC-osnqovWosa9-gWQ\",\"https://mmecimage.cn/p/wx2b826d52663c3ac5/HNEZI4nbU-Qg9_XXRyBMl1cFbpND5wyrivAE0W9pvg\",\"https://mmecimage.cn/p/wx2b826d52663c3ac5/HLaoM9JsWEDaLK42wKhlM15ku7ETEh0-eiqCtiOFUA\",\"https://mmecimage.cn/p/wx2b826d52663c3ac5/HDOIzQv4eyOCdJfqieclsx6KFEQcIxEawnNA5aUIkg\",\"https://mmecimage.cn/p/wx2b826d52663c3ac5/HGGR-iLCrzMW6SDIwvjqXrKtslGvRqM0k-89VekSgw\",\"https://mmecimage.cn/p/wx2b826d52663c3ac5/HDsg1cgCeLjvTQ4RmcTrMuO7_Bykmeq1rRL8kPvADw\",\"https://mmecimage.cn/p/wx2b826d52663c3ac5/HIEQxLpTnn0YZIPkwZ_jAhxECgkhM95APxAfLyfeyw\",\"https://mmecimage.cn/p/wx2b826d52663c3ac5/HMRpnoTmc64dZpoJSIDSNidgYL5yX_B6s0zofo2dhA\",\"https://mmecimage.cn/p/wx2b826d52663c3ac5/HERmb7JpfCsBcIk1EKo8pg_wX9FbQny-0MsVBPGBgQ\",\"https://mmecimage.cn/p/wx2b826d52663c3ac5/HEf7XxCWlxOPXxUtH0GhT4EVbCrDXu-6nzJheY_v2w\"],\"desc\":\"\"}', '[{\"attr_key\":\"品牌\",\"attr_value\":\"麦趣丰\"},{\"attr_key\":\"生产企业名称\",\"attr_value\":\"山东维美食品有限公司\"},{\"attr_key\":\"配料表\",\"attr_value\":\"燕麦\"},{\"attr_key\":\"保质期\",\"attr_value\":\"240 天\"},{\"attr_key\":\"净含量\",\"attr_value\":\"500 g\"}]', 5, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `wei_goods` VALUES (1773592726853844994, 6, NULL, NULL, '泷御堂 冲饮谷物  赤小豆薏米芡实茯苓茶330g*罐', NULL, '[\"https://mmecimage.cn/p/wx2b826d52663c3ac5/HOHUsPL5lXYMi6uiTIqNoTN7aVVLFstOylGkv2Rupg\",\"https://mmecimage.cn/p/wx2b826d52663c3ac5/HCgV2IEsYtkzBdKOSWF5UChZ6lzW8n4o-jvtK7jrGQ\",\"https://mmecimage.cn/p/wx2b826d52663c3ac5/HCsvjx2CqjmYumW4sW335BuS5FZtwC6ctueDYc9J9A\",\"https://mmecimage.cn/p/wx2b826d52663c3ac5/HFn92-3enHPQ_DFgNDPDqlg9gUxHt14JavVGhMx_Jg\",\"https://mmecimage.cn/p/wx2b826d52663c3ac5/HMP2oduzl5c8wFyoZDHTMguBi2vMrxRX3kucG1IENQ\",\"https://mmecimage.cn/p/wx2b826d52663c3ac5/HHbxEwPTrADwThr_5f3BUuthfqOPZdjHR3NDUA7pFA\",\"https://mmecimage.cn/p/wx2b826d52663c3ac5/HPhYUEDpnVO1jiGSHHmagyQOIdPYpau2oyjXZz7eyg\",\"https://mmecimage.cn/p/wx2b826d52663c3ac5/HEavquNbjGtBOK9pSfKiN7_IRQQZIXBuQqp5-NqnOA\",\"https://mmecimage.cn/p/wx2b826d52663c3ac5/HDmtDkNUi_aTtPbCeRPuECHm4d8u5IGw8i6-wRXnMQ\"]', 'https://mmecimage.cn/p/wx2b826d52663c3ac5/HOHUsPL5lXYMi6uiTIqNoTN7aVVLFstOylGkv2Rupg', '{\"imgs\":[\"https://mmecimage.cn/p/wx2b826d52663c3ac5/HCHck7lcuqJ-0jBEa4uLrpE4bpuR3276H5mG6r8YVA\",\"https://mmecimage.cn/p/wx2b826d52663c3ac5/HBCUz-BSyK8uE8kjyVFUN_E3Y1rYVS5sQ4gZpNud3g\",\"https://mmecimage.cn/p/wx2b826d52663c3ac5/HLDZzs9U0mZ1o90Ao3_fbVx92Be6qmDx4_0hOmLNKg\",\"https://mmecimage.cn/p/wx2b826d52663c3ac5/HN8FBEj5-OB9ikg2_BGssLp0o2FOfQmFCIyLOj-q-Q\",\"https://mmecimage.cn/p/wx2b826d52663c3ac5/HCzULR3SSfXACWAffBG77GQYx4lDkzqBkm2fcPOuqg\",\"https://mmecimage.cn/p/wx2b826d52663c3ac5/HCjS8dONFVTAukX0-_q5-cozvhQzbYUwp3iBieGvrw\",\"https://mmecimage.cn/p/wx2b826d52663c3ac5/HDLWNouDSg64CY_SmSVHH92_B9FVNk82Mdh0UujfaQ\",\"https://mmecimage.cn/p/wx2b826d52663c3ac5/HJZ9uhZ-R90QOp9nD7oIl_Ru61tDzm-SgdtbSvl2kw\"],\"desc\":\"\"}', '[{\"attr_key\":\"品牌\",\"attr_value\":\"泷御堂\"},{\"attr_key\":\"生产企业名称\",\"attr_value\":\"安徽意茗堂生物科技有限公司\"},{\"attr_key\":\"配料表\",\"attr_value\":\"赤小豆、慧米、芡实、茯苓\"},{\"attr_key\":\"保质期\",\"attr_value\":\"12 月\"},{\"attr_key\":\"净含量\",\"attr_value\":\"330 g\"}]', 5, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for wei_goods_sku
-- ----------------------------
DROP TABLE IF EXISTS `wei_goods_sku`;
CREATE TABLE `wei_goods_sku`  (
  `id` bigint NOT NULL,
  `wei_goods_id` bigint NULL DEFAULT NULL COMMENT '外键id',
  `sku_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'skuID',
  `out_sku_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商家自定义skuID。如果添加时没录入，回包可能不包含该字段',
  `thumb_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'sku小图',
  `sale_price` int NULL DEFAULT NULL COMMENT '售卖价格，以分为单位',
  `stock_num` int NULL DEFAULT NULL COMMENT 'sku库存',
  `sku_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'sku编码',
  `status` int NULL DEFAULT NULL COMMENT 'sku状态',
  `sku_attrs` varchar(2550) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'sku_attrs',
  `sku_deliver_info` varchar(2550) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'sku_deliver_info',
  `erp_goods_id` bigint NULL DEFAULT NULL COMMENT 'erp系统商品id',
  `erp_goods_sku_id` bigint NULL DEFAULT NULL COMMENT 'erp系统商品skuid',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of wei_goods_sku
-- ----------------------------
INSERT INTO `wei_goods_sku` VALUES (1773592677457526786, 1773592665390514178, NULL, NULL, NULL, NULL, NULL, NULL, 5, '[{\"attr_key\":\"净含量\",\"attr_value\":\"拍3罐送1罐到手4斤\"},{\"attr_key\":\"主播承诺\",\"attr_value\":\"7天升级30天试喝及运费险\"}]', '{\"stock_type\":0,\"full_payment_presale_delivery_type\":0,\"presale_begin_time\":0,\"presale_end_time\":0,\"full_payment_presale_delivery_time\":0}', NULL, NULL);
INSERT INTO `wei_goods_sku` VALUES (1773592726975479809, 1773592726853844994, NULL, NULL, NULL, NULL, NULL, NULL, 5, '[{\"attr_key\":\"净含量\",\"attr_value\":\"4罐99.9【平均24.9/罐】(97%人选择)1个周期\"}]', '{\"stock_type\":0,\"full_payment_presale_delivery_type\":0,\"presale_begin_time\":0,\"presale_end_time\":0,\"full_payment_presale_delivery_time\":0}', NULL, NULL);
INSERT INTO `wei_goods_sku` VALUES (1773592727050977281, 1773592726853844994, NULL, NULL, NULL, NULL, NULL, NULL, 5, '[{\"attr_key\":\"净含量\",\"attr_value\":\"3罐89.9【平均29/罐】(50%人选择)\"}]', '{\"stock_type\":0,\"full_payment_presale_delivery_type\":0,\"presale_begin_time\":0,\"presale_end_time\":0,\"full_payment_presale_delivery_time\":0}', NULL, NULL);
INSERT INTO `wei_goods_sku` VALUES (1773592727147446274, 1773592726853844994, NULL, NULL, NULL, NULL, NULL, NULL, 5, '[{\"attr_key\":\"净含量\",\"attr_value\":\"2罐69.9【平均34.5/罐】(35%人选择)\"}]', '{\"stock_type\":0,\"full_payment_presale_delivery_type\":0,\"presale_begin_time\":0,\"presale_end_time\":0,\"full_payment_presale_delivery_time\":0}', NULL, NULL);
INSERT INTO `wei_goods_sku` VALUES (1773592727227138049, 1773592726853844994, NULL, NULL, NULL, NULL, NULL, NULL, 5, '[{\"attr_key\":\"净含量\",\"attr_value\":\"1罐体验装【贵在运费】(5%人选择)\"}]', '{\"stock_type\":0,\"full_payment_presale_delivery_type\":0,\"presale_begin_time\":0,\"presale_end_time\":0,\"full_payment_presale_delivery_time\":0}', NULL, NULL);

-- ----------------------------
-- Table structure for wei_order
-- ----------------------------
DROP TABLE IF EXISTS `wei_order`;
CREATE TABLE `wei_order`  (
  `id` bigint NOT NULL,
  `shop_id` int NULL DEFAULT NULL COMMENT '店铺id',
  `order_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '订单号',
  `openid` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '买家身份标识',
  `create_time` int NULL DEFAULT NULL COMMENT '秒级时间戳',
  `update_time` int NULL DEFAULT NULL COMMENT '秒级时间戳',
  `unionid` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL COMMENT '状态10	待付款；20	待发货；21	部分发货；30	待收货；100	完成；200	全部商品售后之后，订单取消；250	未付款用户主动取消或超时未付款订单自动取消；',
  `aftersale_detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '售后信息json',
  `pay_info` varchar(5500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '支付信息json',
  `product_price` int NULL DEFAULT NULL COMMENT '商品总价，单位为分',
  `order_price` int NULL DEFAULT NULL COMMENT '订单金额，单位为分，order_price=original_order_price-discounted_price-deduction_price-change_down_price',
  `freight` int NULL DEFAULT NULL COMMENT '运费，单位为分',
  `discounted_price` int NULL DEFAULT NULL COMMENT '优惠券优惠金额，单位为分',
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '收货人姓名',
  `postal_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邮编',
  `province_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '省份',
  `city_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '城市',
  `county_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '区',
  `detail_info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '详细地址',
  `tel_number` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '联系方式\r\n',
  `house_number` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '门牌号码',
  `virtual_order_tel_number` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '虚拟发货订单联系方式(deliver_method=1时返回)',
  `tel_number_ext_info` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '额外的联系方式信息（虚拟号码相关）',
  `use_tel_number` int NULL DEFAULT NULL COMMENT '0：不使用虚拟号码，1：使用虚拟号码',
  `hash_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '标识当前店铺下一个唯一的用户收货地址',
  `delivery_product_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '发货物流信息JSON',
  `ship_done_time` int NULL DEFAULT NULL COMMENT '发货完成时间，秒级时间戳',
  `ewaybill_order_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '电子面单代发时的订单密文\r\n',
  `settle_info` varchar(2550) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '结算信息json',
  `confirm_status` int NULL DEFAULT 0 COMMENT '订单确认状态（0待确认，1已确认2已拦截-9未拉取）',
  `confirm_time` datetime NULL DEFAULT NULL COMMENT '订单确认时间',
  `erp_send_status` int NULL DEFAULT 0 COMMENT 'ERP发货状态（0待出库1拣货中2已拣货3已出库4已发货）',
  `erp_send_time` datetime NULL DEFAULT NULL COMMENT 'ERP发货时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of wei_order
-- ----------------------------
INSERT INTO `wei_order` VALUES (1773651199826300930, 6, '3718590468852683008', 'oAv1969ctu4B_MrW17zk7JChQrBA', 1710907087, 1711280945, NULL, 100, '{\"aftersale_order_list\":[],\"on_aftersale_order_cnt\":0}', '{\"payment_method\":1,\"prepay_id\":\"up_wx20115809263560bdc3bda251ae3eee0000\",\"prepay_time\":1710907089,\"pay_time\":1710907097,\"transaction_id\":\"4332301095202403202057439992\"}', 9990, 9990, 0, NULL, '张**', '156400', '黑龙江省', '佳木斯市', '同江市', '****', '139****1755', '', '', 'null', 0, '60e36c9691eef079a45fb629c78b88ef', '[{\"waybill_id\":\"312317650762748\",\"delivery_id\":\"YD\",\"product_infos\":[{\"product_id\":\"10000103058379\",\"sku_id\":\"2069165392\",\"product_cnt\":1}],\"delivery_name\":\"韵达速递\",\"delivery_time\":1710921324,\"deliver_type\":1}]', 1710921324, 'ofeIxD4qpxEIdkUmusYuJAvWi-H4cgngomdmkZ5Dt41LPpun-Yf2ROm0cO8Adz5_jsw4DNRn5D_w', '{\"predict_commission_fee\":99}', 0, NULL, 0, NULL);
INSERT INTO `wei_order` VALUES (1773651201164283905, 6, '3718590165614464000', 'oAv196-Xw4whjGQr4GF2D1lUS0vw', 1710905931, 1711510929, NULL, 30, '{\"aftersale_order_list\":[],\"on_aftersale_order_cnt\":0}', '{\"payment_method\":1,\"prepay_id\":\"up_wx201138523358325a5c59a03b72a8900000\",\"prepay_time\":1710905932,\"pay_time\":1710905946,\"transaction_id\":\"4348501112202403200062879930\"}', 9990, 9990, 0, NULL, '风**', '541004', '广西壮族自治区', '桂林市', '七星区', '****', '189****5671', '', '', 'null', 0, 'd1d18fd116ecbfb5a084db703652bbf2', '[{\"waybill_id\":\"312317507518865\",\"delivery_id\":\"YD\",\"product_infos\":[{\"product_id\":\"10000103058379\",\"sku_id\":\"2069165392\",\"product_cnt\":1}],\"delivery_name\":\"韵达速递\",\"delivery_time\":1710906129,\"deliver_type\":1}]', 1710906129, 'ofBnDflYHmXX3vPIhJblDq6wq4O4z3OggOGTJljLlnEM4YzvNVPTX7AR3q2zz48dbs46F9oNaN0w', '{\"predict_commission_fee\":99}', 0, NULL, 0, NULL);
INSERT INTO `wei_order` VALUES (1773651202531627010, 6, '3718589880635884800', 'oAv196_dDA-D0ZAJYtZxZ5Tsq-pw', 1710904844, 1711510862, NULL, 30, '{\"aftersale_order_list\":[],\"on_aftersale_order_cnt\":0}', '{\"payment_method\":1,\"prepay_id\":\"up_wx20112045176075a813e14d5103ac360000\",\"prepay_time\":1710904845,\"pay_time\":1710904852,\"transaction_id\":\"4337401091202403206248549568\"}', 9990, 9990, 0, NULL, '周**', '516400', '广东省', '汕尾市', '海丰县', '****', '139****2585', '', '', 'null', 0, 'da3bf96aca5d34d9e3ec017711621933', '[{\"waybill_id\":\"73610448785703\",\"delivery_id\":\"ZTO\",\"product_infos\":[{\"product_id\":\"10000103058379\",\"sku_id\":\"2069165392\",\"product_cnt\":1}],\"delivery_name\":\"中通快递\",\"delivery_time\":1710906061,\"deliver_type\":1}]', 1710906061, 'of0P-Z4yhGNWPrBNEo7_lsU1SmlDdPtKsnOLMhXG4APpvl-4yPjGXI4THGYDUF5Jr6e9tF4Jmc_Q', '{\"predict_commission_fee\":99}', 0, NULL, 0, NULL);
INSERT INTO `wei_order` VALUES (1773651203651506177, 6, '3718589605759552512', 'oAv1963oP6e80PmR0O3WFwVsMjgI', 1710903795, 1711510789, NULL, 30, '{\"aftersale_order_list\":[],\"on_aftersale_order_cnt\":0}', '{\"payment_method\":1,\"prepay_id\":\"up_wx20110316854964035140248b3568880000\",\"prepay_time\":1710903797,\"pay_time\":1710903805,\"transaction_id\":\"4323001101202403206838631886\"}', 9990, 9990, 0, NULL, '杨**', '523000', '广东省', '东莞市', '南城街道', '****', '131****9856', '', '', 'null', 0, 'd840df43d3db15177add62845ef6f4d9', '[{\"waybill_id\":\"312317506583169\",\"delivery_id\":\"YD\",\"product_infos\":[{\"product_id\":\"10000103058379\",\"sku_id\":\"2069165392\",\"product_cnt\":1}],\"delivery_name\":\"韵达速递\",\"delivery_time\":1710905989,\"deliver_type\":1}]', 1710905989, 'ofkbBWSIJgWEGlEETB2I9eyh57RBtnEfsgSR8mezOEF4mS7XdSOVT-IsKy5N5D6qUAMSAR0TKkJA', '{\"predict_commission_fee\":99}', 0, NULL, 0, NULL);
INSERT INTO `wei_order` VALUES (1773651204742025218, 6, '3718589592043128064', 'oAv196_qiMGLFlRYUrVporaKPzLo', 1710903743, 1711510790, NULL, 30, '{\"aftersale_order_list\":[],\"on_aftersale_order_cnt\":0}', '{\"payment_method\":1,\"prepay_id\":\"up_wx201102245184580c3862e9bad7827c0000\",\"prepay_time\":1710903744,\"pay_time\":1710903759,\"transaction_id\":\"4302201086202403208840994399\"}', 9990, 9990, 0, NULL, '李', '200135', '上海市', '上海市', '浦东新区', '****', '151****0907', '', '', 'null', 0, '8f7bbb970f4b8135917c7ab8ad604f09', '[{\"waybill_id\":\"312317506512381\",\"delivery_id\":\"YD\",\"product_infos\":[{\"product_id\":\"10000103058379\",\"sku_id\":\"2069165392\",\"product_cnt\":1}],\"delivery_name\":\"韵达速递\",\"delivery_time\":1710905989,\"deliver_type\":1}]', 1710905989, 'of4-1Cwj9aGErR9HppkMCnNgRPGDuMXKVe6Z-gm5_ccKqVhIdVeETP5aUPvneZGeUQyn1Jk9SH8g', '{\"predict_commission_fee\":99}', 0, NULL, 0, NULL);
INSERT INTO `wei_order` VALUES (1773651205966761986, 6, '3718589309525299200', 'oAv1969jKGQpCmYc1SSbPMuWLXUc', 1710902665, 1711510789, NULL, 30, '{\"aftersale_order_list\":[],\"on_aftersale_order_cnt\":0}', '{\"payment_method\":1,\"prepay_id\":\"up_wx20104426595065d78a9492c283f27a0000\",\"prepay_time\":1710902666,\"pay_time\":1710902672,\"transaction_id\":\"4347100965202403202814722381\"}', 9990, 9990, 0, NULL, '王*', '201900', '上海市', '上海市', '宝山区', '****', '139****3668', '', '', 'null', 0, '4570669245c3fe8bd0e0b173d2bf4810', '[{\"waybill_id\":\"312317506523860\",\"delivery_id\":\"YD\",\"product_infos\":[{\"product_id\":\"10000103058379\",\"sku_id\":\"2069165392\",\"product_cnt\":1}],\"delivery_name\":\"韵达速递\",\"delivery_time\":1710905989,\"deliver_type\":1}]', 1710905989, 'ofJ8FkFDNTi0o-2Kza85q3-jQ6A_Kl_QJk7XYZja1tgNFz2Vl3cEhVNiDo4-5DouC1K-eunIllMA', '{\"predict_commission_fee\":99}', 0, NULL, 0, NULL);
INSERT INTO `wei_order` VALUES (1773651207095029762, 6, '3718589294961886464', 'oAv196y7xzoB4jtnMbZ_8_m2jeOY', 1710902609, 1711510790, NULL, 30, '{\"aftersale_order_list\":[],\"on_aftersale_order_cnt\":0}', '{\"payment_method\":1,\"prepay_id\":\"up_wx20104331088708d417c64b1b0184960000\",\"prepay_time\":1710902611,\"pay_time\":1710902620,\"transaction_id\":\"4346701109202403209988609214\"}', 9990, 9990, 0, NULL, '李**', '200050', '上海市', '上海市', '长宁区', '****', '181****9671', '', '', 'null', 0, 'a2615ec5565c3e3d407e45d1ea7f5f2a', '[{\"waybill_id\":\"312317506578945\",\"delivery_id\":\"YD\",\"product_infos\":[{\"product_id\":\"10000103058379\",\"sku_id\":\"2069165392\",\"product_cnt\":1}],\"delivery_name\":\"韵达速递\",\"delivery_time\":1710905989,\"deliver_type\":1}]', 1710905989, 'of0ByBqSq6e3Ye3a1bma4KP4uiKBfRZ_n_lhkvLJDpslARp1Vx3oXm9cOLmrQ94ZZCvSkM0qZ8Dg', '{\"predict_commission_fee\":99}', 0, NULL, 0, NULL);
INSERT INTO `wei_order` VALUES (1773651208210714625, 6, '3718589016159424768', 'oAv19634S2V5xCQ1zC9CK3OfyfiQ', 1710901546, 1711510790, NULL, 30, '{\"aftersale_order_list\":[],\"on_aftersale_order_cnt\":0}', '{\"payment_method\":1,\"prepay_id\":\"up_wx20102547465198d959aca9d05bf4d90000\",\"prepay_time\":1710901547,\"pay_time\":1710901554,\"transaction_id\":\"4342301109202403207545671962\"}', 9990, 9990, 0, NULL, '卢**', '530012', '广西壮族自治区', '南宁市', '兴宁区', '****', '138****5202', '', '13877165202', 'null', 0, '9a9334f61deee413c7579cc7797dfe76', '[{\"waybill_id\":\"312317506455252\",\"delivery_id\":\"YD\",\"product_infos\":[{\"product_id\":\"10000103058379\",\"sku_id\":\"2069165392\",\"product_cnt\":1}],\"delivery_name\":\"韵达速递\",\"delivery_time\":1710905989,\"deliver_type\":1}]', 1710905989, 'ofZdjluGp7LFmJA9HxxGsqcgcHySzhWQ1yw76nuvkZcS4NZeQKds94thoZQ0C1oOoJMwkQNAb0xw', '{\"predict_commission_fee\":99}', 0, NULL, 0, NULL);
INSERT INTO `wei_order` VALUES (1773651209330593793, 6, '3718588644526002432', 'oAv196_7aFUZPJalgmLxL_iWw804', 1710900128, 1711510790, NULL, 30, '{\"aftersale_order_list\":[],\"on_aftersale_order_cnt\":0}', '{\"payment_method\":1,\"prepay_id\":\"up_wx20100209893206a12375aa409b48bb0000\",\"prepay_time\":1710900130,\"pay_time\":1710900140,\"transaction_id\":\"4341200952202403200383974611\"}', 9990, 9990, 0, NULL, '马**', '101100', '北京市', '北京市', '通州区', '****', '183****6247', '', '', 'null', 0, '1b704e24c12cf7062ee5736e7551429a', '[{\"waybill_id\":\"312317506509480\",\"delivery_id\":\"YD\",\"product_infos\":[{\"product_id\":\"10000103058379\",\"sku_id\":\"2069165392\",\"product_cnt\":1}],\"delivery_name\":\"韵达速递\",\"delivery_time\":1710905989,\"deliver_type\":1}]', 1710905989, 'ofLFnCZuN2by9AcKov46K5tJm1_mG0bBQbXQ-_cUpATAtdYqQOtzeRBYQ04D_HDZy2hxy0QD5PzA', '{\"predict_commission_fee\":99}', 0, NULL, 0, NULL);
INSERT INTO `wei_order` VALUES (1773651210421112833, 6, '3718588590994097408', 'oAv196zhzMf97Ba2R8xdQ0QZxnKs', 1710899924, 1710900826, NULL, 250, '{\"aftersale_order_list\":[],\"on_aftersale_order_cnt\":0}', '{\"prepay_id\":\"up_wx20095845672477c9ce9c4315ec892c0000\",\"prepay_time\":1710899925}', 9990, 9990, 0, NULL, '幸*', '543200', '广西壮族自治区', '梧州市', '岑溪市', '****', '182****6206', '', '', 'null', 0, 'd839bebe74d2c0f69bb659ed50726e11', '[]', 0, 'ofRpFXMXe91gV1dn-cpRjsVM35DtD8SKNaIGhmSGSi-GtHwBkt6aIV87SGxa-3CEfaVc1JKUTevA', '{\"predict_commission_fee\":0}', 0, NULL, 0, NULL);
INSERT INTO `wei_order` VALUES (1773651211620683777, 6, '3718588208610936064', 'oAv196xSiMAiXvclFVbm3uQtFiMk', 1710898465, 1711510861, NULL, 30, '{\"aftersale_order_list\":[],\"on_aftersale_order_cnt\":0}', '{\"payment_method\":1,\"prepay_id\":\"up_wx200934271410802829cd13e6d377c20000\",\"prepay_time\":1710898467,\"pay_time\":1710898475,\"transaction_id\":\"4305500964202403207977225252\"}', 9990, 9990, 0, NULL, '王**', '361001', '福建省', '厦门市', '思明区', '****', '137****5379', '', '', 'null', 0, '5391edd5cb004407c49340082782bdfa', '[{\"waybill_id\":\"73610448785566\",\"delivery_id\":\"ZTO\",\"product_infos\":[{\"product_id\":\"10000103058379\",\"sku_id\":\"2069165392\",\"product_cnt\":1}],\"delivery_name\":\"中通快递\",\"delivery_time\":1710906061,\"deliver_type\":1}]', 1710906061, 'of9UExPPPXndZlepNABvZdWT2c8mlrxKRiYI22tfavxYnl_FlimXLP4T7mBcNYEeixdBBISBdGJA', '{\"predict_commission_fee\":99}', 0, NULL, 0, NULL);
INSERT INTO `wei_order` VALUES (1773651212686036993, 6, '3718588207135065344', 'oAv1965NJAgLllnVsL1sqtLu_eYc', 1710898460, 1710899360, NULL, 250, '{\"aftersale_order_list\":[],\"on_aftersale_order_cnt\":0}', '{\"prepay_id\":\"up_wx20093421419085b90d7f5497a5e3170000\",\"prepay_time\":1710898461}', 9990, 9990, 0, NULL, '冯**', '563000', '贵州省', '遵义市', '红花岗区', '****', '156****2268', '', '15608522268', 'null', 0, 'b89011e707f7538071a8f39c5364f380', '[]', 0, 'ofwqKwLKOxvcPzpqCQ0Bt00U8Z8fiSQk-G6KM2AO7ml5VFXvDhNsb52AWxYQ_h0WDwhpzPsJG9Og', '{\"predict_commission_fee\":0}', 0, NULL, 0, NULL);
INSERT INTO `wei_order` VALUES (1773651213822693377, 6, '3718587822346996736', 'oAv196wFsnkezeypRf0egcDMGiWM', 1710896992, 1710898600, NULL, 200, '{\"aftersale_order_list\":[{\"aftersale_order_id\":\"2000000376158056\",\"status\":13}],\"on_aftersale_order_cnt\":0}', '{\"payment_method\":1,\"prepay_id\":\"up_wx20090953417027afb2603f0b09c7fb0000\",\"prepay_time\":1710896993,\"pay_time\":1710897001,\"transaction_id\":\"4331701107202403200001411174\"}', 9990, 9990, 0, NULL, '赵**', '100010', '北京市', '北京市', '东城区', '****', '134****1877', '', '', 'null', 0, '05bae94246e4ad5e05f1cfb5cfcdabd6', '[]', 0, 'ofIj04A4BImnu3akL1Jq5Web4yULuKS6G3O91u5HVEj62aCmbPEpFgwhM0JWXapPCi-jgV9-49ng', '{\"predict_commission_fee\":0}', 0, NULL, 0, NULL);
INSERT INTO `wei_order` VALUES (1773651214942572545, 6, '3718587815659965440', 'oAv196291g5xNrw1spVQpjXhoXg0', 1710896966, 1710897868, NULL, 250, '{\"aftersale_order_list\":[],\"on_aftersale_order_cnt\":0}', '{\"prepay_id\":\"up_wx20090927863922d6ba03e28352d80e0000\",\"prepay_time\":1710896968}', 9990, 9990, 0, NULL, '崔*', '445300', '湖北省', '恩施土家族苗族自治州', '建始县', '****', '133****5865', '', '', 'null', 0, '43d9d5270bc81462f94547083e6f1ecd', '[]', 0, 'of_9-SntfOwUc_ivgA-GyQxaNuCyBtJSWOEwvNsWZSdxOnC58AZV7y9mVgCoK8eEJKepOGwg5ciQ', '{\"predict_commission_fee\":0}', 0, NULL, 0, NULL);
INSERT INTO `wei_order` VALUES (1773651216016314369, 6, '3718587814527504384', 'oAv1965374koR_XZBopbQIgbwvYg', 1710896962, 1711161629, NULL, 100, '{\"aftersale_order_list\":[],\"on_aftersale_order_cnt\":0}', '{\"payment_method\":1,\"prepay_id\":\"up_wx20090923692523ec3d6e1ed350c68a0000\",\"prepay_time\":1710896963,\"pay_time\":1710896972,\"transaction_id\":\"4317200957202403206956316633\"}', 9990, 9990, 0, NULL, '王**', '100020', '北京市', '北京市', '朝阳区', '****', '136****6620', '', '', 'null', 0, 'abed73df538b1b73d8e60a3bd15836c8', '[{\"waybill_id\":\"312317506527084\",\"delivery_id\":\"YD\",\"product_infos\":[{\"product_id\":\"10000103058379\",\"sku_id\":\"2069165392\",\"product_cnt\":1}],\"delivery_name\":\"韵达速递\",\"delivery_time\":1710905989,\"deliver_type\":1}]', 1710905989, 'of31XR_nQ-ipiULDnExMHqt2Nm3TWsinqzjDYw60zSAnM361_3JAI6V_i6wFGe0T2GfbyDES4h8A', '{\"predict_commission_fee\":99}', 0, NULL, 0, NULL);
INSERT INTO `wei_order` VALUES (1773651217362685954, 6, '3718587810203962368', 'oAv196z-7_wGiRBgD8b1Ob3LTuSQ', 1710896946, 1711510789, NULL, 30, '{\"aftersale_order_list\":[],\"on_aftersale_order_cnt\":0}', '{\"payment_method\":1,\"prepay_id\":\"up_wx200909072119543b9b208278195da40000\",\"prepay_time\":1710896947,\"pay_time\":1710896954,\"transaction_id\":\"4313501099202403202886208440\"}', 9990, 9990, 0, NULL, '忻*', '550001', '贵州省', '贵阳市', '云岩区', '****', '139****5732', '', '', 'null', 0, '1e90e5b3739a2e46587e0de50ed28879', '[{\"waybill_id\":\"312317506456736\",\"delivery_id\":\"YD\",\"product_infos\":[{\"product_id\":\"10000103058379\",\"sku_id\":\"2069165392\",\"product_cnt\":1}],\"delivery_name\":\"韵达速递\",\"delivery_time\":1710905989,\"deliver_type\":1}]', 1710905989, 'ofbNlHM1Uwy9tTtGAuieftzGiYjpBfQGsnHGNYyTMfcPSQ0oJvdf5-iqL2-4iK_-xoxbWgc8UqOA', '{\"predict_commission_fee\":99}', 0, NULL, 0, NULL);
INSERT INTO `wei_order` VALUES (1773651218482565122, 6, '3718587809541260800', 'oAv1960PTbIGg1azMM97-Yb1BILM', 1710896943, 1711692550, NULL, 200, '{\"aftersale_order_list\":[{\"aftersale_order_id\":\"2000000387777830\",\"status\":14}],\"on_aftersale_order_cnt\":0}', '{\"payment_method\":1,\"prepay_id\":\"up_wx200909048136598e32c836acdd7fce0000\",\"prepay_time\":1710896945,\"pay_time\":1710896952,\"transaction_id\":\"4326500957202403203893580121\"}', 9990, 9990, 0, NULL, '耿*', '100071', '北京市', '北京市', '丰台区', '****', '136****6190', '', '', 'null', 0, '72ef646c988a5284a2790d3aa2477dad', '[{\"waybill_id\":\"312317506638952\",\"delivery_id\":\"YD\",\"product_infos\":[{\"product_id\":\"10000103058379\",\"sku_id\":\"2069165392\",\"product_cnt\":1}],\"delivery_name\":\"韵达速递\",\"delivery_time\":1710905989,\"deliver_type\":1}]', 1710905989, 'ofFXYhtxh8BiP2LmchmbuhbYisvOgAgOUryV0F15xG8o0SIp1NITD4vbSATpaoRhYp_trkhgrUaA', '{\"predict_commission_fee\":0}', 0, NULL, 0, NULL);
INSERT INTO `wei_order` VALUES (1773651219539529730, 6, '3718587542502772992', 'oAv196_y-DtYDOLcAI27-wOQyI4M', 1710895924, 1711591705, NULL, 30, '{\"aftersale_order_list\":[],\"on_aftersale_order_cnt\":0}', '{\"payment_method\":1,\"prepay_id\":\"up_wx20085206263250579fa283be7dc8e20000\",\"prepay_time\":1710895926,\"pay_time\":1710896086,\"transaction_id\":\"4311100949202403208635067416\"}', 990, 990, 0, NULL, '吴*', '215000', '江苏省', '苏州市', '姑苏区', '****', '131****1805', '', '', 'null', 0, '5a32b39d6fe49c2cbbeaa498788c154f', '[{\"waybill_id\":\"318890755728720\",\"delivery_id\":\"YD\",\"product_infos\":[{\"product_id\":\"10000104315300\",\"sku_id\":\"2086367126\",\"product_cnt\":1}],\"delivery_name\":\"韵达速递\",\"delivery_time\":1710986905,\"deliver_type\":1}]', 1710986905, 'ofK-HQreW8UkLCXw-zFmtdIMY8QpqFqK9i923uHIa7txGXok4EeLDgFNn96yGLh8eU2LIIjwikPA', '{\"predict_commission_fee\":9}', 0, NULL, 0, NULL);
INSERT INTO `wei_order` VALUES (1773651220789432322, 6, '3718587018572858624', 'oAv1962vGm4-XWRG9ma4_S_yCVA4', 1710893926, 1710916555, NULL, 200, '{\"aftersale_order_list\":[{\"aftersale_order_id\":\"2000000376505279\",\"status\":13}],\"on_aftersale_order_cnt\":0}', '{\"payment_method\":1,\"prepay_id\":\"up_wx20081903030176f28c94820f0507750000\",\"prepay_time\":1710893943,\"pay_time\":1710893948,\"transaction_id\":\"4336600964202403204980463253\"}', 109890, 100, 0, NULL, '阿*', '657000', '云南省', '昭通市', '昭阳区', '****', '139****6961', '', '13512120557', 'null', 0, 'd25a0ad0da52d5f279aad62152a4ba53', '[]', 0, 'ofGKBzBVIOKCbWhuAzmzE2XxfAF-E9wkCgc8JxviQzRb4gezkLahY55ckCgjhKu9FMHQRUYMkcIw', '{\"predict_commission_fee\":0}', 0, NULL, 0, NULL);
INSERT INTO `wei_order` VALUES (1773651221888339969, 6, '3718586568279724288', 'oAv1966osuFsbYH6YSExD6uKr3WY', 1710892208, 1711510790, NULL, 30, '{\"aftersale_order_list\":[],\"on_aftersale_order_cnt\":0}', '{\"payment_method\":1,\"prepay_id\":\"up_wx20075009764726ff1a9fc3b58ae4400000\",\"prepay_time\":1710892209,\"pay_time\":1710892227,\"transaction_id\":\"4335800950202403200637254989\"}', 9990, 9990, 0, NULL, '王**', '475000', '河南省', '开封市', '禹王台区', '****', '152****2706', '', '', 'null', 0, '4f1ffa0a6c31d9bebc1c30440544d7b2', '[{\"waybill_id\":\"312317506457252\",\"delivery_id\":\"YD\",\"product_infos\":[{\"product_id\":\"10000103058379\",\"sku_id\":\"2069165392\",\"product_cnt\":1}],\"delivery_name\":\"韵达速递\",\"delivery_time\":1710905989,\"deliver_type\":1}]', 1710905989, 'ofmS5hUKMgVF7Htd3qfQ3G_wXgz3x-C2R6n6BUinYFVeKjBZ2guWU1YHcAVbKnzinff0FerdU79Q', '{\"predict_commission_fee\":99}', 0, NULL, 0, NULL);
INSERT INTO `wei_order` VALUES (1773651223045967873, 6, '3718586550340945408', 'oAv1964cOETzaRR_Swm2LXxmBypY', 1710892139, 1711510790, NULL, 30, '{\"aftersale_order_list\":[],\"on_aftersale_order_cnt\":0}', '{\"payment_method\":1,\"prepay_id\":\"up_wx2007490139983219e20e83520865070000\",\"prepay_time\":1710892141,\"pay_time\":1710892148,\"transaction_id\":\"4307200968202403207539523408\"}', 9990, 9990, 0, NULL, '张*', '231500', '安徽省', '合肥市', '庐江县', '****', '153****8788', '', '', 'null', 0, '934fd91e344f6a1bf99e1c3105dd6344', '[{\"waybill_id\":\"312317506455345\",\"delivery_id\":\"YD\",\"product_infos\":[{\"product_id\":\"10000103058379\",\"sku_id\":\"2069165392\",\"product_cnt\":1}],\"delivery_name\":\"韵达速递\",\"delivery_time\":1710905989,\"deliver_type\":1}]', 1710905989, 'of1oLHaoKiJqqNvZ2oAdPPFO_ABYUwSB-yoigQlISLILJx6x_DXmqhSCux2OTZ_-frSVwyHgfqoQ', '{\"predict_commission_fee\":99}', 0, NULL, 0, NULL);

-- ----------------------------
-- Table structure for wei_order_item
-- ----------------------------
DROP TABLE IF EXISTS `wei_order_item`;
CREATE TABLE `wei_order_item`  (
  `id` bigint NOT NULL,
  `wei_order_id` bigint NULL DEFAULT NULL COMMENT '外键id',
  `product_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品spuid',
  `sku_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品skuid\r\n',
  `thumb_img` varchar(550) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'sku小图',
  `sku_cnt` int NULL DEFAULT NULL COMMENT 'sku数量',
  `sale_price` int NULL DEFAULT NULL COMMENT '售卖单价（单位：分）',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品标题',
  `on_aftersale_sku_cnt` int NULL DEFAULT NULL COMMENT '正在售后/退款流程中的 sku 数量',
  `finish_aftersale_sku_cnt` int NULL DEFAULT NULL COMMENT '完成售后/退款的 sku 数量',
  `sku_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品编码',
  `market_price` int NULL DEFAULT NULL COMMENT '市场单价（单位：分）',
  `sku_attrs` varchar(2550) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'sku属性JSON',
  `real_price` int NULL DEFAULT NULL COMMENT 'sku实付总价，取estimate_price和change_price中较小值',
  `out_product_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品外部spuid',
  `out_sku_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品外部skuid',
  `is_discounted` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否有优惠金额，非必填，默认为false',
  `estimate_price` int NULL DEFAULT NULL COMMENT '优惠后sku总价，非必填，is_discounted为true时有值',
  `is_change_price` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否修改过价格，非必填，默认为false',
  `change_price` int NULL DEFAULT NULL COMMENT '改价后sku总价，非必填，is_change_price为true时有值',
  `out_warehouse_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '区域库存id',
  `sku_deliver_info` varchar(2550) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品发货信息JSON',
  `extra_service` varchar(2550) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品额外服务信息JSON',
  `use_deduction` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否使用了会员积分抵扣\r\n',
  `deduction_price` int NULL DEFAULT NULL COMMENT '会员积分抵扣金额，单位为分',
  `order_product_coupon_info_list` varchar(2550) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品优惠券信息，逐步替换 order.order_detail.coupon_info',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of wei_order_item
-- ----------------------------
INSERT INTO `wei_order_item` VALUES (1773651199977295874, 1773651199826300930, '10000103058379', '2069165392', 'https://store.mp.video.tencent-cloud.com/161/20304/snscosdownload/SH/reserved/65f29bc400032a7c023ca7e6b960b01e000000a000004f50', 1, 9990, '泷御堂 冲饮谷物  赤小豆薏米芡实茯苓330g*罐', 0, 0, '', 9990, '[{\"attr_key\":\"净含量\",\"attr_value\":\"拍3罐送1罐到手4罐\"},{\"attr_key\":\"主播承诺\",\"attr_value\":\"7天升级30天试喝及运费险\"}]', 9990, NULL, NULL, 'null', NULL, 'null', NULL, '', '{\"stock_type\":0}', '{\"seven_day_return\":1,\"freight_insurance\":1}', 'null', NULL, '[]');
INSERT INTO `wei_order_item` VALUES (1773651201202032641, 1773651201164283905, '10000103058379', '2069165392', 'https://store.mp.video.tencent-cloud.com/161/20304/snscosdownload/SH/reserved/65f29bc400032a7c023ca7e6b960b01e000000a000004f50', 1, 9990, '泷御堂 冲饮谷物  赤小豆薏米芡实茯苓330g*罐', 0, 0, '', 9990, '[{\"attr_key\":\"净含量\",\"attr_value\":\"拍3罐送1罐到手4罐\"},{\"attr_key\":\"主播承诺\",\"attr_value\":\"7天升级30天试喝及运费险\"}]', 9990, NULL, NULL, 'null', NULL, 'null', NULL, '', '{\"stock_type\":0}', '{\"seven_day_return\":1,\"freight_insurance\":1}', 'null', NULL, '[]');
INSERT INTO `wei_order_item` VALUES (1773651202577764353, 1773651202531627010, '10000103058379', '2069165392', 'https://store.mp.video.tencent-cloud.com/161/20304/snscosdownload/SH/reserved/65f29bc400032a7c023ca7e6b960b01e000000a000004f50', 1, 9990, '泷御堂 冲饮谷物  赤小豆薏米芡实茯苓330g*罐', 0, 0, '', 9990, '[{\"attr_key\":\"净含量\",\"attr_value\":\"拍3罐送1罐到手4罐\"},{\"attr_key\":\"主播承诺\",\"attr_value\":\"7天升级30天试喝及运费险\"}]', 9990, NULL, NULL, 'null', NULL, 'null', NULL, '', '{\"stock_type\":0}', '{\"seven_day_return\":1,\"freight_insurance\":1}', 'null', NULL, '[]');
INSERT INTO `wei_order_item` VALUES (1773651203689254913, 1773651203651506177, '10000103058379', '2069165392', 'https://store.mp.video.tencent-cloud.com/161/20304/snscosdownload/SH/reserved/65f29bc400032a7c023ca7e6b960b01e000000a000004f50', 1, 9990, '泷御堂 冲饮谷物  赤小豆薏米芡实茯苓330g*罐', 0, 0, '', 9990, '[{\"attr_key\":\"净含量\",\"attr_value\":\"拍3罐送1罐到手4罐\"},{\"attr_key\":\"主播承诺\",\"attr_value\":\"7天升级30天试喝及运费险\"}]', 9990, NULL, NULL, 'null', NULL, 'null', NULL, '', '{\"stock_type\":0}', '{\"seven_day_return\":1,\"freight_insurance\":1}', 'null', NULL, '[]');
INSERT INTO `wei_order_item` VALUES (1773651204817522690, 1773651204742025218, '10000103058379', '2069165392', 'https://store.mp.video.tencent-cloud.com/161/20304/snscosdownload/SH/reserved/65f29bc400032a7c023ca7e6b960b01e000000a000004f50', 1, 9990, '泷御堂 冲饮谷物  赤小豆薏米芡实茯苓330g*罐', 0, 0, '', 9990, '[{\"attr_key\":\"净含量\",\"attr_value\":\"拍3罐送1罐到手4罐\"},{\"attr_key\":\"主播承诺\",\"attr_value\":\"7天升级30天试喝及运费险\"}]', 9990, NULL, NULL, 'null', NULL, 'null', NULL, '', '{\"stock_type\":0}', '{\"seven_day_return\":1,\"freight_insurance\":1}', 'null', NULL, '[]');
INSERT INTO `wei_order_item` VALUES (1773651206088396801, 1773651205966761986, '10000103058379', '2069165392', 'https://store.mp.video.tencent-cloud.com/161/20304/snscosdownload/SH/reserved/65f29bc400032a7c023ca7e6b960b01e000000a000004f50', 1, 9990, '泷御堂 冲饮谷物  赤小豆薏米芡实茯苓330g*罐', 0, 0, '', 9990, '[{\"attr_key\":\"净含量\",\"attr_value\":\"拍3罐送1罐到手4罐\"},{\"attr_key\":\"主播承诺\",\"attr_value\":\"7天升级30天试喝及运费险\"}]', 9990, NULL, NULL, 'null', NULL, 'null', NULL, '', '{\"stock_type\":0}', '{\"seven_day_return\":1,\"freight_insurance\":1}', 'null', NULL, '[]');
INSERT INTO `wei_order_item` VALUES (1773651207124389889, 1773651207095029762, '10000103058379', '2069165392', 'https://store.mp.video.tencent-cloud.com/161/20304/snscosdownload/SH/reserved/65f29bc400032a7c023ca7e6b960b01e000000a000004f50', 1, 9990, '泷御堂 冲饮谷物  赤小豆薏米芡实茯苓330g*罐', 0, 0, '', 9990, '[{\"attr_key\":\"净含量\",\"attr_value\":\"拍3罐送1罐到手4罐\"},{\"attr_key\":\"主播承诺\",\"attr_value\":\"7天升级30天试喝及运费险\"}]', 9990, NULL, NULL, 'null', NULL, 'null', NULL, '', '{\"stock_type\":0}', '{\"seven_day_return\":1,\"freight_insurance\":1}', 'null', NULL, '[]');
INSERT INTO `wei_order_item` VALUES (1773651208265240577, 1773651208210714625, '10000103058379', '2069165392', 'https://store.mp.video.tencent-cloud.com/161/20304/snscosdownload/SH/reserved/65f29bc400032a7c023ca7e6b960b01e000000a000004f50', 1, 9990, '泷御堂 冲饮谷物  赤小豆薏米芡实茯苓330g*罐', 0, 0, '', 9990, '[{\"attr_key\":\"净含量\",\"attr_value\":\"拍3罐送1罐到手4罐\"},{\"attr_key\":\"主播承诺\",\"attr_value\":\"7天升级30天试喝及运费险\"}]', 9990, NULL, NULL, 'null', NULL, 'null', NULL, '', '{\"stock_type\":0}', '{\"seven_day_return\":1,\"freight_insurance\":1}', 'null', NULL, '[]');
INSERT INTO `wei_order_item` VALUES (1773651209368342530, 1773651209330593793, '10000103058379', '2069165392', 'https://store.mp.video.tencent-cloud.com/161/20304/snscosdownload/SH/reserved/65f29bc400032a7c023ca7e6b960b01e000000a000004f50', 1, 9990, '泷御堂 冲饮谷物  赤小豆薏米芡实茯苓330g*罐', 0, 0, '', 9990, '[{\"attr_key\":\"净含量\",\"attr_value\":\"拍3罐送1罐到手4罐\"},{\"attr_key\":\"主播承诺\",\"attr_value\":\"7天升级30天试喝及运费险\"}]', 9990, NULL, NULL, 'null', NULL, 'null', NULL, '', '{\"stock_type\":0}', '{\"seven_day_return\":1,\"freight_insurance\":1}', 'null', NULL, '[]');
INSERT INTO `wei_order_item` VALUES (1773651210479833090, 1773651210421112833, '10000103058379', '2069165392', 'https://store.mp.video.tencent-cloud.com/161/20304/snscosdownload/SH/reserved/65f29bc400032a7c023ca7e6b960b01e000000a000004f50', 1, 9990, '泷御堂 冲饮谷物  赤小豆薏米芡实茯苓330g*罐', 0, 0, '', 9990, '[{\"attr_key\":\"净含量\",\"attr_value\":\"拍3罐送1罐到手4罐\"},{\"attr_key\":\"主播承诺\",\"attr_value\":\"7天升级30天试喝及运费险\"}]', 9990, NULL, NULL, 'null', NULL, 'null', NULL, '', '{\"stock_type\":0}', '{\"seven_day_return\":1,\"freight_insurance\":1}', 'null', NULL, '[]');
INSERT INTO `wei_order_item` VALUES (1773651211645849602, 1773651211620683777, '10000103058379', '2069165392', 'https://store.mp.video.tencent-cloud.com/161/20304/snscosdownload/SH/reserved/65f29bc400032a7c023ca7e6b960b01e000000a000004f50', 1, 9990, '泷御堂 冲饮谷物  赤小豆薏米芡实茯苓330g*罐', 0, 0, '', 9990, '[{\"attr_key\":\"净含量\",\"attr_value\":\"拍3罐送1罐到手4罐\"},{\"attr_key\":\"主播承诺\",\"attr_value\":\"7天升级30天试喝及运费险\"}]', 9990, NULL, NULL, 'null', NULL, 'null', NULL, '', '{\"stock_type\":0}', '{\"seven_day_return\":1,\"freight_insurance\":1}', 'null', NULL, '[]');
INSERT INTO `wei_order_item` VALUES (1773651212711202818, 1773651212686036993, '10000103058379', '2069165392', 'https://store.mp.video.tencent-cloud.com/161/20304/snscosdownload/SH/reserved/65f29bc400032a7c023ca7e6b960b01e000000a000004f50', 1, 9990, '泷御堂 冲饮谷物  赤小豆薏米芡实茯苓330g*罐', 0, 0, '', 9990, '[{\"attr_key\":\"净含量\",\"attr_value\":\"拍3罐送1罐到手4罐\"},{\"attr_key\":\"主播承诺\",\"attr_value\":\"7天升级30天试喝及运费险\"}]', 9990, NULL, NULL, 'null', NULL, 'null', NULL, '', '{\"stock_type\":0}', '{\"seven_day_return\":1,\"freight_insurance\":1}', 'null', NULL, '[]');
INSERT INTO `wei_order_item` VALUES (1773651213856247809, 1773651213822693377, '10000103058379', '2069165392', 'https://store.mp.video.tencent-cloud.com/161/20304/snscosdownload/SH/reserved/65f29bc400032a7c023ca7e6b960b01e000000a000004f50', 1, 9990, '泷御堂 冲饮谷物  赤小豆薏米芡实茯苓330g*罐', 0, 1, '', 9990, '[{\"attr_key\":\"净含量\",\"attr_value\":\"拍3罐送1罐到手4罐\"},{\"attr_key\":\"主播承诺\",\"attr_value\":\"7天升级30天试喝及运费险\"}]', 9990, NULL, NULL, 'null', NULL, 'null', NULL, '', '{\"stock_type\":0}', '{\"seven_day_return\":1,\"freight_insurance\":1}', 'null', NULL, '[]');
INSERT INTO `wei_order_item` VALUES (1773651214967738370, 1773651214942572545, '10000103058379', '2069165392', 'https://store.mp.video.tencent-cloud.com/161/20304/snscosdownload/SH/reserved/65f29bc400032a7c023ca7e6b960b01e000000a000004f50', 1, 9990, '泷御堂 冲饮谷物  赤小豆薏米芡实茯苓330g*罐', 0, 0, '', 9990, '[{\"attr_key\":\"净含量\",\"attr_value\":\"拍3罐送1罐到手4罐\"},{\"attr_key\":\"主播承诺\",\"attr_value\":\"7天升级30天试喝及运费险\"}]', 9990, NULL, NULL, 'null', NULL, 'null', NULL, '', '{\"stock_type\":0}', '{\"seven_day_return\":1,\"freight_insurance\":1}', 'null', NULL, '[]');
INSERT INTO `wei_order_item` VALUES (1773651216045674498, 1773651216016314369, '10000103058379', '2069165392', 'https://store.mp.video.tencent-cloud.com/161/20304/snscosdownload/SH/reserved/65f29bc400032a7c023ca7e6b960b01e000000a000004f50', 1, 9990, '泷御堂 冲饮谷物  赤小豆薏米芡实茯苓330g*罐', 0, 0, '', 9990, '[{\"attr_key\":\"净含量\",\"attr_value\":\"拍3罐送1罐到手4罐\"},{\"attr_key\":\"主播承诺\",\"attr_value\":\"7天升级30天试喝及运费险\"}]', 9990, NULL, NULL, 'null', NULL, 'null', NULL, '', '{\"stock_type\":0}', '{\"seven_day_return\":1,\"freight_insurance\":1}', 'null', NULL, '[]');
INSERT INTO `wei_order_item` VALUES (1773651217396240385, 1773651217362685954, '10000103058379', '2069165392', 'https://store.mp.video.tencent-cloud.com/161/20304/snscosdownload/SH/reserved/65f29bc400032a7c023ca7e6b960b01e000000a000004f50', 1, 9990, '泷御堂 冲饮谷物  赤小豆薏米芡实茯苓330g*罐', 0, 0, '', 9990, '[{\"attr_key\":\"净含量\",\"attr_value\":\"拍3罐送1罐到手4罐\"},{\"attr_key\":\"主播承诺\",\"attr_value\":\"7天升级30天试喝及运费险\"}]', 9990, NULL, NULL, 'null', NULL, 'null', NULL, '', '{\"stock_type\":0}', '{\"seven_day_return\":1,\"freight_insurance\":1}', 'null', NULL, '[]');
INSERT INTO `wei_order_item` VALUES (1773651218511925250, 1773651218482565122, '10000103058379', '2069165392', 'https://store.mp.video.tencent-cloud.com/161/20304/snscosdownload/SH/reserved/65f29bc400032a7c023ca7e6b960b01e000000a000004f50', 1, 9990, '泷御堂 冲饮谷物  赤小豆薏米芡实茯苓330g*罐', 0, 1, '', 9990, '[{\"attr_key\":\"净含量\",\"attr_value\":\"拍3罐送1罐到手4罐\"},{\"attr_key\":\"主播承诺\",\"attr_value\":\"7天升级30天试喝及运费险\"}]', 9990, NULL, NULL, 'null', NULL, 'null', NULL, '', '{\"stock_type\":0}', '{\"seven_day_return\":1,\"freight_insurance\":1}', 'null', NULL, '[]');
INSERT INTO `wei_order_item` VALUES (1773651219568889858, 1773651219539529730, '10000104315300', '2086367126', 'https://store.mp.video.tencent-cloud.com/161/20304/snscosdownload/SH/reserved/65f292760001000d22cbd8f9727c0d15000000a000004f50', 1, 990, '泷御堂 冲饮谷物  赤小豆薏米芡实茯苓茶330g*罐', 0, 0, '', 990, '[{\"attr_key\":\"净含量\",\"attr_value\":\"1罐体验装【贵在运费】(5%人选择)\"}]', 990, NULL, NULL, 'null', NULL, 'null', NULL, '', '{\"stock_type\":0}', '{\"seven_day_return\":1,\"freight_insurance\":1}', 'null', NULL, '[]');
INSERT INTO `wei_order_item` VALUES (1773651220827181058, 1773651220789432322, '10000103058379', '2069165392', 'https://store.mp.video.tencent-cloud.com/161/20304/snscosdownload/SH/reserved/65f29bc400032a7c023ca7e6b960b01e000000a000004f50', 11, 9990, '泷御堂 冲饮谷物  赤小豆薏米芡实茯苓330g*罐', 0, 11, '', 9990, '[{\"attr_key\":\"净含量\",\"attr_value\":\"拍3罐送1罐到手4罐\"},{\"attr_key\":\"主播承诺\",\"attr_value\":\"7天升级30天试喝及运费险\"}]', 100, NULL, NULL, 'null', NULL, 'true', 100, '', '{\"stock_type\":0}', '{\"seven_day_return\":1,\"freight_insurance\":1}', 'null', NULL, '[]');
INSERT INTO `wei_order_item` VALUES (1773651221921894401, 1773651221888339969, '10000103058379', '2069165392', 'https://store.mp.video.tencent-cloud.com/161/20304/snscosdownload/SH/reserved/65f29bc400032a7c023ca7e6b960b01e000000a000004f50', 1, 9990, '泷御堂 冲饮谷物  赤小豆薏米芡实茯苓330g*罐', 0, 0, '', 9990, '[{\"attr_key\":\"净含量\",\"attr_value\":\"拍3罐送1罐到手4罐\"},{\"attr_key\":\"主播承诺\",\"attr_value\":\"7天升级30天试喝及运费险\"}]', 9990, NULL, NULL, 'null', NULL, 'null', NULL, '', '{\"stock_type\":0}', '{\"seven_day_return\":1,\"freight_insurance\":1}', 'null', NULL, '[]');
INSERT INTO `wei_order_item` VALUES (1773651223083716609, 1773651223045967873, '10000103058379', '2069165392', 'https://store.mp.video.tencent-cloud.com/161/20304/snscosdownload/SH/reserved/65f29bc400032a7c023ca7e6b960b01e000000a000004f50', 1, 9990, '泷御堂 冲饮谷物  赤小豆薏米芡实茯苓330g*罐', 0, 0, '', 9990, '[{\"attr_key\":\"净含量\",\"attr_value\":\"拍3罐送1罐到手4罐\"},{\"attr_key\":\"主播承诺\",\"attr_value\":\"7天升级30天试喝及运费险\"}]', 9990, NULL, NULL, 'null', NULL, 'null', NULL, '', '{\"stock_type\":0}', '{\"seven_day_return\":1,\"freight_insurance\":1}', 'null', NULL, '[]');

-- ----------------------------
-- Table structure for wei_refund
-- ----------------------------
DROP TABLE IF EXISTS `wei_refund`;
CREATE TABLE `wei_refund`  (
  `id` bigint NOT NULL,
  `shop_id` int NULL DEFAULT NULL COMMENT '店铺id',
  `after_sale_order_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '售后单号',
  `status` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '售后单当前状态，参考：AfterSaleStatus',
  `openid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '买家身份标识',
  `unionid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '买家在开放平台的唯一标识符，若当前视频号小店已绑定到微信开放平台账号下会返回',
  `product_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品spuid',
  `sku_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品skuid',
  `count` int NULL DEFAULT NULL COMMENT '售后数量',
  `fast_refund` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否极速退款RefundInfo',
  `refund_reason` int NULL DEFAULT NULL COMMENT '标明售后单退款直接原因, 枚举值参考 RefundReason',
  `refund_amount` int NULL DEFAULT NULL COMMENT '退款金额（分）',
  `return_waybill_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '快递单号',
  `return_delivery_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '物流公司id',
  `return_delivery_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '物流公司名称',
  `merchant_upload_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '售后相关商品信息JSON',
  `create_time` int NULL DEFAULT NULL COMMENT '售后单创建时间戳',
  `update_time` int NULL DEFAULT NULL COMMENT '售后单更新时间戳',
  `reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '退款原因',
  `reason_text` varchar(2550) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '退款原因解释',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '售后类型。REFUND:退款；RETURN:退货退款。',
  `order_id` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '订单号，该字段可用于获取订单',
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT 'detail json',
  `complaint_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '纠纷id，该字段可用于获取纠纷信息',
  `refund_resp` varchar(2550) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '微信支付退款的响应',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '视频号小店退款' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wei_refund
-- ----------------------------

-- ----------------------------
-- Table structure for wms_goods_bad_stock
-- ----------------------------
DROP TABLE IF EXISTS `wms_goods_bad_stock`;
CREATE TABLE `wms_goods_bad_stock`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `goodsId` int NOT NULL COMMENT '商品id',
  `specId` int NOT NULL COMMENT '商品规格id',
  `specNumber` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '规格编码（唯一）',
  `sourceId` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '来源ID（type==1时 order_send_return主键id）',
  `type` int NOT NULL COMMENT '类型（1退货报损3待退还供应商）',
  `locationId` int NOT NULL DEFAULT 0 COMMENT '仓位',
  `quantity` int NOT NULL DEFAULT 0 COMMENT '数量',
  `lossAmount` double NOT NULL DEFAULT 0 COMMENT '损失金额（最大成本）',
  `isDelete` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0正常  1删除',
  `result` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '处理结果',
  `resultTime` datetime NULL DEFAULT NULL COMMENT '处理时间',
  `reason` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '理由',
  `status` tinyint NOT NULL DEFAULT 0 COMMENT '是否处理0未处理1已处理',
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modifyTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '不良品库存' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of wms_goods_bad_stock
-- ----------------------------
INSERT INTO `wms_goods_bad_stock` VALUES (1, 13, 88, '28202206810101', '20', 1, 0, 1, 29, 0, '计入损失', '2022-10-03 17:39:32', '货物损坏，供应商拒收，消费者退款成功', 1, '2022-10-03 17:39:32', '2022-10-03 17:39:32');
INSERT INTO `wms_goods_bad_stock` VALUES (2, 33, 497, 'HN08017503', '76', 1, 0, 1, 28, 0, '计入损失', '2022-10-16 18:00:00', '货物损坏，供应商拒收，消费者退款成功', 1, '2022-10-16 18:00:00', '2022-10-16 18:00:00');
INSERT INTO `wms_goods_bad_stock` VALUES (3, 33, 502, 'HN08012903', '249', 1, 0, 1, 28, 0, '计入损失', '2022-11-07 09:42:33', '货物损坏，供应商拒收，消费者退款成功', 1, '2022-11-07 09:42:33', '2022-11-07 09:42:33');
INSERT INTO `wms_goods_bad_stock` VALUES (4, 15, 119, '28202106610102', '174', 1, 0, 1, 29, 0, '计入损失', '2022-11-07 09:43:20', '货物损坏，供应商拒收，消费者退款成功', 1, '2022-11-07 09:43:20', '2022-11-07 09:43:20');
INSERT INTO `wms_goods_bad_stock` VALUES (5, 37, 558, 'HN1062904', '327', 1, 0, 1, 31, 0, '计入损失', '2022-12-08 10:08:14', '货物损坏，供应商拒收，消费者退款成功', 1, '2022-12-08 10:08:14', '2022-12-08 10:08:14');

-- ----------------------------
-- Table structure for wms_goods_bad_stock_log
-- ----------------------------
DROP TABLE IF EXISTS `wms_goods_bad_stock_log`;
CREATE TABLE `wms_goods_bad_stock_log`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `stockId` bigint NOT NULL COMMENT '商品id',
  `specId` int NOT NULL COMMENT '商品规格id',
  `locationId` int NOT NULL COMMENT '所在仓位',
  `type` int NOT NULL COMMENT '类型1入库2出库',
  `quantity` bigint NOT NULL DEFAULT 0 COMMENT '数量',
  `remark` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '备注',
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '不良品库存日志' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of wms_goods_bad_stock_log
-- ----------------------------
INSERT INTO `wms_goods_bad_stock_log` VALUES (1, 1, 88, 0, 1, 1, '退货不良品入库SKU :28202206810101退货单号:BAD221003173932494', '2022-10-03 17:39:32');
INSERT INTO `wms_goods_bad_stock_log` VALUES (2, 2, 497, 0, 1, 1, '退货不良品入库SKU :HN08017503退货单号:BAD221016180000005', '2022-10-16 18:00:00');
INSERT INTO `wms_goods_bad_stock_log` VALUES (3, 3, 502, 0, 1, 1, '退货不良品入库SKU :HN08012903退货单号:BAD221107094233114', '2022-11-07 09:42:33');
INSERT INTO `wms_goods_bad_stock_log` VALUES (4, 4, 119, 0, 1, 1, '退货不良品入库SKU :28202106610102退货单号:BAD221107094320707', '2022-11-07 09:43:20');
INSERT INTO `wms_goods_bad_stock_log` VALUES (5, 5, 558, 0, 1, 1, '退货不良品入库SKU :HN1062904退货单号:BAD221208100814778', '2022-12-08 10:08:14');

-- ----------------------------
-- Table structure for wms_stock_in_entry
-- ----------------------------
DROP TABLE IF EXISTS `wms_stock_in_entry`;
CREATE TABLE `wms_stock_in_entry`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `no` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '单据编号',
  `source_no` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '来源单号',
  `source_id` bigint NULL DEFAULT NULL COMMENT '来源单id',
  `source_type` int NOT NULL COMMENT '来源类型（1采购订单2退货订单）',
  `source_goods_unit` int NULL DEFAULT NULL COMMENT '采购订单商品数',
  `source_spec_unit_total` int NULL DEFAULT NULL COMMENT '采购订单总件数',
  `source_spec_unit` int NULL DEFAULT NULL COMMENT '采购订单商品规格数',
  `remark` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '备注',
  `stock_in_operator_id` int NULL DEFAULT NULL COMMENT '操作入库人id',
  `stock_in_operator` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '操作入库人',
  `stock_in_time` datetime NULL DEFAULT NULL COMMENT '入库时间',
  `status` int NOT NULL DEFAULT 0 COMMENT '状态（0待入库1部分入库2全部入库）',
  `create_by` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '入库单' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of wms_stock_in_entry
-- ----------------------------
INSERT INTO `wms_stock_in_entry` VALUES (8, '20240116145057', 'PUR20240116144408', 466, 1, 1, 10, 1, NULL, 1, 'admin', '2024-01-16 00:00:00', 2, 'admin', '2024-01-16 14:50:58', 'admin', '2024-01-16 14:52:10');

-- ----------------------------
-- Table structure for wms_stock_in_entry_item
-- ----------------------------
DROP TABLE IF EXISTS `wms_stock_in_entry_item`;
CREATE TABLE `wms_stock_in_entry_item`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `entry_id` bigint NOT NULL COMMENT '入库单id',
  `source_type` int NULL DEFAULT NULL COMMENT '来源类型（1采购订单2退货订单）',
  `source_id` bigint NULL DEFAULT NULL COMMENT '来源单id',
  `source_item_id` bigint NOT NULL COMMENT '来源单itemId',
  `goods_id` bigint NOT NULL COMMENT '商品id',
  `goods_num` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商品编码',
  `goods_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `spec_id` bigint NOT NULL COMMENT '商品规格id',
  `spec_num` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商品规格编码',
  `color_value` varchar(55) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '颜色',
  `color_image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '图片',
  `size_value` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '尺码',
  `style_value` varchar(55) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '款式',
  `original_quantity` bigint NULL DEFAULT NULL COMMENT '原始数量',
  `in_quantity` bigint NOT NULL COMMENT '入库数量',
  `remark` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '备注',
  `location_id` int NULL DEFAULT NULL COMMENT '入库仓位',
  `location_num` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '入库仓位编码',
  `status` int NULL DEFAULT 0 COMMENT '状态（0待入库1部分入库2全部入库）',
  `create_by` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `specIndex`(`spec_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '入库单明细' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of wms_stock_in_entry_item
-- ----------------------------
INSERT INTO `wms_stock_in_entry_item` VALUES (4, 8, 1, 466, 1962, 9, 'HN8026', 'HN8026牛仔短裤', 32, '2720210080260105', '黑色', 'https://cbu01.alicdn.com/img/ibank/O1CN01AfNgvA2FOyAvwXZxv_!!2208857268871-0-cib.jpg', '2XL', '', 10, 10, '', NULL, NULL, 2, 'admin', '2024-01-16 14:50:58', 'admin', '2024-01-16 14:52:10');

-- ----------------------------
-- Table structure for wms_stock_location
-- ----------------------------
DROP TABLE IF EXISTS `wms_stock_location`;
CREATE TABLE `wms_stock_location`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `number` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '货架编号',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '货架名称',
  `parent_id` int NOT NULL COMMENT '上级id',
  `depth` int NULL DEFAULT 1 COMMENT '层级深度1级2级3级',
  `parent_id1` int NOT NULL COMMENT '一级类目id',
  `parent_id2` int NOT NULL COMMENT '二级类目id',
  `address` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '地址',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `isDelete` int NOT NULL DEFAULT 0 COMMENT '0正常  1删除',
  `create_by` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '仓库货架表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of wms_stock_location
-- ----------------------------
INSERT INTO `wms_stock_location` VALUES (1, '001', '深圳虚拟仓库', 0, 1, 0, 0, NULL, NULL, 0, 'admin', '2022-03-07 20:06:10', NULL, '2022-03-07 20:06:10');
INSERT INTO `wms_stock_location` VALUES (2, 'A', 'A区', 1, 2, 1, 0, NULL, NULL, 0, 'admin', '2022-03-07 20:06:24', NULL, '2022-03-07 20:06:24');
INSERT INTO `wms_stock_location` VALUES (3, 'B', 'B区', 1, 2, 1, 0, NULL, NULL, 0, 'admin', '2022-03-07 20:06:38', NULL, '2022-03-07 20:06:38');
INSERT INTO `wms_stock_location` VALUES (4, 'C', 'C区', 1, 2, 1, 0, NULL, NULL, 0, 'admin', '2022-03-07 20:06:47', NULL, '2022-03-07 20:06:47');
INSERT INTO `wms_stock_location` VALUES (5, 'A01-1-01', 'A01-1-01', 2, 3, 1, 2, NULL, NULL, 0, 'admin', '2022-03-07 20:12:39', NULL, '2022-03-07 20:12:39');
INSERT INTO `wms_stock_location` VALUES (6, 'A01-1-02', 'A01-1-02', 2, 3, 1, 2, NULL, NULL, 0, 'admin', '2022-03-07 20:12:39', NULL, '2022-03-07 20:12:39');
INSERT INTO `wms_stock_location` VALUES (7, 'A01-1-03', 'A01-1-03', 2, 3, 1, 2, NULL, NULL, 0, 'admin', '2022-03-07 20:12:39', NULL, '2022-03-07 20:12:39');
INSERT INTO `wms_stock_location` VALUES (8, 'A01-1-04', 'A01-1-04', 2, 3, 1, 2, NULL, NULL, 0, 'admin', '2022-03-07 20:12:39', NULL, '2022-03-07 20:12:39');
INSERT INTO `wms_stock_location` VALUES (9, 'A01-1-05', 'A01-1-05', 2, 3, 1, 2, NULL, NULL, 0, 'admin', '2022-03-07 20:12:39', NULL, '2022-03-07 20:12:39');
INSERT INTO `wms_stock_location` VALUES (10, 'A01-1-06', 'A01-1-06', 2, 3, 1, 2, NULL, NULL, 0, 'admin', '2022-03-07 20:12:39', NULL, '2022-03-07 20:12:39');
INSERT INTO `wms_stock_location` VALUES (11, 'A01-1-07', 'A01-1-07', 2, 3, 1, 2, NULL, NULL, 0, 'admin', '2022-03-07 20:12:39', NULL, '2022-03-07 20:12:39');
INSERT INTO `wms_stock_location` VALUES (12, 'A01-1-08', 'A01-1-08', 2, 3, 1, 2, NULL, NULL, 0, 'admin', '2022-03-07 20:12:39', NULL, '2022-03-07 20:12:39');
INSERT INTO `wms_stock_location` VALUES (13, 'A01-1-09', 'A01-1-09', 2, 3, 1, 2, NULL, NULL, 0, 'admin', '2022-03-07 20:12:39', NULL, '2022-03-07 20:12:39');
INSERT INTO `wms_stock_location` VALUES (14, 'A01-1-10', 'A01-1-10', 2, 3, 1, 2, NULL, NULL, 0, 'admin', '2022-03-07 20:12:39', NULL, '2022-03-07 20:12:39');
INSERT INTO `wms_stock_location` VALUES (15, 'A01-1-11', 'A01-1-11', 2, 3, 1, 2, NULL, NULL, 0, 'admin', '2022-03-07 20:12:39', NULL, '2022-03-07 20:12:39');
INSERT INTO `wms_stock_location` VALUES (16, 'A01-1-12', 'A01-1-12', 2, 3, 1, 2, NULL, NULL, 0, 'admin', '2022-03-07 20:12:39', NULL, '2022-03-07 20:12:39');
INSERT INTO `wms_stock_location` VALUES (17, 'A01-1-13', 'A01-1-13', 2, 3, 1, 2, NULL, NULL, 0, 'admin', '2022-03-07 20:12:39', NULL, '2022-03-07 20:12:39');
INSERT INTO `wms_stock_location` VALUES (18, 'A01-1-14', 'A01-1-14', 2, 3, 1, 2, NULL, NULL, 0, 'admin', '2022-03-07 20:12:39', NULL, '2022-03-07 20:12:39');
INSERT INTO `wms_stock_location` VALUES (19, 'A01-1-15', 'A01-1-15', 2, 3, 1, 2, NULL, NULL, 0, 'admin', '2022-03-07 20:12:39', NULL, '2022-03-07 20:12:39');
INSERT INTO `wms_stock_location` VALUES (20, 'A01-1-16', 'A01-1-16', 2, 3, 1, 2, NULL, NULL, 0, 'admin', '2022-03-07 20:12:39', NULL, '2022-03-07 20:12:39');

-- ----------------------------
-- Table structure for wms_stock_out_entry
-- ----------------------------
DROP TABLE IF EXISTS `wms_stock_out_entry`;
CREATE TABLE `wms_stock_out_entry`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `stockOutNum` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '出库单编号',
  `sourceNo` varchar(35) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '来源单据号',
  `sourceId` bigint NULL DEFAULT NULL COMMENT '来源单据Id',
  `stockOutType` int NOT NULL DEFAULT 1 COMMENT '出库类型1订单拣货出库2采购退货出库3盘点出库4报损出库',
  `status` int NOT NULL COMMENT '状态：0待出库1部分出库2全部出库',
  `printStatus` int NOT NULL COMMENT '打印状态：是否打印1已打印0未打印',
  `printTime` datetime NULL DEFAULT NULL COMMENT '打印时间',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  `createBy` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `updateTime` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `updateBy` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `completeTime` datetime NULL DEFAULT NULL COMMENT '完成出库时间',
  `stockOutOperatorId` int NULL DEFAULT 0 COMMENT '出库操作人userid',
  `stockOutOperatorName` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '出库操作人',
  `stockOutTime` datetime NULL DEFAULT NULL COMMENT '出库时间',
  `remark` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '备注',
  `isDelete` tinyint NOT NULL DEFAULT 0 COMMENT '是否删除0未删除1已删除',
  `goodsUnit` int NOT NULL COMMENT '商品数',
  `specUnit` int NOT NULL COMMENT '商品规格数',
  `specUnitTotal` int NOT NULL COMMENT '总件数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '出库单' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of wms_stock_out_entry
-- ----------------------------
INSERT INTO `wms_stock_out_entry` VALUES (2, '202401161452276', NULL, NULL, 1, 0, 0, NULL, '2024-01-16 14:52:29', 'admin', '2024-01-16 14:52:29', NULL, NULL, 0, NULL, NULL, NULL, 0, 1, 1, 1);
INSERT INTO `wms_stock_out_entry` VALUES (3, '202401161504597', NULL, NULL, 1, 0, 0, NULL, '2024-01-16 15:05:02', 'admin', '2024-01-16 15:05:01', NULL, NULL, 0, NULL, NULL, NULL, 0, 1, 1, 1);

-- ----------------------------
-- Table structure for wms_stock_out_entry_item
-- ----------------------------
DROP TABLE IF EXISTS `wms_stock_out_entry_item`;
CREATE TABLE `wms_stock_out_entry_item`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `entryId` bigint NOT NULL COMMENT '出库单id',
  `sourceOrderId` bigint NOT NULL COMMENT '来源订单id',
  `sourceOrderNo` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '来源订单号',
  `sourceOrderItemId` bigint NOT NULL COMMENT '来源订单itemId出库对应的itemId，如：order_item表id、invoice_info表id',
  `goodsId` int NOT NULL COMMENT '商品id',
  `specId` int NOT NULL COMMENT '商品规格id',
  `specNum` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '规格编码',
  `originalQuantity` bigint NOT NULL COMMENT '总数量',
  `outQuantity` bigint NOT NULL DEFAULT 0 COMMENT '已出库数量',
  `completeTime` datetime NULL DEFAULT NULL COMMENT '完成出库时间',
  `pickedTime` datetime NULL DEFAULT NULL COMMENT '完成拣货时间',
  `status` int NOT NULL DEFAULT 0 COMMENT '状态：0待出库1部分出库2全部出库',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `specIndex`(`specId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '出库单明细' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of wms_stock_out_entry_item
-- ----------------------------
INSERT INTO `wms_stock_out_entry_item` VALUES (8, 2, 15, '1631273557325601885', 12, 9, 32, '2720210080260105', 1, 1, '2024-01-16 14:52:43', '2024-01-16 14:52:43', 2);
INSERT INTO `wms_stock_out_entry_item` VALUES (9, 3, 16, '1642473483353670599', 13, 9, 32, '2720210080260105', 1, 1, '2024-01-16 15:05:37', '2024-01-16 15:05:36', 2);

-- ----------------------------
-- Table structure for wms_stock_out_entry_item_detail
-- ----------------------------
DROP TABLE IF EXISTS `wms_stock_out_entry_item_detail`;
CREATE TABLE `wms_stock_out_entry_item_detail`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `entryId` bigint NOT NULL COMMENT '出库单ID',
  `entryItemId` bigint NOT NULL DEFAULT 0 COMMENT '出库单ItemID',
  `goodsInventoryId` bigint NOT NULL DEFAULT 0 COMMENT '库存ID',
  `goodsInventoryDetailId` bigint NOT NULL DEFAULT 0 COMMENT '库存详情ID',
  `quantity` bigint NOT NULL DEFAULT 0 COMMENT '出库数量',
  `locationId` int NULL DEFAULT NULL COMMENT '出库仓位ID',
  `stockOutOperatorId` int NULL DEFAULT 0 COMMENT '出库操作人userid',
  `stockOutOperatorName` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '出库操作人',
  `stockOutTime` datetime NULL DEFAULT NULL COMMENT '出库时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `goods_stock_info_item_id_index`(`goodsInventoryDetailId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '出库明细详情' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of wms_stock_out_entry_item_detail
-- ----------------------------
INSERT INTO `wms_stock_out_entry_item_detail` VALUES (4, 2, 8, 6, 7, 1, 20, 1, 'admin', '2024-01-16 14:52:43');
INSERT INTO `wms_stock_out_entry_item_detail` VALUES (5, 3, 9, 6, 7, 1, 20, 1, 'admin', '2024-01-16 15:05:32');

SET FOREIGN_KEY_CHECKS = 1;
