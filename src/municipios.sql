-- 01 CATALOGO DE MUNICIPIOS

create table if not exists municipios(
	id_municipio integer not null primary key,
	municipio varchar(25) not null
);

insert into municipios(id_municipio, municipio)
select
	distinct cast(clave_municipio as integer), 
	 municipio 
from denue_inegi_09_ di 
order by clave_municipio;
