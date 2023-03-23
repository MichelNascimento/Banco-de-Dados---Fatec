create table tb_clientes(
	cd_cliente int primary key,
	nm_cliente varchar(20),
	cd_sexo char(1),
);

insert into tb_clientes(cd_cliente,nm_cliente,cd_sexo) 
values(1,'Jose','M'),(2,'Maria','F'),(3,'Manuel','M'),(4,'Marcia','F');

create table tb_produtos(
	cd_produto int primary key,
	nm_produto varchar(20),
	vl_produto money
);

insert into tb_produtos(cd_produto,nm_produto,vl_produto)
values(1,'produto1',10.00),(2,'produto2',14.00),(3,'produto3',16.00),(4,'produto4',22.00);

create table tb_vendas(
	cd_vendas int,
	dt_venda date,
	cd_cliente int foreign key,
	cd_produto int foreign key,
	qt_venda int,
	vl_venda money,
);

insert into tb_vendas
values(1,10/2/2015,1,1,1,10.00),
(2,10/2/2015,4,1,10,100.00),
(3,11/3/2015,4,2,1,14.00),
(4,02/4/2015,2,1,100,1000.00),
(5,03/4/2015,2,1,2,20.00),
(6,12/5/2015,3,3,2,32.00),
(7,22/5/2015,2,1,9,900.00);


select * from tb_vendas
select * from tb_produtos
select * from tb_clientes

drop table tb_produtos

truncate table tb_clientes;

drop table tb_clientes


