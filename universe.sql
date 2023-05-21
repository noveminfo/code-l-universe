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
    name character varying(50) NOT NULL,
    description text,
    galaxy_types character varying(10),
    age_in_millions_of_years integer
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
    name character varying(50) NOT NULL,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
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
    name character varying(50) NOT NULL,
    planet_types character varying(10),
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    star_id integer,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL
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
-- Name: resources; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.resources (
    resources_id integer NOT NULL,
    name character varying(50) NOT NULL,
    resource_type character varying(10) NOT NULL
);


ALTER TABLE public.resources OWNER TO freecodecamp;

--
-- Name: resources_resources_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.resources_resources_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.resources_resources_id_seq OWNER TO freecodecamp;

--
-- Name: resources_resources_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.resources_resources_id_seq OWNED BY public.resources.resources_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    star_types character varying(10),
    age_in_millions_of_years integer,
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
-- Name: resources resources_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.resources ALTER COLUMN resources_id SET DEFAULT nextval('public.resources_resources_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'iron ocean', NULL, 'oxy', 45);
INSERT INTO public.galaxy VALUES (2, 'green hat', NULL, 'oxx', 123);
INSERT INTO public.galaxy VALUES (3, 'slive angle', NULL, 'oxx', 390);
INSERT INTO public.galaxy VALUES (4, 'plant wave assil', NULL, 'otx', 89);
INSERT INTO public.galaxy VALUES (5, 'king orc', NULL, 'oty', 245);
INSERT INTO public.galaxy VALUES (6, 'blue vill', NULL, 'oxy', 550);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'iowier32', false, false, 121, 7832.32, 2);
INSERT INTO public.moon VALUES (2, 'hoigiowe34', false, true, 332, 9821.54, 2);
INSERT INTO public.moon VALUES (3, 'nbvauiwe5', false, false, 43, 3522.6, 2);
INSERT INTO public.moon VALUES (4, 'bowiief6', false, false, 56, 12221.43, 3);
INSERT INTO public.moon VALUES (5, 'hiiweg43', false, false, 332, 7832.22, 6);
INSERT INTO public.moon VALUES (6, 'gvhgugwe3', false, true, 221, 993.2, 5);
INSERT INTO public.moon VALUES (7, 'ttwerr663', true, false, 213, 3555.3, 7);
INSERT INTO public.moon VALUES (8, 'bvoiviw3', true, true, 554, 22311.32, 7);
INSERT INTO public.moon VALUES (9, 'bvaiiwoe', false, true, 1123, 43232.32, 8);
INSERT INTO public.moon VALUES (10, 'ggowie34', true, false, 3234, 12312.32, 8);
INSERT INTO public.moon VALUES (11, 'iewfier3', false, false, 121, 7832.32, 1);
INSERT INTO public.moon VALUES (12, 'hoigew43', false, true, 332, 9821.54, 1);
INSERT INTO public.moon VALUES (13, 'nbvauxxxiwe5', false, false, 43, 3522.6, 4);
INSERT INTO public.moon VALUES (14, 'bowixiefx6', false, false, 56, 12221.43, 4);
INSERT INTO public.moon VALUES (15, 'hiiccweg43', false, false, 332, 7832.22, 11);
INSERT INTO public.moon VALUES (16, 'hgurrgwe3', false, true, 221, 993.2, 11);
INSERT INTO public.moon VALUES (17, 'ttwecccrr663', true, false, 213, 355.3, 10);
INSERT INTO public.moon VALUES (18, 'bvoieviw3', true, true, 554, 22311.32, 9);
INSERT INTO public.moon VALUES (19, 'bvaiciwoe', false, true, 123, 43232.32, 9);
INSERT INTO public.moon VALUES (20, 'ggocwie34', true, false, 234, 1312.32, 9);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'red glaofe', NULL, 44, 1234.66, 1, true, false);
INSERT INTO public.planet VALUES (2, 'woifje aoif', NULL, 30, 4524.4, 1, false, false);
INSERT INTO public.planet VALUES (3, 'ihgoiwe32', NULL, 85, 993.2, 2, true, true);
INSERT INTO public.planet VALUES (4, 'haiowegna', NULL, 211, 1209.5, 2, false, true);
INSERT INTO public.planet VALUES (5, 'vbaioweg', NULL, 78, 8762.3, 2, true, false);
INSERT INTO public.planet VALUES (6, 'yiworw', NULL, 120, 5321.66, 3, true, true);
INSERT INTO public.planet VALUES (7, 'hagoiwennbv', NULL, 908, 3232.85, 3, true, false);
INSERT INTO public.planet VALUES (8, 'hogaiw', NULL, 223, 906.0, 3, false, true);
INSERT INTO public.planet VALUES (9, 'xxfglaofe', NULL, 144, 5234.66, 1, true, false);
INSERT INTO public.planet VALUES (10, 'aoif32', NULL, 301, 2524.4, 4, false, false);
INSERT INTO public.planet VALUES (11, 'ihrrwe56', NULL, 45, 2993.2, 5, true, true);
INSERT INTO public.planet VALUES (12, 'rrtowegna3', NULL, 11, 8209.5, 4, false, true);
INSERT INTO public.planet VALUES (13, 'tvbaeg33', NULL, 278, 1762.3, 5, true, false);
INSERT INTO public.planet VALUES (14, 'y3yiww', NULL, 124, 5021.66, 4, true, true);
INSERT INTO public.planet VALUES (15, 'ioknnbv', NULL, 2908, 1232.85, 2, true, false);


--
-- Data for Name: resources; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.resources VALUES (1, 'gold', 'vt3');
INSERT INTO public.resources VALUES (2, 'rock', 'vt4');
INSERT INTO public.resources VALUES (3, 'slive', 'vt2');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'iron vill', 'u32', 38, 1);
INSERT INTO public.star VALUES (2, 'noal kart osi', 'u22', 63, 3);
INSERT INTO public.star VALUES (3, 'yoie aofe', 'u81', 99, 2);
INSERT INTO public.star VALUES (4, 'hifeo aonv', 'u772', 33, 2);
INSERT INTO public.star VALUES (5, 'nbfiwe oaief', 'u3r', 110, 5);
INSERT INTO public.star VALUES (6, 'bvaif oaig', 'u22', 221, 6);
INSERT INTO public.star VALUES (7, 'weoirnb iwe', 'u3r', 76, 3);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 15, true);


--
-- Name: resources_resources_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.resources_resources_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 33, true);


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
-- Name: resources resources_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.resources
    ADD CONSTRAINT resources_name_key UNIQUE (name);


--
-- Name: resources resources_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.resources
    ADD CONSTRAINT resources_pkey PRIMARY KEY (resources_id);


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

