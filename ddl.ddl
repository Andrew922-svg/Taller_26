CREATE DATABASE taller;
USE taller;

CREATE TABLE IF NOT EXISTS producto(
codigo int(10) AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(100),
precio DOUBLE,
codigo_fabricante int(10)
);

CREATE TABLE IF NOT EXISTS fabricante(
codigo INT(10) AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(100)
);

ALTER TABLE producto 
ADD CONSTRAINT fk_codigo
FOREIGN KEY (codigo_fabricante) REFERENCES fabricante(codigo);