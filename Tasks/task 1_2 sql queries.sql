-- Task 2.a
-- Find all books writted by a specific author.
SELECT author_id, author_firstname, author_lastname, book_id, book_title, book_isbn from Author
INNER JOIN BookAuthor ON bookauthor_author_id = author_id
INNER JOIN Book ON book_id = bookauthor_book_id
WHERE author_id = 5

-- Task 2.b
-- Find all books that is lend out to a specific member.
SELECT book_id, book_title, book_isbn, member_id, member_fullname FROM Lend
INNER JOIN Book ON book_id = lend_book_id
INNER JOIN Member ON member_id = lend_member_id
WHERE lend_member_id = 4 AND lend_enddate IS NULL

-- TASK 2.c
-- Find all members that lended books in a certain period.
SELECT DISTINCT member_id, member_fullname, member_email
FROM Member
INNER JOIN Lend ON lend_member_id = member_id
WHERE lend_startdate BETWEEN '2024-01-25' AND '2024-04-01'