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

 Date: 10/10/2021 11:32:31
*/


-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS "working_data"."t_user";
CREATE TABLE "working_data"."t_user" (
  "id" int4 NOT NULL DEFAULT nextval('"working_data".t_user_id_seq'::regclass),
  "user_name" varchar(50) COLLATE "pg_catalog"."default",
  "user_password" varchar(100) COLLATE "pg_catalog"."default",
  "user_role" int4,
  "user_active" bool,
  "last_name" varchar(50) COLLATE "pg_catalog"."default",
  "first_name" varchar(50) COLLATE "pg_catalog"."default",
  "email" varchar(50) COLLATE "pg_catalog"."default",
  "created_on" date,
  "last_login" timestamp(6)
)
;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO "working_data"."t_user" VALUES (1, 'shtiroy', '$2a$12$JWRd.F4n/jK/K7Balkn.D.7WJoZLg69TO1tWZWOVQtc/cm/CBmUOS', 1, 't', 'ШТИРОЙ', 'АЛЕКСАНДР', 'stiroisasa@gmail.com', NULL, '2021-10-09 08:15:21.677');

-- ----------------------------
-- Primary Key structure for table t_user
-- ----------------------------
ALTER TABLE "working_data"."t_user" ADD CONSTRAINT "t_user_pkey" PRIMARY KEY ("id");
