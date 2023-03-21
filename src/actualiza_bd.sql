-- ACTUALIZA TABLA ORIGINAL CON CATALOGO DE MUNICIPIO

-- UPDATE TABLE
alter table denue_inegi_09_ rename column clave_municipio to id_municipio;
alter table denue_inegi_09_ drop column municipio;

-- Sustituye el valor con los datos de la nueva tabla
update denue_inegi_09_ di  
	set id_municipio = m.id_municipio
	from municipios m
	where di.id_municipio = m.municipio;
	
-- Cambia el tipo de datos de esa columna
alter table denue_inegi_09_ alter column id_municipio type int using id_municipio::int;

-- ACTUALIZA TABLA ORIGINAL CON CATALOGO DE ACTIVIDADES

-- UPDATE TABLE
alter table denue_inegi_09_ rename column codigo_actividad to id_actividad;
alter table denue_inegi_09_ drop column nombre_actividad;


-- Sustituye el valor con los datos de la nueva tabla
update denue_inegi_09_ di 
	set id_actividad = a.id_actividad 
	from actividades a
	where cast(di.id_actividad as integer) = a.id_actividad;
	
-- Cambia el tipo de datos de esa columna
alter table denue_inegi_09_ alter column id_actividad type int using id_actividad::int;

-- ACTUALIZA TABLA ORIGINAL CON CATALOGO DE VIALIDADES



-- ACTUALIZA TABLA ORIGINAL CON CATALOGO DE ASENTAMIENTOS

-- ACTUALIZA TABLA ORIGINAL CON CATALOGO DE CENTROS COMERCIALES

-- ACTUALIZA TABLA ORIGINAL CON CATALOGO DE DATOS DE CONTACTO