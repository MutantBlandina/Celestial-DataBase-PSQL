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
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    galaxy_types character varying(50) NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth integer NOT NULL,
    size numeric NOT NULL
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
-- Name: meteorite; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.meteorite (
    meteorite_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    distance_from_earth integer NOT NULL,
    size numeric NOT NULL,
    moon_id integer
);


ALTER TABLE public.meteorite OWNER TO freecodecamp;

--
-- Name: meteorite_meteorite_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.meteorite_meteorite_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.meteorite_meteorite_id_seq OWNER TO freecodecamp;

--
-- Name: meteorite_meteorite_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.meteorite_meteorite_id_seq OWNED BY public.meteorite.meteorite_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    moon_types character varying(50) NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth integer NOT NULL,
    size numeric NOT NULL,
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
    name character varying(30) NOT NULL,
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    planet_types character varying(50) NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth integer NOT NULL,
    size numeric NOT NULL,
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
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    star_types character varying(50) NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth integer NOT NULL,
    size numeric NOT NULL,
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
-- Name: meteorite meteorite_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteorite ALTER COLUMN meteorite_id SET DEFAULT nextval('public.meteorite_meteorite_id_seq'::regclass);


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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Cygnus A', 'Cygnus A, also called Andromeda Nebula, (catalog numbers NGC 224 and M31), great spiral galaxy in the constellation Andromeda, the nearest large galaxy. The Andromeda Galaxy is one of the few visible to the unaided eye, appearing as a milky blur.', false, false, 'large', 20010, 4580000, 500000);
INSERT INTO public.galaxy VALUES (2, 'Maffei 1 and 2', 'Maffei 1 and 2, also called Andromeda Nebula, (catalog numbers NGC 224 and M31), great spiral galaxy in the constellation Andromeda, the nearest large galaxy. The Andromeda Galaxy is one of the few visible to the unaided eye, appearing as a milky blur.', false, true, 'medium', 8010, 4580000, 800000);
INSERT INTO public.galaxy VALUES (3, 'Magellanic Cloud', 'Magellanic Cloud, also called Andromeda Nebula, (catalog numbers NGC 224 and M31), great spiral galaxy in the constellation Andromeda, the nearest large galaxy. The Andromeda Galaxy is one of the few visible to the unaided eye, appearing as a milky blur.', true, true, 'medium', 23010, 2580000, 600000);
INSERT INTO public.galaxy VALUES (4, 'Milky Way', 'Milky Way, also called Andromeda Nebula, (catalog numbers NGC 224 and M31), great spiral galaxy in the constellation Andromeda, the nearest large galaxy. The Andromeda Galaxy is one of the few visible to the unaided eye, appearing as a milky blur.', true, true, 'small', 49010, 7580000, 400000);
INSERT INTO public.galaxy VALUES (5, 'M87', 'M87, also called Andromeda Nebula, (catalog numbers NGC 224 and M31), great spiral galaxy in the constellation Andromeda, the nearest large galaxy. The Andromeda Galaxy is one of the few visible to the unaided eye, appearing as a milky blur.', true, true, 'small', 57010, 7420000, 80000);
INSERT INTO public.galaxy VALUES (6, 'Milky WayWay', 'Cygnus A, also called Andromeda Nebula, (catalog numbers NGC 224 and M31), great spiral galaxy in the constellation Andromeda, the nearest large galaxy. The Andromeda Galaxy is one of the few visible to the unaided eye, appearing as a milky blur.', false, false, 'large', 20010, 2520000, 600000);


--
-- Data for Name: meteorite; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.meteorite VALUES (1, 'MeteorCygnus A', 'Cygnus A, also called Andromeda Nebula.', 4580000, 500000, NULL);
INSERT INTO public.meteorite VALUES (2, 'MeteorCygnus B', 'Cygnus A, also called Andromeda Nebula.', 4580000, 500000, NULL);
INSERT INTO public.meteorite VALUES (3, 'MeteorCygnus C', 'Cygnus A, also called Andromeda Nebula.', 4580000, 500000, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'TerreMoon', 'Alpheratz, the brightest star in the constellation Andromeda. In fact, many people use this star to locate the Andromeda Galaxy in the night sky. While it appears as a single star to the unaided eye, Alpheratz is actually a tight double star system.', false, true, 'big', 49010, 7580000, 400000, NULL);
INSERT INTO public.moon VALUES (2, 'MarsMoon', 'Alpheratz, the brightest star in the constellation Andromeda. In fact, many people use this star to locate the Andromeda Galaxy in the night sky. While it appears as a single star to the unaided eye, Alpheratz is actually a tight double star system.', false, true, 'big', 49010, 7580000, 400000, NULL);
INSERT INTO public.moon VALUES (3, 'VenusMoon', 'Alpheratz, the brightest star in the constellation Andromeda. In fact, many people use this star to locate the Andromeda Galaxy in the night sky. While it appears as a single star to the unaided eye, Alpheratz is actually a tight double star system.', false, true, 'big', 49010, 7580000, 400000, NULL);
INSERT INTO public.moon VALUES (4, 'PlutoMoon', 'Alpheratz, the brightest star in the constellation Andromeda. In fact, many people use this star to locate the Andromeda Galaxy in the night sky. While it appears as a single star to the unaided eye, Alpheratz is actually a tight double star system.', false, true, 'big', 49010, 7580000, 400000, NULL);
INSERT INTO public.moon VALUES (5, 'JupiterMoon', 'Alpheratz, the brightest star in the constellation Andromeda. In fact, many people use this star to locate the Andromeda Galaxy in the night sky. While it appears as a single star to the unaided eye, Alpheratz is actually a tight double star system.', false, true, 'big', 49010, 7580000, 400000, NULL);
INSERT INTO public.moon VALUES (6, 'UranusMoon', 'Alpheratz, the brightest star in the constellation Andromeda. In fact, many people use this star to locate the Andromeda Galaxy in the night sky. While it appears as a single star to the unaided eye, Alpheratz is actually a tight double star system.', false, true, 'big', 49010, 7580000, 400000, NULL);
INSERT INTO public.moon VALUES (7, 'TerarareMoon', 'Alpheratz, the brightest star in the constellation Andromeda. In fact, many people use this star to locate the Andromeda Galaxy in the night sky. While it appears as a single star to the unaided eye, Alpheratz is actually a tight double star system.', false, true, 'big', 49010, 7580000, 400000, NULL);
INSERT INTO public.moon VALUES (8, 'MariosMoon', 'Alpheratz, the brightest star in the constellation Andromeda. In fact, many people use this star to locate the Andromeda Galaxy in the night sky. While it appears as a single star to the unaided eye, Alpheratz is actually a tight double star system.', false, true, 'big', 49010, 7580000, 400000, NULL);
INSERT INTO public.moon VALUES (9, 'VennenusMoon', 'Alpheratz, the brightest star in the constellation Andromeda. In fact, many people use this star to locate the Andromeda Galaxy in the night sky. While it appears as a single star to the unaided eye, Alpheratz is actually a tight double star system.', false, true, 'big', 49010, 7580000, 400000, NULL);
INSERT INTO public.moon VALUES (10, 'PluintoMoon', 'Alpheratz, the brightest star in the constellation Andromeda. In fact, many people use this star to locate the Andromeda Galaxy in the night sky. While it appears as a single star to the unaided eye, Alpheratz is actually a tight double star system.', false, true, 'big', 49010, 7580000, 400000, NULL);
INSERT INTO public.moon VALUES (11, 'JupraiterMoon', 'Alpheratz, the brightest star in the constellation Andromeda. In fact, many people use this star to locate the Andromeda Galaxy in the night sky. While it appears as a single star to the unaided eye, Alpheratz is actually a tight double star system.', false, true, 'big', 49010, 7580000, 400000, NULL);
INSERT INTO public.moon VALUES (12, 'UrahniusMoon', 'Alpheratz, the brightest star in the constellation Andromeda. In fact, many people use this star to locate the Andromeda Galaxy in the night sky. While it appears as a single star to the unaided eye, Alpheratz is actually a tight double star system.', false, true, 'big', 49010, 7580000, 400000, NULL);
INSERT INTO public.moon VALUES (13, 'VennenanousMoon', 'Alpheratz, the brightest star in the constellation Andromeda. In fact, many people use this star to locate the Andromeda Galaxy in the night sky. While it appears as a single star to the unaided eye, Alpheratz is actually a tight double star system.', false, true, 'big', 49010, 7580000, 400000, NULL);
INSERT INTO public.moon VALUES (14, 'PluintobuiMoon', 'Alpheratz, the brightest star in the constellation Andromeda. In fact, many people use this star to locate the Andromeda Galaxy in the night sky. While it appears as a single star to the unaided eye, Alpheratz is actually a tight double star system.', false, true, 'big', 49010, 7580000, 400000, NULL);
INSERT INTO public.moon VALUES (15, 'JupraiterinaMoon', 'Alpheratz, the brightest star in the constellation Andromeda. In fact, many people use this star to locate the Andromeda Galaxy in the night sky. While it appears as a single star to the unaided eye, Alpheratz is actually a tight double star system.', false, true, 'big', 49010, 7580000, 400000, NULL);
INSERT INTO public.moon VALUES (16, 'UrahniusoneMoon', 'Alpheratz, the brightest star in the constellation Andromeda. In fact, many people use this star to locate the Andromeda Galaxy in the night sky. While it appears as a single star to the unaided eye, Alpheratz is actually a tight double star system.', false, true, 'big', 49010, 7580000, 400000, NULL);
INSERT INTO public.moon VALUES (17, 'MariouisMoon', 'Alpheratz, the brightest star in the constellation Andromeda. In fact, many people use this star to locate the Andromeda Galaxy in the night sky. While it appears as a single star to the unaided eye, Alpheratz is actually a tight double star system.', false, true, 'big', 49010, 7580000, 400000, NULL);
INSERT INTO public.moon VALUES (18, 'VenabnenusMoon', 'Alpheratz, the brightest star in the constellation Andromeda. In fact, many people use this star to locate the Andromeda Galaxy in the night sky. While it appears as a single star to the unaided eye, Alpheratz is actually a tight double star system.', false, true, 'big', 49010, 7580000, 400000, NULL);
INSERT INTO public.moon VALUES (19, 'PluintourdMoon', 'Alpheratz, the brightest star in the constellation Andromeda. In fact, many people use this star to locate the Andromeda Galaxy in the night sky. While it appears as a single star to the unaided eye, Alpheratz is actually a tight double star system.', false, true, 'big', 49010, 7580000, 400000, NULL);
INSERT INTO public.moon VALUES (20, 'JuiapraiterMoon', 'Alpheratz, the brightest star in the constellation Andromeda. In fact, many people use this star to locate the Andromeda Galaxy in the night sky. While it appears as a single star to the unaided eye, Alpheratz is actually a tight double star system.', false, true, 'big', 49010, 7580000, 400000, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Terre', 'Alpheratz, the brightest star in the constellation Andromeda. In fact, many people use this star to locate the Andromeda Galaxy in the night sky. While it appears as a single star to the unaided eye, Alpheratz is actually a tight double star system.', false, true, 'big', 49010, 7580000, 400000, NULL);
INSERT INTO public.planet VALUES (2, 'Mars', 'Alpheratz, the brightest star in the constellation Andromeda. In fact, many people use this star to locate the Andromeda Galaxy in the night sky. While it appears as a single star to the unaided eye, Alpheratz is actually a tight double star system.', false, true, 'big', 49010, 7580000, 400000, NULL);
INSERT INTO public.planet VALUES (3, 'Venus', 'Alpheratz, the brightest star in the constellation Andromeda. In fact, many people use this star to locate the Andromeda Galaxy in the night sky. While it appears as a single star to the unaided eye, Alpheratz is actually a tight double star system.', false, true, 'big', 49010, 7580000, 400000, NULL);
INSERT INTO public.planet VALUES (4, 'Pluto', 'Alpheratz, the brightest star in the constellation Andromeda. In fact, many people use this star to locate the Andromeda Galaxy in the night sky. While it appears as a single star to the unaided eye, Alpheratz is actually a tight double star system.', false, true, 'big', 49010, 7580000, 400000, NULL);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Alpheratz, the brightest star in the constellation Andromeda. In fact, many people use this star to locate the Andromeda Galaxy in the night sky. While it appears as a single star to the unaided eye, Alpheratz is actually a tight double star system.', false, true, 'big', 49010, 7580000, 400000, NULL);
INSERT INTO public.planet VALUES (6, 'Uranus', 'Alpheratz, the brightest star in the constellation Andromeda. In fact, many people use this star to locate the Andromeda Galaxy in the night sky. While it appears as a single star to the unaided eye, Alpheratz is actually a tight double star system.', false, true, 'big', 49010, 7580000, 400000, NULL);
INSERT INTO public.planet VALUES (7, 'Terarare', 'Alpheratz, the brightest star in the constellation Andromeda. In fact, many people use this star to locate the Andromeda Galaxy in the night sky. While it appears as a single star to the unaided eye, Alpheratz is actually a tight double star system.', false, true, 'big', 49010, 7580000, 400000, NULL);
INSERT INTO public.planet VALUES (8, 'Marios', 'Alpheratz, the brightest star in the constellation Andromeda. In fact, many people use this star to locate the Andromeda Galaxy in the night sky. While it appears as a single star to the unaided eye, Alpheratz is actually a tight double star system.', false, true, 'big', 49010, 7580000, 400000, NULL);
INSERT INTO public.planet VALUES (9, 'Vennenus', 'Alpheratz, the brightest star in the constellation Andromeda. In fact, many people use this star to locate the Andromeda Galaxy in the night sky. While it appears as a single star to the unaided eye, Alpheratz is actually a tight double star system.', false, true, 'big', 49010, 7580000, 400000, NULL);
INSERT INTO public.planet VALUES (10, 'Pluinto', 'Alpheratz, the brightest star in the constellation Andromeda. In fact, many people use this star to locate the Andromeda Galaxy in the night sky. While it appears as a single star to the unaided eye, Alpheratz is actually a tight double star system.', false, true, 'big', 49010, 7580000, 400000, NULL);
INSERT INTO public.planet VALUES (11, 'Jupraiter', 'Alpheratz, the brightest star in the constellation Andromeda. In fact, many people use this star to locate the Andromeda Galaxy in the night sky. While it appears as a single star to the unaided eye, Alpheratz is actually a tight double star system.', false, true, 'big', 49010, 7580000, 400000, NULL);
INSERT INTO public.planet VALUES (12, 'Urahnius', 'Alpheratz, the brightest star in the constellation Andromeda. In fact, many people use this star to locate the Andromeda Galaxy in the night sky. While it appears as a single star to the unaided eye, Alpheratz is actually a tight double star system.', false, true, 'big', 49010, 7580000, 400000, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Alpheratz', 'Alpheratz, the brightest star in the constellation Andromeda. In fact, many people use this star to locate the Andromeda Galaxy in the night sky. While it appears as a single star to the unaided eye, Alpheratz is actually a tight double star system.', false, true, 'big', 49010, 7580000, 400000, NULL);
INSERT INTO public.star VALUES (2, 'Bellpheratz', 'Alpheratz, the brightest star in the constellation Andromeda. In fact, many people use this star to locate the Andromeda Galaxy in the night sky. While it appears as a single star to the unaided eye, Alpheratz is actually a tight double star system.', false, true, 'big', 49010, 7580000, 400000, NULL);
INSERT INTO public.star VALUES (3, 'Calpheratz', 'Alpheratz, the brightest star in the constellation Andromeda. In fact, many people use this star to locate the Andromeda Galaxy in the night sky. While it appears as a single star to the unaided eye, Alpheratz is actually a tight double star system.', false, true, 'big', 49010, 7580000, 400000, NULL);
INSERT INTO public.star VALUES (4, 'Delpheratz', 'Alpheratz, the brightest star in the constellation Andromeda. In fact, many people use this star to locate the Andromeda Galaxy in the night sky. While it appears as a single star to the unaided eye, Alpheratz is actually a tight double star system.', false, true, 'big', 49010, 7580000, 400000, NULL);
INSERT INTO public.star VALUES (5, 'Elpheratz', 'Alpheratz, the brightest star in the constellation Andromeda. In fact, many people use this star to locate the Andromeda Galaxy in the night sky. While it appears as a single star to the unaided eye, Alpheratz is actually a tight double star system.', false, true, 'big', 49010, 7580000, 400000, NULL);
INSERT INTO public.star VALUES (6, 'Falpheratz', 'Alpheratz, the brightest star in the constellation Andromeda. In fact, many people use this star to locate the Andromeda Galaxy in the night sky. While it appears as a single star to the unaided eye, Alpheratz is actually a tight double star system.', false, true, 'big', 49010, 7580000, 400000, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: meteorite_meteorite_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.meteorite_meteorite_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


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
-- Name: meteorite meteorite_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteorite
    ADD CONSTRAINT meteorite_name_key UNIQUE (name);


--
-- Name: meteorite meteorite_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteorite
    ADD CONSTRAINT meteorite_pkey PRIMARY KEY (meteorite_id);


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
-- Name: meteorite meteorite_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteorite
    ADD CONSTRAINT meteorite_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


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

