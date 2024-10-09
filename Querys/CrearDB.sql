CREATE DATABASE MascotasModernas
GO

USE MascotasModernas
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE dbo.Usuario
(
	id INT IDENTITY(1, 1) PRIMARY KEY
	, Username VARCHAR(64) NOT NULL
	, Correo VARCHAR(64) NOT NULL
	, Password VARCHAR(64) NOT NULL
	, Telefono VARCHAR(12) NOT NULL
);
"Server=DESKTOP-NVUTANU\\SQLEXPRESS; Initial Catalog=DBTarea2; user id= sa; pwd= 123.elSQLs.; Integrated Security=True; TrustServerCertificate=true"
CREATE TABLE dbo.Mascota
(
	id INT IDENTITY(1, 1) PRIMARY KEY
	, idUsuario INT NOT NULL
	, Nombre VARCHAR(32) NOT NULL
	, Raza VARCHAR(16) NOT NULL
	, Edad INT NOT NULL
	, Color VARCHAR(16) NOT NULL
	, FOREIGN KEY (idUsuario) REFERENCES dbo.Usuario(id)
);

CREATE TABLE dbo.BitacoraEvento
(
	id INT IDENTITY(1, 1) PRIMARY KEY
	, idPostByUser INT NOT NULL
	, Descripcion VARCHAR(256) NOT NULL
	, PostInIP VARCHAR(32) NOT NULL
	, PostTime DATETIME NOT NULL
	, FOREIGN KEY (idPostByUser) REFERENCES dbo.Usuario(id)
);

CREATE TABLE dbo.DBError(
	ErrorID INT IDENTITY(1,1) NOT NULL,
	UserName VARCHAR(100) NULL,
	ErrorNumber INT NULL,
	ErrorState INT NULL,
	ErrorSeverity INT NULL,
	ErrorLine INT NULL,
	ErrorProcedure VARCHAR(MAX) NULL,
	ErrorMessage VARCHAR(MAX) NULL,
	ErrorDateTime DATETIME NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]