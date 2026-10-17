 Lists and Dictionaries 
 SELECT, WHERE, ORDER BY (3 questions)

--Sample data (run this first in DB Fiddle or SQLite)
CREATE TABLE loans (
    loan_id INTEGER,
    customer TEXT,
    city TEXT,
    amount INTEGER,
    status TEXT
);

INSERT INTO loans VALUES
(1, 'Anitha',  'Coimbatore', 120000, 'Paid'),
(2, 'Karthik', 'Chennai',     45000, 'Overdue'),
(3, 'Meena',   'Coimbatore',  80000, 'Overdue'),
(4, 'Suresh',  'Madurai',     30000, 'Paid'),
(5, 'Divya',   'Chennai',     95000, 'Active'),
(6, 'Ravi',    'Madurai',     60000, 'Active');

-- Question 1: Show the customer and amount for all overdue loans.

SELECT customer, amount
FROM loans
WHERE status = 'Overdue';

-- Question 2: List all loans above 50,000, with the biggest first.

SELECT customer, city, amount
FROM loans
WHERE amount > 50000
ORDER BY amount DESC;

-- Question 3: Find loans from Coimbatore or Chennai with an amount
-- between 40,000 and 100,000, with the biggest first.
SELECT customer, city, amount
FROM loans
WHERE city IN ('Coimbatore', 'Chennai')
  AND amount BETWEEN 40000 AND 100000
ORDER BY amount DESC;

-- Learned: WHERE filters rows, ORDER BY sorts them, and IN / BETWEEN
-- make multiple conditions shorter and easier to read.
