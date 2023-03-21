-- 06 DATOS DE CONTACTO DE ESTABLECIMIENTO

create table if not exists datos_de_contacto(
	id_clee varchar(50) not null primary key,
	telefono varchar(20),
	correo_electronico varchar(80),
	pagina_web varchar(100)
);

insert into datos_de_contacto(id_clee, telefono, correo_electronico, pagina_web)
select 
	clee,
	telefono,
	correo_electronico,
	pagina_web 
from denue_inegi_09_ di 
where
	telefono is not null or correo_electronico is not null or pagina_web is not null
order by clee