-- ////////////////////////////////////////////////
-- Chave primaria
alter table tabela add primary key (campo);
-- elemento unico
alter table tabela add unique (campo);
-- Chave estrangeira
alter table tabela_1 add constraint campo_1 foreign key (campo) references tabela (campo);
-- Describe
DESCRIBE pessoa;
-- SHOW
SHOW tables;
-- //////////////////////////////////////////////////

-- /////////////////////////////////////////////////
-- DDL
--=============================================
-- Create
create table nome_tabela;
-- criar banco de dados
create database nome;
-- criar tabela 
create table pessoa(
    id_pessoa int not null,
    nome varchar(200) not null,
    sobrenome varchar(200) not null,
    data_nascimento date null
);
--==============================================
-- Alter
alter table nome_tabela;
-- Adicionar uma nova coluna
alter table nome_da_tabela add nome_do_campo  tipo_do_campo;
-- Modificar uma coluna
alter table nome_da_tabela modify nome_do_campo novo_tipo;
-- add nao nulo
alter table tabela alter COLUMN campo set not null;
-- retirar não nulo
alter table tabela alter column campo drop not null;
-- deletando uma coluna
alter table nome_da_tabela drop nome_do_campo;
-- ///////////////////////////////////////////////////////////

-- //////////////////////////////////////////////////////////
-- auto_increment/ identity (100,2) /
create table tabela (
Id int primary key auto_increment
)auto_increment = 5;
--/////////////////////////////////////////////////////////////

-- ///////////////////////////////////////////////////////////
-- DML
--============================================
-- insert
insert into nome_tabela;
-- inserir dados na tabela
insert into tabela (coluna1,coluna2,colunaN)
values(valor1, valor2, valorN);
-- inserir varios dados
insert into tabela (coluna1,coluna2,colunaN)
values(valor1, valor2, valorN),
(valres1,valores2,valoreN);
--============================================
-- update
update nome_tabela set;
-- alterar dados ja existentes
update nome_da_tabela set coluna = 'novo_valor';
-- alterar varias colunas
update nome_da_tabela set coluna = 'novo_valor',coluna2 ='valor2';
-- where
update nome_da_tabela set coluna = 'novo_valor' where coluna = 'valor';
-- varias colunas 1 where
update nome_da_tabela set coluna = 'novo_valor',coluna2 = 'novo_valor' where coluna = 'valor';
--============================================
--delete
delete from nome_tabela;
-- deletar linha com where
delete from nome_da_tabela where coluna ='valor';
-- ////////////////////////////////////////////////////////////

-- ///////////////////////////////////////////////////////////
-- DQL
--================================================
-- Select
-- (*) = todas as linhas
 <selecione> <a partir de> nome_da_tabela <onde> campo = 'valor';
 select *from nome_da_tabela where campo = 'valor';
 -- selecionando campos
 Select campo1, campo2 from nome_da_tabela;
 -- operadores (</>/<=/>=/<>/=/!=)
 select *from tabela where campo < 30;
 -- tabela verdade (end/ or/ ||)
 select *from tabela where campo >10 and campo <20;
select *from tabela where campo >10 or campo <20;
-- funções agregadas (media=avg)/(minimo=min)/(maximo=max)/(total=sum)/
-- (contagem= count)
SELECT CONDICAO FROM NOME_DA_TABELA;
select avg(campo) from tabela;
select min(campo) from tabela;
select max(campo) from tabela;
select sum(campo) from tabela;
select count(*) from tabela;
-- com where
select sum(campo) tabela where campo2 >20;
select max(campo) from tabela where campo2 <20;
select max(campo) from tabela where campo2 between 10 and 20;
-- Agrupando
SELECT *from tabela group by campo;
select campo,sum (campo2) from tabela group by campo;
-- DISTINCT
select distinct campo from tabela;
-- ordenacao (ASC = crescente)/ (DESC = decrescente)
SELECT *FROM TABELA ORDER BY CAMPO CONDICAO;
select *from tabela order by campo asc;
select *from tabela order by campo desc;
-- outros
select *from tabela where campo>25 order by campo asc;
select *from tabela group by campo order by campo asc;
-- renomear ou apelido
select campo as novo_nome from nome_da_tabela;
select sum(campo) as novo_nome from tabela;
select campo as novo_nome,campo2 from tabela where campo3 ='1';
-- PD
SELECT PD.CAMPO FROM NOME_TABELA AS PD;
select pd.* from tabela as pd;
-- consulta usando mais de uma tabela
SELECT TABELA1.COLUNA1, TABELA1.COLUNA2, TABELA2.COLUNA1, TABELA2.COLUNA2 FROM 
TABELA1, TABELA2 WHERE TABELA1.CHAVE_PRIMARIA = TABELA2.CHAVE_ESTRANGEIRA;

select pessoa.nome, pessoa.rg, pedido.valor, pedido.qtde from
pessoa, pedido where pessoa.id_pessoa = pedido.id_pessoa;
-- com condicao
SELECT TABELA1.COLUNA1, TABELA1.COLUNA2, SUM(TABELA2.COLUNA1), SUM(TABELA2.COLUNA2) FROM 
TABELA1, TABELA2 WHERE TABELA1.CHAVE_PRIMARIA = TABELA2.CHAVE_ESTRANGEIRA GROUP BY TABELA1 CHAVE_PRIMARIA;

select pessoa.nome, pessoa.rg, sum(pedido.valor), sum(pedido.qtde) from
pessoa, pedido where pessoa.id_pessoa = pedido.id_pessoa group by pessoa.id_pessoa;
-- com apelido
select c.nome, sum(v.valor_total) from cliente as c, vendas as v where
c.id_cliente = v.id_cliente;
-- apelido + condicao
select c.nome as Nome, sum(v.valor_total) from clientes as c, vendas as v where
c.id = v.id_cliente and c.id = '1' and v.valor_total > '5';
-- IN
select *from tabela where campo in(select campo from tabela2);
select *from pedido where Id_pessoa in (select id_pessoa from pessoa);
-- delete
delete from nome_tabela;
delete from nome_tabela where coluna = 'valor';
-- truncate
truncate nome_tabela;
-- drop 
drop table nome_ tabela
drop database nome;
--BEGIN(começo)
-- END(fim)
-- COMMIT (torna permanente)
-- ROLLBACK (reverte)
-- //////////////////////////////////////////////////////////