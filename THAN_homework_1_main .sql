drop database Testing_System_Assignment_1;

create database Testing_System_Assignment_1;

use Testing_System_Assignment_1;

create table department (
departmentid INT auto_increment primary key,
departmentname varchar(50)
);
DROP TABLE IF EXISTS position;

create table position (
positionid int auto_increment primary key,
positionname varchar(50)
);

DROP TABLE IF EXISTS account;

create table account (
account int auto_increment primary key,
email varchar(50),
username varchar(30),
fullname varchar(50),
department_ID tinyint,
position_ID tinyint,
create_date datetime
);

DROP TABLE IF EXISTS `group`;

create table `group` (
groupid int auto_increment primary key,
groupname varchar(50),
creatorid int,
createdate datetime
);

drop table if exists groupaccount;

create table groupaccount(
groupid smallint,
accountid mediumint,
joindate datetime,
typename int auto_increment primary key
);

drop table if exists type_question;

create table type_question(
typeid int auto_increment primary key,
typename int
);

drop table if exists categoryid_question;

create table categoryid_question(
categoryid mediumint auto_increment primary key,
categoryname enum('java','NET','SQL','Postman','Ruby')
);

drop table if exists question;

create table question(
question_id int auto_increment primary key,
content varchar(200),
category_id int,
typeid int,
creatorid int,
createdate datetime
);

drop table if exists answer;

create table answer(
answerid int auto_increment primary key,
content int,
questionid int,
iscorrects enum('false','true')
);

drop table if exists exam;

create table exam(
examid int auto_increment primary key,
code varchar(50),
title varchar(50),
categoryid varchar(50),
duration datetime,
creatorid varchar(20),
createdate datetime
);

drop table if exists exam_question;

create table exam_question(
examid mediumint,
questionid mediumint
);

