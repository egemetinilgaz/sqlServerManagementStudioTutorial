use AdventureWorks2017
--iliskisel tablolarda veri sorgulama ODEV
select * from Production.Product
select * from Production.ProductSubcategory
select * from Production.ProductCategory

--yukarida listeyi birbirlerine join yontemleri ile bagla ve
--Product.ProductID
--Product.Name
--Product.Color
--ProductSubcategory.Name
--Product.ListPrice
--ProductCategory.Name

--degerlerini alarak listele

select
Product.ProductID,
Product.Name as ProductName,
Product.Color as ProductColor,
ProductSubcategory.Name as ProductSubcategoryName,
ProductCategory.Name as ProductCategoryName,
Product.ListPrice
from
Production.Product 
left join
Production.ProductSubcategory
on Product.ProductSubcategoryID = ProductSubcategory.ProductSubcategoryID
left join --left join kullandigim icin uyumlu olmayanlar da geldi
--inner join kullansaydim, yalnizca uyumlu olanlar gelecekti
Production.ProductCategory
on ProductSubcategory.ProductCategoryID = ProductCategory.ProductCategoryID

--ODEV 2
--ProductCategoryName
--ProductSubcategoryName
--grubu olustur
--daha sonra
--urun adedi ve toplam fiyatlarini goster

select
ProductCategoryName,
ProductSubcategoryName,
--ilk once
--ProductCategoryName
--ProductSubcategoryName'in toplam urun adedini buluyorum
count(ProductID) as ProductCount,
--count: toplam adedi buluyorum
sum(ListPrice) as ProductListPriceSum
from
(select
Product.ProductID,
Product.Name as ProductName,
Product.Color as ProductColor,
ProductSubcategory.Name as ProductSubcategoryName,
ProductCategory.Name as ProductCategoryName,
Product.ListPrice
from
Production.Product 
left join
Production.ProductSubcategory
on Product.ProductSubcategoryID = ProductSubcategory.ProductSubcategoryID
left join --left join kullandigim icin uyumlu olmayanlar da geldi
--inner join kullansaydim, yalnizca uyumlu olanlar gelecekti
Production.ProductCategory
on ProductSubcategory.ProductCategoryID = ProductCategory.ProductCategoryID) ResultTable
group by
ProductCategoryName,
ProductSubcategoryName
having
ProductCategoryName is not null
