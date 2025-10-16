/*
=============================================================
Database Creation and Table Setup Script (MySQL Version) ENGLISH
=============================================================
Script Purpose:
    This script creates a new MySQL database named 'MyDatabase'. 
    If the database already exists, it is dropped to ensure a clean setup. 
    The script then creates two tables: 'customers' and 'orders'
    with their respective schemas, and populates them with sample data.
    
WARNING:
    Running this script will drop the entire 'MyDatabase' database if it exists, 
    permanently deleting all data within it. Proceed with caution and ensure you 
    have proper backups before executing this script.
*/

DROP DATABASE IF EXISTS MyDatabase;
CREATE DATABASE MyDatabase;
USE MyDatabase;

-- ======================================================
-- Table: customers
-- ======================================================
DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
    id INT NOT NULL,
    first_name VARCHAR(50),
    country VARCHAR(50),
    score INT,
    PRIMARY KEY (id)
);

-- Insert customers data
INSERT INTO customers (id, first_name, country, score) VALUES
    (1, 'Maria', 'Germany', 350),
    (2, ' John', 'USA', 900),
    (3, 'Georg', 'UK', 750),
    (4, 'Martin', 'Germany', 500),
    (5, 'Peter', 'USA', 0);

-- ======================================================
-- Table: orders
-- ======================================================
DROP TABLE IF EXISTS orders;

CREATE TABLE orders (
    order_id INT NOT NULL,
    customer_id INT NOT NULL,
    order_date DATE,
    sales INT,
    PRIMARY KEY (order_id)
);

-- Insert orders data
INSERT INTO orders (order_id, customer_id, order_date, sales) VALUES
    (1001, 1, '2021-01-11', 35),
    (1002, 2, '2021-04-05', 15),
    (1003, 3, '2021-06-18', 20),
    (1004, 6, '2021-08-31', 10);

/*
=============================================================
Script de Creación de Base de Datos y Configuración de Tablas (Versión MySQL) CASTELLANO
=============================================================
Propósito del Script:
    Este script crea una nueva base de datos MySQL llamada 'MyDatabase'.
    Si la base de datos ya existe, se elimina para asegurar una configuración limpia.
    Luego, el script crea dos tablas: 'customers' (clientes) y 'orders' (pedidos)
    con sus respectivos esquemas, y las rellena con datos de ejemplo.

ADVERTENCIA:
    Ejecutar este script eliminará completamente la base de datos 'MyDatabase' si ya existe,
    borrando de forma permanente todos los datos que contenga. Procede con precaución
    y asegúrate de tener copias de seguridad adecuadas antes de ejecutar este script.
*/

DROP DATABASE IF EXISTS MyDatabase;
CREATE DATABASE MyDatabase;
USE MyDatabase;

-- ======================================================
-- Tabla: customers (clientes)
-- ======================================================
DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
    id INT NOT NULL,
    first_name VARCHAR(50),
    country VARCHAR(50),
    score INT,
    PRIMARY KEY (id)
);

-- Insertar datos de clientes
INSERT INTO customers (id, first_name, country, score) VALUES
    (1, 'Maria', 'Alemania', 350),
    (2, 'John', 'EE.UU.', 900),
    (3, 'Georg', 'Reino Unido', 750),
    (4, 'Martin', 'Alemania', 500),
    (5, 'Peter', 'EE.UU.', 0);

-- ======================================================
-- Tabla: orders (pedidos)
-- ======================================================
DROP TABLE IF EXISTS orders;

CREATE TABLE orders (
    order_id INT NOT NULL,
    customer_id INT NOT NULL,
    order_date DATE,
    sales INT,
    PRIMARY KEY (order_id)
);

-- Insertar datos de pedidos
INSERT INTO orders (order_id, customer_id, order_date, sales) VALUES
    (1001, 1, '2021-01-11', 35),
    (1002, 2, '2021-04-05', 15),
    (1003, 3, '2021-06-18', 20),
    (1004, 6, '2021-08-31', 10);
