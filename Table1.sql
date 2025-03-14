/*
   Thursday, 11 March 20219:05:14 p.m.
   User: 
   Server: TOSM100W7\SQLEXPRESS
   Database: msdb
   Application: 
*/

/* To prevent any potential data loss issues, you should review this script in detail before running it outside the context of the database designer.*/
BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE guest.Table1
(	ID 		int NOT NULL,
	Description 	varchar(50) NOT NULL,
	Status 		bit NOT NULL,
	Value 		real NULL )  ON [PRIMARY]
GO
ALTER TABLE guest.Table1 ADD CONSTRAINT
	PK_Table1 PRIMARY KEY CLUSTERED 
	(ID) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
CREATE NONCLUSTERED INDEX IX_Table1 ON guest.Table1
	(
	ID
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
COMMIT
