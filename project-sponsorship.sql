use [project]

CREATE TABLE Sponsorship(
    SP_ID int not null,
    SP_Name VARCHAR(255),
	Constraint SP_ID_PK primary key (SP_ID)
);

insert into Sponsorship
select 1, 'JK Tyre'
go

insert into Sponsorship
select 2, 'Style & Scissors'
go

select * from Sponsorship


CREATE TABLE Sponsored_by (
    E_Id varchar(20) not null,
    SP_ID int not null,
    SP_Payment numeric(10,2),
	Constraint fk17 FOREIGN KEY (E_ID) REFERENCES Event(E_ID),
	Constraint fk18 FOREIGN KEY (SP_ID) REFERENCES Sponsorship(SP_ID)
);

insert into Sponsored_by
select 'E01', 1, 5600
go

insert into Sponsored_by
select 'E02', 1, 2000
go

insert into Sponsored_by
select 'E03', 2, 5600
go

insert into Sponsored_by
select 'E04', 2, 6600
go

insert into Sponsored_by
select 'E05', 2, 5000
go

insert into Sponsored_by
select 'E06', 1, 2000
go

select * from Sponsored_by


create table Ticket(
	T_ID VARCHAR(20) not null,
	T_Price numeric(10,2),
	Constraint T_ID_PK primary key (T_ID)
);

insert into Ticket
select 'T01', 100
go

insert into Ticket
select 'T02', 200
go

insert into Ticket
select 'T03', 200
go

insert into Ticket
select 'T04', 100
go

insert into Ticket
select 'T05', 100
go

select *from Ticket

CREATE TABLE Registers (
	Reg_ID varchar(20) not null,
    Reg_Date DATE,
    E_ID VARCHAR(20) not null,
    T_Id VARCHAR(20) not null,
    P_ID INT not null,
	Constraint Reg_ID primary key (Reg_ID),
    Constraint fk19 FOREIGN KEY (E_ID) REFERENCES Event(E_ID),
    Constraint fk20 FOREIGN KEY (T_Id) REFERENCES Ticket(T_Id),
    Constraint fk21 FOREIGN KEY (P_ID) REFERENCES Participant(P_ID)
);

insert into Registers
select 'R1','2023-08-10','E01','T01',1
go

insert into Registers
select 'R2','2023-07-10','E01','T02',2
go

insert into Registers
select 'R3','2023-06-05','E02','T03',3
go

insert into Registers
select 'R4','2023-10-25','E07','T04',4
go

select *from Registers

create table Judge(
	J_ID VARCHAR(20) not null,
	J_Name Varchar(255),
	J_Contact numeric(10,0),
	Constraint J_ID_PK primary key (J_ID)
);

insert into Judge
select 'J01', 'Paritosh' , 9854346518
go

insert into Judge
select 'J02', 'Harry' , 9854321518
go

insert into Judge
select 'J03', 'Videsha' , 9888346518
go

insert into Judge
select 'J04', 'Muskaan' , 9814346518
go

select * from Judge