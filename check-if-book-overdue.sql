-- SQLite
SELECT 
    julianday(checkouts.return_date) - julianday(CURRENT_DATE) AS overdue, 
    members.member_id, 
    members.name,
    books.title,
    CASE WHEN (julianday(checkouts.return_date) - julianday(CURRENT_DATE)) < 0 
    THEN 'Book is Overdue' ELSE 'Book is not Overdue' 
    END AS is_overdue
FROM members
INNER JOIN checkouts ON checkouts.member_id = members.member_id
INNER JOIN books ON checkouts.book_id = books.book_id
GROUP BY checkouts.book_id
ORDER BY overdue DESC



