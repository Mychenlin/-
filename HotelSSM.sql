drop database if exists db_hotel_ssm;
CREATE DATABASE db_hotel_ssm default character set utf8 collate utf8_general_ci;
use db_hotel_ssm;
SET NAMES utf8;
SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `account`
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `realName` varchar(32) DEFAULT NULL,
  `idCard` varchar(32) CHARACTER SET utf8 DEFAULT NULL,
  `mobile` varchar(16) DEFAULT NULL,
  `address` varchar(128) DEFAULT NULL,
  `status` int(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES ('1', '��С��', '123456', '��С��', '4622987745565656', '13656565656', '��������԰', '0');
INSERT INTO `account` VALUES ('2', '�����', '123', '�����', '4622987745565656', '13912233333', '���� ������ �ư�', '0');
INSERT INTO `account` VALUES ('3', '����', '123', '����', '46229877455656548', '13999999999', '�Ͼ�', '0');
INSERT INTO `account` VALUES ('4', '������', '123', '������', '4622987745565656', '13656565656', '���� ������ Ⱥ��', '-1');
INSERT INTO `account` VALUES ('5', 'user', '123456', 'user', '4622987745565656', '13545455454', '���� �Ͼ�', '0');

-- ----------------------------
-- Table structure for `authority`
-- ----------------------------
DROP TABLE IF EXISTS `authority`;
CREATE TABLE `authority` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleId` int(11) NOT NULL,
  `menuId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `roleId` (`roleId`),
  KEY `menuId` (`menuId`),
  CONSTRAINT `authority_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `role` (`id`),
  CONSTRAINT `authority_ibfk_2` FOREIGN KEY (`menuId`) REFERENCES `menu` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=437 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of authority
-- ----------------------------
INSERT INTO `authority` VALUES ('148', '2', '35');
INSERT INTO `authority` VALUES ('149', '2', '36');
INSERT INTO `authority` VALUES ('150', '2', '25');
INSERT INTO `authority` VALUES ('151', '2', '1');
INSERT INTO `authority` VALUES ('152', '2', '14');
INSERT INTO `authority` VALUES ('153', '2', '15');
INSERT INTO `authority` VALUES ('383', '1', '1');
INSERT INTO `authority` VALUES ('384', '1', '5');
INSERT INTO `authority` VALUES ('385', '1', '17');
INSERT INTO `authority` VALUES ('386', '1', '18');
INSERT INTO `authority` VALUES ('387', '1', '19');
INSERT INTO `authority` VALUES ('388', '1', '20');
INSERT INTO `authority` VALUES ('389', '1', '13');
INSERT INTO `authority` VALUES ('390', '1', '21');
INSERT INTO `authority` VALUES ('391', '1', '22');
INSERT INTO `authority` VALUES ('392', '1', '23');
INSERT INTO `authority` VALUES ('393', '1', '35');
INSERT INTO `authority` VALUES ('394', '1', '36');
INSERT INTO `authority` VALUES ('395', '1', '14');
INSERT INTO `authority` VALUES ('396', '1', '15');
INSERT INTO `authority` VALUES ('397', '1', '24');
INSERT INTO `authority` VALUES ('398', '1', '25');
INSERT INTO `authority` VALUES ('399', '1', '26');
INSERT INTO `authority` VALUES ('400', '1', '31');
INSERT INTO `authority` VALUES ('401', '1', '32');
INSERT INTO `authority` VALUES ('402', '1', '33');
INSERT INTO `authority` VALUES ('403', '1', '34');
INSERT INTO `authority` VALUES ('404', '1', '37');
INSERT INTO `authority` VALUES ('405', '1', '38');
INSERT INTO `authority` VALUES ('406', '1', '39');
INSERT INTO `authority` VALUES ('407', '1', '40');
INSERT INTO `authority` VALUES ('408', '1', '41');
INSERT INTO `authority` VALUES ('409', '1', '42');
INSERT INTO `authority` VALUES ('410', '1', '43');
INSERT INTO `authority` VALUES ('411', '1', '44');
INSERT INTO `authority` VALUES ('412', '1', '45');
INSERT INTO `authority` VALUES ('413', '1', '46');
INSERT INTO `authority` VALUES ('414', '1', '47');
INSERT INTO `authority` VALUES ('415', '1', '48');
INSERT INTO `authority` VALUES ('416', '1', '49');
INSERT INTO `authority` VALUES ('417', '1', '50');
INSERT INTO `authority` VALUES ('418', '1', '51');
INSERT INTO `authority` VALUES ('419', '1', '52');
INSERT INTO `authority` VALUES ('420', '1', '53');
INSERT INTO `authority` VALUES ('421', '1', '54');
INSERT INTO `authority` VALUES ('422', '1', '55');
INSERT INTO `authority` VALUES ('423', '1', '56');
INSERT INTO `authority` VALUES ('424', '1', '57');
INSERT INTO `authority` VALUES ('425', '1', '58');
INSERT INTO `authority` VALUES ('426', '1', '59');
INSERT INTO `authority` VALUES ('427', '1', '60');
INSERT INTO `authority` VALUES ('428', '1', '61');
INSERT INTO `authority` VALUES ('429', '1', '62');
INSERT INTO `authority` VALUES ('430', '1', '63');
INSERT INTO `authority` VALUES ('431', '1', '64');
INSERT INTO `authority` VALUES ('432', '1', '65');
INSERT INTO `authority` VALUES ('433', '1', '66');
INSERT INTO `authority` VALUES ('434', '1', '67');
INSERT INTO `authority` VALUES ('435', '1', '68');
INSERT INTO `authority` VALUES ('436', '1', '69');

-- ----------------------------
-- Table structure for `book_order`
-- ----------------------------
DROP TABLE IF EXISTS `book_order`;
CREATE TABLE `book_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accountId` int(11) NOT NULL,
  `roomTypeId` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `idCard` varchar(32) CHARACTER SET utf8 DEFAULT NULL,
  `mobile` varchar(16) DEFAULT NULL,
  `status` int(1) DEFAULT '0',
  `arriveDate` varchar(32) DEFAULT NULL,
  `leaveDate` varchar(32) NOT NULL,
  `remark` varchar(128) DEFAULT NULL,
  `createTime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `accountId` (`accountId`),
  KEY `roomTypeId` (`roomTypeId`),
  CONSTRAINT `book_order_ibfk_1` FOREIGN KEY (`accountId`) REFERENCES `account` (`id`),
  CONSTRAINT `book_order_ibfk_2` FOREIGN KEY (`roomTypeId`) REFERENCES `room_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of book_order
-- ----------------------------
INSERT INTO `book_order` VALUES ('10', '1', '1', '������', '62225225666552', '13656565656', '2', '2019-01-18', '2019-01-19', 'da', '2019-01-18 23:56:58');
INSERT INTO `book_order` VALUES ('11', '2', '2', '������', '622987745565656', '13918655256', '2', '2019-01-18', '2019-01-19', '', '2019-01-18 23:57:11');
INSERT INTO `book_order` VALUES ('13', '3', '1', '·��˹', '6565656565656', '13999999999', '0', '2019-01-19', '2019-01-20', 'Ԥ�����ϰ˵㵽��', '2019-01-19 13:27:35');
INSERT INTO `book_order` VALUES ('14', '5', '2', '̫�ϻ�', '31012002522555', '13545455454', '2', '2019-01-19', '2019-01-20', '������һ���д����Ŀ��ϵģ�лл��', '2019-01-19 23:02:16');
INSERT INTO `book_order` VALUES ('15', '5', '6', '�ܿ�', '31012002522555', '13545455454', '1', '2019-01-21', '2019-01-22', '�һᾡ�������', '2019-01-19 23:02:45');
INSERT INTO `book_order` VALUES ('16', '5', '10', '����˹', '31012002522555', '13545455454', '0', '2019-01-21', '2019-01-23', '�ݳ�һ�ѣ�', '2019-01-19 23:03:25');

-- ----------------------------
-- Table structure for `c3p0testtable`
-- ----------------------------
DROP TABLE IF EXISTS `c3p0testtable`;
CREATE TABLE `c3p0testtable` (
  `a` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of c3p0testtable
-- ----------------------------

-- ----------------------------
-- Table structure for `checkin`
-- ----------------------------
DROP TABLE IF EXISTS `checkin`;
CREATE TABLE `checkin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roomId` int(11) NOT NULL,
  `roomTypeId` int(11) NOT NULL,
  `checkinPrice` float(8,2) NOT NULL,
  `name` varchar(32) NOT NULL,
  `idCard` varchar(32) CHARACTER SET utf8 DEFAULT NULL,
  `mobile` varchar(16) DEFAULT NULL,
  `status` int(1) DEFAULT '0',
  `arriveDate` varchar(32) DEFAULT NULL,
  `leaveDate` varchar(32) NOT NULL,
  `bookOrderId` int(11) DEFAULT NULL,
  `remark` varchar(128) DEFAULT NULL,
  `createTime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `accountId` (`roomId`),
  KEY `roomTypeId` (`roomTypeId`),
  CONSTRAINT `checkin_ibfk_1` FOREIGN KEY (`roomId`) REFERENCES `room` (`id`),
  CONSTRAINT `checkin_ibfk_2` FOREIGN KEY (`roomTypeId`) REFERENCES `room_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of checkin
-- ----------------------------
INSERT INTO `checkin` VALUES ('9', '2', '1', '123.00', '����', 'ewq', 'ewq', '1', '2019-01-18', '2019-01-19', null, '', '2019-01-18 23:57:55');
INSERT INTO `checkin` VALUES ('10', '4', '3', '298.00', '������', '622987745565656', '13918655256', '1', '2019-01-18', '2019-01-19', '11', '', '2019-01-19 00:00:08');
INSERT INTO `checkin` VALUES ('11', '2', '1', '198.00', '����', '62225225666552', '13656565656', '1', '2019-01-18', '2019-01-19', '10', '����', '2019-01-19 00:32:15');
INSERT INTO `checkin` VALUES ('12', '3', '2', '299.00', 'С��', '31012002522555', '13545455454', '1', '2019-01-19', '2019-01-20', '14', '������һ���д����Ŀ��ϵģ�лл��', '2019-01-19 23:05:23');
INSERT INTO `checkin` VALUES ('13', '6', '6', '200.00', 'С��', '31012002522555', '13545455454', '0', '2019-01-21', '2019-01-22', '15', '�һᾡ�������', '2019-01-19 23:08:57');
INSERT INTO `checkin` VALUES ('14', '3', '2', '189.00', '��÷', '65656465656565656', '13848484878', '1', '2019-01-20', '2019-01-22', null, '��÷', '2019-01-20 15:33:14');
INSERT INTO `checkin` VALUES ('15', '4', '3', '659.00', '��С˧', '62225225666552', '13656565656', '1', '2019-01-16', '2019-01-18', null, '��������', '2019-01-20 15:34:49');
-- ----------------------------
-- Table structure for `floor`
-- ----------------------------
DROP TABLE IF EXISTS `floor`;
CREATE TABLE `floor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `remark` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of floor
-- ----------------------------
INSERT INTO `floor` VALUES ('1', '1¥', '1¥���');
INSERT INTO `floor` VALUES ('2', '2¥', '2¥���á�');
INSERT INTO `floor` VALUES ('3', '3¥', '3¥�պ�');
INSERT INTO `floor` VALUES ('4', '4¥', '4¥�е�ߡ�');
INSERT INTO `floor` VALUES ('5', '5¥', '�е��ݺܿ�');
INSERT INTO `floor` VALUES ('6', '6¥', '��¥����');
INSERT INTO `floor` VALUES ('7', '7¥', '����');
INSERT INTO `floor` VALUES ('11', '8¥', '����');

-- ----------------------------
-- Table structure for `log`
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) NOT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES ('13', '�û���Ϊadmin���û���¼ʱ������֤�����!', '2018-12-16 18:17:30');
INSERT INTO `log` VALUES ('14', '�û���Ϊ{admin}����ɫΪ{��������Ա}���û���¼�ɹ�!', '2018-12-16 18:22:56');
INSERT INTO `log` VALUES ('15', '�û���Ϊ{admin}����ɫΪ{��������Ա}���û���¼�ɹ�!', '2018-12-16 18:37:15');
INSERT INTO `log` VALUES ('16', '�û���Ϊ{admin}����ɫΪ{��������Ա}���û���¼�ɹ�!', '2018-12-16 18:40:21');
INSERT INTO `log` VALUES ('17', '�û���Ϊ{admin}����ɫΪ{��������Ա}���û���¼�ɹ�!', '2018-12-16 19:11:49');

-- ----------------------------
-- Table structure for `menu`
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentId` int(11) NOT NULL DEFAULT '-1',
  `name` varchar(32) NOT NULL,
  `url` varchar(128) DEFAULT NULL,
  `icon` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', '0', 'ϵͳ����', '', 'icon-advancedsettings');
INSERT INTO `menu` VALUES ('5', '1', '�˵�����', '../admin/menu/list', 'icon-chart-organisation');
INSERT INTO `menu` VALUES ('13', '1', '��ɫ����', '../admin/role/list', 'icon-group-key');
INSERT INTO `menu` VALUES ('14', '0', '�û�����', '', 'icon-group-gear');
INSERT INTO `menu` VALUES ('15', '14', '�û��б�', '../admin/user/list', 'icon-group');
INSERT INTO `menu` VALUES ('17', '5', '���', 'openAdd()', 'icon-add');
INSERT INTO `menu` VALUES ('18', '5', '�༭', 'openEdit()', 'icon-bullet-edit');
INSERT INTO `menu` VALUES ('19', '5', 'ɾ��', 'remove()', 'icon-cross');
INSERT INTO `menu` VALUES ('20', '5', '��Ӱ�ť', 'openAddMenu()', 'icon-add');
INSERT INTO `menu` VALUES ('21', '13', '���', 'openAdd()', 'icon-add');
INSERT INTO `menu` VALUES ('22', '13', '�༭', 'openEdit()', 'icon-bullet-edit');
INSERT INTO `menu` VALUES ('23', '13', 'ɾ��', 'remove()', 'icon-cross');
INSERT INTO `menu` VALUES ('24', '15', '���', 'openAdd()', 'icon-add');
INSERT INTO `menu` VALUES ('25', '15', '�༭', 'openEdit()', 'icon-bullet-edit');
INSERT INTO `menu` VALUES ('26', '15', 'ɾ��', 'remove()', 'icon-cross');
INSERT INTO `menu` VALUES ('31', '0', 'ϵͳ��־', '', 'icon-table-cell');
INSERT INTO `menu` VALUES ('32', '31', '��־�б�', '../admin/log/list', 'icon-page-white-text');
INSERT INTO `menu` VALUES ('33', '32', '�����־', 'openAdd()', 'icon-add1');
INSERT INTO `menu` VALUES ('34', '32', 'ɾ��', 'remove()', 'icon-cancel');
INSERT INTO `menu` VALUES ('35', '1', '�޸�����', 'edit_password', 'icon-lock-edit');
INSERT INTO `menu` VALUES ('36', '35', '�޸�����', 'openAdd()', 'icon-lock-edit');
INSERT INTO `menu` VALUES ('37', '0', '¥�����', '', 'icon-house');
INSERT INTO `menu` VALUES ('38', '37', '¥���б�', '../admin/floor/list', 'icon-house-connect');
INSERT INTO `menu` VALUES ('39', '38', '���', 'openAdd()', 'icon-add');
INSERT INTO `menu` VALUES ('40', '38', '�༭', 'openEdit()', 'icon-bullet-edit');
INSERT INTO `menu` VALUES ('41', '38', 'ɾ��', 'remove()', 'icon-cancel');
INSERT INTO `menu` VALUES ('42', '0', '���͹���', '', 'icon-house-star');
INSERT INTO `menu` VALUES ('43', '42', '�����б�', '../admin/room_type/list', 'icon-house-key');
INSERT INTO `menu` VALUES ('44', '43', '���', 'openAdd()', 'icon-add');
INSERT INTO `menu` VALUES ('45', '43', '�༭', 'openEdit()', 'icon-bullet-edit');
INSERT INTO `menu` VALUES ('46', '43', 'ɾ��', 'remove()', 'icon-cancel');
INSERT INTO `menu` VALUES ('47', '0', '�������', '', 'icon-house-go');
INSERT INTO `menu` VALUES ('48', '47', '�����б�', '../admin/room/list', 'icon-house-key');
INSERT INTO `menu` VALUES ('49', '48', '���', 'openAdd()', 'icon-add');
INSERT INTO `menu` VALUES ('50', '48', '�༭', 'openEdit()', 'icon-bullet-edit');
INSERT INTO `menu` VALUES ('51', '48', 'ɾ��', 'remove()', 'icon-cancel');
INSERT INTO `menu` VALUES ('52', '0', '�ͻ�����', '', 'icon-users');
INSERT INTO `menu` VALUES ('53', '52', '�ͻ��б�', '../admin/account/list', 'icon-user-business-boss');
INSERT INTO `menu` VALUES ('54', '53', '���', 'openAdd()', 'icon-add');
INSERT INTO `menu` VALUES ('55', '53', '�༭', 'openEdit()', 'icon-bullet-edit');
INSERT INTO `menu` VALUES ('56', '53', 'ɾ��', 'remove()', 'icon-cancel');
INSERT INTO `menu` VALUES ('57', '0', 'Ԥ������', '', 'icon-time-green');
INSERT INTO `menu` VALUES ('58', '57', 'Ԥ���б�', '../admin/book_order/list', 'icon-clock');
INSERT INTO `menu` VALUES ('59', '58', '����Ԥ��', 'openAdd()', 'icon-clock-add');
INSERT INTO `menu` VALUES ('60', '58', '�༭Ԥ��', 'openEdit()', 'icon-clock-edit');
INSERT INTO `menu` VALUES ('61', '0', '��ס����', '', 'icon-heart-connect');
INSERT INTO `menu` VALUES ('62', '61', '��ס�б�', '../admin/checkin/list', 'icon-heart');
INSERT INTO `menu` VALUES ('63', '62', '�Ǽ���ס', 'openAdd()', 'icon-heart-add');
INSERT INTO `menu` VALUES ('64', '62', '�༭��ס', 'openEdit()', 'icon-heart-connect');
INSERT INTO `menu` VALUES ('65', '62', '�Ǽ��˷�', 'openCheckOut()', 'icon-heart-delete');
INSERT INTO `menu` VALUES ('66', '0', 'Ӫҵͳ��', '', 'icon-money-yen');
INSERT INTO `menu` VALUES ('67', '66', 'ͳ��ͼ��', '../admin/stats/stats', 'icon-chart-curve');
INSERT INTO `menu` VALUES ('68', '67', '����ͳ��', 'statsByMonth()', 'icon-chart-curve-add');
INSERT INTO `menu` VALUES ('69', '67', '����ͳ��', 'statsByDay()', 'icon-chart-curve-edit');

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `remark` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '��������Ա', '��������Աӵ��һ��Ȩ�ޣ�');
INSERT INTO `role` VALUES ('2', '��ͨ�û�', '��ͨ�û�����������Ȩ��');

-- ----------------------------
-- Table structure for `room`
-- ----------------------------
DROP TABLE IF EXISTS `room`;
CREATE TABLE `room` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `photo` varchar(128) DEFAULT NULL,
  `sn` varchar(32) NOT NULL,
  `roomTypeId` int(11) NOT NULL,
  `floorId` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `remark` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `roomTypeId` (`roomTypeId`),
  KEY `floorId` (`floorId`),
  CONSTRAINT `room_ibfk_1` FOREIGN KEY (`roomTypeId`) REFERENCES `room_type` (`id`),
  CONSTRAINT `room_ibfk_2` FOREIGN KEY (`floorId`) REFERENCES `floor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of room
-- ----------------------------
INSERT INTO `room` VALUES ('2', '/HotelSSM/resources/upload/1547560664869.jpg', '1001', '1', '1', '1', '1001���˼䡢1¥��');
INSERT INTO `room` VALUES ('3', '/HotelSSM/resources/upload/1547560745508.jpg', '2001', '2', '2', '2', '2¥��ͨ�󴲷�');
INSERT INTO `room` VALUES ('4', '/HotelSSM/resources/upload/1547560846621.jpg', '3001', '3', '3', '2', '3001�����󴲷�');
INSERT INTO `room` VALUES ('5', '/HotelSSM/resources/upload/1547824761959.jpg', '4001', '4', '4', '0', '����󴲷�');
INSERT INTO `room` VALUES ('6', '/HotelSSM/resources/upload/1547910499411.jpg', '5001', '6', '5', '1', '������׼��');

-- ----------------------------
-- Table structure for `room_type`
-- ----------------------------
DROP TABLE IF EXISTS `room_type`;
CREATE TABLE `room_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `photo` varchar(128) DEFAULT NULL,
  `price` float(8,2) NOT NULL,
  `liveNum` int(2) NOT NULL,
  `bedNum` int(2) NOT NULL,
  `roomNum` int(5) NOT NULL,
  `avilableNum` int(5) NOT NULL,
  `bookNum` int(5) NOT NULL DEFAULT '0',
  `livedNum` int(5) NOT NULL DEFAULT '0',
  `status` int(1) NOT NULL DEFAULT '1',
  `remark` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of room_type
-- ----------------------------
INSERT INTO `room_type` VALUES ('1', '���˼�', '/HotelSSM/resources/upload/1547863202049.jpg', '168.00', '1', '1', '12', '10', '1', '1', '1', '���˼�ֻ����סһ���ˣ����15ƽ�����ң�');
INSERT INTO `room_type` VALUES ('2', '��ͨ�󴲷�', '/HotelSSM/resources/upload/1547863299550.jpg', '299.00', '2', '1', '15', '15', '0', '0', '0', '��ͨ�󴲷������25ƽ���ң�');
INSERT INTO `room_type` VALUES ('3', '�����󴲷�', '/HotelSSM/resources/upload/1547863308339.jpg', '399.00', '2', '1', '8', '8', '0', '0', '1', '�����󴲷������30ƽ���ң�');
INSERT INTO `room_type` VALUES ('4', '����󴲷�', '/HotelSSM/resources/upload/1547865202071.jpg', '429.00', '2', '1', '10', '10', '0', '0', '1', '����󴲷������40ƽ���ң�');
INSERT INTO `room_type` VALUES ('5', '��ͨ��׼��', '/HotelSSM/resources/upload/1547863370413.jpg', '199.00', '2', '2', '11', '11', '0', '0', '1', '��ͨ��׼�������20ƽ���ң�');
INSERT INTO `room_type` VALUES ('6', '������׼��', '/HotelSSM/resources/upload/1547863398297.jpg', '199.00', '2', '2', '10', '9', '1', '1', '1', '������׼�������30ƽ���ң�');
INSERT INTO `room_type` VALUES ('7', '�����׼��', '/HotelSSM/resources/upload/1547863458969.jpg', '299.00', '2', '2', '10', '10', '0', '0', '1', '�����׼�䣬���35ƽ���ң�');
INSERT INTO `room_type` VALUES ('8', '��ͨ�׷�', '/HotelSSM/resources/upload/1547863486075.jpg', '699.00', '2', '2', '6', '6', '0', '0', '1', '��ͨ�׷������50ƽ���ң�');
INSERT INTO `room_type` VALUES ('9', '�����׷�', '/HotelSSM/resources/upload/1547863508790.jpg', '899.00', '2', '2', '5', '5', '0', '0', '1', '�����׷������70ƽ���ң�');
INSERT INTO `room_type` VALUES ('10', '��ͳ�׷�', '/HotelSSM/resources/upload/1547863538884.jpg', '1299.00', '2', '2', '3', '2', '1', '0', '1', '��ͳ�׷������100ƽ����������');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `roleId` int(11) NOT NULL,
  `photo` varchar(128) DEFAULT NULL,
  `sex` int(1) NOT NULL DEFAULT '0',
  `age` int(3) NOT NULL DEFAULT '0',
  `address` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `roleId` (`roleId`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', '123456', '1', '/HotelSSM/resources/upload/1.png', '1', '1', '�й�����');
INSERT INTO `user` VALUES ('2', 'system', '123456', '2', '/HotelSSM/resources/upload/2.png', '1', '1', '�й��Ϻ�');
INSERT INTO `user` VALUES ('3', 'chenlin', '123456', '2', '/HotelSSM/resources/upload/3.png', '1', '1', '�й�����');
