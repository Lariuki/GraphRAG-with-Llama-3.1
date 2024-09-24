CREATE TABLE [dbo].[ControleDeAcessoGrupoUsuario] (
    [ID]         INT IDENTITY (1, 1) NOT NULL,
    [ID_Grupo]   INT NULL,
    [ID_Usuario] INT NULL,
    CONSTRAINT [PK_ControleDeAcessoGrupoUsuario] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_ControleDeAcessoGrupoUsuario_ControleDeAcessoGrupo] FOREIGN KEY ([ID_Grupo]) REFERENCES [dbo].[ControleDeAcessoGrupo] ([ID]),
    CONSTRAINT [FK_ControleDeAcessoGrupoUsuario_ControleDeAcessoUsuario] FOREIGN KEY ([ID_Usuario]) REFERENCES [dbo].[ControleDeAcessoUsuario] ([ID])
);

