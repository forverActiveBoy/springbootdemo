/*
Navicat MySQL Data Transfer

Source Server         : changsha
Source Server Version : 50628
Source Host           : gz-cdb-kgu3wgb3.sql.tencentcdb.com:61915
Source Database       : petro_test

Target Server Type    : MYSQL
Target Server Version : 50628
File Encoding         : 65001

Date: 2018-12-29 09:03:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sys_resources
-- ----------------------------
DROP TABLE IF EXISTS `sys_resources`;
CREATE TABLE `sys_resources` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `res_code` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '资源编码: 按钮权限根据编码做校验',
  `res_name` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '资源名称',
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父节点ID',
  `res_url` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '菜单地址 res_type=2 时为空',
  `res_icon` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '资源图标',
  `res_type` int(11) DEFAULT NULL COMMENT '资源类型  1:菜单  2:按钮',
  `sort_no` int(11) DEFAULT NULL COMMENT '排序号 越小越靠前',
  `status` int(11) DEFAULT NULL COMMENT '状态 1:有效 0:无效',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `enable_` bit(1) DEFAULT NULL COMMENT '数据有效性 1:有效 0:无效,为0时 不会在系统中查询出来',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='系统资源表-菜单权限+按钮权限';

-- ----------------------------
-- Records of sys_resources
-- ----------------------------
INSERT INTO `sys_resources` VALUES ('1', 'MR1001', '油站管理', '0', '', null, '1', '1', '1', '1', '2018-06-19 10:44:45', '');
INSERT INTO `sys_resources` VALUES ('3', 'MR3001', '会员管理', '0', null, null, '1', '3', '2', '1', '2018-06-19 10:44:45', '');
INSERT INTO `sys_resources` VALUES ('4', 'MR4001', '发票管理', '0', null, null, '1', '4', '1', '1', '2018-06-19 10:44:45', '');
INSERT INTO `sys_resources` VALUES ('5', 'MR5001', '交易管理', '0', null, null, '1', '5', '1', '1', '2018-06-19 10:44:45', '');
INSERT INTO `sys_resources` VALUES ('6', 'MR6001', '数据统计', '0', null, null, '1', '6', '1', '1', '2018-06-19 10:44:45', '');
INSERT INTO `sys_resources` VALUES ('7', 'MR7001', '系统管理', '0', null, null, '1', '7', '1', '1', '2018-06-19 10:44:45', '');
INSERT INTO `sys_resources` VALUES ('8', 'MR1011', '公司管理', '1', '/bmmerchant/list.htm', '1', '1', '2', '1', '1', '2018-06-19 10:44:45', '');
INSERT INTO `sys_resources` VALUES ('9', 'MR1012', '加油站管理', '1', '/bmgasstation/list.htm', null, '1', '3', '1', '1', '2018-06-19 10:44:45', '');
INSERT INTO `sys_resources` VALUES ('10', 'MR1013', '油机管理', '1', '/bmgasmachine/list.htm', null, '1', '5', '1', '1', '2018-06-19 10:44:45', '');
INSERT INTO `sys_resources` VALUES ('11', 'MR1014', '油枪管理', '1', '/bmgasgun/list.htm', null, '1', '6', '1', '1', '2018-06-19 10:44:45', '');
INSERT INTO `sys_resources` VALUES ('12', 'MR1015', '油品管理', '1', '/bmgasquality/list.htm', null, '1', '4', '1', '1', '2018-06-19 10:44:45', '');
INSERT INTO `sys_resources` VALUES ('13', 'MR1016', '加油工管理', '1', '/bmemployee/list.htm', null, '1', '7', '1', '1', '2018-06-19 10:44:45', '');
INSERT INTO `sys_resources` VALUES ('14', 'MR1017', '用户建议', '1', '/syssuggest/list.htm', null, '1', '9', '1', '1', '2018-06-19 10:44:45', '');
INSERT INTO `sys_resources` VALUES ('15', 'MR1018', '发布资讯', '1', '/bmnews/list.htm', null, '1', '10', '1', '1', '2018-06-19 10:44:45', '');
INSERT INTO `sys_resources` VALUES ('17', 'MR3011', '会员列表', '3', '/bmmember/list.htm', null, '1', '1', '1', '1', '2018-06-19 10:44:45', '');
INSERT INTO `sys_resources` VALUES ('18', 'MR3012', '车主列表', '3', '/bmmemberinfo/list.htm', null, '1', '2', '1', '1', '2018-06-19 10:44:45', '');
INSERT INTO `sys_resources` VALUES ('19', 'MR4011', '开票总览', '4', null, null, '1', '1', '1', '1', '2018-06-19 10:44:45', '');
INSERT INTO `sys_resources` VALUES ('20', 'MR4012', '发票列表', '4', '', null, '1', '1', '1', '1', '2018-06-19 10:44:45', '');
INSERT INTO `sys_resources` VALUES ('21', 'MR4013', '办税配置', '4', null, null, '1', '1', '1', '1', '2018-06-19 10:44:45', '');
INSERT INTO `sys_resources` VALUES ('23', 'MR5012', '平台结算记录', '5', '/bmsettlementbill/list.htm', null, '1', '6', '1', '1', '2018-06-19 10:44:45', '');
INSERT INTO `sys_resources` VALUES ('24', 'MR5013', '公司结算记录', '5', '/bmsettlementbill/merchant/list.htm', null, '1', '5', '1', '1', '2018-06-19 10:44:45', '');
INSERT INTO `sys_resources` VALUES ('25', 'MR5014', '交易明细查询', '5', '/bmgaspaydetail/list.htm', null, '1', '2', '1', '1', '2018-06-19 10:44:45', '');
INSERT INTO `sys_resources` VALUES ('26', 'MR5015', '交易订单查询', '5', '/bmgasorder/list.htm', null, '1', '1', '1', '1', '2018-06-19 10:44:45', '');
INSERT INTO `sys_resources` VALUES ('27', 'MR5016', '公司资金划付查询', '5', '/bmpayorder/list.htm', null, '1', '7', '1', '1', '2018-06-19 10:44:45', '');
INSERT INTO `sys_resources` VALUES ('28', 'MR6011', '统计总览', '6', '/bmstatisoverview/overview.htm', null, '1', '6', '1', '1', '2018-06-19 10:44:45', '');
INSERT INTO `sys_resources` VALUES ('29', 'MR6012', '消费统计', '6', '/bmstatisorder/list.htm', null, '1', '5', '1', '1', '2018-06-19 10:44:45', '');
INSERT INTO `sys_resources` VALUES ('30', 'MR6013', '公司统计', '6', '/bmstatismerchant/list.htm', null, '1', '4', '1', '1', '2018-06-19 10:44:45', '');
INSERT INTO `sys_resources` VALUES ('31', 'MR6014', '油站统计', '6', '/bmstatisstation/list.htm', null, '1', '3', '1', '1', '2018-06-19 10:44:45', '');
INSERT INTO `sys_resources` VALUES ('32', 'MR6015', '油机统计', '6', '/bmstatismachine/list.htm', null, '1', '2', '1', '1', '2018-06-19 10:44:45', '');
INSERT INTO `sys_resources` VALUES ('33', 'MR6016', '油枪统计', '6', '/bmstatisgun/list.htm', null, '1', '1', '1', '1', '2018-06-19 10:44:45', '');
INSERT INTO `sys_resources` VALUES ('34', 'MR6017', '油品统计', '6', '/bmstatisquality/list.htm', null, '1', '7', '1', '1', '2018-06-19 10:44:45', '');
INSERT INTO `sys_resources` VALUES ('35', 'MR7011', '登录日志', '7', '/sysloginlog/list.htm', null, '1', '1', '1', '1', '2018-06-19 10:44:45', '');
INSERT INTO `sys_resources` VALUES ('36', 'MR7012', '操作日志', '7', '/sysoperationlog/list.htm', null, '1', '2', '1', '1', '2018-06-19 10:44:45', '');
INSERT INTO `sys_resources` VALUES ('37', 'MR7013', '资讯审核', '7', '/bmnews/checklist.htm', null, '1', '3', '1', '1', '2018-06-19 10:44:45', '');
INSERT INTO `sys_resources` VALUES ('40', 'MR7016', '管理员', '7', '/sysadmin/list.htm', null, '1', '6', '1', '1', '2018-06-19 10:44:45', '');
INSERT INTO `sys_resources` VALUES ('41', 'MR7017', '权限管理', '7', '/sysrole/list.htm', null, '1', '7', '1', '1', '2018-06-19 10:44:45', '');
INSERT INTO `sys_resources` VALUES ('42', 'MR7018', '菜单管理', '7', '/sysresources/list.htm', '', '1', '8', '1', '1', '2018-06-19 10:44:45', '');
INSERT INTO `sys_resources` VALUES ('43', 'bm:merchant:add', '添加公司', '8', '', '', '2', '2', '1', '1', '2018-06-19 10:44:45', '');
INSERT INTO `sys_resources` VALUES ('44', 'bm:merchant:del', '删除公司', '8', '', '', '2', '3', '1', '1', '2018-06-19 10:44:45', '');
INSERT INTO `sys_resources` VALUES ('45', 'bm:merchant:edit', '编辑公司', '8', '', '', '2', '2', '1', '1', '2018-07-18 17:14:24', '');
INSERT INTO `sys_resources` VALUES ('48', 'MR1011', '商会管理', '1', '/bmagent/list.htm', null, '1', '1', '1', '1', '2018-07-19 09:59:55', '');
INSERT INTO `sys_resources` VALUES ('49', 'bm:agent:list', '查询商会', '48', '', null, '2', '1', '1', '1', '2018-07-23 08:43:32', '');
INSERT INTO `sys_resources` VALUES ('50', 'bm:agent:del', '删除商会', '48', '', null, '1', '4', null, '9', '2018-07-23 09:22:08', '');
INSERT INTO `sys_resources` VALUES ('51', 'bm:agent:add', '添加商会', '48', '', null, '2', '2', null, '9', '2018-07-23 09:35:59', '');
INSERT INTO `sys_resources` VALUES ('52', 'bm:agent:edit', '编辑商会', '48', '', null, '2', '3', null, '9', '2018-07-23 09:37:07', '');
INSERT INTO `sys_resources` VALUES ('53', 'bm:gasstation:add', '添加加油站', '9', '', null, '2', '2', null, '1', '2018-07-23 10:35:06', '');
INSERT INTO `sys_resources` VALUES ('54', 'sys:admin:add', '添加管理员', '40', '', null, '2', '1', null, '1', '2018-07-23 10:35:59', '');
INSERT INTO `sys_resources` VALUES ('55', 'sys:admin:edit', '编辑管理员', '40', '', null, '2', '2', null, '1', '2018-07-23 10:36:35', '');
INSERT INTO `sys_resources` VALUES ('56', 'sys:admin:list', '查询管理员', '40', '', null, '2', '1', null, '1', '2018-07-23 10:37:14', '');
INSERT INTO `sys_resources` VALUES ('57', 'sys:admin:del', '删除管理员', '40', '', null, '2', '4', null, '1', '2018-07-23 10:37:59', '');
INSERT INTO `sys_resources` VALUES ('58', 'sys:role:add', '添加权限', '41', '', null, '2', '1', null, '1', '2018-07-23 10:38:26', '');
INSERT INTO `sys_resources` VALUES ('59', 'sys:role:list', '查询权限', '41', '', null, '2', '2', null, '1', '2018-07-23 10:38:51', '');
INSERT INTO `sys_resources` VALUES ('60', 'sys:role:edit', '编辑权限', '41', '', null, '2', '3', null, '1', '2018-07-23 10:39:14', '');
INSERT INTO `sys_resources` VALUES ('61', 'sys:role:del', '删除权限', '41', '', null, '2', '4', null, '1', '2018-07-23 10:39:47', '');
INSERT INTO `sys_resources` VALUES ('62', 'sys:resources:add', '添加菜单', '42', '', null, '2', '1', null, '1', '2018-07-23 10:40:13', '');
INSERT INTO `sys_resources` VALUES ('63', 'sys:resources:list', '查询菜单', '42', '', null, '2', '2', null, '1', '2018-07-23 10:40:35', '');
INSERT INTO `sys_resources` VALUES ('64', 'sys:resources:edit', '编辑菜单', '42', '', null, '2', '3', null, '1', '2018-07-23 10:41:17', '');
INSERT INTO `sys_resources` VALUES ('65', 'sys:resources:del', '删除菜单', '42', '', null, '2', '4', null, '1', '2018-07-23 10:41:44', '');
INSERT INTO `sys_resources` VALUES ('66', 'bm:gasstation:edit', '编辑加油站', '9', '', null, '2', '3', null, '1', '2018-07-24 19:41:48', '');
INSERT INTO `sys_resources` VALUES ('67', 'bm:gasstation:del', '删除加油站', '9', '', null, '2', '4', null, '1', '2018-07-24 19:46:58', '');
INSERT INTO `sys_resources` VALUES ('68', 'bm:merchant:list', '查询公司', '8', '', null, '2', '1', null, '1', '2018-07-24 20:03:46', '');
INSERT INTO `sys_resources` VALUES ('69', 'bm:gasstation:list', '查询加油站', '9', '', null, '2', '1', null, '1', '2018-07-24 20:10:35', '');
INSERT INTO `sys_resources` VALUES ('70', 'bm:gasmachine:list', '查询油机', '10', '', null, '2', '1', null, '1', '2018-07-24 20:11:46', '');
INSERT INTO `sys_resources` VALUES ('71', 'bm:gasmachine:add', '添加油机', '10', '', null, '2', '2', null, '1', '2018-07-24 20:15:40', '');
INSERT INTO `sys_resources` VALUES ('72', 'bm:gasmachine:edit', '编辑油机', '10', '', null, '2', '3', null, '1', '2018-07-24 20:16:08', '');
INSERT INTO `sys_resources` VALUES ('73', 'bm:gasmachine:del', '删除油机', '10', '', null, '2', '4', null, '1', '2018-07-24 20:17:46', '');
INSERT INTO `sys_resources` VALUES ('74', 'bm:gasgun:list', '查询油枪', '11', '', null, '2', '1', null, '1', '2018-07-24 20:18:17', '');
INSERT INTO `sys_resources` VALUES ('75', 'bm:gasgun:add', '添加油枪', '11', '', null, '2', '2', null, '1', '2018-07-24 20:18:45', '');
INSERT INTO `sys_resources` VALUES ('76', 'bm:gasgun:edit', '编辑油枪', '11', '', null, '2', '3', null, '1', '2018-07-24 20:19:19', '');
INSERT INTO `sys_resources` VALUES ('77', 'bm:gasgun:del', '删除油枪', '11', '', null, '2', '4', null, '1', '2018-07-24 20:19:53', '');
INSERT INTO `sys_resources` VALUES ('78', 'bm:gasquality:list', '查询油品', '12', '', null, '2', '1', null, '1', '2018-07-24 20:20:23', '');
INSERT INTO `sys_resources` VALUES ('79', 'bm:gasquality:add', '添加油品', '12', '', null, '2', '2', null, '1', '2018-07-24 20:21:16', '');
INSERT INTO `sys_resources` VALUES ('80', 'bm:gasquality:edit', '编辑油品', '12', '', null, '2', '3', null, '1', '2018-07-24 20:22:16', '');
INSERT INTO `sys_resources` VALUES ('81', 'bm:gasquality:del', '删除油品', '12', '', null, '2', '4', null, '1', '2018-07-24 20:22:47', '');
INSERT INTO `sys_resources` VALUES ('82', 'bm:employee:list', '查询员工', '13', '', null, '2', '1', null, '1', '2018-07-24 20:23:30', '');
INSERT INTO `sys_resources` VALUES ('83', 'bm:employee:add', '添加员工', '13', '', null, '2', '2', null, '1', '2018-07-24 20:23:55', '');
INSERT INTO `sys_resources` VALUES ('84', 'bm:employee:edit', '编辑员工', '13', '', null, '2', '3', null, '1', '2018-07-24 20:31:41', '');
INSERT INTO `sys_resources` VALUES ('85', 'bm:employee:del', '删除员工', '13', '', null, '2', '4', null, '1', '2018-07-24 20:32:10', '');
INSERT INTO `sys_resources` VALUES ('86', 'sys:suggest:list', '查询建议', '14', '', null, '2', '1', null, '1', '2018-07-24 20:33:36', '');
INSERT INTO `sys_resources` VALUES ('87', 'sys:suggest:reply', '回复建议', '14', '', null, '2', '2', null, '1', '2018-07-24 20:34:06', '');
INSERT INTO `sys_resources` VALUES ('88', 'bm:news:list', '查询资讯', '15', '', null, '2', '1', null, '1', '2018-07-24 20:35:32', '');
INSERT INTO `sys_resources` VALUES ('89', 'bm:news:add', '添加资讯', '15', '', null, '2', '2', null, '1', '2018-07-24 20:36:22', '');
INSERT INTO `sys_resources` VALUES ('90', 'bm:news:edit', '修改资讯', '15', '', null, '2', '3', null, '1', '2018-07-24 20:37:12', '');
INSERT INTO `sys_resources` VALUES ('91', 'bm:news:del', '删除资讯', '15', '', null, '2', '4', null, '1', '2018-07-24 20:37:42', '');
INSERT INTO `sys_resources` VALUES ('92', 'bm:member:list', '查看会员', '17', '', null, '2', '1', null, '1', '2018-07-24 20:40:35', '');
INSERT INTO `sys_resources` VALUES ('93', 'bm:member:edit', '编辑会员', '17', '', null, '2', '2', null, '1', '2018-07-24 20:41:05', '');
INSERT INTO `sys_resources` VALUES ('94', 'bm:member:del', '删除会员', '17', '', null, '2', '3', null, '1', '2018-07-24 20:41:36', '');
INSERT INTO `sys_resources` VALUES ('95', 'bm:memberinfo:list', '查看车主信息', '18', '', null, '2', '1', null, '1', '2018-07-24 20:42:19', '');
INSERT INTO `sys_resources` VALUES ('96', 'bm:memberinfo:edit', '编辑车主信息', '18', '', null, '2', '2', null, '1', '2018-07-24 20:42:51', '');
INSERT INTO `sys_resources` VALUES ('97', 'bm:memberinfo:del', '删除车主信息', '18', '', null, '2', '3', null, '1', '2018-07-24 20:43:21', '');
INSERT INTO `sys_resources` VALUES ('98', 'bm:gasorder:detail', '订单详情', '26', '', null, '2', '1', null, '1', '2018-07-30 13:27:13', '');
INSERT INTO `sys_resources` VALUES ('99', 'bm:payorder:detail', '代付记录详情', '27', '', null, '2', '2', null, '1', '2018-07-31 15:42:34', '');
INSERT INTO `sys_resources` VALUES ('100', 'bm:settlementbill:merchant:poi', '下载已结算账单', '24', '', null, '2', '1', null, '1', '2018-08-01 14:39:44', '');
INSERT INTO `sys_resources` VALUES ('112', 'MB8001', '优惠券管理', '0', '/bmcoupon/list.htm', null, '1', '2', null, '1', '2018-08-22 14:15:39', '');
INSERT INTO `sys_resources` VALUES ('113', 'MB8011', '优惠券列表', '112', '/bmcoupon/list.htm', null, '1', '1', null, '1', '2018-08-22 14:17:34', '');
INSERT INTO `sys_resources` VALUES ('114', 'bm:bmcoupon:edit', '编辑优惠券', '113', '', null, '2', '2', null, '1', '2018-08-22 14:18:39', '\0');
INSERT INTO `sys_resources` VALUES ('115', 'bm:bmcoupon:del', '删除优惠券', '113', '', null, '2', '2', null, '1', '2018-08-22 14:19:50', '\0');
INSERT INTO `sys_resources` VALUES ('116', 'bm:bmcoupon:add', '添加优惠券', '113', '', null, '2', '3', null, '1', '2018-08-22 14:20:17', '');
INSERT INTO `sys_resources` VALUES ('117', 'bm:bmcoupon:list', '查看优惠券', '113', '', null, '2', '4', null, '1', '2018-08-22 14:21:00', '');
INSERT INTO `sys_resources` VALUES ('120', 'bm:bmmemberinvoice:list', '查询发票列表', '20', '', null, '2', '2', null, '1', '2018-08-27 14:23:48', '');
INSERT INTO `sys_resources` VALUES ('121', 'bm:news:check', '审核资讯', '15', '', null, '2', '5', null, '1', '2018-09-14 10:17:16', '');
INSERT INTO `sys_resources` VALUES ('122', 'bm:statisorder:detail', '消费统计详情', '29', '', null, '2', '1', null, '1', '2018-09-14 17:34:25', '');
INSERT INTO `sys_resources` VALUES ('123', 'bm:statismerchant:detail', '公司统计详情', '30', '', null, '2', '1', null, '1', '2018-09-14 17:35:47', '');
INSERT INTO `sys_resources` VALUES ('124', 'bm:statisstation:detail', '油站统计详情', '31', '', null, '2', '1', null, '1', '2018-09-14 17:45:43', '');
INSERT INTO `sys_resources` VALUES ('125', 'bm:statismachine:detail', '油机统计详情', '32', '', null, '2', '1', null, '1', '2018-09-14 17:46:43', '');
INSERT INTO `sys_resources` VALUES ('126', 'bm:statisgun:detail', '油枪统计详情', '33', '', null, '2', '1', null, '1', '2018-09-14 17:47:13', '');
INSERT INTO `sys_resources` VALUES ('127', 'bm:statisquality:detail', '油品统计详情', '34', '', null, '2', '1', null, '1', '2018-09-14 17:47:57', '');
INSERT INTO `sys_resources` VALUES ('128', 'bm:settlementbill:poi', '下载平台资金账单', '23', '', null, '2', '1', null, '1', '2018-09-15 11:37:36', '');
INSERT INTO `sys_resources` VALUES ('129', 'MR1019', '加油工签到管理', '1', '/bmemployeesign/list.htm', '', '1', '8', '1', '1', '2018-06-19 10:44:45', '');
INSERT INTO `sys_resources` VALUES ('133', 'MR1020', '商会管理员', '1', '/bmadmin/agentadmin.htm', '', '1', '12', '1', '1', '2018-09-26 10:44:45', '');
INSERT INTO `sys_resources` VALUES ('134', 'MR1021', '公司管理员', '1', '/bmadmin/merchantadmin.htm', '', '1', '13', '1', '1', '2018-09-26 10:44:45', '');
INSERT INTO `sys_resources` VALUES ('135', 'MR1022', '油站管理员', '1', '/bmadmin/stationadmin.htm', '', '1', '14', '1', '1', '2018-09-26 10:44:45', '');
INSERT INTO `sys_resources` VALUES ('136', 'bm:agentadmin:list', '查看商会管理员', '133', '', null, '2', '1', null, '1', '2018-09-26 22:25:24', '');
INSERT INTO `sys_resources` VALUES ('137', 'bm:admin:edit', '编辑商会管理员', '133', '', null, '2', '2', null, '1', '2018-09-26 22:25:57', '');
INSERT INTO `sys_resources` VALUES ('138', 'bm:merchantadmin:list', '查看公司管理员', '134', '', null, '2', '1', '1', '1', '2018-09-26 22:27:45', '');
INSERT INTO `sys_resources` VALUES ('139', 'bm:admin:edit', '编辑公司管理员', '134', '', null, '2', '2', '1', '1', '2018-09-26 22:28:34', '');
INSERT INTO `sys_resources` VALUES ('140', 'bm:stationadmin:list', '查看油站管理员', '135', '', null, '2', '1', null, '1', '2018-09-26 22:29:06', '');
INSERT INTO `sys_resources` VALUES ('141', 'bm:admin:edit', '编辑油站管理员', '135', '', null, '2', '2', null, '1', '2018-09-26 22:29:33', '');
INSERT INTO `sys_resources` VALUES ('142', 'bm:employeesign:list', '加油工签到查询', '129', '', null, '2', '1', null, '1', '2018-10-08 14:03:06', '');
INSERT INTO `sys_resources` VALUES ('145', 'MR5017', '平账管理', '5', '/bmsettlementerror/list.htm', null, '1', '9', null, '1', '2018-10-25 10:22:46', '');
INSERT INTO `sys_resources` VALUES ('147', 'bm:settlementbill:errorlist', '差异列表', '145', '', null, '2', '1', null, '1', '2018-10-25 10:26:19', '');
INSERT INTO `sys_resources` VALUES ('148', 'bm:settlementbill:errordetail', '查看详情', '145', '', null, '2', '2', null, '1', '2018-10-25 10:27:19', '');
INSERT INTO `sys_resources` VALUES ('149', 'bm:settlementbill:errordeal', '立即处理', '145', '', null, '2', '3', null, '1', '2018-10-25 10:27:54', '');
INSERT INTO `sys_resources` VALUES ('151', 'MR5018', '油站日账单', '5', '/bmdetailstation/list.htm', null, '1', '4', null, '1', '2018-10-26 14:55:03', '');
INSERT INTO `sys_resources` VALUES ('152', 'bm:detailstation:list', '查询油站日账单', '151', '', null, '2', '1', null, '1', '2018-10-26 14:57:29', '');
INSERT INTO `sys_resources` VALUES ('153', 'MR5017', '公司日账单', '5', '/bmdetailmerchant/list.htm', null, '1', '3', null, '1', '2018-10-26 16:20:00', '');
INSERT INTO `sys_resources` VALUES ('154', 'MR5017', '资金账单', '5', '/bmcapitalbill/list.htm', null, '1', '8', null, '1', '2018-10-30 12:52:26', '');
INSERT INTO `sys_resources` VALUES ('155', 'bm:capitalbill:list', '资金账单查询', '154', '/bmcapitalbill/list.htm', null, '2', '1', null, '1', '2018-10-30 12:53:26', '');
INSERT INTO `sys_resources` VALUES ('157', 'bm:agentadmin:test', '测试商会', '48', '', null, '2', '7', null, '1', '2018-11-06 17:59:42', '\0');
INSERT INTO `sys_resources` VALUES ('158', 'MB8012', '领取列表', '112', '/bmcoupon/listrecord.htm', null, '1', '2', null, '1', '2018-11-07 10:18:48', '');
INSERT INTO `sys_resources` VALUES ('159', 'MB1019', '打印机管理', '1', '/bmprinter/list.htm', null, '1', '7', null, '1', '2018-11-21 18:20:54', '');
INSERT INTO `sys_resources` VALUES ('160', 'bm:printer:list', '查看打印机', '159', '', null, '2', '1', null, '1', '2018-11-21 18:23:12', '');
INSERT INTO `sys_resources` VALUES ('161', 'bm:printer:add', '添加打印机', '159', null, null, '2', '2', '1', '1', '2018-11-21 18:24:03', '');
INSERT INTO `sys_resources` VALUES ('162', 'bm:printer:edit', '编辑打印机', '159', null, null, '2', '3', '1', '1', '2018-11-21 18:24:36', '');
INSERT INTO `sys_resources` VALUES ('163', 'bm:printer:del', '删除打印机', '159', null, null, '2', '4', '1', '1', '2018-11-21 18:25:26', '');
INSERT INTO `sys_resources` VALUES ('164', 'sys:demo:list', '测试', '3', '/bm/demo.htm', null, '1', '778', null, '346', '2018-12-10 11:26:57', '\0');
INSERT INTO `sys_resources` VALUES ('165', 'MR5014', '班交易明细查询', '5', '/bmgaspaydetail/team/list.htm', null, '1', '5', null, '515', '2018-12-10 15:07:32', '\0');
INSERT INTO `sys_resources` VALUES ('166', 'bm:bmcoupon:edit', '编辑优惠券', '113', '/bmcoupon/edit.htm', null, '2', '2', null, '363', '2018-12-11 17:02:58', '\0');
INSERT INTO `sys_resources` VALUES ('167', 'bm:bmcoupon:able', '启用或禁用优惠券', '113', '', null, '2', '2', null, '363', '2018-12-11 17:03:51', '');
INSERT INTO `sys_resources` VALUES ('168', 'bm:bmcoupon:edit', '121', '112', '/bmcoupon/list.htm', null, '2', '4', null, '363', '2018-12-11 17:06:23', '\0');
INSERT INTO `sys_resources` VALUES ('169', '1', '1', '48', '', null, null, null, null, '363', '2018-12-11 17:07:14', '\0');
INSERT INTO `sys_resources` VALUES ('170', '1', '1', '48', '', null, null, null, null, '363', '2018-12-11 17:08:49', '\0');
INSERT INTO `sys_resources` VALUES ('171', '1', '2', '48', '', null, '1', '1', null, '363', '2018-12-11 17:16:17', '\0');
INSERT INTO `sys_resources` VALUES ('172', 'qewqe', 'qweqe', '48', 'qweqwe', null, null, '1212', null, '1', '2018-12-11 18:15:48', '\0');
INSERT INTO `sys_resources` VALUES ('173', 'wefwef', 'fewf', '48', 'wefwef', null, null, '23', null, '1', '2018-12-11 18:16:47', '\0');
INSERT INTO `sys_resources` VALUES ('174', '2112', '121212', '48', '21121', null, null, '1212', null, '1', '2018-12-11 18:18:10', '\0');
INSERT INTO `sys_resources` VALUES ('175', 'weew', 'fwefewfwef', '48', 'qww', null, '2', '12', null, '1', '2018-12-11 18:18:42', '\0');
INSERT INTO `sys_resources` VALUES ('176', '121', '211', '48', '1212', null, '1', '12', null, '1', '2018-12-11 18:28:28', '\0');
INSERT INTO `sys_resources` VALUES ('177', 'efwef', 'fewffe', '48', 'fwefwefwefwe', null, '2', '12', null, '1', '2018-12-11 18:29:14', '\0');
INSERT INTO `sys_resources` VALUES ('178', '122131', '12312', '48', '', null, '2', '123123', null, '1', '2018-12-12 10:31:58', '\0');
INSERT INTO `sys_resources` VALUES ('179', 'qweqwe', 'qweqwe', '48', '', null, '2', '12', null, '1', '2018-12-12 11:08:21', '\0');
INSERT INTO `sys_resources` VALUES ('180', '12', '12', '48', '', null, '2', '21', null, '1', '2018-12-12 11:25:08', '\0');
INSERT INTO `sys_resources` VALUES ('181', '11', '11', '48', '/bmcoupon/list.htm', null, '2', '2', null, '363', '2018-12-12 13:59:24', '\0');
INSERT INTO `sys_resources` VALUES ('182', '1', '1', '48', '2121', null, '2', null, null, '363', '2018-12-12 14:00:35', '\0');
INSERT INTO `sys_resources` VALUES ('183', 'MR5014', '班交易明细查询', '5', '/bmgaspaydetail/team/list.htm', null, '1', '5', null, '515', '2018-12-12 18:46:13', '');
INSERT INTO `sys_resources` VALUES ('184', '1', '1', '48', '', null, '2', null, null, '363', '2018-12-13 15:33:37', '\0');
INSERT INTO `sys_resources` VALUES ('185', '1', '1', '48', '133', null, '2', null, null, '363', '2018-12-13 15:36:32', '\0');
INSERT INTO `sys_resources` VALUES ('186', '11', '2', '48', '1', null, '2', null, null, '363', '2018-12-13 15:45:13', '\0');
