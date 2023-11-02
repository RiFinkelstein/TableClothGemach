--1. I need to know which tablecloths are the most popular so I can buy more of them.
select TimesTaken = count(*), c.TableclothId
from Customer c 
group by c.TableclothId
order by TimesTaken desc
--2. I need to know which tablecloths have gotten lost.
select *
from Customer c 
where datediff(day, DateTaken, getdate()) >= 14 and DateReturned is null
--3. I need to know if any tablecloths have not been used in 2 months so I can store them away.
select *
from Customer c 
where datediff(month, DateReturned, getdate()) >= 2
--4. What is the total donations that I made so I know if I have enough money for more.
select TotalDonation = sum(c.Donation)
from Customer c 