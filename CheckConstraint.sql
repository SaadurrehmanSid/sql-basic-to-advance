USE [Employee]
GO
/****** Object:  Table [dbo].[tblPerson]    Script Date: 4/9/2020 10:12:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPerson](
	[Id] [int] NOT NULL,
	[name] [nchar](100) NOT NULL,
	[email] [nchar](100) NOT NULL,
	[gender] [int] NULL CONSTRAINT [DF_tblPerson_Gender]  DEFAULT ((3)),
	[Age] [int] NULL
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[tblPerson]  WITH CHECK ADD  CONSTRAINT [tblPerson_Gender_Fk] FOREIGN KEY([gender])
REFERENCES [dbo].[tblGender] ([Id])
GO
ALTER TABLE [dbo].[tblPerson] CHECK CONSTRAINT [tblPerson_Gender_Fk]
GO
ALTER TABLE [dbo].[tblPerson]  WITH CHECK ADD  CONSTRAINT [ck_tblPerson_age] CHECK  (([age]<(0) AND [age]>(150)))
GO
ALTER TABLE [dbo].[tblPerson] CHECK CONSTRAINT [ck_tblPerson_age]
GO
