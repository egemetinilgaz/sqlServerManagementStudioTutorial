use AdventureWorks2017 --db kullanimi icin tsql kisminda use komutu kullaniriz

--select: tablolarimizin icindeki datalara ulasmamizi saglar
--genel kullanimi;
--select kolonlarimin ismi veya * ile tum kolonlari secerim
--from ile de hangi tabloda islem yapacagimi soylerim => tablo_adi
select * from person.person --tablo icindeki tum kolonlari getirir
--cok onerilen bir kullanim degildir, programin yavas calismasina neden olur
select 
BusinessEntityID,
PersonType,
FirstName,
LastName
from person.Person

--odev:production.product
--Name
--ProductNumber
--Color
--ProductID
--select ile sirala

select
Name,
ProductNumber,
Color,
ProductID
from Production.Product

---------------------------------------------------------------------

--kolonlari birlestirme ve yeniden isimlendirme
--person.person tablosundan deger cektim
select
Title,
FirstName,
LastName
from person.Person

--kolon birlestirdim
select Title, FirstName + ' ' + LastName from person.Person
-- + operatoru ile birlestirdim ve ' ' ile arada bir bosluk birakarak yazdim

--kolon isimlendirme
select
Title as Unvan, --as operatoru ile yapabilirim
FirstName Isim, --as operatoru kullanmadan da yazabilirim
LastName Soyisim, FirstName + ' ' + LastName as [Isim Soyisim]
--kolon icinde bosluk birakmak icin [] kullanmalisin
from person.Person