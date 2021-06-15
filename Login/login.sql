/*creating a database called project */
CREATE DATABASE project
/*creating a table called login and storing values required to login*/
CREATE TABLE LOGIN(admin_id int,name varchar(40),Password varchar(max))

/*primary key*/
alter table login alter column admin_id int not NULL
alter table login add constraint primary1 PRIMARY key (admin_id)
/*setting password length to atleast 7 characters*/
alter table login add constraint pwd check (datalength(Password) > 6)
--creating a log table to record login and logout time of users--
create table login_log(user_id int,login_time datetime,logout_time datetime)
--primary key
alter table login_log alter column user_id int not NULL
alter table login_log add constraint primary2 primary key (user_id)
--foreign key
alter table login add CONSTRAINT foreign1 foreign key (admin_id) REFERENCES login_log(user_id)
