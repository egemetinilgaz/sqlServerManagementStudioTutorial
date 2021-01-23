use AdventureWorks2017
--where kullanimi
select * from person.person

--person tablosunda personType degeri EM(employee:calisan) olanlari getir
--where ile yapacagiz
--kullanimi;
--where dersi 1
--select * from person.person where sart veya sartlarimiz
select * from person.person
where
PersonType = 'EM'

--adi Ken olan kayitlari getir
select * from person.person
where
FirstName = 'Ken'

select * from Production.Product
--color'i black olan kayitlarin, name, productNumber ve color degerini getir
select Name, ProductNumber, Color from Production.Product
where
Color = 'Black'

--where dersi 2
--birden fazla sart ile sorgu yapmak
--c# icin && --> sql icin and ve operatoru
--c# icin || --> sql icin or veya operatoru

--and operatoru --> her sarti saglamali
select * from Production.Product
where
Color = 'Black' and SafetyStockLevel = 500

--or operatoru --> bir sarti saglasa da yeterli
select * from Production.Product
where
Color = 'Black' or SafetyStockLevel = 500

--where dersi 3
-- > buyuktur
select * from Production.Product
where
SafetyStockLevel > 500
-- < kucuktur
select * from Production.Product
where
SafetyStockLevel < 500
-- >= buyuk esittir
select * from Production.Product
where
SafetyStockLevel >= 500
-- <= kucuk esittir
select * from Production.Product
where
SafetyStockLevel <= 500
-- = esittir
select * from Production.Product
where
Color = 'Black'
-- and
select * from Production.Product
where
Color = 'Black' and SafetyStockLevel = 500
--or
select * from Production.Product
where
Color = 'Black' or SafetyStockLevel = 500
-- != esit degildir
select * from Production.Product
where
SafetyStockLevel != 500 --500 haric butun kayitlari getir