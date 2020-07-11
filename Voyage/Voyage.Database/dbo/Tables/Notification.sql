CREATE TABLE [dbo].[Notification] (
    [Id]               INT            IDENTITY (1, 1) NOT NULL,
    [Subject]          NVARCHAR (128) NOT NULL,
    [Description]      NVARCHAR (256) NOT NULL,
    [AssignedToUserId] NVARCHAR (128) NOT NULL,
    [IsRead]           BIT            DEFAULT ((0)) NOT NULL,
    [CreatedBy]        NVARCHAR (128) NOT NULL,
    [CreatedDate]      DATETIME2 (7)  DEFAULT (getdate()) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

