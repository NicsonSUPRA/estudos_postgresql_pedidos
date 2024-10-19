create table cliente (
	id integer not null,
	nome VARCHAR(50) not null,
	cpf CHAR(11),
	rg VARCHAR(15),
	data_nascimento DATE,
	genero CHAR(1),
	profissao VARCHAR(30),
	nacionalidade VARCHAR(30),
	logradouro VARCHAR(30),
	numero VARCHAR(10),
	complemento VARCHAR(30),
	bairro VARCHAR(30),
	municipio VARCHAR(30),
	uf VARCHAR(30),
	
	--constraint == restrição
	constraint pk_cliente_id PRIMARY KEY (id)
);


--inserindo nova linha na tabela
insert into cliente (id, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
values(1, 'Manoel', '73982693674', '32323', '2001-01-03' ,'M', 'Professor', 'Brasileira', 'Rua dos pardais', '18', 'Apartamento', 'João 23', 'Parnaíba', 'PI');

insert into cliente (id, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
values(2, 'Tadeo', '82634018356', '12121', '2005-07-23' ,'M', 'Advogado', 'Brasileira', 'Rua da Facada', '696', 'Casa', 'Joao 23', 'Parnaíba', 'PI');

insert into cliente (id, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
values(3, 'Geraldo', '12343299291', '56565', '1987-01-04' ,'M', 'Engenheiro', 'Brasileira', 'Rua da Lima', '200', 'Ap.', 'Centro', 'P.União', 'SC');

insert into cliente (id, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
values(4, 'Carlos', '02678354672', '55463', '1967-10-01' ,'M', 'Pedreiro', 'Brasileira', 'Rua das Laranjeiras', '300', 'Apart.', 'Cto', 'Canoinhas', 'SC');

insert into cliente (id, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
values(5, 'Adriana', '89673542789', '98777', '1989-09-10' ,'F', 'Jornalista', 'Brasileira', 'Rua da Lima', '240', 'Casa', 'São Pedro', 'Porto Vitória', 'PR');

insert into cliente (id, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
values(6, 'Ângela', '95277825341', '12312', '2000-01-01' ,'F', 'Professor', 'Brasileira', 'Av. Beira Mar', '300', null, 'Ctr', 'São Paulo', 'SP');

insert into cliente (id, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
values(7, 'Ângela', '95277825341', '12312', '2000-01-01' ,'F', 'Professor', 'Brasileira', 'Av. Beira Mar', '300', null, 'Ctr', 'São Paulo', 'SP');

insert into cliente (id, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
values(8, 'Anderson', null, null, null,'M', 'Prof.', 'Italiana', 'Av. Brasil', '100', 'Apartamento', 'Santa Rosa', 'Rio de Janeiro', 'RJ');

insert into cliente (id, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
values(9, 'Camila', '44537782546', null, '2001-10-10' ,'F', 'Professora', 'Norte Americana', 'Rua Central', '4333', null, 'Centro', 'Uberlândia', 'MG');

insert into cliente (id, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
values(10, 'Cristiano', null, null, null ,'M', 'Estudante', 'Alemã', 'Rua do Centro', '877', 'Casa', 'Centro', 'Porto Alegre', 'RS');

insert into cliente (id, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
values(11, 'Fabricio', '88881881647', '232323', null ,'M', 'Estudante', 'Brasileira', null, null, null, null, 'PU', 'SC');



--seleciona todos os campos da tabela e retorna todos os cadastros
select * from cliente;


--selecionar campos especificos da tabela
select nome, data_nascimento from cliente;

--alterar nome na coluna
select data_nascimento as "data_de_nascimento" from cliente;

--concatenação de campos
select 'CPF: ' || cpf || ' RG: ' || rg as "cpf e rg" from cliente;

--capturar uma quantidade limitada de objetos
select nome from cliente limit 4;

--consulta utilizando filtro pela data
-- aqui está retornando os clientes que nasceram após o ano 2000
select nome, data_nascimento from cliente where data_nascimento > '2000-01-01';

--consulta utilizando filtro pelo nome
--retornando todos os nomes que contem C maiusculo
select nome from cliente where nome like '%C%'; 

--transforma todas as letras em maiusculo e procura palavras com c;
select nome from cliente where upper(nome) like '%C%'; 

--consulta de clientes entre duas datas
select * from cliente where data_nascimento between '1999-01-01' and '2003-01-01';

--consulta de clientes com rg null
select * from cliente where rg is null;

--consulta de clientes que o rg não é null
select * from cliente where rg is not null;

--consultar cliente ordenado por ordem alfabetica
select * from cliente order by nome;

-- caso precise retornar ao contrario utilize o desc
select * from cliente order by nome desc;

--------------------------------------------------------------------------------
--EXERCICIO
--1. O nome, o gênero e a profissão de todos os clientes, ordenado pelo nome em ordem decrescente
select nome, genero, profissao from cliente order by nome;

--2. Os clientes que tenham a letra “R” no nome
select * from cliente where upper(nome) like '%R%';

--3. Os clientes que o nome inicia com a letra “C”
select * from cliente where upper(nome) like 'C%'; 

--4. Os clientes que o nome termina com a letra “A”
select * from cliente where upper(nome) like '%A'; 

--5. Os clientes que moram no bairro “Centro”
select * from cliente where bairro like 'Centro';

--6. Os clientes que moram em complementos que iniciam com a letra “A”
select * from cliente where complemento like 'A%';

--7. Somente os clientes do sexo feminino
select * from cliente where genero like 'F';

--8. Os clientes que não informaram o CPF
select * from cliente where cpf is null;

--9. O nome e a profissão dos clientes, ordenado em ordem crescente pelo nome da profissão
select nome, profissao from cliente order by profissao;

--10. Os clientes de nacionalidade “Brasileira”
select * from cliente where nacionalidade like 'Brasileira';

--11. Os clientes que informaram o número da residência
select * from cliente where numero is not null;

--12. Os clientes que moram em Santa Catarina
select * from cliente where uf like 'SC';

--13. Os clientes que nasceram entre 01/01/2000 e 01/01/2002
select * from cliente where data_nascimento between '2000-01-01' and '2002-01-01'

--14. O nome do cliente e o logradouro, número, complemento, bairro, município e UF concatenado de todos os clientes
select 'NOME: ' || nome || ' LOGRADOURO: ' || logradouro || ' NUMERO: ' || numero || ' BAIRRO: ' || bairro
|| ' MUNICIPIO: ' || municipio || ' UF: ' || uf as "resultado" from cliente;

--maneiras de atualizar linhas
update cliente set nome = 'Nicson' where id = 1 ;
update cliente set nome = 'Carlos Eduardo', profissao = 'Procurador', numero = '222' where id = 4;

select * from cliente c order by id ;
insert into cliente(id, nome) values(12, 'Tadeo');


------------------------------------------------------------------------------------
--EXERCICIO 2

insert into cliente(id, nome, cpf, rg, data_nascimento, genero, profissao, municipio, uf) 
	values(13, 'Maicon', '77255308222', '12345', '1965-10-10', 'F', 'Empresario', 'Florianopolis', 'PR');

insert into cliente(id, nome, rg, genero, profissao,nacionalidade ,logradouro ,numero ,complemento ,bairro , municipio, uf) 
	values(14, 'Getúlio', '4631', 'F', 'Estudante', 'Brasileira', 'Rua Central', '343', 'Apartamento', 'Centro', 'Curitiba','SC');

insert into cliente (id, nome, genero, profissao, nacionalidade, numero, complemento)
	values(15, 'Sandra', 'M', 'Professor', 'Italiana', '12', 'Bloco A');

--2. Altere os dados do cliente Maicon

--a. O CPF para 45390569432
update cliente set cpf = '45390569432' where nome like 'Maicon';

--b. O gênero para M e nacionalidade para Brasileira
update cliente set genero = 'M', nacionalidade = 'Brasileira' where nome like 'Maicon';

--3. Altere os dados do cliente Getúlio

--a. A data de nascimento para 01/04/1978

--b. O gênero para M
update cliente set data_nascimento = '1978-04-01', genero = 'M' where nome like 'Getúlio';


--4. Altere os dados da cliente Sandra

--a. O gênero para F

--b. A profissão para Professora

--c. O número para 123
update cliente set genero = 'F', profissao = 'Professora', numero = '123' where nome like 'Sandra';

--5. Apague o cliente Maicon
delete from cliente where nome like 'Maicon';

--6. Apague a cliente Sandra
delete from cliente where nome like 'Sandra';

--Criando uma nova tabela profissão

create table profissao(
	id integer not null,
	nome varchar(30) not null,
	
	constraint pk_profissao_id primary key (id),
	constraint un_profissao_nome unique (nome)

);

insert into profissao(id, nome) values(1, 'Estudante');
insert into profissao(id, nome) values(2, 'Engenheiro');
insert into profissao(id, nome) values(3, 'Pedreiro');
insert into profissao(id, nome) values(4, 'Jornalista');
insert into profissao(id, nome) values(5, 'Professor');
insert into profissao(id, nome) values(6, 'Advogado');

select * from profissao;

create table nacionalidade(
	id integer not null,
	nome varchar(30) not null,
	
	constraint pk_nacionalidade_id primary key (id),
	constraint un_nome_nacionalidade unique (nome)
);

insert into nacionalidade(id, nome) values(1, 'Brasileira');
insert into nacionalidade(id, nome) values(2, 'Norte-Americana');
insert into nacionalidade(id, nome) values(3, 'Italiana');
insert into nacionalidade(id, nome) values(4, 'Alemã');

select * from nacionalidade;

create table complemento(
	id integer not null,
	nome varchar(30) not null,
	
	constraint pk_complemento_id primary key (id),
	constraint un_complemento_nome unique(nome)
);

insert into complemento(id, nome) values(1, 'Casa');
insert into complemento(id, nome) values(2, 'Apartamento');

create table bairro(
	id integer not null,
	nome varchar(30) not null,
	
	constraint pk_bairro_id primary key (id),
	constraint un_bairro_nome unique(nome)
);

insert into bairro(id, nome) values(1, 'Cidade Nova');
insert into bairro(id, nome) values(2, 'Centro');
insert into bairro(id, nome) values(3, 'São Pedro');
insert into bairro(id, nome) values(4, 'Santa Rosa');


------------------------------------------------------------
--Trabalhando com chaves estrangeiras

--alter table utilizado para alterar a estrutura da tabela
alter table cliente rename column profissao to id_profissao;

--exclue coluna da tabela
alter table cliente drop id_profissao;

--adiciona coluna na tabela
alter table cliente add id_profissao integer;
--especificando que agora o campo id_construcao se refere ao id da tabela profissao
alter table cliente add constraint fk_cliente_idprofissao foreign key (id_profissao) references profissao (id);

--alter table cliente rename column id_prodissao to id_profissao;

update cliente set id_profissao = 1 where id in (10, 11, 14);
update cliente set id_profissao = 2 where id in (3);
update cliente set id_profissao = 4 where id in (5);
update cliente set id_profissao = 5 where id in (6, 9, 7, 1, 8);
update cliente set id_profissao = 6 where id in (2);

--delete from cliente where id = 12;


delete from profissao where id = 5;
--update or delete on table "profissao" violates foreign key constraint "fk_cliente_idprofissao" on table "cliente"
--Detalhe: Key (id)=(5) is still referenced from table "cliente".

-- a profissao so pode ser deletada se não tiver nenhum cliente associado a ela

select nome, nacionalidade from cliente c;

alter table cliente drop nacionalidade;

alter table cliente add id_nacionalidade integer;

update cliente set id_nacionalidade = 1 where id in(4, 11, 14, 3, 5, 2, 6, 7, 1);
update cliente set id_nacionalidade = 2 where id in(9);
update cliente set id_nacionalidade = 3 where id in(8);
update cliente set id_nacionalidade = 3 where id in(10);

select * from cliente c ;


select id, nome, complemento from cliente;


alter table cliente drop complemento;

alter table cliente add id_complemento integer;

alter table cliente add constraint fk_complemeto_idcomplemento foreign key (id_complemento) references complemento (id);


update cliente set id_complemento = 1 where id in(10, 5, 2);
update cliente set id_complemento = 2 where id in(8, 4, 14, 1);


select id, nome, bairro from cliente;

alter table cliente drop bairro;

alter table cliente add id_bairro integer;

alter table cliente add constraint fk_bairro_idbairro foreign key (id_bairro) references bairro (id);

update cliente set id_bairro = 1 where id in(1, 2);
update cliente set id_bairro = 2 where id in(10, 4, 14, 3, 6, 7, 9);
update cliente set id_bairro = 3 where id in(5);
update cliente set id_bairro = 4 where id in(8);

create table uf(
	id integer not null,
	nome varchar(30) not null,
	
	constraint pk_uf_id primary key (id),
	constraint un_uf_nome unique (nome)
);

insert into uf(id, nome) values(1, 'SC');
insert into uf(id, nome) values(2, 'PR');
insert into uf(id, nome) values(3, 'SP');
insert into uf(id, nome) values(4, 'MG');
insert into uf(id, nome) values(5, 'RS');
insert into uf(id, nome) values(6, 'RJ');

select * from uf;

create table municipio(
	id integer not null,
	nome varchar(30) not null,
	id_uf integer not null,
	
	constraint pk_municipio_id primary key (id),
	constraint un_municipio_nome unique (nome),
	constraint fk_uf_iduf foreign key (id_uf) references uf (id)
);

insert into municipio(id, nome, id_uf) values(1, 'Porto União', 1);
insert into municipio(id, nome, id_uf) values(2, 'Canoinhas', 1);
insert into municipio(id, nome, id_uf) values(3, 'Porto Vitória', 2);
insert into municipio(id, nome, id_uf) values(4, 'General Carneiro', 2);
insert into municipio(id, nome, id_uf) values(5, 'São Paulo', 3);
insert into municipio(id, nome, id_uf) values(6, 'Rio de Janeiro', 6);
insert into municipio(id, nome, id_uf) values(7, 'Uberlândia', 4);
insert into municipio(id, nome, id_uf) values(8, 'Porto Alegre', 5);
insert into municipio(id, nome, id_uf) values(9, 'União da Vitória', 2);

alter table cliente drop uf;

select * from cliente c ;

alter table cliente drop municipio;

alter table cliente add id_municipio integer;

alter table cliente add constraint fk_municipio_id foreign key (id_municipio) references municipio (id);

update cliente set id_municipio = 1 where id in (2, 11);
update cliente set id_municipio = 2 where id in (4);
update cliente set id_municipio = 3 where id in (5, 10);
update cliente set id_municipio = 4 where id in (1);
update cliente set id_municipio = 5 where id in (6, 7);
update cliente set id_municipio = 6 where id in (14, 9, 3);


create table fornecedor(
	id integer not null,
	nome varchar(50) not null,
	
	constraint pk_fornecedor_id primary key (id),
	constraint un_fornecedor_nome unique (nome)
);


insert into fornecedor(id, nome) values(1, 'Cap. Computadores');
insert into fornecedor(id, nome) values(2, 'AA Computadores');
insert into fornecedor(id, nome) values(3, 'BB Maquinas');

select * from fornecedor ;

create table vendedor(
	id integer not null,
	nome varchar(50) not null,
	
	constraint pk_vendedor_id primary key (id),
	constraint un_vendedor_nome unique (nome)
);

insert into vendedor(id, nome) values(1, 'André');
insert into vendedor(id, nome) values(2, 'Alisson');
insert into vendedor(id, nome) values(3, 'José');
insert into vendedor(id, nome) values(5, 'Ailton');
insert into vendedor(id, nome) values(6, 'Maria');
insert into vendedor(id, nome) values(7, 'Suelem');
insert into vendedor(id, nome) values(8, 'Aline');
insert into vendedor(id, nome) values(9, 'Silvana');

select * from vendedor v ;

create table transportadora(
	id integer not null,
	id_municipio integer,
	nome varchar(50) not null,
	logradouro varchar(50),
	numero varchar(10),
	
	constraint pk_transportadora_id primary key (id),
	constraint fk_transportadora_idmunicipio foreign key (id_municipio) references municipio (id),
	constraint un_transportadora_nome unique (nome)
);

insert into transportadora(id, id_municipio, nome, logradouro, numero)
	values(1, 9, 'BS. Transportadora', 'Rua das Limas', '01');

insert into transportadora(id, id_municipio, nome)
	values(2, 5, 'União Transportadores');

select * from transportadora t 

create table produto(
	id integer not null,
	id_fornecedor integer,
	nome varchar(50) not null,
	valor float not null,
	
	constraint pk_produto_id primary key (id),
	constraint fk_produto_idfornecedor foreign key (id_fornecedor) references fornecedor (id),
	constraint un_produto_nome unique (nome)	
);

insert into produto(id, id_fornecedor, nome, valor)
	values(1, 1, 'Microcomputador', 800);
insert into produto(id, id_fornecedor, nome, valor)
	values(2, 1, 'Monitor', 500);
insert into produto(id, id_fornecedor, nome, valor)
	values(3, 2, 'Placa Mãe', 200);
insert into produto(id, id_fornecedor, nome, valor)
	values(4, 2, 'HD', 150);
insert into produto(id, id_fornecedor, nome, valor)
	values(5, 2, 'Placa de Vídeo', 200);
insert into produto(id, id_fornecedor, nome, valor)
	values(6, 3, 'Memória RAM', 100);
insert into produto(id, id_fornecedor, nome, valor)
	values(7, 1, 'Gabinete', 35);

select * from produto p 

create table pedido(
	id integer not null,
	id_cliente integer not null,
	id_transportadora integer not null,
	id_vendedor integer not null,
	data_pedido date not null,
	valor float not null,
	
	constraint pk_pedido_id primary key (id),
	constraint fk_pedido_idcliente foreign key (id_cliente) references cliente (id),
	constraint fk_pedido_idtransp foreign key (id_transportadora) references transportadora(id),
	constraint fk_vendedor_idvendedor foreign key (id_vendedor) references vendedor(id)
);

select * from pedido;

insert into pedido(id, data_pedido, valor, id_cliente, id_transportadora, id_vendedor)
	values(1, '2024-04-01', 1300, 1, 1, 7);
insert into pedido(id, data_pedido, valor, id_cliente, id_transportadora, id_vendedor)
	values(2, '2024-05-23', 500, 2, 1, 2);
insert into pedido(id, data_pedido, valor, id_cliente, id_transportadora, id_vendedor)
	values(3, '2024-03-11', 2000, 3, 1, 5);
insert into pedido(id, data_pedido, valor, id_cliente, id_transportadora, id_vendedor)
	values(4, '2024-09-07', 175, 3, 1, 3);
insert into pedido(id, data_pedido, valor, id_cliente, id_transportadora, id_vendedor)
	values(5, '2024-03-22', 1000, 14, 1, 6);
insert into pedido(id, data_pedido, valor, id_cliente, id_transportadora, id_vendedor)
	values(6, '2024-04-10', 700, 5, 1, 3);
insert into pedido(id, data_pedido, valor, id_cliente, id_transportadora, id_vendedor)
	values(7, '2024-04-10', 70, 9, 1, 6);
insert into pedido(id, data_pedido, valor, id_cliente, id_transportadora, id_vendedor)
	values(8, '2024-01-01', 650, 9, 2, 7);
insert into pedido(id, data_pedido, valor, id_cliente, id_transportadora, id_vendedor)
	values(9, '2024-09-07', 1300, 9, 2, 8);
insert into pedido(id, data_pedido, valor, id_cliente, id_transportadora, id_vendedor)
	values(10, '2024-09-11', 439, 11, 2, 9);
insert into pedido(id, data_pedido, valor, id_cliente, id_transportadora, id_vendedor)
	values(11, '2024-08-02', 674, 11, 2, 2);
insert into pedido(id, data_pedido, valor, id_cliente, id_transportadora, id_vendedor)
	values(12, '2024-01-03', 1945, 6, 2, 2);
insert into pedido(id, data_pedido, valor, id_cliente, id_transportadora, id_vendedor)
	values(13, '2024-04-11', 199, 1, 2, 7);
insert into pedido(id, data_pedido, valor, id_cliente, id_transportadora, id_vendedor)
	values(14, '2024-04-22', 400, 1, 2, 1);
insert into pedido(id, data_pedido, valor, id_cliente, id_transportadora, id_vendedor)
	values(15, '2024-10-31', 100, 1, 2, 1);

select * from pedido p 


--relacionamento muitos para muitos, um pedido pode ter mais de um produto
create table pedido_produto(
	id_pedido integer not null,
	id_produto integer not null,
	quantidade integer not null,
	valor_unitario float not null,
	
	constraint pk_pedido_produto_id primary key (id_pedido, id_produto),
	constraint fk_pedido_id foreign key (id_pedido) references pedido (id),
	constraint fk_produto_id foreign key (id_produto) references produto (id)
);

insert into pedido_produto(id_pedido, id_produto, quantidade, valor_unitario)
	values(1, 1, 1, 800);
insert into pedido_produto(id_pedido, id_produto, quantidade, valor_unitario)
	values(1, 2, 1, 500);
insert into pedido_produto(id_pedido, id_produto, quantidade, valor_unitario)
	values(2, 2, 1, 500);
insert into pedido_produto(id_pedido, id_produto, quantidade, valor_unitario)
	values(3, 4, 2, 150);
insert into pedido_produto(id_pedido, id_produto, quantidade, valor_unitario)
	values(4, 1, 1, 800);
insert into pedido_produto(id_pedido, id_produto, quantidade, valor_unitario)
	values(4, 3, 1, 200);
insert into pedido_produto(id_pedido, id_produto, quantidade, valor_unitario)
	values(5, 3, 1, 200);
insert into pedido_produto(id_pedido, id_produto, quantidade, valor_unitario)
	values(6, 1, 2, 800);
insert into pedido_produto(id_pedido, id_produto, quantidade, valor_unitario)
	values(6, 7, 1, 35);
insert into pedido_produto(id_pedido, id_produto, quantidade, valor_unitario)
	values(6, 5, 1, 200);
insert into pedido_produto(id_pedido, id_produto, quantidade, valor_unitario)
	values(6, 4, 1, 150);
insert into pedido_produto(id_pedido, id_produto, quantidade, valor_unitario)
	values(7, 1, 1, 800);
insert into pedido_produto(id_pedido, id_produto, quantidade, valor_unitario)
	values(8, 7, 5, 35);
insert into pedido_produto(id_pedido, id_produto, quantidade, valor_unitario)
	values(9, 1, 1, 800);
insert into pedido_produto(id_pedido, id_produto, quantidade, valor_unitario)
	values(9, 2, 1, 500);
insert into pedido_produto(id_pedido, id_produto, quantidade, valor_unitario)
	values(10, 5, 1, 200);
insert into pedido_produto(id_pedido, id_produto, quantidade, valor_unitario)
	values(11, 5, 1, 200);
insert into pedido_produto(id_pedido, id_produto, quantidade, valor_unitario)
	values(11, 6, 1, 100);
insert into pedido_produto(id_pedido, id_produto, quantidade, valor_unitario)
	values(12, 2, 1, 500);
insert into pedido_produto(id_pedido, id_produto, quantidade, valor_unitario)
	values(13, 3, 1, 200);
insert into pedido_produto(id_pedido, id_produto, quantidade, valor_unitario)
	values(13, 4, 1, 150);
insert into pedido_produto(id_pedido, id_produto, quantidade, valor_unitario)
	values(14, 6, 3, 100);
insert into pedido_produto(id_pedido, id_produto, quantidade, valor_unitario)
	values(15, 3, 1, 200);

select * from pedido_produto pp ;

----------------------------------------------------------------------------------
--Exercicio - consultas simples

--1. Somente o nome de todos os vendedores em ordem alfabética.
select nome from vendedor v order by v.nome asc ;

--2. Os produtos que o preço seja maior que R$200,00, em ordem crescente pelo preço.
select * from produto p where p.valor > 200 order by p.valor ;

--3. O nome do produto, o preço e o preço reajustado em 10%, ordenado pelo nome do produto.
select nome, valor, valor * 1.10 as valor_reajustado from produto p ;

--4. Os municípios do Rio Grande do Sul.
select * from municipio m where id_uf = 5;

--5. Os pedidos feitos entre 10/04/2008 e 25/04/2008 ordenado pelo valor.
select * from pedido p where p.data_pedido between '2024-04-10' and '2024-04-25';

--6. Os pedidos que o valor esteja entre R$1.000,00 e R$1.500,00.
select * from pedido p ;
select * from pedido p where p.valor between 1000 and 1500;

--7. Os pedidos que o valor não esteja entre R$100,00 e R$500,00.
select * from pedido p where p.valor not between 100 and 500;

--8. Os pedidos do vendedor André ordenado pelo valor em ordem decrescente.
select * from vendedor v ;
select * from pedido p where p.id_vendedor = 1 order by p.valor asc;

--9. Os pedidos do cliente Manoel ordenado pelo valor em ordem crescente.
select * from pedido p where p.id_cliente = 1 order by p.valor asc;

--10. Os pedidos da cliente Jéssica que foram feitos pelo vendedor André.
select * from pedido p where p.id_cliente = 4 and p.id_vendedor = 1;

--11. Os pedidos que foram transportados pela transportadora União Transportes.
select * from transportadora t ;
select * from pedido p where id_transportadora = 2;

--12. Os pedidos feitos pela vendedora Maria ou pela vendedora Aline.
select * from pedido p where p.id_vendedor in(3,6);

--15. Os clientes que não informaram o logradouro.
select * from cliente c where c.logradouro is null;
