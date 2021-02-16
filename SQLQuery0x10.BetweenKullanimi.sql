use AdventureWorks2017
--between kullanimi ile aralikli degerleri sorgulama
--almis oldugu 2 deger arasindaki kayitlari getirir
select * from Production.Product
where
ProductID between 1 and 500