
Select *,
case
when edad > 17 then "Es mayor de edad"
else "Es menor de edad"
end as Textoedad
from actor;

-- Es una consulta con logica booleana



Select *,
case
when edad > 17 then true
else false
end as Textoedad
from actor;

-- Aca es una funcion booleana con true y false

Select *,
case
when edad > 18 then "Es mayor de edad"
when edad = 18 then "Acaba de cumplir la mayoria de edad"
else "Es menor de edad"
end as "Etapa de la vida"
from actor;

-- Una consulta un poco mas compleja con dos precondiciones