-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 23-09-2024 a las 22:24:22
-- Versión del servidor: 8.3.0
-- Versión de PHP: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `buen_sabor1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo`
--

DROP TABLE IF EXISTS `articulo`;
CREATE TABLE IF NOT EXISTS `articulo` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `baja` bit(1) NOT NULL,
  `denominacion` varchar(255) DEFAULT NULL,
  `precio_venta` double DEFAULT NULL,
  `categoria_id` bigint DEFAULT NULL,
  `sucursal_id` bigint DEFAULT NULL,
  `unidad_medida_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK35xlp590328eybh2pf5ublsne` (`categoria_id`),
  KEY `FKqmk7iluj5x46yimu6dl1sbbks` (`sucursal_id`),
  KEY `FKlf2hbqm1r4qx36lkr0b4mix6b` (`unidad_medida_id`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `articulo`
--

INSERT INTO `articulo` (`id`, `baja`, `denominacion`, `precio_venta`, `categoria_id`, `sucursal_id`, `unidad_medida_id`) VALUES
(34, b'0', 'Harina', NULL, 10, 1, 1),
(35, b'0', 'Harina', NULL, 10, 2, 1),
(36, b'0', 'Leche', NULL, 11, 1, 3),
(37, b'0', 'Leche', NULL, 11, 2, 3),
(38, b'0', 'Tomate', NULL, 6, 1, 1),
(39, b'0', 'Tomate', NULL, 6, 2, 1),
(40, b'0', 'Lechuga', NULL, 6, 2, 1),
(41, b'0', 'Lechuga', NULL, 6, 1, 1),
(42, b'0', 'Pan de Hamburguesa', NULL, 10, 2, 5),
(43, b'0', 'Pan de Hamburguesa', NULL, 10, 1, 5),
(44, b'0', 'Mayonesa', NULL, 9, 1, 1),
(45, b'0', 'Mayonesa', NULL, 9, 2, 1),
(46, b'0', 'Ketchup', NULL, 9, 1, 1),
(47, b'0', 'Ketchup', NULL, 9, 2, 1),
(48, b'0', 'Pan de Pancho', NULL, 10, 2, 1),
(49, b'0', 'Pan de Pancho', NULL, 10, 1, 1),
(50, b'0', 'Salchicha', NULL, 7, 2, 5),
(51, b'0', 'Salchicha', NULL, 7, 1, 5),
(52, b'0', 'Queso', NULL, 11, 1, 1),
(53, b'0', 'Queso', NULL, 11, 2, 1),
(54, b'0', 'Papa', NULL, 6, 1, 1),
(55, b'0', 'Papa', NULL, 6, 2, 1),
(56, b'0', 'Huevo', NULL, 10, 2, 5),
(57, b'0', 'Huevo', NULL, 10, 1, 5),
(58, b'0', 'Salsa Golf', NULL, 9, 1, 1),
(59, b'0', 'Salsa Golf', NULL, 9, 2, 1),
(60, b'0', 'Carne Molida', NULL, 7, 1, 1),
(61, b'0', 'Carne Molida', NULL, 7, 2, 1),
(62, b'0', 'Carne de Lomo', NULL, 7, 2, 1),
(63, b'0', 'Carne de Lomo', NULL, 7, 1, 1),
(64, b'0', 'Levadura', NULL, 10, 2, 1),
(65, b'0', 'Levadura', NULL, 10, 1, 1),
(66, b'0', 'Salsa', NULL, 10, 2, 3),
(67, b'0', 'Salsa', NULL, 10, 1, 3),
(68, b'0', 'Muzarella', NULL, 11, 1, 1),
(69, b'0', 'Muzarella', NULL, 11, 2, 1),
(70, b'0', 'Jamon', NULL, 7, 2, 1),
(71, b'0', 'Jamon', NULL, 7, 1, 1),
(72, b'0', 'Pimiento', NULL, 6, 2, 1),
(73, b'0', 'Pimiento', NULL, 6, 1, 1),
(74, b'0', 'Anana', NULL, 6, 2, 1),
(75, b'0', 'Anana', NULL, 6, 1, 1),
(76, b'0', 'Azucar', NULL, 10, 1, 1),
(77, b'0', 'Azucar', NULL, 10, 2, 1),
(78, b'0', 'Cebolla', NULL, 6, 1, 1),
(79, b'0', 'Cebolla', NULL, 6, 2, 1),
(80, b'0', 'Sal', NULL, 10, 1, 1),
(81, b'0', 'Sal', NULL, 10, 2, 1),
(82, b'0', 'Aceite', NULL, 10, 2, 3),
(83, b'0', 'Aceite', NULL, 10, 1, 3),
(84, b'0', 'Oregano', NULL, 10, 1, 1),
(85, b'0', 'Oregano', NULL, 10, 2, 1),
(87, b'0', 'Pizza Napolitana', 800, 3, 1, 5),
(88, b'0', 'Pizza Napolitana', 800, 3, 2, 5),
(89, b'0', 'Hamburguesa Clásica', 600, 8, 2, 5),
(90, b'0', 'Hamburguesa Clásica', 600, 8, 1, 5),
(91, b'0', 'Hamburguesa Monster', 800, 8, 2, 5),
(92, b'0', 'Hamburguesa Monster', 800, 8, 1, 5),
(93, b'0', 'Hamburguesa XXL', 900, 8, 1, 5),
(94, b'0', 'Hamburguesa XXL', 900, 8, 2, 5),
(95, b'0', 'Pan de Lomo', NULL, 5, 1, 5),
(96, b'0', 'Pan de Lomo', NULL, 5, 2, 5),
(97, b'0', 'Lomo Completo', 950, 4, 1, 5),
(98, b'0', 'Lomo Completo', 950, 4, 2, 5),
(99, b'0', 'Lomo Buen Sabor', 1200, 4, 2, 5),
(100, b'0', 'Lomo Buen Sabor', 1200, 4, 1, 5),
(101, b'1', 'Hamburguesa XXLa', 600, 8, 2, 5),
(102, b'1', 'Hamburguesa XXLa', 600, 8, 1, 5),
(103, b'0', 'Pizza Tropical', 1200, 3, 1, 5),
(104, b'0', 'Pizza Tropical', 1200, 3, 2, 5),
(105, b'0', 'Pizza 4 Quesos', 1000, 3, 2, 5),
(106, b'0', 'Pizza 4 Quesos', 1000, 3, 1, 5),
(107, b'0', 'Pizza Clasica', 700, 3, 2, 5),
(108, b'0', 'Pizza Clasica', 700, 3, 1, 5),
(109, b'0', 'Pizza Especial', 800, 3, 1, 5),
(110, b'0', 'Pizza Especial', 800, 3, 2, 5),
(111, b'0', 'Papas clasicas', 400, 14, 2, 5),
(112, b'0', 'Papas clasicas', 400, 14, 1, 5),
(113, b'0', 'Papas a caballo', 500, 14, 1, 5),
(114, b'0', 'Papas a caballo', 500, 14, 2, 5),
(115, b'0', 'Coca Cola 1.25L', 700, 2, 2, 3),
(116, b'0', 'Coca Cola 1.25L', 700, 2, 1, 3),
(117, b'0', 'Coca Cola 3L', 800, 2, 2, 3),
(118, b'0', 'Coca Cola 3L', 800, 2, 1, 3),
(119, b'0', 'Villa del Sur Levite 1.25L', 600, 18, 1, 3),
(120, b'0', 'Villa del Sur Levite 1.25L', 600, 18, 2, 3),
(121, b'0', 'Villa del Sur Levite 2.25L', 725, 18, 1, 3),
(122, b'0', 'Villa del Sur Levite 2.25L', 725, 18, 2, 3),
(123, b'0', 'Villavicencio 1L', 500, 18, 1, 3),
(124, b'0', 'Villavicencio 1L', 500, 18, 2, 3),
(125, b'0', 'Pancho Simple', 400, 14, 1, 5),
(126, b'0', 'Pancho Simple', 400, 14, 2, 5),
(127, b'0', 'Pancho doble', 500, 14, 2, 5),
(128, b'0', 'Pancho doble', 500, 14, 1, 5),
(129, b'0', 'Pancho con poncho', 500, 14, 2, 5),
(130, b'0', 'Pancho con poncho', 500, 14, 1, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo_aud`
--

DROP TABLE IF EXISTS `articulo_aud`;
CREATE TABLE IF NOT EXISTS `articulo_aud` (
  `id` bigint NOT NULL,
  `rev` int NOT NULL,
  `revtype` tinyint DEFAULT NULL,
  `denominacion` varchar(255) DEFAULT NULL,
  `precio_venta` double DEFAULT NULL,
  PRIMARY KEY (`rev`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `articulo_aud`
--

INSERT INTO `articulo_aud` (`id`, `rev`, `revtype`, `denominacion`, `precio_venta`) VALUES
(1, 252, 0, 'Harina', 50),
(2, 252, 0, 'Harina', 50),
(3, 253, 0, 'Harina', 50),
(4, 253, 0, 'Harina', 50),
(5, 254, 0, 'Harina', 50),
(6, 254, 0, 'Harina', 50),
(7, 255, 0, 'Harina', 50),
(8, 255, 0, 'Harina', 50),
(9, 302, 0, 'Harina', 50),
(10, 302, 0, 'Harina', 50),
(11, 352, 0, 'Harina', 50),
(12, 352, 0, 'Harina', 50),
(13, 402, 0, 'Harina', 50),
(14, 402, 0, 'Harina', 50),
(15, 403, 0, 'Harina', 50),
(16, 403, 0, 'Harina', 50),
(17, 452, 0, 'Harina', 50),
(18, 452, 0, 'Harina', 50),
(19, 453, 0, 'Harina', 50),
(20, 453, 0, 'Harina', 50),
(21, 502, 0, 'Harina', 50),
(22, 502, 0, 'Harina', 50),
(23, 552, 0, 'Harina', 50),
(24, 552, 0, 'Harina', 50),
(26, 553, 0, 'Harina', 50),
(27, 553, 0, 'Harina', 50),
(28, 602, 0, 'Harina', 50),
(29, 602, 0, 'Harina', 50),
(30, 652, 0, 'Harina', 50),
(31, 652, 0, 'Harina', 50),
(32, 702, 0, 'Harina', 50),
(33, 702, 0, 'Harina', 50),
(34, 752, 0, 'Harina', 50),
(35, 752, 0, 'Harina', 50),
(36, 753, 0, 'Leche', 50),
(37, 753, 0, 'Leche', 50),
(38, 802, 0, 'Tomate', 5),
(39, 802, 0, 'Tomate', 5),
(40, 803, 0, 'Lechuga', 5),
(41, 803, 0, 'Lechuga', 5),
(42, 804, 0, 'Pan de Hamburguesa', NULL),
(43, 804, 0, 'Pan de Hamburguesa', NULL),
(44, 805, 0, 'Mayonesa', NULL),
(45, 805, 0, 'Mayonesa', NULL),
(46, 806, 0, 'Ketchup', NULL),
(47, 806, 0, 'Ketchup', NULL),
(48, 807, 0, 'Pan de Pancho', NULL),
(49, 807, 0, 'Pan de Pancho', NULL),
(50, 808, 0, 'Salchicha', NULL),
(51, 808, 0, 'Salchicha', NULL),
(52, 809, 0, 'Queso', NULL),
(53, 809, 0, 'Queso', NULL),
(54, 810, 0, 'Papa', NULL),
(55, 810, 0, 'Papa', NULL),
(56, 811, 0, 'Huevo', NULL),
(57, 811, 0, 'Huevo', NULL),
(58, 812, 0, 'Salsa Golf', NULL),
(59, 812, 0, 'Salsa Golf', NULL),
(60, 813, 0, 'Carne Molida', NULL),
(61, 813, 0, 'Carne Molida', NULL),
(62, 814, 0, 'Carne de Lomo', NULL),
(63, 814, 0, 'Carne de Lomo', NULL),
(64, 815, 0, 'Levadura', NULL),
(65, 815, 0, 'Levadura', NULL),
(66, 816, 0, 'Salsa', NULL),
(67, 816, 0, 'Salsa', NULL),
(68, 817, 0, 'Muzarella', NULL),
(69, 817, 0, 'Muzarella', NULL),
(70, 818, 0, 'Jamon', NULL),
(71, 818, 0, 'Jamon', NULL),
(72, 819, 0, 'Pimiento', NULL),
(73, 819, 0, 'Pimiento', NULL),
(74, 820, 0, 'Anana', NULL),
(75, 820, 0, 'Anana', NULL),
(76, 821, 0, 'Azucar', NULL),
(77, 821, 0, 'Azucar', NULL),
(78, 822, 0, 'Cebolla', NULL),
(79, 822, 0, 'Cebolla', NULL),
(80, 823, 0, 'Sal', NULL),
(81, 823, 0, 'Sal', NULL),
(82, 824, 0, 'Aceite', NULL),
(83, 824, 0, 'Aceite', NULL),
(84, 825, 0, 'Oregano', NULL),
(85, 825, 0, 'Oregano', NULL),
(87, 852, 0, 'Pizza Napolitana', 800),
(88, 853, 0, 'Pizza Napolitana', 800),
(89, 854, 0, 'Hamburguesa Clásica', 600),
(90, 854, 0, 'Hamburguesa Clásica', 600),
(91, 855, 0, 'Hamburguesa Monster', 600),
(92, 855, 0, 'Hamburguesa Monster', 600),
(93, 856, 0, 'Hamburguesa XXL', 600),
(94, 856, 0, 'Hamburguesa XXL', 600),
(97, 902, 0, 'Lomo Completo', 950),
(98, 902, 0, 'Lomo Completo', 950),
(99, 903, 0, 'Lomo Buen Sabor', 1200),
(100, 903, 0, 'Lomo Buen Sabor', 1200),
(101, 952, 0, 'Hamburguesa XXLa', 600),
(102, 952, 0, 'Hamburguesa XXLa', 600),
(103, 953, 0, 'Pizza Tropical', 1200),
(104, 953, 0, 'Pizza Tropical', 1200),
(105, 954, 0, 'Pizza 4 Quesos', 1000),
(106, 954, 0, 'Pizza 4 Quesos', 1000),
(107, 955, 0, 'Pizza Clasica', 700),
(108, 955, 0, 'Pizza Clasica', 700),
(109, 956, 0, 'Pizza Especial', 800),
(110, 956, 0, 'Pizza Especial', 800),
(111, 957, 0, 'Papas clasicas', 400),
(112, 957, 0, 'Papas clasicas', 400),
(113, 958, 0, 'Papas a caballo', 400),
(114, 958, 0, 'Papas a caballo', 400),
(115, 959, 0, 'Coca Cola 1.25L', NULL),
(116, 959, 0, 'Coca Cola 1.25L', NULL),
(117, 960, 0, 'Coca Cola 3L', NULL),
(118, 960, 0, 'Coca Cola 3L', NULL),
(119, 961, 0, 'Villa del Sur Levite 1.25L', NULL),
(120, 961, 0, 'Villa del Sur Levite 1.25L', NULL),
(121, 962, 0, 'Villa del Sur Levite 2.25L', NULL),
(122, 962, 0, 'Villa del Sur Levite 2.25L', NULL),
(123, 963, 0, 'Villavicencio 1L', NULL),
(124, 963, 0, 'Villavicencio 1L', NULL),
(125, 964, 0, 'Pancho Simple', 400),
(126, 964, 0, 'Pancho Simple', 400),
(127, 965, 0, 'Pancho doble', 500),
(128, 965, 0, 'Pancho doble', 500),
(129, 966, 0, 'Pancho con poncho', 500),
(130, 966, 0, 'Pancho con poncho', 500);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo_imagen`
--

DROP TABLE IF EXISTS `articulo_imagen`;
CREATE TABLE IF NOT EXISTS `articulo_imagen` (
  `articulo_id` bigint NOT NULL,
  `imagen_id` bigint NOT NULL,
  PRIMARY KEY (`articulo_id`,`imagen_id`),
  KEY `FK6a3uncakp0k7gb7j5eg7pg62r` (`imagen_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo_imagen_aud`
--

DROP TABLE IF EXISTS `articulo_imagen_aud`;
CREATE TABLE IF NOT EXISTS `articulo_imagen_aud` (
  `rev` int NOT NULL,
  `articulo_id` bigint NOT NULL,
  `imagen_id` bigint NOT NULL,
  `revtype` tinyint DEFAULT NULL,
  PRIMARY KEY (`articulo_id`,`rev`,`imagen_id`),
  KEY `FKct785p3kuefs4qtpi751i3169` (`rev`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo_insumo`
--

DROP TABLE IF EXISTS `articulo_insumo`;
CREATE TABLE IF NOT EXISTS `articulo_insumo` (
  `id` bigint NOT NULL,
  `es_para_elaborar` bit(1) DEFAULT NULL,
  `precio_compra` double DEFAULT NULL,
  `stock_actual` double DEFAULT NULL,
  `stock_maximo` int DEFAULT NULL,
  `stock_minimo` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `articulo_insumo`
--

INSERT INTO `articulo_insumo` (`id`, `es_para_elaborar`, `precio_compra`, `stock_actual`, `stock_maximo`, `stock_minimo`) VALUES
(34, b'1', 45, 100, 200, 20),
(35, b'1', 45, 100, 200, 20),
(36, b'1', 60, 1000, 2000, 20),
(37, b'1', 60, 555, 2000, 20),
(38, b'1', 3, 500, 3000, 30),
(39, b'1', 3, 500, 3000, 30),
(40, b'1', 3, 600, 1000, 40),
(41, b'1', 3, 600, 1000, 40),
(42, b'1', 40, 90, 1000, 10),
(43, b'1', 40, 90, 1000, 10),
(44, b'1', 30, 900, 1000, 100),
(45, b'1', 30, 900, 1000, 100),
(46, b'1', 31, 800, 1000, 100),
(47, b'1', 31, 800, 1000, 100),
(48, b'1', 10, 100, 800, 40),
(49, b'1', 10, 100, 800, 40),
(50, b'1', 8, 400, 500, 80),
(51, b'1', 8, 400, 500, 80),
(52, b'1', 15, 80, 600, 10),
(53, b'1', 15, 80, 600, 10),
(54, b'1', 9, 50, 200, 5),
(55, b'1', 9, 50, 200, 5),
(56, b'1', 10, 64, 500, 10),
(57, b'1', 10, 64, 500, 10),
(58, b'1', 24, 90, 200, 5),
(59, b'1', 24, 90, 200, 5),
(60, b'1', 50, 500, 2000, 10),
(61, b'1', 50, 500, 2000, 10),
(62, b'1', 10, 100, 2000, 10),
(63, b'1', 10, 100, 2000, 10),
(64, b'1', 5, 10, 50, 1),
(65, b'1', 5, 10, 50, 1),
(66, b'1', 13, 100, 200, 10),
(67, b'1', 13, 100, 200, 10),
(68, b'1', 20, 100, 200, 10),
(69, b'1', 20, 100, 200, 10),
(70, b'1', 15, 100, 300, 5),
(71, b'1', 15, 100, 300, 5),
(72, b'1', 16, 50, 200, 5),
(73, b'1', 16, 50, 200, 5),
(74, b'1', 35, 30, 100, 1),
(75, b'1', 35, 30, 100, 1),
(76, b'1', 22, 10, 50, 1),
(77, b'1', 22, 10, 50, 1),
(78, b'1', 9, 50, 100, 1),
(79, b'1', 9, 50, 100, 1),
(80, b'1', 10, 30, 100, 1),
(81, b'1', 10, 30, 100, 1),
(82, b'1', 16, 20, 80, 1),
(83, b'1', 16, 20, 80, 1),
(84, b'1', 6, 10, 50, 1),
(85, b'1', 6, 10, 50, 1),
(95, b'1', 100, 300, 1000, 10),
(96, b'0', 100, 300, 1000, 10),
(115, b'0', 6, 50, 50, 1),
(116, b'0', 6, 50, 50, 1),
(117, b'0', 10, 20, 30, 1),
(118, b'0', 10, 20, 30, 1),
(119, b'0', 5, 20, 40, 1),
(120, b'0', 5, 20, 40, 1),
(121, b'0', 7, 20, 40, 1),
(122, b'0', 7, 20, 40, 1),
(123, b'0', 2, 15, 50, 1),
(124, b'0', 2, 15, 50, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo_insumo_aud`
--

DROP TABLE IF EXISTS `articulo_insumo_aud`;
CREATE TABLE IF NOT EXISTS `articulo_insumo_aud` (
  `id` bigint NOT NULL,
  `rev` int NOT NULL,
  `es_para_elaborar` bit(1) DEFAULT NULL,
  `precio_compra` double DEFAULT NULL,
  `stock_actual` double DEFAULT NULL,
  `stock_maximo` int DEFAULT NULL,
  `stock_minimo` int DEFAULT NULL,
  PRIMARY KEY (`rev`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `articulo_insumo_aud`
--

INSERT INTO `articulo_insumo_aud` (`id`, `rev`, `es_para_elaborar`, `precio_compra`, `stock_actual`, `stock_maximo`, `stock_minimo`) VALUES
(1, 252, b'1', 45, 100, 200, 20),
(2, 252, b'1', 45, 100, 200, 20),
(3, 253, b'1', 45, 100, 200, 20),
(4, 253, b'1', 45, 100, 200, 20),
(5, 254, b'1', 45, 100, 200, 20),
(6, 254, b'1', 45, 100, 200, 20),
(7, 255, b'1', 45, 100, 200, 20),
(8, 255, b'1', 45, 100, 200, 20),
(9, 302, b'1', 45, 100, 200, 20),
(10, 302, b'1', 45, 100, 200, 20),
(11, 352, b'1', 45, 100, 200, 20),
(12, 352, b'1', 45, 100, 200, 20),
(13, 402, b'1', 45, 100, 200, 20),
(14, 402, b'1', 45, 100, 200, 20),
(15, 403, b'1', 45, 100, 200, 20),
(16, 403, b'1', 45, 100, 200, 20),
(17, 452, b'1', 45, 100, 200, 20),
(18, 452, b'1', 45, 100, 200, 20),
(19, 453, b'1', 45, 100, 200, 20),
(20, 453, b'1', 45, 100, 200, 20),
(21, 502, b'1', 45, 100, 200, 20),
(22, 502, b'1', 45, 100, 200, 20),
(23, 552, b'1', 45, 100, 200, 20),
(24, 552, b'1', 45, 100, 200, 20),
(26, 553, b'1', 45, 100, 200, 20),
(27, 553, b'1', 45, 100, 200, 20),
(28, 602, b'1', 45, 100, 200, 20),
(29, 602, b'1', 45, 100, 200, 20),
(30, 652, b'1', 45, 100, 200, 20),
(31, 652, b'1', 45, 100, 200, 20),
(32, 702, b'1', 45, 100, 200, 20),
(33, 702, b'1', 45, 100, 200, 20),
(34, 752, b'1', 45, 100, 200, 20),
(35, 752, b'1', 45, 100, 200, 20),
(36, 753, b'1', 45, 100, 200, 20),
(37, 753, b'1', 45, 100, 200, 20),
(38, 802, b'1', 3, 500, 3000, 30),
(39, 802, b'1', 3, 500, 3000, 30),
(40, 803, b'1', 3, 600, 1000, 40),
(41, 803, b'1', 3, 600, 1000, 40),
(42, 804, b'1', 40, 90, 1000, 10),
(43, 804, b'1', 40, 90, 1000, 10),
(44, 805, b'1', 30, 900, 1000, 100),
(45, 805, b'1', 30, 900, 1000, 100),
(46, 806, b'1', 31, 800, 1000, 100),
(47, 806, b'1', 31, 800, 1000, 100),
(48, 807, b'1', 10, 100, 800, 40),
(49, 807, b'1', 10, 100, 800, 40),
(50, 808, b'1', 8, 400, 500, 80),
(51, 808, b'1', 8, 400, 500, 80),
(52, 809, b'1', 15, 80, 600, 10),
(53, 809, b'1', 15, 80, 600, 10),
(54, 810, b'1', 9, 50, 200, 5),
(55, 810, b'1', 9, 50, 200, 5),
(56, 811, b'1', 10, 64, 500, 10),
(57, 811, b'1', 10, 64, 500, 10),
(58, 812, b'1', 24, 90, 200, 5),
(59, 812, b'1', 24, 90, 200, 5),
(60, 813, b'1', 50, 500, 2000, 10),
(61, 813, b'1', 50, 500, 2000, 10),
(62, 814, b'1', 10, 100, 2000, 10),
(63, 814, b'1', 10, 100, 2000, 10),
(64, 815, b'1', 5, 10, 50, 1),
(65, 815, b'1', 5, 10, 50, 1),
(66, 816, b'1', 13, 100, 200, 10),
(67, 816, b'1', 13, 100, 200, 10),
(68, 817, b'1', 20, 100, 200, 10),
(69, 817, b'1', 20, 100, 200, 10),
(70, 818, b'1', 15, 100, 300, 5),
(71, 818, b'1', 15, 100, 300, 5),
(72, 819, b'1', 16, 50, 200, 5),
(73, 819, b'1', 16, 50, 200, 5),
(74, 820, b'1', 35, 30, 100, 1),
(75, 820, b'1', 35, 30, 100, 1),
(76, 821, b'1', 22, 10, 50, 1),
(77, 821, b'1', 22, 10, 50, 1),
(78, 822, b'1', 9, 50, 100, 1),
(79, 822, b'1', 9, 50, 100, 1),
(80, 823, b'1', 10, 30, 100, 1),
(81, 823, b'1', 10, 30, 100, 1),
(82, 824, b'1', 16, 20, 80, 1),
(83, 824, b'1', 16, 20, 80, 1),
(84, 825, b'1', 6, 10, 50, 1),
(85, 825, b'1', 6, 10, 50, 1),
(115, 959, b'0', 6, 50, 50, 1),
(116, 959, b'0', 6, 50, 50, 1),
(117, 960, b'0', 10, 20, 30, 1),
(118, 960, b'0', 10, 20, 30, 1),
(119, 961, b'0', 5, 20, 40, 1),
(120, 961, b'0', 5, 20, 40, 1),
(121, 962, b'0', 7, 20, 40, 1),
(122, 962, b'0', 7, 20, 40, 1),
(123, 963, b'0', 2, 15, 50, 1),
(124, 963, b'0', 2, 15, 50, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo_manufacturado`
--

DROP TABLE IF EXISTS `articulo_manufacturado`;
CREATE TABLE IF NOT EXISTS `articulo_manufacturado` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) DEFAULT NULL,
  `preparacion` varchar(255) DEFAULT NULL,
  `tiempo_estimado_minutos` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `articulo_manufacturado`
--

INSERT INTO `articulo_manufacturado` (`id`, `descripcion`, `preparacion`, `tiempo_estimado_minutos`) VALUES
(87, 'Pizza con salsa de tomate, mozzarella y albahaca fresca.', 'Hornear a 250°C por 10 minutos.', 30),
(88, 'Pizza con salsa de tomate, mozzarella y albahaca fresca.', 'Hornear a 250°C por 10 minutos.', 30),
(89, 'Hamburguesa de carne vacuna con queso cheddar, lechuga, tomate y mayonesa.', 'Cocinar la hamburguesa a la plancha por 5 minutos de cada lado.', 15),
(90, 'Hamburguesa de carne vacuna con queso cheddar, lechuga, tomate y mayonesa.', 'Cocinar la hamburguesa a la plancha por 5 minutos de cada lado.', 15),
(91, 'Hamburguesa de carne vacuna con queso cheddar, lechuga, tomate, mayonesa, ketchup, cebolla y huevo.', 'Cocinar la hamburguesa a la plancha por 5 minutos de cada lado.', 15),
(92, 'Hamburguesa de carne vacuna con queso cheddar, lechuga, tomate, mayonesa, ketchup, cebolla y huevo.', 'Cocinar la hamburguesa a la plancha por 5 minutos de cada lado.', 15),
(93, 'Hamburguesa de carne vacuna con doble carne, queso cheddar, lechuga, tomate, mayonesa, ketchup, cebolla, jamon y huevo.', 'Cocinar la hamburguesa a la plancha por 5 minutos de cada lado.', 15),
(94, 'Hamburguesa de carne vacuna con doble carne, queso cheddar, lechuga, tomate, mayonesa, ketchup, cebolla, jamon y huevo.', 'Cocinar la hamburguesa a la plancha por 5 minutos de cada lado.', 15),
(97, 'Lomo de carne vacuna con jamón, queso, lechuga, tomate y mayonesa.', 'Cocinar el lomo a la plancha por 10 minutos.', 20),
(98, 'Lomo de carne vacuna con jamón, queso, lechuga, tomate y mayonesa.', 'Cocinar el lomo a la plancha por 10 minutos.', 20),
(99, 'Lomo de carne vacuna con jamón, queso, lechuga, tomate y mayonesa.', 'Cocinar el lomo a la plancha por 20 minutos.', 30),
(100, 'Lomo de carne vacuna con jamón, queso, lechuga, tomate y mayonesa.', 'Cocinar el lomo a la plancha por 20 minutos.', 30),
(101, 'Hamburguesa de carne vacuna con doble carne, queso cheddar, lechuga, tomate, mayonesa, ketchup, cebolla, jamon y huevo.', 'Cocinar la hamburguesa a la plancha por 5 minutos de cada lado.', 15),
(102, 'Hamburguesa de carne vacuna con doble carne, queso cheddar, lechuga, tomate, mayonesa, ketchup, cebolla, jamon y huevo.', 'Cocinar la hamburguesa a la plancha por 5 minutos de cada lado.', 15),
(103, 'Pizza con anana y azucar.', 'Hornear a 180° durante 15 minutos.', 15),
(104, 'Pizza con anana y azucar.', 'Hornear a 180° durante 15 minutos.', 15),
(105, 'Pizza con queso Gruyere, muzarella, roquefort, y barra', 'Hornear a 180° durante 15 minutos.', 15),
(106, 'Pizza con queso Gruyere, muzarella, roquefort, y barra', 'Hornear a 180° durante 15 minutos.', 15),
(107, 'Pizza con Muzarella y oregano', 'Hornear a 180° durante 15 minutos.', 15),
(108, 'Pizza con Muzarella y oregano', 'Hornear a 180° durante 15 minutos.', 15),
(109, 'Pizza con Muzarella, jamon y morron', 'Hornear a 180° durante 15 minutos.', 15),
(110, 'Pizza con Muzarella, jamon y morron', 'Hornear a 180° durante 15 minutos.', 15),
(111, 'Papas cortadas en baston y fritadas en aceite', 'Freir en abundante aceite por 15 minutos. Agregar poca sal', 15),
(112, 'Papas cortadas en baston y fritadas en aceite', 'Freir en abundante aceite por 15 minutos. Agregar poca sal', 15),
(113, 'Papas cortadas en baston y fritadas en aceite. Huevo Frito por encima', 'Freir en abundante aceite por 15 minutos.Freir un huevo y colocarlo encima de las papas.', 15),
(114, 'Papas cortadas en baston y fritadas en aceite. Huevo Frito por encima', 'Freir en abundante aceite por 15 minutos.Freir un huevo y colocarlo encima de las papas.', 15),
(125, 'Pancho normal con aderezos.', 'Agregar aderezos al pancho.', 10),
(126, 'Pancho normal con aderezos.', 'Agregar aderezos al pancho.', 10),
(127, 'Pancho doble salchicha con aderezos.', 'Preparar con 2 salchichas. Agregar aderezos al pancho.', 10),
(128, 'Pancho doble salchicha con aderezos.', 'Preparar con 2 salchichas. Agregar aderezos al pancho.', 10),
(129, 'Pancho con jamon y queso con aderezos.', 'Preparar con jamon y queso encima. Agregar aderezos al pancho.', 10),
(130, 'Pancho con jamon y queso con aderezos.', 'Preparar con jamon y queso encima. Agregar aderezos al pancho.', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo_manufacturado_aud`
--

DROP TABLE IF EXISTS `articulo_manufacturado_aud`;
CREATE TABLE IF NOT EXISTS `articulo_manufacturado_aud` (
  `id` bigint NOT NULL,
  `rev` int NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `preparacion` varchar(255) DEFAULT NULL,
  `tiempo_estimado_minutos` int DEFAULT NULL,
  PRIMARY KEY (`rev`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `articulo_manufacturado_aud`
--

INSERT INTO `articulo_manufacturado_aud` (`id`, `rev`, `descripcion`, `preparacion`, `tiempo_estimado_minutos`) VALUES
(87, 852, 'Pizza con salsa de tomate, mozzarella y albahaca fresca.', 'Hornear a 250°C por 10 minutos.', 30),
(88, 853, 'Pizza con salsa de tomate, mozzarella y albahaca fresca.', 'Hornear a 250°C por 10 minutos.', 30),
(89, 854, 'Hamburguesa de carne vacuna con queso cheddar, lechuga, tomate y mayonesa.', 'Cocinar la hamburguesa a la plancha por 5 minutos de cada lado.', 15),
(90, 854, 'Hamburguesa de carne vacuna con queso cheddar, lechuga, tomate y mayonesa.', 'Cocinar la hamburguesa a la plancha por 5 minutos de cada lado.', 15),
(91, 855, 'Hamburguesa de carne vacuna con queso cheddar, lechuga, tomate, mayonesa, ketchup, cebolla y huevo.', 'Cocinar la hamburguesa a la plancha por 5 minutos de cada lado.', 15),
(92, 855, 'Hamburguesa de carne vacuna con queso cheddar, lechuga, tomate, mayonesa, ketchup, cebolla y huevo.', 'Cocinar la hamburguesa a la plancha por 5 minutos de cada lado.', 15),
(93, 856, 'Hamburguesa de carne vacuna con doble carne, queso cheddar, lechuga, tomate, mayonesa, ketchup, cebolla, jamon y huevo.', 'Cocinar la hamburguesa a la plancha por 5 minutos de cada lado.', 15),
(94, 856, 'Hamburguesa de carne vacuna con doble carne, queso cheddar, lechuga, tomate, mayonesa, ketchup, cebolla, jamon y huevo.', 'Cocinar la hamburguesa a la plancha por 5 minutos de cada lado.', 15),
(97, 902, 'Lomo de carne vacuna con jamón, queso, lechuga, tomate y mayonesa.', 'Cocinar el lomo a la plancha por 10 minutos.', 20),
(98, 902, 'Lomo de carne vacuna con jamón, queso, lechuga, tomate y mayonesa.', 'Cocinar el lomo a la plancha por 10 minutos.', 20),
(99, 903, 'Lomo de carne vacuna con jamón, queso, lechuga, tomate y mayonesa.', 'Cocinar el lomo a la plancha por 20 minutos.', 30),
(100, 903, 'Lomo de carne vacuna con jamón, queso, lechuga, tomate y mayonesa.', 'Cocinar el lomo a la plancha por 20 minutos.', 30),
(101, 952, 'Hamburguesa de carne vacuna con doble carne, queso cheddar, lechuga, tomate, mayonesa, ketchup, cebolla, jamon y huevo.', 'Cocinar la hamburguesa a la plancha por 5 minutos de cada lado.', 15),
(102, 952, 'Hamburguesa de carne vacuna con doble carne, queso cheddar, lechuga, tomate, mayonesa, ketchup, cebolla, jamon y huevo.', 'Cocinar la hamburguesa a la plancha por 5 minutos de cada lado.', 15),
(103, 953, 'Pizza con anana y azucar.', 'Hornear a 180° durante 15 minutos.', 15),
(104, 953, 'Pizza con anana y azucar.', 'Hornear a 180° durante 15 minutos.', 15),
(105, 954, 'Pizza con queso Gruyere, muzarella, roquefort, y barra', 'Hornear a 180° durante 15 minutos.', 15),
(106, 954, 'Pizza con queso Gruyere, muzarella, roquefort, y barra', 'Hornear a 180° durante 15 minutos.', 15),
(107, 955, 'Pizza con Muzarella y oregano', 'Hornear a 180° durante 15 minutos.', 15),
(108, 955, 'Pizza con Muzarella y oregano', 'Hornear a 180° durante 15 minutos.', 15),
(109, 956, 'Pizza con Muzarella, jamon y morron', 'Hornear a 180° durante 15 minutos.', 15),
(110, 956, 'Pizza con Muzarella, jamon y morron', 'Hornear a 180° durante 15 minutos.', 15),
(111, 957, 'Papas cortadas en baston y fritadas en aceite', 'Freir en abundante aceite por 15 minutos. Agregar poca sal', 15),
(112, 957, 'Papas cortadas en baston y fritadas en aceite', 'Freir en abundante aceite por 15 minutos. Agregar poca sal', 15),
(113, 958, 'Papas cortadas en baston y fritadas en aceite. Huevo Frito por encima', 'Freir en abundante aceite por 15 minutos.Freir un huevo y colocarlo encima de las papas.', 15),
(114, 958, 'Papas cortadas en baston y fritadas en aceite. Huevo Frito por encima', 'Freir en abundante aceite por 15 minutos.Freir un huevo y colocarlo encima de las papas.', 15),
(125, 964, 'Pancho normal con aderezos.', 'Agregar aderezos al pancho.', 10),
(126, 964, 'Pancho normal con aderezos.', 'Agregar aderezos al pancho.', 10),
(127, 965, 'Pancho doble salchicha con aderezos.', 'Preparar con 2 salchichas. Agregar aderezos al pancho.', 10),
(128, 965, 'Pancho doble salchicha con aderezos.', 'Preparar con 2 salchichas. Agregar aderezos al pancho.', 10),
(129, 966, 'Pancho con jamon y queso con aderezos.', 'Preparar con jamon y queso encima. Agregar aderezos al pancho.', 10),
(130, 966, 'Pancho con jamon y queso con aderezos.', 'Preparar con jamon y queso encima. Agregar aderezos al pancho.', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo_manufacturado_detalle`
--

DROP TABLE IF EXISTS `articulo_manufacturado_detalle`;
CREATE TABLE IF NOT EXISTS `articulo_manufacturado_detalle` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `cantidad` double DEFAULT NULL,
  `articulo_insumo_id` bigint DEFAULT NULL,
  `baja` bit(1) NOT NULL,
  `articulo_manufacturado_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKee8sad16ogk7in2nlh0vc3y9b` (`articulo_insumo_id`),
  KEY `FKcwnptwtrvdenu9tetlffab6dp` (`articulo_manufacturado_id`)
) ENGINE=InnoDB AUTO_INCREMENT=189 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `articulo_manufacturado_detalle`
--

INSERT INTO `articulo_manufacturado_detalle` (`id`, `cantidad`, `articulo_insumo_id`, `baja`, `articulo_manufacturado_id`) VALUES
(1, 0.5, 34, b'0', 87),
(2, 0.3, 68, b'0', 87),
(3, 0.5, 35, b'0', 88),
(4, 0.3, 69, b'0', 88),
(5, 0.05, 39, b'0', 89),
(6, 0.05, 47, b'0', 89),
(7, 0.2, 61, b'0', 89),
(8, 0.05, 45, b'0', 89),
(9, 1, 42, b'0', 89),
(10, 0.05, 40, b'0', 89),
(11, 1, 43, b'0', 90),
(12, 0.05, 41, b'0', 90),
(13, 0.05, 46, b'0', 90),
(14, 0.2, 60, b'0', 90),
(15, 0.05, 38, b'0', 90),
(16, 0.05, 44, b'0', 90),
(17, 0.5, 79, b'0', 91),
(18, 1, 42, b'0', 91),
(19, 1, 39, b'0', 91),
(20, 0.5, 40, b'0', 91),
(21, 0.2, 61, b'0', 91),
(22, 0.05, 45, b'0', 91),
(23, 0.05, 47, b'0', 91),
(26, 0.05, 46, b'0', 92),
(27, 0.5, 41, b'0', 92),
(28, 0.5, 78, b'0', 92),
(29, 1, 57, b'0', 92),
(30, 1, 43, b'0', 92),
(31, 0.2, 60, b'0', 92),
(32, 0.05, 44, b'0', 92),
(33, 0.05, 44, b'0', 93),
(34, 0.5, 71, b'0', 93),
(35, 1, 43, b'0', 93),
(36, 0.5, 78, b'0', 93),
(37, 1, 57, b'0', 93),
(38, 0.05, 46, b'0', 93),
(39, 0.4, 60, b'0', 93),
(40, 0.5, 41, b'0', 93),
(41, 1, 38, b'0', 93),
(42, 1, 39, b'0', 94),
(43, 0.5, 79, b'0', 94),
(44, 0.4, 61, b'0', 94),
(45, 0.05, 47, b'0', 94),
(46, 0.5, 70, b'0', 94),
(47, 0.05, 45, b'0', 94),
(48, 1, 56, b'0', 94),
(49, 0.5, 40, b'0', 94),
(50, 1, 42, b'0', 94),
(51, 0.25, 63, b'0', 97),
(52, 0.5, 41, b'0', 97),
(53, 0.05, 44, b'0', 97),
(54, 1, 95, b'0', 97),
(55, 0.4, 38, b'0', 97),
(56, 0.05, 71, b'0', 97),
(57, 1, 96, b'0', 98),
(58, 0.05, 45, b'0', 98),
(59, 0.25, 62, b'0', 98),
(60, 0.05, 70, b'0', 98),
(61, 0.5, 40, b'0', 98),
(62, 0.4, 39, b'0', 98),
(63, 0.05, 70, b'0', 99),
(64, 1, 96, b'0', 99),
(65, 0.5, 40, b'0', 99),
(66, 0.05, 47, b'0', 99),
(67, 0.05, 45, b'0', 99),
(68, 1, 39, b'0', 99),
(69, 0.1, 53, b'0', 99),
(70, 2, 56, b'0', 99),
(71, 0.25, 62, b'0', 99),
(72, 0.25, 63, b'0', 100),
(73, 1, 38, b'0', 100),
(74, 0.5, 41, b'0', 100),
(75, 1, 95, b'0', 100),
(76, 0.05, 71, b'0', 100),
(77, 0.05, 44, b'0', 100),
(78, 0.05, 46, b'0', 100),
(79, 0.1, 52, b'0', 100),
(80, 2, 57, b'0', 100),
(81, 0.5, 70, b'0', 101),
(82, 0.05, 45, b'0', 101),
(83, 1, 39, b'0', 101),
(84, 1, 42, b'0', 101),
(85, 0.5, 40, b'0', 101),
(86, 0.4, 61, b'0', 101),
(87, 0.5, 79, b'0', 101),
(88, 1, 56, b'0', 101),
(89, 0.05, 47, b'0', 101),
(90, 0.05, 46, b'0', 102),
(91, 0.5, 41, b'0', 102),
(92, 0.5, 71, b'0', 102),
(93, 0.5, 78, b'0', 102),
(94, 0.05, 44, b'0', 102),
(95, 0.4, 60, b'0', 102),
(96, 1, 43, b'0', 102),
(97, 1, 57, b'0', 102),
(98, 1, 38, b'0', 102),
(99, 1, 75, b'0', 103),
(100, 1, 34, b'0', 103),
(101, 0.05, 76, b'0', 103),
(102, 0.2, 68, b'0', 103),
(103, 2, 38, b'0', 103),
(104, 0.01, 65, b'0', 103),
(105, 1, 35, b'0', 104),
(106, 0.01, 64, b'0', 104),
(107, 2, 39, b'0', 104),
(108, 0.2, 69, b'0', 104),
(109, 1, 74, b'0', 104),
(110, 0.05, 77, b'0', 104),
(111, 2, 39, b'0', 105),
(112, 0.2, 69, b'0', 105),
(113, 0.2, 53, b'0', 105),
(114, 0.01, 64, b'0', 105),
(115, 1, 35, b'0', 105),
(116, 2, 38, b'0', 106),
(117, 0.01, 65, b'0', 106),
(118, 1, 34, b'0', 106),
(119, 0.2, 68, b'0', 106),
(120, 0.2, 52, b'0', 106),
(121, 2, 39, b'0', 107),
(122, 0.2, 69, b'0', 107),
(123, 0.01, 64, b'0', 107),
(124, 1, 35, b'0', 107),
(125, 0.2, 85, b'0', 107),
(126, 2, 38, b'0', 108),
(127, 0.01, 65, b'0', 108),
(128, 1, 34, b'0', 108),
(129, 0.2, 68, b'0', 108),
(130, 0.2, 84, b'0', 108),
(131, 1, 34, b'0', 109),
(132, 0.05, 73, b'0', 109),
(133, 2, 38, b'0', 109),
(134, 0.2, 68, b'0', 109),
(135, 0.05, 71, b'0', 109),
(136, 0.01, 65, b'0', 109),
(137, 0.01, 64, b'0', 110),
(138, 0.05, 70, b'0', 110),
(139, 2, 39, b'0', 110),
(140, 1, 35, b'0', 110),
(141, 0.05, 72, b'0', 110),
(142, 0.2, 69, b'0', 110),
(143, 3, 55, b'0', 111),
(144, 0.2, 82, b'0', 111),
(145, 3, 54, b'0', 112),
(146, 0.2, 83, b'0', 112),
(147, 0.01, 81, b'0', 112),
(148, 0.01, 81, b'0', 111),
(149, 1, 57, b'0', 113),
(150, 0.2, 83, b'0', 113),
(151, 3, 54, b'0', 113),
(152, 3, 55, b'0', 114),
(153, 1, 56, b'0', 114),
(154, 0.2, 82, b'0', 114),
(155, 0.05, 58, b'0', 125),
(156, 1, 51, b'0', 125),
(157, 1, 44, b'0', 125),
(158, 1, 49, b'0', 125),
(159, 1, 46, b'0', 125),
(160, 0.05, 59, b'0', 126),
(161, 1, 47, b'0', 126),
(162, 1, 45, b'0', 126),
(163, 1, 50, b'0', 126),
(164, 1, 48, b'0', 126),
(165, 1, 48, b'0', 127),
(166, 0.5, 45, b'0', 127),
(167, 0.5, 47, b'0', 127),
(168, 2, 50, b'0', 127),
(169, 0.05, 59, b'0', 127),
(170, 0.5, 44, b'0', 128),
(171, 2, 51, b'0', 128),
(172, 0.05, 58, b'0', 128),
(173, 1, 49, b'0', 128),
(174, 0.5, 46, b'0', 128),
(175, 0.5, 45, b'0', 129),
(176, 0.5, 47, b'0', 129),
(177, 0.05, 59, b'0', 129),
(178, 0.5, 70, b'0', 129),
(179, 0.5, 53, b'0', 129),
(180, 1, 48, b'0', 129),
(181, 2, 50, b'0', 129),
(182, 0.5, 52, b'0', 130),
(183, 0.05, 58, b'0', 130),
(184, 2, 51, b'0', 130),
(185, 0.5, 44, b'0', 130),
(186, 0.5, 46, b'0', 130),
(187, 0.5, 71, b'0', 130),
(188, 1, 49, b'0', 130);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo_manufacturado_detalle_aud`
--

DROP TABLE IF EXISTS `articulo_manufacturado_detalle_aud`;
CREATE TABLE IF NOT EXISTS `articulo_manufacturado_detalle_aud` (
  `id` bigint NOT NULL,
  `rev` int NOT NULL,
  `revtype` tinyint DEFAULT NULL,
  `cantidad` double DEFAULT NULL,
  PRIMARY KEY (`rev`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `articulo_manufacturado_detalle_aud`
--

INSERT INTO `articulo_manufacturado_detalle_aud` (`id`, `rev`, `revtype`, `cantidad`) VALUES
(1, 852, 0, 0.5),
(2, 852, 0, 0.3),
(3, 853, 0, 0.5),
(4, 853, 0, 0.3),
(5, 854, 0, 0.05),
(6, 854, 0, 0.05),
(7, 854, 0, 0.2),
(8, 854, 0, 0.05),
(9, 854, 0, 1),
(10, 854, 0, 0.05),
(11, 854, 0, 1),
(12, 854, 0, 0.05),
(13, 854, 0, 0.05),
(14, 854, 0, 0.2),
(15, 854, 0, 0.05),
(16, 854, 0, 0.05),
(17, 855, 0, 0.5),
(18, 855, 0, 1),
(19, 855, 0, 1),
(20, 855, 0, 0.5),
(21, 855, 0, 0.2),
(22, 855, 0, 0.05),
(23, 855, 0, 0.05),
(24, 855, 0, 1),
(25, 855, 0, 1),
(26, 855, 0, 0.05),
(27, 855, 0, 0.5),
(28, 855, 0, 0.5),
(29, 855, 0, 1),
(30, 855, 0, 1),
(31, 855, 0, 0.2),
(32, 855, 0, 0.05),
(33, 856, 0, 0.05),
(34, 856, 0, 0.5),
(35, 856, 0, 1),
(36, 856, 0, 0.5),
(37, 856, 0, 1),
(38, 856, 0, 0.05),
(39, 856, 0, 0.4),
(40, 856, 0, 0.5),
(41, 856, 0, 1),
(42, 856, 0, 1),
(43, 856, 0, 0.5),
(44, 856, 0, 0.4),
(45, 856, 0, 0.05),
(46, 856, 0, 0.5),
(47, 856, 0, 0.05),
(48, 856, 0, 1),
(49, 856, 0, 0.5),
(50, 856, 0, 1),
(51, 902, 0, 0.25),
(52, 902, 0, 0.5),
(53, 902, 0, 0.05),
(54, 902, 0, 1),
(55, 902, 0, 0.4),
(56, 902, 0, 0.05),
(57, 902, 0, 1),
(58, 902, 0, 0.05),
(59, 902, 0, 0.25),
(60, 902, 0, 0.05),
(61, 902, 0, 0.5),
(62, 902, 0, 0.4),
(63, 903, 0, 0.05),
(64, 903, 0, 1),
(65, 903, 0, 0.5),
(66, 903, 0, 0.05),
(67, 903, 0, 0.05),
(68, 903, 0, 1),
(69, 903, 0, 0.1),
(70, 903, 0, 2),
(71, 903, 0, 0.25),
(72, 903, 0, 0.25),
(73, 903, 0, 1),
(74, 903, 0, 0.5),
(75, 903, 0, 1),
(76, 903, 0, 0.05),
(77, 903, 0, 0.05),
(78, 903, 0, 0.05),
(79, 903, 0, 0.1),
(80, 903, 0, 2),
(81, 952, 0, 0.5),
(82, 952, 0, 0.05),
(83, 952, 0, 1),
(84, 952, 0, 1),
(85, 952, 0, 0.5),
(86, 952, 0, 0.4),
(87, 952, 0, 0.5),
(88, 952, 0, 1),
(89, 952, 0, 0.05),
(90, 952, 0, 0.05),
(91, 952, 0, 0.5),
(92, 952, 0, 0.5),
(93, 952, 0, 0.5),
(94, 952, 0, 0.05),
(95, 952, 0, 0.4),
(96, 952, 0, 1),
(97, 952, 0, 1),
(98, 952, 0, 1),
(99, 953, 0, 1),
(100, 953, 0, 1),
(101, 953, 0, 0.05),
(102, 953, 0, 0.2),
(103, 953, 0, 2),
(104, 953, 0, 0.01),
(105, 953, 0, 1),
(106, 953, 0, 0.01),
(107, 953, 0, 2),
(108, 953, 0, 0.2),
(109, 953, 0, 1),
(110, 953, 0, 0.05),
(111, 954, 0, 2),
(112, 954, 0, 0.2),
(113, 954, 0, 0.2),
(114, 954, 0, 0.01),
(115, 954, 0, 1),
(116, 954, 0, 2),
(117, 954, 0, 0.01),
(118, 954, 0, 1),
(119, 954, 0, 0.2),
(120, 954, 0, 0.2),
(121, 955, 0, 2),
(122, 955, 0, 0.2),
(123, 955, 0, 0.01),
(124, 955, 0, 1),
(125, 955, 0, 0.2),
(126, 955, 0, 2),
(127, 955, 0, 0.01),
(128, 955, 0, 1),
(129, 955, 0, 0.2),
(130, 955, 0, 0.2),
(131, 956, 0, 1),
(132, 956, 0, 0.05),
(133, 956, 0, 2),
(134, 956, 0, 0.2),
(135, 956, 0, 0.05),
(136, 956, 0, 0.01),
(137, 956, 0, 0.01),
(138, 956, 0, 0.05),
(139, 956, 0, 2),
(140, 956, 0, 1),
(141, 956, 0, 0.05),
(142, 956, 0, 0.2),
(143, 957, 0, 3),
(144, 957, 0, 0.2),
(145, 957, 0, 3),
(146, 957, 0, 0.2),
(149, 958, 0, 1),
(150, 958, 0, 0.2),
(151, 958, 0, 3),
(152, 958, 0, 3),
(153, 958, 0, 1),
(154, 958, 0, 0.2),
(155, 964, 0, 0.05),
(156, 964, 0, 1),
(157, 964, 0, 1),
(158, 964, 0, 1),
(159, 964, 0, 1),
(160, 964, 0, 0.05),
(161, 964, 0, 1),
(162, 964, 0, 1),
(163, 964, 0, 1),
(164, 964, 0, 1),
(165, 965, 0, 1),
(166, 965, 0, 0.5),
(167, 965, 0, 0.5),
(168, 965, 0, 2),
(169, 965, 0, 0.05),
(170, 965, 0, 0.5),
(171, 965, 0, 2),
(172, 965, 0, 0.05),
(173, 965, 0, 1),
(174, 965, 0, 0.5),
(175, 966, 0, 0.5),
(176, 966, 0, 0.5),
(177, 966, 0, 0.05),
(178, 966, 0, 0.5),
(179, 966, 0, 0.5),
(180, 966, 0, 1),
(181, 966, 0, 2),
(182, 966, 0, 0.5),
(183, 966, 0, 0.05),
(184, 966, 0, 2),
(185, 966, 0, 0.5),
(186, 966, 0, 0.5),
(187, 966, 0, 0.5),
(188, 966, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo_manufacturado_detalle_seq`
--

DROP TABLE IF EXISTS `articulo_manufacturado_detalle_seq`;
CREATE TABLE IF NOT EXISTS `articulo_manufacturado_detalle_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `articulo_manufacturado_detalle_seq`
--

INSERT INTO `articulo_manufacturado_detalle_seq` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo_seq`
--

DROP TABLE IF EXISTS `articulo_seq`;
CREATE TABLE IF NOT EXISTS `articulo_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `articulo_seq`
--

INSERT INTO `articulo_seq` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

DROP TABLE IF EXISTS `categoria`;
CREATE TABLE IF NOT EXISTS `categoria` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `denominacion` varchar(255) DEFAULT NULL,
  `baja` bit(1) NOT NULL,
  `es_insumo` bit(1) NOT NULL,
  `es_para_vender` bit(1) NOT NULL,
  `categoria_padre_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKif4f273okqr2edqkm0xqxjlyk` (`categoria_padre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id`, `denominacion`, `baja`, `es_insumo`, `es_para_vender`, `categoria_padre_id`) VALUES
(1, 'Bebidas', b'0', b'0', b'1', NULL),
(2, 'Gaseosas', b'0', b'0', b'1', 1),
(3, 'Pizzas', b'0', b'0', b'1', NULL),
(4, 'Lomos', b'0', b'0', b'1', 5),
(5, 'Sandwichs', b'0', b'0', b'1', NULL),
(6, 'Vegetales', b'0', b'1', b'0', NULL),
(7, 'Carnes', b'0', b'1', b'0', NULL),
(8, 'Hamburguesas', b'0', b'0', b'1', 5),
(9, 'Aderezos', b'0', b'1', b'0', NULL),
(10, 'Otros Insumos', b'0', b'1', b'0', NULL),
(11, 'Lacteos', b'0', b'1', b'0', NULL),
(14, 'Papas Fritas', b'0', b'0', b'1', NULL),
(18, 'Aguas', b'0', b'0', b'1', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_aud`
--

DROP TABLE IF EXISTS `categoria_aud`;
CREATE TABLE IF NOT EXISTS `categoria_aud` (
  `id` bigint NOT NULL,
  `rev` int NOT NULL,
  `revtype` tinyint DEFAULT NULL,
  `denominacion` varchar(255) DEFAULT NULL,
  `es_insumo` bit(1) DEFAULT NULL,
  `es_para_vender` bit(1) DEFAULT NULL,
  PRIMARY KEY (`rev`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `categoria_aud`
--

INSERT INTO `categoria_aud` (`id`, `rev`, `revtype`, `denominacion`, `es_insumo`, `es_para_vender`) VALUES
(1, 152, 0, 'Bebidas', b'0', b'1'),
(2, 152, 0, 'Bebidas', b'0', b'1'),
(3, 153, 0, 'Pizzas', b'0', b'1'),
(4, 153, 0, 'Napolitana', b'0', b'1'),
(5, 153, 0, 'Especial', b'0', b'1'),
(6, 153, 0, 'Tropical', b'0', b'1'),
(7, 153, 0, 'Fugazzeta', b'0', b'1'),
(8, 154, 0, 'Hamburguesas', b'0', b'1'),
(9, 154, 0, 'Doble Carne', b'0', b'1'),
(10, 154, 0, 'Huevo Dibu', b'0', b'1'),
(11, 154, 0, 'Triple Carne', b'0', b'1'),
(12, 154, 0, 'Cheddar', b'0', b'1'),
(13, 154, 0, 'Simple', b'0', b'1'),
(14, 155, 0, 'Papas Fritas', b'0', b'1'),
(15, 155, 0, 'Medianas', b'0', b'1'),
(16, 155, 0, 'Grandes', b'0', b'1'),
(17, 155, 0, 'XXL', b'0', b'1'),
(18, 156, 0, 'Agua Saborizada', b'0', b'1'),
(19, 157, 0, 'Agua natural sin gas', b'0', b'1'),
(10, 202, 1, 'Huevo Dibu', b'0', b'1'),
(19, 203, 1, 'Agua natural sin gas', b'0', b'1'),
(5, 204, 1, 'Especial', b'0', b'1'),
(17, 205, 1, 'XXL', b'0', b'1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_seq`
--

DROP TABLE IF EXISTS `categoria_seq`;
CREATE TABLE IF NOT EXISTS `categoria_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `categoria_seq`
--

INSERT INTO `categoria_seq` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

DROP TABLE IF EXISTS `cliente`;
CREATE TABLE IF NOT EXISTS `cliente` (
  `id` bigint NOT NULL,
  `apellido` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `tipo_cliente` tinyint DEFAULT NULL,
  `imagen_cliente_id` bigint DEFAULT NULL,
  `usuario_id` bigint DEFAULT NULL,
  `clave` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_cxt0yqevxn9ungm4i57sb9ojj` (`imagen_cliente_id`),
  UNIQUE KEY `UK_id7jmosqg8hkqiqw4vf50xipm` (`usuario_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente_aud`
--

DROP TABLE IF EXISTS `cliente_aud`;
CREATE TABLE IF NOT EXISTS `cliente_aud` (
  `id` bigint NOT NULL,
  `rev` int NOT NULL,
  `clave` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rev`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente_domicilio`
--

DROP TABLE IF EXISTS `cliente_domicilio`;
CREATE TABLE IF NOT EXISTS `cliente_domicilio` (
  `cliente_id` bigint NOT NULL,
  `domicilio_id` bigint NOT NULL,
  PRIMARY KEY (`cliente_id`,`domicilio_id`),
  KEY `FK7jkekc8ff2g28bthd4dd9d7r2` (`domicilio_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente_domicilio_aud`
--

DROP TABLE IF EXISTS `cliente_domicilio_aud`;
CREATE TABLE IF NOT EXISTS `cliente_domicilio_aud` (
  `rev` int NOT NULL,
  `cliente_id` bigint NOT NULL,
  `domicilio_id` bigint NOT NULL,
  `revtype` tinyint DEFAULT NULL,
  PRIMARY KEY (`cliente_id`,`rev`,`domicilio_id`),
  KEY `FK1v25f29uy038rntrn7dkf1gvn` (`rev`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente_seq`
--

DROP TABLE IF EXISTS `cliente_seq`;
CREATE TABLE IF NOT EXISTS `cliente_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `cliente_seq`
--

INSERT INTO `cliente_seq` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pedido`
--

DROP TABLE IF EXISTS `detalle_pedido`;
CREATE TABLE IF NOT EXISTS `detalle_pedido` (
  `id` bigint NOT NULL,
  `cantidad` int DEFAULT NULL,
  `sub_total` double DEFAULT NULL,
  `articulo_id` bigint DEFAULT NULL,
  `pedido_id` bigint DEFAULT NULL,
  `baja` bit(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKgqvba9e7dildyw45u0usdj1k2` (`pedido_id`),
  KEY `FKblwfjfeyou4u7hae0gcngweeu` (`articulo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pedido_aud`
--

DROP TABLE IF EXISTS `detalle_pedido_aud`;
CREATE TABLE IF NOT EXISTS `detalle_pedido_aud` (
  `id` bigint NOT NULL,
  `rev` int NOT NULL,
  `revtype` tinyint DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  `sub_total` double DEFAULT NULL,
  PRIMARY KEY (`rev`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pedido_seq`
--

DROP TABLE IF EXISTS `detalle_pedido_seq`;
CREATE TABLE IF NOT EXISTS `detalle_pedido_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `detalle_pedido_seq`
--

INSERT INTO `detalle_pedido_seq` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `domicilio`
--

DROP TABLE IF EXISTS `domicilio`;
CREATE TABLE IF NOT EXISTS `domicilio` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `calle` varchar(255) DEFAULT NULL,
  `cp` int DEFAULT NULL,
  `nro_dpto` int DEFAULT NULL,
  `numero` int DEFAULT NULL,
  `piso` int DEFAULT NULL,
  `baja` bit(1) NOT NULL,
  `localidad_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK8t63gx4v022qapv45vdwld71j` (`localidad_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `domicilio`
--

INSERT INTO `domicilio` (`id`, `calle`, `cp`, `nro_dpto`, `numero`, `piso`, `baja`, `localidad_id`) VALUES
(1, 'Av. Siempre Viva', 12345, 5, 742, 2, b'0', 1),
(2, 'Calle San Luis', 5522, NULL, 310, NULL, b'0', 3),
(3, 'Calle Espejo', 5353, NULL, 2151, NULL, b'0', 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `domicilio_aud`
--

DROP TABLE IF EXISTS `domicilio_aud`;
CREATE TABLE IF NOT EXISTS `domicilio_aud` (
  `id` bigint NOT NULL,
  `rev` int NOT NULL,
  `revtype` tinyint DEFAULT NULL,
  `calle` varchar(255) DEFAULT NULL,
  `cp` int DEFAULT NULL,
  `nro_dpto` int DEFAULT NULL,
  `numero` int DEFAULT NULL,
  `piso` int DEFAULT NULL,
  PRIMARY KEY (`rev`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `domicilio_aud`
--

INSERT INTO `domicilio_aud` (`id`, `rev`, `revtype`, `calle`, `cp`, `nro_dpto`, `numero`, `piso`) VALUES
(1, 52, 0, 'Av. Siempre Viva', 12345, 5, 742, 2),
(2, 53, 0, 'Calle San Luis', 5522, NULL, 310, NULL),
(3, 54, 0, 'Calle Espejo', 5353, NULL, 2151, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `domicilio_seq`
--

DROP TABLE IF EXISTS `domicilio_seq`;
CREATE TABLE IF NOT EXISTS `domicilio_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `domicilio_seq`
--

INSERT INTO `domicilio_seq` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

DROP TABLE IF EXISTS `empleado`;
CREATE TABLE IF NOT EXISTS `empleado` (
  `id` bigint NOT NULL,
  `sucursal_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKkv68lx8xpbpv6jprh7taieaej` (`sucursal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`id`, `sucursal_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(9, 1),
(10, 1),
(13, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(6, 2),
(7, 2),
(8, 2),
(11, 2),
(12, 2),
(14, 2),
(15, 2),
(20, 2),
(21, 2),
(22, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado_aud`
--

DROP TABLE IF EXISTS `empleado_aud`;
CREATE TABLE IF NOT EXISTS `empleado_aud` (
  `id` bigint NOT NULL,
  `rev` int NOT NULL,
  `sucursal_id` bigint DEFAULT NULL,
  PRIMARY KEY (`rev`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `empleado_aud`
--

INSERT INTO `empleado_aud` (`id`, `rev`, `sucursal_id`) VALUES
(1, 1103, 1),
(2, 1153, 1),
(3, 1155, 1),
(4, 1157, 1),
(5, 1159, 1),
(6, 1161, 1),
(7, 1163, 2),
(8, 1165, 2),
(9, 1167, 1),
(10, 1169, 1),
(11, 1171, 2),
(12, 1173, 2),
(13, 1175, 1),
(14, 1177, 2),
(15, 1179, 2),
(16, 1181, 1),
(17, 1183, 1),
(18, 1203, 1),
(19, 1205, 1),
(20, 1207, 2),
(21, 1209, 2),
(22, 1211, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado_seq`
--

DROP TABLE IF EXISTS `empleado_seq`;
CREATE TABLE IF NOT EXISTS `empleado_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `empleado_seq`
--

INSERT INTO `empleado_seq` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

DROP TABLE IF EXISTS `empresa`;
CREATE TABLE IF NOT EXISTS `empresa` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `cuil` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `razon_social` varchar(255) DEFAULT NULL,
  `baja` bit(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`id`, `cuil`, `nombre`, `razon_social`, `baja`) VALUES
(1, '30123456789', 'Mi Nueva Empresa', 'Mi Nueva Empresa S.A.', b'0'),
(2, '30987654321', 'Empresa Dos', 'La nueva Empresa', b'0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa_aud`
--

DROP TABLE IF EXISTS `empresa_aud`;
CREATE TABLE IF NOT EXISTS `empresa_aud` (
  `id` bigint NOT NULL,
  `rev` int NOT NULL,
  `revtype` tinyint DEFAULT NULL,
  `cuil` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `razon_social` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rev`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `empresa_aud`
--

INSERT INTO `empresa_aud` (`id`, `rev`, `revtype`, `cuil`, `nombre`, `razon_social`) VALUES
(1, 1, 0, '30123456789', 'Mi Nueva Empresa', 'Mi Nueva Empresa S.A.'),
(2, 2, 0, '30987654321', 'Empresa Dos', 'La nueva Empresa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa_seq`
--

DROP TABLE IF EXISTS `empresa_seq`;
CREATE TABLE IF NOT EXISTS `empresa_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `empresa_seq`
--

INSERT INTO `empresa_seq` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

DROP TABLE IF EXISTS `factura`;
CREATE TABLE IF NOT EXISTS `factura` (
  `id` bigint NOT NULL,
  `fecha_facturacion` date DEFAULT NULL,
  `forma_pago` tinyint DEFAULT NULL,
  `mp_merchant_order_id` int DEFAULT NULL,
  `mp_payment_id` int DEFAULT NULL,
  `mp_payment_type` varchar(255) DEFAULT NULL,
  `mp_preference_id` varchar(255) DEFAULT NULL,
  `total_venta` double DEFAULT NULL,
  `pedido_id` bigint DEFAULT NULL,
  `baja` bit(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_ngujt6d9ti8crahqfrfb4p9d8` (`pedido_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura_aud`
--

DROP TABLE IF EXISTS `factura_aud`;
CREATE TABLE IF NOT EXISTS `factura_aud` (
  `id` bigint NOT NULL,
  `rev` int NOT NULL,
  `revtype` tinyint DEFAULT NULL,
  `fecha_facturacion` date DEFAULT NULL,
  `forma_pago` tinyint DEFAULT NULL,
  `mp_merchant_order_id` int DEFAULT NULL,
  `mp_payment_id` int DEFAULT NULL,
  `mp_payment_type` varchar(255) DEFAULT NULL,
  `mp_preference_id` varchar(255) DEFAULT NULL,
  `total_venta` double DEFAULT NULL,
  PRIMARY KEY (`rev`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura_seq`
--

DROP TABLE IF EXISTS `factura_seq`;
CREATE TABLE IF NOT EXISTS `factura_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `factura_seq`
--

INSERT INTO `factura_seq` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagen_articulo`
--

DROP TABLE IF EXISTS `imagen_articulo`;
CREATE TABLE IF NOT EXISTS `imagen_articulo` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT NULL,
  `imagen_articulo_id` bigint DEFAULT NULL,
  `baja` bit(1) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `imagen_articulo`
--

INSERT INTO `imagen_articulo` (`id`, `url`, `imagen_articulo_id`, `baja`, `name`) VALUES
(1, 'https://res.cloudinary.com/dtxgrqsqq/image/upload/bhvcoo6wm6my2wn0ozx4', NULL, b'0', 'Maxresdeeefault.jpg'),
(2, 'https://res.cloudinary.com/dtxgrqsqq/image/upload/nn8uar7rcfbtjd0a5lqn', NULL, b'0', 'burger-7419428_1280.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagen_articulo_seq`
--

DROP TABLE IF EXISTS `imagen_articulo_seq`;
CREATE TABLE IF NOT EXISTS `imagen_articulo_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `imagen_articulo_seq`
--

INSERT INTO `imagen_articulo_seq` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagen_cliente`
--

DROP TABLE IF EXISTS `imagen_cliente`;
CREATE TABLE IF NOT EXISTS `imagen_cliente` (
  `id` bigint NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagen_cliente_seq`
--

DROP TABLE IF EXISTS `imagen_cliente_seq`;
CREATE TABLE IF NOT EXISTS `imagen_cliente_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `imagen_cliente_seq`
--

INSERT INTO `imagen_cliente_seq` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagen_empleado`
--

DROP TABLE IF EXISTS `imagen_empleado`;
CREATE TABLE IF NOT EXISTS `imagen_empleado` (
  `id` bigint NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagen_empleado_seq`
--

DROP TABLE IF EXISTS `imagen_empleado_seq`;
CREATE TABLE IF NOT EXISTS `imagen_empleado_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `imagen_empleado_seq`
--

INSERT INTO `imagen_empleado_seq` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagen_persona`
--

DROP TABLE IF EXISTS `imagen_persona`;
CREATE TABLE IF NOT EXISTS `imagen_persona` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `baja` bit(1) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `imagen_persona`
--

INSERT INTO `imagen_persona` (`id`, `baja`, `name`, `url`) VALUES
(1, b'0', 'persona1.jpg', 'https://res.cloudinary.com/dtxgrqsqq/image/upload/buu76uossx6rktlrrbyn'),
(2, b'0', 'persona2.jpg', 'https://res.cloudinary.com/dtxgrqsqq/image/upload/drpxkberytnrohsvdtnb'),
(3, b'0', 'persona3.jpg', 'https://res.cloudinary.com/dtxgrqsqq/image/upload/u43b9mumveebvnob6tkl'),
(4, b'0', 'persona4.jpg', 'https://res.cloudinary.com/dtxgrqsqq/image/upload/h4ytj8xlvxk5mkpes7hn'),
(5, b'0', 'persona5.jpg', 'https://res.cloudinary.com/dtxgrqsqq/image/upload/s0rdtkv8zunthccqr5nf'),
(6, b'0', 'persona1.jpg', 'https://res.cloudinary.com/dtxgrqsqq/image/upload/ach1lgog5q6niimcxuei'),
(7, b'0', 'persona1.jpg', 'https://res.cloudinary.com/dtxgrqsqq/image/upload/pvmykbjt45xcaupnpo3i'),
(8, b'0', 'persona1.jpg', 'https://res.cloudinary.com/dtxgrqsqq/image/upload/iojvrhofzq3i6npjmxnl'),
(9, b'0', 'persona1.jpg', 'https://res.cloudinary.com/dtxgrqsqq/image/upload/jpzyeabg4wgw8ue07pal'),
(10, b'0', 'persona2.jpg', 'https://res.cloudinary.com/dtxgrqsqq/image/upload/jv01n4kehfvmmujctz5w'),
(11, b'0', 'persona2.jpg', 'https://res.cloudinary.com/dtxgrqsqq/image/upload/xqoh0p1mz1wtudvy7qvp'),
(12, b'0', 'persona2.jpg', 'https://res.cloudinary.com/dtxgrqsqq/image/upload/sclszuspyxmdypxrygpq'),
(13, b'0', 'persona3.jpg', 'https://res.cloudinary.com/dtxgrqsqq/image/upload/oc4dg5absiijlu69hvw0'),
(14, b'0', 'persona3.jpg', 'https://res.cloudinary.com/dtxgrqsqq/image/upload/uyyd5mxupxpabzckrkoc'),
(15, b'0', 'persona3.jpg', 'https://res.cloudinary.com/dtxgrqsqq/image/upload/k83m4xl9banxmutzxtyf'),
(16, b'0', 'persona4.jpg', 'https://res.cloudinary.com/dtxgrqsqq/image/upload/l08ixl76orh6rp2frerv'),
(17, b'0', 'persona4.jpg', 'https://res.cloudinary.com/dtxgrqsqq/image/upload/bcngnys99pa8xtdovv3v'),
(18, b'0', 'persona4.jpg', 'https://res.cloudinary.com/dtxgrqsqq/image/upload/vqenvn8n0ardvkwaxykf'),
(19, b'0', 'persona5.jpg', 'https://res.cloudinary.com/dtxgrqsqq/image/upload/ot66n0hicxkykuf7mxhq'),
(20, b'0', 'persona5.jpg', 'https://res.cloudinary.com/dtxgrqsqq/image/upload/att5lgff1n1rozdde9xc');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagen_promocion`
--

DROP TABLE IF EXISTS `imagen_promocion`;
CREATE TABLE IF NOT EXISTS `imagen_promocion` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT NULL,
  `promocion_id` bigint DEFAULT NULL,
  `baja` bit(1) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKfigh8y0s5beb3p1f7jaab8brr` (`promocion_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `imagen_promocion`
--

INSERT INTO `imagen_promocion` (`id`, `url`, `promocion_id`, `baja`, `name`) VALUES
(1, 'https://res.cloudinary.com/dtxgrqsqq/image/upload/sduwlxjhpcl9lmoa3n4r', 1, b'0', 'pngwing.com (1).png'),
(2, 'https://res.cloudinary.com/dtxgrqsqq/image/upload/rzhwtiuqk2dpaul7sajm', 2, b'0', 'pngwing.com (1).png'),
(3, 'https://res.cloudinary.com/dtxgrqsqq/image/upload/tv0bt5x6pnzh8kyhs2bs', 3, b'0', 'a1daa5972ebd6ed1de6b2e8ff2a1af30.jpg'),
(4, 'https://res.cloudinary.com/dtxgrqsqq/image/upload/eswbpsdztmiix1rd9twa', 4, b'0', 'a1daa5972ebd6ed1de6b2e8ff2a1af30.jpg'),
(6, 'https://res.cloudinary.com/dtxgrqsqq/image/upload/q9yqeujjkrqhoqcruhbf', 5, b'0', '5fc5624757b73.jpeg'),
(7, 'https://res.cloudinary.com/dtxgrqsqq/image/upload/svv1kz3qhcva1kjjkudk', 6, b'0', '5fc5624757b73.jpeg'),
(8, 'https://res.cloudinary.com/dtxgrqsqq/image/upload/x9ybza8obeem4vicatn1', 7, b'0', 'descarga.jpg'),
(9, 'https://res.cloudinary.com/dtxgrqsqq/image/upload/glz2jjcrrk09ilfmbf0h', 8, b'0', 'descarga.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagen_promocion_seq`
--

DROP TABLE IF EXISTS `imagen_promocion_seq`;
CREATE TABLE IF NOT EXISTS `imagen_promocion_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `imagen_promocion_seq`
--

INSERT INTO `imagen_promocion_seq` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagen_sucursal`
--

DROP TABLE IF EXISTS `imagen_sucursal`;
CREATE TABLE IF NOT EXISTS `imagen_sucursal` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `baja` bit(1) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `imagen_sucursal`
--

INSERT INTO `imagen_sucursal` (`id`, `baja`, `name`, `url`) VALUES
(1, b'0', 'a1daa5972ebd6ed1de6b2e8ff2a1af30.jpg', 'https://res.cloudinary.com/dtxgrqsqq/image/upload/qbco9bsnp38qykrrlnnz'),
(2, b'0', '432286487_17970726884689930_405276072139277519_n.jpg', 'https://res.cloudinary.com/dtxgrqsqq/image/upload/ooohl4p3x49gftwvgscv');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `localidad`
--

DROP TABLE IF EXISTS `localidad`;
CREATE TABLE IF NOT EXISTS `localidad` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `baja` bit(1) NOT NULL,
  `provincia_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK37mbpxuicwnbo878s9djjgr39` (`provincia_id`)
) ENGINE=InnoDB AUTO_INCREMENT=530 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `localidad`
--

INSERT INTO `localidad` (`id`, `nombre`, `baja`, `provincia_id`) VALUES
(1, 'Adolfo Gonzales Chaves', b'0', 1),
(2, 'Concordia', b'0', 2),
(3, 'Federal', b'0', 2),
(4, 'Gualeguaychú', b'0', 2),
(5, 'Islas del Ibicuy', b'0', 2),
(6, 'Victoria', b'0', 2),
(7, 'Diamante', b'0', 2),
(8, 'Uruguay', b'0', 2),
(9, 'Paraná', b'0', 2),
(10, 'Saladillo', b'0', 1),
(11, 'Las Flores', b'0', 1),
(12, 'Rojas', b'0', 1),
(13, 'Escobar', b'0', 1),
(14, 'José C. Paz', b'0', 1),
(15, 'Bahía Blanca', b'0', 1),
(16, 'San Antonio de Areco', b'0', 1),
(17, 'Maipú', b'0', 1),
(18, 'General Alvarado', b'0', 1),
(19, 'General Pueyrredón', b'0', 1),
(20, 'Mar Chiquita', b'0', 1),
(21, 'Villa Gesell', b'0', 1),
(22, 'Pinamar', b'0', 1),
(23, 'General Lavalle', b'0', 1),
(24, 'La Costa', b'0', 1),
(25, 'Magdalena', b'0', 1),
(26, 'Sauce', b'0', 3),
(27, 'Vicente López', b'0', 1),
(28, 'La Viña', b'0', 4),
(29, 'Rauch', b'0', 1),
(30, 'Metán', b'0', 4),
(31, 'Molinos', b'0', 4),
(32, 'O\'Higgins', b'0', 5),
(33, 'Moreno', b'0', 1),
(34, 'La Matanza', b'0', 1),
(35, 'Tandil', b'0', 1),
(36, 'Coronel Suárez', b'0', 1),
(37, 'Chamical', b'0', 6),
(38, 'Futaleufú', b'0', 7),
(39, 'Río Chico', b'0', 8),
(40, 'San Antonio', b'0', 9),
(41, 'Alberdi', b'0', 10),
(42, 'Juan Felipe Ibarra', b'0', 10),
(43, 'General Taboada', b'0', 10),
(44, 'Salliqueló', b'0', 1),
(45, 'Berazategui', b'0', 1),
(46, 'General Güemes', b'0', 4),
(47, 'San Carlos', b'0', 4),
(48, 'General Paz', b'0', 1),
(49, 'General Guido', b'0', 1),
(50, 'General Juan Madariaga', b'0', 1),
(51, 'Lago Argentino', b'0', 8),
(52, 'Rivadavia', b'0', 10),
(53, 'Ojo de Agua', b'0', 10),
(54, 'Choya', b'0', 10),
(55, 'Gobernador Dupuy', b'0', 11),
(56, 'Cachi', b'0', 4),
(57, 'Chicoana', b'0', 4),
(58, 'Gaiman', b'0', 7),
(59, 'Rawson', b'0', 7),
(60, 'General Lamadrid', b'0', 6),
(61, 'Ayacucho', b'0', 11),
(62, '12 de Octubre', b'0', 5),
(63, 'Tulumba', b'0', 12),
(64, 'Cruz del Eje', b'0', 12),
(65, 'Punilla', b'0', 12),
(66, 'Comuna 6', b'0', 2),
(67, 'Santa Rosa', b'0', 13),
(68, 'General Güemes', b'0', 5),
(69, 'General Ortiz de Ocampo', b'0', 6),
(70, 'General Roca', b'0', 12),
(71, 'Pilagás', b'0', 14),
(72, 'Laishi', b'0', 14),
(73, 'Rivadavia', b'0', 13),
(74, 'Tornquist', b'0', 1),
(75, 'La Paz', b'0', 13),
(76, 'Coronel Pringles', b'0', 1),
(77, 'Conesa', b'0', 9),
(78, 'Villarino', b'0', 1),
(79, 'Pirané', b'0', 14),
(80, 'General Pinto', b'0', 1),
(81, 'San Cayetano', b'0', 1),
(82, 'Tres Arroyos', b'0', 1),
(83, 'Coronel Dorrego', b'0', 1),
(84, 'Necochea', b'0', 1),
(85, 'Independencia', b'0', 6),
(86, 'Chascomús', b'0', 1),
(87, 'Punta Indio', b'0', 1),
(88, 'El Carmen', b'0', 15),
(89, 'Santa María', b'0', 12),
(90, 'Valcheta', b'0', 9),
(91, 'Arauco', b'0', 6),
(92, 'Lezama', b'0', 1),
(93, 'Campana', b'0', 1),
(94, 'Magallanes', b'0', 8),
(95, 'Corpen Aike', b'0', 8),
(96, 'Minas', b'0', 12),
(97, 'San Alberto', b'0', 12),
(98, 'Río Segundo', b'0', 12),
(99, 'San Justo', b'0', 12),
(100, 'Unión', b'0', 12),
(101, 'Tercero Arriba', b'0', 12),
(102, 'Cerrillos', b'0', 4),
(103, 'Río Cuarto', b'0', 12),
(104, 'Tupungato', b'0', 13),
(105, '9 de Julio', b'0', 9),
(106, 'Ñorquinco', b'0', 9),
(107, 'San Rafael', b'0', 13),
(108, 'Anta', b'0', 4),
(109, 'Picún Leufú', b'0', 16),
(110, 'Zapala', b'0', 16),
(111, '25 de Mayo', b'0', 9),
(112, 'Telsen', b'0', 7),
(113, 'Pilcaniyeu', b'0', 9),
(114, 'Adolfo Alsina', b'0', 1),
(115, 'General Alvear', b'0', 13),
(116, 'La Caldera', b'0', 4),
(117, 'Sargento Cabral', b'0', 5),
(118, 'Pellegrini', b'0', 1),
(119, 'Aluminé', b'0', 16),
(120, 'Iruya', b'0', 4),
(121, 'Lácar', b'0', 16),
(122, 'Fray Mamerto Esquiú', b'0', 10),
(123, 'Valle Viejo', b'0', 10),
(124, 'San Cosme', b'0', 3),
(125, 'Sarmiento', b'0', 7),
(126, 'Comuna 1', b'0', 2),
(127, 'Comuna 4', b'0', 2),
(128, 'El Cuy', b'0', 9),
(129, 'Las Heras', b'0', 13),
(130, 'Tapenagá', b'0', 5),
(131, 'Lavalle', b'0', 13),
(132, 'Malargüe', b'0', 13),
(133, 'Presidente Roque Sáenz Peña', b'0', 12),
(134, 'Catán Lil', b'0', 16),
(135, 'Presidencia de la Plaza', b'0', 5),
(136, 'Comuna 5', b'0', 2),
(137, 'Esquina', b'0', 3),
(138, 'Ushuaia', b'0', 17),
(139, 'Antofagasta de la Sierra', b'0', 10),
(140, 'Ensenada', b'0', 1),
(141, 'Capital', b'0', 18),
(142, 'Belgrano', b'0', 19),
(143, 'Pergamino', b'0', 1),
(144, 'Puán', b'0', 1),
(145, 'General Villegas', b'0', 1),
(146, 'Comuna 12', b'0', 2),
(147, 'General Obligado', b'0', 19),
(148, 'Vera', b'0', 19),
(149, '9 de Julio', b'0', 19),
(150, 'Adolfo Alsina', b'0', 9),
(151, 'Quitilipi', b'0', 5),
(152, 'Güer Aike', b'0', 8),
(153, 'Capayán', b'0', 10),
(154, 'Burruyacú', b'0', 18),
(155, 'San Jerónimo', b'0', 19),
(156, 'Independencia', b'0', 5),
(157, 'Curuzú Cuatiá', b'0', 3),
(158, 'Luján de Cuyo', b'0', 13),
(159, 'Tinogasta', b'0', 10),
(160, 'Comuna 7', b'0', 2),
(161, 'Hucal', b'0', 20),
(162, 'Itatí', b'0', 3),
(163, 'Comuna 10', b'0', 2),
(164, 'Caleu Caleu', b'0', 20),
(165, 'Lihuel Calel', b'0', 20),
(166, 'Curacó', b'0', 20),
(167, 'Confluencia', b'0', 16),
(168, 'Picunches', b'0', 16),
(169, 'Añelo', b'0', 16),
(170, 'Loncopué', b'0', 16),
(171, 'Ñorquín', b'0', 16),
(172, 'Pehuenches', b'0', 16),
(173, 'Comuna 11', b'0', 2),
(174, 'Montecarlo', b'0', 21),
(175, 'Eldorado', b'0', 21),
(176, 'San Pedro', b'0', 21),
(177, 'Antártida Argentina', b'0', 17),
(178, 'Minas', b'0', 16),
(179, 'Chos Malal', b'0', 16),
(180, 'Cushamen', b'0', 7),
(181, 'Lago Buenos Aires', b'0', 8),
(182, 'Pichi Mahuida', b'0', 9),
(183, 'San Martín', b'0', 22),
(184, 'Yavi', b'0', 15),
(185, 'Santa Catalina', b'0', 15),
(186, 'San Pedro', b'0', 15),
(187, 'Valle Grande', b'0', 15),
(188, 'Patiño', b'0', 14),
(189, 'Bermejo', b'0', 14),
(190, 'Susques', b'0', 15),
(191, 'Matacos', b'0', 14),
(192, 'Los Andes', b'0', 4),
(193, 'Orán', b'0', 4),
(194, 'Tilcara', b'0', 15),
(195, 'Palpalá', b'0', 15),
(196, 'Loventué', b'0', 20),
(197, 'Río Senguer', b'0', 7),
(198, 'Bariloche', b'0', 9),
(199, 'Huiliches', b'0', 16),
(200, 'Limay Mahuida', b'0', 20),
(201, 'Puelén', b'0', 20),
(202, 'Chalileo', b'0', 20),
(203, 'Chical Co', b'0', 20),
(204, 'Quebrachos', b'0', 22),
(205, 'Monte Caseros', b'0', 3),
(206, 'Mayor Luis J. Fontana', b'0', 5),
(207, 'Fray Justo Santa María de Oro', b'0', 5),
(208, 'General Belgrano', b'0', 6),
(209, 'Las Colonias', b'0', 19),
(210, 'San Justo', b'0', 19),
(211, 'San Cristóbal', b'0', 19),
(212, 'San Javier', b'0', 19),
(213, 'Chapaleufú', b'0', 20),
(214, 'Realicó', b'0', 20),
(215, 'Maracó', b'0', 20),
(216, 'Trenel', b'0', 20),
(217, 'Copo', b'0', 22),
(218, 'Capital', b'0', 20),
(219, 'Santa Bárbara', b'0', 15),
(220, 'Almirante Brown', b'0', 5),
(221, 'Rosario de la Frontera', b'0', 4),
(222, 'Collón Curá', b'0', 16),
(223, 'Comuna 3', b'0', 2),
(224, 'San Fernando', b'0', 1),
(225, 'Tigre', b'0', 1),
(226, 'Santa María', b'0', 10),
(227, 'Santa Rosa', b'0', 10),
(228, 'La Paz', b'0', 10),
(229, 'Río Hondo', b'0', 22),
(230, 'Vinchina', b'0', 6),
(231, 'Capital', b'0', 6),
(232, 'Río Seco', b'0', 12),
(233, 'Avellaneda', b'0', 9),
(234, 'General Roca', b'0', 9),
(235, 'Belgrano', b'0', 11),
(236, 'Los Lagos', b'0', 16),
(237, 'Capital', b'0', 10),
(238, 'Ancasti', b'0', 10),
(239, 'Pomán', b'0', 10),
(240, 'Comuna 2', b'0', 2),
(241, '9 de Julio', b'0', 5),
(242, 'Pocho', b'0', 12),
(243, 'Ezeiza', b'0', 1),
(244, 'Andalgalá', b'0', 10),
(245, 'Ambato', b'0', 10),
(246, 'Comuna 8', b'0', 2),
(247, 'Guasayán', b'0', 22),
(248, 'Paclín', b'0', 10),
(249, 'El Alto', b'0', 10),
(250, 'Sobremonte', b'0', 12),
(251, 'Río Grande', b'0', 17),
(252, 'Comuna 13', b'0', 2),
(253, 'Banda', b'0', 22),
(254, 'Paso de Indios', b'0', 7),
(255, 'Capital', b'0', 12),
(256, 'Mártires', b'0', 7),
(257, 'Sarmiento', b'0', 22),
(258, 'Deseado', b'0', 8),
(259, 'Languiñeo', b'0', 7),
(260, 'Belgrano', b'0', 22),
(261, 'Aguirre', b'0', 22),
(262, 'Maipú', b'0', 5),
(263, 'San Carlos', b'0', 13),
(264, 'Tunuyán', b'0', 13),
(265, 'Robles', b'0', 22),
(266, 'Loreto', b'0', 22),
(267, 'Catriló', b'0', 20),
(268, 'Capital', b'0', 22),
(269, 'Comuna 14', b'0', 2),
(270, 'Colón', b'0', 23),
(271, 'Villaguay', b'0', 23),
(272, 'Castelli', b'0', 1),
(273, 'San Salvador', b'0', 23),
(274, 'Belén', b'0', 10),
(275, 'Almirante Brown', b'0', 1),
(276, 'Nogoyá', b'0', 23),
(277, 'Tala', b'0', 23),
(278, 'Gualeguay', b'0', 23),
(279, 'Federación', b'0', 23),
(280, 'La Paz', b'0', 23),
(281, 'Feliciano', b'0', 23),
(282, 'Presidente Perón', b'0', 1),
(283, 'Junín', b'0', 1),
(284, 'Brandsen', b'0', 1),
(285, 'Chivilcoy', b'0', 1),
(286, 'Alberti', b'0', 1),
(287, 'Bragado', b'0', 1),
(288, 'General Las Heras', b'0', 1),
(289, 'Carlos Casares', b'0', 1),
(290, 'Marcos Paz', b'0', 1),
(291, 'General Viamonte', b'0', 1),
(292, 'Carlos Tejedor', b'0', 1),
(293, '25 de Mayo', b'0', 1),
(294, '9 de Julio', b'0', 1),
(295, 'Pehuajó', b'0', 1),
(296, 'Tapalqué', b'0', 1),
(297, 'Trenque Lauquen', b'0', 1),
(298, 'General Belgrano', b'0', 1),
(299, 'Monte', b'0', 1),
(300, 'Roque Pérez', b'0', 1),
(301, 'Olavarría', b'0', 1),
(302, 'Merlo', b'0', 1),
(303, 'Cainguás', b'0', 21),
(304, 'Islas del Atlántico Sur', b'0', 17),
(305, 'Esteban Echeverría', b'0', 1),
(306, 'Arrecifes', b'0', 1),
(307, 'Capitán Sarmiento', b'0', 1),
(308, 'Dr. Manuel Belgrano', b'0', 15),
(309, 'Carmen de Areco', b'0', 1),
(310, 'Salto', b'0', 1),
(311, 'Exaltación de la Cruz', b'0', 1),
(312, 'San Miguel', b'0', 1),
(313, 'San Andrés de Giles', b'0', 1),
(314, 'Mercedes', b'0', 1),
(315, 'Pilar', b'0', 1),
(316, 'Luján', b'0', 1),
(317, 'Famaillá', b'0', 18),
(318, 'Hurlingham', b'0', 1),
(319, 'Morón', b'0', 1),
(320, 'Chacabuco', b'0', 1),
(321, 'Junín', b'0', 13),
(322, 'Malvinas Argentinas', b'0', 1),
(323, 'Tres Lomas', b'0', 1),
(324, 'Ayacucho', b'0', 1),
(325, 'Guaminí', b'0', 1),
(326, 'General San Martín', b'0', 1),
(327, 'Lincoln', b'0', 1),
(328, 'Laprida', b'0', 1),
(329, 'San Isidro', b'0', 1),
(330, 'Benito Juárez', b'0', 1),
(331, 'Colón', b'0', 1),
(332, 'Ituzaingó', b'0', 1),
(333, 'General Rodríguez', b'0', 1),
(334, 'Suipacha', b'0', 1),
(335, 'Tres de Febrero', b'0', 1),
(336, 'General Felipe Varela', b'0', 6),
(337, 'Florencio Varela', b'0', 1),
(338, 'Navarro', b'0', 1),
(339, 'Cañuelas', b'0', 1),
(340, 'Moreno', b'0', 22),
(341, 'Chacabuco', b'0', 5),
(342, 'San Vicente', b'0', 1),
(343, 'Lobos', b'0', 1),
(344, 'General Alvear', b'0', 1),
(345, 'Quilmes', b'0', 1),
(346, 'Pila', b'0', 1),
(347, 'General La Madrid', b'0', 1),
(348, 'Bolívar', b'0', 1),
(349, 'Castro Barros', b'0', 6),
(350, 'Balcarce', b'0', 1),
(351, 'Hipólito Yrigoyen', b'0', 1),
(352, 'Capital', b'0', 13),
(353, 'Dolores', b'0', 1),
(354, 'Azul', b'0', 1),
(355, 'Daireaux', b'0', 1),
(356, 'Godoy Cruz', b'0', 13),
(357, 'Cafayate', b'0', 4),
(358, 'Figueroa', b'0', 22),
(359, 'Saavedra', b'0', 1),
(360, 'Monte Hermoso', b'0', 1),
(361, 'Lobería', b'0', 1),
(362, 'Berisso', b'0', 1),
(363, 'Tordillo', b'0', 1),
(364, 'Zárate', b'0', 1),
(365, 'Ramallo', b'0', 1),
(366, 'San Nicolás', b'0', 1),
(367, 'Salavina', b'0', 22),
(368, 'Pellegrini', b'0', 22),
(369, 'Avellaneda', b'0', 22),
(370, '2 de Abril', b'0', 5),
(371, 'Guaymallén', b'0', 13),
(372, 'Juárez Celman', b'0', 12),
(373, 'Capital', b'0', 4),
(374, 'Silípica', b'0', 22),
(375, 'La Candelaria', b'0', 4),
(376, 'Rancul', b'0', 20),
(377, 'Maipú', b'0', 13),
(378, 'Guachipas', b'0', 4),
(379, 'Atreucó', b'0', 20),
(380, 'San Martín', b'0', 13),
(381, 'Guatraché', b'0', 20),
(382, 'Sanagasta', b'0', 6),
(383, 'Conhelo', b'0', 20),
(384, 'Libertador General San Martín', b'0', 21),
(385, 'Rosario Vera Peñaloza', b'0', 6),
(386, 'San Miguel', b'0', 3),
(387, 'General Juan Facundo Quiroga', b'0', 6),
(388, 'Ángel Vicente Peñaloza', b'0', 6),
(389, 'Empedrado', b'0', 3),
(390, 'Chilecito', b'0', 6),
(391, 'Toay', b'0', 20),
(392, 'Colón', b'0', 12),
(393, 'Ituzaingó', b'0', 3),
(394, 'Famatina', b'0', 6),
(395, 'General López', b'0', 19),
(396, 'Constitución', b'0', 19),
(397, 'Caseros', b'0', 19),
(398, 'Rosario', b'0', 19),
(399, 'San Lorenzo', b'0', 19),
(400, 'Iriondo', b'0', 19),
(401, 'Lanús', b'0', 1),
(402, 'General San Martín', b'0', 6),
(403, 'San Blas de Los Sauces', b'0', 6),
(404, 'San Antonio', b'0', 15),
(405, 'Rinconada', b'0', 15),
(406, 'Ramón Lista', b'0', 14),
(407, 'La Poma', b'0', 4),
(408, 'Biedma', b'0', 7),
(409, 'Capital', b'0', 3),
(410, 'San Luis del Palmar', b'0', 3),
(411, 'Formosa', b'0', 14),
(412, 'Pilcomayo', b'0', 14),
(413, 'Tehuelches', b'0', 7),
(414, 'Escalante', b'0', 7),
(415, 'Ischilín', b'0', 12),
(416, 'Totoral', b'0', 12),
(417, 'General San Martín', b'0', 12),
(418, 'San Javier', b'0', 12),
(419, 'Río Primero', b'0', 12),
(420, 'Marcos Juárez', b'0', 12),
(421, 'General Donovan', b'0', 5),
(422, 'Leandro N. Alem', b'0', 1),
(423, 'Libertador General San Martín', b'0', 5),
(424, 'Gastre', b'0', 7),
(425, 'General Arenales', b'0', 1),
(426, 'Bermejo', b'0', 5),
(427, 'Calamuchita', b'0', 12),
(428, 'Cruz Alta', b'0', 18),
(429, 'Lules', b'0', 18),
(430, 'Yerba Buena', b'0', 18),
(431, 'Tafí Viejo', b'0', 18),
(432, 'Libertador General San Martín', b'0', 11),
(433, 'Coronel Pringles', b'0', 11),
(434, 'Chacabuco', b'0', 11),
(435, 'Rivadavia', b'0', 1),
(436, 'Patagones', b'0', 1),
(437, 'Juan Martín de Pueyrredón', b'0', 11),
(438, 'General Pedernera', b'0', 11),
(439, 'Trancas', b'0', 18),
(440, 'Tafí del Valle', b'0', 18),
(441, 'Comuna 9', b'0', 2),
(442, 'Junín', b'0', 11),
(443, 'Mitre', b'0', 22),
(444, 'Atamisqui', b'0', 22),
(445, 'Berón de Astrada', b'0', 3),
(446, 'Tolhuin', b'0', 17),
(447, 'Capital', b'0', 21),
(448, 'Candelaria', b'0', 21),
(449, 'Jiménez', b'0', 22),
(450, 'Coronel de Marina Leonardo Rosales', b'0', 1),
(451, 'Baradero', b'0', 1),
(452, 'San Pedro', b'0', 1),
(453, 'Santa Victoria', b'0', 4),
(454, 'General José de San Martín', b'0', 4),
(455, 'Rivadavia', b'0', 4),
(456, 'Rosario de Lerma', b'0', 4),
(457, 'Ledesma', b'0', 15),
(458, 'Humahuaca', b'0', 15),
(459, 'Cochinoca', b'0', 15),
(460, 'Tumbaya', b'0', 15),
(461, 'Florentino Ameghino', b'0', 1),
(462, 'Florentino Ameghino', b'0', 7),
(463, 'La Cocha', b'0', 18),
(464, 'Graneros', b'0', 18),
(465, 'Juan Bautista Alberdi', b'0', 18),
(466, 'Río Chico', b'0', 18),
(467, 'Simoca', b'0', 18),
(468, 'Chicligasta', b'0', 18),
(469, 'Monteros', b'0', 18),
(470, 'Leales', b'0', 18),
(471, 'San Martín', b'0', 19),
(472, 'La Capital', b'0', 19),
(473, 'General Manuel Belgrano', b'0', 21),
(474, 'Guaraní', b'0', 21),
(475, 'Iguazú', b'0', 21),
(476, '25 de Mayo', b'0', 21),
(477, 'Oberá', b'0', 21),
(478, 'Castellanos', b'0', 19),
(479, 'Garay', b'0', 19),
(480, 'Quemú Quemú', b'0', 20),
(481, 'San Ignacio', b'0', 21),
(482, 'Utracán', b'0', 20),
(483, 'San Martín', b'0', 3),
(484, 'Paso de los Libres', b'0', 3),
(485, 'Goya', b'0', 3),
(486, 'Lavalle', b'0', 3),
(487, 'San Roque', b'0', 3),
(488, 'General Alvear', b'0', 3),
(489, 'Concepción', b'0', 3),
(490, 'Bella Vista', b'0', 3),
(491, 'Santo Tomé', b'0', 3),
(492, 'Saladas', b'0', 3),
(493, 'General Paz', b'0', 3),
(494, 'Leandro N. Alem', b'0', 21),
(495, 'San Javier', b'0', 21),
(496, 'Mburucuyá', b'0', 3),
(497, 'Concepción', b'0', 21),
(498, 'Apóstoles', b'0', 21),
(499, '1° de Mayo', b'0', 5),
(500, 'San Fernando', b'0', 5),
(501, 'San Lorenzo', b'0', 5),
(502, 'Lomas de Zamora', b'0', 1),
(503, 'Avellaneda', b'0', 1),
(504, '25 de Mayo', b'0', 5),
(505, 'General Belgrano', b'0', 5),
(506, 'Libertad', b'0', 5),
(507, 'Comandante Fernández', b'0', 5),
(508, 'Comuna 15', b'0', 2),
(509, 'Chimbas', b'0', 24),
(510, 'Capital', b'0', 24),
(511, 'Rivadavia', b'0', 24),
(512, '9 de Julio', b'0', 24),
(513, 'Albardón', b'0', 24),
(514, 'Angaco', b'0', 24),
(515, 'Santa Lucía', b'0', 24),
(516, 'Rawson', b'0', 24),
(517, '25 de Mayo', b'0', 24),
(518, 'San Martín', b'0', 24),
(519, 'Pocito', b'0', 24),
(520, 'Zonda', b'0', 24),
(521, 'Ullum', b'0', 24),
(522, 'Sarmiento', b'0', 24),
(523, 'Calingasta', b'0', 24),
(524, 'Iglesia', b'0', 24),
(525, 'Jáchal', b'0', 24),
(526, 'Valle Fértil', b'0', 24),
(527, 'Caucete', b'0', 24),
(528, 'La Plata', b'0', 1),
(529, 'Mercedes', b'0', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pais`
--

DROP TABLE IF EXISTS `pais`;
CREATE TABLE IF NOT EXISTS `pais` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `baja` bit(1) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `pais`
--

INSERT INTO `pais` (`id`, `baja`, `nombre`) VALUES
(1, b'0', 'Argentina');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

DROP TABLE IF EXISTS `pedido`;
CREATE TABLE IF NOT EXISTS `pedido` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `baja` bit(1) NOT NULL,
  `estado` tinyint DEFAULT NULL,
  `fecha_pedido` date DEFAULT NULL,
  `forma_pago` tinyint DEFAULT NULL,
  `hora_estimada_finalizacion` time(6) DEFAULT NULL,
  `tipo_envio` tinyint DEFAULT NULL,
  `total` double DEFAULT NULL,
  `total_costo` double DEFAULT NULL,
  `cliente_id` bigint DEFAULT NULL,
  `domicilio_id` bigint DEFAULT NULL,
  `empleado_id` bigint DEFAULT NULL,
  `factura_id` bigint DEFAULT NULL,
  `sucursal_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_g016pjgvtig2l5tbomjngwv0b` (`factura_id`),
  KEY `FK30s8j2ktpay6of18lbyqn3632` (`cliente_id`),
  KEY `FKauqt5ljerhslue4scdu1qexb` (`domicilio_id`),
  KEY `FK1nibrtel55qwnf6rwabwsqkyi` (`empleado_id`),
  KEY `FK3ks2hug06ddfndlg1rqw1xmr9` (`sucursal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido_aud`
--

DROP TABLE IF EXISTS `pedido_aud`;
CREATE TABLE IF NOT EXISTS `pedido_aud` (
  `id` bigint NOT NULL,
  `rev` int NOT NULL,
  `revtype` tinyint DEFAULT NULL,
  `estado` tinyint DEFAULT NULL,
  `fecha_pedido` date DEFAULT NULL,
  `forma_pago` tinyint DEFAULT NULL,
  `hora_estimada_finalizacion` time(6) DEFAULT NULL,
  `tipo_envio` tinyint DEFAULT NULL,
  `total` double DEFAULT NULL,
  `total_costo` double DEFAULT NULL,
  `domicilio_id` bigint DEFAULT NULL,
  `factura_id` bigint DEFAULT NULL,
  `sucursal_id` bigint DEFAULT NULL,
  PRIMARY KEY (`rev`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

DROP TABLE IF EXISTS `persona`;
CREATE TABLE IF NOT EXISTS `persona` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `baja` bit(1) NOT NULL,
  `apellido` varchar(255) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `imagen_persona_id` bigint DEFAULT NULL,
  `usuario_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_aef1ew8mf4bdu32jdjk0gv69q` (`imagen_persona_id`),
  UNIQUE KEY `UK_nefbl9obym4qiqpf6cd4bb2dj` (`usuario_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`id`, `baja`, `apellido`, `fecha_nacimiento`, `nombre`, `telefono`, `imagen_persona_id`, `usuario_id`) VALUES
(1, b'1', 'Perez', '1990-01-01', 'Juan', '123456789', NULL, 4),
(2, b'1', 'Perez', '1990-01-01', 'Juan', '123456789', NULL, 5),
(3, b'0', 'Perez', '1990-01-01', 'Juan', '123456789', 1, 6),
(4, b'0', 'Ketchup', '1991-10-09', 'Ash', '2615350001', 2, 7),
(5, b'0', 'Thompson', '1992-04-20', 'Felipe', '2615351111', 3, 8),
(6, b'0', 'Giordano', '1995-10-21', 'Alan', '2616854211', 4, 9),
(7, b'0', 'Ortiz', '1996-11-15', 'Hernan', '2613548651', 5, 10),
(8, b'0', 'Ortega', '1990-09-12', 'Lucas', '261987654', 6, 11),
(9, b'0', 'Bullaude', '1992-05-28', 'Pablo', '2617531248', 7, 12),
(10, b'0', 'Ramos', '1997-03-01', 'Santiago', '261965523', 10, 13),
(11, b'0', 'Martinez', '1992-02-02', 'Emiliano', '261454545', 13, 14),
(12, b'0', 'Vergara', '1999-01-30', 'Gabriel', '261852014', 16, 15),
(13, b'0', 'Fernandez', '1998-05-22', 'Ignacio', '261124654', 19, 16),
(14, b'0', 'Tobares', '1989-07-12', 'Bruno', '261124242', 8, 17),
(15, b'0', 'Fredes', '1999-12-31', 'Agustin', '261753215', 11, 18),
(16, b'0', 'Villavicencio', '1993-12-19', 'Agustin', '2615350637', 14, 19),
(17, b'0', 'Palleres', '1988-04-04', 'Claudio', '261451245', 17, 20),
(18, b'0', 'Badiali', '1990-10-22', 'Jorge', '2618525444', 20, 21),
(19, b'0', 'Mendez', '2002-04-27', 'Julio', '2614989854', 9, 22),
(20, b'0', 'Ochoa', '2001-02-14', 'Samuel', '2617520520', 12, 23),
(21, b'0', 'Olivera', '2000-07-14', 'Rodrigo', '2611121131', 15, 24),
(22, b'0', 'Olivera', '1996-09-17', 'Matias', '2618689689', 18, 25);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona_aud`
--

DROP TABLE IF EXISTS `persona_aud`;
CREATE TABLE IF NOT EXISTS `persona_aud` (
  `id` bigint NOT NULL,
  `rev` int NOT NULL,
  `revtype` tinyint DEFAULT NULL,
  `apellido` varchar(255) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rev`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `persona_aud`
--

INSERT INTO `persona_aud` (`id`, `rev`, `revtype`, `apellido`, `fecha_nacimiento`, `nombre`, `telefono`) VALUES
(1, 1103, 0, 'Perez', '1990-01-01', 'Juan', '123456789'),
(2, 1153, 0, 'Perez', '1990-01-01', 'Juan', '123456789'),
(3, 1155, 0, 'Perez', '1990-01-01', 'Juan', '123456789'),
(4, 1157, 0, 'Ketchup', '1991-10-09', 'Ash', '2615350001'),
(5, 1159, 0, 'Thompson', '1992-04-20', 'Felipe', '2615351111'),
(6, 1161, 0, 'Giordano', '1995-10-21', 'Alan', '2616854211'),
(7, 1163, 0, 'Ortiz', '1996-11-15', 'Hernan', '2613548651'),
(8, 1165, 0, 'Ortega', '1990-09-12', 'Lucas', '261987654'),
(9, 1167, 0, 'Bullaude', '1992-05-28', 'Pablo', '2617531248'),
(10, 1169, 0, 'Ramos', '1997-03-01', 'Santiago', '261965523'),
(11, 1171, 0, 'Martinez', '1992-02-02', 'Emiliano', '261454545'),
(12, 1173, 0, 'Vergara', '1999-01-30', 'Gabriel', '261852014'),
(13, 1175, 0, 'Fernandez', '1998-05-22', 'Ignacio', '261124654'),
(14, 1177, 0, 'Tobares', '1989-07-12', 'Bruno', '261124242'),
(15, 1179, 0, 'Fredes', '1999-12-31', 'Agustin', '261753215'),
(16, 1181, 0, 'Villavicencio', '1993-12-19', 'Agustin', '2615350637'),
(17, 1183, 0, 'Palleres', '1988-04-04', 'Claudio', '261451245'),
(18, 1203, 0, 'Badiali', '1990-10-22', '88Jorge', '261451245'),
(19, 1205, 0, 'Mendez', '2002-04-27', 'Julio', '2614989854'),
(20, 1207, 0, 'Ochoa', '2001-02-14', 'Samuel', '2617520520'),
(21, 1209, 0, 'Olivera', '2000-07-14', 'Rodrigo', '2611121131'),
(22, 1211, 0, 'Olivera', '1996-09-17', 'Matias', '2618689689');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promocion`
--

DROP TABLE IF EXISTS `promocion`;
CREATE TABLE IF NOT EXISTS `promocion` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `baja` bit(1) NOT NULL,
  `denominacion` varchar(255) DEFAULT NULL,
  `descripcion_descuento` varchar(255) DEFAULT NULL,
  `fecha_desde` date DEFAULT NULL,
  `fecha_hasta` date DEFAULT NULL,
  `hora_desde` time(6) DEFAULT NULL,
  `hora_hasta` time(6) DEFAULT NULL,
  `precio_promocional` double DEFAULT NULL,
  `tipo_promocion` tinyint DEFAULT NULL,
  `sucursal_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKaulen6od3ay1qnp7smhlxwr41` (`sucursal_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `promocion`
--

INSERT INTO `promocion` (`id`, `baja`, `denominacion`, `descripcion_descuento`, `fecha_desde`, `fecha_hasta`, `hora_desde`, `hora_hasta`, `precio_promocional`, `tipo_promocion`, `sucursal_id`) VALUES
(1, b'0', 'Promocion 1', '2 pizzas clasicas mas una especial', '2024-09-01', '2024-09-30', '20:00:00.000000', '23:00:00.000000', 2000, 1, 1),
(2, b'0', 'Promocion 1', '2 pizzas clasicas mas una especial', '2024-09-01', '2024-09-30', '20:00:00.000000', '23:00:00.000000', 2000, 1, 2),
(3, b'0', 'Promocion 2', '2 hamburguesas monster + papas a caballo + coca 1.25L', '2024-09-01', '2025-09-30', '19:00:00.000000', '01:59:00.000000', 2400, 1, 1),
(4, b'0', 'Promocion 2', '2 hamburguesas monster + papas a caballo + coca 1.25L', '2024-09-01', '2025-09-30', '19:00:00.000000', '01:59:00.000000', 2400, 1, 2),
(5, b'0', 'Promocion 3', 'Lomo Completo + papas clasicas', '2024-09-01', '2025-09-30', '19:00:00.000000', '01:59:00.000000', 1200, 1, 1),
(6, b'0', 'Promocion 3', 'Lomo Completo + papas clasicas', '2024-09-01', '2025-09-30', '19:00:00.000000', '01:59:00.000000', 1200, 1, 2),
(7, b'0', 'Promocion 4', '2 Panchos con poncho + coca 1.25L', '2024-09-01', '2025-09-30', '19:00:00.000000', '01:59:00.000000', 1500, 1, 1),
(8, b'0', 'Promocion 4', '2 Panchos con poncho + coca 1.25L', '2024-09-01', '2025-09-30', '19:00:00.000000', '01:59:00.000000', 1500, 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promocion_aud`
--

DROP TABLE IF EXISTS `promocion_aud`;
CREATE TABLE IF NOT EXISTS `promocion_aud` (
  `id` bigint NOT NULL,
  `rev` int NOT NULL,
  `revtype` tinyint DEFAULT NULL,
  `denominacion` varchar(255) DEFAULT NULL,
  `descripcion_descuento` varchar(255) DEFAULT NULL,
  `fecha_desde` date DEFAULT NULL,
  `fecha_hasta` date DEFAULT NULL,
  `hora_desde` time(6) DEFAULT NULL,
  `hora_hasta` time(6) DEFAULT NULL,
  `precio_promocional` double DEFAULT NULL,
  `tipo_promocion` tinyint DEFAULT NULL,
  PRIMARY KEY (`rev`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `promocion_aud`
--

INSERT INTO `promocion_aud` (`id`, `rev`, `revtype`, `denominacion`, `descripcion_descuento`, `fecha_desde`, `fecha_hasta`, `hora_desde`, `hora_hasta`, `precio_promocional`, `tipo_promocion`) VALUES
(1, 1002, 0, 'Promocion 1', '2 pizzas clasicas mas una especial', '2024-09-01', '2024-09-30', '20:00:00.000000', '23:00:00.000000', 2000, 1),
(2, 1003, 0, 'Promocion 1', '2 pizzas clasicas mas una especial', '2024-09-01', '2024-09-30', '20:00:00.000000', '23:00:00.000000', 2000, 1),
(3, 1004, 0, 'Promocion 2', '2 hamburguesas monster + papas a caballo + coca 1.25L', '2024-09-01', '2025-09-30', '19:00:00.000000', '01:59:00.000000', 2000, 1),
(4, 1005, 0, 'Promocion 2', '2 hamburguesas monster + papas a caballo + coca 1.25L', '2024-09-01', '2025-09-30', '19:00:00.000000', '01:59:00.000000', 2000, 1),
(5, 1006, 0, 'Promocion 3', 'Lomo Completo + papas clasicas', '2024-09-01', '2025-09-30', '19:00:00.000000', '01:59:00.000000', 1200, 1),
(6, 1007, 0, 'Promocion 3', 'Lomo Completo + papas clasicas', '2024-09-01', '2025-09-30', '19:00:00.000000', '01:59:00.000000', 1200, 1),
(7, 1008, 0, 'Promocion 4', '2 Panchos con poncho + coca 1.25L', '2024-09-01', '2025-09-30', '19:00:00.000000', '01:59:00.000000', 1200, 1),
(8, 1009, 0, 'Promocion 4', '2 Panchos con poncho + coca 1.25L', '2024-09-01', '2025-09-30', '19:00:00.000000', '01:59:00.000000', 1500, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promocion_detalle`
--

DROP TABLE IF EXISTS `promocion_detalle`;
CREATE TABLE IF NOT EXISTS `promocion_detalle` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `baja` bit(1) NOT NULL,
  `cantidad` int NOT NULL,
  `articulo_id` bigint DEFAULT NULL,
  `promocion_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK2dthinvgi20qc529cvkab7nt2` (`articulo_id`),
  KEY `FKmxkc9fkv4btuhc89yu338obqd` (`promocion_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `promocion_detalle`
--

INSERT INTO `promocion_detalle` (`id`, `baja`, `cantidad`, `articulo_id`, `promocion_id`) VALUES
(1, b'0', 1, 109, 1),
(2, b'0', 2, 108, 1),
(3, b'0', 2, 107, 2),
(4, b'0', 1, 110, 2),
(5, b'0', 1, 116, 3),
(6, b'0', 2, 92, 3),
(7, b'0', 1, 113, 3),
(8, b'0', 1, 115, 4),
(9, b'0', 2, 91, 4),
(10, b'0', 1, 114, 4),
(11, b'0', 1, 112, 5),
(12, b'0', 1, 97, 5),
(13, b'0', 1, 98, 6),
(14, b'0', 1, 111, 6),
(15, b'0', 2, 130, 7),
(16, b'0', 1, 116, 7),
(17, b'0', 2, 129, 8),
(18, b'0', 1, 115, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promocion_detalle_aud`
--

DROP TABLE IF EXISTS `promocion_detalle_aud`;
CREATE TABLE IF NOT EXISTS `promocion_detalle_aud` (
  `id` bigint NOT NULL,
  `rev` int NOT NULL,
  `revtype` tinyint DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  PRIMARY KEY (`rev`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `promocion_detalle_aud`
--

INSERT INTO `promocion_detalle_aud` (`id`, `rev`, `revtype`, `cantidad`) VALUES
(1, 1002, 0, 1),
(2, 1002, 0, 2),
(3, 1003, 0, 2),
(4, 1003, 0, 1),
(5, 1004, 0, 1),
(6, 1004, 0, 2),
(7, 1004, 0, 1),
(8, 1005, 0, 1),
(9, 1005, 0, 2),
(10, 1005, 0, 1),
(11, 1006, 0, 1),
(12, 1006, 0, 1),
(13, 1007, 0, 1),
(14, 1007, 0, 1),
(15, 1008, 0, 2),
(16, 1008, 0, 1),
(17, 1009, 0, 2),
(18, 1009, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincia`
--

DROP TABLE IF EXISTS `provincia`;
CREATE TABLE IF NOT EXISTS `provincia` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `baja` bit(1) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `pais_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKm4s599988w0v1q1nw6dyo5t2m` (`pais_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `provincia`
--

INSERT INTO `provincia` (`id`, `baja`, `nombre`, `pais_id`) VALUES
(1, b'0', 'Buenos Aires', 1),
(2, b'0', 'Ciudad Autónoma de Buenos Aires', 1),
(3, b'0', 'Corrientes', 1),
(4, b'0', 'Salta', 1),
(5, b'0', 'Chaco', 1),
(6, b'0', 'La Rioja', 1),
(7, b'0', 'Chubut', 1),
(8, b'0', 'Santa Cruz', 1),
(9, b'0', 'Río Negro', 1),
(10, b'0', 'Catamarca', 1),
(11, b'0', 'San Luis', 1),
(12, b'0', 'Córdoba', 1),
(13, b'0', 'Mendoza', 1),
(14, b'0', 'Formosa', 1),
(15, b'0', 'Jujuy', 1),
(16, b'0', 'Neuquén', 1),
(17, b'0', 'Tierra del Fuego, Antártida e Islas del Atlántico Sur', 1),
(18, b'0', 'Tucumán', 1),
(19, b'0', 'Santa Fe', 1),
(20, b'0', 'La Pampa', 1),
(21, b'0', 'Misiones', 1),
(22, b'0', 'Santiago del Estero', 1),
(23, b'0', 'Entre Ríos', 1),
(24, b'0', 'San Juan', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `revision_info`
--

DROP TABLE IF EXISTS `revision_info`;
CREATE TABLE IF NOT EXISTS `revision_info` (
  `id` int NOT NULL,
  `revision_date` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `revision_info`
--

INSERT INTO `revision_info` (`id`, `revision_date`) VALUES
(1, '2024-08-10 11:35:34.169000'),
(2, '2024-08-10 11:37:06.922000'),
(52, '2024-08-13 21:03:27.544000'),
(53, '2024-08-13 21:04:15.628000'),
(54, '2024-08-13 21:05:18.468000'),
(102, '2024-08-19 21:06:03.469000'),
(103, '2024-08-19 21:06:24.231000'),
(152, '2024-08-20 21:10:47.215000'),
(153, '2024-08-20 21:13:35.791000'),
(154, '2024-08-20 21:16:51.201000'),
(155, '2024-08-20 21:18:02.116000'),
(156, '2024-08-20 21:22:33.768000'),
(157, '2024-08-20 21:25:52.882000'),
(202, '2024-08-26 17:46:56.833000'),
(203, '2024-08-26 17:48:19.068000'),
(204, '2024-08-26 20:36:52.956000'),
(205, '2024-08-26 20:37:17.821000'),
(252, '2024-08-26 22:05:03.538000'),
(253, '2024-08-26 22:05:22.008000'),
(254, '2024-08-26 22:11:59.423000'),
(255, '2024-08-26 22:17:21.891000'),
(302, '2024-08-26 22:26:08.740000'),
(352, '2024-08-29 19:58:21.033000'),
(402, '2024-08-30 20:58:06.216000'),
(403, '2024-08-30 21:05:46.724000'),
(452, '2024-08-30 21:10:41.540000'),
(453, '2024-08-30 21:20:50.797000'),
(502, '2024-08-30 21:27:26.303000'),
(552, '2024-09-01 10:19:31.018000'),
(553, '2024-09-01 11:11:53.017000'),
(602, '2024-09-01 11:16:00.011000'),
(652, '2024-09-01 11:48:05.790000'),
(702, '2024-09-01 12:34:08.673000'),
(752, '2024-09-01 19:41:48.418000'),
(753, '2024-09-01 19:50:27.318000'),
(802, '2024-09-01 20:00:57.074000'),
(803, '2024-09-01 20:01:27.051000'),
(804, '2024-09-01 20:03:48.316000'),
(805, '2024-09-01 20:35:21.798000'),
(806, '2024-09-01 20:35:50.736000'),
(807, '2024-09-01 20:40:33.566000'),
(808, '2024-09-01 20:46:10.001000'),
(809, '2024-09-01 20:47:19.657000'),
(810, '2024-09-01 20:48:08.791000'),
(811, '2024-09-01 20:49:14.958000'),
(812, '2024-09-01 20:50:47.464000'),
(813, '2024-09-01 20:51:50.354000'),
(814, '2024-09-01 20:57:56.544000'),
(815, '2024-09-01 20:58:43.108000'),
(816, '2024-09-01 20:59:47.449000'),
(817, '2024-09-01 21:01:09.312000'),
(818, '2024-09-01 21:03:05.606000'),
(819, '2024-09-01 21:03:50.048000'),
(820, '2024-09-01 21:06:11.819000'),
(821, '2024-09-01 21:08:09.132000'),
(822, '2024-09-01 21:09:10.116000'),
(823, '2024-09-01 21:09:40.242000'),
(824, '2024-09-01 21:11:36.710000'),
(825, '2024-09-01 21:13:03.889000'),
(852, '2024-09-08 15:49:16.958000'),
(853, '2024-09-08 16:04:13.319000'),
(854, '2024-09-08 16:17:41.450000'),
(855, '2024-09-08 16:21:48.621000'),
(856, '2024-09-08 16:23:48.376000'),
(902, '2024-09-08 16:38:10.315000'),
(903, '2024-09-08 16:44:40.004000'),
(952, '2024-09-08 16:56:01.609000'),
(953, '2024-09-08 17:11:10.401000'),
(954, '2024-09-08 17:13:38.544000'),
(955, '2024-09-08 17:14:42.028000'),
(956, '2024-09-08 17:16:05.045000'),
(957, '2024-09-08 18:11:04.338000'),
(958, '2024-09-08 18:17:12.637000'),
(959, '2024-09-08 18:20:32.335000'),
(960, '2024-09-08 18:21:03.546000'),
(961, '2024-09-08 18:22:54.375000'),
(962, '2024-09-08 18:23:05.447000'),
(963, '2024-09-08 18:23:49.591000'),
(964, '2024-09-08 18:28:44.740000'),
(965, '2024-09-08 18:29:44.213000'),
(966, '2024-09-08 18:31:23.724000'),
(1002, '2024-09-15 14:51:30.499000'),
(1003, '2024-09-15 14:53:11.376000'),
(1004, '2024-09-15 16:01:49.396000'),
(1005, '2024-09-15 16:02:30.557000'),
(1006, '2024-09-15 16:07:43.407000'),
(1007, '2024-09-15 16:08:10.599000'),
(1008, '2024-09-15 16:09:32.026000'),
(1009, '2024-09-15 16:10:21.810000'),
(1052, '2024-09-15 17:07:58.165000'),
(1053, '2024-09-15 17:16:40.275000'),
(1054, '2024-09-15 17:18:18.530000'),
(1102, '2024-09-15 17:34:25.059000'),
(1103, '2024-09-15 17:34:25.129000'),
(1152, '2024-09-22 18:03:58.147000'),
(1153, '2024-09-22 18:03:58.305000'),
(1154, '2024-09-22 18:04:55.363000'),
(1155, '2024-09-22 18:04:55.376000'),
(1156, '2024-09-22 18:20:12.821000'),
(1157, '2024-09-22 18:20:12.864000'),
(1158, '2024-09-22 18:21:56.768000'),
(1159, '2024-09-22 18:21:56.786000'),
(1160, '2024-09-22 18:23:13.272000'),
(1161, '2024-09-22 18:23:13.307000'),
(1162, '2024-09-22 18:24:25.570000'),
(1163, '2024-09-22 18:24:25.586000'),
(1164, '2024-09-22 18:25:18.223000'),
(1165, '2024-09-22 18:25:18.243000'),
(1166, '2024-09-22 18:30:45.402000'),
(1167, '2024-09-22 18:30:45.417000'),
(1168, '2024-09-22 18:31:42.955000'),
(1169, '2024-09-22 18:31:42.968000'),
(1170, '2024-09-22 18:33:51.341000'),
(1171, '2024-09-22 18:33:51.388000'),
(1172, '2024-09-22 18:34:46.991000'),
(1173, '2024-09-22 18:34:47.006000'),
(1174, '2024-09-22 18:36:36.485000'),
(1175, '2024-09-22 18:36:36.497000'),
(1176, '2024-09-22 18:37:49.486000'),
(1177, '2024-09-22 18:37:49.505000'),
(1178, '2024-09-22 18:39:37.418000'),
(1179, '2024-09-22 18:39:37.438000'),
(1180, '2024-09-22 18:40:26.105000'),
(1181, '2024-09-22 18:40:26.123000'),
(1182, '2024-09-22 18:41:59.506000'),
(1183, '2024-09-22 18:41:59.516000'),
(1202, '2024-09-23 18:44:16.021000'),
(1203, '2024-09-23 18:44:16.113000'),
(1204, '2024-09-23 18:47:20.693000'),
(1205, '2024-09-23 18:47:20.712000'),
(1206, '2024-09-23 18:48:34.466000'),
(1207, '2024-09-23 18:48:34.484000'),
(1208, '2024-09-23 18:50:01.357000'),
(1209, '2024-09-23 18:50:01.374000'),
(1210, '2024-09-23 18:51:04.577000'),
(1211, '2024-09-23 18:51:04.601000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `revision_info_seq`
--

DROP TABLE IF EXISTS `revision_info_seq`;
CREATE TABLE IF NOT EXISTS `revision_info_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `revision_info_seq`
--

INSERT INTO `revision_info_seq` (`next_val`) VALUES
(1301);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursal`
--

DROP TABLE IF EXISTS `sucursal`;
CREATE TABLE IF NOT EXISTS `sucursal` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `baja` bit(1) NOT NULL,
  `es_casa_matriz` bit(1) NOT NULL,
  `horario_apertura` time(6) DEFAULT NULL,
  `horario_cierre` time(6) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `domicilio_id` bigint DEFAULT NULL,
  `empresa_id` bigint DEFAULT NULL,
  `imagen_sucursal_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_34hifwa9nn1cgdbjgkosx0wy2` (`domicilio_id`),
  UNIQUE KEY `UK_360r6sip78ax5am2e1yk574ry` (`imagen_sucursal_id`),
  KEY `FK3w56rbjykxbp2e79cdq0xsghd` (`empresa_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `sucursal`
--

INSERT INTO `sucursal` (`id`, `baja`, `es_casa_matriz`, `horario_apertura`, `horario_cierre`, `nombre`, `domicilio_id`, `empresa_id`, `imagen_sucursal_id`) VALUES
(1, b'0', b'1', '09:00:00.000000', '18:00:00.000000', 'Sucursal Central', 2, 1, 1),
(2, b'0', b'0', '09:00:00.000000', '18:00:00.000000', 'Sucursal Oeste', 1, 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursal_aud`
--

DROP TABLE IF EXISTS `sucursal_aud`;
CREATE TABLE IF NOT EXISTS `sucursal_aud` (
  `id` bigint NOT NULL,
  `rev` int NOT NULL,
  `revtype` tinyint DEFAULT NULL,
  `es_casa_matriz` bit(1) DEFAULT NULL,
  `horario_apertura` time(6) DEFAULT NULL,
  `horario_cierre` time(6) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rev`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `sucursal_aud`
--

INSERT INTO `sucursal_aud` (`id`, `rev`, `revtype`, `es_casa_matriz`, `horario_apertura`, `horario_cierre`, `nombre`) VALUES
(1, 102, 0, b'1', '09:00:00.000000', '18:00:00.000000', 'Sucursal Central'),
(2, 103, 0, b'1', '09:00:00.000000', '18:00:00.000000', 'Sucursal Central'),
(1, 152, 1, b'1', '09:00:00.000000', '18:00:00.000000', 'Sucursal Central'),
(2, 152, 1, b'0', '09:00:00.000000', '18:00:00.000000', 'Sucursal Oeste'),
(1, 153, 1, b'1', '09:00:00.000000', '18:00:00.000000', 'Sucursal Central'),
(2, 153, 1, b'0', '09:00:00.000000', '18:00:00.000000', 'Sucursal Oeste'),
(1, 154, 1, b'1', '09:00:00.000000', '18:00:00.000000', 'Sucursal Central'),
(2, 154, 1, b'0', '09:00:00.000000', '18:00:00.000000', 'Sucursal Oeste'),
(1, 155, 1, b'1', '09:00:00.000000', '18:00:00.000000', 'Sucursal Central'),
(2, 155, 1, b'0', '09:00:00.000000', '18:00:00.000000', 'Sucursal Oeste'),
(1, 156, 1, b'1', '09:00:00.000000', '18:00:00.000000', 'Sucursal Central'),
(1, 157, 1, b'1', '09:00:00.000000', '18:00:00.000000', 'Sucursal Central'),
(1, 202, 1, b'1', '09:00:00.000000', '18:00:00.000000', 'Sucursal Central'),
(2, 202, 1, b'0', '09:00:00.000000', '18:00:00.000000', 'Sucursal Oeste'),
(1, 203, 1, b'1', '09:00:00.000000', '18:00:00.000000', 'Sucursal Central'),
(1, 204, 1, b'1', '09:00:00.000000', '18:00:00.000000', 'Sucursal Central'),
(2, 204, 1, b'0', '09:00:00.000000', '18:00:00.000000', 'Sucursal Oeste'),
(1, 205, 1, b'1', '09:00:00.000000', '18:00:00.000000', 'Sucursal Central'),
(2, 205, 1, b'0', '09:00:00.000000', '18:00:00.000000', 'Sucursal Oeste');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursal_categoria`
--

DROP TABLE IF EXISTS `sucursal_categoria`;
CREATE TABLE IF NOT EXISTS `sucursal_categoria` (
  `sucursal_id` bigint NOT NULL,
  `categoria_id` bigint NOT NULL,
  PRIMARY KEY (`sucursal_id`,`categoria_id`),
  KEY `FKtcbmv4283gg4r2ds9v510up26` (`categoria_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `sucursal_categoria`
--

INSERT INTO `sucursal_categoria` (`sucursal_id`, `categoria_id`) VALUES
(1, 1),
(2, 1),
(1, 2),
(2, 2),
(1, 3),
(2, 3),
(1, 4),
(2, 4),
(1, 5),
(2, 5),
(1, 6),
(2, 6),
(1, 7),
(2, 7),
(1, 8),
(2, 8),
(1, 9),
(2, 9),
(1, 10),
(2, 10),
(1, 11),
(2, 11),
(1, 14),
(2, 14),
(1, 18),
(2, 18);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursal_categoria_aud`
--

DROP TABLE IF EXISTS `sucursal_categoria_aud`;
CREATE TABLE IF NOT EXISTS `sucursal_categoria_aud` (
  `rev` int NOT NULL,
  `sucursal_id` bigint NOT NULL,
  `categoria_id` bigint NOT NULL,
  `revtype` tinyint DEFAULT NULL,
  PRIMARY KEY (`rev`,`sucursal_id`,`categoria_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `sucursal_categoria_aud`
--

INSERT INTO `sucursal_categoria_aud` (`rev`, `sucursal_id`, `categoria_id`, `revtype`) VALUES
(152, 1, 1, 0),
(152, 1, 2, 0),
(152, 2, 1, 0),
(152, 2, 2, 0),
(153, 1, 3, 0),
(153, 1, 4, 0),
(153, 1, 5, 0),
(153, 1, 6, 0),
(153, 1, 7, 0),
(153, 2, 3, 0),
(153, 2, 4, 0),
(153, 2, 5, 0),
(153, 2, 6, 0),
(153, 2, 7, 0),
(154, 1, 8, 0),
(154, 1, 9, 0),
(154, 1, 10, 0),
(154, 1, 11, 0),
(154, 1, 12, 0),
(154, 1, 13, 0),
(154, 2, 8, 0),
(154, 2, 9, 0),
(154, 2, 10, 0),
(154, 2, 11, 0),
(154, 2, 12, 0),
(154, 2, 13, 0),
(155, 1, 14, 0),
(155, 1, 15, 0),
(155, 1, 16, 0),
(155, 1, 17, 0),
(155, 2, 14, 0),
(155, 2, 15, 0),
(155, 2, 16, 0),
(155, 2, 17, 0),
(156, 1, 18, 0),
(157, 1, 19, 0),
(202, 1, 10, 2),
(202, 2, 10, 2),
(203, 1, 19, 2),
(204, 1, 5, 2),
(204, 2, 5, 2),
(205, 1, 17, 2),
(205, 2, 17, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidad_medida`
--

DROP TABLE IF EXISTS `unidad_medida`;
CREATE TABLE IF NOT EXISTS `unidad_medida` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `baja` bit(1) NOT NULL,
  `denominacion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `unidad_medida`
--

INSERT INTO `unidad_medida` (`id`, `baja`, `denominacion`) VALUES
(1, b'0', 'Kilogramos'),
(2, b'0', 'Gramos'),
(3, b'0', 'Litros'),
(4, b'0', 'Mililitros'),
(5, b'0', 'Unidades'),
(6, b'0', 'Pizca'),
(7, b'0', 'Porciones'),
(8, b'0', 'Cucharadas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidad_medida_aud`
--

DROP TABLE IF EXISTS `unidad_medida_aud`;
CREATE TABLE IF NOT EXISTS `unidad_medida_aud` (
  `id` bigint NOT NULL,
  `rev` int NOT NULL,
  `revtype` tinyint DEFAULT NULL,
  `denominacion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rev`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `baja` bit(1) NOT NULL,
  `auth0id` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `rol` tinyint DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `baja`, `auth0id`, `email`, `rol`, `username`) VALUES
(4, b'1', NULL, 'juan.perez@example.com', NULL, NULL),
(5, b'1', '123456', 'juan.perezzz@example.com', 3, NULL),
(6, b'0', '123456', 'juan.perezzzz@example.com', 3, 'JuanchoPerez'),
(7, b'0', '165653', 'pokemon@example.com', 3, 'El mayonesas'),
(8, b'0', '167161', 'senior.thompson@example.com', 3, 'senior-thompson'),
(9, b'0', '138654', 'alan.giordano@example.com', 3, 'alan.giordano'),
(10, b'0', '125645', 'hernan.ortiz@example.com', 3, 'hernan.ortiz'),
(11, b'0', '985432', 'lucas.ortega@example.com', 3, 'lucas.ortega'),
(12, b'0', '546213', 'pablito@example.com', 4, 'pablito'),
(13, b'0', '546213', 'santicrack@example.com', 4, 'santicrack'),
(14, b'0', '584848', 'emipingu@example.com', 4, 'emipingu'),
(15, b'0', '124578', 'gabigol@example.com', 4, 'gabigol'),
(16, b'0', '636323', 'nachofer@example.com', 1, 'nachofer'),
(17, b'0', '636666', 'bruno.toba@example.com', 1, 'bruno.toba'),
(18, b'0', '489513', 'agustin.fredes@example.com', 0, 'agustin.fredes'),
(19, b'0', '123321', 'aguvilla@example.com', 0, 'aguvilla'),
(20, b'0', '685858', 'claupa@example.com', 5, 'claupa'),
(21, b'0', '884525', 'jorgeee@example.com', 5, 'jorgitoBadi'),
(22, b'0', '741236', 'julio.capo@example.com', 5, 'capoleti'),
(23, b'0', '464652', 'samu.fer@example.com', 5, 'Padelero22'),
(24, b'0', '111421', 'rodri.oli@example.com', 5, 'rodriFlex'),
(25, b'0', '323343', 'mati.oli@example.com', 5, 'matiFlex');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_aud`
--

DROP TABLE IF EXISTS `usuario_aud`;
CREATE TABLE IF NOT EXISTS `usuario_aud` (
  `id` bigint NOT NULL,
  `rev` int NOT NULL,
  `revtype` tinyint DEFAULT NULL,
  `auth0id` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `rol` tinyint DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rev`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `usuario_aud`
--

INSERT INTO `usuario_aud` (`id`, `rev`, `revtype`, `auth0id`, `email`, `rol`, `username`) VALUES
(1, 1052, 0, 'auth0|1234567890', 'johndoe@example.com', 2, 'johndoe'),
(2, 1053, 0, 'auth0|1', 'snoopy@example.com', 2, 'Charly Brown'),
(3, 1054, 0, 'auth0|21', 'pokemon@example.com', 2, 'Ash Ketchup'),
(4, 1102, 0, NULL, 'juan.perez@example.com', NULL, NULL),
(5, 1152, 0, '123456', 'juan.perezzz@example.com', 3, NULL),
(6, 1154, 0, '123456', 'juan.perezzzz@example.com', 3, 'JuanchoPerez'),
(7, 1156, 0, '165653', 'pokemon@example.com', 3, 'El mayonesas'),
(8, 1158, 0, '167161', 'senior.thompson@example.com', 3, 'senior-thompson'),
(9, 1160, 0, '138654', 'alan.giordano@example.com', 3, 'alan.giordano'),
(10, 1162, 0, '138654', 'hernan.ortiz@example.com', 3, 'hernan.ortiz'),
(11, 1164, 0, '138654', 'lucas.ortega@example.com', 3, 'lucas.ortega'),
(12, 1166, 0, '546213', 'pablito@example.com', 3, 'pablito'),
(13, 1168, 0, '546213', 'santicrack@example.com', 4, 'santicrack'),
(14, 1170, 0, '584848', 'emipingu@example.com', 4, 'emipingu'),
(15, 1172, 0, '124578', 'gabigol@example.com', 4, 'gabigol'),
(16, 1174, 0, '636323', 'nachofer@example.com', 1, 'nachofer'),
(17, 1176, 0, '636323', 'bruno.toba@example.com', 1, 'bruno.toba'),
(18, 1178, 0, '489513', 'agustin.fredes@example.com', 0, 'agustin.fredes'),
(19, 1180, 0, '123321', 'aguvilla@example.com', 0, 'aguvilla'),
(20, 1182, 0, '685858', 'claupa@example.com', 5, 'claupa'),
(21, 1202, 0, '884525', 'jorgeee@example.com', 5, 'jorgitoBadi'),
(22, 1204, 0, '741236', 'julio.capo@example.com', 5, 'capoleti'),
(23, 1206, 0, '464652', 'samu.fer@example.com', 5, 'Padelero22'),
(24, 1208, 0, '111421', 'rodri.oli@example.com', 5, 'rodriFlex'),
(25, 1210, 0, '323343', 'mati.oli@example.com', 5, 'matiFlex');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `articulo`
--
ALTER TABLE `articulo`
  ADD CONSTRAINT `FK35xlp590328eybh2pf5ublsne` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`id`),
  ADD CONSTRAINT `FKlf2hbqm1r4qx36lkr0b4mix6b` FOREIGN KEY (`unidad_medida_id`) REFERENCES `unidad_medida` (`id`),
  ADD CONSTRAINT `FKqmk7iluj5x46yimu6dl1sbbks` FOREIGN KEY (`sucursal_id`) REFERENCES `sucursal` (`id`);

--
-- Filtros para la tabla `articulo_aud`
--
ALTER TABLE `articulo_aud`
  ADD CONSTRAINT `FK9h1ytb6c56alvxlvp3ahsm2mb` FOREIGN KEY (`rev`) REFERENCES `revision_info` (`id`);

--
-- Filtros para la tabla `articulo_imagen`
--
ALTER TABLE `articulo_imagen`
  ADD CONSTRAINT `FK6a3uncakp0k7gb7j5eg7pg62r` FOREIGN KEY (`imagen_id`) REFERENCES `imagen_articulo` (`id`),
  ADD CONSTRAINT `FKev52v4ij0lux8e0twiuirtoqj` FOREIGN KEY (`articulo_id`) REFERENCES `articulo` (`id`);

--
-- Filtros para la tabla `articulo_imagen_aud`
--
ALTER TABLE `articulo_imagen_aud`
  ADD CONSTRAINT `FKct785p3kuefs4qtpi751i3169` FOREIGN KEY (`rev`) REFERENCES `revision_info` (`id`);

--
-- Filtros para la tabla `articulo_insumo`
--
ALTER TABLE `articulo_insumo`
  ADD CONSTRAINT `FK5yoloai8ewly5lkbi3wl5904y` FOREIGN KEY (`id`) REFERENCES `articulo` (`id`);

--
-- Filtros para la tabla `articulo_insumo_aud`
--
ALTER TABLE `articulo_insumo_aud`
  ADD CONSTRAINT `FKc77ixmpho65yoq223ec7jer01` FOREIGN KEY (`rev`,`id`) REFERENCES `articulo_aud` (`rev`, `id`);

--
-- Filtros para la tabla `articulo_manufacturado`
--
ALTER TABLE `articulo_manufacturado`
  ADD CONSTRAINT `FK9t82oibyduo62wci8y6gfpllx` FOREIGN KEY (`id`) REFERENCES `articulo` (`id`);

--
-- Filtros para la tabla `articulo_manufacturado_aud`
--
ALTER TABLE `articulo_manufacturado_aud`
  ADD CONSTRAINT `FKsyt0xwxrbfm047ifu22gcr383` FOREIGN KEY (`rev`,`id`) REFERENCES `articulo_aud` (`rev`, `id`);

--
-- Filtros para la tabla `articulo_manufacturado_detalle`
--
ALTER TABLE `articulo_manufacturado_detalle`
  ADD CONSTRAINT `FKcwnptwtrvdenu9tetlffab6dp` FOREIGN KEY (`articulo_manufacturado_id`) REFERENCES `articulo_manufacturado` (`id`),
  ADD CONSTRAINT `FKee8sad16ogk7in2nlh0vc3y9b` FOREIGN KEY (`articulo_insumo_id`) REFERENCES `articulo_insumo` (`id`);

--
-- Filtros para la tabla `articulo_manufacturado_detalle_aud`
--
ALTER TABLE `articulo_manufacturado_detalle_aud`
  ADD CONSTRAINT `FK1us9183spe3tj9d6y2mwccuq` FOREIGN KEY (`rev`) REFERENCES `revision_info` (`id`);

--
-- Filtros para la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD CONSTRAINT `FKif4f273okqr2edqkm0xqxjlyk` FOREIGN KEY (`categoria_padre_id`) REFERENCES `categoria` (`id`);

--
-- Filtros para la tabla `categoria_aud`
--
ALTER TABLE `categoria_aud`
  ADD CONSTRAINT `FKjvqndxmkpq87wka6dy953jv6j` FOREIGN KEY (`rev`) REFERENCES `revision_info` (`id`);

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `FKkpvkbjg32bso6riqge70hwcel` FOREIGN KEY (`id`) REFERENCES `persona` (`id`);

--
-- Filtros para la tabla `cliente_aud`
--
ALTER TABLE `cliente_aud`
  ADD CONSTRAINT `FKh49w2ty5q2cjellt38rl5r9vi` FOREIGN KEY (`rev`,`id`) REFERENCES `persona_aud` (`rev`, `id`);

--
-- Filtros para la tabla `cliente_domicilio`
--
ALTER TABLE `cliente_domicilio`
  ADD CONSTRAINT `FK7jkekc8ff2g28bthd4dd9d7r2` FOREIGN KEY (`domicilio_id`) REFERENCES `domicilio` (`id`),
  ADD CONSTRAINT `FKr5fndm18tmwywoov7o2d0ofdl` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id`);

--
-- Filtros para la tabla `cliente_domicilio_aud`
--
ALTER TABLE `cliente_domicilio_aud`
  ADD CONSTRAINT `FK1v25f29uy038rntrn7dkf1gvn` FOREIGN KEY (`rev`) REFERENCES `revision_info` (`id`);

--
-- Filtros para la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  ADD CONSTRAINT `FKblwfjfeyou4u7hae0gcngweeu` FOREIGN KEY (`articulo_id`) REFERENCES `articulo` (`id`),
  ADD CONSTRAINT `FKgqvba9e7dildyw45u0usdj1k2` FOREIGN KEY (`pedido_id`) REFERENCES `pedido` (`id`);

--
-- Filtros para la tabla `detalle_pedido_aud`
--
ALTER TABLE `detalle_pedido_aud`
  ADD CONSTRAINT `FKf5w995kvfkfxx50mn755j3fs8` FOREIGN KEY (`rev`) REFERENCES `revision_info` (`id`);

--
-- Filtros para la tabla `domicilio`
--
ALTER TABLE `domicilio`
  ADD CONSTRAINT `FK8t63gx4v022qapv45vdwld71j` FOREIGN KEY (`localidad_id`) REFERENCES `localidad` (`id`);

--
-- Filtros para la tabla `domicilio_aud`
--
ALTER TABLE `domicilio_aud`
  ADD CONSTRAINT `FKr2va00h51h6v43r7txxpov81` FOREIGN KEY (`rev`) REFERENCES `revision_info` (`id`);

--
-- Filtros para la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD CONSTRAINT `FKkv68lx8xpbpv6jprh7taieaej` FOREIGN KEY (`sucursal_id`) REFERENCES `sucursal` (`id`),
  ADD CONSTRAINT `FKl6nu1s893o9x7pmxo0wdhfiei` FOREIGN KEY (`id`) REFERENCES `persona` (`id`);

--
-- Filtros para la tabla `empleado_aud`
--
ALTER TABLE `empleado_aud`
  ADD CONSTRAINT `FKpsqxahgr49p6vkqpoe7cigy2p` FOREIGN KEY (`rev`,`id`) REFERENCES `persona_aud` (`rev`, `id`);

--
-- Filtros para la tabla `empresa_aud`
--
ALTER TABLE `empresa_aud`
  ADD CONSTRAINT `FKh1ekyopoo9q6a7cv4egjhwli` FOREIGN KEY (`rev`) REFERENCES `revision_info` (`id`);

--
-- Filtros para la tabla `factura_aud`
--
ALTER TABLE `factura_aud`
  ADD CONSTRAINT `FKpsx33gxbja5artdj8edacbjh8` FOREIGN KEY (`rev`) REFERENCES `revision_info` (`id`);

--
-- Filtros para la tabla `imagen_promocion`
--
ALTER TABLE `imagen_promocion`
  ADD CONSTRAINT `FKfigh8y0s5beb3p1f7jaab8brr` FOREIGN KEY (`promocion_id`) REFERENCES `promocion` (`id`);

--
-- Filtros para la tabla `localidad`
--
ALTER TABLE `localidad`
  ADD CONSTRAINT `FK37mbpxuicwnbo878s9djjgr39` FOREIGN KEY (`provincia_id`) REFERENCES `provincia` (`id`);

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `FK1nibrtel55qwnf6rwabwsqkyi` FOREIGN KEY (`empleado_id`) REFERENCES `empleado` (`id`),
  ADD CONSTRAINT `FK30s8j2ktpay6of18lbyqn3632` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id`),
  ADD CONSTRAINT `FK3ks2hug06ddfndlg1rqw1xmr9` FOREIGN KEY (`sucursal_id`) REFERENCES `sucursal` (`id`),
  ADD CONSTRAINT `FKauqt5ljerhslue4scdu1qexb` FOREIGN KEY (`id`) REFERENCES `domicilio` (`id`),
  ADD CONSTRAINT `FKpa5hywhn7so5bn1ctm1yhwuei` FOREIGN KEY (`factura_id`) REFERENCES `factura` (`id`);

--
-- Filtros para la tabla `pedido_aud`
--
ALTER TABLE `pedido_aud`
  ADD CONSTRAINT `FKl7ac3vjab3k38rewoqpugt4v1` FOREIGN KEY (`rev`) REFERENCES `revision_info` (`id`);

--
-- Filtros para la tabla `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `FK6q35dosxwx6hg9y4eggx7n5mk` FOREIGN KEY (`imagen_persona_id`) REFERENCES `imagen_persona` (`id`),
  ADD CONSTRAINT `FKgedbtrc2ob95e7n8xt0vaaaa0` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`);

--
-- Filtros para la tabla `persona_aud`
--
ALTER TABLE `persona_aud`
  ADD CONSTRAINT `FK3nishbkv6n49yoqu3eugomin` FOREIGN KEY (`rev`) REFERENCES `revision_info` (`id`);

--
-- Filtros para la tabla `promocion`
--
ALTER TABLE `promocion`
  ADD CONSTRAINT `FKaulen6od3ay1qnp7smhlxwr41` FOREIGN KEY (`sucursal_id`) REFERENCES `sucursal` (`id`);

--
-- Filtros para la tabla `promocion_aud`
--
ALTER TABLE `promocion_aud`
  ADD CONSTRAINT `FKnkn2lchohmkpc665jcms68ubv` FOREIGN KEY (`rev`) REFERENCES `revision_info` (`id`);

--
-- Filtros para la tabla `promocion_detalle`
--
ALTER TABLE `promocion_detalle`
  ADD CONSTRAINT `FK2dthinvgi20qc529cvkab7nt2` FOREIGN KEY (`articulo_id`) REFERENCES `articulo` (`id`),
  ADD CONSTRAINT `FKmxkc9fkv4btuhc89yu338obqd` FOREIGN KEY (`promocion_id`) REFERENCES `promocion` (`id`);

--
-- Filtros para la tabla `promocion_detalle_aud`
--
ALTER TABLE `promocion_detalle_aud`
  ADD CONSTRAINT `FKhrl4uyym5hf6c3rrgw3uots9m` FOREIGN KEY (`rev`) REFERENCES `revision_info` (`id`);

--
-- Filtros para la tabla `provincia`
--
ALTER TABLE `provincia`
  ADD CONSTRAINT `FKm4s599988w0v1q1nw6dyo5t2m` FOREIGN KEY (`pais_id`) REFERENCES `pais` (`id`);

--
-- Filtros para la tabla `sucursal`
--
ALTER TABLE `sucursal`
  ADD CONSTRAINT `FK3w56rbjykxbp2e79cdq0xsghd` FOREIGN KEY (`id`) REFERENCES `empresa` (`id`),
  ADD CONSTRAINT `FKfyxe9k9h5xx1nks7qmpv92yv2` FOREIGN KEY (`imagen_sucursal_id`) REFERENCES `imagen_sucursal` (`id`),
  ADD CONSTRAINT `FKpxac8l3j9mwcwolj5dyctwpxo` FOREIGN KEY (`id`) REFERENCES `domicilio` (`id`);

--
-- Filtros para la tabla `sucursal_aud`
--
ALTER TABLE `sucursal_aud`
  ADD CONSTRAINT `FK9ku52eq4j5x1desb9q4vosu96` FOREIGN KEY (`rev`) REFERENCES `revision_info` (`id`);

--
-- Filtros para la tabla `sucursal_categoria`
--
ALTER TABLE `sucursal_categoria`
  ADD CONSTRAINT `FKgr9g4037djhuxuahxtttbcpe6` FOREIGN KEY (`sucursal_id`) REFERENCES `sucursal` (`id`),
  ADD CONSTRAINT `FKtcbmv4283gg4r2ds9v510up26` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`id`);

--
-- Filtros para la tabla `sucursal_categoria_aud`
--
ALTER TABLE `sucursal_categoria_aud`
  ADD CONSTRAINT `FKsprc0d923wqc4mlykjsgbw5bd` FOREIGN KEY (`rev`) REFERENCES `revision_info` (`id`);

--
-- Filtros para la tabla `unidad_medida_aud`
--
ALTER TABLE `unidad_medida_aud`
  ADD CONSTRAINT `FKpeagctmxstmop6jqnu03naqjv` FOREIGN KEY (`rev`) REFERENCES `revision_info` (`id`);

--
-- Filtros para la tabla `usuario_aud`
--
ALTER TABLE `usuario_aud`
  ADD CONSTRAINT `FKbj3yn6frag5mpexsxplkregwf` FOREIGN KEY (`rev`) REFERENCES `revision_info` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
