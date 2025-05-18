use [project]

CREATE TABLE Stalls (
    Stall_ID varchar(20) not null,
    Stall_Name VARCHAR(255),
    Stall_Contact VARCHAR(15),
	Stall_Type VARCHAR(20),
    Stall_Rent NUMERIC(10,2),
	Constraint Stall_ID_PK primary key (Stall_ID)
);

insert into Stalls
select 'STO01', 'DROPOUT', '9876234576', 'Food', 6000
go

insert into Stalls
select 'STO02', 'CCD', '9876234578', 'Food', 8000
go

insert into Stalls
select 'STO03', 'Bewakoof', '9876234565', 'Cloths', 6500
go

insert into Stalls
select 'STO04', 'Zudio', '9876234326', 'Cloths', 3470
go

insert into Stalls
select 'STO05', '', '9876234532', 'Misc', 5500
go

insert into Stalls
select 'STO06', '', '9876234678', 'Misc', 8000
go

select * from Stalls


CREATE TABLE Food_Stalls (
    Stall_ID varchar(20) not null,
    Stall_Name VARCHAR(255),
    Stall_Contact VARCHAR(15),
    Stall_Rent NUMERIC(10,2),
	Constraint fk6 FOREIGN KEY (Stall_ID) REFERENCES Stalls(Stall_ID)
);

insert into Food_Stalls
select 'STO01', 'DROPOUT', '9876234576', 6000
go

insert into Food_Stalls
select 'STO02', 'CCD', '9876234578',  8000
go

select *from Food_Stalls


CREATE TABLE Clothes_stalls (
    Stall_ID varchar(20) not null,
    Stall_Name VARCHAR(255),
    Stall_Contact VARCHAR(15),
    Stall_Rent NUMERIC(10,2),
	Constraint fk7 FOREIGN KEY (Stall_ID) REFERENCES Stalls(Stall_ID)
);

insert into Clothes_stalls
select 'STO03', 'Bewakoof', '9876234565', 6500
go

insert into Clothes_stalls
select 'STO04', 'Zudio', '9876234326', 3470
go

select *from Clothes_stalls


CREATE TABLE Miscellaneous_Stalls (
    Stall_ID varchar(20) not null,
    Stall_Name VARCHAR(255),
    Stall_Contact VARCHAR(15),
    Stall_Rent NUMERIC(10,2),
	Constraint fk8 FOREIGN KEY (Stall_ID) REFERENCES Stalls(Stall_ID)
);

insert into Miscellaneous_Stalls
select 'STO05', '', '9876234532', 5500
go

insert into Miscellaneous_Stalls
select 'STO06', '', '9876234678', 8000
go

select *from Miscellaneous_Stalls



Create table Manages(
	Stall_ID varchar(20) not null,
	S_ID VARCHAR(20) NOT NULL,
	Constraint fk9 FOREIGN KEY (Stall_ID) REFERENCES Stalls(Stall_ID),
	Constraint fk10 FOREIGN KEY (S_ID) REFERENCES Committee(S_ID)
)

insert into Manages
select 'STO01', '2022Btech043'
go

insert into Manages
select 'STO02', '2022Btech011'
go

insert into Manages
select 'STO03', '2022Btech043'
go

insert into Manages
select 'STO04', '2022Btech011'
go

insert into Manages
select 'STO05', '2022Btech005'
go

insert into Manages
select 'STO06', '2022Btech043'
go

select *from Manages