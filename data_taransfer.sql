/*
 Navicat Premium Data Transfer

 Source Server         : OracleCloudStation01
 Source Server Type    : PostgreSQL
 Source Server Version : 130004
 Source Host           : 152.70.187.29:5432
 Source Catalog        : orders_catalog
 Source Schema         : working_data

 Target Server Type    : PostgreSQL
 Target Server Version : 110000
 File Encoding         : 65001

 Date: 10/10/2021 12:02:20
*/


-- ----------------------------
-- Table structure for t_client
-- ----------------------------
DROP TABLE IF EXISTS "t_client";
CREATE TABLE "t_client" (
  "id" int4 NOT NULL DEFAULT nextval('working_data.t_client_id_seq'::regclass),
  "client_name" varchar(200) COLLATE "pg_catalog"."default",
  "client_address" varchar(200) COLLATE "pg_catalog"."default",
  "client_phone" varchar(200) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of t_client
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for t_component
-- ----------------------------
DROP TABLE IF EXISTS "t_component";
CREATE TABLE "t_component" (
  "id" int4 NOT NULL DEFAULT nextval('working_data.t_component_id_seq'::regclass),
  "id_product" int4,
  "name" varchar(100) COLLATE "pg_catalog"."default",
  "type" int4
)
;

-- ----------------------------
-- Records of t_component
-- ----------------------------
BEGIN;
INSERT INTO "t_component" VALUES (1, 1, 'Наполнитель', -1);
INSERT INTO "t_component" VALUES (2, 1, 'Тип', -1);
INSERT INTO "t_component" VALUES (3, 1, 'Дизайн', -1);
INSERT INTO "t_component" VALUES (4, 1, 'Наименование тканей', -1);
INSERT INTO "t_component" VALUES (5, 1, 'Дополнительный декоративные подушки', -1);
INSERT INTO "t_component" VALUES (6, 1, 'Ножки', -1);
INSERT INTO "t_component" VALUES (7, 1, 'Земена фальш ножек на декоративные', -1);
INSERT INTO "t_component" VALUES (8, 1, 'Модули', -1);
INSERT INTO "t_component" VALUES (9, 1, 'Подголовник левый', -1);
INSERT INTO "t_component" VALUES (10, 1, 'Подлокотник правый', -1);
INSERT INTO "t_component" VALUES (11, 1, 'Гибкий декоративный столик', -1);
COMMIT;

-- ----------------------------
-- Table structure for t_composition
-- ----------------------------
DROP TABLE IF EXISTS "t_composition";
CREATE TABLE "t_composition" (
  "id" int4 NOT NULL DEFAULT nextval('working_data.t_composition_id_seq'::regclass),
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
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for t_employee
-- ----------------------------
DROP TABLE IF EXISTS "t_employee";
CREATE TABLE "t_employee" (
  "id" int4 NOT NULL DEFAULT nextval('working_data.t_employee_id_seq'::regclass),
  "first_name" varchar(100) COLLATE "pg_catalog"."default",
  "last_name" varchar(100) COLLATE "pg_catalog"."default",
  "middle_name" varchar(100) COLLATE "pg_catalog"."default",
  "date_birth" date,
  "works" bool
)
;

-- ----------------------------
-- Records of t_employee
-- ----------------------------
BEGIN;
INSERT INTO "t_employee" VALUES (1, 'Александр', 'Штирой', 'Петрович', '1985-01-09', 't');
COMMIT;

-- ----------------------------
-- Table structure for t_module
-- ----------------------------
DROP TABLE IF EXISTS "t_module";
CREATE TABLE "t_module" (
  "id_module" int4 NOT NULL DEFAULT nextval('working_data.t_module_id_module_seq'::regclass),
  "module_name" varchar(300) COLLATE "pg_catalog"."default",
  "id_photo" int4,
  "module_unique" bool,
  "id_product" int4,
  "module_is_addition" numeric(2) DEFAULT 0
)
;

-- ----------------------------
-- Records of t_module
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for t_module_type
-- ----------------------------
DROP TABLE IF EXISTS "t_module_type";
CREATE TABLE "t_module_type" (
  "id_module_type" int4 NOT NULL DEFAULT nextval('working_data.t_module_type_id_module_type_seq'::regclass),
  "id_module" int4,
  "module_type_name" varchar(300) COLLATE "pg_catalog"."default",
  "id_photo" int4,
  "depth" int4,
  "width" int4,
  "height" int4
)
;

-- ----------------------------
-- Records of t_module_type
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
DROP TABLE IF EXISTS "t_order";
CREATE TABLE "t_order" (
  "id" int4 NOT NULL DEFAULT nextval('working_data.t_order_id_seq'::regclass),
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
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for t_order_product
-- ----------------------------
DROP TABLE IF EXISTS "t_order_product";
CREATE TABLE "t_order_product" (
  "id" int4 NOT NULL DEFAULT nextval('working_data.t_order_product_id_seq'::regclass),
  "id_order" int4,
  "id_product" int4,
  "id_shop" int4,
  "id_client" int4
)
;

-- ----------------------------
-- Records of t_order_product
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for t_photo
-- ----------------------------
DROP TABLE IF EXISTS "t_photo";
CREATE TABLE "t_photo" (
  "id_photo" int4 NOT NULL DEFAULT nextval('working_data.photo_id_photo_seq'::regclass),
  "photo_path" varchar(300) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of t_photo
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for t_product
-- ----------------------------
DROP TABLE IF EXISTS "t_product";
CREATE TABLE "t_product" (
  "id" int4 NOT NULL DEFAULT nextval('working_data.t_product_id_seq'::regclass),
  "name" varchar(100) COLLATE "pg_catalog"."default",
  "status" bool
)
;

-- ----------------------------
-- Records of t_product
-- ----------------------------
BEGIN;
INSERT INTO "t_product" VALUES (1, 'БРИЗ', 't');
COMMIT;

-- ----------------------------
-- Table structure for t_propertie
-- ----------------------------
DROP TABLE IF EXISTS "t_propertie";
CREATE TABLE "t_propertie" (
  "id" int4 NOT NULL DEFAULT nextval('working_data.t_propertie_id_seq'::regclass),
  "id_component" int4,
  "name" varchar(100) COLLATE "pg_catalog"."default",
  "lenght" numeric,
  "width" numeric,
  "height" numeric,
  "count" int4,
  "type" int4,
  "type_name" varchar(100) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of t_propertie
-- ----------------------------
BEGIN;
INSERT INTO "t_propertie" VALUES (1, 1, 'Многослойный высокоэластичный ППУ', NULL, NULL, NULL, NULL, 5, NULL);
INSERT INTO "t_propertie" VALUES (2, 2, 'Образец', NULL, NULL, NULL, NULL, 5, NULL);
INSERT INTO "t_propertie" VALUES (3, 2, 'Заказной', NULL, NULL, NULL, NULL, 5, NULL);
INSERT INTO "t_propertie" VALUES (4, 3, 'Стандарт-дизайн', NULL, NULL, NULL, NULL, 5, NULL);
INSERT INTO "t_propertie" VALUES (5, 4, 'Ткань №1', NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO "t_propertie" VALUES (6, 5, NULL, NULL, NULL, NULL, NULL, 4, NULL);
INSERT INTO "t_propertie" VALUES (7, 6, 'Алюминевые', NULL, NULL, NULL, NULL, 9, NULL);
INSERT INTO "t_propertie" VALUES (8, 6, 'Деревяные', NULL, NULL, NULL, NULL, 9, NULL);
INSERT INTO "t_propertie" VALUES (9, 6, 'Хром', NULL, NULL, NULL, NULL, 9, NULL);
INSERT INTO "t_propertie" VALUES (10, 7, NULL, NULL, NULL, NULL, NULL, 1, NULL);
INSERT INTO "t_propertie" VALUES (11, 8, 'Модуль №1', 100, 133, NULL, NULL, 9, NULL);
INSERT INTO "t_propertie" VALUES (12, 8, 'Модуль №1', 100, 200, NULL, NULL, 9, NULL);
INSERT INTO "t_propertie" VALUES (13, 8, 'Модуль №3', 151, 67, NULL, NULL, 9, NULL);
INSERT INTO "t_propertie" VALUES (14, 9, 'D-4 мягкий', 100, 14, NULL, NULL, 1, NULL);
INSERT INTO "t_propertie" VALUES (15, 9, 'D-4 мягкий', 151, 14, NULL, NULL, 1, NULL);
INSERT INTO "t_propertie" VALUES (16, 10, 'D-4 мягкий', 100, 14, NULL, NULL, 1, NULL);
INSERT INTO "t_propertie" VALUES (17, 10, 'D-4 мягкий', 151, 14, NULL, NULL, 1, NULL);
INSERT INTO "t_propertie" VALUES (18, 11, NULL, 40, 41, NULL, NULL, 7, NULL);
COMMIT;

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS "t_role";
CREATE TABLE "t_role" (
  "id" int4 NOT NULL DEFAULT nextval('working_data.t_role_id_seq'::regclass),
  "role_name" varchar(50) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of t_role
-- ----------------------------
BEGIN;
INSERT INTO "t_role" VALUES (1, 'ROLE_ADMIN');
INSERT INTO "t_role" VALUES (2, 'ROLE_USER');
COMMIT;

-- ----------------------------
-- Table structure for t_shop
-- ----------------------------
DROP TABLE IF EXISTS "t_shop";
CREATE TABLE "t_shop" (
  "id" int4 NOT NULL DEFAULT nextval('working_data.t_customer_id_seq'::regclass),
  "shop_name" varchar(50) COLLATE "pg_catalog"."default",
  "shop_address" varchar(200) COLLATE "pg_catalog"."default",
  "shop_phone" varchar(50) COLLATE "pg_catalog"."default",
  "shop_type" int4
)
;

-- ----------------------------
-- Records of t_shop
-- ----------------------------
BEGIN;
INSERT INTO "t_shop" VALUES (1, 'АВИАМОТОРНАЯ', 'г. Москва, шоссе Энтузиастов, д. 12, 4-й этаж, “Мир мебели”', '+7 (910) 451-42-04', 1);
INSERT INTO "t_shop" VALUES (2, 'АВТОЗАВОДСКАЯ', 'г. Москва, ул. Ленинская Слобода, 26, МЦ «Roomer»', '+7 (926) 291-94-32', 1);
INSERT INTO "t_shop" VALUES (3, 'АЛТУФЬЕВО', 'г. Москва, Дмитровское шоссе, д. 161Б, ТЦ «Империя»', '+7 (985) 454-54-48', 1);
INSERT INTO "t_shop" VALUES (4, 'АННИНО', 'г. Москва, 32-й км МКАД, ТЦ «Шёлковый путь», 2 этаж, МЦ «МебельМаркт», секция “Мануфактура уюта”', '+7 (926) 877-73-90', 1);
INSERT INTO "t_shop" VALUES (5, 'ВДНХ', 'г. Москва, Ярославское шоссе, 146 к.1, ТЦ "Ханой"', NULL, 1);
INSERT INTO "t_shop" VALUES (6, 'ДМИТРОВСКАЯ', 'г. Москва, ул. Тимирязевская, д. 2/3, 3 этаж', '+7 (925) 507-50-20 +7 (903) 288-27-26', 1);
INSERT INTO "t_shop" VALUES (7, 'ДОМОДЕДОВСКАЯ', 'г. Москва, улица Генерала Белова, 35', '+7 (977) 716-45-58', 1);
INSERT INTO "t_shop" VALUES (8, 'ДОМОДЕДОВСКАЯ', 'г. Москва, 24 км МКАД, пересечение с Каширским шоссе (м. Домодедовская), 2-й этаж, секция “Мягкая мебель”', '+7 (929) 640-31-10', 1);
INSERT INTO "t_shop" VALUES (9, 'КАШИРСКАЯ', 'г. Москва, Каширское шоссе, д 19 корп 2, 1 этаж, в центре зала', '+7  (929) 243-04-06', 1);
INSERT INTO "t_shop" VALUES (10, 'ЛЮБЛИНО', 'г. МоскваТихорецкий бульвар, дом 1 корп. 5, ТЦ «Люблинское поле»,  2 этаж', '+7 (985) 400 13 79', 1);
INSERT INTO "t_shop" VALUES (11, 'НОВЫЕ ЧЕРЁМУШКИ', 'г. Москва, ул. Профсоюзная, д. 56, 3-й этаж, линия  ”Д”', '+7 (965) 445-96-47 +7 (965) 445-96-49', 1);
INSERT INTO "t_shop" VALUES (12, 'ПАВЕЛЕЦКАЯ', 'г. Москва, ул. Кожевническая, д. 7 (м. Павелецкая радиальная), 3 этаж, налево', '+7 (495) 152-52-04 +7 (926) 912-15-88', 1);
INSERT INTO "t_shop" VALUES (13, 'ПРАЖСКАЯ', 'г. Москва, ул. Кировоградская, д. 11 к. 1, 1 этаж, подиум “Мануфактура уюта”', '+7 (909) 944-08-14', 1);
INSERT INTO "t_shop" VALUES (14, 'РУМЯНЦЕВО', 'г. Москва, поселение Московский, 22-ой км. Киевского шоссе,  Бизнес-парк «Румянцево»', '+7 (915) 065-66-69', 1);
INSERT INTO "t_shop" VALUES (15, 'РЯЗАНСКИЙ ПРОСПЕКТ', 'г. Москва, Рязанский проспект, дом 2 корп. 3, этаж 3', '+7 916 206-09-13', 1);
INSERT INTO "t_shop" VALUES (16, 'ТЁПЛЫЙ СТАН', 'г. Москва, ул. Профсоюзная д.129 А., 5 этаж', '+7 (901) 724-80-51', 1);
INSERT INTO "t_shop" VALUES (17, 'ТЕХНОПАРК', 'г. Москва, пр. Андропова д. 8, ТЦ «Мегаполис», минус 1 этаж, салон мебели ROOM', '+7 (926) 583-82-23 +7 (926) 663-23-29', 1);
INSERT INTO "t_shop" VALUES (18, 'ЦСКА', 'г. Москва, Ходынский бульвар, д. 4, 2 этаж, мебельный салон “Комфорт Плюс”', '+7 (985) 268-44-10', 1);
COMMIT;

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS "t_user";
CREATE TABLE "t_user" (
  "id" int4 NOT NULL DEFAULT nextval('working_data.t_user_id_seq'::regclass),
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
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for t_user_log
-- ----------------------------
DROP TABLE IF EXISTS "t_user_log";
CREATE TABLE "t_user_log" (
  "id" int4 NOT NULL DEFAULT nextval('working_data.t_user_log_id_seq'::regclass),
  "user_id" int4,
  "log_date" timestamp(6),
  "operation_log" varchar(50) COLLATE "pg_catalog"."default",
  "params_log" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of t_user_log
-- ----------------------------
BEGIN;
INSERT INTO "t_user_log" VALUES (1, 1, '2021-08-24 16:36:39.776', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (2, 1, '2021-08-24 16:37:42.233', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (3, 1, '2021-08-24 16:38:41.054', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (4, 1, '2021-08-24 16:44:10.479', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (5, 1, '2021-08-24 16:46:42.555', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (6, 1, '2021-08-24 16:53:39.735', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (7, 1, '2021-08-24 16:54:03.283', 'CREATE NEW EMPLOYEE', 'Employee Александр Штирой');
INSERT INTO "t_user_log" VALUES (8, 1, '2021-08-24 16:57:19.258', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (9, 1, '2021-08-24 18:18:04.122', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (10, 1, '2021-08-24 18:22:15.698', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (11, 1, '2021-08-24 18:31:39.243', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (12, 1, '2021-08-24 18:37:26.391', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (13, 1, '2021-08-24 18:57:08.894', 'CREATE NEW PRODUCT', '{"components":[{"properties":[{"id":1,"name":"Многослойный высокоэластичный ППУ","lenght":"","width":"","height":"","count":"","type":"5"}],"name":"Наполнитель"},{"properties":[{"id":2,"name":"Образец","lenght":"","width":"","height":"","count":"","type":"5"},{"id":3,"name":"Заказной","lenght":"","width":"","height":"","count":"","type":"5"}],"name":"Тип"},{"properties":[{"id":4,"name":"Стандарт-дизайн","lenght":"","width":"","height":"","count":"","type":"5"}],"name":"Дизайн"},{"properties":[{"id":5,"name":"Ткань №1","lenght":"","width":"","height":"","count":"","type":"2"}],"name":"Наименование тканей"},{"properties":[{"id":6,"name":"","lenght":"","width":"","height":"","count":"","type":"4"}],"name":"Дополнительный декоративные подушки"},{"properties":[{"id":7,"name":"Алюминевые","lenght":"","width":"","height":"","count":"","type":"9"},{"id":8,"name":"Деревяные","lenght":"","width":"","height":"","count":"","type":"9"},{"id":9,"name":"Хром","lenght":"","width":"","height":"","count":"","type":"9"}],"name":"Ножки"},{"properties":[{"id":10,"name":"","lenght":"","width":"","height":"","count":"","type":"1"}],"name":"Земена фальш ножек на декоративные"},{"properties":[{"id":11,"name":"Модуль №1","lenght":"100","width":"133","height":"","count":"","type":"9"},{"id":12,"name":"Модуль №1","lenght":"100","width":"200","height":"","count":"","type":"9"},{"id":13,"name":"Модуль №3","lenght":"151","width":"67","height":"","count":"","type":"9"}],"name":"Модули"},{"properties":[{"id":14,"name":"D-4 мягкий","lenght":"100","width":"14","height":"","count":"","type":"1"},{"id":15,"name":"D-4 мягкий","lenght":"151","width":"14","height":"","count":"","type":"1"}],"name":"Подголовник левый"},{"properties":[{"id":16,"name":"D-4 мягкий","lenght":"100","width":"14","height":"","count":"","type":"1"},{"id":17,"name":"D-4 мягкий","lenght":"151","width":"14","height":"","count":"","type":"1"}],"name":"Подлокотник правый"},{"properties":[{"id":18,"name":"","lenght":"40","width":"41","height":"","count":"","type":"7"}],"name":"Гибкий декоративный столик"}],"name":"БРИЗ"}');
INSERT INTO "t_user_log" VALUES (14, 1, '2021-08-25 14:10:32.949', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (15, 1, '2021-08-25 15:00:20.643', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (16, 1, '2021-08-25 16:06:28.905', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (17, 1, '2021-08-25 16:11:36.939', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (18, 1, '2021-08-25 16:12:30.584', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (19, 1, '2021-08-25 16:14:28.685', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (20, 1, '2021-08-25 18:55:46.783', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (21, 1, '2021-08-26 13:04:21.259', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (22, 1, '2021-08-26 13:17:01.33', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (23, 1, '2021-08-26 13:47:22.07', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (24, 1, '2021-08-26 15:01:24.194', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (25, 1, '2021-08-26 15:04:38.892', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (26, 1, '2021-08-26 15:07:20.163', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (27, 1, '2021-08-26 15:09:25.706', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (28, 1, '2021-08-26 15:10:38.748', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (29, 1, '2021-08-26 15:11:38.359', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (30, 1, '2021-08-26 15:41:34.435', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (31, 1, '2021-08-26 15:42:15.626', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (32, 1, '2021-08-26 15:52:42.558', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (33, 1, '2021-08-26 15:53:59.293', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (34, 1, '2021-08-26 15:55:33.262', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (35, 1, '2021-08-26 15:57:05.261', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (36, 1, '2021-08-26 16:04:58.239', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (37, 1, '2021-08-26 16:24:05.792', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (38, 1, '2021-08-26 16:25:14.682', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (39, 1, '2021-08-26 18:00:46.629', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (40, 1, '2021-08-27 17:02:21.241', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (41, 1, '2021-08-27 17:05:32.757', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (42, 1, '2021-08-27 17:06:12.925', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (43, 1, '2021-08-30 13:51:51.21', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (44, 1, '2021-08-31 17:47:26.465', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (45, 1, '2021-09-01 18:25:06.62', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (46, 1, '2021-09-01 18:36:51.541', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (47, 1, '2021-09-11 22:10:38.741', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (48, 1, '2021-09-12 09:37:07.715', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (49, 1, '2021-09-12 11:19:28.22', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (50, 1, '2021-09-12 11:26:01.169', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (51, 1, '2021-09-12 11:28:25.244', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (52, 1, '2021-09-12 11:31:32.982', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (53, 1, '2021-09-12 13:12:16.52', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (54, 1, '2021-09-12 13:14:30.643', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (55, 1, '2021-09-12 13:16:48.916', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (56, 1, '2021-09-12 14:05:22.106', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (57, 1, '2021-09-12 17:11:58.818', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (58, 1, '2021-09-12 17:13:58.694', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (59, 1, '2021-09-12 17:15:38.631', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (60, 1, '2021-09-12 17:17:33.227', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (61, 1, '2021-09-12 17:23:43.791', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (62, 1, '2021-09-12 17:25:14.358', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (63, 1, '2021-09-12 17:27:18.898', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (64, 1, '2021-09-12 17:32:31.597', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (65, 1, '2021-09-12 17:34:47.175', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (66, 1, '2021-09-12 17:35:49.916', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (67, 1, '2021-09-12 17:37:41.146', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (68, 1, '2021-09-13 23:31:45.914', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (69, 1, '2021-09-27 00:12:48.893', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (70, 1, '2021-09-27 00:14:13.314', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (71, 1, '2021-10-01 23:47:06.682', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (72, 1, '2021-10-02 19:00:08.612', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (73, 1, '2021-10-02 19:31:46.948', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (74, 1, '2021-10-02 19:55:48.456', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (75, 1, '2021-10-02 20:57:52.423', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (76, 1, '2021-10-02 21:00:44.972', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (77, 1, '2021-10-02 21:06:42.438', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (78, 1, '2021-10-04 23:03:33.584', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (79, 1, '2021-10-04 23:05:21.468', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (80, 1, '2021-10-04 23:07:08.023', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (81, 1, '2021-10-04 23:09:37.491', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (82, 1, '2021-10-04 23:12:07.777', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (83, 1, '2021-10-04 23:16:35.534', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (84, 1, '2021-10-04 23:19:25.983', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (85, 1, '2021-10-04 23:21:34.179', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (86, 1, '2021-10-05 20:58:03.93', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (87, 1, '2021-10-05 21:01:28.873', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (88, 1, '2021-10-07 21:50:39.924', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (89, 1, '2021-10-07 22:53:52.944', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (90, 1, '2021-10-07 23:06:10.578', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (91, 1, '2021-10-07 23:09:52.537', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (92, 1, '2021-10-07 23:20:11.792', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (93, 1, '2021-10-07 23:21:51.652', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (94, 1, '2021-10-07 23:37:43.961', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (95, 1, '2021-10-07 23:40:26.952', 'LOGIN', NULL);
INSERT INTO "t_user_log" VALUES (96, 1, '2021-10-09 08:15:21.859', 'LOGIN', NULL);
COMMIT;

-- ----------------------------
-- Primary Key structure for table t_client
-- ----------------------------
ALTER TABLE "t_client" ADD CONSTRAINT "t_client_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_component
-- ----------------------------
ALTER TABLE "t_component" ADD CONSTRAINT "t_component_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_composition
-- ----------------------------
ALTER TABLE "t_composition" ADD CONSTRAINT "t_composition_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_employee
-- ----------------------------
ALTER TABLE "t_employee" ADD CONSTRAINT "t_employee_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_module
-- ----------------------------
ALTER TABLE "t_module" ADD CONSTRAINT "t_module_pkey" PRIMARY KEY ("id_module");

-- ----------------------------
-- Primary Key structure for table t_module_type
-- ----------------------------
ALTER TABLE "t_module_type" ADD CONSTRAINT "t_module_type_pkey" PRIMARY KEY ("id_module_type");

-- ----------------------------
-- Primary Key structure for table t_order
-- ----------------------------
ALTER TABLE "t_order" ADD CONSTRAINT "t_order_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_order_product
-- ----------------------------
ALTER TABLE "t_order_product" ADD CONSTRAINT "t_order_product_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_photo
-- ----------------------------
ALTER TABLE "t_photo" ADD CONSTRAINT "photo_pkey" PRIMARY KEY ("id_photo");

-- ----------------------------
-- Primary Key structure for table t_product
-- ----------------------------
ALTER TABLE "t_product" ADD CONSTRAINT "t_product_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_propertie
-- ----------------------------
ALTER TABLE "t_propertie" ADD CONSTRAINT "t_propertie_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_role
-- ----------------------------
ALTER TABLE "t_role" ADD CONSTRAINT "t_role_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_shop
-- ----------------------------
ALTER TABLE "t_shop" ADD CONSTRAINT "t_customer_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_user
-- ----------------------------
ALTER TABLE "t_user" ADD CONSTRAINT "t_user_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_user_log
-- ----------------------------
ALTER TABLE "t_user_log" ADD CONSTRAINT "t_user_log_pkey" PRIMARY KEY ("id");
