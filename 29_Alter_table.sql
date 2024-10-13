create table contactos_4(
num_contacto int primary key auto_increment,
nombre_contacto varchar(25),
edad_contacto int,
check (edad_contacto >= 18) -- restringe que la edad de los contactos sea igual o mayor a 18 años
);

alter table contactos_4
add id int; -- agrego un campo

alter table contactos_4
rename column num_contacto to num_telefono; -- modifico de numero_contacto a numero_telefono

alter table contacto_4
modify column description varchar(45), -- Modificar los valores de los datos
drop column description; -- Eliminar la descipcion de los datos