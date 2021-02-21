use AdventureWorks2017
--left join
--bir tablo baz alinir ve left join dedikten sonra
--diger tabloda, ilk olarak baz aldigimiz degerler var mi ona bakar
--degerleri esit olan kayitlar gelir
--degerleri esit olmayan kayitlar null doner

select
Person.BusinessEntityID,
person.FirstName,
person.LastName,
Employee.*
from
Person.Person left join
HumanResources.Employee
on Person.BusinessEntityID = Employee.BusinessEntityID

--odev
select * from Production.Product --buradan birkac tablo getir
select * from Sales.SalesOrderDetail --buradan butun tabloyu getir

select 
Product.ProductID,
Product.Name,
Product.Color,
SalesOrderDetail.*
from 
Production.Product left join
Sales.SalesOrderDetail
on Product.ProductID = SalesOrderDetail.ProductID