
-- table classify
insert into classify(category) VALUES ('手机');
insert into classify(category) VALUES ('电脑');
insert into classify(category) VALUES ('汽车');
insert into classify(category) VALUES ('家居');
insert into classify(category) VALUES ('宠物');
insert into classify(category) VALUES ('书籍');
insert into classify(category) VALUES ('服饰');
insert into classify(category) VALUES ('公寓');

-- table user

-- 两个普通的商家用户
insert into user(account,password,username,phone,address,email,pic,role,time)
    VALUES ('111111','123456','test01','13511111111','湖北武汉','2333@gmail.com','bk1.jpg',0,'2016-09-13');
insert into user(account,password,username,phone,address,email,pic,role,time)
    VALUES ('222222','123456','test02','13511111112','湖南荆州','2333@gmail.com','bk1.jpg',0,'2016-09-13');
-- 管理员用户
insert into user(account,password,username,phone,address,email,pic,role,time)
    VALUES ('333333','123456','system','13511111113','北京','2333@gmail.com','bk1.jpg',1,'2016-09-13');

-- table goods
-- 手机

insert into goods(cid,uid,gname,price,picture,descript,rtime,stock,state,ctime,saled_num)
    VALUES (1,1,'手机1',290,'m1.jpg','这里是手机1的描述','2016-09-18',2000,0,'2016-09-01',20);
insert into goods(cid,uid,gname,price,picture,descript,rtime,stock,state,ctime,saled_num)
VALUES (1,1,'手机2',310,'m2.jpg','这里是手机2的描述','2016-09-18',2000,0,'2016-09-01',30);
insert into goods(cid,uid,gname,price,picture,descript,rtime,stock,state,ctime,saled_num)
VALUES (1,1,'手机3',190,'m3.jpg','这里是手机3的描述','2016-09-18',2000,0,'2016-09-01',40);
insert into goods(cid,uid,gname,price,picture,descript,rtime,stock,state,ctime,saled_num)
VALUES (1,2,'手机4',480,'m4.jpg','这里是手机4的描述','2016-09-18',2000,0,'2016-09-01',90);
insert into goods(cid,uid,gname,price,picture,descript,rtime,stock,state,ctime,saled_num)
VALUES (1,2,'手机5',859,'m5.jpg','这里是手机5的描述','2016-09-18',2000,0,'2016-09-01',60);

-- 电脑
insert into goods(cid,uid,gname,price,picture,descript,rtime,stock,state,ctime,saled_num)
VALUES (2,1,'电脑1',1290,'e1.jpg','这里是电脑1的描述','2016-09-18',800,0,'2016-09-01',20);
insert into goods(cid,uid,gname,price,picture,descript,rtime,stock,state,ctime,saled_num)
VALUES (2,1,'电脑2',1790,'e2.jpg','这里是电脑2的描述','2016-09-18',800,0,'2016-09-01',80);
insert into goods(cid,uid,gname,price,picture,descript,rtime,stock,state,ctime,saled_num)
VALUES (2,1,'电脑3',1990,'e3.jpg','这里是电脑3的描述','2016-09-18',800,0,'2016-09-01',100);
insert into goods(cid,uid,gname,price,picture,descript,rtime,stock,state,ctime,saled_num)
VALUES (2,2,'电脑4',2290,'e4.jpg','这里是电脑4的描述','2016-09-18',800,0,'2016-09-01',50);
insert into goods(cid,uid,gname,price,picture,descript,rtime,stock,state,ctime,saled_num)
VALUES (2,2,'电脑5',3290,'e5.jpg','这里是电脑5的描述','2016-09-18',800,0,'2016-09-01',220);

-- 汽车
insert into goods(cid,uid,gname,price,picture,descript,rtime,stock,state,ctime,saled_num)
VALUES (3,1,'汽车1',11290,'c1.jpg','这里是汽车1的描述','2016-09-18',80,0,'2016-09-01',20);
insert into goods(cid,uid,gname,price,picture,descript,rtime,stock,state,ctime,saled_num)
VALUES (3,2,'汽车2',21290,'c2.jpg','这里是汽车2的描述','2016-09-18',80,0,'2016-09-01',90);
insert into goods(cid,uid,gname,price,picture,descript,rtime,stock,state,ctime,saled_num)
VALUES (3,1,'汽车3',31290,'c3.jpg','这里是汽车3的描述','2016-09-18',80,0,'2016-09-01',60);
insert into goods(cid,uid,gname,price,picture,descript,rtime,stock,state,ctime,saled_num)
VALUES (3,2,'汽车4',41290,'c4.jpg','这里是汽车4的描述','2016-09-18',80,0,'2016-09-01',50);
insert into goods(cid,uid,gname,price,picture,descript,rtime,stock,state,ctime,saled_num)
VALUES (3,1,'汽车5',51290,'c5.jpg','这里是汽车5的描述','2016-09-18',80,0,'2016-09-01',40);

-- 家具
insert into goods(cid,uid,gname,price,picture,descript,rtime,stock,state,ctime,saled_num)
VALUES (4,1,'家具1',3290,'fr1.jpg','这里是家具1的描述','2016-09-18',80,0,'2016-09-01',20);
insert into goods(cid,uid,gname,price,picture,descript,rtime,stock,state,ctime,saled_num)
VALUES (4,2,'家具2',4290,'fr2.jpg','这里是家具2的描述','2016-09-18',80,0,'2016-09-01',70);
insert into goods(cid,uid,gname,price,picture,descript,rtime,stock,state,ctime,saled_num)
VALUES (4,1,'家具3',5290,'fr3.jpg','这里是家具3的描述','2016-09-18',80,0,'2016-09-01',60);
insert into goods(cid,uid,gname,price,picture,descript,rtime,stock,state,ctime,saled_num)
VALUES (4,2,'家具4',6290,'fr4.jpg','这里是家具4的描述','2016-09-18',80,0,'2016-09-01',50);
insert into goods(cid,uid,gname,price,picture,descript,rtime,stock,state,ctime,saled_num)
VALUES (4,1,'家具5',7290,'fr5.jpg','这里是家具5的描述','2016-09-18',80,0,'2016-09-01',90);

-- 宠物
insert into goods(cid,uid,gname,price,picture,descript,rtime,stock,state,ctime,saled_num)
VALUES (5,1,'宠物1',790,'d1.jpg','这里是宠物1的描述','2016-09-18',80,0,'2016-09-01',20);
insert into goods(cid,uid,gname,price,picture,descript,rtime,stock,state,ctime,saled_num)
VALUES (5,2,'宠物2',690,'d2.jpg','这里是宠物2的描述','2016-09-18',80,0,'2016-09-01',70);
insert into goods(cid,uid,gname,price,picture,descript,rtime,stock,state,ctime,saled_num)
VALUES (5,1,'宠物3',590,'d3.jpg','这里是宠物3的描述','2016-09-18',80,0,'2016-09-01',60);
insert into goods(cid,uid,gname,price,picture,descript,rtime,stock,state,ctime,saled_num)
VALUES (5,2,'宠物4',390,'d4.jpg','这里是宠物4的描述','2016-09-18',80,0,'2016-09-01',50);
insert into goods(cid,uid,gname,price,picture,descript,rtime,stock,state,ctime,saled_num)
VALUES (5,1,'宠物5',290,'d5.jpg','这里是宠物5的描述','2016-09-18',80,0,'2016-09-01',90);

-- 书籍
insert into goods(cid,uid,gname,price,picture,descript,rtime,stock,state,ctime,saled_num)
VALUES (6,1,'书籍1',790,'b4.jpg','这里是书籍1的描述','2016-09-18',80,0,'2016-09-01',1);
insert into goods(cid,uid,gname,price,picture,descript,rtime,stock,state,ctime,saled_num)
VALUES (6,2,'书籍2',690,'b5.jpg','这里是书籍2的描述','2016-09-18',80,0,'2016-09-01',2);
insert into goods(cid,uid,gname,price,picture,descript,rtime,stock,state,ctime,saled_num)
VALUES (6,1,'书籍3',590,'b10.jpg','这里是书籍3的描述','2016-09-18',80,0,'2016-09-01',3);
insert into goods(cid,uid,gname,price,picture,descript,rtime,stock,state,ctime,saled_num)
VALUES (6,2,'书籍4',390,'b12.jpg','这里是书籍4的描述','2016-09-18',80,0,'2016-09-01',90);
insert into goods(cid,uid,gname,price,picture,descript,rtime,stock,state,ctime,saled_num)
VALUES (6,1,'书籍5',290,'b13.jpg','这里是书籍5的描述','2016-09-18',80,0,'2016-09-01',40);

-- 服饰
insert into goods(cid,uid,gname,price,picture,descript,rtime,stock,state,ctime,saled_num)
VALUES (7,1,'服饰1',190,'fa1.jpg','这里是服饰1的描述','2016-09-18',80,0,'2016-09-01',100);
insert into goods(cid,uid,gname,price,picture,descript,rtime,stock,state,ctime,saled_num)
VALUES (7,2,'服饰2',180,'fa2.jpg','这里是服饰2的描述','2016-09-18',80,0,'2016-09-01',80);
insert into goods(cid,uid,gname,price,picture,descript,rtime,stock,state,ctime,saled_num)
VALUES (7,1,'服饰3',170,'fa3.jpg','这里是服饰3的描述','2016-09-18',80,0,'2016-09-01',70);
insert into goods(cid,uid,gname,price,picture,descript,rtime,stock,state,ctime,saled_num)
VALUES (7,2,'服饰4',160,'fa4.jpg','这里是服饰4的描述','2016-09-18',80,0,'2016-09-01',50);
insert into goods(cid,uid,gname,price,picture,descript,rtime,stock,state,ctime,saled_num)
VALUES (7,1,'服饰5',290,'fa5.jpg','这里是服饰5的描述','2016-09-18',80,0,'2016-09-01',40);

-- 公寓
insert into goods(cid,uid,gname,price,picture,descript,rtime,stock,state,ctime,saled_num)
VALUES (8,1,'公寓1',190000,'r1.jpg','这里是公寓1的描述','2016-09-18',80,0,'2016-09-01',100);
insert into goods(cid,uid,gname,price,picture,descript,rtime,stock,state,ctime,saled_num)
VALUES (8,2,'公寓2',180000,'r2.jpg','这里是公寓2的描述','2016-09-18',80,0,'2016-09-01',80);
insert into goods(cid,uid,gname,price,picture,descript,rtime,stock,state,ctime,saled_num)
VALUES (8,1,'公寓3',170000,'r3.jpg','这里是公寓3的描述','2016-09-18',80,0,'2016-09-01',70);
insert into goods(cid,uid,gname,price,picture,descript,rtime,stock,state,ctime,saled_num)
VALUES (8,2,'公寓4',160000,'r4.jpg','这里是公寓4的描述','2016-09-18',80,0,'2016-09-01',60);
insert into goods(cid,uid,gname,price,picture,descript,rtime,stock,state,ctime,saled_num)
VALUES (8,1,'公寓5',290000,'r5.jpg','这里是公寓5的描述','2016-09-18',80,0,'2016-09-01',40);
