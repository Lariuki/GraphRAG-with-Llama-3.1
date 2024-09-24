CREATE TABLE [dbo].[ControleDeAcessoRecurso] (
    [ID]                      INT            IDENTITY (1, 1) NOT NULL,
    [ID_Empresa]              INT            NOT NULL,
    [ID_RecursoPai]           INT            NULL,
    [Nome]                    VARCHAR (300)  NOT NULL,
    [Codigo]                  NVARCHAR (300) NULL,
    [Aplicativo]              NVARCHAR (150) NULL,
    [DataDaUltimaAtualizacao] DATETIME       CONSTRAINT [DF_ControleDeAcessoRecurso_DataDaUltimaAtualizacao] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_ControleDeAcessoRecurso] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_ControleDeAcessoRecurso_ControleDeAcessoRecurso] FOREIGN KEY ([ID_RecursoPai]) REFERENCES [dbo].[ControleDeAcessoRecurso] ([ID])
);

