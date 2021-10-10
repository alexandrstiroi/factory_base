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

 Date: 10/10/2021 11:28:49
*/


-- ----------------------------
-- Table structure for t_component
-- ----------------------------
DROP TABLE IF EXISTS "working_data"."t_component";
CREATE TABLE "working_data"."t_component" (
  "id" int4 NOT NULL DEFAULT nextval('"working_data".t_component_id_seq'::regclass),
  "id_product" int4,
  "name" varchar(100) COLLATE "pg_catalog"."default",
  "type" int4
)
;

-- ----------------------------
-- Records of t_component
-- ----------------------------
INSERT INTO "working_data"."t_component" VALUES (1, 1, 'Наполнитель', -1);
INSERT INTO "working_data"."t_component" VALUES (2, 1, 'Тип', -1);
INSERT INTO "working_data"."t_component" VALUES (3, 1, 'Дизайн', -1);
INSERT INTO "working_data"."t_component" VALUES (4, 1, 'Наименование тканей', -1);
INSERT INTO "working_data"."t_component" VALUES (5, 1, 'Дополнительный декоративные подушки', -1);
INSERT INTO "working_data"."t_component" VALUES (6, 1, 'Ножки', -1);
INSERT INTO "working_data"."t_component" VALUES (7, 1, 'Земена фальш ножек на декоративные', -1);
INSERT INTO "working_data"."t_component" VALUES (8, 1, 'Модули', -1);
INSERT INTO "working_data"."t_component" VALUES (9, 1, 'Подголовник левый', -1);
INSERT INTO "working_data"."t_component" VALUES (10, 1, 'Подлокотник правый', -1);
INSERT INTO "working_data"."t_component" VALUES (11, 1, 'Гибкий декоративный столик', -1);

-- ----------------------------
-- Primary Key structure for table t_component
-- ----------------------------
ALTER TABLE "working_data"."t_component" ADD CONSTRAINT "t_component_pkey" PRIMARY KEY ("id");
