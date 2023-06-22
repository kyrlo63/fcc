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
    planets_in integer,
    age_in_billions_of_years numeric(6,2),
    radius_in_light_years integer
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
-- Name: life_form; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.life_form (
    life_form_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer,
    description text
);


ALTER TABLE public.life_form OWNER TO freecodecamp;

--
-- Name: life_forms_life_form_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.life_forms_life_form_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.life_forms_life_form_id_seq OWNER TO freecodecamp;

--
-- Name: life_forms_life_form_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.life_forms_life_form_id_seq OWNED BY public.life_form.life_form_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    distance_to_planet_in_km integer,
    has_life boolean,
    radius_in_km integer,
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
    age_in_millions_of_years integer,
    distance_to_earth_in_million_km integer,
    radius_in_km numeric(7,1),
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_to_earth_in_light_years numeric(7,1),
    radius_in_km integer,
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
-- Name: life_form life_form_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.life_form ALTER COLUMN life_form_id SET DEFAULT nextval('public.life_forms_life_form_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'Andromeda galaxy', 1, 10.01, 110000);
INSERT INTO public.galaxy VALUES (2, 'Whirlpool galaxy', 1, 0.40, 30000);
INSERT INTO public.galaxy VALUES (3, 'Milky Way galaxy', 1000000000, 13.61, 52850);
INSERT INTO public.galaxy VALUES (4, 'Messier 87', 0, 13.24, 60000);
INSERT INTO public.galaxy VALUES (5, 'Triangulum galaxy', 1, 10.00, 61120);
INSERT INTO public.galaxy VALUES (6, 'Hoag''s Object', 0, 12.75, 60500);


--
-- Data for Name: life_form; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.life_form VALUES (1, 'Human', 1, 'The worst life form on the planet.');
INSERT INTO public.life_form VALUES (2, 'Dog', 1, 'The cutest life form on the planet.');
INSERT INTO public.life_form VALUES (3, 'Pig', 1, 'The stinkiest life form on the planet.');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 4510, 384400, false, 1737, 1);
INSERT INTO public.moon VALUES (2, 'Europa', 4503, 628300000, false, 1561, 2);
INSERT INTO public.moon VALUES (3, 'Io', 4503, 628300000, false, 1862, 2);
INSERT INTO public.moon VALUES (4, 'Ganymede', 4503, 628300000, false, 2634, 2);
INSERT INTO public.moon VALUES (5, 'Callisto', 4503, 628300000, false, 2410, 2);
INSERT INTO public.moon VALUES (6, 'Titan', 4003, 1200000, false, 2575, 3);
INSERT INTO public.moon VALUES (7, 'Moon 1 (fake)', 6512, 6456234, false, 4365, 4);
INSERT INTO public.moon VALUES (8, 'Moon 2 (fake)', 4003, 1200000, false, 2575, 3);
INSERT INTO public.moon VALUES (9, 'Moon 3 (fake)', 6512, 6456234, false, 4365, 4);
INSERT INTO public.moon VALUES (10, 'Moon 4 (fake)', 4003, 1200000, false, 2575, 3);
INSERT INTO public.moon VALUES (11, 'Moon 5 (fake)', 6512, 6456234, false, 4365, 4);
INSERT INTO public.moon VALUES (12, 'Moon 6 (fake)', 4003, 1200000, false, 2575, 3);
INSERT INTO public.moon VALUES (13, 'Moon 7 (fake)', 6512, 6456234, false, 4365, 4);
INSERT INTO public.moon VALUES (14, 'Moon 8 (fake)', 4003, 1200000, false, 2575, 3);
INSERT INTO public.moon VALUES (15, 'Moon 9 (fake)', 6512, 6456234, false, 4365, 4);
INSERT INTO public.moon VALUES (16, 'Moon 10 (fake)', 4003, 1200000, false, 2575, 3);
INSERT INTO public.moon VALUES (17, 'Moon 11 (fake)', 6512, 6456234, false, 4365, 4);
INSERT INTO public.moon VALUES (18, 'Moon 12 (fake)', 4003, 1200000, false, 2575, 3);
INSERT INTO public.moon VALUES (19, 'Moon 13 (fake)', 6512, 6456234, false, 4365, 4);
INSERT INTO public.moon VALUES (20, 'Moon 14 (fake)', 4863, 1357956, false, 8496, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 4543, 0, 6371.0, true, 8);
INSERT INTO public.planet VALUES (2, 'Jupiter', 4603, 823, 69911.0, false, 8);
INSERT INTO public.planet VALUES (3, 'Saturn', 4503, 1395, 58232.0, false, 8);
INSERT INTO public.planet VALUES (4, 'Mercury', 4503, 188, 2439.7, false, 8);
INSERT INTO public.planet VALUES (5, 'Venus', 4503, 84, 6051.8, false, 8);
INSERT INTO public.planet VALUES (6, 'Mars', 4603, 324, 3389.5, false, 8);
INSERT INTO public.planet VALUES (7, 'Uranus', 4503, 3053, 25362.0, false, 8);
INSERT INTO public.planet VALUES (8, 'Neptune', 4503, 4462, 24622.0, false, 8);
INSERT INTO public.planet VALUES (9, 'Proxima Centauri B', 4853, 40208000, 0.0, false, 7);
INSERT INTO public.planet VALUES (10, 'Planet 1 (fake)', 6363, 16567, 50054.0, true, 3);
INSERT INTO public.planet VALUES (11, 'Planet 2 (fake)', 6544, 54687, 54196.0, false, 4);
INSERT INTO public.planet VALUES (12, 'Planet 3 (fake)', 5465, 54642, 32198.0, false, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Alpha Centauri A', 4.0, 851120, 3);
INSERT INTO public.star VALUES (2, 'Alpha Centauri B', 4.4, 600790, 3);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 642.5, 617100000, 3);
INSERT INTO public.star VALUES (4, 'Alpha Andromedae', 96.9, 1148961, 1);
INSERT INTO public.star VALUES (5, 'Vega', 25.1, 1643200, 3);
INSERT INTO public.star VALUES (6, 'Canopus', 309.8, 49395000, 3);
INSERT INTO public.star VALUES (7, 'Proxima Centauri', 4.2, 107280, 3);
INSERT INTO public.star VALUES (8, 'Sun', 0.0, 696340, 3);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: life_forms_life_form_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.life_forms_life_form_id_seq', 3, true);


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

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_unique UNIQUE (galaxy_id);


--
-- Name: life_form life_form_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.life_form
    ADD CONSTRAINT life_form_unique UNIQUE (life_form_id);


--
-- Name: life_form life_forms_life_form_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.life_form
    ADD CONSTRAINT life_forms_life_form_id_key UNIQUE (life_form_id);


--
-- Name: life_form life_forms_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.life_form
    ADD CONSTRAINT life_forms_pkey PRIMARY KEY (life_form_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_unique UNIQUE (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_unique UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_unique UNIQUE (star_id);


--
-- Name: life_form life_forms_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.life_form
    ADD CONSTRAINT life_forms_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

