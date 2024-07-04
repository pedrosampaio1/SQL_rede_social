CREATE TABLE comentario (
    ID_comentario INT PRIMARY KEY,
    ID_postagem INT,
	ID_usuario INT,
    Texto_comentario VARCHAR(45),
    data_e_hora_comentario DATETIME,
    FOREIGN KEY (ID_postagem) REFERENCES postagem(ID_postagem),
	FOREIGN KEY (ID_usuario) REFERENCES usuario(ID)
);

INSERT INTO comentario (ID_comentario, ID_postagem, ID_usuario, Texto_comentario, data_e_hora_comentario)
VALUES
(101, 1, 0007, 'Bom dia! Como você está?', '2024-05-27 10:15:00'),
(102, 2, 0003, 'Isso parece saboroso!', '2024-05-27 10:30:00'),
(103, 3, 0009, 'Parabéns!', '2024-05-27 11:45:00'),
(104, 4, 0001, 'Excelente!', '2024-05-28 10:00:00'),
(105, 5, 0010, 'Interessante!', '2024-05-29 16:00:00'),
(106, 6, 0004, 'Legal!', '2024-05-30 08:15:00'),
(107, 7, 0008, 'Concordo.', '2024-05-30 11:00:00'),
(108, 8, 0002, 'Show!', '2024-05-31 13:00:00'),
(109, 9, 0005, 'Uma pena que faltei.', '2024-05-31 15:30:00'),
(110, 10, 0006, 'Sextou!', '2024-06-01 18:30:00');

SELECT * FROM comentario;

