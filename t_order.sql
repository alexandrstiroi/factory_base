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

 Date: 10/10/2021 11:29:55
*/


-- ----------------------------
-- Table structure for t_order
-- ----------------------------
DROP TABLE IF EXISTS "working_data"."t_order";
CREATE TABLE "working_data"."t_order" (
  "id" int4 NOT NULL DEFAULT nextval('"working_data".t_order_id_seq'::regclass),
  "number_shop" varchar(30) COLLATE "pg_catalog"."default",
  "number_factory" varchar(30) COLLATE "pg_catalog"."default",
  "date_registration" date,
  "date_production" date,
  "date_delivery" date,
  "supplement" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of t_order
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table t_order
-- ----------------------------
ALTER TABLE "working_data"."t_order" ADD CONSTRAINT "t_order_pkey" PRIMARY KEY ("id");
