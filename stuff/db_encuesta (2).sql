-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2017 at 01:27 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_encuesta`
--

-- --------------------------------------------------------

--
-- Table structure for table `detalle_encuesta`
--

CREATE TABLE `detalle_encuesta` (
  `ID_DETALLE_ENCUESTA` int(11) NOT NULL,
  `RESPUESTA` varchar(45) DEFAULT NULL,
  `ENCUESTA_ID_ENCUESTA` int(11) NOT NULL,
  `PREGUNTA_ID_PREGUNTA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `detalle_encuesta`
--

INSERT INTO `detalle_encuesta` (`ID_DETALLE_ENCUESTA`, `RESPUESTA`, `ENCUESTA_ID_ENCUESTA`, `PREGUNTA_ID_PREGUNTA`) VALUES
(5, 'a', 1, 1),
(6, 'b', 1, 2),
(7, 'a', 1, 3),
(8, 'c', 1, 4),
(9, 'a', 1, 5),
(10, 'c', 1, 6),
(11, 'a', 1, 7),
(12, 'Porque los pajaros vuelan', 1, 8);

-- --------------------------------------------------------

--
-- Table structure for table `encuesta`
--

CREATE TABLE `encuesta` (
  `ID_ENCUESTA` int(11) NOT NULL,
  `HORA_DESACTIVAR` timestamp NULL DEFAULT NULL,
  `HORA_INICIO_CARGA` timestamp NULL DEFAULT NULL,
  `HORA_FIN_CARGA` timestamp NULL DEFAULT NULL,
  `FECHA_HORA_INICIO` timestamp NULL DEFAULT NULL,
  `IP_DISPOSITIVO` varchar(45) DEFAULT NULL,
  `TIPO` varchar(45) DEFAULT NULL,
  `FECHA_HORA_FIN` timestamp NULL DEFAULT NULL,
  `USUARIO_COD_TARJETA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `encuesta`
--

INSERT INTO `encuesta` (`ID_ENCUESTA`, `HORA_DESACTIVAR`, `HORA_INICIO_CARGA`, `HORA_FIN_CARGA`, `FECHA_HORA_INICIO`, `IP_DISPOSITIVO`, `TIPO`, `FECHA_HORA_FIN`, `USUARIO_COD_TARJETA`) VALUES
(1, '2017-05-13 03:00:00', '2017-05-12 03:00:00', '2017-05-12 03:00:00', '2017-05-12 03:00:00', '123.123.123.123', '1', '2017-05-12 03:00:00', 1),
(2, '2017-05-13 03:00:00', '2017-05-12 03:00:00', '2017-05-12 03:00:00', '2017-05-12 03:00:00', '123.123.123.123', '1', '2017-05-12 03:00:00', 2),
(3, '2017-05-13 03:00:00', '2017-05-12 03:00:00', '2017-05-12 03:00:00', '2017-05-12 03:00:00', '123.123.123.123', '1', '2017-05-12 03:00:00', 3),
(4, '2017-05-13 03:00:00', '2017-05-12 03:00:00', '2017-05-12 03:00:00', '2017-05-12 03:00:00', '123.123.123.123', '1', '2017-05-12 03:00:00', 4);

-- --------------------------------------------------------

--
-- Table structure for table `pregunta`
--

CREATE TABLE `pregunta` (
  `ID_PREGUNTA` int(11) NOT NULL,
  `PREGUNTA` varchar(45) DEFAULT NULL,
  `TIPO` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pregunta`
--

INSERT INTO `pregunta` (`ID_PREGUNTA`, `PREGUNTA`, `TIPO`) VALUES
(1, 'pregunta 1', 'c'),
(2, 'pregunta 2', 'c'),
(3, 'pregunta 3', 'c'),
(4, 'pregunta 4', 'c'),
(5, 'pregunta 5', 'c'),
(6, 'pregunta 6', 'c'),
(7, 'pregunta 7', 'c'),
(8, 'pregunta 8', 'a'),
(9, 'pregunta 9', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

CREATE TABLE `usuario` (
  `COD_TARJETA` int(11) NOT NULL,
  `SEXO` varchar(1) DEFAULT NULL,
  `COD_ASOC1` varchar(45) DEFAULT NULL,
  `COD_ASOC2` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usuario`
--

INSERT INTO `usuario` (`COD_TARJETA`, `SEXO`, `COD_ASOC1`, `COD_ASOC2`) VALUES
(1, 'F', 'COD1_TEST1', 'COD2_TEST1'),
(2, 'M', 'COD1_TEST2', 'COD2_TEST2'),
(3, 'F', 'COD1_TEST3', 'COD2_TEST3'),
(4, 'F', 'COD1_TEST4', 'COD2_TEST4');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detalle_encuesta`
--
ALTER TABLE `detalle_encuesta`
  ADD PRIMARY KEY (`ID_DETALLE_ENCUESTA`),
  ADD KEY `fk_DETALLE_ENCUESTA_ENCUESTA_idx` (`ENCUESTA_ID_ENCUESTA`),
  ADD KEY `fk_DETALLE_ENCUESTA_PREGUNTA1_idx` (`PREGUNTA_ID_PREGUNTA`);

--
-- Indexes for table `encuesta`
--
ALTER TABLE `encuesta`
  ADD PRIMARY KEY (`ID_ENCUESTA`),
  ADD KEY `fk_ENCUESTA_USUARIO1_idx` (`USUARIO_COD_TARJETA`);

--
-- Indexes for table `pregunta`
--
ALTER TABLE `pregunta`
  ADD PRIMARY KEY (`ID_PREGUNTA`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`COD_TARJETA`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detalle_encuesta`
--
ALTER TABLE `detalle_encuesta`
  MODIFY `ID_DETALLE_ENCUESTA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `encuesta`
--
ALTER TABLE `encuesta`
  MODIFY `ID_ENCUESTA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `pregunta`
--
ALTER TABLE `pregunta`
  MODIFY `ID_PREGUNTA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `detalle_encuesta`
--
ALTER TABLE `detalle_encuesta`
  ADD CONSTRAINT `fk_DETALLE_ENCUESTA_ENCUESTA` FOREIGN KEY (`ENCUESTA_ID_ENCUESTA`) REFERENCES `encuesta` (`ID_ENCUESTA`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_DETALLE_ENCUESTA_PREGUNTA1` FOREIGN KEY (`PREGUNTA_ID_PREGUNTA`) REFERENCES `pregunta` (`ID_PREGUNTA`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `encuesta`
--
ALTER TABLE `encuesta`
  ADD CONSTRAINT `fk_ENCUESTA_USUARIO1` FOREIGN KEY (`USUARIO_COD_TARJETA`) REFERENCES `usuario` (`COD_TARJETA`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
