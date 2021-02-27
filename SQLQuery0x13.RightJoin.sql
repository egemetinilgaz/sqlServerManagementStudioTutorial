use AdventureWorks2017
--right join
--left koin'in tam tersi
--2. tabloyu baz alarak hareket ediyor
--2. tablodaki degerleri getirir
--1. tabloda ayni degerler varsa getirir
--farkli degerleri null dondurur

select
ssp.BusinessEntityID as BusinessEntityIDSSP,
--karismasin diye yeniden isim verdim
ssp.Bonus,
pp.BusinessEntityID as BusinessEntityIDPP,
--karismasin diye yeniden isim verdim
pp.FirstName,
pp.LastName
from
Sales.SalesPerson as SSP
right join person.Person as PP
on SSP.BusinessEntityID = pp.BusinessEntityID

--person.person'daki istedigim kayitlari getirdi
--sales.person'daki es kayitlari getirdi, bulamadiklarini null dondu