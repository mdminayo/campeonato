--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.7
-- Dumped by pg_dump version 9.6.7

-- Started on 2018-09-13 01:20:37

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 12387)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2134 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 186 (class 1259 OID 52871)
-- Name: candidato; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE candidato (
    id integer NOT NULL,
    identificacion character varying(20),
    nombre character varying(30),
    apellido character varying(30),
    descripcion character varying(50),
    foto character varying(30)
);


ALTER TABLE candidato OWNER TO postgres;

--
-- TOC entry 185 (class 1259 OID 52869)
-- Name: candidato_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE candidato_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE candidato_id_seq OWNER TO postgres;

--
-- TOC entry 2135 (class 0 OID 0)
-- Dependencies: 185
-- Name: candidato_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE candidato_id_seq OWNED BY candidato.id;


--
-- TOC entry 187 (class 1259 OID 52877)
-- Name: votantes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE votantes (
    identificacionvotante character varying(20),
    idcandidato integer
);


ALTER TABLE votantes OWNER TO postgres;

--
-- TOC entry 2005 (class 2604 OID 52874)
-- Name: candidato id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY candidato ALTER COLUMN id SET DEFAULT nextval('candidato_id_seq'::regclass);


--
-- TOC entry 2126 (class 0 OID 52871)
-- Dependencies: 186
-- Data for Name: candidato; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY candidato (id, identificacion, nombre, apellido, descripcion, foto) FROM stdin;
1	123	 Danilo	 Minayo	 null 	carroza.jpg
2	456	lola	castillo	 null 	Captura.PNG
\.


--
-- TOC entry 2136 (class 0 OID 0)
-- Dependencies: 185
-- Name: candidato_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('candidato_id_seq', 2, true);


--
-- TOC entry 2127 (class 0 OID 52877)
-- Dependencies: 187
-- Data for Name: votantes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY votantes (identificacionvotante, idcandidato) FROM stdin;
852	1
963	1
987	2
498	2
\.


--
-- TOC entry 2007 (class 2606 OID 52876)
-- Name: candidato candidato_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY candidato
    ADD CONSTRAINT candidato_pkey PRIMARY KEY (id);


-- Completed on 2018-09-13 01:20:38

--
-- PostgreSQL database dump complete
--

