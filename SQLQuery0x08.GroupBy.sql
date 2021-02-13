use AdventureWorks2017
--group by
select Color, sum(SafetyStockLevel) as SafetyStockLevelSum, 
avg(ListPrice) as ListPriceAvg from Production.Product
--sum(toplam) --avg(ortalama)
where color is not null --null olmayan renkleri getirdi
group by Color --gruplamayi color'a gore yapiyorum
having Color != 'Black' --tekrar bir kriter ile black olanlari kaldirdim
--aslinda having'i where gibi kullandim
--group by'da having gruplama islemi bitince, where gibi calisir

--group by having
select Color, sum(SafetyStockLevel) as SafetyStockLevelSum, 
avg(ListPrice) as ListPriceAvg from Production.Product
--sum(toplam) --avg(ortalama)
-- where color is not null --null olmayan renkleri getirdi
group by Color --gruplamayi color'a gore yapiyorum
having Color is not null
--having: ben bir tabloyu grupladim, grupladigim tabloda where kullanmak istiyorum