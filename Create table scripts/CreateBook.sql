SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book](
	[BookId] [int] IDENTITY(1,1) NOT NULL,
	[BookTitle] [nvarchar](500) NOT NULL,
	[BookIsbn] [varchar](17) NOT NULL,
	[BookPublishedDate] [date] NOT NULL,
	[BookCopiesAvailable] [tinyint] NOT NULL,
	[BookCreatedStamp] [datetime] NOT NULL,
	[BookUpdatedStamp] [datetime] NULL,
 CONSTRAINT [PK_Book] PRIMARY KEY CLUSTERED 
(
	[BookId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Book] ADD  CONSTRAINT [DEFAULT_Book_book_copies_available]  DEFAULT ((0)) FOR [BookCopiesAvailable]
GO
ALTER TABLE [dbo].[Book] ADD  CONSTRAINT [DEFAULT_Book_BookCreatedStamp]  DEFAULT (getdate()) FOR [BookCreatedStamp]
GO
