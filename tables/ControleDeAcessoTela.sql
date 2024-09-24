CREATE TABLE [dbo].[ControleDeAcessoTela] (
    [ID]                     INT        IDENTITY (1, 1) NOT NULL,
    [NomeDaTela]             CHAR (100) NOT NULL,
    [Endereco]               CHAR (200) NOT NULL,
    [EnderecoIcone]          CHAR (200) NOT NULL,
    [DataDeCadastro]         DATETIME   NOT NULL,
    [DataDaUltimaAlteracao]  DATETIME   NOT NULL,
    [UtimoUsuarioQueAlterou] INT        NOT NULL,
    CONSTRAINT [PK_ControleDeAcessoTela] PRIMARY KEY CLUSTERED ([ID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Chave PK da tabela', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ControleDeAcessoTela', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Data de cadastro', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ControleDeAcessoTela', @level2type = N'COLUMN', @level2name = N'DataDeCadastro';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Data da ultima alteração', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ControleDeAcessoTela', @level2type = N'COLUMN', @level2name = N'DataDaUltimaAlteracao';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Ultimo Usuario que alterou', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ControleDeAcessoTela', @level2type = N'COLUMN', @level2name = N'UtimoUsuarioQueAlterou';

