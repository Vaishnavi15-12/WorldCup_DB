--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (215, 2018, 'Final', 4, 2, 476, 477);
INSERT INTO public.games VALUES (216, 2018, 'Third Place', 2, 0, 478, 479);
INSERT INTO public.games VALUES (217, 2018, 'Semi-Final', 2, 1, 477, 479);
INSERT INTO public.games VALUES (218, 2018, 'Semi-Final', 1, 0, 476, 478);
INSERT INTO public.games VALUES (219, 2018, 'Quarter-Final', 3, 2, 477, 480);
INSERT INTO public.games VALUES (220, 2018, 'Quarter-Final', 2, 0, 479, 481);
INSERT INTO public.games VALUES (221, 2018, 'Quarter-Final', 2, 1, 478, 482);
INSERT INTO public.games VALUES (222, 2018, 'Quarter-Final', 2, 0, 476, 483);
INSERT INTO public.games VALUES (223, 2018, 'Eighth-Final', 2, 1, 479, 484);
INSERT INTO public.games VALUES (224, 2018, 'Eighth-Final', 1, 0, 481, 485);
INSERT INTO public.games VALUES (225, 2018, 'Eighth-Final', 3, 2, 478, 486);
INSERT INTO public.games VALUES (226, 2018, 'Eighth-Final', 2, 0, 482, 487);
INSERT INTO public.games VALUES (227, 2018, 'Eighth-Final', 2, 1, 477, 488);
INSERT INTO public.games VALUES (228, 2018, 'Eighth-Final', 2, 1, 480, 489);
INSERT INTO public.games VALUES (229, 2018, 'Eighth-Final', 2, 1, 483, 490);
INSERT INTO public.games VALUES (230, 2018, 'Eighth-Final', 4, 3, 476, 491);
INSERT INTO public.games VALUES (231, 2014, 'Final', 1, 0, 492, 491);
INSERT INTO public.games VALUES (232, 2014, 'Third Place', 3, 0, 493, 482);
INSERT INTO public.games VALUES (233, 2014, 'Semi-Final', 1, 0, 491, 493);
INSERT INTO public.games VALUES (234, 2014, 'Semi-Final', 7, 1, 492, 482);
INSERT INTO public.games VALUES (235, 2014, 'Quarter-Final', 1, 0, 493, 494);
INSERT INTO public.games VALUES (236, 2014, 'Quarter-Final', 1, 0, 491, 478);
INSERT INTO public.games VALUES (237, 2014, 'Quarter-Final', 2, 1, 482, 484);
INSERT INTO public.games VALUES (238, 2014, 'Quarter-Final', 1, 0, 492, 476);
INSERT INTO public.games VALUES (239, 2014, 'Eighth-Final', 2, 1, 482, 495);
INSERT INTO public.games VALUES (240, 2014, 'Eighth-Final', 2, 0, 484, 483);
INSERT INTO public.games VALUES (241, 2014, 'Eighth-Final', 2, 0, 476, 496);
INSERT INTO public.games VALUES (242, 2014, 'Eighth-Final', 2, 1, 492, 497);
INSERT INTO public.games VALUES (243, 2014, 'Eighth-Final', 2, 1, 493, 487);
INSERT INTO public.games VALUES (244, 2014, 'Eighth-Final', 2, 1, 494, 498);
INSERT INTO public.games VALUES (245, 2014, 'Eighth-Final', 1, 0, 491, 485);
INSERT INTO public.games VALUES (246, 2014, 'Eighth-Final', 2, 1, 478, 499);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (476, 'France');
INSERT INTO public.teams VALUES (477, 'Croatia');
INSERT INTO public.teams VALUES (478, 'Belgium');
INSERT INTO public.teams VALUES (479, 'England');
INSERT INTO public.teams VALUES (480, 'Russia');
INSERT INTO public.teams VALUES (481, 'Sweden');
INSERT INTO public.teams VALUES (482, 'Brazil');
INSERT INTO public.teams VALUES (483, 'Uruguay');
INSERT INTO public.teams VALUES (484, 'Colombia');
INSERT INTO public.teams VALUES (485, 'Switzerland');
INSERT INTO public.teams VALUES (486, 'Japan');
INSERT INTO public.teams VALUES (487, 'Mexico');
INSERT INTO public.teams VALUES (488, 'Denmark');
INSERT INTO public.teams VALUES (489, 'Spain');
INSERT INTO public.teams VALUES (490, 'Portugal');
INSERT INTO public.teams VALUES (491, 'Argentina');
INSERT INTO public.teams VALUES (492, 'Germany');
INSERT INTO public.teams VALUES (493, 'Netherlands');
INSERT INTO public.teams VALUES (494, 'Costa Rica');
INSERT INTO public.teams VALUES (495, 'Chile');
INSERT INTO public.teams VALUES (496, 'Nigeria');
INSERT INTO public.teams VALUES (497, 'Algeria');
INSERT INTO public.teams VALUES (498, 'Greece');
INSERT INTO public.teams VALUES (499, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 246, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 499, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

