use AdventureWorks2017
--in, not in kullanimi
select * from Production.Product
where
ProductNumber
in --asagidaki degerleri iceren kayitlar
--icermeyen kayitlari getirmez
(
'AR-5381',
'BA-8327',
'BE-2349',
'BE-2908',
'BL-2036',
'CA-5965',
'CA-6738',
'CA-7457',
'CB-2903',
'CN-6137'
)

select * from Production.Product
where
ProductNumber
not in --asagidaki degerleri icermeyen kayitlari getirir
--iceren kayitlari getirmez
(
'AR-5381',
'BA-8327',
'BE-2349',
'BE-2908',
'BL-2036',
'CA-5965',
'CA-6738',
'CA-7457',
'CB-2903',
'CN-6137'
)