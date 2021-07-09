--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.25
-- Dumped by pg_dump version 10.17

-- Started on 2021-06-09 11:56:57 MSK

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 12361)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2123 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 181 (class 1259 OID 26086)
-- Name: e_inquiry_data; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.e_inquiry_data (
    id integer NOT NULL,
    card_number character varying(15) DEFAULT NULL::character varying,
    shop_code character varying(50) NOT NULL,
    brand_code character varying(50) NOT NULL,
    first_name character varying(255) NOT NULL,
    last_name character varying(255) NOT NULL,
    patronymic_name character varying(255) DEFAULT NULL::character varying,
    gender smallint NOT NULL,
    birth_date integer,
    email character varying(255) DEFAULT NULL::character varying,
    phone character varying(12) DEFAULT NULL::character varying,
    communicate_via_email boolean NOT NULL,
    communicate_via_phone boolean NOT NULL,
    allow_newsletter boolean NOT NULL,
    friend_card_number character varying(15) DEFAULT NULL::character varying,
    promo_code character varying(32) DEFAULT NULL::character varying,
    data_type character varying(255) NOT NULL,
    additional_fields json
);


ALTER TABLE public.e_inquiry_data OWNER TO postgres;

--
-- TOC entry 2124 (class 0 OID 0)
-- Dependencies: 181
-- Name: COLUMN e_inquiry_data.gender; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.e_inquiry_data.gender IS '(DC2Type:gender)';


--
-- TOC entry 2125 (class 0 OID 0)
-- Dependencies: 181
-- Name: COLUMN e_inquiry_data.birth_date; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.e_inquiry_data.birth_date IS '(DC2Type:utc_timestamp)';


--
-- TOC entry 2126 (class 0 OID 0)
-- Dependencies: 181
-- Name: COLUMN e_inquiry_data.additional_fields; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.e_inquiry_data.additional_fields IS '(DC2Type:child_list_dto)';


--
-- TOC entry 182 (class 1259 OID 26098)
-- Name: e_inquiry_data_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.e_inquiry_data_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.e_inquiry_data_id_seq OWNER TO postgres;

--
-- TOC entry 2113 (class 0 OID 26086)
-- Dependencies: 181
-- Data for Name: e_inquiry_data; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.e_inquiry_data (id, card_number, shop_code, brand_code, first_name, last_name, patronymic_name, gender, birth_date, email, phone, communicate_via_email, communicate_via_phone, allow_newsletter, friend_card_number, promo_code, data_type, additional_fields) FROM stdin;
\.


--
-- TOC entry 2127 (class 0 OID 0)
-- Dependencies: 182
-- Name: e_inquiry_data_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.e_inquiry_data_id_seq', 1, false);


--
-- TOC entry 1993 (class 2606 OID 26101)
-- Name: e_inquiry_data e_inquiry_data_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.e_inquiry_data
    ADD CONSTRAINT e_inquiry_data_pkey PRIMARY KEY (id);


--
-- TOC entry 1994 (class 1259 OID 26102)
-- Name: i_inquiry_data_brand_code; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX i_inquiry_data_brand_code ON public.e_inquiry_data USING btree (brand_code);


--
-- TOC entry 1995 (class 1259 OID 26103)
-- Name: i_inquiry_data_first_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX i_inquiry_data_first_name ON public.e_inquiry_data USING btree (first_name);


--
-- TOC entry 1996 (class 1259 OID 26104)
-- Name: i_inquiry_data_last_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX i_inquiry_data_last_name ON public.e_inquiry_data USING btree (last_name);


--
-- TOC entry 1997 (class 1259 OID 26105)
-- Name: i_inquiry_data_patronymic_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX i_inquiry_data_patronymic_name ON public.e_inquiry_data USING btree (patronymic_name);


--
-- TOC entry 1998 (class 1259 OID 26106)
-- Name: i_inquiry_data_shop_code; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX i_inquiry_data_shop_code ON public.e_inquiry_data USING btree (shop_code);


--
-- TOC entry 2122 (class 0 OID 0)
-- Dependencies: 7
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2021-06-09 11:56:57 MSK

--
-- PostgreSQL database dump complete
--

