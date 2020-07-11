CREATE TABLE [dbo].[ChatChannel] (
    [ChannelId]  INT            IDENTITY (1, 1) NOT NULL,
    [Name]       NVARCHAR (100) NOT NULL,
    [CreatedBy]  NVARCHAR (128) NOT NULL,
    [CreateDate] DATETIME2 (7)  DEFAULT (getdate()) NOT NULL,
    PRIMARY KEY CLUSTERED ([ChannelId] ASC),
    CONSTRAINT [FK_ChatChannel_User] FOREIGN KEY ([CreatedBy]) REFERENCES [dbo].[User] ([Id])
);

