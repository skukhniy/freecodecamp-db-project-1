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
    name character varying(100),
    distance_from_earth integer,
    age_in_mil integer,
    unique_id integer DEFAULT 1 NOT NULL
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
    name character varying(100),
    planet_id integer,
    unique_id integer DEFAULT 1 NOT NULL,
    width integer
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
    name character varying(100),
    scientific_name text,
    has_moon boolean,
    has_more_moons boolean,
    star_id integer,
    unique_id integer DEFAULT 1 NOT NULL
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
    name character varying(100),
    width numeric(18,4),
    galaxy_id integer,
    unique_id integer DEFAULT 1 NOT NULL
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
-- Name: sun; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.sun (
    unique_id integer DEFAULT 1 NOT NULL,
    sun_id integer NOT NULL,
    width integer,
    name character varying(30),
    color character varying(30)
);


ALTER TABLE public.sun OWNER TO freecodecamp;

--
-- Name: sun_sun_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.sun_sun_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sun_sun_id_seq OWNER TO freecodecamp;

--
-- Name: sun_sun_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.sun_sun_id_seq OWNED BY public.sun.sun_id;


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
-- Name: sun sun_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun ALTER COLUMN sun_id SET DEFAULT nextval('public.sun_sun_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 1004, 500, 1);
INSERT INTO public.galaxy VALUES (2, 'one', 5000, 230, 2);
INSERT INTO public.galaxy VALUES (3, 'two', 5000, 230, 3);
INSERT INTO public.galaxy VALUES (4, 'three', 5000, 230, 4);
INSERT INTO public.galaxy VALUES (5, 'four', 5000, 230, 5);
INSERT INTO public.galaxy VALUES (6, 'five', 5000, 230, 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Earth', 1, 1, NULL);
INSERT INTO public.moon VALUES (2, NULL, NULL, 2, NULL);
INSERT INTO public.moon VALUES (3, NULL, NULL, 3, NULL);
INSERT INTO public.moon VALUES (4, NULL, NULL, 4, NULL);
INSERT INTO public.moon VALUES (5, NULL, NULL, 5, NULL);
INSERT INTO public.moon VALUES (6, NULL, NULL, 6, NULL);
INSERT INTO public.moon VALUES (7, NULL, NULL, 7, NULL);
INSERT INTO public.moon VALUES (8, NULL, NULL, 8, NULL);
INSERT INTO public.moon VALUES (9, NULL, NULL, 9, NULL);
INSERT INTO public.moon VALUES (10, NULL, NULL, 10, NULL);
INSERT INTO public.moon VALUES (11, NULL, NULL, 11, NULL);
INSERT INTO public.moon VALUES (12, NULL, NULL, 12, NULL);
INSERT INTO public.moon VALUES (13, NULL, NULL, 13, NULL);
INSERT INTO public.moon VALUES (14, NULL, NULL, 14, NULL);
INSERT INTO public.moon VALUES (15, NULL, NULL, 15, NULL);
INSERT INTO public.moon VALUES (16, NULL, NULL, 16, NULL);
INSERT INTO public.moon VALUES (17, NULL, NULL, 17, NULL);
INSERT INTO public.moon VALUES (18, NULL, NULL, 18, NULL);
INSERT INTO public.moon VALUES (19, NULL, NULL, 19, NULL);
INSERT INTO public.moon VALUES (20, NULL, NULL, 20, NULL);
INSERT INTO public.moon VALUES (21, NULL, NULL, 21, NULL);
INSERT INTO public.moon VALUES (22, NULL, NULL, 22, NULL);
INSERT INTO public.moon VALUES (23, NULL, NULL, 23, NULL);
INSERT INTO public.moon VALUES (24, NULL, NULL, 24, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'Earth chungus', true, false, 1, 1);
INSERT INTO public.planet VALUES (3, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (4, NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (5, NULL, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.planet VALUES (6, NULL, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES (7, NULL, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.planet VALUES (8, NULL, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.planet VALUES (9, NULL, NULL, NULL, NULL, NULL, 8);
INSERT INTO public.planet VALUES (10, NULL, NULL, NULL, NULL, NULL, 9);
INSERT INTO public.planet VALUES (11, NULL, NULL, NULL, NULL, NULL, 10);
INSERT INTO public.planet VALUES (12, NULL, NULL, NULL, NULL, NULL, 11);
INSERT INTO public.planet VALUES (13, NULL, NULL, NULL, NULL, NULL, 12);
INSERT INTO public.planet VALUES (14, NULL, NULL, NULL, NULL, NULL, 13);
INSERT INTO public.planet VALUES (15, NULL, NULL, NULL, NULL, NULL, 14);
INSERT INTO public.planet VALUES (16, NULL, NULL, NULL, NULL, NULL, 15);
INSERT INTO public.planet VALUES (17, NULL, NULL, NULL, NULL, NULL, 16);
INSERT INTO public.planet VALUES (18, NULL, NULL, NULL, NULL, NULL, 17);
INSERT INTO public.planet VALUES (19, NULL, NULL, NULL, NULL, NULL, 18);
INSERT INTO public.planet VALUES (20, NULL, NULL, NULL, NULL, NULL, 19);
INSERT INTO public.planet VALUES (21, NULL, NULL, NULL, NULL, NULL, 20);
INSERT INTO public.planet VALUES (22, NULL, NULL, NULL, NULL, NULL, 21);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'big star', 430.2000, 1, 1);
INSERT INTO public.star VALUES (2, 'two', 423.3400, 1, 2);
INSERT INTO public.star VALUES (3, 'three', 423.3400, 1, 3);
INSERT INTO public.star VALUES (4, 'four', 423.3400, 1, 4);
INSERT INTO public.star VALUES (5, 'five', 423.3400, 1, 5);
INSERT INTO public.star VALUES (6, 'six', 423.3400, 1, 6);


--
-- Data for Name: sun; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.sun VALUES (2, 1, NULL, NULL, NULL);
INSERT INTO public.sun VALUES (3, 2, NULL, NULL, NULL);
INSERT INTO public.sun VALUES (4, 3, NULL, NULL, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 34, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 41, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: sun_sun_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.sun_sun_id_seq', 33, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_unique_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_unique_id_key UNIQUE (unique_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_unique_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_unique_id_key UNIQUE (unique_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_unique_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_unique_id_key UNIQUE (unique_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_unique_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_unique_id_key UNIQUE (unique_id);


--
-- Name: sun sun_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_pkey PRIMARY KEY (sun_id);


--
-- Name: sun sun_unique_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_unique_id_key UNIQUE (unique_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--