-- ----------------------------
-- 1、机构表（sys_dept）
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `id`                  bigint(20)        NOT NULL AUTO_INCREMENT        COMMENT '机构ID',
  `name`                varchar(50)       DEFAULT NULL                   COMMENT '机构名称',
  `parent_id`           bigint(20)        DEFAULT NULL                   COMMENT '上级机构ID，一级机构为0',
  `order_num`           int(11)           DEFAULT NULL                   COMMENT '排序',
  `create_by`           varchar(50)       DEFAULT NULL                   COMMENT '创建人',
  `create_time`         datetime          DEFAULT NULL                   COMMENT '创建时间',
  `last_update_by`      varchar(50)       DEFAULT NULL                   COMMENT '更新人',
  `last_update_time`    datetime          DEFAULT NULL                   COMMENT '更新时间',
  `del_flag`            tinyint(4)        DEFAULT '0'                    COMMENT '删除标志（-1：已删除  0：正常）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='机构表';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (1,   'Nancy集团',    0,      1,      'admin',    '2020-10-01 00:00:00',      null,      null,      0);
INSERT INTO `sys_dept` VALUES (2,   '上海分公司',    1,      2,      'admin',    '2020-10-01 00:00:00',      null,      null,      0);
INSERT INTO `sys_dept` VALUES (3,   '北京分公司',    1,      3,      'admin',    '2020-10-01 00:00:00',      null,      null,      0);
INSERT INTO `sys_dept` VALUES (4,   '项目部',       2,      4,      'admin',    '2020-10-01 00:00:00',      null,      null,      0);
INSERT INTO `sys_dept` VALUES (5,   '技术部',       2,      5,      'admin',    '2020-10-01 00:00:00',      null,      null,      0);
INSERT INTO `sys_dept` VALUES (6,   '项目部',       3,      6,      'admin',    '2020-10-01 00:00:00',      null,      null,      0);
INSERT INTO `sys_dept` VALUES (7,   '技术部',       3,      7,      'admin',    '2020-10-01 00:00:00',      null,      null,      0);
INSERT INTO `sys_dept` VALUES (8,   '客服部',       2,      8,      'admin',    '2020-10-01 00:00:00',      null,      null,      0);
INSERT INTO `sys_dept` VALUES (9,   '技术中心',     2,      9,      'admin',    '2020-10-01 00:00:00',      null,      null,      0);

-- ----------------------------
-- 2、用户表（sys_user）
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id`                 bigint(20)            NOT NULL AUTO_INCREMENT         COMMENT '用户ID',
  `name`               varchar(50)           NOT NULL                        COMMENT '用户名',
  `password`           varchar(100)          DEFAULT NULL                    COMMENT '密码',
  `salt`               varchar(40)           DEFAULT NULL                    COMMENT '盐',
  `email`              varchar(100)          DEFAULT NULL                    COMMENT '邮箱',
  `mobile`             varchar(100)          DEFAULT NULL                    COMMENT '手机号',
  `status`             tinyint(4)            DEFAULT NULL                    COMMENT '状态(0：禁用  1：正常)',
  `dept_id`            bigint(20)            DEFAULT NULL                    COMMENT '机构ID',
  `create_by`          varchar(50)           DEFAULT NULL                    COMMENT '创建人',
  `create_time`        datetime              DEFAULT NULL                    COMMENT '创建时间',
  `last_update_by`     varchar(50)           DEFAULT NULL                    COMMENT '更新人',
  `last_update_time`   datetime              DEFAULT NULL                    COMMENT '更新时间',
  `del_flag`           tinyint(4)            DEFAULT '0'                     COMMENT '是否删除(-1：已删除  0：正常)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1,    'admin',    'bd1718f058d8a02468134432b8656a86',     'YzcmCZNvbXocrsz9dm8e',     'admin@qq.com', '13812345678',     1,     1,     'admin',     '2020-10-01 00:00:00',     'admin',     '2020-10-01 00:00:00',     '0');
INSERT INTO `sys_user` VALUES (2,    '张三',      'fd80ebd493a655608dc893a9f897d845',     'YzcmCZNvbXocrsz9dm8e',     'zs@qq.com',    '13412342321',     1,     4,     'admin',     '2020-10-01 00:00:00',     'admin',     '2020-10-01 00:00:00',     '0');
INSERT INTO `sys_user` VALUES (3,    '李四',      'fd80ebd493a655608dc893a9f897d845',     'YzcmCZNvbXocrsz9dm8e',     'ls@qq.com',    '13412342321',     1,     5,     'admin',     '2020-10-01 00:00:00',     'admin',     '2020-10-01 00:00:00',     '0');

-- ----------------------------
-- 3、角色信息表（sys_role）
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id`                 bigint(20)      NOT NULL AUTO_INCREMENT    COMMENT '角色ID',
  `name`               varchar(100)    DEFAULT NULL               COMMENT '角色名称',
  `remark`             varchar(100)    DEFAULT NULL               COMMENT '备注',
  `create_by`          varchar(50)     DEFAULT NULL               COMMENT '创建人',
  `create_time`        datetime        DEFAULT NULL               COMMENT '创建时间',
  `last_update_by`     varchar(50)     DEFAULT NULL               COMMENT '更新人',
  `last_update_time`   datetime        DEFAULT NULL               COMMENT '更新时间',
  `del_flag`           tinyint(4)      DEFAULT '0'                COMMENT '是否删除(-1：已删除  0：正常)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='角色信息表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1',  'admin',  '超级管理员',  'admin',  '2020-10-01 00:00:00',   'admin',  '2020-10-01 00:00:00',  '0');
INSERT INTO `sys_role` VALUES ('2',  'dev',    '开发人员',   'admin',  '2020-10-01 00:00:00',   'admin',  '2020-10-01 00:00:00',  '0');
INSERT INTO `sys_role` VALUES ('3',  'test',   '测试人员',   'admin',  '2020-10-01 00:00:00',   'admin',  '2020-10-01 00:00:00',  '0');
INSERT INTO `sys_role` VALUES ('4',  'mng',    '部门经理',   'admin',  '2020-10-01 00:00:00',   'admin',  '2020-10-01 00:00:00',  '0');

-- ----------------------------
-- 4、用户角色表（sys_user_role） 用户 N-1 角色
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id`                 bigint(20)    NOT NULL AUTO_INCREMENT     COMMENT '编号',
  `user_id`            bigint(20)    DEFAULT NULL                COMMENT '用户ID',
  `role_id`            bigint(20)    DEFAULT NULL                COMMENT '角色ID',
  `create_by`          varchar(50)   DEFAULT NULL                COMMENT '创建人',
  `create_time`        datetime      DEFAULT NULL                COMMENT '创建时间',
  `last_update_by`     varchar(50)   DEFAULT NULL                COMMENT '更新人',
  `last_update_time`   datetime      DEFAULT NULL                COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户角色表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1,   1,   1,   null,   null,   null,   null);
INSERT INTO `sys_user_role` VALUES (2,   2,   2,   null,   null,   null,   null);
INSERT INTO `sys_user_role` VALUES (3,   3,   3,   null,   null,   null,   null);

-- ----------------------------
-- 5、菜单表（sys_menu）
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id`                  bigint(20)     NOT NULL AUTO_INCREMENT     COMMENT '菜单ID',
  `name`                varchar(50)    DEFAULT NULL                COMMENT '菜单名称',
  `parent_id`           bigint(20)     DEFAULT NULL                COMMENT '父菜单ID，一级菜单为0',
  `url`                 varchar(200)   DEFAULT NULL                COMMENT '菜单URL,类型：1.普通页面（如用户管理， /sys/user） 2.嵌套完整外部页面，以http(s)开头的链接 3.嵌套服务器页面，使用iframe:前缀+目标URL(如SQL监控， iframe:/druid/login.html, iframe:前缀会替换成服务器地址)',
  `perms`               varchar(500)   DEFAULT NULL                COMMENT '授权(多个用逗号分隔，如：sys:user:add,sys:user:edit)',
  `type`                int(11)        DEFAULT NULL                COMMENT '类型(0：目录   1：菜单   2：按钮)',
  `icon`                varchar(50)    DEFAULT NULL                COMMENT '菜单图标',
  `order_num`           int(11)        DEFAULT NULL                COMMENT '排序',
  `create_by`           varchar(50)    DEFAULT NULL                COMMENT '创建人',
  `create_time`         datetime       DEFAULT NULL                COMMENT '创建时间',
  `last_update_by`      varchar(50)    DEFAULT NULL                COMMENT '更新人',
  `last_update_time`    datetime       DEFAULT NULL                COMMENT '更新时间',
  `del_flag`            tinyint(4)     DEFAULT '0'                 COMMENT '是否删除(-1：已删除  0：正常)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COMMENT='菜单表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1',   '系统管理',   '0',    null,                                        null,                '0',         'el-icon-setting',         '0',      null,     null,                   null,       null,                   '0');
INSERT INTO `sys_menu` VALUES ('2',   '用户管理',   '1',    '/sys/user',                                 null,                '1',         'el-icon-service',         '1',      null,     null,                   null,       null,                   '0');
INSERT INTO `sys_menu` VALUES ('3',   '机构管理',   '1',    '/sys/dept',                                 null,                '1',         'el-icon-news',            '2',      null,     null,                   null,       null,                   '0');
INSERT INTO `sys_menu` VALUES ('4',   '角色管理',   '1',    '/sys/role',                                 null,                '1',         'el-icon-view',            '4',      null,     null,                   null,       null,                   '0');
INSERT INTO `sys_menu` VALUES ('5',   '菜单管理',   '1',    '/sys/menu',                                 null,                '1',         'el-icon-menu',            '5',      null,     null,                   null,       null,                   '0');
INSERT INTO `sys_menu` VALUES ('6',   '数据监控',   '43',   'http://127.0.0.1:9100/druid/login.html',    null,                '1',         'el-icon-warning',         '0',      null,     null,                   'admin',   '2020-10-01 00:00:00',   '0');
INSERT INTO `sys_menu` VALUES ('7',   '字典管理',   '1',    '/sys/dict',                                 null,                '1',         'el-icon-edit-outline',    '7',      null,     null,                   null,      null,                    '0');
INSERT INTO `sys_menu` VALUES ('8',   '系统日志',   '1',    '/sys/log',                                  'sys:log:view',      '1',         'el-icon-info',            '8',      null,     null,                   'admin',   '2020-10-01 00:00:00',   '0');
INSERT INTO `sys_menu` VALUES ('9',   '查看',      '2',     null,                                       'sys:user:view',     '2',         null,                      '0',      null,     null,                   null,       null,                   '0');
INSERT INTO `sys_menu` VALUES ('10',  '新增',      '2',     null,                                       'sys:user:add',      '2',         null,                      '0',      null,     null,                   null,       null,                   '0');
INSERT INTO `sys_menu` VALUES ('11',  '修改',      '2',     null,                                       'sys:user:edit',     '2',         null,                      '0',      null,     null,                   null,       null,                   '0');
INSERT INTO `sys_menu` VALUES ('12',  '删除',      '2',     null,                                       'sys:user:delete',   '2',         null,                      '0',      null,     null,                   null,       null,                   '0');
INSERT INTO `sys_menu` VALUES ('13',  '查看',      '3',     null,                                       'sys:dept:view',     '2',         null,                      '0',      null,     null,                   null,       null,                   '0');
INSERT INTO `sys_menu` VALUES ('14',  '新增',      '3',     null,                                       'sys:dept:add',      '2',         null,                      '0',      null,     null,                   null,       null,                   '0');
INSERT INTO `sys_menu` VALUES ('15',  '修改',      '3',     null,                                       'sys:dept:edit',     '2',         null,                      '0',      null,     null,                   null,       null,                   '0');
INSERT INTO `sys_menu` VALUES ('16',  '删除',      '3',     null,                                       'sys:dept:delete',   '2',         null,                      '0',      null,     null,                   null,       null,                   '0');
INSERT INTO `sys_menu` VALUES ('17',  '查看',      '4',     null,                                       'sys:role:view',     '2',         null,                      '0',      null,     null,                   null,       null,                   '0');
INSERT INTO `sys_menu` VALUES ('18',  '新增',      '4',     null,                                       'sys:role:add',      '2',         null,                      '0',      null,     null,                   null,       null,                   '0');
INSERT INTO `sys_menu` VALUES ('19',  '修改',      '4',     null,                                       'sys:role:edit',     '2',         null,                      '0',      null,     null,                   null,       null,                   '0');
INSERT INTO `sys_menu` VALUES ('20',  '删除',      '4',     null,                                       'sys:role:delete',   '2',         null,                      '0',      null,     null,                   null,       null,                   '0');
INSERT INTO `sys_menu` VALUES ('21',  '查看',      '5',     null,                                       'sys:menu:view',     '2',         null,                      '0',      null,     null,                   null,       null,                   '0');
INSERT INTO `sys_menu` VALUES ('22',  '新增',      '5',     null,                                       'sys:menu:add',      '2',         null,                      '0',      null,     null,                   null,       null,                   '0');
INSERT INTO `sys_menu` VALUES ('23',  '修改',      '5',     null,                                       'sys:menu:edit',     '2',         null,                      '0',      null,     null,                   null,       null,                   '0');
INSERT INTO `sys_menu` VALUES ('24',  '删除',      '5',     null,                                       'sys:menu:delete',   '2',         null,                      '0',      null,     null,                   null,       null,                   '0');
INSERT INTO `sys_menu` VALUES ('28',  '使用案例',   '0',     null,                                       null,                '0',        'el-icon-picture-outline',  '6',      null,     null,                  'admin',    '2020-10-01 00:00:00',   '0');
INSERT INTO `sys_menu` VALUES ('29',  '国际化',    '28',    '/demo/i18n',                                null,                '1',        'el-icon-edit',             '1',      null,     null,                  null,       null,                    '0');
INSERT INTO `sys_menu` VALUES ('30',  '换皮肤',    '28',    '/demo/theme',                               null,                '1',        'el-icon-picture',          '2',      null,     null,                  null,       null,                    '0');
INSERT INTO `sys_menu` VALUES ('31',  '查看',      '7',     null,                                        'sys:dict:view',     '2',        null,                       '0',      null,     null,                  null,       null,                    '0');
INSERT INTO `sys_menu` VALUES ('32',  '新增',      '7',     null,                                        'sys:dict:add',      '2',        null,                       '0',      null,     null,                  null,       null,                    '0');
INSERT INTO `sys_menu` VALUES ('33',  '修改',      '7',     null,                                        'sys:dict:edit',     '2',        null,                       '0',      null,     null,                  null,       null,                    '0');
INSERT INTO `sys_menu` VALUES ('34',  '删除',      '7',     null,                                        'sys:dict:delete',   '2',        null,                       '0',      null,     null,                  null,       null,                    '0');
INSERT INTO `sys_menu` VALUES ('35',  '接口文档',   '0',    'http://127.0.0.1:9100/swagger-ui.html',      null,                '1',       'el-icon-document',          '3',      null,    null,                  'admin',    '2018-12-27 11:04:18',    '0');
INSERT INTO `sys_menu` VALUES ('38',  '服务监控',   '43',   'http://127.0.0.1:9100/',                     '',                  '1',       'el-icon-view',              '1',      'admin', '2020-10-01 00:00:00', 'admin',    '2020-10-01 00:00:00',    '0');
INSERT INTO `sys_menu` VALUES ('41',  '注册中心',   '44',   'http://127.0.0.1:9100',                      '',                  '1',       'el-icon-view',              '0',      'admin', '2020-10-01 00:00:00', 'admin',    '2020-10-01 00:00:00',    '0');
INSERT INTO `sys_menu` VALUES ('42',  '代码生成',    '0',   '/generator/generator',                       '',                  '1',       'el-icon-star-on',           '5',      'admin', '2020-10-01 00:00:00', 'admin',    '2020-10-01 00:00:00',    '0');
INSERT INTO `sys_menu` VALUES ('43',  '系统监控',    '0',   '',                                           '',                  '0',       'el-icon-info',              '1',      'admin', '2020-10-01 00:00:00', 'admin',    '2020-10-01 00:00:00',    '0');
INSERT INTO `sys_menu` VALUES ('44',  '服务治理',    '0',   '',                                           '',                  '0',       'el-icon-service',           '2',      'admin', '2020-10-01 00:00:00', 'admin',    '2020-10-01 00:00:00',    '0');

-- ----------------------------
-- 6、角色菜单表（sys_role_menu）角色 1-N 菜单
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `id`                   bigint(20)     NOT NULL AUTO_INCREMENT     COMMENT '编号',
  `role_id`              bigint(20)     DEFAULT NULL                COMMENT '角色ID',
  `menu_id`              bigint(20)     DEFAULT NULL                COMMENT '菜单ID',
  `create_by`            varchar(50)    DEFAULT NULL                COMMENT '创建人',
  `create_time`          datetime       DEFAULT NULL                COMMENT '创建时间',
  `last_update_by`       varchar(50)    DEFAULT NULL                COMMENT '更新人',
  `last_update_time`     datetime       DEFAULT NULL                COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COMMENT='角色菜单表';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('1',    '1',    '1',    'admin',    '2020-10-01 00:00:00',    null,    null);
INSERT INTO `sys_role_menu` VALUES ('2',    '1',    '2',    'admin',    '2020-10-01 00:00:00',    null,    null);
INSERT INTO `sys_role_menu` VALUES ('3',    '1',    '3',    'admin',    '2020-10-01 00:00:00',    null,    null);
INSERT INTO `sys_role_menu` VALUES ('4',    '1',    '4',    'admin',    '2020-10-01 00:00:00',    null,    null);
INSERT INTO `sys_role_menu` VALUES ('5',    '1',    '5',    'admin',    '2020-10-01 00:00:00',    null,    null);
INSERT INTO `sys_role_menu` VALUES ('6',    '1',    '6',    'admin',    '2020-10-01 00:00:00',    null,    null);
INSERT INTO `sys_role_menu` VALUES ('7',    '1',    '7',    'admin',    '2020-10-01 00:00:00',    null,    null);
INSERT INTO `sys_role_menu` VALUES ('8',    '1',    '8',    'admin',    '2020-10-01 00:00:00',    null,    null);
INSERT INTO `sys_role_menu` VALUES ('9',    '1',    '9',    'admin',    '2020-10-01 00:00:00',    null,    null);
INSERT INTO `sys_role_menu` VALUES ('10',   '1',    '10',   'admin',    '2020-10-01 00:00:00',    null,    null);
INSERT INTO `sys_role_menu` VALUES ('11',   '1',    '11',   'admin',    '2020-10-01 00:00:00',    null,    null);
INSERT INTO `sys_role_menu` VALUES ('12',   '1',    '12',   'admin',    '2020-10-01 00:00:00',    null,    null);
INSERT INTO `sys_role_menu` VALUES ('13',   '1',    '13',   'admin',    '2020-10-01 00:00:00',    null,    null);
INSERT INTO `sys_role_menu` VALUES ('14',   '1',    '14',   'admin',    '2020-10-01 00:00:00',    null,    null);
INSERT INTO `sys_role_menu` VALUES ('15',   '1',    '15',   'admin',    '2020-10-01 00:00:00',    null,    null);
INSERT INTO `sys_role_menu` VALUES ('16',   '1',    '16',   'admin',    '2020-10-01 00:00:00',    null,    null);
INSERT INTO `sys_role_menu` VALUES ('17',   '1',    '17',   'admin',    '2020-10-01 00:00:00',    null,    null);
INSERT INTO `sys_role_menu` VALUES ('18',   '1',    '18',   'admin',    '2020-10-01 00:00:00',    null,    null);
INSERT INTO `sys_role_menu` VALUES ('19',   '1',    '19',   'admin',    '2020-10-01 00:00:00',    null,    null);
INSERT INTO `sys_role_menu` VALUES ('20',   '1',    '20',   'admin',    '2020-10-01 00:00:00',    null,    null);
INSERT INTO `sys_role_menu` VALUES ('21',   '1',    '21',   'admin',    '2020-10-01 00:00:00',    null,    null);
INSERT INTO `sys_role_menu` VALUES ('22',   '1',    '22',   'admin',    '2020-10-01 00:00:00',    null,    null);
INSERT INTO `sys_role_menu` VALUES ('23',   '1',    '23',   'admin',    '2020-10-01 00:00:00',    null,    null);
INSERT INTO `sys_role_menu` VALUES ('24',   '1',    '24',   'admin',    '2020-10-01 00:00:00',    null,    null);
INSERT INTO `sys_role_menu` VALUES ('25',   '1',    '25',   'admin',    '2020-10-01 00:00:00',    null,    null);
INSERT INTO `sys_role_menu` VALUES ('26',   '1',    '26',   'admin',    '2020-10-01 00:00:00',    null,    null);
INSERT INTO `sys_role_menu` VALUES ('27',   '1',    '27',   'admin',    '2020-10-01 00:00:00',    null,    null);
INSERT INTO `sys_role_menu` VALUES ('28',   '1',    '28',   'admin',    '2020-10-01 00:00:00',    null,    null);
INSERT INTO `sys_role_menu` VALUES ('29',   '1',    '29',   'admin',    '2020-10-01 00:00:00',    null,    null);
INSERT INTO `sys_role_menu` VALUES ('30',   '1',    '30',   'admin',    '2020-10-01 00:00:00',    null,    null);
INSERT INTO `sys_role_menu` VALUES ('31',   '1',    '31',   'admin',    '2020-10-01 00:00:00',    null,    null);
INSERT INTO `sys_role_menu` VALUES ('32',   '1',    '32',   'admin',    '2020-10-01 00:00:00',    null,    null);
INSERT INTO `sys_role_menu` VALUES ('33',   '1',    '33',   'admin',    '2020-10-01 00:00:00',    null,    null);
INSERT INTO `sys_role_menu` VALUES ('34',   '1',    '34',   'admin',    '2020-10-01 00:00:00',    null,    null);
INSERT INTO `sys_role_menu` VALUES ('35',   '1',    '35',   'admin',    '2020-10-01 00:00:00',    null,    null);
INSERT INTO `sys_role_menu` VALUES ('36',   '1',    '36',   'admin',    '2020-10-01 00:00:00',    null,    null);
INSERT INTO `sys_role_menu` VALUES ('37',   '1',    '37',   'admin',    '2020-10-01 00:00:00',    null,    null);
INSERT INTO `sys_role_menu` VALUES ('38',   '1',    '38',   'admin',    '2020-10-01 00:00:00',    null,    null);
INSERT INTO `sys_role_menu` VALUES ('39',   '1',    '39',   'admin',    '2020-10-01 00:00:00',    null,    null);
INSERT INTO `sys_role_menu` VALUES ('40',   '1',    '40',   'admin',    '2020-10-01 00:00:00',    null,    null);
INSERT INTO `sys_role_menu` VALUES ('41',   '1',    '41',   'admin',    '2020-10-01 00:00:00',    null,    null);
INSERT INTO `sys_role_menu` VALUES ('42',   '1',    '42',   'admin',    '2020-10-01 00:00:00',    null,    null);
INSERT INTO `sys_role_menu` VALUES ('43',   '1',    '43',   'admin',    '2020-10-01 00:00:00',    null,    null);
INSERT INTO `sys_role_menu` VALUES ('44',   '1',    '44',   'admin',    '2020-10-01 00:00:00',    null,    null);

-- ----------------------------
-- 7、角色部门表（sys_role_dept）角色 1-N 部门
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept` (
  `id`                  bigint(20)     NOT NULL AUTO_INCREMENT    COMMENT '编号',
  `role_id`             bigint(20)     DEFAULT NULL               COMMENT '角色ID',
  `dept_id`             bigint(20)     DEFAULT NULL               COMMENT '机构ID',
  `create_by`           varchar(50)    DEFAULT NULL               COMMENT '创建人',
  `create_time`         datetime       DEFAULT NULL               COMMENT '创建时间',
  `last_update_by`      varchar(50)    DEFAULT NULL               COMMENT '更新人',
  `last_update_time`    datetime       DEFAULT NULL               COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='角色部门表';

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES ('1',   '1',    '1',   'admin',    '2020-10-01 00:00:00',    null,    null);

-- ----------------------------
-- 8、字典表（sys_dict）
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict` (
  `id`                bigint(20)        NOT NULL AUTO_INCREMENT      COMMENT '字典ID',
  `value`             varchar(100)      NOT NULL                     COMMENT '数据值',
  `label`             varchar(100)      NOT NULL                     COMMENT '标签名',
  `type`              varchar(100)      NOT NULL                     COMMENT '类型',
  `description`       varchar(100)      NOT NULL                     COMMENT '描述',
  `sort`              decimal(10,0)     NOT NULL                     COMMENT '排序（升序）',
  `create_by`         varchar(50)       DEFAULT NULL                 COMMENT '创建人',
  `create_time`       datetime          DEFAULT NULL                 COMMENT '创建时间',
  `last_update_by`    varchar(50)       DEFAULT NULL                 COMMENT '更新人',
  `last_update_time`  datetime          DEFAULT NULL                 COMMENT '更新时间',
  `remarks`           varchar(255)      DEFAULT NULL                 COMMENT '备注信息',
  `del_flag`          tinyint(4)        DEFAULT '0'                  COMMENT '是否删除(-1：已删除  0：正常)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='字典表';

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES ('1',  'male',    '男',  'sex',  '性别',  '0',  'admin',  '2020-10-01 00:00:00',  null,  null,  '性别',  '0');
INSERT INTO `sys_dict` VALUES ('2',  'female',  '女',  'sex',  '性别',  '1',  'admin',  '2020-10-01 00:00:00',  null,  null,  '性别',  '0');

-- ----------------------------
-- 9、系统日志表（sys_log）
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id`                  bigint(20)       NOT NULL AUTO_INCREMENT      COMMENT '日志ID',
  `user_name`           varchar(50)      DEFAULT NULL                 COMMENT '用户名',
  `operation`           varchar(50)      DEFAULT NULL                 COMMENT '用户操作',
  `method`              varchar(200)     DEFAULT NULL                 COMMENT '请求方法',
  `params`              varchar(5000)    DEFAULT NULL                 COMMENT '请求参数',
  `time`                bigint(20)       NOT NULL                     COMMENT '执行时长(毫秒)',
  `ip`                  varchar(64)      DEFAULT NULL                 COMMENT 'IP地址',
  `create_by`           varchar(50)      DEFAULT NULL                 COMMENT '创建人',
  `create_time`         datetime         DEFAULT NULL                 COMMENT '创建时间',
  `last_update_by`      varchar(50)      DEFAULT NULL                 COMMENT '更新人',
  `last_update_time`    datetime         DEFAULT NULL                 COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='系统日志表';

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES ('1', 'admin', null, 'com.nancy.admin.sevice.impl.SysDictServiceImpl.findPage()', '{\"columnFilters\":{\"label\":{\"name\":\"label\",\"value\":\"\"}},\"pageNum\":1,\"pageSize\":8}', '1', '0:0:0:0:0:0:0:1', 'admin', '2020-10-01 00:00:00', null, null);
