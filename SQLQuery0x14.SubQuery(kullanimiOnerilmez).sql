use AdventureWorks2017
--SubQuery
--kullanilmasi cok tavsiye edilmez ama bilmekte fayda var
--bunun yerine join'ler kullanilabilir

select
BusinessEntityID,
FirstName,
LastName,
(select BirthDate from HumanResources.Employee where BusinessEntityID = Person.BusinessEntityID),
(select MaritalStatus from HumanResources.Employee where BusinessEntityID = Person.BusinessEntityID)
from person.Person

--yukaridaki kullanim onerilmez
--bunun yerine join kullanimlari daha hizli islemler yapmamiza yarar
--ornegin;

select
person.BusinessEntityID,
person.FirstName,
person.LastName,
Employee.BirthDate,
Employee.MaritalStatus
from
Person.Person inner join
HumanResources.Employee
on person.BusinessEntityID = Employee.BusinessEntityID

--ancak SubQuery'ide asagidaki gibi kullanimlar olabilir
select * from
(select * from person.Person) as personeller
--bu islemin sonucundan sonra sorgulayabildigim bir tablom oldu
--mesela group by ile bir sorgu yaptik
--bu sekilde tablo gibi kullanir, uzerine bir sorgu daha atariz

