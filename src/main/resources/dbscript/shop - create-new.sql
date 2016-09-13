/*==============================================================*/
/* dbms name:      mysql 5.0                                    */
/* created on:     2016/9/13 10:18                         */
/*==============================================================*/


drop table if exists evaluates;

drop table if exists notes;

drop table if exists orders;

drop table if exists goods;

drop table if exists notice;

drop table if exists user;

drop table if exists classify;

/*==============================================================*/
/* table: notice                                                */
/*==============================================================*/
create table notice
(
   noid                 int not null auto_increment comment '公告id',
   uid                  int not null comment  '用户id',
   title                varchar(60) not null comment '标题',
   content              text comment '内容',
   state                int default 0 comment '状态:0-有效，1-置顶，2-过期' check(state>=0 and state <3),
   ctime                date not null comment '创建时间',
   primary key (noid)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*==============================================================*/
/* table: classify                                              */
/*==============================================================*/
create table classify
(
   cid                  int not null auto_increment comment '分类id',
   category             varchar(20) not null comment '商品内别',
   primary key (cid),
   unique key (category)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*==============================================================*/
/* table: evaluates                                             */
/*==============================================================*/
create table evaluates
(
   eid                  int not null auto_increment comment '评价id',
   oid                  int not null comment '订单id',
   gid                  int not null comment '商品id',
   uid                  int not null comment '用户id',
   grade                int default 5 comment '商品打分(1-5)' check(grade>0 and grade <6),
   evaluate             text comment '评价',
   ctime                date not null comment '发布时间',
   primary key (eid)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*==============================================================*/
/* table: goods                                                 */
/*==============================================================*/
create table goods
(
   gid                  int not null auto_increment comment '商品id',
   cid                  int not null comment '分类id',
   uid                  int not null comment '用户id',
   gname                varchar(40) not null comment '商品名称',
   price                double comment '商品价格',
   picture              varchar(80) comment '商品图片',
   descript             text comment '商品描述',
   rtime                date comment '发布时间',
   stock                int comment '商品存量',
   state                int default 1 comment '状态:0-发布中，1-审核中，2-已过期' check(state>=0 and state <3),
   ctime                date not null comment '创建时间',
   saled_num            int default 0 comment '已销售数量',
   primary key (gid)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*==============================================================*/
/* table: notes                                                 */
/*==============================================================*/
create table notes
(
   nid                  int not null auto_increment comment '留言id',
   uid                  int comment '用户id',
   title                varchar(40) not null comment '标题',
   content              text comment'内容',
   ctime                date not null comment '留言时间',
   primary key (nid)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*==============================================================*/
/* table: orders                                                */
/*==============================================================*/
create table orders
(
   oid                  int not null auto_increment comment '订单id',
   gid                  int not null comment '商品id',
   uid                  int not null comment '购买用户id',
   number               int default 1 comment '数量，默认为1',
   ostate               int default 0 comment '订单状态：0-新建，1-发货，2-收货即完成，3-取消' check(ostate>=0 and ostate<4),
   time                 date not null comment '最后修改时间',
   note                 text comment '备注',
   primary key (oid)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*==============================================================*/
/* table: user                                                  */
/*==============================================================*/
create table user
(
   uid                  int not null auto_increment comment '用户id',
   account              varchar(20) not null comment '用户账号',
   password             varchar(20) not null comment '用户密码',
   username             varchar(20) not null comment '用户名',
   sex                  char(1)  comment '性别' check(sex='男' or sex='女'),
   phone                char(13) comment '联系电话',
   address              varchar(256) comment '地址',
   email                varchar(30) comment '邮箱',
   pic                  varchar(80) comment '用户头像',
   role                 int default 0 comment '角色',
   time                 date not null comment '创建时间',
   primary key (uid),
   unique key(account)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

alter table notice add constraint foreign key (uid)
      references user (uid) on delete restrict on update restrict;

alter table evaluates add constraint foreign key (oid)
      references orders (oid) on delete restrict on update restrict;

alter table evaluates add constraint foreign key (uid)
      references user (uid) on delete restrict on update restrict;

alter table evaluates add constraint foreign key (gid)
      references goods (gid) on delete restrict on update restrict;

alter table goods add constraint foreign key (cid)
      references classify (cid) on delete restrict on update restrict;

alter table goods add constraint foreign key (uid)
      references user (uid) on delete restrict on update restrict;

alter table notes add constraint foreign key (uid)
      references user (uid) on delete restrict on update restrict;

alter table orders add constraint foreign key (gid)
      references goods (gid) on delete restrict on update restrict;

alter table orders add constraint foreign key (uid)
      references user (uid) on delete restrict on update restrict;



