/*
Navicat MySQL Data Transfer

Source Server         : 我的服务器
Source Server Version : 50173
Source Host           : 115.28.38.106:3306
Source Database       : qingjie

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 65001

Date: 2016-07-12 20:42:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `qj_admin`
-- ----------------------------
DROP TABLE IF EXISTS `qj_admin`;
CREATE TABLE `qj_admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nickname` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户昵称',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `role_id` int(11) DEFAULT NULL COMMENT '角色ID',
  `action_list` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '可操作权限列表',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of qj_admin
-- ----------------------------
INSERT INTO `qj_admin` VALUES ('1', 'root', '管理员', 'root@aliyun.com', '$2y$10$oqlb/UzDMuA5.hDN9QByaOkeJcWfUb1CcSU8JTIL1htbfhwNJyJhu', '1', null, 'CbFOg6yS9pblfflPsIWNa6RoEd1a93lZ36H4VbtCebmqPmF5InCbNw0hhFpT', '2015-11-10 13:19:59', '2016-05-30 21:11:38');
INSERT INTO `qj_admin` VALUES ('2', 'zhangsan', '张三', 'zhangsan@haolyy.com1', '$2y$10$0qixdxl2zlduN1KATCU1ouV3Ue.Ww3IBaICgw/ngAfdhrbbGKSWta', '0', null, null, null, null);
INSERT INTO `qj_admin` VALUES ('3', 'user003', null, '12345678902@163.com', '$2y$10$fWcyrR/5qgQNA4ydWXpMxuDcj9b1ordzYgqDZ7V6B9YxsxFcEpipu', null, null, 'UwONz79K0TMuQ0HkKjflNNeYHZS1y2Mmw4Yya1NZ0MQXUsW9sdJ92fZQVUWu', '2016-05-30 21:41:07', '2016-05-30 21:41:58');
INSERT INTO `qj_admin` VALUES ('4', 'user003', null, '12345678903@163.com', '$2y$10$OHc4sQnQgBJfYOykXhpXS.hllXTKLSdsZz8fsPGmwE6P4U2JPR/US', null, null, '6tEL2Vi33qpLxv2OYpJim2fddY7gQZyNSqAekyj4gRhJtTCQf5AlEYBpHrM5', '2016-05-30 21:42:15', '2016-05-30 21:43:09');
INSERT INTO `qj_admin` VALUES ('12', 'user004', null, '12345678904@163.com', '$2y$10$nuA.d2O8yI1Q/sXRrxGaXuRedlZgO/eLNTjo60CgPqTHepq6cKobe', null, null, null, '2016-05-30 21:45:39', '2016-05-30 21:45:39');
INSERT INTO `qj_admin` VALUES ('14', 'user005', null, '12345678905@163.com', '$2y$10$.G5uZQNxUvyFwJ/I3r/wceaqKyWSAE3cFdjjlMdRDkLdITNDCfFEC', null, null, null, '2016-05-30 21:46:39', '2016-05-30 21:46:39');
INSERT INTO `qj_admin` VALUES ('15', 'user006', null, '12345678906@163.com', '$2y$10$1z4aF2i9BHUNTasx5e2qCOEIhI5vyLUXVj2GOYhuDRhLKsfKG5Y2e', null, null, null, '2016-05-30 21:47:07', '2016-05-30 21:47:07');

-- ----------------------------
-- Table structure for `qj_area`
-- ----------------------------
DROP TABLE IF EXISTS `qj_area`;
CREATE TABLE `qj_area` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `city_code` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `tmp` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3524 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of qj_area
-- ----------------------------
INSERT INTO `qj_area` VALUES ('1', '0', '110000', '北京市', null);
INSERT INTO `qj_area` VALUES ('2', '0', '120000', '天津市', null);
INSERT INTO `qj_area` VALUES ('3', '0', '130000', '河北省', null);
INSERT INTO `qj_area` VALUES ('4', '0', '140000', '山西省', null);
INSERT INTO `qj_area` VALUES ('5', '0', '150000', '内蒙古自治区', null);
INSERT INTO `qj_area` VALUES ('6', '0', '210000', '辽宁省', null);
INSERT INTO `qj_area` VALUES ('7', '0', '220000', '吉林省', null);
INSERT INTO `qj_area` VALUES ('8', '0', '230000', '黑龙江省', null);
INSERT INTO `qj_area` VALUES ('9', '0', '310000', '上海市', null);
INSERT INTO `qj_area` VALUES ('10', '0', '320000', '江苏省', null);
INSERT INTO `qj_area` VALUES ('11', '0', '330000', '浙江省', null);
INSERT INTO `qj_area` VALUES ('12', '0', '340000', '安徽省', null);
INSERT INTO `qj_area` VALUES ('13', '0', '350000', '福建省', null);
INSERT INTO `qj_area` VALUES ('14', '0', '360000', '江西省', null);
INSERT INTO `qj_area` VALUES ('15', '0', '370000', '山东省', null);
INSERT INTO `qj_area` VALUES ('16', '0', '410000', '河南省', null);
INSERT INTO `qj_area` VALUES ('17', '0', '420000', '湖北省', null);
INSERT INTO `qj_area` VALUES ('18', '0', '430000', '湖南省', null);
INSERT INTO `qj_area` VALUES ('19', '0', '440000', '广东省', null);
INSERT INTO `qj_area` VALUES ('20', '0', '450000', '广西壮族自治区', null);
INSERT INTO `qj_area` VALUES ('21', '0', '460000', '海南省', null);
INSERT INTO `qj_area` VALUES ('22', '0', '500000', '重庆市', null);
INSERT INTO `qj_area` VALUES ('23', '0', '510000', '四川省', null);
INSERT INTO `qj_area` VALUES ('24', '0', '520000', '贵州省', null);
INSERT INTO `qj_area` VALUES ('25', '0', '530000', '云南省', null);
INSERT INTO `qj_area` VALUES ('26', '0', '540000', '西藏自治区', null);
INSERT INTO `qj_area` VALUES ('27', '0', '610000', '陕西省', null);
INSERT INTO `qj_area` VALUES ('28', '0', '620000', '甘肃省', null);
INSERT INTO `qj_area` VALUES ('29', '0', '630000', '青海省', null);
INSERT INTO `qj_area` VALUES ('30', '0', '640000', '宁夏回族自治区', null);
INSERT INTO `qj_area` VALUES ('31', '0', '650000', '新疆维吾尔自治区', null);
INSERT INTO `qj_area` VALUES ('32', '0', '710000', '台湾省', null);
INSERT INTO `qj_area` VALUES ('33', '0', '810000', '香港特别行政区', null);
INSERT INTO `qj_area` VALUES ('34', '0', '820000', '澳门特别行政区', null);
INSERT INTO `qj_area` VALUES ('35', '110000', '110100', '市辖区', '1');
INSERT INTO `qj_area` VALUES ('36', '110000', '110200', '县', '2');
INSERT INTO `qj_area` VALUES ('37', '120000', '120100', '市辖区', '3');
INSERT INTO `qj_area` VALUES ('38', '120000', '120200', '县', '4');
INSERT INTO `qj_area` VALUES ('39', '130000', '130100', '石家庄市', '5');
INSERT INTO `qj_area` VALUES ('40', '130000', '130200', '唐山市', '6');
INSERT INTO `qj_area` VALUES ('41', '130000', '130300', '秦皇岛市', '7');
INSERT INTO `qj_area` VALUES ('42', '130000', '130400', '邯郸市', '8');
INSERT INTO `qj_area` VALUES ('43', '130000', '130500', '邢台市', '9');
INSERT INTO `qj_area` VALUES ('44', '130000', '130600', '保定市', '10');
INSERT INTO `qj_area` VALUES ('45', '130000', '130700', '张家口市', '11');
INSERT INTO `qj_area` VALUES ('46', '130000', '130800', '承德市', '12');
INSERT INTO `qj_area` VALUES ('47', '130000', '130900', '沧州市', '13');
INSERT INTO `qj_area` VALUES ('48', '130000', '131000', '廊坊市', '14');
INSERT INTO `qj_area` VALUES ('49', '130000', '131100', '衡水市', '15');
INSERT INTO `qj_area` VALUES ('50', '140000', '140100', '太原市', '16');
INSERT INTO `qj_area` VALUES ('51', '140000', '140200', '大同市', '17');
INSERT INTO `qj_area` VALUES ('52', '140000', '140300', '阳泉市', '18');
INSERT INTO `qj_area` VALUES ('53', '140000', '140400', '长治市', '19');
INSERT INTO `qj_area` VALUES ('54', '140000', '140500', '晋城市', '20');
INSERT INTO `qj_area` VALUES ('55', '140000', '140600', '朔州市', '21');
INSERT INTO `qj_area` VALUES ('56', '140000', '140700', '晋中市', '22');
INSERT INTO `qj_area` VALUES ('57', '140000', '140800', '运城市', '23');
INSERT INTO `qj_area` VALUES ('58', '140000', '140900', '忻州市', '24');
INSERT INTO `qj_area` VALUES ('59', '140000', '141000', '临汾市', '25');
INSERT INTO `qj_area` VALUES ('60', '140000', '141100', '吕梁市', '26');
INSERT INTO `qj_area` VALUES ('61', '150000', '150100', '呼和浩特市', '27');
INSERT INTO `qj_area` VALUES ('62', '150000', '150200', '包头市', '28');
INSERT INTO `qj_area` VALUES ('63', '150000', '150300', '乌海市', '29');
INSERT INTO `qj_area` VALUES ('64', '150000', '150400', '赤峰市', '30');
INSERT INTO `qj_area` VALUES ('65', '150000', '150500', '通辽市', '31');
INSERT INTO `qj_area` VALUES ('66', '150000', '150600', '鄂尔多斯市', '32');
INSERT INTO `qj_area` VALUES ('67', '150000', '150700', '呼伦贝尔市', '33');
INSERT INTO `qj_area` VALUES ('68', '150000', '150800', '巴彦淖尔市', '34');
INSERT INTO `qj_area` VALUES ('69', '150000', '150900', '乌兰察布市', '35');
INSERT INTO `qj_area` VALUES ('70', '150000', '152200', '兴安盟', '36');
INSERT INTO `qj_area` VALUES ('71', '150000', '152500', '锡林郭勒盟', '37');
INSERT INTO `qj_area` VALUES ('72', '150000', '152900', '阿拉善盟', '38');
INSERT INTO `qj_area` VALUES ('73', '210000', '210100', '沈阳市', '39');
INSERT INTO `qj_area` VALUES ('74', '210000', '210200', '大连市', '40');
INSERT INTO `qj_area` VALUES ('75', '210000', '210300', '鞍山市', '41');
INSERT INTO `qj_area` VALUES ('76', '210000', '210400', '抚顺市', '42');
INSERT INTO `qj_area` VALUES ('77', '210000', '210500', '本溪市', '43');
INSERT INTO `qj_area` VALUES ('78', '210000', '210600', '丹东市', '44');
INSERT INTO `qj_area` VALUES ('79', '210000', '210700', '锦州市', '45');
INSERT INTO `qj_area` VALUES ('80', '210000', '210800', '营口市', '46');
INSERT INTO `qj_area` VALUES ('81', '210000', '210900', '阜新市', '47');
INSERT INTO `qj_area` VALUES ('82', '210000', '211000', '辽阳市', '48');
INSERT INTO `qj_area` VALUES ('83', '210000', '211100', '盘锦市', '49');
INSERT INTO `qj_area` VALUES ('84', '210000', '211200', '铁岭市', '50');
INSERT INTO `qj_area` VALUES ('85', '210000', '211300', '朝阳市', '51');
INSERT INTO `qj_area` VALUES ('86', '210000', '211400', '葫芦岛市', '52');
INSERT INTO `qj_area` VALUES ('87', '220000', '220100', '长春市', '53');
INSERT INTO `qj_area` VALUES ('88', '220000', '220200', '吉林市', '54');
INSERT INTO `qj_area` VALUES ('89', '220000', '220300', '四平市', '55');
INSERT INTO `qj_area` VALUES ('90', '220000', '220400', '辽源市', '56');
INSERT INTO `qj_area` VALUES ('91', '220000', '220500', '通化市', '57');
INSERT INTO `qj_area` VALUES ('92', '220000', '220600', '白山市', '58');
INSERT INTO `qj_area` VALUES ('93', '220000', '220700', '松原市', '59');
INSERT INTO `qj_area` VALUES ('94', '220000', '220800', '白城市', '60');
INSERT INTO `qj_area` VALUES ('95', '220000', '222400', '延边朝鲜族自治州', '61');
INSERT INTO `qj_area` VALUES ('96', '230000', '230100', '哈尔滨市', '62');
INSERT INTO `qj_area` VALUES ('97', '230000', '230200', '齐齐哈尔市', '63');
INSERT INTO `qj_area` VALUES ('98', '230000', '230300', '鸡西市', '64');
INSERT INTO `qj_area` VALUES ('99', '230000', '230400', '鹤岗市', '65');
INSERT INTO `qj_area` VALUES ('100', '230000', '230500', '双鸭山市', '66');
INSERT INTO `qj_area` VALUES ('101', '230000', '230600', '大庆市', '67');
INSERT INTO `qj_area` VALUES ('102', '230000', '230700', '伊春市', '68');
INSERT INTO `qj_area` VALUES ('103', '230000', '230800', '佳木斯市', '69');
INSERT INTO `qj_area` VALUES ('104', '230000', '230900', '七台河市', '70');
INSERT INTO `qj_area` VALUES ('105', '230000', '231000', '牡丹江市', '71');
INSERT INTO `qj_area` VALUES ('106', '230000', '231100', '黑河市', '72');
INSERT INTO `qj_area` VALUES ('107', '230000', '231200', '绥化市', '73');
INSERT INTO `qj_area` VALUES ('108', '230000', '232700', '大兴安岭地区', '74');
INSERT INTO `qj_area` VALUES ('109', '310000', '310100', '市辖区', '75');
INSERT INTO `qj_area` VALUES ('110', '310000', '310200', '县', '76');
INSERT INTO `qj_area` VALUES ('111', '320000', '320100', '南京市', '77');
INSERT INTO `qj_area` VALUES ('112', '320000', '320200', '无锡市', '78');
INSERT INTO `qj_area` VALUES ('113', '320000', '320300', '徐州市', '79');
INSERT INTO `qj_area` VALUES ('114', '320000', '320400', '常州市', '80');
INSERT INTO `qj_area` VALUES ('115', '320000', '320500', '苏州市', '81');
INSERT INTO `qj_area` VALUES ('116', '320000', '320600', '南通市', '82');
INSERT INTO `qj_area` VALUES ('117', '320000', '320700', '连云港市', '83');
INSERT INTO `qj_area` VALUES ('118', '320000', '320800', '淮安市', '84');
INSERT INTO `qj_area` VALUES ('119', '320000', '320900', '盐城市', '85');
INSERT INTO `qj_area` VALUES ('120', '320000', '321000', '扬州市', '86');
INSERT INTO `qj_area` VALUES ('121', '320000', '321100', '镇江市', '87');
INSERT INTO `qj_area` VALUES ('122', '320000', '321200', '泰州市', '88');
INSERT INTO `qj_area` VALUES ('123', '320000', '321300', '宿迁市', '89');
INSERT INTO `qj_area` VALUES ('124', '330000', '330100', '杭州市', '90');
INSERT INTO `qj_area` VALUES ('125', '330000', '330200', '宁波市', '91');
INSERT INTO `qj_area` VALUES ('126', '330000', '330300', '温州市', '92');
INSERT INTO `qj_area` VALUES ('127', '330000', '330400', '嘉兴市', '93');
INSERT INTO `qj_area` VALUES ('128', '330000', '330500', '湖州市', '94');
INSERT INTO `qj_area` VALUES ('129', '330000', '330600', '绍兴市', '95');
INSERT INTO `qj_area` VALUES ('130', '330000', '330700', '金华市', '96');
INSERT INTO `qj_area` VALUES ('131', '330000', '330800', '衢州市', '97');
INSERT INTO `qj_area` VALUES ('132', '330000', '330900', '舟山市', '98');
INSERT INTO `qj_area` VALUES ('133', '330000', '331000', '台州市', '99');
INSERT INTO `qj_area` VALUES ('134', '330000', '331100', '丽水市', '100');
INSERT INTO `qj_area` VALUES ('135', '340000', '340100', '合肥市', '101');
INSERT INTO `qj_area` VALUES ('136', '340000', '340200', '芜湖市', '102');
INSERT INTO `qj_area` VALUES ('137', '340000', '340300', '蚌埠市', '103');
INSERT INTO `qj_area` VALUES ('138', '340000', '340400', '淮南市', '104');
INSERT INTO `qj_area` VALUES ('139', '340000', '340500', '马鞍山市', '105');
INSERT INTO `qj_area` VALUES ('140', '340000', '340600', '淮北市', '106');
INSERT INTO `qj_area` VALUES ('141', '340000', '340700', '铜陵市', '107');
INSERT INTO `qj_area` VALUES ('142', '340000', '340800', '安庆市', '108');
INSERT INTO `qj_area` VALUES ('143', '340000', '341000', '黄山市', '109');
INSERT INTO `qj_area` VALUES ('144', '340000', '341100', '滁州市', '110');
INSERT INTO `qj_area` VALUES ('145', '340000', '341200', '阜阳市', '111');
INSERT INTO `qj_area` VALUES ('146', '340000', '341300', '宿州市', '112');
INSERT INTO `qj_area` VALUES ('147', '340000', '341400', '巢湖市', '113');
INSERT INTO `qj_area` VALUES ('148', '340000', '341500', '六安市', '114');
INSERT INTO `qj_area` VALUES ('149', '340000', '341600', '亳州市', '115');
INSERT INTO `qj_area` VALUES ('150', '340000', '341700', '池州市', '116');
INSERT INTO `qj_area` VALUES ('151', '340000', '341800', '宣城市', '117');
INSERT INTO `qj_area` VALUES ('152', '350000', '350100', '福州市', '118');
INSERT INTO `qj_area` VALUES ('153', '350000', '350200', '厦门市', '119');
INSERT INTO `qj_area` VALUES ('154', '350000', '350300', '莆田市', '120');
INSERT INTO `qj_area` VALUES ('155', '350000', '350400', '三明市', '121');
INSERT INTO `qj_area` VALUES ('156', '350000', '350500', '泉州市', '122');
INSERT INTO `qj_area` VALUES ('157', '350000', '350600', '漳州市', '123');
INSERT INTO `qj_area` VALUES ('158', '350000', '350700', '南平市', '124');
INSERT INTO `qj_area` VALUES ('159', '350000', '350800', '龙岩市', '125');
INSERT INTO `qj_area` VALUES ('160', '350000', '350900', '宁德市', '126');
INSERT INTO `qj_area` VALUES ('161', '360000', '360100', '南昌市', '127');
INSERT INTO `qj_area` VALUES ('162', '360000', '360200', '景德镇市', '128');
INSERT INTO `qj_area` VALUES ('163', '360000', '360300', '萍乡市', '129');
INSERT INTO `qj_area` VALUES ('164', '360000', '360400', '九江市', '130');
INSERT INTO `qj_area` VALUES ('165', '360000', '360500', '新余市', '131');
INSERT INTO `qj_area` VALUES ('166', '360000', '360600', '鹰潭市', '132');
INSERT INTO `qj_area` VALUES ('167', '360000', '360700', '赣州市', '133');
INSERT INTO `qj_area` VALUES ('168', '360000', '360800', '吉安市', '134');
INSERT INTO `qj_area` VALUES ('169', '360000', '360900', '宜春市', '135');
INSERT INTO `qj_area` VALUES ('170', '360000', '361000', '抚州市', '136');
INSERT INTO `qj_area` VALUES ('171', '360000', '361100', '上饶市', '137');
INSERT INTO `qj_area` VALUES ('172', '370000', '370100', '济南市', '138');
INSERT INTO `qj_area` VALUES ('173', '370000', '370200', '青岛市', '139');
INSERT INTO `qj_area` VALUES ('174', '370000', '370300', '淄博市', '140');
INSERT INTO `qj_area` VALUES ('175', '370000', '370400', '枣庄市', '141');
INSERT INTO `qj_area` VALUES ('176', '370000', '370500', '东营市', '142');
INSERT INTO `qj_area` VALUES ('177', '370000', '370600', '烟台市', '143');
INSERT INTO `qj_area` VALUES ('178', '370000', '370700', '潍坊市', '144');
INSERT INTO `qj_area` VALUES ('179', '370000', '370800', '济宁市', '145');
INSERT INTO `qj_area` VALUES ('180', '370000', '370900', '泰安市', '146');
INSERT INTO `qj_area` VALUES ('181', '370000', '371000', '威海市', '147');
INSERT INTO `qj_area` VALUES ('182', '370000', '371100', '日照市', '148');
INSERT INTO `qj_area` VALUES ('183', '370000', '371200', '莱芜市', '149');
INSERT INTO `qj_area` VALUES ('184', '370000', '371300', '临沂市', '150');
INSERT INTO `qj_area` VALUES ('185', '370000', '371400', '德州市', '151');
INSERT INTO `qj_area` VALUES ('186', '370000', '371500', '聊城市', '152');
INSERT INTO `qj_area` VALUES ('187', '370000', '371600', '滨州市', '153');
INSERT INTO `qj_area` VALUES ('188', '370000', '371700', '荷泽市', '154');
INSERT INTO `qj_area` VALUES ('189', '410000', '410100', '郑州市', '155');
INSERT INTO `qj_area` VALUES ('190', '410000', '410200', '开封市', '156');
INSERT INTO `qj_area` VALUES ('191', '410000', '410300', '洛阳市', '157');
INSERT INTO `qj_area` VALUES ('192', '410000', '410400', '平顶山市', '158');
INSERT INTO `qj_area` VALUES ('193', '410000', '410500', '安阳市', '159');
INSERT INTO `qj_area` VALUES ('194', '410000', '410600', '鹤壁市', '160');
INSERT INTO `qj_area` VALUES ('195', '410000', '410700', '新乡市', '161');
INSERT INTO `qj_area` VALUES ('196', '410000', '410800', '焦作市', '162');
INSERT INTO `qj_area` VALUES ('197', '410000', '410900', '濮阳市', '163');
INSERT INTO `qj_area` VALUES ('198', '410000', '411000', '许昌市', '164');
INSERT INTO `qj_area` VALUES ('199', '410000', '411100', '漯河市', '165');
INSERT INTO `qj_area` VALUES ('200', '410000', '411200', '三门峡市', '166');
INSERT INTO `qj_area` VALUES ('201', '410000', '411300', '南阳市', '167');
INSERT INTO `qj_area` VALUES ('202', '410000', '411400', '商丘市', '168');
INSERT INTO `qj_area` VALUES ('203', '410000', '411500', '信阳市', '169');
INSERT INTO `qj_area` VALUES ('204', '410000', '411600', '周口市', '170');
INSERT INTO `qj_area` VALUES ('205', '410000', '411700', '驻马店市', '171');
INSERT INTO `qj_area` VALUES ('206', '420000', '420100', '武汉市', '172');
INSERT INTO `qj_area` VALUES ('207', '420000', '420200', '黄石市', '173');
INSERT INTO `qj_area` VALUES ('208', '420000', '420300', '十堰市', '174');
INSERT INTO `qj_area` VALUES ('209', '420000', '420500', '宜昌市', '175');
INSERT INTO `qj_area` VALUES ('210', '420000', '420600', '襄樊市', '176');
INSERT INTO `qj_area` VALUES ('211', '420000', '420700', '鄂州市', '177');
INSERT INTO `qj_area` VALUES ('212', '420000', '420800', '荆门市', '178');
INSERT INTO `qj_area` VALUES ('213', '420000', '420900', '孝感市', '179');
INSERT INTO `qj_area` VALUES ('214', '420000', '421000', '荆州市', '180');
INSERT INTO `qj_area` VALUES ('215', '420000', '421100', '黄冈市', '181');
INSERT INTO `qj_area` VALUES ('216', '420000', '421200', '咸宁市', '182');
INSERT INTO `qj_area` VALUES ('217', '420000', '421300', '随州市', '183');
INSERT INTO `qj_area` VALUES ('218', '420000', '422800', '恩施土家族苗族自治州', '184');
INSERT INTO `qj_area` VALUES ('219', '420000', '429000', '省直辖行政单位', '185');
INSERT INTO `qj_area` VALUES ('220', '430000', '430100', '长沙市', '186');
INSERT INTO `qj_area` VALUES ('221', '430000', '430200', '株洲市', '187');
INSERT INTO `qj_area` VALUES ('222', '430000', '430300', '湘潭市', '188');
INSERT INTO `qj_area` VALUES ('223', '430000', '430400', '衡阳市', '189');
INSERT INTO `qj_area` VALUES ('224', '430000', '430500', '邵阳市', '190');
INSERT INTO `qj_area` VALUES ('225', '430000', '430600', '岳阳市', '191');
INSERT INTO `qj_area` VALUES ('226', '430000', '430700', '常德市', '192');
INSERT INTO `qj_area` VALUES ('227', '430000', '430800', '张家界市', '193');
INSERT INTO `qj_area` VALUES ('228', '430000', '430900', '益阳市', '194');
INSERT INTO `qj_area` VALUES ('229', '430000', '431000', '郴州市', '195');
INSERT INTO `qj_area` VALUES ('230', '430000', '431100', '永州市', '196');
INSERT INTO `qj_area` VALUES ('231', '430000', '431200', '怀化市', '197');
INSERT INTO `qj_area` VALUES ('232', '430000', '431300', '娄底市', '198');
INSERT INTO `qj_area` VALUES ('233', '430000', '433100', '湘西土家族苗族自治州', '199');
INSERT INTO `qj_area` VALUES ('234', '440000', '440100', '广州市', '200');
INSERT INTO `qj_area` VALUES ('235', '440000', '440200', '韶关市', '201');
INSERT INTO `qj_area` VALUES ('236', '440000', '440300', '深圳市', '202');
INSERT INTO `qj_area` VALUES ('237', '440000', '440400', '珠海市', '203');
INSERT INTO `qj_area` VALUES ('238', '440000', '440500', '汕头市', '204');
INSERT INTO `qj_area` VALUES ('239', '440000', '440600', '佛山市', '205');
INSERT INTO `qj_area` VALUES ('240', '440000', '440700', '江门市', '206');
INSERT INTO `qj_area` VALUES ('241', '440000', '440800', '湛江市', '207');
INSERT INTO `qj_area` VALUES ('242', '440000', '440900', '茂名市', '208');
INSERT INTO `qj_area` VALUES ('243', '440000', '441200', '肇庆市', '209');
INSERT INTO `qj_area` VALUES ('244', '440000', '441300', '惠州市', '210');
INSERT INTO `qj_area` VALUES ('245', '440000', '441400', '梅州市', '211');
INSERT INTO `qj_area` VALUES ('246', '440000', '441500', '汕尾市', '212');
INSERT INTO `qj_area` VALUES ('247', '440000', '441600', '河源市', '213');
INSERT INTO `qj_area` VALUES ('248', '440000', '441700', '阳江市', '214');
INSERT INTO `qj_area` VALUES ('249', '440000', '441800', '清远市', '215');
INSERT INTO `qj_area` VALUES ('250', '440000', '441900', '东莞市', '216');
INSERT INTO `qj_area` VALUES ('251', '440000', '442000', '中山市', '217');
INSERT INTO `qj_area` VALUES ('252', '440000', '445100', '潮州市', '218');
INSERT INTO `qj_area` VALUES ('253', '440000', '445200', '揭阳市', '219');
INSERT INTO `qj_area` VALUES ('254', '440000', '445300', '云浮市', '220');
INSERT INTO `qj_area` VALUES ('255', '450000', '450100', '南宁市', '221');
INSERT INTO `qj_area` VALUES ('256', '450000', '450200', '柳州市', '222');
INSERT INTO `qj_area` VALUES ('257', '450000', '450300', '桂林市', '223');
INSERT INTO `qj_area` VALUES ('258', '450000', '450400', '梧州市', '224');
INSERT INTO `qj_area` VALUES ('259', '450000', '450500', '北海市', '225');
INSERT INTO `qj_area` VALUES ('260', '450000', '450600', '防城港市', '226');
INSERT INTO `qj_area` VALUES ('261', '450000', '450700', '钦州市', '227');
INSERT INTO `qj_area` VALUES ('262', '450000', '450800', '贵港市', '228');
INSERT INTO `qj_area` VALUES ('263', '450000', '450900', '玉林市', '229');
INSERT INTO `qj_area` VALUES ('264', '450000', '451000', '百色市', '230');
INSERT INTO `qj_area` VALUES ('265', '450000', '451100', '贺州市', '231');
INSERT INTO `qj_area` VALUES ('266', '450000', '451200', '河池市', '232');
INSERT INTO `qj_area` VALUES ('267', '450000', '451300', '来宾市', '233');
INSERT INTO `qj_area` VALUES ('268', '450000', '451400', '崇左市', '234');
INSERT INTO `qj_area` VALUES ('269', '460000', '460100', '海口市', '235');
INSERT INTO `qj_area` VALUES ('270', '460000', '460200', '三亚市', '236');
INSERT INTO `qj_area` VALUES ('271', '460000', '469000', '省直辖县级行政单位', '237');
INSERT INTO `qj_area` VALUES ('272', '500000', '500100', '市辖区', '238');
INSERT INTO `qj_area` VALUES ('273', '500000', '500200', '县', '239');
INSERT INTO `qj_area` VALUES ('274', '500000', '500300', '市', '240');
INSERT INTO `qj_area` VALUES ('275', '510000', '510100', '成都市', '241');
INSERT INTO `qj_area` VALUES ('276', '510000', '510300', '自贡市', '242');
INSERT INTO `qj_area` VALUES ('277', '510000', '510400', '攀枝花市', '243');
INSERT INTO `qj_area` VALUES ('278', '510000', '510500', '泸州市', '244');
INSERT INTO `qj_area` VALUES ('279', '510000', '510600', '德阳市', '245');
INSERT INTO `qj_area` VALUES ('280', '510000', '510700', '绵阳市', '246');
INSERT INTO `qj_area` VALUES ('281', '510000', '510800', '广元市', '247');
INSERT INTO `qj_area` VALUES ('282', '510000', '510900', '遂宁市', '248');
INSERT INTO `qj_area` VALUES ('283', '510000', '511000', '内江市', '249');
INSERT INTO `qj_area` VALUES ('284', '510000', '511100', '乐山市', '250');
INSERT INTO `qj_area` VALUES ('285', '510000', '511300', '南充市', '251');
INSERT INTO `qj_area` VALUES ('286', '510000', '511400', '眉山市', '252');
INSERT INTO `qj_area` VALUES ('287', '510000', '511500', '宜宾市', '253');
INSERT INTO `qj_area` VALUES ('288', '510000', '511600', '广安市', '254');
INSERT INTO `qj_area` VALUES ('289', '510000', '511700', '达州市', '255');
INSERT INTO `qj_area` VALUES ('290', '510000', '511800', '雅安市', '256');
INSERT INTO `qj_area` VALUES ('291', '510000', '511900', '巴中市', '257');
INSERT INTO `qj_area` VALUES ('292', '510000', '512000', '资阳市', '258');
INSERT INTO `qj_area` VALUES ('293', '510000', '513200', '阿坝藏族羌族自治州', '259');
INSERT INTO `qj_area` VALUES ('294', '510000', '513300', '甘孜藏族自治州', '260');
INSERT INTO `qj_area` VALUES ('295', '510000', '513400', '凉山彝族自治州', '261');
INSERT INTO `qj_area` VALUES ('296', '520000', '520100', '贵阳市', '262');
INSERT INTO `qj_area` VALUES ('297', '520000', '520200', '六盘水市', '263');
INSERT INTO `qj_area` VALUES ('298', '520000', '520300', '遵义市', '264');
INSERT INTO `qj_area` VALUES ('299', '520000', '520400', '安顺市', '265');
INSERT INTO `qj_area` VALUES ('300', '520000', '522200', '铜仁地区', '266');
INSERT INTO `qj_area` VALUES ('301', '520000', '522300', '黔西南布依族苗族自治州', '267');
INSERT INTO `qj_area` VALUES ('302', '520000', '522400', '毕节地区', '268');
INSERT INTO `qj_area` VALUES ('303', '520000', '522600', '黔东南苗族侗族自治州', '269');
INSERT INTO `qj_area` VALUES ('304', '520000', '522700', '黔南布依族苗族自治州', '270');
INSERT INTO `qj_area` VALUES ('305', '530000', '530100', '昆明市', '271');
INSERT INTO `qj_area` VALUES ('306', '530000', '530300', '曲靖市', '272');
INSERT INTO `qj_area` VALUES ('307', '530000', '530400', '玉溪市', '273');
INSERT INTO `qj_area` VALUES ('308', '530000', '530500', '保山市', '274');
INSERT INTO `qj_area` VALUES ('309', '530000', '530600', '昭通市', '275');
INSERT INTO `qj_area` VALUES ('310', '530000', '530700', '丽江市', '276');
INSERT INTO `qj_area` VALUES ('311', '530000', '530800', '思茅市', '277');
INSERT INTO `qj_area` VALUES ('312', '530000', '530900', '临沧市', '278');
INSERT INTO `qj_area` VALUES ('313', '530000', '532300', '楚雄彝族自治州', '279');
INSERT INTO `qj_area` VALUES ('314', '530000', '532500', '红河哈尼族彝族自治州', '280');
INSERT INTO `qj_area` VALUES ('315', '530000', '532600', '文山壮族苗族自治州', '281');
INSERT INTO `qj_area` VALUES ('316', '530000', '532800', '西双版纳傣族自治州', '282');
INSERT INTO `qj_area` VALUES ('317', '530000', '532900', '大理白族自治州', '283');
INSERT INTO `qj_area` VALUES ('318', '530000', '533100', '德宏傣族景颇族自治州', '284');
INSERT INTO `qj_area` VALUES ('319', '530000', '533300', '怒江傈僳族自治州', '285');
INSERT INTO `qj_area` VALUES ('320', '530000', '533400', '迪庆藏族自治州', '286');
INSERT INTO `qj_area` VALUES ('321', '540000', '540100', '拉萨市', '287');
INSERT INTO `qj_area` VALUES ('322', '540000', '542100', '昌都地区', '288');
INSERT INTO `qj_area` VALUES ('323', '540000', '542200', '山南地区', '289');
INSERT INTO `qj_area` VALUES ('324', '540000', '542300', '日喀则地区', '290');
INSERT INTO `qj_area` VALUES ('325', '540000', '542400', '那曲地区', '291');
INSERT INTO `qj_area` VALUES ('326', '540000', '542500', '阿里地区', '292');
INSERT INTO `qj_area` VALUES ('327', '540000', '542600', '林芝地区', '293');
INSERT INTO `qj_area` VALUES ('328', '610000', '610100', '西安市', '294');
INSERT INTO `qj_area` VALUES ('329', '610000', '610200', '铜川市', '295');
INSERT INTO `qj_area` VALUES ('330', '610000', '610300', '宝鸡市', '296');
INSERT INTO `qj_area` VALUES ('331', '610000', '610400', '咸阳市', '297');
INSERT INTO `qj_area` VALUES ('332', '610000', '610500', '渭南市', '298');
INSERT INTO `qj_area` VALUES ('333', '610000', '610600', '延安市', '299');
INSERT INTO `qj_area` VALUES ('334', '610000', '610700', '汉中市', '300');
INSERT INTO `qj_area` VALUES ('335', '610000', '610800', '榆林市', '301');
INSERT INTO `qj_area` VALUES ('336', '610000', '610900', '安康市', '302');
INSERT INTO `qj_area` VALUES ('337', '610000', '611000', '商洛市', '303');
INSERT INTO `qj_area` VALUES ('338', '620000', '620100', '兰州市', '304');
INSERT INTO `qj_area` VALUES ('339', '620000', '620200', '嘉峪关市', '305');
INSERT INTO `qj_area` VALUES ('340', '620000', '620300', '金昌市', '306');
INSERT INTO `qj_area` VALUES ('341', '620000', '620400', '白银市', '307');
INSERT INTO `qj_area` VALUES ('342', '620000', '620500', '天水市', '308');
INSERT INTO `qj_area` VALUES ('343', '620000', '620600', '武威市', '309');
INSERT INTO `qj_area` VALUES ('344', '620000', '620700', '张掖市', '310');
INSERT INTO `qj_area` VALUES ('345', '620000', '620800', '平凉市', '311');
INSERT INTO `qj_area` VALUES ('346', '620000', '620900', '酒泉市', '312');
INSERT INTO `qj_area` VALUES ('347', '620000', '621000', '庆阳市', '313');
INSERT INTO `qj_area` VALUES ('348', '620000', '621100', '定西市', '314');
INSERT INTO `qj_area` VALUES ('349', '620000', '621200', '陇南市', '315');
INSERT INTO `qj_area` VALUES ('350', '620000', '622900', '临夏回族自治州', '316');
INSERT INTO `qj_area` VALUES ('351', '620000', '623000', '甘南藏族自治州', '317');
INSERT INTO `qj_area` VALUES ('352', '630000', '630100', '西宁市', '318');
INSERT INTO `qj_area` VALUES ('353', '630000', '632100', '海东地区', '319');
INSERT INTO `qj_area` VALUES ('354', '630000', '632200', '海北藏族自治州', '320');
INSERT INTO `qj_area` VALUES ('355', '630000', '632300', '黄南藏族自治州', '321');
INSERT INTO `qj_area` VALUES ('356', '630000', '632500', '海南藏族自治州', '322');
INSERT INTO `qj_area` VALUES ('357', '630000', '632600', '果洛藏族自治州', '323');
INSERT INTO `qj_area` VALUES ('358', '630000', '632700', '玉树藏族自治州', '324');
INSERT INTO `qj_area` VALUES ('359', '630000', '632800', '海西蒙古族藏族自治州', '325');
INSERT INTO `qj_area` VALUES ('360', '640000', '640100', '银川市', '326');
INSERT INTO `qj_area` VALUES ('361', '640000', '640200', '石嘴山市', '327');
INSERT INTO `qj_area` VALUES ('362', '640000', '640300', '吴忠市', '328');
INSERT INTO `qj_area` VALUES ('363', '640000', '640400', '固原市', '329');
INSERT INTO `qj_area` VALUES ('364', '640000', '640500', '中卫市', '330');
INSERT INTO `qj_area` VALUES ('365', '650000', '650100', '乌鲁木齐市', '331');
INSERT INTO `qj_area` VALUES ('366', '650000', '650200', '克拉玛依市', '332');
INSERT INTO `qj_area` VALUES ('367', '650000', '652100', '吐鲁番地区', '333');
INSERT INTO `qj_area` VALUES ('368', '650000', '652200', '哈密地区', '334');
INSERT INTO `qj_area` VALUES ('369', '650000', '652300', '昌吉回族自治州', '335');
INSERT INTO `qj_area` VALUES ('370', '650000', '652700', '博尔塔拉蒙古自治州', '336');
INSERT INTO `qj_area` VALUES ('371', '650000', '652800', '巴音郭楞蒙古自治州', '337');
INSERT INTO `qj_area` VALUES ('372', '650000', '652900', '阿克苏地区', '338');
INSERT INTO `qj_area` VALUES ('373', '650000', '653000', '克孜勒苏柯尔克孜自治州', '339');
INSERT INTO `qj_area` VALUES ('374', '650000', '653100', '喀什地区', '340');
INSERT INTO `qj_area` VALUES ('375', '650000', '653200', '和田地区', '341');
INSERT INTO `qj_area` VALUES ('376', '650000', '654000', '伊犁哈萨克自治州', '342');
INSERT INTO `qj_area` VALUES ('377', '650000', '654200', '塔城地区', '343');
INSERT INTO `qj_area` VALUES ('378', '650000', '654300', '阿勒泰地区', '344');
INSERT INTO `qj_area` VALUES ('379', '650000', '659000', '省直辖行政单位', '345');
INSERT INTO `qj_area` VALUES ('380', '110100', '110101', '东城区', null);
INSERT INTO `qj_area` VALUES ('381', '110100', '110102', '西城区', null);
INSERT INTO `qj_area` VALUES ('382', '110100', '110103', '崇文区', null);
INSERT INTO `qj_area` VALUES ('383', '110100', '110104', '宣武区', null);
INSERT INTO `qj_area` VALUES ('384', '110100', '110105', '朝阳区', null);
INSERT INTO `qj_area` VALUES ('385', '110100', '110106', '丰台区', null);
INSERT INTO `qj_area` VALUES ('386', '110100', '110107', '石景山区', null);
INSERT INTO `qj_area` VALUES ('387', '110100', '110108', '海淀区', null);
INSERT INTO `qj_area` VALUES ('388', '110100', '110109', '门头沟区', null);
INSERT INTO `qj_area` VALUES ('389', '110100', '110111', '房山区', null);
INSERT INTO `qj_area` VALUES ('390', '110100', '110112', '通州区', null);
INSERT INTO `qj_area` VALUES ('391', '110100', '110113', '顺义区', null);
INSERT INTO `qj_area` VALUES ('392', '110100', '110114', '昌平区', null);
INSERT INTO `qj_area` VALUES ('393', '110100', '110115', '大兴区', null);
INSERT INTO `qj_area` VALUES ('394', '110100', '110116', '怀柔区', null);
INSERT INTO `qj_area` VALUES ('395', '110100', '110117', '平谷区', null);
INSERT INTO `qj_area` VALUES ('396', '110200', '110228', '密云县', null);
INSERT INTO `qj_area` VALUES ('397', '110200', '110229', '延庆县', null);
INSERT INTO `qj_area` VALUES ('398', '120100', '120101', '和平区', null);
INSERT INTO `qj_area` VALUES ('399', '120100', '120102', '河东区', null);
INSERT INTO `qj_area` VALUES ('400', '120100', '120103', '河西区', null);
INSERT INTO `qj_area` VALUES ('401', '120100', '120104', '南开区', null);
INSERT INTO `qj_area` VALUES ('402', '120100', '120105', '河北区', null);
INSERT INTO `qj_area` VALUES ('403', '120100', '120106', '红桥区', null);
INSERT INTO `qj_area` VALUES ('404', '120100', '120107', '塘沽区', null);
INSERT INTO `qj_area` VALUES ('405', '120100', '120108', '汉沽区', null);
INSERT INTO `qj_area` VALUES ('406', '120100', '120109', '大港区', null);
INSERT INTO `qj_area` VALUES ('407', '120100', '120110', '东丽区', null);
INSERT INTO `qj_area` VALUES ('408', '120100', '120111', '西青区', null);
INSERT INTO `qj_area` VALUES ('409', '120100', '120112', '津南区', null);
INSERT INTO `qj_area` VALUES ('410', '120100', '120113', '北辰区', null);
INSERT INTO `qj_area` VALUES ('411', '120100', '120114', '武清区', null);
INSERT INTO `qj_area` VALUES ('412', '120100', '120115', '宝坻区', null);
INSERT INTO `qj_area` VALUES ('413', '120200', '120221', '宁河县', null);
INSERT INTO `qj_area` VALUES ('414', '120200', '120223', '静海县', null);
INSERT INTO `qj_area` VALUES ('415', '120200', '120225', '蓟　县', null);
INSERT INTO `qj_area` VALUES ('416', '130100', '130101', '市辖区', null);
INSERT INTO `qj_area` VALUES ('417', '130100', '130102', '长安区', null);
INSERT INTO `qj_area` VALUES ('418', '130100', '130103', '桥东区', null);
INSERT INTO `qj_area` VALUES ('419', '130100', '130104', '桥西区', null);
INSERT INTO `qj_area` VALUES ('420', '130100', '130105', '新华区', null);
INSERT INTO `qj_area` VALUES ('421', '130100', '130107', '井陉矿区', null);
INSERT INTO `qj_area` VALUES ('422', '130100', '130108', '裕华区', null);
INSERT INTO `qj_area` VALUES ('423', '130100', '130121', '井陉县', null);
INSERT INTO `qj_area` VALUES ('424', '130100', '130123', '正定县', null);
INSERT INTO `qj_area` VALUES ('425', '130100', '130124', '栾城县', null);
INSERT INTO `qj_area` VALUES ('426', '130100', '130125', '行唐县', null);
INSERT INTO `qj_area` VALUES ('427', '130100', '130126', '灵寿县', null);
INSERT INTO `qj_area` VALUES ('428', '130100', '130127', '高邑县', null);
INSERT INTO `qj_area` VALUES ('429', '130100', '130128', '深泽县', null);
INSERT INTO `qj_area` VALUES ('430', '130100', '130129', '赞皇县', null);
INSERT INTO `qj_area` VALUES ('431', '130100', '130130', '无极县', null);
INSERT INTO `qj_area` VALUES ('432', '130100', '130131', '平山县', null);
INSERT INTO `qj_area` VALUES ('433', '130100', '130132', '元氏县', null);
INSERT INTO `qj_area` VALUES ('434', '130100', '130133', '赵　县', null);
INSERT INTO `qj_area` VALUES ('435', '130100', '130181', '辛集市', null);
INSERT INTO `qj_area` VALUES ('436', '130100', '130182', '藁城市', null);
INSERT INTO `qj_area` VALUES ('437', '130100', '130183', '晋州市', null);
INSERT INTO `qj_area` VALUES ('438', '130100', '130184', '新乐市', null);
INSERT INTO `qj_area` VALUES ('439', '130100', '130185', '鹿泉市', null);
INSERT INTO `qj_area` VALUES ('440', '130200', '130201', '市辖区', null);
INSERT INTO `qj_area` VALUES ('441', '130200', '130202', '路南区', null);
INSERT INTO `qj_area` VALUES ('442', '130200', '130203', '路北区', null);
INSERT INTO `qj_area` VALUES ('443', '130200', '130204', '古冶区', null);
INSERT INTO `qj_area` VALUES ('444', '130200', '130205', '开平区', null);
INSERT INTO `qj_area` VALUES ('445', '130200', '130207', '丰南区', null);
INSERT INTO `qj_area` VALUES ('446', '130200', '130208', '丰润区', null);
INSERT INTO `qj_area` VALUES ('447', '130200', '130223', '滦　县', null);
INSERT INTO `qj_area` VALUES ('448', '130200', '130224', '滦南县', null);
INSERT INTO `qj_area` VALUES ('449', '130200', '130225', '乐亭县', null);
INSERT INTO `qj_area` VALUES ('450', '130200', '130227', '迁西县', null);
INSERT INTO `qj_area` VALUES ('451', '130200', '130229', '玉田县', null);
INSERT INTO `qj_area` VALUES ('452', '130200', '130230', '唐海县', null);
INSERT INTO `qj_area` VALUES ('453', '130200', '130281', '遵化市', null);
INSERT INTO `qj_area` VALUES ('454', '130200', '130283', '迁安市', null);
INSERT INTO `qj_area` VALUES ('455', '130300', '130301', '市辖区', null);
INSERT INTO `qj_area` VALUES ('456', '130300', '130302', '海港区', null);
INSERT INTO `qj_area` VALUES ('457', '130300', '130303', '山海关区', null);
INSERT INTO `qj_area` VALUES ('458', '130300', '130304', '北戴河区', null);
INSERT INTO `qj_area` VALUES ('459', '130300', '130321', '青龙满族自治县', null);
INSERT INTO `qj_area` VALUES ('460', '130300', '130322', '昌黎县', null);
INSERT INTO `qj_area` VALUES ('461', '130300', '130323', '抚宁县', null);
INSERT INTO `qj_area` VALUES ('462', '130300', '130324', '卢龙县', null);
INSERT INTO `qj_area` VALUES ('463', '130400', '130401', '市辖区', null);
INSERT INTO `qj_area` VALUES ('464', '130400', '130402', '邯山区', null);
INSERT INTO `qj_area` VALUES ('465', '130400', '130403', '丛台区', null);
INSERT INTO `qj_area` VALUES ('466', '130400', '130404', '复兴区', null);
INSERT INTO `qj_area` VALUES ('467', '130400', '130406', '峰峰矿区', null);
INSERT INTO `qj_area` VALUES ('468', '130400', '130421', '邯郸县', null);
INSERT INTO `qj_area` VALUES ('469', '130400', '130423', '临漳县', null);
INSERT INTO `qj_area` VALUES ('470', '130400', '130424', '成安县', null);
INSERT INTO `qj_area` VALUES ('471', '130400', '130425', '大名县', null);
INSERT INTO `qj_area` VALUES ('472', '130400', '130426', '涉　县', null);
INSERT INTO `qj_area` VALUES ('473', '130400', '130427', '磁　县', null);
INSERT INTO `qj_area` VALUES ('474', '130400', '130428', '肥乡县', null);
INSERT INTO `qj_area` VALUES ('475', '130400', '130429', '永年县', null);
INSERT INTO `qj_area` VALUES ('476', '130400', '130430', '邱　县', null);
INSERT INTO `qj_area` VALUES ('477', '130400', '130431', '鸡泽县', null);
INSERT INTO `qj_area` VALUES ('478', '130400', '130432', '广平县', null);
INSERT INTO `qj_area` VALUES ('479', '130400', '130433', '馆陶县', null);
INSERT INTO `qj_area` VALUES ('480', '130400', '130434', '魏　县', null);
INSERT INTO `qj_area` VALUES ('481', '130400', '130435', '曲周县', null);
INSERT INTO `qj_area` VALUES ('482', '130400', '130481', '武安市', null);
INSERT INTO `qj_area` VALUES ('483', '130500', '130501', '市辖区', null);
INSERT INTO `qj_area` VALUES ('484', '130500', '130502', '桥东区', null);
INSERT INTO `qj_area` VALUES ('485', '130500', '130503', '桥西区', null);
INSERT INTO `qj_area` VALUES ('486', '130500', '130521', '邢台县', null);
INSERT INTO `qj_area` VALUES ('487', '130500', '130522', '临城县', null);
INSERT INTO `qj_area` VALUES ('488', '130500', '130523', '内丘县', null);
INSERT INTO `qj_area` VALUES ('489', '130500', '130524', '柏乡县', null);
INSERT INTO `qj_area` VALUES ('490', '130500', '130525', '隆尧县', null);
INSERT INTO `qj_area` VALUES ('491', '130500', '130526', '任　县', null);
INSERT INTO `qj_area` VALUES ('492', '130500', '130527', '南和县', null);
INSERT INTO `qj_area` VALUES ('493', '130500', '130528', '宁晋县', null);
INSERT INTO `qj_area` VALUES ('494', '130500', '130529', '巨鹿县', null);
INSERT INTO `qj_area` VALUES ('495', '130500', '130530', '新河县', null);
INSERT INTO `qj_area` VALUES ('496', '130500', '130531', '广宗县', null);
INSERT INTO `qj_area` VALUES ('497', '130500', '130532', '平乡县', null);
INSERT INTO `qj_area` VALUES ('498', '130500', '130533', '威　县', null);
INSERT INTO `qj_area` VALUES ('499', '130500', '130534', '清河县', null);
INSERT INTO `qj_area` VALUES ('500', '130500', '130535', '临西县', null);
INSERT INTO `qj_area` VALUES ('501', '130500', '130581', '南宫市', null);
INSERT INTO `qj_area` VALUES ('502', '130500', '130582', '沙河市', null);
INSERT INTO `qj_area` VALUES ('503', '130600', '130601', '市辖区', null);
INSERT INTO `qj_area` VALUES ('504', '130600', '130602', '新市区', null);
INSERT INTO `qj_area` VALUES ('505', '130600', '130603', '北市区', null);
INSERT INTO `qj_area` VALUES ('506', '130600', '130604', '南市区', null);
INSERT INTO `qj_area` VALUES ('507', '130600', '130621', '满城县', null);
INSERT INTO `qj_area` VALUES ('508', '130600', '130622', '清苑县', null);
INSERT INTO `qj_area` VALUES ('509', '130600', '130623', '涞水县', null);
INSERT INTO `qj_area` VALUES ('510', '130600', '130624', '阜平县', null);
INSERT INTO `qj_area` VALUES ('511', '130600', '130625', '徐水县', null);
INSERT INTO `qj_area` VALUES ('512', '130600', '130626', '定兴县', null);
INSERT INTO `qj_area` VALUES ('513', '130600', '130627', '唐　县', null);
INSERT INTO `qj_area` VALUES ('514', '130600', '130628', '高阳县', null);
INSERT INTO `qj_area` VALUES ('515', '130600', '130629', '容城县', null);
INSERT INTO `qj_area` VALUES ('516', '130600', '130630', '涞源县', null);
INSERT INTO `qj_area` VALUES ('517', '130600', '130631', '望都县', null);
INSERT INTO `qj_area` VALUES ('518', '130600', '130632', '安新县', null);
INSERT INTO `qj_area` VALUES ('519', '130600', '130633', '易　县', null);
INSERT INTO `qj_area` VALUES ('520', '130600', '130634', '曲阳县', null);
INSERT INTO `qj_area` VALUES ('521', '130600', '130635', '蠡　县', null);
INSERT INTO `qj_area` VALUES ('522', '130600', '130636', '顺平县', null);
INSERT INTO `qj_area` VALUES ('523', '130600', '130637', '博野县', null);
INSERT INTO `qj_area` VALUES ('524', '130600', '130638', '雄　县', null);
INSERT INTO `qj_area` VALUES ('525', '130600', '130681', '涿州市', null);
INSERT INTO `qj_area` VALUES ('526', '130600', '130682', '定州市', null);
INSERT INTO `qj_area` VALUES ('527', '130600', '130683', '安国市', null);
INSERT INTO `qj_area` VALUES ('528', '130600', '130684', '高碑店市', null);
INSERT INTO `qj_area` VALUES ('529', '130700', '130701', '市辖区', null);
INSERT INTO `qj_area` VALUES ('530', '130700', '130702', '桥东区', null);
INSERT INTO `qj_area` VALUES ('531', '130700', '130703', '桥西区', null);
INSERT INTO `qj_area` VALUES ('532', '130700', '130705', '宣化区', null);
INSERT INTO `qj_area` VALUES ('533', '130700', '130706', '下花园区', null);
INSERT INTO `qj_area` VALUES ('534', '130700', '130721', '宣化县', null);
INSERT INTO `qj_area` VALUES ('535', '130700', '130722', '张北县', null);
INSERT INTO `qj_area` VALUES ('536', '130700', '130723', '康保县', null);
INSERT INTO `qj_area` VALUES ('537', '130700', '130724', '沽源县', null);
INSERT INTO `qj_area` VALUES ('538', '130700', '130725', '尚义县', null);
INSERT INTO `qj_area` VALUES ('539', '130700', '130726', '蔚　县', null);
INSERT INTO `qj_area` VALUES ('540', '130700', '130727', '阳原县', null);
INSERT INTO `qj_area` VALUES ('541', '130700', '130728', '怀安县', null);
INSERT INTO `qj_area` VALUES ('542', '130700', '130729', '万全县', null);
INSERT INTO `qj_area` VALUES ('543', '130700', '130730', '怀来县', null);
INSERT INTO `qj_area` VALUES ('544', '130700', '130731', '涿鹿县', null);
INSERT INTO `qj_area` VALUES ('545', '130700', '130732', '赤城县', null);
INSERT INTO `qj_area` VALUES ('546', '130700', '130733', '崇礼县', null);
INSERT INTO `qj_area` VALUES ('547', '130800', '130801', '市辖区', null);
INSERT INTO `qj_area` VALUES ('548', '130800', '130802', '双桥区', null);
INSERT INTO `qj_area` VALUES ('549', '130800', '130803', '双滦区', null);
INSERT INTO `qj_area` VALUES ('550', '130800', '130804', '鹰手营子矿区', null);
INSERT INTO `qj_area` VALUES ('551', '130800', '130821', '承德县', null);
INSERT INTO `qj_area` VALUES ('552', '130800', '130822', '兴隆县', null);
INSERT INTO `qj_area` VALUES ('553', '130800', '130823', '平泉县', null);
INSERT INTO `qj_area` VALUES ('554', '130800', '130824', '滦平县', null);
INSERT INTO `qj_area` VALUES ('555', '130800', '130825', '隆化县', null);
INSERT INTO `qj_area` VALUES ('556', '130800', '130826', '丰宁满族自治县', null);
INSERT INTO `qj_area` VALUES ('557', '130800', '130827', '宽城满族自治县', null);
INSERT INTO `qj_area` VALUES ('558', '130800', '130828', '围场满族蒙古族自治县', null);
INSERT INTO `qj_area` VALUES ('559', '130900', '130901', '市辖区', null);
INSERT INTO `qj_area` VALUES ('560', '130900', '130902', '新华区', null);
INSERT INTO `qj_area` VALUES ('561', '130900', '130903', '运河区', null);
INSERT INTO `qj_area` VALUES ('562', '130900', '130921', '沧　县', null);
INSERT INTO `qj_area` VALUES ('563', '130900', '130922', '青　县', null);
INSERT INTO `qj_area` VALUES ('564', '130900', '130923', '东光县', null);
INSERT INTO `qj_area` VALUES ('565', '130900', '130924', '海兴县', null);
INSERT INTO `qj_area` VALUES ('566', '130900', '130925', '盐山县', null);
INSERT INTO `qj_area` VALUES ('567', '130900', '130926', '肃宁县', null);
INSERT INTO `qj_area` VALUES ('568', '130900', '130927', '南皮县', null);
INSERT INTO `qj_area` VALUES ('569', '130900', '130928', '吴桥县', null);
INSERT INTO `qj_area` VALUES ('570', '130900', '130929', '献　县', null);
INSERT INTO `qj_area` VALUES ('571', '130900', '130930', '孟村回族自治县', null);
INSERT INTO `qj_area` VALUES ('572', '130900', '130981', '泊头市', null);
INSERT INTO `qj_area` VALUES ('573', '130900', '130982', '任丘市', null);
INSERT INTO `qj_area` VALUES ('574', '130900', '130983', '黄骅市', null);
INSERT INTO `qj_area` VALUES ('575', '130900', '130984', '河间市', null);
INSERT INTO `qj_area` VALUES ('576', '131000', '131001', '市辖区', null);
INSERT INTO `qj_area` VALUES ('577', '131000', '131002', '安次区', null);
INSERT INTO `qj_area` VALUES ('578', '131000', '131003', '广阳区', null);
INSERT INTO `qj_area` VALUES ('579', '131000', '131022', '固安县', null);
INSERT INTO `qj_area` VALUES ('580', '131000', '131023', '永清县', null);
INSERT INTO `qj_area` VALUES ('581', '131000', '131024', '香河县', null);
INSERT INTO `qj_area` VALUES ('582', '131000', '131025', '大城县', null);
INSERT INTO `qj_area` VALUES ('583', '131000', '131026', '文安县', null);
INSERT INTO `qj_area` VALUES ('584', '131000', '131028', '大厂回族自治县', null);
INSERT INTO `qj_area` VALUES ('585', '131000', '131081', '霸州市', null);
INSERT INTO `qj_area` VALUES ('586', '131000', '131082', '三河市', null);
INSERT INTO `qj_area` VALUES ('587', '131100', '131101', '市辖区', null);
INSERT INTO `qj_area` VALUES ('588', '131100', '131102', '桃城区', null);
INSERT INTO `qj_area` VALUES ('589', '131100', '131121', '枣强县', null);
INSERT INTO `qj_area` VALUES ('590', '131100', '131122', '武邑县', null);
INSERT INTO `qj_area` VALUES ('591', '131100', '131123', '武强县', null);
INSERT INTO `qj_area` VALUES ('592', '131100', '131124', '饶阳县', null);
INSERT INTO `qj_area` VALUES ('593', '131100', '131125', '安平县', null);
INSERT INTO `qj_area` VALUES ('594', '131100', '131126', '故城县', null);
INSERT INTO `qj_area` VALUES ('595', '131100', '131127', '景　县', null);
INSERT INTO `qj_area` VALUES ('596', '131100', '131128', '阜城县', null);
INSERT INTO `qj_area` VALUES ('597', '131100', '131181', '冀州市', null);
INSERT INTO `qj_area` VALUES ('598', '131100', '131182', '深州市', null);
INSERT INTO `qj_area` VALUES ('599', '140100', '140101', '市辖区', null);
INSERT INTO `qj_area` VALUES ('600', '140100', '140105', '小店区', null);
INSERT INTO `qj_area` VALUES ('601', '140100', '140106', '迎泽区', null);
INSERT INTO `qj_area` VALUES ('602', '140100', '140107', '杏花岭区', null);
INSERT INTO `qj_area` VALUES ('603', '140100', '140108', '尖草坪区', null);
INSERT INTO `qj_area` VALUES ('604', '140100', '140109', '万柏林区', null);
INSERT INTO `qj_area` VALUES ('605', '140100', '140110', '晋源区', null);
INSERT INTO `qj_area` VALUES ('606', '140100', '140121', '清徐县', null);
INSERT INTO `qj_area` VALUES ('607', '140100', '140122', '阳曲县', null);
INSERT INTO `qj_area` VALUES ('608', '140100', '140123', '娄烦县', null);
INSERT INTO `qj_area` VALUES ('609', '140100', '140181', '古交市', null);
INSERT INTO `qj_area` VALUES ('610', '140200', '140201', '市辖区', null);
INSERT INTO `qj_area` VALUES ('611', '140200', '140202', '城　区', null);
INSERT INTO `qj_area` VALUES ('612', '140200', '140203', '矿　区', null);
INSERT INTO `qj_area` VALUES ('613', '140200', '140211', '南郊区', null);
INSERT INTO `qj_area` VALUES ('614', '140200', '140212', '新荣区', null);
INSERT INTO `qj_area` VALUES ('615', '140200', '140221', '阳高县', null);
INSERT INTO `qj_area` VALUES ('616', '140200', '140222', '天镇县', null);
INSERT INTO `qj_area` VALUES ('617', '140200', '140223', '广灵县', null);
INSERT INTO `qj_area` VALUES ('618', '140200', '140224', '灵丘县', null);
INSERT INTO `qj_area` VALUES ('619', '140200', '140225', '浑源县', null);
INSERT INTO `qj_area` VALUES ('620', '140200', '140226', '左云县', null);
INSERT INTO `qj_area` VALUES ('621', '140200', '140227', '大同县', null);
INSERT INTO `qj_area` VALUES ('622', '140300', '140301', '市辖区', null);
INSERT INTO `qj_area` VALUES ('623', '140300', '140302', '城　区', null);
INSERT INTO `qj_area` VALUES ('624', '140300', '140303', '矿　区', null);
INSERT INTO `qj_area` VALUES ('625', '140300', '140311', '郊　区', null);
INSERT INTO `qj_area` VALUES ('626', '140300', '140321', '平定县', null);
INSERT INTO `qj_area` VALUES ('627', '140300', '140322', '盂　县', null);
INSERT INTO `qj_area` VALUES ('628', '140400', '140401', '市辖区', null);
INSERT INTO `qj_area` VALUES ('629', '140400', '140402', '城　区', null);
INSERT INTO `qj_area` VALUES ('630', '140400', '140411', '郊　区', null);
INSERT INTO `qj_area` VALUES ('631', '140400', '140421', '长治县', null);
INSERT INTO `qj_area` VALUES ('632', '140400', '140423', '襄垣县', null);
INSERT INTO `qj_area` VALUES ('633', '140400', '140424', '屯留县', null);
INSERT INTO `qj_area` VALUES ('634', '140400', '140425', '平顺县', null);
INSERT INTO `qj_area` VALUES ('635', '140400', '140426', '黎城县', null);
INSERT INTO `qj_area` VALUES ('636', '140400', '140427', '壶关县', null);
INSERT INTO `qj_area` VALUES ('637', '140400', '140428', '长子县', null);
INSERT INTO `qj_area` VALUES ('638', '140400', '140429', '武乡县', null);
INSERT INTO `qj_area` VALUES ('639', '140400', '140430', '沁　县', null);
INSERT INTO `qj_area` VALUES ('640', '140400', '140431', '沁源县', null);
INSERT INTO `qj_area` VALUES ('641', '140400', '140481', '潞城市', null);
INSERT INTO `qj_area` VALUES ('642', '140500', '140501', '市辖区', null);
INSERT INTO `qj_area` VALUES ('643', '140500', '140502', '城　区', null);
INSERT INTO `qj_area` VALUES ('644', '140500', '140521', '沁水县', null);
INSERT INTO `qj_area` VALUES ('645', '140500', '140522', '阳城县', null);
INSERT INTO `qj_area` VALUES ('646', '140500', '140524', '陵川县', null);
INSERT INTO `qj_area` VALUES ('647', '140500', '140525', '泽州县', null);
INSERT INTO `qj_area` VALUES ('648', '140500', '140581', '高平市', null);
INSERT INTO `qj_area` VALUES ('649', '140600', '140601', '市辖区', null);
INSERT INTO `qj_area` VALUES ('650', '140600', '140602', '朔城区', null);
INSERT INTO `qj_area` VALUES ('651', '140600', '140603', '平鲁区', null);
INSERT INTO `qj_area` VALUES ('652', '140600', '140621', '山阴县', null);
INSERT INTO `qj_area` VALUES ('653', '140600', '140622', '应　县', null);
INSERT INTO `qj_area` VALUES ('654', '140600', '140623', '右玉县', null);
INSERT INTO `qj_area` VALUES ('655', '140600', '140624', '怀仁县', null);
INSERT INTO `qj_area` VALUES ('656', '140700', '140701', '市辖区', null);
INSERT INTO `qj_area` VALUES ('657', '140700', '140702', '榆次区', null);
INSERT INTO `qj_area` VALUES ('658', '140700', '140721', '榆社县', null);
INSERT INTO `qj_area` VALUES ('659', '140700', '140722', '左权县', null);
INSERT INTO `qj_area` VALUES ('660', '140700', '140723', '和顺县', null);
INSERT INTO `qj_area` VALUES ('661', '140700', '140724', '昔阳县', null);
INSERT INTO `qj_area` VALUES ('662', '140700', '140725', '寿阳县', null);
INSERT INTO `qj_area` VALUES ('663', '140700', '140726', '太谷县', null);
INSERT INTO `qj_area` VALUES ('664', '140700', '140727', '祁　县', null);
INSERT INTO `qj_area` VALUES ('665', '140700', '140728', '平遥县', null);
INSERT INTO `qj_area` VALUES ('666', '140700', '140729', '灵石县', null);
INSERT INTO `qj_area` VALUES ('667', '140700', '140781', '介休市', null);
INSERT INTO `qj_area` VALUES ('668', '140800', '140801', '市辖区', null);
INSERT INTO `qj_area` VALUES ('669', '140800', '140802', '盐湖区', null);
INSERT INTO `qj_area` VALUES ('670', '140800', '140821', '临猗县', null);
INSERT INTO `qj_area` VALUES ('671', '140800', '140822', '万荣县', null);
INSERT INTO `qj_area` VALUES ('672', '140800', '140823', '闻喜县', null);
INSERT INTO `qj_area` VALUES ('673', '140800', '140824', '稷山县', null);
INSERT INTO `qj_area` VALUES ('674', '140800', '140825', '新绛县', null);
INSERT INTO `qj_area` VALUES ('675', '140800', '140826', '绛　县', null);
INSERT INTO `qj_area` VALUES ('676', '140800', '140827', '垣曲县', null);
INSERT INTO `qj_area` VALUES ('677', '140800', '140828', '夏　县', null);
INSERT INTO `qj_area` VALUES ('678', '140800', '140829', '平陆县', null);
INSERT INTO `qj_area` VALUES ('679', '140800', '140830', '芮城县', null);
INSERT INTO `qj_area` VALUES ('680', '140800', '140881', '永济市', null);
INSERT INTO `qj_area` VALUES ('681', '140800', '140882', '河津市', null);
INSERT INTO `qj_area` VALUES ('682', '140900', '140901', '市辖区', null);
INSERT INTO `qj_area` VALUES ('683', '140900', '140902', '忻府区', null);
INSERT INTO `qj_area` VALUES ('684', '140900', '140921', '定襄县', null);
INSERT INTO `qj_area` VALUES ('685', '140900', '140922', '五台县', null);
INSERT INTO `qj_area` VALUES ('686', '140900', '140923', '代　县', null);
INSERT INTO `qj_area` VALUES ('687', '140900', '140924', '繁峙县', null);
INSERT INTO `qj_area` VALUES ('688', '140900', '140925', '宁武县', null);
INSERT INTO `qj_area` VALUES ('689', '140900', '140926', '静乐县', null);
INSERT INTO `qj_area` VALUES ('690', '140900', '140927', '神池县', null);
INSERT INTO `qj_area` VALUES ('691', '140900', '140928', '五寨县', null);
INSERT INTO `qj_area` VALUES ('692', '140900', '140929', '岢岚县', null);
INSERT INTO `qj_area` VALUES ('693', '140900', '140930', '河曲县', null);
INSERT INTO `qj_area` VALUES ('694', '140900', '140931', '保德县', null);
INSERT INTO `qj_area` VALUES ('695', '140900', '140932', '偏关县', null);
INSERT INTO `qj_area` VALUES ('696', '140900', '140981', '原平市', null);
INSERT INTO `qj_area` VALUES ('697', '141000', '141001', '市辖区', null);
INSERT INTO `qj_area` VALUES ('698', '141000', '141002', '尧都区', null);
INSERT INTO `qj_area` VALUES ('699', '141000', '141021', '曲沃县', null);
INSERT INTO `qj_area` VALUES ('700', '141000', '141022', '翼城县', null);
INSERT INTO `qj_area` VALUES ('701', '141000', '141023', '襄汾县', null);
INSERT INTO `qj_area` VALUES ('702', '141000', '141024', '洪洞县', null);
INSERT INTO `qj_area` VALUES ('703', '141000', '141025', '古　县', null);
INSERT INTO `qj_area` VALUES ('704', '141000', '141026', '安泽县', null);
INSERT INTO `qj_area` VALUES ('705', '141000', '141027', '浮山县', null);
INSERT INTO `qj_area` VALUES ('706', '141000', '141028', '吉　县', null);
INSERT INTO `qj_area` VALUES ('707', '141000', '141029', '乡宁县', null);
INSERT INTO `qj_area` VALUES ('708', '141000', '141030', '大宁县', null);
INSERT INTO `qj_area` VALUES ('709', '141000', '141031', '隰　县', null);
INSERT INTO `qj_area` VALUES ('710', '141000', '141032', '永和县', null);
INSERT INTO `qj_area` VALUES ('711', '141000', '141033', '蒲　县', null);
INSERT INTO `qj_area` VALUES ('712', '141000', '141034', '汾西县', null);
INSERT INTO `qj_area` VALUES ('713', '141000', '141081', '侯马市', null);
INSERT INTO `qj_area` VALUES ('714', '141000', '141082', '霍州市', null);
INSERT INTO `qj_area` VALUES ('715', '141100', '141101', '市辖区', null);
INSERT INTO `qj_area` VALUES ('716', '141100', '141102', '离石区', null);
INSERT INTO `qj_area` VALUES ('717', '141100', '141121', '文水县', null);
INSERT INTO `qj_area` VALUES ('718', '141100', '141122', '交城县', null);
INSERT INTO `qj_area` VALUES ('719', '141100', '141123', '兴　县', null);
INSERT INTO `qj_area` VALUES ('720', '141100', '141124', '临　县', null);
INSERT INTO `qj_area` VALUES ('721', '141100', '141125', '柳林县', null);
INSERT INTO `qj_area` VALUES ('722', '141100', '141126', '石楼县', null);
INSERT INTO `qj_area` VALUES ('723', '141100', '141127', '岚　县', null);
INSERT INTO `qj_area` VALUES ('724', '141100', '141128', '方山县', null);
INSERT INTO `qj_area` VALUES ('725', '141100', '141129', '中阳县', null);
INSERT INTO `qj_area` VALUES ('726', '141100', '141130', '交口县', null);
INSERT INTO `qj_area` VALUES ('727', '141100', '141181', '孝义市', null);
INSERT INTO `qj_area` VALUES ('728', '141100', '141182', '汾阳市', null);
INSERT INTO `qj_area` VALUES ('729', '150100', '150101', '市辖区', null);
INSERT INTO `qj_area` VALUES ('730', '150100', '150102', '新城区', null);
INSERT INTO `qj_area` VALUES ('731', '150100', '150103', '回民区', null);
INSERT INTO `qj_area` VALUES ('732', '150100', '150104', '玉泉区', null);
INSERT INTO `qj_area` VALUES ('733', '150100', '150105', '赛罕区', null);
INSERT INTO `qj_area` VALUES ('734', '150100', '150121', '土默特左旗', null);
INSERT INTO `qj_area` VALUES ('735', '150100', '150122', '托克托县', null);
INSERT INTO `qj_area` VALUES ('736', '150100', '150123', '和林格尔县', null);
INSERT INTO `qj_area` VALUES ('737', '150100', '150124', '清水河县', null);
INSERT INTO `qj_area` VALUES ('738', '150100', '150125', '武川县', null);
INSERT INTO `qj_area` VALUES ('739', '150200', '150201', '市辖区', null);
INSERT INTO `qj_area` VALUES ('740', '150200', '150202', '东河区', null);
INSERT INTO `qj_area` VALUES ('741', '150200', '150203', '昆都仑区', null);
INSERT INTO `qj_area` VALUES ('742', '150200', '150204', '青山区', null);
INSERT INTO `qj_area` VALUES ('743', '150200', '150205', '石拐区', null);
INSERT INTO `qj_area` VALUES ('744', '150200', '150206', '白云矿区', null);
INSERT INTO `qj_area` VALUES ('745', '150200', '150207', '九原区', null);
INSERT INTO `qj_area` VALUES ('746', '150200', '150221', '土默特右旗', null);
INSERT INTO `qj_area` VALUES ('747', '150200', '150222', '固阳县', null);
INSERT INTO `qj_area` VALUES ('748', '150200', '150223', '达尔罕茂明安联合旗', null);
INSERT INTO `qj_area` VALUES ('749', '150300', '150301', '市辖区', null);
INSERT INTO `qj_area` VALUES ('750', '150300', '150302', '海勃湾区', null);
INSERT INTO `qj_area` VALUES ('751', '150300', '150303', '海南区', null);
INSERT INTO `qj_area` VALUES ('752', '150300', '150304', '乌达区', null);
INSERT INTO `qj_area` VALUES ('753', '150400', '150401', '市辖区', null);
INSERT INTO `qj_area` VALUES ('754', '150400', '150402', '红山区', null);
INSERT INTO `qj_area` VALUES ('755', '150400', '150403', '元宝山区', null);
INSERT INTO `qj_area` VALUES ('756', '150400', '150404', '松山区', null);
INSERT INTO `qj_area` VALUES ('757', '150400', '150421', '阿鲁科尔沁旗', null);
INSERT INTO `qj_area` VALUES ('758', '150400', '150422', '巴林左旗', null);
INSERT INTO `qj_area` VALUES ('759', '150400', '150423', '巴林右旗', null);
INSERT INTO `qj_area` VALUES ('760', '150400', '150424', '林西县', null);
INSERT INTO `qj_area` VALUES ('761', '150400', '150425', '克什克腾旗', null);
INSERT INTO `qj_area` VALUES ('762', '150400', '150426', '翁牛特旗', null);
INSERT INTO `qj_area` VALUES ('763', '150400', '150428', '喀喇沁旗', null);
INSERT INTO `qj_area` VALUES ('764', '150400', '150429', '宁城县', null);
INSERT INTO `qj_area` VALUES ('765', '150400', '150430', '敖汉旗', null);
INSERT INTO `qj_area` VALUES ('766', '150500', '150501', '市辖区', null);
INSERT INTO `qj_area` VALUES ('767', '150500', '150502', '科尔沁区', null);
INSERT INTO `qj_area` VALUES ('768', '150500', '150521', '科尔沁左翼中旗', null);
INSERT INTO `qj_area` VALUES ('769', '150500', '150522', '科尔沁左翼后旗', null);
INSERT INTO `qj_area` VALUES ('770', '150500', '150523', '开鲁县', null);
INSERT INTO `qj_area` VALUES ('771', '150500', '150524', '库伦旗', null);
INSERT INTO `qj_area` VALUES ('772', '150500', '150525', '奈曼旗', null);
INSERT INTO `qj_area` VALUES ('773', '150500', '150526', '扎鲁特旗', null);
INSERT INTO `qj_area` VALUES ('774', '150500', '150581', '霍林郭勒市', null);
INSERT INTO `qj_area` VALUES ('775', '150600', '150602', '东胜区', null);
INSERT INTO `qj_area` VALUES ('776', '150600', '150621', '达拉特旗', null);
INSERT INTO `qj_area` VALUES ('777', '150600', '150622', '准格尔旗', null);
INSERT INTO `qj_area` VALUES ('778', '150600', '150623', '鄂托克前旗', null);
INSERT INTO `qj_area` VALUES ('779', '150600', '150624', '鄂托克旗', null);
INSERT INTO `qj_area` VALUES ('780', '150600', '150625', '杭锦旗', null);
INSERT INTO `qj_area` VALUES ('781', '150600', '150626', '乌审旗', null);
INSERT INTO `qj_area` VALUES ('782', '150600', '150627', '伊金霍洛旗', null);
INSERT INTO `qj_area` VALUES ('783', '150700', '150701', '市辖区', null);
INSERT INTO `qj_area` VALUES ('784', '150700', '150702', '海拉尔区', null);
INSERT INTO `qj_area` VALUES ('785', '150700', '150721', '阿荣旗', null);
INSERT INTO `qj_area` VALUES ('786', '150700', '150722', '莫力达瓦达斡尔族自治旗', null);
INSERT INTO `qj_area` VALUES ('787', '150700', '150723', '鄂伦春自治旗', null);
INSERT INTO `qj_area` VALUES ('788', '150700', '150724', '鄂温克族自治旗', null);
INSERT INTO `qj_area` VALUES ('789', '150700', '150725', '陈巴尔虎旗', null);
INSERT INTO `qj_area` VALUES ('790', '150700', '150726', '新巴尔虎左旗', null);
INSERT INTO `qj_area` VALUES ('791', '150700', '150727', '新巴尔虎右旗', null);
INSERT INTO `qj_area` VALUES ('792', '150700', '150781', '满洲里市', null);
INSERT INTO `qj_area` VALUES ('793', '150700', '150782', '牙克石市', null);
INSERT INTO `qj_area` VALUES ('794', '150700', '150783', '扎兰屯市', null);
INSERT INTO `qj_area` VALUES ('795', '150700', '150784', '额尔古纳市', null);
INSERT INTO `qj_area` VALUES ('796', '150700', '150785', '根河市', null);
INSERT INTO `qj_area` VALUES ('797', '150800', '150801', '市辖区', null);
INSERT INTO `qj_area` VALUES ('798', '150800', '150802', '临河区', null);
INSERT INTO `qj_area` VALUES ('799', '150800', '150821', '五原县', null);
INSERT INTO `qj_area` VALUES ('800', '150800', '150822', '磴口县', null);
INSERT INTO `qj_area` VALUES ('801', '150800', '150823', '乌拉特前旗', null);
INSERT INTO `qj_area` VALUES ('802', '150800', '150824', '乌拉特中旗', null);
INSERT INTO `qj_area` VALUES ('803', '150800', '150825', '乌拉特后旗', null);
INSERT INTO `qj_area` VALUES ('804', '150800', '150826', '杭锦后旗', null);
INSERT INTO `qj_area` VALUES ('805', '150900', '150901', '市辖区', null);
INSERT INTO `qj_area` VALUES ('806', '150900', '150902', '集宁区', null);
INSERT INTO `qj_area` VALUES ('807', '150900', '150921', '卓资县', null);
INSERT INTO `qj_area` VALUES ('808', '150900', '150922', '化德县', null);
INSERT INTO `qj_area` VALUES ('809', '150900', '150923', '商都县', null);
INSERT INTO `qj_area` VALUES ('810', '150900', '150924', '兴和县', null);
INSERT INTO `qj_area` VALUES ('811', '150900', '150925', '凉城县', null);
INSERT INTO `qj_area` VALUES ('812', '150900', '150926', '察哈尔右翼前旗', null);
INSERT INTO `qj_area` VALUES ('813', '150900', '150927', '察哈尔右翼中旗', null);
INSERT INTO `qj_area` VALUES ('814', '150900', '150928', '察哈尔右翼后旗', null);
INSERT INTO `qj_area` VALUES ('815', '150900', '150929', '四子王旗', null);
INSERT INTO `qj_area` VALUES ('816', '150900', '150981', '丰镇市', null);
INSERT INTO `qj_area` VALUES ('817', '152200', '152201', '乌兰浩特市', null);
INSERT INTO `qj_area` VALUES ('818', '152200', '152202', '阿尔山市', null);
INSERT INTO `qj_area` VALUES ('819', '152200', '152221', '科尔沁右翼前旗', null);
INSERT INTO `qj_area` VALUES ('820', '152200', '152222', '科尔沁右翼中旗', null);
INSERT INTO `qj_area` VALUES ('821', '152200', '152223', '扎赉特旗', null);
INSERT INTO `qj_area` VALUES ('822', '152200', '152224', '突泉县', null);
INSERT INTO `qj_area` VALUES ('823', '152500', '152501', '二连浩特市', null);
INSERT INTO `qj_area` VALUES ('824', '152500', '152502', '锡林浩特市', null);
INSERT INTO `qj_area` VALUES ('825', '152500', '152522', '阿巴嘎旗', null);
INSERT INTO `qj_area` VALUES ('826', '152500', '152523', '苏尼特左旗', null);
INSERT INTO `qj_area` VALUES ('827', '152500', '152524', '苏尼特右旗', null);
INSERT INTO `qj_area` VALUES ('828', '152500', '152525', '东乌珠穆沁旗', null);
INSERT INTO `qj_area` VALUES ('829', '152500', '152526', '西乌珠穆沁旗', null);
INSERT INTO `qj_area` VALUES ('830', '152500', '152527', '太仆寺旗', null);
INSERT INTO `qj_area` VALUES ('831', '152500', '152528', '镶黄旗', null);
INSERT INTO `qj_area` VALUES ('832', '152500', '152529', '正镶白旗', null);
INSERT INTO `qj_area` VALUES ('833', '152500', '152530', '正蓝旗', null);
INSERT INTO `qj_area` VALUES ('834', '152500', '152531', '多伦县', null);
INSERT INTO `qj_area` VALUES ('835', '152900', '152921', '阿拉善左旗', null);
INSERT INTO `qj_area` VALUES ('836', '152900', '152922', '阿拉善右旗', null);
INSERT INTO `qj_area` VALUES ('837', '152900', '152923', '额济纳旗', null);
INSERT INTO `qj_area` VALUES ('838', '210100', '210101', '市辖区', null);
INSERT INTO `qj_area` VALUES ('839', '210100', '210102', '和平区', null);
INSERT INTO `qj_area` VALUES ('840', '210100', '210103', '沈河区', null);
INSERT INTO `qj_area` VALUES ('841', '210100', '210104', '大东区', null);
INSERT INTO `qj_area` VALUES ('842', '210100', '210105', '皇姑区', null);
INSERT INTO `qj_area` VALUES ('843', '210100', '210106', '铁西区', null);
INSERT INTO `qj_area` VALUES ('844', '210100', '210111', '苏家屯区', null);
INSERT INTO `qj_area` VALUES ('845', '210100', '210112', '东陵区', null);
INSERT INTO `qj_area` VALUES ('846', '210100', '210113', '新城子区', null);
INSERT INTO `qj_area` VALUES ('847', '210100', '210114', '于洪区', null);
INSERT INTO `qj_area` VALUES ('848', '210100', '210122', '辽中县', null);
INSERT INTO `qj_area` VALUES ('849', '210100', '210123', '康平县', null);
INSERT INTO `qj_area` VALUES ('850', '210100', '210124', '法库县', null);
INSERT INTO `qj_area` VALUES ('851', '210100', '210181', '新民市', null);
INSERT INTO `qj_area` VALUES ('852', '210200', '210201', '市辖区', null);
INSERT INTO `qj_area` VALUES ('853', '210200', '210202', '中山区', null);
INSERT INTO `qj_area` VALUES ('854', '210200', '210203', '西岗区', null);
INSERT INTO `qj_area` VALUES ('855', '210200', '210204', '沙河口区', null);
INSERT INTO `qj_area` VALUES ('856', '210200', '210211', '甘井子区', null);
INSERT INTO `qj_area` VALUES ('857', '210200', '210212', '旅顺口区', null);
INSERT INTO `qj_area` VALUES ('858', '210200', '210213', '金州区', null);
INSERT INTO `qj_area` VALUES ('859', '210200', '210224', '长海县', null);
INSERT INTO `qj_area` VALUES ('860', '210200', '210281', '瓦房店市', null);
INSERT INTO `qj_area` VALUES ('861', '210200', '210282', '普兰店市', null);
INSERT INTO `qj_area` VALUES ('862', '210200', '210283', '庄河市', null);
INSERT INTO `qj_area` VALUES ('863', '210300', '210301', '市辖区', null);
INSERT INTO `qj_area` VALUES ('864', '210300', '210302', '铁东区', null);
INSERT INTO `qj_area` VALUES ('865', '210300', '210303', '铁西区', null);
INSERT INTO `qj_area` VALUES ('866', '210300', '210304', '立山区', null);
INSERT INTO `qj_area` VALUES ('867', '210300', '210311', '千山区', null);
INSERT INTO `qj_area` VALUES ('868', '210300', '210321', '台安县', null);
INSERT INTO `qj_area` VALUES ('869', '210300', '210323', '岫岩满族自治县', null);
INSERT INTO `qj_area` VALUES ('870', '210300', '210381', '海城市', null);
INSERT INTO `qj_area` VALUES ('871', '210400', '210401', '市辖区', null);
INSERT INTO `qj_area` VALUES ('872', '210400', '210402', '新抚区', null);
INSERT INTO `qj_area` VALUES ('873', '210400', '210403', '东洲区', null);
INSERT INTO `qj_area` VALUES ('874', '210400', '210404', '望花区', null);
INSERT INTO `qj_area` VALUES ('875', '210400', '210411', '顺城区', null);
INSERT INTO `qj_area` VALUES ('876', '210400', '210421', '抚顺县', null);
INSERT INTO `qj_area` VALUES ('877', '210400', '210422', '新宾满族自治县', null);
INSERT INTO `qj_area` VALUES ('878', '210400', '210423', '清原满族自治县', null);
INSERT INTO `qj_area` VALUES ('879', '210500', '210501', '市辖区', null);
INSERT INTO `qj_area` VALUES ('880', '210500', '210502', '平山区', null);
INSERT INTO `qj_area` VALUES ('881', '210500', '210503', '溪湖区', null);
INSERT INTO `qj_area` VALUES ('882', '210500', '210504', '明山区', null);
INSERT INTO `qj_area` VALUES ('883', '210500', '210505', '南芬区', null);
INSERT INTO `qj_area` VALUES ('884', '210500', '210521', '本溪满族自治县', null);
INSERT INTO `qj_area` VALUES ('885', '210500', '210522', '桓仁满族自治县', null);
INSERT INTO `qj_area` VALUES ('886', '210600', '210601', '市辖区', null);
INSERT INTO `qj_area` VALUES ('887', '210600', '210602', '元宝区', null);
INSERT INTO `qj_area` VALUES ('888', '210600', '210603', '振兴区', null);
INSERT INTO `qj_area` VALUES ('889', '210600', '210604', '振安区', null);
INSERT INTO `qj_area` VALUES ('890', '210600', '210624', '宽甸满族自治县', null);
INSERT INTO `qj_area` VALUES ('891', '210600', '210681', '东港市', null);
INSERT INTO `qj_area` VALUES ('892', '210600', '210682', '凤城市', null);
INSERT INTO `qj_area` VALUES ('893', '210700', '210701', '市辖区', null);
INSERT INTO `qj_area` VALUES ('894', '210700', '210702', '古塔区', null);
INSERT INTO `qj_area` VALUES ('895', '210700', '210703', '凌河区', null);
INSERT INTO `qj_area` VALUES ('896', '210700', '210711', '太和区', null);
INSERT INTO `qj_area` VALUES ('897', '210700', '210726', '黑山县', null);
INSERT INTO `qj_area` VALUES ('898', '210700', '210727', '义　县', null);
INSERT INTO `qj_area` VALUES ('899', '210700', '210781', '凌海市', null);
INSERT INTO `qj_area` VALUES ('900', '210700', '210782', '北宁市', null);
INSERT INTO `qj_area` VALUES ('901', '210800', '210801', '市辖区', null);
INSERT INTO `qj_area` VALUES ('902', '210800', '210802', '站前区', null);
INSERT INTO `qj_area` VALUES ('903', '210800', '210803', '西市区', null);
INSERT INTO `qj_area` VALUES ('904', '210800', '210804', '鲅鱼圈区', null);
INSERT INTO `qj_area` VALUES ('905', '210800', '210811', '老边区', null);
INSERT INTO `qj_area` VALUES ('906', '210800', '210881', '盖州市', null);
INSERT INTO `qj_area` VALUES ('907', '210800', '210882', '大石桥市', null);
INSERT INTO `qj_area` VALUES ('908', '210900', '210901', '市辖区', null);
INSERT INTO `qj_area` VALUES ('909', '210900', '210902', '海州区', null);
INSERT INTO `qj_area` VALUES ('910', '210900', '210903', '新邱区', null);
INSERT INTO `qj_area` VALUES ('911', '210900', '210904', '太平区', null);
INSERT INTO `qj_area` VALUES ('912', '210900', '210905', '清河门区', null);
INSERT INTO `qj_area` VALUES ('913', '210900', '210911', '细河区', null);
INSERT INTO `qj_area` VALUES ('914', '210900', '210921', '阜新蒙古族自治县', null);
INSERT INTO `qj_area` VALUES ('915', '210900', '210922', '彰武县', null);
INSERT INTO `qj_area` VALUES ('916', '211000', '211001', '市辖区', null);
INSERT INTO `qj_area` VALUES ('917', '211000', '211002', '白塔区', null);
INSERT INTO `qj_area` VALUES ('918', '211000', '211003', '文圣区', null);
INSERT INTO `qj_area` VALUES ('919', '211000', '211004', '宏伟区', null);
INSERT INTO `qj_area` VALUES ('920', '211000', '211005', '弓长岭区', null);
INSERT INTO `qj_area` VALUES ('921', '211000', '211011', '太子河区', null);
INSERT INTO `qj_area` VALUES ('922', '211000', '211021', '辽阳县', null);
INSERT INTO `qj_area` VALUES ('923', '211000', '211081', '灯塔市', null);
INSERT INTO `qj_area` VALUES ('924', '211100', '211101', '市辖区', null);
INSERT INTO `qj_area` VALUES ('925', '211100', '211102', '双台子区', null);
INSERT INTO `qj_area` VALUES ('926', '211100', '211103', '兴隆台区', null);
INSERT INTO `qj_area` VALUES ('927', '211100', '211121', '大洼县', null);
INSERT INTO `qj_area` VALUES ('928', '211100', '211122', '盘山县', null);
INSERT INTO `qj_area` VALUES ('929', '211200', '211201', '市辖区', null);
INSERT INTO `qj_area` VALUES ('930', '211200', '211202', '银州区', null);
INSERT INTO `qj_area` VALUES ('931', '211200', '211204', '清河区', null);
INSERT INTO `qj_area` VALUES ('932', '211200', '211221', '铁岭县', null);
INSERT INTO `qj_area` VALUES ('933', '211200', '211223', '西丰县', null);
INSERT INTO `qj_area` VALUES ('934', '211200', '211224', '昌图县', null);
INSERT INTO `qj_area` VALUES ('935', '211200', '211281', '调兵山市', null);
INSERT INTO `qj_area` VALUES ('936', '211200', '211282', '开原市', null);
INSERT INTO `qj_area` VALUES ('937', '211300', '211301', '市辖区', null);
INSERT INTO `qj_area` VALUES ('938', '211300', '211302', '双塔区', null);
INSERT INTO `qj_area` VALUES ('939', '211300', '211303', '龙城区', null);
INSERT INTO `qj_area` VALUES ('940', '211300', '211321', '朝阳县', null);
INSERT INTO `qj_area` VALUES ('941', '211300', '211322', '建平县', null);
INSERT INTO `qj_area` VALUES ('942', '211300', '211324', '喀喇沁左翼蒙古族自治县', null);
INSERT INTO `qj_area` VALUES ('943', '211300', '211381', '北票市', null);
INSERT INTO `qj_area` VALUES ('944', '211300', '211382', '凌源市', null);
INSERT INTO `qj_area` VALUES ('945', '211400', '211401', '市辖区', null);
INSERT INTO `qj_area` VALUES ('946', '211400', '211402', '连山区', null);
INSERT INTO `qj_area` VALUES ('947', '211400', '211403', '龙港区', null);
INSERT INTO `qj_area` VALUES ('948', '211400', '211404', '南票区', null);
INSERT INTO `qj_area` VALUES ('949', '211400', '211421', '绥中县', null);
INSERT INTO `qj_area` VALUES ('950', '211400', '211422', '建昌县', null);
INSERT INTO `qj_area` VALUES ('951', '211400', '211481', '兴城市', null);
INSERT INTO `qj_area` VALUES ('952', '220100', '220101', '市辖区', null);
INSERT INTO `qj_area` VALUES ('953', '220100', '220102', '南关区', null);
INSERT INTO `qj_area` VALUES ('954', '220100', '220103', '宽城区', null);
INSERT INTO `qj_area` VALUES ('955', '220100', '220104', '朝阳区', null);
INSERT INTO `qj_area` VALUES ('956', '220100', '220105', '二道区', null);
INSERT INTO `qj_area` VALUES ('957', '220100', '220106', '绿园区', null);
INSERT INTO `qj_area` VALUES ('958', '220100', '220112', '双阳区', null);
INSERT INTO `qj_area` VALUES ('959', '220100', '220122', '农安县', null);
INSERT INTO `qj_area` VALUES ('960', '220100', '220181', '九台市', null);
INSERT INTO `qj_area` VALUES ('961', '220100', '220182', '榆树市', null);
INSERT INTO `qj_area` VALUES ('962', '220100', '220183', '德惠市', null);
INSERT INTO `qj_area` VALUES ('963', '220200', '220201', '市辖区', null);
INSERT INTO `qj_area` VALUES ('964', '220200', '220202', '昌邑区', null);
INSERT INTO `qj_area` VALUES ('965', '220200', '220203', '龙潭区', null);
INSERT INTO `qj_area` VALUES ('966', '220200', '220204', '船营区', null);
INSERT INTO `qj_area` VALUES ('967', '220200', '220211', '丰满区', null);
INSERT INTO `qj_area` VALUES ('968', '220200', '220221', '永吉县', null);
INSERT INTO `qj_area` VALUES ('969', '220200', '220281', '蛟河市', null);
INSERT INTO `qj_area` VALUES ('970', '220200', '220282', '桦甸市', null);
INSERT INTO `qj_area` VALUES ('971', '220200', '220283', '舒兰市', null);
INSERT INTO `qj_area` VALUES ('972', '220200', '220284', '磐石市', null);
INSERT INTO `qj_area` VALUES ('973', '220300', '220301', '市辖区', null);
INSERT INTO `qj_area` VALUES ('974', '220300', '220302', '铁西区', null);
INSERT INTO `qj_area` VALUES ('975', '220300', '220303', '铁东区', null);
INSERT INTO `qj_area` VALUES ('976', '220300', '220322', '梨树县', null);
INSERT INTO `qj_area` VALUES ('977', '220300', '220323', '伊通满族自治县', null);
INSERT INTO `qj_area` VALUES ('978', '220300', '220381', '公主岭市', null);
INSERT INTO `qj_area` VALUES ('979', '220300', '220382', '双辽市', null);
INSERT INTO `qj_area` VALUES ('980', '220400', '220401', '市辖区', null);
INSERT INTO `qj_area` VALUES ('981', '220400', '220402', '龙山区', null);
INSERT INTO `qj_area` VALUES ('982', '220400', '220403', '西安区', null);
INSERT INTO `qj_area` VALUES ('983', '220400', '220421', '东丰县', null);
INSERT INTO `qj_area` VALUES ('984', '220400', '220422', '东辽县', null);
INSERT INTO `qj_area` VALUES ('985', '220500', '220501', '市辖区', null);
INSERT INTO `qj_area` VALUES ('986', '220500', '220502', '东昌区', null);
INSERT INTO `qj_area` VALUES ('987', '220500', '220503', '二道江区', null);
INSERT INTO `qj_area` VALUES ('988', '220500', '220521', '通化县', null);
INSERT INTO `qj_area` VALUES ('989', '220500', '220523', '辉南县', null);
INSERT INTO `qj_area` VALUES ('990', '220500', '220524', '柳河县', null);
INSERT INTO `qj_area` VALUES ('991', '220500', '220581', '梅河口市', null);
INSERT INTO `qj_area` VALUES ('992', '220500', '220582', '集安市', null);
INSERT INTO `qj_area` VALUES ('993', '220600', '220601', '市辖区', null);
INSERT INTO `qj_area` VALUES ('994', '220600', '220602', '八道江区', null);
INSERT INTO `qj_area` VALUES ('995', '220600', '220621', '抚松县', null);
INSERT INTO `qj_area` VALUES ('996', '220600', '220622', '靖宇县', null);
INSERT INTO `qj_area` VALUES ('997', '220600', '220623', '长白朝鲜族自治县', null);
INSERT INTO `qj_area` VALUES ('998', '220600', '220625', '江源县', null);
INSERT INTO `qj_area` VALUES ('999', '220600', '220681', '临江市', null);
INSERT INTO `qj_area` VALUES ('1000', '220700', '220701', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1001', '220700', '220702', '宁江区', null);
INSERT INTO `qj_area` VALUES ('1002', '220700', '220721', '前郭尔罗斯蒙古族自治县', null);
INSERT INTO `qj_area` VALUES ('1003', '220700', '220722', '长岭县', null);
INSERT INTO `qj_area` VALUES ('1004', '220700', '220723', '乾安县', null);
INSERT INTO `qj_area` VALUES ('1005', '220700', '220724', '扶余县', null);
INSERT INTO `qj_area` VALUES ('1006', '220800', '220801', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1007', '220800', '220802', '洮北区', null);
INSERT INTO `qj_area` VALUES ('1008', '220800', '220821', '镇赉县', null);
INSERT INTO `qj_area` VALUES ('1009', '220800', '220822', '通榆县', null);
INSERT INTO `qj_area` VALUES ('1010', '220800', '220881', '洮南市', null);
INSERT INTO `qj_area` VALUES ('1011', '220800', '220882', '大安市', null);
INSERT INTO `qj_area` VALUES ('1012', '222400', '222401', '延吉市', null);
INSERT INTO `qj_area` VALUES ('1013', '222400', '222402', '图们市', null);
INSERT INTO `qj_area` VALUES ('1014', '222400', '222403', '敦化市', null);
INSERT INTO `qj_area` VALUES ('1015', '222400', '222404', '珲春市', null);
INSERT INTO `qj_area` VALUES ('1016', '222400', '222405', '龙井市', null);
INSERT INTO `qj_area` VALUES ('1017', '222400', '222406', '和龙市', null);
INSERT INTO `qj_area` VALUES ('1018', '222400', '222424', '汪清县', null);
INSERT INTO `qj_area` VALUES ('1019', '222400', '222426', '安图县', null);
INSERT INTO `qj_area` VALUES ('1020', '230100', '230101', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1021', '230100', '230102', '道里区', null);
INSERT INTO `qj_area` VALUES ('1022', '230100', '230103', '南岗区', null);
INSERT INTO `qj_area` VALUES ('1023', '230100', '230104', '道外区', null);
INSERT INTO `qj_area` VALUES ('1024', '230100', '230106', '香坊区', null);
INSERT INTO `qj_area` VALUES ('1025', '230100', '230107', '动力区', null);
INSERT INTO `qj_area` VALUES ('1026', '230100', '230108', '平房区', null);
INSERT INTO `qj_area` VALUES ('1027', '230100', '230109', '松北区', null);
INSERT INTO `qj_area` VALUES ('1028', '230100', '230111', '呼兰区', null);
INSERT INTO `qj_area` VALUES ('1029', '230100', '230123', '依兰县', null);
INSERT INTO `qj_area` VALUES ('1030', '230100', '230124', '方正县', null);
INSERT INTO `qj_area` VALUES ('1031', '230100', '230125', '宾　县', null);
INSERT INTO `qj_area` VALUES ('1032', '230100', '230126', '巴彦县', null);
INSERT INTO `qj_area` VALUES ('1033', '230100', '230127', '木兰县', null);
INSERT INTO `qj_area` VALUES ('1034', '230100', '230128', '通河县', null);
INSERT INTO `qj_area` VALUES ('1035', '230100', '230129', '延寿县', null);
INSERT INTO `qj_area` VALUES ('1036', '230100', '230181', '阿城市', null);
INSERT INTO `qj_area` VALUES ('1037', '230100', '230182', '双城市', null);
INSERT INTO `qj_area` VALUES ('1038', '230100', '230183', '尚志市', null);
INSERT INTO `qj_area` VALUES ('1039', '230100', '230184', '五常市', null);
INSERT INTO `qj_area` VALUES ('1040', '230200', '230201', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1041', '230200', '230202', '龙沙区', null);
INSERT INTO `qj_area` VALUES ('1042', '230200', '230203', '建华区', null);
INSERT INTO `qj_area` VALUES ('1043', '230200', '230204', '铁锋区', null);
INSERT INTO `qj_area` VALUES ('1044', '230200', '230205', '昂昂溪区', null);
INSERT INTO `qj_area` VALUES ('1045', '230200', '230206', '富拉尔基区', null);
INSERT INTO `qj_area` VALUES ('1046', '230200', '230207', '碾子山区', null);
INSERT INTO `qj_area` VALUES ('1047', '230200', '230208', '梅里斯达斡尔族区', null);
INSERT INTO `qj_area` VALUES ('1048', '230200', '230221', '龙江县', null);
INSERT INTO `qj_area` VALUES ('1049', '230200', '230223', '依安县', null);
INSERT INTO `qj_area` VALUES ('1050', '230200', '230224', '泰来县', null);
INSERT INTO `qj_area` VALUES ('1051', '230200', '230225', '甘南县', null);
INSERT INTO `qj_area` VALUES ('1052', '230200', '230227', '富裕县', null);
INSERT INTO `qj_area` VALUES ('1053', '230200', '230229', '克山县', null);
INSERT INTO `qj_area` VALUES ('1054', '230200', '230230', '克东县', null);
INSERT INTO `qj_area` VALUES ('1055', '230200', '230231', '拜泉县', null);
INSERT INTO `qj_area` VALUES ('1056', '230200', '230281', '讷河市', null);
INSERT INTO `qj_area` VALUES ('1057', '230300', '230301', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1058', '230300', '230302', '鸡冠区', null);
INSERT INTO `qj_area` VALUES ('1059', '230300', '230303', '恒山区', null);
INSERT INTO `qj_area` VALUES ('1060', '230300', '230304', '滴道区', null);
INSERT INTO `qj_area` VALUES ('1061', '230300', '230305', '梨树区', null);
INSERT INTO `qj_area` VALUES ('1062', '230300', '230306', '城子河区', null);
INSERT INTO `qj_area` VALUES ('1063', '230300', '230307', '麻山区', null);
INSERT INTO `qj_area` VALUES ('1064', '230300', '230321', '鸡东县', null);
INSERT INTO `qj_area` VALUES ('1065', '230300', '230381', '虎林市', null);
INSERT INTO `qj_area` VALUES ('1066', '230300', '230382', '密山市', null);
INSERT INTO `qj_area` VALUES ('1067', '230400', '230401', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1068', '230400', '230402', '向阳区', null);
INSERT INTO `qj_area` VALUES ('1069', '230400', '230403', '工农区', null);
INSERT INTO `qj_area` VALUES ('1070', '230400', '230404', '南山区', null);
INSERT INTO `qj_area` VALUES ('1071', '230400', '230405', '兴安区', null);
INSERT INTO `qj_area` VALUES ('1072', '230400', '230406', '东山区', null);
INSERT INTO `qj_area` VALUES ('1073', '230400', '230407', '兴山区', null);
INSERT INTO `qj_area` VALUES ('1074', '230400', '230421', '萝北县', null);
INSERT INTO `qj_area` VALUES ('1075', '230400', '230422', '绥滨县', null);
INSERT INTO `qj_area` VALUES ('1076', '230500', '230501', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1077', '230500', '230502', '尖山区', null);
INSERT INTO `qj_area` VALUES ('1078', '230500', '230503', '岭东区', null);
INSERT INTO `qj_area` VALUES ('1079', '230500', '230505', '四方台区', null);
INSERT INTO `qj_area` VALUES ('1080', '230500', '230506', '宝山区', null);
INSERT INTO `qj_area` VALUES ('1081', '230500', '230521', '集贤县', null);
INSERT INTO `qj_area` VALUES ('1082', '230500', '230522', '友谊县', null);
INSERT INTO `qj_area` VALUES ('1083', '230500', '230523', '宝清县', null);
INSERT INTO `qj_area` VALUES ('1084', '230500', '230524', '饶河县', null);
INSERT INTO `qj_area` VALUES ('1085', '230600', '230601', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1086', '230600', '230602', '萨尔图区', null);
INSERT INTO `qj_area` VALUES ('1087', '230600', '230603', '龙凤区', null);
INSERT INTO `qj_area` VALUES ('1088', '230600', '230604', '让胡路区', null);
INSERT INTO `qj_area` VALUES ('1089', '230600', '230605', '红岗区', null);
INSERT INTO `qj_area` VALUES ('1090', '230600', '230606', '大同区', null);
INSERT INTO `qj_area` VALUES ('1091', '230600', '230621', '肇州县', null);
INSERT INTO `qj_area` VALUES ('1092', '230600', '230622', '肇源县', null);
INSERT INTO `qj_area` VALUES ('1093', '230600', '230623', '林甸县', null);
INSERT INTO `qj_area` VALUES ('1094', '230600', '230624', '杜尔伯特蒙古族自治县', null);
INSERT INTO `qj_area` VALUES ('1095', '230700', '230701', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1096', '230700', '230702', '伊春区', null);
INSERT INTO `qj_area` VALUES ('1097', '230700', '230703', '南岔区', null);
INSERT INTO `qj_area` VALUES ('1098', '230700', '230704', '友好区', null);
INSERT INTO `qj_area` VALUES ('1099', '230700', '230705', '西林区', null);
INSERT INTO `qj_area` VALUES ('1100', '230700', '230706', '翠峦区', null);
INSERT INTO `qj_area` VALUES ('1101', '230700', '230707', '新青区', null);
INSERT INTO `qj_area` VALUES ('1102', '230700', '230708', '美溪区', null);
INSERT INTO `qj_area` VALUES ('1103', '230700', '230709', '金山屯区', null);
INSERT INTO `qj_area` VALUES ('1104', '230700', '230710', '五营区', null);
INSERT INTO `qj_area` VALUES ('1105', '230700', '230711', '乌马河区', null);
INSERT INTO `qj_area` VALUES ('1106', '230700', '230712', '汤旺河区', null);
INSERT INTO `qj_area` VALUES ('1107', '230700', '230713', '带岭区', null);
INSERT INTO `qj_area` VALUES ('1108', '230700', '230714', '乌伊岭区', null);
INSERT INTO `qj_area` VALUES ('1109', '230700', '230715', '红星区', null);
INSERT INTO `qj_area` VALUES ('1110', '230700', '230716', '上甘岭区', null);
INSERT INTO `qj_area` VALUES ('1111', '230700', '230722', '嘉荫县', null);
INSERT INTO `qj_area` VALUES ('1112', '230700', '230781', '铁力市', null);
INSERT INTO `qj_area` VALUES ('1113', '230800', '230801', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1114', '230800', '230802', '永红区', null);
INSERT INTO `qj_area` VALUES ('1115', '230800', '230803', '向阳区', null);
INSERT INTO `qj_area` VALUES ('1116', '230800', '230804', '前进区', null);
INSERT INTO `qj_area` VALUES ('1117', '230800', '230805', '东风区', null);
INSERT INTO `qj_area` VALUES ('1118', '230800', '230811', '郊　区', null);
INSERT INTO `qj_area` VALUES ('1119', '230800', '230822', '桦南县', null);
INSERT INTO `qj_area` VALUES ('1120', '230800', '230826', '桦川县', null);
INSERT INTO `qj_area` VALUES ('1121', '230800', '230828', '汤原县', null);
INSERT INTO `qj_area` VALUES ('1122', '230800', '230833', '抚远县', null);
INSERT INTO `qj_area` VALUES ('1123', '230800', '230881', '同江市', null);
INSERT INTO `qj_area` VALUES ('1124', '230800', '230882', '富锦市', null);
INSERT INTO `qj_area` VALUES ('1125', '230900', '230901', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1126', '230900', '230902', '新兴区', null);
INSERT INTO `qj_area` VALUES ('1127', '230900', '230903', '桃山区', null);
INSERT INTO `qj_area` VALUES ('1128', '230900', '230904', '茄子河区', null);
INSERT INTO `qj_area` VALUES ('1129', '230900', '230921', '勃利县', null);
INSERT INTO `qj_area` VALUES ('1130', '231000', '231001', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1131', '231000', '231002', '东安区', null);
INSERT INTO `qj_area` VALUES ('1132', '231000', '231003', '阳明区', null);
INSERT INTO `qj_area` VALUES ('1133', '231000', '231004', '爱民区', null);
INSERT INTO `qj_area` VALUES ('1134', '231000', '231005', '西安区', null);
INSERT INTO `qj_area` VALUES ('1135', '231000', '231024', '东宁县', null);
INSERT INTO `qj_area` VALUES ('1136', '231000', '231025', '林口县', null);
INSERT INTO `qj_area` VALUES ('1137', '231000', '231081', '绥芬河市', null);
INSERT INTO `qj_area` VALUES ('1138', '231000', '231083', '海林市', null);
INSERT INTO `qj_area` VALUES ('1139', '231000', '231084', '宁安市', null);
INSERT INTO `qj_area` VALUES ('1140', '231000', '231085', '穆棱市', null);
INSERT INTO `qj_area` VALUES ('1141', '231100', '231101', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1142', '231100', '231102', '爱辉区', null);
INSERT INTO `qj_area` VALUES ('1143', '231100', '231121', '嫩江县', null);
INSERT INTO `qj_area` VALUES ('1144', '231100', '231123', '逊克县', null);
INSERT INTO `qj_area` VALUES ('1145', '231100', '231124', '孙吴县', null);
INSERT INTO `qj_area` VALUES ('1146', '231100', '231181', '北安市', null);
INSERT INTO `qj_area` VALUES ('1147', '231100', '231182', '五大连池市', null);
INSERT INTO `qj_area` VALUES ('1148', '231200', '231201', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1149', '231200', '231202', '北林区', null);
INSERT INTO `qj_area` VALUES ('1150', '231200', '231221', '望奎县', null);
INSERT INTO `qj_area` VALUES ('1151', '231200', '231222', '兰西县', null);
INSERT INTO `qj_area` VALUES ('1152', '231200', '231223', '青冈县', null);
INSERT INTO `qj_area` VALUES ('1153', '231200', '231224', '庆安县', null);
INSERT INTO `qj_area` VALUES ('1154', '231200', '231225', '明水县', null);
INSERT INTO `qj_area` VALUES ('1155', '231200', '231226', '绥棱县', null);
INSERT INTO `qj_area` VALUES ('1156', '231200', '231281', '安达市', null);
INSERT INTO `qj_area` VALUES ('1157', '231200', '231282', '肇东市', null);
INSERT INTO `qj_area` VALUES ('1158', '231200', '231283', '海伦市', null);
INSERT INTO `qj_area` VALUES ('1159', '232700', '232721', '呼玛县', null);
INSERT INTO `qj_area` VALUES ('1160', '232700', '232722', '塔河县', null);
INSERT INTO `qj_area` VALUES ('1161', '232700', '232723', '漠河县', null);
INSERT INTO `qj_area` VALUES ('1162', '310100', '310101', '黄浦区', null);
INSERT INTO `qj_area` VALUES ('1163', '310100', '310103', '卢湾区', null);
INSERT INTO `qj_area` VALUES ('1164', '310100', '310104', '徐汇区', null);
INSERT INTO `qj_area` VALUES ('1165', '310100', '310105', '长宁区', null);
INSERT INTO `qj_area` VALUES ('1166', '310100', '310106', '静安区', null);
INSERT INTO `qj_area` VALUES ('1167', '310100', '310107', '普陀区', null);
INSERT INTO `qj_area` VALUES ('1168', '310100', '310108', '闸北区', null);
INSERT INTO `qj_area` VALUES ('1169', '310100', '310109', '虹口区', null);
INSERT INTO `qj_area` VALUES ('1170', '310100', '310110', '杨浦区', null);
INSERT INTO `qj_area` VALUES ('1171', '310100', '310112', '闵行区', null);
INSERT INTO `qj_area` VALUES ('1172', '310100', '310113', '宝山区', null);
INSERT INTO `qj_area` VALUES ('1173', '310100', '310114', '嘉定区', null);
INSERT INTO `qj_area` VALUES ('1174', '310100', '310115', '浦东新区', null);
INSERT INTO `qj_area` VALUES ('1175', '310100', '310116', '金山区', null);
INSERT INTO `qj_area` VALUES ('1176', '310100', '310117', '松江区', null);
INSERT INTO `qj_area` VALUES ('1177', '310100', '310118', '青浦区', null);
INSERT INTO `qj_area` VALUES ('1178', '310100', '310119', '南汇区', null);
INSERT INTO `qj_area` VALUES ('1179', '310100', '310120', '奉贤区', null);
INSERT INTO `qj_area` VALUES ('1180', '310200', '310230', '崇明县', null);
INSERT INTO `qj_area` VALUES ('1181', '320100', '320101', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1182', '320100', '320102', '玄武区', null);
INSERT INTO `qj_area` VALUES ('1183', '320100', '320103', '白下区', null);
INSERT INTO `qj_area` VALUES ('1184', '320100', '320104', '秦淮区', null);
INSERT INTO `qj_area` VALUES ('1185', '320100', '320105', '建邺区', null);
INSERT INTO `qj_area` VALUES ('1186', '320100', '320106', '鼓楼区', null);
INSERT INTO `qj_area` VALUES ('1187', '320100', '320107', '下关区', null);
INSERT INTO `qj_area` VALUES ('1188', '320100', '320111', '浦口区', null);
INSERT INTO `qj_area` VALUES ('1189', '320100', '320113', '栖霞区', null);
INSERT INTO `qj_area` VALUES ('1190', '320100', '320114', '雨花台区', null);
INSERT INTO `qj_area` VALUES ('1191', '320100', '320115', '江宁区', null);
INSERT INTO `qj_area` VALUES ('1192', '320100', '320116', '六合区', null);
INSERT INTO `qj_area` VALUES ('1193', '320100', '320124', '溧水县', null);
INSERT INTO `qj_area` VALUES ('1194', '320100', '320125', '高淳县', null);
INSERT INTO `qj_area` VALUES ('1195', '320200', '320201', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1196', '320200', '320202', '崇安区', null);
INSERT INTO `qj_area` VALUES ('1197', '320200', '320203', '南长区', null);
INSERT INTO `qj_area` VALUES ('1198', '320200', '320204', '北塘区', null);
INSERT INTO `qj_area` VALUES ('1199', '320200', '320205', '锡山区', null);
INSERT INTO `qj_area` VALUES ('1200', '320200', '320206', '惠山区', null);
INSERT INTO `qj_area` VALUES ('1201', '320200', '320211', '滨湖区', null);
INSERT INTO `qj_area` VALUES ('1202', '320200', '320281', '江阴市', null);
INSERT INTO `qj_area` VALUES ('1203', '320200', '320282', '宜兴市', null);
INSERT INTO `qj_area` VALUES ('1204', '320300', '320301', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1205', '320300', '320302', '鼓楼区', null);
INSERT INTO `qj_area` VALUES ('1206', '320300', '320303', '云龙区', null);
INSERT INTO `qj_area` VALUES ('1207', '320300', '320304', '九里区', null);
INSERT INTO `qj_area` VALUES ('1208', '320300', '320305', '贾汪区', null);
INSERT INTO `qj_area` VALUES ('1209', '320300', '320311', '泉山区', null);
INSERT INTO `qj_area` VALUES ('1210', '320300', '320321', '丰　县', null);
INSERT INTO `qj_area` VALUES ('1211', '320300', '320322', '沛　县', null);
INSERT INTO `qj_area` VALUES ('1212', '320300', '320323', '铜山县', null);
INSERT INTO `qj_area` VALUES ('1213', '320300', '320324', '睢宁县', null);
INSERT INTO `qj_area` VALUES ('1214', '320300', '320381', '新沂市', null);
INSERT INTO `qj_area` VALUES ('1215', '320300', '320382', '邳州市', null);
INSERT INTO `qj_area` VALUES ('1216', '320400', '320401', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1217', '320400', '320402', '天宁区', null);
INSERT INTO `qj_area` VALUES ('1218', '320400', '320404', '钟楼区', null);
INSERT INTO `qj_area` VALUES ('1219', '320400', '320405', '戚墅堰区', null);
INSERT INTO `qj_area` VALUES ('1220', '320400', '320411', '新北区', null);
INSERT INTO `qj_area` VALUES ('1221', '320400', '320412', '武进区', null);
INSERT INTO `qj_area` VALUES ('1222', '320400', '320481', '溧阳市', null);
INSERT INTO `qj_area` VALUES ('1223', '320400', '320482', '金坛市', null);
INSERT INTO `qj_area` VALUES ('1224', '320500', '320501', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1225', '320500', '320502', '沧浪区', null);
INSERT INTO `qj_area` VALUES ('1226', '320500', '320503', '平江区', null);
INSERT INTO `qj_area` VALUES ('1227', '320500', '320504', '金阊区', null);
INSERT INTO `qj_area` VALUES ('1228', '320500', '320505', '虎丘区', null);
INSERT INTO `qj_area` VALUES ('1229', '320500', '320506', '吴中区', null);
INSERT INTO `qj_area` VALUES ('1230', '320500', '320507', '相城区', null);
INSERT INTO `qj_area` VALUES ('1231', '320500', '320581', '常熟市', null);
INSERT INTO `qj_area` VALUES ('1232', '320500', '320582', '张家港市', null);
INSERT INTO `qj_area` VALUES ('1233', '320500', '320583', '昆山市', null);
INSERT INTO `qj_area` VALUES ('1234', '320500', '320584', '吴江市', null);
INSERT INTO `qj_area` VALUES ('1235', '320500', '320585', '太仓市', null);
INSERT INTO `qj_area` VALUES ('1236', '320600', '320601', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1237', '320600', '320602', '崇川区', null);
INSERT INTO `qj_area` VALUES ('1238', '320600', '320611', '港闸区', null);
INSERT INTO `qj_area` VALUES ('1239', '320600', '320621', '海安县', null);
INSERT INTO `qj_area` VALUES ('1240', '320600', '320623', '如东县', null);
INSERT INTO `qj_area` VALUES ('1241', '320600', '320681', '启东市', null);
INSERT INTO `qj_area` VALUES ('1242', '320600', '320682', '如皋市', null);
INSERT INTO `qj_area` VALUES ('1243', '320600', '320683', '通州市', null);
INSERT INTO `qj_area` VALUES ('1244', '320600', '320684', '海门市', null);
INSERT INTO `qj_area` VALUES ('1245', '320700', '320701', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1246', '320700', '320703', '连云区', null);
INSERT INTO `qj_area` VALUES ('1247', '320700', '320705', '新浦区', null);
INSERT INTO `qj_area` VALUES ('1248', '320700', '320706', '海州区', null);
INSERT INTO `qj_area` VALUES ('1249', '320700', '320721', '赣榆县', null);
INSERT INTO `qj_area` VALUES ('1250', '320700', '320722', '东海县', null);
INSERT INTO `qj_area` VALUES ('1251', '320700', '320723', '灌云县', null);
INSERT INTO `qj_area` VALUES ('1252', '320700', '320724', '灌南县', null);
INSERT INTO `qj_area` VALUES ('1253', '320800', '320801', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1254', '320800', '320802', '清河区', null);
INSERT INTO `qj_area` VALUES ('1255', '320800', '320803', '楚州区', null);
INSERT INTO `qj_area` VALUES ('1256', '320800', '320804', '淮阴区', null);
INSERT INTO `qj_area` VALUES ('1257', '320800', '320811', '清浦区', null);
INSERT INTO `qj_area` VALUES ('1258', '320800', '320826', '涟水县', null);
INSERT INTO `qj_area` VALUES ('1259', '320800', '320829', '洪泽县', null);
INSERT INTO `qj_area` VALUES ('1260', '320800', '320830', '盱眙县', null);
INSERT INTO `qj_area` VALUES ('1261', '320800', '320831', '金湖县', null);
INSERT INTO `qj_area` VALUES ('1262', '320900', '320901', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1263', '320900', '320902', '亭湖区', null);
INSERT INTO `qj_area` VALUES ('1264', '320900', '320903', '盐都区', null);
INSERT INTO `qj_area` VALUES ('1265', '320900', '320921', '响水县', null);
INSERT INTO `qj_area` VALUES ('1266', '320900', '320922', '滨海县', null);
INSERT INTO `qj_area` VALUES ('1267', '320900', '320923', '阜宁县', null);
INSERT INTO `qj_area` VALUES ('1268', '320900', '320924', '射阳县', null);
INSERT INTO `qj_area` VALUES ('1269', '320900', '320925', '建湖县', null);
INSERT INTO `qj_area` VALUES ('1270', '320900', '320981', '东台市', null);
INSERT INTO `qj_area` VALUES ('1271', '320900', '320982', '大丰市', null);
INSERT INTO `qj_area` VALUES ('1272', '321000', '321001', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1273', '321000', '321002', '广陵区', null);
INSERT INTO `qj_area` VALUES ('1274', '321000', '321003', '邗江区', null);
INSERT INTO `qj_area` VALUES ('1275', '321000', '321011', '郊　区', null);
INSERT INTO `qj_area` VALUES ('1276', '321000', '321023', '宝应县', null);
INSERT INTO `qj_area` VALUES ('1277', '321000', '321081', '仪征市', null);
INSERT INTO `qj_area` VALUES ('1278', '321000', '321084', '高邮市', null);
INSERT INTO `qj_area` VALUES ('1279', '321000', '321088', '江都市', null);
INSERT INTO `qj_area` VALUES ('1280', '321100', '321101', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1281', '321100', '321102', '京口区', null);
INSERT INTO `qj_area` VALUES ('1282', '321100', '321111', '润州区', null);
INSERT INTO `qj_area` VALUES ('1283', '321100', '321112', '丹徒区', null);
INSERT INTO `qj_area` VALUES ('1284', '321100', '321181', '丹阳市', null);
INSERT INTO `qj_area` VALUES ('1285', '321100', '321182', '扬中市', null);
INSERT INTO `qj_area` VALUES ('1286', '321100', '321183', '句容市', null);
INSERT INTO `qj_area` VALUES ('1287', '321200', '321201', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1288', '321200', '321202', '海陵区', null);
INSERT INTO `qj_area` VALUES ('1289', '321200', '321203', '高港区', null);
INSERT INTO `qj_area` VALUES ('1290', '321200', '321281', '兴化市', null);
INSERT INTO `qj_area` VALUES ('1291', '321200', '321282', '靖江市', null);
INSERT INTO `qj_area` VALUES ('1292', '321200', '321283', '泰兴市', null);
INSERT INTO `qj_area` VALUES ('1293', '321200', '321284', '姜堰市', null);
INSERT INTO `qj_area` VALUES ('1294', '321300', '321301', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1295', '321300', '321302', '宿城区', null);
INSERT INTO `qj_area` VALUES ('1296', '321300', '321311', '宿豫区', null);
INSERT INTO `qj_area` VALUES ('1297', '321300', '321322', '沭阳县', null);
INSERT INTO `qj_area` VALUES ('1298', '321300', '321323', '泗阳县', null);
INSERT INTO `qj_area` VALUES ('1299', '321300', '321324', '泗洪县', null);
INSERT INTO `qj_area` VALUES ('1300', '330100', '330101', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1301', '330100', '330102', '上城区', null);
INSERT INTO `qj_area` VALUES ('1302', '330100', '330103', '下城区', null);
INSERT INTO `qj_area` VALUES ('1303', '330100', '330104', '江干区', null);
INSERT INTO `qj_area` VALUES ('1304', '330100', '330105', '拱墅区', null);
INSERT INTO `qj_area` VALUES ('1305', '330100', '330106', '西湖区', null);
INSERT INTO `qj_area` VALUES ('1306', '330100', '330108', '滨江区', null);
INSERT INTO `qj_area` VALUES ('1307', '330100', '330109', '萧山区', null);
INSERT INTO `qj_area` VALUES ('1308', '330100', '330110', '余杭区', null);
INSERT INTO `qj_area` VALUES ('1309', '330100', '330122', '桐庐县', null);
INSERT INTO `qj_area` VALUES ('1310', '330100', '330127', '淳安县', null);
INSERT INTO `qj_area` VALUES ('1311', '330100', '330182', '建德市', null);
INSERT INTO `qj_area` VALUES ('1312', '330100', '330183', '富阳市', null);
INSERT INTO `qj_area` VALUES ('1313', '330100', '330185', '临安市', null);
INSERT INTO `qj_area` VALUES ('1314', '330200', '330201', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1315', '330200', '330203', '海曙区', null);
INSERT INTO `qj_area` VALUES ('1316', '330200', '330204', '江东区', null);
INSERT INTO `qj_area` VALUES ('1317', '330200', '330205', '江北区', null);
INSERT INTO `qj_area` VALUES ('1318', '330200', '330206', '北仑区', null);
INSERT INTO `qj_area` VALUES ('1319', '330200', '330211', '镇海区', null);
INSERT INTO `qj_area` VALUES ('1320', '330200', '330212', '鄞州区', null);
INSERT INTO `qj_area` VALUES ('1321', '330200', '330225', '象山县', null);
INSERT INTO `qj_area` VALUES ('1322', '330200', '330226', '宁海县', null);
INSERT INTO `qj_area` VALUES ('1323', '330200', '330281', '余姚市', null);
INSERT INTO `qj_area` VALUES ('1324', '330200', '330282', '慈溪市', null);
INSERT INTO `qj_area` VALUES ('1325', '330200', '330283', '奉化市', null);
INSERT INTO `qj_area` VALUES ('1326', '330300', '330301', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1327', '330300', '330302', '鹿城区', null);
INSERT INTO `qj_area` VALUES ('1328', '330300', '330303', '龙湾区', null);
INSERT INTO `qj_area` VALUES ('1329', '330300', '330304', '瓯海区', null);
INSERT INTO `qj_area` VALUES ('1330', '330300', '330322', '洞头县', null);
INSERT INTO `qj_area` VALUES ('1331', '330300', '330324', '永嘉县', null);
INSERT INTO `qj_area` VALUES ('1332', '330300', '330326', '平阳县', null);
INSERT INTO `qj_area` VALUES ('1333', '330300', '330327', '苍南县', null);
INSERT INTO `qj_area` VALUES ('1334', '330300', '330328', '文成县', null);
INSERT INTO `qj_area` VALUES ('1335', '330300', '330329', '泰顺县', null);
INSERT INTO `qj_area` VALUES ('1336', '330300', '330381', '瑞安市', null);
INSERT INTO `qj_area` VALUES ('1337', '330300', '330382', '乐清市', null);
INSERT INTO `qj_area` VALUES ('1338', '330400', '330401', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1339', '330400', '330402', '秀城区', null);
INSERT INTO `qj_area` VALUES ('1340', '330400', '330411', '秀洲区', null);
INSERT INTO `qj_area` VALUES ('1341', '330400', '330421', '嘉善县', null);
INSERT INTO `qj_area` VALUES ('1342', '330400', '330424', '海盐县', null);
INSERT INTO `qj_area` VALUES ('1343', '330400', '330481', '海宁市', null);
INSERT INTO `qj_area` VALUES ('1344', '330400', '330482', '平湖市', null);
INSERT INTO `qj_area` VALUES ('1345', '330400', '330483', '桐乡市', null);
INSERT INTO `qj_area` VALUES ('1346', '330500', '330501', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1347', '330500', '330502', '吴兴区', null);
INSERT INTO `qj_area` VALUES ('1348', '330500', '330503', '南浔区', null);
INSERT INTO `qj_area` VALUES ('1349', '330500', '330521', '德清县', null);
INSERT INTO `qj_area` VALUES ('1350', '330500', '330522', '长兴县', null);
INSERT INTO `qj_area` VALUES ('1351', '330500', '330523', '安吉县', null);
INSERT INTO `qj_area` VALUES ('1352', '330600', '330601', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1353', '330600', '330602', '越城区', null);
INSERT INTO `qj_area` VALUES ('1354', '330600', '330621', '绍兴县', null);
INSERT INTO `qj_area` VALUES ('1355', '330600', '330624', '新昌县', null);
INSERT INTO `qj_area` VALUES ('1356', '330600', '330681', '诸暨市', null);
INSERT INTO `qj_area` VALUES ('1357', '330600', '330682', '上虞市', null);
INSERT INTO `qj_area` VALUES ('1358', '330600', '330683', '嵊州市', null);
INSERT INTO `qj_area` VALUES ('1359', '330700', '330701', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1360', '330700', '330702', '婺城区', null);
INSERT INTO `qj_area` VALUES ('1361', '330700', '330703', '金东区', null);
INSERT INTO `qj_area` VALUES ('1362', '330700', '330723', '武义县', null);
INSERT INTO `qj_area` VALUES ('1363', '330700', '330726', '浦江县', null);
INSERT INTO `qj_area` VALUES ('1364', '330700', '330727', '磐安县', null);
INSERT INTO `qj_area` VALUES ('1365', '330700', '330781', '兰溪市', null);
INSERT INTO `qj_area` VALUES ('1366', '330700', '330782', '义乌市', null);
INSERT INTO `qj_area` VALUES ('1367', '330700', '330783', '东阳市', null);
INSERT INTO `qj_area` VALUES ('1368', '330700', '330784', '永康市', null);
INSERT INTO `qj_area` VALUES ('1369', '330800', '330801', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1370', '330800', '330802', '柯城区', null);
INSERT INTO `qj_area` VALUES ('1371', '330800', '330803', '衢江区', null);
INSERT INTO `qj_area` VALUES ('1372', '330800', '330822', '常山县', null);
INSERT INTO `qj_area` VALUES ('1373', '330800', '330824', '开化县', null);
INSERT INTO `qj_area` VALUES ('1374', '330800', '330825', '龙游县', null);
INSERT INTO `qj_area` VALUES ('1375', '330800', '330881', '江山市', null);
INSERT INTO `qj_area` VALUES ('1376', '330900', '330901', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1377', '330900', '330902', '定海区', null);
INSERT INTO `qj_area` VALUES ('1378', '330900', '330903', '普陀区', null);
INSERT INTO `qj_area` VALUES ('1379', '330900', '330921', '岱山县', null);
INSERT INTO `qj_area` VALUES ('1380', '330900', '330922', '嵊泗县', null);
INSERT INTO `qj_area` VALUES ('1381', '331000', '331001', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1382', '331000', '331002', '椒江区', null);
INSERT INTO `qj_area` VALUES ('1383', '331000', '331003', '黄岩区', null);
INSERT INTO `qj_area` VALUES ('1384', '331000', '331004', '路桥区', null);
INSERT INTO `qj_area` VALUES ('1385', '331000', '331021', '玉环县', null);
INSERT INTO `qj_area` VALUES ('1386', '331000', '331022', '三门县', null);
INSERT INTO `qj_area` VALUES ('1387', '331000', '331023', '天台县', null);
INSERT INTO `qj_area` VALUES ('1388', '331000', '331024', '仙居县', null);
INSERT INTO `qj_area` VALUES ('1389', '331000', '331081', '温岭市', null);
INSERT INTO `qj_area` VALUES ('1390', '331000', '331082', '临海市', null);
INSERT INTO `qj_area` VALUES ('1391', '331100', '331101', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1392', '331100', '331102', '莲都区', null);
INSERT INTO `qj_area` VALUES ('1393', '331100', '331121', '青田县', null);
INSERT INTO `qj_area` VALUES ('1394', '331100', '331122', '缙云县', null);
INSERT INTO `qj_area` VALUES ('1395', '331100', '331123', '遂昌县', null);
INSERT INTO `qj_area` VALUES ('1396', '331100', '331124', '松阳县', null);
INSERT INTO `qj_area` VALUES ('1397', '331100', '331125', '云和县', null);
INSERT INTO `qj_area` VALUES ('1398', '331100', '331126', '庆元县', null);
INSERT INTO `qj_area` VALUES ('1399', '331100', '331127', '景宁畲族自治县', null);
INSERT INTO `qj_area` VALUES ('1400', '331100', '331181', '龙泉市', null);
INSERT INTO `qj_area` VALUES ('1401', '340100', '340101', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1402', '340100', '340102', '瑶海区', null);
INSERT INTO `qj_area` VALUES ('1403', '340100', '340103', '庐阳区', null);
INSERT INTO `qj_area` VALUES ('1404', '340100', '340104', '蜀山区', null);
INSERT INTO `qj_area` VALUES ('1405', '340100', '340111', '包河区', null);
INSERT INTO `qj_area` VALUES ('1406', '340100', '340121', '长丰县', null);
INSERT INTO `qj_area` VALUES ('1407', '340100', '340122', '肥东县', null);
INSERT INTO `qj_area` VALUES ('1408', '340100', '340123', '肥西县', null);
INSERT INTO `qj_area` VALUES ('1409', '340200', '340201', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1410', '340200', '340202', '镜湖区', null);
INSERT INTO `qj_area` VALUES ('1411', '340200', '340203', '马塘区', null);
INSERT INTO `qj_area` VALUES ('1412', '340200', '340204', '新芜区', null);
INSERT INTO `qj_area` VALUES ('1413', '340200', '340207', '鸠江区', null);
INSERT INTO `qj_area` VALUES ('1414', '340200', '340221', '芜湖县', null);
INSERT INTO `qj_area` VALUES ('1415', '340200', '340222', '繁昌县', null);
INSERT INTO `qj_area` VALUES ('1416', '340200', '340223', '南陵县', null);
INSERT INTO `qj_area` VALUES ('1417', '340300', '340301', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1418', '340300', '340302', '龙子湖区', null);
INSERT INTO `qj_area` VALUES ('1419', '340300', '340303', '蚌山区', null);
INSERT INTO `qj_area` VALUES ('1420', '340300', '340304', '禹会区', null);
INSERT INTO `qj_area` VALUES ('1421', '340300', '340311', '淮上区', null);
INSERT INTO `qj_area` VALUES ('1422', '340300', '340321', '怀远县', null);
INSERT INTO `qj_area` VALUES ('1423', '340300', '340322', '五河县', null);
INSERT INTO `qj_area` VALUES ('1424', '340300', '340323', '固镇县', null);
INSERT INTO `qj_area` VALUES ('1425', '340400', '340401', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1426', '340400', '340402', '大通区', null);
INSERT INTO `qj_area` VALUES ('1427', '340400', '340403', '田家庵区', null);
INSERT INTO `qj_area` VALUES ('1428', '340400', '340404', '谢家集区', null);
INSERT INTO `qj_area` VALUES ('1429', '340400', '340405', '八公山区', null);
INSERT INTO `qj_area` VALUES ('1430', '340400', '340406', '潘集区', null);
INSERT INTO `qj_area` VALUES ('1431', '340400', '340421', '凤台县', null);
INSERT INTO `qj_area` VALUES ('1432', '340500', '340501', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1433', '340500', '340502', '金家庄区', null);
INSERT INTO `qj_area` VALUES ('1434', '340500', '340503', '花山区', null);
INSERT INTO `qj_area` VALUES ('1435', '340500', '340504', '雨山区', null);
INSERT INTO `qj_area` VALUES ('1436', '340500', '340521', '当涂县', null);
INSERT INTO `qj_area` VALUES ('1437', '340600', '340601', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1438', '340600', '340602', '杜集区', null);
INSERT INTO `qj_area` VALUES ('1439', '340600', '340603', '相山区', null);
INSERT INTO `qj_area` VALUES ('1440', '340600', '340604', '烈山区', null);
INSERT INTO `qj_area` VALUES ('1441', '340600', '340621', '濉溪县', null);
INSERT INTO `qj_area` VALUES ('1442', '340700', '340701', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1443', '340700', '340702', '铜官山区', null);
INSERT INTO `qj_area` VALUES ('1444', '340700', '340703', '狮子山区', null);
INSERT INTO `qj_area` VALUES ('1445', '340700', '340711', '郊　区', null);
INSERT INTO `qj_area` VALUES ('1446', '340700', '340721', '铜陵县', null);
INSERT INTO `qj_area` VALUES ('1447', '340800', '340801', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1448', '340800', '340802', '迎江区', null);
INSERT INTO `qj_area` VALUES ('1449', '340800', '340803', '大观区', null);
INSERT INTO `qj_area` VALUES ('1450', '340800', '340811', '郊　区', null);
INSERT INTO `qj_area` VALUES ('1451', '340800', '340822', '怀宁县', null);
INSERT INTO `qj_area` VALUES ('1452', '340800', '340823', '枞阳县', null);
INSERT INTO `qj_area` VALUES ('1453', '340800', '340824', '潜山县', null);
INSERT INTO `qj_area` VALUES ('1454', '340800', '340825', '太湖县', null);
INSERT INTO `qj_area` VALUES ('1455', '340800', '340826', '宿松县', null);
INSERT INTO `qj_area` VALUES ('1456', '340800', '340827', '望江县', null);
INSERT INTO `qj_area` VALUES ('1457', '340800', '340828', '岳西县', null);
INSERT INTO `qj_area` VALUES ('1458', '340800', '340881', '桐城市', null);
INSERT INTO `qj_area` VALUES ('1459', '341000', '341001', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1460', '341000', '341002', '屯溪区', null);
INSERT INTO `qj_area` VALUES ('1461', '341000', '341003', '黄山区', null);
INSERT INTO `qj_area` VALUES ('1462', '341000', '341004', '徽州区', null);
INSERT INTO `qj_area` VALUES ('1463', '341000', '341021', '歙　县', null);
INSERT INTO `qj_area` VALUES ('1464', '341000', '341022', '休宁县', null);
INSERT INTO `qj_area` VALUES ('1465', '341000', '341023', '黟　县', null);
INSERT INTO `qj_area` VALUES ('1466', '341000', '341024', '祁门县', null);
INSERT INTO `qj_area` VALUES ('1467', '341100', '341101', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1468', '341100', '341102', '琅琊区', null);
INSERT INTO `qj_area` VALUES ('1469', '341100', '341103', '南谯区', null);
INSERT INTO `qj_area` VALUES ('1470', '341100', '341122', '来安县', null);
INSERT INTO `qj_area` VALUES ('1471', '341100', '341124', '全椒县', null);
INSERT INTO `qj_area` VALUES ('1472', '341100', '341125', '定远县', null);
INSERT INTO `qj_area` VALUES ('1473', '341100', '341126', '凤阳县', null);
INSERT INTO `qj_area` VALUES ('1474', '341100', '341181', '天长市', null);
INSERT INTO `qj_area` VALUES ('1475', '341100', '341182', '明光市', null);
INSERT INTO `qj_area` VALUES ('1476', '341200', '341201', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1477', '341200', '341202', '颍州区', null);
INSERT INTO `qj_area` VALUES ('1478', '341200', '341203', '颍东区', null);
INSERT INTO `qj_area` VALUES ('1479', '341200', '341204', '颍泉区', null);
INSERT INTO `qj_area` VALUES ('1480', '341200', '341221', '临泉县', null);
INSERT INTO `qj_area` VALUES ('1481', '341200', '341222', '太和县', null);
INSERT INTO `qj_area` VALUES ('1482', '341200', '341225', '阜南县', null);
INSERT INTO `qj_area` VALUES ('1483', '341200', '341226', '颍上县', null);
INSERT INTO `qj_area` VALUES ('1484', '341200', '341282', '界首市', null);
INSERT INTO `qj_area` VALUES ('1485', '341300', '341301', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1486', '341300', '341302', '墉桥区', null);
INSERT INTO `qj_area` VALUES ('1487', '341300', '341321', '砀山县', null);
INSERT INTO `qj_area` VALUES ('1488', '341300', '341322', '萧　县', null);
INSERT INTO `qj_area` VALUES ('1489', '341300', '341323', '灵璧县', null);
INSERT INTO `qj_area` VALUES ('1490', '341300', '341324', '泗　县', null);
INSERT INTO `qj_area` VALUES ('1491', '341400', '341401', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1492', '341400', '341402', '居巢区', null);
INSERT INTO `qj_area` VALUES ('1493', '341400', '341421', '庐江县', null);
INSERT INTO `qj_area` VALUES ('1494', '341400', '341422', '无为县', null);
INSERT INTO `qj_area` VALUES ('1495', '341400', '341423', '含山县', null);
INSERT INTO `qj_area` VALUES ('1496', '341400', '341424', '和　县', null);
INSERT INTO `qj_area` VALUES ('1497', '341500', '341501', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1498', '341500', '341502', '金安区', null);
INSERT INTO `qj_area` VALUES ('1499', '341500', '341503', '裕安区', null);
INSERT INTO `qj_area` VALUES ('1500', '341500', '341521', '寿　县', null);
INSERT INTO `qj_area` VALUES ('1501', '341500', '341522', '霍邱县', null);
INSERT INTO `qj_area` VALUES ('1502', '341500', '341523', '舒城县', null);
INSERT INTO `qj_area` VALUES ('1503', '341500', '341524', '金寨县', null);
INSERT INTO `qj_area` VALUES ('1504', '341500', '341525', '霍山县', null);
INSERT INTO `qj_area` VALUES ('1505', '341600', '341601', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1506', '341600', '341602', '谯城区', null);
INSERT INTO `qj_area` VALUES ('1507', '341600', '341621', '涡阳县', null);
INSERT INTO `qj_area` VALUES ('1508', '341600', '341622', '蒙城县', null);
INSERT INTO `qj_area` VALUES ('1509', '341600', '341623', '利辛县', null);
INSERT INTO `qj_area` VALUES ('1510', '341700', '341701', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1511', '341700', '341702', '贵池区', null);
INSERT INTO `qj_area` VALUES ('1512', '341700', '341721', '东至县', null);
INSERT INTO `qj_area` VALUES ('1513', '341700', '341722', '石台县', null);
INSERT INTO `qj_area` VALUES ('1514', '341700', '341723', '青阳县', null);
INSERT INTO `qj_area` VALUES ('1515', '341800', '341801', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1516', '341800', '341802', '宣州区', null);
INSERT INTO `qj_area` VALUES ('1517', '341800', '341821', '郎溪县', null);
INSERT INTO `qj_area` VALUES ('1518', '341800', '341822', '广德县', null);
INSERT INTO `qj_area` VALUES ('1519', '341800', '341823', '泾　县', null);
INSERT INTO `qj_area` VALUES ('1520', '341800', '341824', '绩溪县', null);
INSERT INTO `qj_area` VALUES ('1521', '341800', '341825', '旌德县', null);
INSERT INTO `qj_area` VALUES ('1522', '341800', '341881', '宁国市', null);
INSERT INTO `qj_area` VALUES ('1523', '350100', '350101', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1524', '350100', '350102', '鼓楼区', null);
INSERT INTO `qj_area` VALUES ('1525', '350100', '350103', '台江区', null);
INSERT INTO `qj_area` VALUES ('1526', '350100', '350104', '仓山区', null);
INSERT INTO `qj_area` VALUES ('1527', '350100', '350105', '马尾区', null);
INSERT INTO `qj_area` VALUES ('1528', '350100', '350111', '晋安区', null);
INSERT INTO `qj_area` VALUES ('1529', '350100', '350121', '闽侯县', null);
INSERT INTO `qj_area` VALUES ('1530', '350100', '350122', '连江县', null);
INSERT INTO `qj_area` VALUES ('1531', '350100', '350123', '罗源县', null);
INSERT INTO `qj_area` VALUES ('1532', '350100', '350124', '闽清县', null);
INSERT INTO `qj_area` VALUES ('1533', '350100', '350125', '永泰县', null);
INSERT INTO `qj_area` VALUES ('1534', '350100', '350128', '平潭县', null);
INSERT INTO `qj_area` VALUES ('1535', '350100', '350181', '福清市', null);
INSERT INTO `qj_area` VALUES ('1536', '350100', '350182', '长乐市', null);
INSERT INTO `qj_area` VALUES ('1537', '350200', '350201', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1538', '350200', '350203', '思明区', null);
INSERT INTO `qj_area` VALUES ('1539', '350200', '350205', '海沧区', null);
INSERT INTO `qj_area` VALUES ('1540', '350200', '350206', '湖里区', null);
INSERT INTO `qj_area` VALUES ('1541', '350200', '350211', '集美区', null);
INSERT INTO `qj_area` VALUES ('1542', '350200', '350212', '同安区', null);
INSERT INTO `qj_area` VALUES ('1543', '350200', '350213', '翔安区', null);
INSERT INTO `qj_area` VALUES ('1544', '350300', '350301', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1545', '350300', '350302', '城厢区', null);
INSERT INTO `qj_area` VALUES ('1546', '350300', '350303', '涵江区', null);
INSERT INTO `qj_area` VALUES ('1547', '350300', '350304', '荔城区', null);
INSERT INTO `qj_area` VALUES ('1548', '350300', '350305', '秀屿区', null);
INSERT INTO `qj_area` VALUES ('1549', '350300', '350322', '仙游县', null);
INSERT INTO `qj_area` VALUES ('1550', '350400', '350401', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1551', '350400', '350402', '梅列区', null);
INSERT INTO `qj_area` VALUES ('1552', '350400', '350403', '三元区', null);
INSERT INTO `qj_area` VALUES ('1553', '350400', '350421', '明溪县', null);
INSERT INTO `qj_area` VALUES ('1554', '350400', '350423', '清流县', null);
INSERT INTO `qj_area` VALUES ('1555', '350400', '350424', '宁化县', null);
INSERT INTO `qj_area` VALUES ('1556', '350400', '350425', '大田县', null);
INSERT INTO `qj_area` VALUES ('1557', '350400', '350426', '尤溪县', null);
INSERT INTO `qj_area` VALUES ('1558', '350400', '350427', '沙　县', null);
INSERT INTO `qj_area` VALUES ('1559', '350400', '350428', '将乐县', null);
INSERT INTO `qj_area` VALUES ('1560', '350400', '350429', '泰宁县', null);
INSERT INTO `qj_area` VALUES ('1561', '350400', '350430', '建宁县', null);
INSERT INTO `qj_area` VALUES ('1562', '350400', '350481', '永安市', null);
INSERT INTO `qj_area` VALUES ('1563', '350500', '350501', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1564', '350500', '350502', '鲤城区', null);
INSERT INTO `qj_area` VALUES ('1565', '350500', '350503', '丰泽区', null);
INSERT INTO `qj_area` VALUES ('1566', '350500', '350504', '洛江区', null);
INSERT INTO `qj_area` VALUES ('1567', '350500', '350505', '泉港区', null);
INSERT INTO `qj_area` VALUES ('1568', '350500', '350521', '惠安县', null);
INSERT INTO `qj_area` VALUES ('1569', '350500', '350524', '安溪县', null);
INSERT INTO `qj_area` VALUES ('1570', '350500', '350525', '永春县', null);
INSERT INTO `qj_area` VALUES ('1571', '350500', '350526', '德化县', null);
INSERT INTO `qj_area` VALUES ('1572', '350500', '350527', '金门县', null);
INSERT INTO `qj_area` VALUES ('1573', '350500', '350581', '石狮市', null);
INSERT INTO `qj_area` VALUES ('1574', '350500', '350582', '晋江市', null);
INSERT INTO `qj_area` VALUES ('1575', '350500', '350583', '南安市', null);
INSERT INTO `qj_area` VALUES ('1576', '350600', '350601', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1577', '350600', '350602', '芗城区', null);
INSERT INTO `qj_area` VALUES ('1578', '350600', '350603', '龙文区', null);
INSERT INTO `qj_area` VALUES ('1579', '350600', '350622', '云霄县', null);
INSERT INTO `qj_area` VALUES ('1580', '350600', '350623', '漳浦县', null);
INSERT INTO `qj_area` VALUES ('1581', '350600', '350624', '诏安县', null);
INSERT INTO `qj_area` VALUES ('1582', '350600', '350625', '长泰县', null);
INSERT INTO `qj_area` VALUES ('1583', '350600', '350626', '东山县', null);
INSERT INTO `qj_area` VALUES ('1584', '350600', '350627', '南靖县', null);
INSERT INTO `qj_area` VALUES ('1585', '350600', '350628', '平和县', null);
INSERT INTO `qj_area` VALUES ('1586', '350600', '350629', '华安县', null);
INSERT INTO `qj_area` VALUES ('1587', '350600', '350681', '龙海市', null);
INSERT INTO `qj_area` VALUES ('1588', '350700', '350701', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1589', '350700', '350702', '延平区', null);
INSERT INTO `qj_area` VALUES ('1590', '350700', '350721', '顺昌县', null);
INSERT INTO `qj_area` VALUES ('1591', '350700', '350722', '浦城县', null);
INSERT INTO `qj_area` VALUES ('1592', '350700', '350723', '光泽县', null);
INSERT INTO `qj_area` VALUES ('1593', '350700', '350724', '松溪县', null);
INSERT INTO `qj_area` VALUES ('1594', '350700', '350725', '政和县', null);
INSERT INTO `qj_area` VALUES ('1595', '350700', '350781', '邵武市', null);
INSERT INTO `qj_area` VALUES ('1596', '350700', '350782', '武夷山市', null);
INSERT INTO `qj_area` VALUES ('1597', '350700', '350783', '建瓯市', null);
INSERT INTO `qj_area` VALUES ('1598', '350700', '350784', '建阳市', null);
INSERT INTO `qj_area` VALUES ('1599', '350800', '350801', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1600', '350800', '350802', '新罗区', null);
INSERT INTO `qj_area` VALUES ('1601', '350800', '350821', '长汀县', null);
INSERT INTO `qj_area` VALUES ('1602', '350800', '350822', '永定县', null);
INSERT INTO `qj_area` VALUES ('1603', '350800', '350823', '上杭县', null);
INSERT INTO `qj_area` VALUES ('1604', '350800', '350824', '武平县', null);
INSERT INTO `qj_area` VALUES ('1605', '350800', '350825', '连城县', null);
INSERT INTO `qj_area` VALUES ('1606', '350800', '350881', '漳平市', null);
INSERT INTO `qj_area` VALUES ('1607', '350900', '350901', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1608', '350900', '350902', '蕉城区', null);
INSERT INTO `qj_area` VALUES ('1609', '350900', '350921', '霞浦县', null);
INSERT INTO `qj_area` VALUES ('1610', '350900', '350922', '古田县', null);
INSERT INTO `qj_area` VALUES ('1611', '350900', '350923', '屏南县', null);
INSERT INTO `qj_area` VALUES ('1612', '350900', '350924', '寿宁县', null);
INSERT INTO `qj_area` VALUES ('1613', '350900', '350925', '周宁县', null);
INSERT INTO `qj_area` VALUES ('1614', '350900', '350926', '柘荣县', null);
INSERT INTO `qj_area` VALUES ('1615', '350900', '350981', '福安市', null);
INSERT INTO `qj_area` VALUES ('1616', '350900', '350982', '福鼎市', null);
INSERT INTO `qj_area` VALUES ('1617', '360100', '360101', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1618', '360100', '360102', '东湖区', null);
INSERT INTO `qj_area` VALUES ('1619', '360100', '360103', '西湖区', null);
INSERT INTO `qj_area` VALUES ('1620', '360100', '360104', '青云谱区', null);
INSERT INTO `qj_area` VALUES ('1621', '360100', '360105', '湾里区', null);
INSERT INTO `qj_area` VALUES ('1622', '360100', '360111', '青山湖区', null);
INSERT INTO `qj_area` VALUES ('1623', '360100', '360121', '南昌县', null);
INSERT INTO `qj_area` VALUES ('1624', '360100', '360122', '新建县', null);
INSERT INTO `qj_area` VALUES ('1625', '360100', '360123', '安义县', null);
INSERT INTO `qj_area` VALUES ('1626', '360100', '360124', '进贤县', null);
INSERT INTO `qj_area` VALUES ('1627', '360200', '360201', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1628', '360200', '360202', '昌江区', null);
INSERT INTO `qj_area` VALUES ('1629', '360200', '360203', '珠山区', null);
INSERT INTO `qj_area` VALUES ('1630', '360200', '360222', '浮梁县', null);
INSERT INTO `qj_area` VALUES ('1631', '360200', '360281', '乐平市', null);
INSERT INTO `qj_area` VALUES ('1632', '360300', '360301', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1633', '360300', '360302', '安源区', null);
INSERT INTO `qj_area` VALUES ('1634', '360300', '360313', '湘东区', null);
INSERT INTO `qj_area` VALUES ('1635', '360300', '360321', '莲花县', null);
INSERT INTO `qj_area` VALUES ('1636', '360300', '360322', '上栗县', null);
INSERT INTO `qj_area` VALUES ('1637', '360300', '360323', '芦溪县', null);
INSERT INTO `qj_area` VALUES ('1638', '360400', '360401', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1639', '360400', '360402', '庐山区', null);
INSERT INTO `qj_area` VALUES ('1640', '360400', '360403', '浔阳区', null);
INSERT INTO `qj_area` VALUES ('1641', '360400', '360421', '九江县', null);
INSERT INTO `qj_area` VALUES ('1642', '360400', '360423', '武宁县', null);
INSERT INTO `qj_area` VALUES ('1643', '360400', '360424', '修水县', null);
INSERT INTO `qj_area` VALUES ('1644', '360400', '360425', '永修县', null);
INSERT INTO `qj_area` VALUES ('1645', '360400', '360426', '德安县', null);
INSERT INTO `qj_area` VALUES ('1646', '360400', '360427', '星子县', null);
INSERT INTO `qj_area` VALUES ('1647', '360400', '360428', '都昌县', null);
INSERT INTO `qj_area` VALUES ('1648', '360400', '360429', '湖口县', null);
INSERT INTO `qj_area` VALUES ('1649', '360400', '360430', '彭泽县', null);
INSERT INTO `qj_area` VALUES ('1650', '360400', '360481', '瑞昌市', null);
INSERT INTO `qj_area` VALUES ('1651', '360500', '360501', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1652', '360500', '360502', '渝水区', null);
INSERT INTO `qj_area` VALUES ('1653', '360500', '360521', '分宜县', null);
INSERT INTO `qj_area` VALUES ('1654', '360600', '360601', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1655', '360600', '360602', '月湖区', null);
INSERT INTO `qj_area` VALUES ('1656', '360600', '360622', '余江县', null);
INSERT INTO `qj_area` VALUES ('1657', '360600', '360681', '贵溪市', null);
INSERT INTO `qj_area` VALUES ('1658', '360700', '360701', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1659', '360700', '360702', '章贡区', null);
INSERT INTO `qj_area` VALUES ('1660', '360700', '360721', '赣　县', null);
INSERT INTO `qj_area` VALUES ('1661', '360700', '360722', '信丰县', null);
INSERT INTO `qj_area` VALUES ('1662', '360700', '360723', '大余县', null);
INSERT INTO `qj_area` VALUES ('1663', '360700', '360724', '上犹县', null);
INSERT INTO `qj_area` VALUES ('1664', '360700', '360725', '崇义县', null);
INSERT INTO `qj_area` VALUES ('1665', '360700', '360726', '安远县', null);
INSERT INTO `qj_area` VALUES ('1666', '360700', '360727', '龙南县', null);
INSERT INTO `qj_area` VALUES ('1667', '360700', '360728', '定南县', null);
INSERT INTO `qj_area` VALUES ('1668', '360700', '360729', '全南县', null);
INSERT INTO `qj_area` VALUES ('1669', '360700', '360730', '宁都县', null);
INSERT INTO `qj_area` VALUES ('1670', '360700', '360731', '于都县', null);
INSERT INTO `qj_area` VALUES ('1671', '360700', '360732', '兴国县', null);
INSERT INTO `qj_area` VALUES ('1672', '360700', '360733', '会昌县', null);
INSERT INTO `qj_area` VALUES ('1673', '360700', '360734', '寻乌县', null);
INSERT INTO `qj_area` VALUES ('1674', '360700', '360735', '石城县', null);
INSERT INTO `qj_area` VALUES ('1675', '360700', '360781', '瑞金市', null);
INSERT INTO `qj_area` VALUES ('1676', '360700', '360782', '南康市', null);
INSERT INTO `qj_area` VALUES ('1677', '360800', '360801', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1678', '360800', '360802', '吉州区', null);
INSERT INTO `qj_area` VALUES ('1679', '360800', '360803', '青原区', null);
INSERT INTO `qj_area` VALUES ('1680', '360800', '360821', '吉安县', null);
INSERT INTO `qj_area` VALUES ('1681', '360800', '360822', '吉水县', null);
INSERT INTO `qj_area` VALUES ('1682', '360800', '360823', '峡江县', null);
INSERT INTO `qj_area` VALUES ('1683', '360800', '360824', '新干县', null);
INSERT INTO `qj_area` VALUES ('1684', '360800', '360825', '永丰县', null);
INSERT INTO `qj_area` VALUES ('1685', '360800', '360826', '泰和县', null);
INSERT INTO `qj_area` VALUES ('1686', '360800', '360827', '遂川县', null);
INSERT INTO `qj_area` VALUES ('1687', '360800', '360828', '万安县', null);
INSERT INTO `qj_area` VALUES ('1688', '360800', '360829', '安福县', null);
INSERT INTO `qj_area` VALUES ('1689', '360800', '360830', '永新县', null);
INSERT INTO `qj_area` VALUES ('1690', '360800', '360881', '井冈山市', null);
INSERT INTO `qj_area` VALUES ('1691', '360900', '360901', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1692', '360900', '360902', '袁州区', null);
INSERT INTO `qj_area` VALUES ('1693', '360900', '360921', '奉新县', null);
INSERT INTO `qj_area` VALUES ('1694', '360900', '360922', '万载县', null);
INSERT INTO `qj_area` VALUES ('1695', '360900', '360923', '上高县', null);
INSERT INTO `qj_area` VALUES ('1696', '360900', '360924', '宜丰县', null);
INSERT INTO `qj_area` VALUES ('1697', '360900', '360925', '靖安县', null);
INSERT INTO `qj_area` VALUES ('1698', '360900', '360926', '铜鼓县', null);
INSERT INTO `qj_area` VALUES ('1699', '360900', '360981', '丰城市', null);
INSERT INTO `qj_area` VALUES ('1700', '360900', '360982', '樟树市', null);
INSERT INTO `qj_area` VALUES ('1701', '360900', '360983', '高安市', null);
INSERT INTO `qj_area` VALUES ('1702', '361000', '361001', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1703', '361000', '361002', '临川区', null);
INSERT INTO `qj_area` VALUES ('1704', '361000', '361021', '南城县', null);
INSERT INTO `qj_area` VALUES ('1705', '361000', '361022', '黎川县', null);
INSERT INTO `qj_area` VALUES ('1706', '361000', '361023', '南丰县', null);
INSERT INTO `qj_area` VALUES ('1707', '361000', '361024', '崇仁县', null);
INSERT INTO `qj_area` VALUES ('1708', '361000', '361025', '乐安县', null);
INSERT INTO `qj_area` VALUES ('1709', '361000', '361026', '宜黄县', null);
INSERT INTO `qj_area` VALUES ('1710', '361000', '361027', '金溪县', null);
INSERT INTO `qj_area` VALUES ('1711', '361000', '361028', '资溪县', null);
INSERT INTO `qj_area` VALUES ('1712', '361000', '361029', '东乡县', null);
INSERT INTO `qj_area` VALUES ('1713', '361000', '361030', '广昌县', null);
INSERT INTO `qj_area` VALUES ('1714', '361100', '361101', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1715', '361100', '361102', '信州区', null);
INSERT INTO `qj_area` VALUES ('1716', '361100', '361121', '上饶县', null);
INSERT INTO `qj_area` VALUES ('1717', '361100', '361122', '广丰县', null);
INSERT INTO `qj_area` VALUES ('1718', '361100', '361123', '玉山县', null);
INSERT INTO `qj_area` VALUES ('1719', '361100', '361124', '铅山县', null);
INSERT INTO `qj_area` VALUES ('1720', '361100', '361125', '横峰县', null);
INSERT INTO `qj_area` VALUES ('1721', '361100', '361126', '弋阳县', null);
INSERT INTO `qj_area` VALUES ('1722', '361100', '361127', '余干县', null);
INSERT INTO `qj_area` VALUES ('1723', '361100', '361128', '鄱阳县', null);
INSERT INTO `qj_area` VALUES ('1724', '361100', '361129', '万年县', null);
INSERT INTO `qj_area` VALUES ('1725', '361100', '361130', '婺源县', null);
INSERT INTO `qj_area` VALUES ('1726', '361100', '361181', '德兴市', null);
INSERT INTO `qj_area` VALUES ('1727', '370100', '370101', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1728', '370100', '370102', '历下区', null);
INSERT INTO `qj_area` VALUES ('1729', '370100', '370103', '市中区', null);
INSERT INTO `qj_area` VALUES ('1730', '370100', '370104', '槐荫区', null);
INSERT INTO `qj_area` VALUES ('1731', '370100', '370105', '天桥区', null);
INSERT INTO `qj_area` VALUES ('1732', '370100', '370112', '历城区', null);
INSERT INTO `qj_area` VALUES ('1733', '370100', '370113', '长清区', null);
INSERT INTO `qj_area` VALUES ('1734', '370100', '370124', '平阴县', null);
INSERT INTO `qj_area` VALUES ('1735', '370100', '370125', '济阳县', null);
INSERT INTO `qj_area` VALUES ('1736', '370100', '370126', '商河县', null);
INSERT INTO `qj_area` VALUES ('1737', '370100', '370181', '章丘市', null);
INSERT INTO `qj_area` VALUES ('1738', '370200', '370201', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1739', '370200', '370202', '市南区', null);
INSERT INTO `qj_area` VALUES ('1740', '370200', '370203', '市北区', null);
INSERT INTO `qj_area` VALUES ('1741', '370200', '370205', '四方区', null);
INSERT INTO `qj_area` VALUES ('1742', '370200', '370211', '黄岛区', null);
INSERT INTO `qj_area` VALUES ('1743', '370200', '370212', '崂山区', null);
INSERT INTO `qj_area` VALUES ('1744', '370200', '370213', '李沧区', null);
INSERT INTO `qj_area` VALUES ('1745', '370200', '370214', '城阳区', null);
INSERT INTO `qj_area` VALUES ('1746', '370200', '370281', '胶州市', null);
INSERT INTO `qj_area` VALUES ('1747', '370200', '370282', '即墨市', null);
INSERT INTO `qj_area` VALUES ('1748', '370200', '370283', '平度市', null);
INSERT INTO `qj_area` VALUES ('1749', '370200', '370284', '胶南市', null);
INSERT INTO `qj_area` VALUES ('1750', '370200', '370285', '莱西市', null);
INSERT INTO `qj_area` VALUES ('1751', '370300', '370301', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1752', '370300', '370302', '淄川区', null);
INSERT INTO `qj_area` VALUES ('1753', '370300', '370303', '张店区', null);
INSERT INTO `qj_area` VALUES ('1754', '370300', '370304', '博山区', null);
INSERT INTO `qj_area` VALUES ('1755', '370300', '370305', '临淄区', null);
INSERT INTO `qj_area` VALUES ('1756', '370300', '370306', '周村区', null);
INSERT INTO `qj_area` VALUES ('1757', '370300', '370321', '桓台县', null);
INSERT INTO `qj_area` VALUES ('1758', '370300', '370322', '高青县', null);
INSERT INTO `qj_area` VALUES ('1759', '370300', '370323', '沂源县', null);
INSERT INTO `qj_area` VALUES ('1760', '370400', '370401', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1761', '370400', '370402', '市中区', null);
INSERT INTO `qj_area` VALUES ('1762', '370400', '370403', '薛城区', null);
INSERT INTO `qj_area` VALUES ('1763', '370400', '370404', '峄城区', null);
INSERT INTO `qj_area` VALUES ('1764', '370400', '370405', '台儿庄区', null);
INSERT INTO `qj_area` VALUES ('1765', '370400', '370406', '山亭区', null);
INSERT INTO `qj_area` VALUES ('1766', '370400', '370481', '滕州市', null);
INSERT INTO `qj_area` VALUES ('1767', '370500', '370501', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1768', '370500', '370502', '东营区', null);
INSERT INTO `qj_area` VALUES ('1769', '370500', '370503', '河口区', null);
INSERT INTO `qj_area` VALUES ('1770', '370500', '370521', '垦利县', null);
INSERT INTO `qj_area` VALUES ('1771', '370500', '370522', '利津县', null);
INSERT INTO `qj_area` VALUES ('1772', '370500', '370523', '广饶县', null);
INSERT INTO `qj_area` VALUES ('1773', '370600', '370601', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1774', '370600', '370602', '芝罘区', null);
INSERT INTO `qj_area` VALUES ('1775', '370600', '370611', '福山区', null);
INSERT INTO `qj_area` VALUES ('1776', '370600', '370612', '牟平区', null);
INSERT INTO `qj_area` VALUES ('1777', '370600', '370613', '莱山区', null);
INSERT INTO `qj_area` VALUES ('1778', '370600', '370634', '长岛县', null);
INSERT INTO `qj_area` VALUES ('1779', '370600', '370681', '龙口市', null);
INSERT INTO `qj_area` VALUES ('1780', '370600', '370682', '莱阳市', null);
INSERT INTO `qj_area` VALUES ('1781', '370600', '370683', '莱州市', null);
INSERT INTO `qj_area` VALUES ('1782', '370600', '370684', '蓬莱市', null);
INSERT INTO `qj_area` VALUES ('1783', '370600', '370685', '招远市', null);
INSERT INTO `qj_area` VALUES ('1784', '370600', '370686', '栖霞市', null);
INSERT INTO `qj_area` VALUES ('1785', '370600', '370687', '海阳市', null);
INSERT INTO `qj_area` VALUES ('1786', '370700', '370701', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1787', '370700', '370702', '潍城区', null);
INSERT INTO `qj_area` VALUES ('1788', '370700', '370703', '寒亭区', null);
INSERT INTO `qj_area` VALUES ('1789', '370700', '370704', '坊子区', null);
INSERT INTO `qj_area` VALUES ('1790', '370700', '370705', '奎文区', null);
INSERT INTO `qj_area` VALUES ('1791', '370700', '370724', '临朐县', null);
INSERT INTO `qj_area` VALUES ('1792', '370700', '370725', '昌乐县', null);
INSERT INTO `qj_area` VALUES ('1793', '370700', '370781', '青州市', null);
INSERT INTO `qj_area` VALUES ('1794', '370700', '370782', '诸城市', null);
INSERT INTO `qj_area` VALUES ('1795', '370700', '370783', '寿光市', null);
INSERT INTO `qj_area` VALUES ('1796', '370700', '370784', '安丘市', null);
INSERT INTO `qj_area` VALUES ('1797', '370700', '370785', '高密市', null);
INSERT INTO `qj_area` VALUES ('1798', '370700', '370786', '昌邑市', null);
INSERT INTO `qj_area` VALUES ('1799', '370800', '370801', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1800', '370800', '370802', '市中区', null);
INSERT INTO `qj_area` VALUES ('1801', '370800', '370811', '任城区', null);
INSERT INTO `qj_area` VALUES ('1802', '370800', '370826', '微山县', null);
INSERT INTO `qj_area` VALUES ('1803', '370800', '370827', '鱼台县', null);
INSERT INTO `qj_area` VALUES ('1804', '370800', '370828', '金乡县', null);
INSERT INTO `qj_area` VALUES ('1805', '370800', '370829', '嘉祥县', null);
INSERT INTO `qj_area` VALUES ('1806', '370800', '370830', '汶上县', null);
INSERT INTO `qj_area` VALUES ('1807', '370800', '370831', '泗水县', null);
INSERT INTO `qj_area` VALUES ('1808', '370800', '370832', '梁山县', null);
INSERT INTO `qj_area` VALUES ('1809', '370800', '370881', '曲阜市', null);
INSERT INTO `qj_area` VALUES ('1810', '370800', '370882', '兖州市', null);
INSERT INTO `qj_area` VALUES ('1811', '370800', '370883', '邹城市', null);
INSERT INTO `qj_area` VALUES ('1812', '370900', '370901', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1813', '370900', '370902', '泰山区', null);
INSERT INTO `qj_area` VALUES ('1814', '370900', '370903', '岱岳区', null);
INSERT INTO `qj_area` VALUES ('1815', '370900', '370921', '宁阳县', null);
INSERT INTO `qj_area` VALUES ('1816', '370900', '370923', '东平县', null);
INSERT INTO `qj_area` VALUES ('1817', '370900', '370982', '新泰市', null);
INSERT INTO `qj_area` VALUES ('1818', '370900', '370983', '肥城市', null);
INSERT INTO `qj_area` VALUES ('1819', '371000', '371001', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1820', '371000', '371002', '环翠区', null);
INSERT INTO `qj_area` VALUES ('1821', '371000', '371081', '文登市', null);
INSERT INTO `qj_area` VALUES ('1822', '371000', '371082', '荣成市', null);
INSERT INTO `qj_area` VALUES ('1823', '371000', '371083', '乳山市', null);
INSERT INTO `qj_area` VALUES ('1824', '371100', '371101', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1825', '371100', '371102', '东港区', null);
INSERT INTO `qj_area` VALUES ('1826', '371100', '371103', '岚山区', null);
INSERT INTO `qj_area` VALUES ('1827', '371100', '371121', '五莲县', null);
INSERT INTO `qj_area` VALUES ('1828', '371100', '371122', '莒　县', null);
INSERT INTO `qj_area` VALUES ('1829', '371200', '371201', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1830', '371200', '371202', '莱城区', null);
INSERT INTO `qj_area` VALUES ('1831', '371200', '371203', '钢城区', null);
INSERT INTO `qj_area` VALUES ('1832', '371300', '371301', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1833', '371300', '371302', '兰山区', null);
INSERT INTO `qj_area` VALUES ('1834', '371300', '371311', '罗庄区', null);
INSERT INTO `qj_area` VALUES ('1835', '371300', '371312', '河东区', null);
INSERT INTO `qj_area` VALUES ('1836', '371300', '371321', '沂南县', null);
INSERT INTO `qj_area` VALUES ('1837', '371300', '371322', '郯城县', null);
INSERT INTO `qj_area` VALUES ('1838', '371300', '371323', '沂水县', null);
INSERT INTO `qj_area` VALUES ('1839', '371300', '371324', '苍山县', null);
INSERT INTO `qj_area` VALUES ('1840', '371300', '371325', '费　县', null);
INSERT INTO `qj_area` VALUES ('1841', '371300', '371326', '平邑县', null);
INSERT INTO `qj_area` VALUES ('1842', '371300', '371327', '莒南县', null);
INSERT INTO `qj_area` VALUES ('1843', '371300', '371328', '蒙阴县', null);
INSERT INTO `qj_area` VALUES ('1844', '371300', '371329', '临沭县', null);
INSERT INTO `qj_area` VALUES ('1845', '371400', '371401', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1846', '371400', '371402', '德城区', null);
INSERT INTO `qj_area` VALUES ('1847', '371400', '371421', '陵　县', null);
INSERT INTO `qj_area` VALUES ('1848', '371400', '371422', '宁津县', null);
INSERT INTO `qj_area` VALUES ('1849', '371400', '371423', '庆云县', null);
INSERT INTO `qj_area` VALUES ('1850', '371400', '371424', '临邑县', null);
INSERT INTO `qj_area` VALUES ('1851', '371400', '371425', '齐河县', null);
INSERT INTO `qj_area` VALUES ('1852', '371400', '371426', '平原县', null);
INSERT INTO `qj_area` VALUES ('1853', '371400', '371427', '夏津县', null);
INSERT INTO `qj_area` VALUES ('1854', '371400', '371428', '武城县', null);
INSERT INTO `qj_area` VALUES ('1855', '371400', '371481', '乐陵市', null);
INSERT INTO `qj_area` VALUES ('1856', '371400', '371482', '禹城市', null);
INSERT INTO `qj_area` VALUES ('1857', '371500', '371501', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1858', '371500', '371502', '东昌府区', null);
INSERT INTO `qj_area` VALUES ('1859', '371500', '371521', '阳谷县', null);
INSERT INTO `qj_area` VALUES ('1860', '371500', '371522', '莘　县', null);
INSERT INTO `qj_area` VALUES ('1861', '371500', '371523', '茌平县', null);
INSERT INTO `qj_area` VALUES ('1862', '371500', '371524', '东阿县', null);
INSERT INTO `qj_area` VALUES ('1863', '371500', '371525', '冠　县', null);
INSERT INTO `qj_area` VALUES ('1864', '371500', '371526', '高唐县', null);
INSERT INTO `qj_area` VALUES ('1865', '371500', '371581', '临清市', null);
INSERT INTO `qj_area` VALUES ('1866', '371600', '371601', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1867', '371600', '371602', '滨城区', null);
INSERT INTO `qj_area` VALUES ('1868', '371600', '371621', '惠民县', null);
INSERT INTO `qj_area` VALUES ('1869', '371600', '371622', '阳信县', null);
INSERT INTO `qj_area` VALUES ('1870', '371600', '371623', '无棣县', null);
INSERT INTO `qj_area` VALUES ('1871', '371600', '371624', '沾化县', null);
INSERT INTO `qj_area` VALUES ('1872', '371600', '371625', '博兴县', null);
INSERT INTO `qj_area` VALUES ('1873', '371600', '371626', '邹平县', null);
INSERT INTO `qj_area` VALUES ('1874', '371700', '371701', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1875', '371700', '371702', '牡丹区', null);
INSERT INTO `qj_area` VALUES ('1876', '371700', '371721', '曹　县', null);
INSERT INTO `qj_area` VALUES ('1877', '371700', '371722', '单　县', null);
INSERT INTO `qj_area` VALUES ('1878', '371700', '371723', '成武县', null);
INSERT INTO `qj_area` VALUES ('1879', '371700', '371724', '巨野县', null);
INSERT INTO `qj_area` VALUES ('1880', '371700', '371725', '郓城县', null);
INSERT INTO `qj_area` VALUES ('1881', '371700', '371726', '鄄城县', null);
INSERT INTO `qj_area` VALUES ('1882', '371700', '371727', '定陶县', null);
INSERT INTO `qj_area` VALUES ('1883', '371700', '371728', '东明县', null);
INSERT INTO `qj_area` VALUES ('1884', '410100', '410101', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1885', '410100', '410102', '中原区', null);
INSERT INTO `qj_area` VALUES ('1886', '410100', '410103', '二七区', null);
INSERT INTO `qj_area` VALUES ('1887', '410100', '410104', '管城回族区', null);
INSERT INTO `qj_area` VALUES ('1888', '410100', '410105', '金水区', null);
INSERT INTO `qj_area` VALUES ('1889', '410100', '410106', '上街区', null);
INSERT INTO `qj_area` VALUES ('1890', '410100', '410108', '邙山区', null);
INSERT INTO `qj_area` VALUES ('1891', '410100', '410122', '中牟县', null);
INSERT INTO `qj_area` VALUES ('1892', '410100', '410181', '巩义市', null);
INSERT INTO `qj_area` VALUES ('1893', '410100', '410182', '荥阳市', null);
INSERT INTO `qj_area` VALUES ('1894', '410100', '410183', '新密市', null);
INSERT INTO `qj_area` VALUES ('1895', '410100', '410184', '新郑市', null);
INSERT INTO `qj_area` VALUES ('1896', '410100', '410185', '登封市', null);
INSERT INTO `qj_area` VALUES ('1897', '410200', '410201', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1898', '410200', '410202', '龙亭区', null);
INSERT INTO `qj_area` VALUES ('1899', '410200', '410203', '顺河回族区', null);
INSERT INTO `qj_area` VALUES ('1900', '410200', '410204', '鼓楼区', null);
INSERT INTO `qj_area` VALUES ('1901', '410200', '410205', '南关区', null);
INSERT INTO `qj_area` VALUES ('1902', '410200', '410211', '郊　区', null);
INSERT INTO `qj_area` VALUES ('1903', '410200', '410221', '杞　县', null);
INSERT INTO `qj_area` VALUES ('1904', '410200', '410222', '通许县', null);
INSERT INTO `qj_area` VALUES ('1905', '410200', '410223', '尉氏县', null);
INSERT INTO `qj_area` VALUES ('1906', '410200', '410224', '开封县', null);
INSERT INTO `qj_area` VALUES ('1907', '410200', '410225', '兰考县', null);
INSERT INTO `qj_area` VALUES ('1908', '410300', '410301', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1909', '410300', '410302', '老城区', null);
INSERT INTO `qj_area` VALUES ('1910', '410300', '410303', '西工区', null);
INSERT INTO `qj_area` VALUES ('1911', '410300', '410304', '廛河回族区', null);
INSERT INTO `qj_area` VALUES ('1912', '410300', '410305', '涧西区', null);
INSERT INTO `qj_area` VALUES ('1913', '410300', '410306', '吉利区', null);
INSERT INTO `qj_area` VALUES ('1914', '410300', '410307', '洛龙区', null);
INSERT INTO `qj_area` VALUES ('1915', '410300', '410322', '孟津县', null);
INSERT INTO `qj_area` VALUES ('1916', '410300', '410323', '新安县', null);
INSERT INTO `qj_area` VALUES ('1917', '410300', '410324', '栾川县', null);
INSERT INTO `qj_area` VALUES ('1918', '410300', '410325', '嵩　县', null);
INSERT INTO `qj_area` VALUES ('1919', '410300', '410326', '汝阳县', null);
INSERT INTO `qj_area` VALUES ('1920', '410300', '410327', '宜阳县', null);
INSERT INTO `qj_area` VALUES ('1921', '410300', '410328', '洛宁县', null);
INSERT INTO `qj_area` VALUES ('1922', '410300', '410329', '伊川县', null);
INSERT INTO `qj_area` VALUES ('1923', '410300', '410381', '偃师市', null);
INSERT INTO `qj_area` VALUES ('1924', '410400', '410401', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1925', '410400', '410402', '新华区', null);
INSERT INTO `qj_area` VALUES ('1926', '410400', '410403', '卫东区', null);
INSERT INTO `qj_area` VALUES ('1927', '410400', '410404', '石龙区', null);
INSERT INTO `qj_area` VALUES ('1928', '410400', '410411', '湛河区', null);
INSERT INTO `qj_area` VALUES ('1929', '410400', '410421', '宝丰县', null);
INSERT INTO `qj_area` VALUES ('1930', '410400', '410422', '叶　县', null);
INSERT INTO `qj_area` VALUES ('1931', '410400', '410423', '鲁山县', null);
INSERT INTO `qj_area` VALUES ('1932', '410400', '410425', '郏　县', null);
INSERT INTO `qj_area` VALUES ('1933', '410400', '410481', '舞钢市', null);
INSERT INTO `qj_area` VALUES ('1934', '410400', '410482', '汝州市', null);
INSERT INTO `qj_area` VALUES ('1935', '410500', '410501', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1936', '410500', '410502', '文峰区', null);
INSERT INTO `qj_area` VALUES ('1937', '410500', '410503', '北关区', null);
INSERT INTO `qj_area` VALUES ('1938', '410500', '410505', '殷都区', null);
INSERT INTO `qj_area` VALUES ('1939', '410500', '410506', '龙安区', null);
INSERT INTO `qj_area` VALUES ('1940', '410500', '410522', '安阳县', null);
INSERT INTO `qj_area` VALUES ('1941', '410500', '410523', '汤阴县', null);
INSERT INTO `qj_area` VALUES ('1942', '410500', '410526', '滑　县', null);
INSERT INTO `qj_area` VALUES ('1943', '410500', '410527', '内黄县', null);
INSERT INTO `qj_area` VALUES ('1944', '410500', '410581', '林州市', null);
INSERT INTO `qj_area` VALUES ('1945', '410600', '410601', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1946', '410600', '410602', '鹤山区', null);
INSERT INTO `qj_area` VALUES ('1947', '410600', '410603', '山城区', null);
INSERT INTO `qj_area` VALUES ('1948', '410600', '410611', '淇滨区', null);
INSERT INTO `qj_area` VALUES ('1949', '410600', '410621', '浚　县', null);
INSERT INTO `qj_area` VALUES ('1950', '410600', '410622', '淇　县', null);
INSERT INTO `qj_area` VALUES ('1951', '410700', '410701', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1952', '410700', '410702', '红旗区', null);
INSERT INTO `qj_area` VALUES ('1953', '410700', '410703', '卫滨区', null);
INSERT INTO `qj_area` VALUES ('1954', '410700', '410704', '凤泉区', null);
INSERT INTO `qj_area` VALUES ('1955', '410700', '410711', '牧野区', null);
INSERT INTO `qj_area` VALUES ('1956', '410700', '410721', '新乡县', null);
INSERT INTO `qj_area` VALUES ('1957', '410700', '410724', '获嘉县', null);
INSERT INTO `qj_area` VALUES ('1958', '410700', '410725', '原阳县', null);
INSERT INTO `qj_area` VALUES ('1959', '410700', '410726', '延津县', null);
INSERT INTO `qj_area` VALUES ('1960', '410700', '410727', '封丘县', null);
INSERT INTO `qj_area` VALUES ('1961', '410700', '410728', '长垣县', null);
INSERT INTO `qj_area` VALUES ('1962', '410700', '410781', '卫辉市', null);
INSERT INTO `qj_area` VALUES ('1963', '410700', '410782', '辉县市', null);
INSERT INTO `qj_area` VALUES ('1964', '410800', '410801', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1965', '410800', '410802', '解放区', null);
INSERT INTO `qj_area` VALUES ('1966', '410800', '410803', '中站区', null);
INSERT INTO `qj_area` VALUES ('1967', '410800', '410804', '马村区', null);
INSERT INTO `qj_area` VALUES ('1968', '410800', '410811', '山阳区', null);
INSERT INTO `qj_area` VALUES ('1969', '410800', '410821', '修武县', null);
INSERT INTO `qj_area` VALUES ('1970', '410800', '410822', '博爱县', null);
INSERT INTO `qj_area` VALUES ('1971', '410800', '410823', '武陟县', null);
INSERT INTO `qj_area` VALUES ('1972', '410800', '410825', '温　县', null);
INSERT INTO `qj_area` VALUES ('1973', '410800', '410881', '济源市', null);
INSERT INTO `qj_area` VALUES ('1974', '410800', '410882', '沁阳市', null);
INSERT INTO `qj_area` VALUES ('1975', '410800', '410883', '孟州市', null);
INSERT INTO `qj_area` VALUES ('1976', '410900', '410901', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1977', '410900', '410902', '华龙区', null);
INSERT INTO `qj_area` VALUES ('1978', '410900', '410922', '清丰县', null);
INSERT INTO `qj_area` VALUES ('1979', '410900', '410923', '南乐县', null);
INSERT INTO `qj_area` VALUES ('1980', '410900', '410926', '范　县', null);
INSERT INTO `qj_area` VALUES ('1981', '410900', '410927', '台前县', null);
INSERT INTO `qj_area` VALUES ('1982', '410900', '410928', '濮阳县', null);
INSERT INTO `qj_area` VALUES ('1983', '411000', '411001', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1984', '411000', '411002', '魏都区', null);
INSERT INTO `qj_area` VALUES ('1985', '411000', '411023', '许昌县', null);
INSERT INTO `qj_area` VALUES ('1986', '411000', '411024', '鄢陵县', null);
INSERT INTO `qj_area` VALUES ('1987', '411000', '411025', '襄城县', null);
INSERT INTO `qj_area` VALUES ('1988', '411000', '411081', '禹州市', null);
INSERT INTO `qj_area` VALUES ('1989', '411000', '411082', '长葛市', null);
INSERT INTO `qj_area` VALUES ('1990', '411100', '411101', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1991', '411100', '411102', '源汇区', null);
INSERT INTO `qj_area` VALUES ('1992', '411100', '411103', '郾城区', null);
INSERT INTO `qj_area` VALUES ('1993', '411100', '411104', '召陵区', null);
INSERT INTO `qj_area` VALUES ('1994', '411100', '411121', '舞阳县', null);
INSERT INTO `qj_area` VALUES ('1995', '411100', '411122', '临颍县', null);
INSERT INTO `qj_area` VALUES ('1996', '411200', '411201', '市辖区', null);
INSERT INTO `qj_area` VALUES ('1997', '411200', '411202', '湖滨区', null);
INSERT INTO `qj_area` VALUES ('1998', '411200', '411221', '渑池县', null);
INSERT INTO `qj_area` VALUES ('1999', '411200', '411222', '陕　县', null);
INSERT INTO `qj_area` VALUES ('2000', '411200', '411224', '卢氏县', null);
INSERT INTO `qj_area` VALUES ('2001', '411200', '411281', '义马市', null);
INSERT INTO `qj_area` VALUES ('2002', '411200', '411282', '灵宝市', null);
INSERT INTO `qj_area` VALUES ('2003', '411300', '411301', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2004', '411300', '411302', '宛城区', null);
INSERT INTO `qj_area` VALUES ('2005', '411300', '411303', '卧龙区', null);
INSERT INTO `qj_area` VALUES ('2006', '411300', '411321', '南召县', null);
INSERT INTO `qj_area` VALUES ('2007', '411300', '411322', '方城县', null);
INSERT INTO `qj_area` VALUES ('2008', '411300', '411323', '西峡县', null);
INSERT INTO `qj_area` VALUES ('2009', '411300', '411324', '镇平县', null);
INSERT INTO `qj_area` VALUES ('2010', '411300', '411325', '内乡县', null);
INSERT INTO `qj_area` VALUES ('2011', '411300', '411326', '淅川县', null);
INSERT INTO `qj_area` VALUES ('2012', '411300', '411327', '社旗县', null);
INSERT INTO `qj_area` VALUES ('2013', '411300', '411328', '唐河县', null);
INSERT INTO `qj_area` VALUES ('2014', '411300', '411329', '新野县', null);
INSERT INTO `qj_area` VALUES ('2015', '411300', '411330', '桐柏县', null);
INSERT INTO `qj_area` VALUES ('2016', '411300', '411381', '邓州市', null);
INSERT INTO `qj_area` VALUES ('2017', '411400', '411401', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2018', '411400', '411402', '梁园区', null);
INSERT INTO `qj_area` VALUES ('2019', '411400', '411403', '睢阳区', null);
INSERT INTO `qj_area` VALUES ('2020', '411400', '411421', '民权县', null);
INSERT INTO `qj_area` VALUES ('2021', '411400', '411422', '睢　县', null);
INSERT INTO `qj_area` VALUES ('2022', '411400', '411423', '宁陵县', null);
INSERT INTO `qj_area` VALUES ('2023', '411400', '411424', '柘城县', null);
INSERT INTO `qj_area` VALUES ('2024', '411400', '411425', '虞城县', null);
INSERT INTO `qj_area` VALUES ('2025', '411400', '411426', '夏邑县', null);
INSERT INTO `qj_area` VALUES ('2026', '411400', '411481', '永城市', null);
INSERT INTO `qj_area` VALUES ('2027', '411500', '411501', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2028', '411500', '411502', '师河区', null);
INSERT INTO `qj_area` VALUES ('2029', '411500', '411503', '平桥区', null);
INSERT INTO `qj_area` VALUES ('2030', '411500', '411521', '罗山县', null);
INSERT INTO `qj_area` VALUES ('2031', '411500', '411522', '光山县', null);
INSERT INTO `qj_area` VALUES ('2032', '411500', '411523', '新　县', null);
INSERT INTO `qj_area` VALUES ('2033', '411500', '411524', '商城县', null);
INSERT INTO `qj_area` VALUES ('2034', '411500', '411525', '固始县', null);
INSERT INTO `qj_area` VALUES ('2035', '411500', '411526', '潢川县', null);
INSERT INTO `qj_area` VALUES ('2036', '411500', '411527', '淮滨县', null);
INSERT INTO `qj_area` VALUES ('2037', '411500', '411528', '息　县', null);
INSERT INTO `qj_area` VALUES ('2038', '411600', '411601', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2039', '411600', '411602', '川汇区', null);
INSERT INTO `qj_area` VALUES ('2040', '411600', '411621', '扶沟县', null);
INSERT INTO `qj_area` VALUES ('2041', '411600', '411622', '西华县', null);
INSERT INTO `qj_area` VALUES ('2042', '411600', '411623', '商水县', null);
INSERT INTO `qj_area` VALUES ('2043', '411600', '411624', '沈丘县', null);
INSERT INTO `qj_area` VALUES ('2044', '411600', '411625', '郸城县', null);
INSERT INTO `qj_area` VALUES ('2045', '411600', '411626', '淮阳县', null);
INSERT INTO `qj_area` VALUES ('2046', '411600', '411627', '太康县', null);
INSERT INTO `qj_area` VALUES ('2047', '411600', '411628', '鹿邑县', null);
INSERT INTO `qj_area` VALUES ('2048', '411600', '411681', '项城市', null);
INSERT INTO `qj_area` VALUES ('2049', '411700', '411701', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2050', '411700', '411702', '驿城区', null);
INSERT INTO `qj_area` VALUES ('2051', '411700', '411721', '西平县', null);
INSERT INTO `qj_area` VALUES ('2052', '411700', '411722', '上蔡县', null);
INSERT INTO `qj_area` VALUES ('2053', '411700', '411723', '平舆县', null);
INSERT INTO `qj_area` VALUES ('2054', '411700', '411724', '正阳县', null);
INSERT INTO `qj_area` VALUES ('2055', '411700', '411725', '确山县', null);
INSERT INTO `qj_area` VALUES ('2056', '411700', '411726', '泌阳县', null);
INSERT INTO `qj_area` VALUES ('2057', '411700', '411727', '汝南县', null);
INSERT INTO `qj_area` VALUES ('2058', '411700', '411728', '遂平县', null);
INSERT INTO `qj_area` VALUES ('2059', '411700', '411729', '新蔡县', null);
INSERT INTO `qj_area` VALUES ('2060', '420100', '420101', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2061', '420100', '420102', '江岸区', null);
INSERT INTO `qj_area` VALUES ('2062', '420100', '420103', '江汉区', null);
INSERT INTO `qj_area` VALUES ('2063', '420100', '420104', '乔口区', null);
INSERT INTO `qj_area` VALUES ('2064', '420100', '420105', '汉阳区', null);
INSERT INTO `qj_area` VALUES ('2065', '420100', '420106', '武昌区', null);
INSERT INTO `qj_area` VALUES ('2066', '420100', '420107', '青山区', null);
INSERT INTO `qj_area` VALUES ('2067', '420100', '420111', '洪山区', null);
INSERT INTO `qj_area` VALUES ('2068', '420100', '420112', '东西湖区', null);
INSERT INTO `qj_area` VALUES ('2069', '420100', '420113', '汉南区', null);
INSERT INTO `qj_area` VALUES ('2070', '420100', '420114', '蔡甸区', null);
INSERT INTO `qj_area` VALUES ('2071', '420100', '420115', '江夏区', null);
INSERT INTO `qj_area` VALUES ('2072', '420100', '420116', '黄陂区', null);
INSERT INTO `qj_area` VALUES ('2073', '420100', '420117', '新洲区', null);
INSERT INTO `qj_area` VALUES ('2074', '420200', '420201', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2075', '420200', '420202', '黄石港区', null);
INSERT INTO `qj_area` VALUES ('2076', '420200', '420203', '西塞山区', null);
INSERT INTO `qj_area` VALUES ('2077', '420200', '420204', '下陆区', null);
INSERT INTO `qj_area` VALUES ('2078', '420200', '420205', '铁山区', null);
INSERT INTO `qj_area` VALUES ('2079', '420200', '420222', '阳新县', null);
INSERT INTO `qj_area` VALUES ('2080', '420200', '420281', '大冶市', null);
INSERT INTO `qj_area` VALUES ('2081', '420300', '420301', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2082', '420300', '420302', '茅箭区', null);
INSERT INTO `qj_area` VALUES ('2083', '420300', '420303', '张湾区', null);
INSERT INTO `qj_area` VALUES ('2084', '420300', '420321', '郧　县', null);
INSERT INTO `qj_area` VALUES ('2085', '420300', '420322', '郧西县', null);
INSERT INTO `qj_area` VALUES ('2086', '420300', '420323', '竹山县', null);
INSERT INTO `qj_area` VALUES ('2087', '420300', '420324', '竹溪县', null);
INSERT INTO `qj_area` VALUES ('2088', '420300', '420325', '房　县', null);
INSERT INTO `qj_area` VALUES ('2089', '420300', '420381', '丹江口市', null);
INSERT INTO `qj_area` VALUES ('2090', '420500', '420501', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2091', '420500', '420502', '西陵区', null);
INSERT INTO `qj_area` VALUES ('2092', '420500', '420503', '伍家岗区', null);
INSERT INTO `qj_area` VALUES ('2093', '420500', '420504', '点军区', null);
INSERT INTO `qj_area` VALUES ('2094', '420500', '420505', '猇亭区', null);
INSERT INTO `qj_area` VALUES ('2095', '420500', '420506', '夷陵区', null);
INSERT INTO `qj_area` VALUES ('2096', '420500', '420525', '远安县', null);
INSERT INTO `qj_area` VALUES ('2097', '420500', '420526', '兴山县', null);
INSERT INTO `qj_area` VALUES ('2098', '420500', '420527', '秭归县', null);
INSERT INTO `qj_area` VALUES ('2099', '420500', '420528', '长阳土家族自治县', null);
INSERT INTO `qj_area` VALUES ('2100', '420500', '420529', '五峰土家族自治县', null);
INSERT INTO `qj_area` VALUES ('2101', '420500', '420581', '宜都市', null);
INSERT INTO `qj_area` VALUES ('2102', '420500', '420582', '当阳市', null);
INSERT INTO `qj_area` VALUES ('2103', '420500', '420583', '枝江市', null);
INSERT INTO `qj_area` VALUES ('2104', '420600', '420601', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2105', '420600', '420602', '襄城区', null);
INSERT INTO `qj_area` VALUES ('2106', '420600', '420606', '樊城区', null);
INSERT INTO `qj_area` VALUES ('2107', '420600', '420607', '襄阳区', null);
INSERT INTO `qj_area` VALUES ('2108', '420600', '420624', '南漳县', null);
INSERT INTO `qj_area` VALUES ('2109', '420600', '420625', '谷城县', null);
INSERT INTO `qj_area` VALUES ('2110', '420600', '420626', '保康县', null);
INSERT INTO `qj_area` VALUES ('2111', '420600', '420682', '老河口市', null);
INSERT INTO `qj_area` VALUES ('2112', '420600', '420683', '枣阳市', null);
INSERT INTO `qj_area` VALUES ('2113', '420600', '420684', '宜城市', null);
INSERT INTO `qj_area` VALUES ('2114', '420700', '420701', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2115', '420700', '420702', '梁子湖区', null);
INSERT INTO `qj_area` VALUES ('2116', '420700', '420703', '华容区', null);
INSERT INTO `qj_area` VALUES ('2117', '420700', '420704', '鄂城区', null);
INSERT INTO `qj_area` VALUES ('2118', '420800', '420801', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2119', '420800', '420802', '东宝区', null);
INSERT INTO `qj_area` VALUES ('2120', '420800', '420804', '掇刀区', null);
INSERT INTO `qj_area` VALUES ('2121', '420800', '420821', '京山县', null);
INSERT INTO `qj_area` VALUES ('2122', '420800', '420822', '沙洋县', null);
INSERT INTO `qj_area` VALUES ('2123', '420800', '420881', '钟祥市', null);
INSERT INTO `qj_area` VALUES ('2124', '420900', '420901', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2125', '420900', '420902', '孝南区', null);
INSERT INTO `qj_area` VALUES ('2126', '420900', '420921', '孝昌县', null);
INSERT INTO `qj_area` VALUES ('2127', '420900', '420922', '大悟县', null);
INSERT INTO `qj_area` VALUES ('2128', '420900', '420923', '云梦县', null);
INSERT INTO `qj_area` VALUES ('2129', '420900', '420981', '应城市', null);
INSERT INTO `qj_area` VALUES ('2130', '420900', '420982', '安陆市', null);
INSERT INTO `qj_area` VALUES ('2131', '420900', '420984', '汉川市', null);
INSERT INTO `qj_area` VALUES ('2132', '421000', '421001', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2133', '421000', '421002', '沙市区', null);
INSERT INTO `qj_area` VALUES ('2134', '421000', '421003', '荆州区', null);
INSERT INTO `qj_area` VALUES ('2135', '421000', '421022', '公安县', null);
INSERT INTO `qj_area` VALUES ('2136', '421000', '421023', '监利县', null);
INSERT INTO `qj_area` VALUES ('2137', '421000', '421024', '江陵县', null);
INSERT INTO `qj_area` VALUES ('2138', '421000', '421081', '石首市', null);
INSERT INTO `qj_area` VALUES ('2139', '421000', '421083', '洪湖市', null);
INSERT INTO `qj_area` VALUES ('2140', '421000', '421087', '松滋市', null);
INSERT INTO `qj_area` VALUES ('2141', '421100', '421101', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2142', '421100', '421102', '黄州区', null);
INSERT INTO `qj_area` VALUES ('2143', '421100', '421121', '团风县', null);
INSERT INTO `qj_area` VALUES ('2144', '421100', '421122', '红安县', null);
INSERT INTO `qj_area` VALUES ('2145', '421100', '421123', '罗田县', null);
INSERT INTO `qj_area` VALUES ('2146', '421100', '421124', '英山县', null);
INSERT INTO `qj_area` VALUES ('2147', '421100', '421125', '浠水县', null);
INSERT INTO `qj_area` VALUES ('2148', '421100', '421126', '蕲春县', null);
INSERT INTO `qj_area` VALUES ('2149', '421100', '421127', '黄梅县', null);
INSERT INTO `qj_area` VALUES ('2150', '421100', '421181', '麻城市', null);
INSERT INTO `qj_area` VALUES ('2151', '421100', '421182', '武穴市', null);
INSERT INTO `qj_area` VALUES ('2152', '421200', '421201', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2153', '421200', '421202', '咸安区', null);
INSERT INTO `qj_area` VALUES ('2154', '421200', '421221', '嘉鱼县', null);
INSERT INTO `qj_area` VALUES ('2155', '421200', '421222', '通城县', null);
INSERT INTO `qj_area` VALUES ('2156', '421200', '421223', '崇阳县', null);
INSERT INTO `qj_area` VALUES ('2157', '421200', '421224', '通山县', null);
INSERT INTO `qj_area` VALUES ('2158', '421200', '421281', '赤壁市', null);
INSERT INTO `qj_area` VALUES ('2159', '421300', '421301', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2160', '421300', '421302', '曾都区', null);
INSERT INTO `qj_area` VALUES ('2161', '421300', '421381', '广水市', null);
INSERT INTO `qj_area` VALUES ('2162', '422800', '422801', '恩施市', null);
INSERT INTO `qj_area` VALUES ('2163', '422800', '422802', '利川市', null);
INSERT INTO `qj_area` VALUES ('2164', '422800', '422822', '建始县', null);
INSERT INTO `qj_area` VALUES ('2165', '422800', '422823', '巴东县', null);
INSERT INTO `qj_area` VALUES ('2166', '422800', '422825', '宣恩县', null);
INSERT INTO `qj_area` VALUES ('2167', '422800', '422826', '咸丰县', null);
INSERT INTO `qj_area` VALUES ('2168', '422800', '422827', '来凤县', null);
INSERT INTO `qj_area` VALUES ('2169', '422800', '422828', '鹤峰县', null);
INSERT INTO `qj_area` VALUES ('2170', '429000', '429004', '仙桃市', null);
INSERT INTO `qj_area` VALUES ('2171', '429000', '429005', '潜江市', null);
INSERT INTO `qj_area` VALUES ('2172', '429000', '429006', '天门市', null);
INSERT INTO `qj_area` VALUES ('2173', '429000', '429021', '神农架林区', null);
INSERT INTO `qj_area` VALUES ('2174', '430100', '430101', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2175', '430100', '430102', '芙蓉区', null);
INSERT INTO `qj_area` VALUES ('2176', '430100', '430103', '天心区', null);
INSERT INTO `qj_area` VALUES ('2177', '430100', '430104', '岳麓区', null);
INSERT INTO `qj_area` VALUES ('2178', '430100', '430105', '开福区', null);
INSERT INTO `qj_area` VALUES ('2179', '430100', '430111', '雨花区', null);
INSERT INTO `qj_area` VALUES ('2180', '430100', '430121', '长沙县', null);
INSERT INTO `qj_area` VALUES ('2181', '430100', '430122', '望城县', null);
INSERT INTO `qj_area` VALUES ('2182', '430100', '430124', '宁乡县', null);
INSERT INTO `qj_area` VALUES ('2183', '430100', '430181', '浏阳市', null);
INSERT INTO `qj_area` VALUES ('2184', '430200', '430201', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2185', '430200', '430202', '荷塘区', null);
INSERT INTO `qj_area` VALUES ('2186', '430200', '430203', '芦淞区', null);
INSERT INTO `qj_area` VALUES ('2187', '430200', '430204', '石峰区', null);
INSERT INTO `qj_area` VALUES ('2188', '430200', '430211', '天元区', null);
INSERT INTO `qj_area` VALUES ('2189', '430200', '430221', '株洲县', null);
INSERT INTO `qj_area` VALUES ('2190', '430200', '430223', '攸　县', null);
INSERT INTO `qj_area` VALUES ('2191', '430200', '430224', '茶陵县', null);
INSERT INTO `qj_area` VALUES ('2192', '430200', '430225', '炎陵县', null);
INSERT INTO `qj_area` VALUES ('2193', '430200', '430281', '醴陵市', null);
INSERT INTO `qj_area` VALUES ('2194', '430300', '430301', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2195', '430300', '430302', '雨湖区', null);
INSERT INTO `qj_area` VALUES ('2196', '430300', '430304', '岳塘区', null);
INSERT INTO `qj_area` VALUES ('2197', '430300', '430321', '湘潭县', null);
INSERT INTO `qj_area` VALUES ('2198', '430300', '430381', '湘乡市', null);
INSERT INTO `qj_area` VALUES ('2199', '430300', '430382', '韶山市', null);
INSERT INTO `qj_area` VALUES ('2200', '430400', '430401', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2201', '430400', '430405', '珠晖区', null);
INSERT INTO `qj_area` VALUES ('2202', '430400', '430406', '雁峰区', null);
INSERT INTO `qj_area` VALUES ('2203', '430400', '430407', '石鼓区', null);
INSERT INTO `qj_area` VALUES ('2204', '430400', '430408', '蒸湘区', null);
INSERT INTO `qj_area` VALUES ('2205', '430400', '430412', '南岳区', null);
INSERT INTO `qj_area` VALUES ('2206', '430400', '430421', '衡阳县', null);
INSERT INTO `qj_area` VALUES ('2207', '430400', '430422', '衡南县', null);
INSERT INTO `qj_area` VALUES ('2208', '430400', '430423', '衡山县', null);
INSERT INTO `qj_area` VALUES ('2209', '430400', '430424', '衡东县', null);
INSERT INTO `qj_area` VALUES ('2210', '430400', '430426', '祁东县', null);
INSERT INTO `qj_area` VALUES ('2211', '430400', '430481', '耒阳市', null);
INSERT INTO `qj_area` VALUES ('2212', '430400', '430482', '常宁市', null);
INSERT INTO `qj_area` VALUES ('2213', '430500', '430501', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2214', '430500', '430502', '双清区', null);
INSERT INTO `qj_area` VALUES ('2215', '430500', '430503', '大祥区', null);
INSERT INTO `qj_area` VALUES ('2216', '430500', '430511', '北塔区', null);
INSERT INTO `qj_area` VALUES ('2217', '430500', '430521', '邵东县', null);
INSERT INTO `qj_area` VALUES ('2218', '430500', '430522', '新邵县', null);
INSERT INTO `qj_area` VALUES ('2219', '430500', '430523', '邵阳县', null);
INSERT INTO `qj_area` VALUES ('2220', '430500', '430524', '隆回县', null);
INSERT INTO `qj_area` VALUES ('2221', '430500', '430525', '洞口县', null);
INSERT INTO `qj_area` VALUES ('2222', '430500', '430527', '绥宁县', null);
INSERT INTO `qj_area` VALUES ('2223', '430500', '430528', '新宁县', null);
INSERT INTO `qj_area` VALUES ('2224', '430500', '430529', '城步苗族自治县', null);
INSERT INTO `qj_area` VALUES ('2225', '430500', '430581', '武冈市', null);
INSERT INTO `qj_area` VALUES ('2226', '430600', '430601', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2227', '430600', '430602', '岳阳楼区', null);
INSERT INTO `qj_area` VALUES ('2228', '430600', '430603', '云溪区', null);
INSERT INTO `qj_area` VALUES ('2229', '430600', '430611', '君山区', null);
INSERT INTO `qj_area` VALUES ('2230', '430600', '430621', '岳阳县', null);
INSERT INTO `qj_area` VALUES ('2231', '430600', '430623', '华容县', null);
INSERT INTO `qj_area` VALUES ('2232', '430600', '430624', '湘阴县', null);
INSERT INTO `qj_area` VALUES ('2233', '430600', '430626', '平江县', null);
INSERT INTO `qj_area` VALUES ('2234', '430600', '430681', '汨罗市', null);
INSERT INTO `qj_area` VALUES ('2235', '430600', '430682', '临湘市', null);
INSERT INTO `qj_area` VALUES ('2236', '430700', '430701', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2237', '430700', '430702', '武陵区', null);
INSERT INTO `qj_area` VALUES ('2238', '430700', '430703', '鼎城区', null);
INSERT INTO `qj_area` VALUES ('2239', '430700', '430721', '安乡县', null);
INSERT INTO `qj_area` VALUES ('2240', '430700', '430722', '汉寿县', null);
INSERT INTO `qj_area` VALUES ('2241', '430700', '430723', '澧　县', null);
INSERT INTO `qj_area` VALUES ('2242', '430700', '430724', '临澧县', null);
INSERT INTO `qj_area` VALUES ('2243', '430700', '430725', '桃源县', null);
INSERT INTO `qj_area` VALUES ('2244', '430700', '430726', '石门县', null);
INSERT INTO `qj_area` VALUES ('2245', '430700', '430781', '津市市', null);
INSERT INTO `qj_area` VALUES ('2246', '430800', '430801', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2247', '430800', '430802', '永定区', null);
INSERT INTO `qj_area` VALUES ('2248', '430800', '430811', '武陵源区', null);
INSERT INTO `qj_area` VALUES ('2249', '430800', '430821', '慈利县', null);
INSERT INTO `qj_area` VALUES ('2250', '430800', '430822', '桑植县', null);
INSERT INTO `qj_area` VALUES ('2251', '430900', '430901', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2252', '430900', '430902', '资阳区', null);
INSERT INTO `qj_area` VALUES ('2253', '430900', '430903', '赫山区', null);
INSERT INTO `qj_area` VALUES ('2254', '430900', '430921', '南　县', null);
INSERT INTO `qj_area` VALUES ('2255', '430900', '430922', '桃江县', null);
INSERT INTO `qj_area` VALUES ('2256', '430900', '430923', '安化县', null);
INSERT INTO `qj_area` VALUES ('2257', '430900', '430981', '沅江市', null);
INSERT INTO `qj_area` VALUES ('2258', '431000', '431001', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2259', '431000', '431002', '北湖区', null);
INSERT INTO `qj_area` VALUES ('2260', '431000', '431003', '苏仙区', null);
INSERT INTO `qj_area` VALUES ('2261', '431000', '431021', '桂阳县', null);
INSERT INTO `qj_area` VALUES ('2262', '431000', '431022', '宜章县', null);
INSERT INTO `qj_area` VALUES ('2263', '431000', '431023', '永兴县', null);
INSERT INTO `qj_area` VALUES ('2264', '431000', '431024', '嘉禾县', null);
INSERT INTO `qj_area` VALUES ('2265', '431000', '431025', '临武县', null);
INSERT INTO `qj_area` VALUES ('2266', '431000', '431026', '汝城县', null);
INSERT INTO `qj_area` VALUES ('2267', '431000', '431027', '桂东县', null);
INSERT INTO `qj_area` VALUES ('2268', '431000', '431028', '安仁县', null);
INSERT INTO `qj_area` VALUES ('2269', '431000', '431081', '资兴市', null);
INSERT INTO `qj_area` VALUES ('2270', '431100', '431101', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2271', '431100', '431102', '芝山区', null);
INSERT INTO `qj_area` VALUES ('2272', '431100', '431103', '冷水滩区', null);
INSERT INTO `qj_area` VALUES ('2273', '431100', '431121', '祁阳县', null);
INSERT INTO `qj_area` VALUES ('2274', '431100', '431122', '东安县', null);
INSERT INTO `qj_area` VALUES ('2275', '431100', '431123', '双牌县', null);
INSERT INTO `qj_area` VALUES ('2276', '431100', '431124', '道　县', null);
INSERT INTO `qj_area` VALUES ('2277', '431100', '431125', '江永县', null);
INSERT INTO `qj_area` VALUES ('2278', '431100', '431126', '宁远县', null);
INSERT INTO `qj_area` VALUES ('2279', '431100', '431127', '蓝山县', null);
INSERT INTO `qj_area` VALUES ('2280', '431100', '431128', '新田县', null);
INSERT INTO `qj_area` VALUES ('2281', '431100', '431129', '江华瑶族自治县', null);
INSERT INTO `qj_area` VALUES ('2282', '431200', '431201', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2283', '431200', '431202', '鹤城区', null);
INSERT INTO `qj_area` VALUES ('2284', '431200', '431221', '中方县', null);
INSERT INTO `qj_area` VALUES ('2285', '431200', '431222', '沅陵县', null);
INSERT INTO `qj_area` VALUES ('2286', '431200', '431223', '辰溪县', null);
INSERT INTO `qj_area` VALUES ('2287', '431200', '431224', '溆浦县', null);
INSERT INTO `qj_area` VALUES ('2288', '431200', '431225', '会同县', null);
INSERT INTO `qj_area` VALUES ('2289', '431200', '431226', '麻阳苗族自治县', null);
INSERT INTO `qj_area` VALUES ('2290', '431200', '431227', '新晃侗族自治县', null);
INSERT INTO `qj_area` VALUES ('2291', '431200', '431228', '芷江侗族自治县', null);
INSERT INTO `qj_area` VALUES ('2292', '431200', '431229', '靖州苗族侗族自治县', null);
INSERT INTO `qj_area` VALUES ('2293', '431200', '431230', '通道侗族自治县', null);
INSERT INTO `qj_area` VALUES ('2294', '431200', '431281', '洪江市', null);
INSERT INTO `qj_area` VALUES ('2295', '431300', '431301', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2296', '431300', '431302', '娄星区', null);
INSERT INTO `qj_area` VALUES ('2297', '431300', '431321', '双峰县', null);
INSERT INTO `qj_area` VALUES ('2298', '431300', '431322', '新化县', null);
INSERT INTO `qj_area` VALUES ('2299', '431300', '431381', '冷水江市', null);
INSERT INTO `qj_area` VALUES ('2300', '431300', '431382', '涟源市', null);
INSERT INTO `qj_area` VALUES ('2301', '433100', '433101', '吉首市', null);
INSERT INTO `qj_area` VALUES ('2302', '433100', '433122', '泸溪县', null);
INSERT INTO `qj_area` VALUES ('2303', '433100', '433123', '凤凰县', null);
INSERT INTO `qj_area` VALUES ('2304', '433100', '433124', '花垣县', null);
INSERT INTO `qj_area` VALUES ('2305', '433100', '433125', '保靖县', null);
INSERT INTO `qj_area` VALUES ('2306', '433100', '433126', '古丈县', null);
INSERT INTO `qj_area` VALUES ('2307', '433100', '433127', '永顺县', null);
INSERT INTO `qj_area` VALUES ('2308', '433100', '433130', '龙山县', null);
INSERT INTO `qj_area` VALUES ('2309', '440100', '440101', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2310', '440100', '440102', '东山区', null);
INSERT INTO `qj_area` VALUES ('2311', '440100', '440103', '荔湾区', null);
INSERT INTO `qj_area` VALUES ('2312', '440100', '440104', '越秀区', null);
INSERT INTO `qj_area` VALUES ('2313', '440100', '440105', '海珠区', null);
INSERT INTO `qj_area` VALUES ('2314', '440100', '440106', '天河区', null);
INSERT INTO `qj_area` VALUES ('2315', '440100', '440107', '芳村区', null);
INSERT INTO `qj_area` VALUES ('2316', '440100', '440111', '白云区', null);
INSERT INTO `qj_area` VALUES ('2317', '440100', '440112', '黄埔区', null);
INSERT INTO `qj_area` VALUES ('2318', '440100', '440113', '番禺区', null);
INSERT INTO `qj_area` VALUES ('2319', '440100', '440114', '花都区', null);
INSERT INTO `qj_area` VALUES ('2320', '440100', '440183', '增城市', null);
INSERT INTO `qj_area` VALUES ('2321', '440100', '440184', '从化市', null);
INSERT INTO `qj_area` VALUES ('2322', '440200', '440201', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2323', '440200', '440203', '武江区', null);
INSERT INTO `qj_area` VALUES ('2324', '440200', '440204', '浈江区', null);
INSERT INTO `qj_area` VALUES ('2325', '440200', '440205', '曲江区', null);
INSERT INTO `qj_area` VALUES ('2326', '440200', '440222', '始兴县', null);
INSERT INTO `qj_area` VALUES ('2327', '440200', '440224', '仁化县', null);
INSERT INTO `qj_area` VALUES ('2328', '440200', '440229', '翁源县', null);
INSERT INTO `qj_area` VALUES ('2329', '440200', '440232', '乳源瑶族自治县', null);
INSERT INTO `qj_area` VALUES ('2330', '440200', '440233', '新丰县', null);
INSERT INTO `qj_area` VALUES ('2331', '440200', '440281', '乐昌市', null);
INSERT INTO `qj_area` VALUES ('2332', '440200', '440282', '南雄市', null);
INSERT INTO `qj_area` VALUES ('2333', '440300', '440301', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2334', '440300', '440303', '罗湖区', null);
INSERT INTO `qj_area` VALUES ('2335', '440300', '440304', '福田区', null);
INSERT INTO `qj_area` VALUES ('2336', '440300', '440305', '南山区', null);
INSERT INTO `qj_area` VALUES ('2337', '440300', '440306', '宝安区', null);
INSERT INTO `qj_area` VALUES ('2338', '440300', '440307', '龙岗区', null);
INSERT INTO `qj_area` VALUES ('2339', '440300', '440308', '盐田区', null);
INSERT INTO `qj_area` VALUES ('2340', '440400', '440401', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2341', '440400', '440402', '香洲区', null);
INSERT INTO `qj_area` VALUES ('2342', '440400', '440403', '斗门区', null);
INSERT INTO `qj_area` VALUES ('2343', '440400', '440404', '金湾区', null);
INSERT INTO `qj_area` VALUES ('2344', '440500', '440501', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2345', '440500', '440507', '龙湖区', null);
INSERT INTO `qj_area` VALUES ('2346', '440500', '440511', '金平区', null);
INSERT INTO `qj_area` VALUES ('2347', '440500', '440512', '濠江区', null);
INSERT INTO `qj_area` VALUES ('2348', '440500', '440513', '潮阳区', null);
INSERT INTO `qj_area` VALUES ('2349', '440500', '440514', '潮南区', null);
INSERT INTO `qj_area` VALUES ('2350', '440500', '440515', '澄海区', null);
INSERT INTO `qj_area` VALUES ('2351', '440500', '440523', '南澳县', null);
INSERT INTO `qj_area` VALUES ('2352', '440600', '440601', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2353', '440600', '440604', '禅城区', null);
INSERT INTO `qj_area` VALUES ('2354', '440600', '440605', '南海区', null);
INSERT INTO `qj_area` VALUES ('2355', '440600', '440606', '顺德区', null);
INSERT INTO `qj_area` VALUES ('2356', '440600', '440607', '三水区', null);
INSERT INTO `qj_area` VALUES ('2357', '440600', '440608', '高明区', null);
INSERT INTO `qj_area` VALUES ('2358', '440700', '440701', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2359', '440700', '440703', '蓬江区', null);
INSERT INTO `qj_area` VALUES ('2360', '440700', '440704', '江海区', null);
INSERT INTO `qj_area` VALUES ('2361', '440700', '440705', '新会区', null);
INSERT INTO `qj_area` VALUES ('2362', '440700', '440781', '台山市', null);
INSERT INTO `qj_area` VALUES ('2363', '440700', '440783', '开平市', null);
INSERT INTO `qj_area` VALUES ('2364', '440700', '440784', '鹤山市', null);
INSERT INTO `qj_area` VALUES ('2365', '440700', '440785', '恩平市', null);
INSERT INTO `qj_area` VALUES ('2366', '440800', '440801', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2367', '440800', '440802', '赤坎区', null);
INSERT INTO `qj_area` VALUES ('2368', '440800', '440803', '霞山区', null);
INSERT INTO `qj_area` VALUES ('2369', '440800', '440804', '坡头区', null);
INSERT INTO `qj_area` VALUES ('2370', '440800', '440811', '麻章区', null);
INSERT INTO `qj_area` VALUES ('2371', '440800', '440823', '遂溪县', null);
INSERT INTO `qj_area` VALUES ('2372', '440800', '440825', '徐闻县', null);
INSERT INTO `qj_area` VALUES ('2373', '440800', '440881', '廉江市', null);
INSERT INTO `qj_area` VALUES ('2374', '440800', '440882', '雷州市', null);
INSERT INTO `qj_area` VALUES ('2375', '440800', '440883', '吴川市', null);
INSERT INTO `qj_area` VALUES ('2376', '440900', '440901', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2377', '440900', '440902', '茂南区', null);
INSERT INTO `qj_area` VALUES ('2378', '440900', '440903', '茂港区', null);
INSERT INTO `qj_area` VALUES ('2379', '440900', '440923', '电白县', null);
INSERT INTO `qj_area` VALUES ('2380', '440900', '440981', '高州市', null);
INSERT INTO `qj_area` VALUES ('2381', '440900', '440982', '化州市', null);
INSERT INTO `qj_area` VALUES ('2382', '440900', '440983', '信宜市', null);
INSERT INTO `qj_area` VALUES ('2383', '441200', '441201', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2384', '441200', '441202', '端州区', null);
INSERT INTO `qj_area` VALUES ('2385', '441200', '441203', '鼎湖区', null);
INSERT INTO `qj_area` VALUES ('2386', '441200', '441223', '广宁县', null);
INSERT INTO `qj_area` VALUES ('2387', '441200', '441224', '怀集县', null);
INSERT INTO `qj_area` VALUES ('2388', '441200', '441225', '封开县', null);
INSERT INTO `qj_area` VALUES ('2389', '441200', '441226', '德庆县', null);
INSERT INTO `qj_area` VALUES ('2390', '441200', '441283', '高要市', null);
INSERT INTO `qj_area` VALUES ('2391', '441200', '441284', '四会市', null);
INSERT INTO `qj_area` VALUES ('2392', '441300', '441301', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2393', '441300', '441302', '惠城区', null);
INSERT INTO `qj_area` VALUES ('2394', '441300', '441303', '惠阳区', null);
INSERT INTO `qj_area` VALUES ('2395', '441300', '441322', '博罗县', null);
INSERT INTO `qj_area` VALUES ('2396', '441300', '441323', '惠东县', null);
INSERT INTO `qj_area` VALUES ('2397', '441300', '441324', '龙门县', null);
INSERT INTO `qj_area` VALUES ('2398', '441400', '441401', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2399', '441400', '441402', '梅江区', null);
INSERT INTO `qj_area` VALUES ('2400', '441400', '441421', '梅　县', null);
INSERT INTO `qj_area` VALUES ('2401', '441400', '441422', '大埔县', null);
INSERT INTO `qj_area` VALUES ('2402', '441400', '441423', '丰顺县', null);
INSERT INTO `qj_area` VALUES ('2403', '441400', '441424', '五华县', null);
INSERT INTO `qj_area` VALUES ('2404', '441400', '441426', '平远县', null);
INSERT INTO `qj_area` VALUES ('2405', '441400', '441427', '蕉岭县', null);
INSERT INTO `qj_area` VALUES ('2406', '441400', '441481', '兴宁市', null);
INSERT INTO `qj_area` VALUES ('2407', '441500', '441501', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2408', '441500', '441502', '城　区', null);
INSERT INTO `qj_area` VALUES ('2409', '441500', '441521', '海丰县', null);
INSERT INTO `qj_area` VALUES ('2410', '441500', '441523', '陆河县', null);
INSERT INTO `qj_area` VALUES ('2411', '441500', '441581', '陆丰市', null);
INSERT INTO `qj_area` VALUES ('2412', '441600', '441601', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2413', '441600', '441602', '源城区', null);
INSERT INTO `qj_area` VALUES ('2414', '441600', '441621', '紫金县', null);
INSERT INTO `qj_area` VALUES ('2415', '441600', '441622', '龙川县', null);
INSERT INTO `qj_area` VALUES ('2416', '441600', '441623', '连平县', null);
INSERT INTO `qj_area` VALUES ('2417', '441600', '441624', '和平县', null);
INSERT INTO `qj_area` VALUES ('2418', '441600', '441625', '东源县', null);
INSERT INTO `qj_area` VALUES ('2419', '441700', '441701', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2420', '441700', '441702', '江城区', null);
INSERT INTO `qj_area` VALUES ('2421', '441700', '441721', '阳西县', null);
INSERT INTO `qj_area` VALUES ('2422', '441700', '441723', '阳东县', null);
INSERT INTO `qj_area` VALUES ('2423', '441700', '441781', '阳春市', null);
INSERT INTO `qj_area` VALUES ('2424', '441800', '441801', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2425', '441800', '441802', '清城区', null);
INSERT INTO `qj_area` VALUES ('2426', '441800', '441821', '佛冈县', null);
INSERT INTO `qj_area` VALUES ('2427', '441800', '441823', '阳山县', null);
INSERT INTO `qj_area` VALUES ('2428', '441800', '441825', '连山壮族瑶族自治县', null);
INSERT INTO `qj_area` VALUES ('2429', '441800', '441826', '连南瑶族自治县', null);
INSERT INTO `qj_area` VALUES ('2430', '441800', '441827', '清新县', null);
INSERT INTO `qj_area` VALUES ('2431', '441800', '441881', '英德市', null);
INSERT INTO `qj_area` VALUES ('2432', '441800', '441882', '连州市', null);
INSERT INTO `qj_area` VALUES ('2433', '445100', '445101', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2434', '445100', '445102', '湘桥区', null);
INSERT INTO `qj_area` VALUES ('2435', '445100', '445121', '潮安县', null);
INSERT INTO `qj_area` VALUES ('2436', '445100', '445122', '饶平县', null);
INSERT INTO `qj_area` VALUES ('2437', '445200', '445201', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2438', '445200', '445202', '榕城区', null);
INSERT INTO `qj_area` VALUES ('2439', '445200', '445221', '揭东县', null);
INSERT INTO `qj_area` VALUES ('2440', '445200', '445222', '揭西县', null);
INSERT INTO `qj_area` VALUES ('2441', '445200', '445224', '惠来县', null);
INSERT INTO `qj_area` VALUES ('2442', '445200', '445281', '普宁市', null);
INSERT INTO `qj_area` VALUES ('2443', '445300', '445301', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2444', '445300', '445302', '云城区', null);
INSERT INTO `qj_area` VALUES ('2445', '445300', '445321', '新兴县', null);
INSERT INTO `qj_area` VALUES ('2446', '445300', '445322', '郁南县', null);
INSERT INTO `qj_area` VALUES ('2447', '445300', '445323', '云安县', null);
INSERT INTO `qj_area` VALUES ('2448', '445300', '445381', '罗定市', null);
INSERT INTO `qj_area` VALUES ('2449', '450100', '450101', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2450', '450100', '450102', '兴宁区', null);
INSERT INTO `qj_area` VALUES ('2451', '450100', '450103', '青秀区', null);
INSERT INTO `qj_area` VALUES ('2452', '450100', '450105', '江南区', null);
INSERT INTO `qj_area` VALUES ('2453', '450100', '450107', '西乡塘区', null);
INSERT INTO `qj_area` VALUES ('2454', '450100', '450108', '良庆区', null);
INSERT INTO `qj_area` VALUES ('2455', '450100', '450109', '邕宁区', null);
INSERT INTO `qj_area` VALUES ('2456', '450100', '450122', '武鸣县', null);
INSERT INTO `qj_area` VALUES ('2457', '450100', '450123', '隆安县', null);
INSERT INTO `qj_area` VALUES ('2458', '450100', '450124', '马山县', null);
INSERT INTO `qj_area` VALUES ('2459', '450100', '450125', '上林县', null);
INSERT INTO `qj_area` VALUES ('2460', '450100', '450126', '宾阳县', null);
INSERT INTO `qj_area` VALUES ('2461', '450100', '450127', '横　县', null);
INSERT INTO `qj_area` VALUES ('2462', '450200', '450201', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2463', '450200', '450202', '城中区', null);
INSERT INTO `qj_area` VALUES ('2464', '450200', '450203', '鱼峰区', null);
INSERT INTO `qj_area` VALUES ('2465', '450200', '450204', '柳南区', null);
INSERT INTO `qj_area` VALUES ('2466', '450200', '450205', '柳北区', null);
INSERT INTO `qj_area` VALUES ('2467', '450200', '450221', '柳江县', null);
INSERT INTO `qj_area` VALUES ('2468', '450200', '450222', '柳城县', null);
INSERT INTO `qj_area` VALUES ('2469', '450200', '450223', '鹿寨县', null);
INSERT INTO `qj_area` VALUES ('2470', '450200', '450224', '融安县', null);
INSERT INTO `qj_area` VALUES ('2471', '450200', '450225', '融水苗族自治县', null);
INSERT INTO `qj_area` VALUES ('2472', '450200', '450226', '三江侗族自治县', null);
INSERT INTO `qj_area` VALUES ('2473', '450300', '450301', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2474', '450300', '450302', '秀峰区', null);
INSERT INTO `qj_area` VALUES ('2475', '450300', '450303', '叠彩区', null);
INSERT INTO `qj_area` VALUES ('2476', '450300', '450304', '象山区', null);
INSERT INTO `qj_area` VALUES ('2477', '450300', '450305', '七星区', null);
INSERT INTO `qj_area` VALUES ('2478', '450300', '450311', '雁山区', null);
INSERT INTO `qj_area` VALUES ('2479', '450300', '450321', '阳朔县', null);
INSERT INTO `qj_area` VALUES ('2480', '450300', '450322', '临桂县', null);
INSERT INTO `qj_area` VALUES ('2481', '450300', '450323', '灵川县', null);
INSERT INTO `qj_area` VALUES ('2482', '450300', '450324', '全州县', null);
INSERT INTO `qj_area` VALUES ('2483', '450300', '450325', '兴安县', null);
INSERT INTO `qj_area` VALUES ('2484', '450300', '450326', '永福县', null);
INSERT INTO `qj_area` VALUES ('2485', '450300', '450327', '灌阳县', null);
INSERT INTO `qj_area` VALUES ('2486', '450300', '450328', '龙胜各族自治县', null);
INSERT INTO `qj_area` VALUES ('2487', '450300', '450329', '资源县', null);
INSERT INTO `qj_area` VALUES ('2488', '450300', '450330', '平乐县', null);
INSERT INTO `qj_area` VALUES ('2489', '450300', '450331', '荔蒲县', null);
INSERT INTO `qj_area` VALUES ('2490', '450300', '450332', '恭城瑶族自治县', null);
INSERT INTO `qj_area` VALUES ('2491', '450400', '450401', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2492', '450400', '450403', '万秀区', null);
INSERT INTO `qj_area` VALUES ('2493', '450400', '450404', '蝶山区', null);
INSERT INTO `qj_area` VALUES ('2494', '450400', '450405', '长洲区', null);
INSERT INTO `qj_area` VALUES ('2495', '450400', '450421', '苍梧县', null);
INSERT INTO `qj_area` VALUES ('2496', '450400', '450422', '藤　县', null);
INSERT INTO `qj_area` VALUES ('2497', '450400', '450423', '蒙山县', null);
INSERT INTO `qj_area` VALUES ('2498', '450400', '450481', '岑溪市', null);
INSERT INTO `qj_area` VALUES ('2499', '450500', '450501', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2500', '450500', '450502', '海城区', null);
INSERT INTO `qj_area` VALUES ('2501', '450500', '450503', '银海区', null);
INSERT INTO `qj_area` VALUES ('2502', '450500', '450512', '铁山港区', null);
INSERT INTO `qj_area` VALUES ('2503', '450500', '450521', '合浦县', null);
INSERT INTO `qj_area` VALUES ('2504', '450600', '450601', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2505', '450600', '450602', '港口区', null);
INSERT INTO `qj_area` VALUES ('2506', '450600', '450603', '防城区', null);
INSERT INTO `qj_area` VALUES ('2507', '450600', '450621', '上思县', null);
INSERT INTO `qj_area` VALUES ('2508', '450600', '450681', '东兴市', null);
INSERT INTO `qj_area` VALUES ('2509', '450700', '450701', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2510', '450700', '450702', '钦南区', null);
INSERT INTO `qj_area` VALUES ('2511', '450700', '450703', '钦北区', null);
INSERT INTO `qj_area` VALUES ('2512', '450700', '450721', '灵山县', null);
INSERT INTO `qj_area` VALUES ('2513', '450700', '450722', '浦北县', null);
INSERT INTO `qj_area` VALUES ('2514', '450800', '450801', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2515', '450800', '450802', '港北区', null);
INSERT INTO `qj_area` VALUES ('2516', '450800', '450803', '港南区', null);
INSERT INTO `qj_area` VALUES ('2517', '450800', '450804', '覃塘区', null);
INSERT INTO `qj_area` VALUES ('2518', '450800', '450821', '平南县', null);
INSERT INTO `qj_area` VALUES ('2519', '450800', '450881', '桂平市', null);
INSERT INTO `qj_area` VALUES ('2520', '450900', '450901', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2521', '450900', '450902', '玉州区', null);
INSERT INTO `qj_area` VALUES ('2522', '450900', '450921', '容　县', null);
INSERT INTO `qj_area` VALUES ('2523', '450900', '450922', '陆川县', null);
INSERT INTO `qj_area` VALUES ('2524', '450900', '450923', '博白县', null);
INSERT INTO `qj_area` VALUES ('2525', '450900', '450924', '兴业县', null);
INSERT INTO `qj_area` VALUES ('2526', '450900', '450981', '北流市', null);
INSERT INTO `qj_area` VALUES ('2527', '451000', '451001', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2528', '451000', '451002', '右江区', null);
INSERT INTO `qj_area` VALUES ('2529', '451000', '451021', '田阳县', null);
INSERT INTO `qj_area` VALUES ('2530', '451000', '451022', '田东县', null);
INSERT INTO `qj_area` VALUES ('2531', '451000', '451023', '平果县', null);
INSERT INTO `qj_area` VALUES ('2532', '451000', '451024', '德保县', null);
INSERT INTO `qj_area` VALUES ('2533', '451000', '451025', '靖西县', null);
INSERT INTO `qj_area` VALUES ('2534', '451000', '451026', '那坡县', null);
INSERT INTO `qj_area` VALUES ('2535', '451000', '451027', '凌云县', null);
INSERT INTO `qj_area` VALUES ('2536', '451000', '451028', '乐业县', null);
INSERT INTO `qj_area` VALUES ('2537', '451000', '451029', '田林县', null);
INSERT INTO `qj_area` VALUES ('2538', '451000', '451030', '西林县', null);
INSERT INTO `qj_area` VALUES ('2539', '451000', '451031', '隆林各族自治县', null);
INSERT INTO `qj_area` VALUES ('2540', '451100', '451101', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2541', '451100', '451102', '八步区', null);
INSERT INTO `qj_area` VALUES ('2542', '451100', '451121', '昭平县', null);
INSERT INTO `qj_area` VALUES ('2543', '451100', '451122', '钟山县', null);
INSERT INTO `qj_area` VALUES ('2544', '451100', '451123', '富川瑶族自治县', null);
INSERT INTO `qj_area` VALUES ('2545', '451200', '451201', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2546', '451200', '451202', '金城江区', null);
INSERT INTO `qj_area` VALUES ('2547', '451200', '451221', '南丹县', null);
INSERT INTO `qj_area` VALUES ('2548', '451200', '451222', '天峨县', null);
INSERT INTO `qj_area` VALUES ('2549', '451200', '451223', '凤山县', null);
INSERT INTO `qj_area` VALUES ('2550', '451200', '451224', '东兰县', null);
INSERT INTO `qj_area` VALUES ('2551', '451200', '451225', '罗城仫佬族自治县', null);
INSERT INTO `qj_area` VALUES ('2552', '451200', '451226', '环江毛南族自治县', null);
INSERT INTO `qj_area` VALUES ('2553', '451200', '451227', '巴马瑶族自治县', null);
INSERT INTO `qj_area` VALUES ('2554', '451200', '451228', '都安瑶族自治县', null);
INSERT INTO `qj_area` VALUES ('2555', '451200', '451229', '大化瑶族自治县', null);
INSERT INTO `qj_area` VALUES ('2556', '451200', '451281', '宜州市', null);
INSERT INTO `qj_area` VALUES ('2557', '451300', '451301', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2558', '451300', '451302', '兴宾区', null);
INSERT INTO `qj_area` VALUES ('2559', '451300', '451321', '忻城县', null);
INSERT INTO `qj_area` VALUES ('2560', '451300', '451322', '象州县', null);
INSERT INTO `qj_area` VALUES ('2561', '451300', '451323', '武宣县', null);
INSERT INTO `qj_area` VALUES ('2562', '451300', '451324', '金秀瑶族自治县', null);
INSERT INTO `qj_area` VALUES ('2563', '451300', '451381', '合山市', null);
INSERT INTO `qj_area` VALUES ('2564', '451400', '451401', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2565', '451400', '451402', '江洲区', null);
INSERT INTO `qj_area` VALUES ('2566', '451400', '451421', '扶绥县', null);
INSERT INTO `qj_area` VALUES ('2567', '451400', '451422', '宁明县', null);
INSERT INTO `qj_area` VALUES ('2568', '451400', '451423', '龙州县', null);
INSERT INTO `qj_area` VALUES ('2569', '451400', '451424', '大新县', null);
INSERT INTO `qj_area` VALUES ('2570', '451400', '451425', '天等县', null);
INSERT INTO `qj_area` VALUES ('2571', '451400', '451481', '凭祥市', null);
INSERT INTO `qj_area` VALUES ('2572', '460100', '460101', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2573', '460100', '460105', '秀英区', null);
INSERT INTO `qj_area` VALUES ('2574', '460100', '460106', '龙华区', null);
INSERT INTO `qj_area` VALUES ('2575', '460100', '460107', '琼山区', null);
INSERT INTO `qj_area` VALUES ('2576', '460100', '460108', '美兰区', null);
INSERT INTO `qj_area` VALUES ('2577', '460200', '460201', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2578', '469000', '469001', '五指山市', null);
INSERT INTO `qj_area` VALUES ('2579', '469000', '469002', '琼海市', null);
INSERT INTO `qj_area` VALUES ('2580', '469000', '469003', '儋州市', null);
INSERT INTO `qj_area` VALUES ('2581', '469000', '469005', '文昌市', null);
INSERT INTO `qj_area` VALUES ('2582', '469000', '469006', '万宁市', null);
INSERT INTO `qj_area` VALUES ('2583', '469000', '469007', '东方市', null);
INSERT INTO `qj_area` VALUES ('2584', '469000', '469025', '定安县', null);
INSERT INTO `qj_area` VALUES ('2585', '469000', '469026', '屯昌县', null);
INSERT INTO `qj_area` VALUES ('2586', '469000', '469027', '澄迈县', null);
INSERT INTO `qj_area` VALUES ('2587', '469000', '469028', '临高县', null);
INSERT INTO `qj_area` VALUES ('2588', '469000', '469030', '白沙黎族自治县', null);
INSERT INTO `qj_area` VALUES ('2589', '469000', '469031', '昌江黎族自治县', null);
INSERT INTO `qj_area` VALUES ('2590', '469000', '469033', '乐东黎族自治县', null);
INSERT INTO `qj_area` VALUES ('2591', '469000', '469034', '陵水黎族自治县', null);
INSERT INTO `qj_area` VALUES ('2592', '469000', '469035', '保亭黎族苗族自治县', null);
INSERT INTO `qj_area` VALUES ('2593', '469000', '469036', '琼中黎族苗族自治县', null);
INSERT INTO `qj_area` VALUES ('2594', '469000', '469037', '西沙群岛', null);
INSERT INTO `qj_area` VALUES ('2595', '469000', '469038', '南沙群岛', null);
INSERT INTO `qj_area` VALUES ('2596', '469000', '469039', '中沙群岛的岛礁及其海域', null);
INSERT INTO `qj_area` VALUES ('2597', '500100', '500101', '万州区', null);
INSERT INTO `qj_area` VALUES ('2598', '500100', '500102', '涪陵区', null);
INSERT INTO `qj_area` VALUES ('2599', '500100', '500103', '渝中区', null);
INSERT INTO `qj_area` VALUES ('2600', '500100', '500104', '大渡口区', null);
INSERT INTO `qj_area` VALUES ('2601', '500100', '500105', '江北区', null);
INSERT INTO `qj_area` VALUES ('2602', '500100', '500106', '沙坪坝区', null);
INSERT INTO `qj_area` VALUES ('2603', '500100', '500107', '九龙坡区', null);
INSERT INTO `qj_area` VALUES ('2604', '500100', '500108', '南岸区', null);
INSERT INTO `qj_area` VALUES ('2605', '500100', '500109', '北碚区', null);
INSERT INTO `qj_area` VALUES ('2606', '500100', '500110', '万盛区', null);
INSERT INTO `qj_area` VALUES ('2607', '500100', '500111', '双桥区', null);
INSERT INTO `qj_area` VALUES ('2608', '500100', '500112', '渝北区', null);
INSERT INTO `qj_area` VALUES ('2609', '500100', '500113', '巴南区', null);
INSERT INTO `qj_area` VALUES ('2610', '500100', '500114', '黔江区', null);
INSERT INTO `qj_area` VALUES ('2611', '500100', '500115', '长寿区', null);
INSERT INTO `qj_area` VALUES ('2612', '500200', '500222', '綦江县', null);
INSERT INTO `qj_area` VALUES ('2613', '500200', '500223', '潼南县', null);
INSERT INTO `qj_area` VALUES ('2614', '500200', '500224', '铜梁县', null);
INSERT INTO `qj_area` VALUES ('2615', '500200', '500225', '大足县', null);
INSERT INTO `qj_area` VALUES ('2616', '500200', '500226', '荣昌县', null);
INSERT INTO `qj_area` VALUES ('2617', '500200', '500227', '璧山县', null);
INSERT INTO `qj_area` VALUES ('2618', '500200', '500228', '梁平县', null);
INSERT INTO `qj_area` VALUES ('2619', '500200', '500229', '城口县', null);
INSERT INTO `qj_area` VALUES ('2620', '500200', '500230', '丰都县', null);
INSERT INTO `qj_area` VALUES ('2621', '500200', '500231', '垫江县', null);
INSERT INTO `qj_area` VALUES ('2622', '500200', '500232', '武隆县', null);
INSERT INTO `qj_area` VALUES ('2623', '500200', '500233', '忠　县', null);
INSERT INTO `qj_area` VALUES ('2624', '500200', '500234', '开　县', null);
INSERT INTO `qj_area` VALUES ('2625', '500200', '500235', '云阳县', null);
INSERT INTO `qj_area` VALUES ('2626', '500200', '500236', '奉节县', null);
INSERT INTO `qj_area` VALUES ('2627', '500200', '500237', '巫山县', null);
INSERT INTO `qj_area` VALUES ('2628', '500200', '500238', '巫溪县', null);
INSERT INTO `qj_area` VALUES ('2629', '500200', '500240', '石柱土家族自治县', null);
INSERT INTO `qj_area` VALUES ('2630', '500200', '500241', '秀山土家族苗族自治县', null);
INSERT INTO `qj_area` VALUES ('2631', '500200', '500242', '酉阳土家族苗族自治县', null);
INSERT INTO `qj_area` VALUES ('2632', '500200', '500243', '彭水苗族土家族自治县', null);
INSERT INTO `qj_area` VALUES ('2633', '500300', '500381', '江津市', null);
INSERT INTO `qj_area` VALUES ('2634', '500300', '500382', '合川市', null);
INSERT INTO `qj_area` VALUES ('2635', '500300', '500383', '永川市', null);
INSERT INTO `qj_area` VALUES ('2636', '500300', '500384', '南川市', null);
INSERT INTO `qj_area` VALUES ('2637', '510100', '510101', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2638', '510100', '510104', '锦江区', null);
INSERT INTO `qj_area` VALUES ('2639', '510100', '510105', '青羊区', null);
INSERT INTO `qj_area` VALUES ('2640', '510100', '510106', '金牛区', null);
INSERT INTO `qj_area` VALUES ('2641', '510100', '510107', '武侯区', null);
INSERT INTO `qj_area` VALUES ('2642', '510100', '510108', '成华区', null);
INSERT INTO `qj_area` VALUES ('2643', '510100', '510112', '龙泉驿区', null);
INSERT INTO `qj_area` VALUES ('2644', '510100', '510113', '青白江区', null);
INSERT INTO `qj_area` VALUES ('2645', '510100', '510114', '新都区', null);
INSERT INTO `qj_area` VALUES ('2646', '510100', '510115', '温江区', null);
INSERT INTO `qj_area` VALUES ('2647', '510100', '510121', '金堂县', null);
INSERT INTO `qj_area` VALUES ('2648', '510100', '510122', '双流县', null);
INSERT INTO `qj_area` VALUES ('2649', '510100', '510124', '郫　县', null);
INSERT INTO `qj_area` VALUES ('2650', '510100', '510129', '大邑县', null);
INSERT INTO `qj_area` VALUES ('2651', '510100', '510131', '蒲江县', null);
INSERT INTO `qj_area` VALUES ('2652', '510100', '510132', '新津县', null);
INSERT INTO `qj_area` VALUES ('2653', '510100', '510181', '都江堰市', null);
INSERT INTO `qj_area` VALUES ('2654', '510100', '510182', '彭州市', null);
INSERT INTO `qj_area` VALUES ('2655', '510100', '510183', '邛崃市', null);
INSERT INTO `qj_area` VALUES ('2656', '510100', '510184', '崇州市', null);
INSERT INTO `qj_area` VALUES ('2657', '510300', '510301', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2658', '510300', '510302', '自流井区', null);
INSERT INTO `qj_area` VALUES ('2659', '510300', '510303', '贡井区', null);
INSERT INTO `qj_area` VALUES ('2660', '510300', '510304', '大安区', null);
INSERT INTO `qj_area` VALUES ('2661', '510300', '510311', '沿滩区', null);
INSERT INTO `qj_area` VALUES ('2662', '510300', '510321', '荣　县', null);
INSERT INTO `qj_area` VALUES ('2663', '510300', '510322', '富顺县', null);
INSERT INTO `qj_area` VALUES ('2664', '510400', '510401', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2665', '510400', '510402', '东　区', null);
INSERT INTO `qj_area` VALUES ('2666', '510400', '510403', '西　区', null);
INSERT INTO `qj_area` VALUES ('2667', '510400', '510411', '仁和区', null);
INSERT INTO `qj_area` VALUES ('2668', '510400', '510421', '米易县', null);
INSERT INTO `qj_area` VALUES ('2669', '510400', '510422', '盐边县', null);
INSERT INTO `qj_area` VALUES ('2670', '510500', '510501', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2671', '510500', '510502', '江阳区', null);
INSERT INTO `qj_area` VALUES ('2672', '510500', '510503', '纳溪区', null);
INSERT INTO `qj_area` VALUES ('2673', '510500', '510504', '龙马潭区', null);
INSERT INTO `qj_area` VALUES ('2674', '510500', '510521', '泸　县', null);
INSERT INTO `qj_area` VALUES ('2675', '510500', '510522', '合江县', null);
INSERT INTO `qj_area` VALUES ('2676', '510500', '510524', '叙永县', null);
INSERT INTO `qj_area` VALUES ('2677', '510500', '510525', '古蔺县', null);
INSERT INTO `qj_area` VALUES ('2678', '510600', '510601', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2679', '510600', '510603', '旌阳区', null);
INSERT INTO `qj_area` VALUES ('2680', '510600', '510623', '中江县', null);
INSERT INTO `qj_area` VALUES ('2681', '510600', '510626', '罗江县', null);
INSERT INTO `qj_area` VALUES ('2682', '510600', '510681', '广汉市', null);
INSERT INTO `qj_area` VALUES ('2683', '510600', '510682', '什邡市', null);
INSERT INTO `qj_area` VALUES ('2684', '510600', '510683', '绵竹市', null);
INSERT INTO `qj_area` VALUES ('2685', '510700', '510701', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2686', '510700', '510703', '涪城区', null);
INSERT INTO `qj_area` VALUES ('2687', '510700', '510704', '游仙区', null);
INSERT INTO `qj_area` VALUES ('2688', '510700', '510722', '三台县', null);
INSERT INTO `qj_area` VALUES ('2689', '510700', '510723', '盐亭县', null);
INSERT INTO `qj_area` VALUES ('2690', '510700', '510724', '安　县', null);
INSERT INTO `qj_area` VALUES ('2691', '510700', '510725', '梓潼县', null);
INSERT INTO `qj_area` VALUES ('2692', '510700', '510726', '北川羌族自治县', null);
INSERT INTO `qj_area` VALUES ('2693', '510700', '510727', '平武县', null);
INSERT INTO `qj_area` VALUES ('2694', '510700', '510781', '江油市', null);
INSERT INTO `qj_area` VALUES ('2695', '510800', '510801', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2696', '510800', '510802', '市中区', null);
INSERT INTO `qj_area` VALUES ('2697', '510800', '510811', '元坝区', null);
INSERT INTO `qj_area` VALUES ('2698', '510800', '510812', '朝天区', null);
INSERT INTO `qj_area` VALUES ('2699', '510800', '510821', '旺苍县', null);
INSERT INTO `qj_area` VALUES ('2700', '510800', '510822', '青川县', null);
INSERT INTO `qj_area` VALUES ('2701', '510800', '510823', '剑阁县', null);
INSERT INTO `qj_area` VALUES ('2702', '510800', '510824', '苍溪县', null);
INSERT INTO `qj_area` VALUES ('2703', '510900', '510901', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2704', '510900', '510903', '船山区', null);
INSERT INTO `qj_area` VALUES ('2705', '510900', '510904', '安居区', null);
INSERT INTO `qj_area` VALUES ('2706', '510900', '510921', '蓬溪县', null);
INSERT INTO `qj_area` VALUES ('2707', '510900', '510922', '射洪县', null);
INSERT INTO `qj_area` VALUES ('2708', '510900', '510923', '大英县', null);
INSERT INTO `qj_area` VALUES ('2709', '511000', '511001', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2710', '511000', '511002', '市中区', null);
INSERT INTO `qj_area` VALUES ('2711', '511000', '511011', '东兴区', null);
INSERT INTO `qj_area` VALUES ('2712', '511000', '511024', '威远县', null);
INSERT INTO `qj_area` VALUES ('2713', '511000', '511025', '资中县', null);
INSERT INTO `qj_area` VALUES ('2714', '511000', '511028', '隆昌县', null);
INSERT INTO `qj_area` VALUES ('2715', '511100', '511101', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2716', '511100', '511102', '市中区', null);
INSERT INTO `qj_area` VALUES ('2717', '511100', '511111', '沙湾区', null);
INSERT INTO `qj_area` VALUES ('2718', '511100', '511112', '五通桥区', null);
INSERT INTO `qj_area` VALUES ('2719', '511100', '511113', '金口河区', null);
INSERT INTO `qj_area` VALUES ('2720', '511100', '511123', '犍为县', null);
INSERT INTO `qj_area` VALUES ('2721', '511100', '511124', '井研县', null);
INSERT INTO `qj_area` VALUES ('2722', '511100', '511126', '夹江县', null);
INSERT INTO `qj_area` VALUES ('2723', '511100', '511129', '沐川县', null);
INSERT INTO `qj_area` VALUES ('2724', '511100', '511132', '峨边彝族自治县', null);
INSERT INTO `qj_area` VALUES ('2725', '511100', '511133', '马边彝族自治县', null);
INSERT INTO `qj_area` VALUES ('2726', '511100', '511181', '峨眉山市', null);
INSERT INTO `qj_area` VALUES ('2727', '511300', '511301', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2728', '511300', '511302', '顺庆区', null);
INSERT INTO `qj_area` VALUES ('2729', '511300', '511303', '高坪区', null);
INSERT INTO `qj_area` VALUES ('2730', '511300', '511304', '嘉陵区', null);
INSERT INTO `qj_area` VALUES ('2731', '511300', '511321', '南部县', null);
INSERT INTO `qj_area` VALUES ('2732', '511300', '511322', '营山县', null);
INSERT INTO `qj_area` VALUES ('2733', '511300', '511323', '蓬安县', null);
INSERT INTO `qj_area` VALUES ('2734', '511300', '511324', '仪陇县', null);
INSERT INTO `qj_area` VALUES ('2735', '511300', '511325', '西充县', null);
INSERT INTO `qj_area` VALUES ('2736', '511300', '511381', '阆中市', null);
INSERT INTO `qj_area` VALUES ('2737', '511400', '511401', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2738', '511400', '511402', '东坡区', null);
INSERT INTO `qj_area` VALUES ('2739', '511400', '511421', '仁寿县', null);
INSERT INTO `qj_area` VALUES ('2740', '511400', '511422', '彭山县', null);
INSERT INTO `qj_area` VALUES ('2741', '511400', '511423', '洪雅县', null);
INSERT INTO `qj_area` VALUES ('2742', '511400', '511424', '丹棱县', null);
INSERT INTO `qj_area` VALUES ('2743', '511400', '511425', '青神县', null);
INSERT INTO `qj_area` VALUES ('2744', '511500', '511501', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2745', '511500', '511502', '翠屏区', null);
INSERT INTO `qj_area` VALUES ('2746', '511500', '511521', '宜宾县', null);
INSERT INTO `qj_area` VALUES ('2747', '511500', '511522', '南溪县', null);
INSERT INTO `qj_area` VALUES ('2748', '511500', '511523', '江安县', null);
INSERT INTO `qj_area` VALUES ('2749', '511500', '511524', '长宁县', null);
INSERT INTO `qj_area` VALUES ('2750', '511500', '511525', '高　县', null);
INSERT INTO `qj_area` VALUES ('2751', '511500', '511526', '珙　县', null);
INSERT INTO `qj_area` VALUES ('2752', '511500', '511527', '筠连县', null);
INSERT INTO `qj_area` VALUES ('2753', '511500', '511528', '兴文县', null);
INSERT INTO `qj_area` VALUES ('2754', '511500', '511529', '屏山县', null);
INSERT INTO `qj_area` VALUES ('2755', '511600', '511601', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2756', '511600', '511602', '广安区', null);
INSERT INTO `qj_area` VALUES ('2757', '511600', '511621', '岳池县', null);
INSERT INTO `qj_area` VALUES ('2758', '511600', '511622', '武胜县', null);
INSERT INTO `qj_area` VALUES ('2759', '511600', '511623', '邻水县', null);
INSERT INTO `qj_area` VALUES ('2760', '511600', '511681', '华莹市', null);
INSERT INTO `qj_area` VALUES ('2761', '511700', '511701', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2762', '511700', '511702', '通川区', null);
INSERT INTO `qj_area` VALUES ('2763', '511700', '511721', '达　县', null);
INSERT INTO `qj_area` VALUES ('2764', '511700', '511722', '宣汉县', null);
INSERT INTO `qj_area` VALUES ('2765', '511700', '511723', '开江县', null);
INSERT INTO `qj_area` VALUES ('2766', '511700', '511724', '大竹县', null);
INSERT INTO `qj_area` VALUES ('2767', '511700', '511725', '渠　县', null);
INSERT INTO `qj_area` VALUES ('2768', '511700', '511781', '万源市', null);
INSERT INTO `qj_area` VALUES ('2769', '511800', '511801', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2770', '511800', '511802', '雨城区', null);
INSERT INTO `qj_area` VALUES ('2771', '511800', '511821', '名山县', null);
INSERT INTO `qj_area` VALUES ('2772', '511800', '511822', '荥经县', null);
INSERT INTO `qj_area` VALUES ('2773', '511800', '511823', '汉源县', null);
INSERT INTO `qj_area` VALUES ('2774', '511800', '511824', '石棉县', null);
INSERT INTO `qj_area` VALUES ('2775', '511800', '511825', '天全县', null);
INSERT INTO `qj_area` VALUES ('2776', '511800', '511826', '芦山县', null);
INSERT INTO `qj_area` VALUES ('2777', '511800', '511827', '宝兴县', null);
INSERT INTO `qj_area` VALUES ('2778', '511900', '511901', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2779', '511900', '511902', '巴州区', null);
INSERT INTO `qj_area` VALUES ('2780', '511900', '511921', '通江县', null);
INSERT INTO `qj_area` VALUES ('2781', '511900', '511922', '南江县', null);
INSERT INTO `qj_area` VALUES ('2782', '511900', '511923', '平昌县', null);
INSERT INTO `qj_area` VALUES ('2783', '512000', '512001', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2784', '512000', '512002', '雁江区', null);
INSERT INTO `qj_area` VALUES ('2785', '512000', '512021', '安岳县', null);
INSERT INTO `qj_area` VALUES ('2786', '512000', '512022', '乐至县', null);
INSERT INTO `qj_area` VALUES ('2787', '512000', '512081', '简阳市', null);
INSERT INTO `qj_area` VALUES ('2788', '513200', '513221', '汶川县', null);
INSERT INTO `qj_area` VALUES ('2789', '513200', '513222', '理　县', null);
INSERT INTO `qj_area` VALUES ('2790', '513200', '513223', '茂　县', null);
INSERT INTO `qj_area` VALUES ('2791', '513200', '513224', '松潘县', null);
INSERT INTO `qj_area` VALUES ('2792', '513200', '513225', '九寨沟县', null);
INSERT INTO `qj_area` VALUES ('2793', '513200', '513226', '金川县', null);
INSERT INTO `qj_area` VALUES ('2794', '513200', '513227', '小金县', null);
INSERT INTO `qj_area` VALUES ('2795', '513200', '513228', '黑水县', null);
INSERT INTO `qj_area` VALUES ('2796', '513200', '513229', '马尔康县', null);
INSERT INTO `qj_area` VALUES ('2797', '513200', '513230', '壤塘县', null);
INSERT INTO `qj_area` VALUES ('2798', '513200', '513231', '阿坝县', null);
INSERT INTO `qj_area` VALUES ('2799', '513200', '513232', '若尔盖县', null);
INSERT INTO `qj_area` VALUES ('2800', '513200', '513233', '红原县', null);
INSERT INTO `qj_area` VALUES ('2801', '513300', '513321', '康定县', null);
INSERT INTO `qj_area` VALUES ('2802', '513300', '513322', '泸定县', null);
INSERT INTO `qj_area` VALUES ('2803', '513300', '513323', '丹巴县', null);
INSERT INTO `qj_area` VALUES ('2804', '513300', '513324', '九龙县', null);
INSERT INTO `qj_area` VALUES ('2805', '513300', '513325', '雅江县', null);
INSERT INTO `qj_area` VALUES ('2806', '513300', '513326', '道孚县', null);
INSERT INTO `qj_area` VALUES ('2807', '513300', '513327', '炉霍县', null);
INSERT INTO `qj_area` VALUES ('2808', '513300', '513328', '甘孜县', null);
INSERT INTO `qj_area` VALUES ('2809', '513300', '513329', '新龙县', null);
INSERT INTO `qj_area` VALUES ('2810', '513300', '513330', '德格县', null);
INSERT INTO `qj_area` VALUES ('2811', '513300', '513331', '白玉县', null);
INSERT INTO `qj_area` VALUES ('2812', '513300', '513332', '石渠县', null);
INSERT INTO `qj_area` VALUES ('2813', '513300', '513333', '色达县', null);
INSERT INTO `qj_area` VALUES ('2814', '513300', '513334', '理塘县', null);
INSERT INTO `qj_area` VALUES ('2815', '513300', '513335', '巴塘县', null);
INSERT INTO `qj_area` VALUES ('2816', '513300', '513336', '乡城县', null);
INSERT INTO `qj_area` VALUES ('2817', '513300', '513337', '稻城县', null);
INSERT INTO `qj_area` VALUES ('2818', '513300', '513338', '得荣县', null);
INSERT INTO `qj_area` VALUES ('2819', '513400', '513401', '西昌市', null);
INSERT INTO `qj_area` VALUES ('2820', '513400', '513422', '木里藏族自治县', null);
INSERT INTO `qj_area` VALUES ('2821', '513400', '513423', '盐源县', null);
INSERT INTO `qj_area` VALUES ('2822', '513400', '513424', '德昌县', null);
INSERT INTO `qj_area` VALUES ('2823', '513400', '513425', '会理县', null);
INSERT INTO `qj_area` VALUES ('2824', '513400', '513426', '会东县', null);
INSERT INTO `qj_area` VALUES ('2825', '513400', '513427', '宁南县', null);
INSERT INTO `qj_area` VALUES ('2826', '513400', '513428', '普格县', null);
INSERT INTO `qj_area` VALUES ('2827', '513400', '513429', '布拖县', null);
INSERT INTO `qj_area` VALUES ('2828', '513400', '513430', '金阳县', null);
INSERT INTO `qj_area` VALUES ('2829', '513400', '513431', '昭觉县', null);
INSERT INTO `qj_area` VALUES ('2830', '513400', '513432', '喜德县', null);
INSERT INTO `qj_area` VALUES ('2831', '513400', '513433', '冕宁县', null);
INSERT INTO `qj_area` VALUES ('2832', '513400', '513434', '越西县', null);
INSERT INTO `qj_area` VALUES ('2833', '513400', '513435', '甘洛县', null);
INSERT INTO `qj_area` VALUES ('2834', '513400', '513436', '美姑县', null);
INSERT INTO `qj_area` VALUES ('2835', '513400', '513437', '雷波县', null);
INSERT INTO `qj_area` VALUES ('2836', '520100', '520101', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2837', '520100', '520102', '南明区', null);
INSERT INTO `qj_area` VALUES ('2838', '520100', '520103', '云岩区', null);
INSERT INTO `qj_area` VALUES ('2839', '520100', '520111', '花溪区', null);
INSERT INTO `qj_area` VALUES ('2840', '520100', '520112', '乌当区', null);
INSERT INTO `qj_area` VALUES ('2841', '520100', '520113', '白云区', null);
INSERT INTO `qj_area` VALUES ('2842', '520100', '520114', '小河区', null);
INSERT INTO `qj_area` VALUES ('2843', '520100', '520121', '开阳县', null);
INSERT INTO `qj_area` VALUES ('2844', '520100', '520122', '息烽县', null);
INSERT INTO `qj_area` VALUES ('2845', '520100', '520123', '修文县', null);
INSERT INTO `qj_area` VALUES ('2846', '520100', '520181', '清镇市', null);
INSERT INTO `qj_area` VALUES ('2847', '520200', '520201', '钟山区', null);
INSERT INTO `qj_area` VALUES ('2848', '520200', '520203', '六枝特区', null);
INSERT INTO `qj_area` VALUES ('2849', '520200', '520221', '水城县', null);
INSERT INTO `qj_area` VALUES ('2850', '520200', '520222', '盘　县', null);
INSERT INTO `qj_area` VALUES ('2851', '520300', '520301', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2852', '520300', '520302', '红花岗区', null);
INSERT INTO `qj_area` VALUES ('2853', '520300', '520303', '汇川区', null);
INSERT INTO `qj_area` VALUES ('2854', '520300', '520321', '遵义县', null);
INSERT INTO `qj_area` VALUES ('2855', '520300', '520322', '桐梓县', null);
INSERT INTO `qj_area` VALUES ('2856', '520300', '520323', '绥阳县', null);
INSERT INTO `qj_area` VALUES ('2857', '520300', '520324', '正安县', null);
INSERT INTO `qj_area` VALUES ('2858', '520300', '520325', '道真仡佬族苗族自治县', null);
INSERT INTO `qj_area` VALUES ('2859', '520300', '520326', '务川仡佬族苗族自治县', null);
INSERT INTO `qj_area` VALUES ('2860', '520300', '520327', '凤冈县', null);
INSERT INTO `qj_area` VALUES ('2861', '520300', '520328', '湄潭县', null);
INSERT INTO `qj_area` VALUES ('2862', '520300', '520329', '余庆县', null);
INSERT INTO `qj_area` VALUES ('2863', '520300', '520330', '习水县', null);
INSERT INTO `qj_area` VALUES ('2864', '520300', '520381', '赤水市', null);
INSERT INTO `qj_area` VALUES ('2865', '520300', '520382', '仁怀市', null);
INSERT INTO `qj_area` VALUES ('2866', '520400', '520401', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2867', '520400', '520402', '西秀区', null);
INSERT INTO `qj_area` VALUES ('2868', '520400', '520421', '平坝县', null);
INSERT INTO `qj_area` VALUES ('2869', '520400', '520422', '普定县', null);
INSERT INTO `qj_area` VALUES ('2870', '520400', '520423', '镇宁布依族苗族自治县', null);
INSERT INTO `qj_area` VALUES ('2871', '520400', '520424', '关岭布依族苗族自治县', null);
INSERT INTO `qj_area` VALUES ('2872', '520400', '520425', '紫云苗族布依族自治县', null);
INSERT INTO `qj_area` VALUES ('2873', '522200', '522201', '铜仁市', null);
INSERT INTO `qj_area` VALUES ('2874', '522200', '522222', '江口县', null);
INSERT INTO `qj_area` VALUES ('2875', '522200', '522223', '玉屏侗族自治县', null);
INSERT INTO `qj_area` VALUES ('2876', '522200', '522224', '石阡县', null);
INSERT INTO `qj_area` VALUES ('2877', '522200', '522225', '思南县', null);
INSERT INTO `qj_area` VALUES ('2878', '522200', '522226', '印江土家族苗族自治县', null);
INSERT INTO `qj_area` VALUES ('2879', '522200', '522227', '德江县', null);
INSERT INTO `qj_area` VALUES ('2880', '522200', '522228', '沿河土家族自治县', null);
INSERT INTO `qj_area` VALUES ('2881', '522200', '522229', '松桃苗族自治县', null);
INSERT INTO `qj_area` VALUES ('2882', '522200', '522230', '万山特区', null);
INSERT INTO `qj_area` VALUES ('2883', '522300', '522301', '兴义市', null);
INSERT INTO `qj_area` VALUES ('2884', '522300', '522322', '兴仁县', null);
INSERT INTO `qj_area` VALUES ('2885', '522300', '522323', '普安县', null);
INSERT INTO `qj_area` VALUES ('2886', '522300', '522324', '晴隆县', null);
INSERT INTO `qj_area` VALUES ('2887', '522300', '522325', '贞丰县', null);
INSERT INTO `qj_area` VALUES ('2888', '522300', '522326', '望谟县', null);
INSERT INTO `qj_area` VALUES ('2889', '522300', '522327', '册亨县', null);
INSERT INTO `qj_area` VALUES ('2890', '522300', '522328', '安龙县', null);
INSERT INTO `qj_area` VALUES ('2891', '522400', '522401', '毕节市', null);
INSERT INTO `qj_area` VALUES ('2892', '522400', '522422', '大方县', null);
INSERT INTO `qj_area` VALUES ('2893', '522400', '522423', '黔西县', null);
INSERT INTO `qj_area` VALUES ('2894', '522400', '522424', '金沙县', null);
INSERT INTO `qj_area` VALUES ('2895', '522400', '522425', '织金县', null);
INSERT INTO `qj_area` VALUES ('2896', '522400', '522426', '纳雍县', null);
INSERT INTO `qj_area` VALUES ('2897', '522400', '522427', '威宁彝族回族苗族自治县', null);
INSERT INTO `qj_area` VALUES ('2898', '522400', '522428', '赫章县', null);
INSERT INTO `qj_area` VALUES ('2899', '522600', '522601', '凯里市', null);
INSERT INTO `qj_area` VALUES ('2900', '522600', '522622', '黄平县', null);
INSERT INTO `qj_area` VALUES ('2901', '522600', '522623', '施秉县', null);
INSERT INTO `qj_area` VALUES ('2902', '522600', '522624', '三穗县', null);
INSERT INTO `qj_area` VALUES ('2903', '522600', '522625', '镇远县', null);
INSERT INTO `qj_area` VALUES ('2904', '522600', '522626', '岑巩县', null);
INSERT INTO `qj_area` VALUES ('2905', '522600', '522627', '天柱县', null);
INSERT INTO `qj_area` VALUES ('2906', '522600', '522628', '锦屏县', null);
INSERT INTO `qj_area` VALUES ('2907', '522600', '522629', '剑河县', null);
INSERT INTO `qj_area` VALUES ('2908', '522600', '522630', '台江县', null);
INSERT INTO `qj_area` VALUES ('2909', '522600', '522631', '黎平县', null);
INSERT INTO `qj_area` VALUES ('2910', '522600', '522632', '榕江县', null);
INSERT INTO `qj_area` VALUES ('2911', '522600', '522633', '从江县', null);
INSERT INTO `qj_area` VALUES ('2912', '522600', '522634', '雷山县', null);
INSERT INTO `qj_area` VALUES ('2913', '522600', '522635', '麻江县', null);
INSERT INTO `qj_area` VALUES ('2914', '522600', '522636', '丹寨县', null);
INSERT INTO `qj_area` VALUES ('2915', '522700', '522701', '都匀市', null);
INSERT INTO `qj_area` VALUES ('2916', '522700', '522702', '福泉市', null);
INSERT INTO `qj_area` VALUES ('2917', '522700', '522722', '荔波县', null);
INSERT INTO `qj_area` VALUES ('2918', '522700', '522723', '贵定县', null);
INSERT INTO `qj_area` VALUES ('2919', '522700', '522725', '瓮安县', null);
INSERT INTO `qj_area` VALUES ('2920', '522700', '522726', '独山县', null);
INSERT INTO `qj_area` VALUES ('2921', '522700', '522727', '平塘县', null);
INSERT INTO `qj_area` VALUES ('2922', '522700', '522728', '罗甸县', null);
INSERT INTO `qj_area` VALUES ('2923', '522700', '522729', '长顺县', null);
INSERT INTO `qj_area` VALUES ('2924', '522700', '522730', '龙里县', null);
INSERT INTO `qj_area` VALUES ('2925', '522700', '522731', '惠水县', null);
INSERT INTO `qj_area` VALUES ('2926', '522700', '522732', '三都水族自治县', null);
INSERT INTO `qj_area` VALUES ('2927', '530100', '530101', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2928', '530100', '530102', '五华区', null);
INSERT INTO `qj_area` VALUES ('2929', '530100', '530103', '盘龙区', null);
INSERT INTO `qj_area` VALUES ('2930', '530100', '530111', '官渡区', null);
INSERT INTO `qj_area` VALUES ('2931', '530100', '530112', '西山区', null);
INSERT INTO `qj_area` VALUES ('2932', '530100', '530113', '东川区', null);
INSERT INTO `qj_area` VALUES ('2933', '530100', '530121', '呈贡县', null);
INSERT INTO `qj_area` VALUES ('2934', '530100', '530122', '晋宁县', null);
INSERT INTO `qj_area` VALUES ('2935', '530100', '530124', '富民县', null);
INSERT INTO `qj_area` VALUES ('2936', '530100', '530125', '宜良县', null);
INSERT INTO `qj_area` VALUES ('2937', '530100', '530126', '石林彝族自治县', null);
INSERT INTO `qj_area` VALUES ('2938', '530100', '530127', '嵩明县', null);
INSERT INTO `qj_area` VALUES ('2939', '530100', '530128', '禄劝彝族苗族自治县', null);
INSERT INTO `qj_area` VALUES ('2940', '530100', '530129', '寻甸回族彝族自治县', null);
INSERT INTO `qj_area` VALUES ('2941', '530100', '530181', '安宁市', null);
INSERT INTO `qj_area` VALUES ('2942', '530300', '530301', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2943', '530300', '530302', '麒麟区', null);
INSERT INTO `qj_area` VALUES ('2944', '530300', '530321', '马龙县', null);
INSERT INTO `qj_area` VALUES ('2945', '530300', '530322', '陆良县', null);
INSERT INTO `qj_area` VALUES ('2946', '530300', '530323', '师宗县', null);
INSERT INTO `qj_area` VALUES ('2947', '530300', '530324', '罗平县', null);
INSERT INTO `qj_area` VALUES ('2948', '530300', '530325', '富源县', null);
INSERT INTO `qj_area` VALUES ('2949', '530300', '530326', '会泽县', null);
INSERT INTO `qj_area` VALUES ('2950', '530300', '530328', '沾益县', null);
INSERT INTO `qj_area` VALUES ('2951', '530300', '530381', '宣威市', null);
INSERT INTO `qj_area` VALUES ('2952', '530400', '530401', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2953', '530400', '530402', '红塔区', null);
INSERT INTO `qj_area` VALUES ('2954', '530400', '530421', '江川县', null);
INSERT INTO `qj_area` VALUES ('2955', '530400', '530422', '澄江县', null);
INSERT INTO `qj_area` VALUES ('2956', '530400', '530423', '通海县', null);
INSERT INTO `qj_area` VALUES ('2957', '530400', '530424', '华宁县', null);
INSERT INTO `qj_area` VALUES ('2958', '530400', '530425', '易门县', null);
INSERT INTO `qj_area` VALUES ('2959', '530400', '530426', '峨山彝族自治县', null);
INSERT INTO `qj_area` VALUES ('2960', '530400', '530427', '新平彝族傣族自治县', null);
INSERT INTO `qj_area` VALUES ('2961', '530400', '530428', '元江哈尼族彝族傣族自治县', null);
INSERT INTO `qj_area` VALUES ('2962', '530500', '530501', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2963', '530500', '530502', '隆阳区', null);
INSERT INTO `qj_area` VALUES ('2964', '530500', '530521', '施甸县', null);
INSERT INTO `qj_area` VALUES ('2965', '530500', '530522', '腾冲县', null);
INSERT INTO `qj_area` VALUES ('2966', '530500', '530523', '龙陵县', null);
INSERT INTO `qj_area` VALUES ('2967', '530500', '530524', '昌宁县', null);
INSERT INTO `qj_area` VALUES ('2968', '530600', '530601', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2969', '530600', '530602', '昭阳区', null);
INSERT INTO `qj_area` VALUES ('2970', '530600', '530621', '鲁甸县', null);
INSERT INTO `qj_area` VALUES ('2971', '530600', '530622', '巧家县', null);
INSERT INTO `qj_area` VALUES ('2972', '530600', '530623', '盐津县', null);
INSERT INTO `qj_area` VALUES ('2973', '530600', '530624', '大关县', null);
INSERT INTO `qj_area` VALUES ('2974', '530600', '530625', '永善县', null);
INSERT INTO `qj_area` VALUES ('2975', '530600', '530626', '绥江县', null);
INSERT INTO `qj_area` VALUES ('2976', '530600', '530627', '镇雄县', null);
INSERT INTO `qj_area` VALUES ('2977', '530600', '530628', '彝良县', null);
INSERT INTO `qj_area` VALUES ('2978', '530600', '530629', '威信县', null);
INSERT INTO `qj_area` VALUES ('2979', '530600', '530630', '水富县', null);
INSERT INTO `qj_area` VALUES ('2980', '530700', '530701', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2981', '530700', '530702', '古城区', null);
INSERT INTO `qj_area` VALUES ('2982', '530700', '530721', '玉龙纳西族自治县', null);
INSERT INTO `qj_area` VALUES ('2983', '530700', '530722', '永胜县', null);
INSERT INTO `qj_area` VALUES ('2984', '530700', '530723', '华坪县', null);
INSERT INTO `qj_area` VALUES ('2985', '530700', '530724', '宁蒗彝族自治县', null);
INSERT INTO `qj_area` VALUES ('2986', '530800', '530801', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2987', '530800', '530802', '翠云区', null);
INSERT INTO `qj_area` VALUES ('2988', '530800', '530821', '普洱哈尼族彝族自治县', null);
INSERT INTO `qj_area` VALUES ('2989', '530800', '530822', '墨江哈尼族自治县', null);
INSERT INTO `qj_area` VALUES ('2990', '530800', '530823', '景东彝族自治县', null);
INSERT INTO `qj_area` VALUES ('2991', '530800', '530824', '景谷傣族彝族自治县', null);
INSERT INTO `qj_area` VALUES ('2992', '530800', '530825', '镇沅彝族哈尼族拉祜族自治县', null);
INSERT INTO `qj_area` VALUES ('2993', '530800', '530826', '江城哈尼族彝族自治县', null);
INSERT INTO `qj_area` VALUES ('2994', '530800', '530827', '孟连傣族拉祜族佤族自治县', null);
INSERT INTO `qj_area` VALUES ('2995', '530800', '530828', '澜沧拉祜族自治县', null);
INSERT INTO `qj_area` VALUES ('2996', '530800', '530829', '西盟佤族自治县', null);
INSERT INTO `qj_area` VALUES ('2997', '530900', '530901', '市辖区', null);
INSERT INTO `qj_area` VALUES ('2998', '530900', '530902', '临翔区', null);
INSERT INTO `qj_area` VALUES ('2999', '530900', '530921', '凤庆县', null);
INSERT INTO `qj_area` VALUES ('3000', '530900', '530922', '云　县', null);
INSERT INTO `qj_area` VALUES ('3001', '530900', '530923', '永德县', null);
INSERT INTO `qj_area` VALUES ('3002', '530900', '530924', '镇康县', null);
INSERT INTO `qj_area` VALUES ('3003', '530900', '530925', '双江拉祜族佤族布朗族傣族自治县', null);
INSERT INTO `qj_area` VALUES ('3004', '530900', '530926', '耿马傣族佤族自治县', null);
INSERT INTO `qj_area` VALUES ('3005', '530900', '530927', '沧源佤族自治县', null);
INSERT INTO `qj_area` VALUES ('3006', '532300', '532301', '楚雄市', null);
INSERT INTO `qj_area` VALUES ('3007', '532300', '532322', '双柏县', null);
INSERT INTO `qj_area` VALUES ('3008', '532300', '532323', '牟定县', null);
INSERT INTO `qj_area` VALUES ('3009', '532300', '532324', '南华县', null);
INSERT INTO `qj_area` VALUES ('3010', '532300', '532325', '姚安县', null);
INSERT INTO `qj_area` VALUES ('3011', '532300', '532326', '大姚县', null);
INSERT INTO `qj_area` VALUES ('3012', '532300', '532327', '永仁县', null);
INSERT INTO `qj_area` VALUES ('3013', '532300', '532328', '元谋县', null);
INSERT INTO `qj_area` VALUES ('3014', '532300', '532329', '武定县', null);
INSERT INTO `qj_area` VALUES ('3015', '532300', '532331', '禄丰县', null);
INSERT INTO `qj_area` VALUES ('3016', '532500', '532501', '个旧市', null);
INSERT INTO `qj_area` VALUES ('3017', '532500', '532502', '开远市', null);
INSERT INTO `qj_area` VALUES ('3018', '532500', '532522', '蒙自县', null);
INSERT INTO `qj_area` VALUES ('3019', '532500', '532523', '屏边苗族自治县', null);
INSERT INTO `qj_area` VALUES ('3020', '532500', '532524', '建水县', null);
INSERT INTO `qj_area` VALUES ('3021', '532500', '532525', '石屏县', null);
INSERT INTO `qj_area` VALUES ('3022', '532500', '532526', '弥勒县', null);
INSERT INTO `qj_area` VALUES ('3023', '532500', '532527', '泸西县', null);
INSERT INTO `qj_area` VALUES ('3024', '532500', '532528', '元阳县', null);
INSERT INTO `qj_area` VALUES ('3025', '532500', '532529', '红河县', null);
INSERT INTO `qj_area` VALUES ('3026', '532500', '532530', '金平苗族瑶族傣族自治县', null);
INSERT INTO `qj_area` VALUES ('3027', '532500', '532531', '绿春县', null);
INSERT INTO `qj_area` VALUES ('3028', '532500', '532532', '河口瑶族自治县', null);
INSERT INTO `qj_area` VALUES ('3029', '532600', '532621', '文山县', null);
INSERT INTO `qj_area` VALUES ('3030', '532600', '532622', '砚山县', null);
INSERT INTO `qj_area` VALUES ('3031', '532600', '532623', '西畴县', null);
INSERT INTO `qj_area` VALUES ('3032', '532600', '532624', '麻栗坡县', null);
INSERT INTO `qj_area` VALUES ('3033', '532600', '532625', '马关县', null);
INSERT INTO `qj_area` VALUES ('3034', '532600', '532626', '丘北县', null);
INSERT INTO `qj_area` VALUES ('3035', '532600', '532627', '广南县', null);
INSERT INTO `qj_area` VALUES ('3036', '532600', '532628', '富宁县', null);
INSERT INTO `qj_area` VALUES ('3037', '532800', '532801', '景洪市', null);
INSERT INTO `qj_area` VALUES ('3038', '532800', '532822', '勐海县', null);
INSERT INTO `qj_area` VALUES ('3039', '532800', '532823', '勐腊县', null);
INSERT INTO `qj_area` VALUES ('3040', '532900', '532901', '大理市', null);
INSERT INTO `qj_area` VALUES ('3041', '532900', '532922', '漾濞彝族自治县', null);
INSERT INTO `qj_area` VALUES ('3042', '532900', '532923', '祥云县', null);
INSERT INTO `qj_area` VALUES ('3043', '532900', '532924', '宾川县', null);
INSERT INTO `qj_area` VALUES ('3044', '532900', '532925', '弥渡县', null);
INSERT INTO `qj_area` VALUES ('3045', '532900', '532926', '南涧彝族自治县', null);
INSERT INTO `qj_area` VALUES ('3046', '532900', '532927', '巍山彝族回族自治县', null);
INSERT INTO `qj_area` VALUES ('3047', '532900', '532928', '永平县', null);
INSERT INTO `qj_area` VALUES ('3048', '532900', '532929', '云龙县', null);
INSERT INTO `qj_area` VALUES ('3049', '532900', '532930', '洱源县', null);
INSERT INTO `qj_area` VALUES ('3050', '532900', '532931', '剑川县', null);
INSERT INTO `qj_area` VALUES ('3051', '532900', '532932', '鹤庆县', null);
INSERT INTO `qj_area` VALUES ('3052', '533100', '533102', '瑞丽市', null);
INSERT INTO `qj_area` VALUES ('3053', '533100', '533103', '潞西市', null);
INSERT INTO `qj_area` VALUES ('3054', '533100', '533122', '梁河县', null);
INSERT INTO `qj_area` VALUES ('3055', '533100', '533123', '盈江县', null);
INSERT INTO `qj_area` VALUES ('3056', '533100', '533124', '陇川县', null);
INSERT INTO `qj_area` VALUES ('3057', '533300', '533321', '泸水县', null);
INSERT INTO `qj_area` VALUES ('3058', '533300', '533323', '福贡县', null);
INSERT INTO `qj_area` VALUES ('3059', '533300', '533324', '贡山独龙族怒族自治县', null);
INSERT INTO `qj_area` VALUES ('3060', '533300', '533325', '兰坪白族普米族自治县', null);
INSERT INTO `qj_area` VALUES ('3061', '533400', '533421', '香格里拉县', null);
INSERT INTO `qj_area` VALUES ('3062', '533400', '533422', '德钦县', null);
INSERT INTO `qj_area` VALUES ('3063', '533400', '533423', '维西傈僳族自治县', null);
INSERT INTO `qj_area` VALUES ('3064', '540100', '540101', '市辖区', null);
INSERT INTO `qj_area` VALUES ('3065', '540100', '540102', '城关区', null);
INSERT INTO `qj_area` VALUES ('3066', '540100', '540121', '林周县', null);
INSERT INTO `qj_area` VALUES ('3067', '540100', '540122', '当雄县', null);
INSERT INTO `qj_area` VALUES ('3068', '540100', '540123', '尼木县', null);
INSERT INTO `qj_area` VALUES ('3069', '540100', '540124', '曲水县', null);
INSERT INTO `qj_area` VALUES ('3070', '540100', '540125', '堆龙德庆县', null);
INSERT INTO `qj_area` VALUES ('3071', '540100', '540126', '达孜县', null);
INSERT INTO `qj_area` VALUES ('3072', '540100', '540127', '墨竹工卡县', null);
INSERT INTO `qj_area` VALUES ('3073', '542100', '542121', '昌都县', null);
INSERT INTO `qj_area` VALUES ('3074', '542100', '542122', '江达县', null);
INSERT INTO `qj_area` VALUES ('3075', '542100', '542123', '贡觉县', null);
INSERT INTO `qj_area` VALUES ('3076', '542100', '542124', '类乌齐县', null);
INSERT INTO `qj_area` VALUES ('3077', '542100', '542125', '丁青县', null);
INSERT INTO `qj_area` VALUES ('3078', '542100', '542126', '察雅县', null);
INSERT INTO `qj_area` VALUES ('3079', '542100', '542127', '八宿县', null);
INSERT INTO `qj_area` VALUES ('3080', '542100', '542128', '左贡县', null);
INSERT INTO `qj_area` VALUES ('3081', '542100', '542129', '芒康县', null);
INSERT INTO `qj_area` VALUES ('3082', '542100', '542132', '洛隆县', null);
INSERT INTO `qj_area` VALUES ('3083', '542100', '542133', '边坝县', null);
INSERT INTO `qj_area` VALUES ('3084', '542200', '542221', '乃东县', null);
INSERT INTO `qj_area` VALUES ('3085', '542200', '542222', '扎囊县', null);
INSERT INTO `qj_area` VALUES ('3086', '542200', '542223', '贡嘎县', null);
INSERT INTO `qj_area` VALUES ('3087', '542200', '542224', '桑日县', null);
INSERT INTO `qj_area` VALUES ('3088', '542200', '542225', '琼结县', null);
INSERT INTO `qj_area` VALUES ('3089', '542200', '542226', '曲松县', null);
INSERT INTO `qj_area` VALUES ('3090', '542200', '542227', '措美县', null);
INSERT INTO `qj_area` VALUES ('3091', '542200', '542228', '洛扎县', null);
INSERT INTO `qj_area` VALUES ('3092', '542200', '542229', '加查县', null);
INSERT INTO `qj_area` VALUES ('3093', '542200', '542231', '隆子县', null);
INSERT INTO `qj_area` VALUES ('3094', '542200', '542232', '错那县', null);
INSERT INTO `qj_area` VALUES ('3095', '542200', '542233', '浪卡子县', null);
INSERT INTO `qj_area` VALUES ('3096', '542300', '542301', '日喀则市', null);
INSERT INTO `qj_area` VALUES ('3097', '542300', '542322', '南木林县', null);
INSERT INTO `qj_area` VALUES ('3098', '542300', '542323', '江孜县', null);
INSERT INTO `qj_area` VALUES ('3099', '542300', '542324', '定日县', null);
INSERT INTO `qj_area` VALUES ('3100', '542300', '542325', '萨迦县', null);
INSERT INTO `qj_area` VALUES ('3101', '542300', '542326', '拉孜县', null);
INSERT INTO `qj_area` VALUES ('3102', '542300', '542327', '昂仁县', null);
INSERT INTO `qj_area` VALUES ('3103', '542300', '542328', '谢通门县', null);
INSERT INTO `qj_area` VALUES ('3104', '542300', '542329', '白朗县', null);
INSERT INTO `qj_area` VALUES ('3105', '542300', '542330', '仁布县', null);
INSERT INTO `qj_area` VALUES ('3106', '542300', '542331', '康马县', null);
INSERT INTO `qj_area` VALUES ('3107', '542300', '542332', '定结县', null);
INSERT INTO `qj_area` VALUES ('3108', '542300', '542333', '仲巴县', null);
INSERT INTO `qj_area` VALUES ('3109', '542300', '542334', '亚东县', null);
INSERT INTO `qj_area` VALUES ('3110', '542300', '542335', '吉隆县', null);
INSERT INTO `qj_area` VALUES ('3111', '542300', '542336', '聂拉木县', null);
INSERT INTO `qj_area` VALUES ('3112', '542300', '542337', '萨嘎县', null);
INSERT INTO `qj_area` VALUES ('3113', '542300', '542338', '岗巴县', null);
INSERT INTO `qj_area` VALUES ('3114', '542400', '542421', '那曲县', null);
INSERT INTO `qj_area` VALUES ('3115', '542400', '542422', '嘉黎县', null);
INSERT INTO `qj_area` VALUES ('3116', '542400', '542423', '比如县', null);
INSERT INTO `qj_area` VALUES ('3117', '542400', '542424', '聂荣县', null);
INSERT INTO `qj_area` VALUES ('3118', '542400', '542425', '安多县', null);
INSERT INTO `qj_area` VALUES ('3119', '542400', '542426', '申扎县', null);
INSERT INTO `qj_area` VALUES ('3120', '542400', '542427', '索　县', null);
INSERT INTO `qj_area` VALUES ('3121', '542400', '542428', '班戈县', null);
INSERT INTO `qj_area` VALUES ('3122', '542400', '542429', '巴青县', null);
INSERT INTO `qj_area` VALUES ('3123', '542400', '542430', '尼玛县', null);
INSERT INTO `qj_area` VALUES ('3124', '542500', '542521', '普兰县', null);
INSERT INTO `qj_area` VALUES ('3125', '542500', '542522', '札达县', null);
INSERT INTO `qj_area` VALUES ('3126', '542500', '542523', '噶尔县', null);
INSERT INTO `qj_area` VALUES ('3127', '542500', '542524', '日土县', null);
INSERT INTO `qj_area` VALUES ('3128', '542500', '542525', '革吉县', null);
INSERT INTO `qj_area` VALUES ('3129', '542500', '542526', '改则县', null);
INSERT INTO `qj_area` VALUES ('3130', '542500', '542527', '措勤县', null);
INSERT INTO `qj_area` VALUES ('3131', '542600', '542621', '林芝县', null);
INSERT INTO `qj_area` VALUES ('3132', '542600', '542622', '工布江达县', null);
INSERT INTO `qj_area` VALUES ('3133', '542600', '542623', '米林县', null);
INSERT INTO `qj_area` VALUES ('3134', '542600', '542624', '墨脱县', null);
INSERT INTO `qj_area` VALUES ('3135', '542600', '542625', '波密县', null);
INSERT INTO `qj_area` VALUES ('3136', '542600', '542626', '察隅县', null);
INSERT INTO `qj_area` VALUES ('3137', '542600', '542627', '朗　县', null);
INSERT INTO `qj_area` VALUES ('3138', '610100', '610101', '市辖区', null);
INSERT INTO `qj_area` VALUES ('3139', '610100', '610102', '新城区', null);
INSERT INTO `qj_area` VALUES ('3140', '610100', '610103', '碑林区', null);
INSERT INTO `qj_area` VALUES ('3141', '610100', '610104', '莲湖区', null);
INSERT INTO `qj_area` VALUES ('3142', '610100', '610111', '灞桥区', null);
INSERT INTO `qj_area` VALUES ('3143', '610100', '610112', '未央区', null);
INSERT INTO `qj_area` VALUES ('3144', '610100', '610113', '雁塔区', null);
INSERT INTO `qj_area` VALUES ('3145', '610100', '610114', '阎良区', null);
INSERT INTO `qj_area` VALUES ('3146', '610100', '610115', '临潼区', null);
INSERT INTO `qj_area` VALUES ('3147', '610100', '610116', '长安区', null);
INSERT INTO `qj_area` VALUES ('3148', '610100', '610122', '蓝田县', null);
INSERT INTO `qj_area` VALUES ('3149', '610100', '610124', '周至县', null);
INSERT INTO `qj_area` VALUES ('3150', '610100', '610125', '户　县', null);
INSERT INTO `qj_area` VALUES ('3151', '610100', '610126', '高陵县', null);
INSERT INTO `qj_area` VALUES ('3152', '610200', '610201', '市辖区', null);
INSERT INTO `qj_area` VALUES ('3153', '610200', '610202', '王益区', null);
INSERT INTO `qj_area` VALUES ('3154', '610200', '610203', '印台区', null);
INSERT INTO `qj_area` VALUES ('3155', '610200', '610204', '耀州区', null);
INSERT INTO `qj_area` VALUES ('3156', '610200', '610222', '宜君县', null);
INSERT INTO `qj_area` VALUES ('3157', '610300', '610301', '市辖区', null);
INSERT INTO `qj_area` VALUES ('3158', '610300', '610302', '渭滨区', null);
INSERT INTO `qj_area` VALUES ('3159', '610300', '610303', '金台区', null);
INSERT INTO `qj_area` VALUES ('3160', '610300', '610304', '陈仓区', null);
INSERT INTO `qj_area` VALUES ('3161', '610300', '610322', '凤翔县', null);
INSERT INTO `qj_area` VALUES ('3162', '610300', '610323', '岐山县', null);
INSERT INTO `qj_area` VALUES ('3163', '610300', '610324', '扶风县', null);
INSERT INTO `qj_area` VALUES ('3164', '610300', '610326', '眉　县', null);
INSERT INTO `qj_area` VALUES ('3165', '610300', '610327', '陇　县', null);
INSERT INTO `qj_area` VALUES ('3166', '610300', '610328', '千阳县', null);
INSERT INTO `qj_area` VALUES ('3167', '610300', '610329', '麟游县', null);
INSERT INTO `qj_area` VALUES ('3168', '610300', '610330', '凤　县', null);
INSERT INTO `qj_area` VALUES ('3169', '610300', '610331', '太白县', null);
INSERT INTO `qj_area` VALUES ('3170', '610400', '610401', '市辖区', null);
INSERT INTO `qj_area` VALUES ('3171', '610400', '610402', '秦都区', null);
INSERT INTO `qj_area` VALUES ('3172', '610400', '610403', '杨凌区', null);
INSERT INTO `qj_area` VALUES ('3173', '610400', '610404', '渭城区', null);
INSERT INTO `qj_area` VALUES ('3174', '610400', '610422', '三原县', null);
INSERT INTO `qj_area` VALUES ('3175', '610400', '610423', '泾阳县', null);
INSERT INTO `qj_area` VALUES ('3176', '610400', '610424', '乾　县', null);
INSERT INTO `qj_area` VALUES ('3177', '610400', '610425', '礼泉县', null);
INSERT INTO `qj_area` VALUES ('3178', '610400', '610426', '永寿县', null);
INSERT INTO `qj_area` VALUES ('3179', '610400', '610427', '彬　县', null);
INSERT INTO `qj_area` VALUES ('3180', '610400', '610428', '长武县', null);
INSERT INTO `qj_area` VALUES ('3181', '610400', '610429', '旬邑县', null);
INSERT INTO `qj_area` VALUES ('3182', '610400', '610430', '淳化县', null);
INSERT INTO `qj_area` VALUES ('3183', '610400', '610431', '武功县', null);
INSERT INTO `qj_area` VALUES ('3184', '610400', '610481', '兴平市', null);
INSERT INTO `qj_area` VALUES ('3185', '610500', '610501', '市辖区', null);
INSERT INTO `qj_area` VALUES ('3186', '610500', '610502', '临渭区', null);
INSERT INTO `qj_area` VALUES ('3187', '610500', '610521', '华　县', null);
INSERT INTO `qj_area` VALUES ('3188', '610500', '610522', '潼关县', null);
INSERT INTO `qj_area` VALUES ('3189', '610500', '610523', '大荔县', null);
INSERT INTO `qj_area` VALUES ('3190', '610500', '610524', '合阳县', null);
INSERT INTO `qj_area` VALUES ('3191', '610500', '610525', '澄城县', null);
INSERT INTO `qj_area` VALUES ('3192', '610500', '610526', '蒲城县', null);
INSERT INTO `qj_area` VALUES ('3193', '610500', '610527', '白水县', null);
INSERT INTO `qj_area` VALUES ('3194', '610500', '610528', '富平县', null);
INSERT INTO `qj_area` VALUES ('3195', '610500', '610581', '韩城市', null);
INSERT INTO `qj_area` VALUES ('3196', '610500', '610582', '华阴市', null);
INSERT INTO `qj_area` VALUES ('3197', '610600', '610601', '市辖区', null);
INSERT INTO `qj_area` VALUES ('3198', '610600', '610602', '宝塔区', null);
INSERT INTO `qj_area` VALUES ('3199', '610600', '610621', '延长县', null);
INSERT INTO `qj_area` VALUES ('3200', '610600', '610622', '延川县', null);
INSERT INTO `qj_area` VALUES ('3201', '610600', '610623', '子长县', null);
INSERT INTO `qj_area` VALUES ('3202', '610600', '610624', '安塞县', null);
INSERT INTO `qj_area` VALUES ('3203', '610600', '610625', '志丹县', null);
INSERT INTO `qj_area` VALUES ('3204', '610600', '610626', '吴旗县', null);
INSERT INTO `qj_area` VALUES ('3205', '610600', '610627', '甘泉县', null);
INSERT INTO `qj_area` VALUES ('3206', '610600', '610628', '富　县', null);
INSERT INTO `qj_area` VALUES ('3207', '610600', '610629', '洛川县', null);
INSERT INTO `qj_area` VALUES ('3208', '610600', '610630', '宜川县', null);
INSERT INTO `qj_area` VALUES ('3209', '610600', '610631', '黄龙县', null);
INSERT INTO `qj_area` VALUES ('3210', '610600', '610632', '黄陵县', null);
INSERT INTO `qj_area` VALUES ('3211', '610700', '610701', '市辖区', null);
INSERT INTO `qj_area` VALUES ('3212', '610700', '610702', '汉台区', null);
INSERT INTO `qj_area` VALUES ('3213', '610700', '610721', '南郑县', null);
INSERT INTO `qj_area` VALUES ('3214', '610700', '610722', '城固县', null);
INSERT INTO `qj_area` VALUES ('3215', '610700', '610723', '洋　县', null);
INSERT INTO `qj_area` VALUES ('3216', '610700', '610724', '西乡县', null);
INSERT INTO `qj_area` VALUES ('3217', '610700', '610725', '勉　县', null);
INSERT INTO `qj_area` VALUES ('3218', '610700', '610726', '宁强县', null);
INSERT INTO `qj_area` VALUES ('3219', '610700', '610727', '略阳县', null);
INSERT INTO `qj_area` VALUES ('3220', '610700', '610728', '镇巴县', null);
INSERT INTO `qj_area` VALUES ('3221', '610700', '610729', '留坝县', null);
INSERT INTO `qj_area` VALUES ('3222', '610700', '610730', '佛坪县', null);
INSERT INTO `qj_area` VALUES ('3223', '610800', '610801', '市辖区', null);
INSERT INTO `qj_area` VALUES ('3224', '610800', '610802', '榆阳区', null);
INSERT INTO `qj_area` VALUES ('3225', '610800', '610821', '神木县', null);
INSERT INTO `qj_area` VALUES ('3226', '610800', '610822', '府谷县', null);
INSERT INTO `qj_area` VALUES ('3227', '610800', '610823', '横山县', null);
INSERT INTO `qj_area` VALUES ('3228', '610800', '610824', '靖边县', null);
INSERT INTO `qj_area` VALUES ('3229', '610800', '610825', '定边县', null);
INSERT INTO `qj_area` VALUES ('3230', '610800', '610826', '绥德县', null);
INSERT INTO `qj_area` VALUES ('3231', '610800', '610827', '米脂县', null);
INSERT INTO `qj_area` VALUES ('3232', '610800', '610828', '佳　县', null);
INSERT INTO `qj_area` VALUES ('3233', '610800', '610829', '吴堡县', null);
INSERT INTO `qj_area` VALUES ('3234', '610800', '610830', '清涧县', null);
INSERT INTO `qj_area` VALUES ('3235', '610800', '610831', '子洲县', null);
INSERT INTO `qj_area` VALUES ('3236', '610900', '610901', '市辖区', null);
INSERT INTO `qj_area` VALUES ('3237', '610900', '610902', '汉滨区', null);
INSERT INTO `qj_area` VALUES ('3238', '610900', '610921', '汉阴县', null);
INSERT INTO `qj_area` VALUES ('3239', '610900', '610922', '石泉县', null);
INSERT INTO `qj_area` VALUES ('3240', '610900', '610923', '宁陕县', null);
INSERT INTO `qj_area` VALUES ('3241', '610900', '610924', '紫阳县', null);
INSERT INTO `qj_area` VALUES ('3242', '610900', '610925', '岚皋县', null);
INSERT INTO `qj_area` VALUES ('3243', '610900', '610926', '平利县', null);
INSERT INTO `qj_area` VALUES ('3244', '610900', '610927', '镇坪县', null);
INSERT INTO `qj_area` VALUES ('3245', '610900', '610928', '旬阳县', null);
INSERT INTO `qj_area` VALUES ('3246', '610900', '610929', '白河县', null);
INSERT INTO `qj_area` VALUES ('3247', '611000', '611001', '市辖区', null);
INSERT INTO `qj_area` VALUES ('3248', '611000', '611002', '商州区', null);
INSERT INTO `qj_area` VALUES ('3249', '611000', '611021', '洛南县', null);
INSERT INTO `qj_area` VALUES ('3250', '611000', '611022', '丹凤县', null);
INSERT INTO `qj_area` VALUES ('3251', '611000', '611023', '商南县', null);
INSERT INTO `qj_area` VALUES ('3252', '611000', '611024', '山阳县', null);
INSERT INTO `qj_area` VALUES ('3253', '611000', '611025', '镇安县', null);
INSERT INTO `qj_area` VALUES ('3254', '611000', '611026', '柞水县', null);
INSERT INTO `qj_area` VALUES ('3255', '620100', '620101', '市辖区', null);
INSERT INTO `qj_area` VALUES ('3256', '620100', '620102', '城关区', null);
INSERT INTO `qj_area` VALUES ('3257', '620100', '620103', '七里河区', null);
INSERT INTO `qj_area` VALUES ('3258', '620100', '620104', '西固区', null);
INSERT INTO `qj_area` VALUES ('3259', '620100', '620105', '安宁区', null);
INSERT INTO `qj_area` VALUES ('3260', '620100', '620111', '红古区', null);
INSERT INTO `qj_area` VALUES ('3261', '620100', '620121', '永登县', null);
INSERT INTO `qj_area` VALUES ('3262', '620100', '620122', '皋兰县', null);
INSERT INTO `qj_area` VALUES ('3263', '620100', '620123', '榆中县', null);
INSERT INTO `qj_area` VALUES ('3264', '620200', '620201', '市辖区', null);
INSERT INTO `qj_area` VALUES ('3265', '620300', '620301', '市辖区', null);
INSERT INTO `qj_area` VALUES ('3266', '620300', '620302', '金川区', null);
INSERT INTO `qj_area` VALUES ('3267', '620300', '620321', '永昌县', null);
INSERT INTO `qj_area` VALUES ('3268', '620400', '620401', '市辖区', null);
INSERT INTO `qj_area` VALUES ('3269', '620400', '620402', '白银区', null);
INSERT INTO `qj_area` VALUES ('3270', '620400', '620403', '平川区', null);
INSERT INTO `qj_area` VALUES ('3271', '620400', '620421', '靖远县', null);
INSERT INTO `qj_area` VALUES ('3272', '620400', '620422', '会宁县', null);
INSERT INTO `qj_area` VALUES ('3273', '620400', '620423', '景泰县', null);
INSERT INTO `qj_area` VALUES ('3274', '620500', '620501', '市辖区', null);
INSERT INTO `qj_area` VALUES ('3275', '620500', '620502', '秦城区', null);
INSERT INTO `qj_area` VALUES ('3276', '620500', '620503', '北道区', null);
INSERT INTO `qj_area` VALUES ('3277', '620500', '620521', '清水县', null);
INSERT INTO `qj_area` VALUES ('3278', '620500', '620522', '秦安县', null);
INSERT INTO `qj_area` VALUES ('3279', '620500', '620523', '甘谷县', null);
INSERT INTO `qj_area` VALUES ('3280', '620500', '620524', '武山县', null);
INSERT INTO `qj_area` VALUES ('3281', '620500', '620525', '张家川回族自治县', null);
INSERT INTO `qj_area` VALUES ('3282', '620600', '620601', '市辖区', null);
INSERT INTO `qj_area` VALUES ('3283', '620600', '620602', '凉州区', null);
INSERT INTO `qj_area` VALUES ('3284', '620600', '620621', '民勤县', null);
INSERT INTO `qj_area` VALUES ('3285', '620600', '620622', '古浪县', null);
INSERT INTO `qj_area` VALUES ('3286', '620600', '620623', '天祝藏族自治县', null);
INSERT INTO `qj_area` VALUES ('3287', '620700', '620701', '市辖区', null);
INSERT INTO `qj_area` VALUES ('3288', '620700', '620702', '甘州区', null);
INSERT INTO `qj_area` VALUES ('3289', '620700', '620721', '肃南裕固族自治县', null);
INSERT INTO `qj_area` VALUES ('3290', '620700', '620722', '民乐县', null);
INSERT INTO `qj_area` VALUES ('3291', '620700', '620723', '临泽县', null);
INSERT INTO `qj_area` VALUES ('3292', '620700', '620724', '高台县', null);
INSERT INTO `qj_area` VALUES ('3293', '620700', '620725', '山丹县', null);
INSERT INTO `qj_area` VALUES ('3294', '620800', '620801', '市辖区', null);
INSERT INTO `qj_area` VALUES ('3295', '620800', '620802', '崆峒区', null);
INSERT INTO `qj_area` VALUES ('3296', '620800', '620821', '泾川县', null);
INSERT INTO `qj_area` VALUES ('3297', '620800', '620822', '灵台县', null);
INSERT INTO `qj_area` VALUES ('3298', '620800', '620823', '崇信县', null);
INSERT INTO `qj_area` VALUES ('3299', '620800', '620824', '华亭县', null);
INSERT INTO `qj_area` VALUES ('3300', '620800', '620825', '庄浪县', null);
INSERT INTO `qj_area` VALUES ('3301', '620800', '620826', '静宁县', null);
INSERT INTO `qj_area` VALUES ('3302', '620900', '620901', '市辖区', null);
INSERT INTO `qj_area` VALUES ('3303', '620900', '620902', '肃州区', null);
INSERT INTO `qj_area` VALUES ('3304', '620900', '620921', '金塔县', null);
INSERT INTO `qj_area` VALUES ('3305', '620900', '620922', '安西县', null);
INSERT INTO `qj_area` VALUES ('3306', '620900', '620923', '肃北蒙古族自治县', null);
INSERT INTO `qj_area` VALUES ('3307', '620900', '620924', '阿克塞哈萨克族自治县', null);
INSERT INTO `qj_area` VALUES ('3308', '620900', '620981', '玉门市', null);
INSERT INTO `qj_area` VALUES ('3309', '620900', '620982', '敦煌市', null);
INSERT INTO `qj_area` VALUES ('3310', '621000', '621001', '市辖区', null);
INSERT INTO `qj_area` VALUES ('3311', '621000', '621002', '西峰区', null);
INSERT INTO `qj_area` VALUES ('3312', '621000', '621021', '庆城县', null);
INSERT INTO `qj_area` VALUES ('3313', '621000', '621022', '环　县', null);
INSERT INTO `qj_area` VALUES ('3314', '621000', '621023', '华池县', null);
INSERT INTO `qj_area` VALUES ('3315', '621000', '621024', '合水县', null);
INSERT INTO `qj_area` VALUES ('3316', '621000', '621025', '正宁县', null);
INSERT INTO `qj_area` VALUES ('3317', '621000', '621026', '宁　县', null);
INSERT INTO `qj_area` VALUES ('3318', '621000', '621027', '镇原县', null);
INSERT INTO `qj_area` VALUES ('3319', '621100', '621101', '市辖区', null);
INSERT INTO `qj_area` VALUES ('3320', '621100', '621102', '安定区', null);
INSERT INTO `qj_area` VALUES ('3321', '621100', '621121', '通渭县', null);
INSERT INTO `qj_area` VALUES ('3322', '621100', '621122', '陇西县', null);
INSERT INTO `qj_area` VALUES ('3323', '621100', '621123', '渭源县', null);
INSERT INTO `qj_area` VALUES ('3324', '621100', '621124', '临洮县', null);
INSERT INTO `qj_area` VALUES ('3325', '621100', '621125', '漳　县', null);
INSERT INTO `qj_area` VALUES ('3326', '621100', '621126', '岷　县', null);
INSERT INTO `qj_area` VALUES ('3327', '621200', '621201', '市辖区', null);
INSERT INTO `qj_area` VALUES ('3328', '621200', '621202', '武都区', null);
INSERT INTO `qj_area` VALUES ('3329', '621200', '621221', '成　县', null);
INSERT INTO `qj_area` VALUES ('3330', '621200', '621222', '文　县', null);
INSERT INTO `qj_area` VALUES ('3331', '621200', '621223', '宕昌县', null);
INSERT INTO `qj_area` VALUES ('3332', '621200', '621224', '康　县', null);
INSERT INTO `qj_area` VALUES ('3333', '621200', '621225', '西和县', null);
INSERT INTO `qj_area` VALUES ('3334', '621200', '621226', '礼　县', null);
INSERT INTO `qj_area` VALUES ('3335', '621200', '621227', '徽　县', null);
INSERT INTO `qj_area` VALUES ('3336', '621200', '621228', '两当县', null);
INSERT INTO `qj_area` VALUES ('3337', '622900', '622901', '临夏市', null);
INSERT INTO `qj_area` VALUES ('3338', '622900', '622921', '临夏县', null);
INSERT INTO `qj_area` VALUES ('3339', '622900', '622922', '康乐县', null);
INSERT INTO `qj_area` VALUES ('3340', '622900', '622923', '永靖县', null);
INSERT INTO `qj_area` VALUES ('3341', '622900', '622924', '广河县', null);
INSERT INTO `qj_area` VALUES ('3342', '622900', '622925', '和政县', null);
INSERT INTO `qj_area` VALUES ('3343', '622900', '622926', '东乡族自治县', null);
INSERT INTO `qj_area` VALUES ('3344', '622900', '622927', '积石山保安族东乡族撒拉族自治县', null);
INSERT INTO `qj_area` VALUES ('3345', '623000', '623001', '合作市', null);
INSERT INTO `qj_area` VALUES ('3346', '623000', '623021', '临潭县', null);
INSERT INTO `qj_area` VALUES ('3347', '623000', '623022', '卓尼县', null);
INSERT INTO `qj_area` VALUES ('3348', '623000', '623023', '舟曲县', null);
INSERT INTO `qj_area` VALUES ('3349', '623000', '623024', '迭部县', null);
INSERT INTO `qj_area` VALUES ('3350', '623000', '623025', '玛曲县', null);
INSERT INTO `qj_area` VALUES ('3351', '623000', '623026', '碌曲县', null);
INSERT INTO `qj_area` VALUES ('3352', '623000', '623027', '夏河县', null);
INSERT INTO `qj_area` VALUES ('3353', '630100', '630101', '市辖区', null);
INSERT INTO `qj_area` VALUES ('3354', '630100', '630102', '城东区', null);
INSERT INTO `qj_area` VALUES ('3355', '630100', '630103', '城中区', null);
INSERT INTO `qj_area` VALUES ('3356', '630100', '630104', '城西区', null);
INSERT INTO `qj_area` VALUES ('3357', '630100', '630105', '城北区', null);
INSERT INTO `qj_area` VALUES ('3358', '630100', '630121', '大通回族土族自治县', null);
INSERT INTO `qj_area` VALUES ('3359', '630100', '630122', '湟中县', null);
INSERT INTO `qj_area` VALUES ('3360', '630100', '630123', '湟源县', null);
INSERT INTO `qj_area` VALUES ('3361', '632100', '632121', '平安县', null);
INSERT INTO `qj_area` VALUES ('3362', '632100', '632122', '民和回族土族自治县', null);
INSERT INTO `qj_area` VALUES ('3363', '632100', '632123', '乐都县', null);
INSERT INTO `qj_area` VALUES ('3364', '632100', '632126', '互助土族自治县', null);
INSERT INTO `qj_area` VALUES ('3365', '632100', '632127', '化隆回族自治县', null);
INSERT INTO `qj_area` VALUES ('3366', '632100', '632128', '循化撒拉族自治县', null);
INSERT INTO `qj_area` VALUES ('3367', '632200', '632221', '门源回族自治县', null);
INSERT INTO `qj_area` VALUES ('3368', '632200', '632222', '祁连县', null);
INSERT INTO `qj_area` VALUES ('3369', '632200', '632223', '海晏县', null);
INSERT INTO `qj_area` VALUES ('3370', '632200', '632224', '刚察县', null);
INSERT INTO `qj_area` VALUES ('3371', '632300', '632321', '同仁县', null);
INSERT INTO `qj_area` VALUES ('3372', '632300', '632322', '尖扎县', null);
INSERT INTO `qj_area` VALUES ('3373', '632300', '632323', '泽库县', null);
INSERT INTO `qj_area` VALUES ('3374', '632300', '632324', '河南蒙古族自治县', null);
INSERT INTO `qj_area` VALUES ('3375', '632500', '632521', '共和县', null);
INSERT INTO `qj_area` VALUES ('3376', '632500', '632522', '同德县', null);
INSERT INTO `qj_area` VALUES ('3377', '632500', '632523', '贵德县', null);
INSERT INTO `qj_area` VALUES ('3378', '632500', '632524', '兴海县', null);
INSERT INTO `qj_area` VALUES ('3379', '632500', '632525', '贵南县', null);
INSERT INTO `qj_area` VALUES ('3380', '632600', '632621', '玛沁县', null);
INSERT INTO `qj_area` VALUES ('3381', '632600', '632622', '班玛县', null);
INSERT INTO `qj_area` VALUES ('3382', '632600', '632623', '甘德县', null);
INSERT INTO `qj_area` VALUES ('3383', '632600', '632624', '达日县', null);
INSERT INTO `qj_area` VALUES ('3384', '632600', '632625', '久治县', null);
INSERT INTO `qj_area` VALUES ('3385', '632600', '632626', '玛多县', null);
INSERT INTO `qj_area` VALUES ('3386', '632700', '632721', '玉树县', null);
INSERT INTO `qj_area` VALUES ('3387', '632700', '632722', '杂多县', null);
INSERT INTO `qj_area` VALUES ('3388', '632700', '632723', '称多县', null);
INSERT INTO `qj_area` VALUES ('3389', '632700', '632724', '治多县', null);
INSERT INTO `qj_area` VALUES ('3390', '632700', '632725', '囊谦县', null);
INSERT INTO `qj_area` VALUES ('3391', '632700', '632726', '曲麻莱县', null);
INSERT INTO `qj_area` VALUES ('3392', '632800', '632801', '格尔木市', null);
INSERT INTO `qj_area` VALUES ('3393', '632800', '632802', '德令哈市', null);
INSERT INTO `qj_area` VALUES ('3394', '632800', '632821', '乌兰县', null);
INSERT INTO `qj_area` VALUES ('3395', '632800', '632822', '都兰县', null);
INSERT INTO `qj_area` VALUES ('3396', '632800', '632823', '天峻县', null);
INSERT INTO `qj_area` VALUES ('3397', '640100', '640101', '市辖区', null);
INSERT INTO `qj_area` VALUES ('3398', '640100', '640104', '兴庆区', null);
INSERT INTO `qj_area` VALUES ('3399', '640100', '640105', '西夏区', null);
INSERT INTO `qj_area` VALUES ('3400', '640100', '640106', '金凤区', null);
INSERT INTO `qj_area` VALUES ('3401', '640100', '640121', '永宁县', null);
INSERT INTO `qj_area` VALUES ('3402', '640100', '640122', '贺兰县', null);
INSERT INTO `qj_area` VALUES ('3403', '640100', '640181', '灵武市', null);
INSERT INTO `qj_area` VALUES ('3404', '640200', '640201', '市辖区', null);
INSERT INTO `qj_area` VALUES ('3405', '640200', '640202', '大武口区', null);
INSERT INTO `qj_area` VALUES ('3406', '640200', '640205', '惠农区', null);
INSERT INTO `qj_area` VALUES ('3407', '640200', '640221', '平罗县', null);
INSERT INTO `qj_area` VALUES ('3408', '640300', '640301', '市辖区', null);
INSERT INTO `qj_area` VALUES ('3409', '640300', '640302', '利通区', null);
INSERT INTO `qj_area` VALUES ('3410', '640300', '640323', '盐池县', null);
INSERT INTO `qj_area` VALUES ('3411', '640300', '640324', '同心县', null);
INSERT INTO `qj_area` VALUES ('3412', '640300', '640381', '青铜峡市', null);
INSERT INTO `qj_area` VALUES ('3413', '640400', '640401', '市辖区', null);
INSERT INTO `qj_area` VALUES ('3414', '640400', '640402', '原州区', null);
INSERT INTO `qj_area` VALUES ('3415', '640400', '640422', '西吉县', null);
INSERT INTO `qj_area` VALUES ('3416', '640400', '640423', '隆德县', null);
INSERT INTO `qj_area` VALUES ('3417', '640400', '640424', '泾源县', null);
INSERT INTO `qj_area` VALUES ('3418', '640400', '640425', '彭阳县', null);
INSERT INTO `qj_area` VALUES ('3419', '640500', '640501', '市辖区', null);
INSERT INTO `qj_area` VALUES ('3420', '640500', '640502', '沙坡头区', null);
INSERT INTO `qj_area` VALUES ('3421', '640500', '640521', '中宁县', null);
INSERT INTO `qj_area` VALUES ('3422', '640500', '640522', '海原县', null);
INSERT INTO `qj_area` VALUES ('3423', '650100', '650101', '市辖区', null);
INSERT INTO `qj_area` VALUES ('3424', '650100', '650102', '天山区', null);
INSERT INTO `qj_area` VALUES ('3425', '650100', '650103', '沙依巴克区', null);
INSERT INTO `qj_area` VALUES ('3426', '650100', '650104', '新市区', null);
INSERT INTO `qj_area` VALUES ('3427', '650100', '650105', '水磨沟区', null);
INSERT INTO `qj_area` VALUES ('3428', '650100', '650106', '头屯河区', null);
INSERT INTO `qj_area` VALUES ('3429', '650100', '650107', '达坂城区', null);
INSERT INTO `qj_area` VALUES ('3430', '650100', '650108', '东山区', null);
INSERT INTO `qj_area` VALUES ('3431', '650100', '650121', '乌鲁木齐县', null);
INSERT INTO `qj_area` VALUES ('3432', '650200', '650201', '市辖区', null);
INSERT INTO `qj_area` VALUES ('3433', '650200', '650202', '独山子区', null);
INSERT INTO `qj_area` VALUES ('3434', '650200', '650203', '克拉玛依区', null);
INSERT INTO `qj_area` VALUES ('3435', '650200', '650204', '白碱滩区', null);
INSERT INTO `qj_area` VALUES ('3436', '650200', '650205', '乌尔禾区', null);
INSERT INTO `qj_area` VALUES ('3437', '652100', '652101', '吐鲁番市', null);
INSERT INTO `qj_area` VALUES ('3438', '652100', '652122', '鄯善县', null);
INSERT INTO `qj_area` VALUES ('3439', '652100', '652123', '托克逊县', null);
INSERT INTO `qj_area` VALUES ('3440', '652200', '652201', '哈密市', null);
INSERT INTO `qj_area` VALUES ('3441', '652200', '652222', '巴里坤哈萨克自治县', null);
INSERT INTO `qj_area` VALUES ('3442', '652200', '652223', '伊吾县', null);
INSERT INTO `qj_area` VALUES ('3443', '652300', '652301', '昌吉市', null);
INSERT INTO `qj_area` VALUES ('3444', '652300', '652302', '阜康市', null);
INSERT INTO `qj_area` VALUES ('3445', '652300', '652303', '米泉市', null);
INSERT INTO `qj_area` VALUES ('3446', '652300', '652323', '呼图壁县', null);
INSERT INTO `qj_area` VALUES ('3447', '652300', '652324', '玛纳斯县', null);
INSERT INTO `qj_area` VALUES ('3448', '652300', '652325', '奇台县', null);
INSERT INTO `qj_area` VALUES ('3449', '652300', '652327', '吉木萨尔县', null);
INSERT INTO `qj_area` VALUES ('3450', '652300', '652328', '木垒哈萨克自治县', null);
INSERT INTO `qj_area` VALUES ('3451', '652700', '652701', '博乐市', null);
INSERT INTO `qj_area` VALUES ('3452', '652700', '652722', '精河县', null);
INSERT INTO `qj_area` VALUES ('3453', '652700', '652723', '温泉县', null);
INSERT INTO `qj_area` VALUES ('3454', '652800', '652801', '库尔勒市', null);
INSERT INTO `qj_area` VALUES ('3455', '652800', '652822', '轮台县', null);
INSERT INTO `qj_area` VALUES ('3456', '652800', '652823', '尉犁县', null);
INSERT INTO `qj_area` VALUES ('3457', '652800', '652824', '若羌县', null);
INSERT INTO `qj_area` VALUES ('3458', '652800', '652825', '且末县', null);
INSERT INTO `qj_area` VALUES ('3459', '652800', '652826', '焉耆回族自治县', null);
INSERT INTO `qj_area` VALUES ('3460', '652800', '652827', '和静县', null);
INSERT INTO `qj_area` VALUES ('3461', '652800', '652828', '和硕县', null);
INSERT INTO `qj_area` VALUES ('3462', '652800', '652829', '博湖县', null);
INSERT INTO `qj_area` VALUES ('3463', '652900', '652901', '阿克苏市', null);
INSERT INTO `qj_area` VALUES ('3464', '652900', '652922', '温宿县', null);
INSERT INTO `qj_area` VALUES ('3465', '652900', '652923', '库车县', null);
INSERT INTO `qj_area` VALUES ('3466', '652900', '652924', '沙雅县', null);
INSERT INTO `qj_area` VALUES ('3467', '652900', '652925', '新和县', null);
INSERT INTO `qj_area` VALUES ('3468', '652900', '652926', '拜城县', null);
INSERT INTO `qj_area` VALUES ('3469', '652900', '652927', '乌什县', null);
INSERT INTO `qj_area` VALUES ('3470', '652900', '652928', '阿瓦提县', null);
INSERT INTO `qj_area` VALUES ('3471', '652900', '652929', '柯坪县', null);
INSERT INTO `qj_area` VALUES ('3472', '653000', '653001', '阿图什市', null);
INSERT INTO `qj_area` VALUES ('3473', '653000', '653022', '阿克陶县', null);
INSERT INTO `qj_area` VALUES ('3474', '653000', '653023', '阿合奇县', null);
INSERT INTO `qj_area` VALUES ('3475', '653000', '653024', '乌恰县', null);
INSERT INTO `qj_area` VALUES ('3476', '653100', '653101', '喀什市', null);
INSERT INTO `qj_area` VALUES ('3477', '653100', '653121', '疏附县', null);
INSERT INTO `qj_area` VALUES ('3478', '653100', '653122', '疏勒县', null);
INSERT INTO `qj_area` VALUES ('3479', '653100', '653123', '英吉沙县', null);
INSERT INTO `qj_area` VALUES ('3480', '653100', '653124', '泽普县', null);
INSERT INTO `qj_area` VALUES ('3481', '653100', '653125', '莎车县', null);
INSERT INTO `qj_area` VALUES ('3482', '653100', '653126', '叶城县', null);
INSERT INTO `qj_area` VALUES ('3483', '653100', '653127', '麦盖提县', null);
INSERT INTO `qj_area` VALUES ('3484', '653100', '653128', '岳普湖县', null);
INSERT INTO `qj_area` VALUES ('3485', '653100', '653129', '伽师县', null);
INSERT INTO `qj_area` VALUES ('3486', '653100', '653130', '巴楚县', null);
INSERT INTO `qj_area` VALUES ('3487', '653100', '653131', '塔什库尔干塔吉克自治县', null);
INSERT INTO `qj_area` VALUES ('3488', '653200', '653201', '和田市', null);
INSERT INTO `qj_area` VALUES ('3489', '653200', '653221', '和田县', null);
INSERT INTO `qj_area` VALUES ('3490', '653200', '653222', '墨玉县', null);
INSERT INTO `qj_area` VALUES ('3491', '653200', '653223', '皮山县', null);
INSERT INTO `qj_area` VALUES ('3492', '653200', '653224', '洛浦县', null);
INSERT INTO `qj_area` VALUES ('3493', '653200', '653225', '策勒县', null);
INSERT INTO `qj_area` VALUES ('3494', '653200', '653226', '于田县', null);
INSERT INTO `qj_area` VALUES ('3495', '653200', '653227', '民丰县', null);
INSERT INTO `qj_area` VALUES ('3496', '654000', '654002', '伊宁市', null);
INSERT INTO `qj_area` VALUES ('3497', '654000', '654003', '奎屯市', null);
INSERT INTO `qj_area` VALUES ('3498', '654000', '654021', '伊宁县', null);
INSERT INTO `qj_area` VALUES ('3499', '654000', '654022', '察布查尔锡伯自治县', null);
INSERT INTO `qj_area` VALUES ('3500', '654000', '654023', '霍城县', null);
INSERT INTO `qj_area` VALUES ('3501', '654000', '654024', '巩留县', null);
INSERT INTO `qj_area` VALUES ('3502', '654000', '654025', '新源县', null);
INSERT INTO `qj_area` VALUES ('3503', '654000', '654026', '昭苏县', null);
INSERT INTO `qj_area` VALUES ('3504', '654000', '654027', '特克斯县', null);
INSERT INTO `qj_area` VALUES ('3505', '654000', '654028', '尼勒克县', null);
INSERT INTO `qj_area` VALUES ('3506', '654200', '654201', '塔城市', null);
INSERT INTO `qj_area` VALUES ('3507', '654200', '654202', '乌苏市', null);
INSERT INTO `qj_area` VALUES ('3508', '654200', '654221', '额敏县', null);
INSERT INTO `qj_area` VALUES ('3509', '654200', '654223', '沙湾县', null);
INSERT INTO `qj_area` VALUES ('3510', '654200', '654224', '托里县', null);
INSERT INTO `qj_area` VALUES ('3511', '654200', '654225', '裕民县', null);
INSERT INTO `qj_area` VALUES ('3512', '654200', '654226', '和布克赛尔蒙古自治县', null);
INSERT INTO `qj_area` VALUES ('3513', '654300', '654301', '阿勒泰市', null);
INSERT INTO `qj_area` VALUES ('3514', '654300', '654321', '布尔津县', null);
INSERT INTO `qj_area` VALUES ('3515', '654300', '654322', '富蕴县', null);
INSERT INTO `qj_area` VALUES ('3516', '654300', '654323', '福海县', null);
INSERT INTO `qj_area` VALUES ('3517', '654300', '654324', '哈巴河县', null);
INSERT INTO `qj_area` VALUES ('3518', '654300', '654325', '青河县', null);
INSERT INTO `qj_area` VALUES ('3519', '654300', '654326', '吉木乃县', null);
INSERT INTO `qj_area` VALUES ('3520', '659000', '659001', '石河子市', null);
INSERT INTO `qj_area` VALUES ('3521', '659000', '659002', '阿拉尔市', null);
INSERT INTO `qj_area` VALUES ('3522', '659000', '659003', '图木舒克市', null);
INSERT INTO `qj_area` VALUES ('3523', '659000', '659004', '五家渠市', null);

-- ----------------------------
-- Table structure for `qj_banner`
-- ----------------------------
DROP TABLE IF EXISTS `qj_banner`;
CREATE TABLE `qj_banner` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `img_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `redirect_url` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `banner_img_url_unique` (`img_url`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of qj_banner
-- ----------------------------
INSERT INTO `qj_banner` VALUES ('2', 'banner', 'uploads/images/NKMPEMISEMKNPOPTHOIG.jpg', 'http://www.qingjie.com', '1', '2016-05-24 21:30:02', '2016-05-24 21:30:02');
INSERT INTO `qj_banner` VALUES ('3', 'banner2', 'uploads/images/DQHNPNUJEKBODCARONNR.jpg', 'http://www.qingjie.com', '1', '2016-05-24 21:30:40', '2016-05-24 21:30:40');
INSERT INTO `qj_banner` VALUES ('4', 'banner3', 'uploads/images/HSFEGUQSBPKGRFFLBHIT.jpg', 'http://www.qingjie.com', '1', '2016-05-24 21:31:08', '2016-05-24 21:31:08');

-- ----------------------------
-- Table structure for `qj_brand`
-- ----------------------------
DROP TABLE IF EXISTS `qj_brand`;
CREATE TABLE `qj_brand` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `designer_id` int(11) DEFAULT '0' COMMENT '设计师ID，0=系统',
  `logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'LOGO',
  `name` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `suitable_user` enum('ALL','WOMEN','MAN') COLLATE utf8_unicode_ci NOT NULL,
  `introduce` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `sort` tinyint(4) DEFAULT '0' COMMENT '排序值',
  `status` enum('REJECT','WAIT_AUDIT','NORMAL') COLLATE utf8_unicode_ci DEFAULT 'WAIT_AUDIT' COMMENT '状态',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `brand_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of qj_brand
-- ----------------------------
INSERT INTO `qj_brand` VALUES ('1', '0', null, '万宝路', 'WOMEN', '万宝路（Marlboro）是一个香烟品牌，由世界第一大烟草公司菲利普·莫里斯（Philip Morris）制造，是世界上最畅销的香烟品牌之一。品牌名称“万宝路”起源于英国,最后在美国独立注册。', '0', 'NORMAL', '2016-05-12 22:59:18', '2016-05-13 00:05:37');
INSERT INTO `qj_brand` VALUES ('3', '0', null, '品牌1', 'ALL', '这是品牌介绍', '1', 'NORMAL', '2016-05-15 16:04:39', '2016-05-15 16:04:39');
INSERT INTO `qj_brand` VALUES ('4', '0', null, '品牌2', 'ALL', '这是品牌介绍', '1', 'NORMAL', '2016-05-15 16:04:53', '2016-05-15 16:04:53');
INSERT INTO `qj_brand` VALUES ('5', '0', null, '品牌3', 'ALL', '品牌介绍', '1', 'NORMAL', '2016-05-15 16:05:06', '2016-05-15 16:05:06');
INSERT INTO `qj_brand` VALUES ('6', '0', null, '品牌4', 'ALL', '品牌', '1', 'NORMAL', '2016-05-15 16:05:17', '2016-05-15 16:05:17');
INSERT INTO `qj_brand` VALUES ('7', '0', null, '品牌5', 'ALL', '品牌5', '0', 'NORMAL', '2016-05-15 16:05:30', '2016-05-15 16:05:30');
INSERT INTO `qj_brand` VALUES ('8', '0', null, '品牌6', 'ALL', '品牌6', '0', 'NORMAL', '2016-05-15 16:05:42', '2016-05-15 16:05:42');
INSERT INTO `qj_brand` VALUES ('9', '5', null, '设计师的品牌', 'ALL', '设计师', '0', 'NORMAL', '2016-05-15 21:06:08', '2016-05-15 21:06:08');
INSERT INTO `qj_brand` VALUES ('10', '5', null, '123123', 'ALL', '112211', '0', 'NORMAL', '2016-05-16 15:09:44', '2016-05-16 15:09:44');

-- ----------------------------
-- Table structure for `qj_category`
-- ----------------------------
DROP TABLE IF EXISTS `qj_category`;
CREATE TABLE `qj_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `level` tinyint(4) DEFAULT NULL COMMENT '级别',
  `sort` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of qj_category
-- ----------------------------
INSERT INTO `qj_category` VALUES ('1', '男装', '0', '0', '0', '2016-05-14 17:04:46', '2016-05-14 17:04:46');
INSERT INTO `qj_category` VALUES ('2', '女装', '0', '0', '0', '2016-05-14 17:08:35', '2016-05-14 17:08:35');
INSERT INTO `qj_category` VALUES ('3', '玩具', '0', '0', '0', '2016-05-14 17:13:43', '2016-05-14 17:13:43');
INSERT INTO `qj_category` VALUES ('4', '上衣', '1', '1', '0', '2016-05-14 21:57:28', '2016-05-24 22:46:25');
INSERT INTO `qj_category` VALUES ('5', '裤装', '1', '1', '0', '2016-05-24 22:46:46', '2016-05-24 22:46:46');
INSERT INTO `qj_category` VALUES ('6', '场景', '1', '1', '0', '2016-05-24 22:46:58', '2016-05-24 22:46:58');
INSERT INTO `qj_category` VALUES ('7', '风格', '1', '1', '0', '2016-05-24 22:47:09', '2016-05-24 22:47:09');
INSERT INTO `qj_category` VALUES ('8', 'T恤', '4', '2', '0', '2016-05-30 22:14:10', '2016-05-30 22:14:10');
INSERT INTO `qj_category` VALUES ('9', '衬衫', '4', '2', '0', '2016-05-30 22:14:23', '2016-05-30 22:14:23');
INSERT INTO `qj_category` VALUES ('10', 'POLPO', '4', '2', '0', '2016-05-30 22:14:35', '2016-05-30 22:14:35');

-- ----------------------------
-- Table structure for `qj_discount`
-- ----------------------------
DROP TABLE IF EXISTS `qj_discount`;
CREATE TABLE `qj_discount` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('SAME_DISCOUNT','FULL_CUT') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'SAME_DISCOUNT',
  `discount` decimal(4,2) NOT NULL,
  `max` decimal(11,2) DEFAULT NULL,
  `cut` decimal(11,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of qj_discount
-- ----------------------------

-- ----------------------------
-- Table structure for `qj_goods`
-- ----------------------------
DROP TABLE IF EXISTS `qj_goods`;
CREATE TABLE `qj_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `type` tinyint(4) DEFAULT '0' COMMENT '商品类型，0=无，1=新品上线，2=折扣',
  `name` varchar(255) NOT NULL COMMENT '商品名称',
  `img` varchar(255) DEFAULT NULL COMMENT '商品图片',
  `origin_price` decimal(65,2) DEFAULT NULL COMMENT '原价',
  `price` decimal(65,2) DEFAULT NULL COMMENT '现价',
  `category_id` int(11) DEFAULT NULL COMMENT '分类ID',
  `score` decimal(5,2) DEFAULT NULL COMMENT '综合评分',
  `sort` tinyint(4) DEFAULT NULL COMMENT '排序值',
  `status` tinyint(4) DEFAULT '1' COMMENT '状态，1=正常，2=待审核，3=拒绝',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='商品表';

-- ----------------------------
-- Records of qj_goods
-- ----------------------------
INSERT INTO `qj_goods` VALUES ('1', '5', '0', '第一个商品', 'uploads/goods/UGDHJFQGKMNSFEOOLHIR.PNG', '222.00', '111.00', null, '0.00', '0', '1', '2016-05-26 21:26:29', '2016-05-26 21:26:29');
INSERT INTO `qj_goods` VALUES ('2', '5', '0', '第二个商品', null, '0.00', '1112.00', '0', '0.00', '4', '1', '2016-05-26 21:42:44', '2016-05-26 22:07:48');

-- ----------------------------
-- Table structure for `qj_goods_img`
-- ----------------------------
DROP TABLE IF EXISTS `qj_goods_img`;
CREATE TABLE `qj_goods_img` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL COMMENT '商品ID',
  `img` varchar(255) NOT NULL COMMENT '商品图片地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品图片表';

-- ----------------------------
-- Records of qj_goods_img
-- ----------------------------

-- ----------------------------
-- Table structure for `qj_node`
-- ----------------------------
DROP TABLE IF EXISTS `qj_node`;
CREATE TABLE `qj_node` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '名称',
  `action_name` varchar(255) DEFAULT NULL,
  `pid` int(11) NOT NULL DEFAULT '0' COMMENT '上级分类',
  `alias_name` varchar(255) DEFAULT NULL COMMENT '别名',
  `is_new` enum('N','Y') NOT NULL DEFAULT 'N' COMMENT '是否已更新',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qj_node
-- ----------------------------
INSERT INTO `qj_node` VALUES ('1', 'App\\Http\\Controllers\\Auth\\AuthController', null, '0', 'App\\Http\\Controllers\\Auth\\AuthController', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('2', 'App\\Http\\Controllers\\Auth\\PasswordController', null, '0', 'App\\Http\\Controllers\\Auth\\PasswordController', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('3', 'App\\Http\\Controllers\\AdminController', null, '0', '管理员管理', 'N', null, null);
INSERT INTO `qj_node` VALUES ('4', 'admin_index', 'index', '3', 'admin_index', 'N', null, null);
INSERT INTO `qj_node` VALUES ('5', 'admin_create', 'create', '3', 'admin_create', 'N', null, null);
INSERT INTO `qj_node` VALUES ('6', 'admin_store', 'store', '3', 'admin_store', 'N', null, null);
INSERT INTO `qj_node` VALUES ('7', 'admin_update_id', 'update', '3', 'admin_update_id', 'N', null, null);
INSERT INTO `qj_node` VALUES ('8', 'admin_update', 'postUpdate', '3', 'admin_update', 'N', null, null);
INSERT INTO `qj_node` VALUES ('9', 'App\\Http\\Controllers\\IndexController', null, '0', '后台首页', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('10', 'admin_index', 'index', '9', 'admin_index', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('11', 'App\\Http\\Controllers\\NodeController', null, '0', '节点管理', 'N', null, null);
INSERT INTO `qj_node` VALUES ('12', 'node_index', 'index', '11', 'node_index', 'N', null, null);
INSERT INTO `qj_node` VALUES ('13', 'node_update', 'update', '11', 'node_update', 'N', null, null);
INSERT INTO `qj_node` VALUES ('14', 'node_store', 'store', '11', 'node_store', 'N', null, null);
INSERT INTO `qj_node` VALUES ('15', 'node_sync', 'sync', '11', 'node_sync', 'N', null, null);
INSERT INTO `qj_node` VALUES ('16', 'App\\Http\\Controllers\\RoleController', null, '0', '角色管理', 'N', null, null);
INSERT INTO `qj_node` VALUES ('17', 'role_index', 'index', '16', 'role_index', 'N', null, null);
INSERT INTO `qj_node` VALUES ('18', 'role_create', 'create', '16', 'role_create', 'N', null, null);
INSERT INTO `qj_node` VALUES ('19', 'manager_store', 'store', '16', 'manager_store', 'N', null, null);
INSERT INTO `qj_node` VALUES ('20', 'role_getupdate', 'getUpdate', '16', 'role_getupdate', 'N', null, null);
INSERT INTO `qj_node` VALUES ('21', 'manager_postupdate', 'postupdate', '16', 'manager_postupdate', 'N', null, null);
INSERT INTO `qj_node` VALUES ('22', 'role_delete', 'delete', '16', 'role_delete', 'N', null, null);
INSERT INTO `qj_node` VALUES ('23', 'App\\Http\\Controllers\\BrandController', null, '0', '品牌管理', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('24', 'brand_index', 'index', '23', 'brand_index', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('25', 'brand_recommend', 'recommend', '23', 'brand_recommend', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('26', 'brand_create', 'create', '23', 'brand_create', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('27', 'brand_storecreate', 'storeCreate', '23', 'brand_storecreate', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('28', 'brand_update', 'update', '23', 'brand_update', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('29', 'brand_storeupdate', 'storeUpdate', '23', 'brand_storeupdate', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('30', 'brand_setrecommend', 'setRecommend', '23', 'brand_setrecommend', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('31', 'brand_setunrecommend', 'setUnrecommend', '23', 'brand_setunrecommend', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('32', 'brand_delete', 'delete', '23', 'brand_delete', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('33', 'brand_view', 'view', '23', 'brand_view', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('34', 'App\\Http\\Controllers\\CategoryController', null, '0', '主营类目管理', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('35', 'category_index', 'index', '34', 'category_index', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('36', 'category_create', 'create', '34', 'category_create', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('37', 'category_store', 'store', '34', 'category_store', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('38', 'category_update', 'update', '34', 'category_update', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('39', 'category_store_update', 'storeUpdate', '34', 'category_store_update', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('40', 'App\\Http\\Controllers\\Designer\\DesignerController', null, '0', 'App\\Http\\Controllers\\Designer\\DesignerController', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('41', 'designer_index', 'index', '40', 'designer_index', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('42', 'designer_create', 'create', '40', 'designer_create', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('43', 'designer_update', 'update', '40', 'designer_update', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('44', 'designer_storeupdate', 'storeUpdate', '40', 'designer_storeupdate', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('45', 'designer_view', 'view', '40', 'designer_view', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('46', 'App\\Http\\Controllers\\SmslogController', null, '0', 'App\\Http\\Controllers\\SmslogController', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('47', 'smslog_index', 'index', '46', 'smslog_index', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('48', 'smslog_send', 'send', '46', 'smslog_send', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('49', 'smslog_storesend', 'storeSend', '46', 'smslog_storesend', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('50', 'App\\Http\\Controllers\\System\\NodeController', null, '0', 'App\\Http\\Controllers\\System\\NodeController', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('51', 'node_index', 'index', '50', 'node_index', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('52', 'node_update', 'update', '50', 'node_update', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('53', 'node_store', 'store', '50', 'node_store', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('54', 'node_sync', 'sync', '50', 'node_sync', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('55', 'App\\Http\\Controllers\\System\\RoleController', null, '0', 'App\\Http\\Controllers\\System\\RoleController', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('56', 'role_index', 'index', '55', 'role_index', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('57', 'role_create', 'create', '55', 'role_create', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('58', 'manager_store', 'store', '55', 'manager_store', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('59', 'role_getupdate', 'getUpdate', '55', 'role_getupdate', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('60', 'manager_postupdate', 'postupdate', '55', 'manager_postupdate', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('61', 'role_delete', 'delete', '55', 'role_delete', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('62', 'App\\Http\\Controllers\\User\\AddressController', null, '0', 'App\\Http\\Controllers\\User\\AddressController', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('63', 'user_address_index', 'index', '62', 'user_address_index', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('64', 'user_address_caeate', 'create', '62', 'user_address_caeate', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('65', 'user_address_store', 'store', '62', 'user_address_store', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('66', 'user_address_storeupdate', 'storeUpdate', '62', 'user_address_storeupdate', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('67', 'App\\Http\\Controllers\\User\\UserController', null, '0', 'App\\Http\\Controllers\\User\\UserController', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('68', 'user_index', 'index', '67', 'user_index', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('69', 'user_create', 'create', '67', 'user_create', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('70', 'user_update', 'update', '67', 'user_update', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('71', 'user_storeupdate', 'storeUpdate', '67', 'user_storeupdate', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('72', 'user_view', 'view', '67', 'user_view', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('73', 'brand_audit', 'audit', '23', 'brand_audit', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('74', 'brand_reject', 'reject', '23', 'brand_reject', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('75', 'category_list', 'categoryList', '34', 'category_list', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('76', 'App\\Http\\Controllers\\GoodsController', null, '0', 'App\\Http\\Controllers\\GoodsController', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('77', 'goods_index', 'index', '76', 'goods_index', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('78', 'goods_audit', 'audit', '76', 'goods_audit', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('79', 'goods_reject', 'reject', '76', 'goods_reject', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('80', 'goods_create', 'create', '76', 'goods_create', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('81', 'goods_storecreate', 'storeCreate', '76', 'goods_storecreate', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('82', 'goods_view', 'view', '76', 'goods_view', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('83', 'goods_update', 'update', '76', 'goods_update', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('84', 'goods_storeupdate', 'storeUpdate', '76', 'goods_storeupdate', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('85', 'goods_recommend', 'recommend', '76', 'goods_recommend', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('86', 'goods_unrecommend', 'unrecommend', '76', 'goods_unrecommend', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('87', 'goods_delete', 'delete', '76', 'goods_delete', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('88', 'App\\Http\\Controllers\\System\\AdminController', null, '0', 'App\\Http\\Controllers\\System\\AdminController', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('89', 'admin_index', 'index', '88', 'admin_index', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('90', 'admin_create', 'create', '88', 'admin_create', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('91', 'admin_store', 'store', '88', 'admin_store', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('92', 'admin_update_id', 'update', '88', 'admin_update_id', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('93', 'admin_update', 'postUpdate', '88', 'admin_update', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('94', 'App\\Http\\Controllers\\System\\BannerController', null, '0', 'App\\Http\\Controllers\\System\\BannerController', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('95', 'banner_index', 'index', '94', 'banner_index', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('96', 'banner_create', 'create', '94', 'banner_create', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('97', 'banner_storecreate', 'storeCreate', '94', 'banner_storecreate', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('98', 'banner_update', 'update', '94', 'banner_update', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('99', 'banner_storeupdate', 'storeUpdate', '94', 'banner_storeupdate', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('100', 'banner_delete', 'delete', '94', 'banner_delete', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('101', 'App\\Http\\Controllers\\System\\NoticeController', null, '0', 'App\\Http\\Controllers\\System\\NoticeController', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('102', 'notice_index', 'index', '101', 'notice_index', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('103', 'notice_create', 'create', '101', 'notice_create', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('104', 'notice_store', 'store', '101', 'notice_store', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('105', 'notice_update_id', 'update', '101', 'notice_update_id', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('106', 'notice_update', 'postUpdate', '101', 'notice_update', 'Y', null, null);
INSERT INTO `qj_node` VALUES ('107', 'notice_delete', 'delete', '101', 'notice_delete', 'Y', null, null);

-- ----------------------------
-- Table structure for `qj_notice`
-- ----------------------------
DROP TABLE IF EXISTS `qj_notice`;
CREATE TABLE `qj_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) NOT NULL COMMENT '管理员ID',
  `title` varchar(50) NOT NULL COMMENT '标题',
  `content` varchar(255) NOT NULL COMMENT '内容',
  `show_time` datetime NOT NULL COMMENT '显示时间',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `title` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='系统消息表';

-- ----------------------------
-- Records of qj_notice
-- ----------------------------

-- ----------------------------
-- Table structure for `qj_number`
-- ----------------------------
DROP TABLE IF EXISTS `qj_number`;
CREATE TABLE `qj_number` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('BRAND','STORE') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'STORE',
  `object_id` int(11) NOT NULL,
  `all_score` decimal(11,2) NOT NULL,
  `comment_number` int(11) NOT NULL DEFAULT '0',
  `attention_number` int(11) NOT NULL DEFAULT '0',
  `share_number` int(11) NOT NULL DEFAULT '0',
  `discount` decimal(11,2) NOT NULL,
  `fancy_score` decimal(11,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of qj_number
-- ----------------------------

-- ----------------------------
-- Table structure for `qj_password_resets`
-- ----------------------------
DROP TABLE IF EXISTS `qj_password_resets`;
CREATE TABLE `qj_password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of qj_password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for `qj_role`
-- ----------------------------
DROP TABLE IF EXISTS `qj_role`;
CREATE TABLE `qj_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '角色组名称',
  `action_list` varchar(255) DEFAULT NULL COMMENT '可操作方法列表',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='角色组';

-- ----------------------------
-- Records of qj_role
-- ----------------------------
INSERT INTO `qj_role` VALUES ('1', '管理员', '4,5,6,7,8,10,12,13,14,15,17,18,19,20,21,22', null, null);
INSERT INTO `qj_role` VALUES ('2', '测试', '4,5,6,7,8', null, null);

-- ----------------------------
-- Table structure for `qj_smslog`
-- ----------------------------
DROP TABLE IF EXISTS `qj_smslog`;
CREATE TABLE `qj_smslog` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `phone` char(11) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expiration` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `content` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of qj_smslog
-- ----------------------------

-- ----------------------------
-- Table structure for `qj_store`
-- ----------------------------
DROP TABLE IF EXISTS `qj_store`;
CREATE TABLE `qj_store` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `shopkeeper` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` char(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` enum('NORMAL','FRANCHISED') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'NORMAL',
  `pic` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of qj_store
-- ----------------------------

-- ----------------------------
-- Table structure for `qj_store_discount`
-- ----------------------------
DROP TABLE IF EXISTS `qj_store_discount`;
CREATE TABLE `qj_store_discount` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('STORE','BRAND') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'STORE',
  `object_id` int(11) NOT NULL,
  `discount_type` enum('SAME_DISCOUNT','FULL_CUT') COLLATE utf8_unicode_ci DEFAULT 'FULL_CUT',
  `discount_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of qj_store_discount
-- ----------------------------

-- ----------------------------
-- Table structure for `qj_store_relations`
-- ----------------------------
DROP TABLE IF EXISTS `qj_store_relations`;
CREATE TABLE `qj_store_relations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `type` enum('CATEGORY','BRAND') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'BRAND',
  `object_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of qj_store_relations
-- ----------------------------

-- ----------------------------
-- Table structure for `qj_user`
-- ----------------------------
DROP TABLE IF EXISTS `qj_user`;
CREATE TABLE `qj_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nickname` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户昵称',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` char(11) COLLATE utf8_unicode_ci NOT NULL COMMENT '手机号码',
  `img` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '用户头像',
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('DESIGNER','USER') COLLATE utf8_unicode_ci DEFAULT 'USER' COMMENT '用户类型',
  `sort` tinyint(4) DEFAULT '0' COMMENT '推荐值',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_unique` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of qj_user
-- ----------------------------
INSERT INTO `qj_user` VALUES ('1', 'root', '管理员', 'root@aliyun.com', '13000000000', null, '$2y$10$oqlb/UzDMuA5.hDN9QByaOkeJcWfUb1CcSU8JTIL1htbfhwNJyJhu', 'USER', '0', 'InwqpNE5MM9tU0VlhXHFOqb9WX2Kn409mF7XRRsV0fDHEcb05DA9HcyBTANK', '2015-11-10 13:19:59', '2016-05-12 21:20:25');
INSERT INTO `qj_user` VALUES ('2', 'zhangsan', '张三', 'zhangsan@haolyy.com1', '13000000001', null, '$2y$10$0qixdxl2zlduN1KATCU1ouV3Ue.Ww3IBaICgw/ngAfdhrbbGKSWta', 'USER', '0', null, '2016-05-15 16:39:56', '2016-05-15 16:39:59');
INSERT INTO `qj_user` VALUES ('3', 'lisi', '李四', '', '13000000001', null, '$2y$10$gAKB7ycSrpAhZsyYy6Mk6.KLJJDNKr6t32t3n1lb4iWX514saHW9G', 'USER', '0', null, '2016-05-15 16:55:11', '2016-05-15 17:01:39');
INSERT INTO `qj_user` VALUES ('5', 'shejishi1', '设计师1', 'shejishi1@qingjie.com', '13000000001', null, '$2y$10$PAHvQ14l35jPIXfQYL6zeuCBECYpesahQM7MBgwwb.gxnkAD7Vj1q', 'DESIGNER', '1', null, '2016-05-15 17:40:11', '2016-05-15 20:48:27');
INSERT INTO `qj_user` VALUES ('6', 'user001', 'user001', '12345678900@163.com', '12345678900', null, '$2y$10$Wske1/2rZMFZa5MdtgwXJeFnSr78hLCjkR8/uOqFe4Jm5HbwG0X8i', 'USER', '0', null, '2016-05-30 21:35:56', '2016-05-30 21:35:56');
INSERT INTO `qj_user` VALUES ('8', 'user002', 'user002', '12345678901@163.com', '12345678901', null, '$2y$10$ujgGF4UQRFLl67QD8x7L6Oc014tlm.iR0EEMYTAmszFpeI6qNrpP2', 'USER', '0', null, '2016-05-30 21:39:18', '2016-05-30 21:39:18');

-- ----------------------------
-- Table structure for `qj_user_address`
-- ----------------------------
DROP TABLE IF EXISTS `qj_user_address`;
CREATE TABLE `qj_user_address` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `addressee` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `phone` char(11) COLLATE utf8_unicode_ci NOT NULL,
  `province_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `area_id` int(11) NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_default` enum('Y','N') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of qj_user_address
-- ----------------------------
INSERT INTO `qj_user_address` VALUES ('2', '2', '张三', '张三', '13000000001', '110000', '110200', '110228', '山西省阳泉市矿区', 'N', '2016-05-15 14:26:37', '2016-05-15 15:13:05');

-- ----------------------------
-- Table structure for `qj_user_assessment`
-- ----------------------------
DROP TABLE IF EXISTS `qj_user_assessment`;
CREATE TABLE `qj_user_assessment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_number` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `service_score` tinyint(4) NOT NULL DEFAULT '0',
  `product_score` tinyint(4) NOT NULL DEFAULT '0',
  `feel_score` tinyint(4) NOT NULL DEFAULT '0',
  `content` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of qj_user_assessment
-- ----------------------------

-- ----------------------------
-- Table structure for `qj_user_attentions`
-- ----------------------------
DROP TABLE IF EXISTS `qj_user_attentions`;
CREATE TABLE `qj_user_attentions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `type` enum('GOODS','BRAND') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'GOODS' COMMENT '收藏类型',
  `object_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of qj_user_attentions
-- ----------------------------

-- ----------------------------
-- Table structure for `qj_user_designer`
-- ----------------------------
DROP TABLE IF EXISTS `qj_user_designer`;
CREATE TABLE `qj_user_designer` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `sort` tinyint(4) DEFAULT '0' COMMENT '排序',
  `introduce` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '设计师介绍',
  `design_style` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '设计风格',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of qj_user_designer
-- ----------------------------
INSERT INTO `qj_user_designer` VALUES ('1', '0', '0', 'WOMEN', '1991-01-01', '2016-05-14 16:25:42', '2016-05-14 16:25:47');
INSERT INTO `qj_user_designer` VALUES ('2', '0', '0', 'UNKNOW', '1991-01-01', '2016-05-15 15:32:17', '2016-05-15 15:32:17');
INSERT INTO `qj_user_designer` VALUES ('3', '3', '0', 'WOMEN', '1992-02-02', '2016-05-15 16:55:11', '2016-05-15 17:01:39');
INSERT INTO `qj_user_designer` VALUES ('4', '5', '0', '设计师1的介绍22224444', '设计师1的设计风格介66666', '2016-05-15 17:40:11', '2016-05-15 20:48:27');

-- ----------------------------
-- Table structure for `qj_userinfo`
-- ----------------------------
DROP TABLE IF EXISTS `qj_userinfo`;
CREATE TABLE `qj_userinfo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `sex` enum('UNKNOW','MAN','WOMEN') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'UNKNOW',
  `birthday` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `height` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '身高',
  `shape` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '体型',
  `weight` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '体重',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of qj_userinfo
-- ----------------------------
INSERT INTO `qj_userinfo` VALUES ('1', '1', 'WOMEN', '1991-01-01', '', '胖', '', '2016-05-14 16:25:42', '2016-05-14 16:25:47');
INSERT INTO `qj_userinfo` VALUES ('2', '2', 'UNKNOW', '1991-01-01', '136', '瘦', '100', '2016-05-15 15:32:17', '2016-05-15 15:32:17');
INSERT INTO `qj_userinfo` VALUES ('3', '3', 'WOMEN', '1992-02-02', '', '', '', '2016-05-15 16:55:11', '2016-05-15 17:01:39');
INSERT INTO `qj_userinfo` VALUES ('4', '6', 'UNKNOW', null, null, null, null, null, null);
INSERT INTO `qj_userinfo` VALUES ('5', '8', 'UNKNOW', null, null, null, null, null, null);
INSERT INTO `qj_userinfo` VALUES ('8', '15', 'UNKNOW', null, null, null, null, null, null);
