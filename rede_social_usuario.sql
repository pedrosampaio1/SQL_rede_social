CREATE TABLE usuario (
  ID int PRIMARY KEY,
  Nome varchar(45),
  Data_nascimento date,
  Endereco_de_email varchar(45),
  senha varchar(45) UNIQUE,
  Foto_de_perfil boolean);
  
INSERT INTO usuario (ID, Nome, Data_nascimento, Endereco_de_email, senha, Foto_de_perfil) 
  VALUES
  (0001, 'Maria de Deus', '1997-08-14', 'mdeus@gmail.com', 'senha1', true),
  (0002, 'João de Deus', '1989-05-01', 'deusj@gmail.com', 'senha2', false),
  (0003, 'Mariana Silva', '1997-10-25', 'marimari@gmail.com', 'senha3', true),
  (0004, 'Franciso Chagas', '1974-06-12', 'fchagas@gmail.com', 'senha4', true),
  (0005, 'Pedro Pedigrew', '1996-10-21', 'ppedro@gmail.com', 'senha5', true),
  (0006, 'Carlito Chavez', '1952-03-02', 'carlito@gmail.com', 'senha6', false),
  (0007, 'João Alberto', '2007-12-06', 'joaoalberto@gmail.com', 'senha7', true),
  (0008, 'Daniel Maia', '2000-07-14', 'danimaia@gmail.com', 'senha8', true),
  (0009, 'Ingrid Sena', '1999-11-25', 'isena@gmail.com', 'senha9', false),
  (0010, 'Danilo Carlos', '1990-08-21', 'daniloc@gmail.com', 'senha10', false);
  
  
  SELECT * FROM usuario;
    