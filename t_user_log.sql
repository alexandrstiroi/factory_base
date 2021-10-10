/*
 Navicat Premium Data Transfer

 Source Server         : OracleCloudStation01
 Source Server Type    : PostgreSQL
 Source Server Version : 130004
 Source Host           : 152.70.187.29:5432
 Source Catalog        : orders_catalog
 Source Schema         : working_data

 Target Server Type    : PostgreSQL
 Target Server Version : 130004
 File Encoding         : 65001

 Date: 10/10/2021 11:32:45
*/


-- ----------------------------
-- Table structure for t_user_log
-- ----------------------------
DROP TABLE IF EXISTS "working_data"."t_user_log";
CREATE TABLE "working_data"."t_user_log" (
  "id" int4 NOT NULL DEFAULT nextval('"working_data".t_user_log_id_seq'::regclass),
  "user_id" int4,
  "log_date" timestamp(6),
  "operation_log" varchar(50) COLLATE "pg_catalog"."default",
  "params_log" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of t_user_log
-- ----------------------------
INSERT INTO "working_data"."t_user_log" VALUES (1, 1, '2021-08-24 16:36:39.776', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (2, 1, '2021-08-24 16:37:42.233', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (3, 1, '2021-08-24 16:38:41.054', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (4, 1, '2021-08-24 16:44:10.479', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (5, 1, '2021-08-24 16:46:42.555', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (6, 1, '2021-08-24 16:53:39.735', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (7, 1, '2021-08-24 16:54:03.283', 'CREATE NEW EMPLOYEE', 'Employee Александр Штирой');
INSERT INTO "working_data"."t_user_log" VALUES (8, 1, '2021-08-24 16:57:19.258', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (9, 1, '2021-08-24 18:18:04.122', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (10, 1, '2021-08-24 18:22:15.698', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (11, 1, '2021-08-24 18:31:39.243', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (12, 1, '2021-08-24 18:37:26.391', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (13, 1, '2021-08-24 18:57:08.894', 'CREATE NEW PRODUCT', '{"components":[{"properties":[{"id":1,"name":"Многослойный высокоэластичный ППУ","lenght":"","width":"","height":"","count":"","type":"5"}],"name":"Наполнитель"},{"properties":[{"id":2,"name":"Образец","lenght":"","width":"","height":"","count":"","type":"5"},{"id":3,"name":"Заказной","lenght":"","width":"","height":"","count":"","type":"5"}],"name":"Тип"},{"properties":[{"id":4,"name":"Стандарт-дизайн","lenght":"","width":"","height":"","count":"","type":"5"}],"name":"Дизайн"},{"properties":[{"id":5,"name":"Ткань №1","lenght":"","width":"","height":"","count":"","type":"2"}],"name":"Наименование тканей"},{"properties":[{"id":6,"name":"","lenght":"","width":"","height":"","count":"","type":"4"}],"name":"Дополнительный декоративные подушки"},{"properties":[{"id":7,"name":"Алюминевые","lenght":"","width":"","height":"","count":"","type":"9"},{"id":8,"name":"Деревяные","lenght":"","width":"","height":"","count":"","type":"9"},{"id":9,"name":"Хром","lenght":"","width":"","height":"","count":"","type":"9"}],"name":"Ножки"},{"properties":[{"id":10,"name":"","lenght":"","width":"","height":"","count":"","type":"1"}],"name":"Земена фальш ножек на декоративные"},{"properties":[{"id":11,"name":"Модуль №1","lenght":"100","width":"133","height":"","count":"","type":"9"},{"id":12,"name":"Модуль №1","lenght":"100","width":"200","height":"","count":"","type":"9"},{"id":13,"name":"Модуль №3","lenght":"151","width":"67","height":"","count":"","type":"9"}],"name":"Модули"},{"properties":[{"id":14,"name":"D-4 мягкий","lenght":"100","width":"14","height":"","count":"","type":"1"},{"id":15,"name":"D-4 мягкий","lenght":"151","width":"14","height":"","count":"","type":"1"}],"name":"Подголовник левый"},{"properties":[{"id":16,"name":"D-4 мягкий","lenght":"100","width":"14","height":"","count":"","type":"1"},{"id":17,"name":"D-4 мягкий","lenght":"151","width":"14","height":"","count":"","type":"1"}],"name":"Подлокотник правый"},{"properties":[{"id":18,"name":"","lenght":"40","width":"41","height":"","count":"","type":"7"}],"name":"Гибкий декоративный столик"}],"name":"БРИЗ"}');
INSERT INTO "working_data"."t_user_log" VALUES (14, 1, '2021-08-25 14:10:32.949', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (15, 1, '2021-08-25 15:00:20.643', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (16, 1, '2021-08-25 16:06:28.905', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (17, 1, '2021-08-25 16:11:36.939', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (18, 1, '2021-08-25 16:12:30.584', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (19, 1, '2021-08-25 16:14:28.685', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (20, 1, '2021-08-25 18:55:46.783', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (21, 1, '2021-08-26 13:04:21.259', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (22, 1, '2021-08-26 13:17:01.33', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (23, 1, '2021-08-26 13:47:22.07', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (24, 1, '2021-08-26 15:01:24.194', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (25, 1, '2021-08-26 15:04:38.892', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (26, 1, '2021-08-26 15:07:20.163', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (27, 1, '2021-08-26 15:09:25.706', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (28, 1, '2021-08-26 15:10:38.748', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (29, 1, '2021-08-26 15:11:38.359', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (30, 1, '2021-08-26 15:41:34.435', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (31, 1, '2021-08-26 15:42:15.626', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (32, 1, '2021-08-26 15:52:42.558', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (33, 1, '2021-08-26 15:53:59.293', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (34, 1, '2021-08-26 15:55:33.262', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (35, 1, '2021-08-26 15:57:05.261', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (36, 1, '2021-08-26 16:04:58.239', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (37, 1, '2021-08-26 16:24:05.792', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (38, 1, '2021-08-26 16:25:14.682', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (39, 1, '2021-08-26 18:00:46.629', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (40, 1, '2021-08-27 17:02:21.241', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (41, 1, '2021-08-27 17:05:32.757', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (42, 1, '2021-08-27 17:06:12.925', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (43, 1, '2021-08-30 13:51:51.21', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (44, 1, '2021-08-31 17:47:26.465', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (45, 1, '2021-09-01 18:25:06.62', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (46, 1, '2021-09-01 18:36:51.541', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (47, 1, '2021-09-11 22:10:38.741', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (48, 1, '2021-09-12 09:37:07.715', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (49, 1, '2021-09-12 11:19:28.22', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (50, 1, '2021-09-12 11:26:01.169', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (51, 1, '2021-09-12 11:28:25.244', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (52, 1, '2021-09-12 11:31:32.982', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (53, 1, '2021-09-12 13:12:16.52', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (54, 1, '2021-09-12 13:14:30.643', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (55, 1, '2021-09-12 13:16:48.916', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (56, 1, '2021-09-12 14:05:22.106', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (57, 1, '2021-09-12 17:11:58.818', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (58, 1, '2021-09-12 17:13:58.694', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (59, 1, '2021-09-12 17:15:38.631', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (60, 1, '2021-09-12 17:17:33.227', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (61, 1, '2021-09-12 17:23:43.791', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (62, 1, '2021-09-12 17:25:14.358', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (63, 1, '2021-09-12 17:27:18.898', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (64, 1, '2021-09-12 17:32:31.597', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (65, 1, '2021-09-12 17:34:47.175', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (66, 1, '2021-09-12 17:35:49.916', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (67, 1, '2021-09-12 17:37:41.146', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (68, 1, '2021-09-13 23:31:45.914', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (69, 1, '2021-09-27 00:12:48.893', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (70, 1, '2021-09-27 00:14:13.314', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (71, 1, '2021-10-01 23:47:06.682', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (72, 1, '2021-10-02 19:00:08.612', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (73, 1, '2021-10-02 19:31:46.948', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (74, 1, '2021-10-02 19:55:48.456', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (75, 1, '2021-10-02 20:57:52.423', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (76, 1, '2021-10-02 21:00:44.972', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (77, 1, '2021-10-02 21:06:42.438', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (78, 1, '2021-10-04 23:03:33.584', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (79, 1, '2021-10-04 23:05:21.468', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (80, 1, '2021-10-04 23:07:08.023', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (81, 1, '2021-10-04 23:09:37.491', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (82, 1, '2021-10-04 23:12:07.777', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (83, 1, '2021-10-04 23:16:35.534', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (84, 1, '2021-10-04 23:19:25.983', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (85, 1, '2021-10-04 23:21:34.179', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (86, 1, '2021-10-05 20:58:03.93', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (87, 1, '2021-10-05 21:01:28.873', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (88, 1, '2021-10-07 21:50:39.924', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (89, 1, '2021-10-07 22:53:52.944', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (90, 1, '2021-10-07 23:06:10.578', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (91, 1, '2021-10-07 23:09:52.537', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (92, 1, '2021-10-07 23:20:11.792', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (93, 1, '2021-10-07 23:21:51.652', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (94, 1, '2021-10-07 23:37:43.961', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (95, 1, '2021-10-07 23:40:26.952', 'LOGIN', NULL);
INSERT INTO "working_data"."t_user_log" VALUES (96, 1, '2021-10-09 08:15:21.859', 'LOGIN', NULL);

-- ----------------------------
-- Primary Key structure for table t_user_log
-- ----------------------------
ALTER TABLE "working_data"."t_user_log" ADD CONSTRAINT "t_user_log_pkey" PRIMARY KEY ("id");
