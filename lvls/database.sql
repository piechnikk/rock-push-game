--
-- PostgreSQL database dump
--

-- Dumped from database version 14.8
-- Dumped by pg_dump version 14.8

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
-- Name: levels; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.levels (
    data json NOT NULL
);


ALTER TABLE public.levels OWNER TO postgres;

--
-- Data for Name: levels; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.levels VALUES ('{
   "moves": 26,
   "list":[
   {
      "id": 0,
      "x": 0,
      "y": 0,
      "z": -5,
      "type": "wall"
   },
   {
      "id": 11,
      "x": 0,
      "y": 0,
      "z": -4,
      "type": "wall"
   },
   {
      "id": 22,
      "x": 0,
      "y": 0,
      "z": -3,
      "type": "wall"
   },
   {
      "id": 33,
      "x": 0,
      "y": 0,
      "z": -2,
      "type": "wall"
   },
   {
      "id": 44,
      "x": 0,
      "y": 0,
      "z": -1,
      "type": "wall"
   },
   {
      "id": 66,
      "x": 0,
      "y": 0,
      "z": 1,
      "type": "wall"
   },
   {
      "id": 77,
      "x": 0,
      "y": 0,
      "z": 2,
      "type": "wall"
   },
   {
      "id": 88,
      "x": 0,
      "y": 0,
      "z": 3,
      "type": "wall"
   },
   {
      "id": 99,
      "x": 0,
      "y": 0,
      "z": 4,
      "type": "wall"
   },
   {
      "id": 110,
      "x": 0,
      "y": 0,
      "z": 5,
      "type": "wall"
   },
   {
      "id": 111,
      "x": 1,
      "y": 0,
      "z": 5,
      "type": "wall"
   },
   {
      "id": 112,
      "x": 2,
      "y": 0,
      "z": 5,
      "type": "wall"
   },
   {
      "id": 113,
      "x": 3,
      "y": 0,
      "z": 5,
      "type": "wall"
   },
   {
      "id": 114,
      "x": 4,
      "y": 0,
      "z": 5,
      "type": "wall"
   },
   {
      "id": 115,
      "x": 5,
      "y": 0,
      "z": 5,
      "type": "wall"
   },
   {
      "id": 116,
      "x": 6,
      "y": 0,
      "z": 5,
      "type": "wall"
   },
   {
      "id": 117,
      "x": 7,
      "y": 0,
      "z": 5,
      "type": "wall"
   },
   {
      "id": 118,
      "x": 8,
      "y": 0,
      "z": 5,
      "type": "wall"
   },
   {
      "id": 119,
      "x": 9,
      "y": 0,
      "z": 5,
      "type": "wall"
   },
   {
      "id": 120,
      "x": 10,
      "y": 0,
      "z": 5,
      "type": "wall"
   },
   {
      "id": 109,
      "x": 10,
      "y": 0,
      "z": 4,
      "type": "wall"
   },
   {
      "id": 98,
      "x": 10,
      "y": 0,
      "z": 3,
      "type": "wall"
   },
   {
      "id": 87,
      "x": 10,
      "y": 0,
      "z": 2,
      "type": "wall"
   },
   {
      "id": 76,
      "x": 10,
      "y": 0,
      "z": 1,
      "type": "wall"
   },
   {
      "id": 65,
      "x": 10,
      "y": 0,
      "z": 0,
      "type": "wall"
   },
   {
      "id": 54,
      "x": 10,
      "y": 0,
      "z": -1,
      "type": "wall"
   },
   {
      "id": 43,
      "x": 10,
      "y": 0,
      "z": -2,
      "type": "wall"
   },
   {
      "id": 32,
      "x": 10,
      "y": 0,
      "z": -3,
      "type": "wall"
   },
   {
      "id": 10,
      "x": 10,
      "y": 0,
      "z": -5,
      "type": "wall"
   },
   {
      "id": 21,
      "x": 10,
      "y": 0,
      "z": -4,
      "type": "wall"
   },
   {
      "id": 9,
      "x": 9,
      "y": 0,
      "z": -5,
      "type": "wall"
   },
   {
      "id": 7,
      "x": 7,
      "y": 0,
      "z": -5,
      "type": "wall"
   },
   {
      "id": 8,
      "x": 8,
      "y": 0,
      "z": -5,
      "type": "wall"
   },
   {
      "id": 6,
      "x": 6,
      "y": 0,
      "z": -5,
      "type": "wall"
   },
   {
      "id": 5,
      "x": 5,
      "y": 0,
      "z": -5,
      "type": "wall"
   },
   {
      "id": 4,
      "x": 4,
      "y": 0,
      "z": -5,
      "type": "wall"
   },
   {
      "id": 3,
      "x": 3,
      "y": 0,
      "z": -5,
      "type": "wall"
   },
   {
      "id": 2,
      "x": 2,
      "y": 0,
      "z": -5,
      "type": "wall"
   },
   {
      "id": 1,
      "x": 1,
      "y": 0,
      "z": -5,
      "type": "wall"
   },
   {
      "id": 67,
      "x": 1,
      "y": 0,
      "z": 1,
      "type": "wall"
   },
   {
      "id": 68,
      "x": 2,
      "y": 0,
      "z": 1,
      "type": "wall"
   },
   {
      "id": 69,
      "x": 3,
      "y": 0,
      "z": 1,
      "type": "wall"
   },
   {
      "id": 70,
      "x": 4,
      "y": 0,
      "z": 1,
      "type": "wall"
   },
   {
      "id": 34,
      "x": 1,
      "y": 0,
      "z": -2,
      "type": "wall"
   },
   {
      "id": 35,
      "x": 2,
      "y": 0,
      "z": -2,
      "type": "wall"
   },
   {
      "id": 36,
      "x": 3,
      "y": 0,
      "z": -2,
      "type": "wall"
   },
   {
      "id": 37,
      "x": 4,
      "y": 0,
      "z": -2,
      "type": "wall"
   },
   {
      "id": 71,
      "x": 5,
      "y": 0,
      "z": 1,
      "type": "wall"
   },
   {
      "id": 100,
      "x": 1,
      "y": 0,
      "z": 4,
      "type": "player"
   },
   {
      "id": 78,
      "x": 1,
      "y": 0,
      "z": 2,
      "type": "wall"
   },
   {
      "id": 79,
      "x": 2,
      "y": 0,
      "z": 2,
      "type": "wall"
   },
   {
      "id": 50,
      "x": 6,
      "y": 0,
      "z": -1,
      "type": "rock"
   },
   {
      "id": 61,
      "x": 6,
      "y": 0,
      "z": 0,
      "type": "rock"
   },
   {
      "id": 59,
      "x": 4,
      "y": 0,
      "z": 0,
      "type": "rock"
   },
   {
      "id": 47,
      "x": 3,
      "y": 0,
      "z": -1,
      "type": "rock"
   },
   {
      "id": 38,
      "x": 5,
      "y": 0,
      "z": -2,
      "type": "wall"
   },
   {
      "id": 103,
      "x": 4,
      "y": 0,
      "z": 4,
      "type": "wall"
   },
   {
      "id": 104,
      "x": 5,
      "y": 0,
      "z": 4,
      "type": "wall"
   },
   {
      "id": 105,
      "x": 6,
      "y": 0,
      "z": 4,
      "type": "wall"
   },
   {
      "id": 106,
      "x": 7,
      "y": 0,
      "z": 4,
      "type": "wall"
   },
   {
      "id": 107,
      "x": 8,
      "y": 0,
      "z": 4,
      "type": "wall"
   },
   {
      "id": 108,
      "x": 9,
      "y": 0,
      "z": 4,
      "type": "wall"
   },
   {
      "id": 20,
      "x": 9,
      "y": 0,
      "z": -4,
      "type": "wall"
   },
   {
      "id": 31,
      "x": 9,
      "y": 0,
      "z": -3,
      "type": "wall"
   },
   {
      "id": 42,
      "x": 9,
      "y": 0,
      "z": -2,
      "type": "wall"
   },
   {
      "id": 53,
      "x": 9,
      "y": 0,
      "z": -1,
      "type": "wall"
   },
   {
      "id": 64,
      "x": 9,
      "y": 0,
      "z": 0,
      "type": "wall"
   },
   {
      "id": 75,
      "x": 9,
      "y": 0,
      "z": 1,
      "type": "wall"
   },
   {
      "id": 86,
      "x": 9,
      "y": 0,
      "z": 2,
      "type": "wall"
   },
   {
      "id": 97,
      "x": 9,
      "y": 0,
      "z": 3,
      "type": "wall"
   },
   {
      "id": 96,
      "x": 8,
      "y": 0,
      "z": 3,
      "type": "wall"
   },
   {
      "id": 85,
      "x": 8,
      "y": 0,
      "z": 2,
      "type": "wall"
   },
   {
      "id": 95,
      "x": 7,
      "y": 0,
      "z": 3,
      "type": "wall"
   },
   {
      "id": 91,
      "x": 3,
      "y": 0,
      "z": 3,
      "type": "enemy"
   },
   {
      "id": 83,
      "x": 6,
      "y": 0,
      "z": 2,
      "type": "rock"
   },
   {
      "id": 12,
      "x": 1,
      "y": 0,
      "z": -4,
      "type": "wall"
   },
   {
      "id": 23,
      "x": 1,
      "y": 0,
      "z": -3,
      "type": "wall"
   },
   {
      "id": 24,
      "x": 2,
      "y": 0,
      "z": -3,
      "type": "wall"
   },
   {
      "id": 13,
      "x": 2,
      "y": 0,
      "z": -4,
      "type": "wall"
   },
   {
      "id": 14,
      "x": 3,
      "y": 0,
      "z": -4,
      "type": "wall"
   },
   {
      "id": 25,
      "x": 3,
      "y": 0,
      "z": -3,
      "type": "wall"
   },
   {
      "id": 15,
      "x": 4,
      "y": 0,
      "z": -4,
      "type": "wall"
   },
   {
      "id": 26,
      "x": 4,
      "y": 0,
      "z": -3,
      "type": "wall"
   },
   {
      "id": 16,
      "x": 5,
      "y": 0,
      "z": -4,
      "type": "wall"
   },
   {
      "id": 27,
      "x": 5,
      "y": 0,
      "z": -3,
      "type": "wall"
   },
   {
      "id": 17,
      "x": 6,
      "y": 0,
      "z": -4,
      "type": "wall"
   },
   {
      "id": 18,
      "x": 7,
      "y": 0,
      "z": -4,
      "type": "wall"
   },
   {
      "id": 19,
      "x": 8,
      "y": 0,
      "z": -4,
      "type": "wall"
   },
   {
      "id": 28,
      "x": 6,
      "y": 0,
      "z": -3,
      "type": "wall"
   },
   {
      "id": 29,
      "x": 7,
      "y": 0,
      "z": -3,
      "type": "wall"
   },
   {
      "id": 30,
      "x": 8,
      "y": 0,
      "z": -3,
      "type": "wall"
   },
   {
      "id": 55,
      "x": 0,
      "y": 0,
      "z": 0,
      "type": "treasure"
   }
]}');
INSERT INTO public.levels VALUES ('{
   "moves": 25,
   "list":[
      {
         "id": 0,
         "x": 0,
         "y": 0,
         "z": -5,
         "type": "wall"
      },
      {
         "id": 11,
         "x": 0,
         "y": 0,
         "z": -4,
         "type": "wall"
      },
      {
         "id": 22,
         "x": 0,
         "y": 0,
         "z": -3,
         "type": "wall"
      },
      {
         "id": 33,
         "x": 0,
         "y": 0,
         "z": -2,
         "type": "wall"
      },
      {
         "id": 44,
         "x": 0,
         "y": 0,
         "z": -1,
         "type": "wall"
      },
      {
         "id": 66,
         "x": 0,
         "y": 0,
         "z": 1,
         "type": "wall"
      },
      {
         "id": 77,
         "x": 0,
         "y": 0,
         "z": 2,
         "type": "wall"
      },
      {
         "id": 88,
         "x": 0,
         "y": 0,
         "z": 3,
         "type": "wall"
      },
      {
         "id": 99,
         "x": 0,
         "y": 0,
         "z": 4,
         "type": "wall"
      },
      {
         "id": 110,
         "x": 0,
         "y": 0,
         "z": 5,
         "type": "wall"
      },
      {
         "id": 112,
         "x": 2,
         "y": 0,
         "z": 5,
         "type": "wall"
      },
      {
         "id": 111,
         "x": 1,
         "y": 0,
         "z": 5,
         "type": "wall"
      },
      {
         "id": 113,
         "x": 3,
         "y": 0,
         "z": 5,
         "type": "wall"
      },
      {
         "id": 115,
         "x": 5,
         "y": 0,
         "z": 5,
         "type": "wall"
      },
      {
         "id": 114,
         "x": 4,
         "y": 0,
         "z": 5,
         "type": "wall"
      },
      {
         "id": 116,
         "x": 6,
         "y": 0,
         "z": 5,
         "type": "wall"
      },
      {
         "id": 117,
         "x": 7,
         "y": 0,
         "z": 5,
         "type": "wall"
      },
      {
         "id": 118,
         "x": 8,
         "y": 0,
         "z": 5,
         "type": "wall"
      },
      {
         "id": 119,
         "x": 9,
         "y": 0,
         "z": 5,
         "type": "wall"
      },
      {
         "id": 109,
         "x": 10,
         "y": 0,
         "z": 4,
         "type": "wall"
      },
      {
         "id": 120,
         "x": 10,
         "y": 0,
         "z": 5,
         "type": "wall"
      },
      {
         "id": 98,
         "x": 10,
         "y": 0,
         "z": 3,
         "type": "wall"
      },
      {
         "id": 87,
         "x": 10,
         "y": 0,
         "z": 2,
         "type": "wall"
      },
      {
         "id": 76,
         "x": 10,
         "y": 0,
         "z": 1,
         "type": "wall"
      },
      {
         "id": 65,
         "x": 10,
         "y": 0,
         "z": 0,
         "type": "wall"
      },
      {
         "id": 54,
         "x": 10,
         "y": 0,
         "z": -1,
         "type": "wall"
      },
      {
         "id": 43,
         "x": 10,
         "y": 0,
         "z": -2,
         "type": "wall"
      },
      {
         "id": 32,
         "x": 10,
         "y": 0,
         "z": -3,
         "type": "wall"
      },
      {
         "id": 21,
         "x": 10,
         "y": 0,
         "z": -4,
         "type": "wall"
      },
      {
         "id": 10,
         "x": 10,
         "y": 0,
         "z": -5,
         "type": "wall"
      },
      {
         "id": 9,
         "x": 9,
         "y": 0,
         "z": -5,
         "type": "wall"
      },
      {
         "id": 8,
         "x": 8,
         "y": 0,
         "z": -5,
         "type": "wall"
      },
      {
         "id": 7,
         "x": 7,
         "y": 0,
         "z": -5,
         "type": "wall"
      },
      {
         "id": 6,
         "x": 6,
         "y": 0,
         "z": -5,
         "type": "wall"
      },
      {
         "id": 4,
         "x": 4,
         "y": 0,
         "z": -5,
         "type": "wall"
      },
      {
         "id": 5,
         "x": 5,
         "y": 0,
         "z": -5,
         "type": "wall"
      },
      {
         "id": 3,
         "x": 3,
         "y": 0,
         "z": -5,
         "type": "wall"
      },
      {
         "id": 2,
         "x": 2,
         "y": 0,
         "z": -5,
         "type": "wall"
      },
      {
         "id": 1,
         "x": 1,
         "y": 0,
         "z": -5,
         "type": "wall"
      },
      {
         "id": 108,
         "x": 9,
         "y": 0,
         "z": 4,
         "type": "player"
      },
      {
         "id": 55,
         "x": 0,
         "y": 0,
         "z": 0,
         "type": "treasure"
      },
      {
         "id": 107,
         "x": 8,
         "y": 0,
         "z": 4,
         "type": "wall"
      },
      {
         "id": 103,
         "x": 4,
         "y": 0,
         "z": 4,
         "type": "wall"
      },
      {
         "id": 101,
         "x": 2,
         "y": 0,
         "z": 4,
         "type": "wall"
      },
      {
         "id": 100,
         "x": 1,
         "y": 0,
         "z": 4,
         "type": "wall"
      },
      {
         "id": 89,
         "x": 1,
         "y": 0,
         "z": 3,
         "type": "wall"
      },
      {
         "id": 67,
         "x": 1,
         "y": 0,
         "z": 1,
         "type": "wall"
      },
      {
         "id": 78,
         "x": 1,
         "y": 0,
         "z": 2,
         "type": "wall"
      },
      {
         "id": 79,
         "x": 2,
         "y": 0,
         "z": 2,
         "type": "wall"
      },
      {
         "id": 90,
         "x": 2,
         "y": 0,
         "z": 3,
         "type": "wall"
      },
      {
         "id": 102,
         "x": 3,
         "y": 0,
         "z": 4,
         "type": "wall"
      },
      {
         "id": 91,
         "x": 3,
         "y": 0,
         "z": 3,
         "type": "wall"
      },
      {
         "id": 86,
         "x": 9,
         "y": 0,
         "z": 2,
         "type": "rock"
      },
      {
         "id": 96,
         "x": 8,
         "y": 0,
         "z": 3,
         "type": "rock"
      },
      {
         "id": 84,
         "x": 7,
         "y": 0,
         "z": 2,
         "type": "rock"
      },
      {
         "id": 72,
         "x": 6,
         "y": 0,
         "z": 1,
         "type": "rock"
      },
      {
         "id": 60,
         "x": 5,
         "y": 0,
         "z": 0,
         "type": "rock"
      },
      {
         "id": 48,
         "x": 4,
         "y": 0,
         "z": -1,
         "type": "rock"
      },
      {
         "id": 36,
         "x": 3,
         "y": 0,
         "z": -2,
         "type": "rock"
      },
      {
         "id": 46,
         "x": 2,
         "y": 0,
         "z": -1,
         "type": "rock"
      },
      {
         "id": 58,
         "x": 3,
         "y": 0,
         "z": 0,
         "type": "rock"
      },
      {
         "id": 70,
         "x": 4,
         "y": 0,
         "z": 1,
         "type": "rock"
      },
      {
         "id": 82,
         "x": 5,
         "y": 0,
         "z": 2,
         "type": "rock"
      },
      {
         "id": 94,
         "x": 6,
         "y": 0,
         "z": 3,
         "type": "rock"
      },
      {
         "id": 62,
         "x": 7,
         "y": 0,
         "z": 0,
         "type": "rock"
      },
      {
         "id": 52,
         "x": 8,
         "y": 0,
         "z": -1,
         "type": "rock"
      },
      {
         "id": 40,
         "x": 7,
         "y": 0,
         "z": -2,
         "type": "rock"
      },
      {
         "id": 17,
         "x": 6,
         "y": 0,
         "z": -4,
         "type": "wall"
      },
      {
         "id": 18,
         "x": 7,
         "y": 0,
         "z": -4,
         "type": "wall"
      },
      {
         "id": 15,
         "x": 4,
         "y": 0,
         "z": -4,
         "type": "wall"
      },
      {
         "id": 12,
         "x": 1,
         "y": 0,
         "z": -4,
         "type": "wall"
      },
      {
         "id": 34,
         "x": 1,
         "y": 0,
         "z": -2,
         "type": "wall"
      },
      {
         "id": 50,
         "x": 6,
         "y": 0,
         "z": -1,
         "type": "rock"
      },
      {
         "id": 38,
         "x": 5,
         "y": 0,
         "z": -2,
         "type": "rock"
      },
      {
         "id": 74,
         "x": 8,
         "y": 0,
         "z": 1,
         "type": "rock"
      },
      {
         "id": 30,
         "x": 8,
         "y": 0,
         "z": -3,
         "type": "wall"
      },
      {
         "id": 42,
         "x": 9,
         "y": 0,
         "z": -2,
         "type": "wall"
      },
      {
         "id": 31,
         "x": 9,
         "y": 0,
         "z": -3,
         "type": "wall"
      },
      {
         "id": 20,
         "x": 9,
         "y": 0,
         "z": -4,
         "type": "wall"
      },
      {
         "id": 19,
         "x": 8,
         "y": 0,
         "z": -4,
         "type": "wall"
      },
      {
         "id": 16,
         "x": 5,
         "y": 0,
         "z": -4,
         "type": "wall"
      },
      {
         "id": 14,
         "x": 3,
         "y": 0,
         "z": -4,
         "type": "wall"
      },
      {
         "id": 13,
         "x": 2,
         "y": 0,
         "z": -4,
         "type": "wall"
      },
      {
         "id": 23,
         "x": 1,
         "y": 0,
         "z": -3,
         "type": "wall"
      },
      {
         "id": 24,
         "x": 2,
         "y": 0,
         "z": -3,
         "type": "wall"
      },
      {
         "id": 28,
         "x": 6,
         "y": 0,
         "z": -3,
         "type": "wall"
      },
      {
         "id": 104,
         "x": 5,
         "y": 0,
         "z": 4,
         "type": "rock"
      },
      {
         "id": 80,
         "x": 3,
         "y": 0,
         "z": 2,
         "type": "rock"
      }
   ]
}');
INSERT INTO public.levels VALUES ('{
   "moves": 23,
   "list":[
      {
         "id": 65,
         "x": 10,
         "y": 0,
         "z": 0,
         "type": "wall"
      },
      {
         "id": 76,
         "x": 10,
         "y": 0,
         "z": 1,
         "type": "wall"
      },
      {
         "id": 87,
         "x": 10,
         "y": 0,
         "z": 2,
         "type": "wall"
      },
      {
         "id": 98,
         "x": 10,
         "y": 0,
         "z": 3,
         "type": "wall"
      },
      {
         "id": 109,
         "x": 10,
         "y": 0,
         "z": 4,
         "type": "wall"
      },
      {
         "id": 120,
         "x": 10,
         "y": 0,
         "z": 5,
         "type": "wall"
      },
      {
         "id": 119,
         "x": 9,
         "y": 0,
         "z": 5,
         "type": "wall"
      },
      {
         "id": 118,
         "x": 8,
         "y": 0,
         "z": 5,
         "type": "wall"
      },
      {
         "id": 117,
         "x": 7,
         "y": 0,
         "z": 5,
         "type": "wall"
      },
      {
         "id": 116,
         "x": 6,
         "y": 0,
         "z": 5,
         "type": "wall"
      },
      {
         "id": 115,
         "x": 5,
         "y": 0,
         "z": 5,
         "type": "wall"
      },
      {
         "id": 114,
         "x": 4,
         "y": 0,
         "z": 5,
         "type": "wall"
      },
      {
         "id": 113,
         "x": 3,
         "y": 0,
         "z": 5,
         "type": "wall"
      },
      {
         "id": 110,
         "x": 0,
         "y": 0,
         "z": 5,
         "type": "wall"
      },
      {
         "id": 111,
         "x": 1,
         "y": 0,
         "z": 5,
         "type": "wall"
      },
      {
         "id": 112,
         "x": 2,
         "y": 0,
         "z": 5,
         "type": "wall"
      },
      {
         "id": 99,
         "x": 0,
         "y": 0,
         "z": 4,
         "type": "wall"
      },
      {
         "id": 88,
         "x": 0,
         "y": 0,
         "z": 3,
         "type": "wall"
      },
      {
         "id": 77,
         "x": 0,
         "y": 0,
         "z": 2,
         "type": "wall"
      },
      {
         "id": 66,
         "x": 0,
         "y": 0,
         "z": 1,
         "type": "wall"
      },
      {
         "id": 55,
         "x": 0,
         "y": 0,
         "z": 0,
         "type": "treasure"
      },
      {
         "id": 54,
         "x": 10,
         "y": 0,
         "z": -1,
         "type": "wall"
      },
      {
         "id": 43,
         "x": 10,
         "y": 0,
         "z": -2,
         "type": "wall"
      },
      {
         "id": 32,
         "x": 10,
         "y": 0,
         "z": -3,
         "type": "wall"
      },
      {
         "id": 21,
         "x": 10,
         "y": 0,
         "z": -4,
         "type": "wall"
      },
      {
         "id": 10,
         "x": 10,
         "y": 0,
         "z": -5,
         "type": "wall"
      },
      {
         "id": 9,
         "x": 9,
         "y": 0,
         "z": -5,
         "type": "wall"
      },
      {
         "id": 8,
         "x": 8,
         "y": 0,
         "z": -5,
         "type": "wall"
      },
      {
         "id": 7,
         "x": 7,
         "y": 0,
         "z": -5,
         "type": "wall"
      },
      {
         "id": 6,
         "x": 6,
         "y": 0,
         "z": -5,
         "type": "wall"
      },
      {
         "id": 5,
         "x": 5,
         "y": 0,
         "z": -5,
         "type": "wall"
      },
      {
         "id": 4,
         "x": 4,
         "y": 0,
         "z": -5,
         "type": "wall"
      },
      {
         "id": 3,
         "x": 3,
         "y": 0,
         "z": -5,
         "type": "wall"
      },
      {
         "id": 2,
         "x": 2,
         "y": 0,
         "z": -5,
         "type": "wall"
      },
      {
         "id": 1,
         "x": 1,
         "y": 0,
         "z": -5,
         "type": "wall"
      },
      {
         "id": 0,
         "x": 0,
         "y": 0,
         "z": -5,
         "type": "wall"
      },
      {
         "id": 11,
         "x": 0,
         "y": 0,
         "z": -4,
         "type": "wall"
      },
      {
         "id": 22,
         "x": 0,
         "y": 0,
         "z": -3,
         "type": "wall"
      },
      {
         "id": 33,
         "x": 0,
         "y": 0,
         "z": -2,
         "type": "wall"
      },
      {
         "id": 44,
         "x": 0,
         "y": 0,
         "z": -1,
         "type": "wall"
      },
      {
         "id": 86,
         "x": 9,
         "y": 0,
         "z": 2,
         "type": "wall"
      },
      {
         "id": 85,
         "x": 8,
         "y": 0,
         "z": 2,
         "type": "wall"
      },
      {
         "id": 96,
         "x": 8,
         "y": 0,
         "z": 3,
         "type": "wall"
      },
      {
         "id": 107,
         "x": 8,
         "y": 0,
         "z": 4,
         "type": "wall"
      },
      {
         "id": 97,
         "x": 9,
         "y": 0,
         "z": 3,
         "type": "wall"
      },
      {
         "id": 108,
         "x": 9,
         "y": 0,
         "z": 4,
         "type": "wall"
      },
      {
         "id": 41,
         "x": 8,
         "y": 0,
         "z": -2,
         "type": "wall"
      },
      {
         "id": 30,
         "x": 8,
         "y": 0,
         "z": -3,
         "type": "wall"
      },
      {
         "id": 19,
         "x": 8,
         "y": 0,
         "z": -4,
         "type": "wall"
      },
      {
         "id": 20,
         "x": 9,
         "y": 0,
         "z": -4,
         "type": "wall"
      },
      {
         "id": 31,
         "x": 9,
         "y": 0,
         "z": -3,
         "type": "wall"
      },
      {
         "id": 42,
         "x": 9,
         "y": 0,
         "z": -2,
         "type": "wall"
      },
      {
         "id": 52,
         "x": 8,
         "y": 0,
         "z": -1,
         "type": "rock"
      },
      {
         "id": 63,
         "x": 8,
         "y": 0,
         "z": 0,
         "type": "rock"
      },
      {
         "id": 74,
         "x": 8,
         "y": 0,
         "z": 1,
         "type": "rock"
      },
      {
         "id": 64,
         "x": 9,
         "y": 0,
         "z": 0,
         "type": "player"
      },
      {
         "id": 29,
         "x": 7,
         "y": 0,
         "z": -3,
         "type": "wall"
      },
      {
         "id": 17,
         "x": 6,
         "y": 0,
         "z": -4,
         "type": "wall"
      },
      {
         "id": 18,
         "x": 7,
         "y": 0,
         "z": -4,
         "type": "wall"
      },
      {
         "id": 14,
         "x": 3,
         "y": 0,
         "z": -4,
         "type": "wall"
      },
      {
         "id": 24,
         "x": 2,
         "y": 0,
         "z": -3,
         "type": "wall"
      },
      {
         "id": 34,
         "x": 1,
         "y": 0,
         "z": -2,
         "type": "wall"
      },
      {
         "id": 23,
         "x": 1,
         "y": 0,
         "z": -3,
         "type": "wall"
      },
      {
         "id": 12,
         "x": 1,
         "y": 0,
         "z": -4,
         "type": "wall"
      },
      {
         "id": 13,
         "x": 2,
         "y": 0,
         "z": -4,
         "type": "wall"
      },
      {
         "id": 78,
         "x": 1,
         "y": 0,
         "z": 2,
         "type": "wall"
      },
      {
         "id": 89,
         "x": 1,
         "y": 0,
         "z": 3,
         "type": "wall"
      },
      {
         "id": 90,
         "x": 2,
         "y": 0,
         "z": 3,
         "type": "wall"
      },
      {
         "id": 102,
         "x": 3,
         "y": 0,
         "z": 4,
         "type": "wall"
      },
      {
         "id": 101,
         "x": 2,
         "y": 0,
         "z": 4,
         "type": "wall"
      },
      {
         "id": 100,
         "x": 1,
         "y": 0,
         "z": 4,
         "type": "wall"
      },
      {
         "id": 48,
         "x": 4,
         "y": 0,
         "z": -1,
         "type": "wall"
      },
      {
         "id": 58,
         "x": 3,
         "y": 0,
         "z": 0,
         "type": "wall"
      },
      {
         "id": 70,
         "x": 4,
         "y": 0,
         "z": 1,
         "type": "wall"
      },
      {
         "id": 59,
         "x": 4,
         "y": 0,
         "z": 0,
         "type": "wall"
      },
      {
         "id": 49,
         "x": 5,
         "y": 0,
         "z": -1,
         "type": "wall"
      },
      {
         "id": 60,
         "x": 5,
         "y": 0,
         "z": 0,
         "type": "wall"
      },
      {
         "id": 71,
         "x": 5,
         "y": 0,
         "z": 1,
         "type": "wall"
      },
      {
         "id": 47,
         "x": 3,
         "y": 0,
         "z": -1,
         "type": "wall"
      },
      {
         "id": 69,
         "x": 3,
         "y": 0,
         "z": 1,
         "type": "wall"
      },
      {
         "id": 80,
         "x": 3,
         "y": 0,
         "z": 2,
         "type": "enemy"
      },
      {
         "id": 36,
         "x": 3,
         "y": 0,
         "z": -2,
         "type": "enemy"
      },
      {
         "id": 83,
         "x": 6,
         "y": 0,
         "z": 2,
         "type": "rock"
      },
      {
         "id": 95,
         "x": 7,
         "y": 0,
         "z": 3,
         "type": "wall"
      },
      {
         "id": 28,
         "x": 6,
         "y": 0,
         "z": -3,
         "type": "enemy"
      },
      {
         "id": 38,
         "x": 5,
         "y": 0,
         "z": -2,
         "type": "rock"
      },
      {
         "id": 105,
         "x": 6,
         "y": 0,
         "z": 4,
         "type": "wall"
      },
      {
         "id": 106,
         "x": 7,
         "y": 0,
         "z": 4,
         "type": "wall"
      },
      {
         "id": 104,
         "x": 5,
         "y": 0,
         "z": 4,
         "type": "wall"
      },
      {
         "id": 103,
         "x": 4,
         "y": 0,
         "z": 4,
         "type": "wall"
      },
      {
         "id": 16,
         "x": 5,
         "y": 0,
         "z": -4,
         "type": "wall"
      },
      {
         "id": 15,
         "x": 4,
         "y": 0,
         "z": -4,
         "type": "wall"
      },
      {
         "id": 56,
         "x": 1,
         "y": 0,
         "z": 0,
         "type": "rock"
      }
   ]
}');
INSERT INTO public.levels VALUES ('{
   "moves": 65,
   "list": [
      {
         "id": 55,
         "x": 0,
         "y": 0,
         "z": 0,
         "type": "treasure"
      },
      {
         "id": 0,
         "x": 0,
         "y": 0,
         "z": -5,
         "type": "wall"
      },
      {
         "id": 11,
         "x": 0,
         "y": 0,
         "z": -4,
         "type": "wall"
      },
      {
         "id": 22,
         "x": 0,
         "y": 0,
         "z": -3,
         "type": "wall"
      },
      {
         "id": 33,
         "x": 0,
         "y": 0,
         "z": -2,
         "type": "wall"
      },
      {
         "id": 44,
         "x": 0,
         "y": 0,
         "z": -1,
         "type": "wall"
      },
      {
         "id": 66,
         "x": 0,
         "y": 0,
         "z": 1,
         "type": "wall"
      },
      {
         "id": 77,
         "x": 0,
         "y": 0,
         "z": 2,
         "type": "wall"
      },
      {
         "id": 88,
         "x": 0,
         "y": 0,
         "z": 3,
         "type": "wall"
      },
      {
         "id": 99,
         "x": 0,
         "y": 0,
         "z": 4,
         "type": "wall"
      },
      {
         "id": 110,
         "x": 0,
         "y": 0,
         "z": 5,
         "type": "wall"
      },
      {
         "id": 1,
         "x": 1,
         "y": 0,
         "z": -5,
         "type": "wall"
      },
      {
         "id": 2,
         "x": 2,
         "y": 0,
         "z": -5,
         "type": "wall"
      },
      {
         "id": 3,
         "x": 3,
         "y": 0,
         "z": -5,
         "type": "wall"
      },
      {
         "id": 4,
         "x": 4,
         "y": 0,
         "z": -5,
         "type": "wall"
      },
      {
         "id": 5,
         "x": 5,
         "y": 0,
         "z": -5,
         "type": "wall"
      },
      {
         "id": 6,
         "x": 6,
         "y": 0,
         "z": -5,
         "type": "wall"
      },
      {
         "id": 7,
         "x": 7,
         "y": 0,
         "z": -5,
         "type": "wall"
      },
      {
         "id": 8,
         "x": 8,
         "y": 0,
         "z": -5,
         "type": "wall"
      },
      {
         "id": 9,
         "x": 9,
         "y": 0,
         "z": -5,
         "type": "wall"
      },
      {
         "id": 10,
         "x": 10,
         "y": 0,
         "z": -5,
         "type": "wall"
      },
      {
         "id": 21,
         "x": 10,
         "y": 0,
         "z": -4,
         "type": "wall"
      },
      {
         "id": 32,
         "x": 10,
         "y": 0,
         "z": -3,
         "type": "wall"
      },
      {
         "id": 43,
         "x": 10,
         "y": 0,
         "z": -2,
         "type": "wall"
      },
      {
         "id": 65,
         "x": 10,
         "y": 0,
         "z": 0,
         "type": "wall"
      },
      {
         "id": 54,
         "x": 10,
         "y": 0,
         "z": -1,
         "type": "wall"
      },
      {
         "id": 76,
         "x": 10,
         "y": 0,
         "z": 1,
         "type": "wall"
      },
      {
         "id": 87,
         "x": 10,
         "y": 0,
         "z": 2,
         "type": "wall"
      },
      {
         "id": 98,
         "x": 10,
         "y": 0,
         "z": 3,
         "type": "wall"
      },
      {
         "id": 109,
         "x": 10,
         "y": 0,
         "z": 4,
         "type": "wall"
      },
      {
         "id": 120,
         "x": 10,
         "y": 0,
         "z": 5,
         "type": "wall"
      },
      {
         "id": 119,
         "x": 9,
         "y": 0,
         "z": 5,
         "type": "wall"
      },
      {
         "id": 118,
         "x": 8,
         "y": 0,
         "z": 5,
         "type": "wall"
      },
      {
         "id": 117,
         "x": 7,
         "y": 0,
         "z": 5,
         "type": "wall"
      },
      {
         "id": 116,
         "x": 6,
         "y": 0,
         "z": 5,
         "type": "wall"
      },
      {
         "id": 115,
         "x": 5,
         "y": 0,
         "z": 5,
         "type": "wall"
      },
      {
         "id": 114,
         "x": 4,
         "y": 0,
         "z": 5,
         "type": "wall"
      },
      {
         "id": 113,
         "x": 3,
         "y": 0,
         "z": 5,
         "type": "wall"
      },
      {
         "id": 112,
         "x": 2,
         "y": 0,
         "z": 5,
         "type": "wall"
      },
      {
         "id": 111,
         "x": 1,
         "y": 0,
         "z": 5,
         "type": "wall"
      },
      {
         "id": 100,
         "x": 1,
         "y": 0,
         "z": 4,
         "type": "player"
      },
      {
         "id": 45,
         "x": 1,
         "y": 0,
         "z": -1,
         "type": "wall"
      },
      {
         "id": 46,
         "x": 2,
         "y": 0,
         "z": -1,
         "type": "wall"
      },
      {
         "id": 57,
         "x": 2,
         "y": 0,
         "z": 0,
         "type": "wall"
      },
      {
         "id": 68,
         "x": 2,
         "y": 0,
         "z": 1,
         "type": "wall"
      },
      {
         "id": 89,
         "x": 1,
         "y": 0,
         "z": 3,
         "type": "wall"
      },
      {
         "id": 90,
         "x": 2,
         "y": 0,
         "z": 3,
         "type": "wall"
      },
      {
         "id": 91,
         "x": 3,
         "y": 0,
         "z": 3,
         "type": "wall"
      },
      {
         "id": 81,
         "x": 4,
         "y": 0,
         "z": 2,
         "type": "wall"
      },
      {
         "id": 102,
         "x": 3,
         "y": 0,
         "z": 4,
         "type": "rock"
      },
      {
         "id": 82,
         "x": 5,
         "y": 0,
         "z": 2,
         "type": "wall"
      },
      {
         "id": 105,
         "x": 6,
         "y": 0,
         "z": 4,
         "type": "wall"
      },
      {
         "id": 93,
         "x": 5,
         "y": 0,
         "z": 3,
         "type": "enemy"
      },
      {
         "id": 83,
         "x": 6,
         "y": 0,
         "z": 2,
         "type": "wall"
      },
      {
         "id": 96,
         "x": 8,
         "y": 0,
         "z": 3,
         "type": "wall"
      },
      {
         "id": 85,
         "x": 8,
         "y": 0,
         "z": 2,
         "type": "wall"
      },
      {
         "id": 84,
         "x": 7,
         "y": 0,
         "z": 2,
         "type": "wall"
      },
      {
         "id": 107,
         "x": 8,
         "y": 0,
         "z": 4,
         "type": "enemy"
      },
      {
         "id": 86,
         "x": 9,
         "y": 0,
         "z": 2,
         "type": "rock"
      },
      {
         "id": 73,
         "x": 7,
         "y": 0,
         "z": 1,
         "type": "wall"
      },
      {
         "id": 61,
         "x": 6,
         "y": 0,
         "z": 0,
         "type": "wall"
      },
      {
         "id": 63,
         "x": 8,
         "y": 0,
         "z": 0,
         "type": "rock"
      },
      {
         "id": 53,
         "x": 9,
         "y": 0,
         "z": -1,
         "type": "rock"
      },
      {
         "id": 51,
         "x": 7,
         "y": 0,
         "z": -1,
         "type": "rock"
      },
      {
         "id": 50,
         "x": 6,
         "y": 0,
         "z": -1,
         "type": "wall"
      },
      {
         "id": 39,
         "x": 6,
         "y": 0,
         "z": -2,
         "type": "wall"
      },
      {
         "id": 41,
         "x": 8,
         "y": 0,
         "z": -2,
         "type": "rock"
      },
      {
         "id": 31,
         "x": 9,
         "y": 0,
         "z": -3,
         "type": "rock"
      },
      {
         "id": 19,
         "x": 8,
         "y": 0,
         "z": -4,
         "type": "rock"
      },
      {
         "id": 17,
         "x": 6,
         "y": 0,
         "z": -4,
         "type": "wall"
      },
      {
         "id": 28,
         "x": 6,
         "y": 0,
         "z": -3,
         "type": "enemy"
      },
      {
         "id": 38,
         "x": 5,
         "y": 0,
         "z": -2,
         "type": "wall"
      },
      {
         "id": 26,
         "x": 4,
         "y": 0,
         "z": -3,
         "type": "wall"
      },
      {
         "id": 25,
         "x": 3,
         "y": 0,
         "z": -3,
         "type": "wall"
      },
      {
         "id": 58,
         "x": 3,
         "y": 0,
         "z": 0,
         "type": "wall"
      },
      {
         "id": 14,
         "x": 3,
         "y": 0,
         "z": -4,
         "type": "enemy"
      },
      {
         "id": 23,
         "x": 1,
         "y": 0,
         "z": -3,
         "type": "enemy"
      },
      {
         "id": 35,
         "x": 2,
         "y": 0,
         "z": -2,
         "type": "enemy"
      },
      {
         "id": 48,
         "x": 4,
         "y": 0,
         "z": -1,
         "type": "rock"
      },
      {
         "id": 60,
         "x": 5,
         "y": 0,
         "z": 0,
         "type": "rock"
      },
      {
         "id": 69,
         "x": 3,
         "y": 0,
         "z": 1,
         "type": "enemy"
      },
      {
         "id": 79,
         "x": 2,
         "y": 0,
         "z": 2,
         "type": "enemy"
      }
   ]
}');
INSERT INTO public.levels VALUES ('{  
   "moves": 33,
   "list": [
      {
         "id": 55,
         "x": 0,
         "y": 0,
         "z": 0,
         "type": "treasure"
      },
      {
         "id": 44,
         "x": 0,
         "y": 0,
         "z": -1,
         "type": "wall"
      },
      {
         "id": 33,
         "x": 0,
         "y": 0,
         "z": -2,
         "type": "wall"
      },
      {
         "id": 22,
         "x": 0,
         "y": 0,
         "z": -3,
         "type": "wall"
      },
      {
         "id": 11,
         "x": 0,
         "y": 0,
         "z": -4,
         "type": "wall"
      },
      {
         "id": 0,
         "x": 0,
         "y": 0,
         "z": -5,
         "type": "wall"
      },
      {
         "id": 1,
         "x": 1,
         "y": 0,
         "z": -5,
         "type": "wall"
      },
      {
         "id": 2,
         "x": 2,
         "y": 0,
         "z": -5,
         "type": "wall"
      },
      {
         "id": 3,
         "x": 3,
         "y": 0,
         "z": -5,
         "type": "wall"
      },
      {
         "id": 4,
         "x": 4,
         "y": 0,
         "z": -5,
         "type": "wall"
      },
      {
         "id": 5,
         "x": 5,
         "y": 0,
         "z": -5,
         "type": "wall"
      },
      {
         "id": 6,
         "x": 6,
         "y": 0,
         "z": -5,
         "type": "wall"
      },
      {
         "id": 8,
         "x": 8,
         "y": 0,
         "z": -5,
         "type": "wall"
      },
      {
         "id": 7,
         "x": 7,
         "y": 0,
         "z": -5,
         "type": "wall"
      },
      {
         "id": 9,
         "x": 9,
         "y": 0,
         "z": -5,
         "type": "wall"
      },
      {
         "id": 10,
         "x": 10,
         "y": 0,
         "z": -5,
         "type": "wall"
      },
      {
         "id": 21,
         "x": 10,
         "y": 0,
         "z": -4,
         "type": "wall"
      },
      {
         "id": 32,
         "x": 10,
         "y": 0,
         "z": -3,
         "type": "wall"
      },
      {
         "id": 43,
         "x": 10,
         "y": 0,
         "z": -2,
         "type": "wall"
      },
      {
         "id": 54,
         "x": 10,
         "y": 0,
         "z": -1,
         "type": "wall"
      },
      {
         "id": 65,
         "x": 10,
         "y": 0,
         "z": 0,
         "type": "wall"
      },
      {
         "id": 76,
         "x": 10,
         "y": 0,
         "z": 1,
         "type": "wall"
      },
      {
         "id": 87,
         "x": 10,
         "y": 0,
         "z": 2,
         "type": "wall"
      },
      {
         "id": 98,
         "x": 10,
         "y": 0,
         "z": 3,
         "type": "wall"
      },
      {
         "id": 109,
         "x": 10,
         "y": 0,
         "z": 4,
         "type": "wall"
      },
      {
         "id": 120,
         "x": 10,
         "y": 0,
         "z": 5,
         "type": "wall"
      },
      {
         "id": 119,
         "x": 9,
         "y": 0,
         "z": 5,
         "type": "wall"
      },
      {
         "id": 118,
         "x": 8,
         "y": 0,
         "z": 5,
         "type": "wall"
      },
      {
         "id": 117,
         "x": 7,
         "y": 0,
         "z": 5,
         "type": "wall"
      },
      {
         "id": 116,
         "x": 6,
         "y": 0,
         "z": 5,
         "type": "wall"
      },
      {
         "id": 115,
         "x": 5,
         "y": 0,
         "z": 5,
         "type": "wall"
      },
      {
         "id": 114,
         "x": 4,
         "y": 0,
         "z": 5,
         "type": "wall"
      },
      {
         "id": 113,
         "x": 3,
         "y": 0,
         "z": 5,
         "type": "wall"
      },
      {
         "id": 112,
         "x": 2,
         "y": 0,
         "z": 5,
         "type": "wall"
      },
      {
         "id": 110,
         "x": 0,
         "y": 0,
         "z": 5,
         "type": "wall"
      },
      {
         "id": 111,
         "x": 1,
         "y": 0,
         "z": 5,
         "type": "wall"
      },
      {
         "id": 99,
         "x": 0,
         "y": 0,
         "z": 4,
         "type": "wall"
      },
      {
         "id": 88,
         "x": 0,
         "y": 0,
         "z": 3,
         "type": "wall"
      },
      {
         "id": 77,
         "x": 0,
         "y": 0,
         "z": 2,
         "type": "wall"
      },
      {
         "id": 66,
         "x": 0,
         "y": 0,
         "z": 1,
         "type": "wall"
      },
      {
         "id": 20,
         "x": 9,
         "y": 0,
         "z": -4,
         "type": "player"
      },
      {
         "id": 29,
         "x": 7,
         "y": 0,
         "z": -3,
         "type": "enemy"
      },
      {
         "id": 31,
         "x": 9,
         "y": 0,
         "z": -3,
         "type": "wall"
      },
      {
         "id": 49,
         "x": 5,
         "y": 0,
         "z": -1,
         "type": "wall"
      },
      {
         "id": 37,
         "x": 4,
         "y": 0,
         "z": -2,
         "type": "wall"
      },
      {
         "id": 25,
         "x": 3,
         "y": 0,
         "z": -3,
         "type": "wall"
      },
      {
         "id": 13,
         "x": 2,
         "y": 0,
         "z": -4,
         "type": "wall"
      },
      {
         "id": 12,
         "x": 1,
         "y": 0,
         "z": -4,
         "type": "wall"
      },
      {
         "id": 23,
         "x": 1,
         "y": 0,
         "z": -3,
         "type": "wall"
      },
      {
         "id": 34,
         "x": 1,
         "y": 0,
         "z": -2,
         "type": "wall"
      },
      {
         "id": 45,
         "x": 1,
         "y": 0,
         "z": -1,
         "type": "wall"
      },
      {
         "id": 46,
         "x": 2,
         "y": 0,
         "z": -1,
         "type": "wall"
      },
      {
         "id": 47,
         "x": 3,
         "y": 0,
         "z": -1,
         "type": "wall"
      },
      {
         "id": 48,
         "x": 4,
         "y": 0,
         "z": -1,
         "type": "wall"
      },
      {
         "id": 60,
         "x": 5,
         "y": 0,
         "z": 0,
         "type": "wall"
      },
      {
         "id": 36,
         "x": 3,
         "y": 0,
         "z": -2,
         "type": "wall"
      },
      {
         "id": 35,
         "x": 2,
         "y": 0,
         "z": -2,
         "type": "wall"
      },
      {
         "id": 24,
         "x": 2,
         "y": 0,
         "z": -3,
         "type": "wall"
      },
      {
         "id": 81,
         "x": 4,
         "y": 0,
         "z": 2,
         "type": "wall"
      },
      {
         "id": 92,
         "x": 4,
         "y": 0,
         "z": 3,
         "type": "wall"
      },
      {
         "id": 69,
         "x": 3,
         "y": 0,
         "z": 1,
         "type": "wall"
      },
      {
         "id": 70,
         "x": 4,
         "y": 0,
         "z": 1,
         "type": "enemy"
      },
      {
         "id": 59,
         "x": 4,
         "y": 0,
         "z": 0,
         "type": "enemy"
      },
      {
         "id": 58,
         "x": 3,
         "y": 0,
         "z": 0,
         "type": "enemy"
      },
      {
         "id": 79,
         "x": 2,
         "y": 0,
         "z": 2,
         "type": "rock"
      },
      {
         "id": 78,
         "x": 1,
         "y": 0,
         "z": 2,
         "type": "rock"
      },
      {
         "id": 104,
         "x": 5,
         "y": 0,
         "z": 4,
         "type": "rock"
      },
      {
         "id": 28,
         "x": 6,
         "y": 0,
         "z": -3,
         "type": "wall"
      },
      {
         "id": 30,
         "x": 8,
         "y": 0,
         "z": -3,
         "type": "wall"
      },
      {
         "id": 64,
         "x": 9,
         "y": 0,
         "z": 0,
         "type": "wall"
      },
      {
         "id": 63,
         "x": 8,
         "y": 0,
         "z": 0,
         "type": "wall"
      },
      {
         "id": 74,
         "x": 8,
         "y": 0,
         "z": 1,
         "type": "wall"
      },
      {
         "id": 85,
         "x": 8,
         "y": 0,
         "z": 2,
         "type": "wall"
      },
      {
         "id": 96,
         "x": 8,
         "y": 0,
         "z": 3,
         "type": "wall"
      },
      {
         "id": 107,
         "x": 8,
         "y": 0,
         "z": 4,
         "type": "wall"
      },
      {
         "id": 108,
         "x": 9,
         "y": 0,
         "z": 4,
         "type": "wall"
      },
      {
         "id": 97,
         "x": 9,
         "y": 0,
         "z": 3,
         "type": "wall"
      },
      {
         "id": 86,
         "x": 9,
         "y": 0,
         "z": 2,
         "type": "wall"
      },
      {
         "id": 75,
         "x": 9,
         "y": 0,
         "z": 1,
         "type": "wall"
      },
      {
         "id": 38,
         "x": 5,
         "y": 0,
         "z": -2,
         "type": "enemy"
      },
      {
         "id": 26,
         "x": 4,
         "y": 0,
         "z": -3,
         "type": "enemy"
      },
      {
         "id": 80,
         "x": 3,
         "y": 0,
         "z": 2,
         "type": "wall"
      },
      {
         "id": 72,
         "x": 6,
         "y": 0,
         "z": 1,
         "type": "wall"
      },
      {
         "id": 83,
         "x": 6,
         "y": 0,
         "z": 2,
         "type": "wall"
      },
      {
         "id": 94,
         "x": 6,
         "y": 0,
         "z": 3,
         "type": "wall"
      },
      {
         "id": 62,
         "x": 7,
         "y": 0,
         "z": 0,
         "type": "enemy"
      },
      {
         "id": 14,
         "x": 3,
         "y": 0,
         "z": -4,
         "type": "wall"
      }
   ]
}');


--
-- PostgreSQL database dump complete
--
