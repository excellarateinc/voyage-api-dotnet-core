CREATE TABLE [dbo].[ClientRole] (
    [ClientId] NVARCHAR (128) NOT NULL,
    [RoleId]   NVARCHAR (128) NOT NULL,
    [Id]       NVARCHAR (128) NOT NULL,
    CONSTRAINT [PK_dbo.ClientRoles] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_dbo.ClientRoles_dbo.Clients_Id] FOREIGN KEY ([ClientId]) REFERENCES [dbo].[Client] ([Id]),
    CONSTRAINT [FK_dbo.ClientRoles_dbo.Roles_RoleId] FOREIGN KEY ([RoleId]) REFERENCES [dbo].[Role] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_ClientRole_Client_Id]
    ON [dbo].[ClientRole]([ClientId] ASC);

