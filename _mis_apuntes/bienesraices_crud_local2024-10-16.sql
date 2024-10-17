-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-10-2024 a las 18:02:11
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bienesraices_crud`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `propiedades`
--

CREATE TABLE `propiedades` (
  `id` int(11) NOT NULL,
  `titulo` varchar(60) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `imagen` varchar(200) DEFAULT NULL,
  `descripcion` longtext DEFAULT NULL,
  `habitaciones` int(11) DEFAULT NULL,
  `wc` int(11) DEFAULT NULL,
  `estacionamiento` int(11) DEFAULT NULL,
  `vendedorId` int(11) DEFAULT NULL,
  `creado` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `propiedades`
--

INSERT INTO `propiedades` (`id`, `titulo`, `precio`, `imagen`, `descripcion`, `habitaciones`, `wc`, `estacionamiento`, `vendedorId`, `creado`) VALUES
(67, 'Cabaña', 1331.00, 'c740f56321019253bf88a7440bd00297.jpg', 'dio consectetur at. Interdum et malesuada fames ac ante ipsum primis in faucibus.', 1, 2, 3, 1, '2021-02-05'),
(68, 'Casa Moderna', 13001091.00, 'bfaeb635ddc2c397a7d65df9bb604913.jpg', 'dio consectetur at. Interdum et malesuada fames ac ante ipsum primis in faucibus.', 3, 2, 1, 1, '2021-02-05'),
(69, 'Casa con Piscina', 130100.00, '4b3d6e2978c6da10d44d8eb1172f0e69.jpg', 'dio consectetur at. Interdum et malesuada fames ac ante ipsum primis in faucibus.', 3, 1, 2, 1, '2021-02-05'),
(70, 'Casa en Promoción', 1313.00, '95d2aabcec1beb7d2479a82ec35595f4.jpg', 'dio consectetur at. Interdum et malesuada fames ac ante ipsum primis in faucibus.', 3, 2, 1, 1, '2021-02-05'),
(72, 'Casa en el Lago', 1313.00, '413a56cb946288a3e58b34854fd6b1e4.jpg', 'dio consectetur at. Interdum et malesuada fames ac ante ipsum primis in faucibus.', 3, 2, 1, 1, '2021-02-05'),
(87, ' Nueva Propiedad (Actualizado)', 918399.00, 'f5adb48869419b0a859beeb30bd848e4.jpg', 'Probando Demo para Video Probando Demo para Video Probando Demo para Video Probando Demo para Video', 3, 3, 3, 1, '2022-07-20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  `password` char(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `email`, `password`) VALUES
(5, 'correo@correo.com', '$2y$10$qb.EdDL1jR/Jc6JGFy9fT.t054KASVYqSWeqJHknF9ETutIb1AI4W');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vendedores`
--

CREATE TABLE `vendedores` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `telefono` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `vendedores`
--

INSERT INTO `vendedores` (`id`, `nombre`, `apellido`, `telefono`) VALUES
(1, 'Juan', 'De la torre', '091390109'),
(2, 'KAREN ACT', 'Perez', '0123456789');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `propiedades`
--
ALTER TABLE `propiedades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_propiedades_vendedores` (`vendedorId`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `vendedores`
--
ALTER TABLE `vendedores`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `propiedades`
--
ALTER TABLE `propiedades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `propiedades`
--
ALTER TABLE `propiedades`
  ADD CONSTRAINT `fk_propiedades_vendedores` FOREIGN KEY (`vendedorId`) REFERENCES `vendedores` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
