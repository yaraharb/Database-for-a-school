CREATE TABLE DEPARTMENT(
Name VARCHAR(20) NOT NULL,
Location VARCHAR(20) NOT NULL CHECK
         (
          Location IN('Beirut','Byblos')
         ),
Email VARCHAR(20) NOT NULL CHECK (
    Email LIKE '%@army.edu%'
  ),
Phone_Number CHAR(8) NOT NULL,
PRIMARY KEY (Name)
);


CREATE TABLE EMPLOYEE(
ID CHAR(7) NOT NULL,
First_Name VARCHAR(15) NOT NULL,
Fathers_Name VARCHAR(15),
Last_Name VARCHAR(15) NOT NULL,
City VARCHAR(15) NOT NULL,
Street VARCHAR(15),
Building VARCHAR(15),
Birthday DATE,
Phone_Number VARCHAR(15),
Email VARCHAR(50) NOT NULL CHECK (
    Email LIKE '%@army.edu%'
  ),
Role VARCHAR(20),
Schedule VARCHAR(10) NOT NULL,
Name_of_Department VARCHAR(20) NOT NULL,
SupervisorID CHAR(7),
PRIMARY KEY (ID),
FOREIGN KEY (Name_of_Department) REFERENCES DEPARTMENT(Name),
FOREIGN KEY (SupervisorID) REFERENCES EMPLOYEE(ID)
);


CREATE TABLE BUS(
Plate CHAR(6) PRIMARY KEY,
Bus_Number INT NOT NULL,
Coverage_Area VARCHAR(20),
Capacity INT NOT NULL CHECK(
	Capacity > 0),
Color VARCHAR(20) NOT NULL,
Model VARCHAR(20) NOT NULL,
DriverID CHAR(7) NOT NULL,
FOREIGN KEY (DriverID) REFERENCES EMPLOYEE(ID),
UNIQUE (Bus_Number)
);

CREATE TABLE STUDENT(
ID CHAR(7) NOT NULL,
First_Name VARCHAR(15) NOT NULL,
Fathers_Name VARCHAR(15),
Last_Name VARCHAR(15) NOT NULL,
City VARCHAR(15) NOT NULL,
Street VARCHAR(15),
Building VARCHAR(15),
Birthday DATE,
Phone_Number VARCHAR(15),
Email VARCHAR(50) NOT NULL CHECK
	(
   	 Email LIKE '%@army.edu%'
  	),
Path CHAR(2) NOT NULL CHECK
         (
          Path IN('LS','GS','SE','HP')
         ),
Average FLOAT NOT NULL CHECK
	(
	Average>0 AND Average<=20
	),
Bus_Taken CHAR(6),
FOREIGN KEY (Bus_Taken) REFERENCES BUS(Plate),
PRIMARY KEY (ID)
);


CREATE TABLE CLUB(
Name VARCHAR(30) PRIMARY KEY,
Budget INT NOT NULL CHECK (
	Budget >= 50 AND Budget <= 5000),
Meeting_Time TIMESTAMP WITH TIME ZONE NOT NULL,
Email VARCHAR(40) NOT NULL CHECK (
    Email LIKE '%@army.edu%'
  ),
SupervisorID CHAR(7) NOT NULL,
FOREIGN KEY (SupervisorID) REFERENCES EMPLOYEE(ID)
);


CREATE TABLE ROOM(
Building VARCHAR(30) NOT NULL,
RoomNumber INT NOT NULL,
Capacity INT NOT NULL CHECK(
    Capacity > 0),
Type VARCHAR(40) NOT NULL  CHECK
         (
          Type IN('Class','Office')
         ),
Location VARCHAR(30) NOT NULL CHECK
         (
          Location IN('Beirut','Byblos')
         ),
PRIMARY KEY(Building, RoomNumber)
);


CREATE TABLE COURSE(
CRN CHAR(5) PRIMARY KEY,
Name VARCHAR(30) NOT NULL,
Code CHAR(5) NOT NULL,
Nbr_of_Credits INT NOT NULL CHECK
         (
          Nbr_of_Credits IN(1, 2, 3)
         ),
Course_Time VARCHAR(5) CHECK (Course_Time IN('8:00','9:00','10:00','11:00','12:00','1:00','2:00','3:00')),
Mode_of_Delivery VARCHAR(15) NOT NULL
);


  CREATE TABLE UTILITY(
  SN VARCHAR(30) PRIMARY KEY,
  Name VARCHAR(30) NOT NULL,
  Date_of_Purchase DATE NOT NULL,
  Warranty INT CHECK(
    Warranty >= 0),
  State VARCHAR(20) NOT NULL CHECK
          (
            state IN('Good condition','Needs Repair')
          ),
  Student_ID CHAR(7),
  Employee_ID CHAR(7),
  FOREIGN KEY (Employee_ID) REFERENCES EMPLOYEE(ID),
  FOREIGN KEY (Student_ID) REFERENCES STUDENT(ID)
  );


CREATE TABLE SPORTS_TEAM(
Team_ID INT PRIMARY KEY,
Name  VARCHAR(30) NOT NULL,
Sport_Played VARCHAR(20) NOT NULL,
Location_Of_Training VARCHAR(20),
Time_Of_Training VARCHAR(20)
);


CREATE TABLE EVENT(
Event_Name VARCHAR(30) NOT NULL,
Event_Date DATE NOT NULL,
Event_Type VARCHAR(20) NOT NULL,
Club_Name VARCHAR(30) NOT NULL,
FOREIGN KEY (Club_Name) REFERENCES CLUB(Name),
PRIMARY KEY(Club_Name, Event_Name)
);


CREATE TABLE GUARDIAN(
Student_ID CHAR(7) NOT NULL,
Name VARCHAR(25) NOT NULL,
Phone_Number VARCHAR(15),
Email VARCHAR(50) NOT NULL,
City VARCHAR(20) NOT NULL,
Street VARCHAR(20),
Building VARCHAR(30),
FOREIGN KEY (Student_ID) REFERENCES STUDENT(ID),
PRIMARY KEY(Student_ID, Name)
);


CREATE TABLE OFFICE(
Room_Number INT,
Room_Building VARCHAR(30),
Employee_ID CHAR(7),
FOREIGN KEY (Employee_ID) REFERENCES EMPLOYEE(ID),
FOREIGN KEY (Room_Number, Room_Building) REFERENCES ROOM(RoomNumber, Building),
PRIMARY KEY(Room_Number, Room_Building, Employee_ID)
);


CREATE TABLE PLAYS_WITH(
Student_ID CHAR(7),
Sport_team_ID INT,
FOREIGN KEY (Sport_team_ID) REFERENCES SPORTS_TEAM(Team_ID),
FOREIGN KEY (Student_ID) REFERENCES STUDENT(ID),
PRIMARY KEY(Student_ID, Sport_Team_ID)
);


CREATE TABLE COACHES(
Employee_ID CHAR(7) NOT NULL,
Sport_Team_ID INT NOT NULL,
Role VARCHAR(20) NOT NULL,
FOREIGN KEY (Sport_Team_ID) REFERENCES SPORTS_TEAM(Team_ID),
FOREIGN KEY (Employee_ID) REFERENCES EMPLOYEE(ID),
PRIMARY KEY(Employee_ID, Sport_Team_ID)
);


CREATE TABLE JOINS(
Student_ID CHAR(7) NOT NULL,
Club_Name VARCHAR(20) NOT NULL,
Role VARCHAR(30) NOT NULL,
FOREIGN KEY (Club_Name) REFERENCES CLUB(Name),
FOREIGN KEY (Student_ID) REFERENCES STUDENT(ID),
PRIMARY KEY(Club_Name, Student_ID)
);


CREATE TABLE ENROLLS_IN(
Student_ID CHAR(7) NOT NULL,
Course_CRN CHAR(5) NOT NULL,
FOREIGN KEY (Student_ID) REFERENCES STUDENT(ID),
FOREIGN KEY (Course_CRN) REFERENCES COURSE(CRN),
PRIMARY KEY (Course_CRN, Student_ID)
);


CREATE TABLE TEACHES(
Course_CRN CHAR(5),
Employee_ID CHAR(7),
FOREIGN KEY (Employee_ID) REFERENCES EMPLOYEE(ID),
FOREIGN KEY (Course_CRN) REFERENCES COURSE(CRN),
PRIMARY KEY(Course_CRN, Employee_ID)
);


CREATE TABLE TAKES_PLACE(
Course_CRN CHAR(5) NOT NULL,
Room_Number INT NOT NULL,
Room_Building VARCHAR(30) NOT NULL,
FOREIGN KEY (Course_CRN) REFERENCES COURSE(CRN),
FOREIGN KEY (Room_Number, Room_Building) REFERENCES ROOM(RoomNumber, Building),
PRIMARY KEY(Course_CRN, Room_Number,Room_Building)
);


CREATE TABLE COURSE_DAYS(
Course_CRN CHAR(5) NOT NULL,
Days VARCHAR(10) NOT NULL,
FOREIGN KEY (Course_CRN) REFERENCES COURSE(CRN),
PRIMARY KEY(Course_CRN, Days)
);