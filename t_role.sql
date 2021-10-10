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

 Date: 10/10/2021 11:32:01
*/


-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS "working_data"."t_role";
CREATE TABLE "working_data"."t_role" (
  "id" int4 NOT NULL DEFAULT nextval('"working_data".t_role_id_seq'::regclass),
  "role_name" varchar(50) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO "working_data"."t_role" VALUES (1, 'ROLE_ADMIN');
INSERT INTO "working_data"."t_role" VALUES (2, 'ROLE_USER');

-- ----------------------------
-- Primary Key structure for table t_role
-- ----------------------------
ALTER TABLE "working_data"."t_role" ADD CONSTRAINT "t_role_pkey" PRIMARY KEY ("id");
