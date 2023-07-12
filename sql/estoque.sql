CREATE TABLE IF NOT EXISTS controle_estoque.estoque
(
    id integer NOT NULL,
    qntd integer NOT NULL,
    local_estoque character varying(50) COLLATE pg_catalog."default" NOT NULL,
    id_estoque integer NOT NULL,
    CONSTRAINT estoque_pkey PRIMARY KEY (id),
    CONSTRAINT estoque_id_estoque_fkey FOREIGN KEY (id_estoque)
        REFERENCES public.produto (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS controle_estoque.estoque
    OWNER to aluno;