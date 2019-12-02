/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50728
 Source Host           : localhost:3306
 Source Schema         : toberename
information
 Target Server Type    : MySQL
 Target Server Version : 50728
 File Encoding         : 65001

 Date: 2/12/2019 10:27:03
*/
USE toberename;# 注意需要先新建scheme
SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`(
	`id` int(11) NOT NULL AUTO_INCREMENT,
    `name` varchar(25) NOT NULL,
    `category` int(11) DEFAULT NULL,
    `password` varchar(25) NOT NULL,
    `createtime` mediumtext,
    `content` varchar(50) DEFAULT '他很懒，还没有自我介绍',
    `friendIDs` mediumtext default null,
    `ban` mediumtext default null,
	`likes` mediumtext default null,
    `history` mediumtext default null,
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS `information`;
CREATE TABLE `information`(
	`id` int(11) not null auto_Increment,
    `uid` int(11) not null,
    `uname` varchar(25) not null,
    `content` mediumtext default null,
    `url` varchar(100) default null,
    `createtime` mediumtext,
    `comments` mediumtext default null,
    `hits` mediumtext default null,
    PRIMARY KEY (`id`)
)ENGINE = INNODB DEFAULT CHARSET = utf8mb4;

DROP TABLE IF EXISTS `cookbook`;
CREATE TABLE `cookbook`(
	`id` int(11) not null auto_increment,
    `uid` int(11) not null,
    `name` varchar(25) not null,
    `category` varchar(25) not null,
    `calorie` int(11) DEFAULT NULL,
    `salt` int(11) default null,
    `suger` int(11) default null,
    `protein` int(11) default null,
    `fat` int(11) default null,
    `url` varchar(100) default null,
    `createtime` mediumtext,
    `steps` mediumtext default null,
    `hit` mediumtext default null,
	`comments` mediumtext default null,
    primary key (`id`)
)ENGINE = INNODB DEFAULT CHARSET = utf8mb4;

DROP TABLE IF EXISTS `community`;
CREATE TABLE `community`(
	`id` int(11) not null auto_increment,
    `uid` int(11) not null,
    `uname` varchar(25) not null,
    `name` varchar(25) not null,
    `createtime` mediumtext,
    `hot` int(11) default 0,
    PRIMARY KEY(`id`)
)ENGINE = INNODB DEFAULT CHARSET = utf8mb4;

drop table if exists `userban`;
create table `userban`(
	`id` int(11) not null auto_increment,
    `uid` int(11) not null,
    `type` int(11) not null,
    `addition` mediumtext default null,
    primary key(`id`)
)ENGINE = INNODB DEFAULT CHARSET = utf8mb4;

drop table if exists `informationComment`;
create table `informationComment`(
	`id` int(11) not null auto_increment,
    `uid` int(11) not null,
    `content` mediumtext default null,
    `url` varchar(25) default null,
    `reply` mediumtext default null,
    `createtime` mediumtext,
    primary key(`id`)
)ENGINE = INNODB DEFAULT CHARSET = utf8mb4;

drop table if exists `cookbookComment`;
create table `cookbookComment`(
	`id` int(11) not null auto_increment,
    `uid` int(11) not null,
    `content` mediumtext default null,
    `url` varchar(25) default null,
    `reply` mediumtext default null,
    `createtime` mediumtext,
    primary key(`id`)
)ENGINE = INNODB DEFAULT CHARSET = utf8mb4;

drop table if exists `cookbookStep`;
create table `cookbookStep`(
	`id` int(11) not null auto_increment,
    `cookbookID` int(11) not null,
    `number` int(11) not null,
    `url` varchar(100) default null,
    primary key(`id`)
)ENGINE = INNODB DEFAULT CHARSET = utf8mb4;

SET FOREIGN_KEY_CHECKS = 1;