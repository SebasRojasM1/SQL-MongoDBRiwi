-- Active: 1709085131260@@bbcpw4c089mchxnbdyry-mysql.services.clever-cloud.com@3306@bbcpw4c089mchxnbdyry
show DATABASES;

/*CATEGORIA*/
CREATE TABLE categoria(
        id INT PRIMARY KEY AUTO_INCREMENT,
        nombreCategoria VARCHAR(50)
)

INSERT INTO categoria(nombreCategoria) 
VALUES("Limpieza"),
("Lacteos"),
("Aseo"),
("Vegetales"),
("Frutas"),
("Enlatados"),
("Carnes")

SELECT * FROM categoria;




/*PRODUCTO*/
CREATE TABLE producto(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombreProducto VARCHAR(155),
    precio VARCHAR(155),
    categoria_id INT
)

INSERT INTO producto(nombreProducto, precio)
VALUES("Frijoles enlatados", "11500"),
("Cebolla", "1500"),
("Jabon Rey", "2500"),
("Suavizante", "6800"),
("Manzana", "800"),
("Pera", "900"),
("Leche entera", "3000"),
("Chilli en carne", "13000"),
("Queso costeño", "5000"),
("Pechuga de pollo", "8500"),
("Churrasco", "21000"),
("Huevos", "8000")

SELECT * FROM producto;



/*CLIENTE*/
CREATE TABLE cliente_market(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(155),
    apellido VARCHAR(155),
    telefono VARCHAR(155),
    direccion VARCHAR(155)
)

INSERT INTO cliente_market(nombre, apellido, telefono, direccion)
VALUES("Eduardo", "Espinoza", "254750245", "Carrera 25 n69-45"),
("Alex", "Rojas", "25487422", "Carrera 85 n24-10"),
("Luisa", "Gonzalez", "325475420", "Calle 12 n39-75"),
("Maria", "Piñeres", "35478520", "Carrera 28 n64-02"),
("Miguel", "Marin", "32545425", "Calle 65 n45-21"),
("Patricia", "Galvis", "32547685", "Calle 25 n69-45"),
("Estefania", "Zea", "35475042", "Carrera 65 n12-24")

SELECT * FROM cliente_market




/*PEDIDO DEL CLIENTE*/
CREATE TABLE pedidos_cliente(
    id INT PRIMARY KEY AUTO_INCREMENT,
    cliente_id INT,
    estado VARCHAR(155),
    fechaPedido VARCHAR(155)  
)

insert into pedidos_cliente(estado, fechaPedido)VALUES
("Sin completar", 2024-03-01),("Pendiente", 2024-02-29),("Completada", 2024-03-21)

/*DETALLES DEL PEDIDO*/
CREATE TABLE detalles_pedidos(
    pedido_id INT,
    producto_id INT,
    cantidad INT,
    FOREIGN KEY (pedido_id) REFERENCES pedidos_cliente(id),
    FOREIGN KEY (producto_id) REFERENCES producto(id)
)

insert INTO detalles_pedidos()

/*Relacionar*/
ALTER TABLE producto
ADD FOREIGN KEY (categoria_id) REFERENCES categoria(id)

ALTER TABLE pedidos_cliente
ADD FOREIGN KEY (cliente_id) REFERENCES cliente_market(id)




/*  InnerJoin*/
SELECT cliente_market.nombre, cliente_market.apellido, producto.nombreProducto, detalles_pedidos.cantidad, categoria.nombreCategoria  FROM detalles_pedidos
INNER JOIN categoria
INNER JOIN producto
INNER JOIN cliente_market
INNER JOIN pedidos_cliente
WHERE
detalles_pedidos.pedido_id = pedidos_cliente.id AND
detalles_pedidos.producto_id = producto.id AND
producto.categoria_id = categoria.id AND
pedidos_cliente.cliente_id = cliente_market.id