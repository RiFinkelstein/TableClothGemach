/*
Customer
	CustomerId pk
	TableclothId varchar(10) not null unique not blank
	TableclothColor varchar(20) not null not blank
	TableclothSize decimal(6,2) not null greater than zero
	TableclothShape varchar(20) not null not blank
	DateTaken date not null must be tuesday
	DateReturned date null must be monday
	NumSets int not null greater than between 1 and 6
	Deposit as 100 * sets
	donation decimal (6,2) not null greater than negative
	CustomerName varchar(100) not null  not blank
	CustomerPhoneNumber varchar(15) not null not blank
	Lost case when DateReturned - DateTaken >= 2 weeks then 1 else 0
	constaint DateTaken <= DateReturned
	constraint either datereturned is null and deposit is not zero or opposite
    constraint that specifications match up(too complicated to write here...:)
*/