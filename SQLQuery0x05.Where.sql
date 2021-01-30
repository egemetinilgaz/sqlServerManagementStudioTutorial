use AdventureWorks2017

--daha genis (sabit olmayan) arama yapmamizi saglar
--ornekler;
--ProductCode degeri 'AB' ile baslayan kayitlari getir
--ProductCode degeri icerisinde 1290 olan kayitlari getir
--ProductCode degerinin son degeri 9 olan kayitlari getir

--kullanimi;
--kolon like '%a' basinda ne olursa olsun, sonunda 'a' olan kayit getir
--kolon like 'a%' 'a' ile baslayan ve devami ne olursa olsun
--kolon like '%a%' basinda ve sonunda ne olursa olsun icerisinde 'a' olan
--kolon like '_a' ilk karakteri ne olursa olsun ikinci karakteri 'a' olan
--kolon like '_b_66_' _'nin yerinde herhangi bir sey olabilir,
--_ tek haneli herhangi bir karakter anlamina gelir

--kullanim;
-- select * from kolonAdi
-- where
-- kolonAdi like ' '

--like '%a'
select ProductNumber, Name, ProductID from Production.Product
where
ProductNumber like '%1'

--like 'a%'
select ProductNumber, Name, ProductID from Production.Product
where
ProductNumber like 'B%'

--like '%R%'
select ProductNumber, Name, ProductID from Production.Product
where
ProductNumber like '%R%'

--like '_a'
select * from Production.Product
where
ProductNumber like '_K-_64Y-40'

--odevler
--HumanResouce.Employee tablosunda,
--NationalIDNumber kolonunun icerisinde '96' gecen
--JoobTitle'i 'Research' ile baslayan
--Cinsiyeti (Gender) 'M' olan
--calisan kayitlarini getir

select * from HumanResources.Employee
where
NationalIDNumber like '%96%' and
JobTitle like 'Research%' and
Gender = 'M'

--Sales.SalesOrderDetail tablosunda
--ProductID degeri 100'den buyuk, 1000'den kucuk olan
--CarrierTrackingNumber kolonunun son iki degeri 'AE' olan
--sati detaylarini listele

select * from Sales.SalesOrderDetail
where
ProductID > 100 and ProductID < 1000 and
CarrierTrackingNumber like '%AE'