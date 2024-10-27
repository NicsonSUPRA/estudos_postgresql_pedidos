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

--16. Os clientes que moram em avenidas.
select * from bairro b ;
select * from cliente c where id_bairro = 2;

--17. Os vendedores que o nome começa com a letra S.
select * from vendedor v where upper(v.nome) like 'A%';
select * from vendedor v ;

--18. Os vendedores que o nome termina com a letra A.
select * from vendedor v where upper(v.nome) like '%A'; 

--19. Os vendedores que o nome não começa com a letra A.
select * from vendedor v where upper(v.nome) not like '%A';

--20. Os municípios que começam com a letra P e são de Santa Catarina.
select * from uf u ;
select * from municipio m where m.nome like 'P%' and m.id_uf != 1;

--21. As transportadoras que informaram o endereço.
select * from transportadora t where t.logradouro is not null;

--22. Os itens do pedido 01.
select * from pedido_produto pp where id_pedido = 1;

--23. Os itens do pedido 6 ou do pedido 10
select id_produto from pedido_produto pp where id_pedido in(6, 10); 

----------------------------------------------------------------------
--FUNÇÕES AGREGADAS

--estração da media dos pedidos
select avg(valor) from pedido p; 

--retorna a quantidade de itens contanto que o campo seja NOT NULL
select count(id) from municipio m; 

--caso use * no lugar do id ele conta mesmo se o campo estiver nulo

--selecionar o valor maximo e minimo dos pedidos
select max(valor), min(valor) from pedido p; 

--somatorio de todos os pedidos
select sum(valor) from pedido p 

--agrupar clientes pela soma de seus pedidos
select id_cliente , sum(valor) from pedido p group by id_cliente ;

--pra trabalhar com condições junto com funções agregadas se utiliza o having
select id_cliente , sum(valor) from pedido p group by id_cliente having sum(valor) > 1000 ;

-------------------------------------------------------------------------------------------
--EXERCICIO - FUNÇÕES AGREGADAS
--1. A média dos valores de vendas dos vendedores que venderam mais que R$ 200,00.
select id_vendedor, avg(valor)  as media_vendedor from pedido p group by p.id_vendedor having avg(valor) > 200;

--2. Os vendedores que venderam mais que R$ 1500,00.
select id_vendedor from pedido p group by id_vendedor having sum(valor) > 500; 

--3. O somatório das vendas de cada vendedor.
select id_vendedor, sum(valor) from pedido p group by id_vendedor; 

--4. A quantidade de municípios.
select count(id) as municipios from municipio m ;

--5. A quantidade de municípios que são do Paraná ou de Santa Catarina.
select * from uf u ;
select count(id) from municipio m where m.id_uf not in(1, 2);

--6. A quantidade de municípios por estado.
select count(id) from municipio m group by m.id_uf ;

--7. A quantidade de clientes que informaram o logradouro.
select count(id) from cliente c ;
select count(id) from cliente c where c.logradouro is not null;

--8. A quantidade de clientes por município.
select count(id) from cliente c group by id_municipio ;

--9. A quantidade de fornecedores.
select count(id) from fornecedor f ;

--10. A quantidade de produtos por fornecedor.
select id_fornecedor , count(id) from produto p group by p.id_fornecedor order by count(id) asc; 

--11. A média de preços dos produtos do fornecedor Cap. Computadores.
select * from fornecedor f;
select id_fornecedor, avg(valor) from produto p group by p. id_fornecedor having p.id_fornecedor = 1;

--12. O somatório dos preços de todos os produtos.
select sum(valor) from produto p ;

--13. O nome do produto e o preço somente do produto mais caro.
select nome, valor from produto p order by valor desc limit 1; 

-------------------------------------------------------------------------------------------------
--RELACIONAMENTO COM JOINS

--relacionamento entre as tabelas

--left outer joinfaz o relacionamento com base na tabela da esquerda(cliente)
select 
	c.nome as cliente, p.nome as profissao 
from 
	cliente c 
left outer join
	profissao p on c.id_profissao = p.id;

--utilizando o inner join, o relacionamento entre as duas tabelas são obrigatorias
select 
	c.nome as cliente, p.nome as profissao 
from 
	cliente c 
inner join
	profissao p on c.id_profissao = p.id;

--right outer join é a mesma coisa do left outer join, mas utilizando como tabela base a da direita

select 
	c.nome as cliente, p.nome as profissao 
from 
	cliente c 
right outer join
	profissao p on c.id_profissao = p.id;

--EXERCICIO COM JOIN

--1. O nome do cliente, a profissão, a nacionalidade, o logradouro, o número, o complemento, o bairro, o município e a unidade de federação.
select 
	c.nome as cliente, p.nome as profissao, b.nome as bairro, c.logradouro as logradouro, c.numero as numero, comp.nome as complemento
from 
	cliente c 
left outer join
	profissao p on c.id_profissao = p.id
left outer join 
	nacionalidade n on c.id_nacionalidade = n.id 
left outer join 
	complemento comp on c.id_complemento = comp.id
left outer join 
	bairro b on c.id_bairro = b.id;

--2. O nome do produto, o valor e o nome do fornecedor.
select 
	p.nome as produto, p.valor as valor, f.nome as fornecedor
from 
	produto p 
left outer join 
	fornecedor f on p.id_fornecedor = f.id;

--3. O nome da transportadora e o município.
select 
	t.nome as transportadora, m.nome as municipio
from 
	transportadora t
left outer join 
	municipio m on t.id_municipio = m.id ;

--4. A data do pedido, o valor, o nome do cliente, o nome da transportadora e o nome do vendedor.
select 
	p.data_pedido as data_pedido, p.valor as valor, c.nome as cliente, t.nome as transportadora, v.nome as vendedor
from
	pedido p
left outer join
	cliente c on p.id_cliente = c.id 
left outer join
	transportadora t on p.id_transportadora = t.id 
left outer join 
	vendedor v on p.id_vendedor = v.id ;
	
--5. O nome do produto, a quantidade e o valor unitário dos produtos do pedido.
select 
	p.nome, pp.quantidade, pp.valor_unitario
from 
	pedido_produto pp
left outer join
	produto p on pp.id_pedido = p.id ;

--6. O nome dos clientes e a data do pedido dos clientes que fizeram algum pedido (ordenado pelo nome do cliente).
select * from pedido;
select 
	c.nome, p.data_pedido
from 
	pedido p
left outer join
	cliente c on p.id_cliente = c.id;

--7. O nome dos clientes e a data do pedido de todos os clientes, independente se tenham feito pedido (ordenado pelo nome do cliente).
select 
	c.nome, p.data_pedido
from 
	pedido p
full join
	cliente c on p.id_cliente = c.id
order by c.nome asc;

--8. O nome da cidade e a quantidade de clientes que moram naquela cidade.
select * from municipio;
select * from cliente;
select 
	m.nome, count(c.id)
from 
	cliente c
inner join
	 municipio m on m.id = c.id_municipio
group by m.nome;

--9. O nome do fornecedor e a quantidade de produtos de cada fornecedor com mais de 2 produtos.
select 
	f.nome, count(p.id)
from 
	fornecedor f
inner join
	 produto p on p.id_fornecedor = f.id
group by 
	f.nome
having
	count(p.id) > 2;

--10.O nome do cliente e o somatório do valor do pedido (agrupado por cliente).
select * from pedido p;
select 
	c.nome, sum(p.valor) as valor_total
from 
	cliente c
inner join
	 pedido p on p.id_cliente = c.id
group by 
	c.nome
;

--11.O nome do vendedor e o somatório do valor do pedido (agrupado por vendedor).
select * from pedido p;
select 
	v.nome, sum(p.valor) as valor_total
from 
	vendedor v
inner join
	 pedido p on p.id_vendedor = v.id
group by 
	v.nome
;

--12.O nome da transportadora e o somatório do valor do pedido (agrupado por transportadora).
select 
	t.nome, sum(p.valor) as valor_total
from 
	transportadora t
inner join
	 pedido p on p.id_transportadora = t.id
group by 
	t.nome
;

--13.O nome do cliente e a quantidade de pedidos de cada um (agrupado por cliente).
select 
	c.nome, count(p.id)
from 
	cliente c
inner join
	 pedido p on p.id_cliente = c.id
group by 
	c.nome
;

--14.O nome do produto e a quantidade vendida (agrupado por produto).
select * from pedido_produto;
select 
	p.nome, sum(pp.quantidade) as quantidade_vendida
from 
	produto p
inner join
	 pedido_produto pp on pp.id_produto = p.id
group by 
	p.nome
;

--15.A data do pedido e o somatório do valor dos produtos do pedido (agrupado pela data do pedido).
select * from pedido;
select * from pedido_produto;
select 
	p.data_pedido, sum(pp.valor_unitario)
from
	pedido p
left outer join
	pedido_produto pp on pp.id_pedido = p.id
group by
	p.data_pedido;

--16.A data do pedido e a quantidade de produtos do pedido (agrupado pela data do pedido).
select * from pedido;
select * from pedido_produto;
select 
	p.data_pedido, count(pp.quantidade)
from
	pedido p
left outer join
	pedido_produto pp on pp.id_pedido = p.id
group by
	p.data_pedido;

-------------------------------------------------------------------------------------------------------
--Comandos adicionais uteis

--Extraindo partes expecificas do campo data
select 
	data_pedido, 
	extract(day from data_pedido) as dia,
	extract(month from data_pedido) as mes,
	extract(year from data_pedido) as ano
from 
	pedido;
--comando util para fazer filtragens

--retornando nome em Strings menores
select nome, SUBSTRING(nome from 1 for 5) from cliente;

--string substituta caso o campo seja null
select nome, cpf, COALESCE(cpf, 'Não Informado') from cliente;

--utilisando o case em sql
select * from uf;
select 
	case nome
		when 'SP' then 'São Paulo'
		when 'SC' then 'Santa Catarina'
		when 'PR' then 'Paraná'
		when 'MG' then 'Minas Gerais'
		when 'RS' then 'Rio Grande do Sul'
		when 'RJ' then 'Rio de Janeiro'
	else 'outro'
	end
from uf;


-------------------------------------------------------------------------------
--EXERCICIOS
--1. O nome do cliente e somente o mês de nascimento. Caso a data de nascimento não esteja preenchida mostrar a mensagem “Não informado”.
select * from cliente;

select nome, COALESCE(EXTRACT(month from data_nascimento), 0) from cliente;

--2. O nome do cliente e somente o nome do mês de nascimento (Janeiro, Fevereiro etc). Caso a data de nascimento não esteja preenchida mostrar a mensagem “Não informado”. 

select
	nome,
	case EXTRACT(month from data_nascimento)
		when 1 then 'Janeiro'
		when 2 then 'Fevereiro'
		when 3 then 'Março'
		when 4 then 'Abril'
		when 5 then 'Maio'
		when 6 then 'Junho'
		when 7 then 'Julho'
		when 8 then 'Agosto'
		when 9 then 'Setembro'
		when 10 then 'Outubro'
		when 11 then 'Novembro'
		when 12 then 'Dezembro'
	else 'sem data'
	end
from cliente;

--3. O nome do cliente e somente o ano de nascimento. Caso a data de nascimento não esteja preenchida mostrar a mensagem “Não informado”.
select 
	nome, 
	COALESCE(EXTRACT(year from data_nascimento)::text, 'não informado')
from cliente;

--4. O caractere 5 até o caractere 10 de todos os municípios.
select SUBSTRING(nome from 5 for 10) from municipio;

--5. O nome de todos os municípios em letras maiúsculas.
select upper(nome) from municipio;

--6. O nome do cliente e o gênero. Caso seja M mostrar “Masculino”, senão mostrar “Feminino”.
select 
	nome,
	case genero
		when 'M' then 'Masculino'
		when 'F' then 'Feminino'
	else
		'Não Informado'
	end
from cliente;

--7. O nome do produto e o valor. Caso o valor seja maior do que R$ 500,00 mostrar a mensagem “Acima de 500”, caso contrário, mostrar a mensagem “Abaixo de 500”.
select * from produto;
select 
	nome,
	case
		when valor > 500 then 'Acima de 500'
		when valor < 500 then 'Menos que 500'
		else
			'Igual a 500'
		end
	as valor_500
from produto;

------------------------------------------------------------------------------------------------
--subconsultas

--utilizando consultas como parametros de outras consultas
--Exemplo
--selecione a data do pedido e o valor dos produtos que o valor seja maior que a media geral
select * from pedido;
select 
	data_pedido,
	valor
from 
	pedido
where
	valor > (select avg(valor) from pedido);

--retornar a quantidade de produtos do pedido
--em resumo ele esta pegando a quantidade de pedidos de cada produto onde o id_pedido = pedido.id
select * from pedido_produto;
select 
	data_pedido,
	valor,
	(select sum(quantidade) from pedido_produto pp where pp.id_pedido = p.id) as total_pedidos
from 
	pedido p;

--utilizando subconsultas com o comando update
select * from pedido;
update pedido set valor = valor * 1.05 
	where valor > (select avg(valor) from pedido);
--EXERCICIO

--1. O nome dos clientes que moram na mesma cidade do Tadeo. Não deve ser mostrado o Tadeo.
select * from cliente;
select 
	nome
from 
	cliente c
where c.id_municipio = (select id_municipio from cliente c where c.id = 2 ) and
	id != 2;

--2. A data e o valor dos pedidos que o valor do pedido seja menor que a média de todos os pedidos.
select * from pedido;
select 
	data_pedido,
	valor
from 
	pedido
where
	valor < (select avg(valor) from pedido);
--3. A data,o valor, o cliente e o vendedor dos pedidos que possuem 2 ou mais produtos.
select * from 
select 
	p.data_pedido,
	p.valor,
	c.nome,
	v.nome
from
	pedido p
left outer join
	cliente c on c.id = p.id_cliente
left outer join
	vendedor v on v.id = p.id_vendedor
where
	(select sum(quantidade) from pedido_produto pp where p.id = pp.id_pedido) < 2;

--4. O nome dos clientes que moram na mesma cidade da transportadora BSTransportes.
select * from transportadora;
select
	c.id,
	c.nome
from 
	cliente c
where
	c.id_municipio = (select t.id_municipio from transportadora t where t.id = 1);

--5. O nome do cliente e o município dos clientes que estão localizados no mesmo município de qualquer uma das transportadoras.
select * from transportadora;
select * from municipio;
select * from cliente;
select
	c.nome,
	m.nome
from 
	cliente c
left outer join
	municipio m on c.id_municipio = m.id
where
	c.id_municipio in (select t.id_municipio from transportadora t);

--6. Atualizar o valor do pedido em 5% para os pedidos que o somatório do valor total dos produtos daquele pedido seja maior que a média do valor total
select * from pedido;
select * from pedido_produto;
update 
	pedido p
set
	valor = valor * 1.05
where
	valor > (select avg(pp.valor_unitario) from pedido_produto pp where p.id = pp.id_pedido);

--Views

-- criar uma view
create view cliente_profissao as
select
	c.nome as cliente,
	c.cpf as cpf,
	p.nome as profissao
from
	cliente c
left outer join
	profissao p on c.id_profissao = p.id;

--caso queira DELETAR VIEW rodar comando;
drop view cliente_profissao;

select * from cliente_profissao where profissao = 'Professor';

--EXERCICIOS
--1. O nome, a profissão, a nacionalidade, o complemento, o município, a unidade de federação, o bairro, 
--o CPF,o RG, a data de nascimento, o gênero (mostrar “Masculino” ou “Feminino”), o logradouro, o número e as observações dos clientes.
select * from complemento;
create view cliente_view as
select 
	c.nome as nome,
	p.nome as profissao,
	n.nome as nacionalidade,
	cmp.nome as complemento,
	m.nome as municipio,
	u.nome as unid_federal,
	b.nome as bairro,
	c.cpf as cpf,
	c.rg as rg,
	c.data_nascimento as nascimento_cliente,
	case c.genero
		when 'M' then 'Masculino'
		when 'F' then 'Feminino'
	else
		'não informado'
	end
from
	cliente c
left outer join
	profissao p on p.id = c.id_profissao
left outer join
	nacionalidade n on n.id = c.id_nacionalidade
left outer join
	complemento cmp on cmp.id = c.id_complemento
left outer join
	municipio m on m.id = c.id_municipio
left outer join 
	uf u on u.id = m.id_uf
left outer join
	bairro b on b.id = c.id_bairro;

select * from cliente_view;
	
--2. O nome do município e o nome e a sigla da unidade da federação.
select
	m.nome,
	u.nome
from 
	municipio m
left outer join
	uf u on u.id = m.id_uf;

--3. O nome do produto, o valor e o nome do fornecedor dos produtos.
select * from produto;
select 
	p.nome,
	p.valor,
	f.nome
from 
	produto p
left outer join
	fornecedor f on f.id = p.id_fornecedor;

--4. O nome da transportadora, o logradouro, o número, o nome da unidade de federação e a sigla da unidade de federação das transportadoras.
select 
	t.nome,
	t.logradouro,
	t.numero,
	u.nome
from 
	transportadora t
left outer join
	uf u on u.id = (select id_uf from municipio m where m.id = t.id_municipio);

--5. A data do pedido, o valor, o nome da transportadora, o nome do cliente e o nome do vendedor dos pedidos.
select * from pedido;
select 
	p.valor,
	t.nome,
	c.nome,
	v.nome
from
	pedido p
left outer join
	transportadora t on t.id = p.id_transportadora
left outer join
	cliente c on c.id = p.id_cliente
left outer join
	vendedor v on v.id = p.id_vendedor;


--------------------------------------------------------------------------------
--Campos autoimcremento

--criando o seq em uma tabela(chaves primarias sequenciais)

create table exemplo (
	id serial not null,
	nome varchar(50) not null,

	constraint pk_exemplo_id primary key (id)
);

insert into exemplo(nome)
	values('exemplo 1');
insert into exemplo(nome)
	values('exemplo 2');
insert into exemplo(nome)
	values('exemplo 3');
insert into exemplo(nome)
	values('exemplo 4');
insert into exemplo(nome)
	values('exemplo 5');
select * from exemplo;

--implementando seq em tabela ja existente

select max(id) + 1 from bairro;
--em uma tabela já existente, é preciso colocar o menor valor como
-- o maior valor do id + 1.
create sequence bairro_id_seq MINVALUE 5;

--agora será preciso associar a sequencia com a tabela 
alter table bairro alter id set default nextval('bairro_id_seq')

--agora será preciso associar o seq com a tabela
alter sequence bairro_id_seq OWNED by bairro.id;

--testando
insert into bairro(nome) values('Madureira');
insert into bairro(nome) values('Duque de Caxias');

select * from bairro;

--Exercicio

--1. Criar sequências para todas as outras tabelas da base de dados

--a. Cliente
select max(id) from cliente;

create sequence cliente_id_seq minvalue 15;

alter table cliente alter id set default nextval('cliente_id_seq');

alter sequence cliente_id_seq owned by bairro.id;

insert into cliente(nome, cpf, rg, genero)
	values('Cliente Exemplo', '76543219876', '54321', 'M');


--b. Complemento

select max(id) from complemento;

create sequence complemento_id_seq minvalue 3;

alter table complemento alter id set default nextval('complemento_id_seq');

alter sequence complemento_id_seq owned by complemento.id;

select * from complemento;

insert into complemento(nome)
	values('Lote');

--c. Fornecedor

create sequence fornecedor_id_seq minvalue 4;

alter table fornecedor alter id set default nextval('fornecedor_id_seq');

alter sequence fornecedor_id_seq  owned by fornecedor.id;

--d. Município

select max(id) from municipio;

create sequence municipio_id_seq MINVALUE 10;

alter table municipio alter id set default nextval('municipio_id_seq');

alter sequence municipio_id_seq owned by municipio.id;

insert into municipio(nome, id_uf)
	values('São Gonçalo', 6);
select * from municipio;

--e. Nacionalidade

select max(id) from nacionalidade;

create sequence nacionalidade_id_seq minvalue 5;

alter table nacionalidade alter id set default nextval('nacionalidade_id_seq');

alter sequence nacionalidade_id_seq owned by nacionalidade.id;

--f. Pedido

select max(id) from pedido;

create sequence pedido_id_seq minvalue 16 ;

alter table pedido alter id set default nextval('pedido_id_seq');

alter sequence pedido_id_seq owned by pedido.id;

--em tabelas compostas como no caso da tabela pedido_produto, não é necessario implementar
--pois as duas chaves são chaves primarias nsão chaves extrangeiras.

--Campos default

--caso o campo data_pedido não seja informado, coloque a data atual
alter table pedido alter column data_pedido set default current_date;

--caso o campo valor não seja informado, coloque o valor como 0
alter table pedido alter column valor set default 0;

select * from pedido;

insert into pedido(id_cliente, id_vendedor, id_transportadora)
	values(1, 1, 1);

--Exercicio
--1. Adicione valores default na tabela de produtos do pedido

--a. Quantidade com o valor 1
alter table pedido_produto alter column quantidade set default 1; 
--b. Valor unitário com o valor 0
alter table pedido_produto alter column valor_unitario set default 0;

----------------------------------------------------------------------------------

--index

--utilizado para acelerar as pesquisas na base de dados

--criar os index para colunas que são feitos muitos selects

--criando index
create index idx_cliente_nome on cliente (nome);

--uma dica é fazer o index para data, principalmente para as que constantemente
--são feitas consultas utilizando between;

--Exercicios

--1. Adicione índices nas seguintes tabelas e campos

--a. Pedido – data do pedido
create index idx_pedido_data on pedido (data_pedido);

--b. Produto – nome
create index idx_produto_nome on produto (nome);
