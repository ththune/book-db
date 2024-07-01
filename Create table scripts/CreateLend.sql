SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lend](
	[LendId] [int] IDENTITY(1,1) NOT NULL,
	[LendBookId] [int] NOT NULL,
	[LendMemberId] [int] NOT NULL,
	[LendStartDate] [date] NOT NULL,
	[LendEndDate] [date] NULL,
	[LendCreatedStamp] [datetime] NOT NULL,
	[LendUpdatedStamp] [datetime] NULL,
 CONSTRAINT [PK_Lend] PRIMARY KEY CLUSTERED 
(
	[LendId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Lend]  WITH CHECK ADD  CONSTRAINT [FK_Lend_Book] FOREIGN KEY([LendBookId])
REFERENCES [dbo].[Book] ([BookId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Lend] CHECK CONSTRAINT [FK_Lend_Book]
GO
ALTER TABLE [dbo].[Lend]  WITH CHECK ADD  CONSTRAINT [FK_Lend_Member] FOREIGN KEY([LendMemberId])
REFERENCES [dbo].[Member] ([MemberId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Lend] CHECK CONSTRAINT [FK_Lend_Member]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[TriggerDecrementBookCopiesAvailable]
ON [dbo].[Lend]
AFTER INSERT
AS
BEGIN
    UPDATE Book
    SET BookCopiesAvailable = BookCopiesAvailable - 1
    FROM Book
    INNER JOIN inserted ON BookId = inserted.LendBookId;
END;
GO
ALTER TABLE [dbo].[Lend] ENABLE TRIGGER [TriggerDecrementBookCopiesAvailable]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[TriggerIncrementBookCopiesAvailable]
ON [dbo].[Lend]
AFTER UPDATE
AS
BEGIN
    UPDATE Book
    SET BookCopiesAvailable = BookCopiesAvailable + 1
    FROM Book
    INNER JOIN inserted ON BookId = inserted.LendBookId
    INNER JOIN deleted ON BookId = deleted.LendBookId
    WHERE inserted.LendEndDate IS NOT NULL AND deleted.LendEndDate IS NULL;
END;
GO
ALTER TABLE [dbo].[Lend] ENABLE TRIGGER [TriggerIncrementBookCopiesAvailable]
GO
