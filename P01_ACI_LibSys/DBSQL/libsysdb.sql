/*
Navicat MySQL Data Transfer

Source Server         : WAMP Local(bear)
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : libsysdb

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-05-23 08:13:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_aci_bookadmin`
-- ----------------------------
DROP TABLE IF EXISTS `t_aci_bookadmin`;
CREATE TABLE `t_aci_bookadmin` (
  `book_name` varchar(250) DEFAULT NULL COMMENT '图书名',
  `book_author` varchar(250) DEFAULT NULL COMMENT '作者',
  `book_publishing` varchar(250) DEFAULT NULL COMMENT '出版社',
  `book_class` varchar(250) DEFAULT NULL COMMENT '图书种类',
  `book_no` varchar(250) DEFAULT NULL COMMENT 'ISBN',
  `create_user` varchar(50) DEFAULT NULL COMMENT '创建人',
  `book_total` int(11) DEFAULT '0' COMMENT '库存总量',
  `book_borrowed` int(11) DEFAULT '0' COMMENT '已借数量',
  `create_date` varchar(50) DEFAULT NULL COMMENT '创建日期',
  `abstract` text COMMENT '概要信息',
  `picture_show` varchar(250) DEFAULT NULL COMMENT '图片',
  `description` text COMMENT '介绍',
  `bookadmin_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`bookadmin_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_aci_bookadmin
-- ----------------------------
INSERT INTO `t_aci_bookadmin` VALUES ('极简欧洲史', '宇宙', '世界图书出版社', '历史', '123-N111', '1', '10', '0', '2017-05-19 14:03:58', null, null, null, '1');
INSERT INTO `t_aci_bookadmin` VALUES ('麦哲伦航海纪', '苏惠玲', '希望出版社', '历史', '123-N112', '1', '10', '0', '2017-05-19 14:05:54', null, null, null, '2');
INSERT INTO `t_aci_bookadmin` VALUES ('未来简史', '尤瓦尔', '中信出版社', '历史', '123-N113', '1', '8', '0', '2017-05-19 14:07:35', null, null, null, '3');
INSERT INTO `t_aci_bookadmin` VALUES ('TensorFlow实战', '黄文坚', '电子工业出版社', '计算机', '224-N211', '5', '5', '0', '2017-05-19 14:14:29', null, null, null, '4');
INSERT INTO `t_aci_bookadmin` VALUES ('盈利的艺术', '亚德里安', '电子工业出版社', '计算机', '224-N213', '1', '5', '0', '2017-05-22 14:35:36', '这是一本非常有意思的商业书。年轻人Steve因为自己的公司陷入危机而焦虑，经圈内人热力推荐，便去向盈利高手赵先生咨询。赵先生很喜欢Steve，与其相约每周上一次课，而课的内容竟是一个个精彩的故事……', '201705220235331782.jpg', '编辑推荐\r\n这是一本非常有意思的商业书。年轻人Steve因为自己的公司陷入危机而焦虑，经圈内人热力推荐，便去向盈利高手赵先生咨询。赵先生很喜欢Steve，与其相约每周上一次课，而课的内容竟是一个个精彩的故事…… \r\n内容简介\r\n这是一本寓言式的商业书，以一位公司陷入困境的年轻创业者斯蒂夫向盈利大师戴维?赵求助的故事为主线，通过问答的方式，探讨了23条&quot盈利之道”，讲述了从解决方案、相对市场份额、交易规模，到时间、周期、新产品、数字等各方面的真知灼见。\r\n作者简介\r\n\r\n　　专职译者，有着十分丰富的翻译经验，曾翻译过多部文学作品，译言古登堡项目负责人，翻译作品语言通俗流畅，文笔优美。 亚德里安·斯莱沃斯基（Adrian Slywotzky），国际管理顾问公司奥纬（Oliver Wyman）的合伙人。获选为伦敦《泰晤士报》五十大商业思想家、《产业周刊》六大影响力的管理思想家，“ 可望达到如同杜拉克在二十世纪的成就：被所有人奉为标竿的管理大师。”\r\n\r\n　　亚德里安·斯莱沃斯基（Adrian Slywotzky），国际管理顾问公司奥纬（Oliver Wyman）的合伙人。他曾获选为伦敦《泰晤士报》五十大商业思想家、《产业周刊》六大影响力的管理思想家之一，被评为“ 可望达到如同杜拉克在二十世纪所获得的成就——被所有人奉为标杆的管理大师。”\r\n　　亚德里安·斯莱沃斯基于1951年生于美国纽约州纽约市。他创作了多本全球畅销书，其中包括《引爆需求: 让顾客无可救药爱上你的6个秘密》（ Demand: Creating What People Love Before They Know They Want It ）、《获利宝典: 创造高利润的营业计（The Profit Zone: How Strategic Business Design Will Lead You to Tomorrows Profits），以及《他们的数位化经营策略（ 获选《商业周刊》年度十大好书之一）、《创造新财富》《创新的原点》与《战略风险管理》等。斯莱沃斯基的作品也可见于《华尔街日报》与《哈佛商业评论》。他曾获邀担任达沃斯世界经济论坛（DavosWorld Economic Forum）、微软执行长高峰会（Microsoft CEO Summit ）、TED创意大会、财星执行长研讨会（Fortune CEO Conference）及其他许多活动的专题演讲者。\r\n目　　录\r\n目录\r\n序 言 vii\r\n第1章 个性化解决方案模式 1\r\n第2章 金字塔模式 11\r\n第3章 多元组合模式 23\r\n第4章 总控台模式 37\r\n第5章 时间盈利模式 51\r\n第6章 “ 杰出范例”模式 65\r\n第7章 乘数效应模式 83\r\n第8章 创业家模式 93\r\n第9章 专业化模式 107\r\n第10章 核心组件模式 119\r\n第11章 事实标准模式 127\r\n第12章 品牌模式 137\r\n显示全部信息\r\n前　　言\r\n9月21日。史蒂夫·加德纳静静地坐在曼哈顿商业区46楼的一间办公室里。\r\n　　办公室里十分安静，只听得见墙上的红木古董挂钟发出沉稳规律的滴答声。时间是周六早上8点15分，斯通菲乐律师事务所的办公室安静得犹如被遗弃了一般。平时这个时候史蒂夫还在熟睡，或者可能在他狭小的SOHO公寓里，一边小口抿着第一杯咖啡，一边飞快地翻阅着《泰晤士报》（Times ）。尽管在大型跨国集团的市中心总部工作已有四年半时间，他一直没有彻底戒掉大学时代的夜猫子生活习惯，一到周末或假日就愉快地“ 原形毕露”。但今天不一样。他听说，周六大清早是唯一能够见到“盈利奥秘的掌控者”——赵戴维的机会。通过不懈努力，并幸运地获得了一两个朋友的引荐，史蒂夫终于挤进赵戴维的交际圈子，所以他大概能揣测到赵戴维拥有哪些独特的知识。\r\n显示全部信息\r\n媒体评论\r\n\r\n这一次，全球畅销书《引爆需求》《获利宝典》的作者将引领你向商业艺术的更高层次进发。\r\n\r\n这是一本精炼又引人入胜的书，书中一位叫Steve的年轻人因为自己的公司陷入危机而焦虑，经圈内人热力推荐，便去向盈利高手赵戴维咨询。赵先生很喜欢Steve，与其相约每周上一次课，而课程的内容竟是一个个精彩的故事……全书23个章节分别呈现了功能强大的23种不同商业模式。你可以学习到那些易被忽视又异常重要且能够帮助企业在任何一种经济环境中生存和壮大的管理法则。你将跟随主人公与活力充沛、热爱挑战的老师展开一场又一场的讨论课，了解你的公司和竞争对手是如何获取利润的；与你所在公司的盈利策略匹配的实践方法；你的企业可以在未来3个月里采取何种具体措施来改善盈利水平等等。\r\n在线试读部分章节\r\n赵和史蒂夫坐在办公室一角的小桌前，赵从办公桌上抓起一本黄色便笺簿，放在了桌子的中央。然后他在第一页纸的右上角，写下了阿拉伯数字“1 ”并绕着“1 ”画了个圈。\r\n　　“这叠便笺有40张， 等到课程结束时，我们应该会剩2张。”他说。赵伸手摸夹克口袋，拿出一支银色的笔，飞快地画了三条线和一个〇，这图看起来是这样的。赵把便笺推到史蒂夫这侧，然后开始讲课。“这些年来，关于如何盈利我思考甚多，也研究了很多成功找到盈利之道的公司。数百家企业里，没有任何两家会完全一样。了解使一家公司变得独一无二的细节至关重要。做些听起来有道理的总结通常没多难，但商业是由具体的案例构成的。我们需要的是能够应用到具体案例的通用准则。30年来，我想我已经找到一些。”\r\n　　“未来几个月，我们会看到二十三种企业盈利的方式。我把他们叫做盈利模式。对于数字‘23 ’，并没有什么神圣可言1。我们可以讨论二十四种或者三十种盈利模式。但目前来说，我已经挑了二十三种我认为特别有趣又重要的来说。个性化解决方案盈利便是这二十三种之一。”\r\n　　“ 那是什么？”史蒂夫问。\r\n　　赵正要开口回应“ 你要沉住气”，但他没有这么说。相反，他停了会，然后说，“让我跟你分享一个关于辉盛（Factset）的故事，这个公司的业务很简单：它向基金管理人出售财务信息。”\r\n价格说明', '5');
INSERT INTO `t_aci_bookadmin` VALUES ('运营前线1：一线运营专家的运营方法、技巧与实践', '兰军（BLUES）', '机械工业出版社', '计算机', '9787111560876', '1', '5', '0', '2017-05-22 14:32:36', '来自BAT等一线互联网运营专家的实践', '201705220232319173.jpg', '内容简介\r\n本书是运营领域的“集大家”之作，由来自腾讯、阿里、百度、金山、迅雷、YY、小米、360等一线互联网公司的39位资深的运营经理共同完成；本书也是运营经理领域的集大成之作，这39位运营经理分享了他们在工作实践中认为有价值和作用的思想、方法和技巧，是国内运营经理智慧和经验的首次大集结。本书在内容形式上进行了创新，全书由25个独立的主题构成，内容涵盖产品需求分析、产品设计、用户体验、产品优化、产品推广、数据分析等运营经理全流程的知识。每一个主题包含“核心观点”“实践案例”“总结”三个部分：“核心观点”是每个主题的方法论，是作者从实践中总结出来的认为对产品经理有价值和作用的思想、方法和技巧；“实践案例”是作者在实践中对这些思想、方法和技巧的具体应用，讲解非常详细；“总结”部分是对观点和案例的补充和升华，目的是帮助读者举一反三。\r\n作者简介\r\n由来自腾讯、迅雷、搜狗、聚美等知名互联网公司的产品经理组成，成功打造了YY、迅雷快传等产品。团队的组织者兰军2009年进入腾讯，历经QQ秀产品中心、SNS产品部，从产品运营成长为高级产品经理；2012年加入YY语音，负责从数据运营到客户端产品；2014年进入迅雷公司，担任迅雷产品总监，负责迅雷云加速与小米产品生态系统的产品合作，还在智能硬件方面有些探索。\r\n目　　录\r\n目　录\r\n前言\r\n第一部分　用户运营\r\n01　运营简史：你想知道及不想知道的一切\r\n运营的四个阶段┃3\r\n运营简史的隐喻┃11\r\n总结┃14\r\n02　运营中的黄金模型：用户金字塔模型\r\n什么是“用户金字塔模型”┃16\r\n“用户金字塔模型”的释义 ┃16\r\n“用户金字塔模型”给运营的6个启示┃18\r\n总结┃21\r\n03　与用户沟通，请避免这6个“坑”！\r\n“坑”1：不注意控制时间┃23\r\n显示全部信息\r\n前　　言\r\n前　言为什么要写这本书在我（兰军）组织国内一线的互联网产品经理们撰写的第一本书—《产品前线》出版之后，收获了意想不到的效果，在行业内产生了一些影响，于是我们就按照原计划着手组织了“前线系列”的第2本书《运营前线》的撰写。同样是120多位报名参与的同行，同样是来自腾讯、阿里、百度、YY语音、迅雷、360、乐视等一线互联网公司，都是奋斗在一线的产品运营经理、运营总监，都是他们在多年工作中的实践提炼。\r\n我做互联网产品方面的工作已经有十多年了，专职做产品运营工作，是2009年从腾讯开始的。当时我在QQ秀产品中心基础产品运营组，专职做QQ秀的数据运营，期间同时也做了很多其他的运营工作：活动运营做过红钻明星见面会；内容运营做过QQ秀的标签运营；用户运营做过QQ秀官方代言人秀哥（虚拟人物）运营等。2012年加入欢聚时代公司，在YY语音基础产品组任职，部门的工作职能是YY语音客户端产品的迭代优化。数据是进行产品优化需求评判的重要标准，我和公司数据平台部门的同事合作，从数据定义开始，共同完善了整个公司的数据运营体系。', '6');
INSERT INTO `t_aci_bookadmin` VALUES ('流畅的Python', '[巴西]卢西亚诺·拉马略（Luciano Ramalho）', '人民邮电出版社', '计算机', '9787115454157', '1', '4', '0', '2017-05-22 13:51:03', 'PSF研究员 知名PyCon演讲者心血之作 全面深入 对Python语言关键特性剖析到位 兼顾Python 3和Python 2', '201705220151008435.jpg', '编辑推荐\r\n流畅的Python 由奋战在Python开发一线近20年的Luciano Ramalho执笔，Victor Stinner、Alex Martelli等Python大咖担纲技术审稿人，从语言设计层面剖析编程细节，兼顾Python 3和Python 2，告诉你Python中不亲自动手实践就无法理解的语言陷阱成因和解决之道，教你写出风格地道的Python代码。 ● Python数据模型：理解为什么特殊方法是对象行为一致的关键。　　 ● 数据结构：充分利用内置类型，理解Unicode文本和字节二象性。 ● 把函数视作对象：把Python函数视作一等对象，并了解这一点对流行的设计模式的影响。 ● 面向对象习惯用法：通过构建类学习引用、可变性、接口、运算符重载和多重继承。　　 ● 控制流程：学习使用上下文管理器、生成器、协程，以及通过concurrent.futures和asyncio包实现的并发。 ● 元编程：理解特性、描述符、类装饰器和元类的工作原理。 \r\n内容简介\r\n流畅的Python 致力于帮助Python开发人员挖掘这门语言及相关程序库的优质特性，避免重复劳动，同时写出简洁、流畅、易读、易维护，并且具有地道Python风格的代码。流畅的Python 尤其深入探讨了Python语言的高级用法，涵盖数据结构、Python风格的对象、并行与并发，以及元编程等不同的方面。\r\n作者简介\r\nLuciano Ramalho，从1998年起就成为了Python程序员。他是Python软件基金会的成员，Python.pro.br（巴西的一家培训公司）的共同所有者，还是巴西diyi个众创空间Garoa Hacker Clube的联合创始人。他领导过多个软件开发团队，还在巴西的媒体、银行和政府部门教授Python课程。 【译者简介】 安道 专注于现代计算机技术的自由翻译，译有《Flask Web 开发》《Python 网络编程攻略》《Ruby on Rails 教程》等书。 个人网站：http: about.ac 。 吴珂 现为Airbnb公司软件工程师，所在团队主要负责开发和维护各类可伸缩、高性能服务，并在Airbnb内推广面向服务的系统架构。在分布式系统、云存储服务和跨平台SDK开发，以及大规模数据处理等方面有多年经验。\r\n目　　录\r\n前言 xvii\r\n第一部分　序幕\r\n第　1 章 Python 数据模型　2\r\n1.1　一摞 Python 风格的纸牌　3\r\n1.2　如何使用特殊方法　6\r\n1.2.1　模拟数值类型　7\r\n1.2.2　字符串表示形式　9\r\n1.2.3　算术运算符　10\r\n1.2.4　自定义的布尔值　10\r\n1.3　特殊方法一览　10\r\n1.4　为什么 len 不是普通方法　12\r\n1.5　本章小结　12\r\n1.6　延伸阅读　13\r\n第二部分　数据结构', '7');
INSERT INTO `t_aci_bookadmin` VALUES ('C++ Primer中文版(第5版)', '(美)李普曼', '电子工业出版社', '计算机', '9787121155352', '1', '6', '0', '2017-05-22 13:39:29', '本书是久负盛名的C++经典教程，其内容是C++大师Stanley B. Lippman丰富的实践经验和C++标准委员会原负责人Josée Lajoie对C++标准深入理解的完美结合，已经帮助全球无数程序员学会了C++。', '201705220139211389.jpg', '本书是久负盛名的C++经典教程，其内容是C++大师Stanley B. Lippman丰富的实践经验和C++标准委员会原负责人Josée Lajoie对C++标准深入理解的完美结合，已经帮助全球无数程序员学会了C++。本版对前一版进行了彻底的修订，内容经过了重新组织，更加入了C++先驱Barbara E. Moo在C++教学方面的真知灼见。既显著改善了可读性，又充分体现了C++语言的进展和当前的业界实践。书中不但新增大量教学辅助内容，还包含大量来自实战的示例和习题。本版为版本。', '8');

-- ----------------------------
-- Table structure for `t_lib_borrow`
-- ----------------------------
DROP TABLE IF EXISTS `t_lib_borrow`;
CREATE TABLE `t_lib_borrow` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `userid` mediumint(8) NOT NULL COMMENT '借阅用户ID',
  `bookid` int(11) NOT NULL COMMENT '借阅图书ID',
  `borrowdate` datetime NOT NULL COMMENT '借阅时间',
  `returndate` datetime NOT NULL COMMENT '归还时间',
  `returnflag` tinyint(2) NOT NULL DEFAULT '0' COMMENT '归还状态标志',
  `expireflag` tinyint(2) NOT NULL DEFAULT '0' COMMENT '过期状态标志',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='借阅信息明细';

-- ----------------------------
-- Records of t_lib_borrow
-- ----------------------------
INSERT INTO `t_lib_borrow` VALUES ('1', '1', '1', '2017-04-06 10:27:55', '2017-05-06 23:59:59', '0', '0');
INSERT INTO `t_lib_borrow` VALUES ('2', '1', '2', '2017-04-06 10:27:55', '2017-05-06 23:59:59', '0', '0');
INSERT INTO `t_lib_borrow` VALUES ('3', '1', '5', '2017-04-06 10:27:55', '2017-05-06 23:59:59', '0', '0');
INSERT INTO `t_lib_borrow` VALUES ('4', '2', '3', '2017-03-06 10:27:55', '2017-04-06 23:59:59', '1', '0');
INSERT INTO `t_lib_borrow` VALUES ('5', '2', '4', '2017-04-06 10:27:55', '2017-05-06 23:59:59', '0', '0');

-- ----------------------------
-- Table structure for `t_sys_member`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_member`;
CREATE TABLE `t_sys_member` (
  `user_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `username` char(100) NOT NULL,
  `password` char(32) NOT NULL,
  `email` char(50) DEFAULT '',
  `group_id` tinyint(3) unsigned DEFAULT '0',
  `is_choose_type` tinyint(1) unsigned DEFAULT '0',
  `open_id` varchar(100) DEFAULT NULL,
  `avatar` varchar(50) DEFAULT NULL,
  `reg_ip` char(15) DEFAULT NULL,
  `reg_time` datetime DEFAULT NULL,
  `last_login_ip` char(15) DEFAULT NULL,
  `last_login_time` datetime DEFAULT NULL,
  `encrypt` varchar(50) DEFAULT NULL,
  `is_lock` tinyint(1) DEFAULT '0',
  `fullname` varchar(50) DEFAULT NULL,
  `qq` varchar(50) DEFAULT NULL,
  `weixin` varchar(50) DEFAULT NULL,
  `is_seller` tinyint(1) DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `is_email_validate` tinyint(1) DEFAULT '0',
  `is_mobile_validate` tinyint(1) DEFAULT '0',
  `mobile` varchar(50) DEFAULT NULL,
  `sex` varchar(2) DEFAULT '0',
  `birthday` date DEFAULT NULL,
  `province_code` varchar(10) DEFAULT NULL,
  `city_code` varchar(10) DEFAULT NULL,
  `district_code` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`(15)),
  KEY `email` (`email`),
  KEY `groupID` (`group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_member
-- ----------------------------
INSERT INTO `t_sys_member` VALUES ('1', 'admin', 'fb469d7ef430b0baf0cab6c436e70375', 'panxiaojun@jtu.edu.cn', '1', '0', null, 'aci.jpg', null, null, '::1', '2017-05-22 14:59:00', null, '0', '潘小熊', '5516448', 'dawang', '1', '2015-03-05 18:12:00', '2015-03-10 22:31:19', '1', '1', '13099999999', '男', '1985-10-21', '310000', '310100', '310118');
INSERT INTO `t_sys_member` VALUES ('2', 'xiaoer', 'f1c0334807a3a51724850170326d3b6e', 'lyhuc@163.com', '2', '0', null, 'nopic.gif', '::1', null, '::1', null, 'wOxmG', '1', '小二', null, null, '0', null, null, '0', '0', '13099999999', '0', null, null, null, null);
INSERT INTO `t_sys_member` VALUES ('5', 'libadmin', '5a9e37955a5ad4fc38aa0ebf57c13e47', 'libadmin@jtu.edu.cn', '2', '0', null, 'nopic.gif', '::1', '2017-05-19 14:10:23', '::1', '2017-05-19 14:10:50', 'CZlhq', '0', '张馆长', null, null, '0', null, null, '0', '0', '13511123456', '0', null, null, null, null);
INSERT INTO `t_sys_member` VALUES ('6', 'student.pan', '6521fb46d5e23d012893cec2bc5e1c05', 'student.pan@jtu.edu.cn', '3', '0', null, 'nopic.gif', '::1', '2017-05-20 00:35:21', null, null, 'RT3eG', '0', '流川枫', null, null, '0', null, null, '0', '0', '13512346987', '0', null, null, null, null);

-- ----------------------------
-- Table structure for `t_sys_member_role`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_member_role`;
CREATE TABLE `t_sys_member_role` (
  `role_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '组ID',
  `role_name` varchar(45) NOT NULL DEFAULT '' COMMENT '组名',
  `type_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '保留',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `description` varchar(200) DEFAULT NULL COMMENT '描述',
  `parent_id` smallint(4) DEFAULT '0',
  `arr_childid` varchar(255) DEFAULT NULL,
  `auto_choose` tinyint(1) NOT NULL DEFAULT '1',
  `arr_userid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of t_sys_member_role
-- ----------------------------
INSERT INTO `t_sys_member_role` VALUES ('1', '超级管理员', '0', '0', '超级管理员', '0', null, '1', null);
INSERT INTO `t_sys_member_role` VALUES ('2', '图书管理员', '0', '0', '图书管理员', '0', null, '1', null);
INSERT INTO `t_sys_member_role` VALUES ('3', '读者', '0', '0', '读者', '0', null, '1', null);

-- ----------------------------
-- Table structure for `t_sys_member_role_priv`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_member_role_priv`;
CREATE TABLE `t_sys_member_role_priv` (
  `role_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `folder` varchar(50) NOT NULL DEFAULT '',
  `controller` varchar(50) NOT NULL DEFAULT '',
  `method` varchar(50) NOT NULL DEFAULT '',
  `data` varchar(50) NOT NULL DEFAULT '',
  `priv_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) DEFAULT '0',
  PRIMARY KEY (`priv_id`),
  KEY `role_id` (`role_id`,`folder`,`controller`,`method`)
) ENGINE=MyISAM AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_member_role_priv
-- ----------------------------
INSERT INTO `t_sys_member_role_priv` VALUES ('2', 'adminpanel', 'bookadmin', 'index', '', '68', '43');
INSERT INTO `t_sys_member_role_priv` VALUES ('2', 'adminpanel', 'manage', 'go_42', '', '67', '42');
INSERT INTO `t_sys_member_role_priv` VALUES ('2', 'adminpanel', 'manage', 'logout', '', '66', '8');
INSERT INTO `t_sys_member_role_priv` VALUES ('2', 'adminpanel', 'profile', 'change_pwd', '', '65', '7');
INSERT INTO `t_sys_member_role_priv` VALUES ('2', 'adminpanel', 'manage', 'index', '', '64', '6');
INSERT INTO `t_sys_member_role_priv` VALUES ('2', 'adminpanel', 'manage', 'go_5', '', '63', '5');
INSERT INTO `t_sys_member_role_priv` VALUES ('2', 'adminpanel', 'manage', 'go_4', '', '62', '4');
INSERT INTO `t_sys_member_role_priv` VALUES ('2', 'adminpanel', 'manage', 'go_1', '', '61', '1');
INSERT INTO `t_sys_member_role_priv` VALUES ('2', 'adminpanel', 'bookadmin', 'add', '', '69', '44');
INSERT INTO `t_sys_member_role_priv` VALUES ('2', 'adminpanel', 'bookadmin', 'edit', '', '70', '45');
INSERT INTO `t_sys_member_role_priv` VALUES ('2', 'adminpanel', 'bookadmin', 'choose', '', '71', '46');
INSERT INTO `t_sys_member_role_priv` VALUES ('2', 'adminpanel', 'bookadmin', 'delete_one', '', '72', '47');
INSERT INTO `t_sys_member_role_priv` VALUES ('2', 'adminpanel', 'bookadmin', 'delete_all', '', '73', '48');
INSERT INTO `t_sys_member_role_priv` VALUES ('2', 'adminpanel', 'bookadmin', 'readonly', '', '74', '49');
INSERT INTO `t_sys_member_role_priv` VALUES ('2', 'adminpanel', 'bookadmin', 'upload', '', '75', '50');

-- ----------------------------
-- Table structure for `t_sys_module_menu`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_module_menu`;
CREATE TABLE `t_sys_module_menu` (
  `menu_id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `menu_name` char(40) NOT NULL DEFAULT '',
  `parent_id` smallint(6) NOT NULL DEFAULT '0',
  `list_order` smallint(6) unsigned NOT NULL DEFAULT '0',
  `is_display` tinyint(1) NOT NULL DEFAULT '1',
  `controller` varchar(50) DEFAULT NULL,
  `folder` varchar(50) DEFAULT NULL,
  `method` varchar(50) DEFAULT NULL,
  `flag_id` varchar(50) NOT NULL DEFAULT '0',
  `is_side_menu` tinyint(1) DEFAULT '0',
  `is_system` tinyint(1) DEFAULT '0',
  `is_works` tinyint(1) DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `css_icon` varchar(50) DEFAULT NULL,
  `arr_parentid` varchar(250) DEFAULT NULL,
  `arr_childid` varchar(250) DEFAULT NULL,
  `is_parent` tinyint(1) DEFAULT '0',
  `show_where` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`menu_id`) USING BTREE,
  KEY `list_order` (`list_order`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_module_menu
-- ----------------------------
INSERT INTO `t_sys_module_menu` VALUES ('1', '首页', '0', '1', '1', 'manage', 'adminpanel', 'go_1', '0', '1', '0', '1', '1', 'home', '0', '1,5,6,7,41,8', '1', '1');
INSERT INTO `t_sys_module_menu` VALUES ('2', '用户管理', '0', '2', '1', 'manage', 'adminpanel', 'go_2', '0', '1', '0', '1', '1', 'street-view', '0', '2,9,31,32,33,34,35,36,37,10,26,27,28,29,30', '1', '1');
INSERT INTO `t_sys_module_menu` VALUES ('3', '栏目管理', '0', '3', '1', 'manage', 'adminpanel', 'go_3', '0', '1', '0', '1', '1', 'list-ol', '0', '3,11,16,17,18,19,20,12,13,14,21,22,23,24,25,39', '1', '1');
INSERT INTO `t_sys_module_menu` VALUES ('4', '扩展模块', '0', '4', '1', 'manage', 'adminpanel', 'go_4', '0', '1', '0', '1', '1', 'dropbox', '0', '4,15,38,42,43,44,45,46,47,48,49,50', '1', '1');
INSERT INTO `t_sys_module_menu` VALUES ('5', '我的', '1', '5', '1', 'manage', 'adminpanel', 'go_5', '0', '1', '0', '1', '1', '', '0,1', '5,6,7,41,8', '1', '1');
INSERT INTO `t_sys_module_menu` VALUES ('6', '控制面板', '5', '6', '1', 'manage', 'adminpanel', 'index', '0', '1', '0', '1', '1', '', '0,1,5', '6', '0', '1');
INSERT INTO `t_sys_module_menu` VALUES ('7', '修改密码', '5', '7', '1', 'profile', 'adminpanel', 'change_pwd', '0', '1', '0', '1', '1', '', '0,1,5', '7', '0', '1');
INSERT INTO `t_sys_module_menu` VALUES ('8', '注销', '5', '8', '1', 'manage', 'adminpanel', 'logout', '0', '1', '0', '1', '1', '', '0,1,5', '8', '0', '1');
INSERT INTO `t_sys_module_menu` VALUES ('16', '栏目列表', '11', '16', '1', 'moduleMenu', 'adminpanel', 'index', '0', '1', '0', '1', '1', '', '0,3,11', '16,17,18,19,20', '1', '1');
INSERT INTO `t_sys_module_menu` VALUES ('9', '管理用户', '2', '9', '1', 'manage', 'adminpanel', 'go_9', '0', '1', '0', '1', '1', '', '0,2', '9,31,32,33,34,35,36,37', '1', '1');
INSERT INTO `t_sys_module_menu` VALUES ('10', '管理用户组', '2', '10', '1', 'manage', 'adminpanel', 'go_10', '0', '1', '0', '1', '1', '', '0,2', '10,26,27,28,29,30', '1', '1');
INSERT INTO `t_sys_module_menu` VALUES ('11', '管理栏目', '3', '11', '1', 'manage', 'adminpanel', 'go_11', '0', '1', '0', '1', '1', '', '0,3', '11,16,17,18,19,20', '1', '1');
INSERT INTO `t_sys_module_menu` VALUES ('12', '管理模块', '3', '12', '1', 'manage', 'adminpanel', 'go_12', '0', '1', '0', '1', '1', '', '0,3', '12,13,14,21,22,23,24,25,39', '1', '1');
INSERT INTO `t_sys_module_menu` VALUES ('13', '已安装模块列表', '12', '13', '1', 'moduleManage', 'adminpanel', 'index', '0', '1', '0', '1', '1', '', '0,3,12', '13', '0', '1');
INSERT INTO `t_sys_module_menu` VALUES ('14', '安装新模块', '12', '14', '1', 'moduleInstall', 'adminpanel', 'index', '0', '1', '0', '1', '1', '', '0,3,12', '14,21,22,23,24,25,39', '1', '1');
INSERT INTO `t_sys_module_menu` VALUES ('15', '模块列表', '4', '15', '1', 'manage', 'adminpanel', 'go_15', '0', '1', '0', '1', '1', '', '0,4', '15,38', '1', '1');
INSERT INTO `t_sys_module_menu` VALUES ('17', '新增', '16', '17', '1', 'moduleMenu', 'adminpanel', 'add', '0', '1', '0', '1', '1', '', '0,3,11,16', '17', '0', '1');
INSERT INTO `t_sys_module_menu` VALUES ('18', '修改', '16', '18', '1', 'moduleMenu', 'adminpanel', 'edit', '0', '1', '0', '1', '1', '', '0,3,11,16', '18', '0', '1');
INSERT INTO `t_sys_module_menu` VALUES ('19', '删除', '16', '19', '1', 'moduleMenu', 'adminpanel', 'delete', '0', '1', '0', '1', '1', '', '0,3,11,16', '19', '0', '1');
INSERT INTO `t_sys_module_menu` VALUES ('20', '设置左侧菜单', '16', '20', '1', 'moduleMenu', 'adminpanel', 'set_menu', '0', '1', '0', '1', '1', '', '0,3,11,16', '20', '0', '1');
INSERT INTO `t_sys_module_menu` VALUES ('21', '安装', '14', '21', '1', 'moduleInstall', 'adminpanel', 'setup', '0', '1', '0', '1', '1', '', '0,3,12,14', '21', '0', '1');
INSERT INTO `t_sys_module_menu` VALUES ('22', '检查', '14', '22', '1', 'moduleInstall', 'adminpanel', 'check', '0', '1', '0', '1', '1', '', '0,3,12,14', '22', '0', '1');
INSERT INTO `t_sys_module_menu` VALUES ('23', '重装', '14', '23', '1', 'moduleInstall', 'adminpanel', 'reinstall', '0', '1', '0', '1', '1', '', '0,3,12,14', '23', '0', '1');
INSERT INTO `t_sys_module_menu` VALUES ('24', '卸载', '14', '24', '1', 'moduleInstall', 'adminpanel', 'uninstall', '0', '1', '0', '1', '1', '', '0,3,12,14', '24', '0', '1');
INSERT INTO `t_sys_module_menu` VALUES ('38', 'Hello Word', '15', '38', '0', 'helloWorld', 'adminpanel', 'index', '0', '1', '0', '1', '1', '', '0,4,15', '38', '0', '1');
INSERT INTO `t_sys_module_menu` VALUES ('25', '删除', '14', '25', '1', 'moduleInstall', 'adminpanel', 'delete', '0', '1', '0', '1', '1', '', '0,3,12,14', '25', '0', '1');
INSERT INTO `t_sys_module_menu` VALUES ('26', '用户组列表', '10', '26', '1', 'role', 'adminpanel', 'index', '0', '1', '0', '1', '1', '', '0,2,10', '26,27,28,29,30', '1', '1');
INSERT INTO `t_sys_module_menu` VALUES ('27', '新增', '26', '27', '1', 'role', 'adminpanel', 'add', '0', '1', '0', '1', '1', '', '0,2,10,26', '27', '0', '1');
INSERT INTO `t_sys_module_menu` VALUES ('28', '编辑', '26', '28', '1', 'role', 'adminpanel', 'edit', '0', '1', '0', '1', '1', '', '0,2,10,26', '28', '0', '1');
INSERT INTO `t_sys_module_menu` VALUES ('29', '删除', '26', '29', '1', 'role', 'adminpanel', 'delete_one', '0', '1', '0', '1', '1', '', '0,2,10,26', '29', '0', '1');
INSERT INTO `t_sys_module_menu` VALUES ('30', '设置权限', '26', '30', '1', 'role', 'adminpanel', 'setting', '0', '1', '0', '1', '1', '', '0,2,10,26', '30', '0', '1');
INSERT INTO `t_sys_module_menu` VALUES ('31', '用户列表', '9', '31', '1', 'user', 'adminpanel', 'index', '0', '1', '0', '1', '1', '', '0,2,9', '31,32,33,34,35,36,37', '1', '1');
INSERT INTO `t_sys_module_menu` VALUES ('32', '新增', '31', '32', '1', 'user', 'adminpanel', 'add', '0', '1', '0', '1', '1', '', '0,2,9,31', '32', '0', '1');
INSERT INTO `t_sys_module_menu` VALUES ('33', '编辑', '31', '33', '1', 'user', 'adminpanel', 'edit', '0', '1', '0', '1', '1', '', '0,2,9,31', '33', '0', '1');
INSERT INTO `t_sys_module_menu` VALUES ('34', '检测用户名', '31', '34', '1', 'user', 'adminpanel', 'check_username', '0', '1', '0', '1', '1', '', '0,2,9,31', '34', '0', '1');
INSERT INTO `t_sys_module_menu` VALUES ('35', '删除', '31', '35', '1', 'user', 'adminpanel', 'delete', '0', '1', '0', '1', '1', '', '0,2,9,31', '35', '0', '1');
INSERT INTO `t_sys_module_menu` VALUES ('36', '锁定/解锁', '31', '36', '1', 'user', 'adminpanel', 'lock', '0', '1', '0', '1', '1', '', '0,2,9,31', '36', '0', '1');
INSERT INTO `t_sys_module_menu` VALUES ('37', '上传头像', '31', '37', '1', 'user', 'adminpanel', 'upload', '0', '1', '0', '1', '1', '', '0,2,9,31', '37', '0', '1');
INSERT INTO `t_sys_module_menu` VALUES ('39', '上传安装包', '14', '39', '1', 'moduleInstall', 'adminpanel', 'index', '0', '1', '0', '1', '1', '', '0,3,12,14', '39', '0', '1');
INSERT INTO `t_sys_module_menu` VALUES ('41', '全局缓存', '5', '7', '1', 'manage', 'adminpanel', 'cache', '0', '1', '0', '1', '1', '', '0,1,5', '41', '0', '1');
INSERT INTO `t_sys_module_menu` VALUES ('42', '管理图书信息管理', '4', '42', '1', 'manage', 'adminpanel', 'go_42', '000003064a', '1', '0', '0', '1', 'book', '0,4', '42,43,44,45,46,47,48,49,50', '1', '1');
INSERT INTO `t_sys_module_menu` VALUES ('43', '图书信息管理列表', '42', '43', '1', 'bookadmin', 'adminpanel', 'index', '000003064b', '1', '0', '0', '1', '', '0,4,42', '43', '0', '1');
INSERT INTO `t_sys_module_menu` VALUES ('44', '新增', '42', '44', '1', 'bookadmin', 'adminpanel', 'add', '000003064c', '1', '0', '0', '1', '', '0,4,42', '44', '0', '1');
INSERT INTO `t_sys_module_menu` VALUES ('45', '修改', '42', '45', '1', 'bookadmin', 'adminpanel', 'edit', '000003064d', '0', '0', '0', '1', '', '0,4,42', '45', '0', '1');
INSERT INTO `t_sys_module_menu` VALUES ('46', '选择弹窗', '42', '46', '0', 'bookadmin', 'adminpanel', 'choose', '000003064e', '0', '0', '0', '1', '', '0,4,42', '46', '0', '1');
INSERT INTO `t_sys_module_menu` VALUES ('47', '删除单个', '42', '47', '0', 'bookadmin', 'adminpanel', 'delete_one', '000003064f', '0', '0', '0', '1', '', '0,4,42', '47', '0', '1');
INSERT INTO `t_sys_module_menu` VALUES ('48', '删除多个', '42', '48', '0', 'bookadmin', 'adminpanel', 'delete_all', '000003064g', '0', '0', '0', '1', '', '0,4,42', '48', '0', '1');
INSERT INTO `t_sys_module_menu` VALUES ('49', '查看', '42', '49', '1', 'bookadmin', 'adminpanel', 'readonly', '000003064h', '0', '0', '0', '1', '', '0,4,42', '49', '0', '1');
INSERT INTO `t_sys_module_menu` VALUES ('50', '上传', '42', '50', '0', 'bookadmin', 'adminpanel', 'upload', '000003064i', '0', '0', '0', '1', '', '0,4,42', '50', '0', '1');

-- ----------------------------
-- Table structure for `t_sys_sessions`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_sessions`;
CREATE TABLE `t_sys_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_sys_sessions
-- ----------------------------
INSERT INTO `t_sys_sessions` VALUES ('c1b2bc6869212f4e19af1692a75460f0684a894b', '::1', '1495253258', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439353235333231333B757365725F69647C733A313A2231223B757365725F66756C6C6E616D657C733A393A22E6BD98E5B08FE7868A223B757365725F6E616D657C733A353A2261646D696E223B67726F75705F69647C733A313A2231223B);
INSERT INTO `t_sys_sessions` VALUES ('dcb916a16c8d375d5941b29723130529393dd094', '::1', '1495251336', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439353235313333353B757365725F69647C733A313A2231223B757365725F66756C6C6E616D657C733A393A22E6BD98E5B08FE7868A223B757365725F6E616D657C733A353A2261646D696E223B67726F75705F69647C733A313A2231223B);
INSERT INTO `t_sys_sessions` VALUES ('b1b6c31f1e7725c63a29c3a350481bdf42a79fac', '::1', '1495250630', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439353235303633303B757365725F69647C733A313A2231223B757365725F66756C6C6E616D657C733A393A22E883A1E5AD90E99485223B757365725F6E616D657C733A343A2274657374223B67726F75705F69647C733A313A2231223B);
INSERT INTO `t_sys_sessions` VALUES ('35ee8d6f45640920511cf24a2e3627827d3f2550', '::1', '1495247617', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439353234373533383B757365725F69647C733A313A2231223B757365725F66756C6C6E616D657C733A393A22E6BD98E5B08FE7868A223B757365725F6E616D657C733A353A2261646D696E223B67726F75705F69647C733A313A2231223B);
INSERT INTO `t_sys_sessions` VALUES ('39c998c54caa70c4da33ef50700f3da721d3c64f', '::1', '1495242452', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439353234323231393B757365725F69647C733A313A2231223B757365725F66756C6C6E616D657C733A393A22E6BD98E5B08FE7868A223B757365725F6E616D657C733A353A2261646D696E223B67726F75705F69647C733A313A2231223B);
INSERT INTO `t_sys_sessions` VALUES ('649db43d28cda2c329cab08bfa94b706e9c10ee2', '::1', '1495241779', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439353234313732393B757365725F69647C733A313A2231223B757365725F66756C6C6E616D657C733A393A22E6BD98E5B08FE7868A223B757365725F6E616D657C733A353A2261646D696E223B67726F75705F69647C733A313A2231223B);
INSERT INTO `t_sys_sessions` VALUES ('37c9e4de5bbd50fdc2e10ae3ecdb1f9d1f8e45b7', '::1', '1495241271', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439353234303937333B757365725F69647C733A313A2231223B757365725F66756C6C6E616D657C733A393A22E6BD98E5B08FE7868A223B757365725F6E616D657C733A353A2261646D696E223B67726F75705F69647C733A313A2231223B);
INSERT INTO `t_sys_sessions` VALUES ('ee51d904d20c7e12e2efe90886c3735bd83e1977', '::1', '1495240972', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439353234303630343B757365725F69647C733A313A2231223B757365725F66756C6C6E616D657C733A393A22E6BD98E5B08FE7868A223B757365725F6E616D657C733A353A2261646D696E223B67726F75705F69647C733A313A2231223B);
INSERT INTO `t_sys_sessions` VALUES ('f5c198fc80baa7ebd427533b9ba017c48192a360', '::1', '1495234281', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439353233343131343B);
INSERT INTO `t_sys_sessions` VALUES ('77d4d2185e9c49ada991fa6555602985ed9bb197', '::1', '1495235226', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439353233343939343B);
INSERT INTO `t_sys_sessions` VALUES ('98c84bf757390c045b5d149928e5fcc05dc2bea5', '::1', '1495235631', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439353233353333343B757365725F69647C733A313A2231223B757365725F66756C6C6E616D657C733A393A22E883A1E5AD90E99485223B757365725F6E616D657C733A343A2274657374223B67726F75705F69647C733A313A2231223B);
INSERT INTO `t_sys_sessions` VALUES ('addb6183fd5fc53358f076588472ca7376bda35f', '::1', '1495236163', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439353233353933313B757365725F69647C733A313A2231223B757365725F66756C6C6E616D657C733A393A22E883A1E5AD90E99485223B757365725F6E616D657C733A343A2274657374223B67726F75705F69647C733A313A2231223B);
INSERT INTO `t_sys_sessions` VALUES ('2e1057e4b3875a26a79693ff1a40655e136f3f89', '::1', '1495238667', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439353233383435303B757365725F69647C733A313A2231223B757365725F66756C6C6E616D657C733A393A22E883A1E5AD90E99485223B757365725F6E616D657C733A343A2274657374223B67726F75705F69647C733A313A2231223B);
INSERT INTO `t_sys_sessions` VALUES ('c91b8430ba45851c6df940f823843770bb672fb9', '::1', '1495238976', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439353233383835333B757365725F69647C733A313A2231223B757365725F66756C6C6E616D657C733A393A22E883A1E5AD90E99485223B757365725F6E616D657C733A343A2274657374223B67726F75705F69647C733A313A2231223B);
INSERT INTO `t_sys_sessions` VALUES ('29ef382b6c5b759a007a425b204813dd95860a5c', '::1', '1495239587', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439353233393537313B757365725F69647C733A313A2231223B757365725F66756C6C6E616D657C733A393A22E883A1E5AD90E99485223B757365725F6E616D657C733A343A2274657374223B67726F75705F69647C733A313A2231223B);
INSERT INTO `t_sys_sessions` VALUES ('a7a38bf3aeebfedf4e19156991048ce65222464d', '::1', '1495240602', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439353234303330323B757365725F69647C733A313A2231223B757365725F66756C6C6E616D657C733A393A22E6BD98E5B08FE7868A223B757365725F6E616D657C733A353A2261646D696E223B67726F75705F69647C733A313A2231223B);
INSERT INTO `t_sys_sessions` VALUES ('7f2eddce8c448c61b485af11af43f41f519a7ecd', '::1', '1495449891', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439353434393632313B757365725F69647C733A313A2231223B757365725F66756C6C6E616D657C733A393A22E6BD98E5B08FE7868A223B757365725F6E616D657C733A353A2261646D696E223B67726F75705F69647C733A313A2231223B);
INSERT INTO `t_sys_sessions` VALUES ('6b99edcbc303c3b24f507dd05809ae4faef84efd', '::1', '1495458545', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439353435383534353B);
INSERT INTO `t_sys_sessions` VALUES ('81653bacb14468feb766566f1896cd65d2780d70', '::1', '1495458996', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439353435383939353B);
INSERT INTO `t_sys_sessions` VALUES ('8a399d429e2db91dc575ed67c81a264171087b10', '::1', '1495459318', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439353435393032303B);
INSERT INTO `t_sys_sessions` VALUES ('23b22f79585e7bdb7fd981fb4a4d866a1c0e9a0c', '::1', '1495459167', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439353435393136373B);
INSERT INTO `t_sys_sessions` VALUES ('eb539ae35be3c4a4a3661981cab83e25eaf6b1d3', '::1', '1495459733', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439353435393433343B);
INSERT INTO `t_sys_sessions` VALUES ('c5a9ffe3d7d99cc2b3e885bc345d7a0595eaa971', '::1', '1495459994', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439353435393733363B757365725F69647C733A313A2231223B757365725F66756C6C6E616D657C733A393A22E6BD98E5B08FE7868A223B757365725F6E616D657C733A353A2261646D696E223B67726F75705F69647C733A313A2231223B);
INSERT INTO `t_sys_sessions` VALUES ('cd986f59106825f71e60e0bbe14a6dc00bfd421f', '::1', '1495460369', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439353436303036313B757365725F69647C733A313A2231223B757365725F66756C6C6E616D657C733A393A22E6BD98E5B08FE7868A223B757365725F6E616D657C733A353A2261646D696E223B67726F75705F69647C733A313A2231223B);
INSERT INTO `t_sys_sessions` VALUES ('b9c7ce38b2b469d849531291fc5eb05553fe2fe4', '::1', '1495460374', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439353436303337303B757365725F69647C733A313A2231223B757365725F66756C6C6E616D657C733A393A22E6BD98E5B08FE7868A223B757365725F6E616D657C733A353A2261646D696E223B67726F75705F69647C733A313A2231223B);
INSERT INTO `t_sys_sessions` VALUES ('54ba4a159a3005bc2116b62c384e1295ec6ac8d2', '::1', '1495461068', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439353436303833303B757365725F69647C733A313A2231223B757365725F66756C6C6E616D657C733A393A22E6BD98E5B08FE7868A223B757365725F6E616D657C733A353A2261646D696E223B67726F75705F69647C733A313A2231223B);
INSERT INTO `t_sys_sessions` VALUES ('94c1320f999ebd1631b98530d4b4f1aa2b3a9616', '::1', '1495461499', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439353436313331393B);
INSERT INTO `t_sys_sessions` VALUES ('dddbf77848c1f031d9b9a54efb8e7486cb405835', '::1', '1495462170', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439353436313738333B);
INSERT INTO `t_sys_sessions` VALUES ('3c4b9c38162ad2bcaacdcef4130ec5e9cf66bb49', '::1', '1495462220', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439353436323232303B);
INSERT INTO `t_sys_sessions` VALUES ('b2715117ec6083b82ccfca8c5e8f1eefc199e8be', '::1', '1495462547', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439353436323534373B);
INSERT INTO `t_sys_sessions` VALUES ('6dd57651d39de8fedb9216cc3a86f59869840870', '::1', '1495463111', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439353436323933383B757365725F69647C733A313A2231223B757365725F66756C6C6E616D657C733A393A22E6BD98E5B08FE7868A223B757365725F6E616D657C733A353A2261646D696E223B67726F75705F69647C733A313A2231223B);
INSERT INTO `t_sys_sessions` VALUES ('a677f044bd270bc130b8870f5f454b469e00e13d', '::1', '1495463269', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439353436333234303B757365725F69647C733A313A2231223B757365725F66756C6C6E616D657C733A393A22E6BD98E5B08FE7868A223B757365725F6E616D657C733A353A2261646D696E223B67726F75705F69647C733A313A2231223B);
INSERT INTO `t_sys_sessions` VALUES ('6d0838c2231bc61157c8c7ee91b79412be7b673e', '::1', '1495463794', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439353436333535313B757365725F69647C733A313A2231223B757365725F66756C6C6E616D657C733A393A22E6BD98E5B08FE7868A223B757365725F6E616D657C733A353A2261646D696E223B67726F75705F69647C733A313A2231223B);
INSERT INTO `t_sys_sessions` VALUES ('d13cb0e838adf6263fd8f0bc017899bec31588dc', '::1', '1495464414', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439353436343131343B757365725F69647C733A313A2231223B757365725F66756C6C6E616D657C733A393A22E6BD98E5B08FE7868A223B757365725F6E616D657C733A353A2261646D696E223B67726F75705F69647C733A313A2231223B);
INSERT INTO `t_sys_sessions` VALUES ('a022836009904fa1df4536235208d8a8e72e1b7d', '::1', '1495464704', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439353436343431393B757365725F69647C733A313A2231223B757365725F66756C6C6E616D657C733A393A22E6BD98E5B08FE7868A223B757365725F6E616D657C733A353A2261646D696E223B67726F75705F69647C733A313A2231223B);
INSERT INTO `t_sys_sessions` VALUES ('0e964ae31460b6709e7385cd42061f2c39b52633', '::1', '1495465175', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439353436343939313B757365725F69647C733A313A2231223B757365725F66756C6C6E616D657C733A393A22E6BD98E5B08FE7868A223B757365725F6E616D657C733A353A2261646D696E223B67726F75705F69647C733A313A2231223B);
INSERT INTO `t_sys_sessions` VALUES ('d2803c3a905fe6d70690760c82f42200ed603b06', '::1', '1495466465', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439353436363131343B757365725F69647C733A313A2231223B757365725F66756C6C6E616D657C733A393A22E6BD98E5B08FE7868A223B757365725F6E616D657C733A353A2261646D696E223B67726F75705F69647C733A313A2231223B);
INSERT INTO `t_sys_sessions` VALUES ('3b00a90b07f0985c238991cbdee8720d4f36ab62', '::1', '1495466781', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439353436363438353B757365725F69647C733A313A2231223B757365725F66756C6C6E616D657C733A393A22E6BD98E5B08FE7868A223B757365725F6E616D657C733A353A2261646D696E223B67726F75705F69647C733A313A2231223B);
INSERT INTO `t_sys_sessions` VALUES ('cb9bf8b00a989ef79755e32447614902445fc8eb', '::1', '1495467141', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439353436363834313B757365725F69647C733A313A2231223B757365725F66756C6C6E616D657C733A393A22E6BD98E5B08FE7868A223B757365725F6E616D657C733A353A2261646D696E223B67726F75705F69647C733A313A2231223B);
INSERT INTO `t_sys_sessions` VALUES ('ca1a29b110e4e4670b18defafc2aba6ccdc45901', '::1', '1495467466', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439353436373138333B757365725F69647C733A313A2231223B757365725F66756C6C6E616D657C733A393A22E6BD98E5B08FE7868A223B757365725F6E616D657C733A353A2261646D696E223B67726F75705F69647C733A313A2231223B);
INSERT INTO `t_sys_sessions` VALUES ('00cf72c6b4a54189a5f122677e80f375c0025f8a', '::1', '1495467875', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439353436373438393B757365725F69647C733A313A2231223B757365725F66756C6C6E616D657C733A393A22E6BD98E5B08FE7868A223B757365725F6E616D657C733A353A2261646D696E223B67726F75705F69647C733A313A2231223B);
INSERT INTO `t_sys_sessions` VALUES ('6b22488985797dab7d5058bc32f678dc2c212d77', '::1', '1495468385', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439353436373935373B757365725F69647C733A313A2231223B757365725F66756C6C6E616D657C733A393A22E6BD98E5B08FE7868A223B757365725F6E616D657C733A353A2261646D696E223B67726F75705F69647C733A313A2231223B);
INSERT INTO `t_sys_sessions` VALUES ('966a0a4ffe0d5e3acfdd7e9b0d5c5f0a598f8e67', '::1', '1495469244', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439353436383430353B757365725F69647C733A313A2231223B757365725F66756C6C6E616D657C733A393A22E6BD98E5B08FE7868A223B757365725F6E616D657C733A353A2261646D696E223B67726F75705F69647C733A313A2231223B);
INSERT INTO `t_sys_sessions` VALUES ('3e605b9bb53041bcedc02bc132fbaa1abd878079', '::1', '1495469549', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439353436393534363B757365725F69647C733A313A2231223B757365725F66756C6C6E616D657C733A393A22E6BD98E5B08FE7868A223B757365725F6E616D657C733A353A2261646D696E223B67726F75705F69647C733A313A2231223B);
INSERT INTO `t_sys_sessions` VALUES ('d8e3b3fc5688f534b4609813b01175b21e21ebbf', '::1', '1495498335', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439353439383235353B);

-- ----------------------------
-- Table structure for `t_sys_times`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_times`;
CREATE TABLE `t_sys_times` (
  `times_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `login_ip` char(15) DEFAULT NULL COMMENT 'ip',
  `login_time` int(10) unsigned DEFAULT NULL,
  `group_id` int(10) unsigned DEFAULT NULL,
  `failure_times` int(10) unsigned DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`times_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_times
-- ----------------------------
