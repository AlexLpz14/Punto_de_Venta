DROP DATABASE punto_de_venta IF NOT EXISTS;
CREATE DATABASE punto_de_venta;
CREATE TABLE usuarios(
	id_usuarios int not null auto_increment primary key,
	nombre_usuarios varchar(255) not null,
	user_usuarios varchar(255) unique not null,
	password varchar(255) not null
);

CREATE TABLE productos(
	codigo_productos int(10) not null unique primary key unsigned,
	nomre_productos varchar(255) not null,
	precio_productos float(8,2) unsigned not null,
	descripcion_productos varchar(255)
);

INSERT INTO productos VALUES(1009283456,'Pan de coco', 5.00, 'Pan echo a base de coco y leche');
INSERT INTO productos VALUES(1234654343,'Pay de queso', 14.00, 'Pay de queso con fruta de adorno');
INSERT INTO productos VALUES(1293812938,'Pastel de 3 leches', 134.00,'');


INSERT INTO usuarios VALUES(1,'Alexis', 'alexlpz','alexlpz');
INSERT INTO usuarios VALUES(2,'Heriberto', 'heriberto','heriberto');
INSERT INTO usuarios VALUES(3,'admin', 'admin','admin');

