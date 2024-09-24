CREATE TABLE [dbo].[ControleDeAcessoModulo] (
    [ID]                           INT        IDENTITY (1, 1) NOT NULL,
    [ID_ControleDeAcessoAplicacao] INT        NOT NULL,
    [ID_ModuloPai]                 INT        NULL,
    [NomeModulo]                   CHAR (100) NOT NULL,
    [Sequencia]                    INT        NOT NULL,
    [DataDeCadastro]               DATETIME   NOT NULL,
    [DataDaUltimaAlteracao]        DATETIME   NOT NULL,
    [UtimoUsuarioQueAlterou]       INT        NOT NULL,
    CONSTRAINT [PK_ControleDeAcessoModulo] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_ControleDeAcessoModulo_ControleDeAcessoMenu] FOREIGN KEY ([ID_ModuloPai]) REFERENCES [dbo].[ControleDeAcessoMenu] ([ID]),
    CONSTRAINT [FK_ControleDeAcessoModulo_ControleDeAcessoModulo] FOREIGN KEY ([ID_ModuloPai]) REFERENCES [dbo].[ControleDeAcessoModulo] ([ID])
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Chave PK da tabela', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ControleDeAcessoModulo', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Data de cadastro', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ControleDeAcessoModulo', @level2type = N'COLUMN', @level2name = N'DataDeCadastro';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Data da ultima alteração', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ControleDeAcessoModulo', @level2type = N'COLUMN', @level2name = N'DataDaUltimaAlteracao';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Ultimo Usuario que alterou', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ControleDeAcessoModulo', @level2type = N'COLUMN', @level2name = N'UtimoUsuarioQueAlterou';

