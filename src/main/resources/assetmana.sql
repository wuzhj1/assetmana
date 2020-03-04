/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80018
 Source Host           : localhost:3306
 Source Schema         : assetmana

 Target Server Type    : MySQL
 Target Server Version : 80018
 File Encoding         : 65001

 Date: 07/01/2020 14:19:00
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for pdman_db_version
-- ----------------------------
DROP TABLE IF EXISTS `pdman_db_version`;
CREATE TABLE `pdman_db_version`  (
  `DB_VERSION` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `VERSION_DESC` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `CREATED_TIME` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pdman_db_version
-- ----------------------------
INSERT INTO `pdman_db_version` VALUES ('v0.0.0', '默认版本，新增的版本不能低于此版本', '2019-12-16 14:34:40');
INSERT INTO `pdman_db_version` VALUES ('v1.0.0', 'asd', '2019-12-16 14:34:44');

-- ----------------------------
-- Table structure for pdman_up_sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `pdman_up_sys_menu`;
CREATE TABLE `pdman_up_sys_menu`  (
  `id` int(11) NOT NULL DEFAULT 0 COMMENT '乐观锁',
  `url` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '后端url',
  `path` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '前端path',
  `component` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '对应组件',
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '菜单名',
  `icon` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '图标',
  `requireAuth` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'requireAuth 0否/1是',
  `keepAlive` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'keepAlive 0否/1是',
  `parentId` int(11) DEFAULT NULL COMMENT '父菜单'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pdman_up_sys_menu
-- ----------------------------
INSERT INTO `pdman_up_sys_menu` VALUES (1, NULL, '/login', 'Login', '', NULL, '0', '0', NULL);
INSERT INTO `pdman_up_sys_menu` VALUES (2, NULL, '/', 'Layout', NULL, NULL, '0', '0', NULL);
INSERT INTO `pdman_up_sys_menu` VALUES (3, NULL, 'dashboard', 'Dashboard', '主页', 'dashboard', '0', '0', 2);
INSERT INTO `pdman_up_sys_menu` VALUES (4, NULL, '/blogmana', 'Layout', '博客管理', 'example', '0', '0', NULL);
INSERT INTO `pdman_up_sys_menu` VALUES (5, NULL, 'bloglist', 'Bolglist', '文章管理', 'table', '0', '0', 4);
INSERT INTO `pdman_up_sys_menu` VALUES (6, NULL, 'blogedit', 'Blogedit', '文章编辑', 'tree', '0', '0', 4);
INSERT INTO `pdman_up_sys_menu` VALUES (7, NULL, 'form', 'From', '文章发表', 'tree', '0', '0', 6);

-- ----------------------------
-- Table structure for sys_company
-- ----------------------------
DROP TABLE IF EXISTS `sys_company`;
CREATE TABLE `sys_company`  (
  `id` int(11) DEFAULT NULL COMMENT '公司id',
  `name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '公司名称',
  `remark` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '公司备注',
  `parent_id` int(11) DEFAULT NULL COMMENT '父公司',
  `CREATED_BY` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '创建人',
  `CREATED_TIME` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `UPDATED_BY` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '更新人',
  `UPDATED_TIME` datetime(0) DEFAULT NULL COMMENT '更新时间'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '公司 ' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_department
-- ----------------------------
DROP TABLE IF EXISTS `sys_department`;
CREATE TABLE `sys_department`  (
  `id` int(11) DEFAULT NULL COMMENT '部门id',
  `name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '部门名称',
  `remark` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '部门备注',
  `parent_id` int(11) DEFAULT NULL COMMENT '父部门',
  `company_id` int(11) DEFAULT NULL COMMENT '所属公司',
  `CREATED_BY` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '创建人',
  `CREATED_TIME` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `UPDATED_BY` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '更新人',
  `UPDATED_TIME` datetime(0) DEFAULT NULL COMMENT '更新时间'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '部门 ' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '乐观锁',
  `path` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '前端path',
  `component` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '对应组件',
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '菜单名',
  `icon` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '图标 meta；',
  `noCache` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '1' COMMENT 'keepAlive meta；0否/1是',
  `breadcrumb` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '1' COMMENT '是否在面包屑导航中显示 meta；',
  `title` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'title meta；',
  `parentId` int(11) DEFAULT NULL COMMENT '父菜单',
  `isRoot` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '1' COMMENT '是否根菜单 0否/1是',
  `redirect` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '重定向',
  `hidden` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '0' COMMENT '隐藏 0否/1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '菜单 ' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '/basicrecord', '#', '基本档案', 'record', '1', '0', '基本档案', NULL, '1', NULL, '0');
INSERT INTO `sys_menu` VALUES (2, '/basicrecord/assetcate', '/basicRecord/assetCategory/index', '资产类别', NULL, '1', '1', '资产类别', 1, '0', '', '0');
INSERT INTO `sys_menu` VALUES (3, '/basicrecord/addreduce', '/basicRecord/addReduce/index', '增减方式', NULL, '1', '1', '增减方式', 1, '0', NULL, '0');
INSERT INTO `sys_menu` VALUES (4, '/basicrecord/usestate', '/basicRecord/useState/index', '使用状况', NULL, '1', '1', '使用状况', 1, '0', NULL, '0');
INSERT INTO `sys_menu` VALUES (11, '/authmana', '#', '权限管理', 'auth', '1', '0', '权限管理', NULL, '1', '', '0');
INSERT INTO `sys_menu` VALUES (12, '/authmana/usermana', '/authmana/usermana/index', '用户管理', NULL, '1', '1', '用户管理', 11, '0', NULL, '0');
INSERT INTO `sys_menu` VALUES (13, '/authmana/rolemana', '/authmana/rolemana/index', '角色管理', NULL, '1', '1', '角色管理', 11, '0', NULL, '0');
INSERT INTO `sys_menu` VALUES (14, '/authmana/menumana', '/authmana/menumana/index', '菜单管理', NULL, '1', '1', '菜单管理', 11, '0', NULL, '0');
INSERT INTO `sys_menu` VALUES (15, '/authmana/organizationmana', '/authmana/organizationmana/index', '组织管理', '', '1', '1', '组织管理', 11, '0', NULL, '0');
INSERT INTO `sys_menu` VALUES (16, '/assetmana', '#', '资产管理', 'record', '1', '0', '资产管理', NULL, '1', NULL, '0');
INSERT INTO `sys_menu` VALUES (17, '/assetmana/assetstorge', '/assetmana/assetstorge/index', '资产入库', NULL, '1', '1', '资产入库', 16, '0', NULL, '0');

-- ----------------------------
-- Table structure for sys_menu_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu_role`;
CREATE TABLE `sys_menu_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `mid` int(11) DEFAULT NULL COMMENT '菜单id',
  `rid` int(11) DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色菜单分配 角色<n,n>菜单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu_role
-- ----------------------------
INSERT INTO `sys_menu_role` VALUES (12, 1, 37);
INSERT INTO `sys_menu_role` VALUES (13, 2, 37);
INSERT INTO `sys_menu_role` VALUES (14, 3, 37);
INSERT INTO `sys_menu_role` VALUES (15, 4, 37);
INSERT INTO `sys_menu_role` VALUES (16, 11, 37);
INSERT INTO `sys_menu_role` VALUES (17, 12, 37);
INSERT INTO `sys_menu_role` VALUES (18, 13, 37);
INSERT INTO `sys_menu_role` VALUES (19, 14, 37);
INSERT INTO `sys_menu_role` VALUES (20, 15, 37);
INSERT INTO `sys_menu_role` VALUES (21, 16, 37);
INSERT INTO `sys_menu_role` VALUES (22, 17, 37);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色id',
  `name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '角色名称',
  `nameZh` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '中文角色名',
  `remark` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '角色备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色 ' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (37, 'admin', '系统管理员', NULL);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '用户名',
  `userface` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '用户头像',
  `password` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '用户密码',
  `phone` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '手机电话',
  `email` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '邮箱',
  `address` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '居住地址',
  `enable` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '1' COMMENT '启用 0不启用/1启用',
  `remark` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '备注说明',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户 ' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 'wu', 'http://img.wxcha.com/file/201912/14/7d2d8f5cb3.jpg', '1230', '15970160921', '1970097504@qq.com', '江西南昌', '1', '');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `uid` int(11) DEFAULT NULL COMMENT '用户id',
  `rid` int(11) DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户角色分配 用户<n,n>角色' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (3, 1, 37);

SET FOREIGN_KEY_CHECKS = 1;
