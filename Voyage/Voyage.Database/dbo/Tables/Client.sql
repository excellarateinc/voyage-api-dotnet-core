CREATE TABLE [dbo].[Client] (
    [Id]                          NVARCHAR (128)  NOT NULL,
    [Name]                        NVARCHAR (500)  NOT NULL,
    [ClientIdentifier]            NVARCHAR (500)  NOT NULL,
    [ClientSecret]                NVARCHAR (1000) NOT NULL,
    [RedirectUri]                 NVARCHAR (500)  NOT NULL,
    [IsSecretRequired]            BIT             NOT NULL,
    [IsScoped]                    BIT             NOT NULL,
    [IsAutoApprove]               BIT             NOT NULL,
    [AccessTokenValiditySeconds]  INT             NOT NULL,
    [RefreshTokenValiditySeconds] INT             NOT NULL,
    [FailedLoginAttempts]         INT             NULL,
    [ForceTokenExpiredate]        DATETIME        NULL,
    [IsEnabled]                   BIT             NOT NULL,
    [IsAccountLocked]             BIT             NOT NULL,
    [CreatedBy]                   NVARCHAR (255)  NOT NULL,
    [CreatedDate]                 DATETIME        NOT NULL,
    [LastModifiedBy]              NVARCHAR (255)  NOT NULL,
    [LastModifiedDate]            DATETIME        NOT NULL,
    [IsDeleted]                   BIT             NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

