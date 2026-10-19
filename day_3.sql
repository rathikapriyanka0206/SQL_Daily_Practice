-- Day 3: GROUP BY, aggregate functions and HAVING (2 questions)

-- Sample data:-
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


-- Question 1: For each city, show the number of loans and the total
-- loan amount. Show the city with the highest total first.

SELECT city,
       COUNT(*)    AS loan_count,
       SUM(amount) AS total_amount
FROM loans
GROUP BY city
ORDER BY total_amount DESC;


-- Question 2: For each loan status, show the count, total and average
-- amount. Keep only the statuses whose total is above 130,000.


SELECT status,
       COUNT(*)    AS loan_count,
       SUM(amount) AS total_amount,
       AVG(amount) AS average_amount
FROM loans
GROUP BY status
HAVING SUM(amount) > 130000
ORDER BY total_amount DESC;

-- Learned: GROUP BY collapses rows into groups, aggregate functions
-- (COUNT, SUM, AVG) summarise each group, and HAVING filters the groups
-- after grouping, whereas WHERE filters rows before grouping.
