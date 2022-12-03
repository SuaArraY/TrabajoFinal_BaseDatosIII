-- creacion de la base de datos
CREATE DATABASE db_buenasalud;
USE db_buenasalud;

-- creacion de las tablas paciente, departamento y empleado

-- Tabla paciente
CREATE TABLE paciente (
   inscripcion INT NOT NULL AUTO_INCREMENT,
   apellido varchar(255) NOT NULL,
   direccion varchar(1000) NULL,
   fecha_nac date NOT NULL,
   sexo char(1) NOT NULL,
   nss varchar(255) NOT NULL,
   PRIMARY KEY (`inscripcion`)
 ) 

 -- Tabla departamento

CREATE TABLE departamento (
   nro_Departamento int NOT NULL AUTO_INCREMENT,
   dpt_Nombre varchar(100) UNIQUE NOT NULL,
   PRIMARY KEY (nro_Departamento)
 ) 


-- tabla empleado
CREATE TABLE empleado (
   emp_no int NOT NULL AUTO_INCREMENT,
   apellido varchar(255) NOT NULL,
   oficio varchar(255) NOT NULL,
   direccion varchar(255) NULL,
   fecha_nacimiento date NOT NULL,
   fecha_alt date NULL,
   salario double NOT NULL,
   comision double  NULL,
   dept_no int NOT NULL,
   PRIMARY KEY (emp_no),
   FOREIGN KEY (dept_no) REFERENCES departamento (nro_Departamento)
 ) 


 -- Insertar datos en las tablas


-- Insertar datos en la tabla departamento
INSERT INTO departamento VALUES 
(1,'HEMATOLOGIA'),(2,'GINECOLOGIA'),
(3,'PEDIATRIA'),(4,'PSIQUIATRIA'),
(5,'NEUROLOGIA'),(6,'REHABILITACION'),
(7,'CUIDADOS INTENSIVOS'),(8,'UNIDAD DE DIALISIS'),
(9,'RADIOLOGIA'),(10,'LABORATORIO'),
(11,'TOPICO'),(12,'QUIROFANO'),
(13,'MATERNIDAD'),(14,'ODONTOLOGIA'),
(15,'FARMACIA'),(16,'UROLOGIA'),
(17,'OFTAMOLOGIA'),(18,'URGENCIAS'),
(19,'LIMPIEZA'),(20,'SEGURIDAD'),
(21,'PRUEBA'),(22,'sala espera');
