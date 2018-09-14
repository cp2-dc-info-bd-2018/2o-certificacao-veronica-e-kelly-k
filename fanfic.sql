use Fanfic;

create table autor (
	id int,
	nome varchar(100) not null,
	nasc date,
	email varchar(100) not null,
	senha varchar(100) not null,
	descricao varchar(100),
	primary key (id)
);

create table historia (
	id int,
	nome varchar(100) not null,
    publicacao date not null,
	atualizacao date,
	condicao varchar(100),
	n_palavras int not null,
	n_leituras int,
	classif varchar(100),
	lingua varchar(100) not null,
	descricao varchar(100),
	autor_id int not null,
	primary key (id), 
	foreign key (autor_id) references autor (id)
);
 
create table favoritos (
	id int,
	nome varchar(100) not null,
	adc date,
	ult_visita date,
	n_visitas int,
	primary key (id) 
); 

create table listadeleitura (
	nome varchar(100) not null,
	adc date,
	ult_visita date,
	n_visita date,
	id int,
	primary key (id)
);

create table usuario (
	id int,
	nome varchar(100) not null,
	nasc date,
	descricao varchar(100),
	email varchar(100) not null,
	senha varchar(100) not null,
	fav int,
	lista int,
	primary key (id),
	foreign key (fav) references favoritos (id),
	foreign key (lista) references listadeleitura (id)
 );

create table comentario (
	id int,
	titulo varchar(100),
	corpo varchar(100) not null,
	nota int not null,
	data date,
	hist int not null,
	usuario int not null,
	primary key (id),
	foreign key (hist) references historia (id),
	foreign key (usuario) references usuario (id)
);

create table hist_usuario (
	hist int,
	usuario int,
	primary key (hist , usuario), 
	foreign key (hist) references historia (id),
	foreign key (usuario) references usuario (id)
);

create table fandom (
	id int,
	categ varchar(100) not null,
	nome varchar(100) not null,
	primary key(id)
 );

create table fand_hist (
	hist int,
	fand int,
	primary key ( hist, fand ),
	foreign key (hist) references historia (id),
	foreign key (fand) references fandom (id) 
);

create table casal (
	id int,
	nome varchar(100) not null,
	tipo varchar(100),
    primary key (id) 
);

create table casalhist (
	hist int,
	casal int,
	primary key (hist, casal),
	foreign key (hist) references historia (id),
	foreign key (casal) references casal (id)
 );
