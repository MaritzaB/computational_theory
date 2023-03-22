-- 06 CATALOGO DE CODIGOS POSTALES

create table if not exists codigos_postales(
	id_codigo_postal serial primary key,
	codigo_postal varchar(50) not null
);

insert into codigos_postales(codigo_postal)
select
	distinct codigo_postal
from denue_inegi_09_ di
where codigo_postal is not null 
order by codigo_postal;
