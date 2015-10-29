/*
Navicat PGSQL Data Transfer

Source Server         : Postgres
Source Server Version : 90305
Source Host           : localhost:5432
Source Database       : studentDB
Source Schema         : public

Target Server Type    : PGSQL
Target Server Version : 90305
File Encoding         : 65001

Date: 2015-10-28 23:19:41
*/


-- ----------------------------
-- Sequence structure for student_id_seq
-- ----------------------------
DROP SEQUENCE "student_id_seq" CASCADE;
CREATE SEQUENCE "student_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 20
 CACHE 1;
SELECT setval('"public"."student_id_seq"', 20, true);

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS "student" CASCADE;
CREATE TABLE "student" (
"id" int4 DEFAULT nextval('student_id_seq'::regclass) NOT NULL,
"first_name" varchar COLLATE "default",
"last_name" varchar COLLATE "default",
"classroom" varchar COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of student
-- ----------------------------
BEGIN;
INSERT INTO "student" VALUES ('1', 'Erich', 'Faulkner', 'Nam Company');
INSERT INTO "student" VALUES ('2', 'Sylvester', 'Moss', 'Tincidunt Congue Turpis Company');
INSERT INTO "student" VALUES ('3', 'Robert', 'Maddox', 'Consectetuer Adipiscing Corporation');
INSERT INTO "student" VALUES ('4', 'Emerson', 'Phelps', 'Ante Dictum Ltd');
INSERT INTO "student" VALUES ('5', 'Ferris', 'Aguirre', 'Massa Lobortis Industries');
INSERT INTO "student" VALUES ('6', 'Flynn', 'Carlson', 'Placerat Augue Corporation');
INSERT INTO "student" VALUES ('7', 'Colton', 'Baird', 'Eu Metus In Company');
INSERT INTO "student" VALUES ('8', 'Jerry', 'Bradshaw', 'Magna Lorem Associates');
INSERT INTO "student" VALUES ('9', 'Porter', 'Graham', 'Non Dapibus Corp.');
INSERT INTO "student" VALUES ('10', 'Quamar', 'Mcgee', 'Tortor Associates');
INSERT INTO "student" VALUES ('11', 'Christian', 'Griffith', 'Ligula Donec Luctus Industries');
INSERT INTO "student" VALUES ('12', 'Keaton', 'Frederick', 'Duis A Inc.');
INSERT INTO "student" VALUES ('13', 'Jerome', 'Ramsey', 'Iaculis Incorporated');
INSERT INTO "student" VALUES ('14', 'Beck', 'Bryan', 'Risus PC');
INSERT INTO "student" VALUES ('15', 'Marsden', 'Thornton', 'Sed Id Limited');
INSERT INTO "student" VALUES ('16', 'Ignatius', 'White', 'Nascetur Ridiculus Mus Ltd');
INSERT INTO "student" VALUES ('17', 'Elvis', 'Diaz', 'Ligula Aenean Gravida LLP');
INSERT INTO "student" VALUES ('18', 'Neville', 'Zimmerman', 'Quisque Libero Lacus Corp.');
INSERT INTO "student" VALUES ('19', 'Talon', 'Washington', 'Quam Pellentesque Habitant Limited');
INSERT INTO "student" VALUES ('20', 'Troy', 'Cooke', 'Suscipit Nonummy Industries');
COMMIT;

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table student
-- ----------------------------
ALTER TABLE "student" ADD PRIMARY KEY ("id");