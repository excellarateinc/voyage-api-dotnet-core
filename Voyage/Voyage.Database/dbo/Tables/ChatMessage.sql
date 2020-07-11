CREATE TABLE [dbo].[ChatMessage] (
    [MessageId]  INT             IDENTITY (1, 1) NOT NULL,
    [ChannelId]  INT             NOT NULL,
    [Message]    NVARCHAR (1000) NOT NULL,
    [Username]   NVARCHAR (MAX)  NOT NULL,
    [CreatedBy]  NVARCHAR (128)  NOT NULL,
    [CreateDate] DATETIME2 (7)   DEFAULT (getdate()) NOT NULL,
    PRIMARY KEY CLUSTERED ([MessageId] ASC),
    CONSTRAINT [FK_ChatMessage_ChatChannel] FOREIGN KEY ([ChannelId]) REFERENCES [dbo].[ChatChannel] ([ChannelId]),
    CONSTRAINT [FK_ChatMessage_User] FOREIGN KEY ([CreatedBy]) REFERENCES [dbo].[User] ([Id])
);

