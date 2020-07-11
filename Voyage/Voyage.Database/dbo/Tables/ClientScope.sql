CREATE TABLE [dbo].[ClientScope] (
    [Id]                NVARCHAR (128) NOT NULL,
    [ClientId]          NVARCHAR (128) NOT NULL,
    [ClientScopeTypeId] NVARCHAR (128) NOT NULL,
    [CreatedBy]         NVARCHAR (255) NOT NULL,
    [CreatedDate]       DATETIME       NOT NULL,
    [LastModifiedBy]    NVARCHAR (255) NOT NULL,
    [LastModifiedDate]  DATETIME       NOT NULL,
    [IsDeleted]         BIT            NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_dbo.ClientScopes_dbo.Client_Scope_Type_Id] FOREIGN KEY ([ClientScopeTypeId]) REFERENCES [dbo].[ClientScopeType] ([Id]),
    CONSTRAINT [FK_dbo.ClientScopes_dbo.Clients_Id] FOREIGN KEY ([ClientId]) REFERENCES [dbo].[Client] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_ClientScope_Client_Id]
    ON [dbo].[ClientScope]([ClientId] ASC);

