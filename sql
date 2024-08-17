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
    round character varying(255) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
    name character varying(255) NOT NULL
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

INSERT INTO public.games VALUES (961, 2018, 'Final', 637, 638, 4, 2);
INSERT INTO public.games VALUES (962, 2018, 'Third Place', 639, 640, 2, 0);
INSERT INTO public.games VALUES (963, 2018, 'Semi-Final', 638, 640, 2, 1);
INSERT INTO public.games VALUES (964, 2018, 'Semi-Final', 637, 639, 1, 0);
INSERT INTO public.games VALUES (965, 2018, 'Quarter-Final', 638, 641, 3, 2);
INSERT INTO public.games VALUES (966, 2018, 'Quarter-Final', 640, 642, 2, 0);
INSERT INTO public.games VALUES (967, 2018, 'Quarter-Final', 639, 643, 2, 1);
INSERT INTO public.games VALUES (968, 2018, 'Quarter-Final', 637, 644, 2, 0);
INSERT INTO public.games VALUES (969, 2018, 'Eighth-Final', 640, 645, 2, 1);
INSERT INTO public.games VALUES (970, 2018, 'Eighth-Final', 642, 646, 1, 0);
INSERT INTO public.games VALUES (971, 2018, 'Eighth-Final', 639, 647, 3, 2);
INSERT INTO public.games VALUES (972, 2018, 'Eighth-Final', 643, 648, 2, 0);
INSERT INTO public.games VALUES (973, 2018, 'Eighth-Final', 638, 649, 2, 1);
INSERT INTO public.games VALUES (974, 2018, 'Eighth-Final', 641, 650, 2, 1);
INSERT INTO public.games VALUES (975, 2018, 'Eighth-Final', 644, 651, 2, 1);
INSERT INTO public.games VALUES (976, 2018, 'Eighth-Final', 637, 652, 4, 3);
INSERT INTO public.games VALUES (977, 2014, 'Final', 653, 652, 1, 0);
INSERT INTO public.games VALUES (978, 2014, 'Third Place', 654, 643, 3, 0);
INSERT INTO public.games VALUES (979, 2014, 'Semi-Final', 652, 654, 1, 0);
INSERT INTO public.games VALUES (980, 2014, 'Semi-Final', 653, 643, 7, 1);
INSERT INTO public.games VALUES (981, 2014, 'Quarter-Final', 654, 655, 1, 0);
INSERT INTO public.games VALUES (982, 2014, 'Quarter-Final', 652, 639, 1, 0);
INSERT INTO public.games VALUES (983, 2014, 'Quarter-Final', 643, 645, 2, 1);
INSERT INTO public.games VALUES (984, 2014, 'Quarter-Final', 653, 637, 1, 0);
INSERT INTO public.games VALUES (985, 2014, 'Eighth-Final', 643, 656, 2, 1);
INSERT INTO public.games VALUES (986, 2014, 'Eighth-Final', 645, 644, 2, 0);
INSERT INTO public.games VALUES (987, 2014, 'Eighth-Final', 637, 657, 2, 0);
INSERT INTO public.games VALUES (988, 2014, 'Eighth-Final', 653, 658, 2, 1);
INSERT INTO public.games VALUES (989, 2014, 'Eighth-Final', 654, 648, 2, 1);
INSERT INTO public.games VALUES (990, 2014, 'Eighth-Final', 655, 659, 2, 1);
INSERT INTO public.games VALUES (991, 2014, 'Eighth-Final', 652, 646, 1, 0);
INSERT INTO public.games VALUES (992, 2014, 'Eighth-Final', 639, 660, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (637, 'France');
INSERT INTO public.teams VALUES (638, 'Croatia');
INSERT INTO public.teams VALUES (639, 'Belgium');
INSERT INTO public.teams VALUES (640, 'England');
INSERT INTO public.teams VALUES (641, 'Russia');
INSERT INTO public.teams VALUES (642, 'Sweden');
INSERT INTO public.teams VALUES (643, 'Brazil');
INSERT INTO public.teams VALUES (644, 'Uruguay');
INSERT INTO public.teams VALUES (645, 'Colombia');
INSERT INTO public.teams VALUES (646, 'Switzerland');
INSERT INTO public.teams VALUES (647, 'Japan');
INSERT INTO public.teams VALUES (648, 'Mexico');
INSERT INTO public.teams VALUES (649, 'Denmark');
INSERT INTO public.teams VALUES (650, 'Spain');
INSERT INTO public.teams VALUES (651, 'Portugal');
INSERT INTO public.teams VALUES (652, 'Argentina');
INSERT INTO public.teams VALUES (653, 'Germany');
INSERT INTO public.teams VALUES (654, 'Netherlands');
INSERT INTO public.teams VALUES (655, 'Costa Rica');
INSERT INTO public.teams VALUES (656, 'Chile');
INSERT INTO public.teams VALUES (657, 'Nigeria');
INSERT INTO public.teams VALUES (658, 'Algeria');
INSERT INTO public.teams VALUES (659, 'Greece');
INSERT INTO public.teams VALUES (660, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 992, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 660, true);


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

