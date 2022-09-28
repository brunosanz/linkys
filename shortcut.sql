-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-09-2022 a las 09:43:47
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `shortcut`
--
CREATE DATABASE IF NOT EXISTS `shortcut` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `shortcut`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `search`
--

CREATE TABLE `search` (
  `shortcut` varchar(50) NOT NULL,
  `category` varchar(100) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `question` varchar(50) NOT NULL,
  `url` varchar(255) NOT NULL,
  `url_search` varchar(255) DEFAULT NULL,
  `url_image` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `status_like` int(11) NOT NULL,
  `added_on` datetime NOT NULL DEFAULT current_timestamp(),
  `recommended_by` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `search`
--

INSERT INTO `search` (`shortcut`, `category`, `name`, `description`, `question`, `url`, `url_search`, `url_image`, `status`, `status_like`, `added_on`, `recommended_by`) VALUES
('df', 'font,fuente', 'dafont', 'La búsqueda se realizará en el sitio de', '', 'https://www.dafont.com/es/', 'https://www.dafont.com/es/alpha.php?text=%search', 'img/favicons/favicon.svg', 0, 0, '2022-09-26 00:00:00', 'rbrunosanz'),
('dn', 'edu,educacion', 'Dialnet', '', '', 'https://dialnet.unirioja.es/', 'https://dialnet.unirioja.es/buscar/documentos?querysDismax.DOCUMENTAL_TODO=%search', 'img/favicons/favicon.svg', 0, 0, '2022-09-26 00:00:00', 'rbrunosanz'),
('el', 'edu,educacion', 'ELSEVIER', '', '', 'http://www.elsevier.es/', 'http://www.elsevier.es/es-buscar?txtBuscador=%search', 'img/favicons/favicon.svg', 0, 0, '2022-09-26 00:00:00', 'rbrunosanz'),
('en', 'traductor', 'DeePL/en/es', '', '', 'https://www.deepl.com/', 'https://www.deepl.com/translator#en/es/%search', 'img/favicons/favicon.svg', 0, 0, '2022-09-26 00:00:00', 'rbrunosanz'),
('es', 'traductor', 'DeePL/es/en', '', '', 'https://www.deepl.com/', 'https://www.deepl.com/translator#es/en/%search', 'img/favicons/favicon.svg', 0, 0, '2022-09-26 00:00:00', 'rbrunosanz'),
('fg', 'font,fuente', 'FontGet', 'FREE Fonts Download | BEST Font Generator', '', 'https://www.fontget.com/', 'https://www.fontget.com/search/', 'img/favicons/favicon.svg', 0, 0, '2022-09-26 00:00:00', 'rbrunosanz'),
('fp', 'imagen, img, pic, picture', 'Freepik', '', '', 'https://www.freepik.es/', 'https://www.freepik.es/search?query=%search', 'img/favicons/favicon.svg', 0, 0, '2022-09-26 00:00:00', 'rbrunosanz'),
('ga', 'edu,educacion', 'Google Académico', 'Google Scholar (Google Académico)', '', 'https://scholar.google.com.mx/', 'https://scholar.google.com.mx/scholar?&q=%search', 'img/favicons/favicon.svg', 0, 10, '2022-09-26 00:00:00', 'rbrunosanz'),
('go', 'buscador', 'Google', '', '', 'https://www.google.com/', 'https://www.google.com/search?q=%search', 'img/favicons/favicon.svg', 0, 0, '2022-09-26 00:00:00', 'rbrunosanz'),
('id', 'icons, iconos, emojis', 'Iconduck', 'Free open source icons, illustrations, emojis and graphics.', '', 'https://iconduck.com/', 'https://iconduck.com/search?query=%search', 'img/favicons/favicon.svg', 0, 0, '2022-09-26 00:00:00', 'rbrunosanz'),
('ma', 'videotutoriales', 'Mi Aula', 'Encontrarás contenidos educativos, ordenados por grado escolar y asignatura.', '', 'https://www.youtube.com/c/MiAula', 'https://www.youtube.com/c/MiAula/search?query=algebra', 'img/favicons/favicon.svg', 0, 0, '2022-09-26 00:00:00', 'rbrunosanz'),
('ob', 'cursos, courses, bootcamp, estudiar, estudio, study', 'Open Bootcamp', 'Aprende y Encuentra empleo GRATIS', '', 'https://open-bootcamp.com/', 'https://open-bootcamp.com/cursos/%search', 'https://community.open-bootcamp.com/_next/image?url=%2F_next%2Fstatic%2Fmedia%2FLogo_ob.88b52998.svg&w=128&q=75', 0, 21600, '2022-09-26 00:00:00', 'rbrunosanz'),
('pb', 'imagen, img, pic, picture', 'Pixabay', 'Más de 1 millón de Imágenes Gratis para Descargar', '', 'https://pixabay.com/es/', 'https://pixabay.com/es/images/search/%search', 'img/favicons/favicon.svg', 0, 0, '2022-09-26 00:00:00', 'rbrunosanz'),
('ptv', 'livetv, peliculas, series, movies', 'Pluto TV', 'Pluto TV', '', 'https://pluto.tv/es/live-tv/pluto-tv-cine-estelar-1', 'https://pluto.tv/es/search', 'img/favicons/favicon.svg', 0, 0, '2022-09-26 00:00:00', 'rbrunosanz'),
('px', 'imagen, img, pic, picture', 'Pexels', 'Fotos de stock gratis, imágenes libres de regalías y sin derechos de autor.', '', 'https://www.pexels.com/es-es/', 'https://www.pexels.com/es-es/buscar/%search', 'img/favicons/favicon.svg', 0, 0, '2022-09-26 00:00:00', 'rbrunosanz'),
('rae', 'diccionario, dictionary', 'RAE - ASALE', 'Diccionario de la lengua española', '', 'https://dle.rae.es/', 'https://dle.rae.es/%search', 'img/favicons/favicon.svg', 0, 0, '2022-09-26 00:00:00', 'rbrunosanz'),
('rd', 'edu,educacion', 'Reddalyc', '', '', 'https://www.redalyc.org/', 'https://www.redalyc.org/busquedaArticuloFiltros.oa?q=%search', 'img/favicons/favicon.svg', 0, 0, '2022-09-26 00:00:00', 'rbrunosanz'),
('rg', 'edu,educacion', 'ResearchGate', '', '', 'https://www.researchgate.net/', 'https://www.researchgate.net/search/publication?q=%search', 'img/favicons/favicon.svg', 0, 0, '2022-09-26 00:00:00', 'rbrunosanz'),
('se', 'edu,educacion', 'SciELO', 'Scientific Electronic Library Online (Biblioteca Científica Electrónica en Línea)', '', 'https://search.scielo.org/', 'https://search.scielo.org/?q=%search', 'img/favicons/favicon.svg', 0, 0, '2022-09-26 00:00:00', 'rbrunosanz'),
('sl', 'edu,educacion', 'Springer Link', '', '', 'https://link.springer.com/', 'https://link.springer.com/search?query=%search&facet-language=%22Es%22', 'img/favicons/favicon.svg', 0, 0, '2022-09-26 00:00:00', 'rbrunosanz'),
('so', 'code, dev', 'StackOverflow', '', '', 'https://stackoverflow.com/', 'https://stackoverflow.com/search?q=%search', 'img/favicons/favicon.svg', 0, 0, '2022-09-26 00:00:00', 'rbrunosanz'),
('sp', 'edu,educacion', 'SpringerOpen', '', '', 'https://www.springeropen.com/', 'https://www.springeropen.com/search?query=%search', 'img/favicons/favicon.svg', 0, 0, '2022-09-26 00:00:00', 'rbrunosanz'),
('tubi', 'peliculas, series, movies', 'Tubi', 'Ver películas y series gratis por internet.', '', 'https://tubitv.com/home', 'https://tubitv.com/search/%search', 'img/favicons/favicon.svg', 0, 0, '2022-09-26 00:00:00', 'rbrunosanz'),
('us', 'imagen, img, pic, picture', 'Unsplash', '', '', 'https://unsplash.com/', 'https://unsplash.com/search/photos/%search', 'img/favicons/favicon.svg', 0, 0, '2022-09-26 00:00:00', 'rbrunosanz'),
('vix', 'livetv, peliculas, series, movies', 'ViX', 'Cine y TV en Español', '', 'https://vix.com/es-es/canales', 'https://vix.com/es-es/search?q=%search', 'img/favicons/favicon.svg', 0, 0, '2022-09-26 00:00:00', 'rbrunosanz'),
('wws', 'edu,educacion', 'World Wide Science', 'WorldWideScience.org', '', 'http://worldwidescience.org/', 'http://worldwidescience.org/wws/desktop/es/ostiblue/service/link/runSearch/fullRecord:%search/preferredLanguage:es', 'img/favicons/favicon.svg', 0, 0, '2022-09-26 00:00:00', 'rbrunosanz'),
('ym', 'musica, music', 'YouTubeMusic', '', '', 'https://music.youtube.com/', 'https://music.youtube.com/search?q=%search', 'img/favicons/favicon.svg', 0, 0, '2022-09-26 00:00:00', 'rbrunosanz'),
('yt, youtube', 'video, videos, entertainment', 'YouTube', '', '', 'https://www.youtube.com/', 'https://www.youtube.com/results?search_query=%search', 'img/favicons/favicon.svg', 0, 0, '2022-09-26 00:00:00', 'rbrunosanz');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `search`
--
ALTER TABLE `search`
  ADD PRIMARY KEY (`shortcut`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
