Select first_name as "Nombre", last_name as "Apellido" from actor; -- Le das un alias a los campos first_name y last_name

Select concat("Nombre: ", first_name, " Apellido: " , last_name) as "Nombre Completo" from actor; -- Concateneo de nombre y apellido ademas de cambiarle el nombre a la comluna con el alias AS