USE [Library]
GO
SET IDENTITY_INSERT [dbo].[Book] ON 

INSERT [dbo].[Book] ([BookId], [BookTitle], [BookIsbn], [BookPublishedDate], [BookCopiesAvailable], [BookCreatedStamp], [BookUpdatedStamp]) VALUES (1, N'The Hobbit', N'978-0-261-10300-0', CAST(N'1937-09-21' AS Date), 7, CAST(N'2024-06-29T12:26:03.563' AS DateTime), NULL)
INSERT [dbo].[Book] ([BookId], [BookTitle], [BookIsbn], [BookPublishedDate], [BookCopiesAvailable], [BookCreatedStamp], [BookUpdatedStamp]) VALUES (2, N'Harry Potter and the Sorcerer''s Stone', N'978-0-333-10201-0', CAST(N'2024-06-29' AS Date), 12, CAST(N'2024-06-29T12:26:03.563' AS DateTime), CAST(N'2024-07-01T20:44:11.813' AS DateTime))
INSERT [dbo].[Book] ([BookId], [BookTitle], [BookIsbn], [BookPublishedDate], [BookCopiesAvailable], [BookCreatedStamp], [BookUpdatedStamp]) VALUES (3, N'A Game of Thrones', N'978-0-553-10354-0', CAST(N'1996-08-06' AS Date), 13, CAST(N'2024-06-29T12:26:03.563' AS DateTime), CAST(N'2024-07-01T19:52:38.097' AS DateTime))
INSERT [dbo].[Book] ([BookId], [BookTitle], [BookIsbn], [BookPublishedDate], [BookCopiesAvailable], [BookCreatedStamp], [BookUpdatedStamp]) VALUES (4, N'The Name of the Wind', N'978-0-7564-0472-6', CAST(N'2007-03-27' AS Date), 17, CAST(N'2024-06-29T12:26:03.563' AS DateTime), CAST(N'2024-06-30T14:03:32.987' AS DateTime))
INSERT [dbo].[Book] ([BookId], [BookTitle], [BookIsbn], [BookPublishedDate], [BookCopiesAvailable], [BookCreatedStamp], [BookUpdatedStamp]) VALUES (5, N'Mistborn: The Final Empire', N'978-0-7653-5038-1', CAST(N'2006-07-17' AS Date), 11, CAST(N'2024-06-29T12:26:03.563' AS DateTime), NULL)
INSERT [dbo].[Book] ([BookId], [BookTitle], [BookIsbn], [BookPublishedDate], [BookCopiesAvailable], [BookCreatedStamp], [BookUpdatedStamp]) VALUES (6, N'The Eye of the World', N'978-0-8125-0749-0', CAST(N'1990-01-15' AS Date), 15, CAST(N'2024-06-29T12:26:03.563' AS DateTime), CAST(N'2024-07-01T19:42:08.503' AS DateTime))
INSERT [dbo].[Book] ([BookId], [BookTitle], [BookIsbn], [BookPublishedDate], [BookCopiesAvailable], [BookCreatedStamp], [BookUpdatedStamp]) VALUES (7, N'The Lies of Locke Lamora', N'978-0-553-80467-6', CAST(N'2006-06-27' AS Date), 8, CAST(N'2024-06-29T12:26:03.563' AS DateTime), NULL)
INSERT [dbo].[Book] ([BookId], [BookTitle], [BookIsbn], [BookPublishedDate], [BookCopiesAvailable], [BookCreatedStamp], [BookUpdatedStamp]) VALUES (8, N'The Blade Itself', N'978-0-575-07772-7', CAST(N'2006-05-04' AS Date), 13, CAST(N'2024-06-29T12:26:03.563' AS DateTime), NULL)
INSERT [dbo].[Book] ([BookId], [BookTitle], [BookIsbn], [BookPublishedDate], [BookCopiesAvailable], [BookCreatedStamp], [BookUpdatedStamp]) VALUES (9, N'Good Omens', N'978-0-575-04800-9', CAST(N'1990-05-01' AS Date), 7, CAST(N'2024-06-29T12:26:03.563' AS DateTime), CAST(N'2024-07-01T19:54:35.827' AS DateTime))
INSERT [dbo].[Book] ([BookId], [BookTitle], [BookIsbn], [BookPublishedDate], [BookCopiesAvailable], [BookCreatedStamp], [BookUpdatedStamp]) VALUES (10, N'American Gods', N'978-0-380-97365-1', CAST(N'2001-06-19' AS Date), 8, CAST(N'2024-06-29T12:26:03.563' AS DateTime), NULL)
INSERT [dbo].[Book] ([BookId], [BookTitle], [BookIsbn], [BookPublishedDate], [BookCopiesAvailable], [BookCreatedStamp], [BookUpdatedStamp]) VALUES (11, N'The Golden Compass', N'978-0-440-23813-3', CAST(N'1995-04-16' AS Date), 16, CAST(N'2024-06-29T12:26:03.563' AS DateTime), NULL)
INSERT [dbo].[Book] ([BookId], [BookTitle], [BookIsbn], [BookPublishedDate], [BookCopiesAvailable], [BookCreatedStamp], [BookUpdatedStamp]) VALUES (12, N'Eragon', N'978-0-375-82668-6', CAST(N'2002-08-26' AS Date), 2, CAST(N'2024-06-29T12:26:03.563' AS DateTime), NULL)
INSERT [dbo].[Book] ([BookId], [BookTitle], [BookIsbn], [BookPublishedDate], [BookCopiesAvailable], [BookCreatedStamp], [BookUpdatedStamp]) VALUES (13, N'The Once and Future King', N'978-0-441-16088-6', CAST(N'1958-08-01' AS Date), 2, CAST(N'2024-06-29T12:26:03.563' AS DateTime), CAST(N'2024-06-30T15:02:29.833' AS DateTime))
INSERT [dbo].[Book] ([BookId], [BookTitle], [BookIsbn], [BookPublishedDate], [BookCopiesAvailable], [BookCreatedStamp], [BookUpdatedStamp]) VALUES (14, N'The Last Unicorn', N'978-0-345-41973-9', CAST(N'1968-11-01' AS Date), 18, CAST(N'2024-06-29T12:26:03.563' AS DateTime), NULL)
INSERT [dbo].[Book] ([BookId], [BookTitle], [BookIsbn], [BookPublishedDate], [BookCopiesAvailable], [BookCreatedStamp], [BookUpdatedStamp]) VALUES (15, N'The Lion, the Witch and the Wardrobe', N'978-0-06-447104-6', CAST(N'1950-10-16' AS Date), 9, CAST(N'2024-06-29T12:26:03.563' AS DateTime), CAST(N'2024-07-01T21:37:03.687' AS DateTime))
INSERT [dbo].[Book] ([BookId], [BookTitle], [BookIsbn], [BookPublishedDate], [BookCopiesAvailable], [BookCreatedStamp], [BookUpdatedStamp]) VALUES (16, N'Jonathan Strange & Mr Norrell', N'978-1-58234-603-8', CAST(N'2004-09-08' AS Date), 1, CAST(N'2024-06-29T12:26:03.563' AS DateTime), NULL)
INSERT [dbo].[Book] ([BookId], [BookTitle], [BookIsbn], [BookPublishedDate], [BookCopiesAvailable], [BookCreatedStamp], [BookUpdatedStamp]) VALUES (17, N'The Sword of Shannara', N'978-0-345-27569-4', CAST(N'1977-04-12' AS Date), 10, CAST(N'2024-06-29T12:26:03.563' AS DateTime), NULL)
INSERT [dbo].[Book] ([BookId], [BookTitle], [BookIsbn], [BookPublishedDate], [BookCopiesAvailable], [BookCreatedStamp], [BookUpdatedStamp]) VALUES (18, N'The Black Company', N'978-0-8125-0962-3', CAST(N'1984-05-01' AS Date), 8, CAST(N'2024-06-29T12:26:03.563' AS DateTime), NULL)
INSERT [dbo].[Book] ([BookId], [BookTitle], [BookIsbn], [BookPublishedDate], [BookCopiesAvailable], [BookCreatedStamp], [BookUpdatedStamp]) VALUES (19, N'The Dragonbone Chair', N'978-0-7564-0565-5', CAST(N'1988-11-25' AS Date), 10, CAST(N'2024-06-29T12:26:03.563' AS DateTime), NULL)
INSERT [dbo].[Book] ([BookId], [BookTitle], [BookIsbn], [BookPublishedDate], [BookCopiesAvailable], [BookCreatedStamp], [BookUpdatedStamp]) VALUES (20, N'The Last Wish', N'978-0-316-03274-8', CAST(N'1993-02-26' AS Date), 0, CAST(N'2024-06-29T12:26:03.563' AS DateTime), NULL)
INSERT [dbo].[Book] ([BookId], [BookTitle], [BookIsbn], [BookPublishedDate], [BookCopiesAvailable], [BookCreatedStamp], [BookUpdatedStamp]) VALUES (21, N'The Priory of the Orange Tree', N'978-1-63557-029-8', CAST(N'2019-02-26' AS Date), 11, CAST(N'2024-06-29T12:26:03.563' AS DateTime), NULL)
INSERT [dbo].[Book] ([BookId], [BookTitle], [BookIsbn], [BookPublishedDate], [BookCopiesAvailable], [BookCreatedStamp], [BookUpdatedStamp]) VALUES (22, N'The Way of Kings', N'978-0-7653-2635-5', CAST(N'2010-08-31' AS Date), 19, CAST(N'2024-06-29T12:26:03.563' AS DateTime), NULL)
INSERT [dbo].[Book] ([BookId], [BookTitle], [BookIsbn], [BookPublishedDate], [BookCopiesAvailable], [BookCreatedStamp], [BookUpdatedStamp]) VALUES (23, N'The Well of Ascension', N'978-0-7653-5106-7', CAST(N'2007-08-21' AS Date), 3, CAST(N'2024-06-29T12:26:03.563' AS DateTime), NULL)
INSERT [dbo].[Book] ([BookId], [BookTitle], [BookIsbn], [BookPublishedDate], [BookCopiesAvailable], [BookCreatedStamp], [BookUpdatedStamp]) VALUES (24, N'The Hero of Ages', N'978-0-7653-5215-6', CAST(N'2008-10-14' AS Date), 2, CAST(N'2024-06-29T12:26:03.563' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Book] OFF
GO
