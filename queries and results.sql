/*budgets increase
----------------
*/
UPDATE CLUB
SET Budget =
CASE   WHEN Budget > 700 THEN Budget * 1.2
       WHEN (300 < Budget AND Budget <= 700) THEN Budget * 1.5
       WHEN 300 >= Budget THEN Budget * 2
END;

/*
10 row(s) updated. 0.02 seconds
*/

------------------------------------------------------------------------------------------------------

/*
n3atab el sabeh
*/
---------------
SELECT GUARDIAN.Name, GUARDIAN.Email, GUARDIAN.Phone_Number, SPORTS_TEAM.Location_Of_Training
FROM STUDENT, SPORTS_TEAM, PLAYS_WITH, GUARDIAN
WHERE STUDENT.First_Name = 'Charbel'
    AND STUDENT.Last_Name = 'Naim'
    AND STUDENT.ID = PLAYS_WITH.Student_ID
    AND GUARDIAN.Student_ID = STUDENT.ID
    AND PLAYS_WITH.Sport_Team_ID = SPORTS_TEAM.TEAM_ID;
/*
result:
-------
NAME	    EMAIL	            PHONE_NUMBER	LOCATION_OF_TRAINING
Fadi Naim	fadi.naim@gmail.com	03134511	    Basketball court
*/
------------------------------------------------------------------------------------------------------

/*
club representatives
*/
---------------
SELECT STUDENT.First_Name, STUDENT.Last_Name, STUDENT.Email, JOINS.Club_Name, JOINS.Role
FROM STUDENT, JOINS
WHERE STUDENT.ID=JOINS.Student_ID
    AND (JOINS.Role='President' OR JOINS.Role='Vice President');

/*
result:
-------
FIRST_NAME	LAST_NAME	EMAIL				        CLUB_NAME		    ROLE
Salim		Hammoud		salim.hammoud@army.edu		Math Club		    President
Farah		Itani		farah.itani@army.edu		Physics Club		President
Mohamad		Makknieh	mohamad.makknieh@army.edu	Science Club		Vice President
Sara		Harb		sara.harb@army.edu		    Chemistry Club		President
Yara		Ghalayini	yara.ghalayini@army.edu		English Club		President
Rana		Salman		rana.salman@army.edu		Music Club		    Vice President
Assem		Farhat		assem.farhat@army.edu		Animal Care Club	President
Roy		    Solh		roy.solh@army.edu		    Science Club		President
Tony		Zaiter		toni.zaiter@army.edu		Arabic Club		    President
Charbel		Naim		charbel.naim@army.edu		Sports Club		    President
Elias		Yaghi		elias.yaghi@army.edu		Music Club		    President
Omar		Shayah		omar.shayah@army.edu		Computer Club		President
*/

------------------------------------------------------------------------------------------------------
/*
office and contact information of instructor
*/
-------------------------------------
SELECT EMPLOYEE.Email, EMPLOYEE.ID, EMPLOYEE.Phone_Number, OFFICE.Room_Number, OFFICE.Room_Building
    FROM EMPLOYEE, OFFICE
    WHERE EMPLOYEE.First_Name='Mazen' AND EMPLOYEE.Last_Name='Karake' AND EMPLOYEE.Role='Instructor'
    AND EMPLOYEE.ID=OFFICE.Employee_ID;

/*
result:
-------
EMAIL                       ID     PHONE_NUMBER    ROOM_NUMBER    ROOM_BUILDING
mazen.karake@army.edu    I202123    03326598         14         Kinderhaus
*/


------------------------------------------------------------------------------------------------------
/*
get record of peoples that were in contact with a covid case
*/
------------------------------------------------------------
--Saturday news broke out that student that has id#:S202110 has caught covid we need to retrieve the people that
--he was in contact with during the whole week. We need to know what courses this student is enrolled and after
--we need to get the contact information of this students classmates and instructors and urge them to take a pcr test.

SELECT DISTINCT EMPLOYEE.First_Name, EMPLOYEE.Last_Name, EMPLOYEE.Email, EMPLOYEE.Phone_Number
FROM EMPLOYEE, TEACHES
WHERE EMPLOYEE.ID=TEACHES.Employee_ID
    AND TEACHES.Course_CRN IN (SELECT ENROLLS_IN.Course_CRN
                               FROM ENROLLS_IN
                               WHERE ENROLLS_IN.Student_ID='S202110');


SELECT DISTINCT STUDENT.First_Name, STUDENT.Last_Name, STUDENT.Email, STUDENT.Phone_Number
FROM STUDENT, ENROLLS_IN
WHERE STUDENT.ID=ENROLLS_IN.STUDENT_ID AND ENROLLS_IN.Student_ID!='S202110'
    AND ENROLLS_IN.Course_CRN IN (SELECT ENROLLS_IN.Course_CRN
                               FROM ENROLLS_IN
                               WHERE ENROLLS_IN.Student_ID='S202110');
/*
result:
-------
(instructors)
FIRST_NAME	LAST_NAME	EMAIL	PHONE_NUMBER
Elie	Wehbe	elie.wehbe@army.edu	03376772
Fadi	Costa	fadi.costa@army.edu	70448559
Mazen	Karake	mazen.karake@army.edu	03326598

(students)
FIRST_NAME	LAST_NAME	EMAIL	PHONE_NUMBER
Charbel	Naim	charbel.naim@army.edu	76134511
Roula	Attar	roula.attar@army.edu	03918120
Ibrahim	Sleit	ibrahim.sleit@army.edu	03918115
Tony	Zaiter	toni.zaiter@army.edu	78131211
Rana	Harb	rana.harb@army.edu	76111222
Salim	Hammoud	salim.hammoud@army.edu	03918111
Yara	Ghalayini	yara.ghalayini@army.edu	03918116
Rana	Salman	rana.salman@army.edu	03918118
Omar	Shayah	omar.shayah@army.edu	70131211
Mohamad	Makknieh	mohamad.makknieh@army.edu	03918113
Farah	Itani	farah.itani@army.edu	03918112
Elias	Yaghi	elias.yaghi@army.edu	76145611
*/

------------------------------------------------------------------------------------------------------
/*
un-enroll/drop students courses whose average is less then 5/20
*/
---------------------------------------------------------------

DELETE FROM ENROLLS_IN
WHERE ENROLLS_IN.STUDENT_ID IN (
	SELECT STUDENT.ID FROM STUDENT WHERE STUDENT.Average<5);

/*
result
-------
3 row(s) deleted. 0.01 seconds
*/
------------------------------------------------------------------------------------------------------
/*
honors student information
*/
--a student qualifies to be on the honor list if he is taking more than 1 course
--and has an average large than or equal to 16

CREATE TABLE Student_CourseCount AS
SELECT STUDENT.ID AS ID, COUNT(STUDENT.ID) AS Nb_Of_Courses
FROM STUDENT, ENROLLS_IN
WHERE STUDENT.ID=ENROLLS_IN.Student_ID AND STUDENT.Average>=16
GROUP BY STUDENT.ID;

SELECT STUDENT.First_Name, STUDENT.Last_name, STUDENT.Email
FROM STUDENT, Student_CourseCount
WHERE STUDENT.ID=Student_CourseCount.ID AND Student_CourseCount.Nb_Of_Courses>=3;

DROP TABLE Student_CourseCount;

/*
results
-------

Table created. 0.01 seconds
___________________________
FIRST_NAME	LAST_NAME	EMAIL
Ibrahim	Sleit	ibrahim.sleit@army.edu
Yara	Ghalayini	yara.ghalayini@army.edu
Roy	Solh	roy.solh@army.edu
Omar	Shayah	omar.shayah@army.edu

4 rows selected. 0.01 seconds
___________________________

Table dropped. 0.01 seconds

*/
----------------------------------------------------------------------------------
/*
third party bus company
*/
SELECT STUDENT.First_Name, STUDENT.Last_Name, STUDENT.Email, STUDENT.Phone_Number, STUDENT.City
FROM STUDENT
WHERE (STUDENT.Bus_Taken IS NULL)
     AND (STUDENT.City!='Beirut' AND STUDENT.City!='Byblos');

/*
results

FIRST_NAME	LAST_NAME	EMAIL	PHONE_NUMBER	CITY
Mohamad	Makknieh	mohamad.makknieh@army.edu	03918113	Zahle
Sara	Harb	sara.harb@army.edu	03918114	Jounieh
Ibrahim	Sleit	ibrahim.sleit@army.edu	03918115	Sidon
Elias	Khoury	elias.khoury@army.edu	03918117	Batroun
Assem	Farhat	assem.farhat@army.edu	03918119	Aley
Tony	Zaiter	toni.zaiter@army.edu	78131211	Baalbek
Charbel	Naim	charbel.naim@army.edu	76134511	Zahle
Elias	Yaghi	elias.yaghi@army.edu	76145611	Sidon
Waleed	Khoury	waleed.khoury@army.edu	76131310	Tyre
Rani	Salem	rani.salem@army.edu	71913710	Sawfar
*/

----------------------------------------------------------------------------------

/*
utilities to fix or to replace
*/

SELECT UTILITY.SN, UTILITY.Name
FROM UTILITY
WHERE UTILITY.State='Needs Repair'
     AND EXTRACT(YEAR FROM UTILITY.Date_Of_Purchase)+WARRANTY>=2021;

SELECT UTILITY.SN, UTILITY.Name
FROM UTILITY
WHERE UTILITY.State='Needs Repair'
     AND EXTRACT(YEAR FROM UTILITY.Date_Of_Purchase)+WARRANTY<2021;

/*
SN	        NAME
SF5S6FS6	Printer

SN	        NAME
FS56F78S	Calculator
*/

----------------------------------------------------------------------------------

/*
get all participants that attend math contest event
*/

SELECT DISTINCT STUDENT.First_Name, STUDENT.Last_Name, STUDENT.ID, CLUB.Name
FROM CLUB JOIN EVENT ON Name=Club_Name, STUDENT JOIN JOINS ON ID=Student_ID
WHERE EVENT.Event_Name='Math Contest' AND EVENT.Club_Name=JOINS.Club_Name;

/*
FIRST_NAME	LAST_NAME	ID	NAME
Salim	Hammoud	S202100	Math Club
Assem	Farhat	S202108	Math Club
Mohamad	Makknieh	S202102	Math Club
Sara	Harb	S202103	Math Club
Farah	Itani	S202101	Physics Club
Charbel	Naim	S202112	Physics Club
*/
