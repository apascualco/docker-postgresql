create table usuarios (
	id serial primary key,
	username varchar(40) unique not null,
	password varchar(40) not null,
	activado boolean not null default true
);

insert into usuarios(username, password, activado) values 
	('apascualco','123456', true),
	('alberto','123456', true),
	('eva','123456', true),
	('paco','123456', false),
	('david','123456', true);

create table roles (
	id serial primary key,
	user_id integer,
	rol varchar(40) not null,
	foreign key(user_id) references usuarios(id),
	unique (user_id,rol)
);

insert into roles(user_id, rol) values 
	('1','ROLE_USER'),
	('1','ROLE_ADMIN'),
	('2','ROLE_USER'),
	('2','ROLE_ADMIN'),
	('3','ROLE_USER'),
	('4','ROLE_USER'),
	('5','ROLE_USER');
