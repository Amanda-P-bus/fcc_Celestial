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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(200) NOT NULL,
    galaxy_type text,
    visited boolean,
    age_billion integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(200) NOT NULL,
    has_life text,
    percent_habitable integer,
    meteor_risk integer,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(200) NOT NULL,
    planet_type text,
    visited boolean,
    hostile text,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(200) NOT NULL,
    radius numeric,
    color text,
    living boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: traveltips; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.traveltips (
    traveltips_id integer NOT NULL,
    name character varying(200) NOT NULL,
    hitchhikers_guide boolean,
    bring_food boolean,
    return_chance integer,
    planet_id integer
);


ALTER TABLE public.traveltips OWNER TO freecodecamp;

--
-- Name: traveltips_traveltips_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.traveltips_traveltips_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.traveltips_traveltips_id_seq OWNER TO freecodecamp;

--
-- Name: traveltips_traveltips_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.traveltips_traveltips_id_seq OWNED BY public.traveltips.traveltips_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: traveltips traveltips_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.traveltips ALTER COLUMN traveltips_id SET DEFAULT nextval('public.traveltips_traveltips_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Flaxon', 'Adventure', true, 58);
INSERT INTO public.galaxy VALUES (2, 'Milky Way', 'Pre-Techno', true, 14);
INSERT INTO public.galaxy VALUES (3, 'Trekky', 'Fantasy', true, 25);
INSERT INTO public.galaxy VALUES (4, 'Hydra', 'Villain', true, 39);
INSERT INTO public.galaxy VALUES (5, 'Avatar', 'Far-Fetched', false, 6);
INSERT INTO public.galaxy VALUES (6, 'Loki', 'Mischevious', true, 129);
INSERT INTO public.galaxy VALUES (7, 'Bridgerton', 'Romancery', true, 19);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Bookery', 'true', 89, 22, 1);
INSERT INTO public.moon VALUES (2, 'Fictionville', 'true', 39, 63, 1);
INSERT INTO public.moon VALUES (3, 'Royale', 'true', 29, 73, 2);
INSERT INTO public.moon VALUES (4, 'AnswerAll', 'true', 3, 83, 3);
INSERT INTO public.moon VALUES (5, 'Moon1', 'false', 15, 60, 4);
INSERT INTO public.moon VALUES (6, 'Alori', 'false', 30, 39, 4);
INSERT INTO public.moon VALUES (7, 'The Ship', 'true', 40, 54, 5);
INSERT INTO public.moon VALUES (8, 'Solo', 'false', 25, 89, 5);
INSERT INTO public.moon VALUES (9, 'Death Star', 'true', 30, 73, 6);
INSERT INTO public.moon VALUES (10, 'Dying Light', 'false', 5, 93, 6);
INSERT INTO public.moon VALUES (11, 'Weird Ville', 'false', 83, 3, 7);
INSERT INTO public.moon VALUES (12, 'Plot Hole', 'false', 29, 100, 8);
INSERT INTO public.moon VALUES (13, 'Backstory', 'true', 49, 63, 9);
INSERT INTO public.moon VALUES (14, 'Who Goes There', 'true', 39, 11, 10);
INSERT INTO public.moon VALUES (15, 'Webber', 'true', 29, 13, 10);
INSERT INTO public.moon VALUES (16, 'Uncle Ben', 'false', 3, 89, 10);
INSERT INTO public.moon VALUES (17, 'Kitchen', 'true', 31, 19, 11);
INSERT INTO public.moon VALUES (18, 'Blindfold', 'false', 2, 9, 11);
INSERT INTO public.moon VALUES (19, 'Forest', 'true', 84, 5, 12);
INSERT INTO public.moon VALUES (20, 'City', 'true', 74, 30, 12);
INSERT INTO public.moon VALUES (21, 'Binge Lots', 'true', 23, 73, 13);
INSERT INTO public.moon VALUES (22, 'High Pouf', 'false', 34, 89, 13);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Bebo', 'Political', true, 'TRUE', 1);
INSERT INTO public.planet VALUES (2, 'Casino', 'Gambling', true, 'FALSE', 1);
INSERT INTO public.planet VALUES (3, '42', 'Omnipotent', false, 'UNKNOWN', 1);
INSERT INTO public.planet VALUES (4, 'Earth', 'Middling', true, 'TRUE', 2);
INSERT INTO public.planet VALUES (5, 'Battle Star', 'Alt-Series', true, 'TRUE', 3);
INSERT INTO public.planet VALUES (6, 'Destroyer', 'EvilCorp', true, 'TRUE', 4);
INSERT INTO public.planet VALUES (7, 'Navi', 'Cameron', true, 'TRUE', 5);
INSERT INTO public.planet VALUES (8, 'Kang', 'Disappeared', false, 'UNKNOWN', 6);
INSERT INTO public.planet VALUES (9, 'God Dad', 'Unfatherly', true, 'TRUE', 6);
INSERT INTO public.planet VALUES (10, 'Spiderverse', 'Twinception', true, 'FALSE', 6);
INSERT INTO public.planet VALUES (11, 'Dare Devil', 'Ninjago', true, 'FALSE', 6);
INSERT INTO public.planet VALUES (12, 'Kraven', 'Hunter-Lite', false, 'UNKNOWN', 6);
INSERT INTO public.planet VALUES (13, 'Charlotte', 'Queen', true, 'TRUE', 7);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Beeblerox', 38.75, 'Magenta', true, 1);
INSERT INTO public.star VALUES (2, 'Orion', 22.98, 'White', true, 2);
INSERT INTO public.star VALUES (3, 'Spock', 89.72, 'Blue', true, 3);
INSERT INTO public.star VALUES (4, 'Red Skull', 44.87, 'Red', false, 4);
INSERT INTO public.star VALUES (5, 'That Guy', 13.92, 'Blue', false, 5);
INSERT INTO public.star VALUES (6, 'Wolverine', 59.82, 'Yellow', true, 6);
INSERT INTO public.star VALUES (7, 'Deadpool', 38.94, 'Red', true, 6);
INSERT INTO public.star VALUES (8, 'The Duke', 24.98, 'Purple', false, 7);


--
-- Data for Name: traveltips; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.traveltips VALUES (1, 'Time Travel', true, false, 58, 1);
INSERT INTO public.traveltips VALUES (2, 'Light Space', true, true, 85, 1);
INSERT INTO public.traveltips VALUES (3, 'Rocket Ship', false, true, 76, 2);
INSERT INTO public.traveltips VALUES (4, 'VHS', false, true, 83, 5);
INSERT INTO public.traveltips VALUES (5, 'Comic Book', false, false, 6, 6);
INSERT INTO public.traveltips VALUES (6, 'Movie', false, true, 99, 7);
INSERT INTO public.traveltips VALUES (7, 'Magic', true, false, 33, 8);
INSERT INTO public.traveltips VALUES (8, 'Dream', false, false, 92, 13);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: traveltips_traveltips_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.traveltips_traveltips_id_seq', 8, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: traveltips traveltips_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.traveltips
    ADD CONSTRAINT traveltips_name_key UNIQUE (name);


--
-- Name: traveltips traveltips_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.traveltips
    ADD CONSTRAINT traveltips_pkey PRIMARY KEY (traveltips_id);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_key; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_key FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: traveltips fk_key; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.traveltips
    ADD CONSTRAINT fk_key FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

