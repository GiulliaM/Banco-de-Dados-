USE bdLivraria

SELECT * FROM tbGenero

INSERT INTO tbGenero (nomeGenero)
VALUES 
('Ficção'),
('Romance'),
('Tragédia')

SELECT * FROM tbEditora

INSERT INTO tbEditora (nomeEditora)
VALUES 
('Melhoramentos'),
('Globo'),
('Ática'),
('Companhia das Letras'),
('Abril')

SELECT * FROM tbAutor 

INSERT INTO tbAutor (nomeAutor)
VALUES
('Chico Buarque'),
('Jorge Amado'),
('J.K.Rowling'),
('William Skakespeare'),
('Monteiro Lobato'),
('Cora Coralina'),
('Clarice Lispector')

SELECT * FROM tbLivro

INSERT INTO tbLivro (nomeLivro, numPaginas, codGenero, codEditora, codAutor)
VALUES 
('Budapeste', '179', '2', '4', '1'),
('O Bicho-da-Seda', '454', '2', '5', '3'),
('Gabriela, Cravo e Canela', '214', '1', '2', '2'),
('Reinações de Nairinho', '143', '2', '2', '5'),
('Romeu e Julieta', '421', '1', '3', '4'),
('O Irmão Alemão', '478', '1', '4', '1'),
('Terras do Sem-Fim', '125', '1', '3', '2'),
('Animais Fantasticos e Onde Habitam', '267', '2', '4', '3'),
('O Homem de Giz', '267', '2', '4', NULL),
('A Revolução dos Bichos', '267', '2', '4', NULL),
(NULL, '267', '1', '4', '5'),
(NULL, '267', '3', '4', '3')