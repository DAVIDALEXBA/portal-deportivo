create table usuarios(
  id serial,
  nombre varchar(50),
  apellidos varchar(50),
  direccion varchar(100),
  telefono varchar(20),
  correo varchar(100),
  rol varchar(30),
  usuario varchar(50),
  contrasena varchar(60),
  primary key (id)
 );
 
 insert into usuarios(nombre, apellidos, direccion, telefono, correo, rol, usuario, contrasena) values 
 ('Darwin', 'Lopez Lopez', 'Alamos #102', '95123436', 'darwin@gmail.com', 'ADMINISTRADOR','darwin', '1234');