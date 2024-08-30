DROP DATABASE dbprodutos;

CREATE DATABASE dbprodutos;

USE dbprodutos;

CREATE TABLE PRODUTOS 
( 
CODIGO INT, 
NOME VARCHAR(50), 
TIPO VARCHAR(25), 
QUANTIDADE INT, 
VALOR DECIMAL(10,2) 
);
 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 1,'IMPRESSORA', 'INFORMATICA', 200, 600.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 2,'CAMERA DIGITAL', 'DIGITAIS', 300, 400.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 3,'DVD PLAYER', 'ELETRONICOS', 250, 500.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 4,'MONITOR', 'INFORMATICA', 400, 900.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 5,'TELEVISOR', 'ELETRONICOS', 350, 650.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 6,'FILMADORA DIGITAL', 'DIGITAIS', 500, 700.00 );
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 7,'CELULAR', 'TELEFONE', 450, 850.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 8,'TECLADO', 'INFORMATICA', 300, 450.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 9,'VIDEOCASSETE', 'ELETRONICOS', 200, 300.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 10,'MOUSE', 'INFORMATICA', 400, 60.00 );

select * from produtos;

select nome, valor from produtos;

select codigo as 'Código', nome as 'Nome do produtos' from produtos;

select distinct tipo from produtos;

select * from produtos where quantidade > 250;

select nome, tipo from produtos where valor < 150;

select * from produtos where nome = 'Monitor' and tipo = 'Informatica';

select * from produtos where valor not between 250 and 600;

select * from produtos where nome like '%o';

select * from produtos where nome like 'a';

select * from produtos order by valor limit 5;

--integridade e cinsistencia--

select usu.nome,prod.descricao,cli.nome
from tbVendas as vend
inner join tbUsuarios as usu 
on vend.codUsu = usu.codUsu 
inner join tbProdutos as prod 
on vend.codProd = prod.codProd 
inner join tbClientes as cli
on vend.codCli = cli.codCli;

select usu.nome as "nome de usuario", func.nome as "nome do funcionario"
from tbUsuarios as usu
inner join tbfuncionarios as func
on usu.codFunc = func.codFunc;













