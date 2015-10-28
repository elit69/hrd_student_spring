/*
Navicat PGSQL Data Transfer

Source Server         : asdf
Source Server Version : 90303
Source Host           : localhost:5432
Source Database       : studentDB
Source Schema         : public

Target Server Type    : PGSQL
Target Server Version : 90303
File Encoding         : 65001

Date: 2015-10-28 13:59:07
*/


-- ----------------------------
-- Sequence structure for student_id_seq
-- ----------------------------
DROP SEQUENCE "student_id_seq";
CREATE SEQUENCE "student_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS "student";
CREATE TABLE "student" (
"id" int4 NOT NULL,
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
INSERT INTO "student" VALUES ('21', 'Sawyer', 'Church', 'Diam Ltd');
INSERT INTO "student" VALUES ('22', 'Elijah', 'Sanchez', 'Litora Torquent Institute');
INSERT INTO "student" VALUES ('23', 'Keith', 'Hatfield', 'Gravida Nunc Foundation');
INSERT INTO "student" VALUES ('24', 'Gavin', 'Flores', 'Quis Institute');
INSERT INTO "student" VALUES ('25', 'Yasir', 'Shannon', 'Neque Incorporated');
INSERT INTO "student" VALUES ('26', 'Fritz', 'Slater', 'Interdum Ligula Eu Limited');
INSERT INTO "student" VALUES ('27', 'Forrest', 'Green', 'Mauris Company');
INSERT INTO "student" VALUES ('28', 'Quamar', 'Hutchinson', 'Euismod Enim Etiam Corporation');
INSERT INTO "student" VALUES ('29', 'Burke', 'Chang', 'Amet Institute');
INSERT INTO "student" VALUES ('30', 'Ulysses', 'Herrera', 'Mattis Integer Eu LLC');
INSERT INTO "student" VALUES ('31', 'Kevin', 'Calhoun', 'Nec Company');
INSERT INTO "student" VALUES ('32', 'Elijah', 'Poole', 'Ut Corporation');
INSERT INTO "student" VALUES ('33', 'Emery', 'Obrien', 'Aenean Limited');
INSERT INTO "student" VALUES ('34', 'Yoshio', 'Byers', 'Tempor Lorem Eget Corporation');
INSERT INTO "student" VALUES ('35', 'Plato', 'Pugh', 'Et Ltd');
INSERT INTO "student" VALUES ('36', 'Jordan', 'Neal', 'Tellus Aenean Egestas Ltd');
INSERT INTO "student" VALUES ('37', 'Rashad', 'Rich', 'Quis Foundation');
INSERT INTO "student" VALUES ('38', 'Mufutau', 'Gillespie', 'Et Lacinia Vitae Ltd');
INSERT INTO "student" VALUES ('39', 'Dieter', 'Carroll', 'Adipiscing Elit Etiam Company');
INSERT INTO "student" VALUES ('40', 'Erasmus', 'Townsend', 'Mauris Corporation');
INSERT INTO "student" VALUES ('41', 'David', 'Conrad', 'Sociosqu Ad Consulting');
INSERT INTO "student" VALUES ('42', 'Tyler', 'Rodgers', 'Et Magnis Dis Associates');
INSERT INTO "student" VALUES ('43', 'Dexter', 'Hines', 'Maecenas LLC');
INSERT INTO "student" VALUES ('44', 'Driscoll', 'Burris', 'Ac Foundation');
INSERT INTO "student" VALUES ('45', 'Chadwick', 'Spears', 'Sit Associates');
INSERT INTO "student" VALUES ('46', 'Tyler', 'Monroe', 'Eros Non Enim Ltd');
INSERT INTO "student" VALUES ('47', 'Cedric', 'Park', 'Aliquam Inc.');
INSERT INTO "student" VALUES ('48', 'Russell', 'Merrill', 'Tortor Institute');
INSERT INTO "student" VALUES ('49', 'Emerson', 'Briggs', 'Elit Dictum Corporation');
INSERT INTO "student" VALUES ('50', 'Quinn', 'Nguyen', 'Enim Diam Corp.');
INSERT INTO "student" VALUES ('51', 'Xanthus', 'Moody', 'Proin Velit Sed Inc.');
INSERT INTO "student" VALUES ('52', 'Laith', 'Schmidt', 'Interdum Sed Auctor Institute');
INSERT INTO "student" VALUES ('53', 'Driscoll', 'Donaldson', 'Nunc Sed Pede Inc.');
INSERT INTO "student" VALUES ('54', 'Kirk', 'Rollins', 'Fringilla LLC');
INSERT INTO "student" VALUES ('55', 'Jarrod', 'Swanson', 'Faucibus Orci Luctus Ltd');
INSERT INTO "student" VALUES ('56', 'Chancellor', 'Pratt', 'Ac Metus Ltd');
INSERT INTO "student" VALUES ('57', 'Ferdinand', 'Macdonald', 'Sed Libero LLC');
INSERT INTO "student" VALUES ('58', 'Cadman', 'Levine', 'Vivamus Nibh Dolor Corporation');
INSERT INTO "student" VALUES ('59', 'Sawyer', 'Colon', 'Erat Etiam Vestibulum Inc.');
INSERT INTO "student" VALUES ('60', 'Kenyon', 'Todd', 'Erat Neque Corporation');
INSERT INTO "student" VALUES ('61', 'Louis', 'Clayton', 'Nisi Magna Sed Industries');
INSERT INTO "student" VALUES ('62', 'Ulysses', 'Roth', 'Arcu Et Pede Limited');
INSERT INTO "student" VALUES ('63', 'Xander', 'Rivera', 'Nec Urna Institute');
INSERT INTO "student" VALUES ('64', 'Trevor', 'Patterson', 'Magna Ut Corp.');
INSERT INTO "student" VALUES ('65', 'Maxwell', 'Mccarthy', 'Commodo Auctor Incorporated');
INSERT INTO "student" VALUES ('66', 'Warren', 'Stafford', 'Dictum Proin Eget PC');
INSERT INTO "student" VALUES ('67', 'Wallace', 'Lawson', 'Aliquam Tincidunt Consulting');
INSERT INTO "student" VALUES ('68', 'Octavius', 'Mullen', 'Pellentesque Habitant Industries');
INSERT INTO "student" VALUES ('69', 'Lee', 'Prince', 'Lacus Pede Sagittis Incorporated');
INSERT INTO "student" VALUES ('70', 'Leo', 'Kelley', 'Turpis Corporation');
INSERT INTO "student" VALUES ('71', 'Brody', 'Robertson', 'A Company');
INSERT INTO "student" VALUES ('72', 'Yasir', 'Patel', 'Ut Aliquam Iaculis Consulting');
INSERT INTO "student" VALUES ('73', 'Oleg', 'Gardner', 'Suspendisse Ac Incorporated');
INSERT INTO "student" VALUES ('74', 'Aristotle', 'Davenport', 'Rutrum Magna Company');
INSERT INTO "student" VALUES ('75', 'Amos', 'Sullivan', 'Nec Ante Maecenas PC');
INSERT INTO "student" VALUES ('76', 'Wayne', 'Nielsen', 'Mi Fringilla Mi Limited');
INSERT INTO "student" VALUES ('77', 'Keith', 'Poole', 'Nullam Enim Sed Institute');
INSERT INTO "student" VALUES ('78', 'Judah', 'Hickman', 'Non Magna Nam Company');
INSERT INTO "student" VALUES ('79', 'Rigel', 'Goodwin', 'Natoque Incorporated');
INSERT INTO "student" VALUES ('80', 'Wayne', 'Walls', 'Diam Corp.');
INSERT INTO "student" VALUES ('81', 'Slade', 'Harmon', 'Ligula Company');
INSERT INTO "student" VALUES ('82', 'Keaton', 'Ruiz', 'Eu Industries');
INSERT INTO "student" VALUES ('83', 'Steel', 'Salazar', 'Enim Mauris Quis Company');
INSERT INTO "student" VALUES ('84', 'Colt', 'Foster', 'Quisque Purus Inc.');
INSERT INTO "student" VALUES ('85', 'Felix', 'Herring', 'Blandit At Nisi LLP');
INSERT INTO "student" VALUES ('86', 'Cain', 'Baldwin', 'Nunc Limited');
INSERT INTO "student" VALUES ('87', 'Cole', 'Cotton', 'Venenatis Vel Inc.');
INSERT INTO "student" VALUES ('88', 'Brett', 'Cote', 'Lorem Company');
INSERT INTO "student" VALUES ('89', 'Myles', 'Lucas', 'Elit Pretium Consulting');
INSERT INTO "student" VALUES ('90', 'Kevin', 'Wagner', 'Odio Phasellus Company');
INSERT INTO "student" VALUES ('91', 'Steven', 'Patel', 'Porttitor Interdum Sed Institute');
INSERT INTO "student" VALUES ('92', 'Theodore', 'Maldonado', 'In Institute');
INSERT INTO "student" VALUES ('93', 'Hall', 'Hammond', 'Id Limited');
INSERT INTO "student" VALUES ('94', 'Tiger', 'Riddle', 'Dolor Elit LLP');
INSERT INTO "student" VALUES ('95', 'Steel', 'Cameron', 'Diam PC');
INSERT INTO "student" VALUES ('96', 'Jason', 'Oconnor', 'Dictum Augue Malesuada LLP');
INSERT INTO "student" VALUES ('97', 'Colin', 'Wells', 'Eu Nibh Vulputate LLP');
INSERT INTO "student" VALUES ('98', 'Slade', 'Alvarez', 'Vel Corp.');
INSERT INTO "student" VALUES ('99', 'Abraham', 'Hendrix', 'Urna Ut PC');
INSERT INTO "student" VALUES ('100', 'Jackson', 'Oconnor', 'Cras Dictum Ultricies LLC');
COMMIT;

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table student
-- ----------------------------
ALTER TABLE "student" ADD PRIMARY KEY ("id");
