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

 Date: 10/10/2021 11:29:28
*/


-- ----------------------------
-- Table structure for t_module
-- ----------------------------
DROP TABLE IF EXISTS "working_data"."t_module";
CREATE TABLE "working_data"."t_module" (
  "id_module" int4 NOT NULL DEFAULT nextval('"working_data".t_module_id_module_seq'::regclass),
  "module_name" varchar(300) COLLATE "pg_catalog"."default",
  "id_photo" int4,
  "module_unique" bool,
  "id_product" int4,
  "module_is_addition" numeric(2) DEFAULT 0
)
;

-- ----------------------------
-- Records of t_module
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table t_module
-- ----------------------------
ALTER TABLE "working_data"."t_module" ADD CONSTRAINT "t_module_pkey" PRIMARY KEY ("id_module");
