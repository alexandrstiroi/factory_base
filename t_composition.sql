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

 Date: 10/10/2021 11:29:01
*/


-- ----------------------------
-- Table structure for t_composition
-- ----------------------------
DROP TABLE IF EXISTS "working_data"."t_composition";
CREATE TABLE "working_data"."t_composition" (
  "id" int4 NOT NULL DEFAULT nextval('"working_data".t_composition_id_seq'::regclass),
  "id_order_product" int4,
  "id_component" int4,
  "name" varchar COLLATE "pg_catalog"."default",
  "lenght" numeric,
  "width" numeric,
  "height" numeric,
  "count" int4,
  "type" int4,
  "type_name" varchar COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of t_composition
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table t_composition
-- ----------------------------
ALTER TABLE "working_data"."t_composition" ADD CONSTRAINT "t_composition_pkey" PRIMARY KEY ("id");
