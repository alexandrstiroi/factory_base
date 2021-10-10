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

 Date: 10/10/2021 11:31:00
*/


-- ----------------------------
-- Table structure for t_order_product
-- ----------------------------
DROP TABLE IF EXISTS "working_data"."t_order_product";
CREATE TABLE "working_data"."t_order_product" (
  "id" int4 NOT NULL DEFAULT nextval('"working_data".t_order_product_id_seq'::regclass),
  "id_order" int4,
  "id_product" int4,
  "id_shop" int4,
  "id_client" int4
)
;

-- ----------------------------
-- Records of t_order_product
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table t_order_product
-- ----------------------------
ALTER TABLE "working_data"."t_order_product" ADD CONSTRAINT "t_order_product_pkey" PRIMARY KEY ("id");
