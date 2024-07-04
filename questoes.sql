#Questão 1
SELECT Nome FROM usuario ORDER BY Nome ASC;

# Questão 2
SELECT postagem.ID_postagem, usuario.Nome AS Nome_do_usuario, postagem.Texto_da_postagem, postagem.data_e_hora
FROM postagem
JOIN usuario ON postagem.ID_usuario = usuario.ID
ORDER BY postagem.data_e_hora ASC;

#Questão 3
SELECT comentario.ID_comentario, usuario.Nome AS Nome_do_usuario, postagem.Texto_da_postagem AS Postagem_de_origem
FROM comentario
JOIN usuario ON comentario.ID_usuario = usuario.ID
JOIN postagem ON comentario.ID_postagem = postagem.ID_postagem
ORDER BY comentario.data_e_hora_comentario DESC;

#Questão 4
SELECT ID_postagem, COUNT(*) AS Total_Curtidas
FROM curtida
GROUP BY ID_postagem
ORDER BY Total_Curtidas DESC;

#Questão 5
SELECT postagem.ID_postagem, postagem.Texto_da_postagem, COUNT(curtida.ID_curtida) AS Numero_de_curtidas
FROM postagem
LEFT JOIN curtida ON postagem.ID_postagem = curtida.ID_postagem
GROUP BY postagem.ID_postagem, postagem.Texto_da_postagem
ORDER BY COUNT(curtida.ID_curtida);

#Questão 6
SELECT conexao.ID_conexao, usuario1.Nome AS Nome_usuario1, usuario2.Nome AS Nome_usuario2, conexao.data_conexao
FROM conexao
JOIN usuario AS usuario1 ON conexao.ID_usuario = usuario1.ID
JOIN usuario AS usuario2 ON conexao.ID_amigo = usuario2.ID
ORDER BY conexao.data_conexao ASC;

#Questão 7
SELECT chat.ID_chat, usuario1.Nome AS Remetente, usuario2.Nome AS Destinatario, chat.Texto_mensagem
FROM chat
JOIN usuario AS usuario1 ON chat.ID_remetente = usuario1.ID
JOIN usuario AS usuario2 ON chat.ID_destinatario = usuario2.ID;

#Questão 8
SELECT usuario.ID, usuario.Nome, COUNT(postagem.ID_postagem) AS Numero_de_postagens
FROM usuario
JOIN postagem ON usuario.ID = postagem.ID_usuario
GROUP BY usuario.ID, usuario.Nome
ORDER BY COUNT(postagem.ID_postagem) DESC
LIMIT 1;

#Questão 9
SELECT postagem.ID_postagem, postagem.Texto_da_postagem, COUNT(curtida.ID_curtida) AS Numero_de_curtidas
FROM postagem
LEFT JOIN curtida ON postagem.ID_postagem = curtida.ID_postagem
GROUP BY postagem.ID_postagem, postagem.Texto_da_postagem
ORDER BY COUNT(curtida.ID_curtida) DESC
LIMIT 1;

#Quetão 10
SELECT 
    usuario.ID,
    usuario.Nome,
    MAX(amigo.Data_nascimento) AS idade_amigo_mais_velho
FROM 
    usuario
LEFT JOIN 
    conexao ON usuario.ID = conexao.ID_usuario
LEFT JOIN 
    usuario AS amigo ON conexao.ID_amigo = amigo.ID
GROUP BY 
    usuario.ID, usuario.Nome
ORDER BY 
    idade_amigo_mais_velho asc
LIMIT 1;
