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

 Date: 06/03/2024 01:25:33
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
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `data_h_video` VALUES (9, '91制片厂-朋友的妹妹', '9.mp4', '91CM-101', 1, 1);
INSERT INTO `data_h_video` VALUES (10, '91制片厂-七夕-潘甜甜', '10.mp4', '91CM-166', 1, 1);
INSERT INTO `data_h_video` VALUES (11, '91制片厂-手机的秘密-潘甜甜', '11.mp4', '91CM-182', 1, 1);
INSERT INTO `data_h_video` VALUES (12, '2048社区-白色眼罩', '12.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (13, 'エミリを可愛がってください 丘咲エミリ', '13.mp4', '022417-380-carib', 1, 1);
INSERT INTO `data_h_video` VALUES (14, 'Alexa Flaxy', '14.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (15, 'Gf Experience Pov Cowgirl & Creampie', '15.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (16, 'Hardcore Sex With 2b Thigh Shot', '16.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (17, 'Hardcore Sex In Kitchen & Facial', '17.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (18, '日本-小女仆', '18.mp4', 'FC2-PPV-1702264', 1, 1);
INSERT INTO `data_h_video` VALUES (19, 'Do-S Makes You Her Sex Slave Full POV', '19.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (20, '永野一夏-无码流出', '20.mp4', 'stars-145-C', 1, 1);

-- ----------------------------
-- Table structure for data_h_video_tag
-- ----------------------------
DROP TABLE IF EXISTS `data_h_video_tag`;
CREATE TABLE `data_h_video_tag`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `vid` int NOT NULL COMMENT '对应h_video的id',
  `tag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '对应tag内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 85 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `data_h_video_tag` VALUES (55, 9, 'NTR');
INSERT INTO `data_h_video_tag` VALUES (56, 9, '黑丝');
INSERT INTO `data_h_video_tag` VALUES (57, 9, '蕾丝');
INSERT INTO `data_h_video_tag` VALUES (58, 9, '奇怪体位');
INSERT INTO `data_h_video_tag` VALUES (59, 9, '杂技');
INSERT INTO `data_h_video_tag` VALUES (60, 9, '内射');
INSERT INTO `data_h_video_tag` VALUES (61, 9, '液体流出');
INSERT INTO `data_h_video_tag` VALUES (62, 9, '剧情');
INSERT INTO `data_h_video_tag` VALUES (63, 10, '91');
INSERT INTO `data_h_video_tag` VALUES (64, 10, '暗黑王冰冰');
INSERT INTO `data_h_video_tag` VALUES (65, 10, '古装');
INSERT INTO `data_h_video_tag` VALUES (66, 10, 'NTR');
INSERT INTO `data_h_video_tag` VALUES (67, 10, '口交');
INSERT INTO `data_h_video_tag` VALUES (68, 10, '69');
INSERT INTO `data_h_video_tag` VALUES (69, 10, '剧情');
INSERT INTO `data_h_video_tag` VALUES (70, 10, '上位');
INSERT INTO `data_h_video_tag` VALUES (71, 11, '91');
INSERT INTO `data_h_video_tag` VALUES (72, 11, '暗黑王冰冰');
INSERT INTO `data_h_video_tag` VALUES (73, 11, 'NTR');
INSERT INTO `data_h_video_tag` VALUES (74, 11, '黑丝');
INSERT INTO `data_h_video_tag` VALUES (75, 11, '蕾丝');
INSERT INTO `data_h_video_tag` VALUES (76, 11, '情趣内衣');
INSERT INTO `data_h_video_tag` VALUES (77, 12, '眼罩');
INSERT INTO `data_h_video_tag` VALUES (78, 12, '口交');
INSERT INTO `data_h_video_tag` VALUES (79, 12, '上位');
INSERT INTO `data_h_video_tag` VALUES (80, 12, '白虎');
INSERT INTO `data_h_video_tag` VALUES (81, 12, '白丝');
INSERT INTO `data_h_video_tag` VALUES (82, 12, '蕾丝');
INSERT INTO `data_h_video_tag` VALUES (83, 12, '吊带袜');
INSERT INTO `data_h_video_tag` VALUES (84, 12, '巨乳');
INSERT INTO `data_h_video_tag` VALUES (85, 13, '手铐');
INSERT INTO `data_h_video_tag` VALUES (86, 13, '上位');
INSERT INTO `data_h_video_tag` VALUES (87, 13, 'AV棒');
INSERT INTO `data_h_video_tag` VALUES (88, 13, '口交');
INSERT INTO `data_h_video_tag` VALUES (89, 13, '内射');
INSERT INTO `data_h_video_tag` VALUES (90, 13, '69');
INSERT INTO `data_h_video_tag` VALUES (91, 14, '黑丝');
INSERT INTO `data_h_video_tag` VALUES (92, 14, '3P');
INSERT INTO `data_h_video_tag` VALUES (93, 14, '疯狂');
INSERT INTO `data_h_video_tag` VALUES (94, 14, '两洞同时插入');
INSERT INTO `data_h_video_tag` VALUES (95, 14, '口交');
INSERT INTO `data_h_video_tag` VALUES (96, 14, '肛交');
INSERT INTO `data_h_video_tag` VALUES (97, 14, '一字马');
INSERT INTO `data_h_video_tag` VALUES (98, 15, '蕾丝');
INSERT INTO `data_h_video_tag` VALUES (99, 15, '内衣');
INSERT INTO `data_h_video_tag` VALUES (100, 15, '黑丝渔网');
INSERT INTO `data_h_video_tag` VALUES (101, 15, '面具');
INSERT INTO `data_h_video_tag` VALUES (102, 15, '口交');
INSERT INTO `data_h_video_tag` VALUES (103, 15, '巨乳');
INSERT INTO `data_h_video_tag` VALUES (104, 15, '上位');
INSERT INTO `data_h_video_tag` VALUES (105, 15, '脐钉');
INSERT INTO `data_h_video_tag` VALUES (106, 15, '中出');
INSERT INTO `data_h_video_tag` VALUES (107, 16, 'cos');
INSERT INTO `data_h_video_tag` VALUES (108, 16, '2B');
INSERT INTO `data_h_video_tag` VALUES (109, 16, 'AV棒');
INSERT INTO `data_h_video_tag` VALUES (110, 16, '巨乳');
INSERT INTO `data_h_video_tag` VALUES (111, 16, '口交');
INSERT INTO `data_h_video_tag` VALUES (112, 16, '后入');
INSERT INTO `data_h_video_tag` VALUES (113, 16, '黑丝');
INSERT INTO `data_h_video_tag` VALUES (114, 16, '上位');
INSERT INTO `data_h_video_tag` VALUES (115, 16, '高跟鞋');
INSERT INTO `data_h_video_tag` VALUES (116, 17, '巨乳');
INSERT INTO `data_h_video_tag` VALUES (117, 17, '面具');
INSERT INTO `data_h_video_tag` VALUES (118, 17, '口交');
INSERT INTO `data_h_video_tag` VALUES (119, 17, '站立');
INSERT INTO `data_h_video_tag` VALUES (120, 17, '后入');
INSERT INTO `data_h_video_tag` VALUES (121, 17, '纹身');
INSERT INTO `data_h_video_tag` VALUES (122, 17, '灶台');
INSERT INTO `data_h_video_tag` VALUES (123, 17, '脐钉');
INSERT INTO `data_h_video_tag` VALUES (124, 18, '女仆装');
INSERT INTO `data_h_video_tag` VALUES (125, 18, '性玩具');
INSERT INTO `data_h_video_tag` VALUES (126, 18, 'AV棒');
INSERT INTO `data_h_video_tag` VALUES (127, 18, '洗澡');
INSERT INTO `data_h_video_tag` VALUES (128, 18, '上位');
INSERT INTO `data_h_video_tag` VALUES (129, 18, '后入');
INSERT INTO `data_h_video_tag` VALUES (130, 18, '口交');
INSERT INTO `data_h_video_tag` VALUES (131, 19, '皮鞭');
INSERT INTO `data_h_video_tag` VALUES (132, 19, '胶皮带');
INSERT INTO `data_h_video_tag` VALUES (133, 19, '胶口罩');
INSERT INTO `data_h_video_tag` VALUES (134, 19, '胶袜');
INSERT INTO `data_h_video_tag` VALUES (135, 19, '巨乳');
INSERT INTO `data_h_video_tag` VALUES (136, 19, '上位');
INSERT INTO `data_h_video_tag` VALUES (137, 19, '白毛');
INSERT INTO `data_h_video_tag` VALUES (138, 20, '娃娃脸');
INSERT INTO `data_h_video_tag` VALUES (139, 20, '黏糊糊');
INSERT INTO `data_h_video_tag` VALUES (140, 20, 'JK');
INSERT INTO `data_h_video_tag` VALUES (141, 20, '贫乳');
INSERT INTO `data_h_video_tag` VALUES (142, 20, '口交');
INSERT INTO `data_h_video_tag` VALUES (143, 20, 'AV棒');
INSERT INTO `data_h_video_tag` VALUES (144, 20, '3P');
INSERT INTO `data_h_video_tag` VALUES (145, 20, '潮吹');
INSERT INTO `data_h_video_tag` VALUES (146, 20, '多体位');

SET FOREIGN_KEY_CHECKS = 1;
