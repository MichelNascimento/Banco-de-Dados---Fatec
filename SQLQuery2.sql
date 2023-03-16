drop table tb_socios /*apaga a tabela*/

create table tb_socios (cd_socio int primary key, nm_socio char(40))

drop table dependentes

create table dependentes (cd_socio int, cd_dependente int, nm_dependente char(40), foreign key (cd_socio) references tb_socios(cd_socio), primary key(cd_socio, cd_dependente))

insert into tb_socios values (1,'socio numero 1')
insert into tb_socios values (2,'socio numero 2')
insert into tb_socios values (3,'socio numero 3')
insert into tb_socios values (4,'socio numero 4')

select count(*)from tb_socios
select * from tb_socios

insert into dependentes values (1,1,'dependente 1 do socio 1')
insert into dependentes values (1,2,'dependente 1 do socio 2')
insert into dependentes values (2,1,'dependente 2 do socio 1')
insert into dependentes values (3,1,'dependente 3 do socio 1')

select count(*)from dependentes
select * from dependentes

/*Forma incorreta de listar*/
select nm_socio, nm_dependente from tb_socios, dependentes

/*Forma correta*/
select nm_socio, nm_dependente from tb_socios, dependentes where tb_socios.cd_socio = dependentes.cd_socio

