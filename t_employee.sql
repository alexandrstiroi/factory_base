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

 Date: 10/10/2021 11:29:12
*/


-- ----------------------------
-- Table structure for t_employee
-- ----------------------------
DROP TABLE IF EXISTS "working_data"."t_employee";
CREATE TABLE "working_data"."t_employee" (
  "id" int4 NOT NULL DEFAULT nextval('"working_data".t_employee_id_seq'::regclass),
  "first_name" varchar(100) COLLATE "pg_catalog"."default",
  "last_name" varchar(100) COLLATE "pg_catalog"."default",
  "middle_name" varchar(100) COLLATE "pg_catalog"."default",
  "date_birth" date,
  "works" bool
)
;

-- ----------------------------
-- Records of t_employee
-- ----------------------------
INSERT INTO "working_data"."t_employee" VALUES (1, 'Александр', 'Штирой', 'Петрович', '1985-01-09', 't');

-- ----------------------------
-- Primary Key structure for table t_employee
-- ----------------------------
ALTER TABLE "working_data"."t_employee" ADD CONSTRAINT "t_employee_pkey" PRIMARY KEY ("id");
