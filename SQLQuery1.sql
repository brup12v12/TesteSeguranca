CREATE DATABASE TesteSeguranca

GO
USE TesteSeguranca

GO
CREATE TABLE Usuarios
(
     UsuarioID INT PRIMARY KEY IDENTITY, 
	 Email VARCHAR (100) UNIQUE NOT NULL, --VARCHAR = String 
	 Senha VARCHAR (50) NOT NULL 
)
GO
INSERT INTO Usuarios VALUES ('exemplo@email.com', 1234)

GO
SELECT * FROM Usuarios

--AS = nomear;
SELECT UsuarioID AS 'ID', Email, HASHBYTES('MD2', Senha) AS 'Senha HASH' FROM Usuarios WHERE UsuarioID = 1
SELECT UsuarioID AS 'ID', Email, HASHBYTES('MD4', Senha) AS 'Senha HASH' FROM Usuarios WHERE UsuarioID = 1
SELECT UsuarioID AS 'ID', Email, HASHBYTES('MD5', Senha) AS 'Senha HASH' FROM Usuarios WHERE UsuarioID = 1
SELECT UsuarioID AS 'ID', Email, HASHBYTES('SHA', Senha) AS 'Senha HASH' FROM Usuarios WHERE UsuarioID = 1
SELECT UsuarioID AS 'ID', Email, HASHBYTES('SHA1', Senha) AS 'Senha HASH' FROM Usuarios WHERE UsuarioID = 1
SELECT UsuarioID AS 'ID', Email, HASHBYTES('SHA2_256', Senha) AS 'Senha HASH' FROM Usuarios WHERE UsuarioID = 1
SELECT UsuarioID AS 'ID', Email, HASHBYTES('SHA2_512', Senha) AS 'Senha HASH' FROM Usuarios WHERE UsuarioID = 1

--Prestar atenção com o WHERE;