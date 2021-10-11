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

 Date: 12/10/2021 00:08:07
*/


-- ----------------------------
-- Table structure for t_module_additional
-- ----------------------------
DROP TABLE IF EXISTS "working_data"."t_module_additional";
CREATE TABLE "working_data"."t_module_additional" (
  "id_module_additional" int4 NOT NULL DEFAULT nextval('"working_data".t_module_additional_id_module_additional_seq'::regclass),
  "id_photo" int4,
  "module_additional_name" varchar(300) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Primary Key structure for table t_module_additional
-- ----------------------------
ALTER TABLE "working_data"."t_module_additional" ADD CONSTRAINT "t_module_additional_pkey" PRIMARY KEY ("id_module_additional");
