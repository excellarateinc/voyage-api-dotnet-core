CREATE TABLE [dbo].[ClientScopeType] (
    [Id]               NVARCHAR (128)  NOT NULL,
    [Name]             NVARCHAR (500)  NOT NULL,
    [Description]      NVARCHAR (1000) NOT NULL,
    [CreatedBy]        NVARCHAR (255)  NOT NULL,
    [CreatedDate]      DATETIME        NOT NULL,
    [LastModifiedBy]   NVARCHAR (255)  NOT NULL,
    [LastModifiedDate] DATETIME        NOT NULL,
    [IsDeleted]        BIT             NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

