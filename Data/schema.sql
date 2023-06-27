create table lon_lat(
	country varchar(244),
	iso_3 varchar(255),
	iso_2 varchar(255),
	ioc varchar(255),
	fifa varchar (255),
	lat float,
	lon float,
	iso_name int,
	historical int,
	wikidata varchar(255),
	wikidata_lat float,
	wkikidata_lon float,
	wikidata_label varchar(255),
	wikidata_desc varchar(255)
);

create table countries(
	index int,
	country varchar(255),
	iso_code varchar(255)
);

create view country_coordinates as(
select
	c.country,
	c.iso_code,
	ll.lat,
	ll.lon
from countries as c
inner join lon_lat as ll on c.iso_code = ll.iso_3
);