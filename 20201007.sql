-- create database itau;			-- criação do database
-- use itau;						-- pondo em uso o database

/*									-- criação da tabela de clientes:
create table itau.cliente(
cod_cliente integer(6) not null,
nome_cliente varchar(50) not null,
idade_cliente integer(3) not null,
email_cliente varchar(80) not null,
data_modificacao_registro datetime,
primary key (cod_cliente)			-- isso garante que no campo cod_clientes não podemos ter campos duplicados.
);
*/

describe itau.cliente;

insert into itau.cliente
(cod_cliente, nome_cliente, idade_cliente,email_cliente,data_modificacao_registro)
values
(1, "Luis Santos", 28, "luiss@itau.com.br", "2020-10-07 10:09:00"),
(2, "Thaina Santos", 22, "thaina.s@itau.com.br", "2020-10-07 10:11:00"),
(3, "Ana Santos", 20, "ana.s@itau.com.br", now()),
(4, "Adilson Cardeal", 27, "adilson.c@itau.com.br", now());

select * from itau.cliente order by nome_cliente desc;		-- Exibir informações ordenando pelo nome, decrescentemente.

use itau;

/* -- incluindo registros fake na tabela
INSERT INTO `cliente` (`cod_cliente`,`nome_cliente`,`idade_cliente`,`email_cliente`,`data_modificacao_registro`) VALUES (5,"Randall Q. Moran",109,"ac.feugiat@eu.edu","2020-11-23 12:59:49"),(6,"Austin W. Sweet",89,"Aliquam.rutrum@ante.org","2020-04-06 22:56:35"),(7,"Leigh Y. Holcomb",23,"ac.fermentum@Sedmalesuada.edu","2019-11-27 03:26:13"),(8,"Barbara Gay",91,"varius.orci.in@orci.co.uk","2020-08-23 18:13:35"),(9,"Cameron P. Gray",39,"enim@Sed.com","2020-11-18 11:18:00"),(10,"Carol Parks",69,"facilisis.non.bibendum@consectetuer.net","2020-03-03 18:32:15"),(11,"Anne Dudley",86,"ipsum.dolor.sit@acmattis.ca","2020-05-17 20:45:48"),(12,"Risa W. Barber",72,"Nulla.eget@dignissimpharetra.co.uk","2020-11-15 01:09:52"),(13,"Vladimir O. Cleveland",103,"odio@justoProinnon.com","2020-09-19 23:19:10"),(14,"Heather X. Weaver",26,"Vivamus@dignissimtemporarcu.net","2020-09-06 02:18:20");
INSERT INTO `cliente` (`cod_cliente`,`nome_cliente`,`idade_cliente`,`email_cliente`,`data_modificacao_registro`) VALUES (15,"Driscoll Valentine",54,"enim.condimentum.eget@vitaerisusDuis.org","2021-02-06 19:14:42"),(16,"Dara B. Velez",107,"sit@purus.co.uk","2021-07-19 01:25:24"),(17,"Moses Moore",70,"neque.sed.sem@neque.edu","2021-02-16 06:03:11"),(18,"Lysandra Lloyd",30,"dolor.vitae.dolor@arcuCurabiturut.net","2021-01-09 01:37:50"),(19,"Latifah Myers",20,"arcu.Morbi@ornare.org","2020-06-10 16:58:38"),(20,"Arsenio B. Webster",28,"enim.Curabitur.massa@Inmipede.co.uk","2020-09-04 20:33:41"),(21,"Pandora Duke",73,"non.justo.Proin@Nullatincidunt.ca","2021-09-13 09:17:00"),(22,"Griffin Weeks",25,"sapien.Nunc@Aliquameratvolutpat.net","2019-11-23 17:51:52"),(23,"August V. Morris",18,"neque@liberoInteger.co.uk","2021-08-20 12:28:15"),(24,"Casey Chapman",66,"metus@Quisque.org","2021-01-15 18:00:49");
INSERT INTO `cliente` (`cod_cliente`,`nome_cliente`,`idade_cliente`,`email_cliente`,`data_modificacao_registro`) VALUES (25,"Salvador Conley",62,"amet@nec.ca","2021-01-17 17:22:27"),(26,"Sacha Walsh",57,"sem@Fuscefeugiat.co.uk","2021-04-06 21:43:30"),(27,"Dennis L. Spence",20,"et@Nuncmauriselit.ca","2019-10-24 04:49:20"),(28,"Noble Mitchell",32,"sit.amet.faucibus@elementumsemvitae.co.uk","2020-10-01 02:01:46"),(29,"Abraham M. Owen",91,"pharetra.ut@nectempusmauris.net","2019-11-21 13:24:05"),(30,"Aimee Morse",68,"sit.amet.consectetuer@mollisnon.edu","2021-06-25 12:15:45"),(31,"Kaye X. Pena",30,"Morbi.sit@aliquam.net","2020-10-21 00:44:57"),(32,"Beck Barber",25,"sit.amet@doloregestasrhoncus.co.uk","2020-06-13 17:10:23"),(33,"Michael Briggs",64,"rhoncus.id@arcuVestibulumante.co.uk","2020-06-19 22:18:27"),(34,"Sylvester Norris",83,"interdum.Curabitur.dictum@auctor.ca","2020-02-15 09:12:30");
INSERT INTO `cliente` (`cod_cliente`,`nome_cliente`,`idade_cliente`,`email_cliente`,`data_modificacao_registro`) VALUES (35,"Sloane F. Mercado",19,"sed.est.Nunc@odio.ca","2021-08-31 18:47:22"),(36,"Nelle Watkins",53,"malesuada.vel.venenatis@Duis.org","2020-10-04 19:58:58"),(37,"Jerome X. Perez",28,"pharetra@Morbiquis.net","2021-03-23 18:56:17"),(38,"Adele X. Burch",37,"Lorem.ipsum.dolor@porttitorinterdumSed.org","2020-01-15 03:40:36"),(39,"Dorian X. Williams",82,"Quisque.varius@volutpatnunc.org","2021-09-16 09:09:16"),(40,"Daquan Dudley",59,"sit.amet@malesuadafringillaest.co.uk","2020-11-01 17:51:05"),(41,"Martina Stephenson",25,"Proin.eget.odio@Seddictum.edu","2021-03-23 09:10:38"),(42,"Colt Y. Hunt",66,"Cras.vehicula.aliquet@Sednullaante.co.uk","2021-06-18 23:42:34"),(43,"Odette E. Woods",30,"sagittis.lobortis@Integersemelit.ca","2021-09-30 23:24:47"),(44,"Adrienne Santiago",56,"est.Nunc.laoreet@eget.org","2020-05-02 06:41:06");
INSERT INTO `cliente` (`cod_cliente`,`nome_cliente`,`idade_cliente`,`email_cliente`,`data_modificacao_registro`) VALUES (45,"Lilah I. Jimenez",73,"penatibus.et@montes.co.uk","2021-02-06 18:24:10"),(46,"Kylan F. Cook",60,"ut.ipsum.ac@actellus.net","2020-05-30 09:18:05"),(47,"Robin G. Gentry",67,"mauris@vel.org","2020-05-16 11:38:33"),(48,"Maya V. Schwartz",95,"ullamcorper.magna@nuncsit.edu","2020-09-04 22:29:19"),(49,"Kennedy L. Barrera",80,"Donec.consectetuer@dolordapibus.ca","2021-09-04 23:06:58"),(50,"Camilla Richard",19,"magna.nec@orciUtsagittis.com","2020-11-15 10:16:40"),(51,"Olivia W. Small",48,"vitae@luctusCurabituregestas.ca","2021-02-07 20:40:46"),(52,"Dominique Peters",33,"urna.Nullam.lobortis@Suspendissecommodotincidunt.com","2020-04-24 01:29:45"),(53,"India Frost",26,"ipsum.Suspendisse.non@aliquet.com","2020-10-02 16:22:05"),(54,"Devin P. Lewis",81,"id.ante@bibendumullamcorper.edu","2019-12-28 18:55:55");
INSERT INTO `cliente` (`cod_cliente`,`nome_cliente`,`idade_cliente`,`email_cliente`,`data_modificacao_registro`) VALUES (55,"Gay Gonzalez",41,"nec.diam@dolorsitamet.co.uk","2021-03-04 12:05:26"),(56,"Dylan Welch",49,"penatibus@Quisquetinciduntpede.ca","2020-04-16 15:19:10"),(57,"Pamela E. Barton",37,"per.inceptos.hymenaeos@nonummyFuscefermentum.org","2020-01-11 18:18:26"),(58,"Odette D. Hammond",80,"turpis.egestas.Aliquam@Curabitursedtortor.org","2021-02-22 22:29:22"),(59,"Mohammad F. Acosta",65,"quis.massa@rutrum.ca","2020-11-01 11:27:39"),(60,"Orla V. Goff",81,"ante.Maecenas@accumsanconvallisante.org","2020-06-01 04:23:41"),(61,"Maite E. Keller",44,"Vestibulum.ante.ipsum@adipiscingfringillaporttitor.ca","2020-10-24 06:43:09"),(62,"Ora Hopper",100,"eget.ipsum@ultricesVivamusrhoncus.org","2019-11-02 03:13:57"),(63,"Jin Beach",59,"amet.orci.Ut@Etiam.com","2020-01-02 12:39:25"),(64,"Benjamin L. Kirk",72,"porttitor@libero.com","2021-01-25 01:46:23");
INSERT INTO `cliente` (`cod_cliente`,`nome_cliente`,`idade_cliente`,`email_cliente`,`data_modificacao_registro`) VALUES (65,"Taylor Marks",54,"Maecenas.malesuada@leo.com","2021-03-12 21:53:23"),(66,"Kai Ortega",26,"et.rutrum.non@diamPellentesquehabitant.co.uk","2020-07-24 19:33:46"),(67,"Hamilton Pierce",34,"Curabitur.massa@necdiamDuis.net","2021-06-12 11:58:00"),(68,"Clare Weber",59,"at@amet.com","2020-01-27 21:12:46"),(69,"Cecilia E. Bonner",48,"nec@vitae.org","2021-04-03 05:18:29"),(70,"Kibo S. Armstrong",36,"risus.Duis@egetlacus.ca","2020-03-31 06:53:29"),(71,"Piper G. Howard",30,"sed.pede.nec@malesuada.net","2020-06-05 14:56:32"),(72,"Alyssa E. Underwood",46,"et.malesuada.fames@iaculisenimsit.co.uk","2021-04-11 21:06:51"),(73,"Tashya Wilson",97,"sit@vulputatelacusCras.org","2020-06-07 04:03:44"),(74,"Karly Barton",72,"blandit.mattis.Cras@nuncsed.co.uk","2019-12-13 10:10:17");
INSERT INTO `cliente` (`cod_cliente`,`nome_cliente`,`idade_cliente`,`email_cliente`,`data_modificacao_registro`) VALUES (75,"Brock B. King",79,"eget.volutpat@ac.com","2021-03-18 06:03:32"),(76,"Sharon K. Hernandez",33,"sagittis@ipsum.edu","2021-08-22 07:44:54"),(77,"Dakota K. Mcfarland",56,"et@vulputatemauris.ca","2021-09-30 02:20:25"),(78,"Haviva Mason",51,"id.libero@venenatisamagna.edu","2020-08-11 05:10:04"),(79,"Linus Pugh",52,"molestie@ligulaconsectetuerrhoncus.edu","2020-04-06 06:34:37"),(80,"Raymond K. Perkins",77,"molestie@sapienAenean.ca","2020-05-13 22:30:50"),(81,"Portia Pacheco",45,"mi.ac@felisorciadipiscing.com","2019-10-30 11:58:19"),(82,"Teegan Graves",109,"Cras.vulputate@egetnisidictum.net","2020-10-09 11:46:37"),(83,"Dylan F. Burt",87,"varius@consectetuer.org","2021-08-15 21:31:13"),(84,"Lee J. Albert",108,"eu.arcu@dolor.net","2020-05-14 10:57:12");
INSERT INTO `cliente` (`cod_cliente`,`nome_cliente`,`idade_cliente`,`email_cliente`,`data_modificacao_registro`) VALUES (85,"Ryder Lucas",63,"in.faucibus@loremluctusut.co.uk","2021-08-27 08:04:54"),(86,"Clementine Ramirez",18,"aliquam.eu.accumsan@utquam.org","2021-07-11 03:51:25"),(87,"Aurora M. Webb",29,"litora@varius.net","2020-04-14 22:22:15"),(88,"Benedict H. Combs",44,"lorem.ipsum.sodales@luctusetultrices.co.uk","2021-01-30 15:57:46"),(89,"Zorita Boyer",103,"rutrum.Fusce@tellus.edu","2019-10-21 22:23:18"),(90,"Phelan Graham",100,"sem.Pellentesque@orci.ca","2020-02-01 21:26:23"),(91,"Lars S. Powers",84,"Lorem.ipsum@intempus.ca","2020-08-07 11:00:58"),(92,"Wayne R. Saunders",23,"molestie.sodales.Mauris@egetipsumSuspendisse.org","2021-05-11 14:20:40"),(93,"Sybil S. Andrews",94,"sociis@antelectusconvallis.com","2021-04-28 09:24:03"),(94,"Preston Fletcher",66,"molestie.tellus.Aenean@eunullaat.org","2020-05-21 02:13:35");
INSERT INTO `cliente` (`cod_cliente`,`nome_cliente`,`idade_cliente`,`email_cliente`,`data_modificacao_registro`) VALUES (95,"Cailin S. Colon",88,"Vestibulum.ut.eros@dignissimmagnaa.co.uk","2019-11-15 06:15:19"),(96,"Brian A. Harmon",104,"at@egestashendrerit.net","2020-02-26 01:03:18"),(97,"Salvador Acevedo",92,"et.eros.Proin@turpisnecmauris.ca","2020-08-25 11:31:31"),(98,"Kathleen C. Mcintyre",103,"rutrum.magna@molestie.org","2021-04-06 00:12:31"),(99,"Mariam T. Hopper",47,"Aliquam.nisl.Nulla@utmi.com","2021-08-30 02:18:01"),(100,"Tate B. Carter",103,"et.magnis@Vestibulumaccumsanneque.net","2019-12-03 00:09:30"),(101,"Maia Snider",86,"ipsum.Donec.sollicitudin@Nuncac.ca","2020-01-25 02:09:55"),(102,"Clark L. Newman",51,"aliquet@Duis.co.uk","2019-10-22 17:34:53"),(103,"Buffy Tate",84,"Duis.elementum.dui@et.com","2019-11-10 06:54:52"),(104,"Sopoline B. Larson",34,"at.fringilla.purus@euodioPhasellus.ca","2019-10-28 19:15:05");
*/

select * from itau.cliente ;

-- delete from itau.cliente where cod_cliente >= 95 and cod_cliente <= 104;

select * from itau.cliente where idade_cliente >= 40 order by idade_cliente;

-- Descobrindo a maior idade e depois executando o filtro com base na informação:
select max(idade_cliente) from itau.cliente;
select * from itau.cliente where idade_cliente = 109;
-- Ou: incluindo um select dentro do outro para filtrar em uma linha só:
select * from itau.cliente where idade_cliente = (select max(idade_cliente) from itau.cliente);

-- Selecionando clientes com idades específicas:
select * from itau.cliente where idade_cliente in(20,30,40);

-- Selecionando clientes dentro de uma faixa de registros:
select * from itau.cliente where idade_cliente >= 30 and idade_cliente <= 40 order by idade_cliente;

select nome_cliente,idade_cliente,email_cliente from itau.cliente order by nome_cliente;

-- Inserção de campos:
alter table itau.cliente add endereco_cliente varchar(80) not null;
alter table itau.cliente add cpf_cliente char(11) not null;

describe itau.cliente;
select * from itau.cliente;

-- Exclusão de campos:
alter table itau.cliente drop cpf_cliente;

describe itau.cliente;
select * from itau.cliente;

update itau.cliente set endereco_cliente="Av. Pompeia" where cod_cliente=1;
update itau.cliente set endereco_cliente="Atualizar campo do Cliente" where endereco_cliente="";
update itau.cliente set endereco_cliente="Atualizar campo do Endereço do Cliente" where endereco_cliente="Atualizar campo do Cliente";

-- Criando tabela de backup:
create table itau.bkp_clientes (select * from itau.cliente);
select * from itau.bkp_clientes;

-- Deletando registros:
delete from itau.cliente where idade_cliente >= 40 and idade_cliente <= 50;
select * from itau.cliente where idade_cliente >= 40 and idade_cliente <= 50;

-- Voltando bkp:
insert into itau.cliente
(cod_cliente, nome_cliente, idade_cliente,email_cliente,data_modificacao_registro,endereco_cliente)
select cod_cliente, nome_cliente, idade_cliente,email_cliente,data_modificacao_registro,endereco_cliente
from itau.bkp_clientes where idade_cliente >= 40 and idade_cliente <= 50 order by idade_cliente;


-- Criando tabela automatica:
create table itau.vendas(
id_venda int(6) not null auto_increment,
nome_vendedor varchar(50) not null,
nome_produto varchar(40) not null,
qtd_produto int(6) not null,
preco_unitario decimal(8,2) not null,
cidade_venda varchar(50) not null,
data_venda datetime, 
primary key (id_venda)
);
describe itau.vendas


-- renomeando coluna:
alter table itau.vendas rename column old_name to new_name;
-- renomeando tabela:
rename table itau.vendas to itau.venda;

-- permite apagar fisicamente toda a tabela e seus dados:
-- drop table itau.vendas


describe itau.vendas;

insert into itau.vendas
(nome_vendedor, nome_produto, qtd_produto, preco_unitario, cidade_venda, data_venda)
values
("Marcos", "Mouse", 35, 35.99, "São Paulo", now()),
("Pedro", "Teclado", 10, 42.50, "São Paulo", now()),
("Luciana", "Monitor", 20, 450.50,"São Paulo", now()),
("Rita", "Impressora", 10, 380.99, "Rio de Janeiro", now()),
("Rafael", "Teclado", 60, 40.99, "Rio de Janeiro", now()),
("Cristina", "Notebook", 6, 3850.99, "Rio de Janeiro", now()),
("Marcos", "Mouse", 12, 35.99, "São Paulo", now());

select nome_vendedor,nome_produto,qtd_produto,preco_unitario,(qtd_produto * preco_unitario) as total_venda, cidade_venda
from itau.vendas
where nome_produto = "Mouse";

select sum(qtd_produto) as Total_Teclado from itau.vendas where nome_produto="Teclado";

select sum(qtd_produto) as qtde_teclado_vendido, sum(qtd_produto * preco_unitario) as Total_Venda
from itau.vendas
where nome_produto = "Teclado";

SELECT
    cidade_venda,
    SUM(qtd_produto) AS Quantidade_Teclado_Vendido,
    SUM(qtd_produto * preco_unitario) AS Total_Venda
FROM
    itau.vendas
    group by cidade_venda;
   
SELECT
    nome_vendedor,cidade_venda,
    SUM(qtd_produto) AS Quantidade_Teclado_Vendido,
    SUM(qtd_produto * preco_unitario) AS Total_Venda
FROM
    itau.vendas
    group by nome_vendedor;
    
create table itau.produtos(
cod_produto int not null auto_increment,
nome_produto varchar(50) not null,
valor_produto decimal(8,2) not null,
cod_marca int not null,
primary key (cod_produto)
);
describe itau.produtos;
insert into itau.produtos
(nome_produto,valor_produto,cod_marca)
values
("Microondas", 380.50, 1),
("Liquidificador", 85.90, 2),
("Batedeira", 180.99, 2),
("Geladeira", 1890.50, 1),
("Fogão", 1200.00, 1),
("TV", 1600.00, 3);
select * from itau.produtos

create table itau.marcas(
cod_marca int not null,
nome_marca varchar(50)
);
alter table itau.marcas add primary key (cod_marca);

describe itau.marcas;


insert into itau.marcas
(cod_marca,nome_marca)
values
(1, "Brastemp"),
(2, "Walita"),
(3, "LG")
(4, "Samsung");

select
	p.nome_produto, p.valor_produto, m.nome_marca
from
	itau.produtos as p,
	itau.marcas as m
where
	(p.cod_marca = m.cod_marca)

create database unibanco.

create table unibanco.clientes (select * from itau.cliente)
select * from unibanco.clientes;

drop table itau.bkp_clientes;
drop table itau.cliente;

create table itau.clientes(
cod_cliente int not null auto_increment,
nome_cliente varchar(50) not null,
endereco_cliente varchar(80) not null,
bairro_cliente varchar(50) not null,
cpf_cliente char(11) not null,
idade_cliente int(3) not null,
Ag_cliente int(5) not null,
CC_cliente int(6) not null,
especial boolean,
email_cliente varchar(80) not null,
primary key (cod_cliente,cpf_cliente)
);
describe itau.clientes;

insert into itau.clientes
(nome_cliente, endereco_cliente, bairro_cliente, cpf_cliente, idade_cliente, Ag_cliente, CC_cliente, especial, email_cliente)
select nome_cliente, endereco_cliente, "Atualizar Bairro", "Atualizar", idade_cliente, 0, 0, 0, email_cliente from unibanco.clientes;

update itau.clientes set especial=1 where idade_cliente>=50;

desc unibanco.clientes;

select * from itau.clientes;


create table itau.cargos(
cod_cargo char(2) not null, -- declaração eatamente igual à cod_cargo da tabela itau.cargos()
nome_cargo varchar(50) not null,
valor_cargo decimal(8,2) not null,
primary key (cod_cargo)
);

insert into itau.cargos
(cod_cargo, nome_cargo, valor_cargo)
values
("C1", "Almoxarifado",1580.50),
("C2", "Analista de Sistemas",6950.50),
("C3", "Gerente de CPD",5800.50),
("C4", "Auxiliar Administrativo",2320.50),
("C5", "DBA",9800.50),
("C6", "Estagiário",1500.50),
("C7", "Jovem Aprendiz",400.00);

select * from itau.cargos

create table itau.funcionarios(
matricula_funcionario int not null auto_increment,
nome_funcionario varchar(50) not null,
cod_cargo_funcionario char(2) not null, -- declaração eatamente igual à cod_cargo da tabela itau.cargos()
primary key(matricula_funcionario),
foreign key(cod_cargo_funcionario) references itau.cargos(cod_cargo)
);

select * from itau.funcionarios;

insert into itau.funcionarios
(nome_funcionario, cod_cargo_funcionario)
value
("João da Silva", "C1");
("Leonardo Torres", "C2"),
("Andre Donizette", "C3"),
("Rodrigo Farias", "C4"),
("Ana Santos", "C5"),
("Diego Silveira", "C6"),
("Givanildo Marcos", "C6"),
("Paranauê", "C7");

select * from itau.funcionarios where nome_funcionario like "%Santos%";
