create database loja;

use loja;

create table cliente(
codigo_cliente integer primary key,
nome varchar(40),
cpf integer,
email varchar(30),
telefone integer
);

insert into cliente(codigo_cliente, nome, cpf, email, telefone) value(030,'Erica Regina', 462714010, 'ERegina@gmail.com', 910265882);

select*from cliente;

delete from cliente where codigo_cliente=15;

-- números deletados / 2,3,4,8,15--

drop table cliente;

describe cliente;

create table produtos(
codigo_produto integer primary key,
descricao varchar(40),
valor float,
quantidade integer
);

insert into produtos(codigo_produto, descricao, valor, quantidade) value(101,'café', 15.00, 25), (102,'açúcar', 10.00, 50) ,
 (103,'sal', 5.00, 40), (104,'leite', 4.80, 60) , (105,'café', 15.00, 25), (106,'óleo', 5.65, 30), (107,'pão', 1.20, 80),
 (108,'farinha de trigo', 6.00, 35), (109,'leite condensado', 8.25, 15) , (110,'creme de leite', 15.00, 25), (111,'suco integral', 11.00, 20), (112,'laranja', 2.00, 65),
 (113,'maçã', 1.50, 50), (114,'banana', 4.00, 30) , (115,'uva', 8.00, 20), (116,'kiwi', 5.00, 23), (117,'requeijão', 7.00, 42),
 (118,'maionese', 10.00, 55), (119,'manteiga', 6.00, 40) , (120,'sorvete', 25.00, 32), (121,'papel toalha', 10.00, 20), (122,'papel filtro', 7.00, 40),
 (123,'cenoura', 3.00, 80), (124,'ovos', 20.00, 15) , (125,'refrigerante', 9.00, 70), (126,'chocolate', 6.00, 48), (127,'orégano', 2.50, 40),
 (128,'bolacha', 8.00, 18), (129,'melancia', 25.00, 15) , (130,'abacaxi', 6.30, 40);
 
 select*from produtos;
 
 delete from produtos where codigo_produto=108;
 delete from produtos where codigo_produto=107;
 delete from produtos where codigo_produto=105;
 
 alter table cliente change telefone celular varchar(40) ;
 
 describe cliente;
 
 alter table produtos modify column quantidade integer not null;
 
select*from cliente where nome = 'Ana Julia' and codigo_cliente = '9';
select*from pagamentos where cod_boleto  between  3 and  8;


select avg(quantidade) as media from produtos;
select min(valor) as valor_minimo from produtos;
select max(valor) as valor_maximo from produtos;
select sum(valor) as soma from produtos;

SELECT COUNT(quantidade) as contagem FROM produtos;
 
 
 



