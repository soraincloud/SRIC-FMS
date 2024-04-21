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

 Date: 22/04/2024 03:05:36
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
) ENGINE = InnoDB AUTO_INCREMENT = 271 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

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

-- ----------------------------
-- Table structure for data_h_comic_tags
-- ----------------------------
DROP TABLE IF EXISTS `data_h_comic_tags`;
CREATE TABLE `data_h_comic_tags`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'tag名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of data_h_comic_tags
-- ----------------------------

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
) ENGINE = InnoDB AUTO_INCREMENT = 143 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

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
INSERT INTO `data_h_video` VALUES (136, 'cos-X-UMP45-1', '136.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (137, 'cos-X-UMP45-2', '137.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (138, 'cos-X-UMP45-3', '138.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (139, 'cos-X-UMP45-4', '139.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (140, 'cos-X-WA2000', '140.mp4', 'FC2PPV-1084878', 1, 1);
INSERT INTO `data_h_video` VALUES (141, '白袜伪娘束缚椅炮机飞机杯榨精', '141.mp4', '', 1, 1);
INSERT INTO `data_h_video` VALUES (142, '魅魔利兹', '142.mp4', 'RAS-0179', 1, 1);
INSERT INTO `data_h_video` VALUES (143, '覚醒！踊り子穂乃果ちゃんとトイレで生二回戦！狭い個室でもいたしちゃいまし？', '143.mp4', 'FC2PPV-624857', 1, 1);

-- ----------------------------
-- Table structure for data_h_video_tags
-- ----------------------------
DROP TABLE IF EXISTS `data_h_video_tags`;
CREATE TABLE `data_h_video_tags`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'tag名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of data_h_video_tags
-- ----------------------------

-- ----------------------------
-- Table structure for relation_h_comic_tag
-- ----------------------------
DROP TABLE IF EXISTS `relation_h_comic_tag`;
CREATE TABLE `relation_h_comic_tag`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `tagid` int UNSIGNED NOT NULL COMMENT '对应tag的id',
  `comicid` int UNSIGNED NOT NULL COMMENT '对应comic的id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of relation_h_video_tag
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
