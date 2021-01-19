use AdventureWorks2017
select * from person.Person

select top 10 * from person.person
--top ifadesi yanina gelen deger kadar liste siralar
--burada 10 tane liste gelir

select top 10 BusinessEntityID, FirstName, LastName from person.person

select top 10 BusinessEntityID,FirstName + ' ' + LastName as [Full Name] from person.person

select top 10 percent * from person.person
--percent ile tablonun %'si kadarini yazdirir, yukarida %10'u yazilacak
--toplam tablo adedinin %10'u gelecek, bunu karistirma