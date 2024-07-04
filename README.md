# SQL_rede_social
Um Schema SQL de uma banco de dados de uma rede social

Na disciplina de Ambientes de Dados, utilizando como SGBD o MySQL, fizemos a criação e diagramação de um banco de dados de uma rede social fictícia, contendo:

- tabela de usuários
- tabela de postagens
- tabela de curtidas
- tabela de conexões
- tabela de comentários
- tabela de chat

Para isso, foi pensado também nos relacionamentos entre cada tabela, como: qual usuário curtiu determinada postagem, qual usuário fez determinado comentário, quais usuários fizeram uma conexão de amizada, etc.

Foram utilizados os conceitos de DDL e DML para a manipulação e gerenciamento de banco de dados, além da criação de uma diagrama ER:

![DER](https://github.com/pedrosampaio1/SQL_rede_social/assets/105110684/2aeaeb2e-6c3a-4d64-805a-d8f4ec30e1a1)

## Questões propostas para a atividade:
1. Liste todos os usuários cadastrados em ordem alfabética.
2. Liste as postagens, exibindo os nomes dos usuários, ordenando pelas mais recentes.
3. Liste os comentários, exibindo o usuário e a postagem de origem.
4. Liste todas as postagens, ordenando pelas que receberam mais curtidas.
5. Informe quantas curtidas cada postagem obteve, ordenando pela menor quantidade.
6. Liste as conexões, exibindo os nomes dos usuários, ordenando pela conexão mais antiga para a mais recente.
7. Lista as conversas do chat, exibindo os nomes dos usuários envolvidos na conversa.
8. Informe qual o usuário que realizou mais postagens e a sua quantidade.
9. Informe qual a postagem que obteve maior engajamento, ou seja, a que recebeu mais curtidas.
10. Exiba o usuário que tem o amigo com a idade mais avançada.
