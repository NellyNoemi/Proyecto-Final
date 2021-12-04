-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-12-2021 a las 22:41:41
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_aulas_horarios`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aulas`
--

CREATE TABLE `aulas` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `ubicacion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `aulas`
--

INSERT INTO `aulas` (`id`, `descripcion`, `ubicacion`) VALUES
(1, 'Aula 408', '4to Piso'),
(2, 'Aula 406', '4to piso'),
(3, 'Aula 402', '4to piso'),
(4, 'LAB-1', '4to piso'),
(5, 'Laboratorio INTER', '4to piso'),
(6, 'Laboratorio COM', '4to piso'),
(7, 'LAB-CIDS', '4to piso'),
(8, 'LAB-SOFT', '4to piso'),
(9, 'LAB-COM', '4to piso'),
(10, 'LAB-COM', '4to piso');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_usuario`
--

CREATE TABLE `cat_usuario` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cat_usuario`
--

INSERT INTO `cat_usuario` (`id`, `descripcion`) VALUES
(1, 'administrador'),
(2, 'usuario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docente`
--

CREATE TABLE `docente` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `grado_estudio` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `docente`
--

INSERT INTO `docente` (`id`, `nombre`, `apellidos`, `grado_estudio`) VALUES
(1, 'Yolanda ', 'Escobar', 'Ing.'),
(2, 'Renan', 'Rodriguez', 'Ing.'),
(3, 'Sandra', 'Jimenez', 'Ing.'),
(4, 'Noemi', 'Moya', 'Ing.'),
(5, 'Edwin ', 'Calatayud', 'Ing.'),
(6, 'Gladis', 'Alvarez', 'Ing.'),
(7, 'Beatriz ', 'Condori', 'Ing.'),
(8, 'Elias ', 'Alvarez', 'Ing.'),
(9, 'Raul', 'Moran', 'Ing.'),
(10, 'Carmen ', 'Mamani', 'Lic.'),
(11, 'Oscar ', 'Yanique', 'Lic.'),
(12, 'Maricel ', 'Mamani', 'Ing.'),
(13, 'Freddy', 'Berdeja', 'Ing.'),
(14, 'Luisa', 'Ramos', 'Ing.'),
(15, 'Freddy', 'trujillo', 'Ing.'),
(16, 'Eusebio ', 'Vilela', 'Ing.'),
(17, 'Jaime ', 'Quisbert', 'Ing.'),
(18, 'Sergio', 'Rojas', 'Ing.'),
(19, 'Margarita', 'Lopez', 'Ing.'),
(20, 'Ruth', 'Flores', 'Ing.'),
(21, 'Edwin', 'Tintaya', 'Ing.'),
(22, 'Marisol', 'Arguedas', 'Ing.'),
(23, 'Patricia', 'Chura', 'Mg.Sc.'),
(24, 'Luis', 'Paez', 'Ing.'),
(25, 'Ramiro', 'Kantuta', 'Ing.'),
(26, 'Victor', 'Tarqui ', 'Ing.'),
(27, 'Fanny', 'Perez', 'Ing.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario`
--

CREATE TABLE `horario` (
  `id` int(11) NOT NULL,
  `gestion` varchar(50) NOT NULL,
  `turno` varchar(50) NOT NULL,
  `dia` varchar(50) NOT NULL,
  `id_horas` int(11) NOT NULL,
  `id_aula` int(11) NOT NULL,
  `id_mat_par` int(11) NOT NULL,
  `id_docente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `horario`
--

INSERT INTO `horario` (`id`, `gestion`, `turno`, `dia`, `id_horas`, `id_aula`, `id_mat_par`, `id_docente`) VALUES
(8, '1/2021', 'Manana', 'Lunes', 1, 1, 44, 2),
(9, '1/2021', 'Manana', 'Lunes', 2, 1, 44, 2),
(10, '1/2021', 'Manana', 'Martes', 1, 1, 32, 4),
(11, '1/2021', 'Manana', 'Martes', 2, 1, 32, 4),
(12, '1/2021', 'Manana', 'Lunes', 3, 1, 44, 2),
(13, '1/2021', 'Manana', 'Martes', 3, 1, 32, 4),
(14, '1/2021', 'Manana', 'Miercoles', 1, 1, 1, 3),
(15, '1/2021', 'Manana', 'Miercoles', 2, 1, 1, 3),
(16, '1/2021', 'Manana', 'Jueves', 1, 4, 45, 1),
(17, '1/2021', 'Manana', 'Jueves', 2, 4, 45, 1),
(18, '1/2021', 'Manana', 'Jueves', 3, 4, 45, 1),
(19, '1/2021', 'Manana', 'Viernes', 1, 1, 13, 5),
(20, '1/2021', 'Manana', 'Viernes', 1, 1, 45, 5),
(21, '1/2021', 'Tarde', 'Lunes', 4, 1, 33, 3),
(22, '1/2021', 'Tarde', 'Lunes', 2, 1, 33, 3),
(23, '1/2021', 'Tarde', 'Martes', 5, 5, 29, 24),
(24, '1/2021', 'Tarde', 'Martes', 4, 5, 29, 24),
(25, '1/2021', 'Tarde', 'Miercoles', 4, 1, 43, 25),
(26, '1/2021', 'Tarde', 'Jueves', 4, 1, 31, 2),
(27, '1/2021', 'Tarde', 'Jueves', 1, 1, 31, 2),
(28, '1/2021', 'Manana', 'Viernes', 4, 1, 30, 8),
(29, '1/2021', 'Tarde', 'Viernes', 4, 1, 30, 26),
(30, '1/2021', 'Tarde', 'Lunes', 5, 1, 30, 26),
(31, '1/2021', 'Manana', 'Lunes', 1, 4, 14, 20),
(32, '1/2021', 'Manana', 'Lunes', 2, 4, 14, 20),
(33, '1/2021', 'Manana', 'Martes', 1, 3, 16, 2),
(34, '1/2021', 'Manana', 'Martes', 2, 2, 16, 2),
(35, '1/2021', 'Manana', 'Miercoles', 1, 3, 67, 13),
(36, '1/2021', 'Manana', 'Miercoles', 2, 3, 67, 2),
(37, '1/2021', 'Manana', 'Jueves', 1, 3, 17, 4),
(38, '1/2021', 'Manana', 'Jueves', 2, 3, 17, 4),
(39, '1/2021', 'Manana', 'Viernes', 1, 3, 15, 10),
(40, '1/2021', 'Manana', 'Viernes', 2, 3, 17, 10),
(41, '1/2021', 'Tarde', 'Lunes', 4, 3, 37, 14),
(42, '1/2021', 'Tarde', 'Lunes', 5, 1, 37, 14),
(43, '1/2021', 'Tarde', 'Martes', 4, 3, 68, 8),
(44, '1/2021', 'Tarde', 'Martes', 5, 1, 68, 8),
(45, '1/2021', 'Tarde', 'Miercoles', 4, 3, 36, 23),
(46, '1/2021', 'Tarde', 'Miercoles', 5, 1, 36, 19),
(48, '1/2021', 'Tarde', 'Jueves', 5, 1, 34, 7),
(49, '1/2021', 'Tarde', 'Jueves', 4, 3, 34, 7),
(50, '1/2021', 'Tarde', 'Viernes', 4, 3, 35, 17),
(51, '1/2021', 'Tarde', 'Viernes', 1, 3, 35, 17),
(52, '1/2021', 'Manana', 'Lunes', 7, 5, 58, 9),
(53, '1/2021', 'Noche', 'Lunes', 8, 2, 58, 9),
(54, '1/2021', 'Noche', 'Martes', 7, 2, 59, 10),
(55, '1/2021', 'Noche', 'Martes', 8, 1, 59, 10),
(56, '1/2021', 'Noche', 'Miercoles', 7, 5, 56, 7),
(57, '1/2021', 'Noche', 'Miercoles', 8, 5, 56, 7),
(58, '1/2021', 'Noche', 'Jueves', 1, 5, 60, 11),
(59, '1/2021', 'Noche', 'Jueves', 8, 5, 60, 11),
(60, '1/2021', 'Noche', 'Viernes', 7, 3, 57, 8),
(61, '1/2021', 'Noche', 'Viernes', 8, 2, 57, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horas`
--

CREATE TABLE `horas` (
  `id` int(11) NOT NULL,
  `rango` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `horas`
--

INSERT INTO `horas` (`id`, `rango`) VALUES
(1, '08:00-09:30'),
(2, '09:30-11:00'),
(3, '11:00-12:30'),
(4, '13:30-15:00'),
(5, '15:00-16:30'),
(6, '16:30-18:00'),
(7, '18:00-19:30'),
(8, '19:30-21:00'),
(9, '21:00-22:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE `materia` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `sigla` varchar(50) NOT NULL,
  `nivel` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `materia`
--

INSERT INTO `materia` (`id`, `nombre`, `sigla`, `nivel`) VALUES
(1, 'Introducción a la programación', 'SIS_111', 1),
(2, 'Física 1', 'FIS_115', 1),
(3, 'Algebra 1', 'MAT_114', 1),
(4, 'Calculo 1', 'MAT-113', 1),
(5, 'Química', 'QMC-112', 1),
(6, 'Programación 1', 'SIS-211', 2),
(7, 'Física 2', 'FIS-215', 2),
(8, 'Algebra 2', 'MAT-214', 2),
(9, 'Calculo 2', 'MAT-213', 2),
(10, 'Programación 2', 'SIS-213', 3),
(11, 'Fisica 3', 'FIS-325', 3),
(12, 'Calculo 3', 'MAT-323', 3),
(13, 'Estadistica 1', 'EST-323', 3),
(14, 'Estructura de datos', 'ESD-323', 3),
(16, 'Base de datos 1', 'SIS-241', 4),
(17, 'Sistemas operativos', 'SIO-427', 4),
(18, 'Analisis numerico', 'ANN-423', 4),
(19, 'Electronica basica', 'ELB-426', 4),
(20, 'Estadistica II', 'EST-424', 4),
(21, 'Sistemas administrativos', 'SIA-422', 4),
(22, 'Sistemas Contables', 'SIC-212', 2),
(23, 'Base de datos II', 'SIS-531', 5),
(24, 'Analisis y diseno I', 'AND-532', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mat_par`
--

CREATE TABLE `mat_par` (
  `id` int(11) NOT NULL,
  `id_materia` int(11) NOT NULL,
  `id_paralelo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `mat_par`
--

INSERT INTO `mat_par` (`id`, `id_materia`, `id_paralelo`) VALUES
(1, 3, 1),
(9, 18, 1),
(10, 19, 1),
(11, 20, 1),
(12, 21, 1),
(13, 5, 1),
(14, 6, 1),
(15, 7, 1),
(16, 8, 1),
(17, 9, 1),
(18, 10, 1),
(19, 11, 1),
(20, 12, 1),
(21, 13, 1),
(22, 14, 1),
(23, 16, 1),
(24, 17, 1),
(25, 18, 1),
(26, 19, 2),
(27, 20, 2),
(28, 21, 2),
(29, 1, 2),
(30, 2, 2),
(31, 3, 2),
(32, 4, 1),
(33, 5, 2),
(34, 6, 2),
(35, 7, 2),
(36, 8, 2),
(37, 9, 2),
(38, 10, 2),
(39, 11, 2),
(40, 12, 2),
(41, 13, 2),
(42, 14, 2),
(43, 4, 2),
(44, 2, 1),
(45, 1, 1),
(46, 16, 2),
(47, 1, 3),
(48, 2, 3),
(49, 3, 3),
(50, 4, 3),
(51, 5, 3),
(52, 6, 3),
(53, 7, 3),
(54, 8, 3),
(55, 9, 3),
(56, 10, 3),
(57, 11, 3),
(58, 12, 3),
(59, 13, 3),
(60, 14, 3),
(61, 16, 3),
(62, 17, 3),
(63, 18, 3),
(64, 19, 3),
(65, 20, 3),
(66, 21, 3),
(67, 22, 1),
(68, 22, 2),
(69, 22, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paralelo`
--

CREATE TABLE `paralelo` (
  `id` int(11) NOT NULL,
  `nombre_paralelo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `paralelo`
--

INSERT INTO `paralelo` (`id`, `nombre_paralelo`) VALUES
(1, 'A'),
(2, 'B'),
(3, 'C'),
(4, 'D'),
(5, 'E'),
(6, 'F'),
(7, 'G');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `id_cat_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `usuario`, `password`, `id_cat_usuario`) VALUES
(1, 'nelly', 'limachi', 1),
(1, 'miguel', 'tambo', 1),
(1, 'german', 'escobar', 1),
(2, 'usuario', '123', 2),
(3, 'usuario2', '123', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `aulas`
--
ALTER TABLE `aulas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cat_usuario`
--
ALTER TABLE `cat_usuario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `docente`
--
ALTER TABLE `docente`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `horario`
--
ALTER TABLE `horario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_horas` (`id_horas`),
  ADD KEY `id_aula` (`id_aula`),
  ADD KEY `id_mat_par` (`id_mat_par`),
  ADD KEY `id_docente` (`id_docente`);

--
-- Indices de la tabla `horas`
--
ALTER TABLE `horas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `mat_par`
--
ALTER TABLE `mat_par`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_materia` (`id_materia`),
  ADD KEY `id_paralelo` (`id_paralelo`);

--
-- Indices de la tabla `paralelo`
--
ALTER TABLE `paralelo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_cat_usuario` (`id_cat_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `aulas`
--
ALTER TABLE `aulas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `cat_usuario`
--
ALTER TABLE `cat_usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `docente`
--
ALTER TABLE `docente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `horario`
--
ALTER TABLE `horario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT de la tabla `horas`
--
ALTER TABLE `horas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `materia`
--
ALTER TABLE `materia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `mat_par`
--
ALTER TABLE `mat_par`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT de la tabla `paralelo`
--
ALTER TABLE `paralelo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `horario`
--
ALTER TABLE `horario`
  ADD CONSTRAINT `horario_ibfk_1` FOREIGN KEY (`id_horas`) REFERENCES `horas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `horario_ibfk_2` FOREIGN KEY (`id_aula`) REFERENCES `aulas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `horario_ibfk_3` FOREIGN KEY (`id_mat_par`) REFERENCES `mat_par` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `horario_ibfk_4` FOREIGN KEY (`id_docente`) REFERENCES `docente` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `mat_par`
--
ALTER TABLE `mat_par`
  ADD CONSTRAINT `mat_par_ibfk_1` FOREIGN KEY (`id_materia`) REFERENCES `materia` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `mat_par_ibfk_2` FOREIGN KEY (`id_paralelo`) REFERENCES `paralelo` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`id_cat_usuario`) REFERENCES `cat_usuario` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
