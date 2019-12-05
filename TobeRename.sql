USE toberename;# 注意需要先新建scheme
SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`(
	`id` int(11) NOT NULL AUTO_INCREMENT,
    `name` varchar(25) NOT NULL,
    `password` varchar(25) NOT NULL,
    `createtime` mediumtext not null,
    `content` mediumtext DEFAULT null,
    `url` mediumtext default null,
    #`friendIDs` mediumtext default null,
	`likes` mediumtext default null,
    `history` mediumtext default null,
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS `twitter`;
CREATE TABLE `twitter`(
	`id` int(11) not null auto_Increment,
    `uid` int(11) not null,
    `uname` varchar(25) not null,
    `content` mediumtext default null,
    `url` mediumtext default null,
    `createtime` mediumtext not null,
    `hit` int(11) default null,
    `comments` mediumtext default null,
    PRIMARY KEY (`id`)
)ENGINE = INNODB DEFAULT CHARSET = utf8mb4;

DROP TABLE IF EXISTS `cookbook`;
CREATE TABLE `cookbook`(
	`id` int(11) not null auto_increment,
    `uid` int(11) not null,
    `cname` varchar(25) not null,
    `category` varchar(25) not null,
    `material` mediumtext default null,
    `calorie` int(11) DEFAULT NULL,
    `salt` int(11) default null,
    `suger` int(11) default null,
    `protein` int(11) default null,
    `fat` int(11) default null,
    `url` mediumtext default null,
    `createtime` mediumtext not null,
    `hit` int(11) default null,
    `steps` mediumtext default null,
	`comments` mediumtext default null,
    primary key (`id`)
)ENGINE = INNODB DEFAULT CHARSET = utf8mb4;

#DROP TABLE IF EXISTS `community`;
#CREATE TABLE `community`(
#	`id` int(11) not null auto_increment,
#    `uid` int(11) not null,
#    `uname` varchar(25) not null,
#    `name` varchar(25) not null,
#    `createtime` mediumtext,
#    `hot` int(11) default 0,
#    PRIMARY KEY(`id`)
#)ENGINE = INNODB DEFAULT CHARSET = utf8mb4;

drop table if exists `userTaste`;
create table `userTaste`(
	`id` int(11) not null auto_increment,
    `uid` int(11) not null,
    `type` int(11) not null,
    `addition` mediumtext default null,
    primary key(`id`)
)ENGINE = INNODB DEFAULT CHARSET = utf8mb4;

drop table if exists `twitterComment`;
create table `twitterComment`(
	`id` int(11) not null auto_increment,
    `uid` int(11) not null,
    `tid` int(11) not null,
    `content` mediumtext default null,
    `url` varchar(25) default null,
    `reply` mediumtext default null,
    `createtime` mediumtext not null,
    primary key(`id`)
)ENGINE = INNODB DEFAULT CHARSET = utf8mb4;

#drop table if exists `cookbookComment`;
#create table `cookbookComment`(
#	`id` int(11) not null auto_increment,
#    `uid` int(11) not null,
#    `content` mediumtext default null,
#    `url` varchar(25) default null,
#    `reply` mediumtext default null,
#    `createtime` mediumtext,
#    primary key(`id`)
#)ENGINE = INNODB DEFAULT CHARSET = utf8mb4;

drop table if exists `cookbookStep`;
create table `cookbookStep`(
	`id` int(11) not null auto_increment,
    `cbid` int(11) not null,
    `number` int(11) not null,
    `content` mediumtext default null,
    `url` varchar(100) default null,
    primary key(`id`)
)ENGINE = INNODB DEFAULT CHARSET = utf8mb4;

drop table if exists `log`;
create table `log`(
	`id` int(11) not null auto_increment,
    `uid` int(11) not null,
    `request` json default null,
    `response` json default null,
    primary key(`id`)
)ENGINE = INNODB DEFAULT CHARSET = utf8mb4;

SET FOREIGN_KEY_CHECKS = 1;