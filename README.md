# 🎫 Event Management and Ticketing System

This project is a **Database Management System (DBMS)** designed for efficiently managing a university's **cultural fest events**, including ticketing, participants, sponsorships, stalls, and organizing committees. It was developed using **SQL Server** as part of the CS1133 DBMS course at **JK Lakshmipat University, Jaipur**.

---

## 🧩 Problem Statement

Build a relational database to manage all aspects of a university cultural fest. The system should support:

- Event scheduling
- Ticket sales
- Attendee information
- Sponsorship tracking
- Stall allocation
- Committee member management
- Registration and ticket validation

---

## 🗃️ Key Entities

- **Event**: ID, name, type (cultural, technical, management, miscellaneous), location, date, time.
- **Ticket**: Ticket ID, price.
- **Student/Participant**: ID, type (in-house, outsider), contact details.
- **Committee**: Members, subcommittees (Design & Decor, Internal, Promotion, etc.).
- **Stalls**: Type-based (food, clothes, misc.), rent, contact.
- **Sponsorship**: Sponsor name, associated events, payments.
- **Judges**: Judge details, assigned events.
- **Registration**: Tracks which participant registered for which event with which ticket.

---

## 🧮 Features

- ✅ **Normalized Database Design**  
- ✅ **ER and Relational Diagrams**  
- ✅ **SQL DDL & DML Implementation**  
- ✅ **Table creation, constraints, and data insertion**  
- ✅ **Foreign Key relationships for data integrity**  
- ✅ **Support for multiple subcommittees and event types**  
- ✅ **Queries for committee management, event details, and ticket handling**

---

## 🛠️ Tools & Technologies

- SQL Server Management Studio (SSMS)
- T-SQL (Transact-SQL)

---

## 🚀 How to Use

1. Clone this repository.
2. Open SQL Server Management Studio (SSMS).
3. Run the scripts in the following order:
   - `create_tables.sql`
   - `insert_data.sql`
4. Use `sample_queries.sql` to test and interact with the database.

---

## 🏁 Conclusion

This project demonstrates effective use of relational database concepts to model a real-world scenario — managing a university fest. It highlights normalization, relationship mapping, and practical SQL usage.

---

⭐ Star this repo if you found it useful!
