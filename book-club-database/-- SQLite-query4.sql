-- SQLite
-- Join query
SELECT members.member_id, members.name
FROM members 
INNER JOIN checkouts ON members.member_id = checkouts.member_id
WHERE 1 = 1
AND checkout_date BETWEEN '2024-01-01' AND '2024-05-01'
AND return_date BETWEEN '2023-01-01' AND '2024-06-13'