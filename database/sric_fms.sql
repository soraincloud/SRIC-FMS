/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80035
 Source Host           : localhost:3306
 Source Schema         : sric_fms

 Target Server Type    : MySQL
 Target Server Version : 80035
 File Encoding         : 65001

 Date: 03/03/2024 23:16:22
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for data_h_video
-- ----------------------------
DROP TABLE IF EXISTS `data_h_video`;
CREATE TABLE `data_h_video`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '名称',
  `filename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '文件名称',
  `number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '番号',
  `mosaic` int UNSIGNED NOT NULL COMMENT '修正（1：无修正，2：有修正，）',
  `category` int NOT NULL COMMENT '类型（1：REAL，2：3D MMD，3：2D，）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of data_h_video
-- ----------------------------
INSERT INTO `data_h_video` VALUES (1, 'pornhub@meeHuTao', '1.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (2, '浆果儿-SM-1', '2.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (3, '浆果儿-SM-2', '3.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (4, '一本道DRP', '4.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (5, 'KARBO-LAB', '5.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (6, '内个-1', '6.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (7, '内个-2', '7.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (8, '内个-3', '8.mp4', '', 1, 1);

-- ----------------------------
-- Table structure for data_h_video_tag
-- ----------------------------
DROP TABLE IF EXISTS `data_h_video_tag`;
CREATE TABLE `data_h_video_tag`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `vid` int NOT NULL COMMENT '对应h_video的id',
  `tag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '对应tag内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of data_h_video_tag
-- ----------------------------
INSERT INTO `data_h_video_tag` VALUES (1, 1, ' 自慰');
INSERT INTO `data_h_video_tag` VALUES (2, 1, '白虎');
INSERT INTO `data_h_video_tag` VALUES (3, 1, '炮机');
INSERT INTO `data_h_video_tag` VALUES (4, 1, '白丝');
INSERT INTO `data_h_video_tag` VALUES (5, 1, '过膝袜');
INSERT INTO `data_h_video_tag` VALUES (6, 1, 'JK');
INSERT INTO `data_h_video_tag` VALUES (7, 2, '白丝');
INSERT INTO `data_h_video_tag` VALUES (8, 2, '过膝袜');
INSERT INTO `data_h_video_tag` VALUES (9, 2, 'SM');
INSERT INTO `data_h_video_tag` VALUES (10, 2, '窒息');
INSERT INTO `data_h_video_tag` VALUES (11, 2, '捆绑');
INSERT INTO `data_h_video_tag` VALUES (12, 2, 'JK');
INSERT INTO `data_h_video_tag` VALUES (13, 2, 'AV棒');
INSERT INTO `data_h_video_tag` VALUES (14, 3, 'JK');
INSERT INTO `data_h_video_tag` VALUES (15, 3, '黑丝');
INSERT INTO `data_h_video_tag` VALUES (16, 3, '过膝袜');
INSERT INTO `data_h_video_tag` VALUES (17, 3, '捆绑');
INSERT INTO `data_h_video_tag` VALUES (18, 3, 'SM');
INSERT INTO `data_h_video_tag` VALUES (19, 3, '窒息');
INSERT INTO `data_h_video_tag` VALUES (20, 3, '悬吊');
INSERT INTO `data_h_video_tag` VALUES (21, 3, '电动玩具');
INSERT INTO `data_h_video_tag` VALUES (22, 3, 'AV棒');
INSERT INTO `data_h_video_tag` VALUES (23, 4, '日本');
INSERT INTO `data_h_video_tag` VALUES (24, 4, '口交');
INSERT INTO `data_h_video_tag` VALUES (25, 4, '喷水');
INSERT INTO `data_h_video_tag` VALUES (26, 4, '震动棒');
INSERT INTO `data_h_video_tag` VALUES (27, 4, 'AV棒');
INSERT INTO `data_h_video_tag` VALUES (28, 4, '多体位');
INSERT INTO `data_h_video_tag` VALUES (29, 4, '外射');
INSERT INTO `data_h_video_tag` VALUES (30, 5, '女同');
INSERT INTO `data_h_video_tag` VALUES (31, 5, '双头龙');
INSERT INTO `data_h_video_tag` VALUES (32, 5, '高透黑丝');
INSERT INTO `data_h_video_tag` VALUES (33, 5, '撕开丝袜');
INSERT INTO `data_h_video_tag` VALUES (34, 5, '欧美');
INSERT INTO `data_h_video_tag` VALUES (35, 5, '短裙');
INSERT INTO `data_h_video_tag` VALUES (36, 5, '皮鞋');
INSERT INTO `data_h_video_tag` VALUES (37, 5, '磨豆腐');
INSERT INTO `data_h_video_tag` VALUES (38, 6, '黑人');
INSERT INTO `data_h_video_tag` VALUES (39, 6, '3P');
INSERT INTO `data_h_video_tag` VALUES (40, 6, '粉P');
INSERT INTO `data_h_video_tag` VALUES (41, 6, '肛交');
INSERT INTO `data_h_video_tag` VALUES (42, 6, '巨根');
INSERT INTO `data_h_video_tag` VALUES (43, 6, '口交');
INSERT INTO `data_h_video_tag` VALUES (44, 6, '前后');
INSERT INTO `data_h_video_tag` VALUES (45, 7, '黑人');
INSERT INTO `data_h_video_tag` VALUES (46, 7, '巨根');
INSERT INTO `data_h_video_tag` VALUES (47, 7, '3P');
INSERT INTO `data_h_video_tag` VALUES (48, 7, '前后');
INSERT INTO `data_h_video_tag` VALUES (49, 7, '口交');
INSERT INTO `data_h_video_tag` VALUES (50, 8, '黑人');
INSERT INTO `data_h_video_tag` VALUES (51, 8, '巨根');
INSERT INTO `data_h_video_tag` VALUES (52, 8, '口交');
INSERT INTO `data_h_video_tag` VALUES (53, 8, '上位');
INSERT INTO `data_h_video_tag` VALUES (54, 8, '打桩');

SET FOREIGN_KEY_CHECKS = 1;
