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
    name character varying(25) NOT NULL,
    is_spherical boolean,
    distance_from_earth integer,
    age_in_millions integer
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
    name character varying(25) NOT NULL,
    type_of_moon character varying(10),
    moon_size integer,
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
-- Name: table_5; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.table_5 (
    table_5_id integer NOT NULL,
    name character varying(20) NOT NULL,
    column_3 character varying(20)
);


ALTER TABLE public.table_5 OWNER TO freecodecamp;

--
-- Name: new_table_table_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.new_table_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.new_table_table_id_seq OWNER TO freecodecamp;

--
-- Name: new_table_table_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.new_table_table_id_seq OWNED BY public.table_5.table_5_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(25) NOT NULL,
    has_life boolean NOT NULL,
    number_of_moons numeric,
    description text,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(25) NOT NULL,
    star_type character varying(20) NOT NULL,
    planet_types character varying(20),
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
-- Name: table_5 table_5_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.table_5 ALTER COLUMN table_5_id SET DEFAULT nextval('public.new_table_table_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'poopy', false, 10, 10);
INSERT INTO public.galaxy VALUES (2, 'star', false, 20, 30);
INSERT INTO public.galaxy VALUES (3, 'rust', false, 30, 40);
INSERT INTO public.galaxy VALUES (4, 'round', true, 40, 50);
INSERT INTO public.galaxy VALUES (5, 'milky way', true, 50, 60);
INSERT INTO public.galaxy VALUES (6, 'andromeda', true, 60, 70);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'mmon1', 'rocky', 2, 1);
INSERT INTO public.moon VALUES (2, 'moon2', 'icy', 4, 2);
INSERT INTO public.moon VALUES (3, 'mmon3', 'rocky', 2, 3);
INSERT INTO public.moon VALUES (4, 'moon4', 'icy', 4, 4);
INSERT INTO public.moon VALUES (5, 'mmon5', 'rocky', 2, 3);
INSERT INTO public.moon VALUES (6, 'moon6', 'icy', 4, 4);
INSERT INTO public.moon VALUES (7, 'mmon7', 'rocky', 2, 3);
INSERT INTO public.moon VALUES (8, 'moon8', 'icy', 4, 4);
INSERT INTO public.moon VALUES (9, 'moon9', 'rocky', 2, 1);
INSERT INTO public.moon VALUES (10, 'moon10', 'icy', 4, 2);
INSERT INTO public.moon VALUES (11, 'moon11', 'rocky', 2, 1);
INSERT INTO public.moon VALUES (12, 'moon12', 'icy', 4, 2);
INSERT INTO public.moon VALUES (13, 'moon13', 'rocky', 2, 3);
INSERT INTO public.moon VALUES (14, 'moon14', 'icy', 4, 4);
INSERT INTO public.moon VALUES (16, 'moon15', 'rocky', 2, 1);
INSERT INTO public.moon VALUES (17, 'moon16', 'icy', 4, 2);
INSERT INTO public.moon VALUES (18, 'moon17', 'rocky', 2, 3);
INSERT INTO public.moon VALUES (19, 'moon18', 'icy', 4, 4);
INSERT INTO public.moon VALUES (20, 'moon19', 'rocky', 2, 1);
INSERT INTO public.moon VALUES (21, 'moon20', 'icy', 4, 2);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'mecrury', false, 1, 'small', 5);
INSERT INTO public.planet VALUES (2, 'venus', false, 2, 'small', 5);
INSERT INTO public.planet VALUES (3, 'earth', true, 1, 'small', 5);
INSERT INTO public.planet VALUES (4, 'mars', false, 1, 'small', 5);
INSERT INTO public.planet VALUES (6, 'saturn', false, 8, 'large', 5);
INSERT INTO public.planet VALUES (7, 'uranus', false, 10, 'large', 5);
INSERT INTO public.planet VALUES (8, 'neptune', false, 6, 'medium', 5);
INSERT INTO public.planet VALUES (9, 'pluto', false, 1, 'tiny', 5);
INSERT INTO public.planet VALUES (10, 'new planet 1', true, 0, 'medium', 5);
INSERT INTO public.planet VALUES (11, 'new planet 2', true, 1, 'medium', 2);
INSERT INTO public.planet VALUES (12, 'new planet 3', true, 0, 'medium', 1);
INSERT INTO public.planet VALUES (5, 'jupiter', false, 12, 'large', 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star 1', 'white dwarf', 'rocky', 2);
INSERT INTO public.star VALUES (2, 'star 2', 'red giant', 'rocky', 3);
INSERT INTO public.star VALUES (3, 'star 3', 'binary', 'rocky', 1);
INSERT INTO public.star VALUES (4, 'star 4', 'nuetron', 'gasuous', 4);
INSERT INTO public.star VALUES (5, 'sun', 'yellow dward star', 'rocky & gasuous', 5);
INSERT INTO public.star VALUES (6, 'star 5', 'supergiant', 'gasuous', 6);


--
-- Data for Name: table_5; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.table_5 VALUES (1, 'row 1', NULL);
INSERT INTO public.table_5 VALUES (2, 'row 2', NULL);
INSERT INTO public.table_5 VALUES (3, 'row 3', NULL);
INSERT INTO public.table_5 VALUES (4, 'row 4', NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: new_table_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.new_table_table_id_seq', 4, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_unique UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_unique UNIQUE (name);


--
-- Name: table_5 new_table_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.table_5
    ADD CONSTRAINT new_table_pkey PRIMARY KEY (table_5_id);


--
-- Name: table_5 new_table_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.table_5
    ADD CONSTRAINT new_table_unique UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_unique UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_unique UNIQUE (name);


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
-- Name: star star_galaxy_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--
