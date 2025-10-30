CREATE DATABASE db_pokemons;
drop database db_pokemons;

use db_pokemons;

create table tb_pokemon(
	id_pokemon INT PRIMARY KEY auto_increment,
    nome_pokemon VARCHAR(50) NOT NULL,
    forma VARCHAR(50) NOT NULL,
    hp INT NOT NULL,
    ataque INT NOT NULL,
    defesa INT NOT NULL,
    ataque_especial INT NOT NULL,
    defesa_especial INT NOT NULL,
    agilidade INT NOT NULL,
    geracao INT NOT NULL, 
	id_treinador INT NULL,
    id_pokedex INT NULL,
    id_fazenda INT NOT NULL
);

create table tb_treinador (
	id_treinador INT PRIMARY KEY auto_increment,
    nome_treinador VARCHAR(50) NOT NULL,
    aparencia_treinador VARCHAR(150) NOT NULL,
    gostos VARCHAR(150) NOT NULL,
    data_nasc DATE NOT NULL,
    qtd_pokebola INT NOT NULL,
    endereco VARCHAR(255) NOT NULL,
    genero_treinador ENUM("F", "M"),
	id_pokedex INT NULL,
    id_fazenda INT NULL
);

create table tb_pokedex(
	id_pokedex INT PRIMARY KEY auto_increment,
    qtd_registros INT NOT NULL,
    id_treinador INT NULL
);

create table tb_fazenda(
	id_fazenda INT PRIMARY KEY auto_increment,
    qtd_pokemons INT NOT NULL,
    id_treinador INT NULL
);

create table tb_tipo (
	id_tipo INT PRIMARY KEY auto_increment,
    nome_tipo VARCHAR(50) NOT NULL
);

create table tb_classificacao(
	id_classificacao INT PRIMARY KEY auto_increment,
    id_pokemon INT NOT NULL,
    id_tipo INT NOT NULL
);

ALTER TABLE tb_pokemon 
ADD CONSTRAINT fk_id_treinador_pokemon FOREIGN KEY (id_treinador) REFERENCES tb_treinador(id_treinador),
ADD CONSTRAINT fk_id_pokedex_pokemon FOREIGN KEY (id_pokedex) REFERENCES tb_pokedex(id_pokedex),
ADD CONSTRAINT fk_id_fazenda_pokemon FOREIGN KEY (id_fazenda) REFERENCES tb_fazenda(id_fazenda);

ALTER TABLE tb_pokemon 
drop primary key;

ALTER TABLE tb_treinador
ADD CONSTRAINT fk_id_pokedex_treinador FOREIGN KEY (id_pokedex) REFERENCES tb_pokedex(id_pokedex),
ADD CONSTRAINT fk_id_fazenda_treinador FOREIGN KEY (id_fazenda) REFERENCES tb_fazenda(id_fazenda);

ALTER TABLE tb_fazenda
ADD CONSTRAINT fk_id_treinador_fazenda FOREIGN KEY (id_treinador) REFERENCES tb_treinador(id_treinador);

ALTER TABLE tb_pokedex
ADD CONSTRAINT fk_id_treinador_pokedex FOREIGN KEY (id_treinador) REFERENCES tb_treinador(id_treinador);

ALTER TABLE tb_classificacao 
ADD CONSTRAINT fk_id_pokemon FOREIGN KEY (id_pokemon) REFERENCES tb_pokemon (id_pokemon),
ADD CONSTRAINT fk_id_tipo FOREIGN KEY (id_tipo) REFERENCES tb_tipo(id_tipo);

INSERT INTO tb_tipo (nome_tipo) VALUES 
("Bug"), ("Flying"), ("Grass"), ("Fire"), ("Water"), ("Normal"), ("Poison"), ("Eletric"), ("Fairy"), ("Ground"), ("Fighting"), ("Psychic"), ("Rock"), ("Steel"), ("Ice"), ("Ghost"), ("Dragon"), ("Dark");

describe tb_pokemon;
describe tb_treinador;
select * from tb_tipo;

INSERT INTO tb_pokedex (qtd_registros, id_treinador) VALUES (40, 1);

INSERT INTO tb_treinador (nome_treinador, aparencia_treinador, gostos, data_nasc, qtd_pokebola, endereco, genero_treinador)
VALUES
('Ash Ketchum', 'Boné vermelho, jaqueta azul', 'Ama batalhas e novos pokémons', '2000-05-22', 6, 'Pallet Town', 'M'),
('Misty', 'Cabelos ruivos presos, roupa amarela', 'Ama pokémons aquáticos', '2001-07-18', 5, 'Cerulean City', 'F'),
('Brock', 'Olhos fechados, colete verde', 'Gosta de cozinhar e treinar pokémons tipo pedra', '1999-01-10', 4, 'Pewter City', 'M'),
('Serena', 'Cabelos loiros, chapéu rosa', 'Ama concursos e moda pokémon', '2002-03-12', 5, 'Lumiose City', 'F'),
('Gary Oak', 'Cabelos castanhos, jaqueta roxa', 'Competitivo e confiante', '2000-09-09', 6, 'Pallet Town', 'M');

INSERT INTO tb_pokedex (qtd_registros, id_treinador)
VALUES
(50, 1),
(38, 2),
(45, 3),
(30, 4),
(60, 5);


INSERT INTO tb_fazenda (qtd_pokemons, id_treinador)
VALUES
(10, 1),
(8, 2),
(12, 3),
(9, 4),
(11, 5);

UPDATE tb_treinador SET id_fazenda = 1 WHERE id_treinador = 1;
UPDATE tb_treinador SET id_fazenda = 2 WHERE id_treinador = 2;
UPDATE tb_treinador SET id_fazenda = 3 WHERE id_treinador = 3;
UPDATE tb_treinador SET id_fazenda = 4 WHERE id_treinador = 4;
UPDATE tb_treinador SET id_fazenda = 5 WHERE id_treinador = 5;

UPDATE tb_treinador SET id_pokedex = 1, id_fazenda = 1 WHERE id_treinador = 1;
UPDATE tb_treinador SET id_pokedex = 2, id_fazenda = 2 WHERE id_treinador = 2;
UPDATE tb_treinador SET id_pokedex = 3, id_fazenda = 3 WHERE id_treinador = 3;
UPDATE tb_treinador SET id_pokedex = 4, id_fazenda = 4 WHERE id_treinador = 4;
UPDATE tb_treinador SET id_pokedex = 5, id_fazenda = 5 WHERE id_treinador = 5;

SELECT * FROM tb_treinador;

INSERT INTO tb_pokemon (nome_pokemon, forma, hp, ataque, defesa, ataque_especial, defesa_especial, agilidade, geracao, id_treinador, id_pokedex, id_fazenda)
VALUES
('Pikachu', 'Normal', 35, 55, 40, 50, 50, 90, 1, 1, 1, 1),
('Charizard', 'Mega X', 78, 84, 78, 109, 85, 100, 1, 1, 1, 1),
('Squirtle', 'Normal', 44, 48, 65, 50, 64, 43, 1, 2, 2, 2),
('Bulbasaur', 'Normal', 45, 49, 49, 65, 65, 45, 1, 2, 2, 2),
('Onix', 'Normal', 35, 45, 160, 30, 45, 70, 1, 3, 3, 3),
('Gengar', 'Normal', 60, 65, 60, 130, 75, 110, 1, 4, 4, 4),
('Eevee', 'Normal', 55, 55, 50, 45, 65, 55, 1, 4, 4, 4),
('Dragonite', 'Normal', 91, 134, 95, 100, 100, 80, 1, 5, 5, 5),
('Jigglypuff', 'Normal', 115, 45, 20, 45, 25, 20, 1, 5, 5, 5),
('Snorlax', 'Normal', 160, 110, 65, 65, 110, 30, 1, 1, 1, 1);



INSERT INTO tb_classificacao (id_pokemon, id_tipo)
VALUES
(1, 8),  
(2, 4),  
(3, 5),
(5, 13),
(6, 16),
(7, 6),  
(8, 17), 
(9, 9),  
(10, 6); 


SELECT * FROM tb_treinador;
SELECT * FROM tb_pokedex;
SELECT * FROM tb_fazenda;
SELECT * FROM tb_pokemon;
SELECT * FROM tb_tipo;
SELECT * FROM tb_classificacao;
