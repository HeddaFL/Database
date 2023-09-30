CREATE DATABASE HOSPITAL;
USE HOSPITAL;

CREATE TABLE PATIENT(
	SSN INTEGER,
	First_name VARCHAR(300) NOT NULL,
    Last_name VARCHAR(300) NOT NULL, 
    Address VARCHAR (300),
    Birthday INTEGER,
    Gender VARCHAR(100),
    PRIMARY KEY (SSN)
);

CREATE TABLE HOSPITALROOM(
	SSN INTEGER NOT NULL,
    Doctor_id INTEGER NOT NULL,
    Room_number INTEGER,
    Date_of_admission INTEGER,
    Date_of_discharge INTEGER,
    PRIMARY KEY (SSN),
    FOREIGN KEY (Doctor_id) REFERENCES DOCTOR (Doctor_id)
);

CREATE TABLE DOCTOR(
	Doctor_id INTEGER NOT NULL,
    First_name VARCHAR(300),
    Last_name VARCHAR(300),
    Specialty VARCHAR(300),
    PRIMARY KEY (Doctor_id)
);

INSERT INTO PATIENT 
	(SSN, First_name, Last_name, Address, Birthday, Gender)
VALUES 
	(11, 'Olivia',	'Olsen', 'Donald duck street',	66662066, 'Female'),
    (12, 'Frank', 'Smith', 'Princess Diana street', 11112011, 'Male'),
    (13, 'Savanna', 'Larsen', 'King Oscars street', 44442044, 'Female'),
    (14, 'Hank', 'Hansen', 'Mini mouse street', 77772077, 'Male');

SELECT 
	*
FROM 
	PATIENT;

INSERT INTO HOSPITALROOM
	(SSN, Doctor_id, Room_number, Date_of_admission, Date_of_discharge)
VALUES 
	(11, 1, 302, 01122022, 03022023),
    (12, 2, 303, 07082022, 19122022),
    (13, 3, 409, 15032023, 19052023),
    (14, 2, 501, 20012023, 14072023);

SELECT 
	*
FROM 
	HOSPITALROOM;

INSERT INTO DOCTOR
	(Doctor_id, First_name, Last_name, Specialty)
VALUES
	(1, 'Ole', 'Iversen', 'Neurology'),
    (2, 'Hanna', 'Berg', 'Cardiology'),
    (3, 'Amalie', 'Andersen', 'Hematology');

SELECT 
	*
FROM 
	DOCTOR;