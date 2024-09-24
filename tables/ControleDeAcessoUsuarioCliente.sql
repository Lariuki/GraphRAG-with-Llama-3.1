CREATE TABLE [dbo].[ControleDeAcessoUsuarioCliente] (
    [ID_Usuario] INT NOT NULL,
    [ID_Cliente] INT NOT NULL,
    [ID_Empresa] INT NOT NULL,
    CONSTRAINT [PK_ControleDeAcessoUsuarioCliente] PRIMARY KEY CLUSTERED ([ID_Usuario] ASC, [ID_Cliente] ASC),
    CONSTRAINT [FK_ControleDeAcessoUsuarioCliente_ControleDeAcessoUsuario] FOREIGN KEY ([ID_Usuario]) REFERENCES [dbo].[ControleDeAcessoUsuario] ([ID]),
    CONSTRAINT [FK_ControleDeAcessoUsuarioCliente_Empresa] FOREIGN KEY ([ID_Empresa]) REFERENCES [dbo].[Empresa] ([ID])
);

