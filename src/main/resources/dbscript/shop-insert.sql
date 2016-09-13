
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

insert into user(account,password,username,phone,address,email,pic,role,time)
    VALUES ('111111','123456','test01','13511111111','湖北武汉','2333@gmail.com','bk1.jpg',0,'2016-09-13');
insert into user(account,password,username,phone,address,email,pic,role,time)
    VALUES ('222222','123456','test02','13511111112','湖南荆州','2333@gmail.com','bk1.jpg',0,'2016-09-13');
insert into user(account,password,username,phone,address,email,pic,role,time)
    VALUES ('333333','123456','system','13511111113','北京','2333@gmail.com','bk1.jpg',1,'2016-09-13');

