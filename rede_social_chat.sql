CREATE TABLE chat (
    ID_chat INT PRIMARY KEY,
    ID_remetente INT,
	ID_destinatario INT,
    Texto_mensagem VARCHAR(45),
    data_e_hora_mensagem DATETIME,
    FOREIGN KEY (ID_remetente) REFERENCES usuario(ID),
	FOREIGN KEY (ID_destinatario) REFERENCES usuario(ID)
);

INSERT INTO chat (ID_chat, ID_remetente, ID_destinatario, Texto_mensagem, data_e_hora_mensagem)
VALUES
(1201, 0001, 0002, 'Oi, tudo bem?', '2024-05-27 09:00:00'),
(1202, 0002, 0001, 'Sim, e você?', '2024-05-27 09:10:00'),
(1203, 0001, 0003, 'Legal!', '2024-05-28 10:00:00'),
(1204, 0003, 0001, 'Obrigado!', '2024-05-28 10:15:00'),
(1205, 0004, 0005, 'E aí?', '2024-05-30 11:30:00'),
(1206, 0005, 0004, 'Tudo bem!', '2024-05-30 11:45:00'),
(1207, 0006, 0007, 'Vamos sair hoje?', '2024-06-01 14:00:00'),
(1208, 0007, 0006, 'Claro!', '2024-06-01 14:15:00'),
(1209, 0008, 0009, 'Estou ocupado!', '2024-06-02 16:30:00'),
(1210, 0009, 0008, 'Sem problemas!', '2024-06-02 16:45:00');

SELECT * FROM chat;