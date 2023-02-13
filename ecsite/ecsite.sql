drop database if exists ecsite;
create database ecsite;

use ecsite;

create table user(
	id int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
	user_name varchar(25) NOT NULL,
	password varchar(25) NOT NULL,
	full_name varchar(50) NOT NULL,
	is_admin TINYINT(1) NOT NULL DEFAULT 0
);

insert into user(user_name,password,full_name)values('taro','taropw','Taro Yamada');
insert into user(user_name,password,full_name)values('jiro','jiropw','Jiro Tanaka');
insert into user(user_name,password,full_name)values('ichiko','ichikopw','Ichi Hayashi');
insert into user(user_name,password,full_name,is_admin)values('admin','admin','管理者　太郎',1);




use ecsite;

create table goods(
	id int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
	goods_name varchar(255) NOT NULL,
	price int(11) DEFAULT 0,
	updated_at TIMESTAMP NOT NULL DEFAULT now() on UPDATE now()
);

insert into goods(goods_name,price) values('Tシャツ','1000');
insert into goods(goods_name,price) values('ジャッケット','10000');
insert into goods(goods_name,price) values('スニーカー','5000');




use ecsite;

create table purchase(
	id int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
	user_id int(11) NOT NULL,
	goods_id int(11) NOT NULL,
	goods_name varchar(255) NOT NULL,
	item_count int(11) DEFAULT 0,
	total int(11) DEFAULT 0,
	created_at DATETIME NOT NULL
);
