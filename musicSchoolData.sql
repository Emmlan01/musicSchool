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
  (10,10,10,10),
  (11, 1, 11, 1),
  (12, 1, 12, 1),
  (13, 2, 13, 2),
  (14, 2, 14, 2),
  (15, 3, 15, 3),
  (16, 3, 16, 3),
  (17, 4, 17, 4),
  (18, 4, 18, 4),
  (19, 5, 19, 5),
  (20, 5, 20, 5),
  (21, 5, 21, 6),
  (22, 5, 22, 6),
  (23, 1, 23, 6),
  (24, 4, 24, 6),
  (25, 5, 25, 6),
  (26, 20, 21, 6),
  (27,0, 21, 6),
  (28, 12, 21, 6),
  (29, 12, 21, 6);
  

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
  /*add more emails*/
  INSERT INTO email (id, email)
VALUES
  (11, 'isaiah.bass@email.com'),
  (12, 'sofia.drummer@email.com'),
  (13, 'noah.chord@email.com'),
  (14, 'olivia.treble@email.com'),
  (15, 'elijah.sharp@email.com'),
  (16, 'ava.flat@email.com'),
  (17, 'liam.bassoon@email.com'),
  (18, 'emma.forte@email.com'),
  (19, 'mason.rhythm@email.com'),
  (20, 'sophia.harmony@email.com');

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
  /*add more phone*/
  INSERT INTO phone (id, phone_number)
VALUES
  (11, '1112223333'),
  (12, '4445556666'),
  (13, '7778889999'),
  (14, '1234567890'),
  (15, '2345678901'),
  (16, '3456789012'),
  (17, '4567890123'),
  (18, '5678901234'),
  (19, '6789012345'),
  (20, '7890123456');


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

  /*add more*/
  INSERT INTO person_phone (person_id, phone_id)
VALUES
  (11, 11),
  (12, 12),
  (13, 13),
  (14, 14),
  (15, 15),
  (16, 16),
  (17, 17),
  (18, 18),
  (19, 19),
  (20, 20);

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

  /*add more emails*/
  INSERT INTO person_email (email_id, person_id)
VALUES
  (11, 11),
  (12, 12),
  (13, 13),
  (14, 14),
  (15, 15),
  (16, 16),
  (17, 17),
  (18, 18),
  (19, 19),
  (20, 20);



/*lesson schedule*/
INSERT INTO lesson_schedule (lesson_id,price_id,instructor_id,time,booked,classroom_id)
VALUES
  (1,1,1,'2023-10-31 18:22:56','false',1),
  (2,2,2,'2023-12-13 21:34:13','false',2),
  (3,3,3,'2024-02-23 19:14:21','false',3),
  (4,4,4,'2023-01-07 02:03:34','false',4),
  (5,5,5,'2024-03-02 15:45:58','true',5),
  (6,6,6,'2023-05-27 08:48:05','true',6),
  (7,7,7,'2024-10-31 02:29:07','false',7),
  (8,8,8,'2024-04-14 22:54:20','false',8),
  (9,9,9,'2023-01-01 14:24:05','false',9),
  (10,10,10,'2022-11-30 13:10:50','false',10),
  (11, 3, 3, '2023-10-15 14:30:00', 'false', 1),
  (12, 4, 4, '2023-10-20 16:45:00', 'true', 2),
  (13, 5, 5, '2023-11-05 10:00:00', 'false', 3),
  (14, 6, 6, '2023-11-10 12:15:00', 'false', 4),
  (15, 7, 7, '2023-11-25 08:30:00', 'true', 5),
  (16, 8, 8, '2023-12-05 18:00:00', 'false', 6),
  (17, 9, 9, '2023-12-15 20:15:00', 'false', 7),
  (18, 10, 10, '2023-12-30 14:30:00', 'true', 8),
  (19, 7, 7, '2023-12-10 15:30:00', 'true', 7),
  (20, 8, 8, '2024-01-05 17:45:00', 'false', 8),
  (21, 9, 9, '2024-02-15 10:00:00', 'false', 1),
  (22, 10, 10, '2024-02-20 12:15:00', 'true', 2),
  (23, 1, 1, '2024-03-06 08:30:00', 'false', 3),
  (24, 2, 2, '2024-03-16 18:00:00', 'true', 4),
  (25, 3, 3, '2024-04-05 20:15:00', 'false', 5),
  (26, 1, 1, '2023-11-15 14:30:00', 'false', 1),
  (27, 2, 2, '2023-11-20 16:45:00', 'true', 2),
  (28, 3, 3, '2023-12-05 10:00:00', 'false', 3),
  (29, 4, 4, '2023-12-10 12:15:00', 'false', 4),
  (30, 5, 5, '2023-12-25 08:30:00', 'true', 5),
  (31, 6, 6, '2023-11-10 14:30:00', 'false', 1),
  (32, 7, 7, '2023-11-15 16:45:00', 'true', 2),
  (33, 8, 8, '2023-11-20 10:00:00', 'false', 3),
  (34, 9, 9, '2023-11-25 12:15:00', 'false', 4),
  (35, 10, 10, '2023-11-30 08:30:00', 'true', 5),
  (36, 6, 6, '2023-11-10 14:30:00', 'false', 1),
  (37, 7, 7, '2023-11-15 16:45:00', 'true', 2),
  (38, 8, 8, '2023-11-20 10:00:00', 'false', 3),
  (39, 9, 9, '2023-11-25 12:15:00', 'false', 4),
  (40, 10, 10, '2023-11-30 08:30:00', 'true', 5),
   (41,5, 6, '2023-11-01 10:00:00', 'false', 1),
  (42,6, 6, '2023-11-10 14:30:00', 'false', 2),
  (43,4, 6, '2023-11-20 16:45:00', 'false', 3),
  (44,5, 6, '2023-11-05 10:00:00', 'false', 4),
  (45,3, 7, '2023-11-15 12:15:00', 'false', 5),
  (46,1, 7, '2023-11-25 14:30:00', 'false', 6),
  (47, 6, 6, '2023-12-4 14:30:00', 'false', 2),
  (48, 4, 6, '2023-12-6 16:45:00', 'false', 3),
  (49, 5, 6, '2023-12-8 10:00:00', 'false', 4),
  (50, 3, 7, '2023-12-7 12:15:00', 'false', 5),
  (51, 1, 7, '2023-12-9 14:30:00', 'false', 6),
  (52, 6, 6, '2023-12-13 14:30:00', 'false', 2),
  (53, 4, 6, '2023-12-14 16:45:00', 'false', 3),
  (54, 5, 6, '2023-12-10 10:00:00', 'false', 4),
  (55, 3, 7, '2023-12-12 12:15:00', 'false', 5),
  (56, 1, 7, '2023-12-15 14:30:00', 'false', 6);




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

  /*Add more person data*/
INSERT INTO person (person_id, first_name, last_name, age, street, zip, city, person_number, parent_id)
VALUES
  (11, 'Isaiah', 'Bass', 35, '123 Harmony Lane', '54321', 'Melodyville', '9876543210', 6),
  (12, 'Sofia', 'Drummer', 28, '456 Rhythm Street', '98765', 'Beatstown', '1234567890', 7),
  (13, 'Noah', 'Chord', 20, '789 Melody Road', '12345', 'Harmony City', '5555555555', 8),
  (14, 'Olivia', 'Treble', 25, '321 Music Avenue', '67890', 'Noteville', '1111111111', 9),
  (15, 'Elijah', 'Sharp', 19, '654 Harmony Blvd', '23456', 'Songsville', '9999999999', 10),
  (16, 'Ava', 'Flat', 22, '987 Octave Street', '34567', 'Cadenceburg', '7777777777', 1),
  (17, 'Liam', 'Bassoon', 29, '543 Crescendo Lane', '87654', 'Orchestrapolis', '2222222222', 2),
  (18, 'Emma', 'Forte', 26, '678 Sonata Road', '43210', 'Tempo City', '4444444444', 3),
  (19, 'Mason', 'Rhythm', 23, '876 Melodic Avenue', '56789', 'Chordington', '6666666666', 4),
  (20, 'Sophia', 'Harmony', 31, '109 Note Blvd', '10987', 'Pitchburg', '8888888888', 5);
  INSERT INTO person (person_id, first_name, last_name, age, street, zip, city, person_number, parent_id)
VALUES
  (21, 'Lysandra', 'Blevins', 16, 'Ap #252-6322 Neque. St.', '43054', 'Düsseldorf', '328808308552', 6),
  (22, 'Christopher', 'Lester', 14, '2735 Nulla. Av.', '595484', 'Newark', '625270729112', 6),
  (23, 'Wesley', 'Gilliam', 12, 'P.O. Box 743, 4521 Aliquam Rd.', '210886', 'Huntsville', '848344237155', 6),
  (24, 'Dorothy', 'Herring', 15, 'P.O. Box 581, 7829 Sed Avenue', '1076', 'Winnipeg', '769415216343', 6),
  (25, 'Jaquelyn', 'Whitaker', 13, 'P.O. Box 151, 3777 Nec, Rd.', 'R0 5JJ', 'Charleville-Mézières', '067614088592', 6);



INSERT INTO genre (genre_id,name)
VALUES
  (1,'rock'),
  (2,'rock'),
  (3,'punk'),
  (4,'punk'),
  (5,'gospel'),
  (6,'gospel'),
  (7,'rock'),
  (8,'rock'),
  (9,'punk'),
  (10,'punk'),
  (11,'gospel'),
  (12,'gospel'),
  (13,'rock'),
  (14,'rock'),
  (15,'punk');


INSERT INTO ensemble (ensemble_id,number_of_students,instrument_level,type_id,max_students,min_students,lesson_id, genre_id)
VALUES
  (1,8,'advance',1,12,5,31,1),
  (2,8,'advance',2,12,5,32,2),
  (3,10,'advance',3,14,8,33,3),
  (4,10,'intermediat',4,14,8,34,4),
  (5,12,'intermediat',5,12,5,35,5),
  (6,12,'intermediat',6,12,5,36,6),
  (7,13,'beginner',7,14,8,37,7),
  (8,13,'beginner',8,14,8,38,8),
  (9,8,'beginner',9,12,5,39,9),
  (10,8,'advance',10,12,5,40,10),
  (11,10,'advance',1,14,8,41,11),
  (12,10,'advance',2,14,8,42,12),
  (13,12,'intermediat',3,12,5,43,13),
  (14,12,'intermediat',4,12,5,44,14),
  (15,13,'intermediat',5,14,8,45,15),
  (16, 8, 'advance', 1, 12, 5, 47, 1),
  (17, 8, 'advance', 2, 12, 5, 48, 2),
  (18, 10, 'advance', 3, 14, 8, 49, 3),
  (19, 10, 'intermediat', 4, 14, 8, 50, 4),
  (20, 12, 'intermediat', 5, 12, 5, 51, 5),
  (21, 12, 'intermediat', 6, 12, 5, 52, 6),
  (22, 13, 'beginner', 7, 14, 8, 53, 7),
  (23, 13, 'beginner', 8, 14, 8, 54, 8),
  (24, 8, 'beginner', 9, 12, 5, 55, 9),
  (25, 8, 'advance', 10, 12, 5, 56, 10);

INSERT INTO individual_lesson (individual_lesson_id,instrument_level,type_id,lesson_id)
VALUES
  (1,'advance',1,1),
  (2,'advance',2,2),
  (3,'advance',3,3),
  (4,'intermediat',4,4),
  (5,'intermediat',5,5),
  (6,'intermediat',6,6),
  (7,'beginner',7,7),
  (8,'beginner',8,8),
  (9,'beginner',9,9),
  (10,'advance',10,10),
  (11,'advance',1,11),
  (12,'advance',2,12),
  (13,'intermediat',3,13),
  (14,'intermediat',4,14),
  (15,'intermediat',5,15);




INSERT INTO group_lesson (group_lesson_id,number_of_students,instrument_level,type_id,max_students,min_students,lesson_id)
VALUES
  (1,8,'advance',1,12,5,16),
  (2,8,'advance',2,12,5,17),
  (3,10,'advance',3,14,8,18),
  (4,10,'intermediat',4,14,8,19),
  (5,12,'intermediat',5,12,5,20),
  (6,12,'intermediat',6,12,5,21),
  (7,13,'beginner',7,14,8,22),
  (8,13,'beginner',8,14,8,23),
  (9,8,'beginner',9,12,5,24),
  (10,8,'advance',10,12,5,25),
  (11,10,'advance',1,14,8,26),
  (12,10,'advance',2,14,8,27),
  (13,12,'intermediat',3,12,5,28),
  (14,12,'intermediat',4,12,5,29),
  (15,13,'intermediat',5,14,8,30);


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
 
  /*add more student lessons*/
  INSERT INTO student_lesson (student_id, lesson_id)
VALUES
  (11, 11),
  (12, 12),
  (13, 13),
  (14, 14),
  (15, 15),
  (16, 16),
  (17, 17),
  (18, 18);
  INSERT INTO student_lesson (student_id, lesson_id)
VALUES
(19,19),
(20,20),
  (21, 21),
  (22, 22),
  (23, 23),
  (24, 24),
  (25, 25);

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
