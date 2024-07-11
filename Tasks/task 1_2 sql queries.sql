/*
  Opportunity for improvement:
  FROM and INNER JOINs should use aliases on the tablenames, e.g., 
  	"FROM Lend l",
  	"INNER JOIN Book b ON b.book_id = l.lend_book_id"
*/

-- Task 2.a
-- Find all books writted by a specific author.
SELECT AuthorId, AuthorFirstname, AuthorLastname, BookId, BookTitle, BookIsbn from Author
INNER JOIN BookAuthor ON BookAuthorAuthorId = AuthorId
INNER JOIN Book ON BookId = BookAuthorBookId
WHERE AuthorId = 5

-- Task 2.b
-- Find all books that is lend out to a specific member.
SELECT BookId, BookTitle, BookIsbn, MemberId, MemberFullname FROM Lend
INNER JOIN Book ON BookId = LendBookId
INNER JOIN Member ON MemberId = LendMemberId
WHERE LendMemberId = 4 AND LendEnddate IS NULL

-- TASK 2.c
-- Find all members that lended books in a certain period.
SELECT DISTINCT MemberId, MemberFullname, MemberEmail
FROM Member
INNER JOIN Lend ON LendMemberId = MemberId
WHERE LendStartdate BETWEEN '2024-01-25' AND '2024-04-01'