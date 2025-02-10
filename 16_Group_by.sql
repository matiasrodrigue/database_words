Select count(edad), edad from actor group by (edad) order by edad desc; -- Se agrupan los valores pudiendo contabilizar la cantidad que se repiten
Select sum(edad), edad from actor group by (edad) order by edad desc; -- Se agrupan los valores pudiendo sumar los valores que se repiten
