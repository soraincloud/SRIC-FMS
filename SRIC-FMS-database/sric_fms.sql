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

 Date: 20/11/2024 22:24:02
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

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
) ENGINE = InnoDB AUTO_INCREMENT = 328 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '数据表\r\n 漫画的数据' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of data_h_comic
-- ----------------------------
INSERT INTO `data_h_comic` VALUES (1, '天天拘束箱', '1', 18, 1, 1);
INSERT INTO `data_h_comic` VALUES (2, '魔法触手CG', '2', 11, 2, 1);
INSERT INTO `data_h_comic` VALUES (3, '被我的魅魔三姐妹榨得一干二净', '3', 87, 1, 1);
INSERT INTO `data_h_comic` VALUES (4, '转生成为香香软软的小萝莉', '4', 53, 1, 1);
INSERT INTO `data_h_comic` VALUES (5, '锦木千束 讯问笔录', '5', 20, 1, 1);
INSERT INTO `data_h_comic` VALUES (6, '雌性小鬼莉娜酱vol.1', '6', 51, 1, 1);
INSERT INTO `data_h_comic` VALUES (7, '堕天计划2', '7', 47, 1, 1);
INSERT INTO `data_h_comic` VALUES (8, '愉快地和来访的辣妹尽情爱爱', '8', 50, 1, 1);
INSERT INTO `data_h_comic` VALUES (9, '男娘的全裸瑜伽教室', '9', 19, 1, 1);
INSERT INTO `data_h_comic` VALUES (10, '东方触手水着', '10', 65, 1, 1);
INSERT INTO `data_h_comic` VALUES (11, '大叔性转幼女TS全记录', '11', 59, 1, 1);
INSERT INTO `data_h_comic` VALUES (12, '图书馆愿望清单', '12', 31, 1, 1);
INSERT INTO `data_h_comic` VALUES (13, '超人VERSUS', '13', 47, 1, 1);
INSERT INTO `data_h_comic` VALUES (14, '异能者少女欠损合同', '14', 27, 1, 1);
INSERT INTO `data_h_comic` VALUES (15, '小小的新娘', '15', 28, 1, 1);
INSERT INTO `data_h_comic` VALUES (16, '决不让你离开我', '16', 18, 1, 1);
INSERT INTO `data_h_comic` VALUES (17, '绝命狼师', '17', 21, 1, 1);
INSERT INTO `data_h_comic` VALUES (18, '性教育系列总集篇1', '18', 155, 1, 2);
INSERT INTO `data_h_comic` VALUES (19, '想要和你变大人', '19', 179, 1, 2);
INSERT INTO `data_h_comic` VALUES (20, '与人外娘完成契约!', '20', 168, 1, 2);
INSERT INTO `data_h_comic` VALUES (21, 'EYEING THE HOT ELF IN ANOTHER WORLD', '21', 242, 1, 2);
INSERT INTO `data_h_comic` VALUES (22, 'APP作用中', '22', 17, 1, 1);
INSERT INTO `data_h_comic` VALUES (23, 'ATK-DOJIN', '23', 25, 1, 1);
INSERT INTO `data_h_comic` VALUES (24, 'OBSCENE-ACADEMY', '24', 37, 1, 1);
INSERT INTO `data_h_comic` VALUES (25, 'drop out cat girl', '25', 19, 1, 1);
INSERT INTO `data_h_comic` VALUES (26, 'Splasb Girl in Your Wet Dream', '26', 193, 1, 2);
INSERT INTO `data_h_comic` VALUES (27, 'I Got Stood Up,So', '27', 20, 1, 1);
INSERT INTO `data_h_comic` VALUES (28, 'import emotion！', '28', 23, 1, 1);
INSERT INTO `data_h_comic` VALUES (29, 'interlude play', '29', 17, 1, 1);
INSERT INTO `data_h_comic` VALUES (30, '心跳加速 女仆亲吻', '30', 31, 1, 1);
INSERT INTO `data_h_comic` VALUES (31, 'LOVE IT ONE', '31', 27, 1, 1);
INSERT INTO `data_h_comic` VALUES (32, '全部都是你的错EXTRA', '32', 223, 1, 2);
INSERT INTO `data_h_comic` VALUES (33, '在SNS遇到的辣妹居然是我妹', '33', 39, 1, 1);
INSERT INTO `data_h_comic` VALUES (34, 'JC监禁 性教育', '34', 35, 1, 1);
INSERT INTO `data_h_comic` VALUES (35, 'JC挑衅性教育', '35', 47, 1, 1);
INSERT INTO `data_h_comic` VALUES (36, '播种欧吉桑的JC洗脑APP', '36', 43, 1, 1);
INSERT INTO `data_h_comic` VALUES (37, '播种欧吉桑的JK生小孩SEX', '37', 26, 1, 1);
INSERT INTO `data_h_comic` VALUES (38, 'linked mirror', '38', 28, 1, 1);
INSERT INTO `data_h_comic` VALUES (39, 'MUTOU MATO', '39', 197, 1, 2);
INSERT INTO `data_h_comic` VALUES (40, 'Captured Princess', '40', 33, 1, 1);
INSERT INTO `data_h_comic` VALUES (41, 'Re:Drive 4', '41', 19, 1, 1);
INSERT INTO `data_h_comic` VALUES (42, 'Reco羞耻与兴奋摇于车内', '42', 23, 1, 1);
INSERT INTO `data_h_comic` VALUES (43, 'saber 泳装直播', '43', 27, 1, 1);
INSERT INTO `data_h_comic` VALUES (44, 'SSSDI', '44', 55, 1, 1);
INSERT INTO `data_h_comic` VALUES (45, 'Theresa’Apocalypse', '45', 17, 1, 1);
INSERT INTO `data_h_comic` VALUES (46, 'Tiny Evil 2', '46', 32, 1, 1);
INSERT INTO `data_h_comic` VALUES (47, 'UMA诱拐', '47', 17, 1, 1);
INSERT INTO `data_h_comic` VALUES (48, 'UniformSister2', '48', 18, 1, 1);
INSERT INTO `data_h_comic` VALUES (49, 'URAHARA Bind', '49', 26, 1, 1);
INSERT INTO `data_h_comic` VALUES (50, '阿能的入职体检', '50', 24, 1, 1);
INSERT INTO `data_h_comic` VALUES (51, '爱的人造人', '51', 16, 1, 1);
INSERT INTO `data_h_comic` VALUES (52, '爱如液流不止 新片段！', '52', 189, 1, 2);
INSERT INTO `data_h_comic` VALUES (53, '芭芭拉star！dush！', '53', 22, 1, 1);
INSERT INTO `data_h_comic` VALUES (54, '把jk的眼角舔到褪色', '54', 17, 1, 1);
INSERT INTO `data_h_comic` VALUES (55, '背德的味道 甘甜又苦涩', '55', 22, 1, 1);
INSERT INTO `data_h_comic` VALUES (56, '笨蛋兄妹', '56', 31, 1, 1);
INSERT INTO `data_h_comic` VALUES (57, '笨蛋兄妹2', '57', 18, 1, 1);
INSERT INTO `data_h_comic` VALUES (58, '强制失神绝顶 彼女缚', '58', 21, 1, 1);
INSERT INTO `data_h_comic` VALUES (59, '不存在的声音', '59', 25, 1, 1);
INSERT INTO `data_h_comic` VALUES (60, '不请自来狐嫁太阳雨', '60', 201, 1, 2);
INSERT INTO `data_h_comic` VALUES (61, '厕所萝莉', '61', 21, 1, 1);
INSERT INTO `data_h_comic` VALUES (62, '常识改变活动记录', '62', 153, 1, 2);
INSERT INTO `data_h_comic` VALUES (63, 'GAL再快感露出FUCK', '63', 42, 1, 1);
INSERT INTO `data_h_comic` VALUES (64, '超大阴蒂', '64', 22, 1, 1);
INSERT INTO `data_h_comic` VALUES (65, '超失败援助交际', '65', 19, 1, 1);
INSERT INTO `data_h_comic` VALUES (66, '橙色日光', '66', 19, 1, 1);
INSERT INTO `data_h_comic` VALUES (67, '初恋 森万平', '67', 45, 1, 1);
INSERT INTO `data_h_comic` VALUES (68, '除了二次元 其他我爱不了', '68', 20, 1, 1);
INSERT INTO `data_h_comic` VALUES (69, 'Istand Festival', '69', 14, 1, 1);
INSERT INTO `data_h_comic` VALUES (70, '穿越变成幼女', '70', 258, 1, 2);
INSERT INTO `data_h_comic` VALUES (71, '船长的挑战公开直播', '71', 25, 1, 1);
INSERT INTO `data_h_comic` VALUES (72, '船长的幼女生活的说', '72', 25, 1, 1);
INSERT INTO `data_h_comic` VALUES (73, '船长尼莫与中出大乱交', '73', 48, 1, 1);
INSERT INTO `data_h_comic` VALUES (74, '床上的小猫', '74', 20, 1, 1);
INSERT INTO `data_h_comic` VALUES (75, '催眠术太厉害啦', '75', 49, 1, 1);
INSERT INTO `data_h_comic` VALUES (76, '催眠新闻', '76', 26, 1, 1);
INSERT INTO `data_h_comic` VALUES (77, '打架谁怕谁 真刀真枪4P', '77', 21, 1, 1);
INSERT INTO `data_h_comic` VALUES (78, '大切部下', '78', 20, 1, 1);
INSERT INTO `data_h_comic` VALUES (79, '德克萨斯的发情期', '79', 33, 1, 1);
INSERT INTO `data_h_comic` VALUES (80, '德克萨斯感官共享', '80', 40, 1, 1);
INSERT INTO `data_h_comic` VALUES (81, '地雷系女子', '81', 38, 1, 1);
INSERT INTO `data_h_comic` VALUES (82, '调教开发无知的魅魔', '82', 31, 1, 1);
INSERT INTO `data_h_comic` VALUES (83, '毒品性爱', '83', 15, 1, 1);
INSERT INTO `data_h_comic` VALUES (84, '独角兽', '84', 16, 1, 1);
INSERT INTO `data_h_comic` VALUES (85, '堕天计划1', '85', 44, 1, 1);
INSERT INTO `data_h_comic` VALUES (86, '二怀妊', '86', 193, 1, 2);
INSERT INTO `data_h_comic` VALUES (87, '二手飞机杯', '87', 19, 1, 1);
INSERT INTO `data_h_comic` VALUES (88, '发情？加油啊芭芭拉酱', '88', 27, 1, 1);
INSERT INTO `data_h_comic` VALUES (89, '反正都是杂鱼肉棒对吧', '89', 23, 1, 1);
INSERT INTO `data_h_comic` VALUES (90, '枫与铃', '90', 159, 1, 2);
INSERT INTO `data_h_comic` VALUES (91, '甘甜母乳', '91', 35, 1, 1);
INSERT INTO `data_h_comic` VALUES (92, '高木同学 ntr', '92', 17, 1, 1);
INSERT INTO `data_h_comic` VALUES (93, '哥哥的乖孩子', '93', 32, 1, 1);
INSERT INTO `data_h_comic` VALUES (94, '生病的哥哥', '94', 25, 1, 1);
INSERT INTO `data_h_comic` VALUES (95, 'cos与play', '95', 18, 1, 1);
INSERT INTO `data_h_comic` VALUES (96, '根星野学姐懒洋洋的打炮', '96', 11, 1, 1);
INSERT INTO `data_h_comic` VALUES (97, '关于可可萝酱被我完全催眠这件事', '97', 21, 1, 1);
INSERT INTO `data_h_comic` VALUES (98, '鬼族的女孩子们想和人类的雄性一起生孩子', '98', 150, 1, 2);
INSERT INTO `data_h_comic` VALUES (99, '好色女子秘密求爱记录', '99', 199, 1, 2);
INSERT INTO `data_h_comic` VALUES (100, '好像见一下学姐的裸体', '100', 18, 1, 1);
INSERT INTO `data_h_comic` VALUES (101, '和SR-3MP一起休息', '101', 24, 1, 1);
INSERT INTO `data_h_comic` VALUES (102, '和妹妹一起看AV 1', '102', 45, 1, 1);
INSERT INTO `data_h_comic` VALUES (103, '虹色香水', '103', 185, 1, 2);
INSERT INTO `data_h_comic` VALUES (104, '后辈男子寝取', '104', 26, 1, 1);
INSERT INTO `data_h_comic` VALUES (105, '辉夜姬的姻缘结合', '105', 31, 1, 1);
INSERT INTO `data_h_comic` VALUES (106, '即堕', '106', 193, 1, 2);
INSERT INTO `data_h_comic` VALUES (107, '急不可耐 发情的兔兔妻', '107', 22, 1, 1);
INSERT INTO `data_h_comic` VALUES (108, '家里的魔法使前辈', '108', 53, 1, 1);
INSERT INTO `data_h_comic` VALUES (109, '交想诱夜 人气百合', '109', 24, 1, 1);
INSERT INTO `data_h_comic` VALUES (110, '结婚舰淫乱录 4', '110', 27, 1, 1);
INSERT INTO `data_h_comic` VALUES (111, '今天开始当个坏孩子', '111', 59, 1, 1);
INSERT INTO `data_h_comic` VALUES (112, '今天开始当个坏孩子 续集', '112', 71, 1, 1);
INSERT INTO `data_h_comic` VALUES (113, '精液本复快感', '113', 287, 1, 2);
INSERT INTO `data_h_comic` VALUES (114, '就用身体来支付', '114', 26, 1, 1);
INSERT INTO `data_h_comic` VALUES (115, '居家酩酊天使', '115', 22, 1, 1);
INSERT INTO `data_h_comic` VALUES (116, '开幕战', '116', 40, 1, 1);
INSERT INTO `data_h_comic` VALUES (117, '可爱都和良', '117', 20, 1, 1);
INSERT INTO `data_h_comic` VALUES (118, '可可萝日常性活', '118', 34, 1, 1);
INSERT INTO `data_h_comic` VALUES (119, '辣妹服装', '119', 53, 1, 1);
INSERT INTO `data_h_comic` VALUES (120, '狼与香辛料full color', '120', 24, 1, 1);
INSERT INTO `data_h_comic` VALUES (121, '老师的指导', '121', 17, 1, 1);
INSERT INTO `data_h_comic` VALUES (122, '冷酷学姐1', '122', 24, 1, 1);
INSERT INTO `data_h_comic` VALUES (123, '冷酷学姐2', '123', 24, 1, 1);
INSERT INTO `data_h_comic` VALUES (124, '恋少女珍道中', '124', 85, 1, 1);
INSERT INTO `data_h_comic` VALUES (125, '邻居是有名的直播主', '125', 33, 1, 1);
INSERT INTO `data_h_comic` VALUES (126, '玲木狂太郎', '126', 207, 1, 2);
INSERT INTO `data_h_comic` VALUES (127, '凌辱二穴责调教', '127', 24, 1, 1);
INSERT INTO `data_h_comic` VALUES (128, '笼络令媛', '128', 65, 1, 1);
INSERT INTO `data_h_comic` VALUES (129, '萝莉大好', '129', 259, 1, 2);
INSERT INTO `data_h_comic` VALUES (130, '马修初体验', '130', 26, 1, 1);
INSERT INTO `data_h_comic` VALUES (131, '没落贵族1', '131', 25, 1, 1);
INSERT INTO `data_h_comic` VALUES (132, '没落贵族2', '132', 27, 1, 1);
INSERT INTO `data_h_comic` VALUES (133, '没落贵族3', '133', 26, 1, 1);
INSERT INTO `data_h_comic` VALUES (134, '没有厕所1', '134', 34, 1, 1);
INSERT INTO `data_h_comic` VALUES (135, '没有厕所2', '135', 44, 1, 1);
INSERT INTO `data_h_comic` VALUES (136, '没有用的人', '136', 212, 1, 2);
INSERT INTO `data_h_comic` VALUES (137, '妹困', '137', 20, 1, 1);
INSERT INTO `data_h_comic` VALUES (138, '妹漫画现实霸王', '138', 25, 1, 1);
INSERT INTO `data_h_comic` VALUES (139, '妹妹TRIP', '139', 183, 1, 2);
INSERT INTO `data_h_comic` VALUES (140, '妹妹到了难懂的年纪', '140', 28, 1, 1);
INSERT INTO `data_h_comic` VALUES (141, '媚药偏爱', '141', 18, 1, 1);
INSERT INTO `data_h_comic` VALUES (142, '魅魔女王VS杂鱼哥布林', '142', 51, 1, 1);
INSERT INTO `data_h_comic` VALUES (143, '蒙德温泉节', '143', 23, 1, 1);
INSERT INTO `data_h_comic` VALUES (144, '蜜月', '144', 230, 1, 2);
INSERT INTO `data_h_comic` VALUES (145, '喵喵甜蜜的诱惑', '145', 27, 1, 1);
INSERT INTO `data_h_comic` VALUES (146, '明石', '146', 21, 1, 1);
INSERT INTO `data_h_comic` VALUES (147, '魔法少女 变小', '147', 27, 1, 1);
INSERT INTO `data_h_comic` VALUES (148, '墨染', '148', 36, 1, 1);
INSERT INTO `data_h_comic` VALUES (149, 'mirror image', '149', 31, 1, 1);
INSERT INTO `data_h_comic` VALUES (150, '能天使与源石虫', '150', 14, 1, 1);
INSERT INTO `data_h_comic` VALUES (151, '妮绽放', '151', 25, 1, 1);
INSERT INTO `data_h_comic` VALUES (152, '尼娅的愈本', '152', 20, 1, 1);
INSERT INTO `data_h_comic` VALUES (153, '你今晚的春梦', '153', 37, 1, 1);
INSERT INTO `data_h_comic` VALUES (154, '农场', '154', 30, 1, 1);
INSERT INTO `data_h_comic` VALUES (155, '女孩子越可爱 内心就越淫乱', '155', 73, 1, 1);
INSERT INTO `data_h_comic` VALUES (156, '皮针', '156', 24, 1, 1);
INSERT INTO `data_h_comic` VALUES (157, '噗咻噗咻潮水四溅', '157', 209, 1, 1);
INSERT INTO `data_h_comic` VALUES (158, '企鹅物流 淫趴', '158', 20, 1, 1);
INSERT INTO `data_h_comic` VALUES (159, '前辈接下来要做什么呢', '159', 26, 1, 1);
INSERT INTO `data_h_comic` VALUES (160, '悄悄地轻轻地妹妹的', '160', 11, 1, 1);
INSERT INTO `data_h_comic` VALUES (161, '轻音部学妹', '161', 25, 1, 1);
INSERT INTO `data_h_comic` VALUES (162, '情爱指导调教', '162', 163, 1, 2);
INSERT INTO `data_h_comic` VALUES (163, '全部都是你的错', '163', 41, 1, 1);
INSERT INTO `data_h_comic` VALUES (164, '全身会长', '164', 21, 1, 1);
INSERT INTO `data_h_comic` VALUES (165, '让这孩子怀孕也没问题吗', '165', 59, 1, 1);
INSERT INTO `data_h_comic` VALUES (166, '肉棒魔罗', '166', 173, 1, 2);
INSERT INTO `data_h_comic` VALUES (167, '如何使用娃娃 9A 91', '167', 31, 1, 1);
INSERT INTO `data_h_comic` VALUES (168, '如何使用娃娃 内格夫', '168', 13, 1, 1);
INSERT INTO `data_h_comic` VALUES (169, '三角关系', '169', 90, 1, 1);
INSERT INTO `data_h_comic` VALUES (170, '三年内炸毁母校十七次的传奇 能天使', '170', 18, 1, 1);
INSERT INTO `data_h_comic` VALUES (171, '色即欲', '171', 27, 1, 1);
INSERT INTO `data_h_comic` VALUES (172, '沙滩大姐姐', '172', 9, 1, 1);
INSERT INTO `data_h_comic` VALUES (173, '少女前线 cos45姐', '173', 17, 1, 1);
INSERT INTO `data_h_comic` VALUES (174, '射击训练', '174', 14, 1, 1);
INSERT INTO `data_h_comic` VALUES (175, '深夜时分的侵略者', '175', 38, 1, 1);
INSERT INTO `data_h_comic` VALUES (176, '慎重勇者 秘密特训', '176', 25, 1, 1);
INSERT INTO `data_h_comic` VALUES (177, '绳丸', '177', 30, 1, 1);
INSERT INTO `data_h_comic` VALUES (178, '圣特蕾莎学院的好炮友社', '178', 18, 1, 1);
INSERT INTO `data_h_comic` VALUES (179, '失恋生徒会', '179', 42, 1, 1);
INSERT INTO `data_h_comic` VALUES (180, '诗乃', '180', 28, 1, 1);
INSERT INTO `data_h_comic` VALUES (181, '数学', '181', 48, 1, 1);
INSERT INTO `data_h_comic` VALUES (182, '睡着的小文西', '182', 41, 1, 1);
INSERT INTO `data_h_comic` VALUES (183, '索米爱的使命', '183', 30, 1, 1);
INSERT INTO `data_h_comic` VALUES (184, '她，依旧在壳之中', '184', 34, 1, 1);
INSERT INTO `data_h_comic` VALUES (185, '桃华之恋', '185', 25, 1, 1);
INSERT INTO `data_h_comic` VALUES (186, '桃子碳', '186', 17, 1, 1);
INSERT INTO `data_h_comic` VALUES (187, '田舍娱乐', '187', 139, 1, 2);
INSERT INTO `data_h_comic` VALUES (188, '兔女郎发情中', '188', 175, 1, 2);
INSERT INTO `data_h_comic` VALUES (189, '兔女郎特别服务', '189', 17, 1, 1);
INSERT INTO `data_h_comic` VALUES (190, '兔女郎直播', '190', 8, 1, 1);
INSERT INTO `data_h_comic` VALUES (191, '鸵鸟 妮娜', '191', 16, 1, 1);
INSERT INTO `data_h_comic` VALUES (192, '玩具少女在无限高潮中哭泣', '192', 107, 1, 2);
INSERT INTO `data_h_comic` VALUES (193, '妄想', '193', 28, 1, 1);
INSERT INTO `data_h_comic` VALUES (194, '妄想彼女', '194', 203, 1, 2);
INSERT INTO `data_h_comic` VALUES (195, '为什么医生你!?', '195', 35, 1, 1);
INSERT INTO `data_h_comic` VALUES (196, '喂我吃吧老师', '196', 34, 1, 1);
INSERT INTO `data_h_comic` VALUES (197, '我的妹妹说要成为叔叔的新娘', '197', 32, 1, 1);
INSERT INTO `data_h_comic` VALUES (198, '我的秘密老师的秘密', '198', 225, 1, 2);
INSERT INTO `data_h_comic` VALUES (199, '我跟你说喔 抓到镜华了', '199', 22, 1, 1);
INSERT INTO `data_h_comic` VALUES (200, '无家可归的兔子与雨与我', '200', 23, 1, 1);
INSERT INTO `data_h_comic` VALUES (201, '无口彼女', '201', 24, 1, 1);
INSERT INTO `data_h_comic` VALUES (202, '无人机重口', '202', 50, 1, 1);
INSERT INTO `data_h_comic` VALUES (203, '下级魔术师淫纹染', '203', 57, 1, 1);
INSERT INTO `data_h_comic` VALUES (204, '夏 旅馆 借金取', '204', 20, 1, 1);
INSERT INTO `data_h_comic` VALUES (205, '小孩子气的华凛', '205', 24, 1, 1);
INSERT INTO `data_h_comic` VALUES (206, '小猫 不断流淌着的幸福', '206', 18, 1, 1);
INSERT INTO `data_h_comic` VALUES (207, '小天使2', '207', 27, 1, 1);
INSERT INTO `data_h_comic` VALUES (208, '小小甜心1', '208', 15, 1, 1);
INSERT INTO `data_h_comic` VALUES (209, '小小甜心2', '209', 34, 1, 1);
INSERT INTO `data_h_comic` VALUES (210, '小优宝可梦援助交际', '210', 25, 1, 1);
INSERT INTO `data_h_comic` VALUES (211, '小梓 日步美', '211', 42, 1, 1);
INSERT INTO `data_h_comic` VALUES (212, '心体交融 人造人所献 爱的幽会', '212', 20, 1, 1);
INSERT INTO `data_h_comic` VALUES (213, '新干员能天使', '213', 20, 1, 1);
INSERT INTO `data_h_comic` VALUES (214, '新芽摘取', '214', 205, 1, 2);
INSERT INTO `data_h_comic` VALUES (215, '性爱骑士2', '215', 8, 1, 1);
INSERT INTO `data_h_comic` VALUES (216, '性欲旺盛贞操锻炼', '216', 22, 1, 1);
INSERT INTO `data_h_comic` VALUES (217, '性转成为女学生偶像', '217', 19, 1, 1);
INSERT INTO `data_h_comic` VALUES (218, '训练员先生', '218', 20, 1, 1);
INSERT INTO `data_h_comic` VALUES (219, '阳向从今天开始学习', '219', 18, 1, 1);
INSERT INTO `data_h_comic` VALUES (220, '要不要再爱一次', '220', 225, 1, 2);
INSERT INTO `data_h_comic` VALUES (221, '野原柚花', '221', 35, 1, 1);
INSERT INTO `data_h_comic` VALUES (222, '夜血交姬', '222', 58, 1, 1);
INSERT INTO `data_h_comic` VALUES (223, '伊甸条约的善后处理', '223', 90, 1, 1);
INSERT INTO `data_h_comic` VALUES (224, '以前明明那么可爱', '224', 46, 1, 1);
INSERT INTO `data_h_comic` VALUES (225, '以前明明那么可爱2', '225', 46, 1, 1);
INSERT INTO `data_h_comic` VALUES (226, '异世界调教', '226', 18, 1, 1);
INSERT INTO `data_h_comic` VALUES (227, '异世界魔王', '227', 25, 1, 1);
INSERT INTO `data_h_comic` VALUES (228, '异形', '228', 49, 1, 1);
INSERT INTO `data_h_comic` VALUES (229, '因果报应jk痴汉强健', '229', 34, 1, 1);
INSERT INTO `data_h_comic` VALUES (230, '淫魔', '230', 29, 1, 1);
INSERT INTO `data_h_comic` VALUES (231, '淫弱令媛', '231', 260, 1, 2);
INSERT INTO `data_h_comic` VALUES (232, '映镜mirroring girl', '232', 20, 1, 1);
INSERT INTO `data_h_comic` VALUES (233, '悠久的娼女精灵', '233', 148, 1, 2);
INSERT INTO `data_h_comic` VALUES (234, '犹如玩具的人生', '234', 245, 1, 2);
INSERT INTO `data_h_comic` VALUES (235, '游戏开发部', '235', 15, 1, 1);
INSERT INTO `data_h_comic` VALUES (236, '有预谋的暧昧之心', '236', 22, 1, 1);
INSERT INTO `data_h_comic` VALUES (237, '又师生本', '237', 30, 1, 1);
INSERT INTO `data_h_comic` VALUES (238, '又师生本2', '238', 38, 1, 1);
INSERT INTO `data_h_comic` VALUES (239, '幼 莫纳', '239', 12, 1, 1);
INSERT INTO `data_h_comic` VALUES (240, '诱惑性爱', '240', 55, 1, 1);
INSERT INTO `data_h_comic` VALUES (241, '与偶像的秘密关系', '241', 30, 1, 1);
INSERT INTO `data_h_comic` VALUES (242, '雨雪', '242', 200, 1, 2);
INSERT INTO `data_h_comic` VALUES (243, '御宅公主萝莉啪啪', '243', 193, 1, 2);
INSERT INTO `data_h_comic` VALUES (244, '援交，见面就开啪', '244', 20, 1, 1);
INSERT INTO `data_h_comic` VALUES (245, '月兔女郎', '245', 29, 1, 1);
INSERT INTO `data_h_comic` VALUES (246, '云吞芽央', '246', 187, 1, 2);
INSERT INTO `data_h_comic` VALUES (247, '在随心所欲的异世界里', '247', 30, 1, 1);
INSERT INTO `data_h_comic` VALUES (248, '在网上约到的女孩子说不定会是淫魔', '248', 17, 1, 1);
INSERT INTO `data_h_comic` VALUES (249, '早已消失的现实之触感', '249', 21, 1, 1);
INSERT INTO `data_h_comic` VALUES (250, '占星术', '250', 37, 1, 1);
INSERT INTO `data_h_comic` VALUES (251, '战术人型 超长', '251', 29, 1, 1);
INSERT INTO `data_h_comic` VALUES (252, '战术人型 体内', '252', 17, 1, 1);
INSERT INTO `data_h_comic` VALUES (253, '战术人型 体位', '253', 28, 1, 1);
INSERT INTO `data_h_comic` VALUES (254, '战术人型 玩具店', '254', 18, 1, 1);
INSERT INTO `data_h_comic` VALUES (255, '战术人型 早上的厨房', '255', 16, 1, 1);
INSERT INTO `data_h_comic` VALUES (256, '这就是家政吗？', '256', 24, 1, 1);
INSERT INTO `data_h_comic` VALUES (257, '珍爱着我', '257', 202, 1, 2);
INSERT INTO `data_h_comic` VALUES (258, '真爱满溢', '258', 194, 1, 2);
INSERT INTO `data_h_comic` VALUES (259, '真的非常抱歉主人2', '259', 44, 1, 1);
INSERT INTO `data_h_comic` VALUES (260, '真的非常抱歉主人3', '260', 32, 1, 1);
INSERT INTO `data_h_comic` VALUES (261, '真拿主人没办法呢', '261', 32, 1, 1);
INSERT INTO `data_h_comic` VALUES (262, '诊疗所', '262', 35, 1, 1);
INSERT INTO `data_h_comic` VALUES (263, '震惊 指挥官居然会对我如此下手', '263', 29, 1, 1);
INSERT INTO `data_h_comic` VALUES (264, '直面本心的堕落皇女', '264', 30, 1, 1);
INSERT INTO `data_h_comic` VALUES (265, '指挥官的宠物', '265', 28, 1, 1);
INSERT INTO `data_h_comic` VALUES (266, '指于外 心溶', '266', 44, 1, 1);
INSERT INTO `data_h_comic` VALUES (267, '紫音恋结', '267', 133, 1, 2);
INSERT INTO `data_h_comic` VALUES (268, '紫之梦', '268', 40, 1, 1);
INSERT INTO `data_h_comic` VALUES (269, '自慰套教室', '269', 195, 1, 2);
INSERT INTO `data_h_comic` VALUES (270, '自慰套教室 新学期', '270', 209, 1, 2);
INSERT INTO `data_h_comic` VALUES (271, '宗教 事情', '271', 28, 1, 1);
INSERT INTO `data_h_comic` VALUES (272, '人类保存计划', '272', 4, 1, 1);
INSERT INTO `data_h_comic` VALUES (273, '束缚成为马娘', '273', 11, 2, 1);
INSERT INTO `data_h_comic` VALUES (274, '东条希の木枷自缚教程', '274', 14, 1, 1);
INSERT INTO `data_h_comic` VALUES (275, '落穴感觉遮断魔法', '275', 44, 1, 1);
INSERT INTO `data_h_comic` VALUES (276, '不让妹妹怀孕的话就离不开的岛', '276', 47, 1, 1);
INSERT INTO `data_h_comic` VALUES (277, '桃娘奇谭', '277', 31, 1, 1);
INSERT INTO `data_h_comic` VALUES (278, '反向催眠实验', '278', 206, 1, 2);
INSERT INTO `data_h_comic` VALUES (279, '始色', '279', 241, 1, 2);
INSERT INTO `data_h_comic` VALUES (280, '舒服直播', '280', 4, 1, 1);
INSERT INTO `data_h_comic` VALUES (281, 'EVA关键任务', '281', 38, 1, 1);
INSERT INTO `data_h_comic` VALUES (282, '戴着遥控按摩棒从鬼身边逃走', '282', 20, 1, 1);
INSERT INTO `data_h_comic` VALUES (283, '拘束少女-没有那么过分', '283', 18, 2, 1);
INSERT INTO `data_h_comic` VALUES (284, '暴碧家庭教师', '284', 33, 2, 1);
INSERT INTO `data_h_comic` VALUES (285, '管理人', '285', 28, 2, 1);
INSERT INTO `data_h_comic` VALUES (286, '放课后的自缚', '286', 39, 2, 1);
INSERT INTO `data_h_comic` VALUES (287, '我操原批', '287', 44, 1, 1);
INSERT INTO `data_h_comic` VALUES (288, '关谷', '288', 206, 1, 2);
INSERT INTO `data_h_comic` VALUES (289, '异世界也要灌注永雏塔菲', '289', 21, 1, 1);
INSERT INTO `data_h_comic` VALUES (290, 'DessertSyndrome', '290', 43, 1, 1);
INSERT INTO `data_h_comic` VALUES (291, '家庭教师离去的原因', '291', 71, 1, 1);
INSERT INTO `data_h_comic` VALUES (292, '800年的约定', '292', 39, 1, 1);
INSERT INTO `data_h_comic` VALUES (293, '中招的芙莉莲', '293', 47, 1, 1);
INSERT INTO `data_h_comic` VALUES (294, '拘束百合', '294', 66, 1, 1);
INSERT INTO `data_h_comic` VALUES (295, '人类身份放弃', '295', 43, 1, 1);
INSERT INTO `data_h_comic` VALUES (296, '火影-小向日葵', '296', 6, 1, 1);
INSERT INTO `data_h_comic` VALUES (297, '足电球-十字架', '297', 13, 2, 1);
INSERT INTO `data_h_comic` VALUES (298, 'Manual for the TOY', '298', 26, 1, 1);
INSERT INTO `data_h_comic` VALUES (299, '美柑', '299', 14, 1, 1);
INSERT INTO `data_h_comic` VALUES (300, '勇者-吉田Killy', '300', 47, 1, 1);
INSERT INTO `data_h_comic` VALUES (301, '子犬part1', '301', 15, 1, 1);
INSERT INTO `data_h_comic` VALUES (302, '力气好大！？', '302', 62, 1, 1);
INSERT INTO `data_h_comic` VALUES (303, '姐姐与倾诉怨言的弟弟2', '303', 65, 1, 1);
INSERT INTO `data_h_comic` VALUES (304, '高潮忍耐大赛', '304', 19, 1, 1);
INSERT INTO `data_h_comic` VALUES (305, '只要想到你 身体就发烫', '305', 197, 1, 2);
INSERT INTO `data_h_comic` VALUES (306, '性教育系列总集篇2', '306', 155, 1, 2);
INSERT INTO `data_h_comic` VALUES (307, '时雨羽依的秘密直播', '307', 43, 1, 1);
INSERT INTO `data_h_comic` VALUES (308, '时雨羽依的秘密直播2', '308', 47, 1, 1);
INSERT INTO `data_h_comic` VALUES (309, 'Sister Reward', '309', 19, 1, 1);
INSERT INTO `data_h_comic` VALUES (310, ' 亲友の兄', '310', 45, 1, 1);
INSERT INTO `data_h_comic` VALUES (311, 'AFTER', '311', 30, 1, 1);
INSERT INTO `data_h_comic` VALUES (312, '沉默的女友', '312', 24, 1, 1);
INSERT INTO `data_h_comic` VALUES (313, 'URC vol92', '313', 30, 1, 1);
INSERT INTO `data_h_comic` VALUES (314, 'URC vol103', '314', 37, 1, 1);
INSERT INTO `data_h_comic` VALUES (315, '妹の催眠本2', '315', 26, 1, 1);
INSERT INTO `data_h_comic` VALUES (316, '妹妹和她催眠耐性EX的清纯初中生同学', '316', 17, 1, 1);
INSERT INTO `data_h_comic` VALUES (317, '清纯 X 反转', '317', 54, 1, 1);
INSERT INTO `data_h_comic` VALUES (318, '孕妹记录2', '318', 54, 1, 1);
INSERT INTO `data_h_comic` VALUES (319, '穴肉兽人', '319', 8, 1, 1);
INSERT INTO `data_h_comic` VALUES (320, '青梅竹马被选为色情值日生', '320', 51, 1, 1);
INSERT INTO `data_h_comic` VALUES (321, '伊堕落', '321', 27, 1, 1);
INSERT INTO `data_h_comic` VALUES (322, '要使用爱丽丝的魔法吗', '322', 31, 1, 1);
INSERT INTO `data_h_comic` VALUES (323, '不小心和白子色色了', '323', 27, 1, 1);
INSERT INTO `data_h_comic` VALUES (324, '让我们干杯', '324', 23, 1, 1);
INSERT INTO `data_h_comic` VALUES (325, '直播女孩名子的无套中出直播', '325', 33, 1, 1);
INSERT INTO `data_h_comic` VALUES (326, '狠狠侵犯雌小鬼', '326', 31, 1, 1);
INSERT INTO `data_h_comic` VALUES (327, '喜多虹夏女仆装', '327', 78, 1, 1);
INSERT INTO `data_h_comic` VALUES (328, ' 秘密炼金术', '328', 68, 1, 1);

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
-- Records of data_h_comic_tags
-- ----------------------------

-- ----------------------------
-- Table structure for data_h_picture
-- ----------------------------
DROP TABLE IF EXISTS `data_h_picture`;
CREATE TABLE `data_h_picture`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `filename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'webp' COMMENT '文件名称(后缀)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1230 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '数据表\r\n 图片的数据' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of data_h_picture
-- ----------------------------
INSERT INTO `data_h_picture` VALUES (1, 'webp');
INSERT INTO `data_h_picture` VALUES (2, 'webp');
INSERT INTO `data_h_picture` VALUES (3, 'webp');
INSERT INTO `data_h_picture` VALUES (4, 'webp');
INSERT INTO `data_h_picture` VALUES (5, 'webp');
INSERT INTO `data_h_picture` VALUES (6, 'webp');
INSERT INTO `data_h_picture` VALUES (7, 'webp');
INSERT INTO `data_h_picture` VALUES (8, 'webp');
INSERT INTO `data_h_picture` VALUES (9, 'webp');
INSERT INTO `data_h_picture` VALUES (10, 'webp');
INSERT INTO `data_h_picture` VALUES (11, 'webp');
INSERT INTO `data_h_picture` VALUES (12, 'webp');
INSERT INTO `data_h_picture` VALUES (13, 'webp');
INSERT INTO `data_h_picture` VALUES (14, 'webp');
INSERT INTO `data_h_picture` VALUES (15, 'webp');
INSERT INTO `data_h_picture` VALUES (16, 'webp');
INSERT INTO `data_h_picture` VALUES (17, 'webp');
INSERT INTO `data_h_picture` VALUES (18, 'webp');
INSERT INTO `data_h_picture` VALUES (19, 'webp');
INSERT INTO `data_h_picture` VALUES (20, 'webp');
INSERT INTO `data_h_picture` VALUES (21, 'webp');
INSERT INTO `data_h_picture` VALUES (22, 'webp');
INSERT INTO `data_h_picture` VALUES (23, 'webp');
INSERT INTO `data_h_picture` VALUES (24, 'webp');
INSERT INTO `data_h_picture` VALUES (25, 'webp');
INSERT INTO `data_h_picture` VALUES (26, 'webp');
INSERT INTO `data_h_picture` VALUES (27, 'webp');
INSERT INTO `data_h_picture` VALUES (28, 'webp');
INSERT INTO `data_h_picture` VALUES (29, 'webp');
INSERT INTO `data_h_picture` VALUES (30, 'webp');
INSERT INTO `data_h_picture` VALUES (31, 'webp');
INSERT INTO `data_h_picture` VALUES (32, 'webp');
INSERT INTO `data_h_picture` VALUES (33, 'webp');
INSERT INTO `data_h_picture` VALUES (34, 'webp');
INSERT INTO `data_h_picture` VALUES (35, 'webp');
INSERT INTO `data_h_picture` VALUES (36, 'webp');
INSERT INTO `data_h_picture` VALUES (37, 'webp');
INSERT INTO `data_h_picture` VALUES (38, 'webp');
INSERT INTO `data_h_picture` VALUES (39, 'webp');
INSERT INTO `data_h_picture` VALUES (40, 'webp');
INSERT INTO `data_h_picture` VALUES (41, 'webp');
INSERT INTO `data_h_picture` VALUES (42, 'webp');
INSERT INTO `data_h_picture` VALUES (43, 'webp');
INSERT INTO `data_h_picture` VALUES (44, 'webp');
INSERT INTO `data_h_picture` VALUES (45, 'webp');
INSERT INTO `data_h_picture` VALUES (46, 'webp');
INSERT INTO `data_h_picture` VALUES (47, 'webp');
INSERT INTO `data_h_picture` VALUES (48, 'webp');
INSERT INTO `data_h_picture` VALUES (49, 'webp');
INSERT INTO `data_h_picture` VALUES (50, 'webp');
INSERT INTO `data_h_picture` VALUES (51, 'webp');
INSERT INTO `data_h_picture` VALUES (52, 'webp');
INSERT INTO `data_h_picture` VALUES (53, 'webp');
INSERT INTO `data_h_picture` VALUES (54, 'webp');
INSERT INTO `data_h_picture` VALUES (55, 'webp');
INSERT INTO `data_h_picture` VALUES (56, 'webp');
INSERT INTO `data_h_picture` VALUES (57, 'webp');
INSERT INTO `data_h_picture` VALUES (58, 'webp');
INSERT INTO `data_h_picture` VALUES (59, 'webp');
INSERT INTO `data_h_picture` VALUES (60, 'webp');
INSERT INTO `data_h_picture` VALUES (61, 'webp');
INSERT INTO `data_h_picture` VALUES (62, 'webp');
INSERT INTO `data_h_picture` VALUES (63, 'webp');
INSERT INTO `data_h_picture` VALUES (64, 'webp');
INSERT INTO `data_h_picture` VALUES (65, 'webp');
INSERT INTO `data_h_picture` VALUES (66, 'webp');
INSERT INTO `data_h_picture` VALUES (67, 'webp');
INSERT INTO `data_h_picture` VALUES (68, 'webp');
INSERT INTO `data_h_picture` VALUES (69, 'webp');
INSERT INTO `data_h_picture` VALUES (70, 'webp');
INSERT INTO `data_h_picture` VALUES (71, 'webp');
INSERT INTO `data_h_picture` VALUES (72, 'webp');
INSERT INTO `data_h_picture` VALUES (73, 'webp');
INSERT INTO `data_h_picture` VALUES (74, 'webp');
INSERT INTO `data_h_picture` VALUES (75, 'webp');
INSERT INTO `data_h_picture` VALUES (76, 'webp');
INSERT INTO `data_h_picture` VALUES (77, 'webp');
INSERT INTO `data_h_picture` VALUES (78, 'webp');
INSERT INTO `data_h_picture` VALUES (79, 'webp');
INSERT INTO `data_h_picture` VALUES (80, 'webp');
INSERT INTO `data_h_picture` VALUES (81, 'webp');
INSERT INTO `data_h_picture` VALUES (82, 'webp');
INSERT INTO `data_h_picture` VALUES (83, 'webp');
INSERT INTO `data_h_picture` VALUES (84, 'webp');
INSERT INTO `data_h_picture` VALUES (85, 'webp');
INSERT INTO `data_h_picture` VALUES (86, 'webp');
INSERT INTO `data_h_picture` VALUES (87, 'webp');
INSERT INTO `data_h_picture` VALUES (88, 'webp');
INSERT INTO `data_h_picture` VALUES (89, 'webp');
INSERT INTO `data_h_picture` VALUES (90, 'webp');
INSERT INTO `data_h_picture` VALUES (91, 'webp');
INSERT INTO `data_h_picture` VALUES (92, 'webp');
INSERT INTO `data_h_picture` VALUES (93, 'webp');
INSERT INTO `data_h_picture` VALUES (94, 'webp');
INSERT INTO `data_h_picture` VALUES (95, 'webp');
INSERT INTO `data_h_picture` VALUES (96, 'webp');
INSERT INTO `data_h_picture` VALUES (97, 'webp');
INSERT INTO `data_h_picture` VALUES (98, 'webp');
INSERT INTO `data_h_picture` VALUES (99, 'webp');
INSERT INTO `data_h_picture` VALUES (100, 'webp');
INSERT INTO `data_h_picture` VALUES (101, 'webp');
INSERT INTO `data_h_picture` VALUES (102, 'webp');
INSERT INTO `data_h_picture` VALUES (103, 'webp');
INSERT INTO `data_h_picture` VALUES (104, 'webp');
INSERT INTO `data_h_picture` VALUES (105, 'webp');
INSERT INTO `data_h_picture` VALUES (106, 'webp');
INSERT INTO `data_h_picture` VALUES (107, 'webp');
INSERT INTO `data_h_picture` VALUES (108, 'webp');
INSERT INTO `data_h_picture` VALUES (109, 'webp');
INSERT INTO `data_h_picture` VALUES (110, 'webp');
INSERT INTO `data_h_picture` VALUES (111, 'webp');
INSERT INTO `data_h_picture` VALUES (112, 'webp');
INSERT INTO `data_h_picture` VALUES (113, 'webp');
INSERT INTO `data_h_picture` VALUES (114, 'webp');
INSERT INTO `data_h_picture` VALUES (115, 'webp');
INSERT INTO `data_h_picture` VALUES (116, 'webp');
INSERT INTO `data_h_picture` VALUES (117, 'webp');
INSERT INTO `data_h_picture` VALUES (118, 'webp');
INSERT INTO `data_h_picture` VALUES (119, 'webp');
INSERT INTO `data_h_picture` VALUES (120, 'webp');
INSERT INTO `data_h_picture` VALUES (121, 'webp');
INSERT INTO `data_h_picture` VALUES (122, 'webp');
INSERT INTO `data_h_picture` VALUES (123, 'webp');
INSERT INTO `data_h_picture` VALUES (124, 'webp');
INSERT INTO `data_h_picture` VALUES (125, 'webp');
INSERT INTO `data_h_picture` VALUES (126, 'webp');
INSERT INTO `data_h_picture` VALUES (127, 'webp');
INSERT INTO `data_h_picture` VALUES (128, 'webp');
INSERT INTO `data_h_picture` VALUES (129, 'webp');
INSERT INTO `data_h_picture` VALUES (130, 'webp');
INSERT INTO `data_h_picture` VALUES (131, 'webp');
INSERT INTO `data_h_picture` VALUES (132, 'webp');
INSERT INTO `data_h_picture` VALUES (133, 'webp');
INSERT INTO `data_h_picture` VALUES (134, 'webp');
INSERT INTO `data_h_picture` VALUES (135, 'webp');
INSERT INTO `data_h_picture` VALUES (136, 'webp');
INSERT INTO `data_h_picture` VALUES (137, 'webp');
INSERT INTO `data_h_picture` VALUES (138, 'webp');
INSERT INTO `data_h_picture` VALUES (139, 'webp');
INSERT INTO `data_h_picture` VALUES (140, 'webp');
INSERT INTO `data_h_picture` VALUES (141, 'webp');
INSERT INTO `data_h_picture` VALUES (142, 'webp');
INSERT INTO `data_h_picture` VALUES (143, 'webp');
INSERT INTO `data_h_picture` VALUES (144, 'webp');
INSERT INTO `data_h_picture` VALUES (145, 'webp');
INSERT INTO `data_h_picture` VALUES (146, 'webp');
INSERT INTO `data_h_picture` VALUES (147, 'webp');
INSERT INTO `data_h_picture` VALUES (148, 'webp');
INSERT INTO `data_h_picture` VALUES (149, 'webp');
INSERT INTO `data_h_picture` VALUES (150, 'webp');
INSERT INTO `data_h_picture` VALUES (151, 'webp');
INSERT INTO `data_h_picture` VALUES (152, 'webp');
INSERT INTO `data_h_picture` VALUES (153, 'webp');
INSERT INTO `data_h_picture` VALUES (154, 'webp');
INSERT INTO `data_h_picture` VALUES (155, 'webp');
INSERT INTO `data_h_picture` VALUES (156, 'webp');
INSERT INTO `data_h_picture` VALUES (157, 'webp');
INSERT INTO `data_h_picture` VALUES (158, 'webp');
INSERT INTO `data_h_picture` VALUES (159, 'webp');
INSERT INTO `data_h_picture` VALUES (160, 'webp');
INSERT INTO `data_h_picture` VALUES (161, 'webp');
INSERT INTO `data_h_picture` VALUES (162, 'webp');
INSERT INTO `data_h_picture` VALUES (163, 'webp');
INSERT INTO `data_h_picture` VALUES (164, 'webp');
INSERT INTO `data_h_picture` VALUES (165, 'webp');
INSERT INTO `data_h_picture` VALUES (166, 'webp');
INSERT INTO `data_h_picture` VALUES (167, 'webp');
INSERT INTO `data_h_picture` VALUES (168, 'webp');
INSERT INTO `data_h_picture` VALUES (169, 'webp');
INSERT INTO `data_h_picture` VALUES (170, 'webp');
INSERT INTO `data_h_picture` VALUES (171, 'webp');
INSERT INTO `data_h_picture` VALUES (172, 'webp');
INSERT INTO `data_h_picture` VALUES (173, 'webp');
INSERT INTO `data_h_picture` VALUES (174, 'webp');
INSERT INTO `data_h_picture` VALUES (175, 'webp');
INSERT INTO `data_h_picture` VALUES (176, 'webp');
INSERT INTO `data_h_picture` VALUES (177, 'webp');
INSERT INTO `data_h_picture` VALUES (178, 'webp');
INSERT INTO `data_h_picture` VALUES (179, 'webp');
INSERT INTO `data_h_picture` VALUES (180, 'webp');
INSERT INTO `data_h_picture` VALUES (181, 'webp');
INSERT INTO `data_h_picture` VALUES (182, 'webp');
INSERT INTO `data_h_picture` VALUES (183, 'webp');
INSERT INTO `data_h_picture` VALUES (184, 'webp');
INSERT INTO `data_h_picture` VALUES (185, 'webp');
INSERT INTO `data_h_picture` VALUES (186, 'webp');
INSERT INTO `data_h_picture` VALUES (187, 'webp');
INSERT INTO `data_h_picture` VALUES (188, 'webp');
INSERT INTO `data_h_picture` VALUES (189, 'webp');
INSERT INTO `data_h_picture` VALUES (190, 'webp');
INSERT INTO `data_h_picture` VALUES (191, 'webp');
INSERT INTO `data_h_picture` VALUES (192, 'webp');
INSERT INTO `data_h_picture` VALUES (193, 'webp');
INSERT INTO `data_h_picture` VALUES (194, 'webp');
INSERT INTO `data_h_picture` VALUES (195, 'webp');
INSERT INTO `data_h_picture` VALUES (196, 'webp');
INSERT INTO `data_h_picture` VALUES (197, 'webp');
INSERT INTO `data_h_picture` VALUES (198, 'webp');
INSERT INTO `data_h_picture` VALUES (199, 'webp');
INSERT INTO `data_h_picture` VALUES (200, 'webp');
INSERT INTO `data_h_picture` VALUES (201, 'webp');
INSERT INTO `data_h_picture` VALUES (202, 'webp');
INSERT INTO `data_h_picture` VALUES (203, 'webp');
INSERT INTO `data_h_picture` VALUES (204, 'webp');
INSERT INTO `data_h_picture` VALUES (205, 'webp');
INSERT INTO `data_h_picture` VALUES (206, 'webp');
INSERT INTO `data_h_picture` VALUES (207, 'webp');
INSERT INTO `data_h_picture` VALUES (208, 'webp');
INSERT INTO `data_h_picture` VALUES (209, 'webp');
INSERT INTO `data_h_picture` VALUES (210, 'webp');
INSERT INTO `data_h_picture` VALUES (211, 'webp');
INSERT INTO `data_h_picture` VALUES (212, 'webp');
INSERT INTO `data_h_picture` VALUES (213, 'webp');
INSERT INTO `data_h_picture` VALUES (214, 'webp');
INSERT INTO `data_h_picture` VALUES (215, 'webp');
INSERT INTO `data_h_picture` VALUES (216, 'webp');
INSERT INTO `data_h_picture` VALUES (217, 'webp');
INSERT INTO `data_h_picture` VALUES (218, 'webp');
INSERT INTO `data_h_picture` VALUES (219, 'webp');
INSERT INTO `data_h_picture` VALUES (220, 'webp');
INSERT INTO `data_h_picture` VALUES (221, 'webp');
INSERT INTO `data_h_picture` VALUES (222, 'webp');
INSERT INTO `data_h_picture` VALUES (223, 'webp');
INSERT INTO `data_h_picture` VALUES (224, 'webp');
INSERT INTO `data_h_picture` VALUES (225, 'webp');
INSERT INTO `data_h_picture` VALUES (226, 'webp');
INSERT INTO `data_h_picture` VALUES (227, 'webp');
INSERT INTO `data_h_picture` VALUES (228, 'webp');
INSERT INTO `data_h_picture` VALUES (229, 'webp');
INSERT INTO `data_h_picture` VALUES (230, 'webp');
INSERT INTO `data_h_picture` VALUES (231, 'webp');
INSERT INTO `data_h_picture` VALUES (232, 'webp');
INSERT INTO `data_h_picture` VALUES (233, 'webp');
INSERT INTO `data_h_picture` VALUES (234, 'webp');
INSERT INTO `data_h_picture` VALUES (235, 'webp');
INSERT INTO `data_h_picture` VALUES (236, 'webp');
INSERT INTO `data_h_picture` VALUES (237, 'webp');
INSERT INTO `data_h_picture` VALUES (238, 'webp');
INSERT INTO `data_h_picture` VALUES (239, 'webp');
INSERT INTO `data_h_picture` VALUES (240, 'webp');
INSERT INTO `data_h_picture` VALUES (241, 'webp');
INSERT INTO `data_h_picture` VALUES (242, 'webp');
INSERT INTO `data_h_picture` VALUES (243, 'webp');
INSERT INTO `data_h_picture` VALUES (244, 'webp');
INSERT INTO `data_h_picture` VALUES (245, 'webp');
INSERT INTO `data_h_picture` VALUES (246, 'webp');
INSERT INTO `data_h_picture` VALUES (247, 'webp');
INSERT INTO `data_h_picture` VALUES (248, 'webp');
INSERT INTO `data_h_picture` VALUES (249, 'webp');
INSERT INTO `data_h_picture` VALUES (250, 'webp');
INSERT INTO `data_h_picture` VALUES (251, 'webp');
INSERT INTO `data_h_picture` VALUES (252, 'webp');
INSERT INTO `data_h_picture` VALUES (253, 'webp');
INSERT INTO `data_h_picture` VALUES (254, 'webp');
INSERT INTO `data_h_picture` VALUES (255, 'webp');
INSERT INTO `data_h_picture` VALUES (256, 'webp');
INSERT INTO `data_h_picture` VALUES (257, 'webp');
INSERT INTO `data_h_picture` VALUES (258, 'webp');
INSERT INTO `data_h_picture` VALUES (259, 'webp');
INSERT INTO `data_h_picture` VALUES (260, 'webp');
INSERT INTO `data_h_picture` VALUES (261, 'webp');
INSERT INTO `data_h_picture` VALUES (262, 'webp');
INSERT INTO `data_h_picture` VALUES (263, 'webp');
INSERT INTO `data_h_picture` VALUES (264, 'webp');
INSERT INTO `data_h_picture` VALUES (265, 'webp');
INSERT INTO `data_h_picture` VALUES (266, 'webp');
INSERT INTO `data_h_picture` VALUES (267, 'webp');
INSERT INTO `data_h_picture` VALUES (268, 'webp');
INSERT INTO `data_h_picture` VALUES (269, 'webp');
INSERT INTO `data_h_picture` VALUES (270, 'webp');
INSERT INTO `data_h_picture` VALUES (271, 'webp');
INSERT INTO `data_h_picture` VALUES (272, 'webp');
INSERT INTO `data_h_picture` VALUES (273, 'webp');
INSERT INTO `data_h_picture` VALUES (274, 'webp');
INSERT INTO `data_h_picture` VALUES (275, 'webp');
INSERT INTO `data_h_picture` VALUES (276, 'webp');
INSERT INTO `data_h_picture` VALUES (277, 'webp');
INSERT INTO `data_h_picture` VALUES (278, 'webp');
INSERT INTO `data_h_picture` VALUES (279, 'webp');
INSERT INTO `data_h_picture` VALUES (280, 'webp');
INSERT INTO `data_h_picture` VALUES (281, 'webp');
INSERT INTO `data_h_picture` VALUES (282, 'webp');
INSERT INTO `data_h_picture` VALUES (283, 'webp');
INSERT INTO `data_h_picture` VALUES (284, 'webp');
INSERT INTO `data_h_picture` VALUES (285, 'webp');
INSERT INTO `data_h_picture` VALUES (286, 'webp');
INSERT INTO `data_h_picture` VALUES (287, 'webp');
INSERT INTO `data_h_picture` VALUES (288, 'webp');
INSERT INTO `data_h_picture` VALUES (289, 'webp');
INSERT INTO `data_h_picture` VALUES (290, 'webp');
INSERT INTO `data_h_picture` VALUES (291, 'webp');
INSERT INTO `data_h_picture` VALUES (292, 'webp');
INSERT INTO `data_h_picture` VALUES (293, 'webp');
INSERT INTO `data_h_picture` VALUES (294, 'webp');
INSERT INTO `data_h_picture` VALUES (295, 'webp');
INSERT INTO `data_h_picture` VALUES (296, 'webp');
INSERT INTO `data_h_picture` VALUES (297, 'webp');
INSERT INTO `data_h_picture` VALUES (298, 'webp');
INSERT INTO `data_h_picture` VALUES (299, 'webp');
INSERT INTO `data_h_picture` VALUES (300, 'webp');
INSERT INTO `data_h_picture` VALUES (301, 'webp');
INSERT INTO `data_h_picture` VALUES (302, 'webp');
INSERT INTO `data_h_picture` VALUES (303, 'webp');
INSERT INTO `data_h_picture` VALUES (304, 'webp');
INSERT INTO `data_h_picture` VALUES (305, 'webp');
INSERT INTO `data_h_picture` VALUES (306, 'webp');
INSERT INTO `data_h_picture` VALUES (307, 'webp');
INSERT INTO `data_h_picture` VALUES (308, 'webp');
INSERT INTO `data_h_picture` VALUES (309, 'webp');
INSERT INTO `data_h_picture` VALUES (310, 'webp');
INSERT INTO `data_h_picture` VALUES (311, 'webp');
INSERT INTO `data_h_picture` VALUES (312, 'webp');
INSERT INTO `data_h_picture` VALUES (313, 'webp');
INSERT INTO `data_h_picture` VALUES (314, 'webp');
INSERT INTO `data_h_picture` VALUES (315, 'webp');
INSERT INTO `data_h_picture` VALUES (316, 'webp');
INSERT INTO `data_h_picture` VALUES (317, 'webp');
INSERT INTO `data_h_picture` VALUES (318, 'webp');
INSERT INTO `data_h_picture` VALUES (319, 'webp');
INSERT INTO `data_h_picture` VALUES (320, 'webp');
INSERT INTO `data_h_picture` VALUES (321, 'webp');
INSERT INTO `data_h_picture` VALUES (322, 'webp');
INSERT INTO `data_h_picture` VALUES (323, 'webp');
INSERT INTO `data_h_picture` VALUES (324, 'webp');
INSERT INTO `data_h_picture` VALUES (325, 'webp');
INSERT INTO `data_h_picture` VALUES (326, 'webp');
INSERT INTO `data_h_picture` VALUES (327, 'webp');
INSERT INTO `data_h_picture` VALUES (328, 'webp');
INSERT INTO `data_h_picture` VALUES (329, 'webp');
INSERT INTO `data_h_picture` VALUES (330, 'webp');
INSERT INTO `data_h_picture` VALUES (331, 'webp');
INSERT INTO `data_h_picture` VALUES (332, 'webp');
INSERT INTO `data_h_picture` VALUES (333, 'webp');
INSERT INTO `data_h_picture` VALUES (334, 'webp');
INSERT INTO `data_h_picture` VALUES (335, 'webp');
INSERT INTO `data_h_picture` VALUES (336, 'webp');
INSERT INTO `data_h_picture` VALUES (337, 'webp');
INSERT INTO `data_h_picture` VALUES (338, 'webp');
INSERT INTO `data_h_picture` VALUES (339, 'webp');
INSERT INTO `data_h_picture` VALUES (340, 'webp');
INSERT INTO `data_h_picture` VALUES (341, 'webp');
INSERT INTO `data_h_picture` VALUES (342, 'webp');
INSERT INTO `data_h_picture` VALUES (343, 'webp');
INSERT INTO `data_h_picture` VALUES (344, 'webp');
INSERT INTO `data_h_picture` VALUES (345, 'webp');
INSERT INTO `data_h_picture` VALUES (346, 'webp');
INSERT INTO `data_h_picture` VALUES (347, 'webp');
INSERT INTO `data_h_picture` VALUES (348, 'webp');
INSERT INTO `data_h_picture` VALUES (349, 'webp');
INSERT INTO `data_h_picture` VALUES (350, 'webp');
INSERT INTO `data_h_picture` VALUES (351, 'webp');
INSERT INTO `data_h_picture` VALUES (352, 'webp');
INSERT INTO `data_h_picture` VALUES (353, 'webp');
INSERT INTO `data_h_picture` VALUES (354, 'webp');
INSERT INTO `data_h_picture` VALUES (355, 'webp');
INSERT INTO `data_h_picture` VALUES (356, 'webp');
INSERT INTO `data_h_picture` VALUES (357, 'webp');
INSERT INTO `data_h_picture` VALUES (358, 'webp');
INSERT INTO `data_h_picture` VALUES (359, 'webp');
INSERT INTO `data_h_picture` VALUES (360, 'webp');
INSERT INTO `data_h_picture` VALUES (361, 'webp');
INSERT INTO `data_h_picture` VALUES (362, 'webp');
INSERT INTO `data_h_picture` VALUES (363, 'webp');
INSERT INTO `data_h_picture` VALUES (364, 'webp');
INSERT INTO `data_h_picture` VALUES (365, 'webp');
INSERT INTO `data_h_picture` VALUES (366, 'webp');
INSERT INTO `data_h_picture` VALUES (367, 'webp');
INSERT INTO `data_h_picture` VALUES (368, 'webp');
INSERT INTO `data_h_picture` VALUES (369, 'webp');
INSERT INTO `data_h_picture` VALUES (370, 'webp');
INSERT INTO `data_h_picture` VALUES (371, 'webp');
INSERT INTO `data_h_picture` VALUES (372, 'webp');
INSERT INTO `data_h_picture` VALUES (373, 'webp');
INSERT INTO `data_h_picture` VALUES (374, 'webp');
INSERT INTO `data_h_picture` VALUES (375, 'webp');
INSERT INTO `data_h_picture` VALUES (376, 'webp');
INSERT INTO `data_h_picture` VALUES (377, 'webp');
INSERT INTO `data_h_picture` VALUES (378, 'webp');
INSERT INTO `data_h_picture` VALUES (379, 'webp');
INSERT INTO `data_h_picture` VALUES (380, 'webp');
INSERT INTO `data_h_picture` VALUES (381, 'webp');
INSERT INTO `data_h_picture` VALUES (382, 'webp');
INSERT INTO `data_h_picture` VALUES (383, 'webp');
INSERT INTO `data_h_picture` VALUES (384, 'webp');
INSERT INTO `data_h_picture` VALUES (385, 'webp');
INSERT INTO `data_h_picture` VALUES (386, 'webp');
INSERT INTO `data_h_picture` VALUES (387, 'webp');
INSERT INTO `data_h_picture` VALUES (388, 'webp');
INSERT INTO `data_h_picture` VALUES (389, 'webp');
INSERT INTO `data_h_picture` VALUES (390, 'webp');
INSERT INTO `data_h_picture` VALUES (391, 'webp');
INSERT INTO `data_h_picture` VALUES (392, 'webp');
INSERT INTO `data_h_picture` VALUES (393, 'webp');
INSERT INTO `data_h_picture` VALUES (394, 'webp');
INSERT INTO `data_h_picture` VALUES (395, 'webp');
INSERT INTO `data_h_picture` VALUES (396, 'webp');
INSERT INTO `data_h_picture` VALUES (397, 'webp');
INSERT INTO `data_h_picture` VALUES (398, 'webp');
INSERT INTO `data_h_picture` VALUES (399, 'webp');
INSERT INTO `data_h_picture` VALUES (400, 'webp');
INSERT INTO `data_h_picture` VALUES (401, 'webp');
INSERT INTO `data_h_picture` VALUES (402, 'webp');
INSERT INTO `data_h_picture` VALUES (403, 'webp');
INSERT INTO `data_h_picture` VALUES (404, 'webp');
INSERT INTO `data_h_picture` VALUES (405, 'webp');
INSERT INTO `data_h_picture` VALUES (406, 'webp');
INSERT INTO `data_h_picture` VALUES (407, 'webp');
INSERT INTO `data_h_picture` VALUES (408, 'webp');
INSERT INTO `data_h_picture` VALUES (409, 'webp');
INSERT INTO `data_h_picture` VALUES (410, 'webp');
INSERT INTO `data_h_picture` VALUES (411, 'webp');
INSERT INTO `data_h_picture` VALUES (412, 'webp');
INSERT INTO `data_h_picture` VALUES (413, 'webp');
INSERT INTO `data_h_picture` VALUES (414, 'webp');
INSERT INTO `data_h_picture` VALUES (415, 'webp');
INSERT INTO `data_h_picture` VALUES (416, 'webp');
INSERT INTO `data_h_picture` VALUES (417, 'webp');
INSERT INTO `data_h_picture` VALUES (418, 'webp');
INSERT INTO `data_h_picture` VALUES (419, 'webp');
INSERT INTO `data_h_picture` VALUES (420, 'webp');
INSERT INTO `data_h_picture` VALUES (421, 'webp');
INSERT INTO `data_h_picture` VALUES (422, 'webp');
INSERT INTO `data_h_picture` VALUES (423, 'webp');
INSERT INTO `data_h_picture` VALUES (424, 'webp');
INSERT INTO `data_h_picture` VALUES (425, 'webp');
INSERT INTO `data_h_picture` VALUES (426, 'webp');
INSERT INTO `data_h_picture` VALUES (427, 'webp');
INSERT INTO `data_h_picture` VALUES (428, 'webp');
INSERT INTO `data_h_picture` VALUES (429, 'webp');
INSERT INTO `data_h_picture` VALUES (430, 'webp');
INSERT INTO `data_h_picture` VALUES (431, 'webp');
INSERT INTO `data_h_picture` VALUES (432, 'webp');
INSERT INTO `data_h_picture` VALUES (433, 'webp');
INSERT INTO `data_h_picture` VALUES (434, 'webp');
INSERT INTO `data_h_picture` VALUES (435, 'webp');
INSERT INTO `data_h_picture` VALUES (436, 'webp');
INSERT INTO `data_h_picture` VALUES (437, 'webp');
INSERT INTO `data_h_picture` VALUES (438, 'webp');
INSERT INTO `data_h_picture` VALUES (439, 'webp');
INSERT INTO `data_h_picture` VALUES (440, 'webp');
INSERT INTO `data_h_picture` VALUES (441, 'webp');
INSERT INTO `data_h_picture` VALUES (442, 'webp');
INSERT INTO `data_h_picture` VALUES (443, 'webp');
INSERT INTO `data_h_picture` VALUES (444, 'webp');
INSERT INTO `data_h_picture` VALUES (445, 'webp');
INSERT INTO `data_h_picture` VALUES (446, 'webp');
INSERT INTO `data_h_picture` VALUES (447, 'webp');
INSERT INTO `data_h_picture` VALUES (448, 'webp');
INSERT INTO `data_h_picture` VALUES (449, 'webp');
INSERT INTO `data_h_picture` VALUES (450, 'webp');
INSERT INTO `data_h_picture` VALUES (451, 'webp');
INSERT INTO `data_h_picture` VALUES (452, 'webp');
INSERT INTO `data_h_picture` VALUES (453, 'webp');
INSERT INTO `data_h_picture` VALUES (454, 'webp');
INSERT INTO `data_h_picture` VALUES (455, 'webp');
INSERT INTO `data_h_picture` VALUES (456, 'webp');
INSERT INTO `data_h_picture` VALUES (457, 'webp');
INSERT INTO `data_h_picture` VALUES (458, 'webp');
INSERT INTO `data_h_picture` VALUES (459, 'webp');
INSERT INTO `data_h_picture` VALUES (460, 'webp');
INSERT INTO `data_h_picture` VALUES (461, 'webp');
INSERT INTO `data_h_picture` VALUES (462, 'webp');
INSERT INTO `data_h_picture` VALUES (463, 'webp');
INSERT INTO `data_h_picture` VALUES (464, 'webp');
INSERT INTO `data_h_picture` VALUES (465, 'webp');
INSERT INTO `data_h_picture` VALUES (466, 'webp');
INSERT INTO `data_h_picture` VALUES (467, 'webp');
INSERT INTO `data_h_picture` VALUES (468, 'webp');
INSERT INTO `data_h_picture` VALUES (469, 'webp');
INSERT INTO `data_h_picture` VALUES (470, 'webp');

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
) ENGINE = InnoDB AUTO_INCREMENT = 282 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '数据表\r\n 视频的数据' ROW_FORMAT = DYNAMIC;

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
INSERT INTO `data_h_video` VALUES (21, 'super girl', '21.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (22, 'bronia', '22.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (23, 'CumCovers', '23.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (24, 'CockNinjaStudios', '24.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (25, '阳光-特写', '25.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (26, 'cospori', '26.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (27, 'directorTONG', '27.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (28, 'dorcelclub', '28.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (29, 'Dylann Vox - Stripper With Double D’s Hops on The Bus', '29.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (30, 'Dylann Vox - Getting Even With Some Semen', '30.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (31, 'Dylann', '31.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (32, 'Eliana Rose & Dylann Vox Fuck Each Other And Share Two Cocks! ', '32.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (33, '分叉舌头片片', '33.mp4', 'FC2-PPV-1568660', 1, 1);
INSERT INTO `data_h_video` VALUES (34, '麻花辫JK', '34.mp4', 'FC2-PPV-1851398', 1, 1);
INSERT INTO `data_h_video` VALUES (35, '无名的男-女仆-1', '35.mp4', 'FC2-PPV-2549115-1', 1, 1);
INSERT INTO `data_h_video` VALUES (36, '无名的男-女仆-2', '36.mp4', 'FC2-PPV-2549115-2', 1, 1);
INSERT INTO `data_h_video` VALUES (37, '无名的男-女仆-3', '37.mp4', 'FC2-PPV-2549115-3', 1, 1);
INSERT INTO `data_h_video` VALUES (38, 'BlueCrow42-1', '38.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (39, 'BlueCrow42-2', '39.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (40, 'FortuneCuttie-裙子', '40.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (41, 'FortuneCuttie-电话', '41.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (42, '卖东西', '42.mp4', 'heyzo-1031-C', 1, 1);
INSERT INTO `data_h_video` VALUES (43, 'hotshot', '43.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (44, 'xoxo_juri', '44.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (45, 'LegsJapan', '45.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (46, 'MasukuChan', '46.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (47, 'Milk 补帧 稳定镜头', '47.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (48, 'Mistress_fucks_Sissy_Bitch_anal_doggystyle', '48.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (49, 'nana_taipei-律师', '49.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (50, 'nana_taipei-修女', '50.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (51, 'Naomii', '51.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (52, 'nicole.high.temperature', '52.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (53, 'nikia.doing.the.nasty', '53.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (54, 'pue_Peachpie', '54.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (55, 'pinkloving', '55.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (56, 'slrabbit', '56.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (57, 'DNCC', '57.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (58, 'Yasmin - Boar_JAdore', '58.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (59, 'Yasmin - Sophisticated Bitch', '59.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (60, 'YuaHentai 白丝水手服', '60.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (61, 'YueHentai 按摩', '61.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (62, 'YueHentai 原神', '62.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (63, '白虎萝莉', '63.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (64, '白丝 阳光 纱裙', '64.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (65, '白丝女仆play肛塞尿道棒', '65.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (66, '悲伤小姐', '66.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (67, '不是童车', '67.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (68, 'HENTAIED触手', '68.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (69, '果冻传媒 歌舞妓町', '69.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (70, '和服 捆绑', '70.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (71, '和宫雪', '71.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (72, '懒懒睡不醒Cos酒馆脱衣舞女郎莫娜 ', '72.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (73, '日本萝莉-1', '73.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (74, '日本萝莉-2', '74.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (75, '麦当劳兼职', '75.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (76, '梅朵儿', '76.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (77, '糖心nana_taipei', '77.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (78, '唐伯虎-1', '78.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (79, '唐伯虎-2', '79.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (80, '唐伯虎-3', '80.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (81, '捅主任 白丝', '81.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (82, '捅主任 双脚离地', '82.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (83, '玩偶姐姐-02', '83.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (84, '玩偶姐姐-jk', '84.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (85, '玩偶姐姐-黑丝jk室友', '85.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (86, '玩偶姐姐-穹妹', '86.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (87, '玩偶姐姐-森林-0', '87.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (88, '玩偶姐姐-森林-1', '88.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (89, '玩偶姐姐-森林-2', '89.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (90, '玩偶姐姐-森林-3', '90.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (91, '玩偶姐姐-蛇喰梦子的陨落', '91.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (92, '玩偶姐姐-她的秘密', '92.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (93, '玩偶姐姐-甜美游戏-1', '93.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (94, '玩偶姐姐-甜美游戏-2', '94.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (95, '玩偶姐姐-甜美游戏-3', '95.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (96, '玩偶姐姐-一日女友', '96.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (97, '下面有跟棒棒糖 出轨已婚女上司', '97.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (98, '小鹿酱 奶油粉', '98.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (99, '小鸟酱-JK', '99.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (100, '小鸟酱-白丝', '100.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (101, '小鸟酱-多体位', '101.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (102, '小鸟酱-黑丝衬衣', '102.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (103, '小鸟酱-黑丝上位', '103.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (104, '小鸟酱-黑丝制服', '104.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (105, '小鸟酱-口交', '105.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (106, '小鸟酱-毛衣', '106.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (107, '小鸟酱-上位', '107.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (108, '小鸟酱-腿环', '108.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (109, '小鸟酱-自慰', '109.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (110, '押尾猫-COS雷姆', '110.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (111, '押尾猫-白丝JK棒棒糖', '111.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (112, '押尾猫-束缚调教黑丝jk', '112.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (113, '押尾貓-饲养母狗', '113.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (114, '柚木', '114.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (115, '中华田园兔龙王的工作', '115.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (116, '中华田园兔-COS阿米娅', '116.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (117, '中华田园兔-刻晴', '117.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (118, '柚子猫-G0110', '118.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (119, '柚子猫-黑丝', '119.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (120, '柚子猫-黑丝板鞋', '120.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (121, '柚子猫-刻晴JK', '121.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (122, '柚子猫-捆绑', '122.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (123, '柚子猫-万圣节小僵尸', '123.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (124, '柚子猫-淫荡修女の忏悔', '124.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (125, 'cos-X-阿米娅-1', '125.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (126, 'cos-X-阿米娅-2', '126.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (127, 'cos-X-416-1', '127.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (128, 'cos-X-416-2', '128.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (129, 'cos-X-AR15-1', '129.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (130, 'cos-X-AR15-2', '130.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (131, 'cos-X-和泉纱雾-1', '131.mp4', 'FC2PPV-985469-1', 1, 1);
INSERT INTO `data_h_video` VALUES (132, 'cos-X-和泉纱雾-2', '132.mp4', 'FC2PPV-985469-2', 1, 1);
INSERT INTO `data_h_video` VALUES (133, 'cos-X-山田妖精-2', '133.mp4', 'FC2-PPV-1418531', 1, 1);
INSERT INTO `data_h_video` VALUES (134, 'cos-X- 七七-1', '134.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (135, 'cos-X-七七-2', '135.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (136, 'cos-X-UMP45-1', '136.mp4', 'FC2PPV-1102946', 1, 1);
INSERT INTO `data_h_video` VALUES (137, 'cos-X-UMP45-2', '137.mp4', 'FC2PPV-1102946', 1, 1);
INSERT INTO `data_h_video` VALUES (138, 'cos-X-UMP45-3', '138.mp4', 'FC2PPV-1128561', 1, 1);
INSERT INTO `data_h_video` VALUES (139, 'cos-X-UMP45-4', '139.mp4', 'FC2PPV-1128561', 1, 1);
INSERT INTO `data_h_video` VALUES (140, 'cos-X-WA2000', '140.mp4', 'FC2PPV-1084878', 1, 1);
INSERT INTO `data_h_video` VALUES (141, '白袜伪娘束缚椅炮机飞机杯榨精', '141.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (142, '魅魔利兹', '142.mp4', 'RAS-0179', 1, 1);
INSERT INTO `data_h_video` VALUES (143, '覚醒！踊り子穂乃果ちゃんとトイレで生二回戦！狭い個室でもいたしちゃいまし？', '143.mp4', 'FC2PPV-624857', 1, 1);
INSERT INTO `data_h_video` VALUES (144, 'Ｈ大好きミクを生ハメ調律！パイパンレイヤーの汁だくエロま◯こにどっぷり中出し！', '144.mp4', 'FC2PPV-643167', 1, 1);
INSERT INTO `data_h_video` VALUES (145, 'ミクレイヤー生ハメ調律part2！もっと中出ししても許されるよね！', '145.mp4', 'FC2PPV-647819', 1, 1);
INSERT INTO `data_h_video` VALUES (146, 'ミクレイヤー生ハメ調教２！恋色パイパンミクさんに中出し！-1', '146.mp4', 'FC2PPV-669367', 1, 1);
INSERT INTO `data_h_video` VALUES (147, 'ミクレイヤー生ハメ調教２！恋色パイパンミクさんに中出し！-2', '147.mp4', 'FC2PPV-669367', 1, 1);
INSERT INTO `data_h_video` VALUES (148, 'ミクレイヤー生ハメ調教２＋ 恋色ミクさんにもっと出しちゃいました！-1', '148.mp4', 'FC2PPV-671984', 1, 1);
INSERT INTO `data_h_video` VALUES (149, 'ミクレイヤー生ハメ調教２＋ 恋色ミクさんにもっと出しちゃいました！-2', '149.mp4', 'FC2PPV-671984', 1, 1);
INSERT INTO `data_h_video` VALUES (150, 'アイマス雪歩の夜の営業活動日誌-中出し編- 楽しんじゃいます', '150.mp4', 'FC2PPV-680226', 1, 1);
INSERT INTO `data_h_video` VALUES (151, 'M字開脚！夜の営業活動日誌ぷらす！アイマス雪歩の孕ませ営業', '151.mp4', 'FC2PPV-683265', 1, 1);
INSERT INTO `data_h_video` VALUES (152, 'ウラー！司令官！えっちょっと…中に出しちゃうの？いいけど…', '152.mp4', 'FC2PPV-703754', 1, 1);
INSERT INTO `data_h_video` VALUES (153, 'ウ、ウラー！司令官！えっちするのは、起きてる時だと嬉しいな！', '153.mp4', 'FC2PPV-715022', 1, 1);
INSERT INTO `data_h_video` VALUES (154, 'お兄ちゃん、もっと出して！ユニコーン気持ちよくなりたい！', '154.mp4', 'FC2PPV-720032', 1, 1);
INSERT INTO `data_h_video` VALUES (155, 'ミクレイヤー調教３雪ミクさんとエッチなレッスン！オナニー見学してきました', '155.mp4', 'FC2PPV-727725', 1, 1);
INSERT INTO `data_h_video` VALUES (156, 'ミクレイヤー生ハメ調教３＋ 雪ミクさんにあっへぇピースさせてきました！', '156.mp4', 'FC2PPV-735797', 1, 1);
INSERT INTO `data_h_video` VALUES (157, 'ミクレイヤーさん生ハメ調教４ ご褒美中出し！RQミクさんに、えっちしちゃってきました', '157.mp4', 'FC2PPV-764213', 1, 1);
INSERT INTO `data_h_video` VALUES (158, '甘えっち電ママ編-中に出ちゃったら、お掃除フェラしてくれました！', '158.mp4', 'FC2PPV-816899', 1, 1);
INSERT INTO `data_h_video` VALUES (159, 'ミクレイヤーさん生ハメ調教４ぷらす RQミクさんにまたまた中出ししちゃいました！', '159.mp4', 'FC2PPV-826168', 1, 1);
INSERT INTO `data_h_video` VALUES (160, '19歳新人レイヤーさんと中出し種付けえっち！兄さん…の…大好きっ！', '160.mp4', 'FC2PPV-869600', 1, 1);
INSERT INTO `data_h_video` VALUES (161, 'エッチしたらコレ舐めるのがれでぃ？！ホントなの？司令官', '161.mp4', 'FC2PPV-879712', 1, 1);
INSERT INTO `data_h_video` VALUES (162, '中出しえっち編-おはよー！こんちわー！こんばんはー！Ｈするよー！', '162.mp4', 'FC2PPV-884956', 1, 1);
INSERT INTO `data_h_video` VALUES (163, '雷ママと♪Part2 横になってたので、下のお口と上のお口で遊んじゃいました♡', '163.mp4', 'FC2PPV-966827', 1, 1);
INSERT INTO `data_h_video` VALUES (164, '雷ママと♪司令官っ！私に頼っていいのよ！-中出しえっち編', '164.mp4', 'FC2PPV-935845', 1, 1);
INSERT INTO `data_h_video` VALUES (165, '杏と中出し！19歳JD2回生ちゃんとデレステ杏ステージ衣装でラブえっちちゃいました♪', '165.mp4', 'FC2PPV-946561', 1, 1);
INSERT INTO `data_h_video` VALUES (166, 'ぐったり！中出し編-山風コスで本気汁垂れ流しエッチしちゃいました！', '166.mp4', 'FC2PPV-963665', 1, 1);
INSERT INTO `data_h_video` VALUES (167, 'JD2回生ちゃんとエロマンガ先生コス生中えっち！兄さん…アナルパール…買ってみたの♡', '167.mp4', 'FC2PPV-970408', 1, 1);
INSERT INTO `data_h_video` VALUES (168, 'ＧっぱいさんでオイゲンさんPart3 普通のエッチに飽きてない？トイレ行こっ♪', '168.mp4', 'FC2PPV-991433', 1, 1);
INSERT INTO `data_h_video` VALUES (169, '杏と中出し-Part2-！19歳JD2回生ちゃんとデレステ杏ステージ衣装でラブラブえちえちしゃいました♪', '169.mp4', 'FC2PPV-995497', 1, 1);
INSERT INTO `data_h_video` VALUES (170, 'JD2回ちゃんと神官ちゃん種付けっくすPart2。ゴブリンじゃなくても襲っちゃうぞ♪', '170.mp4', 'FC2PPV-1032803', 1, 1);
INSERT INTO `data_h_video` VALUES (171, '司令官に色々（意味深）されちゃう！G11ちゃんをJD2回ちゃんで！-中出し編', '171.mp4', 'FC2PPV-1042805', 1, 1);
INSERT INTO `data_h_video` VALUES (172, '日常幸子コスでえちえち！JD2回ちゃんでボクかわ幸子に「おら！幸子！孕めぇぇぇぇ！」', '172.mp4', 'FC2PPV-1046668', 1, 1);
INSERT INTO `data_h_video` VALUES (173, '雷ママにい～っぱい癒やされちゃう！Part4 おパンツこき＆アヘ顔ピース欲望ぶつけちゃいました', '173.mp4', 'FC2PPV-1048090', 1, 1);
INSERT INTO `data_h_video` VALUES (174, '美脚さんでアビィちゃんPart2-イケないのだわ。また中に出させたらイケないだわ…', '174.mp4', 'FC2PPV-1051669', 1, 1);
INSERT INTO `data_h_video` VALUES (175, 'WA2000ちゃんPart2！美脚レイヤーさんを色々いぢめつつ求めちゃいました♪', '175.mp4', 'FC2PPV-1055304', 1, 1);
INSERT INTO `data_h_video` VALUES (176, 'スク水中に仕込んで誘惑しちゃうぞ♪幸子コスでJD2回ちゃん2戦目中出し編', '176.mp4', 'FC2PPV-1059170', 1, 1);
INSERT INTO `data_h_video` VALUES (177, 'ぐったり放心Part3-イッてる山風ちゃん逝かせて逝かせて来ました！', '177.mp4', 'FC2PPV-1074033', 1, 1);
INSERT INTO `data_h_video` VALUES (178, 'G11ちゃんをJD2回ちゃんで拘 束！乳首に鈴つけたりちょっとSMしちゃいました', '178.mp4', 'FC2PPV-1071419', 1, 1);
INSERT INTO `data_h_video` VALUES (179, 'JD3回生でえっちプリヤ美遊！清楚制服でえちえちいっぱい中出ししちゃうぞっ！', '179.mp4', 'FC2PPV-1083591', 1, 1);
INSERT INTO `data_h_video` VALUES (180, 'JD3回ちゃんでエロマンガ先生！＠黒覆面編集に襲われる山田エルフちゃん♪-えっち編', '180.mp4', 'FC2PPV-1092877', 1, 1);
INSERT INTO `data_h_video` VALUES (181, '美脚さんとマスターでFG○。メルトリリスコスで本気汁垂れ流しえっち！もちろん中出ししちゃぞ♪-1', '181.mp4', 'FC2PPV-1106123', 1, 1);
INSERT INTO `data_h_video` VALUES (182, '美脚さんとマスターでFG○。メルトリリスコスで本気汁垂れ流しえっち！もちろん中出ししちゃぞ♪-2', '182.mp4', 'FC2PPV-1106123', 1, 1);
INSERT INTO `data_h_video` VALUES (183, 'JD3回ちゃんで秋月♪-えっち編-司令！がんばるとおTNTNもご飯も美味しいですね！', '183.mp4', 'FC2PPV-1123707', 1, 1);
INSERT INTO `data_h_video` VALUES (184, '美脚さんde霞ちゃんPart2。クソ提督ち○ぽなんて負かせてあげるんだからっ！！', '184.mp4', 'FC2PPV-1136466', 1, 1);
INSERT INTO `data_h_video` VALUES (185, ' 美脚さんとプリヤ制服クロエでえっち！清楚系制服に呪い刻まれえちえちしちゃいました', '185.mp4', 'FC2PPV-1139786', 1, 1);
INSERT INTO `data_h_video` VALUES (186, 'JD3回ちゃんでえっち朝潮ちゃん！司令官が言うならこの朝潮えっちまでさせられるんですね', '186.mp4', 'FC2PPV-1152354', 1, 1);
INSERT INTO `data_h_video` VALUES (187, '司令官に色々（意味深）されちゃうPart3！G11ちゃんをJD3回ちゃんで！-首輪中出し編', '187.mp4', 'FC2PPV-1157871', 1, 1);
INSERT INTO `data_h_video` VALUES (188, 'JD3回ちゃんでキャルちゃんバイトPart2！えっ？何？バイト…うん、行くよね？', '188.mp4', 'FC2PPV-1165432', 1, 1);
INSERT INTO `data_h_video` VALUES (189, '美脚モーさんでアポクリファ私服Ver.オレにお城な建物は似合わないだろ…-えっち編', '189.mp4', 'FC2PPV-1178395', 1, 1);
INSERT INTO `data_h_video` VALUES (190, 'JD3回ちゃんでイシュタルさまPart2！とってもとっても乱れちゃったわよっ♪', '190.mp4', 'FC2PPV-1184548', 1, 1);
INSERT INTO `data_h_video` VALUES (191, 'JD3回ちゃんでしぶりん！ふ～んアンタが…蒼伝説始まります-えっち編', '191.mp4', 'FC2PPV-1188090', 1, 1);
INSERT INTO `data_h_video` VALUES (192, 'JD3回ちゃんでしぶりん！ふ～んアンタが…Part2！蒼伝説始まります-えっち編', '192.mp4', 'FC2PPV-1212513', 1, 1);
INSERT INTO `data_h_video` VALUES (193, 'JD3回ちゃんでしぶりん！ふ～んアンタが…！アルファオメガで魅せちゃいます-えっち編', '193.mp4', 'FC2PPV-1219147', 1, 1);
INSERT INTO `data_h_video` VALUES (194, 'Part2クソ提督えっちしたいんでしょっ！…す、好きにしなさいよ！美脚さんであけぼのの！えっち編-1', '194.mp4', 'FC2PPV-1226850', 1, 1);
INSERT INTO `data_h_video` VALUES (195, 'Part2クソ提督えっちしたいんでしょっ！…す、好きにしなさいよ！美脚さんであけぼのの！えっち編-2', '195.mp4', 'FC2PPV-1226850', 1, 1);
INSERT INTO `data_h_video` VALUES (196, '七駆で本気（汁）の朧ちゃん！提督アタシとえっちしてくれる？やった。がんばりますっ！', '196.mp4', 'FC2PPV-1244649', 1, 1);
INSERT INTO `data_h_video` VALUES (197, 'えっち編Part2-美脚さんde英梨々コス！あたしを…拘 束するなんてっ！', '197.mp4', 'FC2PPV-1296227', 1, 1);
INSERT INTO `data_h_video` VALUES (198, '美脚さんとマスターでFG○。ぴっちりΛリリスコスで電マオナニーさせちゃうぞ♪', '198.mp4', 'FC2PPV-1305689', 1, 1);
INSERT INTO `data_h_video` VALUES (199, 'WA2000ちゃんPart4！美脚レイヤーさん生戦術人形義体で立位拘 束えちえちしちゃいました', '199.mp4', 'FC2PPV-1310854', 1, 1);
INSERT INTO `data_h_video` VALUES (200, 'JD3回ちゃんでしぶりん！ふ～んアンタが…！アルファオメガで魅せちゃいます-えっち編Part2', '200.mp4', 'FC2PPV-1313025', 1, 1);
INSERT INTO `data_h_video` VALUES (201, 'JD3回ちゃんでえっち朝潮ちゃん！朝潮…こんなの履かされたら濡れちゃうじゃないですか', '201.mp4', 'FC2PPV-1363919', 1, 1);
INSERT INTO `data_h_video` VALUES (202, 'JD3回ちゃんで秋月Part3♪-えっち編-司令！拘 束されるのもいいです！とっても濡れちゃいます♪', '202.mp4', 'FC2PPV-1435740', 1, 1);
INSERT INTO `data_h_video` VALUES (203, '美脚さんde霞ちゃんPart4。提督、拘 束するなんて！本気になっちゃうじゃない！', '203.mp4', 'FC2PPV-1438672', 1, 1);
INSERT INTO `data_h_video` VALUES (204, '六駆レイヤーさんとエレナママでPart2…いっぱいママちからだしちゃうぞ♪-本気のレザー衣装でえっち編２', '204.mp4', 'FC2PPV-1450961', 1, 1);
INSERT INTO `data_h_video` VALUES (205, '六駆レイヤーさんでこっころまま♪ちっちゃな穴でじゅぽじゅぽ-エッチPart2編', '205.mp4', 'FC2PPV-1500792', 1, 1);
INSERT INTO `data_h_video` VALUES (206, '七駆で本気（汁）の朧ちゃん2！提督アタシとえっちしてくれる？がんばりますっ！-キッチンいたずら編', '206.mp4', 'FC2PPV-1524762', 1, 1);
INSERT INTO `data_h_video` VALUES (207, '続続！美脚モーさんでアポクリファ私服Ver.オレにお城な建物は似合わないだろ…-えっちPart3編', '207.mp4', 'FC2PPV-1527828', 1, 1);
INSERT INTO `data_h_video` VALUES (208, '拘 束えっちっ２！美脚さんとプリヤ制服クロエで清楚系制服！ラブ汁じょぼじょぼ垂れ流しえっちPart3', '208.mp4', 'FC2PPV-1568567', 1, 1);
INSERT INTO `data_h_video` VALUES (209, '美脚さんで明日方舟アーミヤちゃんPart３♪中だしされてストッキング履き直し…えっち垂れ流し編2', '209.mp4', 'FC2PPV-1628265', 1, 1);
INSERT INTO `data_h_video` VALUES (210, '美脚さんでカル○ナオンステージＰａｒｔ３！ぷぃこねノゾミちゃんでアイドル下半身情事', '210.mp4', 'FC2PPV-1655049', 1, 1);
INSERT INTO `data_h_video` VALUES (211, '六駆レイヤーさんでクレーちゃん♪原神キャラで本気汁中出しえっちしちゃうぞ♪', '211.mp4', 'FC2PPV-1674148', 1, 1);
INSERT INTO `data_h_video` VALUES (212, '美脚さんであたらんてPart3 もう…我もえっちにがんばるぞ♪', '212.mp4', 'FC2PPV-1708910', 1, 1);
INSERT INTO `data_h_video` VALUES (213, '「たいがいだぞ！ク□エくん！」美脚さんでぷぃこねなか○し部ク□エえちえち編', '213.mp4', 'FC2PPV-1761438', 1, 1);
INSERT INTO `data_h_video` VALUES (214, 'きみぃ、ボクにこんな青春させるなんて大概だぞ２♪六駆レイヤーさんでなか○し部えちえちユニパイセンPart21', '214.mp4', 'FC2PPV-1835787', 1, 1);
INSERT INTO `data_h_video` VALUES (215, '美脚さんで対魔忍Ｐａｒｔ３！スケベボディのユキカゼちゃん♪制服着替えてべろちゅーえっち編', '215.mp4', 'FC2PPV-1882110', 1, 1);
INSERT INTO `data_h_video` VALUES (216, '六駆レイヤーさんでこっ○ろまま♪水着のわたくしめとえっちしたいのですね。主さま♪', '216.mp4', 'FC2PPV-1926870', 1, 1);
INSERT INTO `data_h_video` VALUES (217, 'リマスター編-中二病コス六花ちゃんでおなにー３Ｐがんばりました', '217.mp4', 'FC2PPV-1005450', 1, 1);
INSERT INTO `data_h_video` VALUES (218, '雪歩でおまとめっ！輝き○向こう側へ♪衣装コスをまとめちゃいましたよっ！-1', '218.mp4', 'FC2PPV-1144070', 1, 1);
INSERT INTO `data_h_video` VALUES (219, '雪歩でおまとめっ！輝き○向こう側へ♪衣装コスをまとめちゃいましたよっ！-2', '219.mp4', 'FC2PPV-1144070', 1, 1);
INSERT INTO `data_h_video` VALUES (220, '雪歩でおまとめっ！輝き○向こう側へ♪衣装コスをまとめちゃいましたよっ！-3', '220.mp4', 'FC2PPV-1144070', 1, 1);
INSERT INTO `data_h_video` VALUES (221, '雪歩でおまとめっ！輝き○向こう側へ♪衣装コスをまとめちゃいましたよっ！-4', '221.mp4', 'FC2PPV-1144070', 1, 1);
INSERT INTO `data_h_video` VALUES (222, 'オマケ別アングルフル画面動画-1', '222.mp4', 'FC2PPV-1636767', 1, 1);
INSERT INTO `data_h_video` VALUES (223, 'オマケ別アングルフル画面動画-2', '223.mp4', 'FC2PPV-1636767', 1, 1);
INSERT INTO `data_h_video` VALUES (224, 'オマケ別アングルフル画面動画-3', '224.mp4', 'FC2PPV-1636767', 1, 1);
INSERT INTO `data_h_video` VALUES (225, '一脸清纯的白丝JK小妹妹在家学习被入室强干，娇嫩菊花捅入巨大肉棒 被颜射后一脸懵', '225.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (226, '逃出大英博物馆第一集', '226.mp4', 'SPJH001', 1, 1);
INSERT INTO `data_h_video` VALUES (227, '逃出大英博物馆第二集', '227.mp4', 'SPJH002', 1, 1);
INSERT INTO `data_h_video` VALUES (228, '逃出大英博物馆第三集', '228.mp4', 'SPJH003', 1, 1);
INSERT INTO `data_h_video` VALUES (229, '精主TV  极品Cos性爱花火女主の调教 淫语玉足挑逗玩弄 又滑又嫩白虎小穴 榨汁中出劲射太爽了', '229.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (230, 'AK-cos', '230.mp4', '706BSKJ-006', 2, 1);
INSERT INTO `data_h_video` VALUES (231, 'PRESTIGE绝对的美少女', '231.mp4', 'ABF-017-UC', 2, 1);
INSERT INTO `data_h_video` VALUES (232, 'Kawaii Presenls', '232.mp4', 'cawd-368-C', 2, 1);
INSERT INTO `data_h_video` VALUES (233, '深田 同妻生活', '233.mp4', 'DVAJ-391', 2, 1);
INSERT INTO `data_h_video` VALUES (234, '俄罗斯-兔女郎', '234.mp4', 'HR-008', 2, 1);
INSERT INTO `data_h_video` VALUES (235, '雷姆 泳装 群P', '235.mp4', 'ID-042', 2, 1);
INSERT INTO `data_h_video` VALUES (236, 'MOODYZ', '236.mp4', 'MIDV-383-UC', 2, 1);
INSERT INTO `data_h_video` VALUES (237, '师生 cos', '237.mp4', 'mudr-197-C', 2, 1);
INSERT INTO `data_h_video` VALUES (238, 'S1 黏糊糊', '238.mp4', 'ssis-313-C', 2, 1);
INSERT INTO `data_h_video` VALUES (239, 'も～っと！彼女のえちえちが止まらない。＃０２「エフ◯ーターのコスでパコパコ。最後は太ももビュッビュ」', '239.mp4', '', 2, 1);
INSERT INTO `data_h_video` VALUES (240, '女仆调教', '240.mp4', '', 2, 1);
INSERT INTO `data_h_video` VALUES (241, 'Maplestar | Patreon 2B', '241.mp4', '', 1, 3);
INSERT INTO `data_h_video` VALUES (242, 'aMaNa', '242.mp4', '', 1, 3);
INSERT INTO `data_h_video` VALUES (243, 'angelYeah', '243.mp4', '', 1, 3);
INSERT INTO `data_h_video` VALUES (244, 'cyberpunk edgeeunners', '244.mp4', '', 1, 3);
INSERT INTO `data_h_video` VALUES (245, 'egyptCat', '245.mp4', '', 1, 3);
INSERT INTO `data_h_video` VALUES (246, 'hug', '246.mp4', '', 1, 3);
INSERT INTO `data_h_video` VALUES (247, 'kousaka kirino', '247.mp4', '', 1, 3);
INSERT INTO `data_h_video` VALUES (248, 'maQiMa', '248.mp4', '', 1, 3);
INSERT INTO `data_h_video` VALUES (249, 'midnightFunNora', '249.mp4', '', 1, 3);
INSERT INTO `data_h_video` VALUES (250, 'Mystery Bang', '250.mp4', '', 1, 3);
INSERT INTO `data_h_video` VALUES (251, 'rabbit', '251.mp4', '', 1, 3);
INSERT INTO `data_h_video` VALUES (252, 'theobrobine', '252.mp4', '', 1, 3);
INSERT INTO `data_h_video` VALUES (253, 'yor', '253.mp4', '', 1, 3);
INSERT INTO `data_h_video` VALUES (254, '派对游戏 Party Games - Stuffy Bunny', '254.mp4', '', 1, 3);
INSERT INTO `data_h_video` VALUES (255, '2B machine', '255.mp4', '', 1, 2);
INSERT INTO `data_h_video` VALUES (256, 'ada-tentacle-nest', '256.mp4', '', 1, 2);
INSERT INTO `data_h_video` VALUES (257, 'aharen', '257.mp4', '', 1, 2);
INSERT INTO `data_h_video` VALUES (258, 'anya', '258.mp4', '', 1, 2);
INSERT INTO `data_h_video` VALUES (259, 'Bambina_電ちん観察日記', '259.mp4', '', 1, 2);
INSERT INTO `data_h_video` VALUES (260, 'bronya toilet', '260.mp4', '', 1, 2);
INSERT INTO `data_h_video` VALUES (261, 'dva glasses', '261.mp4', '', 1, 2);
INSERT INTO `data_h_video` VALUES (262, 'mona x slime', '262.mp4', '', 1, 2);
INSERT INTO `data_h_video` VALUES (263, 'genshin tavern', '263.mp4', '', 1, 2);
INSERT INTO `data_h_video` VALUES (264, 'keli bunny', '264.mp4', '', 1, 2);
INSERT INTO `data_h_video` VALUES (265, 'genshin mona', '265.mp4', '', 1, 2);
INSERT INTO `data_h_video` VALUES (266, 'hutao x slime', '266.mp4', '', 1, 2);
INSERT INTO `data_h_video` VALUES (267, 'fischl x slime', '267.mp4', '', 1, 2);
INSERT INTO `data_h_video` VALUES (268, 'gura', '268.mp4', '', 1, 2);
INSERT INTO `data_h_video` VALUES (269, 'Atomic Heart', '269.mp4', '', 1, 2);
INSERT INTO `data_h_video` VALUES (270, 'marie back', '270.mp4', '', 1, 2);
INSERT INTO `data_h_video` VALUES (271, 'marie white', '271.mp4', '', 1, 2);
INSERT INTO `data_h_video` VALUES (272, '地下アイドル×教辱育録', '272.mp4', '', 2, 2);
INSERT INTO `data_h_video` VALUES (273, '少女机奸', '273.mp4', '', 2, 2);
INSERT INTO `data_h_video` VALUES (274, 'Patreon【浵卡】cos艾莲乔', '274.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (275, '美优酱_Miyu-chan_19才みゆちゃん スリムEカップのパーフェクトボディ', '275.mp4', 'CLA316', 2, 1);
INSERT INTO `data_h_video` VALUES (276, 'qiobnxingcai', '276.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (277, '欧美猫耳+水晶玩具', '277.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (278, '美尻 短发', '278.mp4', 'FC2-PPV-4108813', 1, 1);
INSERT INTO `data_h_video` VALUES (279, '美尻 丸子头', '279.mp4', 'FC2-PPV-4495968', 1, 1);
INSERT INTO `data_h_video` VALUES (280, '宅男晕船外送茶 恋上地雷系外送女', '280.mp4', 'MD-0332', 1, 1);
INSERT INTO `data_h_video` VALUES (281, 'qiobnxingcai TANGREN-MCN', '281.mp4', '', 1, 1);

-- ----------------------------
-- Table structure for data_h_video_tags
-- ----------------------------
DROP TABLE IF EXISTS `data_h_video_tags`;
CREATE TABLE `data_h_video_tags`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'tag名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '数据表\r\n 视频的标签数据' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of data_h_video_tags
-- ----------------------------

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
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '数据表\r\n 用户数据' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of data_user
-- ----------------------------
INSERT INTO `data_user` VALUES ('3e9f30bc-4453-11ef-adaf-38f3abddbccf', 1, 'soraincloud', 'b9ef37275960bd289f066ec496520d5aa6181939a31d774bdb305868663e9b81', '', '2024-07-17 23:42:59', 'NULL.webp', '这是一段SRIC的个人介绍，介绍就是这样，我也不知道该写点什么，但是感觉还是应该写点什么，那就随便写点什么吧。', 1);

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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '权限表\r\n 对主菜单的权限控制' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of permission_main_menu
-- ----------------------------
INSERT INTO `permission_main_menu` VALUES ('a401f45b-9305-11ef-8959-7c10c9c0a516', 'Hfiles', 6, 'H文件菜单');

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
-- Records of permission_request
-- ----------------------------
INSERT INTO `permission_request` VALUES ('1c0e8139-9ea6-11ef-95ed-7c10c9c0a516', 'notes', 9, '笔记模块');
INSERT INTO `permission_request` VALUES ('26378016-9ea6-11ef-95ed-7c10c9c0a516', 'notesManage', 3, '笔记管理模块');
INSERT INTO `permission_request` VALUES ('34faf53d-8e56-11ef-8f3b-7c10c9c0a516', 'libraryManage', 3, '知识库管理模块');
INSERT INTO `permission_request` VALUES ('5e551f18-8e56-11ef-8f3b-7c10c9c0a516', 'library', 10, '知识库模块');
INSERT INTO `permission_request` VALUES ('75e86af4-8e33-11ef-8f3b-7c10c9c0a516', 'userManage', 1, '用户管理模块');
INSERT INTO `permission_request` VALUES ('863dd17a-93d4-11ef-8894-7c10c9c0a516', 'permissionMainMenuManage', 1, '主菜单权限管理模块');
INSERT INTO `permission_request` VALUES ('8966a9ee-8e56-11ef-8f3b-7c10c9c0a516', 'h', 6, 'H内容浏览模块');
INSERT INTO `permission_request` VALUES ('bd9bdc8a-9305-11ef-8959-7c10c9c0a516', 'permissionMainMenu', 10, '主菜单获取');
INSERT INTO `permission_request` VALUES ('c4df9159-8e55-11ef-8f3b-7c10c9c0a516', 'permissionRequest', 1, '接口权限管理模块');
INSERT INTO `permission_request` VALUES ('e8f07304-8d87-11ef-8f3b-7c10c9c0a516', 'user', 10, '基础用户服务模块');

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
-- Records of relation_h_comic_tag
-- ----------------------------

-- ----------------------------
-- Table structure for relation_h_video_tag
-- ----------------------------
DROP TABLE IF EXISTS `relation_h_video_tag`;
CREATE TABLE `relation_h_video_tag`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `tagid` int UNSIGNED NOT NULL COMMENT '对应tag的id',
  `videoid` int UNSIGNED NOT NULL COMMENT '对应视频的id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '关系表\r\n 视频与对应标签的关系' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of relation_h_video_tag
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
