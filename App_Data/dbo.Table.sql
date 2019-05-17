CREATE TABLE [dbo].[Table] (
    [Id]            INT      IDENTITY(1,1)     NOT NULL,
    [Ime]           NVARCHAR (30) NULL,
    [Prezime]       NVARCHAR (30) NULL,
    [Email]         NVARCHAR (50) NULL,
    [Korisnicko]    NVARCHAR (30) NULL,
    [Pass]          NVARCHAR (30) NULL,
    [IznosNaRacunu] MONEY         DEFAULT ((10)) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

