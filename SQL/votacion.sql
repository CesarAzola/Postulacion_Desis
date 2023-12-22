-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-12-2023 a las 04:37:57
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `votacion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `candidate`
--

CREATE TABLE `candidate` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `candidate`
--

INSERT INTO `candidate` (`id`, `name`) VALUES
(1, 'Pedrito'),
(2, 'Juancito');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `commune`
--

CREATE TABLE `commune` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `region_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `commune`
--

INSERT INTO `commune` (`id`, `name`, `region_id`) VALUES
(1, 'PEÑAFLOR', 16),
(2, 'PADRE HURTADO', 16),
(3, 'ISLA DE MAIPO', 16),
(4, 'EL MONTE', 16),
(5, 'TALAGANTE', 16),
(6, 'SAN PEDRO', 16),
(7, 'MARIA PINTO', 16),
(8, 'CURACAVI', 16),
(9, 'ALHUE', 16),
(10, 'MELIPILLA', 16),
(11, 'PAINE', 16),
(12, 'CALERA DE TANGO', 16),
(13, 'BUIN', 16),
(14, 'SAN BERNARDO', 16),
(15, 'TIL TIL', 16),
(16, 'LAMPA', 16),
(17, 'COLINA', 16),
(18, 'SAN JOSE DE MAIPO', 16),
(19, 'PIRQUE', 16),
(20, 'PUENTE ALTO', 16),
(21, 'VITACURA', 16),
(22, 'SAN RAMON', 16),
(23, 'SAN MIGUEL', 16),
(24, 'SAN JOAQUIN', 16),
(25, 'RENCA', 16),
(26, 'RECOLETA', 16),
(27, 'QUINTA NORMAL', 16),
(28, 'QUILICURA', 16),
(29, 'PUDAHUEL', 16),
(30, 'PROVIDENCIA', 16),
(31, 'PEÑALOLEN', 16),
(32, 'PEDRO AGUIRRE CERDA', 16),
(33, 'ÑUÑOA', 16),
(34, 'MAIPU', 16),
(35, 'MACUL', 16),
(36, 'LO PRADO', 16),
(37, 'LO ESPEJO', 16),
(38, 'LO BARNECHEA', 16),
(39, 'LAS CONDES', 16),
(40, 'LA REINA', 16),
(41, 'LA PINTANA', 16),
(42, 'LA GRANJA', 16),
(43, 'LA FLORIDA', 16),
(44, 'LA CISTERNA', 16),
(45, 'INDEPENDENCIA', 16),
(46, 'HUECHURABA', 16),
(47, 'ESTACION CENTRAL', 16),
(48, 'EL BOSQUE', 16),
(49, 'CONCHALI', 16),
(50, 'CERRO NAVIA', 16),
(51, 'CERRILLOS', 16),
(52, 'SANTIAGO', 16),
(53, 'TORRES DEL PAINE', 9),
(54, 'NATALES', 9),
(55, 'TIMAUKEL', 9),
(56, 'PRIMAVERA', 9),
(57, 'PORVENIR', 9),
(58, 'ANTÁRTICA', 9),
(59, 'CABO DE HORNOS', 9),
(60, 'SAN GREGORIO', 9),
(61, 'RIO VERDE', 9),
(62, 'LAGUNA BLANCA', 9),
(63, 'PUNTA ARENAS', 9),
(64, 'RIO IBAÑEZ', 4),
(65, 'CHILE CHICO', 4),
(66, 'TORTEL', 4),
(67, 'O\'HIGGINS', 4),
(68, 'COYHAIQUE / COIHAIQUE', 4),
(69, 'COCHRANE', 4),
(70, 'GUAITECAS', 4),
(71, 'CISNES', 4),
(72, 'AYSEN / AISEN', 4),
(73, 'LAGO VERDE', 4),
(74, 'PALENA', 7),
(75, 'HUALAIHUE', 7),
(76, 'FUTALEUFU', 7),
(77, 'CHAITEN', 7),
(78, 'SAN PABLO', 7),
(79, 'SAN JUAN DE LA COSTA', 7),
(80, 'RIO NEGRO', 7),
(81, 'PUYEHUE', 7),
(82, 'PURRANQUE', 7),
(83, 'PUERTO OCTAY', 7),
(84, 'OSORNO', 7),
(85, 'QUINCHAO', 7),
(86, 'QUEMCHI', 7),
(87, 'QUELLON', 7),
(88, 'QUEILEN', 7),
(89, 'PUQUELDON', 7),
(90, 'DALCAHUE', 7),
(91, 'CURACO DE VELEZ', 7),
(92, 'CHONCHI', 7),
(93, 'ANCUD', 7),
(94, 'CASTRO', 7),
(95, 'PUERTO VARAS', 7),
(96, 'MAULLIN', 7),
(97, 'LLANQUIHUE', 7),
(98, 'LOS MUERMOS', 7),
(99, 'FRUTILLAR', 7),
(100, 'FRESIA', 7),
(101, 'COCHAMO', 7),
(102, 'CALBUCO', 7),
(103, 'PUERTO MONTT', 7),
(104, 'RIO BUENO', 8),
(105, 'LAGO RANCO', 8),
(106, 'FUTRONO', 8),
(107, 'LA UNION', 8),
(108, 'PANGUIPULLI', 8),
(109, 'PAILLACO', 8),
(110, 'MARIQUINA', 8),
(111, 'MAFIL', 8),
(112, 'LOS LAGOS', 8),
(113, 'LANCO', 8),
(114, 'CORRAL', 8),
(115, 'VALDIVIA', 8),
(116, 'VICTORIA', 6),
(117, 'TRAIGUEN', 6),
(118, 'RENAICO', 6),
(119, 'PUREN', 6),
(120, 'LUMACO', 6),
(121, 'LOS SAUCES', 6),
(122, 'LONQUIMAY', 6),
(123, 'CURACAUTIN', 6),
(124, 'COLLIPULLI', 6),
(125, 'ERCILLA', 6),
(126, 'ANGOL', 6),
(127, 'CHOLCHOL', 6),
(128, 'VILLARRICA', 6),
(129, 'VILCUN', 6),
(130, 'TOLTEN', 6),
(131, 'TEODORO SCHMIDT', 6),
(132, 'SAAVEDRA', 6),
(133, 'PUCON', 6),
(134, 'PITRUFQUEN', 6),
(135, 'PERQUENCO', 6),
(136, 'PADRE LAS CASAS', 6),
(137, 'NUEVA IMPERIAL', 6),
(138, 'MELIPEUCO', 6),
(139, 'LONCOCHE', 6),
(140, 'LAUTARO', 6),
(141, 'GORBEA', 6),
(142, 'GALVARINO', 6),
(143, 'FREIRE', 6),
(144, 'CURARREHUE', 6),
(145, 'CUNCO', 6),
(146, 'CARAHUE', 6),
(147, 'TEMUCO', 6),
(148, 'ALTO BIO BIO', 13),
(149, 'YUMBEL', 13),
(150, 'TUCAPEL', 13),
(151, 'SANTA BARBARA', 13),
(152, 'SAN ROSENDO', 13),
(153, 'QUILLECO', 13),
(154, 'QUILACO', 13),
(155, 'NEGRETE', 13),
(156, 'NACIMIENTO', 13),
(157, 'MULCHEN', 13),
(158, 'LAJA', 13),
(159, 'CABRERO', 13),
(160, 'ANTUCO', 13),
(161, 'LOS ANGELES', 13),
(162, 'TIRUA', 13),
(163, 'LOS ALAMOS', 13),
(164, 'CURANILAHUE', 13),
(165, 'CONTULMO', 13),
(166, 'CAÑETE', 13),
(167, 'ARAUCO', 13),
(168, 'LEBU', 13),
(169, 'HUALPEN', 13),
(170, 'TOME', 13),
(171, 'TALCAHUANO', 13),
(172, 'SANTA JUANA', 13),
(173, 'SAN PEDRO DE LA PAZ', 13),
(174, 'PENCO', 13),
(175, 'LOTA', 13),
(176, 'HUALQUI', 13),
(177, 'FLORIDA', 13),
(178, 'CHIGUAYANTE', 13),
(179, 'CORONEL', 13),
(180, 'CONCEPCION', 13),
(181, 'YUNGAY', 10),
(182, 'TREGUACO / TREHUACO', 10),
(183, 'SAN NICOLAS', 10),
(184, 'SAN IGNACIO', 10),
(185, 'SAN FABIAN', 10),
(186, 'SAN CARLOS', 10),
(187, 'RANQUIL', 10),
(188, 'QUIRIHUE', 10),
(189, 'QUILLON', 10),
(190, 'PORTEZUELO', 10),
(191, 'PINTO', 10),
(192, 'PEMUCO', 10),
(193, 'ÑIQUEN', 10),
(194, 'NINHUE', 10),
(195, 'EL CARMEN', 10),
(196, 'CHILLAN VIEJO', 10),
(197, 'COIHUECO', 10),
(198, 'COELEMU', 10),
(199, 'COBQUECURA', 10),
(200, 'BULNES', 10),
(201, 'CHILLAN', 10),
(202, 'YERBAS BUENAS', 15),
(203, 'VILLA ALEGRE', 15),
(204, 'SAN JAVIER', 15),
(205, 'RETIRO', 15),
(206, 'PARRAL', 15),
(207, 'LONGAVI', 15),
(208, 'COLBUN', 15),
(209, 'LINARES', 15),
(210, 'VICHUQUEN', 15),
(211, 'TENO', 15),
(212, 'SAGRADA FAMILIA', 15),
(213, 'ROMERAL', 15),
(214, 'RAUCO', 15),
(215, 'MOLINA', 15),
(216, 'LICANTEN', 15),
(217, 'HUALAÑE', 15),
(218, 'CURICO', 15),
(219, 'PELLUHUE', 15),
(220, 'CHANCO', 15),
(221, 'CAUQUENES', 15),
(222, 'SAN RAFAEL', 15),
(223, 'SAN CLEMENTE', 15),
(224, 'RIO CLARO', 15),
(225, 'PENCAHUE', 15),
(226, 'PELARCO', 15),
(227, 'MAULE', 15),
(228, 'EMPEDRADO', 15),
(229, 'CUREPTO', 15),
(230, 'CONSTITUCION', 15),
(231, 'TALCA', 15),
(232, 'SANTA CRUZ', 14),
(233, 'PUMANQUE', 14),
(234, 'PLACILLA', 14),
(235, 'PERALILLO', 14),
(236, 'PALMILLA', 14),
(237, 'NANCAGUA', 14),
(238, 'LOLOL', 14),
(239, 'CHIMBARONGO', 14),
(240, 'SAN FERNANDO', 14),
(241, 'CHEPICA', 14),
(242, 'PAREDONES', 14),
(243, 'NAVIDAD', 14),
(244, 'MARCHIHUE', 14),
(245, 'LITUECHE', 14),
(246, 'LA ESTRELLA', 14),
(247, 'PICHILEMU', 14),
(248, 'SAN VICENTE', 14),
(249, 'RENGO', 14),
(250, 'REQUINOA', 14),
(251, 'QUINTA DE TILCOCO', 14),
(252, 'PICHIDEGUA', 14),
(253, 'PEUMO', 14),
(254, 'OLIVAR', 14),
(255, 'MOSTAZAL', 14),
(256, 'MALLOA', 14),
(257, 'MACHALI', 14),
(258, 'LAS CABRAS', 14),
(259, 'GRANEROS', 14),
(260, 'DOÑIHUE', 14),
(261, 'COLTAUCO', 14),
(262, 'COINCO', 14),
(263, 'CODEGUA', 14),
(264, 'RANCAGUA', 14),
(265, 'OLMUE', 12),
(266, 'QUILPUE', 12),
(267, 'VILLA ALEMANA', 12),
(268, 'LIMACHE', 12),
(269, 'SANTA MARIA', 12),
(270, 'PUTAENDO', 12),
(271, 'PANQUEHUE', 12),
(272, 'CATEMU', 12),
(273, 'LLAILLAY / LLAYLLAY', 12),
(274, 'SAN FELIPE', 12),
(275, 'SANTO DOMINGO', 12),
(276, 'EL TABO', 12),
(277, 'EL QUISCO', 12),
(278, 'CARTAGENA', 12),
(279, 'ALGARROBO', 12),
(280, 'SAN ANTONIO', 12),
(281, 'NOGALES', 12),
(282, 'LA CRUZ', 12),
(283, 'HIJUELAS', 12),
(284, 'LA CALERA', 12),
(285, 'QUILLOTA', 12),
(286, 'ZAPALLAR', 12),
(287, 'PETORCA', 12),
(288, 'PAPUDO', 12),
(289, 'CABILDO', 12),
(290, 'LA LIGUA', 12),
(291, 'SAN ESTEBAN', 12),
(292, 'RINCONADA', 12),
(293, 'CALLE LARGA', 12),
(294, 'LOS ANDES', 12),
(295, 'ISLA DE PASCUA', 12),
(296, 'VIÑA DEL MAR', 12),
(297, 'QUINTERO', 12),
(298, 'PUCHUNCAVI', 12),
(299, 'ISLA JUAN FERNANDEZ', 12),
(300, 'CONCON', 12),
(301, 'CASABLANCA', 12),
(302, 'VALPARAISO', 12),
(303, 'RIO HURTADO', 5),
(304, 'PUNITAQUI', 5),
(305, 'MONTE PATRIA', 5),
(306, 'COMBARBALA', 5),
(307, 'OVALLE', 5),
(308, 'LOS VILOS', 5),
(309, 'SALAMANCA', 5),
(310, 'CANELA', 5),
(311, 'ILLAPEL', 5),
(312, 'VICUÑA', 5),
(313, 'PAIHUANO', 5),
(314, 'LA HIGUERA', 5),
(315, 'ANDACOLLO', 5),
(316, 'COQUIMBO', 5),
(317, 'LA SERENA', 5),
(318, 'HUASCO', 3),
(319, 'FREIRINA', 3),
(320, 'ALTO DEL CARMEN', 3),
(321, 'CHAÑARAL', 3),
(322, 'TIERRA AMARILLA', 3),
(323, 'VALLENAR', 3),
(324, 'DIEGO DE ALMAGRO', 3),
(325, 'CALDERA', 3),
(326, 'COPIAPO', 3),
(327, 'SAN PEDRO DE ATACAMA', 1),
(328, 'SIERRA GORDA', 1),
(329, 'MEJILLONES', 1),
(330, 'MARIA ELENA', 1),
(331, 'TOCOPILLA', 1),
(332, 'OLLAGÜE', 1),
(333, 'CALAMA', 1),
(334, 'TALTAL', 1),
(335, 'ANTOFAGASTA', 1),
(336, 'PICA', 11),
(337, 'HUARA', 11),
(338, 'COLCHANE', 11),
(339, 'CAMIÑA', 11),
(340, 'POZO ALMONTE', 11),
(341, 'IQUIQUE', 11),
(342, 'ALTO HOSPICIO', 11),
(343, 'ARICA', 2),
(344, 'GENERAL LAGOS', 2),
(345, 'PUTRE', 2),
(346, 'CAMARONES', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `region`
--

CREATE TABLE `region` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `region`
--

INSERT INTO `region` (`id`, `name`) VALUES
(1, 'REGIÓN DE ANTOFAGASTA'),
(2, 'REGIÓN DE ARICA Y PARINACOTA'),
(3, 'REGIÓN DE ATACAMA'),
(4, 'REGIÓN DE AYSÉN DEL GENERAL CARLOS IBÁÑEZ DEL CAMPO'),
(5, 'REGIÓN DE COQUIMBO'),
(6, 'REGIÓN DE LA ARAUCANÍA'),
(7, 'REGIÓN DE LOS LAGOS'),
(8, 'REGIÓN DE LOS RÍOS'),
(9, 'REGIÓN DE MAGALLANES Y DE LA ANTÁRTICA CHILENA'),
(10, 'REGIÓN DE ÑUBLE'),
(11, 'REGIÓN DE TARAPACÁ'),
(12, 'REGIÓN DE VALPARAÍSO'),
(13, 'REGIÓN DEL BIOBÍO'),
(14, 'REGIÓN DEL LIBERTADOR GENERAL BERNARDO O\'HIGGINS'),
(15, 'REGIÓN DEL MAULE'),
(16, 'REGIÓN METROPOLITANA DE SANTIAGO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `voto`
--

CREATE TABLE `voto` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `alias` varchar(100) DEFAULT NULL,
  `rut` varchar(100) NOT NULL,
  `mail` varchar(100) NOT NULL,
  `commune_id` int(10) UNSIGNED NOT NULL,
  `region_id` int(10) UNSIGNED NOT NULL,
  `candidate_id` int(10) UNSIGNED NOT NULL,
  `arrival` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `voto`
--

INSERT INTO `voto` (`id`, `name`, `alias`, `rut`, `mail`, `commune_id`, `region_id`, `candidate_id`, `arrival`) VALUES
(18, 'test', 'test11', '19014559-9', 'cesar.azola@gmail.com', 65, 4, 1, 'TV,redes_sociales');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `candidate`
--
ALTER TABLE `candidate`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `commune`
--
ALTER TABLE `commune`
  ADD PRIMARY KEY (`id`),
  ADD KEY `commune_FK` (`region_id`);

--
-- Indices de la tabla `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `voto`
--
ALTER TABLE `voto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `voto_FK` (`commune_id`),
  ADD KEY `voto_FK_1` (`region_id`),
  ADD KEY `voto_FK_2` (`candidate_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `candidate`
--
ALTER TABLE `candidate`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `commune`
--
ALTER TABLE `commune`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=347;

--
-- AUTO_INCREMENT de la tabla `region`
--
ALTER TABLE `region`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `voto`
--
ALTER TABLE `voto`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `commune`
--
ALTER TABLE `commune`
  ADD CONSTRAINT `commune_FK` FOREIGN KEY (`region_id`) REFERENCES `region` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `voto`
--
ALTER TABLE `voto`
  ADD CONSTRAINT `voto_FK` FOREIGN KEY (`commune_id`) REFERENCES `commune` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `voto_FK_1` FOREIGN KEY (`region_id`) REFERENCES `region` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `voto_FK_2` FOREIGN KEY (`candidate_id`) REFERENCES `candidate` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
