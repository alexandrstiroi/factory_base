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

 Date: 10/10/2021 11:31:48
*/


-- ----------------------------
-- Table structure for t_propertie
-- ----------------------------
DROP TABLE IF EXISTS "working_data"."t_propertie";
CREATE TABLE "working_data"."t_propertie" (
  "id" int4 NOT NULL DEFAULT nextval('"working_data".t_propertie_id_seq'::regclass),
  "id_component" int4,
  "name" varchar(100) COLLATE "pg_catalog"."default",
  "lenght" numeric,
  "width" numeric,
  "height" numeric,
  "count" int4,
  "type" int4,
  "type_name" varchar(100) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of t_propertie
-- ----------------------------
INSERT INTO "working_data"."t_propertie" VALUES (1, 1, 'Многослойный высокоэластичный ППУ', NULL, NULL, NULL, NULL, 5, NULL);
INSERT INTO "working_data"."t_propertie" VALUES (2, 2, 'Образец', NULL, NULL, NULL, NULL, 5, NULL);
INSERT INTO "working_data"."t_propertie" VALUES (3, 2, 'Заказной', NULL, NULL, NULL, NULL, 5, NULL);
INSERT INTO "working_data"."t_propertie" VALUES (4, 3, 'Стандарт-дизайн', NULL, NULL, NULL, NULL, 5, NULL);
INSERT INTO "working_data"."t_propertie" VALUES (5, 4, 'Ткань №1', NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO "working_data"."t_propertie" VALUES (6, 5, NULL, NULL, NULL, NULL, NULL, 4, NULL);
INSERT INTO "working_data"."t_propertie" VALUES (7, 6, 'Алюминевые', NULL, NULL, NULL, NULL, 9, NULL);
INSERT INTO "working_data"."t_propertie" VALUES (8, 6, 'Деревяные', NULL, NULL, NULL, NULL, 9, NULL);
INSERT INTO "working_data"."t_propertie" VALUES (9, 6, 'Хром', NULL, NULL, NULL, NULL, 9, NULL);
INSERT INTO "working_data"."t_propertie" VALUES (10, 7, NULL, NULL, NULL, NULL, NULL, 1, NULL);
INSERT INTO "working_data"."t_propertie" VALUES (11, 8, 'Модуль №1', 100, 133, NULL, NULL, 9, NULL);
INSERT INTO "working_data"."t_propertie" VALUES (12, 8, 'Модуль №1', 100, 200, NULL, NULL, 9, NULL);
INSERT INTO "working_data"."t_propertie" VALUES (13, 8, 'Модуль №3', 151, 67, NULL, NULL, 9, NULL);
INSERT INTO "working_data"."t_propertie" VALUES (14, 9, 'D-4 мягкий', 100, 14, NULL, NULL, 1, NULL);
INSERT INTO "working_data"."t_propertie" VALUES (15, 9, 'D-4 мягкий', 151, 14, NULL, NULL, 1, NULL);
INSERT INTO "working_data"."t_propertie" VALUES (16, 10, 'D-4 мягкий', 100, 14, NULL, NULL, 1, NULL);
INSERT INTO "working_data"."t_propertie" VALUES (17, 10, 'D-4 мягкий', 151, 14, NULL, NULL, 1, NULL);
INSERT INTO "working_data"."t_propertie" VALUES (18, 11, NULL, 40, 41, NULL, NULL, 7, NULL);

-- ----------------------------
-- Primary Key structure for table t_propertie
-- ----------------------------
ALTER TABLE "working_data"."t_propertie" ADD CONSTRAINT "t_propertie_pkey" PRIMARY KEY ("id");
