PGDMP     
    ,        	        y            inquiry_storage    9.5.25    10.17     E           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            F           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            G           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            H           1262    23160    inquiry_storage    DATABASE        CREATE DATABASE inquiry_storage WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.utf8' LC_CTYPE = 'en_US.utf8';
    DROP DATABASE inquiry_storage;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            I           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    6            J           0    0    SCHEMA public    ACL     ?   REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;
                  postgres    false    6                        3079    12361    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            K           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            ?            1259    27915    e_inquiry_data    TABLE     ?  CREATE TABLE public.e_inquiry_data (
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
 "   DROP TABLE public.e_inquiry_data;
       public         postgres    false    6            L           0    0    COLUMN e_inquiry_data.gender    COMMENT     F   COMMENT ON COLUMN public.e_inquiry_data.gender IS '(DC2Type:gender)';
            public       postgres    false    182            M           0    0     COLUMN e_inquiry_data.birth_date    COMMENT     Q   COMMENT ON COLUMN public.e_inquiry_data.birth_date IS '(DC2Type:utc_timestamp)';
            public       postgres    false    182            N           0    0 '   COLUMN e_inquiry_data.additional_fields    COMMENT     Y   COMMENT ON COLUMN public.e_inquiry_data.additional_fields IS '(DC2Type:child_list_dto)';
            public       postgres    false    182            ?            1259    27913    e_inquiry_data_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.e_inquiry_data_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.e_inquiry_data_id_seq;
       public       postgres    false    6            B          0    27915    e_inquiry_data 
   TABLE DATA                 COPY public.e_inquiry_data (id, card_number, shop_code, brand_code, first_name, last_name, patronymic_name, gender, birth_date, email, phone, communicate_via_email, communicate_via_phone, allow_newsletter, friend_card_number, promo_code, data_type, additional_fields) FROM stdin;
    public       postgres    false    182   ?       O           0    0    e_inquiry_data_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.e_inquiry_data_id_seq', 1, false);
            public       postgres    false    181            ?           2606    27928 "   e_inquiry_data e_inquiry_data_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.e_inquiry_data
    ADD CONSTRAINT e_inquiry_data_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.e_inquiry_data DROP CONSTRAINT e_inquiry_data_pkey;
       public         postgres    false    182            ?           1259    27929    i_inquiry_data_brand_code    INDEX     Z   CREATE INDEX i_inquiry_data_brand_code ON public.e_inquiry_data USING btree (brand_code);
 -   DROP INDEX public.i_inquiry_data_brand_code;
       public         postgres    false    182            ?           1259    27931    i_inquiry_data_first_name    INDEX     Z   CREATE INDEX i_inquiry_data_first_name ON public.e_inquiry_data USING btree (first_name);
 -   DROP INDEX public.i_inquiry_data_first_name;
       public         postgres    false    182            ?           1259    27932    i_inquiry_data_last_name    INDEX     X   CREATE INDEX i_inquiry_data_last_name ON public.e_inquiry_data USING btree (last_name);
 ,   DROP INDEX public.i_inquiry_data_last_name;
       public         postgres    false    182            ?           1259    27933    i_inquiry_data_patronymic_name    INDEX     d   CREATE INDEX i_inquiry_data_patronymic_name ON public.e_inquiry_data USING btree (patronymic_name);
 2   DROP INDEX public.i_inquiry_data_patronymic_name;
       public         postgres    false    182            ?           1259    27930    i_inquiry_data_shop_code    INDEX     X   CREATE INDEX i_inquiry_data_shop_code ON public.e_inquiry_data USING btree (shop_code);
 ,   DROP INDEX public.i_inquiry_data_shop_code;
       public         postgres    false    182            B      x?????? ? ?     