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

 Date: 10/10/2021 11:32:14
*/


-- ----------------------------
-- Table structure for t_shop
-- ----------------------------
DROP TABLE IF EXISTS "working_data"."t_shop";
CREATE TABLE "working_data"."t_shop" (
  "id" int4 NOT NULL DEFAULT nextval('"working_data".t_customer_id_seq'::regclass),
  "shop_name" varchar(50) COLLATE "pg_catalog"."default",
  "shop_address" varchar(200) COLLATE "pg_catalog"."default",
  "shop_phone" varchar(50) COLLATE "pg_catalog"."default",
  "shop_type" int4
)
;

-- ----------------------------
-- Records of t_shop
-- ----------------------------
INSERT INTO "working_data"."t_shop" VALUES (1, 'АВИАМОТОРНАЯ', 'г. Москва, шоссе Энтузиастов, д. 12, 4-й этаж, “Мир мебели”', '+7 (910) 451-42-04', 1);
INSERT INTO "working_data"."t_shop" VALUES (2, 'АВТОЗАВОДСКАЯ', 'г. Москва, ул. Ленинская Слобода, 26, МЦ «Roomer»', '+7 (926) 291-94-32', 1);
INSERT INTO "working_data"."t_shop" VALUES (3, 'АЛТУФЬЕВО', 'г. Москва, Дмитровское шоссе, д. 161Б, ТЦ «Империя»', '+7 (985) 454-54-48', 1);
INSERT INTO "working_data"."t_shop" VALUES (4, 'АННИНО', 'г. Москва, 32-й км МКАД, ТЦ «Шёлковый путь», 2 этаж, МЦ «МебельМаркт», секция “Мануфактура уюта”', '+7 (926) 877-73-90', 1);
INSERT INTO "working_data"."t_shop" VALUES (5, 'ВДНХ', 'г. Москва, Ярославское шоссе, 146 к.1, ТЦ "Ханой"', NULL, 1);
INSERT INTO "working_data"."t_shop" VALUES (6, 'ДМИТРОВСКАЯ', 'г. Москва, ул. Тимирязевская, д. 2/3, 3 этаж', '+7 (925) 507-50-20 +7 (903) 288-27-26', 1);
INSERT INTO "working_data"."t_shop" VALUES (7, 'ДОМОДЕДОВСКАЯ', 'г. Москва, улица Генерала Белова, 35', '+7 (977) 716-45-58', 1);
INSERT INTO "working_data"."t_shop" VALUES (8, 'ДОМОДЕДОВСКАЯ', 'г. Москва, 24 км МКАД, пересечение с Каширским шоссе (м. Домодедовская), 2-й этаж, секция “Мягкая мебель”', '+7 (929) 640-31-10', 1);
INSERT INTO "working_data"."t_shop" VALUES (9, 'КАШИРСКАЯ', 'г. Москва, Каширское шоссе, д 19 корп 2, 1 этаж, в центре зала', '+7  (929) 243-04-06', 1);
INSERT INTO "working_data"."t_shop" VALUES (10, 'ЛЮБЛИНО', 'г. МоскваТихорецкий бульвар, дом 1 корп. 5, ТЦ «Люблинское поле»,  2 этаж', '+7 (985) 400 13 79', 1);
INSERT INTO "working_data"."t_shop" VALUES (11, 'НОВЫЕ ЧЕРЁМУШКИ', 'г. Москва, ул. Профсоюзная, д. 56, 3-й этаж, линия  ”Д”', '+7 (965) 445-96-47 +7 (965) 445-96-49', 1);
INSERT INTO "working_data"."t_shop" VALUES (12, 'ПАВЕЛЕЦКАЯ', 'г. Москва, ул. Кожевническая, д. 7 (м. Павелецкая радиальная), 3 этаж, налево', '+7 (495) 152-52-04 +7 (926) 912-15-88', 1);
INSERT INTO "working_data"."t_shop" VALUES (13, 'ПРАЖСКАЯ', 'г. Москва, ул. Кировоградская, д. 11 к. 1, 1 этаж, подиум “Мануфактура уюта”', '+7 (909) 944-08-14', 1);
INSERT INTO "working_data"."t_shop" VALUES (14, 'РУМЯНЦЕВО', 'г. Москва, поселение Московский, 22-ой км. Киевского шоссе,  Бизнес-парк «Румянцево»', '+7 (915) 065-66-69', 1);
INSERT INTO "working_data"."t_shop" VALUES (15, 'РЯЗАНСКИЙ ПРОСПЕКТ', 'г. Москва, Рязанский проспект, дом 2 корп. 3, этаж 3', '+7 916 206-09-13', 1);
INSERT INTO "working_data"."t_shop" VALUES (16, 'ТЁПЛЫЙ СТАН', 'г. Москва, ул. Профсоюзная д.129 А., 5 этаж', '+7 (901) 724-80-51', 1);
INSERT INTO "working_data"."t_shop" VALUES (17, 'ТЕХНОПАРК', 'г. Москва, пр. Андропова д. 8, ТЦ «Мегаполис», минус 1 этаж, салон мебели ROOM', '+7 (926) 583-82-23 +7 (926) 663-23-29', 1);
INSERT INTO "working_data"."t_shop" VALUES (18, 'ЦСКА', 'г. Москва, Ходынский бульвар, д. 4, 2 этаж, мебельный салон “Комфорт Плюс”', '+7 (985) 268-44-10', 1);

-- ----------------------------
-- Primary Key structure for table t_shop
-- ----------------------------
ALTER TABLE "working_data"."t_shop" ADD CONSTRAINT "t_customer_pkey" PRIMARY KEY ("id");
