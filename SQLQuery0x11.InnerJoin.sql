use AdventureWorks2017
--iliskisel veri tabani
--kisilerKisiselBilgiler
--id
--isim
--soyisim
--cinsiyet
--...

--mesela yukaridaki tablo icin 1 id'li bir kisi olsun
--1- Ege Metin ILGAZ - Erkek

--kisilerIletisimBilgileri
--id
--kisiID (1- Ege Metin ILGAZ - Erkek)
--iletisimTip (gsm, sabit hat, email, faks)
--deger

-- 1 - 1 // ilk 1 (iletisimTip), ikinci 1 (1- Ege Metin ILGAZ - Erkek)

-- 1 - 1 - gsm - 0 531 111 11 11
-- 2 - 1 - sabit hat - 0 216 111 11 11
-- 3 - 1 - email - ilgazzegemetin@gmail.com

--inner join: iki veya daha fazla tabloyu bilestirir
--genel yazim;
-- select * from 
-- tablo_1 inner join tablo_2 
-- on tablo1.kolonadi = tablo2.kolonadi

--onemli olan nokta, ilgili deger 2 tabloda da olmali

select * from person.Person
select * from HumanResources.Employee

--inner join kullanimi

select
*
from person.Person
inner join HumanResources.Employee
on person.BusinessEntityID = Employee.BusinessEntityID
--on ifadesi ile yukaridaki 2 tablo arasinda bag kuruyorum

--takma isim kullanarak yapiyorum
select
*
from person.Person as PP
inner join HumanResources.Employee as HRE
on PP.BusinessEntityID = HRE.BusinessEntityID

--her alani degil de, belli alanlari almak istiyorum
select
PP.BusinessEntityID,
pp.FirstName,
pp.LastName,
pp.PersonType,
hre.BirthDate,
hre.JobTitle,
hre.MaritalStatus
from person.Person as PP
inner join HumanResources.Employee as HRE
on PP.BusinessEntityID = HRE.BusinessEntityID