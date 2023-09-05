/*
	1) Choose a business scenario that can be captured in one table.
	2) Describe it as if you are the owner.
	3) List several reports that the business needs.
	4) Clarify some details with various questions and the owner's answers.
	5) Share your business scenario and spec with fellow students and instructor, do not include SQL.
	6) Create DB and tables to support business scenario.
	7) Populate with sample data
	8) Accept completed SQL and mark it
*/

/*Business Scenario: Tablecloth Gemach

I have a Tablecloth Gemach in my house, and I want to make it more organized to keep track of each tablecloth. Here are the details:
I need to know the color, size, and shape of each tablecloth.
I take a $100 deposit that most people leave as a donation at the end.
Pickup is on Tuesday, and drop-off is on Monday. Every week, there is a turnover of tablecloths, and sometimes people take them for longer than a week.
Each tablecloth has a unique ID.
For each tablecloth, I need to know who took it out, when they took it, and when they returned it, and if they donated money.
I need to have the person's phone number in case they don't bring back the tablecloths.
Once the customer returns the tablecloth, the deposit money switches to 0, and if they donate money, it goes into the donations column.

Questions:
- Is there a minimum and/or maximum amount of time to take the tablecloths?
  - There is no minimum or maximum, but usually, people will pick it up on Tuesday and drop off on Monday unless they have an exception, and that won't be longer than a week.

- Can someone take a tablecloth in advance?
  - Yes, they can reserve it as far in advance as possible. People won't come earlier than 3 months in advance. If they don't reserve it, the tablecloths they want are not available.

- Do you have more than one of each tablecloth?
  - Yes, they come in sets of 6, so someone can reserve as many sets of 6 as they need.

Reports:
1. I need to know which tablecloths are the most popular so I can buy more of them.
2. I need to know which tablecloths have gotten lost.
3. I need to know if any tablecloths have not been used in 2 months so I can store them away.
4. What is the total donations that I made so I know if I have enough money for more.
*/

/* sample Data: in order TableclothID, Color, size, shape, Date Taken, Date Returned, Amount of sets taken, deposit amount, donation, Customer name, customer phone number
bl30R, Blue, 30inches, round, July 11 2023, july 17 2023, 3 0, 100, Eli Deutch, 917-555-3232
Re30R, Red, 30 inches, round, July 18 2023, july 31 2023, 2, 0, 200, Yocheved Green, 201-987-4783
gr62re, green, 62 inches by 72 inches, rectangle, July 4 2023,null, null, 1, 100, null, sara Bloom, 401-254-3865
pu62re, purple, 62 inches by 72 inches, rectangle, July 11 2023, july 17 2023, 2, 0, 150, Rochel Goldberg, 516-467-9023
bl62re, blue,  62 inches by 72 inches, rectangle, July 4 2023,null, july 10 2023, 3, 0, 500, Chani Lowi, 516-904-3829
bl30R, Blue, 30inches, round, July 18 2023, july 24, 2023, 3 0, 100, Gitty Neuburg, 917-764-3232
*/

