/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50553
 Source Host           : localhost:3306
 Source Schema         : learn

 Target Server Type    : MySQL
 Target Server Version : 50553
 File Encoding         : 65001

 Date: 01/06/2019 19:48:18
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `account` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, '管理员', 'admin', 'admin');

-- ----------------------------
-- Table structure for college
-- ----------------------------
DROP TABLE IF EXISTS `college`;
CREATE TABLE `college`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `intro` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of college
-- ----------------------------
INSERT INTO `college` VALUES (2, '计算机科学与技术', '计算机科学与技术');
INSERT INTO `college` VALUES (3, '信息管理学院', '信息管理学院，信息管理与信息系统');
INSERT INTO `college` VALUES (8, '外国语言学院', '集成英语、俄语、法语、日语、韩语、西班牙语、德语等主流外语语种');

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `college_id` int(11) NOT NULL DEFAULT 0,
  `num` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `intro` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES (1, 'Java Web 程序设计', 2, '80015001', '介绍MVC设计思想，包括JSP+Servet+Java Bean，以及Spring MVC+MyBatis的框架整合开发。');
INSERT INTO `course` VALUES (3, 'SQLServer 2016技术', 2, '80015002', '掌握微软SQLServer 2016数据库的使用以及触发器等开发');
INSERT INTO `course` VALUES (5, '英语高级写作技巧', 8, '70010002', '基于英语写作基础，进阶教授英语写作高级技巧，锻炼学生写作能力。');
INSERT INTO `course` VALUES (6, 'MySQL', 3, '001', 'MySQL数据库');

-- ----------------------------
-- Table structure for course_file
-- ----------------------------
DROP TABLE IF EXISTS `course_file`;
CREATE TABLE `course_file`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '0',
  `course_id` int(11) NULL DEFAULT 0,
  `record_time` datetime NULL DEFAULT NULL,
  `teacher_id` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of course_file
-- ----------------------------
INSERT INTO `course_file` VALUES (6, 'Spring MVC教程.pptx', 5, '2019-03-31 22:50:24', 1);
INSERT INTO `course_file` VALUES (7, '功能说明.doc', 1, '2019-04-17 18:41:15', 1);
INSERT INTO `course_file` VALUES (9, '1. 法医秦明之幸存者.ico', 1, '2019-05-23 22:36:39', 68);
INSERT INTO `course_file` VALUES (10, '3. 铁探[普通话版].ico', 1, '2019-05-23 22:41:10', 68);
INSERT INTO `course_file` VALUES (11, 'Student.xls', 1, '2019-05-28 09:27:39', 68);

-- ----------------------------
-- Table structure for course_video
-- ----------------------------
DROP TABLE IF EXISTS `course_video`;
CREATE TABLE `course_video`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `course_id` int(11) NOT NULL DEFAULT 0,
  `record_time` datetime NOT NULL,
  `teacher_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of course_video
-- ----------------------------
INSERT INTO `course_video` VALUES (9, 'Web开发技术 00_00_00-00_02_00.mp4', 5, '2019-03-31 22:49:57', 1);

-- ----------------------------
-- Table structure for discuss
-- ----------------------------
DROP TABLE IF EXISTS `discuss`;
CREATE TABLE `discuss`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `teacher_id` int(11) NULL DEFAULT NULL,
  `record_time` datetime NULL DEFAULT NULL,
  `course_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of discuss
-- ----------------------------
INSERT INTO `discuss` VALUES (4, '在大学英语六级考试中，看图写作文的语言组织思路是什么？', '大学六级考试作文部分越来越重视看图写作文技巧的考察，从读懂图中所说含义到架构构思，再到具体撰写，应该遵循怎样的思路？', 1, '2019-05-03 10:56:52', 5);
INSERT INTO `discuss` VALUES (5, 'SSM框架的基本概念', 'SSM框架简介 SSM框架，是Spring + Spring MVC + MyBatis的缩写，这个是继SSH之后，目前比较主流的Java EE企业级框架，适用于搭建各种大型的企业级应用系统', 68, '2019-05-27 02:11:58', 1);

-- ----------------------------
-- Table structure for discuss_post
-- ----------------------------
DROP TABLE IF EXISTS `discuss_post`;
CREATE TABLE `discuss_post`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `discuss_id` int(11) NOT NULL DEFAULT 0,
  `student_id` int(11) NOT NULL DEFAULT 0,
  `record_time` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of discuss_post
-- ----------------------------
INSERT INTO `discuss_post` VALUES (6, '看图写作文应当从图中人物或事物关系开始，理解图中所描述的事是关于生活、工作、旅行、哲学等等，搞清楚这些才是理解图文的重要步骤！！！', 4, 1, '2019-03-31 23:00:15');
INSERT INTO `discuss_post` VALUES (7, 'Spring是一个开源框架，Spring是于2003年兴起的一个轻量级的Java开发框架，由Rod Johnson在其著作Expert One-On-One J2EE Development and Design中阐述的部分理念和原型衍生而来。它是为了解决企业应用开发的复杂性而创建的。Spring使用基本的JavaBean来完成以前只可能由EJB完成的事情。然而，Spring的用途不仅限于服务器端的开发。从简单性、可测试性和松耦合的角度而言，任何Java应用都可以从Spring中受益。 简单来说，Spring是一个轻量级的控制反转（IoC）和面向切面（AOP）的容器框架。', 5, 1, '2019-05-27 02:12:48');
INSERT INTO `discuss_post` VALUES (8, 'Spring是一个开源框架，Spring是于2003年兴起的一个轻量级的Java开发框架，由Rod Johnson在其著作Expert One-On-One J2EE Development and Design中阐述的部分理念和原型衍生而来。它是为了解决企业应用开发的复杂性而创建的。Spring使用基本的JavaBean来完成以前只可能由EJB完成的事情。然而，Spring的用途不仅限于服务器端的开发。从简单性、可测试性和松耦合的角度而言，任何Java应用都可以从Spring中受益。 简单来说，Spring是一个轻量级的控制反转（IoC）和面向切面（AOP）的容器框架。', 5, 1, '2019-05-27 02:12:49');
INSERT INTO `discuss_post` VALUES (9, '嗯嗯', 5, 1, '2019-05-28 09:29:36');

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `record_time` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES (1, '关于《大学生学习平台》的启用通知', '请各学院老师、学生注意，由我校开发的《网络教学辅助平台》已经上线，今后将实现在平台上进行资料上传', '2019-05-14 13:59:13');
INSERT INTO `notice` VALUES (4, '关于2019届本科生毕业设计（论文）答辩阶段工作安排的通知', '关于2019届本科生毕业设计（论文）答辩阶段工作安排的通知', '2019-05-23 21:18:55');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `num` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `college_id` int(11) NOT NULL DEFAULT 0,
  `telphone` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `id_card_no` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `gender` int(11) NOT NULL DEFAULT 0,
  `account` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES (1, '郭士轶', '20170402201001', 2, '17603297612', '62209119980712031X', 0, 'gsy', '123');
INSERT INTO `student` VALUES (2, '李二', '#20170402201002', 2, '18219220923', '62292319991231', 1, 'le', '123456.0');
INSERT INTO `student` VALUES (3, '张三', '#20170402201003', 3, '18219220920', '62292319991232', 0, 'zs', '123456.0');
INSERT INTO `student` VALUES (4, '李四', '#20170402201004', 8, '18219220921', '62292319991233', 1, 'ls', '123456.0');
INSERT INTO `student` VALUES (5, '王五', '#20170402201005', 2, '18219220922', '62292319991234', 0, 'ww', '123456.0');
INSERT INTO `student` VALUES (6, '赵六', '#20170402201005', 3, '18219220924', '62292319991235', 0, 'zl', '123456.0');

-- ----------------------------
-- Table structure for student_file
-- ----------------------------
DROP TABLE IF EXISTS `student_file`;
CREATE TABLE `student_file`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of student_file
-- ----------------------------
INSERT INTO `student_file` VALUES (5, 1, 68, 'learn.sql');
INSERT INTO `student_file` VALUES (6, 1, 21, 'TECH_01.xls');

-- ----------------------------
-- Table structure for student_task
-- ----------------------------
DROP TABLE IF EXISTS `student_task`;
CREATE TABLE `student_task`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL DEFAULT 0,
  `task_id` int(11) NOT NULL DEFAULT 0,
  `score` int(11) NOT NULL DEFAULT 0,
  `record_time` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of student_task
-- ----------------------------
INSERT INTO `student_task` VALUES (1, 1, 2, 20, '2019-03-31 20:28:53');
INSERT INTO `student_task` VALUES (2, 1, 2, 60, '2019-03-31 22:40:56');
INSERT INTO `student_task` VALUES (3, 1, 4, 60, '2019-03-31 23:00:57');
INSERT INTO `student_task` VALUES (4, 1, 5, 10, '2019-05-26 18:02:11');
INSERT INTO `student_task` VALUES (5, 1, 5, 20, '2019-05-28 09:29:56');

-- ----------------------------
-- Table structure for task
-- ----------------------------
DROP TABLE IF EXISTS `task`;
CREATE TABLE `task`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_id` int(11) NOT NULL DEFAULT 0,
  `course_id` int(11) NOT NULL DEFAULT 0,
  `record_time` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of task
-- ----------------------------
INSERT INTO `task` VALUES (5, 68, 1, '2019-05-26 00:07:59');

-- ----------------------------
-- Table structure for task_question
-- ----------------------------
DROP TABLE IF EXISTS `task_question`;
CREATE TABLE `task_question`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `item_a` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `item_b` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `item_c` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `item_d` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `answer` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `task_id` int(11) NOT NULL DEFAULT 0,
  `score` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of task_question
-- ----------------------------
INSERT INTO `task_question` VALUES (3, 'MVC三层模式中，C指的是哪一层？', '控制层', '模型层', '视图层', '以上都不是', 'A', 5, 10);
INSERT INTO `task_question` VALUES (4, '以下关于重定向forward说法正确的是？', '重定向时URL不变而且不可传递参数', '重定向时URL会变而且不可传递参数', '重定向时URL不变而且可传递参数', '重定向时URL会变而且可传递参数', 'C', 5, 10);
INSERT INTO `task_question` VALUES (5, '以下关于Http Session会话的说法正确的是？', 'Session对象保存于磁盘中', 'Session存在于服务器内存中', 'Session存在于服务器数据库中', 'session存在于客户端浏览器中', 'B', 5, 10);
INSERT INTO `task_question` VALUES (6, '在MySQL脚本中，查询第一条数据的写法正确的是？', 'LIMIT 1', 'LIMIT 0', 'TOP 1', 'FIRST', 'A', 5, 10);

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `gender` int(11) NOT NULL DEFAULT 0,
  `college_id` int(11) NOT NULL DEFAULT 0,
  `telphone` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `id_card_no` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `account` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `num` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `course_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 89 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES (68, '郭老师', 0, 3, '17603257612', '120133199606080053', 'gls', '111', '001', 1);
INSERT INTO `teacher` VALUES (69, '魏秋月', 1, 2, '18219220923', '62292319991231', 'tech0001', '123456.0', '80016001', 3);
INSERT INTO `teacher` VALUES (70, '陈忠和', 0, 2, '18219220920', '62292319991232', 'tech0002', '123456.0', '80016002', 3);
INSERT INTO `teacher` VALUES (71, '刘伟', 1, 2, '18219220921', '62292319991233', 'tech0003', '123456.0', '80016003', 3);
INSERT INTO `teacher` VALUES (72, '张嘉译', 0, 2, '18219220922', '62292319991234', 'tech0004', '123456.0', '80016004', 3);
INSERT INTO `teacher` VALUES (73, '刘文泽', 0, 2, '18219220924', '62292319991235', 'tech0005', '123456.0', '80016005', 3);
INSERT INTO `teacher` VALUES (74, '蔡伟忠', 0, 2, '18219220925', '62292319991236', 'tech0006', '123456.0', '80016001', 3);
INSERT INTO `teacher` VALUES (75, '杨晓华', 1, 2, '18219220926', '62292319991237', 'tech0007', '123456.0', '80016002', 3);
INSERT INTO `teacher` VALUES (76, '陈涛', 1, 2, '18219220927', '62292319991238', 'tech0008', '123456.0', '80016003', 3);
INSERT INTO `teacher` VALUES (77, '王欢', 0, 2, '18219220928', '62292319991239', 'tech0009', '123456.0', '80016004', 3);
INSERT INTO `teacher` VALUES (78, '钟成军', 1, 2, '18219220929', '62292319991230', 'tech0010', '123456.0', '80016005', 3);
INSERT INTO `teacher` VALUES (79, '吴雨薇', 1, 2, '18219220920', '62292319991211', 'tech0011', '123456.0', '80016001', 3);
INSERT INTO `teacher` VALUES (80, '何中华', 1, 2, '18219220910', '62292319991212', 'tech0012', '123456.0', '80016002', 3);
INSERT INTO `teacher` VALUES (81, '齐昌瑞', 0, 2, '18219220911', '62292319991213', 'tech0013', '123456.0', '80016003', 3);
INSERT INTO `teacher` VALUES (82, '赵卫华', 1, 2, '18219220912', '62292319991214', 'tech0014', '123456.0', '80016004', 3);
INSERT INTO `teacher` VALUES (83, '赵成东', 0, 2, '18219220913', '62292319991215', 'tech0015', '123456.0', '80016005', 3);
INSERT INTO `teacher` VALUES (84, '李志轩', 1, 2, '18219220914', '62292319991216', 'tech0016', '123456.0', '80016001', 3);
INSERT INTO `teacher` VALUES (85, '杨轩', 1, 2, '18219220915', '62292319991217', 'tech0017', '123456.0', '80016002', 3);
INSERT INTO `teacher` VALUES (86, '李云伟', 1, 2, '18219220916', '62292319991218', 'tech0018', '123456.0', '80016003', 3);
INSERT INTO `teacher` VALUES (87, '张秋霞', 1, 2, '18219220917', '62292319991219', 'tech0019', '123456.0', '80016004', 3);
INSERT INTO `teacher` VALUES (88, '杨文丽', 1, 2, '18219220918', '62292319991220', 'tech0020', '123456.0', '80016005', 3);

SET FOREIGN_KEY_CHECKS = 1;
