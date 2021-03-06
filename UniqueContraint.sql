USE [Employee]
GO
/****** Object:  Table [dbo].[tblPerson]    Script Date: 4/10/2020 12:26:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPerson](
	[Id] [int] NOT NULL,
	[name] [nchar](100) NOT NULL,
	[email] [nchar](100) NOT NULL,
	[gender] [int] NULL CONSTRAINT [DF_tblPerson_Gender]  DEFAULT ((3)),
	[Age] [int] NULL,
 CONSTRAINT [UQ_tblPerson_EMail] UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[tblPerson]  WITH CHECK ADD  CONSTRAINT [tblPerson_Gender_Fk] FOREIGN KEY([gender])
REFERENCES [dbo].[tblGender] ([Id])
GO
ALTER TABLE [dbo].[tblPerson] CHECK CONSTRAINT [tblPerson_Gender_Fk]
GO
ALTER TABLE [dbo].[tblPerson]  WITH CHECK ADD  CONSTRAINT [ck_tblPerson_age] CHECK  (([age]>(0) AND [age]<(150)))
GO
ALTER TABLE [dbo].[tblPerson] CHECK CONSTRAINT [ck_tblPerson_age]
GO
