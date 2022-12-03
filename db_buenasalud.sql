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
