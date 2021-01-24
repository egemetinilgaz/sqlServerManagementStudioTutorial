use AdventureWorks2017
--ODEVLER
select * from Production.Product
--renk degeri black veya yellow olan kayitlarin ilk 10 tanesini getir
select top 10 * from Production.Product
where
color = 'Black' or color = 'Yellow'

--renk degeri multi olan kayitlarin, standartCost degeri 6'dan buyuk 
--olanlarin, ProductID, Color, Name ve ProductNumber degerlerini
--birlestirerek getir
select ProductID, Color, Name + ' ' + ProductNumber as [Name ProductNumber] from Production.Product
where
Color = 'Multi' and StandardCost > 6

--list price degeri 0'dan buyuk olan kayitlarin toplaminin
--%10 oranina denk olanlari getir
select top 10 percent * from Production.Product
where
ListPrice > 0