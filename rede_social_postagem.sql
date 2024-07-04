CREATE TABLE postagem (
    ID_postagem INT PRIMARY KEY,
    ID_usuario INT,
    Texto_da_postagem VARCHAR(45),
    data_e_hora DATETIME,
    FOREIGN KEY (ID_usuario) REFERENCES usuario(ID)
);

INSERT INTO postagem (ID_postagem, ID_usuario, Texto_da_postagem, data_e_hora)
VALUES
(1, 0001, 'Bom dia!', '2024-05-27 10:00:00'),
(2, 0002, 'Vamos almoçar?', '2024-05-27 11:30:00'),
(3, 0003, 'Feliz aniversário!', '2024-05-28 09:45:00'),
(4, 0004, 'Postagem importante!', '2024-05-29 15:20:00'),
(5, 0005, 'Novidades por aqui.', '2024-05-29 17:10:00'),
(6, 0006, 'Compartilhando algo.', '2024-05-30 08:00:00'),
(7, 0007, 'O que acham disso?', '2024-05-30 10:45:00'),
(8, 0008, 'Mais uma atualização.', '2024-05-31 12:30:00'),
(9, 0009, 'A aula de hoje foi boa!', '2024-05-31 14:15:00'),
(10, 0010, 'Fim de semana chegou!', '2024-06-01 18:00:00'),
(11, 0001, 'Isso é legal!', '2024-09-12 10:00:00'),
(12, 0002, 'Reunião de família', '2024-09-13 12:00:00'),
(13, 0003, 'Festa da empresa', '2024-09-14 14:00:00'),
(14, 0004, 'Esperando o avião', '2024-09-15 16:00:00'),
(15, 0005, 'Que frio!', '2024-09-16 18:00:00'),
(16, 0006, 'E essa chuva que não para?', '2024-09-17 20:00:00'),
(17, 0007, 'Fui aprovado!', '2024-09-18 22:00:00'),
(18, 0008, 'Meu primeiro carro', '2024-09-19 00:00:00'),
(19, 0009, 'Festa com os amigos', '2024-09-20 02:00:00'),
(20, 0010, 'Esse por do sol foi lindo!', '2024-09-21 04:00:00'),
(21, 0002, 'Esse mar não está para peixe', '2024-09-22 06:00:00'),
(22, 0009, 'Esse time já é nosso freguês!', '2024-09-29 20:00:00'),
(23, 0010, 'Vitória!', '2024-09-30 22:00:00'),
(24, 0001, 'Um ótimo jantar.', '2024-10-01 00:00:00');

SELECT * FROM postagem;
