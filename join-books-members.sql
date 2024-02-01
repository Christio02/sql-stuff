    -- SQLite
    SELECT members.member_id, members.name, books.title, books.book_id, checkouts.checkout_date, checkouts.return_date
    FROM books
    LEFT OUTER JOIN checkouts ON books.book_id = checkouts.book_id
    LEFT OUTER JOIN members ON members.member_id = checkouts.member_id
    ORDER BY members.name ASC