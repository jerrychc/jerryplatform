/*==============================================================*/
/* Database name:  Database_1                                   */
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2016/5/26 23:52:16                           */
/*==============================================================*/


drop database if exists Database_1;

/*==============================================================*/
/* Database: Database_1                                         */
/*==============================================================*/
create database Database_1;

use Database_1;

/*==============================================================*/
/* Table: log                                                   */
/*==============================================================*/
create table log
(
   id                   int not null auto_increment,
   name                 VARCHAR(64),
   createTime           timestamp default NULL,
   logtypeId            int,
   remark               VARCHAR(1024),
   userId               int,
   primary key (id)
);

alter table log comment '日志';

/*==============================================================*/
/* Index: XIF16MANALOG                                          */
/*==============================================================*/
create index XIF16MANALOG on log
(
   logtypeId
);

/*==============================================================*/
/* Index: XIE1MANALOG                                           */
/*==============================================================*/
create index XIE1MANALOG on log
(
   name
);

/*==============================================================*/
/* Table: logtype                                               */
/*==============================================================*/
create table logtype
(
   id                   int not null auto_increment,
   logtypeName          VARCHAR(20) not null,
   primary key (id)
);

/*==============================================================*/
/* Table: resources                                             */
/*==============================================================*/
create table resources
(
   id                   int not null auto_increment,
   name                 VARCHAR(50) not null,
   parentId             int not null,
   resKey               VARCHAR(50) not null,
   type                 VARCHAR(40),
   resUrl               VARCHAR(200) default 'A',
   level                int,
   icon                 VARCHAR(200),
   ishide               int,
   description          VARCHAR(200),
   primary key (id)
);

alter table resources comment '权限表';

/*==============================================================*/
/* Index: UK_RRIGHT_PROID                                       */
/*==============================================================*/
create unique index UK_RRIGHT_PROID on resources
(
   parentId,
   name
);

/*==============================================================*/
/* Index: INX_RRIGHT_STA                                        */
/*==============================================================*/
create index INX_RRIGHT_STA on resources
(
   resKey
);

/*==============================================================*/
/* Table: resources_role                                        */
/*==============================================================*/
create table resources_role
(
   rescId               int not null,
   role_id              int not null,
   primary key (rescId, role_id)
);

alter table resources_role comment '角色权限关系对应表';

/*==============================================================*/
/* Table: role                                                  */
/*==============================================================*/
create table role
(
   id                   int not null auto_increment,
   name                 VARCHAR(60) not null,
   roleKey              VARCHAR(60),
   description          VARCHAR(60) default 'sysdate',
   state                int,
   primary key (id)
);

alter table role comment '角色表';

/*==============================================================*/
/* Index: UK_RROLE_RN                                           */
/*==============================================================*/
create unique index UK_RROLE_RN on role
(
   name
);

/*==============================================================*/
/* Table: user                                                  */
/*==============================================================*/
create table user
(
   userId               int not null auto_increment,
   userName             VARCHAR(50),
   userPassword         VARCHAR(40) not null,
   userNickname         VARCHAR(40) not null,
   userRealname         VARCHAR(20),
   userAge              int,
   userSex              int,
   userAddress          VARCHAR(100) default 'Sysdate',
   userPhone            VARCHAR(20) default '0',
   userMail             VARCHAR(45) default 'Sysdate',
   userQQ               VARCHAR(15),
   regTime              timestamp default NULL,
   lastLogintime        timestamp not null default '0000-00-00 00:00:00',
   level                int,
   status               VARCHAR(20),
   parentNumber         VARCHAR(100),
   locked               int,
   primary key (userId)
);

alter table user comment '用户表';

/*==============================================================*/
/* Index: INX_MANA_MNAME                                        */
/*==============================================================*/
create index INX_MANA_MNAME on user
(
   userName
);

/*==============================================================*/
/* Table: user_role                                             */
/*==============================================================*/
create table user_role
(
   userId               int not null,
   roleId               int not null,
   primary key (userId, roleId)
);

alter table user_role comment '用户角色表';

/*==============================================================*/
/* Table: userlogin                                             */
/*==============================================================*/
create table userlogin
(
   id                   int not null auto_increment,
   userId               int not null,
   accountName          VARCHAR(50) not null,
   loginTime            timestamp not null,
   loginIP              VARCHAR(40),
   primary key (id)
);

alter table userlogin comment '登录';

/*==============================================================*/
/* Index: UK_RRIGHT_PROID                                       */
/*==============================================================*/
create unique index UK_RRIGHT_PROID on userlogin
(
   accountName,
   userId
);

/*==============================================================*/
/* Index: INX_RRIGHT_STA                                        */
/*==============================================================*/
create index INX_RRIGHT_STA on userlogin
(
   loginTime
);

