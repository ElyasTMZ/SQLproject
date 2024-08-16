-- apagando banco de dados
drop database dbcantina;

-- criando banco de dados
create database dbcantina;

-- acessando banco de dados
use dbcantina;

-- criando as tabelas
create table tbFuncionarios(
codFunc int not null auto_increment,
nome varchar(100) not null,
email varchar(100) unique,
cpf char(14) not null unique,
sexo char(1) default 'F' check(sexo in('F','M')),
salario decimal(9,2) default 0 check(salario >=0),
nascimento date,
telCelular char(10),
primary key(codFunc));

create table tbFornecedores(
codForn int not null auto_increment,
nome varchar(100) not null,
email varchar(100) not null,
cnpj char(17) not null unique,
primary key(codForn));


create table tbClientes(
codCli int not null auto_increment,
nome varchar(100) not null,
email varchar(100),
telCelular char(10),
primary key(codCli));

create table tbUsuarios(
codUsu int not null auto_increment,
nome varchar(25) not null unique,
senha varchar(10) not null,
codFunc int not null,
primary key(codUsu),
foreign key(codFunc)references tbFuncionarios(codFunc));

create table tbProdutos(
codProd int not null auto_increment,
descricao varchar(100),
quantidade int,
valor decimal(9,2),
validade date,
dataEntrada date,
horaEntrada time,
codForn int not null,
primary key(codProd),
foreign key(codForn) references tbFornecedores(codForn)
);


create table tbVendas(
codVenda int not null auto_increment,
dataVenda date,
horaVenda time,
quantidade int,
codUsu int not null,
codCli int not null,
codProd int not null,
primary key(codVenda),
foreign key(codUsu)references tbUsuarios(codUsu),
foreign key(codCli)references tbClientes(codCli),
foreign key(codProd)references tbProdutos(codProd));



-- visualizando a estrutura das tabelas
desc tbFuncionarios;
desc tbFornecedores;
desc tbClientes;
desc tbUsuarios;
desc tbProdutos;
desc tbVendas;

--inserindo registros das tabelas 

insert into tbFuncionarios(nome,email,cpf,sexo,salario,nascimento,telCelular)
values('Ale Elyas','alezin777@gmail.com','111.888.333-96','M',1155.50,'2006/09/12','9898-5454');


insert into tbFuncionarios(nome,email,cpf,sexo,salario,nascimento,telCelular)
values('regina miranda','regina@gmail.com','415.8842.733-96','M',1600.50,'2005/12/31','8998-5444');

insert into tbFornecedores(nome,email,cnpj)
values('Ale Elyas','alezin777@gmail.com','11.888.3033.96/25');

insert into tbFornecedores(nome,email,cnpj)
values('casa das pamonhas','pamonhas@gmail.com','12.558.3125.95/54');

insert into tbClientes(nome,email,telCelular)
values('Enrico Salves','enricoenrico@gmail.com','54545-4555');

insert into tbUsuarios(nome,senha,codFunc)
values('Toninho patinho','123456',1);

insert into tbUsuarios(nome,senha,codFunc)
values('regina miranda','654123',2);

insert into tbProdutos(descricao,quantidade,valor,validade,dataEntrada,horaEntrada,codForn)
values('mesa de alta qualidade','10','2000.00','2060/12/08','2006/08/09','12:01:00',1);

insert into tbProdutos(descricao,quantidade,valor,validade,dataEntrada,horaEntrada,codForn)
values('mesa de baixa qualidade','10','1000.00','2030/12/08','2006/08/09','12:00:00',1);

insert into tbProdutos(descricao,quantidade,valor,validade,dataEntrada,horaEntrada,codForn)
values('mesa de media qualidade','10','1500.00','2045/12/08','2006/08/09','11:59:00',1);

insert into tbProdutos(descricao,quantidade,valor,validade,dataEntrada,horaEntrada,codForn)
values('mesa de extrema qualidade','10','3000.00','2100/12/08','2006/08/09','11:58:00',1);

insert into tbVendas(dataVenda,horaVenda,quantidade,codUsu,codCli,codProd)
values('2024/08/27','11:00:00','1',1,1,1);

--visualizando registro das tabelas
select * from tbFuncionarios;
select * from tbFornecedores;
select * from tbClientes;
select * from tbUsuarios;
select * from tbProdutos;
select * from tbVendas;




