-- Inserting data into Tables 
/*
  When inserting data, start with the independent tables
  and then go from least to most dependent tables.
  Dependence is determined by the number of foreign keys a table has,
  with independence being no foreign keys.
*/

-- Table TipoPlano
INSERT INTO TiposPlanos(TipoPlano) VALUES('BASICO');
INSERT INTO TiposPlanos VALUES ('PREMIUM');
INSERT INTO TiposPlanos VALUES ('MASTER'),('PLUS ADVANCED');

SELECT * FROM TiposPlanos;

-- Table TiposConsulta
INSERT INTO TiposConsulta VALUES('Primeira Consulta', 60, 200),
								('Retorno', 30, 720),
								('Emergencia', 120, 1200);
SELECT * FROM TiposConsulta;

-- Table StatusConsultas
INSERT INTO StatusConsultas VALUES('Agendada'),('Cancelada'),('Realizada');

SELECT * FROM StatusConsultas;

UPDATE StatusConsultas
SET StatusConsulta = 'Concluida'
WHERE StatusConsulta = 'Realizada';

-- Table Especialidades
INSERT INTO Especialidades VALUES
('Pediatra','Cuida das crianças'),
('Cardiologista','Cuida do coração'),
('Otorrinolaringologista','Esse fala por si só'),
('Dermatologista',''),
('Urologista','Cuida dos homens');

SELECT * FROM Especialidades;

-- Table Enderecos
INSERT INTO Enderecos VALUES
('Rua Armando Garlippe', 2,NULL,'Vila Xavier','Araraquara',14810455),
('Avenida São Jorge', 11000,'Ap 2','Condomínio Bela Vita','São Carlos',14233099),
('Rua Napoleão', 181,NULL,'Santa Gemma','Bauru',14100100),
('Avenida São Geraldo',NULL,'Praça','Centro','Araraquara',14849511),
('Avenda Portugal', 540,NULL,'Jardim Europa','Araraquara',14555232);

SELECT * FROM Enderecos;

-- Table Convenios
INSERT INTO Convenios VALUES
('Vida Maxima','vidamax.com.br',77220852000119),
('UniMED','unimed.com.br',11158481000184),
('Mais Um Convenio',NULL,15239216000181),
('Convenio Duplo','doubleconvenio.com',05533410000111);

SELECT * FROM Convenios;

-- Table Medicos
INSERT INTO Medicos VALUES
('SP 256834', 'José', 'da Silva', '2022-11-29'),
('SP 728452', 'Marcela', 'Honda', '2022-11-28'),
('SC 146235', 'Gisele', 'Mendonça', '2024-04-18'),
('RJ 256834', 'Felipe', 'Calabrez', '2025-03-31');

SELECT * FROM Medicos;

-- Table TelefonesMedicos
INSERT INTO TelefonesMedicos VALUES
(55,12,94752746,1),
(55,16,93788572,1),
(55,12,99887123,2),
(55,48,99012210,3),
(55,21,97561881,4),
(55,16,93243326,3);

SELECT * FROM TelefonesMedicos;

-- Table TelefonesConvenios
INSERT INTO TelefonesConvenios VALUES
(55,12,55423132,1),
(55,12,77654665,2),
(55,16,88878778,3),
(55,16,31243124,4);

SELECT * FROM TelefonesConvenios;

-- Table Pacientes
INSERT INTO Pacientes VALUES
('Maria', 'Aparecida', 77994830080, '1950-01-01', 4),
('Antônio', 'Lopes', 93596401070, '1977-08-24', 2),
('Florinda', 'Françi', 89711121077, '1939-09-11', 1),
('George', 'Françi', 21436878004, '1980-12-07', 1)

SELECT * FROM Pacientes;

-- Table TelefonesPacientes
INSERT INTO TelefonesPacientes VALUES
(55,16,999882222,3),
(55,16,938893224,4),
(55,12,991123444,4),
(55,16,901222847,5),
(55,12,982701833,6),
(55,16,995565665,3);

SELECT * FROM TelefonesPacientes;

-- Table Emails
ALTER TABLE Emails 
ALTER COLUMN Email VARCHAR(30) NOT NULL;

INSERT INTO Emails VALUES
('mariaparecida@gmail.com',3),
('lopessssant@hotmail.com',4),
('floresflorinda@outlook.com',5),
('quehomem22@gmail.com',6);

SELECT * FROM Emails;

-- Table PacientesParticulares
INSERT INTO PacientesParticulares VALUES
(3,250.75),
(4,350);

SELECT * FROM PacientesParticulares;

-- Table MedicosEspecialidades
INSERT INTO MedicosEspecialidade VALUES
(1,8),
(2,4),
(3,7),
(3,5),
(4,6),
(4,8),
(3,4);

SELECT * FROM MedicosEspecialidade;

-- Table PacientesConveniados
INSERT INTO PacientesConveniados VALUES
(1,6,78834952,'2030-10-22',3),
(2,5,3255434,'2028-02-28',2),
(3,6,59893350,'2027-08-30',1),
(3,5,57893345,'2029-07-11',3),
(4,5,548282,'2025-11-27',4);

SELECT * FROM PacientesConveniados;

-- Table Consultas
INSERT INTO Consultas VALUES
('2025-12-09 09:00:00',4,1,NULL,'',3,3),
('2026-11-05 14:33:21',6,3,'Esteve num acidente de carro','Hemorragia interna e fratura nas costelas',4,3),
('2025-11-29 08:00:00',4,3,'Reclama de dores de cabeça frequente, vê se continua após tratamento','COVID-19',5,4),
('2025-11-06 10:30:00',4,2,NULL,'',6,1),
('2025-12-17 10:30:00',5,1,NULL,'',5,3);

SELECT * FROM Consultas;