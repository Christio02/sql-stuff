SELECT
    members.member_id,
    members.name,
    COUNT(checkouts.book_id) AS AntallBøker
FROM
    members
INNER JOIN checkouts ON members.member_id = checkouts.member_id
GROUP BY
    members.member_id, members.name
ORDER BY
    AntallBøker DESC;
