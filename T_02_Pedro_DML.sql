USE T_Gufos

INSERT INTO Usuarios (Nome, Email, Senha, Permissao) VALUES ('Cleyton','c.y@gmail.com','123456','Administrador')

INSERT INTO Usuarios (Nome, Email, Senha, Permissao) VALUES ('Rayssa','Rayssa@gmail.com','r123456','Aluno')



INSERT INTO Categorias(Nome)
VALUES ('Jogos'),('Meetup'),('Futebol')




INSERT INTO Eventos (Titulo,Descricao,DataEvento,Ativo,Localizacao,IdCategorias)
VALUES ('Campeonato de Ping-Pong'
		,'Campeonato entre as turmas de tec e de redes e dev'
		,GETDATE(), 1,'Alameda barão de Limeira, 539',1)

		INSERT INTO Eventos (Titulo,Descricao,DataEvento,Ativo,Localizacao,IdCategorias)
VALUES ('Futebol no terraço','Do nucleo de desenvolvimento Senai '
		,'2019-08-06T18:00:00',1,'Alameda barão de Limeira, 539',3)

		SELECT * FROM Eventos
		SELECT * FROM Usuarios
		SELECT * FROM Categorias ORDER BY IdCategoria asc;
		 
INSERT INTO Presencas (IdEvento, IdUsuario) VALUES (1,2),(1,1),(2,2)

update Eventos set IdCategorias = 3 where IdEvento = 3 