-- Base de datos de contactanos
CREATE DATABASE IF NOT EXISTS db_landing_page;
-- Poniendo en uso la base de datos
USE db_landing_page;

-- Creando la tabla de registro contactanos
CREATE TABLE CONTACTANOS (
ID INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
NOMCON VARCHAR(200),
CORRCON VARCHAR(100),
ASUCON VARCHAR(150),
DESCON TEXT
);

-- Ingresando registros a la tabla contactanos
INSERT INTO CONTACTANOS (NOMCON, CORRCON, ASUCON, DESCON)
VALUES ('Alex Doe', 'alex.doe@gmail.com', 'Matricula', 'Solicitud de matricula para 1° grado');

-- Listando los registros de la tabla contactanos
SELECT * FROM CONTACTANOS;