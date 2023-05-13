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
-- Name: final_table; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.final_table (
    final_table_id integer NOT NULL,
    name character varying(30) NOT NULL,
    ishuman boolean,
    issmart boolean,
    can_eat_burgers boolean
);


ALTER TABLE public.final_table OWNER TO freecodecamp;

--
-- Name: final_table_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.final_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.final_table_id_seq OWNER TO freecodecamp;

--
-- Name: final_table_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.final_table_id_seq OWNED BY public.final_table.final_table_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    radius integer NOT NULL,
    cluster text,
    distance_from_earth_in_ly numeric(14,4)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    radius integer NOT NULL,
    planet text,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    isterrestrial boolean,
    star text NOT NULL,
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
    name character varying(30) NOT NULL,
    ishypergiant boolean,
    galaxy text NOT NULL,
    distance_from_earth_in_ly numeric(14,7),
    galaxy_id smallint
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
-- Name: final_table final_table_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.final_table ALTER COLUMN final_table_id SET DEFAULT nextval('public.final_table_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: final_table; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.final_table VALUES (1, 'elmiko', true, true, true);
INSERT INTO public.final_table VALUES (2, 'chatgpt', false, false, false);
INSERT INTO public.final_table VALUES (3, 'nasa', false, true, false);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 105700, 'Local Group', 24500000.0000);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 220000, 'Local Group', 2530000.0000);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 50000, 'Local Group', 3000000.0000);
INSERT INTO public.galaxy VALUES (4, 'Messier 81', 52000, 'M81 Group', 12100000.0000);
INSERT INTO public.galaxy VALUES (5, 'Messier 82', 37000, 'M81 Group', 12200000.0000);
INSERT INTO public.galaxy VALUES (6, 'Cigar Galaxy', 7500, 'M82 Group', 12000000.0000);
INSERT INTO public.galaxy VALUES (7, 'Sombrero Galaxy', 35000, 'Virgo Cluster', 31000000.0000);
INSERT INTO public.galaxy VALUES (8, 'Whirlpool Galaxy', 25000, 'Canes Venatici I Group', 23000000.0000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 1737, 'Earth', NULL);
INSERT INTO public.moon VALUES (2, 'Phobos', 11, 'Mars', NULL);
INSERT INTO public.moon VALUES (3, 'Deimos', 6, 'Mars', NULL);
INSERT INTO public.moon VALUES (4, 'Ganymede', 2634, 'Jupiter', NULL);
INSERT INTO public.moon VALUES (5, 'Callisto', 2410, 'Jupiter', NULL);
INSERT INTO public.moon VALUES (6, 'Io', 1821, 'Jupiter', NULL);
INSERT INTO public.moon VALUES (7, 'Europa', 1561, 'Jupiter', NULL);
INSERT INTO public.moon VALUES (8, 'Amalthea', 167, 'Jupiter', NULL);
INSERT INTO public.moon VALUES (9, 'Himalia', 85, 'Jupiter', NULL);
INSERT INTO public.moon VALUES (10, 'Lysithea', 18, 'Jupiter', NULL);
INSERT INTO public.moon VALUES (11, 'Elara', 43, 'Jupiter', NULL);
INSERT INTO public.moon VALUES (12, 'Ananke', 14, 'Jupiter', NULL);
INSERT INTO public.moon VALUES (13, 'Thebe', 49, 'Jupiter', NULL);
INSERT INTO public.moon VALUES (14, 'Adrastea', 8, 'Jupiter', NULL);
INSERT INTO public.moon VALUES (15, 'Metis', 21, 'Jupiter', NULL);
INSERT INTO public.moon VALUES (16, 'Dione', 562, 'Saturn', NULL);
INSERT INTO public.moon VALUES (17, 'Tethys', 533, 'Saturn', NULL);
INSERT INTO public.moon VALUES (18, 'Enceladus', 252, 'Saturn', NULL);
INSERT INTO public.moon VALUES (19, 'Mimas', 198, 'Saturn', NULL);
INSERT INTO public.moon VALUES (20, 'Hyperion', 135, 'Saturn', NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', true, 'Sun', NULL);
INSERT INTO public.planet VALUES (2, 'Venus', true, 'Sun', NULL);
INSERT INTO public.planet VALUES (3, 'Earth', true, 'Sun', NULL);
INSERT INTO public.planet VALUES (4, 'Mars', true, 'Sun', NULL);
INSERT INTO public.planet VALUES (5, 'Jupiter', false, 'Sun', NULL);
INSERT INTO public.planet VALUES (6, 'Saturn', false, 'Sun', NULL);
INSERT INTO public.planet VALUES (7, 'Uranus', false, 'Sun', NULL);
INSERT INTO public.planet VALUES (8, 'Neptune', false, 'Sun', NULL);
INSERT INTO public.planet VALUES (9, 'Pluto', true, 'Sun', NULL);
INSERT INTO public.planet VALUES (10, 'Kepler-22b', true, 'Kepler-22', NULL);
INSERT INTO public.planet VALUES (11, 'Kepler-69c', true, 'Kepler-69', NULL);
INSERT INTO public.planet VALUES (12, 'Proxima Centauri b', true, 'Proxima Centauri', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', false, 'Milky Way', 0.0000158, NULL);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', false, 'Milky Way', 4.2460000, NULL);
INSERT INTO public.star VALUES (3, 'Alpha Centauri A', false, 'Milky Way', 4.3670000, NULL);
INSERT INTO public.star VALUES (4, 'Alpha Centauri B', false, 'Milky Way', 4.3670000, NULL);
INSERT INTO public.star VALUES (5, 'Barnard''s Star', false, 'Milky Way', 5.9630000, NULL);
INSERT INTO public.star VALUES (6, 'Wolf 359', false, 'Milky Way', 7.7950000, NULL);
INSERT INTO public.star VALUES (7, 'Lalande 21185', false, 'Ursa Major', 8.2900000, NULL);
INSERT INTO public.star VALUES (8, 'Sirius A', false, 'Canis Major', 8.5820000, NULL);


--
-- Name: final_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.final_table_id_seq', 3, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 8, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: final_table final_table_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.final_table
    ADD CONSTRAINT final_table_name_key UNIQUE (name);


--
-- Name: final_table final_table_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.final_table
    ADD CONSTRAINT final_table_pkey PRIMARY KEY (final_table_id);


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
-- Name: moon moon_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_fk FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_fk FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_fk FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

