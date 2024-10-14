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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    moves integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    name character varying(22)
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 17, 766);
INSERT INTO public.games VALUES (2, 17, 867);
INSERT INTO public.games VALUES (3, 18, 155);
INSERT INTO public.games VALUES (4, 18, 113);
INSERT INTO public.games VALUES (5, 17, 882);
INSERT INTO public.games VALUES (6, 17, 317);
INSERT INTO public.games VALUES (7, 17, 914);
INSERT INTO public.games VALUES (8, 19, 788);
INSERT INTO public.games VALUES (9, 19, 812);
INSERT INTO public.games VALUES (10, 20, 699);
INSERT INTO public.games VALUES (11, 20, 585);
INSERT INTO public.games VALUES (12, 19, 40);
INSERT INTO public.games VALUES (13, 19, 145);
INSERT INTO public.games VALUES (14, 19, 894);
INSERT INTO public.games VALUES (15, 21, 521);
INSERT INTO public.games VALUES (16, 21, 330);
INSERT INTO public.games VALUES (17, 22, 903);
INSERT INTO public.games VALUES (18, 22, 771);
INSERT INTO public.games VALUES (19, 21, 454);
INSERT INTO public.games VALUES (20, 21, 128);
INSERT INTO public.games VALUES (21, 21, 559);
INSERT INTO public.games VALUES (22, 23, 54);
INSERT INTO public.games VALUES (23, 23, 95);
INSERT INTO public.games VALUES (24, 24, 669);
INSERT INTO public.games VALUES (25, 24, 704);
INSERT INTO public.games VALUES (26, 23, 222);
INSERT INTO public.games VALUES (27, 23, 49);
INSERT INTO public.games VALUES (28, 23, 426);
INSERT INTO public.games VALUES (29, 25, 402);
INSERT INTO public.games VALUES (30, 25, 408);
INSERT INTO public.games VALUES (31, 26, 106);
INSERT INTO public.games VALUES (32, 26, 678);
INSERT INTO public.games VALUES (33, 25, 976);
INSERT INTO public.games VALUES (34, 25, 695);
INSERT INTO public.games VALUES (35, 25, 645);
INSERT INTO public.games VALUES (36, 27, 577);
INSERT INTO public.games VALUES (37, 27, 668);
INSERT INTO public.games VALUES (38, 28, 761);
INSERT INTO public.games VALUES (39, 28, 959);
INSERT INTO public.games VALUES (40, 27, 298);
INSERT INTO public.games VALUES (41, 27, 329);
INSERT INTO public.games VALUES (42, 27, 806);
INSERT INTO public.games VALUES (43, 29, 186);
INSERT INTO public.games VALUES (44, 29, 676);
INSERT INTO public.games VALUES (45, 30, 59);
INSERT INTO public.games VALUES (46, 30, 828);
INSERT INTO public.games VALUES (47, 29, 513);
INSERT INTO public.games VALUES (48, 29, 397);
INSERT INTO public.games VALUES (49, 29, 635);
INSERT INTO public.games VALUES (50, 31, 354);
INSERT INTO public.games VALUES (51, 31, 576);
INSERT INTO public.games VALUES (52, 32, 918);
INSERT INTO public.games VALUES (53, 32, 521);
INSERT INTO public.games VALUES (54, 31, 923);
INSERT INTO public.games VALUES (55, 31, 64);
INSERT INTO public.games VALUES (56, 31, 512);
INSERT INTO public.games VALUES (57, 33, 512);
INSERT INTO public.games VALUES (58, 33, 833);
INSERT INTO public.games VALUES (59, 34, 589);
INSERT INTO public.games VALUES (60, 34, 24);
INSERT INTO public.games VALUES (61, 33, 133);
INSERT INTO public.games VALUES (62, 33, 677);
INSERT INTO public.games VALUES (63, 33, 30);
INSERT INTO public.games VALUES (64, 35, 612);
INSERT INTO public.games VALUES (65, 35, 58);
INSERT INTO public.games VALUES (66, 36, 307);
INSERT INTO public.games VALUES (67, 36, 982);
INSERT INTO public.games VALUES (68, 35, 118);
INSERT INTO public.games VALUES (69, 35, 329);
INSERT INTO public.games VALUES (70, 35, 852);
INSERT INTO public.games VALUES (71, 37, 498);
INSERT INTO public.games VALUES (72, 37, 670);
INSERT INTO public.games VALUES (73, 38, 755);
INSERT INTO public.games VALUES (74, 38, 323);
INSERT INTO public.games VALUES (75, 37, 332);
INSERT INTO public.games VALUES (76, 37, 401);
INSERT INTO public.games VALUES (77, 37, 138);
INSERT INTO public.games VALUES (78, 39, 815);
INSERT INTO public.games VALUES (79, 39, 528);
INSERT INTO public.games VALUES (80, 40, 545);
INSERT INTO public.games VALUES (81, 40, 261);
INSERT INTO public.games VALUES (82, 39, 384);
INSERT INTO public.games VALUES (83, 39, 616);
INSERT INTO public.games VALUES (84, 39, 771);
INSERT INTO public.games VALUES (85, 41, 325);
INSERT INTO public.games VALUES (86, 41, 889);
INSERT INTO public.games VALUES (87, 42, 385);
INSERT INTO public.games VALUES (88, 42, 545);
INSERT INTO public.games VALUES (89, 41, 176);
INSERT INTO public.games VALUES (90, 41, 732);
INSERT INTO public.games VALUES (91, 41, 770);
INSERT INTO public.games VALUES (92, 43, 121);
INSERT INTO public.games VALUES (93, 43, 81);
INSERT INTO public.games VALUES (94, 44, 186);
INSERT INTO public.games VALUES (95, 44, 375);
INSERT INTO public.games VALUES (96, 43, 970);
INSERT INTO public.games VALUES (97, 43, 728);
INSERT INTO public.games VALUES (98, 43, 376);
INSERT INTO public.games VALUES (99, 45, 533);
INSERT INTO public.games VALUES (100, 45, 133);
INSERT INTO public.games VALUES (101, 46, 144);
INSERT INTO public.games VALUES (102, 46, 439);
INSERT INTO public.games VALUES (103, 45, 227);
INSERT INTO public.games VALUES (104, 45, 941);
INSERT INTO public.games VALUES (105, 45, 473);
INSERT INTO public.games VALUES (106, 47, 681);
INSERT INTO public.games VALUES (107, 47, 728);
INSERT INTO public.games VALUES (108, 48, 74);
INSERT INTO public.games VALUES (109, 48, 463);
INSERT INTO public.games VALUES (110, 47, 699);
INSERT INTO public.games VALUES (111, 47, 255);
INSERT INTO public.games VALUES (112, 47, 633);
INSERT INTO public.games VALUES (113, 49, 601);
INSERT INTO public.games VALUES (114, 49, 642);
INSERT INTO public.games VALUES (115, 50, 753);
INSERT INTO public.games VALUES (116, 50, 41);
INSERT INTO public.games VALUES (117, 49, 390);
INSERT INTO public.games VALUES (118, 49, 38);
INSERT INTO public.games VALUES (119, 49, 693);
INSERT INTO public.games VALUES (120, 51, 301);
INSERT INTO public.games VALUES (121, 51, 630);
INSERT INTO public.games VALUES (122, 52, 67);
INSERT INTO public.games VALUES (123, 52, 119);
INSERT INTO public.games VALUES (124, 51, 244);
INSERT INTO public.games VALUES (125, 51, 555);
INSERT INTO public.games VALUES (126, 51, 486);
INSERT INTO public.games VALUES (127, 53, 904);
INSERT INTO public.games VALUES (128, 53, 543);
INSERT INTO public.games VALUES (129, 54, 860);
INSERT INTO public.games VALUES (130, 54, 448);
INSERT INTO public.games VALUES (131, 53, 394);
INSERT INTO public.games VALUES (132, 53, 467);
INSERT INTO public.games VALUES (133, 53, 415);
INSERT INTO public.games VALUES (134, 55, 982);
INSERT INTO public.games VALUES (135, 55, 648);
INSERT INTO public.games VALUES (136, 56, 503);
INSERT INTO public.games VALUES (137, 56, 819);
INSERT INTO public.games VALUES (138, 55, 692);
INSERT INTO public.games VALUES (139, 55, 633);
INSERT INTO public.games VALUES (140, 55, 459);
INSERT INTO public.games VALUES (141, 57, 637);
INSERT INTO public.games VALUES (142, 57, 747);
INSERT INTO public.games VALUES (143, 58, 806);
INSERT INTO public.games VALUES (144, 58, 175);
INSERT INTO public.games VALUES (145, 57, 180);
INSERT INTO public.games VALUES (146, 57, 509);
INSERT INTO public.games VALUES (147, 57, 973);
INSERT INTO public.games VALUES (148, 59, 794);
INSERT INTO public.games VALUES (149, 59, 269);
INSERT INTO public.games VALUES (150, 60, 283);
INSERT INTO public.games VALUES (151, 60, 350);
INSERT INTO public.games VALUES (152, 59, 245);
INSERT INTO public.games VALUES (153, 59, 228);
INSERT INTO public.games VALUES (154, 59, 281);
INSERT INTO public.games VALUES (155, 61, 551);
INSERT INTO public.games VALUES (156, 61, 755);
INSERT INTO public.games VALUES (157, 62, 883);
INSERT INTO public.games VALUES (158, 62, 786);
INSERT INTO public.games VALUES (159, 61, 267);
INSERT INTO public.games VALUES (160, 61, 116);
INSERT INTO public.games VALUES (161, 61, 197);
INSERT INTO public.games VALUES (162, 63, 285);
INSERT INTO public.games VALUES (163, 63, 552);
INSERT INTO public.games VALUES (164, 64, 380);
INSERT INTO public.games VALUES (165, 64, 6);
INSERT INTO public.games VALUES (166, 63, 459);
INSERT INTO public.games VALUES (167, 63, 461);
INSERT INTO public.games VALUES (168, 63, 835);
INSERT INTO public.games VALUES (169, 65, 309);
INSERT INTO public.games VALUES (170, 65, 322);
INSERT INTO public.games VALUES (171, 66, 149);
INSERT INTO public.games VALUES (172, 66, 148);
INSERT INTO public.games VALUES (173, 65, 783);
INSERT INTO public.games VALUES (174, 65, 954);
INSERT INTO public.games VALUES (175, 65, 960);
INSERT INTO public.games VALUES (176, 67, 575);
INSERT INTO public.games VALUES (177, 67, 81);
INSERT INTO public.games VALUES (178, 68, 697);
INSERT INTO public.games VALUES (179, 68, 430);
INSERT INTO public.games VALUES (180, 67, 875);
INSERT INTO public.games VALUES (181, 67, 331);
INSERT INTO public.games VALUES (182, 67, 691);
INSERT INTO public.games VALUES (183, 69, 158);
INSERT INTO public.games VALUES (184, 69, 516);
INSERT INTO public.games VALUES (185, 70, 776);
INSERT INTO public.games VALUES (186, 70, 989);
INSERT INTO public.games VALUES (187, 69, 239);
INSERT INTO public.games VALUES (188, 69, 623);
INSERT INTO public.games VALUES (189, 69, 355);
INSERT INTO public.games VALUES (190, 71, 785);
INSERT INTO public.games VALUES (191, 71, 212);
INSERT INTO public.games VALUES (192, 72, 289);
INSERT INTO public.games VALUES (193, 72, 719);
INSERT INTO public.games VALUES (194, 71, 811);
INSERT INTO public.games VALUES (195, 71, 11);
INSERT INTO public.games VALUES (196, 71, 482);
INSERT INTO public.games VALUES (197, 73, 212);
INSERT INTO public.games VALUES (198, 73, 759);
INSERT INTO public.games VALUES (199, 74, 864);
INSERT INTO public.games VALUES (200, 74, 227);
INSERT INTO public.games VALUES (201, 73, 123);
INSERT INTO public.games VALUES (202, 73, 633);
INSERT INTO public.games VALUES (203, 73, 918);
INSERT INTO public.games VALUES (204, 75, 178);
INSERT INTO public.games VALUES (205, 75, 191);
INSERT INTO public.games VALUES (206, 76, 986);
INSERT INTO public.games VALUES (207, 76, 39);
INSERT INTO public.games VALUES (208, 75, 245);
INSERT INTO public.games VALUES (209, 75, 40);
INSERT INTO public.games VALUES (210, 75, 31);
INSERT INTO public.games VALUES (211, 77, 394);
INSERT INTO public.games VALUES (212, 77, 45);
INSERT INTO public.games VALUES (213, 78, 156);
INSERT INTO public.games VALUES (214, 78, 946);
INSERT INTO public.games VALUES (215, 77, 981);
INSERT INTO public.games VALUES (216, 77, 352);
INSERT INTO public.games VALUES (217, 77, 156);
INSERT INTO public.games VALUES (218, 79, 943);
INSERT INTO public.games VALUES (219, 79, 549);
INSERT INTO public.games VALUES (220, 80, 186);
INSERT INTO public.games VALUES (221, 80, 720);
INSERT INTO public.games VALUES (222, 79, 755);
INSERT INTO public.games VALUES (223, 79, 543);
INSERT INTO public.games VALUES (224, 79, 597);
INSERT INTO public.games VALUES (225, 81, 950);
INSERT INTO public.games VALUES (226, 81, 498);
INSERT INTO public.games VALUES (227, 82, 47);
INSERT INTO public.games VALUES (228, 82, 448);
INSERT INTO public.games VALUES (229, 81, 898);
INSERT INTO public.games VALUES (230, 81, 530);
INSERT INTO public.games VALUES (231, 81, 216);
INSERT INTO public.games VALUES (232, 83, 689);
INSERT INTO public.games VALUES (233, 83, 550);
INSERT INTO public.games VALUES (234, 84, 489);
INSERT INTO public.games VALUES (235, 84, 233);
INSERT INTO public.games VALUES (236, 83, 143);
INSERT INTO public.games VALUES (237, 83, 36);
INSERT INTO public.games VALUES (238, 83, 611);
INSERT INTO public.games VALUES (239, 85, 826);
INSERT INTO public.games VALUES (240, 85, 694);
INSERT INTO public.games VALUES (241, 86, 773);
INSERT INTO public.games VALUES (242, 86, 157);
INSERT INTO public.games VALUES (243, 85, 58);
INSERT INTO public.games VALUES (244, 85, 876);
INSERT INTO public.games VALUES (245, 85, 742);
INSERT INTO public.games VALUES (246, 87, 120);
INSERT INTO public.games VALUES (247, 87, 676);
INSERT INTO public.games VALUES (248, 88, 369);
INSERT INTO public.games VALUES (249, 88, 704);
INSERT INTO public.games VALUES (250, 87, 119);
INSERT INTO public.games VALUES (251, 87, 598);
INSERT INTO public.games VALUES (252, 87, 74);
INSERT INTO public.games VALUES (253, 89, 131);
INSERT INTO public.games VALUES (254, 89, 868);
INSERT INTO public.games VALUES (255, 90, 155);
INSERT INTO public.games VALUES (256, 90, 901);
INSERT INTO public.games VALUES (257, 89, 920);
INSERT INTO public.games VALUES (258, 89, 105);
INSERT INTO public.games VALUES (259, 89, 109);
INSERT INTO public.games VALUES (260, 91, 381);
INSERT INTO public.games VALUES (261, 91, 93);
INSERT INTO public.games VALUES (262, 92, 960);
INSERT INTO public.games VALUES (263, 92, 430);
INSERT INTO public.games VALUES (264, 91, 149);
INSERT INTO public.games VALUES (265, 91, 605);
INSERT INTO public.games VALUES (266, 91, 689);
INSERT INTO public.games VALUES (267, 93, 512);
INSERT INTO public.games VALUES (268, 93, 176);
INSERT INTO public.games VALUES (269, 94, 97);
INSERT INTO public.games VALUES (270, 94, 6);
INSERT INTO public.games VALUES (271, 93, 431);
INSERT INTO public.games VALUES (272, 93, 708);
INSERT INTO public.games VALUES (273, 93, 929);
INSERT INTO public.games VALUES (274, 95, 917);
INSERT INTO public.games VALUES (275, 95, 732);
INSERT INTO public.games VALUES (276, 96, 81);
INSERT INTO public.games VALUES (277, 96, 187);
INSERT INTO public.games VALUES (278, 95, 935);
INSERT INTO public.games VALUES (279, 95, 840);
INSERT INTO public.games VALUES (280, 95, 987);
INSERT INTO public.games VALUES (281, 97, 313);
INSERT INTO public.games VALUES (282, 97, 906);
INSERT INTO public.games VALUES (283, 98, 582);
INSERT INTO public.games VALUES (284, 98, 822);
INSERT INTO public.games VALUES (285, 97, 725);
INSERT INTO public.games VALUES (286, 97, 336);
INSERT INTO public.games VALUES (287, 97, 651);
INSERT INTO public.games VALUES (288, 99, 987);
INSERT INTO public.games VALUES (289, 99, 693);
INSERT INTO public.games VALUES (290, 100, 287);
INSERT INTO public.games VALUES (291, 100, 734);
INSERT INTO public.games VALUES (292, 99, 402);
INSERT INTO public.games VALUES (293, 99, 167);
INSERT INTO public.games VALUES (294, 99, 69);
INSERT INTO public.games VALUES (295, 101, 880);
INSERT INTO public.games VALUES (296, 101, 751);
INSERT INTO public.games VALUES (297, 102, 194);
INSERT INTO public.games VALUES (298, 102, 980);
INSERT INTO public.games VALUES (299, 101, 380);
INSERT INTO public.games VALUES (300, 101, 397);
INSERT INTO public.games VALUES (301, 101, 760);
INSERT INTO public.games VALUES (302, 103, 751);
INSERT INTO public.games VALUES (303, 103, 682);
INSERT INTO public.games VALUES (304, 104, 183);
INSERT INTO public.games VALUES (305, 104, 496);
INSERT INTO public.games VALUES (306, 103, 219);
INSERT INTO public.games VALUES (307, 103, 729);
INSERT INTO public.games VALUES (308, 103, 243);
INSERT INTO public.games VALUES (309, 105, 865);
INSERT INTO public.games VALUES (310, 105, 579);
INSERT INTO public.games VALUES (311, 106, 462);
INSERT INTO public.games VALUES (312, 106, 109);
INSERT INTO public.games VALUES (313, 105, 188);
INSERT INTO public.games VALUES (314, 105, 632);
INSERT INTO public.games VALUES (315, 105, 9);
INSERT INTO public.games VALUES (316, 107, 720);
INSERT INTO public.games VALUES (317, 107, 914);
INSERT INTO public.games VALUES (318, 108, 59);
INSERT INTO public.games VALUES (319, 108, 228);
INSERT INTO public.games VALUES (320, 107, 933);
INSERT INTO public.games VALUES (321, 107, 425);
INSERT INTO public.games VALUES (322, 107, 910);
INSERT INTO public.games VALUES (323, 109, 292);
INSERT INTO public.games VALUES (324, 109, 65);
INSERT INTO public.games VALUES (325, 110, 66);
INSERT INTO public.games VALUES (326, 110, 582);
INSERT INTO public.games VALUES (327, 109, 96);
INSERT INTO public.games VALUES (328, 109, 656);
INSERT INTO public.games VALUES (329, 109, 591);
INSERT INTO public.games VALUES (330, 111, 117);
INSERT INTO public.games VALUES (331, 111, 937);
INSERT INTO public.games VALUES (332, 112, 488);
INSERT INTO public.games VALUES (333, 112, 986);
INSERT INTO public.games VALUES (334, 111, 953);
INSERT INTO public.games VALUES (335, 111, 414);
INSERT INTO public.games VALUES (336, 111, 310);
INSERT INTO public.games VALUES (337, 113, 299);
INSERT INTO public.games VALUES (338, 113, 122);
INSERT INTO public.games VALUES (339, 114, 930);
INSERT INTO public.games VALUES (340, 114, 144);
INSERT INTO public.games VALUES (341, 113, 11);
INSERT INTO public.games VALUES (342, 113, 677);
INSERT INTO public.games VALUES (343, 113, 49);
INSERT INTO public.games VALUES (344, 115, 941);
INSERT INTO public.games VALUES (345, 115, 765);
INSERT INTO public.games VALUES (346, 116, 371);
INSERT INTO public.games VALUES (347, 116, 18);
INSERT INTO public.games VALUES (348, 115, 586);
INSERT INTO public.games VALUES (349, 115, 820);
INSERT INTO public.games VALUES (350, 115, 491);
INSERT INTO public.games VALUES (351, 117, 754);
INSERT INTO public.games VALUES (352, 117, 130);
INSERT INTO public.games VALUES (353, 118, 340);
INSERT INTO public.games VALUES (354, 118, 310);
INSERT INTO public.games VALUES (355, 117, 132);
INSERT INTO public.games VALUES (356, 117, 365);
INSERT INTO public.games VALUES (357, 117, 525);
INSERT INTO public.games VALUES (358, 119, 864);
INSERT INTO public.games VALUES (359, 119, 463);
INSERT INTO public.games VALUES (360, 120, 747);
INSERT INTO public.games VALUES (361, 120, 644);
INSERT INTO public.games VALUES (362, 119, 86);
INSERT INTO public.games VALUES (363, 119, 612);
INSERT INTO public.games VALUES (364, 119, 771);
INSERT INTO public.games VALUES (365, 121, 225);
INSERT INTO public.games VALUES (366, 121, 229);
INSERT INTO public.games VALUES (367, 122, 721);
INSERT INTO public.games VALUES (368, 122, 617);
INSERT INTO public.games VALUES (369, 121, 297);
INSERT INTO public.games VALUES (370, 121, 892);
INSERT INTO public.games VALUES (371, 121, 136);
INSERT INTO public.games VALUES (372, 123, 782);
INSERT INTO public.games VALUES (373, 123, 221);
INSERT INTO public.games VALUES (374, 124, 608);
INSERT INTO public.games VALUES (375, 124, 520);
INSERT INTO public.games VALUES (376, 123, 539);
INSERT INTO public.games VALUES (377, 123, 236);
INSERT INTO public.games VALUES (378, 123, 503);
INSERT INTO public.games VALUES (379, 125, 573);
INSERT INTO public.games VALUES (380, 125, 342);
INSERT INTO public.games VALUES (381, 126, 800);
INSERT INTO public.games VALUES (382, 126, 401);
INSERT INTO public.games VALUES (383, 125, 287);
INSERT INTO public.games VALUES (384, 125, 714);
INSERT INTO public.games VALUES (385, 125, 375);
INSERT INTO public.games VALUES (386, 127, 925);
INSERT INTO public.games VALUES (387, 127, 923);
INSERT INTO public.games VALUES (388, 128, 605);
INSERT INTO public.games VALUES (389, 128, 494);
INSERT INTO public.games VALUES (390, 127, 571);
INSERT INTO public.games VALUES (391, 127, 150);
INSERT INTO public.games VALUES (392, 127, 967);
INSERT INTO public.games VALUES (393, 129, 75);
INSERT INTO public.games VALUES (394, 129, 309);
INSERT INTO public.games VALUES (395, 130, 335);
INSERT INTO public.games VALUES (396, 130, 28);
INSERT INTO public.games VALUES (397, 129, 699);
INSERT INTO public.games VALUES (398, 129, 433);
INSERT INTO public.games VALUES (399, 129, 639);
INSERT INTO public.games VALUES (400, 131, 845);
INSERT INTO public.games VALUES (401, 131, 588);
INSERT INTO public.games VALUES (402, 132, 372);
INSERT INTO public.games VALUES (403, 132, 230);
INSERT INTO public.games VALUES (404, 131, 103);
INSERT INTO public.games VALUES (405, 131, 9);
INSERT INTO public.games VALUES (406, 131, 134);
INSERT INTO public.games VALUES (407, 133, 192);
INSERT INTO public.games VALUES (408, 133, 786);
INSERT INTO public.games VALUES (409, 134, 240);
INSERT INTO public.games VALUES (410, 134, 867);
INSERT INTO public.games VALUES (411, 133, 212);
INSERT INTO public.games VALUES (412, 133, 928);
INSERT INTO public.games VALUES (413, 133, 762);
INSERT INTO public.games VALUES (414, 135, 71);
INSERT INTO public.games VALUES (415, 135, 720);
INSERT INTO public.games VALUES (416, 136, 84);
INSERT INTO public.games VALUES (417, 136, 879);
INSERT INTO public.games VALUES (418, 135, 70);
INSERT INTO public.games VALUES (419, 135, 74);
INSERT INTO public.games VALUES (420, 135, 200);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1728936161638');
INSERT INTO public.users VALUES (2, 'user_1728936161637');
INSERT INTO public.users VALUES (3, 'user_1728936260328');
INSERT INTO public.users VALUES (4, 'user_1728936260327');
INSERT INTO public.users VALUES (5, 'user_1728936968485');
INSERT INTO public.users VALUES (6, 'user_1728936968484');
INSERT INTO public.users VALUES (7, 'user_1728937047246');
INSERT INTO public.users VALUES (8, 'user_1728937047245');
INSERT INTO public.users VALUES (9, 'user_1728937064509');
INSERT INTO public.users VALUES (10, 'user_1728937064508');
INSERT INTO public.users VALUES (11, 'user_1728937076493');
INSERT INTO public.users VALUES (12, 'user_1728937076492');
INSERT INTO public.users VALUES (13, 'user_1728937101301');
INSERT INTO public.users VALUES (14, 'user_1728937101300');
INSERT INTO public.users VALUES (15, 'user_1728937125772');
INSERT INTO public.users VALUES (16, 'user_1728937125771');
INSERT INTO public.users VALUES (17, 'user_1728937439071');
INSERT INTO public.users VALUES (18, 'user_1728937439070');
INSERT INTO public.users VALUES (19, 'user_1728937456566');
INSERT INTO public.users VALUES (20, 'user_1728937456565');
INSERT INTO public.users VALUES (21, 'user_1728937706907');
INSERT INTO public.users VALUES (22, 'user_1728937706906');
INSERT INTO public.users VALUES (23, 'user_1728937821202');
INSERT INTO public.users VALUES (24, 'user_1728937821201');
INSERT INTO public.users VALUES (25, 'user_1728937845954');
INSERT INTO public.users VALUES (26, 'user_1728937845953');
INSERT INTO public.users VALUES (27, 'user_1728937857781');
INSERT INTO public.users VALUES (28, 'user_1728937857780');
INSERT INTO public.users VALUES (29, 'user_1728937969038');
INSERT INTO public.users VALUES (30, 'user_1728937969037');
INSERT INTO public.users VALUES (31, 'user_1728938030361');
INSERT INTO public.users VALUES (32, 'user_1728938030360');
INSERT INTO public.users VALUES (33, 'user_1728938132526');
INSERT INTO public.users VALUES (34, 'user_1728938132525');
INSERT INTO public.users VALUES (35, 'user_1728938152234');
INSERT INTO public.users VALUES (36, 'user_1728938152233');
INSERT INTO public.users VALUES (37, 'user_1728938194184');
INSERT INTO public.users VALUES (38, 'user_1728938194183');
INSERT INTO public.users VALUES (39, 'user_1728938208717');
INSERT INTO public.users VALUES (40, 'user_1728938208716');
INSERT INTO public.users VALUES (41, 'user_1728938216253');
INSERT INTO public.users VALUES (42, 'user_1728938216252');
INSERT INTO public.users VALUES (43, 'user_1728938222880');
INSERT INTO public.users VALUES (44, 'user_1728938222879');
INSERT INTO public.users VALUES (45, 'user_1728938228162');
INSERT INTO public.users VALUES (46, 'user_1728938228161');
INSERT INTO public.users VALUES (47, 'user_1728938230558');
INSERT INTO public.users VALUES (48, 'user_1728938230557');
INSERT INTO public.users VALUES (49, 'user_1728938297621');
INSERT INTO public.users VALUES (50, 'user_1728938297620');
INSERT INTO public.users VALUES (51, 'user_1728938429915');
INSERT INTO public.users VALUES (52, 'user_1728938429913');
INSERT INTO public.users VALUES (53, 'user_1728938432301');
INSERT INTO public.users VALUES (54, 'user_1728938432300');
INSERT INTO public.users VALUES (55, 'user_1728938435312');
INSERT INTO public.users VALUES (56, 'user_1728938435311');
INSERT INTO public.users VALUES (57, 'user_1728938438000');
INSERT INTO public.users VALUES (58, 'user_1728938437999');
INSERT INTO public.users VALUES (59, 'user_1728938441608');
INSERT INTO public.users VALUES (60, 'user_1728938441607');
INSERT INTO public.users VALUES (61, 'user_1728938452915');
INSERT INTO public.users VALUES (62, 'user_1728938452914');
INSERT INTO public.users VALUES (63, 'user_1728938478082');
INSERT INTO public.users VALUES (64, 'user_1728938478081');
INSERT INTO public.users VALUES (65, 'user_1728938483866');
INSERT INTO public.users VALUES (66, 'user_1728938483865');
INSERT INTO public.users VALUES (67, 'user_1728938494030');
INSERT INTO public.users VALUES (68, 'user_1728938494029');
INSERT INTO public.users VALUES (69, 'user_1728938502549');
INSERT INTO public.users VALUES (70, 'user_1728938502548');
INSERT INTO public.users VALUES (71, 'user_1728938505801');
INSERT INTO public.users VALUES (72, 'user_1728938505800');
INSERT INTO public.users VALUES (73, 'user_1728938507937');
INSERT INTO public.users VALUES (74, 'user_1728938507936');
INSERT INTO public.users VALUES (75, 'user_1728938510205');
INSERT INTO public.users VALUES (76, 'user_1728938510204');
INSERT INTO public.users VALUES (77, 'user_1728938512094');
INSERT INTO public.users VALUES (78, 'user_1728938512093');
INSERT INTO public.users VALUES (79, 'user_1728938514256');
INSERT INTO public.users VALUES (80, 'user_1728938514255');
INSERT INTO public.users VALUES (81, 'user_1728938516553');
INSERT INTO public.users VALUES (82, 'user_1728938516552');
INSERT INTO public.users VALUES (83, 'user_1728938518841');
INSERT INTO public.users VALUES (84, 'user_1728938518840');
INSERT INTO public.users VALUES (85, 'user_1728938520826');
INSERT INTO public.users VALUES (86, 'user_1728938520825');
INSERT INTO public.users VALUES (87, 'user_1728938527730');
INSERT INTO public.users VALUES (88, 'user_1728938527729');
INSERT INTO public.users VALUES (89, 'user_1728938530250');
INSERT INTO public.users VALUES (90, 'user_1728938530249');
INSERT INTO public.users VALUES (91, 'user_1728938532425');
INSERT INTO public.users VALUES (92, 'user_1728938532424');
INSERT INTO public.users VALUES (93, 'user_1728938534563');
INSERT INTO public.users VALUES (94, 'user_1728938534562');
INSERT INTO public.users VALUES (95, 'user_1728938570982');
INSERT INTO public.users VALUES (96, 'user_1728938570981');
INSERT INTO public.users VALUES (97, 'user_1728938573643');
INSERT INTO public.users VALUES (98, 'user_1728938573642');
INSERT INTO public.users VALUES (99, 'user_1728938576111');
INSERT INTO public.users VALUES (100, 'user_1728938576110');
INSERT INTO public.users VALUES (101, 'user_1728938622765');
INSERT INTO public.users VALUES (102, 'user_1728938622764');
INSERT INTO public.users VALUES (103, 'user_1728938625500');
INSERT INTO public.users VALUES (104, 'user_1728938625499');
INSERT INTO public.users VALUES (105, 'user_1728938627678');
INSERT INTO public.users VALUES (106, 'user_1728938627677');
INSERT INTO public.users VALUES (107, 'user_1728938970976');
INSERT INTO public.users VALUES (108, 'user_1728938970975');
INSERT INTO public.users VALUES (109, 'user_1728938973532');
INSERT INTO public.users VALUES (110, 'user_1728938973531');
INSERT INTO public.users VALUES (111, 'user_1728938979901');
INSERT INTO public.users VALUES (112, 'user_1728938979900');
INSERT INTO public.users VALUES (113, 'user_1728938986210');
INSERT INTO public.users VALUES (114, 'user_1728938986209');
INSERT INTO public.users VALUES (115, 'user_1728939052874');
INSERT INTO public.users VALUES (116, 'user_1728939052873');
INSERT INTO public.users VALUES (117, 'user_1728939059851');
INSERT INTO public.users VALUES (118, 'user_1728939059850');
INSERT INTO public.users VALUES (119, 'user_1728939063524');
INSERT INTO public.users VALUES (120, 'user_1728939063523');
INSERT INTO public.users VALUES (121, 'user_1728939066579');
INSERT INTO public.users VALUES (122, 'user_1728939066578');
INSERT INTO public.users VALUES (123, 'user_1728939069423');
INSERT INTO public.users VALUES (124, 'user_1728939069422');
INSERT INTO public.users VALUES (125, 'user_1728939072289');
INSERT INTO public.users VALUES (126, 'user_1728939072288');
INSERT INTO public.users VALUES (127, 'user_1728939075190');
INSERT INTO public.users VALUES (128, 'user_1728939075189');
INSERT INTO public.users VALUES (129, 'user_1728939078343');
INSERT INTO public.users VALUES (130, 'user_1728939078342');
INSERT INTO public.users VALUES (131, 'user_1728939130561');
INSERT INTO public.users VALUES (132, 'user_1728939130560');
INSERT INTO public.users VALUES (133, 'user_1728939134916');
INSERT INTO public.users VALUES (134, 'user_1728939134915');
INSERT INTO public.users VALUES (135, 'user_1728939138116');
INSERT INTO public.users VALUES (136, 'user_1728939138115');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 420, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 136, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

