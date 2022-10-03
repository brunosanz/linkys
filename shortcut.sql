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
  `status_like` int(11) NOT NULL DEFAULT '1',
  `added_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `recommended_by` varchar(50) NOT NULL,
  `user_avatar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `search`
--

INSERT INTO `search` (`shortcut`, `category`, `name`, `description`, `question`, `url`, `url_search`, `url_image`, `status`, `status_like`, `added_on`, `recommended_by`, `user_avatar`) VALUES
('df', 'fuentes', 'Dafont', 'Archivo de fuentes de descarga gratuita. Búsqueda por orden alfabético, por estilo, por autor o por popularidad.', '', 'https://www.dafont.com/es/', 'https://www.dafont.com/es/alpha.php?text=%search', 'https://www.brunosanz.com/wp-content/uploads/2022/07/brett-jordan-M9NVqELEtHU-unsplash.jpg', 0, 1, '2022-09-30 13:34:00', 'rbrunosanz', 'https://www.brunosanz.com/cv/img/photo.jpg'),
('dn', 'educacion', 'Dialnet', 'Portal Dialnet', '', 'https://dialnet.unirioja.es/', 'https://dialnet.unirioja.es/buscar/documentos?querysDismax.DOCUMENTAL_TODO=%search', 'https://dialnet.unirioja.es/imagen/dialnet_mg.png', 0, 1, '2022-09-30 11:00:00', 'rbrunosanz', 'https://www.brunosanz.com/cv/img/photo.jpg'),
('edx', 'cursos', 'edX', 'Descubre nuevos intereses y promueve oportunidades profesionales con cursos en ciencias de la computación, biología, ingeniería, arquitectura, ciencia de datos y más.', '', 'https://www.edx.org/es/aprende/', 'https://www.edx.org/es/search?q=%search', 'https://www.edx.org/images/logos/edx-logo-elm.svg', 0, 1, '2022-09-30 15:30:55', 'rbrunosanz', 'https://www.brunosanz.com/cv/img/photo.jpg'),
('el', 'educacion', 'ELSEVIER', 'Una empresa de análisis de la información | Empowering Knowledge', '', 'http://www.elsevier.es/', 'http://www.elsevier.es/es-buscar?txtBuscador=%search', 'https://www.elsevier.com/__data/assets/image/0006/979224/coronavirus-image-657x372.jpg', 0, 1, '2022-09-30 14:01:00', 'rbrunosanz', 'https://www.brunosanz.com/cv/img/photo.jpg'),
('es', 'traductor', 'DeepL Translate', 'Translate texts & full document files instantly. Accurate translations for individuals and Teams. Millions translate with DeepL every day.', '', 'https://www.deepl.com/', 'https://www.deepl.com/translator#es/en/%search', 'https://static.deepl.com/img/favicon/deepl_logo_600_300.png', 0, 1, '2022-09-26 00:00:00', 'rbrunosanz', 'https://www.brunosanz.com/cv/img/photo.jpg'),
('fg', 'fuentes', 'FontGet', 'Download Free Fonts for your website, Mac, Windows, Linux, iOS and Android. Try our best in class Font Generator for every kind of font!', '', 'https://www.fontget.com/', 'https://www.fontget.com/search/', 'https://www.fontget.com/img/faviconbig.png?2', 0, 1, '2022-09-26 00:00:00', 'rbrunosanz', 'https://www.brunosanz.com/cv/img/photo.jpg'),
('fp', 'imagenes', 'Freepik', 'Recursos gráficos para todos', '', 'https://www.freepik.es/', 'https://www.freepik.es/search?query=%search', 'https://freepik.cdnpk.net/img/logo-fb-en.png', 0, 1, '2022-09-26 00:00:00', 'rbrunosanz', 'https://www.brunosanz.com/cv/img/photo.jpg'),
('ga', 'educacion', 'Google Académico', 'Google Scholar (Google Académico)', '', 'https://scholar.google.com.mx/', 'https://scholar.google.com.mx/scholar?&q=%search', 'https://scholar.google.com.mx/intl/es/scholar/images/1x/scholar_logo_64dp.png', 0, 10, '2022-08-26 00:00:00', 'rbrunosanz', 'https://www.brunosanz.com/cv/img/photo.jpg'),
('gac', 'cursos', 'Google Actívate', 'Matricúlate en uno de los cursos de marketing online sin coste y amplía tu conocimiento digital. Empieza hoy y aprende a tu ritmo.', '', 'https://learndigital.withgoogle.com/activate/courses', 'https://learndigital.withgoogle.com/activate/courses?category=%search', 'https://lh3.googleusercontent.com/Jr6V5yAY5PFQ0kTUoQi_C5Do4uxD1bdnhHJ1Qtc_l5SJ2sCOhfp3f6J8f27da9nAou8X80FIRGnSznDDJW5nNKu31sropPeAlgRDxw?1664566814.2268212', 0, 1, '2022-09-30 15:25:16', 'rbrunosanz', 'https://www.brunosanz.com/cv/img/photo.jpg'),
('go', 'buscador', 'Google', '', '', 'https://www.google.com/', 'https://www.google.com/search?q=%search', 'https://ossom.cl/wp-content/uploads/2022/08/Google.jpg', 0, 1, '2022-09-26 00:00:00', 'rbrunosanz', 'https://www.brunosanz.com/cv/img/photo.jpg'),
('id', 'iconos, imagenes', 'Iconduck', 'Free open source icons, illustrations, emojis and graphics.', '', 'https://iconduck.com/', 'https://iconduck.com/search?query=%search', 'https://iconduck.com/iconduck/static/images/og/fallback.png', 0, 1, '2022-09-26 00:00:00', 'rbrunosanz', 'https://www.brunosanz.com/cv/img/photo.jpg'),
('ma', 'videotutoriales', 'Mi Aula', 'Si estudias secundaria o bachillerato en México y necesitas ayuda para resolver una tarea.', '', 'https://www.youtube.com/c/MiAula', 'https://www.youtube.com/c/MiAula/search?query=algebra', 'https://yt3.ggpht.com/ytc/AMLnZu98-vHUMdJ2JT8ySWQlR73vW6_YK_CkGsBiKIvj8Q=s900-c-k-c0x00ffffff-no-rj', 0, 1, '2022-09-26 00:00:00', 'rbrunosanz', 'https://www.brunosanz.com/cv/img/photo.jpg'),
('ms', 'cursos', 'Microsoft Learn', 'Obtenga nuevas habilidades y descubra el poder de los productos de Microsoft con una guía paso a paso. Comience su viaje hoy explorando nuestros módulos y rutas de aprendizaje.', '', 'https://learn.microsoft.com/es-es/training/browse/', 'https://learn.microsoft.com/es-es/training/browse/?terms=%search', 'https://learn.microsoft.com/en-us/media/logos/logo-ms-social.png', 0, 1, '2022-09-28 08:48:59', 'rbrunosanz', 'https://www.brunosanz.com/cv/img/photo.jpg'),
('ob', 'cursos', 'Open Bootcamp', 'Fórmate gratis como Desarrollador FullStack, BackEnd o FrontEnd y encuentra trabajo. Sin compromiso y a tu ritmo.', '', 'https://open-bootcamp.com/', 'https://open-bootcamp.com/cursos/%search', 'https://site-assets.plasmic.app/a05ab4fa26c2bb24cf18c1ed21c9bd59.png', 0, 21600, '2022-09-30 18:00:00', 'Open_Bootcamp', 'https://community.open-bootcamp.com/_next/image?url=%2F_next%2Fstatic%2Fmedia%2FLogo_ob.88b52998.svg&w=128&q=75'),
('pb', 'imagenes', 'Pixabay', 'Encuentra las mejores imágenes gratis para descargar. ✓ Gratis para fines comerciales ✓ Sin atribución requerida ✓ Imágenes en Alta Resolución.', '', 'https://pixabay.com/es/', 'https://pixabay.com/es/images/search/%search', 'https://cdn.pixabay.com/index/2022/09/16/08-02-27-142_1440x550.jpg', 0, 1, '2022-09-26 00:00:00', 'rbrunosanz', 'https://www.brunosanz.com/cv/img/photo.jpg'),
('ptv', 'livetv, peliculas, series', 'Pluto TV', 'Pluto TV', '', 'https://pluto.tv/es/live-tv/pluto-tv-cine-estelar-1', 'https://pluto.tv/es/search', 'https://webtech-web-blu-assets.pluto.tv/assets/images/og_logo-9aeeae8b9656922ae6c516104741602f.png', 0, 1, '2022-09-26 00:00:00', 'rbrunosanz', 'https://www.brunosanz.com/cv/img/photo.jpg'),
('px', 'imagenes', 'Pexels', 'Fotos y vídeos de stock gratis que puedes usar donde quieras. Busca millones de imágenes de stock de alta calidad y libres de regalías. No es necesario mencionar la fuente.', '', 'https://www.pexels.com/es-es/', 'https://www.pexels.com/es-es/buscar/%search', 'https://www.pexels.com/assets/static/images/meta/pexels-stock-photos.jpg', 0, 1, '2022-09-26 00:00:00', 'rbrunosanz', 'https://www.brunosanz.com/cv/img/photo.jpg'),
('rae', 'diccionario', 'RAE - ASALE', 'Diccionario de la lengua española.', '', 'https://dle.rae.es/', 'https://dle.rae.es/%search', 'https://dle.rae.es/app/doc/es/img/dle.jpg', 0, 1, '2022-09-26 00:00:00', 'rbrunosanz', 'https://www.brunosanz.com/cv/img/photo.jpg'),
('rd', 'educacion', 'Reddalyc', 'Acceso abierto sin fines de lucro propiedad de la academia, fortaleciendo el acceso abierto diamante.', '', 'https://www.redalyc.org/', 'https://www.redalyc.org/busquedaArticuloFiltros.oa?q=%search', 'https://biblioteca.unbosque.edu.co/sites/default/files/redalyc.png', 0, 1, '2022-09-26 00:00:00', 'rbrunosanz', 'https://www.brunosanz.com/cv/img/photo.jpg'),
('rg', 'educacion', 'ResearchGate', 'Access 130+ million publications and connect with 20+ million researchers. Join for free and gain visibility by uploading your research.', '', 'https://www.researchgate.net/', 'https://www.researchgate.net/search/publication?q=%search', 'https://www.researchgate.net/images/footer-hiring@2x.jpg', 0, 1, '2022-09-26 00:00:00', 'rbrunosanz', 'https://www.brunosanz.com/cv/img/photo.jpg'),
('se', 'educacion', 'SciELO', 'Scientific Electronic Library Online (Biblioteca Científica Electrónica en Línea)', '', 'https://search.scielo.org/', 'https://search.scielo.org/?q=%search', 'https://search.scielo.org/static/image/logo-scielo-portal-no-label.svg', 0, 1, '2022-09-26 00:00:00', 'rbrunosanz', 'https://www.brunosanz.com/cv/img/photo.jpg'),
('sl', 'educacion', 'Springer Link', 'Providing researchers with access to millions of scientific documents from journals, books, series, protocols, reference works and proceedings.', '', 'https://link.springer.com/', 'https://link.springer.com/search?query=%search&facet-language=%22Es%22', 'https://link.springer.com/static/c477ec9aa66961461981befdacff68763c73ac5a/sites/link/images/logo_high_res.png', 0, 1, '2022-09-26 00:00:00', 'rbrunosanz', 'https://www.brunosanz.com/cv/img/photo.jpg'),
('so', 'code, dev', 'StackOverflow', 'The World’s Largest Online Community for Developers.', '', 'https://stackoverflow.com/', 'https://stackoverflow.com/search?q=%search', 'https://cdn.sstatic.net/Sites/stackoverflow/Img/apple-touch-icon@2.png?v=73d79a89bded', 0, 1, '2022-09-26 00:00:00', 'rbrunosanz', 'https://www.brunosanz.com/cv/img/photo.jpg'),
('sp', 'educacion', 'SpringerOpen', 'The SpringerOpen portfolio has grown tremendously since its launch in 2010, so that we now offer researchers from all areas of science, technology, medicine, the humanities and social sciences a place to publish open access in journals.', '', 'https://www.springeropen.com/', 'https://www.springeropen.com/search?query=%search', 'https://www.springeropen.com/static/images/springeropen/logo-springer-open-f45a49bbb5.svg', 0, 1, '2022-09-26 00:00:00', 'rbrunosanz', 'https://www.brunosanz.com/cv/img/photo.jpg'),
('tubi', 'peliculas, series', 'Tubi', 'Ver películas y series gratis por internet.', '', 'https://tubitv.com/home', 'https://tubitv.com/search/%search', 'https://cdn.adrise.tv/tubitv-assets/img/tubi_open-graph-512x512.png', 0, 1, '2022-09-26 00:00:00', 'rbrunosanz', 'https://www.brunosanz.com/cv/img/photo.jpg'),
('us', 'imagenes', 'Unsplash', 'Bonitas imágenes y fotos gratuitas que puedes descargar y utilizar en cualquier proyecto.', '', 'https://unsplash.com/', 'https://unsplash.com/search/photos/%search', 'https://images.unsplash.com/photo-1664472136270-78353e79ffce?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxOHx8fGVufDB8fHx8&auto=format&fit=crop&w=400&q=60', 0, 20, '2022-09-26 00:00:00', 'rbrunosanz', 'https://www.brunosanz.com/cv/img/photo.jpg'),
('vix', 'livetv, peliculas, series', 'ViX', 'Más de 100 canales de TV con miles de películas, series y novelas, el mejor fútbol en directo y noticias 24 horas para mantenerte informado.', '', 'https://vix.com/es-es/canales', 'https://vix.com/es-es/search?q=%search', 'https://vix.com/seo/vix_default.jpg', 0, 1, '2022-09-26 00:00:00', 'rbrunosanz', 'https://www.brunosanz.com/cv/img/photo.jpg'),
('wws', 'educacion', 'World Wide Science', 'WorldWideScience.org is a global science gateway accelerating scientific discovery and progress through a multilateral partnership to enable federated searching of national and international scientific databases.', '', 'http://worldwidescience.org/', 'http://worldwidescience.org/wws/desktop/es/ostiblue/service/link/runSearch/fullRecord:%search/preferredLanguage:es', 'https://worldwidescience.org/wwstheme/images/wwsHome_header.png', 0, 1, '2022-09-26 00:00:00', 'rbrunosanz', 'https://www.brunosanz.com/cv/img/photo.jpg'),
('ym', 'musica', 'YouTubeMusic', '', '', 'https://music.youtube.com/', 'https://music.youtube.com/search?q=%search', 'https://d500.epimg.net/cincodias/imagenes/2020/04/15/lifestyle/1586930731_973562_1586930796_noticia_normal.jpg', 0, 1, '2022-09-26 00:00:00', 'rbrunosanz', 'https://www.brunosanz.com/cv/img/photo.jpg'),
('yt', 'videos', 'YouTube', '', '', 'https://www.youtube.com/', 'https://www.youtube.com/results?search_query=%search', 'https://play-lh.googleusercontent.com/vA4tG0v4aasE7oIvRIvTkOYTwom07DfqHdUPr6k7jmrDwy_qA_SonqZkw6KX0OXKAdk', 0, 1, '2022-09-26 00:00:00', 'rbrunosanz', 'https://www.brunosanz.com/cv/img/photo.jpg');

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
