-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-11-2020 a las 08:39:37
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cuseuhmy_cuseuhmy_cuseuhmy_electa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `listas`
--

CREATE TABLE `listas` (
  `idlistas` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `presidente` varchar(45) DEFAULT NULL,
  `vicepresidente` varchar(45) DEFAULT NULL,
  `vocal` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `listas`
--

INSERT INTO `listas` (`idlistas`, `nombre`, `presidente`, `vicepresidente`, `vocal`) VALUES
(1, 'lista 5', 'Sr. Christian Medina', 'Srta. Angeles Merino', 'Fernanda Narvaez'),
(2, 'lista 4', 'Srta, Domenica  Saquicela', 'Srta. Josseline Pucha', 'nulo'),
(3, 'lista 10', 'Srta. Melanie Punin ', 'Srta. Josseline Alvarez', 'lista3'),
(4, 'SinVoto', 'sinVoto', 'sinVoto', 'sinVoto'),
(5, 'blanco', 'blanco', 'blanco', 'nulo'),
(6, 'nulo', 'nulo', 'nulo', 'nulo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `votantes`
--

CREATE TABLE `votantes` (
  `idvotantes` int(11) NOT NULL,
  `nombres` varchar(45) DEFAULT NULL,
  `apellidos` varchar(45) DEFAULT NULL,
  `curso` varchar(45) DEFAULT NULL,
  `cedula` varchar(45) DEFAULT NULL,
  `rol` varchar(45) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `listas_idlistas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `votantes`
--

INSERT INTO `votantes` (`idvotantes`, `nombres`, `apellidos`, `curso`, `cedula`, `rol`, `estado`, `listas_idlistas`) VALUES
(2, 'ulvio', 'rodas', 'admin', '0107061376', 'admin', 1, 1),
(3, 'CRISTHOFER LEONEL', 'AVENDA?O MOLINA', '1 egb', '0151321684', 'estudiante ', 0, 4),
(4, 'JOSUE SANTIAGO', 'CHILLOGALLI BACUILIMA', '1 egb', '0151269560', 'estudiante ', 0, 4),
(5, 'SEAN PAUL', 'GUARTAZACA SARMIENTO', '1 egb', '0151350238', 'estudiante ', 0, 4),
(6, 'SHIRLEY ALEJANDRA', 'LLAPA QUITUISACA', '1 egb', '0151502523', 'estudiante ', 0, 4),
(7, 'FABRICIO ALEJANDRO', 'LOJANO PILCO', '1 egb', '0151445632', 'estudiante ', 0, 4),
(8, 'JUAN JOSE', 'PESANTEZ BRITO', '1 egb', '0151343431', 'estudiante ', 0, 4),
(9, 'ARIEL SEBASTIAN', 'PESANTEZ QUINDE', '1 egb', '0151375979', 'estudiante ', 0, 4),
(10, 'EVELYN PAMELA', 'RAMIREZ PUCHAICELA', '1 egb', '0151467149', 'estudiante ', 0, 4),
(11, 'ARIEL FRANCISO', 'RODAS QUINDE', '1 egb', '0151464617', 'estudiante ', 0, 4),
(12, 'JUAN FRANCISCO', 'RODRIGUEZ MARQUEZ', '1 egb', '0151406907', 'estudiante ', 0, 4),
(13, 'LEONARDO XAVIER', 'ANGAMARCA ROJAS', '2 egb', '0151270626', 'estudiante ', 0, 4),
(14, 'JUAN EMILIO', 'ANGAMARCA TENEMPAGUAY', '2 egb', '0107801250', 'estudiante ', 0, 4),
(15, 'ULMER ALDAHIR', 'BARAHONA SIMBA?A', '2 egb', '0151130804', 'estudiante ', 0, 4),
(16, 'ALLISON SAMANTHA', 'BARRAGAN ALVAREZ', '2 egb', '0151299492', 'estudiante ', 0, 4),
(17, 'JUAN DAVID', 'BERMEO MENA', '2 egb', '0151261559', 'estudiante ', 0, 4),
(18, 'SEBASTIAN MOHAMED', 'BERMEO MUEVECELA', '2 egb', '0152021176', 'estudiante ', 0, 4),
(19, 'JULIAN ENRIQUE', 'BRAVO BUSTAMANTE', '2 egb', '0151268067', 'estudiante ', 0, 4),
(20, 'SANTIAGO NICOLAS', 'CHAVEZ LOYOLA', '2 egb', '0151491602', 'estudiante ', 0, 4),
(21, 'ANGELA VICTORIA', 'CHOCHO CHICAIZA', '2 egb', '0151137858', 'estudiante ', 0, 4),
(22, 'MELANIE KATHERINE', 'DELGADO SANCHEZ', '2 egb', '0151237468', 'estudiante ', 0, 4),
(23, 'JINSON ARIEL', 'GUARANGO BARRETO', '2 egb', '0151128279', 'estudiante ', 0, 4),
(24, 'ERICK ALEXANDER', 'MOROCHO PE?A', '2 egb', '0151268968', 'estudiante ', 0, 4),
(25, 'KESIA GUADALUPE', 'MUNZON SUQUI', '2 egb', '0151160090', 'estudiante ', 0, 4),
(26, 'THIAGO ALESSANDRO', 'ORTIZ QUITO', '2 egb', '0151234564', 'estudiante ', 0, 4),
(27, 'AMAYA MAYTE', 'PALTAN GUAMO', '2 egb', '0151164795', 'estudiante ', 0, 4),
(28, 'CRISTOPHER ADRIAN', 'PE?ARRETA GUNCAY', '2 egb', '0151133907', 'estudiante ', 0, 4),
(29, 'JUSTIN MARCELO', 'QUITO GUACHICHULLCA', '2 egb', '0151157690', 'estudiante ', 0, 4),
(30, 'CAMILA FLORINDA', 'RODAS CABRERA', '2 egb', '0151253911', 'estudiante ', 0, 4),
(31, 'SIMONE ALEJANDRA', 'SEMPERTEGUI GARCIA', '2 egb', '0151275534', 'estudiante ', 0, 4),
(32, 'JUAN DAVID', 'SIGUENZA CEDILLO', '2 egb', '0151301694', 'estudiante ', 0, 4),
(33, 'JESUS FERNANDO', 'SIGUENZA PAREDES', '2 egb', '0151127529', 'estudiante ', 0, 4),
(34, 'DANNA ISABEL', 'SUQUINAULA ILLESCAS', '2 egb', '0151244035', 'estudiante ', 0, 4),
(35, 'CAROLINA ISABEL', 'TACURI TACURI', '2 egb', '0151271046', 'estudiante ', 0, 4),
(36, 'JOSE MARIA', 'ALVAREZ CONTRERAS', '3 egb', '0150865657', 'estudiante ', 0, 4),
(37, 'MATIAS ALEJANDRO', 'ANDRADE PE?A', '3 egb', '0150790400', 'estudiante ', 0, 4),
(38, 'CARLOS ALEXANDER', 'AVENDA?O MOLINA', '3 egb', '0150771558', 'estudiante ', 0, 4),
(39, 'BRITANY SAMANTHA', 'BERMEO ROMERO', '3 egb', '0150682763', 'estudiante ', 0, 4),
(40, 'EMILY ESTHELA', 'BUENO VILLA', '3 egb', '0150546414', 'estudiante ', 0, 4),
(41, 'CRISTOPHER JESUS', 'CHOCHO CULCAY', '3 egb', '0150812154', 'estudiante ', 0, 4),
(42, 'ANGIE MARISOL', 'GUARTAZACA GUZMAN', '3 egb', '0150787869', 'estudiante ', 0, 4),
(43, 'PABLO SEBASTIAN', 'MEJIA LANDI', '3 egb', '0150652485', 'estudiante ', 0, 4),
(44, 'MATEO DAVID', 'MOROCHO ARIAS', '3 egb', '0151339850', 'estudiante ', 0, 4),
(45, 'SEBASTIAN MATIAS', 'PACHECO CONTRERAS', '3 egb', '0150728954', 'estudiante ', 0, 4),
(46, 'ARIANA ROMINA', 'PAZMI?O PONCE', '3 egb', '0151275575', 'estudiante ', 0, 4),
(47, 'DYLAN SEBASTIAN', 'PELAEZ SOLIS', '3 egb', '0150523652', 'estudiante ', 0, 4),
(48, 'MATEO SEBASTIAN', 'PUNIN BRAVO', '3 egb', '0150626315', 'estudiante ', 0, 4),
(49, 'JAVIER ALEJANDRO', 'QUICHIMBO DOMINGUEZ', '3 egb', '0150534428', 'estudiante ', 0, 4),
(50, 'KEVIN SEBASTIAN', 'QUINDE BALAREZO', '3 egb', '0956178818', 'estudiante ', 0, 4),
(51, 'FRANCISCO JAVIER', 'QUITO TELLO', '3 egb', '0150734390', 'estudiante ', 0, 4),
(52, 'ALISON BRIGHITHE', 'SINCHI PINTADO', '3 egb', '0150821379', 'estudiante ', 0, 4),
(53, 'NAYELI SARAHI', 'VELASQUEZ GUARANGA', '3 egb', '0450218441', 'estudiante ', 0, 4),
(54, 'MELANY DANIELA', 'YUMBLA TIGRE', '3 egb', '0150900512', 'estudiante ', 0, 4),
(55, 'ELIZABETH CRISTINA', 'CHILLOGALLI BACUILIMA', '4 egb', '0150291912', 'estudiante ', 0, 4),
(56, 'MARTIN EMMANUEL', 'ELIZALDE MOLINA', '4 egb', '0107712853', 'estudiante ', 0, 4),
(57, 'BEYONCE NICOLE', 'HERRERA', '4 egb', '15611113803', 'estudiante ', 0, 4),
(58, 'JASON IAN', 'LALVAY GOMEZ', '4 egb', '0150487148', 'estudiante ', 0, 4),
(59, 'BIRGER ALEJANDRO', 'LENNSTROM PANZA', '4 egb', '0150257178', 'estudiante ', 0, 4),
(60, 'CAMILA BETSABE', 'NARVAEZ GUSQUI', '4 egb', '0150457158', 'estudiante ', 0, 4),
(61, 'JACK TAYLER', 'PARRA ORDEN', '4 egb', '0150342939', 'estudiante ', 0, 4),
(62, 'JOEL MAURICIO', 'PI?A CAGUANA', '4 egb', '0150417988', 'estudiante ', 0, 4),
(63, 'STEVEN PAUL', 'RAMIREZ PUCHAICELA', '4 egb', '0107827453', 'estudiante ', 0, 4),
(64, 'AGUSTIN FERNANDO', 'RODAS QUINDE', '4 egb', '0150414613', 'estudiante ', 0, 4),
(65, 'EDUARDO SEBASTIAN', 'TACURI TACURI', '4 egb', '0150486488', 'estudiante ', 0, 4),
(66, 'SOFIA EMILIANA', 'VELECELA LEON', '4 egb', '0150352953', 'estudiante ', 0, 4),
(67, 'SOFIA EMILIA', 'VILLA SANMARTIN', '4 egb', '0150533404', 'estudiante ', 0, 4),
(68, 'STEVEEN ALEJANDRO', 'AVILA JIMENEZ', '5 egb', '0150008381', 'estudiante ', 0, 4),
(69, 'DAVID ALEJANDRO', 'BARBECHO NAULA', '5 egb', '0150196178', 'estudiante ', 0, 4),
(70, 'HUGO HERNAN', 'BUESTAN GOMEZ', '5 egb', '1752683563', 'estudiante ', 0, 4),
(71, 'MICHAEL ISRAEL', 'CARCHI PINDO', '5 egb', '0107982423', 'estudiante ', 0, 4),
(72, 'BIANCA KATHERINE', 'CASTRO QUISPILLO', '5 egb', '0150048817', 'estudiante ', 0, 4),
(73, 'SEBASTIAN ANDRES', 'CEDE?O LLINAS', '5 egb', '0150189637', 'estudiante ', 0, 4),
(74, 'JOAQUIN ISMAEL', 'CHITACAPA VALLADARES', '5 egb', '0150092013', 'estudiante ', 0, 4),
(75, 'AARON SEBASTIAN', 'CORDOVA BALBOA', '5 egb', '3050342488', 'estudiante ', 0, 4),
(76, 'BRIANNA JAZMIN', 'CUESTA CUMBE', '5 egb', '0150107357', 'estudiante ', 0, 4),
(77, 'DOMENICA ALEJANDRA', 'ELIZALDE CONFORME', '5 egb', '0150023323', 'estudiante ', 0, 4),
(78, 'DYLAN SEBASTIAN', 'GALARZA CHUISACA', '5 egb', '0150051274', 'estudiante ', 0, 4),
(79, 'JOSE FRANCISCO', 'GUAJALA TORRES', '5 egb', '0151181526', 'estudiante ', 0, 4),
(80, 'KEVIN SEBASTIAN', 'GUTIERREZ DUCHI', '5 egb', '0107758005', 'estudiante ', 0, 4),
(81, 'ARIEL FELIPE', 'MEJIA VILLAVICENCIO', '5 egb', '0150185809', 'estudiante ', 0, 4),
(82, 'DYLAN', 'SAMANIEGO BRITO', '5 egb', '3050140700', 'estudiante ', 0, 4),
(83, 'PABLO HERNAN', 'SAMANIEGO ORTEGA', '5 egb', '0150093938', 'estudiante ', 0, 4),
(84, 'JULIAN RICARDO', 'TOSCANO CAJAS', '5 egb', '0150269504', 'estudiante ', 0, 4),
(85, 'PAMELA MICHELLE', 'VELEZ LEMA', '5 egb', '0150357085', 'estudiante ', 0, 4),
(86, 'ELKIN MATIAS', 'VI?ANZACA MU?OZ', '5 egb', '0150176758', 'estudiante ', 0, 4),
(87, 'GENESIS NOEMI', 'ZAMBRANO MEJIA', '5 egb', '0150286789', 'estudiante ', 0, 4),
(88, 'MATEO BENJAMIN', 'BUSTAN RODRIGUEZ', '6 egb', '0150000610', 'estudiante ', 0, 4),
(89, 'MARILIA VALENTINA', 'CABRERA CHAVEZ', '6 egb', '0350004503', 'estudiante ', 0, 4),
(90, 'ANNDY DAVID', 'CALDERON MENDIETA', '6 egb', '0150915320', 'estudiante ', 0, 4),
(91, 'MELANY ROMINA', 'CHIRIBOGA MU?OZ', '6 egb', '0150394351', 'estudiante ', 0, 4),
(92, 'PAULO CESAR', 'DELGADO CONTRERAS', '6 egb', '0150876092', 'estudiante ', 0, 4),
(93, 'JUSTIN STEVEN', 'HERRERA', '6 egb', 'JUSTIN', 'estudiante ', 0, 4),
(94, 'ALEXIS ARIEL', 'LLAPA QUITUISACA', '6 egb', '0107627671', 'estudiante ', 0, 4),
(95, 'JOSTIN ALEXANDER', 'LLERENA AUCAPI?A', '6 egb', '0150525103', 'estudiante ', 0, 4),
(96, 'ANTHONY SEBASTIAN', 'LOJANO PILCO', '6 egb', '0107917528', 'estudiante ', 0, 4),
(97, 'JUAN JOSUE', 'LUZURIAGA ROCANO', '6 egb', '0107927212', 'estudiante ', 0, 4),
(98, 'ANDY XAVIER', 'NAULA MOROCHO', '6 egb', '0150799591', 'estudiante ', 0, 4),
(99, 'LAINDER JAMPIER', 'NIEVES TOLEDO', '6 egb', '0150483766', 'estudiante ', 0, 4),
(100, 'NICOLAS ALEXANDER', 'PI?A CAGUANA', '6 egb', '0150637544', 'estudiante ', 0, 4),
(101, 'CAMILA DE LA NUBE', 'PINOS PINOS', '6 egb', '0150061091', 'estudiante ', 0, 4),
(102, 'AMELIA FERNANDA', 'RAMON FAREZ', '6 egb', '0150723211', 'estudiante ', 0, 4),
(103, 'PABLO FRANCISCO', 'RIVERA PI?A', '6 egb', '0150955037', 'estudiante ', 0, 4),
(104, 'JAIME ANDRES', 'SARI ESCOBAR', '6 egb', '0151204534', 'estudiante ', 0, 4),
(105, 'ESTEBAN JOSUE', 'ASMAL QUINCHE', '7 egb', '0107489023', 'estudiante ', 0, 4),
(106, 'GIULIA ANTONELLA', 'CORONEL ROSADO', '7 egb', '0150730729', 'estudiante ', 0, 4),
(107, 'JOSUE EMILIANO', 'CORONEL TENESACA', '7 egb', '0150964336', 'estudiante ', 0, 4),
(108, 'CAROLINA ESTEFANIA', 'FIGUEROA SARMIENTO', '7 egb', '0150909216', 'estudiante ', 0, 4),
(109, 'ISMAEL MAXIMILIANO', 'GUARTAZACA GUZMAN', '7 egb', '0150787844', 'estudiante ', 0, 4),
(110, 'JACK PAUL', 'GUARTAZACA SARMIENTO', '7 egb', '0150623791', 'estudiante ', 0, 4),
(111, 'KEVIN ARIEL', 'GUTAMA BARBECHO', '7 egb', '0107489825', 'estudiante ', 0, 4),
(112, 'XAVIER ANTONIO', 'MEJIA LANDI', '7 egb', '0150668481', 'estudiante ', 0, 4),
(113, 'DIEGO ESTEBAN', 'MONTALVAN CABRERA', '7 egb', '0150880003', 'estudiante ', 0, 4),
(114, 'KELLY ESTEFANIA', 'SINCHI VI?ANZACA', '7 egb', '0150296010', 'estudiante ', 0, 4),
(115, 'DAVID HERNAN', 'TORRES OVIEDO', '7 egb', '0107306391', 'estudiante ', 0, 4),
(116, 'JOEL JOSE', 'BARRERA AUCAPI?A', '8 egb', '0150715456', 'estudiante ', 0, 4),
(117, 'NAYELI BELEN', 'CHILLOGALLI BACUILIMA', '8 egb', '0150268274', 'estudiante ', 0, 4),
(118, 'MARIA GABRIELA', 'GARZON SACOTO', '8 egb', '0150859346', 'estudiante ', 0, 4),
(119, 'GABRIEL JULIAN', 'GUZMAN LLIVISACA', '8 egb', '0107547366', 'estudiante ', 0, 4),
(120, 'CAMILA ESTEFANIA', 'LANDI NAULA', '8 egb', '0350172748', 'estudiante ', 0, 4),
(121, 'SANTIAGO MARTIN', 'LUCERO JARA', '8 egb', '0150435246', 'estudiante ', 0, 4),
(122, 'BRYAM GABRIEL', 'MOLINA URGILEZ', '8 egb', '0150235638', 'estudiante ', 0, 4),
(123, 'MARLYN GABRIELA', 'MOROCHO ARIAS', '8 egb', '0107895476', 'estudiante ', 0, 4),
(124, 'JUSTIN DAEKOOM', 'ORELLANA PEREZ', '8 egb', '0150076503', 'estudiante ', 0, 4),
(125, 'JUNIOR MATIAS', 'PALTAN GUAMO', '8 egb', '0150928976', 'estudiante ', 0, 4),
(126, 'NICOLAS FERNANDO', 'TOCTO QUINDE', '8 egb', '0106929359', 'estudiante ', 0, 4),
(127, 'DENNISE DAYANNARA', 'VIVANCO PULLA', '8 egb', '0150109635', 'estudiante ', 0, 4),
(128, 'EDISON DANIEL', 'ZAMBRANO TORRES', '8 egb', '0150283398', 'estudiante ', 0, 4),
(129, 'LIZBETH JAZMIN', 'AGUAYO TENEZACA', '9 egb', '0350085213', 'estudiante ', 0, 4),
(130, 'ANTHONY JOEL', 'ANGAMARCA TENEMPAGUAY', '9 egb', '0150031292', 'estudiante ', 0, 4),
(131, 'ASHLY MICHELLE', 'AREQUIPA CHINCHAY', '9 egb', '0150056232', 'estudiante ', 0, 4),
(132, 'DIEGO JOSUE', 'CORONEL NARVAEZ', '9 egb', '0107857278', 'estudiante ', 0, 4),
(133, 'MARIA PAULA', 'GOMEZ JIMENEZ', '9 egb', '0150454429', 'estudiante ', 0, 4),
(134, 'JUSTIN DAVID', 'GUAYARA BERNAL', '9 egb', '0150080521', 'estudiante ', 0, 4),
(135, 'DENIS ESTEBAN', 'MEDINA RODRIGUEZ', '9 egb', '0150266955', 'estudiante ', 0, 4),
(136, 'EMILY DAYANNA', 'MOLINA CUENCA', '9 egb', '0954127627', 'estudiante ', 0, 4),
(137, 'GINA DAMARIS', 'MONTALVAN PEREZ', '9 egb', '0107385940', 'estudiante ', 0, 4),
(138, 'ALISSON PAULA', 'OBELENCIO GUARTAZACA', '9 egb', '1450299191', 'estudiante ', 0, 4),
(139, 'EMELY ANAHI', 'OBELENCIO GUARTAZACA', '9 egb', '1401267750', 'estudiante ', 0, 4),
(140, 'JOSEPH DENOIT', 'ORELLANA PEREZ', '9 egb', '0150075828', 'estudiante ', 0, 4),
(141, 'DAYANNA MARISOL', 'PAZMI?O CHAMORRO', '9 egb', '0107854630', 'estudiante ', 0, 4),
(142, 'VICTORIA ISABEL', 'PAZMI?O PONCE', '9 egb', '0150342392', 'estudiante ', 0, 4),
(143, 'BRITHANY ARACELY', 'PORTILLA I?IGUEZ', '9 egb', '0151044930', 'estudiante ', 0, 4),
(144, 'MAR?A DANIELA', 'PULUPA LE?N', '9 egb', '1726854381', 'estudiante ', 0, 4),
(145, 'ELVIS JOSE', 'QUICHIMBO DOMINGUEZ', '9 egb', '0106737414', 'estudiante ', 0, 4),
(146, 'CHRISTOPHER ALBERTO', 'QUITUISACA CORAISACA', '9 egb', '0106727365', 'estudiante ', 0, 4),
(147, 'MATHEW DIAMONT', 'ROLDAN JAPA', '9 egb', '0150158012', 'estudiante ', 0, 4),
(148, 'GENESIS MARCELA', 'ROMERO BALBOA', '9 egb', '0150494854', 'estudiante ', 0, 4),
(149, 'NURIA BEATRIZ', 'SAMANIEGO BRITO', '9 egb', '0151042421', 'estudiante ', 0, 4),
(150, 'MARIA CAROLINA', 'SANCHEZ TANDAZO', '9 egb', '0107940744', 'estudiante ', 0, 4),
(151, 'SERGIO ALEXANDER', 'TENESACA LLIVIZACA', '9 egb', '0151090263', 'estudiante ', 0, 4),
(152, 'ADRIAN EMILIO', 'TORRES LOPEZ', '9 egb', '0954327912', 'estudiante ', 0, 4),
(153, 'DESTINY ARIANA', 'TORRES MOLINA', '9 egb', '0106972318', 'estudiante ', 0, 4),
(154, 'DANIEL AGUSTIN', 'VELECELA LEON', '9 egb', '0150276277', 'estudiante ', 0, 4),
(155, 'MICHELLE YAMILETH', 'YASCARIBAY PALTA', '9 egb', '0107042194', 'estudiante ', 0, 4),
(156, 'ISMAEL SEBASTIAN', 'ARIAS SUCONOTA', '10 egb', '0106858376', 'estudiante ', 0, 4),
(157, 'ERIKA JAKELINE', 'ASMAL QUINCHE', '10 egb', '0107489015', 'estudiante ', 0, 4),
(158, 'ALEX SAYDD', 'BARZALLO CHUQUI', '10 egb', '0302895131', 'estudiante ', 0, 4),
(159, 'MAYTE KAROLINA', 'BERREZUETA GOMEZ', '10 egb', '0107885592', 'estudiante ', 0, 4),
(160, 'DARIO JOSUE', 'CABRERA LOZANO', '10 egb', '0107926826', 'estudiante ', 0, 4),
(161, 'BRANDON DAVID', 'CAMPOVERDE IZQUIERDO', '10 egb', '1450070394', 'estudiante ', 0, 4),
(162, 'KEYRA ROMINA', 'CARVAJAL CUMBE', '10 egb', '0107909574', 'estudiante ', 0, 4),
(163, 'CHRISTIAN XAVIER', 'CHAPA YUQUI', '10 egb', '0107144404', 'estudiante ', 0, 4),
(164, 'FRANKLIN WILLIAM', 'FAJARDO ORELLANA', '10 egb', '1728894286', 'estudiante ', 0, 4),
(165, 'SAMANTHA GUADALUPE', 'FIGUEROA SARMIENTO', '10 egb', '0150909836', 'estudiante ', 0, 4),
(166, 'STEVEN FERNANDO', 'GUAYLLASACA SEGOVIA', '10 egb', '0151220019', 'estudiante ', 0, 4),
(167, 'SARA ELIZABETH', 'GUERRERO JACOME', '10 egb', '0107900003', 'estudiante ', 0, 4),
(168, 'STALIN ADRIAN', 'INGA REINOSO', '10 egb', '0150917177', 'estudiante ', 0, 4),
(169, 'CHRISTIAN TOMAS', 'JARA DELGADO', '10 egb', '0150435253', 'estudiante ', 0, 4),
(170, 'ANGEL ALEXANDER', 'LANDI NAULA', '10 egb', '0350167102', 'estudiante ', 0, 4),
(171, 'IVAN ANDRES', 'LLIVICURA CRIOLLO', '10 egb', '0107641029', 'estudiante ', 0, 4),
(172, 'GEOVANNA ANAHI', 'MANZANO FARFAN', '10 egb', '0150875243', 'estudiante ', 0, 4),
(173, 'BRYAN LEONARDO', 'MAYANCELA PAREDES', '10 egb', '0151109709', 'estudiante ', 0, 4),
(174, 'NICOLAS ANDREE', 'MENDOZA GUZMAN', '10 egb', '0107548190', 'estudiante ', 0, 4),
(175, 'JONNATHAN MATEO', 'MOLINA TENECOTA', '10 egb', '0151191996', 'estudiante ', 0, 4),
(176, 'KEVIN ALEXANDER', 'MONTENEGRO BARROS', '10 egb', '0107944076', 'estudiante ', 0, 4),
(177, 'SANTIAGO OMAR', 'MORA LLIVISACA', '10 egb', '0107593857', 'estudiante ', 0, 4),
(178, 'FRANK DAVID', 'MU?OZ JAIGUA', '10 egb', '1729617843', 'estudiante ', 0, 4),
(179, 'CHRISTOPHER DANIEL', 'PE?A TORRES', '10 egb', '0107903353', 'estudiante ', 0, 4),
(180, 'VICTOR LEONARDO', 'PE?ARRETA GUNCAY', '10 egb', '0150316941', 'estudiante ', 0, 4),
(181, 'MARIA JOSE', 'PESANTEZ BARRETO', '10 egb', '0151143211', 'estudiante ', 0, 4),
(182, 'CHRISTOPHER JOEL', 'PIZARRO ESCARATE', '10 egb', '0106605561', 'estudiante ', 0, 4),
(183, 'MATIAS SANTIAGO', 'QUINDE BARROS', '10 egb', '0107886079', 'estudiante ', 0, 4),
(184, 'SOFIA VANESA', 'QUIZHPI BERMEO', '10 egb', '1729640746', 'estudiante ', 0, 4),
(185, 'IGNACIO ALEJANDRO', 'RAMON FAREZ', '10 egb', '0150723260', 'estudiante ', 0, 4),
(186, 'ALAN ISMAEL', 'SACAQUIRIN CUENCA', '10 egb', '0107545303', 'estudiante ', 0, 4),
(187, 'MATHEO NICOLAS', 'SANCHEZ GUZMAN', '10 egb', '0150390557', 'estudiante ', 0, 4),
(188, 'CHRISTIAN DANIEL', 'VELEZ REINOSO', '10 egb', '0150976975', 'estudiante ', 0, 4),
(189, 'TYRONE RAUL', 'ANKUASH PUGA', '1 bgu', '0107086332', 'estudiante ', 0, 4),
(190, 'DAVID SEBASTIAN', 'BERMEO CASTRO', '1 bgu', '0150650869', 'estudiante ', 0, 4),
(191, 'OSCAR SANTIAGO', 'BUSE ALVAREZ', '1 bgu', '0107526766', 'estudiante ', 0, 4),
(192, 'PEDRO JOSE', 'CAJAS RIERA', '1 bgu', '0107641821', 'estudiante ', 0, 4),
(193, 'MATHIAS', 'CALI RAMON', '1 bgu', '0106746480', 'estudiante ', 0, 4),
(194, 'JOSUE SEBASTIAN', 'CAMPOVERDE MARTINEZ', '1 bgu', '0107214603', 'estudiante ', 0, 4),
(195, 'ERICK JOSUE', 'CARMEN SUAREZ', '1 bgu', '0302363981', 'estudiante ', 0, 4),
(196, 'SOFIA CRISTINA', 'GUEVARA FIGUEROA', '1 bgu', '0106802010', 'estudiante ', 0, 4),
(197, 'MATEO EDUARDO', 'GUZMAN LLIVISACA', '1 bgu', '0107305674', 'estudiante ', 0, 4),
(198, 'DYLAN MATEO', 'LOJANO PAUTA', '1 bgu', '0107610065', 'estudiante ', 0, 4),
(199, 'JOSE ANDRES', 'MOREJON NIEVES', '1 bgu', '0150013472', 'estudiante ', 0, 4),
(200, 'SAMANTHA ESTEFANIA', 'OCAMPO VAZQUEZ', '1 bgu', '0150384055', 'estudiante ', 0, 4),
(201, 'DENNISE TATIANA', 'ORELLANA PEREZ', '1 bgu', '0150076867', 'estudiante ', 0, 4),
(202, 'ESTEBAN ANDR?S', 'PE?A TORRES', '1 bgu', '0107966517', 'estudiante ', 0, 4),
(203, 'JOSSELINE DANIELA', 'PE?ALOZA ORELLANA', '1 bgu', '0107284929', 'estudiante ', 0, 4),
(204, 'ANDREA ALEXANDRA', 'PEREZ CAJAS', '1 bgu', '0106668312', 'estudiante ', 0, 4),
(205, 'WENDY GEOVANNA', 'PULUPA LEON', '1 bgu', '1724866569', 'estudiante ', 0, 4),
(206, 'KARINA ALEXANDRA', 'QUIZHPI ALVAREZ', '1 bgu', '0107386070', 'estudiante ', 0, 4),
(207, 'DIEGO SEBASTIAN', 'ROBALINO PEREZ', '1 bgu', '0151178662', 'estudiante ', 0, 4),
(208, 'CRISTOPHER MOISES', 'ROLDAN PILLCO', '1 bgu', '0107374142', 'estudiante ', 0, 4),
(209, 'ANDREA CAROLINA', 'SANCHEZ ORELLANA', '1 bgu', '0150005460', 'estudiante ', 0, 4),
(210, 'BIANCA MICAELA', 'SANCHEZ ORELLANA', '1 bgu', '0150005502', 'estudiante ', 0, 4),
(211, 'JEAN CARLOS', 'TAPIA CABRERA', '1 bgu', '1401161359', 'estudiante ', 0, 4),
(212, 'ESTEFANO ANDRES', 'TIRIRA CUAYCAL', '1 bgu', '0150283943', 'estudiante ', 0, 4),
(213, 'VICENTE ALEJANDRO', 'VENEGAS RIERA', '1 bgu', '0105753495', 'estudiante ', 0, 4),
(214, 'CAMILA ELIZABETH', 'AGUILAR CAMAS', '2 bgu', '0302540190', 'estudiante ', 0, 4),
(215, 'JOSSELINE GUADALUPE', 'ALVAREZ LOPEZ', '2 bgu', '0107922791', 'estudiante ', 0, 4),
(216, 'ANDREA CATALINA', 'ALVEAR GUAMAN', '2 bgu', '0107836371', 'estudiante ', 0, 4),
(217, 'JUAN ANDRES', 'ANGAMARCA CASTILLO', '2 bgu', '0106458086', 'estudiante ', 0, 4),
(219, 'JOSTIN MARCELO', 'BERMEO AUCAPI?A', '2 bgu', '0105777965', 'estudiante ', 0, 4),
(220, 'MATEO TOMAS', 'BERREZUETA GOMEZ', '2 bgu', '0107331662', 'estudiante ', 0, 4),
(221, 'CRISTIAN GEOVANNY', 'CARPIO TARCAN', '2 bgu', '0150115558', 'estudiante ', 0, 4),
(222, 'ANDREA DAYANNA', 'DAVILA SIGUACHI', '2 bgu', '0105616734', 'estudiante ', 0, 4),
(223, 'CRISTOPHER GEOVANNY', 'DELGADO SANCHEZ', '2 bgu', '0107411522', 'estudiante ', 0, 4),
(224, 'MARCO ANTONIO', 'FIGUEROA SARMIENTO', '2 bgu', '0150909828', 'estudiante ', 0, 4),
(225, 'NANCY SAMANTHA', 'GARZON I?IGUEZ', '2 bgu', '0151217759', 'estudiante ', 0, 4),
(226, 'PAULA MICAELA', 'IDROVO TAPIA', '2 bgu', '0107911018', 'estudiante ', 0, 4),
(227, 'MICHAEL SMITH', 'LANDY MOROCHO', '2 bgu', '0107533630', 'estudiante ', 0, 4),
(228, 'KARLA MARIBEL', 'LOJA RODAS', '2 bgu', '0107960064', 'estudiante ', 0, 4),
(229, 'MARIA JOSE', 'LOOR ATIENCIA', '2 bgu', '2350191678', 'estudiante ', 0, 4),
(230, 'VALERIN LISBETH', 'MALDONADO MAESTRE', '2 bgu', '0107557886', 'estudiante ', 0, 4),
(231, 'STEPHANY CAROLINA', 'MENDEZ BERMEJO', '2 bgu', '0107270613', 'estudiante ', 0, 4),
(232, 'LUIS ANDRES', 'ORTIZ SIGUENCIA', '2 bgu', '0150351039', 'estudiante ', 0, 4),
(233, 'VERONICA ALEXANDRA', 'PAUTA CABRERA', '2 bgu', '3050032014', 'estudiante ', 0, 4),
(234, 'DIANA BELEN', 'PINTADO LEON', '2 bgu', '0150686558', 'estudiante ', 0, 4),
(235, 'JESSICA TATIANA', 'PIZARRO ESCARATE', '2 bgu', '0106605553', 'estudiante ', 0, 4),
(236, 'JOSSELINE ESTEFANIA', 'PUCHA LUNA', '2 bgu', '0151165305', 'estudiante ', 0, 4),
(237, 'JACQUELINE ALEXANDRA', 'PUGO GUERRERO', '2 bgu', '0106817414', 'estudiante ', 0, 4),
(238, 'MELANIE ESTEFANIA', 'PUNIN BRAVO', '2 bgu', '0107256596', 'estudiante ', 0, 4),
(239, 'MARLON ALEXANDER', 'QUITO QUITO', '2 bgu', '0107190431', 'estudiante ', 0, 4),
(240, 'GABRIEL JOAQUIN', 'QUITO TELLO', '2 bgu', '0107120024', 'estudiante ', 0, 4),
(241, 'JENNIFER NICOLE', 'RODRIGUEZ CHIMBO', '2 bgu', '0151170784', 'estudiante ', 0, 4),
(242, 'JONATHAN FERNANDO', 'SANCHEZ CORO', '2 bgu', '0106096811', 'estudiante ', 0, 4),
(243, 'JOSELYN JEANETH', 'SANGUINO CHAUCA', '2 bgu', '1005355282', 'estudiante ', 0, 4),
(244, 'DOMENICA YAMILETH', 'SAQUICELA MOGROVEJO', '2 bgu', '0106382005', 'estudiante ', 0, 4),
(245, 'JOSUE MANUEL', 'SERPA PE?AFIEL', '2 bgu', '0107403586', 'estudiante ', 0, 4),
(246, 'KARINA MICHELLE', 'SUCUZHA?AY DELEG', '2 bgu', '0151086642', 'estudiante ', 0, 4),
(247, 'JOEL JORGE', 'TIBI MU?OZ', '2 bgu', '0107909707', 'estudiante ', 0, 4),
(248, 'JUAN DAVID', 'ZAMBRANO MEDINA', '2 bgu', '0106496771', 'estudiante ', 0, 4),
(249, 'PAULINA DANIELA', 'AGUIRRE FLORES', '3 bgu_a', '0106746688', 'estudiante ', 0, 4),
(250, 'KEVIN ARTURO', 'ARMIJOS MOROCHO', '3 bgu_a', '0150148054', 'estudiante ', 0, 4),
(251, 'TABATA EMILIA', 'AYLLON PEREZ', '3 bgu_a', '0105576292', 'estudiante ', 0, 4),
(252, 'MICHAEL BRANDON', 'BARBECHO CHIMBO', '3 bgu_a', '0106746472', 'estudiante ', 0, 4),
(253, 'KATHERINE TATIANA', 'BERMEO ROMERO', '3 bgu_a', '0107980898', 'estudiante ', 0, 4),
(254, 'MARIA DE LOS ANGELES', 'BERNAL BERNAL', '3 bgu_a', '0150576890', 'estudiante ', 0, 4),
(255, 'LESLYE ALEJANDRA', 'CAJAMARCA CACERES', '3 bgu_a', '0302501853', 'estudiante ', 0, 4),
(256, 'MATHIAS JULIAN', 'CAMPOVERDE AVILEZ', '3 bgu_a', '0107413460', 'estudiante ', 0, 4),
(257, 'NATALY SILVANA', 'CARMEN SUAREZ', '3 bgu_a', '0925472730', 'estudiante ', 0, 4),
(258, 'KLEBER DAVID', 'CONTRERAS CORONEL', '3 bgu_a', '0107943854', 'estudiante ', 0, 4),
(259, 'JESSICA GABRIELA', 'CUSCO DURAZNO', '3 bgu_a', '0106982614', 'estudiante ', 0, 4),
(260, 'GABRIELA BARBARITA', 'DIAZ ROJAS', '3 bgu_a', '0150836872', 'estudiante ', 0, 4),
(261, 'DUBRAVKA MABELL', 'EICHNER CABRERA', '3 bgu_a', '0151771177', 'estudiante ', 0, 4),
(262, 'BRYAN STEVEN', 'GUACHUN GARCIA', '3 bgu_a', '0106138357', 'estudiante ', 0, 4),
(263, 'CRISTIAN DAVID', 'MEDINA GALARZA', '3 bgu_a', '0150610590', 'estudiante ', 0, 4),
(264, 'ANGELES MARIA', 'MERINO MEDINA', '3 bgu_a', '0606454452', 'estudiante ', 0, 4),
(265, 'EMILIO MATEO', 'MORENO NEIRA', '3 bgu_a', '0151191624', 'estudiante ', 0, 4),
(266, 'JUAN ALEJANDRO', 'MOROCHO PACHAR', '3 bgu_a', '0106825896', 'estudiante ', 0, 4),
(267, 'JENNY FERNANDA', 'NARVAEZ GUSQUI', '3 bgu_a', '0107967374', 'estudiante ', 0, 4),
(268, 'PAUL ALEXANDER', 'PORTILLA SARES', '3 bgu_a', '0107381907', 'estudiante ', 0, 4),
(269, 'JULIO CESAR', 'QUITO QUITO', '3 bgu_a', '0150053569', 'estudiante ', 0, 4),
(270, 'CARLOS FRANCISCO', 'SANTANA LOPEZ', '3 bgu_a', '1207589852', 'estudiante ', 0, 4),
(271, 'KEVIN ANDRES', 'SARMIENTO TUBA', '3 bgu_a', '0106759160', 'estudiante ', 0, 4),
(272, 'WILSON MATEO', 'SIGUENCIA ILLESCAS', '3 bgu_a', '0107898553', 'estudiante ', 0, 4),
(273, 'CHRISTIAN FERNANDO', 'TARQUI TENESACA', '3 bgu_a', '0107407926', 'estudiante ', 0, 4),
(274, 'PAUL ESTEBAN', 'TIGRE VASQUEZ', '3 bgu_a', '0106751100', 'estudiante ', 0, 4),
(275, 'LUIS MATEO', 'URGILES CHASI', '3 bgu_a', '0106838857', 'estudiante ', 0, 4),
(276, 'ALEJANDRO RUBEN', 'ANDRADE LLIVISACA', '3 bgu_b', '0151061942', 'estudiante ', 0, 4),
(277, 'JOHNNY PAUL', 'CABRERA SALAZAR', '3 bgu_b', '0106692577', 'estudiante ', 0, 4),
(278, 'JOSUE FRANCISCO', 'CAMPOVERDE QUEZADA', '3 bgu_b', '0107914897', 'estudiante ', 0, 4),
(279, 'SANTIAGO ISRAEL', 'CHALCO TEPAN', '3 bgu_b', '0150484863', 'estudiante ', 0, 4),
(280, 'ANA PAULA', 'CORONEL ROSADO', '3 bgu_b', '0106756000', 'estudiante ', 0, 4),
(281, 'JONATHAN BRANDO', 'CUSCO DURAZNO', '3 bgu_b', '0150589141', 'estudiante ', 0, 4),
(282, 'EMILIO JOSUE', 'DELGADO CABRERA', '3 bgu_b', '0107837031', 'estudiante ', 0, 4),
(283, 'CHRISTIAN STEVEN', 'DELGADO SUQUI', '3 bgu_b', '0106122104', 'estudiante ', 0, 4),
(284, 'DOMENICA ABIGAIL', 'ESPARZA BENAVIDES', '3 bgu_b', '0151064425', 'estudiante ', 0, 4),
(285, 'EMILY PAOLA', 'GONZALEZ JARA', '3 bgu_b', '0105874705', 'estudiante ', 0, 4),
(286, 'MARLON JOSUE', 'GUANANGA TENE', '3 bgu_b', '0107484479', 'estudiante ', 0, 4),
(287, 'MATEO DAVID', 'MOROCHO PICO', '3 bgu_b', '0107235525', 'estudiante ', 0, 4),
(288, 'TAMARA FERNANDA', 'ORELLANA NAVARRO', '3 bgu_b', '0107581175', 'estudiante ', 0, 4),
(289, 'DENNIS PAULINO', 'QUEZADA PALMA', '3 bgu_b', '0107417859', 'estudiante ', 0, 4),
(290, 'ESTEBAN HERIBERTO', 'SANCHEZ ENCALADA', '3 bgu_b', '0106316433', 'estudiante ', 0, 4),
(291, 'JAVIER STEVEN', 'SANCHEZ PERALTA', '3 bgu_b', '0106398837', 'estudiante ', 0, 4),
(292, 'CARLOS EDUARDO', 'SOLANO CHUMBI', '3 bgu_b', '0106139355', 'estudiante ', 0, 4),
(293, 'MICHAEL ALEXANDER', 'TAPIA NARANJO', '3 bgu_b', '0105872147', 'estudiante ', 0, 4),
(294, 'DOMENICA GABRIELA', 'TORRES MOLINA', '3 bgu_b', '0105994834', 'estudiante ', 0, 4),
(295, 'HENRY DARIO', 'VASQUEZ MOROCHO', '3 bgu_b', '0107341471', 'estudiante ', 0, 4),
(296, 'PAMELA ESTEFANIA', 'VIMOS GOMEZ', '3 bgu_b', '0106744006', 'estudiante ', 0, 4),
(297, 'KELLY DANIELA', 'YANZA SAETEROS', '3 bgu_b', '0107581068', 'estudiante ', 0, 4),
(298, 'MARÍA JOSÉ', 'BACUILIMA SANMARTIN', '2 bgu', '0107186496', 'estudiante', 0, 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `listas`
--
ALTER TABLE `listas`
  ADD PRIMARY KEY (`idlistas`);

--
-- Indices de la tabla `votantes`
--
ALTER TABLE `votantes`
  ADD PRIMARY KEY (`idvotantes`),
  ADD KEY `fk_votantes_listas_idx` (`listas_idlistas`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `listas`
--
ALTER TABLE `listas`
  MODIFY `idlistas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `votantes`
--
ALTER TABLE `votantes`
  MODIFY `idvotantes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=299;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `votantes`
--
ALTER TABLE `votantes`
  ADD CONSTRAINT `fk_votantes_listas` FOREIGN KEY (`listas_idlistas`) REFERENCES `listas` (`idlistas`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
