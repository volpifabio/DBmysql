-- criando tabelas
CREATE TABLE pessoas(
	id INT not null auto_increment primary key, 
	nome VARCHAR(20) NOT NULL,
	nascimento date,
	sexo ENUM('M', 'F'),
	peso DECIMAL(5,2),
	altura DECIMAL (3,2),
	nacionalidade VARCHAR(20) DEFAULT 'Brasil'
);

CREATE TABLE cursos(
	idcurso INT not null auto_increment primary key, 
	nome VARCHAR(20) NOT NULL,
	descricao varchar(50),
	carga decimal,
	totaulas DECIMAL,
	ano year
);
-- inserindo valores na tabela
insert into cursos values 
	('1', 'HTML4', 'Curso de HTML5', '40', '37', '2014'),
	('2', 'algoritmos', 'logica de programacao', '20', '15', '2014'),
	('3', 'photoshop', 'dicas de photoshop cc', '10', '8', '2014'),
	('4', 'pgp', 'Curso de php para iniciantes', '40', '20', '2010'),
	('5', 'jarva', 'introducao a linguagem java', '10', '29', '2000'),
	('6', 'mysql', 'banco de dados mysql', '30', '15', '2016'),
	('7', 'word', 'Curso completo de word', '40', '30', '2016'),
	('8', 'sapateado', 'dancas ritmicas', '40', '30', '2018'),
	('9', 'cozinha arabe', 'aprenda a fazer kibe', '40', '30', '2018'),
	('10', 'youtuber', 'gerar polemica e ganhar inscritos', '5', '2', '2018');


insert into pessoas values
	('1', 'godofredo', '1984-01-02', 'm', '78.50', '1.83', default), 
	('2', 'maria', '1999-12-30', 'f', '55.20', '1.65', 'portugal'),
	('3', 'creuza', '1920-12-30', 'f', '50.20', '1.65', default),
	('4', 'adalgiza', '190-11-02', 'f', '63.20', '1.75', 'irlanda'), 
	('5', 'claudio', '1975-04-22', 'm', '99.00', '2.15', default),
	('6', 'pedro', '1999-12-03', 'm', '87.00', '2.00', default),
	('7', 'janaina', '1987-11-12', 'f', '75.40', '1.66', 'eua'); 
    
-------------------------------------------------------------------------------------------
-- comandos
    
delete from cursos
where nome = 'teste';  -- deletando uma linha

desc cursos; -- descrição da tabela

select * from cursos;  -- selecionando tudo da tabela

alter table pessoas modify nascimento date; -- modificando um tipo

alter table pessoas drop column id; -- apagando a coluna id
alter table pessoas add id INT NOT NULL PRIMARY KEY auto_increment first; -- add coluna id

drop table pessoas; -- apagando tabela pessoas

desc pessoas;

select * from pessoas;

    
select * from pessoas;
select * from cursos;

update cursos
set nome = 'HTML5'    -- alterar uma linha
where idcurso = '1';

update cursos
set nome = 'php', ano = '2015' -- alterando
where idcurso = '4';

update cursos
set nome = 'Java', carga = '10', ano = '2000' -- alterando
where idcurso = '5';

delete from cursos
where idcurso in ('8', '9', '10') -- deletar uma linha
limit 3;

truncate cursos; -- apaga os dados da tabela, mais mantem a estrutura

-----------------------------------------------------------------------------------------------
-- criando BkPs(dumps)

/* server > data export > escolher o banco > selec. dump structure and data > 
marcar a flag export self-contained file e a flag include create schema > start export */

drop database cadastro; -- apagando database

-- importar dump
/* server > data import > marcar flag import from self-contained file > escolher o arquivo > start import */
