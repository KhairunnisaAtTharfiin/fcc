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
    name character varying(30) NOT NULL,
    queue integer,
    description text,
    has_life boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_water boolean,
    planet_id integer,
    why character varying(20)
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
    name character varying(30) NOT NULL,
    distance_from_earth numeric,
    has_life boolean,
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
-- Name: sky; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.sky (
    sky_id integer NOT NULL,
    name character varying(20) NOT NULL,
    gravity integer,
    galaxy_id integer
);


ALTER TABLE public.sky OWNER TO freecodecamp;

--
-- Name: sky_sky_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.sky_sky_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sky_sky_id_seq OWNER TO freecodecamp;

--
-- Name: sky_sky_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.sky_sky_id_seq OWNED BY public.sky.sky_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    radius integer NOT NULL,
    color character varying(30) NOT NULL,
    name character varying(30),
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
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: sky sky_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sky ALTER COLUMN sky_id SET DEFAULT nextval('public.sky_sky_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'AB', 1, 'Galaxy Bima Sakti', false);
INSERT INTO public.galaxy VALUES (2, 'AC', 2, 'Galaxy APA AJA', false);
INSERT INTO public.galaxy VALUES (3, 'AD', 3, 'GALAXY', false);
INSERT INTO public.galaxy VALUES (4, 'AE', 4, 'GALAXY AJA', false);
INSERT INTO public.galaxy VALUES (5, 'AF', 5, 'GALAXY AF', true);
INSERT INTO public.galaxy VALUES (6, 'AG', 6, 'GALAXY AG', true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', true, 2, NULL);
INSERT INTO public.moon VALUES (2, 'moon2', true, 2, NULL);
INSERT INTO public.moon VALUES (3, 'moon3', true, 2, NULL);
INSERT INTO public.moon VALUES (4, 'moon4', true, 4, NULL);
INSERT INTO public.moon VALUES (5, 'moon5', true, 4, NULL);
INSERT INTO public.moon VALUES (6, 'moon6', true, 1, NULL);
INSERT INTO public.moon VALUES (7, 'moon7', true, 6, NULL);
INSERT INTO public.moon VALUES (8, 'moon8', true, 1, NULL);
INSERT INTO public.moon VALUES (9, 'moon9', true, 6, NULL);
INSERT INTO public.moon VALUES (10, 'moon10', true, 2, NULL);
INSERT INTO public.moon VALUES (11, 'moon11', true, 8, NULL);
INSERT INTO public.moon VALUES (12, 'moon12', true, 2, NULL);
INSERT INTO public.moon VALUES (13, 'moon13', false, 8, NULL);
INSERT INTO public.moon VALUES (14, 'moon14', true, 2, NULL);
INSERT INTO public.moon VALUES (15, 'moon15', false, 8, NULL);
INSERT INTO public.moon VALUES (16, 'moon16', true, 2, NULL);
INSERT INTO public.moon VALUES (17, 'moon17', false, 8, NULL);
INSERT INTO public.moon VALUES (18, 'moon18', true, 2, NULL);
INSERT INTO public.moon VALUES (19, 'moon19', false, 8, NULL);
INSERT INTO public.moon VALUES (20, 'moon20', true, 3, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Merkurius', 240.00, false, 1);
INSERT INTO public.planet VALUES (2, 'VENUS', 250.00, false, 2);
INSERT INTO public.planet VALUES (3, 'MARS', 300.000, false, 3);
INSERT INTO public.planet VALUES (4, 'planet1', 400.00, false, 2);
INSERT INTO public.planet VALUES (5, 'planet2', 300.000, false, 5);
INSERT INTO public.planet VALUES (6, 'planet3', 500.00, false, 2);
INSERT INTO public.planet VALUES (7, 'planet4', 700.000, false, 3);
INSERT INTO public.planet VALUES (8, 'planet5', 600.00, false, 3);
INSERT INTO public.planet VALUES (9, 'planet6', 900.000, false, 1);
INSERT INTO public.planet VALUES (10, 'planet7', 600.00, false, 3);
INSERT INTO public.planet VALUES (11, 'planet8', 900.000, false, 4);
INSERT INTO public.planet VALUES (12, 'planet9', 600.00, false, 3);
INSERT INTO public.planet VALUES (13, 'planet10', 800.000, false, 6);


--
-- Data for Name: sky; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.sky VALUES (1, 'sky1', 90, 1);
INSERT INTO public.sky VALUES (2, 'sky2', 80, 3);
INSERT INTO public.sky VALUES (3, 'sky3', 80, 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 20, 'blue', 'star1', 1);
INSERT INTO public.star VALUES (2, 20, 'blue', 'star2', 1);
INSERT INTO public.star VALUES (3, 20, 'green', 'star3', 2);
INSERT INTO public.star VALUES (4, 20, 'red', 'star4', 2);
INSERT INTO public.star VALUES (5, 20, 'red', 'star5', 4);
INSERT INTO public.star VALUES (6, 30, 'red', 'star6', 5);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: sky_sky_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.sky_sky_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: sky sky_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sky
    ADD CONSTRAINT sky_name_key UNIQUE (name);


--
-- Name: sky sky_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sky
    ADD CONSTRAINT sky_pkey PRIMARY KEY (sky_id);


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
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: sky fk_galaxyy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sky
    ADD CONSTRAINT fk_galaxyy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

