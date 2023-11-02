use TableclothGemachDB
go
delete Customer 
go

insert Customer(TableclothId, CustomerName, CustomerPhoneNumber, TableclothColor, TableclothSize, TableclothShape, DateTaken, DateReturned, NumSets, Donation)
select 'bl30R', 'Eli Deutch', '917-555-3232', 'Blue', '30 inches', 'round', '2023-07-11', '2023-07-17', 3, 100
union select 'Re30R', 'Yocheved Green', '201-987-4783', 'Red', '30 inches', 'round', '2023-07-18', '2023-07-31', 2, 200
union select 'gr62re', 'sara Bloom', '401-254-3865', 'green', '62 inches by 72 inches', 'rectangle', '2023-07-04', null, 1, null
union select 'pu62re', 'Rochel Goldberg', '516-467-9023', 'purple', '62 inches by 72 inches', 'rectangle', '2023-07-11', '2023-07-17', 2, 150
union select 'bl62re', 'Chani Lowi', '516-904-3829', 'blue',  '62 inches by 72 inches', 'rectangle', '2023-07-04', '2023-07-10', 3, 500
union select 'bl30R', 'Gitty Neuburg', '917-764-3232', 'Blue', '30 inches', 'round', '2023-07-18', '2023-07-24', 3, 100
