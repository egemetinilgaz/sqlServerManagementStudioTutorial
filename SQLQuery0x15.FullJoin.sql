use AdventureWorks2017
--iliskisel tablolarda veri sorgulama (full join)
--inner join ile left join birlesimidir aslinda
--her iki tabloya da bakiyor
select * from person.Person
select * from Sales.SalesPerson

select
person.BusinessEntityID,
person.FirstName,
person.LastName,
SalesPerson.*
from person.Person
full join Sales.SalesPerson
on person.BusinessEntityID = SalesPerson.BusinessEntityID