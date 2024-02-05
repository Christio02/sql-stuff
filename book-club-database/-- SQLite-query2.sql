SELECT *, COUNT(*) AS Total
FROM members
CROSS JOIN books
