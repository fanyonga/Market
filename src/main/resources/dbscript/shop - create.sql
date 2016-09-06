/*==============================================================*/
/* dbms name:      mysql 5.0                                    */
/* created on:     2016/9/2 14:11:52                            */
/*==============================================================*/


drop table if exists notice;

drop table if exists classify;

drop table if exists evaluates;

drop table if exists goods;

drop table if exists notes;

drop table if exists orders;

drop table if exists user;

/*==============================================================*/
/* table: notice                                                */
/*==============================================================*/
create table notice
(
   noid                 int not null auto_increment comment '公告id',
   uid                  int comment '用户id',
   title                varchar(256) not null comment '标题',
   content              text comment '内容',
   state                int not null comment '状态',
   time                 time not null comment '创建时间',
   primary key (noid)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*==============================================================*/
/* table: classify                                              */
/*==============================================================*/
create table classify
(
   cid                  int not null auto_increment comment '分类id',
   category             varchar(256) not null comment '商品内别',
   primary key (cid)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*==============================================================*/
/* table: evaluates                                             */
/*==============================================================*/
create table evaluates
(
   eid                  int not null auto_increment comment '评价id',
   oid                  int not null comment '订单id',
   gid                  int not null comment '商品id',
   uid                  int comment '用户id',
   grade                char(1) comment '商品打分',
   speed                char(1) comment '速度打分',
   evaluate             text comment '评价',
   time                 time not null comment '最后修改时间',
   primary key (eid)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*==============================================================*/
/* table: goods                                                 */
/*==============================================================*/
create table goods
(
   gid                  int not null auto_increment comment '商品id',
   cid                  int not null comment '分类id',
   uid                  int comment '用户id',
   category             char(20) comment '商品类别',
   gname                char(20) not null comment '商品名称',
   parea                int comment '价格区域',
   price                float comment '商品价格',
   con                  int comment '成色',
   area                 float comment '所在区域',
   picture              int comment '商品图片',
   content              char(20) comment '联系人',
   phone                char(20) comment '联系电话',
   descript             text comment '商品描述',
   rtime                time comment '发布时间',
   stock                int comment '商品存量',
   state                char(1) not null comment '状态',
   ctime                time not null comment '创建时间',
   primary key (gid)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*==============================================================*/
/* table: notes                                                 */
/*==============================================================*/
create table notes
(
   nid                  int not null auto_increment comment '留言id',
   uid                  int comment '用户id',
   gid                  int not null comment '商品id',
   title                varchar(40) not null comment '标题',
   content              text comment'内容',
   readperson           int comment '查看人',
   state                int comment '状态，0-未查看，1-已查看',
   time                 time not null comment '留言时间',
   primary key (nid)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*==============================================================*/
/* table: orders                                                */
/*==============================================================*/
create table orders
(
   oid                  int not null auto_increment comment '订单id',
   gid                  int not null comment '商品id',
   number               int comment '数量，默认为1',
   price                float comment '价格',
   total                float comment '总价',
   way                  int comment '购买方式：0-货到付款，1-网银支付，2-支付',
   ostate               int comment '订单状态：0-新建，1-发货，2-收货，3-完成，4-取消',
   pstate               int comment '支付状态：0-未支付，1已支付',
   phone                varchar(11) comment '联系电话',
   address              varchar(256) comment '地址',
   uid                  int comment '购买用户id',
   time                 time not null comment '最后修改时间',
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
   username             varchar(20) comment '用户名',
   sex                  char(1) comment '性别',
   birth                national varchar(20) comment '生日',
   phone                varchar(13) comment '联系电话',
   address              varchar(256) comment '地址',
   qq                   varchar(11) comment 'qq',
   email                national varchar(30) comment '邮箱',
   pic                  varchar(256) comment '用户头像',
   note                 text comment '备注',
   role                 int not null comment '角色',
   time                 time not null comment '创建时间',
   primary key (uid)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

alter table notice add constraint foreign key (uid)
      references user (uid) on delete restrict on update restrict;

alter table evaluates add constraint foreign key (oid)
      references orders (oid) on delete restrict on update restrict;

alter table evaluates add constraint foreign key (uid)
      references user (uid) on delete restrict on update restrict;

alter table goods add constraint foreign key (cid)
      references classify (cid) on delete restrict on update restrict;

alter table goods add constraint foreign key (uid)
      references user (uid) on delete restrict on update restrict;

alter table notes add constraint foreign key (gid)
      references goods (gid) on delete restrict on update restrict;

alter table notes add constraint foreign key (uid)
      references user (uid) on delete restrict on update restrict;

alter table orders add constraint foreign key (gid)
      references goods (gid) on delete restrict on update restrict;

alter table orders add constraint foreign key (uid)
      references user (uid) on delete restrict on update restrict;

