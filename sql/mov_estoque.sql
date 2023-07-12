CREATE TABLE IF NOT EXISTS controle_estoque.mov_estoque
(
    id integer NOT NULL,
    qntd integer NOT NULL,
    data_operacao date NOT NULL,
    tipo_operacao character varying(20) COLLATE pg_catalog."default" NOT NULL,
    id_estoque integer NOT NULL,
    id_usuario integer NOT NULL,
    CONSTRAINT mov_estoque_pkey PRIMARY KEY (id),
    CONSTRAINT mov_estoque_id_estoque_fkey FOREIGN KEY (id_estoque)
        REFERENCES public.estoque (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT mov_estoque_id_usuario_fkey FOREIGN KEY (id_usuario)
        REFERENCES public.usuario (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS controle_estoque.mov_estoque
    OWNER to aluno;