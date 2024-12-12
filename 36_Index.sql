Select * from dueños_de_mascotas;

Create index idx_name on dueños_de_mascotas(nombre_mascota); -- creacion de indice sobre el nombre, para un solo valor

Select * from dueños_de_mascotas where nombre_mascota = "Cassius"; 

Create index idx_name_color on dueños_de_mascotas(nombre_mascota,color_mascota); -- creacion de indice sobre el nombre, para varios valores