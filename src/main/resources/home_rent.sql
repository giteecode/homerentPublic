/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50727
 Source Host           : localhost:3306
 Source Schema         : home_rent

 Target Server Type    : MySQL
 Target Server Version : 50727
 File Encoding         : 65001

 Date: 06/05/2020 12:36:32
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_collect
-- ----------------------------
DROP TABLE IF EXISTS `t_collect`;
CREATE TABLE `t_collect`  (
  `col_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户ID',
  `rentout_id` int(11) NULL DEFAULT NULL COMMENT '房屋出租ID',
  PRIMARY KEY (`col_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '收场夹表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_collect
-- ----------------------------

-- ----------------------------
-- Table structure for t_contract
-- ----------------------------
DROP TABLE IF EXISTS `t_contract`;
CREATE TABLE `t_contract`  (
  `con_num` int(11) NOT NULL AUTO_INCREMENT COMMENT '合同号',
  `con_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '房源地址',
  `con_time` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '租期',
  `start_time` datetime(0) NULL DEFAULT NULL COMMENT '起租时间',
  `end_time` datetime(0) NULL DEFAULT NULL COMMENT '到期时间',
  `pay_time` datetime(0) NULL DEFAULT NULL COMMENT '每月付款期限',
  `month_money` decimal(4, 2) NULL DEFAULT NULL COMMENT '月租金',
  `total_money` decimal(4, 2) NULL DEFAULT NULL COMMENT '租金总额',
  `deposit` decimal(4, 2) NULL DEFAULT NULL COMMENT '押金',
  `first_party` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '甲方单位',
  `first_phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '甲方联系电话',
  `second_party` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '乙方单位',
  `second_phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '乙方联系电话',
  `con_status` int(2) NULL DEFAULT NULL COMMENT '使用状态1在用/0弃用',
  `con_create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `first_id` int(11) NULL DEFAULT NULL COMMENT '甲方ID',
  `second_id` int(11) NULL DEFAULT NULL COMMENT '乙方ID',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户表主键id',
  `rentout_id` int(11) NULL DEFAULT NULL COMMENT '房屋出租ID',
  PRIMARY KEY (`con_num`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '合同表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_contract
-- ----------------------------

-- ----------------------------
-- Table structure for t_count
-- ----------------------------
DROP TABLE IF EXISTS `t_count`;
CREATE TABLE `t_count`  (
  `count_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `count_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '统计名',
  `count_num` int(11) NULL DEFAULT NULL COMMENT '统计数',
  `count_type` int(4) NULL DEFAULT NULL COMMENT '统计类型',
  PRIMARY KEY (`count_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '数据统计表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_count
-- ----------------------------
INSERT INTO `t_count` VALUES (1, '一月份', 10, NULL);
INSERT INTO `t_count` VALUES (2, '二月份', 20, NULL);
INSERT INTO `t_count` VALUES (3, '三月份', 22, NULL);
INSERT INTO `t_count` VALUES (4, '四月份', 23, NULL);
INSERT INTO `t_count` VALUES (5, '五月份', 15, NULL);

-- ----------------------------
-- Table structure for t_message
-- ----------------------------
DROP TABLE IF EXISTS `t_message`;
CREATE TABLE `t_message`  (
  `message_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `create_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人姓名',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '内容',
  `m_phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `m_status` int(2) NULL DEFAULT NULL COMMENT '使用状态1在用/0弃用',
  `m_create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户表主键id',
  PRIMARY KEY (`message_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '留言投诉表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_message
-- ----------------------------
INSERT INTO `t_message` VALUES (1, 'nnnzzzppp', '第一次留言测试', '第一次留言能不能成功呢?', '17379941212', 1, '2024-01-03 20:36:42', 1);
INSERT INTO `t_message` VALUES (2, 'hhhh', '第一次成功', '刚刚第一次留言成功了haha', '17379941212', 1, '2024-01-03 20:38:59', 1);
INSERT INTO `t_message` VALUES (3, 'nnnnzzzppp', '第二次测试', '第一次测试id进去了吗？', '17379941212', 1, '2024-01-03 20:40:50', 1);
INSERT INTO `t_message` VALUES (4, '游客', '留言测试1', '游客留言测试', '17379941212', 0, '2024-01-03 20:42:19', 2);
INSERT INTO `t_message` VALUES (5, '奶制品', '再一次测试', '哈哈啊o', '13755757847', 1, '2024-01-03 23:15:25', 1);
INSERT INTO `t_message` VALUES (6, 'nzp', '这是在学校的最后一次测试', '这是在学校的最后一次测试，以后的日子加油', '13755601022', 1, '2024-01-05 23:55:41', 2);
INSERT INTO `t_message` VALUES (7, 'nzp', '在测试一下', '嘿嘿，我要开始测试了', '13755611032', 1, '2024-01-05 23:56:51', 3);
INSERT INTO `t_message` VALUES (8, '123123', '12312231', '1231231', '18101085548', 1, '2024-01-08 17:49:03', 1);
INSERT INTO `t_message` VALUES (9, '1231231', '12312', '123131', '13755601130', 1, '2024-01-12 15:37:43', NULL);
INSERT INTO `t_message` VALUES (10, '123123', '测试留言', '这个系统真好', '18157712201', 1, '2024-01-18 17:33:34', 2);
INSERT INTO `t_message` VALUES (11, '小王', '系统全部完善测试', '这是系统完善后的第一次测试。这是系统完善后的第一次测试。这是系统完善后的第一次测试。这是系统完善后的第一次测试。这是系统完善后的第一次测试。这是系统完善后的第一次测试。这是系统完善后的第一次测试。这是系统完善后的第一次测试。这是系统完善后的第一次测试。这是系统完善后的第一次测试。这是系统完善后的第一次测试。', '18170085558', 1, '2024-01-19 22:35:36', 2);

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order`  (
  `order_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单编号',
  `order_price` decimal(4, 2) NULL DEFAULT NULL COMMENT '租金',
  `first_party` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '甲方单位',
  `first_phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '甲方联系电话',
  `second_party` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '乙方单位',
  `second_phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '乙方联系电话',
  `order_status` int(2) NULL DEFAULT NULL COMMENT '支付状态1支付/0未支付',
  `order_create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户表主键id',
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_order
-- ----------------------------

-- ----------------------------
-- Table structure for t_owner
-- ----------------------------
DROP TABLE IF EXISTS `t_owner`;
CREATE TABLE `t_owner`  (
  `owner_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `owner_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户姓名',
  `owner_idcard` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证号码',
  `owner_room_photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '房屋证明照片',
  `request_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '请求说明',
  `owner_status` int(2) NULL DEFAULT NULL COMMENT '使用状态0未处理/1处理',
  `owner_create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `owner_user_id` int(11) NULL DEFAULT NULL COMMENT '用户表主键id',
  `owner_issuccess` int(11) NULL DEFAULT NULL COMMENT '1表示通过/0表示驳回',
  PRIMARY KEY (`owner_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '数据统计表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_owner
-- ----------------------------
INSERT INTO `t_owner` VALUES (1, '123', '360124199712226242', '23d7e34a4d904fbd8cc44c666ddb1f5c.jpg', '000000000000000000000', 1, '2024-01-06 14:54:56', 1, 0);
INSERT INTO `t_owner` VALUES (20, '小王', '360124199712220031', '3539ad4755d24d9e80ef62bd2af0fa97.jpg', '0000000000000000000000000000000000', 1, '2024-01-06 17:24:23', 2, 1);
INSERT INTO `t_owner` VALUES (21, '小徐', '360124199754676011', 'ac1021b76dd1422884bcb4f1372a794a.jpg', '00000000000000000', 0, '2024-01-06 17:31:11', 3, NULL);
INSERT INTO `t_owner` VALUES (22, '许三多', '360124198012226010', 'ac1021b76dd1422884bcb4f1372a794a.jpg', '111111111111111111111', 1, '2024-01-06 17:31:50', 32, 1);
INSERT INTO `t_owner` VALUES (23, '徐徐', '360124199712226011', 'ac1021b76dd1422884bcb4f1372a794a.jpg', '1231231', 0, '2024-01-06 17:39:52', 33, NULL);
INSERT INTO `t_owner` VALUES (24, '123', '360124199712226011', '781bd6bde2334eaf9a31720b0ca9d2eb.jpg', '3333333333333333333333', 1, '2024-01-05 23:50:34', 1, 1);
INSERT INTO `t_owner` VALUES (29, '1231', '360124199712226011', 'c6e1ea9abbff4371ac7e960538cd5ab0.jpg', '123123123', 0, '2024-01-06 17:51:08', 2, NULL);
INSERT INTO `t_owner` VALUES (30, '王大妈', '360124199712226011', 'b88724b9a6544caa80306b7bf581bd7f.jpg', '我想申请为房东', 0, '2024-01-06 17:52:47', 1, NULL);
INSERT INTO `t_owner` VALUES (32, '许三多', '360124198012226010', 'bbe3be79bbf54bdf8eabe79a22b00a25.jpg', '0100111111111111111111111', 1, '2024-01-07 19:39:42', 1, 0);
INSERT INTO `t_owner` VALUES (33, '许三多', '360124199712226011', '39dd6ed1b5d6430291c88900e7631648.jpg', '修改后的第一次测试啊啊啊', 1, '2024-01-07 20:11:59', 2, 2);
INSERT INTO `t_owner` VALUES (34, '撒大大', '360124199712226011', 'bd01ca00b07b4ff2b12feee37c8286f0.jpg', '大苏打实打实大苏打实打实大苏打实打实的', 1, '2024-01-07 22:49:10', 1, 0);
INSERT INTO `t_owner` VALUES (35, '123123', '360124199712226011', 'b867bbb62ec9482fa159069be49dc69b.jpg', '以下是我的申请', 0, '2024-01-14 16:29:34', 2, NULL);
INSERT INTO `t_owner` VALUES (36, '徐徐', '360124199712226011', '62fd51a9e41b42d39933e7e61914c5cd.jpg', '这是我的房东申请', 1, '2024-01-17 22:37:30', 2, 1);
INSERT INTO `t_owner` VALUES (37, '许三多', '360124199712226242', '6c66084e045d4d3882fa15bcbc2d8dd4.jpg', '申请成为房东，发布房源', 0, '2024-01-29 13:38:32', 4, NULL);

-- ----------------------------
-- Table structure for t_permission
-- ----------------------------
DROP TABLE IF EXISTS `t_permission`;
CREATE TABLE `t_permission`  (
  `per_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `url` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '路径',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限描述',
  `roleid` int(11) NULL DEFAULT NULL COMMENT '角色ID',
  `per_status` int(2) NULL DEFAULT NULL COMMENT '使用状态1在用/0弃用',
  PRIMARY KEY (`per_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_permission
-- ----------------------------

-- ----------------------------
-- Table structure for t_rentget
-- ----------------------------
DROP TABLE IF EXISTS `t_rentget`;
CREATE TABLE `t_rentget`  (
  `rg_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `rg_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户姓名',
  `rg_phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `rg_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '求租标题',
  `min_price` double(8, 2) NULL DEFAULT NULL COMMENT '最低租金',
  `max_price` double(8, 2) NULL DEFAULT NULL COMMENT '最高租金',
  `live_time` datetime(0) NULL DEFAULT NULL COMMENT '大概入住时间',
  `room_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '想住在的位置',
  `room_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '房屋描述（环境交通等',
  `room_area` int(4) NULL DEFAULT NULL COMMENT '面积大小',
  `renovationint` int(2) NULL DEFAULT NULL COMMENT '是否装修',
  `get_status` int(2) NULL DEFAULT NULL COMMENT '使用状态1在用/0弃用',
  `get_create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户表主键id',
  PRIMARY KEY (`rg_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 149 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '求租表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_rentget
-- ----------------------------
INSERT INTO `t_rentget` VALUES (5, '撒大大', '18170082212', '第一次成功1', 123111.00, 222222.00, '2024-01-14 00:00:00', '天津市-天津市-河东区', '12312', 1231, NULL, 0, '2024-01-12 15:14:00', 1);
INSERT INTO `t_rentget` VALUES (6, '撒大大', '18171235548', '第2次成功', 1231.00, 2312.00, '2024-01-14 00:00:00', '天津市', '1231', 1231, NULL, 1, '2024-01-12 15:15:24', 1);
INSERT INTO `t_rentget` VALUES (13, '1111', '18170085228', '测试2', 123.00, 1231.00, '2024-01-15 00:00:00', '山西省-长治市-屯留县', '123121', 1231, NULL, 0, '2024-01-12 21:51:20', 2);
INSERT INTO `t_rentget` VALUES (19, 'nnnzzzppp', '14170085548', '测试12', 1231.00, 2222.00, '2024-01-14 00:00:00', '山西省-长治市-襄垣县', '1231231', 181, NULL, 1, '2024-01-12 22:49:57', 3);
INSERT INTO `t_rentget` VALUES (20, 'hhhh', '14170085511', '测试123', 1231.00, 2222.00, '2024-01-14 00:00:00', '山西省-长治市-襄垣县', '1231231', 181, NULL, 1, '2024-01-12 22:50:03', 2);
INSERT INTO `t_rentget` VALUES (21, '游客', '12370085548', '测试', 1231.00, 1231.00, '2024-01-14 00:00:00', '北京市-北京市-西城区', '12312312', 181, NULL, 0, '2024-01-12 22:53:08', 2);
INSERT INTO `t_rentget` VALUES (22, 'nzp', '12370085548', '测试', 1231.00, 1231.00, '2024-01-14 00:00:00', '北京市-北京市-西城区', '12312312', 181, NULL, 0, '2024-01-12 22:53:26', 3);
INSERT INTO `t_rentget` VALUES (23, '奶制品', '13270085548', '121', 123.00, 321.00, '2024-01-13 00:00:00', '天津市-天津市', '123456', 181, NULL, 1, '2024-01-12 22:55:41', 3);
INSERT INTO `t_rentget` VALUES (24, '游客', '13270085548', '121', 123.00, 321.00, '2024-01-13 00:00:00', '天津市-天津市', '123456', 181, NULL, 1, '2024-01-12 22:55:52', 1);
INSERT INTO `t_rentget` VALUES (25, '121', '12370085548', '测试21', 123.00, 321.00, '2024-01-15 00:00:00', '天津市-天津市-河西区', '123121', 181, NULL, 1, '2024-01-12 23:00:26', 32);
INSERT INTO `t_rentget` VALUES (26, '31231', '31270085548', '能不能成功', 123.00, 321.00, '2024-01-12 00:00:00', '天津市-天津市-和平区', '1231', 181, NULL, 1, '2024-01-12 23:03:40', 33);
INSERT INTO `t_rentget` VALUES (27, 'nnnnzzzppp', '31270085548', '能不能成功', 123.00, 321.00, '2024-01-12 00:00:00', '天津市-天津市-和平区', '1231', 181, NULL, 1, '2024-01-12 23:04:38', 34);
INSERT INTO `t_rentget` VALUES (28, '123123', '31270085548', '能不能成功', 123.00, 321.00, '2024-01-12 00:00:00', '天津市-天津市-和平区', '1231', 181, NULL, 1, '2024-01-12 23:04:56', 32);
INSERT INTO `t_rentget` VALUES (29, '小王', '14270085548', '12测试34', 123.00, 321.00, '2024-01-13 00:00:00', '河北省-秦皇岛市', '1231', 181, NULL, 0, '2024-01-12 23:08:08', 33);
INSERT INTO `t_rentget` VALUES (30, '尔曼', '14270085548', '12测试34', 123.00, 321.00, '2024-01-13 00:00:00', '河北省-秦皇岛市', '1231', 181, NULL, 1, '2024-01-12 23:08:12', 33);
INSERT INTO `t_rentget` VALUES (31, '大蛇丸', '14270085548', '12测试34', 123.00, 321.00, '2024-01-13 00:00:00', '河北省-秦皇岛市', '1231', 181, NULL, 1, '2024-01-12 23:09:58', 1);
INSERT INTO `t_rentget` VALUES (32, '王文强', '14270085548', '1231信息', 1231.00, 3212.00, '2024-01-14 00:00:00', '天津市-天津市-河西区', '1231', 181, NULL, 1, '2024-01-12 23:12:27', 1);
INSERT INTO `t_rentget` VALUES (33, '钱文琦', '14270085548', '1231信息', 1231.00, 3212.00, '2024-01-14 00:00:00', '天津市-天津市-河西区', '1231', 181, NULL, 1, '2024-01-12 23:12:28', 33);
INSERT INTO `t_rentget` VALUES (136, 'hhhh伟大', '12370085548', '12等等', 123.00, 312.00, '2024-01-22 00:00:00', '山西省', '十大', 181, NULL, 1, '2024-01-12 23:51:48', 34);
INSERT INTO `t_rentget` VALUES (137, '生气啊', '12370085548', '测试1', 123.00, 4213.00, '2024-01-20 00:00:00', '内蒙古-赤峰市-阿鲁科尔沁旗', '大的', 181, NULL, 1, '2024-01-12 23:55:39', 34);
INSERT INTO `t_rentget` VALUES (138, '孤独的', '21370085548', '12测试', 123.00, 322.00, '2024-01-15 00:00:00', '内蒙古', '1231', 181, NULL, 1, '2024-01-12 23:58:21', 3);
INSERT INTO `t_rentget` VALUES (139, '小刘', '21270085548', '1测试1', 12.00, 3221.00, '2024-01-21 00:00:00', '黑龙江省', '1231', 123, NULL, 1, '2024-01-12 23:59:41', 2);
INSERT INTO `t_rentget` VALUES (140, '刘文清', '70085548231', '1三十三', 213.00, 2133.00, '2024-01-20 00:00:00', '江苏省-南通市-海安县', '12312', 181, NULL, 1, '2024-01-13 00:02:55', 2);
INSERT INTO `t_rentget` VALUES (141, '王小明', '13700855481', '123', 121.00, 123.00, '2024-01-22 00:00:00', '内蒙古-赤峰市', '1231231', 181, NULL, 1, '2024-01-13 00:07:18', 3);
INSERT INTO `t_rentget` VALUES (142, '徐达', '13270085548', '1水水水', 123.00, 321.00, '2024-01-20 00:00:00', '上海市-上海市-黄浦区', '顶顶顶', 181, NULL, 1, '2024-01-13 00:09:43', 3);
INSERT INTO `t_rentget` VALUES (143, '二七', '12370085548', '今天最后一次测试', 123.00, 332.00, '2024-01-12 00:00:00', '内蒙古-呼伦贝尔市-额尔古纳市', '1231', 181, NULL, 1, '2024-01-13 00:11:37', 3);
INSERT INTO `t_rentget` VALUES (144, '游客ef64033cebfe40f3af3ae354b69ad385', '12170085548', '今天的第一次测试', 123.00, 312.00, '2024-01-22 00:00:00', '吉林省-通化市', '2131', 123, NULL, 0, '2024-01-13 00:13:30', 2);
INSERT INTO `t_rentget` VALUES (145, '撒大大', '13270085548', '测试', 213.00, 222.00, '2024-01-23 00:00:00', '湖南省-邵阳市-邵东县', '1231312131', 181, NULL, 0, '2024-01-13 11:28:12', 2);
INSERT INTO `t_rentget` VALUES (146, '游客8aae3b16cfb1486fa08970ca8a352837', '18170085228', '我想租房子', 1232.00, 12313.00, '2024-01-14 00:00:00', '河南省-信阳市-平桥区', '打算大苏打十大阿松大阿松大阿松大艾东阿达的艾东阿松大艾东艾东阿松大阿松大阿松大阿松大阿松大阿松大阿松大阿松大阿松大袄啥', 1201, NULL, 0, '2024-01-01 21:11:54', 2);
INSERT INTO `t_rentget` VALUES (147, '游客4cae76f156f349f595164e3aa34a2078', '17379941212', '第一次正式测试', 123.00, 3211.00, '2024-01-19 00:00:00', '辽宁省-抚顺市-抚顺县', '1231231312312', 123, NULL, 0, '2024-01-11 15:20:24', NULL);
INSERT INTO `t_rentget` VALUES (148, '123123', '18170085558', '我想在深圳宝安租一个一居室', 1000.00, 1500.00, '2024-01-02 00:00:00', '广东省-深圳市-宝安区', '希望有合适的房子，到时候联系我', 20, NULL, 1, '2024-01-19 22:33:32', 2);

-- ----------------------------
-- Table structure for t_rentout
-- ----------------------------
DROP TABLE IF EXISTS `t_rentout`;
CREATE TABLE `t_rentout`  (
  `rg_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `rg_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户姓名',
  `rg_phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `room_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户地址',
  `room_price` double(8, 2) NULL DEFAULT NULL COMMENT '租金',
  `is_floor` int(3) NULL DEFAULT NULL COMMENT '第几层',
  `all_floor` int(3) NULL DEFAULT NULL COMMENT '共几层',
  `room_age` int(2) NULL DEFAULT NULL COMMENT '房龄',
  `room_structure` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '几室几厅',
  `room_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '房屋描述（环境交通等',
  `room_area` int(4) NULL DEFAULT NULL COMMENT '面积大小',
  `renovationint` int(2) NULL DEFAULT NULL COMMENT '是否装修',
  `room_picture` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '房屋图片',
  `out_status` int(2) NULL DEFAULT NULL COMMENT '使用状态1在用/0弃用',
  `out_create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `isqualified` int(2) NULL DEFAULT NULL COMMENT '房源申请是否合格',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户表主键id',
  PRIMARY KEY (`rg_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '出租表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_rentout
-- ----------------------------
INSERT INTO `t_rentout` VALUES (1, '123', '123', '123', NULL, 123, 123, 12, '2', '2', 2, 2, NULL, 2, '2023-12-28 23:07:04', 1, 2);
INSERT INTO `t_rentout` VALUES (2, '撒大大', '18170085548', '上海市-上海市-杨浦区', 121.00, 21, 22, 3, '三室一厅', '水水水水', 222, 1, 'be5f4d27-2af9-44b0-a00c-144cab6f8d94.jpg', 1, '2024-01-11 18:01:10', NULL, 1);
INSERT INTO `t_rentout` VALUES (3, '撒大大', '18170085548', '辽宁省-阜新市', 121.00, 21, 22, 1, '三室一厅', '啊啊啊啊啊啊啊', 222, 1, 'F1.jpg', 2, '2024-01-11 18:02:46', NULL, 1);
INSERT INTO `t_rentout` VALUES (4, '撒大大', '18170085548', '吉林省', 2222.00, 12, 22, 5, '三室一厅', '123123123', 111, 2, 'be5f4d27-2af9-44b0-a00c-144cab6f8d94.jpg', 1, '2024-01-11 18:12:31', NULL, 1);
INSERT INTO `t_rentout` VALUES (5, '撒大大', '18170085548', '安徽省-马鞍山市-金家庄区', 2222.00, 12, 22, 2, '三室一厅', '123123123', 111, 1, 'F2.jpg', 1, '2024-01-11 18:17:10', NULL, 1);
INSERT INTO `t_rentout` VALUES (6, '撒大大', '13755757847', '吉林省-白山市-靖宇县', 1212.00, 12, 22, 2, '三室一厅', 'qwdasdasdada', 111, 1, 'be5f4d27-2af9-44b0-a00c-144cab6f8d94.jpg', 1, '2024-01-11 18:27:34', NULL, 2);
INSERT INTO `t_rentout` VALUES (7, '撒大大', '18170085548', '黑龙江省-大庆市-林甸县', 1212.00, 12, 22, 2, '一室一厅', '123123', 40, 1, 'F1.jpg', 1, '2024-01-11 18:33:01', NULL, 1);
INSERT INTO `t_rentout` VALUES (8, '123123', '18170085548', '山西省-阳泉市-盂  县', 2222.00, 12, 20, 2, '三室一厅', '我这房子很不错，冬暖夏凉', 120, 1, '84bc7dcf-fc7d-4d5c-b264-a9919de3e3d8.jpg', 1, '2024-01-13 18:20:09', NULL, 2);
INSERT INTO `t_rentout` VALUES (9, '123123', '13755601022', '内蒙古-呼伦贝尔市-扎兰屯市', 1200.00, 1, 1, 2, '蒙古包', '这里纷纷九九，风景很好', 111, 1, 'F2.jpg', 1, '2024-01-14 16:24:43', NULL, 2);
INSERT INTO `t_rentout` VALUES (10, '123123', '18170085521', '辽宁省-营口市-盖州市', 1212.00, 4, 20, 2, '一室一厅', '我要申请', 42, 1, 'be5f4d27-2af9-44b0-a00c-144cab6f8d94.jpg', 1, '2024-01-14 16:32:17', NULL, 2);
INSERT INTO `t_rentout` VALUES (11, '徐小强', '18170085548', '黑龙江省-鹤岗市-工农区', 1200.00, 6, 12, 5, '二室一厅', '房屋环境很好，交通方便', 70, 1, '84bc7dcf-fc7d-4d5c-b264-a9919de3e3d8.jpg', 1, '2024-01-17 13:10:01', NULL, 3);
INSERT INTO `t_rentout` VALUES (12, '徐小强', '13755671032', '山西省-长治市-襄垣县', 1200.00, 3, 6, 1, '一室一厅', '房子地处市中心，交通方便', 23, 1, 'F4.jpg', 1, '2024-01-17 13:15:38', NULL, 3);
INSERT INTO `t_rentout` VALUES (13, '徐小强', '18170085548', '辽宁省-丹东市-振安区', 700.00, 6, 8, 3, '一室一厅', '很好的房子，可以看看', 32, 1, 'F3.jpg', 1, '2024-01-17 13:16:24', NULL, 3);
INSERT INTO `t_rentout` VALUES (14, '徐小强', '18170085548', '天津市-天津市-河西区', 2000.00, 12, 20, 1, '一室一厅', '来看看', 40, 1, 'F2.jpg', 1, '2024-01-17 13:19:12', NULL, 3);
INSERT INTO `t_rentout` VALUES (15, '123123', '13755601132', '江西省-南昌市-进贤县', 1200.00, 2, 3, 3, '三室一厅', '这个房子是泉领乡的，交通方便', 120, 1, 'F1.jpg', 1, '2024-01-19 22:31:29', NULL, 2);

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role`  (
  `role_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `role_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色名称',
  `role_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '说明信息',
  `role_status` int(2) NULL DEFAULT NULL COMMENT '使用状态1在用/0弃用',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES (1, '管理员', '管理系统的正常数据', 1);

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户密码',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户姓名',
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `sex` int(2) NULL DEFAULT NULL COMMENT '性别(0表示女，1表示男)',
  `age` int(3) NULL DEFAULT NULL COMMENT '用户年龄',
  `idcard` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户身份证',
  `hard_icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户头像',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户地址',
  `job` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工作',
  `is_owner` int(2) NULL DEFAULT NULL COMMENT '是否是房东，1表示是  0表示不是',
  `status` int(2) NULL DEFAULT NULL COMMENT '使用状态1在用/0弃用',
  `lastlogin` datetime(0) NULL DEFAULT NULL COMMENT '最近一次登录时间',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (1, '123456', 'e10adc3949ba59abbe56e057f20f883e', '撒大大', '18170085518', 1, 22, '360124198012226010', 'e0eecb7299d5499eabbabadbd1a4a374.jpg', '天津市-天津市-河北区-ggg', '律师', 1, 1, NULL, '2023-12-12 01:32:02');
INSERT INTO `t_user` VALUES (2, '123123qq', 'e10adc3949ba59abbe56e057f20f883e', '聂朋', '18170085518', 1, 23, '360124199712226011', 'e1dec699842d4a65b812571be6ad1948.jpg', '江西省-萍乡市-萍乡学院', '2', 1, 1, NULL, '2023-12-16 20:01:12');
INSERT INTO `t_user` VALUES (3, '1234562q', 'e10adc3949ba59abbe56e057f20f883e', '徐小强', '13755601032', 1, 31, '360124198013243010', NULL, '山西省-阳泉市-盂  县-132132', '请选择', 0, 1, NULL, '2023-12-16 20:56:01');
INSERT INTO `t_user` VALUES (4, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '管理员', '18170015548', 1, 22, '360124199712216611', '2a612148fb9f4f48bad7c8dfbc1b51f4.jpg', NULL, NULL, 1, 1, NULL, '2024-01-19 22:12:53');
INSERT INTO `t_user` VALUES (29, '122', 'e10adc3949ba59abbe56e057f20f883e', '王二小', '15279927950', 0, 22, NULL, NULL, NULL, NULL, 1, 0, NULL, '2023-12-18 17:34:21');
INSERT INTO `t_user` VALUES (31, '1322221111', 'e10adc3949ba59abbe56e057f20f883e', '张三丰', '15279927950', 0, 22, '360124198013243010', NULL, NULL, NULL, 0, 1, NULL, '2023-12-18 17:35:16');
INSERT INTO `t_user` VALUES (32, '12322222211', 'e10adc3949ba59abbe56e057f20f883e', '小王', '15279927950', 1, 21, NULL, NULL, NULL, NULL, 0, 1, NULL, '2023-12-18 17:44:45');
INSERT INTO `t_user` VALUES (33, '123132', 'e10adc3949ba59abbe56e057f20f883e', '小帅', '181700852222', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, '2023-12-18 23:56:33');
INSERT INTO `t_user` VALUES (34, '12312', 'e10adc3949ba59abbe56e057f20f883e', '帅帅', '12312', 1, 23, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL);

-- ----------------------------
-- Table structure for t_user_role
-- ----------------------------
DROP TABLE IF EXISTS `t_user_role`;
CREATE TABLE `t_user_role`  (
  `ur_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户ID',
  `role_id` int(11) NULL DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`ur_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户角色关系表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user_role
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
