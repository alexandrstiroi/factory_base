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

 Date: 12/10/2021 00:08:21
*/


-- ----------------------------
-- Table structure for t_module_add_type
-- ----------------------------
DROP TABLE IF EXISTS "working_data"."t_module_add_type";
CREATE TABLE "working_data"."t_module_add_type" (
  "id_module_add_type" int4 NOT NULL DEFAULT nextval('"working_data".t_module_add_type_id_module_add_type_seq'::regclass),
  "id_module_add" int4,
  "id_photo" int4,
  "module_add_type_name" varchar(300) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Primary Key structure for table t_module_add_type
-- ----------------------------
ALTER TABLE "working_data"."t_module_add_type" ADD CONSTRAINT "t_module_add_type_pkey" PRIMARY KEY ("id_module_add_type");
