CREATE TABLE [dbo].[ControleDeAcessoGrupo] (
    [ID]                      INT            IDENTITY (1, 1) NOT NULL,
    [ID_Empresa]              INT            NOT NULL,
    [Nome]                    NVARCHAR (250) NOT NULL,
    [Descricao]               NVARCHAR (600) NULL,
    [Tipo]                    NVARCHAR (100) NOT NULL,
    [Bloqueado]               BIT            NOT NULL,
    [DataDaUltimaAlteracao]   DATETIME       NOT NULL,
    [UltimoUsuarioQueAlterou] INT            NOT NULL,
    [DataDeDelecao]           DATETIME       NULL,
    CONSTRAINT [PK_ControleDeAcessoGrupo] PRIMARY KEY CLUSTERED ([ID] ASC)
);

