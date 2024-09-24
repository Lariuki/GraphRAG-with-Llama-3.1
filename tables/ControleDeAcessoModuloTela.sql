CREATE TABLE [dbo].[ControleDeAcessoModuloTela] (
    [ID]                        INT      IDENTITY (1, 1) NOT NULL,
    [ID_ControleDeAcessoTela]   INT      NOT NULL,
    [ID_ControleDeAcessoModulo] INT      NOT NULL,
    [DataDeCadastro]            DATETIME NOT NULL,
    [DataDaUltimaAlteracao]     DATETIME NOT NULL,
    [UtimoUsuarioQueAlterou]    INT      NOT NULL,
    CONSTRAINT [PK_ControleDeAcessoModuloTela] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_ControleDeAcessoModuloTela_ControleDeAcessoModulo] FOREIGN KEY ([ID_ControleDeAcessoModulo]) REFERENCES [dbo].[ControleDeAcessoModulo] ([ID]),
    CONSTRAINT [FK_ControleDeAcessoModuloTela_ControleDeAcessoTela] FOREIGN KEY ([ID_ControleDeAcessoTela]) REFERENCES [dbo].[ControleDeAcessoTela] ([ID])
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Data de cadastro', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ControleDeAcessoModuloTela', @level2type = N'COLUMN', @level2name = N'DataDeCadastro';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Data da ultima alteração', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ControleDeAcessoModuloTela', @level2type = N'COLUMN', @level2name = N'DataDaUltimaAlteracao';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Ultimo Usuario que alterou', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ControleDeAcessoModuloTela', @level2type = N'COLUMN', @level2name = N'UtimoUsuarioQueAlterou';

