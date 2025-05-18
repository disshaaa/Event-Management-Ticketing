create database project
use [project]

CREATE TABLE Committee (
    S_ID VARCHAR(20),
    st_Name VARCHAR(255),
    st_Contact VARCHAR(15),
    st_committee VARCHAR(50),
    st_Email VARCHAR(255),
	Constraint S_ID_PK primary key (S_ID)
);


INSERT INTO Committee
SELECT '2022Btech031', 'Disha Kumar Arora' , '9829057780' ,'Accomodation & Transporation' , 'dishaarora@jklu.edu.in'
GO


INSERT INTO Committee
SELECT '2022Btech043', 'Ishita Agrawal' , '7234198567' ,'Internal Arrangements' , 'ishitaagrawal@jklu.edu.in'
GO


INSERT INTO Committee
SELECT '2022Btech019', 'Arukshita Dubey' , '8763456719' ,'Design & Decor' , 'arukshitadubey@jklu.edu.in'
GO


INSERT INTO Committee
SELECT '2022Btech022', 'Ashmit Sharma' , '9987652316' ,'Promotions, Registration & Sponsorship' , 'ashmitsharma@jklu.edu.in'
GO


INSERT INTO Committee
SELECT '2022Btech028', 'Dev Rishi' , '9672247802' ,'Photography & Media' , 'dev@jklu.edu.in'
GO


INSERT INTO Committee
SELECT '2022Btech029', 'Devashish Nagpal' , '7654891212' ,'Accomodation & Transporation' , 'devashish@jklu.edu.in'
GO


INSERT INTO Committee
SELECT '2022Btech040', 'Harshita Kumawat' , '7876565432' ,'Accomodation & Transporation' , 'harshita@jklu.edu.in'
GO


INSERT INTO Committee
SELECT '2022Btech005', 'Adhiraj Singh' , '9142683468' ,'Internal Arrangements' , 'adhiraj@jklu.edu.in'
GO


INSERT INTO Committee
SELECT '2022Btech011', 'Akshita' , '7689341234' ,'Internal Arrangements' , 'akshita@jklu.edu.in'
GO


INSERT INTO Committee
SELECT '2022Btech046', 'Bhoomi' , '8876345623' ,'Design & Decor' , 'bhoomi@jklu.edu.in'
GO


INSERT INTO Committee
SELECT '2022Btech018', 'Arohi' , '9854234576' ,'Design & Decor' , 'arohi@jklu.edu.in'
GO


INSERT INTO Committee
SELECT '2021Btech005', 'Anshita' , '8754123456' ,'Promotions, Registration & Sponsorship' , 'anshita@jklu.edu.in'
GO


INSERT INTO Committee
SELECT '2022Btech013', 'Aishani' , '9876543189' ,'Promotions, Registration & Sponsorship' , 'aishani@jklu.edu.in'
GO


INSERT INTO Committee
SELECT '2022Btech069', 'Riya' , '9988776633' ,'Photography & Media' , 'riya@jklu.edu.in'
GO


INSERT INTO Committee
SELECT '2022Btech004', 'Astha' , '5588994433' ,'Photography & Media' , 'astha@jklu.edu.in'
GO

select * from Committee

CREATE TABLE Accomodation_Transportation_Commitee (
    S_ID VARCHAR(20) NOT NULL,
    st_Name VARCHAR(255) NOT NULL,
    st_Contact VARCHAR(15) NOT NULL,
    st_Post VARCHAR(50) NOT NULL,
    st_Email VARCHAR(255) NOT NULL,
	Constraint fk1 FOREIGN KEY (S_ID) REFERENCES Committee(S_ID)
);

INSERT INTO Accomodation_Transportation_Commitee
SELECT '2022Btech031', 'Disha Kumar Arora' , '9829057780' ,'Core' , 'dishaarora@jklu.edu.in'
GO

INSERT INTO Accomodation_Transportation_Commitee
SELECT '2022Btech029', 'Devashish Nagpal' , '7654891212' ,'Coordinator' , 'devashish@jklu.edu.in'
GO

INSERT INTO Accomodation_Transportation_Commitee
SELECT '2022Btech040', 'Harshita Kumawat' , '7876565432' ,'Volunteer' , 'harshita@jklu.edu.in'
GO

select * from Accomodation_Transportation_Commitee


CREATE TABLE Internal_Arrangements_Committee (
    S_ID VARCHAR(20) NOT NULL,
    st_Name VARCHAR(255) NOT NULL,
    st_Contact VARCHAR(15) NOT NULL,
    st_Post VARCHAR(50) NOT NULL,
    st_Email VARCHAR(255) NOT NULL,
	Constraint fk2 FOREIGN KEY (S_ID) REFERENCES Committee(S_ID)
);

INSERT INTO Internal_Arrangements_Committee
SELECT '2022Btech043', 'Ishita Agrawal' , '7234198567' ,'Core' , 'ishitaagrawal@jklu.edu.in'
GO

INSERT INTO Internal_Arrangements_Committee
SELECT '2022Btech005', 'Adhiraj Singh' , '9142683468' ,'Coordinator' , 'adhiraj@jklu.edu.in'
GO

INSERT INTO Internal_Arrangements_Committee
SELECT '2022Btech011', 'Akshita' , '7689341234' ,'Volunteer' , 'akshita@jklu.edu.in'
GO

select * from Internal_Arrangements_Committee


CREATE TABLE Photography_Media_Committee (
    S_ID VARCHAR(20) NOT NULL,
    st_Name VARCHAR(255) NOT NULL,
    st_Contact VARCHAR(15) NOT NULL,
    st_Post VARCHAR(50) NOT NULL,
    st_Email VARCHAR(255) NOT NULL,
	Constraint fk3 FOREIGN KEY (S_ID) REFERENCES Committee(S_ID)
);

INSERT INTO Photography_Media_Committee
SELECT '2022Btech028', 'Dev Rishi' , '9672247802' ,'Core' , 'dev@jklu.edu.in'
GO

INSERT INTO Photography_Media_Committee
SELECT '2022Btech069', 'Riya' , '9988776633' ,'Coordinator' , 'riya@jklu.edu.in'
GO

INSERT INTO Photography_Media_Committee
SELECT '2022Btech004', 'Astha' , '5588994433' ,'Volunteer' , 'astha@jklu.edu.in'
GO

select * from Photography_Media_Committee


CREATE TABLE Promotions_Registration_Sponsorship_Committee (
    S_ID VARCHAR(20) NOT NULL,
    st_Name VARCHAR(255) NOT NULL,
    st_Contact VARCHAR(15) NOT NULL,
    st_Post VARCHAR(50) NOT NULL,
    st_Email VARCHAR(255) NOT NULL,
	Constraint fk4 FOREIGN KEY (S_ID) REFERENCES Committee(S_ID)
);

INSERT INTO Promotions_Registration_Sponsorship_Committee
SELECT '2022Btech022', 'Ashmit Sharma' , '9987652316' ,'Core' , 'ashmitsharma@jklu.edu.in'
GO

INSERT INTO Promotions_Registration_Sponsorship_Committee
SELECT '2021Btech005', 'Anshita' , '8754123456' ,'Coordinator' , 'anshita@jklu.edu.in'
GO

INSERT INTO Promotions_Registration_Sponsorship_Committee
SELECT '2022Btech013', 'Aishani' , '9876543189' ,'Volunteer' , 'aishani@jklu.edu.in'
GO

select * from Promotions_Registration_Sponsorship_Committee


CREATE TABLE Design_Decor_Committee(
    S_ID VARCHAR(20) NOT NULL,
    st_Name VARCHAR(255) NOT NULL,
    st_Contact VARCHAR(15) NOT NULL,
    st_Post VARCHAR(50) NOT NULL,
    st_Email VARCHAR(255) NOT NULL,
	Constraint fk5 FOREIGN KEY (S_ID) REFERENCES Committee(S_ID)
);

INSERT INTO Design_Decor_Committee
SELECT '2022Btech019', 'Arukshita Dubey' , '8763456719' ,'Core' , 'arukshitadubey@jklu.edu.in'
GO

INSERT INTO Design_Decor_Committee
SELECT '2022Btech046', 'Bhoomi' , '8876345623' ,'Coordinator' , 'bhoomi@jklu.edu.in'
GO

INSERT INTO Design_Decor_Committee
SELECT '2022Btech018', 'Arohi' , '9854234576' ,'Volunteer' , 'arohi@jklu.edu.in'
GO

select * from Design_Decor_Committee


