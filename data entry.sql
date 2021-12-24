INSERT INTO DEPARTMENT VALUES('Financial','Beirut','fn_dprt@army.edu','01111111');
INSERT INTO DEPARTMENT VALUES('Special Education','Beirut','spedu_dprt@army.edu','01111112');
INSERT INTO DEPARTMENT VALUES('Science','Byblos','sc_dprt@army.edu','01111113');
INSERT INTO DEPARTMENT VALUES('Literature & Culture','Byblos','ltC_dprt@army.edu','01111114');
INSERT INTO DEPARTMENT VALUES('Transportation','Beirut','art_dprt@army.edu','01111115');
INSERT INTO DEPARTMENT VALUES('Health & Safety','Beirut','hlthS_dprt@army.edu','01111116');
INSERT INTO DEPARTMENT VALUES('Sport','Byblos','sport_dprt@army.edu','01111117');
INSERT INTO DEPARTMENT VALUES('Admission','Beirut','adm_dprt@army.edu','01111118');
INSERT INTO DEPARTMENT VALUES('Human Resources','Byblos','hr_dprt@army.edu','01111119');
INSERT INTO DEPARTMENT VALUES('IT','Byblos','it_dprt@army.edu','01111120');


INSERT INTO EMPLOYEE VALUES('I202129','Elie','Joseph','Wehbe','Beirut','445','Grand',DATE'1998-10-12','03376772','elie.wehbe@army.edu','Head Instructor','M-->F','Science',NULL);
INSERT INTO EMPLOYEE VALUES('I202119','Mostafa','Ali','Marsi','Beirut','963','Solh',DATE'2001-1-30','70981236','mostafa.masri@army.edu','Manager','M-->F','Human Resources',NULL);
INSERT INTO EMPLOYEE VALUES('I202109','Sary','Sleiman','Fahs','Jounieh','Thirteenth','Ghalyini',DATE'1996-7-7','76111120','sary.fahs@army.edu','Bus Driver','M->F','Transportation',NULL);
INSERT INTO EMPLOYEE VALUES('I202100','John','Mark','Khoury','Beirut','First','Safadi',DATE'1992-9-11','76111111','john.khoury@army.edu','Bus Driver','M->F','Transportation','I202109');
INSERT INTO EMPLOYEE VALUES('I202101','Marie','Bassam','Ismail','Byblos','Second','Salman',DATE'2000-2-20','76111112','marie.ismail@army.edu','Bus Driver','M->F','Transportation','I202109');
INSERT INTO EMPLOYEE VALUES('I202102','Yara','Amin','Harb','Tyre','Fifteenth','Solh',DATE'1990-10-1','76111113','yara.harb@army.edu','Bus Driver','M->F','Transportation','I202109');
INSERT INTO EMPLOYEE VALUES('I202103','Jad','Salim','Mayyas','Sidon','Eigth','Khalifeh',DATE'1992-12-5','76111114','jad.mayyas@army.edu','Bus Driver','M->F','Transportation','I202109');
INSERT INTO EMPLOYEE VALUES('I202104','Sophie','Jean-Paul','Rahal','Batroun','Third','Harb',DATE'1994-5-6','76111115','sophie.rahal@army.edu','Bus Driver','M->F','Transportation','I202109');
INSERT INTO EMPLOYEE VALUES('I202105','Omar','Moustafa','Salman','Tripoli','First','Khalaf',DATE'1992-9-19','76111116','omar.salman@army.edu','Bus Driver','M->F','Transportation','I202109');
INSERT INTO EMPLOYEE VALUES('I202106','Mira','Jamil','Hafi','Aley','Tenth','Abedel Baset',DATE'1995-3-4','76111117','mira.hafi@army.edu','Bus Driver','M->F','Transportation','I202109');
INSERT INTO EMPLOYEE VALUES('I202107','Mohamad','Kairm','Itani','Chouf','Eleventh','Zein',DATE'1997-3-30','76111118','mohamad.itani@army.edu','Bus Driver','M->F','Transportation','I202109');
INSERT INTO EMPLOYEE VALUES('I202108','George','Mark','Sidani','Zahle','Seventeenth','Itani',DATE'1999-8-28','76111119','george.sidani@army.edu','Bus Driver','M->F','Transportation','I202109');
INSERT INTO EMPLOYEE VALUES('I202114','Omar','Ali','Itani','Byblos','758','Zeinab',DATE'1995-7-22','70589632','omar.itani@army.edu','Head Coach','M-->F','Sport','I202119');
INSERT INTO EMPLOYEE VALUES('I202115','Jad','Zahi','Aridi','Byblos','164','Farah',DATE'1983-3-3','70152369','jad.aridi@army.edu','TA','M-->F','Sport','I202114');
INSERT INTO EMPLOYEE VALUES('I202110','Rani','Slaiman','Salman','Beirut','785','Khawli',DATE'1990-9-5','70830831','rani.salman@army.edu','Coach','M-->F','Sport','I202114');
INSERT INTO EMPLOYEE VALUES('I202111','Dani','Mazen','Breich','Beirut','242','Ali',DATE'1991-11-13','70963758','dani.breich@army.edu','Coach','M-->F','Sport','I202114');
INSERT INTO EMPLOYEE VALUES('I202112','Mazen','Mohammad','Chatila','Beirut','753','Sky',DATE'1990-4-1','70159863','mazen.chatila@army.edu','Coach','M-->F','Sport','I202114');
INSERT INTO EMPLOYEE VALUES('I202113','Hadi','Ramzi','Harb','Beirut','896','Glow',DATE'1993-5-21','70145489','hadi.harb@army.edu','Coach','M-->F','Sport','I202114');
INSERT INTO EMPLOYEE VALUES('I202116','Jad','Zouhair','Salman','Byblos','854','Anouti',DATE'1976-8-5','70845963','jad.salman@army.edu','TA','M-->F','Science','I202129');
INSERT INTO EMPLOYEE VALUES('I202117','Morwan','Maziad','AbouKarroum','Byblos','148','Khalife',DATE'1956-3-2','70145289','morwan.aboukarroum@army.edu','Accountant','M-->F','Financial','I202119');
INSERT INTO EMPLOYEE VALUES('I202118','Nidal','Adel','ElAchkar','Byblos','741','Harb',DATE'1998-2-6','70481592','nidal.elachkar@army.edu','Secretary','M-->F','Financial','I202119');
INSERT INTO EMPLOYEE VALUES('I202120','Fadi','Joseph','Sarkis','Beirut','78','Sky',DATE'1990-8-8','70514233','fadi.sarkis@army.edu','Instructor','M-->F','Literature & Culture','I202129');
INSERT INTO EMPLOYEE VALUES('I202121','Fadi','Marc','Costa','Beirut','774','Anouti',DATE'1997-10-10','70448559','fadi.costa@army.edu','Instructor','M-->F','Science','I202129');
INSERT INTO EMPLOYEE VALUES('I202122','Joseph','Charbel','Maksoud','Byblos','778','Tall',DATE'2001-5-6','71596324','Joseph.maksoud@army.edu','Instructor','M-->F','Literature & Culture','I202129');
INSERT INTO EMPLOYEE VALUES('I202123','Mazen','Habib','Karake','Beirut','159','Plaza',DATE'2001-7-8','03326598','mazen.karake@army.edu','Instructor','M-->F','Human Resources','I202129');


INSERT INTO BUS VALUES('B11440','1','Beirut', 30, 'White','Toyota', 'I202100');
INSERT INTO BUS VALUES('T11441','2','Beirut', 20, 'White','Toyota','I202101');
INSERT INTO BUS VALUES('S11442','3','Beirut', 35, 'Grey','Toyota','I202102');
INSERT INTO BUS VALUES('J11443','4','Beirut', 25, 'White','Toyota','I202103');
INSERT INTO BUS VALUES('B14444','5','Beirut', 25, 'White','Toyota','I202104');
INSERT INTO BUS VALUES('D11445','6','Byblos', 30, 'Grey','Toyota','I202105');
INSERT INTO BUS VALUES('S11446','7','Byblos', 35, 'White','Zonda','I202106');
INSERT INTO BUS VALUES('C11447','8','Byblos', 25, 'Grey','Zonda','I202107');
INSERT INTO BUS VALUES('Z11448','9','Byblos', 20, 'White','Zonda','I202108');
INSERT INTO BUS VALUES('Z11449','10','Byblos', 25, 'Grey','Zonda','I202109');

INSERT INTO STUDENT VALUES('S202100','Salim','Slaiman','Hammoud','Beirut','Ras el Ain','Farah',DATE'2004-12-5','03918111','salim.hammoud@army.edu','GS',8,'B11440') ;
INSERT INTO STUDENT VALUES('S202101','Farah','Mohamad','Itani','Byblos','Omar el Zeinnie','Abedel khalek',DATE'2010-9-22','03918112','farah.itani@army.edu','LS',12,'Z11449');
INSERT INTO STUDENT VALUES('S202102','Mohamad','Bassam','Makknieh','Zahle','Zouk II','Walid',DATE'2006-5-19','03918113','mohamad.makknieh@army.edu','SE',18,NULL);
INSERT INTO STUDENT VALUES('S202103','Sara','Hassan','Harb','Jounieh','Second 22','Khawli',DATE'2011-6-13','03918114','sara.harb@army.edu','HP',14,NULL);
INSERT INTO STUDENT VALUES('S202104','Ibrahim','Abbas','Sleit','Sidon','Aisha bakar 23','Itani I',DATE'2009-4-6','03918115','ibrahim.sleit@army.edu','GS',17,NULL);
INSERT INTO STUDENT VALUES('S202105','Yara','Ali','Ghalayini','Beirut','Ashrafieh 10','Sleit',DATE'2015-3-10','03918116','yara.ghalayini@army.edu','LS',19,'B14444');
INSERT INTO STUDENT VALUES('S202106','Elias','George','Khoury','Batroun','Zouks 34','Ghalayini',DATE'2005-7-18','03918117','elias.khoury@army.edu','SE',2,NULL);
INSERT INTO STUDENT VALUES('S202107','Rana','Farhan','Salman','Beirut','Kamil 34','Abbas',DATE'2007-10-30','03918118','rana.salman@army.edu','HP',15,'S11442');
INSERT INTO STUDENT VALUES('S202108','Assem','Ahmad','Farhat','Aley','Michel','Shine',DATE'2008-2-21','03918119','assem.farhat@army.edu','GS', 17.8, NULL);
INSERT INTO STUDENT VALUES('S202109','Roula','Jad','Attar','Byblos','Third 12','Mira',DATE'2003-1-1','03918120','roula.attar@army.edu','LS', 19.8, 'C11447');
INSERT INTO STUDENT VALUES('S202110','Roy','Mark','Solh','Beirut','Kouraytem111','Mark B',DATE'2004-9-11','71131211','roy.solh@army.edu','LS',19,'B11440');
INSERT INTO STUDENT VALUES('S202111','Tony','Hisham','Zaiter','Baalbek','Hamra 111','Hisham B',DATE'2004-9-11','78131211','toni.zaiter@army.edu','HP',18.7, NULL);
INSERT INTO STUDENT VALUES('S202112','Charbel','Fadi','Naim','Zahle','BBB313','Fadi B',DATE'2003-9-11','76134511','charbel.naim@army.edu','GS',15, NULL);
INSERT INTO STUDENT VALUES('S202113','Elias','Loay','Yaghi','Sidon','Souk 12','Safadi',DATE'2003-9-11','76145611','elias.yaghi@army.edu','LS',13,NULL);
INSERT INTO STUDENT VALUES('S202114','Omar','Ali','Shayah','Beirut','Ashrafeih21','DAW AL Kamar',DATE'2002-9-11','70131211','omar.shayah@army.edu','SE',16.5,'B11440');
INSERT INTO STUDENT VALUES('S202115','Bakr','Omar','Sharif','Beirut','First11','Omar BB',DATE'2001-9-11','03131211','bakr.sharif@army.edu','GS',14.5,'J11443');
INSERT INTO STUDENT VALUES('S202116','Haidar','Ali','Tarhine','Beirut','Center','AliB',DATE'2000-9-11','71112311','haidar.tarhine@army.edu','GS',3,'B14444');
INSERT INTO STUDENT VALUES('S202117','Waleed','Othman','Khoury','Tyre','BCC123','AKSOB',DATE'2002-9-11','76131310','waleed.khoury@army.edu','LS',17,NULL);
INSERT INTO STUDENT VALUES('S202118','Rana','Mohammad','Harb','Byblos','BYB1234','Mohammad B',DATE'2001-9-11','76111222','rana.harb@army.edu','SE',8,'C11447');
INSERT INTO STUDENT VALUES('S202119','Rani','Salman','Salem','Sawfar','Old st21','Wydad B',DATE'2004-9-11','71913710','rani.salem@army.edu','HP',18,NULL);


INSERT INTO ROOM VALUES('Kinderhaus',12,30,'Class','Beirut');
INSERT INTO ROOM VALUES('Kinderhaus',13,5,'Office','Beirut');
INSERT INTO ROOM VALUES('Kinderhaus',14,5,'Office','Beirut');
INSERT INTO ROOM VALUES('Kinderhaus',15,5,'Office','Beirut');
INSERT INTO ROOM VALUES('Kinderhaus',16,30,'Class','Beirut');
INSERT INTO ROOM VALUES('Sage',22,5,'Office','Beirut');
INSERT INTO ROOM VALUES('Sage',23,5,'Office','Beirut');
INSERT INTO ROOM VALUES('Sage',24,30,'Class','Beirut');
INSERT INTO ROOM VALUES('Sage',25,30,'Class','Beirut');
INSERT INTO ROOM VALUES('Sage',26,30,'Class','Beirut');
INSERT INTO ROOM VALUES('Nicole',32,5,'Office','Byblos');
INSERT INTO ROOM VALUES('Nicole',33,5,'Office','Byblos');
INSERT INTO ROOM VALUES('Nicole',34,5,'Office','Byblos');
INSERT INTO ROOM VALUES('Nicole',35,30,'Class','Byblos');
INSERT INTO ROOM VALUES('Nicole',36,30,'Class','Byblos');
INSERT INTO ROOM VALUES('OG',42,30,'Class','Byblos');
INSERT INTO ROOM VALUES('OG',43,5,'Office','Byblos');
INSERT INTO ROOM VALUES('OG',44,5,'Office','Byblos');
INSERT INTO ROOM VALUES('OG',45,30,'Class','Byblos');
INSERT INTO ROOM VALUES('OG',46,30,'Class','Byblos');


INSERT INTO SPORTS_TEAM VALUES(1, 'Wizards (Varsity)', 'Basketball', 'Basketball court', 'Wednesday 4:00 pm');
INSERT INTO SPORTS_TEAM VALUES(2, 'Warriors (Junior Varsity)', 'Basketball', 'Basketball court', ' Monday 5:00 pm');
INSERT INTO SPORTS_TEAM VALUES(3, 'Mystics', 'Volley Ball', 'Basketball court', 'Tuesday 4:00 pm');
INSERT INTO SPORTS_TEAM VALUES(4, 'Stars (Varsity)', 'Football', 'Football field', 'Wednesday 5:00 pm');
INSERT INTO SPORTS_TEAM VALUES(5, 'Suns (Junior Varsity)', 'Football', 'Football field', 'Friday 4:00 pm');
INSERT INTO SPORTS_TEAM VALUES(6, 'Blitz', 'Ultimate Frisbee', 'Football field', 'Monday 4:00 pm');
INSERT INTO SPORTS_TEAM VALUES(7, 'Rebels', 'Rugby', 'Football field', 'Tuesday 4:00 pm');
INSERT INTO SPORTS_TEAM VALUES(8, 'Sweet Shots', 'Tennis', 'Tennis court', 'Tuesday 4:00 pm');
INSERT INTO SPORTS_TEAM VALUES(9, 'Gladiators', 'Wrestling', 'Indoor Gymnasium', 'Thursday 5:00 pm');
INSERT INTO SPORTS_TEAM VALUES(10, 'Fireballs', 'Hand ball', 'Basketball court', 'Friday 5:00 pm');


INSERT INTO CLUB VALUES('Math Club',200,TIMESTAMP'2021-09-17 13:00:00','MathClub@army.edu.lb','I202110');
INSERT INTO CLUB VALUES('Physics Club',300,TIMESTAMP'2021-09-18 11:00:00','PhysiscsClub@army.edu.lb','I202111');
INSERT INTO CLUB VALUES('Science Club',400,TIMESTAMP'2021-10-17 12:00:00','ScienceClub@army.edu.lb','I202112');
INSERT INTO CLUB VALUES('Chemistry Club',1000,TIMESTAMP'2021-09-11 9:00:00','ChemistryClub@army.edu.lb','I202113');
INSERT INTO CLUB VALUES('Arabic Club',200,TIMESTAMP'2021-12-17 14:00:00','ArabicClub@army.edu.lb','I202114');
INSERT INTO CLUB VALUES('English Club',800,TIMESTAMP'2021-09-19 13:00:00','EnglishClub@army.edu.lb','I202115');
INSERT INTO CLUB VALUES('Sports Club',200,TIMESTAMP'2021-09-17 16:00:00','SportsClub@army.edu.lb','I202116');
INSERT INTO CLUB VALUES('Music Club',600,TIMESTAMP'2021-09-14 13:00:00','MusicClub@army.edu.lb','I202117');
INSERT INTO CLUB VALUES('Animal Care Club',700,TIMESTAMP'2021-09-17 14:30:00','AnimalCareClub@army.edu.lb','I202118');
INSERT INTO CLUB VALUES('Computer Club',2500,TIMESTAMP'2021-09-17 13:30:00','ComputerClub@army.edu.lb','I202119');


INSERT INTO COURSE VALUES('12345','Math 1','MTH20',3,'8:00','Online');
INSERT INTO COURSE VALUES('12300','Science','SC90',3,'9:00','Online');
INSERT INTO COURSE VALUES('12045','Math 1','MTH20',3,'10:00','Online');
INSERT INTO COURSE VALUES('02345','Physics','PHY05',3,'2:00','Hybrid');
INSERT INTO COURSE VALUES('12305','Math 2','MTH40',3,'3:00','Hybrid');
INSERT INTO COURSE VALUES('00345','Economics','ECO56',3,'10:00','Campus');
INSERT INTO COURSE VALUES('07345','Geometry','MTH21',1,'11:00','Campus');
INSERT INTO COURSE VALUES('10344','Paint','PA00',3,'2:00','Campus');
INSERT INTO COURSE VALUES('67842','Arabic','ARA50',3,'1:00','Campus');
INSERT INTO COURSE VALUES('10333','Chemistry','CHM55',3,'12:00','Campus');


INSERT INTO COURSE_DAYS VALUES('12045','Monday');
INSERT INTO COURSE_DAYS VALUES('12045','Wednesday');
INSERT INTO COURSE_DAYS VALUES('12045','Friday');
INSERT INTO COURSE_DAYS VALUES('12345','Monday');
INSERT INTO COURSE_DAYS VALUES('12345','Thursday');
INSERT INTO COURSE_DAYS VALUES('12300','Tuesday');
INSERT INTO COURSE_DAYS VALUES('12300','Friday');
INSERT INTO COURSE_DAYS VALUES('02345','Wednesday');
INSERT INTO COURSE_DAYS VALUES('02345','Friday');
INSERT INTO COURSE_DAYS VALUES('12305','Thursday');
INSERT INTO COURSE_DAYS VALUES('12305','Tuesday');
INSERT INTO COURSE_DAYS VALUES('00345','Friday');
INSERT INTO COURSE_DAYS VALUES('00345','Tuesday');
INSERT INTO COURSE_DAYS VALUES('00345','Wednesday');
INSERT INTO COURSE_DAYS VALUES('07345','Tuesday');
INSERT INTO COURSE_DAYS VALUES('07345','Wednesday');
INSERT INTO COURSE_DAYS VALUES('10344','Monday');
INSERT INTO COURSE_DAYS VALUES('10344','Thursday');
INSERT INTO COURSE_DAYS VALUES('67842','Wednesday');
INSERT INTO COURSE_DAYS VALUES('10333','Monday');


INSERT INTO EVENT VALUES('Math Contest', DATE'2021-10-22','Competition','Math Club');
INSERT INTO EVENT VALUES('Math Contest', DATE'2021-10-22','Competition','Physics Club');
INSERT INTO EVENT VALUES('Intro to Space',DATE'2021-5-14','Educational','Physics Club');
INSERT INTO EVENT VALUES('Science Fair',DATE'2021-11-25','Educational','Science Club');
INSERT INTO EVENT VALUES('Group Expirements',DATE'2021-12-25','Educational','Chemistry Club');
INSERT INTO EVENT VALUES('Poerty Night',DATE'2021-12-14','Entertainment', 'Arabic Club');
INSERT INTO EVENT VALUES('Poerty Night',DATE'2021-12-14','Entertainment', 'English Club');
INSERT INTO EVENT VALUES('Group Reading',DATE'2021-9-19','Entertainment','English Club');
INSERT INTO EVENT VALUES('Football tournament',  DATE'2022-1-10', 'Competition','Sports Club');
INSERT INTO EVENT VALUES('Concert Night', DATE'2022-12-8', 'Entertainment', 'Music Club');
INSERT INTO EVENT VALUES('Seminar on wild life', DATE'2022-10-9', 'Educational','Animal Care Club');
INSERT INTO EVENT VALUES('Hackathon', DATE'2021-10-19','Competition', 'Computer Club');​


INSERT INTO UTILITY VALUES('FSD6789','Laptop',DATE'2020-12-12',2,'Good condition',NULL,'I202102');
INSERT INTO UTILITY VALUES('S45678','Mouse',DATE'2021-7-5',1,'Good condition',NULL,NULL);
INSERT INTO UTILITY VALUES('FS56F78S','Calculator',DATE'1995-5-15',0,'Needs Repair','S202101',NULL);
INSERT INTO UTILITY VALUES('FS5678SF67','Book: History of Lebanon',DATE'1985-1-1',0,'Good condition','S202109',NULL);
INSERT INTO UTILITY VALUES('SF5S6FS6','Printer',DATE'2019-7-1',5,'Needs Repair',NULL,NULL);
INSERT INTO UTILITY VALUES('ILUYI389L','Markers',DATE'2021-2-15',0,'Good condition',NULL,'I202115');
INSERT INTO UTILITY VALUES('LU7Y5LY','Projector',DATE'2018-11-15',3,'Good condition',NULL,'I202106');
INSERT INTO UTILITY VALUES('CVN5C79','Monitor',DATE'2018-11-15',5,'Good condition','S202105',NULL);
INSERT INTO UTILITY VALUES('CN45CN8CV','Speaker',DATE'2015-5-4',5,'Good condition',NULL,'I202108');
INSERT INTO UTILITY VALUES('4YE5R6','Keyboard',DATE'2021-1-18',1,'Good condition',NULL,NULL);


INSERT INTO PLAYS_WITH VALUES('S202110',1);
INSERT INTO PLAYS_WITH VALUES('S202111',10);
INSERT INTO PLAYS_WITH VALUES('S202112',2);
INSERT INTO PLAYS_WITH VALUES('S202113',3);
INSERT INTO PLAYS_WITH VALUES('S202114',4);
INSERT INTO PLAYS_WITH VALUES('S202115',5);
INSERT INTO PLAYS_WITH VALUES('S202116',6);
INSERT INTO PLAYS_WITH VALUES('S202117',7);
INSERT INTO PLAYS_WITH VALUES('S202118',8);
INSERT INTO PLAYS_WITH VALUES('S202119',9);


INSERT INTO OFFICE VALUES(13,'Kinderhaus','I202129');
INSERT INTO OFFICE VALUES(14,'Kinderhaus','I202123');
INSERT INTO OFFICE VALUES(15,'Kinderhaus','I202122');
INSERT INTO OFFICE VALUES(22,'Sage','I202121');
INSERT INTO OFFICE VALUES(23,'Sage','I202120');
INSERT INTO OFFICE VALUES(32,'Nicole','I202117');
INSERT INTO OFFICE VALUES(33,'Nicole','I202119');
INSERT INTO OFFICE VALUES(34,'Nicole','I202115');
INSERT INTO OFFICE VALUES(43,'OG','I202110');
INSERT INTO OFFICE VALUES(44,'OG','I202116');


INSERT INTO ENROLLS_IN VALUES('S202100','12345');
INSERT INTO ENROLLS_IN VALUES('S202101','12300');
INSERT INTO ENROLLS_IN VALUES('S202102','12345');
INSERT INTO ENROLLS_IN VALUES('S202103','12305');
INSERT INTO ENROLLS_IN VALUES('S202104','02345');
INSERT INTO ENROLLS_IN VALUES('S202104','07345');
INSERT INTO ENROLLS_IN VALUES('S202105','67842');
INSERT INTO ENROLLS_IN VALUES('S202106','67842');
INSERT INTO ENROLLS_IN VALUES('S202107','12300');
INSERT INTO ENROLLS_IN VALUES('S202108','02345');
INSERT INTO ENROLLS_IN VALUES('S202109','12045');
INSERT INTO ENROLLS_IN VALUES('S202110','10333');
INSERT INTO ENROLLS_IN VALUES('S202111','10333');
INSERT INTO ENROLLS_IN VALUES('S202112','67842');
INSERT INTO ENROLLS_IN VALUES('S202113','12045');
INSERT INTO ENROLLS_IN VALUES('S202114','02345');
INSERT INTO ENROLLS_IN VALUES('S202114','12305');
INSERT INTO ENROLLS_IN VALUES('S202115','00345');
INSERT INTO ENROLLS_IN VALUES('S202116','07345');
INSERT INTO ENROLLS_IN VALUES('S202117','07345');
INSERT INTO ENROLLS_IN VALUES('S202118','10344');
INSERT INTO ENROLLS_IN VALUES('S202119','00345');
INSERT INTO ENROLLS_IN VALUES('S202118','10333');
INSERT INTO ENROLLS_IN VALUES('S202119','12305');
INSERT INTO ENROLLS_IN VALUES('S202104','12345');
INSERT INTO ENROLLS_IN VALUES('S202105','12300');
INSERT INTO ENROLLS_IN VALUES('S202110','12345');
INSERT INTO ENROLLS_IN VALUES('S202111','12305');
INSERT INTO ENROLLS_IN VALUES('S202107','02345');
INSERT INTO ENROLLS_IN VALUES('S202115','67842');
INSERT INTO ENROLLS_IN VALUES('S202110','12300');
INSERT INTO ENROLLS_IN VALUES('S202109','02345');
INSERT INTO ENROLLS_IN VALUES('S202110','12045');
INSERT INTO ENROLLS_IN VALUES('S202114','10333');
INSERT INTO ENROLLS_IN VALUES('S202118','12045');
INSERT INTO ENROLLS_IN VALUES('S202101','12305');
INSERT INTO ENROLLS_IN VALUES('S202102','00345');
INSERT INTO ENROLLS_IN VALUES('S202103','07345');
INSERT INTO ENROLLS_IN VALUES('S202105','07345');
INSERT INTO ENROLLS_IN VALUES('S202106','10344');
INSERT INTO ENROLLS_IN VALUES('S202107','00345');
INSERT INTO ENROLLS_IN VALUES('S202112','10333');
INSERT INTO ENROLLS_IN VALUES('S202113','12305');


INSERT INTO COACHES VALUES('I202119',1,'Trainer');
INSERT INTO COACHES VALUES('I202118',2,'Trainer Assistant');
INSERT INTO COACHES VALUES('I202117',3,'Flexibility Trainer');
INSERT INTO COACHES VALUES('I202116',4,'Coach Assistant');
INSERT INTO COACHES VALUES('I202115',5,'Coach');
INSERT INTO COACHES VALUES('I202114',6,'captain');
INSERT INTO COACHES VALUES('I202113',7,'Trainer');
INSERT INTO COACHES VALUES('I202112',8,'Manager');
INSERT INTO COACHES VALUES('I202111',9,'Coach');
INSERT INTO COACHES VALUES('I202110',10,'Trainer');


INSERT INTO TEACHES VALUES('12345','I202121');
INSERT INTO TEACHES VALUES('12300','I202129');
INSERT INTO TEACHES VALUES('12045','I202123');
INSERT INTO TEACHES VALUES('02345','I202121');
INSERT INTO TEACHES VALUES('12305','I202120');
INSERT INTO TEACHES VALUES('00345','I202122');
INSERT INTO TEACHES VALUES('07345','I202122');
INSERT INTO TEACHES VALUES('10344','I202123');
INSERT INTO TEACHES VALUES('67842','I202120');
INSERT INTO TEACHES VALUES('10333','I202129');


INSERT INTO TAKES_PLACE VALUES('12345',12,'Kinderhaus');
INSERT INTO TAKES_PLACE VALUES('12300',16,'Kinderhaus');
INSERT INTO TAKES_PLACE VALUES('12045',24,'Sage');
INSERT INTO TAKES_PLACE VALUES('02345',25,'Sage');
INSERT INTO TAKES_PLACE VALUES('12305',26,'Sage');
INSERT INTO TAKES_PLACE VALUES('00345',35,'Nicole');
INSERT INTO TAKES_PLACE VALUES('07345',36,'Nicole');
INSERT INTO TAKES_PLACE VALUES('10344',42,'OG');
INSERT INTO TAKES_PLACE VALUES('67842',45,'OG');
INSERT INTO TAKES_PLACE VALUES('10333',46,'OG');


INSERT INTO JOINS VALUES('S202100','Math Club', 'President');
INSERT INTO JOINS VALUES('S202102','Math Club', 'Member');
INSERT INTO JOINS VALUES('S202103','Math Club', 'Member');
INSERT INTO JOINS VALUES('S202108','Math Club', 'Member');
INSERT INTO JOINS VALUES('S202114','Computer Club','President');
INSERT INTO JOINS VALUES('S202107','Computer Club','Member');
INSERT INTO JOINS VALUES('S202101','Physics Club','President');
INSERT INTO JOINS VALUES('S202112','Physics Club','Member');
INSERT INTO JOINS VALUES('S202102','Science Club','Vice President');
INSERT INTO JOINS VALUES('S202110','Science Club','President');
INSERT INTO JOINS VALUES('S202103','Chemistry Club','President');
INSERT INTO JOINS VALUES('S202115','Chemistry Club','Member');
INSERT INTO JOINS VALUES('S202104','Arabic Club','Member');
INSERT INTO JOINS VALUES('S202111','Arabic Club','President');
INSERT INTO JOINS VALUES('S202105','English Club','President');
INSERT INTO JOINS VALUES('S202106','Sports Club','Member');
INSERT INTO JOINS VALUES('S202115','Sports Club','Member');
INSERT INTO JOINS VALUES('S202112','Sports Club','President');
INSERT INTO JOINS VALUES('S202107','Music Club','Vice President');
INSERT INTO JOINS VALUES('S202113','Music Club','President');
INSERT INTO JOINS VALUES('S202108','Animal Care Club','President');
INSERT INTO JOINS VALUES('S202105','Animal Care Club','Member');
INSERT INTO JOINS VALUES('S202109','Computer Club','Secretary');


INSERT INTO GUARDIAN VALUES('S202101','Slaiman Hammoud','81456123','slaiman.hammoud@outlook.com','Beirut','654','Farah');
INSERT INTO GUARDIAN VALUES('S202102','Mohamad Itani','76985123','mohamad.itani@outlook.com','Jbeil','369','Abedel khalek');
INSERT INTO GUARDIAN VALUES('S202103','Bassam makknieh','81475555','bassam.makknieh@outlook.com','Zahle','258','Wazlid');
INSERT INTO GUARDIAN VALUES('S202104','Hassan Harb','71830831','hassan.harb@outlook.com','Jounieh','147','Khawli');
INSERT INTO GUARDIAN VALUES('S202105','Abbas Sleit','03652148','abbas.sleit@outlook.com','Sidon','825','Itani I');
INSERT INTO GUARDIAN VALUES('S202110','Mark Solh','71717109','marksolh12@gmail.com','Beirut','Kouraytem111','Mark B');
INSERT INTO GUARDIAN VALUES('S202111','Hisham Zaiter','71231211','hisham.zaiter@gmail.com','Baalbek','Nahle 111','Hisham B');
INSERT INTO GUARDIAN VALUES('S202112','Fadi Naim','03134511','fadi.naim@gmail.com','Zahle','BBB313','Fadi B');
INSERT INTO GUARDIAN VALUES('S202113','Loay Yaghi','78145611','loay.yaghi@gmail.com','Sidon','Souk 12','Safadi');
INSERT INTO GUARDIAN VALUES('S202114','Ali Shayah','70111211','ali.shayah@gmail.com','Beirut','Ashrafeih21','DAW AL Kamar');