CREATE TABLE [dbo].[ControleDeAcessoMenu] (
    [ID]                      INT            IDENTITY (1, 1) NOT NULL,
    [ID_MenuPai]              INT            NULL,
    [Nome]                    NVARCHAR (100) NOT NULL,
    [Endereco]                NVARCHAR (300) NULL,
    [EnderecoIcone]           NVARCHAR (300) NULL,
    [Aplicativo]              NVARCHAR (100) NOT NULL,
    [Ordem]                   INT            NOT NULL,
    [PossuiFilho]             BIT            NOT NULL,
    [DataDeCadastro]          DATETIME       NOT NULL,
    [DataDaUltimaAlteracao]   DATETIME       NOT NULL,
    [UltimoUsuarioQueAlterou] INT            NOT NULL,
    CONSTRAINT [PK_ControleDeAcessoMenu] PRIMARY KEY CLUSTERED ([ID] ASC)
);

