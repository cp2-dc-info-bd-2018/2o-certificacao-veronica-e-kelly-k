use Fanfic;

INSERT INTO autor (id, nome, nasc, email, senha, descricao) VALUES
(1,'romionefan','2001-08-12','luciacarvalho@gmail.com','1234r','gosto de harry potter'),
(2,'kellyfan', '2001-06-01','veronica@gmail.com','4567s','gosto da kelly'),
(3,'veronicafan','2000-12-24','kelly@gmail.com','8900k','gosto da veronica');

INSERT INTO historia (id,nome,publicacao,atualizacao,condicao,n_palavras,n_leituras,classif,lingua,descricao,autor_id) VALUES
(1,'A new divide','2010-12-28','2012-12-28','hiato',1400,500,'16 anos','portugues','não sou boa de sinopse de história então leiam a fic',1),
(2,'Intimate','2005-05-10','2006-05-10','finalizada',50000,10000,'18 anos','ingles','uma historia de house',2),
(3,'Truth or Dare','2017-01-02','2018-01-05','andamento',900,10000,'18 anos','portugues','uma historia filosofica',3);

INSERT INTO favoritos (id, nome,adc,ult_visita,n_visitas) VALUES
(1,'camila,um anjo em minha vida','2016-06-25','2017-08-07',500),
(2,'im falling in love','2016-07-25','2017-07-25',700),
(3,'de repente você','2018-01-15','2018-04-15',1000);

INSERT INTO listadeleitura (id,nome,adc,ult_visita,n_visita) VALUES
(1,'7 dias para desapegar','2000-12-24','2005-12-24',''),
(2,'gonna face it bitch','2010-03-13','2008-04-05',''),
(3,'nós podemos','2015-04-20','2016-04-20','');

INSERT INTO usuario (id,nome,nasc,descricao,email,senha,fav,lista) VALUES
(1,'kelly cunha','2000-12-24','linda e inteligente','kelly.klayn@yahoo.com','123456789',5,40),
(2,'larissa rodrigues','2000-12-15','louca','larissarodrigues@hotmail.com','123456789',10,50),
(3,'miriam barros','2002-01-08','inconsequente','miriambarros@hotmail.com','123456789',5,40);

INSERT INTO comentario (id,titulo,corpo,nota,data,hist,usuario) VALUES
(1,'gostei','muito bom amei',8,'2015-12-04',1,2),
(2,'ruim','uma grande porcaria',0,'2018-05-07',2,3),
(3,'regular','poderia ser melhor',5,'2009-03-02',3,1);

INSERT INTO hist_usuario (hist,usuario) VALUES
(2,1),
(3,2),
(1,3);

INSERT INTO fandom (id,categ,nome) VALUE
(1,'livro','harry potter'),
(2,'banda','fall out boy'),
(2,'série','brooklyn 99');

INSERT INTO fand_hist (hist,fand) VALUE
(1,2),
(2,3),
(3,1);

INSERT INTO casal (id,nome,tipo) VALUE
(1,'harry/draco','H/H'),
(2,'amy/rosa','M/M'),
(3,'patrick/joe','H/H');

INSERT INTO casalhist (hist,casal) VALUE
(1,2),
(2,3),
(3,1);



