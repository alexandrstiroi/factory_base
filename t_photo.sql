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

 Date: 10/10/2021 11:31:13
*/


-- ----------------------------
-- Table structure for t_photo
-- ----------------------------
DROP TABLE IF EXISTS "working_data"."t_photo";
CREATE TABLE "working_data"."t_photo" (
  "id_photo" int4 NOT NULL DEFAULT nextval('"working_data".photo_id_photo_seq'::regclass),
  "photo_path" varchar(300) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of t_photo
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table t_photo
-- ----------------------------
ALTER TABLE "working_data"."t_photo" ADD CONSTRAINT "photo_pkey" PRIMARY KEY ("id_photo");
