/*
Navicat MySQL Data Transfer

Source Server         : 594155426a8bd.gz.cdb.myqcloud.com
Source Server Version : 50545
Source Host           : 594155426a8bd.gz.cdb.myqcloud.com:8098
Source Database       : storylight

Target Server Type    : MYSQL
Target Server Version : 50099
File Encoding         : 65001

Date: 2017-11-22 13:53:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `blog`
-- ----------------------------
DROP TABLE IF EXISTS `blog`;
CREATE TABLE `blog` (
`id`  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`fromUserName`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`content`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`opDate`  datetime NULL DEFAULT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of blog
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `blogdevicebind`
-- ----------------------------
DROP TABLE IF EXISTS `blogdevicebind`;
CREATE TABLE `blogdevicebind` (
`id`  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`blogId`  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`deviceID`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of blogdevicebind
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `blogfile`
-- ----------------------------
DROP TABLE IF EXISTS `blogfile`;
CREATE TABLE `blogfile` (
`id`  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`blogId`  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`fileName`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`fileType`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`sequence`  int(11) NULL DEFAULT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of blogfile
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `boxinfo`
-- ----------------------------
DROP TABLE IF EXISTS `boxinfo`;
CREATE TABLE `boxinfo` (
`id`  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`net`  varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`cardAvailable`  int(11) NULL DEFAULT NULL ,
`cardTotal`  int(11) NULL DEFAULT NULL ,
`electricity`  tinyint(3) NULL DEFAULT NULL ,
`firmwareVersion`  varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`volume`  tinyint(3) NULL DEFAULT NULL ,
`online`  bit(1) NULL DEFAULT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of boxinfo
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `boxplay`
-- ----------------------------
DROP TABLE IF EXISTS `boxplay`;
CREATE TABLE `boxplay` (
`id`  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`trackListId`  int(11) NULL DEFAULT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of boxplay
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `boxqrticket`
-- ----------------------------
DROP TABLE IF EXISTS `boxqrticket`;
CREATE TABLE `boxqrticket` (
`deviceid`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`qrticket`  varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`prefix`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`sequence`  int(11) NOT NULL AUTO_INCREMENT ,
`mac`  varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`deviceid`),
UNIQUE INDEX `sequence_UNIQUE` USING BTREE (`sequence`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
/*!50003 AUTO_INCREMENT=1256 */

;

-- ----------------------------
-- Records of boxqrticket
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `demand`
-- ----------------------------
DROP TABLE IF EXISTS `demand`;
CREATE TABLE `demand` (
`deviceId`  varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`openId`  varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`trackId`  int(11) NOT NULL ,
`opDate`  datetime NULL DEFAULT NULL ,
`duration`  int(11) NULL DEFAULT NULL ,
`albumTitle`  varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`downloadSize`  int(11) NULL DEFAULT NULL ,
`title`  varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`deviceId`, `trackId`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of demand
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `devicebind`
-- ----------------------------
DROP TABLE IF EXISTS `devicebind`;
CREATE TABLE `devicebind` (
`id`  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`fromUserName`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`deviceType`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`deviceID`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`openID`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`opDate`  datetime NULL DEFAULT NULL ,
`deviceName`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`defaultDevice`  bit(1) NULL DEFAULT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of devicebind
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `familymember`
-- ----------------------------
DROP TABLE IF EXISTS `familymember`;
CREATE TABLE `familymember` (
`openid`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`deviceId`  varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`nickname`  varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL ,
`admin`  tinyint(1) NULL DEFAULT NULL ,
`headimgurl`  varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`openid`),
INDEX `familymember_index_deviceId` USING BTREE (`deviceId`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of familymember
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `favorite`
-- ----------------------------
DROP TABLE IF EXISTS `favorite`;
CREATE TABLE `favorite` (
`openId`  varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`trackId`  int(11) NOT NULL ,
`opDate`  datetime NULL DEFAULT NULL ,
`duration`  int(11) NULL DEFAULT NULL ,
`albumTitle`  varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`downloadSize`  int(11) NULL DEFAULT NULL ,
`title`  varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`openId`, `trackId`),
INDEX `favorite_index_trackId` USING BTREE (`trackId`),
INDEX `favorite_index_deviceId` USING BTREE (`openId`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of favorite
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `messagereq`
-- ----------------------------
DROP TABLE IF EXISTS `messagereq`;
CREATE TABLE `messagereq` (
`id`  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`toUserName`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`fromUserName`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`createTime`  bigint(20) NULL DEFAULT NULL ,
`msgType`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`msgId`  bigint(20) NULL DEFAULT NULL ,
`content`  varchar(8000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`url`  varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`mediaId`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`format`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`thumbMediaId`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`location_X`  varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`location_Y`  varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`scale`  varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`label`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`title`  varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`description`  varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`picUrl`  varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`localMediaUrl`  varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`localThumbMediaUrl`  varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of messagereq
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `scene`
-- ----------------------------
DROP TABLE IF EXISTS `scene`;
CREATE TABLE `scene` (
`sceneId`  int(32) NOT NULL AUTO_INCREMENT ,
`sceneType`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`paramValue`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`createTime`  datetime NULL DEFAULT NULL ,
`expireTime`  datetime NULL DEFAULT NULL ,
`ticket`  varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`sceneId`),
UNIQUE INDEX `sceneId_UNIQUE` USING BTREE (`sceneId`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
/*!50003 AUTO_INCREMENT=1 */

;

-- ----------------------------
-- Records of scene
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `track`
-- ----------------------------
DROP TABLE IF EXISTS `track`;
CREATE TABLE `track` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`title`  varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`coverSmallUrl`  varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`duration`  int(11) NULL DEFAULT NULL ,
`albumTitle`  varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`albumCoverSmallUrl`  varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`url`  varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`downloadUrl`  varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`downloadUrlHashCode`  int(11) NULL DEFAULT NULL ,
`downloadSize`  int(11) NULL DEFAULT NULL ,
PRIMARY KEY (`id`),
INDEX `track_index_downloadUrl` USING BTREE (`downloadUrl`(255)),
INDEX `track_index_downloadUrlHashCode` USING BTREE (`downloadUrlHashCode`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
/*!50003 AUTO_INCREMENT=1 */

;

-- ----------------------------
-- Records of track
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `tracklist`
-- ----------------------------
DROP TABLE IF EXISTS `tracklist`;
CREATE TABLE `tracklist` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`deviceId`  varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`name`  varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`coverSmallUrl`  varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`play`  bit(1) NULL DEFAULT b'0' ,
PRIMARY KEY (`id`),
UNIQUE INDEX `tracklist_unique_deviceIdname` USING BTREE (`deviceId`, `name`),
INDEX `tracklist_index_deviceId` USING BTREE (`deviceId`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
/*!50003 AUTO_INCREMENT=3655 */

;

-- ----------------------------
-- Records of tracklist
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `tracklistrow`
-- ----------------------------
DROP TABLE IF EXISTS `tracklistrow`;
CREATE TABLE `tracklistrow` (
`trackListId`  int(11) NOT NULL ,
`trackId`  int(11) NOT NULL ,
`status`  int(2) NULL DEFAULT 0 ,
`sequence`  int(11) NOT NULL AUTO_INCREMENT ,
PRIMARY KEY (`trackListId`, `trackId`),
UNIQUE INDEX `sequence_UNIQUE` USING BTREE (`sequence`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
/*!50003 AUTO_INCREMENT=1 */

;

-- ----------------------------
-- Records of tracklistrow
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `tracklistrow0`
-- ----------------------------
DROP TABLE IF EXISTS `tracklistrow0`;
CREATE TABLE `tracklistrow0` (
`trackListId`  int(11) NOT NULL ,
`trackId`  int(11) NOT NULL ,
`status`  int(2) NULL DEFAULT 0 ,
`sequence`  int(11) NOT NULL AUTO_INCREMENT ,
`duration`  int(11) NULL DEFAULT NULL ,
`albumTitle`  varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`downloadSize`  int(11) NULL DEFAULT NULL ,
`title`  varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`trackListId`, `trackId`),
UNIQUE INDEX `index_trackListIdtrackId` USING BTREE (`trackListId`, `trackId`),
UNIQUE INDEX `sequence_UNIQUE` USING BTREE (`sequence`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
/*!50003 AUTO_INCREMENT=37869 */

;

-- ----------------------------
-- Records of tracklistrow0
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `tracklistrow1`
-- ----------------------------
DROP TABLE IF EXISTS `tracklistrow1`;
CREATE TABLE `tracklistrow1` (
`trackListId`  int(11) NOT NULL ,
`trackId`  int(11) NOT NULL ,
`status`  int(2) NULL DEFAULT 0 ,
`sequence`  int(11) NOT NULL AUTO_INCREMENT ,
`duration`  int(11) NULL DEFAULT NULL ,
`albumTitle`  varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`downloadSize`  int(11) NULL DEFAULT NULL ,
`title`  varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`trackListId`, `trackId`),
UNIQUE INDEX `index_trackListIdtrackId` USING BTREE (`trackListId`, `trackId`),
UNIQUE INDEX `sequence_UNIQUE` USING BTREE (`sequence`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
/*!50003 AUTO_INCREMENT=9047 */

;

-- ----------------------------
-- Records of tracklistrow1
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `tracklistrow2`
-- ----------------------------
DROP TABLE IF EXISTS `tracklistrow2`;
CREATE TABLE `tracklistrow2` (
`trackListId`  int(11) NOT NULL ,
`trackId`  int(11) NOT NULL ,
`status`  int(2) NULL DEFAULT 0 ,
`sequence`  int(11) NOT NULL AUTO_INCREMENT ,
`duration`  int(11) NULL DEFAULT NULL ,
`albumTitle`  varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`downloadSize`  int(11) NULL DEFAULT NULL ,
`title`  varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`trackListId`, `trackId`),
UNIQUE INDEX `index_trackListIdtrackId` USING BTREE (`trackListId`, `trackId`),
UNIQUE INDEX `sequence_UNIQUE` USING BTREE (`sequence`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
/*!50003 AUTO_INCREMENT=42328 */

;

-- ----------------------------
-- Records of tracklistrow2
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `tracklistrow3`
-- ----------------------------
DROP TABLE IF EXISTS `tracklistrow3`;
CREATE TABLE `tracklistrow3` (
`trackListId`  int(11) NOT NULL ,
`trackId`  int(11) NOT NULL ,
`status`  int(2) NULL DEFAULT 0 ,
`sequence`  int(11) NOT NULL AUTO_INCREMENT ,
`duration`  int(11) NULL DEFAULT NULL ,
`albumTitle`  varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`downloadSize`  int(11) NULL DEFAULT NULL ,
`title`  varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`trackListId`, `trackId`),
UNIQUE INDEX `index_trackListIdtrackId` USING BTREE (`trackListId`, `trackId`),
UNIQUE INDEX `sequence_UNIQUE` USING BTREE (`sequence`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
/*!50003 AUTO_INCREMENT=40719 */

;

-- ----------------------------
-- Records of tracklistrow3
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `tracklistrow4`
-- ----------------------------
DROP TABLE IF EXISTS `tracklistrow4`;
CREATE TABLE `tracklistrow4` (
`trackListId`  int(11) NOT NULL ,
`trackId`  int(11) NOT NULL ,
`status`  int(2) NULL DEFAULT 0 ,
`sequence`  int(11) NOT NULL AUTO_INCREMENT ,
`duration`  int(11) NULL DEFAULT NULL ,
`albumTitle`  varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`downloadSize`  int(11) NULL DEFAULT NULL ,
`title`  varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`trackListId`, `trackId`),
UNIQUE INDEX `index_trackListIdtrackId` USING BTREE (`trackListId`, `trackId`),
UNIQUE INDEX `sequence_UNIQUE` USING BTREE (`sequence`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
/*!50003 AUTO_INCREMENT=74935 */

;

-- ----------------------------
-- Records of tracklistrow4
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `tracklistrow5`
-- ----------------------------
DROP TABLE IF EXISTS `tracklistrow5`;
CREATE TABLE `tracklistrow5` (
`trackListId`  int(11) NOT NULL ,
`trackId`  int(11) NOT NULL ,
`status`  int(2) NULL DEFAULT 0 ,
`sequence`  int(11) NOT NULL AUTO_INCREMENT ,
`duration`  int(11) NULL DEFAULT NULL ,
`albumTitle`  varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`downloadSize`  int(11) NULL DEFAULT NULL ,
`title`  varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`trackListId`, `trackId`),
UNIQUE INDEX `index_trackListIdtrackId` USING BTREE (`trackListId`, `trackId`),
UNIQUE INDEX `sequence_UNIQUE` USING BTREE (`sequence`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
/*!50003 AUTO_INCREMENT=44345 */

;

-- ----------------------------
-- Records of tracklistrow5
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `tracklistrow6`
-- ----------------------------
DROP TABLE IF EXISTS `tracklistrow6`;
CREATE TABLE `tracklistrow6` (
`trackListId`  int(11) NOT NULL ,
`trackId`  int(11) NOT NULL ,
`status`  int(2) NULL DEFAULT 0 ,
`sequence`  int(11) NOT NULL AUTO_INCREMENT ,
`duration`  int(11) NULL DEFAULT NULL ,
`albumTitle`  varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`downloadSize`  int(11) NULL DEFAULT NULL ,
`title`  varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`trackListId`, `trackId`),
UNIQUE INDEX `index_trackListIdtrackId` USING BTREE (`trackListId`, `trackId`),
UNIQUE INDEX `sequence_UNIQUE` USING BTREE (`sequence`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
/*!50003 AUTO_INCREMENT=6658 */

;

-- ----------------------------
-- Records of tracklistrow6
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `tracklistrow7`
-- ----------------------------
DROP TABLE IF EXISTS `tracklistrow7`;
CREATE TABLE `tracklistrow7` (
`trackListId`  int(11) NOT NULL ,
`trackId`  int(11) NOT NULL ,
`status`  int(2) NULL DEFAULT 0 ,
`sequence`  int(11) NOT NULL AUTO_INCREMENT ,
`duration`  int(11) NULL DEFAULT NULL ,
`albumTitle`  varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`downloadSize`  int(11) NULL DEFAULT NULL ,
`title`  varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`trackListId`, `trackId`),
UNIQUE INDEX `index_trackListIdtrackId` USING BTREE (`trackListId`, `trackId`),
UNIQUE INDEX `sequence_UNIQUE` USING BTREE (`sequence`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
/*!50003 AUTO_INCREMENT=3377 */

;

-- ----------------------------
-- Records of tracklistrow7
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `tracklistrow8`
-- ----------------------------
DROP TABLE IF EXISTS `tracklistrow8`;
CREATE TABLE `tracklistrow8` (
`trackListId`  int(11) NOT NULL ,
`trackId`  int(11) NOT NULL ,
`status`  int(2) NULL DEFAULT 0 ,
`sequence`  int(11) NOT NULL AUTO_INCREMENT ,
`duration`  int(11) NULL DEFAULT NULL ,
`albumTitle`  varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`downloadSize`  int(11) NULL DEFAULT NULL ,
`title`  varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`trackListId`, `trackId`),
UNIQUE INDEX `index_trackListIdtrackId` USING BTREE (`trackListId`, `trackId`),
UNIQUE INDEX `sequence_UNIQUE` USING BTREE (`sequence`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
/*!50003 AUTO_INCREMENT=50726 */

;

-- ----------------------------
-- Records of tracklistrow8
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
`openid`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`nickname`  varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL ,
`sex`  int(11) NULL DEFAULT NULL ,
`language`  varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`city`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`province`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`country`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`headimgurl`  varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`subscribe_time`  int(11) NULL DEFAULT NULL ,
`unionid`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`remark`  varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`groupid`  int(11) NULL DEFAULT NULL ,
`subscribe`  int(11) NULL DEFAULT NULL ,
PRIMARY KEY (`openid`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `wxtoken`
-- ----------------------------
DROP TABLE IF EXISTS `wxtoken`;
CREATE TABLE `wxtoken` (
`id`  tinyint(3) NOT NULL ,
`content`  varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`expiretime`  bigint(20) NULL DEFAULT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of wxtoken
-- ----------------------------
BEGIN;
INSERT INTO `wxtoken` VALUES ('1', 'RrkDZPvYJYUEHYfunv_duOTkJdnFKn4aSG0T06MNgEnB7ZfxYac7VCMmg76gAY861bc285kMbBmaafyQsbLB3byAaB9cer-iVKDwrd3VWT0ZSj85doGbzGgsATHJBDVJIHReAAADCM', '1510542513501'), ('2', 'HoagFKDcsGMVCIY2vOjf9rp6XwfVsQCvOsR8O5oId9-7YDreAgqLFqhth7tLfgKyLfxKTf-PWgno_RYkOWFy-g', '1510542313987');
COMMIT;

-- ----------------------------
-- Auto increment value for `boxqrticket`
-- ----------------------------
ALTER TABLE `boxqrticket` AUTO_INCREMENT=1256;

-- ----------------------------
-- Auto increment value for `scene`
-- ----------------------------
ALTER TABLE `scene` AUTO_INCREMENT=1;

-- ----------------------------
-- Auto increment value for `track`
-- ----------------------------
ALTER TABLE `track` AUTO_INCREMENT=1;

-- ----------------------------
-- Auto increment value for `tracklist`
-- ----------------------------
ALTER TABLE `tracklist` AUTO_INCREMENT=3655;

-- ----------------------------
-- Auto increment value for `tracklistrow`
-- ----------------------------
ALTER TABLE `tracklistrow` AUTO_INCREMENT=1;

-- ----------------------------
-- Auto increment value for `tracklistrow0`
-- ----------------------------
ALTER TABLE `tracklistrow0` AUTO_INCREMENT=37869;

-- ----------------------------
-- Auto increment value for `tracklistrow1`
-- ----------------------------
ALTER TABLE `tracklistrow1` AUTO_INCREMENT=9047;

-- ----------------------------
-- Auto increment value for `tracklistrow2`
-- ----------------------------
ALTER TABLE `tracklistrow2` AUTO_INCREMENT=42328;

-- ----------------------------
-- Auto increment value for `tracklistrow3`
-- ----------------------------
ALTER TABLE `tracklistrow3` AUTO_INCREMENT=40719;

-- ----------------------------
-- Auto increment value for `tracklistrow4`
-- ----------------------------
ALTER TABLE `tracklistrow4` AUTO_INCREMENT=74935;

-- ----------------------------
-- Auto increment value for `tracklistrow5`
-- ----------------------------
ALTER TABLE `tracklistrow5` AUTO_INCREMENT=44345;

-- ----------------------------
-- Auto increment value for `tracklistrow6`
-- ----------------------------
ALTER TABLE `tracklistrow6` AUTO_INCREMENT=6658;

-- ----------------------------
-- Auto increment value for `tracklistrow7`
-- ----------------------------
ALTER TABLE `tracklistrow7` AUTO_INCREMENT=3377;

-- ----------------------------
-- Auto increment value for `tracklistrow8`
-- ----------------------------
ALTER TABLE `tracklistrow8` AUTO_INCREMENT=50726;
