create database if not exists sinnamon_blog;

use sinnamon_blog;

create table author(
author_id tinyint not null primary key auto_increment,
first_name varchar(20) not null,
last_name varchar(20) not null);


create table blog_post(
post_id tinyint not null primary key auto_increment,
title varchar(50) not null,
date_time date,
text_post text,
picture varchar(200),
author tinyint not null,
foreign key(author) references author (author_id));



insert into author values (1,"Sandra" ,"Murray");
insert into author values (2,"Mamta" ,"Shukla");



insert into blog_post values (1,"Connemara",15/06/2022,"Connemara is scenic place", "xyz", 1);
insert into blog_post values (2,"Kerry",16/06/2022,"Kerry is scenic place", "xyz", 1);
insert into blog_post values (3,"Dublin",15/06/2022,"Dublin is scenic place", "xyz", 1);
insert into blog_post values (4,"Donegal",15/06/2022,"Donegal is scenic place", "xyz", 2);
insert into blog_post values (5,"Cork",15/06/2022,"Cork is scenic place", "xyz", 2);

update blog_post set text_post="Donegal is best", picture="ZYX", date_time="01/01/2022", title="" where post_id=4;

update author set first_name="Nancy", last_name="Hendy" where author_id=2;

select * from author;
select * from blog_post;

 
 