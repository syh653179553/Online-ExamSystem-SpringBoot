/*
Navicat MySQL Data Transfer

Source Server         : localdb
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : exam1

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2021-01-14 12:39:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `adminId` int(9) NOT NULL AUTO_INCREMENT COMMENT 'ID号',
  `adminName` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '姓名',
  `sex` varchar(2) COLLATE utf8_bin DEFAULT NULL COMMENT '性别',
  `tel` varchar(11) COLLATE utf8_bin DEFAULT NULL COMMENT '电话号码',
  `email` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '电子邮箱',
  `pwd` varchar(16) COLLATE utf8_bin DEFAULT NULL COMMENT '密码',
  `cardId` varchar(18) COLLATE utf8_bin DEFAULT NULL COMMENT '身份证号',
  `role` varchar(1) COLLATE utf8_bin DEFAULT NULL COMMENT '角色(0管理员，1教师，2学生)',
  PRIMARY KEY (`adminId`) USING BTREE,
  KEY `sex` (`sex`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9528 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC COMMENT='管理员信息表';

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('9527', 'admin', '男', '13658377857', '1253838283@qq.com', '123456', '3132', '0');

-- ----------------------------
-- Table structure for exam_manage
-- ----------------------------
DROP TABLE IF EXISTS `exam_manage`;
CREATE TABLE `exam_manage` (
  `examCode` int(9) NOT NULL AUTO_INCREMENT COMMENT '考试编号',
  `description` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '该次考试介绍',
  `source` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '课程名称',
  `paperId` int(10) DEFAULT NULL COMMENT '试卷编号',
  `examDate` datetime DEFAULT NULL COMMENT '考试日期',
  `totalTime` int(3) DEFAULT NULL COMMENT '持续时长',
  `grade` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '年级',
  `term` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '学期',
  `major` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '专业',
  `institute` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '学院',
  `totalScore` int(4) DEFAULT NULL COMMENT '总分',
  `type` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '考试类型',
  `tips` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '考生须知',
  `initiator` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '发起人',
  `launch_date` datetime DEFAULT NULL COMMENT '发起考试的日期',
  PRIMARY KEY (`examCode`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=20190028 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC COMMENT='考试管理表';

-- ----------------------------
-- Records of exam_manage
-- ----------------------------
INSERT INTO `exam_manage` VALUES ('20190002', '2020年上期期末考试', '计算机网络', '1001', '2020-12-21 09:00:00', '120', '2017', '1', '计算机科学与技术', '软件工程学院', '100', '期末考试', '快乐千万条，学习第一条，平时不努力，考试两行泪。', '王大志', '2020-12-24 16:03:03');
INSERT INTO `exam_manage` VALUES ('20190009', '2020年上期期末考试', '操作系统', '1008', '2020-12-21 09:00:00', '90', '2017', '1', '信息工程', '软件工程学院', '100', '期末考试', '快乐千万条，学习第一条，平时不努力，考试两行泪。', '王大志', '2020-12-24 14:03:03');
INSERT INTO `exam_manage` VALUES ('20190020', '2020年上期期末考试', '数据库', '1014', '2021-01-24 00:00:00', '120', '2017', null, '计算机科学与技术', '信息工程学院', '100', '期末考试', '11111', '王大志', '2020-12-29 16:03:03');
INSERT INTO `exam_manage` VALUES ('20190022', '数据查询', '数据库', '1016', '2021-01-31 00:00:00', '120', '2017', null, '计算机科学与技术', '信息工程学院', '100', '章节练习', '多做练习', '王大志', '2021-01-05 15:34:11');
INSERT INTO `exam_manage` VALUES ('20190023', '数据分析', '数据库', '1017', '2021-01-31 00:00:00', '120', '2017', null, '计算机科学与技术', '信息工程学院', '100', '章节练习', '多做练习', '王大志', '2021-01-05 07:44:32');
INSERT INTO `exam_manage` VALUES ('20190024', '结构设计', '数据库', '1018', '2021-01-31 00:00:00', '60', '2017', null, '计算机科学与技术', '信息工程学院', '20', '章节练习', '多做练习', '王大志', '2021-01-05 07:55:35');
INSERT INTO `exam_manage` VALUES ('20190027', '期末考试', '数据库', '1019', '2021-01-31 00:00:00', '120', '2017', null, '计算机科学与技术', '信息工程学院', '100', '期末考试', '312', 'admin', '2021-01-06 07:31:48');

-- ----------------------------
-- Table structure for fill_question
-- ----------------------------
DROP TABLE IF EXISTS `fill_question`;
CREATE TABLE `fill_question` (
  `questionId` int(9) NOT NULL AUTO_INCREMENT COMMENT '试题编号',
  `subject` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '考试科目',
  `question` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '试题内容',
  `answer` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '正确答案',
  `analysis` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '题目解析',
  `score` int(2) DEFAULT '2' COMMENT '分数',
  `level` varchar(5) COLLATE utf8_bin DEFAULT NULL COMMENT '难度等级',
  `section` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '所属章节',
  `questions_setter` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '出题人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `state` int(1) DEFAULT NULL COMMENT '（0:废止，1:启用）',
  `wrong_count` int(10) unsigned zerofill DEFAULT NULL,
  PRIMARY KEY (`questionId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10108 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC COMMENT='填空题题库';

-- ----------------------------
-- Records of fill_question
-- ----------------------------
INSERT INTO `fill_question` VALUES ('10000', '计算机网络', '从计算机网络系统组成的角度看，计算机网络可以分为()和()', '通信子网资源子网', null, '2', '3', null, null, null, null, '0000000023');
INSERT INTO `fill_question` VALUES ('10001', '计算机网络', '收发电子邮件，属于ISO/OSI RM中 ()层的功能。', '应用', null, '2', '1', null, null, null, null, '0000000032');
INSERT INTO `fill_question` VALUES ('10002', '计算机网络', '在TCP/IP层次模型中与OSI参考模型第四层相对应的主要协议有()和(),其中后者提供无连接的不可靠传输服', 'TCP（传输控制协议） UDP（用户数据报协议） ', null, '2', '2', null, null, null, null, '0000000013');
INSERT INTO `fill_question` VALUES ('10003', '计算机网络', '网络层包，包头占多数()位。', '20', '20', '2', '1', '网络层', null, null, null, '0000000012');
INSERT INTO `fill_question` VALUES ('10004', '数据库', '用线性控查法解决碰撞。现从空的散列表开始，依次插入关键码值190，89，217，75，则最后一个关键码33的地址为()。', '9', '用线性控查法解决碰撞。现从空的散列表开始，依次插入关键码值190，89，217，75，则最后一个关键码33的地址为9', '2', '2', '结构设计', null, null, null, '0000000012');
INSERT INTO `fill_question` VALUES ('10005', '数据库', '设待排序关键码序列为(25,18,9,33,67,82,53,95,12,70)，要按关键码值递增的顺序进行排序，采取以第一个关键码为分界元素的快速排序法，第一趟完成后关键码33被放到了第()个位置。', '2', '设待排序关键码序列为(25,18,9,33,67,82,53,95,12,70)，要按关键码值递增的顺序进行排序，采取以第一个关键码为分界元素的快速排序法，第一趟完成后关键码33被放到了第2个位置。', '2', '2', '结构设计', null, null, null, '0000000013');
INSERT INTO `fill_question` VALUES ('10006', '数据库', '一个程序在一个数据集合上的一次执行过程称为()，它是系统进行资源分配的独立单位。', '进程', '一个程序在一个数据集合上的一次执行过程称为进程，它是系统进行资源分配的独立单位。', '2', '2', '数据分析', null, null, null, '0000000014');
INSERT INTO `fill_question` VALUES ('10008', '数据库', '在一类设备上模拟另一类设备，例如用高速磁盘模拟慢速打印机，则被模拟的设备称为()。', '虚拟设备', '在一类设备上模拟另一类设备，例如用高速磁盘模拟慢速打印机，则被模拟的设备称为虚拟设备', '2', '2', '数据分析', null, null, null, '0000000012');
INSERT INTO `fill_question` VALUES ('10009', '数据库', '在关系数据中，参照关系和被参照关系是以()相关联的两个关系。', '数据分析', '在关系数据中，参照关系和被参照关系是以数据分析相关联的两个关系。', '2', '2', '数据分析', null, null, null, '0000000013');
INSERT INTO `fill_question` VALUES ('10010', '数据库', '在嵌入式SQL中，为了区分SQL语句和主语言语句，在每一个SQL语句的前面加前缀()。', 'EXEC', '在嵌入式SQL中，为了区分SQL语句和主语言语句，在每一个SQL语句的前面加前缀EXEC', '2', '2', '数据查询', null, null, null, '0000000041');
INSERT INTO `fill_question` VALUES ('10011', '数据库', '关系数据模型由关系数据结构、关系操作集合和()3大要素组成。', '完整性约束', 'null', '2', '2', '数据查询', null, null, null, null);
INSERT INTO `fill_question` VALUES ('10012', '数据库', '通常，自然连接的两个运算对象关系R和S具有公共属性，如果关系R和S没有公共属性，那么它们的自然连接就等同于()。', '内连接', '通常，自然连接的两个运算对象关系R和S具有公共属性，如果关系R和S没有公共属性，那么它们的自然连接就等同于内连接', '2', '2', '数据查询', null, null, null, null);
INSERT INTO `fill_question` VALUES ('10013', '数据库', 'IBM商务智能解决方案的基本结构包括()、多维分析模型和前台分析工具三个部分。', '数据仓库', 'IBM商务智能解决方案的基本结构包括数据仓库、多维分析模型和前台分析工具三个部分。', '2', '2', '数据查询', null, null, null, '0000000012');
INSERT INTO `fill_question` VALUES ('10014', '数据库', 'Oracle数据库系统中负责客户机与服务器之间网络通信的模块是()。', 'SQL*Net', 'Oracle数据库系统中负责客户机与服务器之间网络通信的模块是SQL*Net', '2', '2', '数据查询', null, null, null, null);
INSERT INTO `fill_question` VALUES ('10015', '数据库', '被中止的事务对数据库所做的任何改变必须撤销，这称作事务的()。', '回滚', '被中止的事务对数据库所做的任何改变必须撤销，这称作事务的回滚', '2', '2', '结构设计', null, null, null, '0000000012');
INSERT INTO `fill_question` VALUES ('10016', '数据库', '为了保证对故障恢复的支持，登记日志记录时必须遵循的原则是()原则。', '同一', '为了保证对故障恢复的支持，登记日志记录时必须遵循的原则是同一原则。', '2', '2', '结构设计', null, null, null, null);
INSERT INTO `fill_question` VALUES ('10017', '数据库', 'Annstrong公理系统的3条推理规则是()、增广律和传递律。', '自反', 'Annstrong公理系统的3条推理规则是自反、增广律和传递律。', '2', '2', '结构设计', null, null, null, null);
INSERT INTO `fill_question` VALUES ('10018', '数据库', '如果关系模式R的属性之间不存在非平凡且非函数依赖的多值依赖，则R的规范化程序达到了()。', 'BCNF', '如果关系模式R的属性之间不存在非平凡且非函数依赖的多值依赖，则R的规范化程序达到了BCNF', '2', '2', '数据查询', null, null, null, null);
INSERT INTO `fill_question` VALUES ('10019', '数据库', '子类的对象拥有其超类的对象的全部属性和方法，称为子类对超类的()。', '继承', '子类的对象拥有其超类的对象的全部属性和方法，称为子类对超类的继承', '2', '2', '结构设计', null, null, null, null);
INSERT INTO `fill_question` VALUES ('10020', '数据库', '计算机网络是由多台计算机互联而成，为保证网络中计算机间的数据交换，要求计算机在交换数据的过程中遵守相应的网络协议，一个网络协议由语法、()和时序3个要素组成。', '语义', '算机网络是由多台计算机互联而成，为保证网络中计算机间的数据交换，要求计算机在交换数据的过程中遵守相应的网络协议，一个网络协议由语法、语义和时序3个要素组成。', '2', '2', '结构设计', null, null, null, null);
INSERT INTO `fill_question` VALUES ('10021', '数据库', '电子邮件程序向邮件服务器发送邮件时，使用的协议是()。', 'SMTP', '电子邮件程序向邮件服务器发送邮件时，使用的协议是SMTP。', '2', '2', '结构设计', null, null, null, null);
INSERT INTO `fill_question` VALUES ('10022', '数据库', '对于给出的一组仅w={5,6,8,12}，通过霍夫曼算法求出的扩充二叉树的带权外部路径长度为()。', '118', '对于给出的一组仅w={5,6,8,12}，通过霍夫曼算法求出的扩充二叉树的带权外部路径长度为118', '2', '2', '结构设计', null, null, null, null);
INSERT INTO `fill_question` VALUES ('10023', '数据库', '设散列表的地址空间为0到18，散列函数为h(k)=k mod', '1', '设散列表的地址空间为0到18，散列函数为h(k)=k mod', '2', '2', '结构设计', null, null, null, null);
INSERT INTO `fill_question` VALUES ('10024', '数据库', '虚拟存储管理系统中，在进行地址映射时，若所需页面不在内存，则产生()中断。 ', '缺页', '虚拟存储管理系统中，在进行地址映射时，若所需页面不在内存，则产生中断。', '2', '2', '数据分析', null, null, null, null);
INSERT INTO `fill_question` VALUES ('10107', '计算机网络', '网络层中，IP数据报头占()位。', '20', '20', '2', '1', '网络层', null, '2021-01-04 12:45:47', '1', null);

-- ----------------------------
-- Table structure for judge_question
-- ----------------------------
DROP TABLE IF EXISTS `judge_question`;
CREATE TABLE `judge_question` (
  `questionId` int(9) NOT NULL AUTO_INCREMENT COMMENT '试题编号',
  `subject` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '考试科目',
  `question` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '试题内容',
  `answer` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '正确答案',
  `analysis` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '题目解析',
  `score` int(2) DEFAULT '2' COMMENT '分数',
  `level` varchar(1) COLLATE utf8_bin DEFAULT NULL COMMENT '难度等级',
  `section` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '所属章节',
  `question_setter` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '出题人',
  `update_time` datetime DEFAULT NULL,
  `state` int(1) DEFAULT NULL COMMENT '试题状态（0:废止,1:启用）',
  `wrong_count` int(10) DEFAULT NULL,
  PRIMARY KEY (`questionId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10014 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC COMMENT='判断题题库表';

-- ----------------------------
-- Records of judge_question
-- ----------------------------
INSERT INTO `judge_question` VALUES ('10001', '计算机网络', '与有线网相比,无线网的数据传输率一般相对较慢', 'T', null, '2', '1', '', null, null, null, '10');
INSERT INTO `judge_question` VALUES ('10002', '计算机网络', 'OSI参考模型中,不同节点的同等层具有不同的功能', 'F', null, '2', '1', null, null, null, null, '12');
INSERT INTO `judge_question` VALUES ('10003', '计算机网络', '普通电脑不能作为服务器', 'F', null, '2', '1', null, null, null, null, '12');
INSERT INTO `judge_question` VALUES ('10004', '数据库', '日志文件用于存放恢复数据库用的所有日志信息，每个数据库至少拥有一个日志文件，也可以拥有多个日志文件，扩展名ldf', 'T', null, '2', '2', '结构设计', null, null, null, '12');
INSERT INTO `judge_question` VALUES ('10005', '数据库', '使用INSERT命令一次只能插入一行数据。', 'F', null, '2', '2', '数据查询', null, null, null, '23');
INSERT INTO `judge_question` VALUES ('10006', '数据库', '已使用DROP TABLE除去删除表，若要删除表上的视图，必须通过使用DROP VIEW手工删除。', 'T', null, '2', '2', '数据查询', null, null, null, '13');
INSERT INTO `judge_question` VALUES ('10007', '数据库', 'SQL Server存储过程能够立即访问数据库。', 'T', null, '2', '2', '结构设计', null, null, null, '43');
INSERT INTO `judge_question` VALUES ('10008', '数据库', '两个空值相比较的结果是未知。', 'T', null, '2', '2', '数据查询', null, null, null, '12');
INSERT INTO `judge_question` VALUES ('10009', '数据库', '在INSERT语句中，VALUES列表中的表达式的数量，必须匹配列表中的列数，表达式的数据类型必须可以和表格中对应各列的数据类型兼容。', 'T', null, '2', '2', '结构设计', null, null, null, '12');
INSERT INTO `judge_question` VALUES ('10010', '数据库', '如果定义视图的FROM子句包括多张表，并且视图中列来自多张表，则不能用DML语句通过视图操纵数据。', 'T', null, '2', '2', '数据查询', null, null, null, '21');
INSERT INTO `judge_question` VALUES ('10011', '数据库', '在sysdatabases中，还记录着存储过程中每个参数的信息。', 'T', null, '2', '2', '结构设计', null, null, null, '12');
INSERT INTO `judge_question` VALUES ('10012', '数据库', ' 在SELECT语句中，当使用ORDER BY子句时，一定要使用GROUP BY子句。', 'F', null, '2', '2', '数据查询', null, null, null, '21');
INSERT INTO `judge_question` VALUES ('10013', '数据库', '由于索引是独立的，删除表时，与该表相关的索引并不被删除。', 'T', null, '2', '2', '数据查询', null, null, null, null);

-- ----------------------------
-- Table structure for multi_question
-- ----------------------------
DROP TABLE IF EXISTS `multi_question`;
CREATE TABLE `multi_question` (
  `questionId` int(9) NOT NULL AUTO_INCREMENT COMMENT '试题编号',
  `subject` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '考试科目',
  `question` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '问题题目',
  `answerA` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '选项A',
  `answerB` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '选项B',
  `answerC` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '选项C',
  `answerD` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '选项D',
  `rightAnswer` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '正确答案',
  `analysis` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '题目解析',
  `score` int(2) DEFAULT '2' COMMENT '分数',
  `section` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '所属章节',
  `level` varchar(1) COLLATE utf8_bin DEFAULT NULL COMMENT '难度等级',
  `question_setter` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `state` int(1) DEFAULT NULL COMMENT '试题状态（0:废止,1:启用）',
  `wrong_count` int(10) DEFAULT NULL,
  PRIMARY KEY (`questionId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10033 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC COMMENT='选择题题库表';

-- ----------------------------
-- Records of multi_question
-- ----------------------------
INSERT INTO `multi_question` VALUES ('10000', '计算机网络', 'DNS 服务器和DHCP服务器的作用是（）', '将IP地址翻译为计算机名，为客户机分配IP地址', '将IP地址翻译为计算机名、解析计算机的MAC地址', '将计算机名翻译为IP地址、为客户机分配IP地址', '将计算机名翻译为IP地址、解析计算机的MAC地址', 'C', null, '2', '应用层', '2', null, null, null, '12');
INSERT INTO `multi_question` VALUES ('10001', '计算机网络', 'HTTP协议通常使用什么协议进行传输（）', 'ARP', 'DHCP', 'UDP', 'TCP', 'D', null, '2', '应用层', '2', null, null, null, '12');
INSERT INTO `multi_question` VALUES ('10002', '数据库', '设在SQL Server2008某数据库中有图书表(书号，书名，出版日期，单价)，其中“书号”是主码。现要查询2015年1月份出版的单价最高的前三本图书的详细信息。下列查询语句中能正确完成该查询要求的是（　　）。', 'SELECT*TOP 3 FROM图书表WHERE出版Et期BETWEEN’2015/1/1′AND′2015/1/31′ORDER BY单价DESC', 'SELECT TOP 3*FROM图书表WHERE出版日期BETWEEN#2015/1/1#AND#2015/1/31#ORDER BY单价DESC', 'SELECT TOP 3*FROM图书表WHERE出版日期BETWEEN’2015/1/1′AND′2015/1/31′ORDER BY单价DESC', 'SELECT木TOP 3 FROM图书表WHERE出版日期BETWEEN#2015/1/1#AND#2015/1/31#ORDER BY单价DESC', 'C', '选项A、D的语法格式不正确，TOP 3应该放在*之前，选项B的时间格式不正确。故答案为C项。', '2', '数据分析', '2', null, null, null, null);
INSERT INTO `multi_question` VALUES ('10003', '计算机网络', '查看DNS缓存记录的命令（）', 'ipconfig/displaydns', 'nslookup', 'ipconfig/release', 'ipconfig/flushdns', 'A', null, '2', '应用层', '3', null, null, null, '14');
INSERT INTO `multi_question` VALUES ('10004', '数据库', '设在SQL Server 2008中，有如下创建分区函数的语句：CREATE PARTITl0N FUNCTION PF1(int) AS RANGE RIGHT FOR VALUES(1，100，200)该语句的作用是（　　）。', '创建了4个分区，各分区的取值范围分别是：分区1：小于等于1 分区2：大于1且小于等于100 分区3：大于100且小于等于200 分区4：大于200', '创建了4个分区，各分区的取值范围分别是：分区1：小于1 分区2：大于等于1且小于100 分区3：大于等于100且小于200 分区4：大于等于200', '创建了2个分区，各分区的取值范围分别是：分区1：大于1且小于等于100 分区2：大于100且小于等于200', '创建了2个分区，各分区的取值范围分别是：分区1：大于等于1且小于100 分区2：大于等于100且小于200', 'B', 'CREATE PARTITION FUNCTION PF1(int)AS RANGE RIGHT FOR VALUES(……n)：其中……n用于指定分区的值得数目，所创建的分区数等于n+1。本题中n值分别为1、100、200，因此可以创建4个分区。由于采用了right关键字，在指定分区间隔值是由数据库引擎按升序从左到右排列时，指定边界值处于右侧，即1，100，200属于右侧，因此可以推断出分区的取值范围分别是(0，1)，[1，100)，[100，200)，[200，∞)。故答案为B项。', '2', '数据分析', '2', null, null, null, '9');
INSERT INTO `multi_question` VALUES ('10005', '数据库', '下列关于需求分析过程的描述，错误的是（　　）。', '标识问题', '用IDEF2建立需求模型', '用DFD描述需求', '确认需求', 'B', '需求分析过程包括标识问题、建立需求模型、描述需求、确认需求。其中DFD和IDEF0可用于建立需求模型；而IDEF2用于系统模拟，建立动态模型。故答案为B项。\r\n', '2', '数据分析', '2', null, null, null, '21');
INSERT INTO `multi_question` VALUES ('10006', '数据库', '下列关于SQL Server 2008数据库中PRIMARY文件组的说法，正确的是（　　）。', '一个数据库中可以有多个PRIMARY文件组', '第一个日志文件也必须存放在PRIMARY文件组中', '次要数据文件不能存放在PRIMARY文件组中', 'PRIMARY是系统定义好的一个文件组，主要数据文件必须存放在PRIMARY文件组中', 'D', '主(PRIMARY)文件组是系统定义好的一个文件组，它包含主要数据文件和任何没有明确分配给其他文件组的其他数据文件。系统表的所有页均分配在主文件组中。日志文件不包括在文件组内，日志文件和数据文件是分开管理的。数据库中只有一个主文件组，但是可以有多个用户定义的文件组。故答案为D项。\r\n', '2', '数据分析', '2', null, null, null, '21');
INSERT INTO `multi_question` VALUES ('10007', '数据库', '数据库优化工作中，下列有关增加派生性冗余列方法的说法，正确的是（　　）。', '该方法一般不能减少聚合函数的使用', '该方法一般可以减少查询时的连接操作', '该方法一般可减少数据排序带来的资源消耗', '该方法实施后的关系模式一般符合第三范式要求', 'B', '派生性冗余列是指表中增加的列由表中的一些数据项经过计算生成。它的作用是在查询时减少连接操作，避免使用聚合函数。由于增加了派生性冗余字段，破坏了规划化原则。故答案为B项。', '2', '数据分析', '2', null, null, null, null);
INSERT INTO `multi_question` VALUES ('10008', '数据库', '数据库应用系统内部结构一般分为静态结构与动态结构。下列关于UML中系统内部结构的说法，错误的是（　　）。', '通信图也称为协作图，用于表示对象之间的联系以及对象间发送和接收的消息', '类图主要表达的是问题领域的概念模型，用于表达抽象概念的名称、属性、行为及关系等系统中的静态结构', '顺序图主要用于描述系统内对象之间的消息发送与接收序列，其主要目的是表达对象与对象之间沟通与合作的方式，属于系统的动态模型', '通信图和顺序图都是交互图，从不同的侧面描述系统的动态结构，顺序图强调的是空间，通信图强调的是时间', 'D', '顺序图强调的是时间，通信图强调的是空间。故答案为D项。', '2', '数据分析', '2', null, null, null, '8');
INSERT INTO `multi_question` VALUES ('10009', '数据库', '下列关于SQL Server 2008中数据库用户的说法，正确的是（　　）。', '一个数据库用户可以对应多个登录账户', 'sa是系统定义的一个数据库用户', '当没有为数据库用户授权时，该用户默认具有该数据库用户数据的查询权', '除了guest外，每个数据库用户都必须有对应的登录账户\r\n', 'D', 'Guest是SQL Server中的一个特殊的数据库用户，在实际中经常作为数据库的匿名访问者使用。sa是系统定义的一个数据库登录账户。一个登录账户可以映射为多个数据库中的用户。当登录账户成为数据库中的合法用户之后，该账户除了具有一些系统视图的查询权限之外，并不对数据库中的用户数据和对象具有任何操作权限。故答案为D项。\r\n', '2', '数据分析', '2', null, null, null, '12');
INSERT INTO `multi_question` VALUES ('10010', '数据库', '在分布式数据库的数据分配中，若所有全局数据有且只有一份，他们被分割成若干切片，每个片段被分配在一个特定场地上，则该策略属于（　　）。', '集中式', '分割式', '全复制式', '混合式', 'B', '数据分配方式有四种：①集中式，所有数据片段都安排在同一个场地上；②分割式，所有数据只有一份，它被分割成若干逻辑片段，每个逻辑片段被指派在一个特定的场地上；③全复制式：数据在每个场地重复存储。也就是每个场地上都有一个完整的数据副本；④混合式：全局数据被分为若干个数据子集，每个子集都被安排在一个或多个不同的场地上，但是每个场地未必保存所有数据。这是一种介乎于分割式和全复制式之间的分配方式。\r\n', '2', '结构设计', '2', null, null, null, '14');
INSERT INTO `multi_question` VALUES ('10011', '数据库', '下列关于概念数据模型的说法，错误的是（　　）。', '概念数据模型并不依赖于具体的计算机系统和数据库管理系统', '概念数据模型便于用户理解，是数据库设计人员与用户交流的工具，主要用于数据库设计', '概念数据模型不仅描述了数据的属性特征，而且描述了数据应满足的完整性约束条件', '概念数据模型是现实世界到信息世界的第一层抽象，强调语义表达功能', 'C', '概念数据模型主要用来描述世界的概念化结构，它使数据库设计人员在设计的初始阶段摆脱计算机系统及DBMS的具体技术问题，集中精力分析数据以及数据之间的联系等，与具体的数据库管理系统无关，所以没有描述数据的完整性约束条件。\r\n', '2', '结构设计', '2', null, null, null, null);
INSERT INTO `multi_question` VALUES ('10012', '数据库', '在SQL Server 2008的某数据库中，设U1用户是R1角色中的成员，现已授予R1角色对T表具有SELECT和DENY UPDATE权限，同时授予了U1用户对T表具有INSERT和UP-DATE权限，则U1用户最终对T表具有的权限是（　　）。', 'SELECT和INSERT', 'INSERT和UPDATE', 'SELECT、INSERT和UPDATE', 'INSERT', 'A', '当用户的权限与其所在的角色的权限发生冲突时，以角色的权限为标准。', '2', '结构设计', '2', null, null, null, '9');
INSERT INTO `multi_question` VALUES ('10013', '数据库', '在SELECT语句中，以下有关ORDER BY子句的叙述中不正确的是（　　）。', 'ORDER BY子句可以对多个列进行排序', 'SELECT语句中，ORDER BY只能在所有其他子句之后作为最后一个子句出现', '子查询也可以使用ORDER BY子句', '在视图中可以使用ORDER BY子句', 'C', '0RDER BY语句用于对结果集进行排序：①ORDER BY语句用于根据指定的列对结果集进行排序；②ORDER BY语句默认按照升序对记录进行排序。ORDER BY可以对多个列进行排序，此时的排序是嵌套的；ORDER BY语句只能作为其他子句之后的最后一个子句出现；视图中也可以使用ORDER BY语句；子查询语句中是不能使用ORDER BY子句的。', '2', '结构设计', '2', null, null, null, null);
INSERT INTO `multi_question` VALUES ('10014', '数据库', '数据库系统的三级模式结构和二层映像功能提供了数据的逻辑独立性和物理独立性。下列提供逻辑独立性的是（　　）。', '外模式/模式映像', '模式/内模式映像', '内模式/外模式映像', '模式/模式映像', 'A', '数据库的三级模式由外模式、模式、内模式构成。外模式是用户可见的部分数据的存在形式；模式可以等价为全体数据的逻辑结构且用户不可见，是三级模式的中间部分；内模式对应数据库的物理结构和存储方式。当模式改变时，由数据库管理员对各个外模式/模式的映像作相应的改变，但是外模式可以不变。应用程序是依据数据的外模式编写的，从而应用程序不必修改，因此，外模式/模式映像保证了数据与程序的逻辑独立性。', '2', '结构设计', '2', null, null, null, '12');
INSERT INTO `multi_question` VALUES ('10015', '数据库', '在并行数据库中，有关系R(A，B)和S(A，C)，需要将它们根据A属性拆分到不同的磁盘上。现有查询SELECT B FROM R，S WHERE R．A=S．A。下列拆分方式中最适合该查询的是（　　）。', '轮转法', '散列划分', '范围划分', '列表划分\r\n', 'B', '轮转法：对关系顺序扫描，将第i个元组存储到标号为Di mod n的磁盘上，该方式保证了元组在多个磁盘上均匀分布。散列划分：选定一个值域为{0，1，…，n-1}的散列函数，对关系中的元组基于划分属性进行散列，如果散列函数返回i，则将其存储到第i个磁盘。范围划分：根据表中某个属性取值区间划分成不同的子区间，然后根据表中的属性值所属的不同区间将表分成不同的子表。根据属性A对表进行散列划分，然后在每个划分内部执行select语句，会大幅提高查询效率。', '2', '结构设计', '2', null, null, null, '12');
INSERT INTO `multi_question` VALUES ('10030', '数据库', '在UML中，用例模型是把满足用户需求的功能表示出来的工具。下列关于用例模型的说法，错误的是（　　）。', '用例代表的是一个完整的功能，是动作的集合', '用例用椭圆形表示，位于系统边界的外部', '用例间的扩展关系用于描述一个已有用例及在其基础上增加新动作形成的用例间的关系', '用例间的组合关系用于描述一个包及其组成用例间的关系', 'B', '在UML中，用例用椭圆形表示，用例位于系统边界的内部，故B选项说法错误。', '2', '数据分析', '2', null, null, null, '11');
INSERT INTO `multi_question` VALUES ('10031', '数据库', '在进行事务设计时，如果把多个小事务合并成一个大事务来执行，则下列关于这种做法所带来影响的叙述，正确的是（　　）。', '提高了事务的并发度', '提高了发生活锁的可能性', '提高了发生死锁的可能性', '提高了系统的事务吞吐率', 'C', '多个小事务合并成大事务，会增加占有锁的时间，可能会造成大量阻塞事务，甚至会产生死锁。故答案为C项。', '2', '数据分析', '2', null, null, null, '11');
INSERT INTO `multi_question` VALUES ('10032', '数据库', '下列数据库结构设计中，包含对关系模式进行规范化处理工作的是（　　）。', '数据库概念结构设计', '数据库逻辑结构设计', '数据库存取结构设计', '数据库物理结构设计', 'B', '关系模式的设计、规范化处理属于数据库逻辑结构设计的内容。故答案为B项。', '2', '数据分析', '2', null, null, null, null);

-- ----------------------------
-- Table structure for paper_manage
-- ----------------------------
DROP TABLE IF EXISTS `paper_manage`;
CREATE TABLE `paper_manage` (
  `paperId` int(9) DEFAULT NULL COMMENT '试卷编号',
  `questionType` int(1) DEFAULT NULL COMMENT '题目类型',
  `questionId` int(9) DEFAULT NULL COMMENT '题目编号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC COMMENT='试卷管理表';

-- ----------------------------
-- Records of paper_manage
-- ----------------------------
INSERT INTO `paper_manage` VALUES ('1014', '1', '10030');
INSERT INTO `paper_manage` VALUES ('1014', '1', '10014');
INSERT INTO `paper_manage` VALUES ('1014', '1', '10008');
INSERT INTO `paper_manage` VALUES ('1014', '1', '10031');
INSERT INTO `paper_manage` VALUES ('1014', '1', '10015');
INSERT INTO `paper_manage` VALUES ('1014', '1', '10007');
INSERT INTO `paper_manage` VALUES ('1014', '1', '10009');
INSERT INTO `paper_manage` VALUES ('1014', '1', '10012');
INSERT INTO `paper_manage` VALUES ('1014', '1', '10032');
INSERT INTO `paper_manage` VALUES ('1014', '1', '10002');
INSERT INTO `paper_manage` VALUES ('1014', '1', '10005');
INSERT INTO `paper_manage` VALUES ('1014', '1', '10011');
INSERT INTO `paper_manage` VALUES ('1014', '1', '10006');
INSERT INTO `paper_manage` VALUES ('1014', '1', '10013');
INSERT INTO `paper_manage` VALUES ('1014', '1', '10010');
INSERT INTO `paper_manage` VALUES ('1014', '1', '10004');
INSERT INTO `paper_manage` VALUES ('1014', '2', '10020');
INSERT INTO `paper_manage` VALUES ('1014', '2', '10015');
INSERT INTO `paper_manage` VALUES ('1014', '2', '10016');
INSERT INTO `paper_manage` VALUES ('1014', '2', '10017');
INSERT INTO `paper_manage` VALUES ('1014', '2', '10022');
INSERT INTO `paper_manage` VALUES ('1014', '2', '10021');
INSERT INTO `paper_manage` VALUES ('1014', '2', '10006');
INSERT INTO `paper_manage` VALUES ('1014', '2', '10018');
INSERT INTO `paper_manage` VALUES ('1014', '2', '10014');
INSERT INTO `paper_manage` VALUES ('1014', '2', '10009');
INSERT INTO `paper_manage` VALUES ('1014', '2', '10008');
INSERT INTO `paper_manage` VALUES ('1014', '2', '10005');
INSERT INTO `paper_manage` VALUES ('1014', '2', '10012');
INSERT INTO `paper_manage` VALUES ('1014', '2', '10019');
INSERT INTO `paper_manage` VALUES ('1014', '2', '10013');
INSERT INTO `paper_manage` VALUES ('1014', '2', '10011');
INSERT INTO `paper_manage` VALUES ('1014', '2', '10010');
INSERT INTO `paper_manage` VALUES ('1014', '2', '10023');
INSERT INTO `paper_manage` VALUES ('1014', '2', '10024');
INSERT INTO `paper_manage` VALUES ('1014', '2', '10004');
INSERT INTO `paper_manage` VALUES ('1014', '3', '10011');
INSERT INTO `paper_manage` VALUES ('1014', '3', '10008');
INSERT INTO `paper_manage` VALUES ('1014', '3', '10012');
INSERT INTO `paper_manage` VALUES ('1014', '3', '10010');
INSERT INTO `paper_manage` VALUES ('1014', '3', '10013');
INSERT INTO `paper_manage` VALUES ('1014', '3', '10006');
INSERT INTO `paper_manage` VALUES ('1014', '3', '10009');
INSERT INTO `paper_manage` VALUES ('1014', '3', '10005');
INSERT INTO `paper_manage` VALUES ('1014', '3', '10007');
INSERT INTO `paper_manage` VALUES ('1014', '3', '10004');
INSERT INTO `paper_manage` VALUES ('1001', '1', '10001');
INSERT INTO `paper_manage` VALUES ('1001', '1', '10000');
INSERT INTO `paper_manage` VALUES ('1001', '1', '10003');
INSERT INTO `paper_manage` VALUES ('1001', '2', '10000');
INSERT INTO `paper_manage` VALUES ('1001', '2', '10001');
INSERT INTO `paper_manage` VALUES ('1001', '2', '10107');
INSERT INTO `paper_manage` VALUES ('1001', '2', '10003');
INSERT INTO `paper_manage` VALUES ('1001', '2', '10002');
INSERT INTO `paper_manage` VALUES ('1001', '3', '10002');
INSERT INTO `paper_manage` VALUES ('1001', '3', '10001');
INSERT INTO `paper_manage` VALUES ('1001', '3', '10003');
INSERT INTO `paper_manage` VALUES ('1016', '1', '10005');
INSERT INTO `paper_manage` VALUES ('1016', '1', '10015');
INSERT INTO `paper_manage` VALUES ('1016', '1', '10032');
INSERT INTO `paper_manage` VALUES ('1016', '1', '10008');
INSERT INTO `paper_manage` VALUES ('1016', '1', '10011');
INSERT INTO `paper_manage` VALUES ('1016', '2', '10015');
INSERT INTO `paper_manage` VALUES ('1016', '2', '10018');
INSERT INTO `paper_manage` VALUES ('1016', '2', '10004');
INSERT INTO `paper_manage` VALUES ('1016', '2', '10014');
INSERT INTO `paper_manage` VALUES ('1016', '2', '10008');
INSERT INTO `paper_manage` VALUES ('1016', '3', '10011');
INSERT INTO `paper_manage` VALUES ('1016', '3', '10010');
INSERT INTO `paper_manage` VALUES ('1016', '3', '10009');
INSERT INTO `paper_manage` VALUES ('1016', '3', '10004');
INSERT INTO `paper_manage` VALUES ('1016', '3', '10008');
INSERT INTO `paper_manage` VALUES ('1017', '1', '10011');
INSERT INTO `paper_manage` VALUES ('1017', '1', '10032');
INSERT INTO `paper_manage` VALUES ('1017', '1', '10010');
INSERT INTO `paper_manage` VALUES ('1017', '1', '10031');
INSERT INTO `paper_manage` VALUES ('1017', '1', '10009');
INSERT INTO `paper_manage` VALUES ('1017', '2', '10012');
INSERT INTO `paper_manage` VALUES ('1017', '2', '10010');
INSERT INTO `paper_manage` VALUES ('1017', '2', '10008');
INSERT INTO `paper_manage` VALUES ('1017', '2', '10021');
INSERT INTO `paper_manage` VALUES ('1017', '2', '10016');
INSERT INTO `paper_manage` VALUES ('1017', '3', '10004');
INSERT INTO `paper_manage` VALUES ('1017', '3', '10012');
INSERT INTO `paper_manage` VALUES ('1017', '3', '10009');
INSERT INTO `paper_manage` VALUES ('1017', '3', '10007');
INSERT INTO `paper_manage` VALUES ('1017', '3', '10006');
INSERT INTO `paper_manage` VALUES ('1018', '1', '10032');
INSERT INTO `paper_manage` VALUES ('1018', '1', '10014');
INSERT INTO `paper_manage` VALUES ('1018', '1', '10008');
INSERT INTO `paper_manage` VALUES ('1018', '1', '10011');
INSERT INTO `paper_manage` VALUES ('1018', '1', '10007');
INSERT INTO `paper_manage` VALUES ('1018', '2', '10019');
INSERT INTO `paper_manage` VALUES ('1018', '2', '10011');
INSERT INTO `paper_manage` VALUES ('1018', '2', '10012');
INSERT INTO `paper_manage` VALUES ('1018', '2', '10006');
INSERT INTO `paper_manage` VALUES ('1018', '2', '10013');
INSERT INTO `paper_manage` VALUES ('1018', '3', '10012');
INSERT INTO `paper_manage` VALUES ('1018', '3', '10006');
INSERT INTO `paper_manage` VALUES ('1018', '3', '10009');
INSERT INTO `paper_manage` VALUES ('1018', '3', '10011');
INSERT INTO `paper_manage` VALUES ('1018', '3', '10010');
INSERT INTO `paper_manage` VALUES ('1019', '1', '10009');
INSERT INTO `paper_manage` VALUES ('1019', '1', '10030');
INSERT INTO `paper_manage` VALUES ('1019', '1', '10012');
INSERT INTO `paper_manage` VALUES ('1019', '1', '10004');
INSERT INTO `paper_manage` VALUES ('1019', '1', '10014');
INSERT INTO `paper_manage` VALUES ('1019', '1', '10015');
INSERT INTO `paper_manage` VALUES ('1019', '1', '10007');
INSERT INTO `paper_manage` VALUES ('1019', '1', '10011');
INSERT INTO `paper_manage` VALUES ('1019', '1', '10005');
INSERT INTO `paper_manage` VALUES ('1019', '1', '10006');
INSERT INTO `paper_manage` VALUES ('1019', '2', '10013');
INSERT INTO `paper_manage` VALUES ('1019', '2', '10022');
INSERT INTO `paper_manage` VALUES ('1019', '2', '10017');
INSERT INTO `paper_manage` VALUES ('1019', '2', '10024');
INSERT INTO `paper_manage` VALUES ('1019', '2', '10020');
INSERT INTO `paper_manage` VALUES ('1019', '2', '10010');
INSERT INTO `paper_manage` VALUES ('1019', '2', '10004');
INSERT INTO `paper_manage` VALUES ('1019', '2', '10005');
INSERT INTO `paper_manage` VALUES ('1019', '2', '10019');
INSERT INTO `paper_manage` VALUES ('1019', '2', '10023');
INSERT INTO `paper_manage` VALUES ('1019', '3', '10010');
INSERT INTO `paper_manage` VALUES ('1019', '3', '10013');
INSERT INTO `paper_manage` VALUES ('1019', '3', '10012');
INSERT INTO `paper_manage` VALUES ('1019', '3', '10011');
INSERT INTO `paper_manage` VALUES ('1019', '3', '10007');
INSERT INTO `paper_manage` VALUES ('1019', '3', '10004');
INSERT INTO `paper_manage` VALUES ('1019', '3', '10008');
INSERT INTO `paper_manage` VALUES ('1019', '3', '10006');
INSERT INTO `paper_manage` VALUES ('1019', '3', '10005');
INSERT INTO `paper_manage` VALUES ('1019', '3', '10009');

-- ----------------------------
-- Table structure for score
-- ----------------------------
DROP TABLE IF EXISTS `score`;
CREATE TABLE `score` (
  `scoreId` int(9) NOT NULL AUTO_INCREMENT COMMENT '分数编号',
  `examCode` int(9) DEFAULT NULL COMMENT '考试编号',
  `studentId` int(9) DEFAULT NULL COMMENT '学号',
  `subject` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '课程名称',
  `ptScore` int(5) DEFAULT NULL COMMENT '平时成绩',
  `etScore` int(5) DEFAULT NULL COMMENT '期末成绩',
  `score` int(5) DEFAULT NULL COMMENT '总成绩',
  `answerDate` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '答题日期',
  PRIMARY KEY (`scoreId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC COMMENT='成绩管理表';

-- ----------------------------
-- Records of score
-- ----------------------------
INSERT INTO `score` VALUES ('4', '20190001', '20174084', '计算机网络', null, '70', null, '2020-12-03');
INSERT INTO `score` VALUES ('14', '20190002', '20174084', '数据库理论', null, '78', null, '2020-12-03');
INSERT INTO `score` VALUES ('15', '20190002', '20174084', '数据库理论', null, '80', null, '2020-12-08');
INSERT INTO `score` VALUES ('16', '20190002', '20174084', '数据库理论', null, '83', null, '2020-12-10');
INSERT INTO `score` VALUES ('17', '20190001', '20174084', '计算机网络', null, '0', null, '2020-12-23');
INSERT INTO `score` VALUES ('18', '20190001', '20174084', '计算机网络', null, '0', null, '2020-12-24');
INSERT INTO `score` VALUES ('19', '20190013', '20174084', '测试', null, '0', null, '2020-12-24');
INSERT INTO `score` VALUES ('20', '20190001', '20174084', '计算机网络', null, '2', null, '2020-12-24');
INSERT INTO `score` VALUES ('21', '20190001', '20174084', '计算机网络', null, '0', null, '2020-12-25');
INSERT INTO `score` VALUES ('49', '20190027', '20174084', '数据库', null, '0', null, '2021-01-07');

-- ----------------------------
-- Table structure for section
-- ----------------------------
DROP TABLE IF EXISTS `section`;
CREATE TABLE `section` (
  `sectionId` int(9) NOT NULL AUTO_INCREMENT,
  `sectionName` varchar(10) DEFAULT NULL,
  `subjectId` int(9) DEFAULT NULL,
  PRIMARY KEY (`sectionId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of section
-- ----------------------------
INSERT INTO `section` VALUES ('1', '网络层', '1');
INSERT INTO `section` VALUES ('2', '传输层', '1');
INSERT INTO `section` VALUES ('3', '应用层', '1');
INSERT INTO `section` VALUES ('4', '数据分析', '2');
INSERT INTO `section` VALUES ('5', '数据查询', '2');
INSERT INTO `section` VALUES ('6', '结构设计', '2');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `studentId` int(9) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `studentName` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '姓名',
  `grade` varchar(4) COLLATE utf8_bin DEFAULT NULL COMMENT '年级',
  `major` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '专业',
  `clazz` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '班级',
  `institute` varchar(30) COLLATE utf8_bin DEFAULT NULL COMMENT '学院',
  `tel` varchar(11) COLLATE utf8_bin DEFAULT NULL COMMENT '电话号码',
  `email` varchar(30) COLLATE utf8_bin DEFAULT NULL COMMENT '电子邮件',
  `pwd` varchar(16) COLLATE utf8_bin DEFAULT NULL COMMENT '密码',
  `cardId` varchar(18) COLLATE utf8_bin DEFAULT NULL COMMENT '身份证号',
  `sex` varchar(2) COLLATE utf8_bin DEFAULT NULL COMMENT '性别',
  `role` varchar(1) COLLATE utf8_bin DEFAULT '2' COMMENT '角色(0管理员，1教师，2学生)',
  PRIMARY KEY (`studentId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=20174085 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC COMMENT='学生信息表';

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('20174001', '小王', '2017', '计算机科学与技术', '2', '信息工程学院', '13585439532', 'gblw@163.com', '123456', '3412312', '男', '2');
INSERT INTO `student` VALUES ('20174084', 'student', '2017', '计算机科学与技术', '2', '信息工程学院', '13658377857', '13658377857@sina.cn', '123456', '124123124535', '男', '2');

-- ----------------------------
-- Table structure for subject
-- ----------------------------
DROP TABLE IF EXISTS `subject`;
CREATE TABLE `subject` (
  `subjectid` varchar(20) DEFAULT NULL,
  `sname` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of subject
-- ----------------------------
INSERT INTO `subject` VALUES ('1', '计算机网络');
INSERT INTO `subject` VALUES ('2', '数据库');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `teacherId` int(9) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `teacherName` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '姓名',
  `institute` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '学院',
  `sex` varchar(2) COLLATE utf8_bin DEFAULT NULL COMMENT '性别',
  `tel` varchar(11) COLLATE utf8_bin DEFAULT NULL COMMENT '电话号码',
  `email` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '邮箱',
  `pwd` varchar(16) COLLATE utf8_bin DEFAULT NULL COMMENT '密码',
  `cardId` varchar(18) COLLATE utf8_bin DEFAULT NULL COMMENT '身份证号',
  `type` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '职称',
  `role` varchar(1) COLLATE utf8_bin DEFAULT NULL COMMENT '角色（0管理员，1教师，2学生）',
  PRIMARY KEY (`teacherId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=20081003 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC COMMENT='教师信息表';

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('20081001', '张', '信息工程学院', '男', '13598458442', '13598458442@163.com', '123456', '423423283498', '讲师', '1');
INSERT INTO `teacher` VALUES ('20081002', '王大志', '信息工程学院', '男', '1231221312', '1231221312@163.com', '123456', '24241234', '讲师', '1');
