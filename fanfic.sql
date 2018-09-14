use Fanfic;

create table autor (
	id int,
	nome char not null,
	nasc date,
	email varchar not null,
	senha varchar not null,
	descricao char,
	primary key (id)
);

create table historia (
	id int,
	publicacao date not null,
	atualizacao date,
	condicao char,
	n_palavras int not null,
	n_leituras int,
	classif char,
	lingua char not null,
	descricao char,
	autor_id int not null,
	primary key ( id ), 
	foreign key (autor_id) references autor (id)
);

create table favoritos (
	id int,
	nome char not null,
	adc date,
	ult_visita date,
	n_visitas int,
	primary key (id) 
); 

create table listadeleitura (
	nome char not null,
	adc date,
	ult_visita date,
	n_visita date,
	id int,
	primary key (id)
);

create table usuario (
	id int,
	nome char not null,
	nasc date,
	descricao char,
	email varchar not null,
	senha varchar not null,
	fav int,
	lista int,
	primary key (id),
	foreign key (fav) references favoritos (id),
	foreign key (lista) references listadeleitura (id)
 );

create table comentario (
	id int,
	titulo char,
	corpo char not null,
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
	primary key ( hist , usuario ), 
	foreign key (hist) references historia (id),
	foreign key (usuario) references usuario (id)
);

create table fandom (
	id int,
	categ char not null,
	nome char not null,
	primary key (id)
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
	nome char not null,
	tipo char,
    primary key (id) 
);

create table casalhist (
	hist int,
	casal int,
	primary key (hist, casal),
	foreign key (hist) references historia (id),
	foreign key (casal) references casal (id)
 );
