--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    guesses integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 12, 42);
INSERT INTO public.games VALUES (2, 12, 245);
INSERT INTO public.games VALUES (3, 13, 909);
INSERT INTO public.games VALUES (4, 13, 814);
INSERT INTO public.games VALUES (5, 12, 646);
INSERT INTO public.games VALUES (6, 12, 200);
INSERT INTO public.games VALUES (7, 12, 359);
INSERT INTO public.games VALUES (8, 14, 561);
INSERT INTO public.games VALUES (9, 14, 467);
INSERT INTO public.games VALUES (10, 15, 607);
INSERT INTO public.games VALUES (11, 15, 159);
INSERT INTO public.games VALUES (12, 14, 695);
INSERT INTO public.games VALUES (13, 14, 791);
INSERT INTO public.games VALUES (14, 14, 726);
INSERT INTO public.games VALUES (15, 16, 456);
INSERT INTO public.games VALUES (16, 16, 418);
INSERT INTO public.games VALUES (17, 17, 706);
INSERT INTO public.games VALUES (18, 17, 934);
INSERT INTO public.games VALUES (19, 16, 437);
INSERT INTO public.games VALUES (20, 16, 772);
INSERT INTO public.games VALUES (21, 16, 373);
INSERT INTO public.games VALUES (22, 18, 575);
INSERT INTO public.games VALUES (23, 18, 972);
INSERT INTO public.games VALUES (24, 19, 230);
INSERT INTO public.games VALUES (25, 19, 975);
INSERT INTO public.games VALUES (26, 18, 730);
INSERT INTO public.games VALUES (27, 18, 97);
INSERT INTO public.games VALUES (28, 18, 8);
INSERT INTO public.games VALUES (29, 20, 310);
INSERT INTO public.games VALUES (30, 20, 56);
INSERT INTO public.games VALUES (31, 21, 32);
INSERT INTO public.games VALUES (32, 21, 953);
INSERT INTO public.games VALUES (33, 20, 61);
INSERT INTO public.games VALUES (34, 20, 79);
INSERT INTO public.games VALUES (35, 20, 481);
INSERT INTO public.games VALUES (36, 22, 910);
INSERT INTO public.games VALUES (37, 22, 31);
INSERT INTO public.games VALUES (38, 23, 592);
INSERT INTO public.games VALUES (39, 23, 594);
INSERT INTO public.games VALUES (40, 22, 949);
INSERT INTO public.games VALUES (41, 22, 198);
INSERT INTO public.games VALUES (42, 22, 557);
INSERT INTO public.games VALUES (43, 24, 214);
INSERT INTO public.games VALUES (44, 24, 112);
INSERT INTO public.games VALUES (45, 25, 502);
INSERT INTO public.games VALUES (46, 25, 708);
INSERT INTO public.games VALUES (47, 24, 812);
INSERT INTO public.games VALUES (48, 24, 707);
INSERT INTO public.games VALUES (49, 24, 92);
INSERT INTO public.games VALUES (50, 26, 585);
INSERT INTO public.games VALUES (51, 26, 834);
INSERT INTO public.games VALUES (52, 27, 678);
INSERT INTO public.games VALUES (53, 27, 253);
INSERT INTO public.games VALUES (54, 26, 402);
INSERT INTO public.games VALUES (55, 26, 307);
INSERT INTO public.games VALUES (56, 26, 917);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'London');
INSERT INTO public.users VALUES (3, 'user_1719578401405');
INSERT INTO public.users VALUES (5, 'user_1719578401404');
INSERT INTO public.users VALUES (10, 'user_1719579319106');
INSERT INTO public.users VALUES (11, 'user_1719579319105');
INSERT INTO public.users VALUES (12, 'user_1719579377076');
INSERT INTO public.users VALUES (13, 'user_1719579377075');
INSERT INTO public.users VALUES (14, 'user_1719579413340');
INSERT INTO public.users VALUES (15, 'user_1719579413339');
INSERT INTO public.users VALUES (16, 'user_1719579559448');
INSERT INTO public.users VALUES (17, 'user_1719579559447');
INSERT INTO public.users VALUES (18, 'user_1719579574104');
INSERT INTO public.users VALUES (19, 'user_1719579574103');
INSERT INTO public.users VALUES (20, 'user_1719580044840');
INSERT INTO public.users VALUES (21, 'user_1719580044839');
INSERT INTO public.users VALUES (22, 'user_1719580052060');
INSERT INTO public.users VALUES (23, 'user_1719580052059');
INSERT INTO public.users VALUES (24, 'user_1719580640041');
INSERT INTO public.users VALUES (25, 'user_1719580640040');
INSERT INTO public.users VALUES (26, 'user_1719580655487');
INSERT INTO public.users VALUES (27, 'user_1719580655486');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 56, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 27, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games fk_users_games; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_users_games FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

