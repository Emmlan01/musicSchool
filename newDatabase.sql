CREATE TABLE email (
 id SERIAL NOT NULL,
 email VARCHAR(500) NOT NULL
);

ALTER TABLE email ADD CONSTRAINT PK_email PRIMARY KEY (id);


CREATE TABLE genre (
 genre_id SERIAL NOT NULL,
 name VARCHAR(500)
);

ALTER TABLE genre ADD CONSTRAINT PK_genre PRIMARY KEY (genre_id);


CREATE TABLE Instrument_type (
 type_id SERIAL NOT NULL,
 name VARCHAR(500)
);

ALTER TABLE Instrument_type ADD CONSTRAINT PK_Instrument_type PRIMARY KEY (type_id);


CREATE TABLE parent (
 parent_id SERIAL NOT NULL
);

ALTER TABLE parent ADD CONSTRAINT PK_parent PRIMARY KEY (parent_id);


CREATE TABLE person (
 person_id SERIAL NOT NULL,
 first_name VARCHAR(500),
 last_name VARCHAR(500),
 age INT,
 street VARCHAR(500),
 zip VARCHAR(500),
 city VARCHAR(500),
 person_number VARCHAR(12) NOT NULL,
 parent_id SERIAL
);

ALTER TABLE person ADD CONSTRAINT PK_person PRIMARY KEY (person_id);


CREATE TABLE person_email (
 email_id SERIAL NOT NULL,
 person_id SERIAL NOT NULL
);

ALTER TABLE person_email ADD CONSTRAINT PK_person_email PRIMARY KEY (email_id,person_id);


CREATE TABLE phone (
 id SERIAL NOT NULL,
 phone_number VARCHAR(500) NOT NULL
);

ALTER TABLE phone ADD CONSTRAINT PK_phone PRIMARY KEY (id);


CREATE TABLE price_list (
 price_id SERIAL NOT NULL,
 type_of_lesson_price INT,
 level_of_lesson_price INT,
 discount INT,
 amount_of_lessons INT,
 instructor_salary INT
);

ALTER TABLE price_list ADD CONSTRAINT PK_price_list PRIMARY KEY (price_id);


CREATE TABLE student (
 student_id SERIAL NOT NULL,
 family_id SERIAL,
 person_id SERIAL,
 parent_id SERIAL
);

ALTER TABLE student ADD CONSTRAINT PK_student PRIMARY KEY (student_id);


CREATE TABLE instructor (
 instructor_id SERIAL NOT NULL,
 availble_to_teach BOOLEAN,
 person_id SERIAL
);

ALTER TABLE instructor ADD CONSTRAINT PK_instructor PRIMARY KEY (instructor_id);


CREATE TABLE instrument (
 instrument_id SERIAL NOT NULL,
 available BOOLEAN,
 rent_cost INT,
 type_id SERIAL
);

ALTER TABLE instrument ADD CONSTRAINT PK_instrument PRIMARY KEY (instrument_id);


CREATE TABLE lesson_schedule (
 lesson_id SERIAL NOT NULL,
 price_id SERIAL,
 instructor_id SERIAL NOT NULL,
 time TIMESTAMP(6),
 booked BOOLEAN,
 classroom_id INT NOT NULL
);

ALTER TABLE lesson_schedule ADD CONSTRAINT PK_lesson_schedule PRIMARY KEY (lesson_id);


CREATE TABLE person_phone (
 person_id SERIAL NOT NULL,
 phone_id SERIAL NOT NULL
);

ALTER TABLE person_phone ADD CONSTRAINT PK_person_phone PRIMARY KEY (person_id,phone_id);


CREATE TABLE rental (
 rental_id SERIAL NOT NULL,
 start_time TIMESTAMP(6),
 end_time TIMESTAMP(6),
 instrument_id SERIAL NOT NULL,
 student_id SERIAL NOT NULL
);

ALTER TABLE rental ADD CONSTRAINT PK_rental PRIMARY KEY (rental_id);


CREATE TABLE student_lesson (
 student_id SERIAL NOT NULL,
 lesson_id SERIAL NOT NULL
);

ALTER TABLE student_lesson ADD CONSTRAINT PK_student_lesson PRIMARY KEY (student_id,lesson_id);


CREATE TABLE ensemble (
 ensemble_id SERIAL NOT NULL,
 number_of_students INT,
 instrument_level VARCHAR(500),
 type_id SERIAL,
 max_students INT,
 min_students INT,
 lesson_id SERIAL NOT NULL,
 genre_id SERIAL NOT NULL
);

ALTER TABLE ensemble ADD CONSTRAINT PK_ensemble PRIMARY KEY (ensemble_id);


CREATE TABLE group_lesson (
 group_lesson_id SERIAL NOT NULL,
 number_of_students INT,
 instrument_level VARCHAR(500),
 type_id SERIAL,
 max_students INT,
 min_students INT,
 lesson_id SERIAL NOT NULL
);

ALTER TABLE group_lesson ADD CONSTRAINT PK_group_lesson PRIMARY KEY (group_lesson_id);


CREATE TABLE individual_lesson (
 individual_lesson_id SERIAL NOT NULL,
 instrument_level VARCHAR(500),
 type_id SERIAL,
 lesson_id SERIAL NOT NULL
);

ALTER TABLE individual_lesson ADD CONSTRAINT PK_individual_lesson PRIMARY KEY (individual_lesson_id);


ALTER TABLE person ADD CONSTRAINT FK_person_0 FOREIGN KEY (parent_id) REFERENCES parent (parent_id);


ALTER TABLE person_email ADD CONSTRAINT FK_person_email_0 FOREIGN KEY (email_id) REFERENCES person (person_id);
ALTER TABLE person_email ADD CONSTRAINT FK_person_email_1 FOREIGN KEY (person_id) REFERENCES email (id);


ALTER TABLE student ADD CONSTRAINT FK_student_0 FOREIGN KEY (person_id) REFERENCES person (person_id);
ALTER TABLE student ADD CONSTRAINT FK_student_1 FOREIGN KEY (parent_id) REFERENCES parent (parent_id);


ALTER TABLE instructor ADD CONSTRAINT FK_instructor_0 FOREIGN KEY (person_id) REFERENCES person (person_id);


ALTER TABLE instrument ADD CONSTRAINT FK_instrument_0 FOREIGN KEY (type_id) REFERENCES Instrument_type (type_id);


ALTER TABLE lesson_schedule ADD CONSTRAINT FK_lesson_schedule_0 FOREIGN KEY (price_id) REFERENCES price_list (price_id);
ALTER TABLE lesson_schedule ADD CONSTRAINT FK_lesson_schedule_1 FOREIGN KEY (instructor_id) REFERENCES instructor (instructor_id);


ALTER TABLE person_phone ADD CONSTRAINT FK_person_phone_0 FOREIGN KEY (person_id) REFERENCES person (person_id);
ALTER TABLE person_phone ADD CONSTRAINT FK_person_phone_1 FOREIGN KEY (phone_id) REFERENCES phone (id);


ALTER TABLE rental ADD CONSTRAINT FK_rental_0 FOREIGN KEY (instrument_id) REFERENCES instrument (instrument_id);
ALTER TABLE rental ADD CONSTRAINT FK_rental_1 FOREIGN KEY (student_id) REFERENCES student (student_id);


ALTER TABLE student_lesson ADD CONSTRAINT FK_student_lesson_0 FOREIGN KEY (student_id) REFERENCES student (student_id);
ALTER TABLE student_lesson ADD CONSTRAINT FK_student_lesson_1 FOREIGN KEY (lesson_id) REFERENCES lesson_schedule (lesson_id);


ALTER TABLE ensemble ADD CONSTRAINT FK_ensemble_0 FOREIGN KEY (type_id) REFERENCES Instrument_type (type_id);
ALTER TABLE ensemble ADD CONSTRAINT FK_ensemble_1 FOREIGN KEY (lesson_id) REFERENCES lesson_schedule (lesson_id);
ALTER TABLE ensemble ADD CONSTRAINT FK_ensemble_2 FOREIGN KEY (genre_id) REFERENCES genre (genre_id);


ALTER TABLE group_lesson ADD CONSTRAINT FK_group_lesson_0 FOREIGN KEY (type_id) REFERENCES Instrument_type (type_id);
ALTER TABLE group_lesson ADD CONSTRAINT FK_group_lesson_1 FOREIGN KEY (lesson_id) REFERENCES lesson_schedule (lesson_id);


ALTER TABLE individual_lesson ADD CONSTRAINT FK_individual_lesson_0 FOREIGN KEY (type_id) REFERENCES Instrument_type (type_id);
ALTER TABLE individual_lesson ADD CONSTRAINT FK_individual_lesson_1 FOREIGN KEY (lesson_id) REFERENCES lesson_schedule (lesson_id);


