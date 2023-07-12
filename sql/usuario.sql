CREATE TABLE IF NOT EXISTS controle_estoque.usuario
(
    id integer NOT NULL,
    data_nasc date NOT NULL,
    cpf integer NOT NULL,
    nome character varying(50) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT usuario_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS controle_estoque.usuario
    OWNER to aluno;