--CRIAÇÃO DE TABELA TB_DIR_PRES
create table tb_dir_pres(
cd_dir_pres int, nm_dir_pres char(40)
primary key (cd_dir_pres)
)

--CRIAÇÃO DA TABELA TB_DIRETORES
create table tb_diretores(
cd_dir_pres int, cd_diretor int, nm_diretor char(40)
primary key (cd_dir_pres, cd_diretor),
foreign key (cd_dir_pres) references tb_dir_pres(cd_dir_pres)
)

--CRIAÇÃO DA TABELA TB_GERENTES
create table tb_gerentes(
cd_dir_pres int, cd_diretor int, cd_gerente int, nm_gerente char(40),
primary key (cd_dir_pres, cd_diretor, cd_gerente),
foreign key (cd_dir_pres, cd_diretor) references tb_diretores (cd_dir_pres, cd_diretor)
)

--CRIAÇÃO DA TABELA TB_FUNCIONARIOS
create table tb_funcionarios(
cd_dir_pres int, cd_diretor int, cd_gerente int, cd_funcionario int, nm_funcionario char(40),
primary key (cd_dir_pres, cd_diretor, cd_gerente, cd_funcionario),
foreign key (cd_dir_pres, cd_diretor, cd_gerente) references tb_gerentes(cd_dir_pres, cd_diretor, cd_gerente)
)

--INCLUSÃO EM TB_DIR_PRES
insert into tb_dir_pres values
(1, 'nome do diretor presidente')

--INCLUSÃO EM TB_DERETORES
insert into tb_diretores values
(1, 1, 'diretor 1'), 
(1, 2, 'diretor 2'),
(1, 3, 'diretor 3'),
(1, 4, 'diretor 4'),
(1, 5, 'diretor 5')

--INCLUSÃO EM TB_GERENTES
insert into tb_gerentes values
(1, 1, 1, 'gerente 1 do diretor 1'),
(1, 1, 2, 'gerente 2 do diretor 1'),
(1, 1, 3, 'gerente 3 do diretor 1'),
(1, 2, 1, 'gerente 1 do diretor 2'),
(1, 2, 2, 'gerente 2 do diretor 2'),
(1, 3, 1, 'gerente 1 do diretor 3'),
(1, 3, 2, 'gerente 2 do diretor 3'),
(1, 3, 3, 'gerente 3 do diretor 3'), 
(1, 4, 1, 'gerente 1 do direto 4')

--INCLUSÃO EM TB_FUNCIONARIOS
insert into tb_funcionarios values
(1,1,1,1, 'funcionario 1 do gerente 1 do diretor 1'),
(1,1,1,2, 'funcionario 2 do gerente 1 do diretor 1'),
(1,1,1,3, 'funcionario 3 do gerente 1 do diretor 1'),
(1,1,2,1, 'funcionario 1 do gerente 2 do diretor 1'),
(1,1,2,2, 'funcionario 2 do gerente 2 do diretor 1'),
(1,1,3,1, 'funcionario 1 do gerente 3 do diretor 1'),
(1,1,3,2, 'funcionario 2 do gerente 3 do diretor 1')

--SELEÇÃO DAS TABELAS--
select * from tb_dir_pres
select * from tb_diretores
select * from tb_gerentes
select * from tb_funcionarios

--SELEÇÃO DE NOMES--
select nm_dir_pres, nm_diretor, nm_gerente, nm_funcionario
from tb_dir_pres,tb_diretores,tb_gerentes,tb_funcionarios
where 
tb_dir_pres.cd_dir_pres = tb_diretores.cd_dir_pres and
tb_dir_pres.cd_dir_pres = tb_gerentes.cd_dir_pres and
tb_dir_pres.cd_dir_pres = tb_funcionarios.cd_dir_pres and
tb_diretores.cd_diretor = tb_gerentes.cd_diretor and
tb_diretores.cd_diretor = tb_funcionarios.cd_diretor and
tb_gerentes.cd_gerente = tb_funcionarios.cd_gerente

