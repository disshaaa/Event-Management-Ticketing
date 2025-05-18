use [project]

CREATE TABLE Participant(
    P_ID INT not null,
    P_Type Varchar(20),
	Constraint P_ID_PK primary key (P_ID)
);

insert into Participant
select 001, 'In-house'
go

insert into Participant
select 002, 'Outsider'
go

insert into Participant
select 003, 'In-house'
go

insert into Participant
select 004, 'Outsider'
go

insert into Participant
select 005, 'Outsider'
go

select * from Participant


CREATE TABLE Inhouse (
    P_ID INT not null,
    P_Name VARCHAR(255),
    P_Contact numeric(10,0),
	P_Email varchar(20),
	Constraint fk11 FOREIGN KEY (P_ID) REFERENCES Participant(P_ID),
);

insert into Inhouse
select 001, 'Sanjay' , 8976342567, 'sanjay@gmail.com'
go

insert into Inhouse
select 003, 'khushi', 5674356719, 'Khushi@gmail.com'
go

select * from Inhouse

CREATE TABLE Outsider (
    P_ID INT not null,
    P_Name VARCHAR(255),
	P_Contact numeric(10,0),
	P_Email varchar(20),
	P_Type Varchar(20),
	School_name varchar(20),
	College_name varchar(20),
	Constraint fk12 FOREIGN KEY (P_ID) REFERENCES Participant(P_ID),
);

insert into Outsider
select 002, 'rahul', 9876543219 , 'rahul@gmail.com', 'school','jphs',''
go

insert into Outsider
select 004, 'anjali', 9876543210, 'anjali@gmail.com', 'college', '','manipal'
go

insert into Outsider
select 005, 'tina', 9876543245 , 'tina@gmail.com', 'college','' ,'jecrc'
go

select * from Outsider

