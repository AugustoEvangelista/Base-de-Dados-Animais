USE Animais;
CREATE DATABASE Animais;
-- Criação da tabela Animais
CREATE TABLE Animais (
  id int PRIMARY KEY,
  nome varchar(50),
  nasc date,
  peso decimal(10,2),
  cor varchar(50)
);

-- Inserção de registros na tabela Animais
INSERT INTO Animais (id, nome, nasc, peso, cor) 
VALUES 
(1, 'Agata', '2015-04-09', 13.9, 'branco'),
(2, 'Félix', '2016-06-06', 14.3, 'preto'),
(3, 'Tom', '2013-02-08', 11.2, 'azul'),
(4, 'Garfield', '2015-07-06', 17.1, 'laranja'),
(5, 'Frajola', '2013-08-01', 13.7, 'preto'),
(6, 'Manda-chuva', '2012-02-03', 12.3, 'amarelo'),
(7, 'Snowball', '2014-04-06', 13.2, 'preto'),
(10, 'Agata', '2015-08-03', 11.9, 'azul'),
(11, 'Gato de Botas', '2012-12-10', 11.6, 'amarelo'),
(12, 'Kitty', '2020-04-06', 11.6, 'amarelo'),
(13, 'Milu', '2013-02-04', 17.9, 'branco'),
(14, 'Pluto', '2012-01-03', 12.3, 'amarelo'),
(15, 'Pateta', '2015-05-01', 17.7, 'preto'),
(16, 'Snoopy', '2013-07-02', 18.2, 'branco'),
(17, 'Rex', '2019-11-03', 19.7, 'bege'),
(20, 'Bidu', '2012-09-08', 12.4, 'azul'),
(21, 'Dum Dum', '2015-04-06', 11.2, 'laranja'),
(22, 'Muttley', '2011-02-03', 14.3, 'laranja'),
(23, 'Scooby', '2012-01-02', 19.9, 'marrom'),
(24, 'Rufus', '2014-04-05', 19.7, 'branco'),
(25, 'Rex', '2017-08-19', 19.7, 'branco');

-- Altera o nome do Pateta para Goofy
UPDATE Animais SET nome = 'Goofy' WHERE nome = 'Pateta';
-- Altera o peso do Garfield para 10 quilogramas
UPDATE Animais SET peso = 10 WHERE nome = 'Garfield';
-- Altera a cor de todos os gatos para laranja
UPDATE Animais SET cor = 'laranja' WHERE nome IN ('Agata', 'Félix', 'Tom', 'Garfield', 'Frajola', 'Manda-chuva', 'Snowball', 'Agata', 'Gato de Botas');
-- Cria um campo altura para os animais
ALTER TABLE Animais ADD altura decimal(10,2);
-- Cria um campo observação para os animais
ALTER TABLE Animais ADD observacao varchar(255);
-- Remove todos os animais que pesam mais que 200 quilogramas (nenhum no momento)
DELETE FROM Animais WHERE peso > 200;
-- Remove todos os animais que o nome inicia com a letra ‘C’ (não deve remover nenhum)
DELETE FROM Animais WHERE nome LIKE 'C%';
-- Remove o campo cor dos animais
ALTER TABLE Animais DROP COLUMN cor;
-- Aumenta o tamanho do campo nome dos animais para 80 caracteres
ALTER TABLE Animais ALTER COLUMN nome varchar(80);
-- Remove todos os gatos e cachorros
DELETE FROM Animais WHERE nome IN ('Agata', 'Félix', 'Tom', 'Garfield', 'Frajola', 'Manda-chuva', 'Snowball', 'Agata', 'Gato de Botas', 'Kitty', 'Milu', 'Pluto', 'Snoopy', 'Rex', 'Bidu', 'Dum Dum', 'Muttley', 'Scooby', 'Rufus', 'Rex');
-- Remove o campo data de nascimento dos animais
ALTER TABLE Animais DROP COLUMN nasc;
-- Remove todos os animais
DELETE FROM Animais;
-- Remove a tabela Animais
DROP TABLE Animais;
SELECT * FROM animais
