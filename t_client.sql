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

 Date: 10/10/2021 11:28:09
*/


-- ----------------------------
-- Table structure for t_client
-- ----------------------------
DROP TABLE IF EXISTS "working_data"."t_client";
CREATE TABLE "working_data"."t_client" (
  "id" int4 NOT NULL DEFAULT nextval('"working_data".t_client_id_seq'::regclass),
  "client_name" varchar(200) COLLATE "pg_catalog"."default",
  "client_address" varchar(200) COLLATE "pg_catalog"."default",
  "client_phone" varchar(200) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of t_client
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table t_client
-- ----------------------------
ALTER TABLE "working_data"."t_client" ADD CONSTRAINT "t_client_pkey" PRIMARY KEY ("id");
