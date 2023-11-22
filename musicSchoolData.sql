/*instructor*/
INSERT INTO instructor (instructor_id,availble_to_teach,person_id)
VALUES
  (1,'true',1),
  (2,'false',2),
  (3,'true',3),
  (4,'true',4),
  (5,'false',5),
  (6,'false',6),
  (7,'false',7),
  (8,'true',8),
  (9,'true',9),
  (10,'true',10);

  /*student*/
INSERT INTO student (student_id,family_id,person_id,parent_id)
VALUES
  (1,1,1,1),
  (2,2,2,2),
  (3,3,3,3),
  (4,4,4,4),
  (5,5,5,5),
  (6,6,6,6),
  (7,7,7,7),
  (8,8,8,8),
  (9,9,9,9),
  (10,10,10,10);

/*email*/
INSERT INTO email (id,email)
VALUES
  (1,'condimentum.donec.at@yahoo.edu'),
  (2,'felis.nulla.tempor@google.ca'),
  (3,'turpis.egestas@aol.couk'),
  (4,'ullamcorper.nisl.arcu@google.com'),
  (5,'egestas.ligula@aol.com'),
  (6,'vel.venenatis@icloud.com'),
  (7,'tellus.lorem.eu@aol.com'),
  (8,'facilisis@icloud.ca'),
  (9,'ut.odio@protonmail.couk'),
  (10,'dolor.elit@aol.com');

  /*phone */
INSERT INTO phone (id,phone_number)
VALUES
  (1,'3251657737'),
  (2,'3186651465'),
  (3,'8366224844'),
  (4,'5285115991'),
  (5,'6206734571'),
  (6,'9861612651'),
  (7,'2915635402'),
  (8,'4553664692'),
  (9,'8174326648'),
  (10,'2188457465');


/*Person phone*/
INSERT INTO person_phone (person_id,phone_id)
VALUES
  (1,1),
  (2,2),
  (3,3),
  (4,4),
  (5,5),
  (6,6),
  (7,7),
  (8,8),
  (9,9),
  (10,10);

  /*Person email*/
INSERT INTO person_email (email_id,person_id)
VALUES
  (1,1),
  (2,2),
  (3,3),
  (4,4),
  (5,5),
  (6,6),
  (7,7),
  (8,8),
  (9,9),
  (10,10);



/*lesson schedule*/
INSERT INTO lesson_schedule (lesson_id,price_id,instructor_id,time,booked,classroom_id,individual_lesson_id)
VALUES
  (1,1,1,'2023-10-31 18:22:56','false',1,1),
  (2,2,2,'2023-12-13 21:34:13','false',2,2),
  (3,3,3,'2024-02-23 19:14:21','false',3,3),
  (4,4,4,'2023-01-07 02:03:34','false',4,4),
  (5,5,5,'2024-03-02 15:45:58','true',5,5),
  (6,6,6,'2023-05-27 08:48:05','true',6,6),
  (7,7,7,'2024-10-31 02:29:07','false',7,7),
  (8,8,8,'2024-04-14 22:54:20','false',8,8),
  (9,9,9,'2023-01-01 14:24:05','false',9,9),
  (10,10,10,'2022-11-30 13:10:50','false',10,10);



/*person*/

INSERT INTO person (person_id,first_name,last_name,age,street,zip,city,person_number,parent_id)
VALUES
  (1,'Haviva','Cobb',42,'668-7857 Id, Rd.','35721','Denpasar','663631029121',1),
  (2,'Ray','Garza',30,'9388 Amet St.','377114','Cartagena','941445977185',2),
  (3,'Quinn','Valenzuela',30,'739-5147 Dictum Av.','385197','Neufeld an der Leitha','786152454888',3),
  (4,'Basil','Short',21,'722-8032 Aptent Avenue','7476','Reims','631775763523',4),
  (5,'Ali','Watson',18,'170-820 Dictum Av.','5978-2650','Lublin','092637862469',5),
  (6,'Martena','Knox',29,'674-2740 Luctus Av.','2068','Emmen','163232368295',6),
  (7,'Freya','Orr',16,'4491 Nunc. Ave','71168','Vernon','155750836664',7),
  (8,'Ethan','Snider',18,'4974 Fringilla Avenue','2473','Ingelheim','022671564561',8),
  (9,'Eric','Massey',13,'Ap #124-1618 Eget Street','70-853','Puerto Nariño','071173750780',9),
  (10,'Gisela','Rhodes',52,'2728 Mollis Avenue','631686','Kamyzyak','439057643522',10);

/*ensemble*/
INSERT INTO ensemble (ensemble_id,number_of_students,genre,instrument_level,type_id)
VALUES
  (1,10,'hiphop','advance',1),
  (2,10,'pop','beginner',2),
  (3,5,'pop','beginner',3),
  (4,5,'hiphop','intermediate',4),
  (5,8,'rock','beginner',5),
  (6,8,'hiphop','intermediate',6),
  (7,9,'classic','advance',7),
  (8,9,'pop','advance',8),
  (9,12,'rock','intermediate',9),
  (10,12,'rock','intermediate',10);

  /*individual_lesson*/
INSERT INTO individual_lesson (individual_lesson_id,instrument_level,type_id)
VALUES
  (1,'advance',1),
  (2,'advance',2),
  (3,'intermediate',3),
  (4,'beginner',4),
  (5,'advance',5),
  (6,'advance',6),
  (7,'beginner',7),
  (8,'beginner',8),
  (9,'advance',9),
  (10,'intermediate',10);

/*group lesson*/
INSERT INTO group_lesson (group_lesson_id,number_of_students,instrument_level,type_id)
VALUES
  (1,10,'advance',1),
  (2,10,'beginner',2),
  (3,5,'beginner',3),
  (4,5,'beginner',4),
  (5,8,'advance',5),
  (6,8,'beginner',6),
  (7,9,'beginner',7),
  (8,9,'intermediate',8),
  (9,12,'advance',9),
  (10,12,'advance',10);


/*student lesson*/
INSERT INTO student_lesson (student_id,lesson_id)
VALUES
  (1,1),
  (2,2),
  (3,3),
  (4,4),
  (5,5),
  (6,6),
  (7,7),
  (8,8),
  (9,9),
  (10,10);

  /*price list*/
INSERT INTO price_list (price_id,type_of_lesson_price,level_of_lesson_price,discount,amount_of_lessons,instructor_salary)
VALUES
  (1,200,20,40,1,300),
  (2,200,20,40,1,300),
  (3,200,30,0,2,300),
  (4,250,30,0,2,300),
  (5,250,10,40,5,600),
  (6,250,10,40,5,600),
  (7,300,20,0,8,600),
  (8,300,20,0,8,600),
  (9,300,30,40,6,400),
  (10,200,30,40,6,400);


  /*instrument type*/
INSERT INTO instrument_type (type_id,name)
VALUES
  (1,'trumpets'),
  (2,'violin'),
  (3,'drums'),
  (4,'guitar'),
  (5,'piano'),
  (6,'cello'),
  (7,'recorder'),
  (8,'bass guitar'),
  (9,'saxophone'),
  (10,'flute');

  /*instrument*/
INSERT INTO instrument (instrument_id,available,rent_cost,type_id)
VALUES
  (1,'false',60,1),
  (2,'true',60,2),
  (3,'false',60,3),
  (4,'true',80,4),
  (5,'true',80,5),
  (6,'false',80,6),
  (7,'false',100,7),
  (8,'true',100,8),
  (9,'true',100,9),
  (10,'true',120,10);

  /*rental*/
INSERT INTO rental (rental_id,start_time,end_time,instrument_id,student_id)
VALUES
  (1,'2024-07-22 13:57:23','2024-10-03 17:45:56',1,1),
  (2,'2023-04-02 05:41:44','2024-01-17 15:41:41',2,2),
  (3,'2024-04-11 13:18:48','2023-06-29 04:19:26',3,3),
  (4,'2023-06-02 14:31:37','2023-10-09 21:02:46',4,4),
  (5,'2023-06-18 08:00:16','2022-11-29 17:44:46',5,5),
  (6,'2023-11-20 09:21:38','2024-08-08 05:27:16',6,6),
  (7,'2024-06-09 06:07:34','2023-10-09 03:35:13',7,7),
  (8,'2023-07-06 15:18:28','2023-03-02 06:31:11',8,8),
  (9,'2023-01-26 01:51:34','2022-12-16 06:20:01',9,9),
  (10,'2024-03-21 09:13:56','2024-06-12 11:31:22',10,10);



/*lesson types*/
INSERT INTO lesson_types (lesson_id,group_lesson_id, ensemble_id)
VALUES
  (1,1,1),
  (2,2,2),
  (3,3,3),
  (4,4,4),
  (5,5,5),
  (6,6,6),
  (7,7,7),
  (8,8,8),
  (9,9,9),
  (10,10,10);

  /*parent*/

INSERT INTO parent (parent_id)
VALUES
  (1),
  (2),
  (3),
  (4),
  (5),
  (6),
  (7),
  (8),
  (9),
  (10);
