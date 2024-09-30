Select * from actor where first_name Like "JOHNNY"; -- La busqueda es literal, esactamente valores iguales a "JOHNNY"

Select * from actor where first_name Like "%JO%"; -- La busqueda trae cualquier valor que contenga la palabra "JO" gracias a los %valor% en cada punta

Select * from actor where first_name Like "%NNY"; -- La busqueda trae todos los valores que terminen en "NNY"

Select * from actor where first_name Like "JOHNNY%"; -- La busqueda es literal, esactamente valores iguales a "JOHNNY"


-- LIKE es => Contiene o se parece..