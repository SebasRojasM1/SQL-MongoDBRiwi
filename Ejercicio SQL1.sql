show DATABASES;

/*ESTUDIANTES*/
CREATE TABLE students(
    id_estudiante INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(45) NOT NULL,
    apellidos VARCHAR(55) NOT NULL,
    edad VARCHAR(45) NOT NULL
)

/*Agregar info a tabla*/
INSERT INTO students(nombre, apellidos, edad)
VALUES
("Sebastian", "Rojas", "23"),
("Camilo", "Sosa", "18"),
("Luisa", "Perez", "23"),
("Andrea", "Gonzalez", "28"),
("Maria", "Restrepo", "17"),
("Jessica", "Pelaez", "25"),
("Pedro", "Marin", "29"),
("Maria", "Rojas", "20"),
("Estefania", "Atehortua", "18"),
("Camilo", "Sanchez", "21")

/*Imprimir la tabla*/
SELECT * FROM students


/*Eliminar tabla*/
DROP TABLE students 





/*MATERIAS*/
CREATE TABLE materias(
    id_materia INT PRIMARY KEY AUTO_INCREMENT,
    nombre_materia VARCHAR(45),
    id_estudiante INT,
    Foreign Key (id_estudiante) REFERENCES students(id_estudiante)
)

/*Agregar info a tabla*/
INSERT INTO materias(nombre_materia)
VALUES("Matematicas"), 
("Informatica"), 
("Biologia"),
("Educacion fisica"), 
("Historia"), 
("Ingles"), 
("Lengua castellana"), 
("Etica"), 
("Quimica"), 
("Artistica")


/*Imprimir tabla*/
SELECT * FROM materias

/*Eliminar tabla*/
DROP TABLE materias




/*NOTAS*/
CREATE TABLE notas(
    id_notas INT AUTO_INCREMENT PRIMARY KEY,
    id_estudiante  INT,
    id_materia INT,
    nota FLOAT,
    Foreign Key (id_estudiante) REFERENCES students(id_estudiante),
    Foreign Key (id_materia) REFERENCES materias(id_materia)
)

/*Agregar elementos*/
INSERT INTO notas (id_estudiante, id_materia, nota) 
VALUES 
(1, 1, 3.4),/*Estudiante 1*/
(1, 3, 4.1),
(1, 5, 4.5),
(2, 4, 2.5),/*Estudiante 2*/
(2, 8, 3.3),
(2, 6, 4.0),
(3, 1, 3.7),/*Estudiante 3*/
(3, 1, 4.8),
(3, 1, 3.1),
(4, 1, 4.3),/*Estudiante 4*/
(4, 1, 4.3),
(4, 1, 4.3)



/*Imprimir tabla*/
SELECT * FROM notas


/*Eliminar tabla*/
DROP TABLE notas