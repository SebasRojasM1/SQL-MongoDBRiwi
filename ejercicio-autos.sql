-- Active: 1709085131260@@bbcpw4c089mchxnbdyry-mysql.services.clever-cloud.com@3306@bbcpw4c089mchxnbdyry
show DATABASES;

/*TABLA DE MARCAS*/
CREATE TABLE marcas (
    id INT PRIMARY KEY, 
    marca VARCHAR(45)
);

INSERT INTO marcas (id, marca)
VALUES 
(1, 'Nissan'), 
(2, 'Toyoya')

SELECT * FROM marcas



/*TABLA TIPO DE VEHICULO*/
CREATE TABLE tipo_vehiculo (
    id INT PRIMARY KEY, 
    tipo_vehiculo VARCHAR(45) NOT NULL, 
    marcas_id INT
)

INSERT INTO tipo_vehiculo (id, tipo_vehiculo)
VALUES
(1, 'Deportivo'),
(2, 'Sedan')

SELECT * FROM tipo_vehiculo




/*TABLA COLORES*/
CREATE TABLE colores (
    id INT PRIMARY KEY, 
    color VARCHAR(45)
)

INSERT INTO colores (id, color) 
VALUES 
(1, 'Negro'), 
(2, 'Blanco')

SELECT * FROM colores



/*TABLA VEHICULOS*/
/* Vinculamos tablas fuertes: colores_id, tipo_vehiculo_id y tipo_vehiculo_marcas_id*/
CREATE TABLE vehiculos (
    id INT PRIMARY KEY, 
    modelo INT(4), 
    placa VARCHAR(10), 
    colores_id INT, 
    tipo_vehiculo_id INT, 
    tipo_vehiculo_marcas_id INT
)

INSERT INTO vehiculos (id, modelo, placa)
VALUES
(1, 2000, "ABC123"),
(2, 2015, "DFG456"),
(3, 2005, "HIJ789"),
(4, 2018, "KLM123"),
(5, 2007, "SLW541"),
(6, 2019, "TRW854"),
(7, 2001, "HGT548"),
(8, 2014, "FRE784"),
(9, 2009, "YTH747"),
(10, 2016, "GTA348")


SELECT * FROM vehiculos



/* KEY FOREING en las tablas necesarias */
ALTER TABLE tipo_vehiculo
ADD FOREIGN KEY (marcas_id) REFERENCES marcas(id)

ALTER TABLE vehiculos
ADD FOREIGN KEY (colores_id) REFERENCES colores(id)

ALTER TABLE vehiculos
ADD FOREIGN KEY (tipo_vehiculo_id) REFERENCES tipo_vehiculo(id)


/* INNER JOIN para vincular tablas y llamar los datos de ellas*/
SELECT * FROM vehiculos INNER JOIN colores
/*WHERE vehiculos.colores_id = colores.id*/


SELECT * FROM vehiculos INNER JOIN tipo_vehiculo
/*WHERE vehiculos.tipo_vehiculo_id = tipo_vehiculo.id*/


SELECT * FROM vehiculos
    INNER JOIN colores
    INNER JOIN tipo_vehiculo
    INNER JOIN marcas
WHERE
    vehiculos.tipo_vehiculo_id = tipo_vehiculo.id
    and vehiculos.colores_id = colores.id
    and tipo_vehiculo.marcas_id = marcas.id