-- Enable readable output format
.mode columns
.headers on

-- Instructions for students:
-- 1. Open SQLite in terminal: sqlite3 library.db
-- 2. Load this script: .read code.sql
-- 3. Exit SQLite: .exit


-- write your sql code here

--1. **List all loans**  Show book title, member name, and loan date.



SELECT Members.name, COUNT(Loans.loan_date) AS Number_Of_Loans
FROM Members LEFT JOIN Loans ON Loans.member_id = Members.id
GROUP BY Members.name
ORDER BY Number_Of_Loans DESC;