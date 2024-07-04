CREATE TABLE conexao (
    ID_conexao INT PRIMARY KEY,
    ID_usuario INT,
	ID_amigo INT,
    data_conexao DATE,
    FOREIGN KEY (ID_usuario) REFERENCES usuario(ID),
	FOREIGN KEY (ID_amigo) REFERENCES usuario(ID)
);

INSERT INTO conexao (ID_conexao, ID_usuario, ID_amigo, data_conexao)
VALUES
(10101, 0003, 0006, '2024-05-27'),
(10102, 0008, 0001, '2024-05-28'),
(10103, 0004, 0008, '2024-05-29'),
(10104, 0007, 0003, '2024-05-30'),
(10105, 0002, 0005, '2024-05-31'),
(10106, 0010, 0007, '2024-06-01'),
(10107, 0006, 0009, '2024-06-02'),
(10108, 0001, 0002, '2024-06-03'),
(10109, 0009, 0004, '2024-06-04'),
(10110, 0005, 0010, '2024-06-05');

SELECT * FROM conexao;
