use TableclothGemachDB
go

drop table if exists Customer
go

create table dbo.Customer(
    CustomerId int not null identity primary key,
    TableclothId varchar(10) not null constraint u_Customer_TableclothId_cannot_be_blank check(TableclothId <> ''),
    CustomerName varchar(100) not null constraint ck_Customer_CustomerName_cannot_be_blank check(CustomerName <> ''),
    CustomerPhoneNumber varchar(15) not null constraint ck_Customer_CustomerPhoneNumber_cannot_be_blank check(CustomerPhoneNumber <> ''),
    TableclothColor varchar(20) not null constraint ck_Customer_TableclothColor_cannot_be_blank check(TableclothColor <> ''),
    TableclothSize varchar(100) not null constraint ck_Customer_TableclothSize_cannot_be_blank check(TableclothSize <> ''),
    TableclothShape varchar(20) not null constraint ck_Customer_TableclothShape_cannot_be_blank check(TableclothShape <> ''),
    DateTaken datetime not null, constraint ck_Customer_DateTaken_must_be_on_a_Tuesday check(datepart(weekday, DateTaken) = 3),
    DateReturned datetime null, constraint ck_Customer_DateReturned_must_be_on_a_Monday check(datepart(weekday, DateReturned) = 2),
    NumSets int not null constraint ck_Customer_NumSets_must_be_between_1_and_6 check(NumSets between 1 and 6),
    Deposit as case when DateReturned is null then 100 * NumSets else 0 end persisted,
    Donation decimal(6,2) constraint ck_Customer_Donation_cannot_be_negative_number check(Donation >= 0),
    constraint ck_Customer_DateTaken_is_before_DateReturned check(DateTaken <= DateReturned),
--AS Writing this constraint out was too long and it wasn't allowed.
    constraint ck_Customer_DateReturned_and_lost_and_Deposit_and_Donation_match_up_correctly
        check((DateReturned is null and Deposit = 0 and Donation >= 100) or 
              (DateReturned is null and Deposit >= 100) or
              (DateReturned is not null and Deposit = 0))
)
go