-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-05-2020 a las 03:35:53
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `inventario`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `fecha`) VALUES
(1, 'USB', '2017-12-21 20:53:29'),
(2, 'Cable de datos', '2017-12-21 20:53:29'),
(3, 'UTP', '2017-12-21 20:53:29'),
(4, 'CD DVD', '2017-12-21 20:53:29'),
(5, 'CD', '2017-12-21 20:53:29'),
(6, 'AUDIFONOS', '2017-12-21 23:06:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `documento` int(11) NOT NULL,
  `email` text COLLATE utf8_spanish_ci NOT NULL,
  `telefono` text COLLATE utf8_spanish_ci NOT NULL,
  `direccion` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `compras` int(11) NOT NULL,
  `ultima_compra` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `documento`, `email`, `telefono`, `direccion`, `fecha_nacimiento`, `compras`, `ultima_compra`, `fecha`) VALUES
(3, 'Juan Villegas', 2147483647, 'juan@hotmail.com', '(300) 341-2345', 'Calle 23 # 45 - 56', '1980-11-02', 3, '2020-05-02 00:46:00', '2020-05-02 05:46:00'),
(4, 'Pedro Pérez', 2147483647, 'pedro@gmail.com', '(399) 876-5432', 'Calle 34 N33 -56', '1970-08-07', 7, '0000-00-00 00:00:00', '2020-05-02 05:46:56'),
(5, 'Miguel Murillo', 325235235, 'miguel@hotmail.com', '(254) 545-3446', 'calle 34 # 34 - 23', '1976-03-04', 32, '0000-00-00 00:00:00', '2020-05-02 05:47:36'),
(6, 'Margarita Londoño', 34565432, 'margarita@hotmail.com', '(344) 345-6678', 'Calle 45 # 34 - 56', '1976-11-30', 26, '2020-05-02 00:13:53', '2020-05-02 05:13:53'),
(7, 'Julian Ramirez', 786786545, 'julian@hotmail.com', '(675) 674-5453', 'Carrera 45 # 54 - 56', '1980-04-05', 14, '0000-00-00 00:00:00', '2020-05-02 04:59:49'),
(8, 'Stella Jaramillo', 65756735, 'stella@gmail.com', '(435) 346-3463', 'Carrera 34 # 45- 56', '1956-06-05', 11, '2020-05-02 00:49:34', '2020-05-02 05:49:34'),
(9, 'Eduardo López', 2147483647, 'eduardo@gmail.com', '(534) 634-6565', 'Carrera 67 # 45sur', '1978-03-04', 15, '0000-00-00 00:00:00', '2020-05-02 05:48:13'),
(10, 'Ximena Restrepo', 436346346, 'ximena@gmail.com', '(543) 463-4634', 'calle 45 # 23 - 45', '1956-03-04', 18, '2017-12-26 17:25:08', '2017-12-26 22:25:08'),
(11, 'David Guzman', 43634643, 'david@hotmail.com', '(354) 574-5634', 'carrera 45 # 45 ', '1967-05-04', 10, '0000-00-00 00:00:00', '2020-05-02 05:12:56'),
(12, 'Gonzalo Pérez', 436346346, 'gonzalo@yahoo.com', '(235) 346-3464', 'Carrera 34 # 56 - 34', '1967-08-09', 24, '0000-00-00 00:00:00', '2020-05-02 05:38:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `codigo` text COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  `imagen` text COLLATE utf8_spanish_ci NOT NULL,
  `stock` int(11) NOT NULL,
  `precio_compra` float NOT NULL,
  `precio_venta` float NOT NULL,
  `ventas` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `id_categoria`, `codigo`, `descripcion`, `imagen`, `stock`, `precio_compra`, `precio_venta`, `ventas`, `fecha`) VALUES
(61, 5, '10', 'CD NORMAL', 'vistas/img/productos/default/anonymous.png', 20, 980, 1029, 0, '2018-05-02 04:49:05'),
(62, 6, '5', 'AUDIFONOS', 'vistas/img/productos/default/anonymous.png', 5, 6000, 6300, 0, '2020-05-02 05:38:29'),
(63, 3, '20', 'UTP', 'vistas/img/productos/default/anonymous.png', 10, 5000, 5250, 0, '2020-05-02 05:46:56'),
(64, 6, '5', 'AUDIFONOS', 'vistas/img/productos/default/anonymous.png', 4, 6000, 6300, 2, '2020-05-02 05:46:00'),
(65, 5, '10', 'CD NORMAL', 'vistas/img/productos/default/anonymous.png', 20, 980, 1029, 0, '2020-05-02 05:48:13'),
(66, 6, '5', 'AUDIFONOS', 'vistas/img/productos/default/anonymous.png', 5, 6000, 6300, 0, '2019-07-02 05:13:13'),
(67, 5, '10', 'CD NORMAL', 'vistas/img/productos/default/anonymous.png', 22, 980, 1029, 0, '2020-05-02 05:47:36'),
(68, 3, '20', 'UTP', 'vistas/img/productos/default/anonymous.png', 9, 5000, 5250, 0, '2019-10-02 04:49:29'),
(69, 3, '20', 'UTP', 'vistas/img/productos/default/anonymous.png', 8, 5000, 5250, 4, '2020-05-02 05:49:34'),
(71, 6, '5', 'AUDIFONOS', 'vistas/img/productos/default/anonymous.png', 6, 6000, 6300, 2, '2020-05-02 05:48:13'),
(72, 6, '5', 'AUDIFONOS', 'vistas/img/productos/default/anonymous.png', 3, 6000, 6300, 2, '2020-05-02 05:49:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `usuario` text COLLATE utf8_spanish_ci NOT NULL,
  `password` text COLLATE utf8_spanish_ci NOT NULL,
  `perfil` text COLLATE utf8_spanish_ci NOT NULL,
  `foto` text COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `ultimo_login` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `usuario`, `password`, `perfil`, `foto`, `estado`, `ultimo_login`, `fecha`) VALUES
(1, 'Administrador', 'admin', '$2a$07$asxx54ahjppf45sd87a5auXBm1Vr2M1NV5t/zNQtGHGpS5fFirrbG', 'Administrador', 'vistas/img/usuarios/admin/191.jpg', 1, '2020-05-06 20:33:03', '2020-05-07 01:33:03'),
(57, 'Juan Fernando Urrego', 'juan', '$2a$07$asxx54ahjppf45sd87a5auwRi.z6UsW7kVIpm0CUEuCpmsvT2sG6O', 'Vendedor', 'vistas/img/usuarios/juan/461.jpg', 1, '2020-05-02 00:45:22', '2020-05-02 05:45:22'),
(58, 'Julio Gómez', 'julio', '$2a$07$asxx54ahjppf45sd87a5auQhldmFjGsrgUipGlmQgDAcqevQZSAAC', 'Especial', 'vistas/img/usuarios/julio/100.png', 1, '2018-02-06 17:09:22', '2019-05-25 06:06:39'),
(59, 'Ana Gonzalez', 'ana', '$2a$07$asxx54ahjppf45sd87a5auLd2AxYsA/2BbmGKNk2kMChC3oj7V0Ca', 'Vendedor', 'vistas/img/usuarios/ana/260.png', 1, '2020-05-02 00:48:57', '2020-05-02 05:48:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `productos` text COLLATE utf8_spanish_ci NOT NULL,
  `impuesto` float NOT NULL,
  `neto` float NOT NULL,
  `total` float NOT NULL,
  `metodo_pago` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `codigo`, `id_cliente`, `id_vendedor`, `productos`, `impuesto`, `neto`, `total`, `metodo_pago`, `fecha`) VALUES
(47, 10003, 6, 1, '[{\"id\":\"69\",\"descripcion\":\"UTP\",\"cantidad\":\"3\",\"stock\":\"6\",\"precio\":\"5250\",\"total\":\"15750\"},{\"id\":\"64\",\"descripcion\":\"cd dvd\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"3675\",\"total\":\"3675\"}]', 1359.75, 19425, 20784.8, 'TC-123456789', '2019-03-02 04:55:45'),
(52, 10005, 6, 1, '[{\"id\":\"72\",\"descripcion\":\"AUDIFONOS\",\"cantidad\":\"1\",\"stock\":\"4\",\"precio\":\"6300\",\"total\":\"6300\"},{\"id\":\"71\",\"descripcion\":\"AUDIFONOS\",\"cantidad\":\"2\",\"stock\":\"3\",\"precio\":\"6300\",\"total\":\"12600\"}]', 1134, 18900, 20034, 'TC-22', '2019-04-02 05:13:53'),
(56, 10009, 3, 57, '[{\"id\":\"64\",\"descripcion\":\"AUDIFONOS\",\"cantidad\":\"1\",\"stock\":\"4\",\"precio\":\"6300\",\"total\":\"6300\"}]', 315, 6300, 6615, 'TC-23', '2020-05-02 05:46:01'),
(57, 10010, 8, 59, '[{\"id\":\"72\",\"descripcion\":\"AUDIFONOS\",\"cantidad\":\"1\",\"stock\":\"3\",\"precio\":\"6300\",\"total\":\"6300\"},{\"id\":\"69\",\"descripcion\":\"UTP\",\"cantidad\":\"1\",\"stock\":\"8\",\"precio\":\"5250\",\"total\":\"5250\"}]', 577.5, 11550, 12127.5, 'TD-2365', '2020-05-02 05:49:35');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
