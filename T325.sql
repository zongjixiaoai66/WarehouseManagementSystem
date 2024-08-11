/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t325`;
CREATE DATABASE IF NOT EXISTS `t325` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t325`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2023-03-09 13:17:36'),
	(2, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2023-03-09 13:17:36'),
	(3, 'gonggao_types', '公告类型', 1, '公告类型1', NULL, NULL, '2023-03-09 13:17:36'),
	(4, 'gonggao_types', '公告类型', 2, '公告类型2', NULL, NULL, '2023-03-09 13:17:36'),
	(5, 'cangku_types', '仓库', 1, '仓库1', NULL, NULL, '2023-03-09 13:17:36'),
	(6, 'cangku_types', '仓库', 2, '仓库2', NULL, NULL, '2023-03-09 13:17:36'),
	(7, 'wuzi_types', '物资类型', 1, '物资类型1', NULL, NULL, '2023-03-09 13:17:36'),
	(8, 'wuzi_types', '物资类型', 2, '物资类型2', NULL, NULL, '2023-03-09 13:17:36'),
	(9, 'wuzi_types', '物资类型', 3, '物资类型3', NULL, NULL, '2023-03-09 13:17:36'),
	(10, 'wuzi_types', '物资类型', 4, '物资类型4', NULL, NULL, '2023-03-09 13:17:36'),
	(11, 'wuzi_shenqing_types', '物资申请类型', 1, '物资申请类型1', NULL, NULL, '2023-03-09 13:17:36'),
	(12, 'wuzi_shenqing_types', '物资申请类型', 2, '物资申请类型2', NULL, NULL, '2023-03-09 13:17:36'),
	(13, 'wuzi_shenqing_types', '物资申请类型', 3, '物资申请类型3', NULL, NULL, '2023-03-09 13:17:36'),
	(14, 'wuzi_shenqing_types', '物资申请类型', 4, '物资申请类型4', NULL, NULL, '2023-03-09 13:17:36'),
	(15, 'wuzi_shenqing_zhuangtai_types', '申请状态', 1, '已申请', NULL, NULL, '2023-03-09 13:17:36'),
	(16, 'wuzi_shenqing_zhuangtai_types', '申请状态', 2, '申请被拒绝', NULL, NULL, '2023-03-09 13:17:36'),
	(17, 'wuzi_shenqing_zhuangtai_types', '申请状态', 3, '已借出', NULL, NULL, '2023-03-09 13:17:36'),
	(18, 'wuzi_shenqing_zhuangtai_types', '申请状态', 4, '已归还', NULL, NULL, '2023-03-09 13:17:36'),
	(19, 'wuzi_shenqing_yesno_types', '审核状态', 1, '待审核', NULL, NULL, '2023-03-09 13:17:36'),
	(20, 'wuzi_shenqing_yesno_types', '审核状态', 2, '同意', NULL, NULL, '2023-03-09 13:17:36'),
	(21, 'wuzi_shenqing_yesno_types', '审核状态', 3, '拒绝', NULL, NULL, '2023-03-09 13:17:36');

DROP TABLE IF EXISTS `gonggao`;
CREATE TABLE IF NOT EXISTS `gonggao` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_types` int NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='公告';

DELETE FROM `gonggao`;
INSERT INTO `gonggao` (`id`, `gonggao_name`, `gonggao_types`, `insert_time`, `gonggao_content`, `create_time`) VALUES
	(1, '公告名称1', 1, '2023-03-09 13:17:45', '公告详情1', '2023-03-09 13:17:45'),
	(2, '公告名称2', 1, '2023-03-09 13:17:45', '公告详情2', '2023-03-09 13:17:45'),
	(3, '公告名称3', 1, '2023-03-09 13:17:45', '公告详情3', '2023-03-09 13:17:45'),
	(4, '公告名称4', 1, '2023-03-09 13:17:45', '公告详情4', '2023-03-09 13:17:45'),
	(5, '公告名称5', 2, '2023-03-09 13:17:45', '公告详情5', '2023-03-09 13:17:45'),
	(6, '公告名称6', 1, '2023-03-09 13:17:45', '公告详情6', '2023-03-09 13:17:45'),
	(7, '公告名称7', 1, '2023-03-09 13:17:45', '公告详情7', '2023-03-09 13:17:45'),
	(8, '公告名称8', 1, '2023-03-09 13:17:45', '公告详情8', '2023-03-09 13:17:45'),
	(9, '公告名称9', 1, '2023-03-09 13:17:45', '公告详情9', '2023-03-09 13:17:45'),
	(10, '公告名称10', 2, '2023-03-09 13:17:45', '公告详情10', '2023-03-09 13:17:45'),
	(11, '公告名称11', 2, '2023-03-09 13:17:45', '公告详情11', '2023-03-09 13:17:45'),
	(12, '公告名称12', 1, '2023-03-09 13:17:45', '公告详情12', '2023-03-09 13:17:45'),
	(13, '公告名称13', 2, '2023-03-09 13:17:45', '公告详情13', '2023-03-09 13:17:45'),
	(14, '公告名称14', 2, '2023-03-09 13:17:45', '公告详情14', '2023-03-09 13:17:45');

DROP TABLE IF EXISTS `laoshi`;
CREATE TABLE IF NOT EXISTS `laoshi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `laoshi_name` varchar(200) DEFAULT NULL COMMENT '仓库管理员姓名 Search111 ',
  `laoshi_phone` varchar(200) DEFAULT NULL COMMENT '仓库管理员手机号',
  `laoshi_id_number` varchar(200) DEFAULT NULL COMMENT '仓库管理员身份证号',
  `laoshi_photo` varchar(200) DEFAULT NULL COMMENT '仓库管理员头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `laoshi_email` varchar(200) DEFAULT NULL COMMENT '仓库管理员邮箱',
  `laoshi_address` varchar(200) DEFAULT NULL COMMENT '仓库管理员住址',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='仓库管理员';

DELETE FROM `laoshi`;
INSERT INTO `laoshi` (`id`, `username`, `password`, `laoshi_name`, `laoshi_phone`, `laoshi_id_number`, `laoshi_photo`, `sex_types`, `laoshi_email`, `laoshi_address`, `create_time`) VALUES
	(1, '仓库管理员1', '123456', '仓库管理员姓名1', '17703786901', '410224199010102001', 'upload/laoshi1.jpg', 1, '1@qq.com', '仓库管理员住址1', '2023-03-09 13:17:45'),
	(2, '仓库管理员2', '123456', '仓库管理员姓名2', '17703786902', '410224199010102002', 'upload/laoshi2.jpg', 2, '2@qq.com', '仓库管理员住址2', '2023-03-09 13:17:45'),
	(3, '仓库管理员3', '123456', '仓库管理员姓名3', '17703786903', '410224199010102003', 'upload/laoshi3.jpg', 1, '3@qq.com', '仓库管理员住址3', '2023-03-09 13:17:45');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'admin', 'users', '管理员', '6xfxuly5ewn854k20eyrbsykql1vyt27', '2023-03-09 13:29:25', '2024-08-04 02:56:00'),
	(2, 1, 'a1', 'xuesheng', '用户', '2dtg1p9ityb2iwuobb1cp0whg8clnskc', '2023-03-09 13:45:13', '2024-08-04 02:56:58'),
	(3, 4, 'a5', 'xuesheng', '用户', 'lby1psrsbswx5pri21w8kofirwmpdubg', '2023-03-09 13:46:53', '2023-03-09 14:48:32'),
	(4, 1, 'a1', 'laoshi', '仓库管理员', '88v54m8r2odzo080go1k16ny5dimeiav', '2023-03-09 13:49:16', '2024-08-04 02:57:10'),
	(5, 1, 'a1', 'laoshi', '管理人员', 'kqubi4vvildfwgnavop85b2g8hkp3wpl', '2023-03-11 05:12:36', '2023-03-11 06:12:36');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2023-03-09 13:17:35');

DROP TABLE IF EXISTS `wuzi`;
CREATE TABLE IF NOT EXISTS `wuzi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `wuzi_uuid_number` varchar(200) DEFAULT NULL COMMENT '物资编号',
  `wuzi_name` varchar(200) DEFAULT NULL COMMENT '物资名称  Search111 ',
  `wuzi_photo` varchar(200) DEFAULT NULL COMMENT '物资照片',
  `wuzi_danwei` varchar(200) DEFAULT NULL COMMENT '单位',
  `wuzi_types` int DEFAULT NULL COMMENT '物资类型 Search111',
  `wuzi_kucun_number` int DEFAULT NULL COMMENT '物资数量',
  `wuzi_yuzhi` int DEFAULT NULL COMMENT '警戒值',
  `cangku_types` int DEFAULT NULL COMMENT '仓库',
  `wuzi_content` text COMMENT '物资介绍 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='物资';

DELETE FROM `wuzi`;
INSERT INTO `wuzi` (`id`, `wuzi_uuid_number`, `wuzi_name`, `wuzi_photo`, `wuzi_danwei`, `wuzi_types`, `wuzi_kucun_number`, `wuzi_yuzhi`, `cangku_types`, `wuzi_content`, `insert_time`, `create_time`) VALUES
	(1, '1678195065666', '物资名称1', 'upload/wuzi1.jpg', '个', 4, 101, 10, 1, '物资介绍1', '2023-03-09 13:17:45', '2023-03-09 13:17:45'),
	(2, '1678195065654', '物资名称2', 'upload/wuzi2.jpg', '个', 2, 102, 10, 1, '物资介绍2', '2023-03-09 13:17:45', '2023-03-09 13:17:45'),
	(3, '1678195065626', '物资名称3', 'upload/wuzi3.jpg', '个', 3, 103, 10, 2, '物资介绍3', '2023-03-09 13:17:45', '2023-03-09 13:17:45'),
	(4, '1678195065662', '物资名称4', 'upload/wuzi4.jpg', '个', 2, 104, 10, 1, '物资介绍4', '2023-03-09 13:17:45', '2023-03-09 13:17:45'),
	(5, '1678195065640', '物资名称5', 'upload/wuzi5.jpg', '个', 2, 105, 10, 2, '物资介绍5', '2023-03-09 13:17:45', '2023-03-09 13:17:45'),
	(6, '1678195065584', '物资名称6', 'upload/wuzi6.jpg', '个', 3, 106, 10, 1, '物资介绍6', '2023-03-09 13:17:45', '2023-03-09 13:17:45'),
	(7, '1678195065615', '物资名称7', 'upload/wuzi7.jpg', '个', 3, 107, 10, 2, '物资介绍7', '2023-03-09 13:17:45', '2023-03-09 13:17:45'),
	(8, '1678195065593', '物资名称8', 'upload/wuzi8.jpg', '个', 3, 108, 10, 1, '物资介绍8', '2023-03-09 13:17:45', '2023-03-09 13:17:45'),
	(9, '1678195065659', '物资名称9', 'upload/wuzi9.jpg', '个', 1, 109, 10, 2, '物资介绍9', '2023-03-09 13:17:45', '2023-03-09 13:17:45'),
	(10, '1678195065602', '物资名称10', 'upload/wuzi10.jpg', '个', 3, 1010, 10, 2, '物资介绍10', '2023-03-09 13:17:45', '2023-03-09 13:17:45'),
	(11, '1678195065670', '物资名称11', 'upload/wuzi11.jpg', '个', 1, 1011, 10, 1, '物资介绍11', '2023-03-09 13:17:45', '2023-03-09 13:17:45'),
	(12, '1678195065592', '物资名称12', 'upload/wuzi12.jpg', '个', 4, 10, 10, 1, '物资介绍12', '2023-03-09 13:17:45', '2023-03-09 13:17:45'),
	(13, '1678195065651', '物资名称13', 'upload/wuzi13.jpg', '个', 1, 1013, 10, 2, '物资介绍13', '2023-03-09 13:17:45', '2023-03-09 13:17:45'),
	(14, '1678195065629', '物资名称14', 'upload/wuzi14.jpg', '个', 2, 1231, 10, 2, '物资介绍14', '2023-03-09 13:17:45', '2023-03-09 13:17:45');

DROP TABLE IF EXISTS `wuzi_shenqing`;
CREATE TABLE IF NOT EXISTS `wuzi_shenqing` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `xuesheng_id` int DEFAULT NULL COMMENT '用户',
  `wuzi_id` int DEFAULT NULL COMMENT '物资',
  `wuzi_shenqing_uuid_number` varchar(200) DEFAULT NULL COMMENT '物资申请编号',
  `wuzi_shenqing_types` int DEFAULT NULL COMMENT '物资申请类型 Search111',
  `wuzi_shenqing_content` text COMMENT '申请缘由 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `sheqing_number` int DEFAULT NULL COMMENT '申请数量',
  `yujiguihuan_time` timestamp NULL DEFAULT NULL COMMENT '预计归还时间',
  `wuzi_shenqing_zhuangtai_types` int DEFAULT NULL COMMENT '申请状态 Search111',
  `wuzi_shenqing_yesno_types` int DEFAULT NULL COMMENT '审核状态 Search111',
  `wuzi_shenqing_yesno_text` text COMMENT '审核意见',
  `wuzi_shenqing_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='物资申请';

DELETE FROM `wuzi_shenqing`;
INSERT INTO `wuzi_shenqing` (`id`, `xuesheng_id`, `wuzi_id`, `wuzi_shenqing_uuid_number`, `wuzi_shenqing_types`, `wuzi_shenqing_content`, `insert_time`, `sheqing_number`, `yujiguihuan_time`, `wuzi_shenqing_zhuangtai_types`, `wuzi_shenqing_yesno_types`, `wuzi_shenqing_yesno_text`, `wuzi_shenqing_shenhe_time`, `create_time`) VALUES
	(1, 1, 1, '1678195065633', 4, '申请缘由1', '2023-03-09 13:17:45', 16, '2023-03-09 13:17:45', 4, 2, '通过', '2023-03-09 13:17:45', '2023-03-09 13:17:45'),
	(2, 3, 2, '1678195065642', 2, '申请缘由2', '2023-03-09 13:17:45', 64, '2023-03-09 13:17:45', 4, 2, '通过', '2023-03-09 13:17:45', '2023-03-09 13:17:45'),
	(3, 3, 3, '1678195065648', 2, '申请缘由3', '2023-03-09 13:17:45', 294, '2023-03-09 13:17:45', 4, 2, '通过', '2023-03-09 13:17:45', '2023-03-09 13:17:45'),
	(4, 1, 4, '1678195065618', 1, '申请缘由4', '2023-03-09 13:17:45', 400, '2023-03-09 13:17:45', 4, 2, '通过', '2023-03-09 13:17:45', '2023-03-09 13:17:45'),
	(5, 3, 5, '1678195065598', 1, '申请缘由5', '2023-03-09 13:17:45', 233, '2023-03-09 13:17:45', 4, 2, '通过', '2023-03-09 13:17:45', '2023-03-09 13:17:45'),
	(6, 3, 6, '1678195065637', 4, '申请缘由6', '2023-03-09 13:17:45', 408, '2023-03-09 13:17:45', 4, 2, '通过', '2023-03-09 13:17:45', '2023-03-09 13:17:45'),
	(7, 2, 7, '1678195065627', 3, '申请缘由7', '2023-03-09 13:17:45', 118, '2023-03-09 13:17:45', 4, 2, '通过', '2023-03-09 13:17:45', '2023-03-09 13:17:45'),
	(8, 1, 8, '1678195065637', 3, '申请缘由8', '2023-03-09 13:17:45', 324, '2023-03-09 13:17:45', 4, 2, '通过', '2023-03-09 13:17:45', '2023-03-09 13:17:45'),
	(9, 1, 9, '1678195065646', 4, '申请缘由9', '2023-03-09 13:17:45', 111, '2023-03-09 13:17:45', 3, 2, '通过', '2023-03-09 13:17:45', '2023-03-09 13:17:45'),
	(10, 2, 10, '1678195065619', 1, '申请缘由10', '2023-03-09 13:17:45', 320, '2023-03-09 13:17:45', 3, 2, '通过', '2023-03-09 13:17:45', '2023-03-09 13:17:45'),
	(11, 3, 11, '1678195065628', 1, '申请缘由11', '2023-03-09 13:17:45', 426, '2023-03-09 13:17:45', 3, 2, '通过', '2023-03-09 13:17:45', '2023-03-09 13:17:45'),
	(12, 1, 12, '1678195065623', 4, '申请缘由12', '2023-03-09 13:17:45', 339, '2023-03-09 13:17:45', 2, 3, '拒绝', '2023-03-09 13:17:45', '2023-03-09 13:17:45'),
	(13, 1, 13, '1678195065625', 2, '申请缘由13', '2023-03-09 13:17:45', 397, '2023-03-09 13:17:45', 3, 2, '同意', '2023-03-09 13:17:45', '2023-03-09 13:17:45'),
	(14, 3, 14, '1678195065595', 2, '申请缘由14', '2023-03-09 13:17:45', 217, '2023-03-09 13:17:45', 4, 2, '同意', '2023-03-09 13:17:45', '2023-03-09 13:17:45'),
	(15, 4, 13, '1678196919084', 2, '<p>缘由111</p>', '2023-03-09 13:49:07', 20, '2023-03-10 16:00:00', 4, 2, '广东省归属感', '2023-03-09 13:49:34', '2023-03-09 13:49:07');

DROP TABLE IF EXISTS `xuesheng`;
CREATE TABLE IF NOT EXISTS `xuesheng` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `xuesheng_uuid_number` varchar(200) DEFAULT NULL COMMENT '学号 Search111 ',
  `xuesheng_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `xuesheng_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `xuesheng_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `xuesheng_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `xuesheng_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `xuesheng_address` varchar(200) DEFAULT NULL COMMENT '用户住址',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `xuesheng`;
INSERT INTO `xuesheng` (`id`, `username`, `password`, `xuesheng_uuid_number`, `xuesheng_name`, `xuesheng_phone`, `xuesheng_id_number`, `xuesheng_photo`, `sex_types`, `xuesheng_email`, `xuesheng_address`, `create_time`) VALUES
	(1, '用户1', '123456', '1678195065593', '用户姓名1', '17703786901', '410224199010102001', 'upload/xuesheng1.jpg', 2, '1@qq.com', '用户住址1', '2023-03-09 13:17:45'),
	(2, '用户2', '123456', '1678195065633', '用户姓名2', '17703786902', '410224199010102002', 'upload/xuesheng2.jpg', 1, '2@qq.com', '用户住址2', '2023-03-09 13:17:45'),
	(3, '用户3', '123456', '1678195065664', '用户姓名3', '17703786903', '410224199010102003', 'upload/xuesheng3.jpg', 1, '3@qq.com', '用户住址3', '2023-03-09 13:17:45'),
	(4, '用户5', '123456', '1678196807106', '张5', '17703786905', '410224199989858805', '/upload/1678196823338.jpg', 1, '5@qq.com', '地址111', '2023-03-09 13:46:47');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
