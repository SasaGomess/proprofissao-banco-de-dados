create database banco_livros;

use banco_livros;

create table tb_livros(
	pk_id_livro INT PRIMARY KEY auto_increment,
	nome_livro VARCHAR(100) NOT NULL,
	preco DECIMAL(8,2),
    	numero_paginas INT,
    	data_aquisicao DATE,
    	data_leitura DATE,
    	tipo_livro ENUM("fisico", "digital", "audiobook"),
    	idioma ENUM("inglês", "português", "chinês", "espanhol", "francês", "japonês", "coreano"),
	status_livro ENUM("lido", "lendo", "não lido"),
   	genero_livro ENUM("suspense", "romance", "comédia", "terror", "autoajuda", "ação", "ficção científica"),
    	capa_dura ENUM("mole", "paraná", "cartão", "roller"),
    	edicao varchar(120),
    	estado_livro ENUM("novo", "usado", "semi novo"),
    	avaliacao ENUM("ótimo", "bom", "regular", "ruim", "péssimo")
);

describe tb_livros;

SELECT * FROM tb_livros;

INSERT INTO tb_livros (nome_livro, preco, numero_paginas, data_aquisicao, data_leitura, tipo_livro, idioma, status_livro, genero_livro, capa_dura, edicao, estado_livro, avaliacao) values (
	"O pequeno principe",
    18.63,
    144,
    "2025-10-18",
    "2025-10-21",
    "fisico",
    "português",
    "lendo", 
    "ficção científica",
    "mole",
    "décima edição",
    "novo",
    "bom"
);

/*Adcionando mais 10 registros */

INSERT INTO tb_livros (nome_livro, preco, numero_paginas, data_aquisicao, data_leitura, tipo_livro, idioma, status_livro, genero_livro, capa_dura, edicao, estado_livro, avaliacao) values (
	"O pequeno principe",
    18.63,
    144,
    "2025-10-18",
    "2025-10-21",
    "fisico",
    "português",
    "lendo", 
    "ficção científica",
    "mole",
    "décima edição",
    "novo",
    "bom"
);

/*Adcionando mais 10 registros */

INSERT INTO tb_livros (nome_livro, preco, numero_paginas, data_aquisicao, data_leitura, tipo_livro, idioma, status_livro, genero_livro, capa_dura, edicao, estado_livro, avaliacao) values (
	"A Hora da Estrela",
    73.84,
    83,
    "2025-09-20",
    "2025-09-29",
    "físico",
    "português",
    "lido",
    "romance",
    "dura",
    "segunda edição",
    "semi novo", 
    "ótimo"
), (
	"Revolução dos bichos",
    29.90,
    152,
    "2025-03-25",
    "2025-10-14",
    "audiobook",
    "português",
    "não lido",
    "ficção científica",
    "mole",
    "primeira edição",
    "semi novo", 
    "ótimo"
), (
	"Dom Casmurro",
    34.90,
    256,
    "2025-05-24",
    "2025-09-20",
    "digital",
    "português",
    "lendo",
    "romance",
    "paraná",
    "edição dezoito",
    "usado", 
    "bom"
), (
	"Harry Potter e a Pedra Filosofal",
    59.90,
    264,
    "2025-04-05",
    "2025-10-20",
    "físico",
    "português",
    "lido",
    "fantasia",
    "dura",
    "edição vinte e um",
    "novo", 
    "ótimo"
), (
	"A garota do trem",
    49.90,
    378,
    "2025-04-23",
    "2025-10-20",
    "físico",
    "português",
    "lido",
    "fantasia",
    "roller",
    "primeira edição",
    "semi novo", 
    "ótimo"
),(
	"O Poder do Hábito",
    64.90,
    408,
    "2025-02-22",
    "2025-02-25",
    "físico",
    "português",
    "lendo",
    "autoajuda",
    "mole",
    "primeira edição",
    "semi novo", 
    "bom"
), (
	"É assim que acaba",
    54.90,
    368,
    "2025-03-14",
    "2025-03-21",
    "audiobook",
    "inglês",
    "lido",
    "romance",
    "dura",
    "primeira edição",
    "novo", 
    "regular"
), (
	"O Homem Mais Rico da Babilônia",
    32.90,
    160,
    "2025-02-20",
    "2025-04-02",
    "físico",
    "espanhol",
    "lido",
    "autoajuda",
    "dura",
    "edição vinte e um",
    "semi novo", 
    "regular"
),
(
	"Sapiens: Uma Breve História da Humanidade",
    69.90,
    464,
    "2025-05-22",
    "2025-06-15",
    "audiobook",
    "português",
    "lendo",
    "filosofia",
    "roller",
    "primeira edição",
    "novo", 
    "regular"
);

create table tb_editora (
	pk_id_editora INT PRIMARY KEY auto_increment NOT NULL,
    nome_editora VARCHAR(100) NOT NULL,
    qtd_autores INT NOT NULL,
    qtd_obras INT NOT NULL,
    data_fundacao DATE NOT NULL,
    pais_origem VARCHAR(100) NOT NULL,
    endereco VARCHAR(100) NOT NULL
);

INSERT INTO tb_editora (nome_editora, qtd_autores, qtd_obras, data_fundacao, pais_origem, endereco) values
 ("Principis", 20, 60, "2010-01-01", "Brasil", "R. José Albino Pereira, 54 - Jardim Alvorada, Jandira - SP"),
 ("Companhia das Letras", 30, 140, "1986-08-27", "Brasil", "Rua Bandeira Paulista, 702 - Itaim Bibi, São Paulo - SP"),
 ("Rocco", 25, 90, "1975-05-27", "Brasil", "Rua Marquês de São Vicente, 99 – Gávea, Rio de Janeiro – RJ"),
 ("HaperColins Publishers", 45, 200, "1989-08-01", "Estados Unidos", "195 Broadway, New York, NY 10007"),
 ("Penguin Books", 85, 290, "1935-07-30", "Reino Unido", "80 Strand, London WC2R 0RL, Inglaterra"),
 ("Record", 30, 140, "1940-12-29", "Brasil", "Rua Argentina, 171 – São Cristóvão, Rio de Janeiro – RJ"),
 ("Objetiva", 20, 60, "1991-01-01", "Brasil", "Rua Bandeira Paulista, 702 – Itaim Bibi, São Paulo – SP"),
 ("Grupo Planeta", 60, 150, "1949-04-03", "Espanha", "Av. Diagonal, 662-664, 08034 Barcelona"),
 ("Anagrama", 40, 90, "1969-01-01", "Espanha", "Carrer de Pau Claris, 143, 08009 Barcelona"),
 ("Sextante", 50, 120, "1990-04-03", "Brasil", "Rua Funchal, 418 - Vila Olímpia, São Paulo – SP");
 
 SELECT * FROM tb_editora;
 
 ALTER TABLE tb_editora add column cnpj char(24) not null; /*Adciona coluna na tabela*/
 
 describe tb_editora;
 
 update tb_editora set cnpj = '56.887.499/0001-05' where pk_id_editora = 1; /*Altera valor do campo na tabela*/
 
 alter table tb_editora drop column cnpj; /*Apaga fisicamente uma coluna da tabela*/
 
 alter table tb_editora modify column cnpj char(18); /*Modifica a estrutura do campo na tabela*/
 
 create table tb_autor (
	pk_id_autor INT PRIMARY KEY auto_increment,
    nome_autor Varchar(120) NOT NULL,
    data_nasc DATE NOT NULL,
    qtd_obras_autor INT NOT NULL,
    nacionalidade VARCHAR(120) NOT NULL,
    genero_autor ENUM("F", "M") NOT NULL DEFAULT "M"
 );
 
 DROP TABLE tb_autor;
 
 INSERT INTO tb_autor(nome_autor, data_nasc, qtd_obras_autor, nacionalidade, genero_autor) VALUES ("George Ornell", "1903-06-25", 9, "Britânico", "M"
 );
 
 insert into tb_autor(nome_autor, data_nasc, qtd_obras_autor, nacionalidade, genero_autor) VALUES 
	("Antonie de Saint-Exupéry", '1900-06-29', 8, 'Francês', "M"), 
    ('Machado de Assis', '1839-06-21', 10, 'Brasileiro', "M"),
    ('George S. Clason', '1874-09-07', 7, 'Americano', "M"),
    ('J. K Rowling', '1965-07-31', 15, "Britânica", 'F'),
    ('Paula Hawkins', '1972-08-26', 4, "Britânica", 'F'),
    ("Charles Duhigg", '1974-05-20', 2, 'Americano',"M"),
    ('Colleen Hoover', '1979-12-11', 25, "Americana", "F"),
    ("Yuval Noah Harari", '1976-02-24', 7, "Israelense", "M"),
    ("Clarice Lispector", '1920-12-10', 29, "Brasileira", "F");
    
SELECT * FROM tb_autor;

 /*inserir o campo CPF;*/
 ALTER TABLE tb_autor ADD COLUMN cpf_autor CHAR(12) not null;
 
 /*-mudar o nome do autor do segundo registro;*/
UPDATE tb_autor SET nome_autor = "Antonie de Saint" WHERE pk_id_autor = 2;

/*-mudar o nome do campo nacionalidade para nacionalidade_autor;*/

ALTER TABLE tb_autor rename column nacionalidade to nacionalidade_autor;

/*-excluir o campo qtde_obras_autor;*/

ALTER TABLE tb_autor DROP COLUMN qtd_obras_autor;

/*no sétimo registro, mudar o nome do autor para "Jujutsu Kaizen";*/

UPDATE tb_autor SET nome_autor = "Jujutsu Kaisen" WHERE pk_id_autor = 7;

/*-inserir o campo Premiacoes na tabela, que trará o número de premiações desse autor;*/
ALTER TABLE tb_autor ADD column premiacoes_autor INT NOT NULL;

/*-deletar os registros da tabela, mas trazê-los novamente depois*/

start transaction;

delete from tb_autor;

rollback;

drop table tb_livros;
drop table tb_autor;


create table tb_livro(
	id_livro INT auto_increment,
    id_autor INT,
    id_editora INT,
	nome_livro VARCHAR(100) NOT NULL,
	preco DECIMAL(8,2),
	numero_paginas INT,
	data_aquisicao DATE,
	data_leitura DATE,
	tipo_livro ENUM("fisico", "digital", "audiobook"),
	idioma ENUM("inglês", "português", "chinês", "espanhol", "francês", "japonês", "coreano"),
	status_livro ENUM("lido", "lendo", "não lido"),
   	genero_livro ENUM("suspense", "romance", "comédia", "terror", "autoajuda", "ação", "ficção científica"),
	capa_dura ENUM("mole", "paraná", "cartão", "roller"),
	edicao varchar(120),
	estado_livro ENUM("novo", "usado", "semi novo"),
	avaliacao ENUM("ótimo", "bom", "regular", "ruim", "péssimo"),
	constraint pk_id_livro PRIMARY KEY (id_livro),
	constraint fk_id_livro FOREIGN KEY (id_autor) REFERENCES tb_autor(id_autor),
	constraint fk_id_editora foreign key (id_editora) REFERENCES tb_editora (id_editora)
);

 create table tb_autor (
	id_autor INT auto_increment,
    id_livro INT,
    id_editora INT,
    nome_autor Varchar(120) NOT NULL,
    data_nasc DATE NOT NULL,
    qtd_obras_autor INT NOT NULL,
    nacionalidade VARCHAR(120) NOT NULL,
    genero_autor ENUM("F", "M") NOT NULL DEFAULT "M",
    constraint pk_id_autor PRIMARY KEY (id_autor)
 );
 
 create table tb_editora (
	id_editora INT auto_increment,
    id_autor INT,
    id_livro INT,
    nome_editora VARCHAR(100) NOT NULL,
    qtd_autores INT NOT NULL,
    qtd_obras INT NOT NULL,
    data_fundacao DATE NOT NULL,
    pais_origem VARCHAR(100) NOT NULL,
    endereco VARCHAR(100) NOT NULL,
    constraint pk_id_editora primary key (id_editora)
);
ALTER TABLE tb_autor ADD COLUMN id_editora INT;

describe tb_livro;
describe tb_autor;
describe tb_editora;

ALTER TABLE tb_autor
drop primary key, 
ADD CONSTRAINT pk_id_autor primary key (id_autor),
ADD CONSTRAINT fk_id_editora_autor foreign key (id_editora) REFERENCES tb_editora(id_editora),
ADD CONSTRAINT fk_id_livro_autor foreign key (id_livro) REFERENCES tb_livro(id_livro);

ALTER TABLE tb_editora
drop primary key, 
ADD CONSTRAINT pk_id_autor primary key (id_editora),
ADD CONSTRAINT fk_id_autor_editora foreign key (id_autor) REFERENCES tb_autor(id_autor),
ADD CONSTRAINT fk_id_livro_editora foreign key (id_livro) REFERENCES tb_livro(id_livro);
