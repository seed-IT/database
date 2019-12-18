create table users (
	id int(20) unsigned not null auto_increment primary key,
	name varchar(255) not null,
	email varchar(255) not null unique,
	email_verified_at timestamp null,
	password varchar(255) not null,
	admin int(1) not null default(0),
	remember_token varchar(100) null,
	created_at timestamp null,
	updated_at timestamp null,
	prime int(11) not null default(0)
);
	
create table tags (
	id int(10) unsigned not null auto_increment primary key,
	created_at timestamp null,
	updated_at timestamp null,
	tag varchar(50) not null unique,
	tag_url varchar(60) not null unique
);

create table posts (
	id int(10) unsigned not null auto_increment primary key,
	created_at timestamp null,
	updated_at timestamp null,
	titre varchar(80) not null,
	contenu varchar(500) not null,
	user_id int(20) unsigned not null,
	tag_id int(20) unsigned not null,
	contact varchar(80) not null,
	img blob null,
	image varchar(200) null,
	foreign key (tag_id) references tags(id) on delete restrict,
	foreign key (user_id) references users(id) on delete restrict
);

create table sensor (
	id int(20) unsigned not null primary key auto_increment,
	date_time datetime not null,
	temperature float not null,
	humidity float not null,
	pressure float not null
);