create database tiendita;
use tiendita;
create table productos(
id_producto int primary key auto_increment,
nombre_producto varchar(50),
descripcion_producto varchar(200),
precio_venta_producto decimal(18),
activo_producto boolean 
);
use tiendita; 
select * from productos; -- read (leer)

insert into productos(nombre_producto, descripcion_producto, precio_venta_producto, activo_producto)
values ("Colgate","crema dental blanqueadora", 4500, 1);

insert into productos(nombre_producto, descripcion_producto, precio_venta_producto, activo_producto)
values 
("don julio 70","bebida alcoholica", 150000, 1),
("pantibon","jabon intimo", 9000, 1),
("trident","chicle", 2000, 1),
("pan chocho","pan", 10000, 1),
("fastivales","gaolletas", 1500, 1),
("jugo del valle","bebida refrescante", 3000, 1),
("salsa de tomate","salsa", 3000, 1),
("trululu","gomas", 3000, 1),
("aceite jhonson","aceite para bebe", 4000, 1),
("jugo jit","bebida refrescante", 3500, 1);

update productos
set nombre_producto = "bubalu"
where id_producto = 7;

delete from productos
where id_producto in (13, 14);


create table proveedores(
id_proveedor int primary key auto_increment,
n_proveedor varchar(50),
apellido_proveedor varchar(50),
telefono int,
email varchar(100),
empresa_provedor varchar(50)
);

select*from proveedores;

insert into proveedores(n_proveedor, apellido_proveedor, telefono, email, empresa_provedor)
values 
("juancho","ramirez", 30220, "juan@gmail.com", "yupi"),
("luisa","sanchez", 302251, "luisaaa@gmail.com", "cocacola"),
("santiago","botero", 315206, "sntgozz@gmail.com", "postobon"),
("felipe","trujillo", 320271, "felipeezz@gmail.com", "cremelao"),
("valentina","mendoza", 33646, "mala@gmail.com", "yumbo");

update proveedores
set telefono = 3177638256
where id_proveedor = 5;

alter table proveedores
add direccion_proveedor varchar(50) after email;

alter table proveedores
drop direccion_proveedor;

update proveedores
set n_proveedor = "mariana", apellido_proveedor = "zapata"
where id_proveedor = 1;