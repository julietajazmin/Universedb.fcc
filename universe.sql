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
-- Name: descubrimiento; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.descubrimiento (
    descubrimiento_id integer NOT NULL,
    name character varying(100) NOT NULL,
    "año_descubierto" integer,
    forma_de_descubrirlo text,
    datos_extras text,
    registro text NOT NULL
);


ALTER TABLE public.descubrimiento OWNER TO freecodecamp;

--
-- Name: descubrimiento_descubrimiento_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.descubrimiento_descubrimiento_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.descubrimiento_descubrimiento_id_seq OWNER TO freecodecamp;

--
-- Name: descubrimiento_descubrimiento_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.descubrimiento_descubrimiento_id_seq OWNED BY public.descubrimiento.descubrimiento_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(100),
    galaxy_types text,
    description text,
    "dimensión" numeric NOT NULL,
    cantidad_de_estrellas numeric NOT NULL
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
    name character varying(100) NOT NULL,
    is_spherical boolean,
    has_gravity boolean,
    descrption text,
    planet_id integer NOT NULL
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
    name character varying(100) NOT NULL,
    edad integer,
    orbital_period integer,
    radius_in_km numeric,
    star_id integer NOT NULL
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
    name character varying(100) NOT NULL,
    distance_from_earth numeric,
    has_life boolean,
    description text,
    galaxy_id integer NOT NULL
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
-- Name: descubrimiento descubrimiento_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.descubrimiento ALTER COLUMN descubrimiento_id SET DEFAULT nextval('public.descubrimiento_descubrimiento_id_seq'::regclass);


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
-- Data for Name: descubrimiento; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.descubrimiento VALUES (1, 'Luna', NULL, NULL, NULL, 'Se registró en el año 299');
INSERT INTO public.descubrimiento VALUES (2, 'Tetis', NULL, NULL, NULL, 'Se registró en el año 300');
INSERT INTO public.descubrimiento VALUES (3, 'Ades', NULL, NULL, NULL, 'Se registró en el año 301');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (2, 'Via Lactea', NULL, NULL, 12, 12);
INSERT INTO public.galaxy VALUES (3, 'Andromeda', NULL, NULL, 32, 32);
INSERT INTO public.galaxy VALUES (4, 'Triangulo', NULL, NULL, 42, 42);
INSERT INTO public.galaxy VALUES (5, 'Planta', NULL, NULL, 22, 22);
INSERT INTO public.galaxy VALUES (6, 'Violet', NULL, NULL, 72, 72);
INSERT INTO public.galaxy VALUES (7, 'Republic', NULL, NULL, 82, 82);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (2, 'Tetis', NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (4, 'Jano', NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (5, 'Atlas', NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (6, 'Encelado', NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (7, 'Amalteaa', NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (8, 'Telesto', NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (9, 'Tebe', NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (10, 'Fobos', NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (11, 'Lobos', NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (12, 'Roma', NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (13, 'Romulo', NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (14, 'Artemisa', NULL, NULL, NULL, 8);
INSERT INTO public.moon VALUES (15, 'Hercules', NULL, NULL, NULL, 9);
INSERT INTO public.moon VALUES (16, 'Ades', NULL, NULL, NULL, 10);
INSERT INTO public.moon VALUES (17, 'Floki', NULL, NULL, NULL, 11);
INSERT INTO public.moon VALUES (18, 'Boris', NULL, NULL, NULL, 12);
INSERT INTO public.moon VALUES (19, 'Aremi', NULL, NULL, NULL, 12);
INSERT INTO public.moon VALUES (20, 'Ursi', NULL, NULL, NULL, 11);
INSERT INTO public.moon VALUES (21, 'Donita', NULL, NULL, NULL, 11);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'Tierra', NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (3, 'Marte', NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (4, 'Jupiter', NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (5, 'Urano', NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (6, 'Neptuno', NULL, NULL, NULL, 4);
INSERT INTO public.planet VALUES (7, 'Venus', NULL, NULL, NULL, 4);
INSERT INTO public.planet VALUES (8, 'Saturno', NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES (9, 'Pluton', NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES (10, 'Omega', NULL, NULL, NULL, 6);
INSERT INTO public.planet VALUES (11, 'Omicron', NULL, NULL, NULL, 6);
INSERT INTO public.planet VALUES (12, 'Solaria', NULL, NULL, NULL, 7);
INSERT INTO public.planet VALUES (13, 'Anuna', NULL, NULL, NULL, 7);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'Sol', NULL, NULL, NULL, 2);
INSERT INTO public.star VALUES (3, 'Pollux', NULL, NULL, NULL, 3);
INSERT INTO public.star VALUES (4, 'Antares', NULL, NULL, NULL, 4);
INSERT INTO public.star VALUES (5, 'Oberon', NULL, NULL, NULL, 5);
INSERT INTO public.star VALUES (6, 'LHS20', NULL, NULL, NULL, 7);
INSERT INTO public.star VALUES (7, 'Bisk', NULL, NULL, NULL, 6);


--
-- Name: descubrimiento_descubrimiento_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.descubrimiento_descubrimiento_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: descubrimiento descubrimiento_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.descubrimiento
    ADD CONSTRAINT descubrimiento_name_key UNIQUE (name);


--
-- Name: descubrimiento descubrimiento_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.descubrimiento
    ADD CONSTRAINT descubrimiento_pkey PRIMARY KEY (descubrimiento_id);


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
-- Name: star fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon moons_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moons_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planets_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planets_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

