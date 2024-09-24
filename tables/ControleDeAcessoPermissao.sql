CREATE TABLE [dbo].[ControleDeAcessoPermissao] (
    [ID]            INT         IDENTITY (1, 1) NOT NULL,
    [ID_Recurso]    INT         NOT NULL,
    [ID_Usuario]    INT         NULL,
    [ID_Grupo]      INT         NULL,
    [TipoPermissao] VARCHAR (5) NOT NULL,
    CONSTRAINT [PK_ControleDeAcessoPermissao] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_ControleDeAcessoPermissao_ControleDeAcessoGrupo] FOREIGN KEY ([ID_Grupo]) REFERENCES [dbo].[ControleDeAcessoGrupo] ([ID]),
    CONSTRAINT [FK_ControleDeAcessoPermissao_ControleDeAcessoRecurso] FOREIGN KEY ([ID_Recurso]) REFERENCES [dbo].[ControleDeAcessoRecurso] ([ID]),
    CONSTRAINT [FK_ControleDeAcessoPermissao_ControleDeAcessoUsuario] FOREIGN KEY ([ID_Usuario]) REFERENCES [dbo].[ControleDeAcessoUsuario] ([ID])
);

