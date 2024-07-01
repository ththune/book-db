SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookAuthor](
	[BookAuthorId] [int] IDENTITY(1,1) NOT NULL,
	[BookAuthorBookId] [int] NOT NULL,
	[BookAuthorAuthorId] [int] NOT NULL,
	[BookAuthorCreatedStamp] [datetime] NOT NULL,
	[BookAuthorUpdatedStamp] [datetime] NULL,
 CONSTRAINT [PK_BookAuthor] PRIMARY KEY CLUSTERED 
(
	[BookAuthorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BookAuthor]  WITH CHECK ADD  CONSTRAINT [FK_BookAuthor_Author] FOREIGN KEY([BookAuthorAuthorId])
REFERENCES [dbo].[Author] ([AuthorId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BookAuthor] CHECK CONSTRAINT [FK_BookAuthor_Author]
GO
ALTER TABLE [dbo].[BookAuthor]  WITH CHECK ADD  CONSTRAINT [FK_BookAuthor_Book] FOREIGN KEY([BookAuthorBookId])
REFERENCES [dbo].[Book] ([BookId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BookAuthor] CHECK CONSTRAINT [FK_BookAuthor_Book]
GO
