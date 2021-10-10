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

 Date: 10/10/2021 11:29:44
*/


-- ----------------------------
-- Table structure for t_module_type
-- ----------------------------
DROP TABLE IF EXISTS "working_data"."t_module_type";
CREATE TABLE "working_data"."t_module_type" (
  "id_module_type" int4 NOT NULL DEFAULT nextval('"working_data".t_module_type_id_module_type_seq'::regclass),
  "id_module" int4,
  "module_type_name" varchar(300) COLLATE "pg_catalog"."default",
  "id_photo" int4,
  "depth" int4,
  "width" int4,
  "height" int4
)
;

-- ----------------------------
-- Records of t_module_type
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table t_module_type
-- ----------------------------
ALTER TABLE "working_data"."t_module_type" ADD CONSTRAINT "t_module_type_pkey" PRIMARY KEY ("id_module_type");
