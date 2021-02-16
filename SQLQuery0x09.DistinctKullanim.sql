use AdventureWorks2017
--distinct kullanimi
--distinct ifadesi tablonun belli kolonlarinda tekrar eden verilerin bir adet olacak sekilde cekilmesine olanak saglar
select distinct Color from Production.Product
--Production.Product icerisinde color kolonunu listeler

--once where icerisindeki sorgu calisacak
--daha sonra
--select ProductID, ProductNumber, Name, Color from Production.Product calisacak
select ProductID, ProductNumber, Name, Color from Production.Product
where
ProductID in 
--asagidaki kisim, productIDin'in bir parametresi oldu
--artik ana sorgudaki productID kismi degil burasi calisacak
-- ProductNumber, Name, Color bunlar normal calismaya devam edecek
(
select distinct ProductID from Sales.SalesOrderDetail
)

--once select distinct ProductID from Sales.SalesOrderDetail calisir
select Color, sum(ListPrice) from Production.Product
where
ProductID in
(
select distinct ProductID from Sales.SalesOrderDetail
)
group by Color
having Color is not null
