select * from lon_lat;
select * from countries;

select

select
	c.country,
	c.iso_code,
	ll.lat,
	ll.lon
from countries as c
inner join lon_lat as ll on c.iso_code = ll.iso_3;
