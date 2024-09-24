CREATE TABLE [dbo].[ControleDeAcessoPermissaoMenu] (
    [ID]                      INT          IDENTITY (1, 1) NOT NULL,
    [ID_Menu]                 INT          NOT NULL,
    [ID_Usuario]              INT          NULL,
    [ID_Grupo]                INT          NULL,
    [Ativo]                   BIT          NOT NULL,
    [TipoPermissao]           NVARCHAR (5) NOT NULL,
    [DataDeCadastro]          DATETIME     NOT NULL,
    [DataDaUltimaAlteracao]   DATETIME     NOT NULL,
    [UltimoUsuarioQueAlterou] INT          NOT NULL,
    CONSTRAINT [PK_ControleDeAcessoPermissaoMenu] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_ControleDeAcessoPermissaoMenu_ControleDeAcessoGrupo] FOREIGN KEY ([ID_Grupo]) REFERENCES [dbo].[ControleDeAcessoGrupo] ([ID]),
    CONSTRAINT [FK_ControleDeAcessoPermissaoMenu_ControleDeAcessoMenu] FOREIGN KEY ([ID_Menu]) REFERENCES [dbo].[ControleDeAcessoMenu] ([ID]),
    CONSTRAINT [FK_ControleDeAcessoPermissaoMenu_ControleDeAcessoUsuario] FOREIGN KEY ([ID_Usuario]) REFERENCES [dbo].[ControleDeAcessoUsuario] ([ID])
);

