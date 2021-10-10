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

 Date: 10/10/2021 11:31:26
*/


-- ----------------------------
-- Table structure for t_product
-- ----------------------------
DROP TABLE IF EXISTS "working_data"."t_product";
CREATE TABLE "working_data"."t_product" (
  "id" int4 NOT NULL DEFAULT nextval('"working_data".t_product_id_seq'::regclass),
  "name" varchar(100) COLLATE "pg_catalog"."default",
  "status" bool
)
;

-- ----------------------------
-- Primary Key structure for table t_product
-- ----------------------------
ALTER TABLE "working_data"."t_product" ADD CONSTRAINT "t_product_pkey" PRIMARY KEY ("id");
