CREATE TABLE Animais
(
  id int,
  nome varchar(50),
  nasc date,
  peso decimal(10,2),
  cor varchar(50)
);

INSERT INTO Animais (id, nome, nasc, peso, cor) VALUES 
INSERT INTO Animais (id, nome, nasc, peso, cor) VALUES (01, 'Agata', '2015-04-09', 13.9, 'branco');
INSERT INTO Animais (id, nome, nasc, peso, cor) VALUES (02, 'Félix', '2016-06-06', 14.3, 'preto');
INSERT INTO Animais (id, nome, nasc, peso, cor) VALUES (03, 'Tom', '2013-02-08', 11.2, 'azul');
INSERT INTO Animais (id, nome, nasc, peso, cor) VALUES (04, 'Garfield', '2015-07-06', 17.1, 'laranja');
INSERT INTO Animais (id, nome, nasc, peso, cor) VALUES (05, 'Frajola', '2013-08-01', 13.7, 'preto');
INSERT INTO Animais (id, nome, nasc, peso, cor) VALUES (06, 'Manda-chuva', '2012-02-03', 12.3, 'amarelo');
INSERT INTO Animais (id, nome, nasc, peso, cor) VALUES (07, 'Snowball', '2014-04-06', 13.2, 'preto');
INSERT INTO Animais (id, nome, nasc, peso, cor) VALUES (10, 'Agata', '2015-08-03', 11.9, 'azul');
INSERT INTO Animais (id, nome, nasc, peso, cor) VALUES (11, 'Gato de Botas', '2012-12-10', 11.6, 'amarelo');
INSERT INTO Animais (id, nome, nasc, peso, cor) VALUES (12, 'Kitty', '2020-04-06', 11.6, 'amarelo');
INSERT INTO Animais (id, nome, nasc, peso, cor) VALUES (13, 'Milu', '2013-02-04', 17.9, 'branco');
INSERT INTO Animais (id, nome, nasc, peso, cor) VALUES (14, 'Pluto', '2012-01-03', 12.3, 'amarelo');
INSERT INTO Animais (id, nome, nasc, peso, cor) VALUES (15, 'Pateta', '2015-05-01', 17.7, 'preto');
INSERT INTO Animais (id, nome, nasc, peso, cor) VALUES (16, 'Snoopy', '2013-07-02', 18.2, 'branco');
INSERT INTO Animais (id, nome, nasc, peso, cor) VALUES (17, 'Rex', '2019-11-03', 19.7, 'bege');
INSERT INTO Animais (id, nome, nasc, peso, cor) VALUES (20, 'Bidu', '2012-09-08', 12.4, 'azul');
INSERT INTO Animais (id, nome, nasc, peso, cor) VALUES (21, 'Dum Dum', '2015-04-06', 11.2, 'laranja');
INSERT INTO Animais (id, nome, nasc, peso, cor) VALUES (22, 'Muttley', '2011-02-03', 14.3, 'laranja');
INSERT INTO Animais (id, nome, nasc, peso, cor) VALUES (23, 'Scooby', '2012-01-02', 19.9, 'marrom');
INSERT INTO Animais (id, nome, nasc, peso, cor) VALUES (24, 'Rufus', '2014-04-05', 19.7, 'branco');
INSERT INTO Animais (id, nome, nasc, peso, cor) VALUES (25, 'Rex', '2017-08-19', 19.7, 'branco');
-- Alterar o nome do Pateta para Goofy
UPDATE Animais SET nome = 'Goofy' WHERE nome = 'Pateta';
-- Alterar o peso do Garfield para 10 quilogramas
UPDATE Animais SET peso = 10 WHERE nome = 'Garfield';
-- Alterar a cor de todos os gatos para laranja
UPDATE Animais SET cor = 'laranja';
-- Criar um campo altura para os animais
ALTER TABLE Animais ADD altura decimal(10,2);
-- Criar um campo observação para os animais
ALTER TABLE Animais ADD observacao varchar(255);
-- Remover todos os animais que pesam mais que 200 quilogramas
DELETE FROM Animais WHERE peso > 200;
-- Remover todos os animais que o nome inicia com a letra ‘C’
DELETE FROM Animais WHERE nome LIKE 'C%';
-- Remover o campo cor dos animais
ALTER TABLE Animais DROP COLUMN cor;
-- Aumentar o tamanho do campo nome dos animais para 80 caracteres
ALTER TABLE Animais ALTER COLUMN nome varchar(80);
-- Remover todos os gatos e cachorros
DELETE FROM Animais WHERE nome IN ('Agata', 'Félix', 'Tom', 'Garfield', 'Frajola', 'Manda-chuva', 'Snowball', 'Agata', 'Gato de Botas', 'Kitty', 'Milu', 'Pluto', 'Snoopy', 'Rex', 'Bidu', 'Dum Dum', 'Muttley', 'Scooby', 'Rufus', 'Rex');
-- Remover o campo data de nascimento dos animais
ALTER TABLE Animais DROP COLUMN nasc;
-- Remover todos os animais
DELETE FROM Animais;
-- Remover a tabela especies
DROP TABLE Animais;

SELECT * FROM Animais
SELECT * FROM Animais WHERE peso < 13.1;
SELECT * FROM Animais WHERE nasc BETWEEN '2015-02-01' AND '2015-12-31';
SELECT * FROM Animais WHERE cor = 'branco' AND peso < 15.0;
SELECT nome, cor, peso FROM Animais WHERE nome LIKE 'B%';
SELECT nome, cor, peso FROM Animais WHERE cor IN ('vermelha', 'amarela', 'marrom', 'laranja');
SELECT nome, cor, nasc, peso FROM Animais ORDER BY nasc DESC;
SELECT * FROM Animais WHERE nome LIKE 'C%' AND cor != 'branco';
SELECT * FROM Animais WHERE nome LIKE '%ba%';
SELECT * FROM Animais WHERE peso >= 13.0 AND peso <= 15.0;
SELECT * FROM Animais WHERE peso <= 30 AND (cor = 'amarelo' OR cor = 'roxo') AND nasc > '2012-12-31';


