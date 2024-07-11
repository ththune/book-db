-- Trigger that listens on UPDATE statements on the Lend table.
-- When an UPDATE happens, it will check if the lend_enddate was
-- going from NULL to a value. If that is true, the book_id belonging to that
-- particular lend will have its book_copies_avilable incremented.

-- We are checking if the lend_enddate is going from NULL to a value, otherwise other
-- UPDATE statements might cause book_copies_available to increment when it is not supposed to.

CREATE TRIGGER [dbo].[trigger_increment_book_copies_available]
ON [dbo].[Lend]
AFTER UPDATE
AS
BEGIN
    UPDATE Book
    SET book_copies_available = book_copies_available + 1
    FROM Book
    INNER JOIN inserted ON book_id = inserted.lend_book_id
    INNER JOIN deleted ON book_id = deleted.lend_book_id
    WHERE inserted.lend_enddate IS NOT NULL AND deleted.lend_enddate IS NULL;
END;