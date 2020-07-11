CREATE TABLE [dbo].[ChatChannelMember] (
    [ChannelMemberId] INT            IDENTITY (1, 1) NOT NULL,
    [ChannelId]       INT            NOT NULL,
    [UserId]          NVARCHAR (128) NOT NULL,
    [CreateDate]      DATETIME2 (7)  DEFAULT (getdate()) NOT NULL,
    PRIMARY KEY CLUSTERED ([ChannelMemberId] ASC),
    CONSTRAINT [FK_ChatChannelMember_Channel] FOREIGN KEY ([ChannelId]) REFERENCES [dbo].[ChatChannel] ([ChannelId]),
    CONSTRAINT [FK_ChatChannelMember_User] FOREIGN KEY ([UserId]) REFERENCES [dbo].[User] ([Id])
);

