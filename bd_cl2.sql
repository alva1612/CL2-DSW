Create database Academico2022
go
Use Academico2022
go
Set dateFormat dmy
go
create table tb_curso(
	codcurso int primary key,
	nomcurso varchar(255) not null
)
go
insert tb_curso 
Values(1,'Visual Basic'),(2,'C#'),(3,'Node JS'),(4,'Phyton'),(5,'React JS')
go
create table tb_horario(
	codhorario int primary key,
	codcurso int references tb_curso,
	fecinicio datetime,
	fecterminio datetime null,
	vacantes int
)
go

create table tb_registro(
	idvacante int identity(1,1) primary key,
	codhorario int references tb_horario,
	fregistro datetime,
	alumno varchar(255),
	email varchar(255)
)
go

CREATE PROCEDURE dbo.uspListarCursos
AS   
    SELECT *
    FROM  dbo.tb_curso;
GO

CREATE PROCEDURE dbo.uspListarHorarios 
    @f1 datetime,   
    @f2 datetime   
AS   
    SELECT h.codhorario as 'Código', h.codcurso as 'Cod Curso', h.fecinicio as 'Inicio',
    h.fecterminio as 'Término', h.vacantes as 'Vacantes'
    FROM dbo.tb_horario as h
    WHERE h.fecinicio BETWEEN @f1 AND @f2;
GO

CREATE PROCEDURE dbo.uspInsertHorario 
	@ch int,
	@cc int,
    @fi datetime
AS   
	insert tb_horario
	Values(@ch,@cc, @fi, DATEADD(day, 28,@fi), 25)    
GO

uspInsertHorario 100,1,'1-6-2022'
uspInsertHorario 101,2,'2-6-2022'
uspInsertHorario 103,1,'10-06-2022'
uspInsertHorario 104,3,'10-06-2022'
uspInsertHorario 105,2,'15-06-2022'
uspInsertHorario 106,1,'18-06-2022'
uspInsertHorario 107,5,'21-06-2022'
go
