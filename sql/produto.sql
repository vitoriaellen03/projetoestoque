CREATE TABLE IF NOT EXISTS controle_estoque.produto
(
    descricao character varying(50) COLLATE pg_catalog."default" NOT NULL,
    tipo character varying(30) COLLATE pg_catalog."default" NOT NULL,
    data_cadastro date NOT NULL,
    id integer NOT NULL,
    CONSTRAINT produto_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS controle_estoque.produto
    OWNER to aluno;