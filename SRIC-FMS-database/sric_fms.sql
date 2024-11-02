/*
 Navicat Premium Data Transfer

 Source Server         : SRIC
 Source Server Type    : MySQL
 Source Server Version : 80036
 Source Host           : localhost:3306
 Source Schema         : sric_fms

 Target Server Type    : MySQL
 Target Server Version : 80036
 File Encoding         : 65001

 Date: 02/11/2024 23:37:00
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for category_library
-- ----------------------------
DROP TABLE IF EXISTS `category_library`;
CREATE TABLE `category_library`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT ' 类别名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '类别表\r\n 书库的类别' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for data_h_comic
-- ----------------------------
DROP TABLE IF EXISTS `data_h_comic`;
CREATE TABLE `data_h_comic`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '名称',
  `filename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '文件名称',
  `pages` int UNSIGNED NOT NULL COMMENT '总页数',
  `mosaic` int UNSIGNED NOT NULL COMMENT '修正（1：无修正，2：有修正，）',
  `category` int UNSIGNED NOT NULL COMMENT '类型（1：短篇，2：单本，）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 293 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '数据表\r\n 漫画的数据' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for data_h_comic_tags
-- ----------------------------
DROP TABLE IF EXISTS `data_h_comic_tags`;
CREATE TABLE `data_h_comic_tags`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'tag名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '数据表\r\n 漫画的标签数据' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for data_h_picture
-- ----------------------------
DROP TABLE IF EXISTS `data_h_picture`;
CREATE TABLE `data_h_picture`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `filename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'webp' COMMENT '文件名称(后缀)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1122 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '数据表\r\n 图片的数据' ROW_FORMAT = DYNAMIC;

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
  `category` int UNSIGNED NOT NULL COMMENT '类型（1：REAL，2：3D MMD，3：2D，）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 229 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '数据表\r\n 视频的数据' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for data_h_video_tags
-- ----------------------------
DROP TABLE IF EXISTS `data_h_video_tags`;
CREATE TABLE `data_h_video_tags`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'tag名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '数据表\r\n 视频的标签数据' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for data_library
-- ----------------------------
DROP TABLE IF EXISTS `data_library`;
CREATE TABLE `data_library`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '标题',
  `filename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文件名称',
  `category` int UNSIGNED NOT NULL COMMENT '类别（对应id）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '数据表\r\n 书库的数据' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for data_notes
-- ----------------------------
DROP TABLE IF EXISTS `data_notes`;
CREATE TABLE `data_notes`  (
  `uuid` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '主键',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '标题',
  `text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '内容',
  `user_uuid` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '创建用户uuid',
  `createtime` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`uuid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '数据表\r\n 笔记数据' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for data_user
-- ----------------------------
DROP TABLE IF EXISTS `data_user`;
CREATE TABLE `data_user`  (
  `uuid` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '主键',
  `UID` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '用户UID',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '密码',
  `mail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '邮箱',
  `createtime` datetime NOT NULL COMMENT '注册时间',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'NULL.webp' COMMENT '头像文件名称',
  `mark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'NULL MARK' COMMENT '个人签名',
  `status` int UNSIGNED NOT NULL DEFAULT 9 COMMENT '权限',
  PRIMARY KEY (`uuid`) USING BTREE,
  INDEX `uidkey`(`UID` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '数据表\r\n 用户数据' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for permission_main_menu
-- ----------------------------
DROP TABLE IF EXISTS `permission_main_menu`;
CREATE TABLE `permission_main_menu`  (
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT ' 名称',
  `level` int UNSIGNED NULL DEFAULT NULL COMMENT '权限等级',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`uuid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '权限表\r\n 对主菜单的权限控制' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for permission_request
-- ----------------------------
DROP TABLE IF EXISTS `permission_request`;
CREATE TABLE `permission_request`  (
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键',
  `request_mapping` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '请求uri模块',
  `level` int UNSIGNED NULL DEFAULT NULL COMMENT '权限等级',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`uuid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '权限表\r\n 对后端接口的权限控制' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for relation_h_comic_tag
-- ----------------------------
DROP TABLE IF EXISTS `relation_h_comic_tag`;
CREATE TABLE `relation_h_comic_tag`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `tagid` int UNSIGNED NOT NULL COMMENT '对应tag的id',
  `comicid` int UNSIGNED NOT NULL COMMENT '对应comic的id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '关系表\r\n 漫画与对应标签的关系' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for relation_h_video_tag
-- ----------------------------
DROP TABLE IF EXISTS `relation_h_video_tag`;
CREATE TABLE `relation_h_video_tag`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `tagid` int UNSIGNED NOT NULL COMMENT '对应tag的id',
  `videoid` int UNSIGNED NOT NULL COMMENT '对应视频的id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '关系表\r\n 视频与对应标签的关系' ROW_FORMAT = DYNAMIC;

SET FOREIGN_KEY_CHECKS = 1;
