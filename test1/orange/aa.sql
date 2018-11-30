/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.5.45-log 
*********************************************************************
*/
/*!40101 SET NAMES utf8 */;

create table `nx_upgfile` (
	`id` varchar (765),
	`created_by` varchar (120),
	`created_time` bigint (20),
	`updated_by` varchar (120),
	`updated_time` bigint (20),
	`version` int (11),
	`downloadurl` varchar (300),
	`filename` varchar (300),
	`parentId` varchar (300),
	`relativepath` varchar (300),
	`type` varchar (60),
	`urlprifix` varchar (300),
	`user_id` varchar (765)
); 
insert into `nx_upgfile` (`id`, `created_by`, `created_time`, `updated_by`, `updated_time`, `version`, `downloadurl`, `filename`, `parentId`, `relativepath`, `type`, `urlprifix`, `user_id`) values('2c918084676245b30167624b324e0000','4028dac1646d5a8d01646d5a998b0001','1543542354514','4028dac1646d5a8d01646d5a998b0001','1543542354514','0','https://orange.wechat.athenamuses.cn/','orange','1','test1','package','https://orange.wechat.athenamuses.cn/','2c918084675f03dd01675f0d0b530003');
insert into `nx_upgfile` (`id`, `created_by`, `created_time`, `updated_by`, `updated_time`, `version`, `downloadurl`, `filename`, `parentId`, `relativepath`, `type`, `urlprifix`, `user_id`) values('2c918084676245b30167624ca6ea0001','2c918084675f03dd01675f0d0b530003','1543542449898','2c918084675f03dd01675f0d0b530003','1543542449898','0','https://orange.wechat.athenamuses.cn/test1/orange/jwtest.sql','jwtest.sql','2c918084676245b30167624b324e0000','test1/orange','file','https://orange.wechat.athenamuses.cn/','2c918084675f03dd01675f0d0b530003');
insert into `nx_upgfile` (`id`, `created_by`, `created_time`, `updated_by`, `updated_time`, `version`, `downloadurl`, `filename`, `parentId`, `relativepath`, `type`, `urlprifix`, `user_id`) values('2c918084676245b301676251b70d0003','4028dac1646d5a8d01646d5a998b0001','1543542781709','4028dac1646d5a8d01646d5a998b0001','1543542781709','0','http://zhiban.ota.athenamuses.cn/Artek001/zhiban/','zhiban','1','Artek001','package','http://zhiban.ota.athenamuses.cn/Artek001/zhiban/','0000000066c8df9f0167533007480045');
insert into `nx_upgfile` (`id`, `created_by`, `created_time`, `updated_by`, `updated_time`, `version`, `downloadurl`, `filename`, `parentId`, `relativepath`, `type`, `urlprifix`, `user_id`) values('2c918084676245b30167625ec0aa0004','4028dac1646d5a8d01646d5a998b0001','1543543636138','4028dac1646d5a8d01646d5a998b0001','1543543636138','0','http://xiaoyi.ota.athenamuses.cn/xlt_xiaoyi/','xiaoyi','1','xlt','package','http://xiaoyi.ota.athenamuses.cn/xlt_xiaoyi/','0000000066c8df9f01674f4aaf420016');
insert into `nx_upgfile` (`id`, `created_by`, `created_time`, `updated_by`, `updated_time`, `version`, `downloadurl`, `filename`, `parentId`, `relativepath`, `type`, `urlprifix`, `user_id`) values('2c918084676245b30167625f4e200005','0000000066c8df9f0167533007480045','1543543672352','0000000066c8df9f0167533007480045','1543543672352','0','http://zhiban.ota.athenamuses.cn/Artek001/zhiban/','LS360F','2c918084676245b301676251b70d0003','Artek001/zhiban','package','http://zhiban.ota.athenamuses.cn/Artek001/zhiban/','0000000066c8df9f0167533007480045');
insert into `nx_upgfile` (`id`, `created_by`, `created_time`, `updated_by`, `updated_time`, `version`, `downloadurl`, `filename`, `parentId`, `relativepath`, `type`, `urlprifix`, `user_id`) values('2c918084676245b30167625fadab0006','0000000066c8df9f0167533007480045','1543543696811','0000000066c8df9f0167533007480045','1543543696811','0','http://zhiban.ota.athenamuses.cn/Artek001/zhiban/Artek001/zhiban/test','test','2c918084676245b301676251b70d0003','Artek001/zhiban','file','http://zhiban.ota.athenamuses.cn/Artek001/zhiban/','0000000066c8df9f0167533007480045');
insert into `nx_upgfile` (`id`, `created_by`, `created_time`, `updated_by`, `updated_time`, `version`, `downloadurl`, `filename`, `parentId`, `relativepath`, `type`, `urlprifix`, `user_id`) values('2c918084676245b30167626000420008','0000000066c8df9f0167533007480045','1543543717954','0000000066c8df9f0167533007480045','1543543717954','0','http://zhiban.ota.athenamuses.cn/Artek001/zhiban/','zibot','2c918084676245b30167625f4e200005','Artek001/zhiban/LS360F','package','http://zhiban.ota.athenamuses.cn/Artek001/zhiban/','0000000066c8df9f0167533007480045');
insert into `nx_upgfile` (`id`, `created_by`, `created_time`, `updated_by`, `updated_time`, `version`, `downloadurl`, `filename`, `parentId`, `relativepath`, `type`, `urlprifix`, `user_id`) values('2c918084676245b30167626039d90009','0000000066c8df9f0167533007480045','1543543732697','0000000066c8df9f0167533007480045','1543543732697','0','http://zhiban.ota.athenamuses.cn/Artek001/zhiban/Artek001/zhiban/LS360F/test','test','2c918084676245b30167625f4e200005','Artek001/zhiban/LS360F','file','http://zhiban.ota.athenamuses.cn/Artek001/zhiban/','0000000066c8df9f0167533007480045');
insert into `nx_upgfile` (`id`, `created_by`, `created_time`, `updated_by`, `updated_time`, `version`, `downloadurl`, `filename`, `parentId`, `relativepath`, `type`, `urlprifix`, `user_id`) values('2c918084676245b301676260f125000b','0000000066c8df9f0167533007480045','1543543779621','0000000066c8df9f0167533007480045','1543543779621','0','http://zhiban.ota.athenamuses.cn/Artek001/zhiban/Artek001/zhiban/LS360F/zibot/UpdateInfo_ota.xml','UpdateInfo_ota.xml','2c918084676245b30167626000420008','Artek001/zhiban/LS360F/zibot','file','http://zhiban.ota.athenamuses.cn/Artek001/zhiban/','0000000066c8df9f0167533007480045');
insert into `nx_upgfile` (`id`, `created_by`, `created_time`, `updated_by`, `updated_time`, `version`, `downloadurl`, `filename`, `parentId`, `relativepath`, `type`, `urlprifix`, `user_id`) values('2c918084676245b301676267a422000d','0000000066c8df9f0167533007480045','1543544218658','0000000066c8df9f0167533007480045','1543544218658','0','http://zhiban.ota.athenamuses.cn/Artek001/zhiban/Artek001/zhiban/LS360F/zibot/update.zip','update.zip','2c918084676245b30167626000420008','Artek001/zhiban/LS360F/zibot','file','http://zhiban.ota.athenamuses.cn/Artek001/zhiban/','0000000066c8df9f0167533007480045');
insert into `nx_upgfile` (`id`, `created_by`, `created_time`, `updated_by`, `updated_time`, `version`, `downloadurl`, `filename`, `parentId`, `relativepath`, `type`, `urlprifix`, `user_id`) values('2c918084676245b3016762688d1e000f','0000000066c8df9f01674f4aaf420016','1543544278302','0000000066c8df9f01674f4aaf420016','1543544278302','0','http://xiaoyi.ota.athenamuses.cn/xlt_xiaoyi/','3522','2c918084676245b30167625ec0aa0004','xlt/xiaoyi','package','http://xiaoyi.ota.athenamuses.cn/xlt_xiaoyi/','0000000066c8df9f01674f4aaf420016');
insert into `nx_upgfile` (`id`, `created_by`, `created_time`, `updated_by`, `updated_time`, `version`, `downloadurl`, `filename`, `parentId`, `relativepath`, `type`, `urlprifix`, `user_id`) values('2c918084676245b301676268c1ca0010','0000000066c8df9f01674f4aaf420016','1543544291786','0000000066c8df9f01674f4aaf420016','1543544291786','0','http://xiaoyi.ota.athenamuses.cn/xlt_xiaoyi/xlt/xiaoyi/test','test','2c918084676245b30167625ec0aa0004','xlt/xiaoyi','file','http://xiaoyi.ota.athenamuses.cn/xlt_xiaoyi/','0000000066c8df9f01674f4aaf420016');
insert into `nx_upgfile` (`id`, `created_by`, `created_time`, `updated_by`, `updated_time`, `version`, `downloadurl`, `filename`, `parentId`, `relativepath`, `type`, `urlprifix`, `user_id`) values('2c918084676245b30167626929590012','0000000066c8df9f01674f4aaf420016','1543544318298','0000000066c8df9f01674f4aaf420016','1543544318298','0','http://xiaoyi.ota.athenamuses.cn/xlt_xiaoyi/xlt/xiaoyi/3522/btsys.bin','btsys.bin','2c918084676245b3016762688d1e000f','xlt/xiaoyi/3522','file','http://xiaoyi.ota.athenamuses.cn/xlt_xiaoyi/','0000000066c8df9f01674f4aaf420016');
insert into `nx_upgfile` (`id`, `created_by`, `created_time`, `updated_by`, `updated_time`, `version`, `downloadurl`, `filename`, `parentId`, `relativepath`, `type`, `urlprifix`, `user_id`) values('2c918084676245b3016762692b730014','0000000066c8df9f01674f4aaf420016','1543544318835','0000000066c8df9f01674f4aaf420016','1543544318835','0','http://xiaoyi.ota.athenamuses.cn/xlt_xiaoyi/xlt/xiaoyi/3522/mbrec.bin','mbrec.bin','2c918084676245b3016762688d1e000f','xlt/xiaoyi/3522','file','http://xiaoyi.ota.athenamuses.cn/xlt_xiaoyi/','0000000066c8df9f01674f4aaf420016');
insert into `nx_upgfile` (`id`, `created_by`, `created_time`, `updated_by`, `updated_time`, `version`, `downloadurl`, `filename`, `parentId`, `relativepath`, `type`, `urlprifix`, `user_id`) values('2c918084676245b3016762692e1d0016','0000000066c8df9f01674f4aaf420016','1543544319517','0000000066c8df9f01674f4aaf420016','1543544319517','0','http://xiaoyi.ota.athenamuses.cn/xlt_xiaoyi/xlt/xiaoyi/3522/rodatafs.bin','rodatafs.bin','2c918084676245b3016762688d1e000f','xlt/xiaoyi/3522','file','http://xiaoyi.ota.athenamuses.cn/xlt_xiaoyi/','0000000066c8df9f01674f4aaf420016');
insert into `nx_upgfile` (`id`, `created_by`, `created_time`, `updated_by`, `updated_time`, `version`, `downloadurl`, `filename`, `parentId`, `relativepath`, `type`, `urlprifix`, `user_id`) values('2c918084676245b301676269307b0018','0000000066c8df9f01674f4aaf420016','1543544320123','0000000066c8df9f01674f4aaf420016','1543544320123','0','http://xiaoyi.ota.athenamuses.cn/xlt_xiaoyi/xlt/xiaoyi/3522/Update.xml','Update.xml','2c918084676245b3016762688d1e000f','xlt/xiaoyi/3522','file','http://xiaoyi.ota.athenamuses.cn/xlt_xiaoyi/','0000000066c8df9f01674f4aaf420016');
insert into `nx_upgfile` (`id`, `created_by`, `created_time`, `updated_by`, `updated_time`, `version`, `downloadurl`, `filename`, `parentId`, `relativepath`, `type`, `urlprifix`, `user_id`) values('2c918084676245b30167626932d9001a','0000000066c8df9f01674f4aaf420016','1543544320730','0000000066c8df9f01674f4aaf420016','1543544320730','0','http://xiaoyi.ota.athenamuses.cn/xlt_xiaoyi/xlt/xiaoyi/3522/UpdateInfo.xml','UpdateInfo.xml','2c918084676245b3016762688d1e000f','xlt/xiaoyi/3522','file','http://xiaoyi.ota.athenamuses.cn/xlt_xiaoyi/','0000000066c8df9f01674f4aaf420016');
insert into `nx_upgfile` (`id`, `created_by`, `created_time`, `updated_by`, `updated_time`, `version`, `downloadurl`, `filename`, `parentId`, `relativepath`, `type`, `urlprifix`, `user_id`) values('2c918084676245b301676269364e001c','0000000066c8df9f01674f4aaf420016','1543544321614','0000000066c8df9f01674f4aaf420016','1543544321614','0','http://xiaoyi.ota.athenamuses.cn/xlt_xiaoyi/xlt/xiaoyi/3522/zephyr.bin','zephyr.bin','2c918084676245b3016762688d1e000f','xlt/xiaoyi/3522','file','http://xiaoyi.ota.athenamuses.cn/xlt_xiaoyi/','0000000066c8df9f01674f4aaf420016');