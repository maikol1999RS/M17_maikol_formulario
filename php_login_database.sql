-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-11-2020 a las 08:36:04
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `php_login_database`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `email`, `password`) VALUES
(1, 'test1@email.com', '$2y$10$O6vYKMFyDSWM34FmgZ1Zt.KfyAKxXBOBCCrCTaf6vbd.Ug7GfL2.C'),
(2, 'test2@email.com', '$2y$10$SVEG5pxlnms3bod2M42tVusyf58YGOesHhjWHgl6mB5bLJYa1enBO'),
(3, 'maikol@email.com', '$2y$10$QL1eaRnH.hlF9P7mFcT5WebtRTtYKM7JkIf.tuOB1Bgm2vy/uP7G6'),
(4, 'juan@email.com', '$2y$10$wNghTD2Vw.i7FMZhzQu2HOtk.oQbYpZfvJ4UAqcsw1le79vuf3qG6'),
(5, 'ubu', '$2y$10$XzdXVoxSJd9pI9l3MF1tOutPJ.vdwWwI/0SJvmsOPc8.Xy2WrBEZq'),
(6, 'hola@mail.com', '$2y$10$iKVl8pi0bNYD9GY4eQVm..olV0L2oet38s9iXDepiFhGf3DgFjE1u'),
(7, 'hola1@mail.com', '$2y$10$5PZ/YD95zt3n3nK1yCSCUeXmCOlHcWmA1664Cj4Co0/qE./PlhMRi'),
(8, 'alex@gmail.com', '$2y$10$KHj0ToTbpRZiqWHOZEWyW.0x7zcjOcNpgCR5HOw.U364rn859x6Dm'),
(9, 'raul@mail.com', '$2y$10$i.zKeHEcmhUCdn1SvdTkr.bLSZC5VU68bj5q26vYMLnq3Xw8hKAue'),
(10, 'miputamare@gmail.com', '$2y$10$fVpRsHhY2D/SMfXwhtzBSeYZno/eVwzAaFMioso6noLAhV5PYE1Ey'),
(11, 'pepito@gmail.com', '$2y$10$FZABEhTQzfELESwblkEfgexG/qdANiCgCFlUssGFUbnT7yFPVlCqq');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
