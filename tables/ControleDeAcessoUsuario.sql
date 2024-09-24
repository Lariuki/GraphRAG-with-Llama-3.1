CREATE TABLE [dbo].[ControleDeAcessoUsuario] (
    [ID]                      INT            IDENTITY (1, 1) NOT NULL,
    [ID_Empresa]              INT            NULL,
    [Login]                   NVARCHAR (50)  NOT NULL,
    [Senha]                   NVARCHAR (200) NOT NULL,
    [Identificacao]           NVARCHAR (50)  NULL,
    [NomeCompleto]            NVARCHAR (200) NULL,
    [Tipo]                    NVARCHAR (50)  NULL,
    [Status]                  BIT            NULL,
    [DataDeCriacao]           DATETIME       NOT NULL,
    [Email]                   NVARCHAR (50)  NULL,
    [DataBloqueioUsuario]     DATETIME       NULL,
    [DataDaUltimaAtualizacao] DATETIME       NULL,
    [RedefinirSenha]          BIT            CONSTRAINT [DF_ControleDeAcessoUsuario_RedefinirSenha] DEFAULT ((1)) NOT NULL,
    [ResetToken]              NVARCHAR (500) NULL,
    [DataResetTokenGerado]    DATETIME       NULL,
    [UltimoUsuarioQueAlterou] INT            NULL,
    [DataDeDelecao]           DATETIME       NULL,
    [EmailToken] NVARCHAR(500) NULL, 
    [EmailValidado] BIT NULL, 
    CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_ControleDeAcessoUsuario_Empresa] FOREIGN KEY ([ID_Empresa]) REFERENCES [dbo].[Empresa] ([ID])
);

