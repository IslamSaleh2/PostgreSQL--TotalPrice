--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2
-- Dumped by pg_dump version 13.2

-- Started on 2021-04-30 14:45:26

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
-- TOC entry 3030 (class 1262 OID 16394)
-- Name: db; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';


ALTER DATABASE db OWNER TO postgres;

\connect db

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 204 (class 1259 OID 16459)
-- Name: countries; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.countries (
    code integer NOT NULL,
    name character varying,
    continent_name character varying
);


ALTER TABLE public.countries OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 16480)
-- Name: merchants; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.merchants (
    id integer NOT NULL,
    merchant_name character varying,
    admin_id integer,
    country_code integer,
    created_at character varying
);


ALTER TABLE public.merchants OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 16430)
-- Name: order_items; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.order_items (
    order_id integer,
    product_id integer,
    quantity integer
);


ALTER TABLE public.order_items OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 16401)
-- Name: orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orders (
    id integer NOT NULL,
    user_id integer,
    status character varying,
    created_at character varying
);


ALTER TABLE public.orders OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16414)
-- Name: products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products (
    id integer NOT NULL,
    merchant_id integer,
    name character varying,
    price integer,
    status character varying,
    created_at character varying
);


ALTER TABLE public.products OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 16396)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    full_name character varying(50),
    email character varying(50),
    gender character varying(20),
    date_of_birth character varying(50),
    country_code integer,
    created_at character varying(50)
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 3023 (class 0 OID 16459)
-- Dependencies: 204
-- Data for Name: countries; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.countries (code, name, continent_name) VALUES (1, 'egypt', 'africa');
INSERT INTO public.countries (code, name, continent_name) VALUES (2, 'handi', 'Asia');


--
-- TOC entry 3024 (class 0 OID 16480)
-- Dependencies: 205
-- Data for Name: merchants; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.merchants (id, merchant_name, admin_id, country_code, created_at) VALUES (1, 'yasin', 1, 1, 'hhhh');
INSERT INTO public.merchants (id, merchant_name, admin_id, country_code, created_at) VALUES (2, 'mohamed', 1, 1, 'hhhhss');
INSERT INTO public.merchants (id, merchant_name, admin_id, country_code, created_at) VALUES (3, 'ali', 2, 2, 'hhhhss');


--
-- TOC entry 3022 (class 0 OID 16430)
-- Dependencies: 203
-- Data for Name: order_items; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.order_items (order_id, product_id, quantity) VALUES (1, 1, 2);
INSERT INTO public.order_items (order_id, product_id, quantity) VALUES (2, 2, 2);
INSERT INTO public.order_items (order_id, product_id, quantity) VALUES (2, 3, 1);
INSERT INTO public.order_items (order_id, product_id, quantity) VALUES (2, 1, 1);


--
-- TOC entry 3020 (class 0 OID 16401)
-- Dependencies: 201
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.orders (id, user_id, status, created_at) VALUES (1, 1, 'good', 'aass');
INSERT INTO public.orders (id, user_id, status, created_at) VALUES (2, 1, 'good', 'aasdss');
INSERT INTO public.orders (id, user_id, status, created_at) VALUES (3, 2, 'good', 'aasdss');
INSERT INTO public.orders (id, user_id, status, created_at) VALUES (4, 3, 'good', 'aasdss');


--
-- TOC entry 3021 (class 0 OID 16414)
-- Dependencies: 202
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.products (id, merchant_id, name, price, status, created_at) VALUES (1, 1, 'coca', 100, 'good', 'asda');
INSERT INTO public.products (id, merchant_id, name, price, status, created_at) VALUES (2, 1, 'guava', 1050, 'good', 'asda');
INSERT INTO public.products (id, merchant_id, name, price, status, created_at) VALUES (3, 2, 'manga', 1000, 'good', 'asda');


--
-- TOC entry 3019 (class 0 OID 16396)
-- Dependencies: 200
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.users (id, full_name, email, gender, date_of_birth, country_code, created_at) VALUES (1, 'ahmed', 'ahmed@gmail.com', 'male', '1999\4\5', 1, 'aaa');
INSERT INTO public.users (id, full_name, email, gender, date_of_birth, country_code, created_at) VALUES (2, 'islam', 'islam@gmail.com', 'male', '1999\5\5', 1, 'aaa');
INSERT INTO public.users (id, full_name, email, gender, date_of_birth, country_code, created_at) VALUES (3, 'hany', 'hany@gmail.com', 'male', '1999\10\5', 2, 'aaa');


--
-- TOC entry 2879 (class 2606 OID 16466)
-- Name: countries countries_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.countries
    ADD CONSTRAINT countries_pkey PRIMARY KEY (code);


--
-- TOC entry 2881 (class 2606 OID 16487)
-- Name: merchants merchants_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.merchants
    ADD CONSTRAINT merchants_pkey PRIMARY KEY (id);


--
-- TOC entry 2875 (class 2606 OID 16408)
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);


--
-- TOC entry 2877 (class 2606 OID 16421)
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- TOC entry 2873 (class 2606 OID 16400)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 2887 (class 2606 OID 16488)
-- Name: merchants merchants_admin_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.merchants
    ADD CONSTRAINT merchants_admin_id_fkey FOREIGN KEY (admin_id) REFERENCES public.users(id);


--
-- TOC entry 2888 (class 2606 OID 16493)
-- Name: merchants merchants_country_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.merchants
    ADD CONSTRAINT merchants_country_code_fkey FOREIGN KEY (country_code) REFERENCES public.countries(code);


--
-- TOC entry 2885 (class 2606 OID 16433)
-- Name: order_items order_items_order_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT order_items_order_id_fkey FOREIGN KEY (order_id) REFERENCES public.orders(id);


--
-- TOC entry 2886 (class 2606 OID 16438)
-- Name: order_items order_items_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT order_items_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.products(id);


--
-- TOC entry 2883 (class 2606 OID 16409)
-- Name: orders orders_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 2884 (class 2606 OID 16498)
-- Name: products products_merchant_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_merchant_id_fkey FOREIGN KEY (merchant_id) REFERENCES public.merchants(id);


--
-- TOC entry 2882 (class 2606 OID 16467)
-- Name: users users_country_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_country_code_fkey FOREIGN KEY (country_code) REFERENCES public.countries(code);


-- Completed on 2021-04-30 14:45:27

--
-- PostgreSQL database dump complete
--

