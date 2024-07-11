-- Trigger that listens on INSERT statements on the Lend table.
-- When an INSERT happens, the book_id it was inserted on will be
-- decremented from the book_copies_available, indicating that the
-- library has one book less available for that book_id.

CREATE TRIGGER [dbo].[trigger_decrement_book_copies_available]
ON [dbo].[Lend]
AFTER INSERT
AS
BEGIN
    UPDATE Book
    SET BookCopiesAvailable = BookCopiesAvailable - 1
    FROM Book
    INNER JOIN inserted ON BookId = inserted.LendBookId;
END;