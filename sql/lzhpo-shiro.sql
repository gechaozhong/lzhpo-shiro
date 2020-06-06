/*
 Navicat Premium Data Transfer

 Source Server         : 47.105.190.121
 Source Server Type    : MySQL
 Source Server Version : 50644
 Source Host           : 47.105.190.121:3306
 Source Schema         : lzhpo-shiro

 Target Server Type    : MySQL
 Target Server Version : 50644
 File Encoding         : 65001

 Date: 06/06/2020 23:46:26
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for busi_labor_employment
-- ----------------------------
DROP TABLE IF EXISTS `busi_labor_employment`;
CREATE TABLE `busi_labor_employment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `organization_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `sequence` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `sex` char(4) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `id_card` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `working_years` int(11) NULL DEFAULT NULL,
  `work_type` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `special_work_type` varchar(4) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `work_start_date` date NULL DEFAULT NULL,
  `work_end_date` date NULL DEFAULT NULL,
  `classification_registered_employees` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `migrant_worker_or_not` varchar(4) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `disability_or_not` varchar(4) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 78 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of busi_labor_employment
-- ----------------------------
INSERT INTO `busi_labor_employment` VALUES (56, '23455', '234', 'liu', '男', '412825198659682095', 5, '单位负责人', '是', '2011-09-08', '2018-06-09', '在岗', '是', '是');
INSERT INTO `busi_labor_employment` VALUES (57, '23455', 'A45A', 'liu', '男', '412825198659682095', 6, '管理人员', '否', '2011-09-09', '2018-06-10', '新招', '否', '否');
INSERT INTO `busi_labor_employment` VALUES (68, '23466', '234', 'liu555', '男', '412825198659682095', 5, '单位负责人', '是', '2011-09-08', '2018-06-09', '在岗', '是', '是');
INSERT INTO `busi_labor_employment` VALUES (69, '23466', 'A45A', 'liueee555', '男', '412825198659682095', 6, '管理人员', '否', '2011-09-09', '2018-06-10', '新招', '否', '否');
INSERT INTO `busi_labor_employment` VALUES (70, '888888', '234', 'liu555', '男', '412825198659682095', 5, '单位负责人', '是', '2011-09-08', '2018-06-09', '在岗', '是', '是');
INSERT INTO `busi_labor_employment` VALUES (71, '888888', 'A45A', 'liueee555', '男', '412825198659682095', 6, '管理人员', '否', '2011-09-09', '2018-06-10', '新招', '否', '否');
INSERT INTO `busi_labor_employment` VALUES (72, '999999', '234', 'liu555', '男', '412825198659682095', 5, '单位负责人', '是', '2011-09-08', '2018-06-09', '在岗', '是', '是');
INSERT INTO `busi_labor_employment` VALUES (73, '999999', 'A45A', 'liueee555', '男', '412825198659682095', 6, '管理人员', '否', '2011-09-09', '2018-06-10', '新招', '否', '否');
INSERT INTO `busi_labor_employment` VALUES (74, '88888834', '234', '88888834A', '男', '412825198659682095', 5, '单位负责人', '是', '2011-09-08', '2018-06-09', '在岗', '是', '是');
INSERT INTO `busi_labor_employment` VALUES (75, '88888834', 'A45A', '88888834B', '男', '412825198659682095', 6, '管理人员', '否', '2011-09-09', '2018-06-10', '新招', '否', '否');
INSERT INTO `busi_labor_employment` VALUES (76, '66666', '234', '6666634A', '男', '412825198659682095', 5, '单位负责人', '是', '2011-09-08', '2018-06-09', '在岗', '是', '是');
INSERT INTO `busi_labor_employment` VALUES (77, '66666', 'A45A', '6666634B', '男', '412825198659682095', 6, '管理人员', '否', '2011-09-09', '2018-06-10', '新招', '否', '否');

-- ----------------------------
-- Table structure for busi_resigned_employees
-- ----------------------------
DROP TABLE IF EXISTS `busi_resigned_employees`;
CREATE TABLE `busi_resigned_employees`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `organization_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `sequence` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `sex` char(4) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `id_card` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `working_years` int(11) NULL DEFAULT NULL,
  `category_termination_contract` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `reason_for_change` varchar(4) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `labor_contract_start_date` date NULL DEFAULT NULL,
  `labor_contract_end_date` date NULL DEFAULT NULL,
  `relieve_labor_contract_end_date` date NULL DEFAULT NULL,
  `whether_pay_compensation` varchar(4) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `compensation_amount` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of busi_resigned_employees
-- ----------------------------
INSERT INTO `busi_resigned_employees` VALUES (7, '23455', '344', '555.0', '女', '111115555598789654', 4, '终止', '单位辞退', '1957-02-05', '2014-09-08', '2014-09-08', '是', '53.6');
INSERT INTO `busi_resigned_employees` VALUES (8, '23455', '224', '你好', '女', '111115555598789657', 6, '解除', '工作调转', '1957-02-08', '2017-09-08', '2017-09-13', '否', '4567.0');
INSERT INTO `busi_resigned_employees` VALUES (19, '23466', '344', 'eeee', '女', '111115555598789654', 4, '终止', '单位辞退', '1957-02-05', '2014-09-08', '2014-09-08', '是', '53.6');
INSERT INTO `busi_resigned_employees` VALUES (20, '23466', '224', 'eeeee55', '女', '111115555598789657', 6, '解除', '工作调转', '1957-02-08', '2017-09-08', '2017-09-13', '否', '6666.0');
INSERT INTO `busi_resigned_employees` VALUES (21, '888888', '344', 'eeee', '女', '111115555598789654', 4, '终止', '单位辞退', '1957-02-05', '2014-09-08', '2014-09-08', '是', '53.6');
INSERT INTO `busi_resigned_employees` VALUES (22, '888888', '224', 'eeeee55', '女', '111115555598789657', 6, '解除', '工作调转', '1957-02-08', '2017-09-08', '2017-09-13', '否', '6666.0');
INSERT INTO `busi_resigned_employees` VALUES (23, '999999', '344', 'eeee', '女', '111115555598789654', 4, '终止', '单位辞退', '1957-02-05', '2014-09-08', '2014-09-08', '是', '53.6');
INSERT INTO `busi_resigned_employees` VALUES (24, '999999', '224', 'eeeee55', '女', '111115555598789657', 6, '解除', '工作调转', '1957-02-08', '2017-09-08', '2017-09-13', '否', '6666.0');
INSERT INTO `busi_resigned_employees` VALUES (25, '88888834', '344', 'eeee88888834', '女', '111115555598789654', 4, '终止', '单位辞退', '1957-02-05', '2014-09-08', '2014-09-08', '是', '53.6');
INSERT INTO `busi_resigned_employees` VALUES (26, '88888834', '224', 'eeeee5588888834', '女', '111115555598789657', 6, '解除', '工作调转', '1957-02-08', '2017-09-08', '2017-09-13', '否', '6666.0');
INSERT INTO `busi_resigned_employees` VALUES (27, '66666', '344', '6.6666834E7', '女', '111115555598789654', 4, '终止', '单位辞退', '1957-02-05', '2014-09-08', '2014-09-08', '是', '53.6');
INSERT INTO `busi_resigned_employees` VALUES (28, '66666', '224', '6.666688834E9', '女', '111115555598789657', 6, '解除', '工作调转', '1957-02-08', '2017-09-08', '2017-09-13', '否', '6666.0');

-- ----------------------------
-- Table structure for busi_summary
-- ----------------------------
DROP TABLE IF EXISTS `busi_summary`;
CREATE TABLE `busi_summary`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sequence` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `organization_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `summary` varchar(2048) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `reviewer` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `passed_or_not` varchar(4) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `submit_date` date NULL DEFAULT NULL,
  `review_date` date NULL DEFAULT NULL,
  `reason_for_not_passed` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `commit` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 102 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of busi_summary
-- ----------------------------
INSERT INTO `busi_summary` VALUES (91, NULL, '23455', '{\"E20\":\"8\",\"D21\":\"13\",\"B22\":\"\\n\\n\\n    1895 年 4  月 4日\",\"D20\":\"6\",\"G20\":\"9\",\"F21\":\"66\",\"F20\":\"8\",\"E21\":\"45\",\"H21\":\"66\",\"H20\":\"9\",\"G21\":\"66\",\"F22\":\"\\n\\n\\n         2054 年   5  月    5 日\",\"G8\":\"6854.0\",\"C8\":\"345555.0\",\"C9\":\"123.5\",\"D10\":\"33\",\"F10\":\"33\",\"D12\":\"99\",\"H10\":\"44\",\"F12\":\"99\",\"F11\":\"77\",\"H12\":\"49.0%\",\"H11\":\"77\",\"H14\":\"4\",\"D18\":\"5\",\"H3\":\"张珊\",\"H13\":\"7\",\"D17\":\"44\",\"F2\":\"\",\"H16\":\"7\",\"F18\":\"6\",\"H15\":\"5\",\"F17\":\"88\",\"F4\":\"李师\",\"H18\":\"6\",\"F5\":\"狗三胡同\",\"H7\":\"02594\",\"H17\":\"99.0%\",\"F6\":\"34533\",\"B3\":\"单位1\",\"H9\":\"0\",\"B4\":\"国有经济\",\"B5\":\"吕梁市是是是\",\"F9\":\"25\",\"B6\":\"23455\",\"B7\":\"文案的肉體faedf\"}', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `busi_summary` VALUES (97, NULL, '23466', '{\"E20\":\"8\",\"D21\":\"13\",\"B22\":\"\\n\\n\\n    1895 年 4  月 4日\",\"D20\":\"6\",\"G20\":\"9\",\"F21\":\"66\",\"F20\":\"8\",\"E21\":\"45\",\"H21\":\"66\",\"H20\":\"9\",\"G21\":\"66\",\"F22\":\"\\n\\n\\n         2054 年   5  月    5 日\",\"G8\":\"6854.0\",\"C8\":\"345555.0\",\"C9\":\"123.5\",\"D10\":\"33\",\"F10\":\"33\",\"D12\":\"99\",\"H10\":\"44\",\"F12\":\"99\",\"F11\":\"77\",\"H12\":\"49.0%\",\"H11\":\"77\",\"H14\":\"4\",\"D18\":\"5\",\"H3\":\"张珊\",\"H13\":\"7\",\"D17\":\"44\",\"F2\":\"\",\"H16\":\"7\",\"F18\":\"6\",\"H15\":\"5\",\"F17\":\"88\",\"F4\":\"李师\",\"H18\":\"6\",\"F5\":\"狗三胡同\",\"H7\":\"02594\",\"H17\":\"99.0%\",\"F6\":\"34533555\",\"B3\":\"单位1\",\"H9\":\"0\",\"B4\":\"国有经济\",\"B5\":\"吕梁市是是是\",\"F9\":\"25\",\"B6\":\"23466\",\"B7\":\"文案的肉體faedf\"}', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `busi_summary` VALUES (98, NULL, '888888', '{\"E20\":\"8\",\"D21\":\"13\",\"B22\":\"\\n\\n\\n    1895 年 4  月 4日\",\"D20\":\"6\",\"G20\":\"9\",\"F21\":\"66\",\"F20\":\"8\",\"E21\":\"45\",\"H21\":\"66\",\"H20\":\"9\",\"G21\":\"66\",\"F22\":\"\\n\\n\\n         2054 年   5  月    5 日\",\"G8\":\"6854.0\",\"C8\":\"345555.0\",\"C9\":\"123.5\",\"D10\":\"33\",\"F10\":\"33\",\"D12\":\"99\",\"H10\":\"44\",\"F12\":\"99\",\"F11\":\"77\",\"H12\":\"49.0%\",\"H11\":\"77\",\"H14\":\"4\",\"D18\":\"5\",\"H3\":\"张珊\",\"H13\":\"7\",\"D17\":\"44\",\"F2\":\"\",\"H16\":\"7\",\"F18\":\"6\",\"H15\":\"5\",\"F17\":\"88\",\"F4\":\"李师\",\"H18\":\"6\",\"F5\":\"狗三胡同\",\"H7\":\"02594\",\"H17\":\"99.0%\",\"F6\":\"34533555\",\"B3\":\"单位1\",\"H9\":\"0\",\"B4\":\"国有经济\",\"B5\":\"吕梁市是是是\",\"F9\":\"25\",\"B6\":\"888888\",\"B7\":\"文案的肉體faedf\"}', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `busi_summary` VALUES (99, NULL, '999999', '{\"E20\":\"8\",\"D21\":\"13\",\"B22\":\"\\n\\n\\n    1895 年 4  月 4日\",\"D20\":\"6\",\"G20\":\"9\",\"F21\":\"66\",\"F20\":\"8\",\"E21\":\"45\",\"H21\":\"66\",\"H20\":\"9\",\"G21\":\"66\",\"F22\":\"\\n\\n\\n         2054 年   5  月    5 日\",\"G8\":\"6854.0\",\"C8\":\"345555.0\",\"C9\":\"123.5\",\"D10\":\"33\",\"F10\":\"33\",\"D12\":\"99\",\"H10\":\"44\",\"F12\":\"99\",\"F11\":\"77\",\"H12\":\"49.0%\",\"H11\":\"77\",\"H14\":\"4\",\"D18\":\"5\",\"H3\":\"张珊\",\"H13\":\"7\",\"D17\":\"44\",\"F2\":\"\",\"H16\":\"7\",\"F18\":\"6\",\"H15\":\"5\",\"F17\":\"88\",\"F4\":\"李师\",\"H18\":\"6\",\"F5\":\"狗三胡同\",\"H7\":\"02594\",\"H17\":\"99.0%\",\"F6\":\"34533555\",\"B3\":\"单位1\",\"H9\":\"0\",\"B4\":\"国有经济\",\"B5\":\"吕梁市是是是\",\"F9\":\"25\",\"B6\":\"999999\",\"B7\":\"文案的肉體faedf\"}', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `busi_summary` VALUES (100, NULL, '88888834', '{\"E20\":\"8\",\"D21\":\"13\",\"B22\":\"\\n\\n\\n    1895 年 4  月 4日\",\"D20\":\"6\",\"G20\":\"9\",\"F21\":\"66\",\"F20\":\"8\",\"E21\":\"45\",\"H21\":\"66\",\"H20\":\"9\",\"G21\":\"66\",\"F22\":\"\\n\\n\\n         2054 年   5  月    5 日\",\"G8\":\"6854.0\",\"C8\":\"345555.0\",\"C9\":\"123.5\",\"D10\":\"33\",\"F10\":\"33\",\"D12\":\"99\",\"H10\":\"44\",\"F12\":\"99\",\"F11\":\"77\",\"H12\":\"49.0%\",\"H11\":\"77\",\"H14\":\"4\",\"D18\":\"5\",\"H3\":\"张珊\",\"H13\":\"7\",\"D17\":\"44\",\"F2\":\"\",\"H16\":\"7\",\"F18\":\"6\",\"H15\":\"5\",\"F17\":\"88\",\"F4\":\"李师\",\"H18\":\"6\",\"F5\":\"狗三胡同\",\"H7\":\"02594\",\"H17\":\"99.0%\",\"F6\":\"34533555\",\"B3\":\"单位1\",\"H9\":\"0\",\"B4\":\"国有经济\",\"B5\":\"吕梁市是是是\",\"F9\":\"25\",\"B6\":\"88888834\",\"B7\":\"文案的肉體faedf\"}', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `busi_summary` VALUES (101, NULL, '66666', '{\"E20\":\"8\",\"D21\":\"13\",\"B22\":\"\\n\\n\\n    1895 年 4  月 4日\",\"D20\":\"6\",\"G20\":\"9\",\"F21\":\"66\",\"F20\":\"8\",\"E21\":\"45\",\"H21\":\"66\",\"H20\":\"9\",\"G21\":\"66\",\"F22\":\"\\n\\n\\n         2054 年   5  月    5 日\",\"G8\":\"6854.0\",\"C8\":\"345555.0\",\"C9\":\"123.5\",\"D10\":\"33\",\"F10\":\"33\",\"D12\":\"99\",\"H10\":\"44\",\"F12\":\"99\",\"F11\":\"77\",\"H12\":\"49.0%\",\"H11\":\"77\",\"H14\":\"4\",\"D18\":\"5\",\"H3\":\"张珊\",\"H13\":\"7\",\"D17\":\"44\",\"F2\":\"\",\"H16\":\"7\",\"F18\":\"6\",\"H15\":\"5\",\"F17\":\"88\",\"F4\":\"李师\",\"H18\":\"6\",\"F5\":\"狗三胡同\",\"H7\":\"02594\",\"H17\":\"99.0%\",\"F6\":\"66666\",\"B3\":\"单位1\",\"H9\":\"0\",\"B4\":\"国有经济\",\"B5\":\"吕梁市是是是\",\"F9\":\"25\",\"B6\":\"66666\",\"B7\":\"文案的肉體faedf\"}', NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单名称',
  `parent_id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '父菜单',
  `level` bigint(2) NULL DEFAULT NULL COMMENT '菜单层级',
  `parent_ids` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '父菜单联集',
  `sort` smallint(6) NULL DEFAULT NULL COMMENT '排序',
  `href` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '链接地址',
  `target` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '打开方式',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单图标',
  `bg_color` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '显示背景色',
  `is_show` tinyint(2) NULL DEFAULT NULL COMMENT '是否显示',
  `permission` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限标识',
  `create_by` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `update_by` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_date` datetime(0) NULL DEFAULT NULL,
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `del_flag` tinyint(2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('067a33ebdbd1478c8919a9c3b3bd28fb', '备案三', '1c79990e4b09424cb7cd6590d2e65563', 3, '4ff554d782ec4cc0a388517ac82a559e,1c79990e4b09424cb7cd6590d2e65563,067a33ebdbd1478c8919a9c3b3bd28fb,', 3, '/admin/system/execl/resignedEmployees', NULL, NULL, '', 0, '', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2020-05-24 21:01:59', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2020-05-24 21:01:59', NULL, 0);
INSERT INTO `sys_menu` VALUES ('1c79990e4b09424cb7cd6590d2e65563', '当前社保', '4ff554d782ec4cc0a388517ac82a559e', 2, '4ff554d782ec4cc0a388517ac82a559e,1c79990e4b09424cb7cd6590d2e65563,', 3, '/admin/system/menu/currentExeclDetail', NULL, '', '', 1, '', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2020-05-20 21:09:49', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2020-05-24 13:00:26', NULL, 0);
INSERT INTO `sys_menu` VALUES ('22247c5bcfd44aa98d5996147025909a', '备案一', '1c79990e4b09424cb7cd6590d2e65563', 3, '4ff554d782ec4cc0a388517ac82a559e,1c79990e4b09424cb7cd6590d2e65563,22247c5bcfd44aa98d5996147025909a,', 1, '/admin/system/execl/table', NULL, NULL, '', 0, '', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2020-05-24 18:07:22', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2020-05-24 21:01:18', NULL, 0);
INSERT INTO `sys_menu` VALUES ('3b54e2a2-9adb-11e8-aebe-1368d4ec24eb', '用户管理', '7d1020ee-9ad9-11e8-aebe-1368d4ec24eb', 2, '7d1020ee-9ad9-11e8-aebe-1368d4ec24eb,3b54e2a2-9adb-11e8-aebe-1368d4ec24eb,', 9, '/admin/system/user/list', NULL, '', '#47e69c', 1, 'sys:user:list', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-01-16 11:31:18', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-01-20 05:59:20', NULL, 0);
INSERT INTO `sys_menu` VALUES ('3b58e01e-9adb-11e8-aebe-1368d4ec24eb', '角色管理', '7d1020ee-9ad9-11e8-aebe-1368d4ec24eb', 2, '7d1020ee-9ad9-11e8-aebe-1368d4ec24eb,3b58e01e-9adb-11e8-aebe-1368d4ec24eb,', 10, '/admin/system/role/list', NULL, '', '#c23ab9', 1, 'sys:role:list', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-01-16 11:32:33', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-01-20 05:58:58', NULL, 0);
INSERT INTO `sys_menu` VALUES ('3b5cb607-9adb-11e8-aebe-1368d4ec24eb', '权限管理', '7d1020ee-9ad9-11e8-aebe-1368d4ec24eb', 2, '7d1020ee-9ad9-11e8-aebe-1368d4ec24eb,3b5cb607-9adb-11e8-aebe-1368d4ec24eb,', 20, '/admin/system/menu/list', NULL, '', '#d4573b', 1, 'sys:menu:list', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-01-16 11:33:19', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-02-08 09:49:28', NULL, 0);
INSERT INTO `sys_menu` VALUES ('3e0b86a3-9adc-11e8-aebe-1368d4ec24eb', '新增用户', '3b54e2a2-9adb-11e8-aebe-1368d4ec24eb', 3, '7d1020ee-9ad9-11e8-aebe-1368d4ec24eb,3b54e2a2-9adb-11e8-aebe-1368d4ec24eb,3e0b86a3-9adc-11e8-aebe-1368d4ec24eb,', 0, '', NULL, NULL, NULL, 0, 'sys:user:add', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-02-08 10:10:32', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-02-08 10:10:32', NULL, 0);
INSERT INTO `sys_menu` VALUES ('3e2fa8b6-9adc-11e8-aebe-1368d4ec24eb', '编辑用户', '3b54e2a2-9adb-11e8-aebe-1368d4ec24eb', 3, '7d1020ee-9ad9-11e8-aebe-1368d4ec24eb,3b54e2a2-9adb-11e8-aebe-1368d4ec24eb,3e2fa8b6-9adc-11e8-aebe-1368d4ec24eb,', 10, '', NULL, NULL, NULL, 0, 'sys:user:edit', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-02-08 10:11:49', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-02-08 10:11:49', NULL, 0);
INSERT INTO `sys_menu` VALUES ('3e36cf2f-9adc-11e8-aebe-1368d4ec24eb', '删除用户', '3b54e2a2-9adb-11e8-aebe-1368d4ec24eb', 3, '7d1020ee-9ad9-11e8-aebe-1368d4ec24eb,3b54e2a2-9adb-11e8-aebe-1368d4ec24eb,3e36cf2f-9adc-11e8-aebe-1368d4ec24eb,', 20, '', NULL, NULL, NULL, 0, 'sys:user:delete', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-02-08 10:12:43', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-02-08 10:12:43', NULL, 0);
INSERT INTO `sys_menu` VALUES ('40a80d8acad24ec4b6b8e3ca1a1b43c1', '备案二', '1c79990e4b09424cb7cd6590d2e65563', 3, '4ff554d782ec4cc0a388517ac82a559e,1c79990e4b09424cb7cd6590d2e65563,40a80d8acad24ec4b6b8e3ca1a1b43c1,', 2, '/admin/system/execl/currentEmployees', NULL, NULL, '', 0, '', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2020-05-24 21:01:02', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2020-05-24 21:01:02', NULL, 0);
INSERT INTO `sys_menu` VALUES ('4a5da456107349e7805a69581065decf', '历史记录', '4ff554d782ec4cc0a388517ac82a559e', 2, '4ff554d782ec4cc0a388517ac82a559e,4a5da456107349e7805a69581065decf,', 4, '', NULL, '', '', 1, '', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2020-05-20 21:12:10', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2020-05-23 18:38:58', NULL, 0);
INSERT INTO `sys_menu` VALUES ('4ff554d782ec4cc0a388517ac82a559e', '社保服务', NULL, 1, '4ff554d782ec4cc0a388517ac82a559e,', 2, '', NULL, '', '', 1, '', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2020-05-20 21:07:46', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2020-05-23 17:31:07', NULL, 0);
INSERT INTO `sys_menu` VALUES ('7d1020ee-9ad9-11e8-aebe-1368d4ec24eb', '系统管理', NULL, 1, '7d1020ee-9ad9-11e8-aebe-1368d4ec24eb,', 1, '', NULL, '', NULL, 1, '', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-01-16 11:29:46', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-01-20 03:09:26', NULL, 0);
INSERT INTO `sys_menu` VALUES ('96fd6a5a-9adb-11e8-aebe-1368d4ec24eb', '新增权限', '3b5cb607-9adb-11e8-aebe-1368d4ec24eb', 3, '7d1020ee-9ad9-11e8-aebe-1368d4ec24eb,3b5cb607-9adb-11e8-aebe-1368d4ec24eb,96fd6a5a-9adb-11e8-aebe-1368d4ec24eb,', 0, '', NULL, NULL, NULL, 0, 'sys:menu:add', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-02-08 09:49:15', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-02-08 09:49:38', NULL, 0);
INSERT INTO `sys_menu` VALUES ('9703ccf2-9adb-11e8-aebe-1368d4ec24eb', '编辑权限', '3b5cb607-9adb-11e8-aebe-1368d4ec24eb', 3, '7d1020ee-9ad9-11e8-aebe-1368d4ec24eb,3b5cb607-9adb-11e8-aebe-1368d4ec24eb,9703ccf2-9adb-11e8-aebe-1368d4ec24eb,', 10, '', NULL, NULL, NULL, 0, 'sys:menu:edit', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-02-08 09:50:16', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-02-08 09:50:25', NULL, 0);
INSERT INTO `sys_menu` VALUES ('9707cf58-9adb-11e8-aebe-1368d4ec24eb', '删除权限', '3b5cb607-9adb-11e8-aebe-1368d4ec24eb', 3, '7d1020ee-9ad9-11e8-aebe-1368d4ec24eb,3b5cb607-9adb-11e8-aebe-1368d4ec24eb,9707cf58-9adb-11e8-aebe-1368d4ec24eb,', 20, '', NULL, NULL, NULL, 0, 'sys:menu:delete', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-02-08 09:51:53', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-02-08 09:53:42', NULL, 0);
INSERT INTO `sys_menu` VALUES ('ed63866b30cf46bfb6797a1d31ae930c', '锁定用户', '3b54e2a2-9adb-11e8-aebe-1368d4ec24eb', 3, '7d1020ee-9ad9-11e8-aebe-1368d4ec24eb,3b54e2a2-9adb-11e8-aebe-1368d4ec24eb,ed63866b30cf46bfb6797a1d31ae930c,', 21, '', NULL, NULL, '', 0, 'sys:user:lock', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-08-21 17:44:05', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-08-21 17:44:05', NULL, 0);
INSERT INTO `sys_menu` VALUES ('ff619e04-9adb-11e8-aebe-1368d4ec24eb', '新增角色', '3b58e01e-9adb-11e8-aebe-1368d4ec24eb', 3, '7d1020ee-9ad9-11e8-aebe-1368d4ec24eb,3b58e01e-9adb-11e8-aebe-1368d4ec24eb,ff619e04-9adb-11e8-aebe-1368d4ec24eb,', 0, '', NULL, NULL, NULL, 0, 'sys:role:add', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-02-08 09:58:11', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-02-08 09:58:11', NULL, 0);
INSERT INTO `sys_menu` VALUES ('ff9477c9-9adb-11e8-aebe-1368d4ec24eb', '编辑权限', '3b58e01e-9adb-11e8-aebe-1368d4ec24eb', 3, '7d1020ee-9ad9-11e8-aebe-1368d4ec24eb,3b58e01e-9adb-11e8-aebe-1368d4ec24eb,ff9477c9-9adb-11e8-aebe-1368d4ec24eb,', 10, '', NULL, NULL, NULL, 0, 'sys:role:edit', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-02-08 09:59:01', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-02-08 09:59:01', NULL, 0);
INSERT INTO `sys_menu` VALUES ('ff9ad846-9adb-11e8-aebe-1368d4ec24eb', '删除角色', '3b58e01e-9adb-11e8-aebe-1368d4ec24eb', 3, '7d1020ee-9ad9-11e8-aebe-1368d4ec24eb,3b58e01e-9adb-11e8-aebe-1368d4ec24eb,ff9ad846-9adb-11e8-aebe-1368d4ec24eb,', 20, '', NULL, NULL, NULL, 0, 'sys:role:delete', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-02-08 09:59:56', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-02-08 09:59:56', NULL, 0);

-- ----------------------------
-- Table structure for sys_rescource
-- ----------------------------
DROP TABLE IF EXISTS `sys_rescource`;
CREATE TABLE `sys_rescource`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `file_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件名称',
  `source` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '来源',
  `web_url` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '资源网络地址',
  `hash` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件标识',
  `file_size` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件大小',
  `file_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件类型',
  `original_net_url` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `del_flag` tinyint(4) NULL DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统资源' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_rescource
-- ----------------------------
INSERT INTO `sys_rescource` VALUES ('07cb9359475f45369ebba588ed69a958', '07b63445-4e46-413b-b21a-15418ca391d6.jpg', 'local', '/static/upload/07b63445-4e46-413b-b21a-15418ca391d6.jpg', 'FtYBLQgWWB-tUcnvHrbmOuOSOxGK', '53kb', 'image/jpeg', NULL, '2020-05-23 18:57:46', 'd6a83adb7dff4c85892af6e2cef8923b', '2020-05-23 18:57:46', 'd6a83adb7dff4c85892af6e2cef8923b', NULL, 0);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色名称',
  `create_date` datetime(0) NULL DEFAULT NULL,
  `create_by` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_date` datetime(0) NULL DEFAULT NULL,
  `update_by` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `del_flag` tinyint(2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('70689483-9ad7-11e8-aebe-1368d4ec24eb', '前台用户', '2017-11-02 14:19:07', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2020-05-23 16:46:28', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '', 0);
INSERT INTO `sys_role` VALUES ('706e0195-9ad7-11e8-aebe-1368d4ec24eb', '系统管理员', '2017-11-29 19:36:37', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2020-05-24 12:54:19', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '', 0);
INSERT INTO `sys_role` VALUES ('9cbcc9f4a6ff414dbef01fbeea3a0344', '工厂角色', '2020-05-23 16:47:27', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2020-05-23 16:47:27', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '为工厂人员提供服务', 0);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `menu_id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('70689483-9ad7-11e8-aebe-1368d4ec24eb', '1c79990e4b09424cb7cd6590d2e65563');
INSERT INTO `sys_role_menu` VALUES ('70689483-9ad7-11e8-aebe-1368d4ec24eb', '3b54e2a2-9adb-11e8-aebe-1368d4ec24eb');
INSERT INTO `sys_role_menu` VALUES ('70689483-9ad7-11e8-aebe-1368d4ec24eb', '3b58e01e-9adb-11e8-aebe-1368d4ec24eb');
INSERT INTO `sys_role_menu` VALUES ('70689483-9ad7-11e8-aebe-1368d4ec24eb', '3b5cb607-9adb-11e8-aebe-1368d4ec24eb');
INSERT INTO `sys_role_menu` VALUES ('70689483-9ad7-11e8-aebe-1368d4ec24eb', '3e0b86a3-9adc-11e8-aebe-1368d4ec24eb');
INSERT INTO `sys_role_menu` VALUES ('70689483-9ad7-11e8-aebe-1368d4ec24eb', '3e2fa8b6-9adc-11e8-aebe-1368d4ec24eb');
INSERT INTO `sys_role_menu` VALUES ('70689483-9ad7-11e8-aebe-1368d4ec24eb', '3e36cf2f-9adc-11e8-aebe-1368d4ec24eb');
INSERT INTO `sys_role_menu` VALUES ('70689483-9ad7-11e8-aebe-1368d4ec24eb', '4a5da456107349e7805a69581065decf');
INSERT INTO `sys_role_menu` VALUES ('70689483-9ad7-11e8-aebe-1368d4ec24eb', '4ff554d782ec4cc0a388517ac82a559e');
INSERT INTO `sys_role_menu` VALUES ('70689483-9ad7-11e8-aebe-1368d4ec24eb', '7d1020ee-9ad9-11e8-aebe-1368d4ec24eb');
INSERT INTO `sys_role_menu` VALUES ('70689483-9ad7-11e8-aebe-1368d4ec24eb', '96fd6a5a-9adb-11e8-aebe-1368d4ec24eb');
INSERT INTO `sys_role_menu` VALUES ('70689483-9ad7-11e8-aebe-1368d4ec24eb', '9703ccf2-9adb-11e8-aebe-1368d4ec24eb');
INSERT INTO `sys_role_menu` VALUES ('70689483-9ad7-11e8-aebe-1368d4ec24eb', '9707cf58-9adb-11e8-aebe-1368d4ec24eb');
INSERT INTO `sys_role_menu` VALUES ('70689483-9ad7-11e8-aebe-1368d4ec24eb', 'ed63866b30cf46bfb6797a1d31ae930c');
INSERT INTO `sys_role_menu` VALUES ('70689483-9ad7-11e8-aebe-1368d4ec24eb', 'ff619e04-9adb-11e8-aebe-1368d4ec24eb');
INSERT INTO `sys_role_menu` VALUES ('70689483-9ad7-11e8-aebe-1368d4ec24eb', 'ff9477c9-9adb-11e8-aebe-1368d4ec24eb');
INSERT INTO `sys_role_menu` VALUES ('70689483-9ad7-11e8-aebe-1368d4ec24eb', 'ff9ad846-9adb-11e8-aebe-1368d4ec24eb');
INSERT INTO `sys_role_menu` VALUES ('706e0195-9ad7-11e8-aebe-1368d4ec24eb', '1c79990e4b09424cb7cd6590d2e65563');
INSERT INTO `sys_role_menu` VALUES ('706e0195-9ad7-11e8-aebe-1368d4ec24eb', '3b54e2a2-9adb-11e8-aebe-1368d4ec24eb');
INSERT INTO `sys_role_menu` VALUES ('706e0195-9ad7-11e8-aebe-1368d4ec24eb', '3b58e01e-9adb-11e8-aebe-1368d4ec24eb');
INSERT INTO `sys_role_menu` VALUES ('706e0195-9ad7-11e8-aebe-1368d4ec24eb', '3b5cb607-9adb-11e8-aebe-1368d4ec24eb');
INSERT INTO `sys_role_menu` VALUES ('706e0195-9ad7-11e8-aebe-1368d4ec24eb', '3e0b86a3-9adc-11e8-aebe-1368d4ec24eb');
INSERT INTO `sys_role_menu` VALUES ('706e0195-9ad7-11e8-aebe-1368d4ec24eb', '3e2fa8b6-9adc-11e8-aebe-1368d4ec24eb');
INSERT INTO `sys_role_menu` VALUES ('706e0195-9ad7-11e8-aebe-1368d4ec24eb', '3e36cf2f-9adc-11e8-aebe-1368d4ec24eb');
INSERT INTO `sys_role_menu` VALUES ('706e0195-9ad7-11e8-aebe-1368d4ec24eb', '4a5da456107349e7805a69581065decf');
INSERT INTO `sys_role_menu` VALUES ('706e0195-9ad7-11e8-aebe-1368d4ec24eb', '4ff554d782ec4cc0a388517ac82a559e');
INSERT INTO `sys_role_menu` VALUES ('706e0195-9ad7-11e8-aebe-1368d4ec24eb', '7d1020ee-9ad9-11e8-aebe-1368d4ec24eb');
INSERT INTO `sys_role_menu` VALUES ('706e0195-9ad7-11e8-aebe-1368d4ec24eb', '96fd6a5a-9adb-11e8-aebe-1368d4ec24eb');
INSERT INTO `sys_role_menu` VALUES ('706e0195-9ad7-11e8-aebe-1368d4ec24eb', '9703ccf2-9adb-11e8-aebe-1368d4ec24eb');
INSERT INTO `sys_role_menu` VALUES ('706e0195-9ad7-11e8-aebe-1368d4ec24eb', '9707cf58-9adb-11e8-aebe-1368d4ec24eb');
INSERT INTO `sys_role_menu` VALUES ('706e0195-9ad7-11e8-aebe-1368d4ec24eb', 'ed63866b30cf46bfb6797a1d31ae930c');
INSERT INTO `sys_role_menu` VALUES ('706e0195-9ad7-11e8-aebe-1368d4ec24eb', 'ff619e04-9adb-11e8-aebe-1368d4ec24eb');
INSERT INTO `sys_role_menu` VALUES ('706e0195-9ad7-11e8-aebe-1368d4ec24eb', 'ff9477c9-9adb-11e8-aebe-1368d4ec24eb');
INSERT INTO `sys_role_menu` VALUES ('706e0195-9ad7-11e8-aebe-1368d4ec24eb', 'ff9ad846-9adb-11e8-aebe-1368d4ec24eb');
INSERT INTO `sys_role_menu` VALUES ('9cbcc9f4a6ff414dbef01fbeea3a0344', '1c79990e4b09424cb7cd6590d2e65563');
INSERT INTO `sys_role_menu` VALUES ('9cbcc9f4a6ff414dbef01fbeea3a0344', '4a5da456107349e7805a69581065decf');
INSERT INTO `sys_role_menu` VALUES ('9cbcc9f4a6ff414dbef01fbeea3a0344', '4ff554d782ec4cc0a388517ac82a559e');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户ID',
  `login_name` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录名',
  `organization_code` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nick_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `icon` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `salt` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'shiro加密盐',
  `tel` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号码',
  `email` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱地址',
  `locked` tinyint(2) NULL DEFAULT NULL COMMENT '是否锁定',
  `create_date` datetime(0) NULL DEFAULT NULL,
  `create_by` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_date` datetime(0) NULL DEFAULT NULL,
  `update_by` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `del_flag` tinyint(4) NOT NULL,
  `is_admin` tinyint(2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('18b8b543-9ad7-11e8-aebe-1368d4ec24eb', 'admin', NULL, '管理员', NULL, '9c5feb7aba88c7c87bc047c7cec7c6e3b63e1894', '08c5900125b80cd2', '15083759164', '645924691@qq.com', 0, '2017-11-27 22:19:39', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-08-28 13:25:18', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '', 0, 1);
INSERT INTO `sys_user` VALUES ('1adf998bdf4542c1942ddb3a9360eec1', 'lrj', '66666', 'lr', NULL, 'c21c7b620fac8199489cbbf9aa6a99e1dc45ecc2', '4942d3ed80683489', '18691636010', '645924619@qq.com', 0, '2020-06-06 22:27:46', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2020-06-06 22:27:46', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', NULL, 0, 1);
INSERT INTO `sys_user` VALUES ('4cef21b2ddaf4c239096fcc1027e67f0', 'f1', '23466', '12345', NULL, '4402a326dc5c040eaff0a4b7f4bae3befe4a80ac', '04cbd4b5e78e7d6c', '18691636094', '645924694@qq.com', 0, '2020-06-06 19:14:38', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2020-06-06 19:42:14', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', NULL, 0, 1);
INSERT INTO `sys_user` VALUES ('56394b85268340f3a0ca3cd21b2d7d10', '111', '88888834', '', NULL, '9cc8237c0feb989210ccf2fb4406f2cb68876f36', 'f8d9a369117b802b', '18691636099', '645924699@qq.com', 0, '2020-06-06 22:04:40', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2020-06-06 22:04:40', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', NULL, 0, 1);
INSERT INTO `sys_user` VALUES ('7da54ee16e5c4480b834d95db44400a4', 'yanglei', NULL, 'yanglei', NULL, 'b225c7db1d7e51e850bcac71621a39f0f42cc1ed', '2234ce566088d827', '18691636090', '645924691@qq.com', 0, '2020-05-20 22:50:52', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2020-05-20 23:06:30', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', NULL, 0, 1);
INSERT INTO `sys_user` VALUES ('9d0d6b3da0624153912696ac6c868372', 'yl', '888888', 'yl', NULL, '10b27fff9fc3ec925fcdbda4b42177e0e236ba6e', 'd43608101a7cea03', '18691636093', '645924693@qq.com', 0, '2020-05-23 21:21:53', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2020-06-06 21:51:28', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', NULL, 0, 1);
INSERT INTO `sys_user` VALUES ('b72d8d9c1ee24a13ab21ccfeef407fed', '张三', '999999', '999999', NULL, 'b51c8ca8c9023719a2196a8b459bde0600eadc15', 'a0df512cb8605121', '18691636095', '645924696@qq.com', 0, '2020-06-06 21:54:11', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2020-06-06 21:54:11', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', NULL, 0, 1);
INSERT INTO `sys_user` VALUES ('d6a83adb7dff4c85892af6e2cef8923b', 'gcz', NULL, 'gcz', '/static/upload/07b63445-4e46-413b-b21a-15418ca391d6.jpg', '7c0d448e3c19134fdc12d2c9928554235a0e1a1a', '1a4e8bd9615676e3', '18691636091', '645924692@qq.com', 0, '2020-05-23 16:14:23', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2020-05-23 18:57:57', 'd6a83adb7dff4c85892af6e2cef8923b', '', 0, 1);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `role_id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '706e0195-9ad7-11e8-aebe-1368d4ec24eb');
INSERT INTO `sys_user_role` VALUES ('1adf998bdf4542c1942ddb3a9360eec1', '9cbcc9f4a6ff414dbef01fbeea3a0344');
INSERT INTO `sys_user_role` VALUES ('4cef21b2ddaf4c239096fcc1027e67f0', '70689483-9ad7-11e8-aebe-1368d4ec24eb');
INSERT INTO `sys_user_role` VALUES ('4cef21b2ddaf4c239096fcc1027e67f0', '706e0195-9ad7-11e8-aebe-1368d4ec24eb');
INSERT INTO `sys_user_role` VALUES ('4cef21b2ddaf4c239096fcc1027e67f0', '9cbcc9f4a6ff414dbef01fbeea3a0344');
INSERT INTO `sys_user_role` VALUES ('56394b85268340f3a0ca3cd21b2d7d10', '9cbcc9f4a6ff414dbef01fbeea3a0344');
INSERT INTO `sys_user_role` VALUES ('7da54ee16e5c4480b834d95db44400a4', '70689483-9ad7-11e8-aebe-1368d4ec24eb');
INSERT INTO `sys_user_role` VALUES ('7da54ee16e5c4480b834d95db44400a4', '706e0195-9ad7-11e8-aebe-1368d4ec24eb');
INSERT INTO `sys_user_role` VALUES ('9d0d6b3da0624153912696ac6c868372', '9cbcc9f4a6ff414dbef01fbeea3a0344');
INSERT INTO `sys_user_role` VALUES ('b72d8d9c1ee24a13ab21ccfeef407fed', '9cbcc9f4a6ff414dbef01fbeea3a0344');
INSERT INTO `sys_user_role` VALUES ('d6a83adb7dff4c85892af6e2cef8923b', '9cbcc9f4a6ff414dbef01fbeea3a0344');

SET FOREIGN_KEY_CHECKS = 1;
