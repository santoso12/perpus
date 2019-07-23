/*
 Navicat Premium Data Transfer

 Source Server         : lokal
 Source Server Type    : MySQL
 Source Server Version : 100137
 Source Host           : localhost:3306
 Source Schema         : eprints

 Target Server Type    : MySQL
 Target Server Version : 100137
 File Encoding         : 65001

 Date: 23/07/2019 16:00:03
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for publikasi
-- ----------------------------
DROP TABLE IF EXISTS `publikasi`;
CREATE TABLE `publikasi`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NULL DEFAULT NULL,
  `id_jenis_publikasi` int(11) NULL DEFAULT NULL,
  `id_kategori_publikasi` int(11) NULL DEFAULT NULL,
  `judul` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `publisher` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tanggal_submission` datetime(0) NULL DEFAULT NULL,
  `status_draft_artikel` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'submited, accepted',
  `status_verifikasi` int(11) NULL DEFAULT NULL,
  `is_approved` int(1) NULL DEFAULT NULL,
  `approved_date` datetime(0) NULL DEFAULT NULL,
  `approved_by` int(11) NULL DEFAULT NULL,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `create_by` int(11) NULL DEFAULT NULL,
  `create_ip` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `update_date` datetime(0) NULL DEFAULT NULL,
  `update_by` int(11) NULL DEFAULT NULL,
  `update_ip` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `file_path` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `file_url` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `file_size` double NULL DEFAULT NULL,
  `file_type` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `url_jurnal_seminar` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of publikasi
-- ----------------------------
INSERT INTO `publikasi` VALUES (1, NULL, NULL, 0, 'asdf', 'asdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `publikasi` VALUES (2, NULL, NULL, 0, 'asdf', 'asdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `publikasi` VALUES (3, NULL, NULL, 0, 'pengumuman', 'asdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `publikasi` VALUES (4, NULL, 2, 0, 'pengumuman', 'qwer', '2019-07-16 00:00:00', '1', NULL, NULL, NULL, NULL, '2019-07-15 10:41:30', NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `publikasi` VALUES (5, NULL, 2, 0, 'pengumuman', 'qwer', '2019-07-16 00:00:00', '1', NULL, NULL, NULL, NULL, '2019-07-15 10:43:06', NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `publikasi` VALUES (6, 13585, 13, 0, 'pengumuman', 'adsf', '2019-07-11 00:00:00', '2', NULL, NULL, NULL, NULL, '2019-07-15 14:59:00', NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for ref_jenis_publikasi
-- ----------------------------
DROP TABLE IF EXISTS `ref_jenis_publikasi`;
CREATE TABLE `ref_jenis_publikasi`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_kategori_publikasi` int(11) NULL DEFAULT NULL,
  `nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `create_by` int(11) NULL DEFAULT NULL,
  `create_ip` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `update_date` datetime(0) NULL DEFAULT NULL,
  `update_by` int(11) NULL DEFAULT NULL,
  `update_ip` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ref_jenis_publikasi
-- ----------------------------
INSERT INTO `ref_jenis_publikasi` VALUES (1, NULL, 'Seminar Nasional', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ref_jenis_publikasi` VALUES (2, NULL, 'Seminar Internasioanl', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ref_jenis_publikasi` VALUES (3, NULL, 'Seminar Internasional Terindeks Berprestasi', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ref_jenis_publikasi` VALUES (4, NULL, 'Jurnal Nasional', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ref_jenis_publikasi` VALUES (5, NULL, 'Jurnal Nasional Terakreditasi Sinta 1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ref_jenis_publikasi` VALUES (6, NULL, 'Jurnal Nasional Terakreditasi Sinta 2', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ref_jenis_publikasi` VALUES (7, NULL, 'Jurnal Nasional Terakreditasi Sinta 3', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ref_jenis_publikasi` VALUES (8, NULL, 'Jurnal Nasional Terakreditasi Sinta 4', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ref_jenis_publikasi` VALUES (9, NULL, 'Jurnal Internasional Tidak Terindeks (ISBN)', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ref_jenis_publikasi` VALUES (10, NULL, 'Jurnal Internasional Terindeks ', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ref_jenis_publikasi` VALUES (11, NULL, 'Jurnal Internasional Terindeks Scopus Q1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ref_jenis_publikasi` VALUES (12, NULL, 'Jurnal Internasional Terindeks Scopus Q2', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ref_jenis_publikasi` VALUES (13, NULL, 'Jurnal Internasional Terindeks Scopus Q3', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ref_jenis_publikasi` VALUES (14, NULL, 'Jurnal Internasional Terindeks Scopus Q4', NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `userid` int(11) NOT NULL,
  `rev_number` int(11) NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `usertype` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `newemail` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `newpassword` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `pin` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `pinsettime` int(11) NULL DEFAULT NULL,
  `joined_year` smallint(6) NULL DEFAULT NULL,
  `joined_month` smallint(6) NULL DEFAULT NULL,
  `joined_day` smallint(6) NULL DEFAULT NULL,
  `joined_hour` smallint(6) NULL DEFAULT NULL,
  `joined_minute` smallint(6) NULL DEFAULT NULL,
  `joined_second` smallint(6) NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `lang` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `frequency` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `mailempty` varchar(5) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `review_filters` text CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `latitude` float NULL DEFAULT NULL,
  `longitude` float NULL DEFAULT NULL,
  `preference` blob NULL,
  `name_family` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `name_given` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `name_lineage` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `name_honourific` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `dept` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `org` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `address` text CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `country` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `hideemail` varchar(5) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `os` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `url` text CHARACTER SET utf8 COLLATE utf8_bin NULL,
  PRIMARY KEY (`userid`) USING BTREE,
  INDEX `user_rev_number_1`(`rev_number`) USING BTREE,
  INDEX `user_username_1`(`username`) USING BTREE,
  INDEX `user_usertype_1`(`usertype`) USING BTREE,
  INDEX `user_pinsettime_1`(`pinsettime`) USING BTREE,
  INDEX `user_joined_year_6`(`joined_year`, `joined_month`, `joined_day`, `joined_hour`, `joined_minute`, `joined_second`) USING BTREE,
  INDEX `user_lang_1`(`lang`) USING BTREE,
  INDEX `user_frequency_1`(`frequency`) USING BTREE,
  INDEX `user_mailempty_1`(`mailempty`) USING BTREE,
  INDEX `user_latitude_1`(`latitude`) USING BTREE,
  INDEX `user_longitude_1`(`longitude`) USING BTREE,
  INDEX `user_hideemail_1`(`hideemail`) USING BTREE,
  INDEX `user_os_1`(`os`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 3, 'admin', 'RjwBtddpjvitM', 'admin', NULL, NULL, NULL, NULL, 2010, 11, 14, 1, 59, 12, 'wa2n@uns.ac.id', NULL, 'never', 'FALSE', NULL, NULL, NULL, 0x050703000000010A3B696D706F7274696420646174657374616D702075736572696420736F757263655F7265706F7369746F72792075726C206465736372697074696F6E0000001E73637265656E2E6C697374696E67732E636F6C756D6E732E696D706F7274, 'admin', 'admin', '', 'Mr.', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (3, 3, 'wa2n', 'sBe3eb31aFDFY', 'editor', NULL, NULL, NULL, NULL, 2010, 11, 14, 14, 47, 2, 'w4ww4n@yahoo.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'Prastiawan', 'M', '', 'Ardian', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (7, 4, 'wasis', 'qVZGqJVXwYces', 'editor', NULL, NULL, NULL, NULL, 2010, 11, 19, 15, 50, 31, 'wasis.putra@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, 0x050703000000010402000000080A05696E626F780A01310A066275666665720A01310A076172636869766508810A0864656C6574696F6E08810000001B53637265656E3A3A4974656D732F657072696E745F737461747573, 'putra', 'wasis', '', 'mr.', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (16, 3, 'andi', 'byw5txAnPWZNI', 'editor', NULL, NULL, NULL, NULL, 2010, 11, 24, 12, 32, 34, NULL, NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (17, 3, 'danny', 'fAMGISoFRQMGo', 'editor', NULL, NULL, NULL, NULL, 2010, 11, 24, 12, 34, 53, NULL, NULL, 'never', 'FALSE', '1|1||eprint|-', NULL, NULL, NULL, '', '', '', 'danny', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (18, 3, 'oyis', '6AuLohwlqdALM', 'editor', NULL, NULL, NULL, NULL, 2010, 11, 24, 12, 35, 43, NULL, NULL, 'never', 'FALSE', '1|1||eprint|-|title:title:ALL:EQ:*|type:type:ANY:EQ:thesis|userid:userid:ALL:EQ:oyis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (19, 3, 'anggit', 'xB/iXhahwU/3U', 'editor', NULL, NULL, NULL, NULL, 2010, 11, 24, 12, 36, 28, NULL, NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (20, 3, 'ramto', '3BnhE3RK3bdDE', 'editor', NULL, NULL, NULL, NULL, 2010, 11, 24, 12, 36, 57, NULL, NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (21, 3, 'mia', 'pIwbHCVTA3QAE', 'editor', NULL, NULL, NULL, NULL, 2010, 11, 24, 12, 43, 45, NULL, NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (22, 3, 'iphe', '/q76s4i7/epPI', 'editor', NULL, NULL, NULL, NULL, 2010, 11, 24, 14, 41, 51, NULL, NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (23, 3, 'suryanto', 'xZnoPJE29ShBs', 'editor', NULL, NULL, NULL, NULL, 2010, 11, 24, 22, 8, 7, NULL, NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (25, 3, 'moko', 'IpUrISzP5NT/Q', 'admin', NULL, NULL, NULL, NULL, 2011, 2, 24, 12, 47, 23, 'moko@uns.ac.id', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'moko', 'moko', '', 'moko', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (721, 3, 'azis', NULL, 'admin', NULL, NULL, NULL, NULL, 2013, 5, 6, 16, 27, 53, 'azis.rahmanto@yahoo.com', NULL, 'never', 'TRUE', NULL, NULL, NULL, NULL, 'r', 'azis', '', 'mr', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (722, 2, 'azisr', NULL, 'admin', NULL, NULL, NULL, NULL, 2013, 5, 6, 16, 34, 33, NULL, NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (723, 5, 'bangayee', 'GYUjMcU0ibEAM', 'admin', NULL, NULL, NULL, NULL, 2013, 5, 6, 16, 36, 16, 'ayee.gitu@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, 0x050703000000010402000000080A05696E626F780A000A066275666665720A000A076172636869766508810A0864656C6574696F6E0A000000001B53637265656E3A3A4974656D732F657072696E745F737461747573, 'r', 'azis', '', 'mr', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (724, 3, 'admin007', 'm9N4UvKGGjumw', 'editor', NULL, NULL, NULL, NULL, 2013, 5, 6, 16, 49, 14, 'azis.rahmanto@yahoo.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, 0x050703000000010402000000080A05696E626F780A000A066275666665720A000A07617263686976650A01310A0864656C6574696F6E0A000000001B53637265656E3A3A4974656D732F657072696E745F737461747573, '007', 'admin', '', 'mr', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (725, 3, 'hezby', 'oim4SuHMDZ0Ko', 'admin', NULL, NULL, NULL, NULL, 2013, 5, 6, 21, 34, 22, NULL, NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (815, 3, 'cahyadi', 'fzCdJ.jIfuH6c', 'editor', NULL, NULL, NULL, NULL, 2013, 7, 1, 22, 43, 20, 'ayee.gitu@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'kurniawan', 'cahyadi', '', 'mas', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (814, 4, 'gilang', '1wlUvFWC/CXFY', 'admin', NULL, NULL, NULL, NULL, 2013, 7, 1, 22, 40, 40, 'ayee.gitu@gmail.com', NULL, 'never', 'FALSE', '1|1||eprint|-', NULL, NULL, 0x050703000000010402000000080A05696E626F780A000A066275666665720A01310A076172636869766508810A0864656C6574696F6E0A000000001B53637265656E3A3A4974656D732F657072696E745F737461747573, 'aprianto', 'gilang', '', 'mas', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (816, 3, 'lala', 'AAvxQ61eCOpVM', 'editor', NULL, NULL, NULL, NULL, 2013, 7, 1, 22, 45, 18, 'ayee.gitu@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'larastiti', 'sukma', '', 'mbak', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (817, 3, 'hesby', 'XBcRAtq8R2x32', 'editor', NULL, NULL, NULL, NULL, 2013, 7, 1, 22, 46, 48, 'ayee.gitu@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'hezby', 'muhammad', '', 'mas', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (818, 3, 'rizan', 'kD2d0erPwJ8YM', 'editor', NULL, NULL, NULL, NULL, 2013, 7, 1, 22, 47, 47, 'ayee.gitu@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'nugroho', 'rizan', '', 'mas', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (819, 3, 'faishol', 'qEy1SjwLC0JGM', 'editor', NULL, NULL, NULL, NULL, 2013, 7, 1, 22, 49, 33, 'ayee.gitu@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'nurhuda', 'faishol', '', 'mas', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (2646, 7, '4dm1n', '9r5T7aEGDQD82', 'admin', NULL, NULL, NULL, NULL, 2014, 1, 15, 13, 59, 13, 'webmaster.uns@gmail.com', NULL, 'never', 'FALSE', '1|1||eprint|-|title:title:ANY:IN:Keparahan Akne Vulgaris|type:type:ANY:EQ:thesis', NULL, NULL, 0x050703000000010402000000080A05696E626F780A01310A066275666665720A000A07617263686976650A01310A0864656C6574696F6E0A01310000001B53637265656E3A3A4974656D732F657072696E745F737461747573, 'uns', 'eprints', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (3644, 5, 'admin41', 'ULJay5r8h0fk.', 'editor', NULL, NULL, NULL, NULL, 2014, 4, 13, 17, 8, 30, 'eprints.uns@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'Fagustina', 'Anis', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (3645, 3, 'admin42', 'kNjfH/xUvNjuI', 'editor', NULL, NULL, NULL, NULL, 2014, 4, 13, 17, 29, 45, 'eprints.uns@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, 0x050703000000010402000000080A05696E626F780A000A066275666665720A000A07617263686976650A01310A0864656C6574696F6E0A000000001B53637265656E3A3A4974656D732F657072696E745F737461747573, 'Nurcahyani', 'Arissa Aprilia ', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (3646, 3, 'admin43', 'lOEiq96zKXAIA', 'editor', NULL, NULL, NULL, NULL, 2014, 4, 13, 17, 31, 7, 'eprints.uns@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, 0x050703000000010402000000080A05696E626F780A000A066275666665720A000A076172636869766508810A0864656C6574696F6E0A000000001B53637265656E3A3A4974656D732F657072696E745F737461747573, 'Irawati', 'Devi Arlina', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (3647, 3, 'admin44', 'tPdKXq54DLzPU', 'editor', NULL, NULL, NULL, NULL, 2014, 4, 13, 17, 32, 13, 'eprints.uns@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'Pratiwi', 'Dyah', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (3648, 3, 'admin45', 'gQpSb/UFgzUzw', 'editor', NULL, NULL, NULL, NULL, 2014, 4, 13, 17, 33, 32, 'eprints.uns@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'Kusumaningrum', 'Endar ', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (3649, 3, 'admin46', 'SRNPEvHvnkZBk', 'editor', NULL, NULL, NULL, NULL, 2014, 4, 13, 17, 34, 13, 'eprints.uns@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, 0x050703000000010402000000080A05696E626F780A000A066275666665720A000A07617263686976650A01310A0864656C6574696F6E0A000000001B53637265656E3A3A4974656D732F657072696E745F737461747573, 'Adhinata', 'Faisal Dharma ', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (3650, 3, 'admin47', 'ZSMGIJs1kmzW6', 'editor', NULL, NULL, NULL, NULL, 2014, 4, 13, 17, 36, 5, 'eprints.uns@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, 0x050703000000010402000000080A05696E626F780A000A066275666665720A000A076172636869766508810A0864656C6574696F6E0A000000001B53637265656E3A3A4974656D732F657072696E745F737461747573, 'Primadani', 'Lia ', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (3651, 3, 'admin48', 'vUWI3pWBpIYZo', 'editor', NULL, NULL, NULL, NULL, 2014, 4, 13, 17, 37, 32, 'eprints.uns@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, 0x050703000000010402000000080A05696E626F780A000A066275666665720A000A07617263686976650A000A0864656C6574696F6E0A000000001B53637265656E3A3A4974656D732F657072696E745F737461747573, 'Rahmawati', 'Lynda ', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (3652, 4, 'admin49', 'mVRl2o9Cwf3cw', 'editor', NULL, NULL, NULL, NULL, 2014, 4, 13, 17, 38, 46, 'eprints.uns@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, 0x050703000000010402000000080A05696E626F780A000A066275666665720A000A076172636869766508810A0864656C6574696F6E0A000000001B53637265656E3A3A4974656D732F657072696E745F737461747573, 'Purnanda', 'Miftahful ', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (3653, 3, 'admin50', 'PX5aNJvaMaXsE', 'editor', NULL, NULL, NULL, NULL, 2014, 4, 13, 17, 39, 45, 'eprints.uns@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, 0x050703000000010402000000080A05696E626F780A000A066275666665720A000A076172636869766508810A0864656C6574696F6E0A000000001B53637265656E3A3A4974656D732F657072696E745F737461747573, 'Nur Q. A.', 'Miranda ', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (3654, 4, 'admin51', 'wYeGBAFgGHF6g', 'editor', NULL, NULL, NULL, NULL, 2014, 4, 13, 17, 42, 19, 'eprints.uns@gmail.com', NULL, 'never', 'FALSE', '1|1||eprint|-|userid:userid:ALL:EQ:mohammad fatchurrohman', NULL, NULL, NULL, 'Fatchurrohman', 'Mohammad', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (3655, 3, 'admin52', 'qZ06vTEObiQ.o', 'editor', NULL, NULL, NULL, NULL, 2014, 4, 13, 17, 43, 8, 'eprints.uns@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, 0x050703000000010402000000080A05696E626F780A01310A066275666665720A01310A076172636869766508810A0864656C6574696F6E0A01310000001B53637265656E3A3A4974656D732F657072696E745F737461747573, 'Adi', 'Noviana Daruwati Kusuma ', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (3656, 4, 'admin53', 'c0zwRGvO3rMnQ', 'editor', NULL, NULL, NULL, NULL, 2014, 4, 13, 17, 44, 3, 'eprints.uns@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, 0x050703000000010402000000080A05696E626F780A01310A066275666665720A01310A076172636869766508810A0864656C6574696F6E0A01310000001B53637265656E3A3A4974656D732F657072696E745F737461747573, 'Adani', 'Nisaa Adlia ', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (3657, 3, 'admin54', 'c1GDwxQbCUL8M', 'editor', NULL, NULL, NULL, NULL, 2014, 4, 13, 17, 44, 57, 'eprints.uns@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, 0x050703000000010402000000080A05696E626F7808810A066275666665720A000A07617263686976650A01310A0864656C6574696F6E0A000000001B53637265656E3A3A4974656D732F657072696E745F737461747573, 'Anisah', 'Nur ', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (3658, 3, 'admin55', '11Q6RkLG6mvzc', 'editor', NULL, NULL, NULL, NULL, 2014, 4, 13, 17, 46, 2, 'eprints.uns@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'Restia', 'Nurrahma ', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (3659, 3, 'admin56', 'P25PHeRON.r/U', 'editor', NULL, NULL, NULL, NULL, 2014, 4, 13, 17, 46, 56, 'eprints.uns@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, 0x050703000000010402000000080A05696E626F780A01310A066275666665720A01310A076172636869766508810A0864656C6574696F6E0A000000001B53637265656E3A3A4974656D732F657072696E745F737461747573, 'Pradana', 'Prima Adi ', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (3660, 3, 'admin57', 'u4e0ucj8Xizt.', 'editor', NULL, NULL, NULL, NULL, 2014, 4, 13, 17, 48, 31, 'eprints.uns@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'Fauzi', 'Satria Nur ', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (3661, 3, 'admin58', 'z5RwjtCZFYrD6', 'editor', NULL, NULL, NULL, NULL, 2014, 4, 13, 17, 49, 42, 'eprints.uns@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, 0x050703000000010402000000080A05696E626F780A000A066275666665720A000A076172636869766508810A0864656C6574696F6E0A000000001B53637265656E3A3A4974656D732F657072696E745F737461747573, 'Prasetyo', 'Tri Wahyu ', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (3662, 3, 'admin59', 'j6qmIpS7zbd4A', 'editor', NULL, NULL, NULL, NULL, 2014, 4, 13, 17, 50, 41, 'eprints.uns@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, 0x050703000000010402000000080A05696E626F780A000A066275666665720A01310A076172636869766508810A0864656C6574696F6E08810000001B53637265656E3A3A4974656D732F657072696E745F737461747573, 'Suryaningsih', 'Vera ', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (3663, 3, 'admin60', 'U6Ws30nGexxUo', 'editor', NULL, NULL, NULL, NULL, 2014, 4, 13, 17, 51, 20, 'eprints.uns@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, 0x050703000000010402000000080A05696E626F780A000A066275666665720A000A07617263686976650A000A0864656C6574696F6E0A000000001B53637265656E3A3A4974656D732F657072696E745F737461747573, 'Kokasih', 'Vignasari ', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (3664, 3, 'koordinator', 'I9pWElNtBbQXM', 'admin', NULL, NULL, NULL, NULL, 2014, 4, 13, 17, 54, 8, 'eprints.uns@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, 0x050703000000010402000000080A05696E626F780A000A066275666665720A000A07617263686976650A01310A0864656C6574696F6E0A000000001B53637265656E3A3A4974656D732F657072696E745F737461747573, 'volunteer', 'koordinator', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (10548, 3, 'indra', 'SyPHpbTP3UJdM', 'editor', NULL, NULL, NULL, NULL, 2015, 5, 4, 11, 18, 58, 'webmaster@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'indra', 'nur', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (10549, 3, 'fairly', '/AoKdY1/e5r1s', 'editor', NULL, NULL, NULL, NULL, 2015, 5, 4, 11, 22, 11, 'webmaster.uns@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'oktamal', 'fairly', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (10551, 5, 'risalatul', 'XDoK3hnC9qwbE', 'editor', NULL, NULL, NULL, NULL, 2015, 5, 4, 11, 25, 1, 'webmaster.uns@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'hanifah', 'risalatul', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (10552, 3, 'maarif', 'sGhJSY5tpy9CY', 'editor', NULL, NULL, NULL, NULL, 2015, 5, 4, 11, 27, 44, 'webmaster.uns@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'farid', 'maarif', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (10553, 3, 'nachrowi', '9Ihw9aRTD4QoM', 'editor', NULL, NULL, NULL, NULL, 2015, 5, 4, 11, 30, 22, 'webmaster.uns@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'rowi', 'nach', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (10554, 3, 'yudha', 'YL6ccaWbrn1Ss', 'editor', NULL, NULL, NULL, NULL, 2015, 5, 4, 11, 33, 11, 'webmaster.uns@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'kuntoaji', 'yudha', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (10555, 3, 'faisal', 'cP3dxbyjQ6fy6', 'editor', NULL, NULL, NULL, NULL, 2015, 5, 4, 11, 36, 21, 'webmaster.uns@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, 0x050703000000010402000000080A05696E626F780A000A066275666665720A000A07617263686976650A000A0864656C6574696F6E0A000000001B53637265656E3A3A4974656D732F657072696E745F737461747573, 'dharma', 'faisal', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (10556, 6, 'gungun', 'rQjPzRH9OLIOs', 'editor', NULL, NULL, NULL, NULL, 2015, 5, 4, 11, 39, 9, 'webmaster.uns@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'Gunawan', 'Gun Gun', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (10557, 4, 'mukhlis', 'lT3vj2tKdm6XI', 'editor', NULL, NULL, NULL, NULL, 2015, 5, 4, 11, 40, 58, 'webmaster.uns@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'khoirudin', 'muhammad mukhlis', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (10558, 4, 'ilham', 'tUkbah3Ld7ebE', 'editor', NULL, NULL, NULL, NULL, 2015, 5, 4, 11, 44, 9, 'webmaster.uns@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'yahya', 'ilham', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (10559, 4, 'danu', '1XXz/g2EEyWQw', 'admin', NULL, NULL, NULL, NULL, 2015, 5, 4, 11, 46, 51, 'webmaster.uns@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'danu', 'mahatma', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (10560, 4, 'rifqi', 'p173Q7CA7Qv8w', 'editor', NULL, NULL, NULL, NULL, 2015, 5, 4, 11, 49, 51, 'webmaster.uns@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'Irfan', 'Rifqi Imaduddin', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (10561, 4, 'rajendra', '14fwa/TYxyMew', 'admin', NULL, NULL, NULL, NULL, 2015, 5, 4, 11, 53, 13, 'webmaster.uns@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'rajendra', 'rajendra', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (10562, 3, 'ahmad', 'A.9kpUbeUlDUQ', 'editor', NULL, NULL, NULL, NULL, 2015, 5, 4, 11, 59, 16, 'webmaster.uns@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'arifin', 'ahmad', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (10563, 3, 'adit', 'ibUPd8PTQWv/Q', 'editor', NULL, NULL, NULL, NULL, 2015, 5, 4, 12, 2, 34, 'webmaster.uns@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'latif', 'aditya', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (10948, 6, 'perpustakaan', 'tQ5meu.WL7Tgs', 'admin', NULL, NULL, NULL, NULL, 2015, 8, 4, 7, 28, 33, 'pustaka@uns.ac.id', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'Perpustakaan', 'UPT', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (10984, 3, 'ria', 'ReGbJOd0KMYBk', 'admin', NULL, NULL, NULL, NULL, 2015, 8, 18, 5, 21, 46, '11maretuniv@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'ria', 'ria', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (11002, 3, 'david', 'gedFpDzZVpUYQ', 'admin', NULL, NULL, NULL, NULL, 2015, 8, 25, 9, 8, 42, 'webmaster.uns@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'david', 'david', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (11013, 3, 'roikhatul', 'I0j9BZl.QKdzU', 'editor', NULL, NULL, NULL, NULL, 2015, 8, 27, 9, 31, 55, '11maretuniv@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, '', 'Roikhatul Miskiyah', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (11014, 3, 'natasya', '4e/WthjpZLUbg', 'editor', NULL, NULL, NULL, NULL, 2015, 8, 27, 10, 5, 48, '11maretuniv@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'Yohosua', 'Natasya Andalucki', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (11015, 3, 'naufal', '/gZ7.5dWFr3cs', 'editor', NULL, NULL, NULL, NULL, 2015, 8, 27, 10, 7, 8, '11maretuniv@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, 0x050703000000010402000000080A05696E626F7808810A066275666665720A01310A07617263686976650A01310A0864656C6574696F6E0A01310000001B53637265656E3A3A4974656D732F657072696E745F737461747573, 'Indriatmoko', 'Muhammad Naufal', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (11016, 4, 'azinudin', '8huUWiYiOn7p2', 'editor', NULL, NULL, NULL, NULL, 2015, 8, 27, 10, 9, 24, '11maretuniv@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, 0x050703000000010402000000080A05696E626F7808810A066275666665720A01310A076172636869766508810A0864656C6574696F6E08810000001B53637265656E3A3A4974656D732F657072696E745F737461747573, 'Achzab', 'Azinudin', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (11017, 4, 'nilam', 'yjsGXQyv07CsU', 'editor', NULL, NULL, NULL, NULL, 2015, 8, 27, 10, 10, 25, '11maretuniv@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'Rikamukti', 'Nilam', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (11018, 3, 'nadia', 'Ek5clgnpRLrSY', 'editor', NULL, NULL, NULL, NULL, 2015, 8, 27, 10, 12, 4, '11maretuniv@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'Fitriani', 'Nadia Nur', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (11019, 3, 'mfaisal', 'cm7iZrV5hIzqQ', 'editor', NULL, NULL, NULL, NULL, 2015, 8, 27, 10, 13, 36, '11maretuniv@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'M', 'Faisal', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (11020, 3, 'igor', '7mNAQ08u8LtCc', 'editor', NULL, NULL, NULL, NULL, 2015, 8, 27, 10, 14, 47, '11maretuniv@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'Farhan', 'Igor M.', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (11021, 3, 'maharani', '9ntrVZMzSnW0Q', 'editor', NULL, NULL, NULL, NULL, 2015, 8, 27, 10, 15, 40, '11maretuniv@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'Suryono', 'Maharani Angel Ein', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (11023, 3, 'dhamar', '6puTQno/7eeiA', 'editor', NULL, NULL, NULL, NULL, 2015, 8, 27, 10, 16, 51, '11maretuniv@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'Safitri', 'Dhamar Aprilani Dwi', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (11024, 3, 'boby', '1qPyZx/B.iOw.', 'editor', NULL, NULL, NULL, NULL, 2015, 8, 27, 10, 18, 55, '11maretuniv@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, 0x050703000000010402000000080A05696E626F780A000A066275666665720A01310A076172636869766508810A0864656C6574696F6E0A000000001B53637265656E3A3A4974656D732F657072696E745F737461747573, 'Suryawan', 'Boby Anggit', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (11025, 3, 'Rizky', 'NrOwtB7BC1wTs', 'editor', NULL, NULL, NULL, NULL, 2015, 8, 27, 10, 19, 51, '11maretuniv@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, 0x050703000000010402000000080A05696E626F780A01310A0662756666657208810A076172636869766508810A0864656C6574696F6E0A000000001B53637265656E3A3A4974656D732F657072696E745F737461747573, 'Perdana', 'Rizky Taqwa', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (11026, 3, 'endar', 'VvRuTQRPLqHq6', 'editor', NULL, NULL, NULL, NULL, 2015, 8, 27, 10, 20, 41, '11maretuniv@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, 0x050703000000010402000000080A05696E626F780A01310A066275666665720A01310A07617263686976650A01310A0864656C6574696F6E0A01310000001B53637265656E3A3A4974656D732F657072696E745F737461747573, 'Kusumaningrum', 'Endar', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (11027, 3, 'utami', '0w07w25rq7gMc', 'editor', NULL, NULL, NULL, NULL, 2015, 8, 27, 10, 25, 24, '11maretuniv@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, 0x050703000000010402000000080A05696E626F780A01310A0662756666657208810A07617263686976650A01310A0864656C6574696F6E08810000001B53637265656E3A3A4974656D732F657072696E745F737461747573, 'Utami', 'Nur Aisyah Puji', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (11029, 3, 'pratama', '4xxbNXD23ZeZg', 'editor', NULL, NULL, NULL, NULL, 2015, 8, 27, 10, 26, 34, '11maretuniv@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'Putra', 'Rizqy Pratama', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (11030, 3, 'ghulam', 'QyE6RGTm7SuOs', 'editor', NULL, NULL, NULL, NULL, 2015, 8, 27, 10, 27, 17, '11maretuniv@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, 0x050703000000010402000000080A05696E626F780A01310A066275666665720A01310A07617263686976650A01310A0864656C6574696F6E0A01310000001B53637265656E3A3A4974656D732F657072696E745F737461747573, 'Azis', 'Mohamad Ghulam Hirbatul', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (11031, 3, 'ihwan', 'wzuKtAzkgABmU', 'editor', NULL, NULL, NULL, NULL, 2015, 8, 27, 10, 28, 10, '11maretuniv@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'Ali', 'Ihwan', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (11068, 4, 'shobrina', 'CWPOu1zkxnxgM', 'editor', NULL, NULL, NULL, NULL, 2015, 9, 6, 9, 43, 32, 'setijowati.afifah@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, 0x050703000000010402000000080A05696E626F780A000A066275666665720A000A07617263686976650A000A0864656C6574696F6E0A000000001B53637265656E3A3A4974656D732F657072696E745F737461747573, ' ', 'Shobrina', '', 'Afifah', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (11033, 3, 'gunasih', '3Ah4AEB4YX6O2', 'editor', NULL, NULL, NULL, NULL, 2015, 8, 27, 10, 29, 51, '11maretuniv@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'gunasih', 'Gunasih', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (11090, 4, 'Aris', 'd/ZRRydySl4xw', 'editor', NULL, NULL, NULL, NULL, 2015, 9, 11, 22, 1, 20, 'arisminardi@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, ' ', 'Aris', '', 'Minardi', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (11037, 3, 'aprilani', 'wuCenHUWhyzCs', 'editor', NULL, NULL, NULL, NULL, 2015, 8, 28, 3, 24, 57, '11maretuniv@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'Safitri', 'Dhamar Aprilani Dwi', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (11105, 7, 'siska', 'oSeRlK17PSb4s', 'editor', NULL, NULL, NULL, NULL, 2015, 9, 15, 5, 30, 4, 'fransiskameilani@student.uns.ac.id', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'Meilani', 'Fransiska', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (11106, 4, 'faizah', 'nosJuVRLpZS46', 'editor', NULL, NULL, NULL, NULL, 2015, 9, 15, 5, 33, 31, 'faizahyasarah@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'yasarah', 'sarah', '', 'faizah', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (11552, 4, 'ana', 'mMNzBjPclGfL6', 'editor', NULL, NULL, NULL, NULL, 2015, 11, 16, 8, 49, 45, 'iniemail.anna@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'Ana', 'Ana', '', 'Ana', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (11553, 3, 'Afifah', '/O.6/T6sh/JSg', 'editor', NULL, NULL, NULL, NULL, 2015, 11, 16, 8, 55, 18, 'nurlailaafifah@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'Laili', 'Nur', '', 'Afifah', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (11555, 4, 'Azaria', 'zTrJk2ET49MBY', 'editor', NULL, NULL, NULL, NULL, 2015, 11, 16, 8, 58, 29, 'azaria_nrfa@yahoo.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'fadhillah', 'nur', '', 'azaria', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (11575, 3, 'Inang', 'lx7d2L0zhy/eU', 'editor', NULL, NULL, NULL, NULL, 2015, 11, 18, 21, 30, 54, 'ijalaludinsh@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, 0x050703000000010402000000080A05696E626F7808810A066275666665720A01310A076172636869766508810A0864656C6574696F6E08810000001B53637265656E3A3A4974656D732F657072696E745F737461747573, 'H', 'S', '', 'Inang', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (11577, 3, 'hartono', 'BhOTQtv.H5n56', 'editor', NULL, NULL, NULL, NULL, 2015, 11, 19, 22, 43, 53, 'tono4asyiq@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'Asyiq', 'M', '', 'Hartono', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (11862, 9, 'FKIP', 'SfeLlzj96QFjo', 'editor', NULL, NULL, NULL, NULL, 2016, 1, 21, 15, 21, 58, 'FKIP', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, '', '', '', 'FKIP', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (11863, 6, 'FIB', '5zK9NsGaSVohI', 'editor', NULL, NULL, NULL, NULL, 2016, 1, 21, 16, 8, 6, 'FIB', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, '', '', '', 'FIB', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (11864, 3, 'FEB', 'JE8D0ZHu3PSkc', 'editor', NULL, NULL, NULL, NULL, 2016, 1, 21, 16, 29, 32, 'FEB', NULL, 'never', 'FALSE', NULL, NULL, NULL, 0x050703000000010402000000080A05696E626F7808810A0662756666657208810A07617263686976650A000A0864656C6574696F6E08810000001B53637265656E3A3A4974656D732F657072696E745F737461747573, '', '', '', 'FEB', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (11865, 3, 'FISIP', 'xKbkeCHMHCHhk', 'editor', NULL, NULL, NULL, NULL, 2016, 1, 21, 16, 35, 13, 'FISIP', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, '', '', '', 'FISIP', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (11866, 4, 'FHUKUM', 'YZ7Iz8QfYLVuo', 'editor', NULL, NULL, NULL, NULL, 2016, 1, 21, 16, 38, 28, 'FHUKUM', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, '', '', '', 'FHUKUM', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (11867, 3, 'FPERTANIAN', 'Z0LN1mrSat95w', 'editor', NULL, NULL, NULL, NULL, 2016, 1, 21, 16, 53, 32, 'FPERTANIAN', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, '', '', '', 'FPERTANIAN', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (11868, 3, 'FKEDOKTERAN', '81DhB3z9wlV/k', 'editor', NULL, NULL, NULL, NULL, 2016, 1, 21, 16, 54, 52, 'FKEDOKTERAN', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, '', '', '', 'FKEDOKTERAN', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (11869, 3, 'FTEKNIK', 'w3XeVqY0YH2HA', 'editor', NULL, NULL, NULL, NULL, 2016, 1, 21, 16, 56, 16, 'FTEKNIK', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, '', '', '', 'FTEKNIK', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (11870, 3, 'FMIPA', 'l4EPAx.IKEN1c', 'editor', NULL, NULL, NULL, NULL, 2016, 1, 21, 16, 57, 22, 'FMIPA', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, '', '', '', 'FMIPA', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (11871, 3, 'FSRD', 'k5kktdncJNnks', 'editor', NULL, NULL, NULL, NULL, 2016, 1, 21, 16, 58, 20, 'FSRD', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, '', '', '', 'FSRD', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (11872, 3, 'Pascasarjana', 'L62fW9dfJBUqo', 'editor', NULL, NULL, NULL, NULL, 2016, 1, 21, 16, 59, 46, 'Pascasarjana', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, '', '', '', 'Pascasarjana', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (11873, 3, 'Pustaka', 'N8Bw4d1mn4bs2', 'editor', NULL, NULL, NULL, NULL, 2016, 1, 21, 17, 2, 0, 'Pustaka', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, '', '', '', 'Pustaka', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (12183, 4, 'nadyamareta', 'NI/Ehv/LVqvn2', 'editor', NULL, NULL, NULL, NULL, 2016, 3, 22, 10, 24, 31, 'nadyamareta3@gmail.com ', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'Mareta', 'Nadya', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13527, 4, 'luthfi', 'llpwSbRCCWMTc', 'editor', NULL, NULL, NULL, NULL, 2017, 3, 22, 7, 5, 21, 'luthfi.syam@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'Syam', 'Luthfi', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13528, 3, 'aris_setiyoko', 'UnP40Dz1rg3/2', 'editor', NULL, NULL, NULL, NULL, 2017, 3, 22, 7, 9, 53, 'arissetiyoko11@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'Setiyoko', 'Aris', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13530, 3, 'ooo', 'rlYa.MRU3b8co', 'admin', NULL, NULL, NULL, NULL, 2017, 4, 18, 14, 15, 15, 'ooo@oo.oo', NULL, 'never', 'FALSE', '1|1||eprint|-', NULL, NULL, 0x050703000000010402000000080A05696E626F780A01310A066275666665720A01310A076172636869766508810A0864656C6574696F6E08810000001B53637265656E3A3A4974656D732F657072696E745F737461747573, 'ooo', 'ooo', NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13529, 2, 'aaa', 'T5/8QZduN35Bc', 'user', NULL, NULL, NULL, NULL, 2017, 4, 18, 7, 20, 5, 'aaa@aa.aa', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'aaa', 'aaa', '', 'aaa', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13531, 1, 'hghghg', NULL, 'user', NULL, NULL, NULL, NULL, 2017, 4, 19, 7, 30, 26, NULL, NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13532, 3, 'admin_rea', 'juEXTgjM8e3WI', 'editor', NULL, NULL, NULL, NULL, 2017, 7, 4, 5, 16, 9, 'raishachampasjolity@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'Champa', 'Rea Aisha', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13534, 3, 'admin_angga', 'DRiih2yIaMe42', 'editor', NULL, NULL, NULL, NULL, 2017, 7, 6, 7, 45, 23, 'diwangga94@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13535, 6, 'admin_diwangga', 'a1BEh321mH5VQ', 'editor', NULL, NULL, NULL, NULL, 2017, 7, 6, 7, 52, 9, 'diwangga94@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, ' ', ' ', '', 'Diwangga', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13536, 3, 'admin_indrawan', 'U4g3pZxNMLorI', 'editor', NULL, NULL, NULL, NULL, 2017, 7, 6, 7, 58, 26, 'indrawan.sfw@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, ' ', 'indra', '', 'Indrawan', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13537, 3, 'admin_reni', 'g8mi9DhhxkPDs', 'editor', NULL, NULL, NULL, NULL, 2017, 7, 6, 8, 3, 33, 'rheynizme63@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, ' ', 'reni', '', 'Reni', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13538, 3, 'admin_faricha', 'N9ums.C5N9IF6', 'editor', NULL, NULL, NULL, NULL, 2017, 7, 6, 8, 5, 12, 'faricharizqi2@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, ' ', 'Rizqi', '', 'Faricha', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13539, 3, 'admin_zahrotun', 'kcLjPx8SX.4Mc', 'editor', NULL, NULL, NULL, NULL, 2017, 7, 6, 8, 10, 6, 'zahrotunhanifah76@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, ' ', 'Hanifah', '', 'Zahrotun', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13540, 3, 'admin_arief', '/eDjLgWlrhsUw', 'editor', NULL, NULL, NULL, NULL, 2017, 7, 6, 8, 13, 15, 'arief.atmojo93@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, ' ', 'Atmojo', '', 'Arief', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13541, 3, 'admin_annisa', '6glT6Ir7O2VzM', 'editor', NULL, NULL, NULL, NULL, 2017, 7, 6, 8, 15, 11, 'annisafitrit@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'T', 'Fitri', '', 'Annisa', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13542, 3, 'admin_taufik', 'UhoN1CRmjy0rg', 'editor', NULL, NULL, NULL, NULL, 2017, 7, 6, 8, 16, 21, 'taufika728@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, ' ', 'A', '', 'Taufik', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13543, 3, 'admin_intan', 'l.mZdsyWtCksE', 'editor', NULL, NULL, NULL, NULL, 2017, 7, 7, 23, 55, 22, 'imkusumastuti@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'Kusumastuti', 'M', '', 'Intan', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13544, 3, 'admin_ayu', 'C/xvuNMcZJ6gQ', 'editor', NULL, NULL, NULL, NULL, 2017, 7, 7, 23, 56, 41, 'wahyutrianingsih96@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'Trianingsih', ' Wahyu', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13545, 3, 'admin_eka', 'na6RTfyBpt2bo', 'editor', NULL, NULL, NULL, NULL, 2017, 7, 7, 23, 57, 35, 'godelkaka@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'Eka', 'Noviana', '', ' ', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13546, 5, 'admin_herlangga', 'L.g2oeaZhA9wM', 'editor', NULL, NULL, NULL, NULL, 2018, 3, 27, 6, 58, 21, 'hizkiangga@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, 0x050703000000010402000000080A05696E626F780A01310A0662756666657208810A07617263686976650A01310A0864656C6574696F6E0A01310000001B53637265656E3A3A4974656D732F657072696E745F737461747573, 'Hizkiawan', 'Herlangga', '', ' ', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13547, 7, 'admin_imron', '/.rU4oxqwI3l2', 'editor', NULL, NULL, NULL, NULL, 2018, 3, 27, 7, 1, 9, 'imronhizbullah123@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'Hizbullah', 'Imron', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13548, 4, 'admin_adhika', 'x/T2hcOmNeglQ', 'editor', NULL, NULL, NULL, NULL, 2018, 3, 27, 7, 6, 54, 'adhikapri99@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'Ardhana', 'Adhika Pri', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13549, 5, 'admin_dejun', 'eaSteo0ne3z0Q', 'editor', NULL, NULL, NULL, NULL, 2018, 3, 27, 7, 9, 9, 'dedejunsaputra@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'Saputra', 'Dede Junaedi', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13550, 4, 'admin_zain', 'R.cpck0wOY5m6', 'editor', NULL, NULL, NULL, NULL, 2018, 3, 27, 7, 15, 18, 'zezen@student.uns.ac.id', NULL, 'never', 'FALSE', NULL, NULL, NULL, 0x050703000000010402000000080A05696E626F780A01310A066275666665720A01310A076172636869766508810A0864656C6574696F6E0A01310000001B53637265656E3A3A4974656D732F657072696E745F737461747573, 'Rohman', 'Zainur', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13552, 4, 'admin_lafe', 'Uc.vGEKKtR3fk', 'editor', NULL, NULL, NULL, NULL, 2018, 3, 27, 7, 19, 49, 'lafeniamerta@student.uns.ac.id', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'Merta', 'Lafenia', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13553, 4, 'admin_fadil', 'WgHLlDihncKm6', 'editor', NULL, NULL, NULL, NULL, 2018, 3, 27, 7, 23, 22, 'yusufadil064@student.uns.ac.id', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'R', 'Yusuf Fadlila', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13554, 4, 'admin_anas', '1d1AW9T//04FU', 'editor', NULL, NULL, NULL, NULL, 2018, 3, 27, 7, 26, 7, 'anas_ishal@student.uns.ac.id', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'Faishal', 'Anas Falih', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13555, 4, 'admin_ratri', 'Xe/D.zL9k/guw', 'editor', NULL, NULL, NULL, NULL, 2018, 3, 27, 7, 31, 9, 'rdsaja@student.uns.ac.id', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'Saputri', 'Ratri Dwi', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (12213, 3, 'volunteer1', NULL, 'editor', NULL, NULL, NULL, NULL, 2016, 3, 27, 6, 53, 29, NULL, NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (12240, 4, 'khoirul', 'BFiWzmNuVkAo2', 'admin', NULL, NULL, NULL, NULL, 2016, 3, 31, 12, 20, 34, 'khoirul@uns.ac.id', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'Syaifuddin', 'Khoirul', '', 'Mr', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (12248, 4, 'alpen', 'k6qqkuJ0MZK0Y', 'editor', NULL, NULL, NULL, NULL, 2016, 4, 2, 6, 58, 50, 'alpenprasetyo@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'pras', 'alpen', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (12249, 4, 'bontang', 'EgVsu6vKzRNdY', 'editor', NULL, NULL, NULL, NULL, 2016, 4, 2, 7, 14, 36, 'rifqi.irfan@student.uns.ac.id', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'irfan', 'bontang', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (12250, 5, 'denty', 'SlCb.jqW9lHts', 'editor', NULL, NULL, NULL, NULL, 2016, 4, 2, 7, 16, 6, 'dentymarga@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'marga', 'denty', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (12252, 4, 'fauzi', 'NppKJ3X0rIEww', 'editor', NULL, NULL, NULL, NULL, 2016, 4, 2, 7, 24, 29, 'husnulriza@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'ahmad', 'fauzi', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (12253, 3, 'fauzan', 'NrrzohjSHERJ.', 'editor', NULL, NULL, NULL, NULL, 2016, 4, 2, 7, 26, 51, 'ahmadfauzanaji@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'ahmad', 'fauzan', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (12257, 6, 'magida', 'hwEqYkn4HjLHg', 'editor', NULL, NULL, NULL, NULL, 2016, 4, 2, 7, 31, 52, 'dinamagida@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'm', 'dina', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (12258, 3, 'dian', 'xx4CIVKY7WLJE', 'editor', NULL, NULL, NULL, NULL, 2016, 4, 2, 7, 32, 53, 'nurainidianpratiwi22@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'pratiwi', 'dian', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (12259, 3, 'sholikun', 'yfaWf1RgXifPU', 'editor', NULL, NULL, NULL, NULL, 2016, 4, 2, 7, 50, 55, 'muchammadsholikun@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'ikun', 'sholikun', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (12260, 3, 'yulia', 'PSh7eERlSSdaI', 'editor', NULL, NULL, NULL, NULL, 2016, 4, 2, 7, 53, 40, 'triulyanurhalimah@student.uns.ac.id', NULL, 'never', 'FALSE', NULL, NULL, NULL, 0x050703000000010402000000080A05696E626F7808810A066275666665720A01310A076172636869766508810A0864656C6574696F6E08810000001B53637265656E3A3A4974656D732F657072696E745F737461747573, 'nurhalimah', 'yulia', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (12261, 4, 'aripin', '85.ojFclmYgSo', 'editor', NULL, NULL, NULL, NULL, 2016, 4, 2, 7, 57, 57, 'muhamadsahrularifin@ymail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'aripin', 'sahrul', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (12262, 5, 'ekyputri', 'dlWOlTLZsno8I', 'editor', NULL, NULL, NULL, NULL, 2016, 4, 2, 8, 11, 14, 'putrieky29@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'putri', 'eky', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (12263, 3, 'evi', '78W0FoiHveECU', 'editor', NULL, NULL, NULL, NULL, 2016, 4, 2, 8, 12, 49, 'evokhoirun.nisa@yahoo.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'nisa', 'khoirun', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (12264, 3, 'aditya', 'j.XyrFq6gdZUU', 'editor', NULL, NULL, NULL, NULL, 2016, 4, 2, 8, 14, 22, 'arjunamahendra007@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'mahendra', 'satria', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (12265, 3, 'puspita', '7/YasRfmZanOU', 'editor', NULL, NULL, NULL, NULL, 2016, 4, 2, 8, 16, 7, 'fifitpuspitasari3@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'puspitasar', 'fifit', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (12266, 3, 'bibid', '4aLcIYyZh3f3Q', 'editor', NULL, NULL, NULL, NULL, 2016, 4, 2, 8, 17, 27, 'bi2d.widodo@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, 0x050703000000010402000000080A05696E626F7808810A0662756666657208810A07617263686976650A01310A0864656C6574696F6E08810000001B53637265656E3A3A4974656D732F657072696E745F737461747573, 'widodo', 'bibid', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (12304, 3, 'anggra', '9LFwudc6iXceY', 'editor', NULL, NULL, NULL, NULL, 2016, 4, 8, 13, 59, 52, 'anggraprasasti@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'prasasti', 'anggra', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13507, 5, 'admin_andri', 'rB/AcezhiYD.Q', 'editor', NULL, NULL, NULL, NULL, 2016, 10, 22, 3, 59, 28, 'retnoandriani@student.uns.ac.id', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'Andriani', 'Retno', '', ' ', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13508, 5, 'admin_aren', 'LCBk8QJUo/.g2', 'editor', NULL, NULL, NULL, NULL, 2016, 10, 22, 4, 12, 0, 'aren.dps@student.uns.ac.id', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'Dwipa', 'Aren', '', ' ', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13509, 6, 'admin_agista', 'sDYLdeIVYN3XE', 'editor', NULL, NULL, NULL, NULL, 2016, 10, 22, 4, 14, 31, 'yellow3holic@student.uns.ac.id', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'Zulfa Dini', 'Agista', '', ' ', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13510, 6, 'admin_rina', 'wYvYiH0evZFTI', 'editor', NULL, NULL, NULL, NULL, 2016, 10, 22, 4, 18, 49, 'rina_setianingrum@student.uns.ac.id', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'Dwi Setianingrum', 'Rina', '', ' ', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13556, 2, 'admin_iwan', NULL, 'admin', NULL, NULL, NULL, NULL, 2018, 12, 12, 9, 24, 59, NULL, NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13511, 5, 'admin_yanny', 'jMdiP39opTYbM', 'editor', NULL, NULL, NULL, NULL, 2016, 10, 22, 4, 21, 29, 'yannywulandari@student.uns.ac.id', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'Wulandari', 'Yanny', '', ' ', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13512, 5, 'admin_tities', 'LOFZeCdNeaqJw', 'editor', NULL, NULL, NULL, NULL, 2016, 10, 22, 4, 23, 35, 'tities.amrihtasari@student.uns.ac.id', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'Amrihtasari', 'Tities', '', ' ', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13513, 4, 'admin_mujahid', 'aRYCzr8.BzM8I', 'editor', NULL, NULL, NULL, NULL, 2016, 10, 22, 4, 26, 39, 'mujahidzenul@student.uns.ac.id', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'Zenul', 'Mujahid', '', ' ', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13514, 9, 'admin_mujahidah', 'p9zOvskoJ4kRY', 'editor', NULL, NULL, NULL, NULL, 2016, 10, 22, 4, 28, 49, 'md.showafah@student.uns.ac.id', NULL, 'never', 'FALSE', NULL, NULL, NULL, 0x050703000000010402000000080A05696E626F7808810A066275666665720A01310A07617263686976650A01310A0864656C6574696F6E08810000001B53637265656E3A3A4974656D732F657072696E745F737461747573, 'Showafah', 'Mujahidah', '', ' ', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13515, 9, 'admin_wisnu', 'weSHzokqFp3OU', 'editor', NULL, NULL, NULL, NULL, 2016, 10, 22, 4, 31, 1, 'pratama.wisnu@student.uns.ac.id', NULL, 'never', 'FALSE', '1|1||eprint|-|title:title:ANY:IN:PEREMPUAN', NULL, NULL, NULL, 'Samodro', 'Pratama Wisnu', '', ' ', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13525, 2, 'adhika', NULL, 'admin', NULL, NULL, NULL, NULL, 2017, 3, 22, 6, 58, 0, NULL, NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13516, 5, 'admin_aslam', 'nYQAbF1O3LglM', 'editor', NULL, NULL, NULL, NULL, 2016, 10, 22, 4, 34, 24, 'hisnuaslam@student.uns.ac.id', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'Hisnu Aslam', 'Figur', '', ' ', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13517, 5, 'admin_sofi', 'N5ju/AEwDadO6', 'editor', NULL, NULL, NULL, 1544588903, 2016, 10, 22, 4, 39, 31, 'sofiwildan@student.uns.ac.id', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'Wildan', 'Sofi', '', ' ', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13518, 5, 'admin_nanda', 'muZoWqrqhXCjE', 'editor', NULL, NULL, NULL, NULL, 2016, 10, 22, 4, 45, 31, 'Nandu@student.uns.ac.id', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'Rahma Ananta', 'Nanda', '', ' ', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13526, 4, 'adhika_pri', '.dFqQJE0TbSRU', 'editor', NULL, NULL, NULL, NULL, 2017, 3, 22, 6, 58, 34, 'adhikapri_ardhana@student.uns.ac.id', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'Ardhana', 'Pri', '', 'Adhika', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13519, 7, 'admin_kuni', 'm6MG/ZXk4VGrU', 'editor', NULL, NULL, NULL, NULL, 2016, 10, 22, 5, 18, 53, 'kuninuraini300@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, 0x050703000000010402000000080A05696E626F780A000A0662756666657208810A076172636869766508810A0864656C6574696F6E08810000001B53637265656E3A3A4974656D732F657072696E745F737461747573, 'Nur Aini', 'Kuni', '', ' ', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13520, 4, 'admin_zoel', 'bQSHAhhtgLNnc', 'editor', NULL, NULL, NULL, NULL, 2016, 10, 22, 5, 27, 41, 'zoel.mieur@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'Matondang', 'Zulfahmirda', '', ' ', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13521, 5, 'admin_denty', 'GXdVgUKTgTLLo', 'editor', NULL, NULL, NULL, NULL, 2016, 10, 22, 5, 42, 6, 'dentymarga@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'Marga', 'Denty', '', ' ', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13522, 7, 'admin_gungun', '1ektWCiZk2ZOw', 'editor', NULL, NULL, NULL, NULL, 2016, 10, 22, 5, 45, 40, 'gungungunawan@student.uns.ac.id', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'Gunawan', 'Gun Gun', '', ' ', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13523, 5, 'admin_laras', 'D2x0fWpqFLxNI', 'editor', NULL, NULL, NULL, NULL, 2016, 10, 22, 5, 47, 6, 'cantya20@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'Dyana Larasati', 'Cantya', '', ' ', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13524, 4, 'octavian', '2ohvLbhoNYaoE', 'editor', NULL, NULL, NULL, NULL, 2016, 10, 28, 6, 43, 2, 'octavian.wj@rocketmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'jati', 'octavian', '', ' ', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13557, 5, 'admin_irwan', 'nwoHNWyU3gsMc', 'editor', NULL, NULL, NULL, NULL, 2018, 12, 12, 9, 27, 40, 'irwan.trinugroho@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, ' ', 'Irwan', '', ' ', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13558, 5, 'admin_ferina', 'oTsjvvtZGy0fQ', 'editor', NULL, NULL, NULL, NULL, 2019, 1, 7, 5, 54, 51, 'ferinaumusalamah@student.uns.ac.id', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'Salamah', 'Ferina Umu', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13559, 3, 'admin_irene', '/vZOvRdfwhsKw', 'editor', NULL, NULL, NULL, NULL, 2019, 4, 2, 6, 43, 44, 'irenepatasik@student.uns.ac.id', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'Irene', 'Patasik', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13560, 3, 'admin_nisa', 'JCJAA7Sb3oJSo', 'editor', NULL, NULL, NULL, NULL, 2019, 4, 2, 6, 53, 15, 'nisakhoir234@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'Khoirun', 'Nisa\'', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13561, 3, 'admin_atik', '6Dq8lO1V3BBAA', 'editor', NULL, NULL, NULL, NULL, 2019, 4, 2, 6, 54, 59, 'rahmatiahnurrifaarif@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'Rahmati\'ah Nurrifa', 'Arif', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13562, 3, 'admin_dimas', '.ErIQiBo/o6Wo', 'editor', NULL, NULL, NULL, NULL, 2019, 4, 2, 6, 56, 11, 'dimashv09@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'Dimas Hanifan Vijaya', 'Kusuma', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13563, 4, 'admin_fiqi', 'AKrDfUttTEUEU', 'editor', NULL, NULL, NULL, NULL, 2019, 4, 2, 6, 57, 23, 'fiqiand@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'Fiqi', 'Ananda', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13564, 4, 'admin_salsa', 'CLaaplldXvoFM', 'editor', NULL, NULL, NULL, NULL, 2019, 4, 2, 6, 58, 39, 'salsafasha@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'Salsabila Fauzia', 'S', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13565, 3, 'admin_muhsin', 'WM1UEO8IK9Jmk', 'editor', NULL, NULL, NULL, NULL, 2019, 4, 2, 7, 0, 16, 'muhsin_ahadi@student.uns.ac.id', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'Muhsin', 'Ahadi', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13567, 3, 'admin_ayya', 'RO7/WPKAd.DX.', 'editor', NULL, NULL, NULL, NULL, 2019, 4, 2, 7, 6, 43, 'widyaswarinorita@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'Widyaswari Norita', 'Mahayanti', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13568, 3, 'admin_hendra', '0PGPHvRDDmPwc', 'editor', NULL, NULL, NULL, NULL, 2019, 4, 2, 7, 7, 41, 'hendrahaqq@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'Muhammad Hendra Nailul', 'Haqq', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13569, 3, 'admin_dayat', '7WNxvrT9P4V.k', 'editor', NULL, NULL, NULL, NULL, 2019, 4, 2, 7, 15, 2, 'hidayat.rouf@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'Hidayat Abdul', 'Rouf', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13570, 3, 'admin_rizky', 'W1ef1g3ZNXw/M', 'editor', NULL, NULL, NULL, NULL, 2019, 4, 2, 7, 20, 18, 'reezkygatmaja21@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'Rizky Gumelar', 'Atmaja', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13572, 4, 'budisys', 'wR.8rdlvQiWgQ', 'user', NULL, NULL, NULL, NULL, 2019, 6, 25, 11, 41, 7, 'budisys2@gmail.com', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'Budi', 'Sys', '', '', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13573, 3, NULL, 'rlFROk.yJKhMM', 'user', NULL, NULL, NULL, NULL, 2019, 7, 8, 2, 15, 43, NULL, NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13574, 3, NULL, 'rlFROk.yJKhMM', 'user', NULL, NULL, NULL, NULL, 2019, 7, 8, 2, 26, 19, NULL, NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13575, 3, NULL, 'rlFROk.yJKhMM', 'user', NULL, NULL, NULL, NULL, 2019, 7, 8, 2, 27, 8, NULL, NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13576, 3, NULL, 'rlFROk.yJKhMM', 'user', NULL, NULL, NULL, NULL, 2019, 7, 8, 6, 3, 30, NULL, NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13577, 3, NULL, 'rlFROk.yJKhMM', 'user', NULL, NULL, NULL, NULL, 2019, 7, 10, 9, 45, 55, NULL, NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13578, 3, NULL, 'rlFROk.yJKhMM', 'user', NULL, NULL, NULL, NULL, 2019, 7, 10, 9, 46, 3, NULL, NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13579, 3, NULL, 'rlFROk.yJKhMM', 'user', NULL, NULL, NULL, NULL, 2019, 7, 10, 11, 22, 11, NULL, NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13580, 3, NULL, 'rlFROk.yJKhMM', 'user', NULL, NULL, NULL, NULL, 2019, 7, 15, 9, 51, 1, NULL, NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13581, 3, NULL, 'rlFROk.yJKhMM', 'user', NULL, NULL, NULL, NULL, 2019, 7, 15, 9, 54, 8, NULL, NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13582, 3, NULL, 'rlFROk.yJKhMM', 'user', NULL, NULL, NULL, NULL, 2019, 7, 15, 9, 54, 11, NULL, NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13583, 3, NULL, 'rlFROk.yJKhMM', 'user', NULL, NULL, NULL, NULL, 2019, 7, 15, 11, 11, 43, NULL, NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13584, 3, NULL, 'rlFROk.yJKhMM', 'user', NULL, NULL, NULL, NULL, 2019, 7, 15, 11, 22, 49, NULL, NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13585, 3, 'jupri@staff.uns.ac.id', 'rlUv91vSCjpp2', 'user', NULL, NULL, NULL, NULL, 2019, 7, 15, 11, 23, 6, 'jupri@staff.uns.ac.id', NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, 'Jupri Santoso', 'Jupri Santoso', NULL, NULL, NULL, NULL, 'Boyolali', NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13586, 3, NULL, 'rlFROk.yJKhMM', 'user', NULL, NULL, NULL, NULL, 2019, 7, 15, 11, 31, 34, NULL, NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13587, 3, NULL, 'rlFROk.yJKhMM', 'user', NULL, NULL, NULL, NULL, 2019, 7, 15, 1, 8, 13, NULL, NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13588, 3, NULL, 'rlFROk.yJKhMM', 'user', NULL, NULL, NULL, NULL, 2019, 7, 15, 1, 8, 29, NULL, NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13589, 3, NULL, 'rlFROk.yJKhMM', 'user', NULL, NULL, NULL, NULL, 2019, 7, 15, 1, 31, 37, NULL, NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13590, 3, NULL, 'rlFROk.yJKhMM', 'user', NULL, NULL, NULL, NULL, 2019, 7, 15, 1, 37, 2, NULL, NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13591, 3, NULL, 'rlFROk.yJKhMM', 'user', NULL, NULL, NULL, NULL, 2019, 7, 15, 2, 10, 6, NULL, NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13592, 3, NULL, 'rlFROk.yJKhMM', 'user', NULL, NULL, NULL, NULL, 2019, 7, 15, 2, 10, 25, NULL, NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13593, 3, NULL, 'rlFROk.yJKhMM', 'user', NULL, NULL, NULL, NULL, 2019, 7, 16, 9, 35, 48, NULL, NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13594, 3, NULL, 'rlFROk.yJKhMM', 'user', NULL, NULL, NULL, NULL, 2019, 7, 18, 10, 28, 47, NULL, NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13595, 3, NULL, 'rlFROk.yJKhMM', 'user', NULL, NULL, NULL, NULL, 2019, 7, 18, 10, 47, 34, NULL, NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13596, 3, NULL, 'rlFROk.yJKhMM', 'user', NULL, NULL, NULL, NULL, 2019, 7, 18, 2, 12, 37, NULL, NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13597, 3, NULL, 'rlFROk.yJKhMM', 'user', NULL, NULL, NULL, NULL, 2019, 7, 18, 2, 25, 7, NULL, NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13598, 3, NULL, 'rlFROk.yJKhMM', 'user', NULL, NULL, NULL, NULL, 2019, 7, 19, 9, 46, 5, NULL, NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13599, 3, NULL, 'rlFROk.yJKhMM', 'user', NULL, NULL, NULL, NULL, 2019, 7, 19, 10, 26, 48, NULL, NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13600, 3, NULL, 'rlFROk.yJKhMM', 'user', NULL, NULL, NULL, NULL, 2019, 7, 19, 10, 31, 36, NULL, NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13601, 3, NULL, 'rlFROk.yJKhMM', 'user', NULL, NULL, NULL, NULL, 2019, 7, 23, 9, 19, 33, NULL, NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13602, 3, NULL, 'rlFROk.yJKhMM', 'user', NULL, NULL, NULL, NULL, 2019, 7, 23, 9, 19, 45, NULL, NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13603, 3, NULL, 'rlFROk.yJKhMM', 'user', NULL, NULL, NULL, NULL, 2019, 7, 23, 9, 22, 47, NULL, NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13604, 3, NULL, 'rlFROk.yJKhMM', 'user', NULL, NULL, NULL, NULL, 2019, 7, 23, 9, 39, 23, NULL, NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13605, 3, NULL, 'rlFROk.yJKhMM', 'user', NULL, NULL, NULL, NULL, 2019, 7, 23, 9, 42, 4, NULL, NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13606, 3, NULL, 'rlFROk.yJKhMM', 'user', NULL, NULL, NULL, NULL, 2019, 7, 23, 10, 3, 17, NULL, NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13607, 3, NULL, 'rlFROk.yJKhMM', 'user', NULL, NULL, NULL, NULL, 2019, 7, 23, 10, 6, 2, NULL, NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);
INSERT INTO `user` VALUES (13608, 3, NULL, 'rlFROk.yJKhMM', 'user', NULL, NULL, NULL, NULL, 2019, 7, 23, 10, 11, 1, NULL, NULL, 'never', 'FALSE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL);

-- ----------------------------
-- Table structure for user_publikasi
-- ----------------------------
DROP TABLE IF EXISTS `user_publikasi`;
CREATE TABLE `user_publikasi`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `no_hp` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `alamat` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `create_date` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user_publikasi
-- ----------------------------
INSERT INTO `user_publikasi` VALUES (1, 'jupri', 'jupri@staff.uns.ac.id', 'Jupri Santoso', '085867180237', '', '2019-07-23 14:56:22');

-- ----------------------------
-- Table structure for user_status_publikasi
-- ----------------------------
DROP TABLE IF EXISTS `user_status_publikasi`;
CREATE TABLE `user_status_publikasi`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` varchar(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status_publikasi` int(11) NULL DEFAULT NULL COMMENT '1:Upload Karya Ilmiah; 2: Eprint Mandiri',
  `create_date` datetime(0) NULL DEFAULT NULL,
  `update_date` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
