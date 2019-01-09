/*
Navicat MySQL Data Transfer

Source Server         : changsha
Source Server Version : 50628
Source Host           : gz-cdb-kgu3wgb3.sql.tencentcdb.com:61915
Source Database       : petro_test

Target Server Type    : MYSQL
Target Server Version : 50628
File Encoding         : 65001

Date: 2018-12-29 09:04:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_log
-- ----------------------------
DROP TABLE IF EXISTS `t_log`;
CREATE TABLE `t_log` (
  `operator` varchar(255) NOT NULL COMMENT '操作员',
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `time` varchar(255) NOT NULL COMMENT '时间',
  `do_what` varchar(255) NOT NULL COMMENT '做了什么事',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_log
-- ----------------------------
