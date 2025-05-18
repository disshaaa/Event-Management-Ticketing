use [project]

CREATE TABLE Event(
    E_ID varchar(20) not null,
    E_Name VARCHAR(255),
	E_Desc VARCHAR(255),
    E_Loc VARCHAR(255),
    Event_Date DATE,
    Event_Time TIME,
	Constraint E_ID_PK primary key (E_ID)
);

insert into Event
select 'E01', 'Dance Battle', 'Cultural', 'Sabrang ground', '2023-10-27', '18:00:00'
go

insert into Event
select 'E02', 'Robozona', 'Technological', 'Design-studio', '2023-10-27', '14:00:00'
go

insert into Event
select 'E03', 'Algorythm 22.1', 'Technological', 'Complier Lab', '2023-10-28', '11:00:00'
go

insert into Event
select 'E04', 'Treasure Trove', 'Miscellaneous', 'LRC Circle', '2023-10-27', '10:00:00'
go

insert into Event
select 'E05', 'Shutter Island', 'Miscellaneous', 'LRC', '2023-10-28', '09:00:00'
go

insert into Event
select 'E06', 'Bidding before wicket', 'Managment', 'IM Amphi', '2023-10-29', '12:00:00'
go

insert into Event
select 'E07', 'Courtroom', 'Managment', 'IM Amphi', '2023-10-27', '15:00:00'
go

insert into Event
select 'E08', 'Panache', 'Cultural', 'Sabrang Ground', '2023-10-29', '20:00:00'
go

select * from Event


CREATE TABLE Tech_Event (
    E_Id varchar(20) not null,
    E_Name VARCHAR(255),
    E_Loc VARCHAR(255),
    Event_Date DATE,
    Event_Time TIME,
	Constraint fk13 FOREIGN KEY (E_ID) REFERENCES Event(E_ID)
);

insert into Tech_Event
select 'E02', 'Robozona', 'Design-studio', '2023-10-27', '14:00:00'
go

insert into Tech_Event
select 'E03', 'Algorythm 22.1', 'Complier Lab', '2023-10-28', '11:00:00'
go

select *from Tech_Event


CREATE TABLE Cultural_Event (
    E_Id varchar(20) not null,
    E_Name VARCHAR(255),
    E_Loc VARCHAR(255),
    Event_Date DATE,
    Event_Time TIME,
	Constraint fk14 FOREIGN KEY (E_ID) REFERENCES Event(E_ID)
);

insert into Cultural_Event
select 'E01', 'Dance Battle', 'Sabrang ground', '2023-10-27', '18:00:00'
go

insert into Cultural_Event
select 'E08', 'Panache', 'Sabrang Ground', '2023-10-29', '20:00:00'
go

select *from Cultural_Event


CREATE TABLE Managment_Event (
    E_Id varchar(20) not null,
    E_Name VARCHAR(255),
    E_Loc VARCHAR(255),
    Event_Date DATE,
    Event_Time TIME,
	Constraint fk15 FOREIGN KEY (E_ID) REFERENCES Event(E_ID)
);

insert into Managment_Event
select 'E06', 'Bidding before wicket', 'IM Amphi', '2023-10-29', '12:00:00'
go

insert into Managment_Event
select 'E07', 'Courtroom', 'IM Amphi', '2023-10-27', '15:00:00'
go

select *from Managment_Event


CREATE TABLE Miscellaneous_Event (
    E_Id varchar(20) not null,
    E_Name VARCHAR(255),
    E_Loc VARCHAR(255),
    Event_Date DATE,
    Event_Time TIME,
	Constraint fk16 FOREIGN KEY (E_ID) REFERENCES Event(E_ID)
);

insert into Miscellaneous_Event
select 'E04', 'Treasure Trove', 'LRC Circle', '2023-10-27', '10:00:00'
go

insert into Miscellaneous_Event
select 'E05', 'Shutter Island','LRC', '2023-10-28', '09:00:00'
go

select *from Miscellaneous_Event