-- Inserting data 

INSERT INTO Employee VALUES 
-- (101,'Ojas','Phansekar', '14-04-16','New York City','New York'), 
(102,'Vrushali','Patil','21-06-18','Boston','Massachusetts'),
(103,'Pratik','Parija','13-09-19','Chicago','Illinois'),
(104,'Chetan','Mistry','12-04-11','Miami','Florida'),
(105,'Anugraha','Varkey','16-08-17','Atlanta','Georgia'),
(106,'Rasagnya','Reddy','25-07-18','San Mateo','California'),
(107,'Aishwarya','Boralkar','18-12-10','San Francisco','California'),
(108,'Shantanu','Savant','27-11-15','Seattle','Washington'),
(109,'Kalpita','Malvankar','24-04-16','Boston','Massachusetts'),
(110,'Saylee','Bhagat','21-05-14','San Francisco','California');


INSERT INTO Department VALUES (1,'Human Resources');
INSERT INTO Department VALUES (2,'Software Development');
INSERT INTO Department VALUES (3,'Data Analysis');
INSERT INTO Department VALUES (4,'Data Science');
INSERT INTO Department VALUES (5,'Business Intelligence');
INSERT INTO Department VALUES (6,'Data Engineering');
INSERT INTO Department VALUES (7,'Manufacturing');
INSERT INTO Department VALUES (8,'Quality Control');

INSERT INTO Project VALUES (21,'Dev','Whatever');
INSERT INTO Project VALUES (22,'Prod','do something');
INSERT INTO Project VALUES (23,'Test','focus');
INSERT INTO Project VALUES (24,'Nothing','do nothing');
INSERT INTO Project VALUES (25,'Research','focus on everything');
INSERT INTO Project VALUES (26,'Next Steps','find some way out');

INSERT INTO AccountDetails VALUES (40,'Santander','S12344',101);
INSERT INTO AccountDetails VALUES (41,'Santander','S12345',102);
INSERT INTO AccountDetails VALUES (42,'Santander','S12346',103);
INSERT INTO AccountDetails VALUES (43,'Santander','S12347',104);
INSERT INTO AccountDetails VALUES (44,'Chase','C12344',105);
INSERT INTO AccountDetails VALUES (45,'Chase','C12345',106);
INSERT INTO AccountDetails VALUES (46,'Chase','C12347',107);
INSERT INTO AccountDetails VALUES (47,'Chase','C12334',108);
INSERT INTO AccountDetails VALUES (48,'BOFA','C12378',109);
INSERT INTO AccountDetails VALUES (49,'BOFA','C12390',110);

INSERT INTO Education VALUES (10,101,'MS',2017);
INSERT INTO Education VALUES (11,102,'MS',2019);
INSERT INTO Education VALUES (12,104,'MS',2011);
INSERT INTO Education VALUES (13,108,'MS',2015);
INSERT INTO Education VALUES (14,109,'Bachelor',2013);
INSERT INTO Education VALUES (15,107,'Bachelor',2008);
INSERT INTO Education VALUES (16,106,'Bachelor',2007);


INSERT INTO Leave_ VALUES (51,104, "12-06-22");
INSERT INTO Leave_ VALUES (84,108,"02-12-19");
INSERT INTO Leave_ VALUES (53,109,'03-12-19');
INSERT INTO Leave_ VALUES (54,107,'4-12-19');
INSERT INTO Leave_ VALUES (55,106,'5-12-19');
INSERT INTO Leave_ VALUES (56,104,'6-12-19');
INSERT INTO Leave_ VALUES (57,108,'7-12-19');
INSERT INTO Leave_ VALUES (58,109,'7-12-19');
INSERT INTO Leave_ VALUES (59,107,'8-12-19');
INSERT INTO Leave_ VALUES (60,106,'9-12-19');




INSERT INTO Attendance VALUES (90,10);
INSERT INTO Attendance VALUES (91,20);
INSERT INTO Attendance VALUES (92,30);
INSERT INTO Attendance VALUES (93,40);
INSERT INTO Attendance VALUES (94,45);
INSERT INTO Attendance VALUES (95,56);
INSERT INTO Attendance VALUES (96,58);

INSERT INTO Work_Location VALUES (71,'North',4,'New York City','New York');
INSERT INTO Work_Location VALUES (72,'North',4,'Boston','Massachusetts');
INSERT INTO Work_Location VALUES (73,'North',4,'Chicago','Illinois');
INSERT INTO Work_Location VALUES (74,'North',89,'Miami','Florida');
INSERT INTO Work_Location VALUES (75,'South',90,'Atlanta','Georgia');
INSERT INTO Work_Location VALUES (76,'South',100,'San Mateo','California');
INSERT INTO Work_Location VALUES (77,'South',4,'San Francisco','California');
INSERT INTO Work_Location VALUES (78,'South',2,'Seattle','Washington');
INSERT INTO Work_Location VALUES (79,'South',25,'Alpharetta','Georgia');
INSERT INTO Work_Location VALUES (80,'South',20,'Keene','New Hampshire');
INSERT INTO Work_Location VALUES (81,'South',22,'Hampton','New Hampshire');


INSERT INTO Employee_Attendance VALUES (101,90);
INSERT INTO Employee_Attendance VALUES (102,91);
INSERT INTO Employee_Attendance VALUES (103,92);
INSERT INTO Employee_Attendance VALUES (104,93);
INSERT INTO Employee_Attendance VALUES (105,94);
INSERT INTO Employee_Attendance VALUES (106,95);
INSERT INTO Employee_Attendance VALUES (107,96);
INSERT INTO Employee_Attendance VALUES (108,91);
INSERT INTO Employee_Attendance VALUES (109,92);
INSERT INTO Employee_Attendance VALUES (110,93);

INSERT INTO DepartmentProject VALUES (1,21);
INSERT INTO DepartmentProject VALUES (2,22);
INSERT INTO DepartmentProject VALUES (3,23);
INSERT INTO DepartmentProject VALUES (4,24);
INSERT INTO DepartmentProject VALUES (5,25);
INSERT INTO DepartmentProject VALUES (6,26);
INSERT INTO DepartmentProject VALUES (7,21);
INSERT INTO DepartmentProject VALUES (8,24);

INSERT INTO Salary VALUES (1,57600,30,200,1000,40);
INSERT INTO Salary VALUES (2,76800,40,300,1300,41);
INSERT INTO Salary VALUES (3,96000,50,400,1500,42);
INSERT INTO Salary VALUES (4,115200,60,500,1700,43);
INSERT INTO Salary VALUES (5,57600,30,200,1000,44);
INSERT INTO Salary VALUES (6,76800,40,300,1300,45);
INSERT INTO Salary VALUES (7,96000,50,400,1500,46);
INSERT INTO Salary VALUES (8,115200,60,500,1700,47);
INSERT INTO Salary VALUES (9,57600,30,200,1000,48);
INSERT INTO Salary VALUES (10,76800,40,300,1300,49);




INSERT INTO Employee VALUES (111,'Priyanka','Jonas',to_date('14-NOV-16', 'dd-MON-yyyy'),'New York City','New York',1);

commit;

INSERT INTO Employee VALUES (112,'John','Vincent',to_date('21-JUN-18', 'dd-MON-yyyy'),'Boston','Massachusetts',2);

SAVEPOINT A1;

INSERT INTO Employee VALUES (113,'Pratik','Panhale',to_date('13-SEP-19', 'dd-MON-yyyy'),'Chicago','Illinois',3);

SAVEPOINT A1;


