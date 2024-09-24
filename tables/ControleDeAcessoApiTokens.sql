CREATE TABLE [dbo].[ControleDeAcessoApiTokens] (
    [ID]                      INT           IDENTITY (1, 1) NOT NULL,
    [ID_Empresa]              INT           NOT NULL,
    [ID_Usuario]              INT           NOT NULL,
    [Token]                   VARCHAR (500) NOT NULL,
    [TokenExpiration]         DATETIME      NULL,
    [DataDaUltimaAlteracao]   DATETIME      NOT NULL,
    [UltimoUsuarioQueAlterou] INT           NOT NULL,
    CONSTRAINT [PK_ControleDeAcessoApiTokens] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_ControleDeAcessoApiTokens_ControleDeAcessoUsuario] FOREIGN KEY ([ID_Usuario]) REFERENCES [dbo].[ControleDeAcessoUsuario] ([ID]),
    CONSTRAINT [FK_ControleDeAcessoApiTokens_Empresa] FOREIGN KEY ([ID_Empresa]) REFERENCES [dbo].[Empresa] ([ID]),
    CONSTRAINT [CK_ControleDeAcessoApiTokens_Token] UNIQUE NONCLUSTERED ([Token] ASC),
    CONSTRAINT [CK_ControleDeAcessoApiTokens_Usuario] UNIQUE NONCLUSTERED ([ID_Empresa] ASC, [ID_Usuario] ASC)
);



