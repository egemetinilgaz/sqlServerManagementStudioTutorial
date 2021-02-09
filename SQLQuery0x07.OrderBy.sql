use AdventureWorks2017
--order by kullanimi
--siralama islemine yarar, standart kullanimda A-Z'dir

select * from Production.Product
where
ProductNumber like '%20%'
order by ProductID desc
--desc yani descent, Z-A siralar

select * from Production.Product
where
ProductNumber like '%20%'
order by ProductID asc
--asc yani ascent, A-Z siralar