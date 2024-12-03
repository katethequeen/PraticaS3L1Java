//Clienti

CREATE TABLE IF NOT EXISTS public.clienti
(
    numero_cliente integer NOT NULL DEFAULT nextval('clienti_numero_cliente_seq'::regclass),
    nome character varying COLLATE pg_catalog."default",
    cognome character varying COLLATE pg_catalog."default",
    anno_nascita integer NOT NULL DEFAULT nextval('clienti_anno_nascita_seq'::regclass),
    regione_residenza character varying COLLATE pg_catalog."default",
    CONSTRAINT clienti_pkey PRIMARY KEY (numero_cliente)
)

//fatture

CREATE TABLE IF NOT EXISTS public.fatture
(
    numero_fattura integer NOT NULL DEFAULT nextval('fatture_numero_fattura_seq'::regclass),
    tipologia character varying COLLATE pg_catalog."default",
    importo double precision,
    iva integer NOT NULL DEFAULT nextval('fatture_iva_seq'::regclass),
    id_cliente integer NOT NULL DEFAULT nextval('fatture_id_cliente_seq'::regclass),
    data_fattura date,
    numero_fornitore integer NOT NULL DEFAULT nextval('fatture_numero_fornitore_seq'::regclass),
    CONSTRAINT fatture_pkey PRIMARY KEY (numero_fattura)
)

//fornitori

CREATE TABLE IF NOT EXISTS public.fornitori
(
    numero_fornitore integer NOT NULL DEFAULT nextval('fornitori_numero_fornitore_seq'::regclass),
    denominazione character varying COLLATE pg_catalog."default",
    regione_residenza character varying COLLATE pg_catalog."default",
    CONSTRAINT fornitori_pkey PRIMARY KEY (numero_fornitore)
)

//prodotti

CREATE TABLE IF NOT EXISTS public.prodotti
(
    id_prodotto integer NOT NULL DEFAULT nextval('prodotti_id_prodotto_seq'::regclass),
    descrizione character varying COLLATE pg_catalog."default",
    in_produzione boolean,
    in_commercio boolean,
    data_attivazione date,
    data_disattivazione date,
    CONSTRAINT prodotti_pkey PRIMARY KEY (id_prodotto)
)