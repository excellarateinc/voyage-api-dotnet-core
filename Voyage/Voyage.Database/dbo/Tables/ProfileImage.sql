CREATE TABLE [dbo].[ProfileImage] (
    [ProfileImageId] INT            IDENTITY (1, 1) NOT NULL,
    [UserId]         NVARCHAR (128) NOT NULL,
    [ImageData]      NVARCHAR (MAX) NOT NULL,
    PRIMARY KEY CLUSTERED ([ProfileImageId] ASC),
    CONSTRAINT [FK_ProfileImage_User] FOREIGN KEY ([UserId]) REFERENCES [dbo].[User] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_UserId]
    ON [dbo].[ProfileImage]([UserId] ASC);

