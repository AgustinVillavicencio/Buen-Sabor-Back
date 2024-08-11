-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 11-08-2024 a las 01:08:01
-- Versión del servidor: 8.0.31
-- Versión de PHP: 8.0.26

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
  `denominacion` varchar(255) DEFAULT NULL,
  `precio_venta` double DEFAULT NULL,
  `categoria_id` bigint DEFAULT NULL,
  `unidad_medida_id` bigint DEFAULT NULL,
  `es_para_elaborar` bit(1) DEFAULT NULL,
  `precio_compra` double DEFAULT NULL,
  `stock_actual` double DEFAULT NULL,
  `stock_maximo` int DEFAULT NULL,
  `stock_minimo` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_bq24pwi1icjnu04cdhfq8qik2` (`categoria_id`),
  KEY `FK_t87v5vp2gygwbhs0s5t4x78aj` (`unidad_medida_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo_manufacturado`
--

DROP TABLE IF EXISTS `articulo_manufacturado`;
CREATE TABLE IF NOT EXISTS `articulo_manufacturado` (
  `id` bigint NOT NULL,
  `denominacion` varchar(255) DEFAULT NULL,
  `precio_venta` double DEFAULT NULL,
  `categoria_id` bigint DEFAULT NULL,
  `unidad_medida_id` bigint DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `preparacion` varchar(255) DEFAULT NULL,
  `tiempo_estimado_minutos` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_rxvuc695pmrvn93gu3564up7y` (`categoria_id`),
  KEY `FK_j2ltshqmxs8ksyttgpwm7tt27` (`unidad_medida_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo_manufacturado_detalle`
--

DROP TABLE IF EXISTS `articulo_manufacturado_detalle`;
CREATE TABLE IF NOT EXISTS `articulo_manufacturado_detalle` (
  `id` bigint NOT NULL,
  `cantidad` double DEFAULT NULL,
  `articulo_insumo_id` bigint DEFAULT NULL,
  `articulo_manufacturado_detalle_id` bigint DEFAULT NULL,
  `baja` bit(1) NOT NULL,
  `articulo_manufacturado_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKee8sad16ogk7in2nlh0vc3y9b` (`articulo_insumo_id`),
  KEY `FKmq6wwsgxaoxlc7rmrgu0acj7a` (`articulo_manufacturado_detalle_id`),
  KEY `FKcwnptwtrvdenu9tetlffab6dp` (`articulo_manufacturado_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
  `id` bigint NOT NULL,
  `denominacion` varchar(255) DEFAULT NULL,
  `categoria_id` bigint DEFAULT NULL,
  `baja` bit(1) NOT NULL,
  `es_insumo` bit(1) NOT NULL,
  `es_para_vender` bit(1) NOT NULL,
  `categoria_padre_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKjiixv3teefdkilvoysutbedif` (`categoria_id`),
  KEY `FKif4f273okqr2edqkm0xqxjlyk` (`categoria_padre_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
  `id` bigint NOT NULL,
  `calle` varchar(255) DEFAULT NULL,
  `cp` int DEFAULT NULL,
  `nro_dpto` int DEFAULT NULL,
  `numero` int DEFAULT NULL,
  `piso` int DEFAULT NULL,
  `id_localidad` bigint DEFAULT NULL,
  `baja` bit(1) NOT NULL,
  `localidad_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKqrmmkejvimmve55527wv6ujtr` (`id_localidad`),
  KEY `FK8t63gx4v022qapv45vdwld71j` (`localidad_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
  `apellido` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `tipo_empleado` tinyint DEFAULT NULL,
  `imagen_empleado_id` bigint DEFAULT NULL,
  `sucursal_id` bigint DEFAULT NULL,
  `usuario_empleado_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_o2cppi3v44p7h2vibx0pe3lah` (`imagen_empleado_id`),
  UNIQUE KEY `UK_f2mjsug9ttwgbw9o4qwun93it` (`usuario_empleado_id`),
  KEY `FKkv68lx8xpbpv6jprh7taieaej` (`sucursal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagen_promocion`
--

DROP TABLE IF EXISTS `imagen_promocion`;
CREATE TABLE IF NOT EXISTS `imagen_promocion` (
  `id` bigint NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `promocion_id` bigint DEFAULT NULL,
  `baja` bit(1) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKfigh8y0s5beb3p1f7jaab8brr` (`promocion_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `localidad`
--

DROP TABLE IF EXISTS `localidad`;
CREATE TABLE IF NOT EXISTS `localidad` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `id_provincia` bigint DEFAULT NULL,
  `baja` bit(1) NOT NULL,
  `provincia_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKbsjp9dyq5f3hk4ngy6pw3v3b2` (`id_provincia`),
  KEY `FK37mbpxuicwnbo878s9djjgr39` (`provincia_id`)
) ENGINE=InnoDB AUTO_INCREMENT=530 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `localidad`
--

INSERT INTO `localidad` (`id`, `nombre`, `id_provincia`, `baja`, `provincia_id`) VALUES
(1, 'Adolfo Gonzales Chaves', NULL, b'0', 1),
(2, 'Concordia', NULL, b'0', 2),
(3, 'Federal', NULL, b'0', 2),
(4, 'Gualeguaychú', NULL, b'0', 2),
(5, 'Islas del Ibicuy', NULL, b'0', 2),
(6, 'Victoria', NULL, b'0', 2),
(7, 'Diamante', NULL, b'0', 2),
(8, 'Uruguay', NULL, b'0', 2),
(9, 'Paraná', NULL, b'0', 2),
(10, 'Saladillo', NULL, b'0', 1),
(11, 'Las Flores', NULL, b'0', 1),
(12, 'Rojas', NULL, b'0', 1),
(13, 'Escobar', NULL, b'0', 1),
(14, 'José C. Paz', NULL, b'0', 1),
(15, 'Bahía Blanca', NULL, b'0', 1),
(16, 'San Antonio de Areco', NULL, b'0', 1),
(17, 'Maipú', NULL, b'0', 1),
(18, 'General Alvarado', NULL, b'0', 1),
(19, 'General Pueyrredón', NULL, b'0', 1),
(20, 'Mar Chiquita', NULL, b'0', 1),
(21, 'Villa Gesell', NULL, b'0', 1),
(22, 'Pinamar', NULL, b'0', 1),
(23, 'General Lavalle', NULL, b'0', 1),
(24, 'La Costa', NULL, b'0', 1),
(25, 'Magdalena', NULL, b'0', 1),
(26, 'Sauce', NULL, b'0', 3),
(27, 'Vicente López', NULL, b'0', 1),
(28, 'La Viña', NULL, b'0', 4),
(29, 'Rauch', NULL, b'0', 1),
(30, 'Metán', NULL, b'0', 4),
(31, 'Molinos', NULL, b'0', 4),
(32, 'O\'Higgins', NULL, b'0', 5),
(33, 'Moreno', NULL, b'0', 1),
(34, 'La Matanza', NULL, b'0', 1),
(35, 'Tandil', NULL, b'0', 1),
(36, 'Coronel Suárez', NULL, b'0', 1),
(37, 'Chamical', NULL, b'0', 6),
(38, 'Futaleufú', NULL, b'0', 7),
(39, 'Río Chico', NULL, b'0', 8),
(40, 'San Antonio', NULL, b'0', 9),
(41, 'Alberdi', NULL, b'0', 10),
(42, 'Juan Felipe Ibarra', NULL, b'0', 10),
(43, 'General Taboada', NULL, b'0', 10),
(44, 'Salliqueló', NULL, b'0', 1),
(45, 'Berazategui', NULL, b'0', 1),
(46, 'General Güemes', NULL, b'0', 4),
(47, 'San Carlos', NULL, b'0', 4),
(48, 'General Paz', NULL, b'0', 1),
(49, 'General Guido', NULL, b'0', 1),
(50, 'General Juan Madariaga', NULL, b'0', 1),
(51, 'Lago Argentino', NULL, b'0', 8),
(52, 'Rivadavia', NULL, b'0', 10),
(53, 'Ojo de Agua', NULL, b'0', 10),
(54, 'Choya', NULL, b'0', 10),
(55, 'Gobernador Dupuy', NULL, b'0', 11),
(56, 'Cachi', NULL, b'0', 4),
(57, 'Chicoana', NULL, b'0', 4),
(58, 'Gaiman', NULL, b'0', 7),
(59, 'Rawson', NULL, b'0', 7),
(60, 'General Lamadrid', NULL, b'0', 6),
(61, 'Ayacucho', NULL, b'0', 11),
(62, '12 de Octubre', NULL, b'0', 5),
(63, 'Tulumba', NULL, b'0', 12),
(64, 'Cruz del Eje', NULL, b'0', 12),
(65, 'Punilla', NULL, b'0', 12),
(66, 'Comuna 6', NULL, b'0', 2),
(67, 'Santa Rosa', NULL, b'0', 13),
(68, 'General Güemes', NULL, b'0', 5),
(69, 'General Ortiz de Ocampo', NULL, b'0', 6),
(70, 'General Roca', NULL, b'0', 12),
(71, 'Pilagás', NULL, b'0', 14),
(72, 'Laishi', NULL, b'0', 14),
(73, 'Rivadavia', NULL, b'0', 13),
(74, 'Tornquist', NULL, b'0', 1),
(75, 'La Paz', NULL, b'0', 13),
(76, 'Coronel Pringles', NULL, b'0', 1),
(77, 'Conesa', NULL, b'0', 9),
(78, 'Villarino', NULL, b'0', 1),
(79, 'Pirané', NULL, b'0', 14),
(80, 'General Pinto', NULL, b'0', 1),
(81, 'San Cayetano', NULL, b'0', 1),
(82, 'Tres Arroyos', NULL, b'0', 1),
(83, 'Coronel Dorrego', NULL, b'0', 1),
(84, 'Necochea', NULL, b'0', 1),
(85, 'Independencia', NULL, b'0', 6),
(86, 'Chascomús', NULL, b'0', 1),
(87, 'Punta Indio', NULL, b'0', 1),
(88, 'El Carmen', NULL, b'0', 15),
(89, 'Santa María', NULL, b'0', 12),
(90, 'Valcheta', NULL, b'0', 9),
(91, 'Arauco', NULL, b'0', 6),
(92, 'Lezama', NULL, b'0', 1),
(93, 'Campana', NULL, b'0', 1),
(94, 'Magallanes', NULL, b'0', 8),
(95, 'Corpen Aike', NULL, b'0', 8),
(96, 'Minas', NULL, b'0', 12),
(97, 'San Alberto', NULL, b'0', 12),
(98, 'Río Segundo', NULL, b'0', 12),
(99, 'San Justo', NULL, b'0', 12),
(100, 'Unión', NULL, b'0', 12),
(101, 'Tercero Arriba', NULL, b'0', 12),
(102, 'Cerrillos', NULL, b'0', 4),
(103, 'Río Cuarto', NULL, b'0', 12),
(104, 'Tupungato', NULL, b'0', 13),
(105, '9 de Julio', NULL, b'0', 9),
(106, 'Ñorquinco', NULL, b'0', 9),
(107, 'San Rafael', NULL, b'0', 13),
(108, 'Anta', NULL, b'0', 4),
(109, 'Picún Leufú', NULL, b'0', 16),
(110, 'Zapala', NULL, b'0', 16),
(111, '25 de Mayo', NULL, b'0', 9),
(112, 'Telsen', NULL, b'0', 7),
(113, 'Pilcaniyeu', NULL, b'0', 9),
(114, 'Adolfo Alsina', NULL, b'0', 1),
(115, 'General Alvear', NULL, b'0', 13),
(116, 'La Caldera', NULL, b'0', 4),
(117, 'Sargento Cabral', NULL, b'0', 5),
(118, 'Pellegrini', NULL, b'0', 1),
(119, 'Aluminé', NULL, b'0', 16),
(120, 'Iruya', NULL, b'0', 4),
(121, 'Lácar', NULL, b'0', 16),
(122, 'Fray Mamerto Esquiú', NULL, b'0', 10),
(123, 'Valle Viejo', NULL, b'0', 10),
(124, 'San Cosme', NULL, b'0', 3),
(125, 'Sarmiento', NULL, b'0', 7),
(126, 'Comuna 1', NULL, b'0', 2),
(127, 'Comuna 4', NULL, b'0', 2),
(128, 'El Cuy', NULL, b'0', 9),
(129, 'Las Heras', NULL, b'0', 13),
(130, 'Tapenagá', NULL, b'0', 5),
(131, 'Lavalle', NULL, b'0', 13),
(132, 'Malargüe', NULL, b'0', 13),
(133, 'Presidente Roque Sáenz Peña', NULL, b'0', 12),
(134, 'Catán Lil', NULL, b'0', 16),
(135, 'Presidencia de la Plaza', NULL, b'0', 5),
(136, 'Comuna 5', NULL, b'0', 2),
(137, 'Esquina', NULL, b'0', 3),
(138, 'Ushuaia', NULL, b'0', 17),
(139, 'Antofagasta de la Sierra', NULL, b'0', 10),
(140, 'Ensenada', NULL, b'0', 1),
(141, 'Capital', NULL, b'0', 18),
(142, 'Belgrano', NULL, b'0', 19),
(143, 'Pergamino', NULL, b'0', 1),
(144, 'Puán', NULL, b'0', 1),
(145, 'General Villegas', NULL, b'0', 1),
(146, 'Comuna 12', NULL, b'0', 2),
(147, 'General Obligado', NULL, b'0', 19),
(148, 'Vera', NULL, b'0', 19),
(149, '9 de Julio', NULL, b'0', 19),
(150, 'Adolfo Alsina', NULL, b'0', 9),
(151, 'Quitilipi', NULL, b'0', 5),
(152, 'Güer Aike', NULL, b'0', 8),
(153, 'Capayán', NULL, b'0', 10),
(154, 'Burruyacú', NULL, b'0', 18),
(155, 'San Jerónimo', NULL, b'0', 19),
(156, 'Independencia', NULL, b'0', 5),
(157, 'Curuzú Cuatiá', NULL, b'0', 3),
(158, 'Luján de Cuyo', NULL, b'0', 13),
(159, 'Tinogasta', NULL, b'0', 10),
(160, 'Comuna 7', NULL, b'0', 2),
(161, 'Hucal', NULL, b'0', 20),
(162, 'Itatí', NULL, b'0', 3),
(163, 'Comuna 10', NULL, b'0', 2),
(164, 'Caleu Caleu', NULL, b'0', 20),
(165, 'Lihuel Calel', NULL, b'0', 20),
(166, 'Curacó', NULL, b'0', 20),
(167, 'Confluencia', NULL, b'0', 16),
(168, 'Picunches', NULL, b'0', 16),
(169, 'Añelo', NULL, b'0', 16),
(170, 'Loncopué', NULL, b'0', 16),
(171, 'Ñorquín', NULL, b'0', 16),
(172, 'Pehuenches', NULL, b'0', 16),
(173, 'Comuna 11', NULL, b'0', 2),
(174, 'Montecarlo', NULL, b'0', 21),
(175, 'Eldorado', NULL, b'0', 21),
(176, 'San Pedro', NULL, b'0', 21),
(177, 'Antártida Argentina', NULL, b'0', 17),
(178, 'Minas', NULL, b'0', 16),
(179, 'Chos Malal', NULL, b'0', 16),
(180, 'Cushamen', NULL, b'0', 7),
(181, 'Lago Buenos Aires', NULL, b'0', 8),
(182, 'Pichi Mahuida', NULL, b'0', 9),
(183, 'San Martín', NULL, b'0', 22),
(184, 'Yavi', NULL, b'0', 15),
(185, 'Santa Catalina', NULL, b'0', 15),
(186, 'San Pedro', NULL, b'0', 15),
(187, 'Valle Grande', NULL, b'0', 15),
(188, 'Patiño', NULL, b'0', 14),
(189, 'Bermejo', NULL, b'0', 14),
(190, 'Susques', NULL, b'0', 15),
(191, 'Matacos', NULL, b'0', 14),
(192, 'Los Andes', NULL, b'0', 4),
(193, 'Orán', NULL, b'0', 4),
(194, 'Tilcara', NULL, b'0', 15),
(195, 'Palpalá', NULL, b'0', 15),
(196, 'Loventué', NULL, b'0', 20),
(197, 'Río Senguer', NULL, b'0', 7),
(198, 'Bariloche', NULL, b'0', 9),
(199, 'Huiliches', NULL, b'0', 16),
(200, 'Limay Mahuida', NULL, b'0', 20),
(201, 'Puelén', NULL, b'0', 20),
(202, 'Chalileo', NULL, b'0', 20),
(203, 'Chical Co', NULL, b'0', 20),
(204, 'Quebrachos', NULL, b'0', 22),
(205, 'Monte Caseros', NULL, b'0', 3),
(206, 'Mayor Luis J. Fontana', NULL, b'0', 5),
(207, 'Fray Justo Santa María de Oro', NULL, b'0', 5),
(208, 'General Belgrano', NULL, b'0', 6),
(209, 'Las Colonias', NULL, b'0', 19),
(210, 'San Justo', NULL, b'0', 19),
(211, 'San Cristóbal', NULL, b'0', 19),
(212, 'San Javier', NULL, b'0', 19),
(213, 'Chapaleufú', NULL, b'0', 20),
(214, 'Realicó', NULL, b'0', 20),
(215, 'Maracó', NULL, b'0', 20),
(216, 'Trenel', NULL, b'0', 20),
(217, 'Copo', NULL, b'0', 22),
(218, 'Capital', NULL, b'0', 20),
(219, 'Santa Bárbara', NULL, b'0', 15),
(220, 'Almirante Brown', NULL, b'0', 5),
(221, 'Rosario de la Frontera', NULL, b'0', 4),
(222, 'Collón Curá', NULL, b'0', 16),
(223, 'Comuna 3', NULL, b'0', 2),
(224, 'San Fernando', NULL, b'0', 1),
(225, 'Tigre', NULL, b'0', 1),
(226, 'Santa María', NULL, b'0', 10),
(227, 'Santa Rosa', NULL, b'0', 10),
(228, 'La Paz', NULL, b'0', 10),
(229, 'Río Hondo', NULL, b'0', 22),
(230, 'Vinchina', NULL, b'0', 6),
(231, 'Capital', NULL, b'0', 6),
(232, 'Río Seco', NULL, b'0', 12),
(233, 'Avellaneda', NULL, b'0', 9),
(234, 'General Roca', NULL, b'0', 9),
(235, 'Belgrano', NULL, b'0', 11),
(236, 'Los Lagos', NULL, b'0', 16),
(237, 'Capital', NULL, b'0', 10),
(238, 'Ancasti', NULL, b'0', 10),
(239, 'Pomán', NULL, b'0', 10),
(240, 'Comuna 2', NULL, b'0', 2),
(241, '9 de Julio', NULL, b'0', 5),
(242, 'Pocho', NULL, b'0', 12),
(243, 'Ezeiza', NULL, b'0', 1),
(244, 'Andalgalá', NULL, b'0', 10),
(245, 'Ambato', NULL, b'0', 10),
(246, 'Comuna 8', NULL, b'0', 2),
(247, 'Guasayán', NULL, b'0', 22),
(248, 'Paclín', NULL, b'0', 10),
(249, 'El Alto', NULL, b'0', 10),
(250, 'Sobremonte', NULL, b'0', 12),
(251, 'Río Grande', NULL, b'0', 17),
(252, 'Comuna 13', NULL, b'0', 2),
(253, 'Banda', NULL, b'0', 22),
(254, 'Paso de Indios', NULL, b'0', 7),
(255, 'Capital', NULL, b'0', 12),
(256, 'Mártires', NULL, b'0', 7),
(257, 'Sarmiento', NULL, b'0', 22),
(258, 'Deseado', NULL, b'0', 8),
(259, 'Languiñeo', NULL, b'0', 7),
(260, 'Belgrano', NULL, b'0', 22),
(261, 'Aguirre', NULL, b'0', 22),
(262, 'Maipú', NULL, b'0', 5),
(263, 'San Carlos', NULL, b'0', 13),
(264, 'Tunuyán', NULL, b'0', 13),
(265, 'Robles', NULL, b'0', 22),
(266, 'Loreto', NULL, b'0', 22),
(267, 'Catriló', NULL, b'0', 20),
(268, 'Capital', NULL, b'0', 22),
(269, 'Comuna 14', NULL, b'0', 2),
(270, 'Colón', NULL, b'0', 23),
(271, 'Villaguay', NULL, b'0', 23),
(272, 'Castelli', NULL, b'0', 1),
(273, 'San Salvador', NULL, b'0', 23),
(274, 'Belén', NULL, b'0', 10),
(275, 'Almirante Brown', NULL, b'0', 1),
(276, 'Nogoyá', NULL, b'0', 23),
(277, 'Tala', NULL, b'0', 23),
(278, 'Gualeguay', NULL, b'0', 23),
(279, 'Federación', NULL, b'0', 23),
(280, 'La Paz', NULL, b'0', 23),
(281, 'Feliciano', NULL, b'0', 23),
(282, 'Presidente Perón', NULL, b'0', 1),
(283, 'Junín', NULL, b'0', 1),
(284, 'Brandsen', NULL, b'0', 1),
(285, 'Chivilcoy', NULL, b'0', 1),
(286, 'Alberti', NULL, b'0', 1),
(287, 'Bragado', NULL, b'0', 1),
(288, 'General Las Heras', NULL, b'0', 1),
(289, 'Carlos Casares', NULL, b'0', 1),
(290, 'Marcos Paz', NULL, b'0', 1),
(291, 'General Viamonte', NULL, b'0', 1),
(292, 'Carlos Tejedor', NULL, b'0', 1),
(293, '25 de Mayo', NULL, b'0', 1),
(294, '9 de Julio', NULL, b'0', 1),
(295, 'Pehuajó', NULL, b'0', 1),
(296, 'Tapalqué', NULL, b'0', 1),
(297, 'Trenque Lauquen', NULL, b'0', 1),
(298, 'General Belgrano', NULL, b'0', 1),
(299, 'Monte', NULL, b'0', 1),
(300, 'Roque Pérez', NULL, b'0', 1),
(301, 'Olavarría', NULL, b'0', 1),
(302, 'Merlo', NULL, b'0', 1),
(303, 'Cainguás', NULL, b'0', 21),
(304, 'Islas del Atlántico Sur', NULL, b'0', 17),
(305, 'Esteban Echeverría', NULL, b'0', 1),
(306, 'Arrecifes', NULL, b'0', 1),
(307, 'Capitán Sarmiento', NULL, b'0', 1),
(308, 'Dr. Manuel Belgrano', NULL, b'0', 15),
(309, 'Carmen de Areco', NULL, b'0', 1),
(310, 'Salto', NULL, b'0', 1),
(311, 'Exaltación de la Cruz', NULL, b'0', 1),
(312, 'San Miguel', NULL, b'0', 1),
(313, 'San Andrés de Giles', NULL, b'0', 1),
(314, 'Mercedes', NULL, b'0', 1),
(315, 'Pilar', NULL, b'0', 1),
(316, 'Luján', NULL, b'0', 1),
(317, 'Famaillá', NULL, b'0', 18),
(318, 'Hurlingham', NULL, b'0', 1),
(319, 'Morón', NULL, b'0', 1),
(320, 'Chacabuco', NULL, b'0', 1),
(321, 'Junín', NULL, b'0', 13),
(322, 'Malvinas Argentinas', NULL, b'0', 1),
(323, 'Tres Lomas', NULL, b'0', 1),
(324, 'Ayacucho', NULL, b'0', 1),
(325, 'Guaminí', NULL, b'0', 1),
(326, 'General San Martín', NULL, b'0', 1),
(327, 'Lincoln', NULL, b'0', 1),
(328, 'Laprida', NULL, b'0', 1),
(329, 'San Isidro', NULL, b'0', 1),
(330, 'Benito Juárez', NULL, b'0', 1),
(331, 'Colón', NULL, b'0', 1),
(332, 'Ituzaingó', NULL, b'0', 1),
(333, 'General Rodríguez', NULL, b'0', 1),
(334, 'Suipacha', NULL, b'0', 1),
(335, 'Tres de Febrero', NULL, b'0', 1),
(336, 'General Felipe Varela', NULL, b'0', 6),
(337, 'Florencio Varela', NULL, b'0', 1),
(338, 'Navarro', NULL, b'0', 1),
(339, 'Cañuelas', NULL, b'0', 1),
(340, 'Moreno', NULL, b'0', 22),
(341, 'Chacabuco', NULL, b'0', 5),
(342, 'San Vicente', NULL, b'0', 1),
(343, 'Lobos', NULL, b'0', 1),
(344, 'General Alvear', NULL, b'0', 1),
(345, 'Quilmes', NULL, b'0', 1),
(346, 'Pila', NULL, b'0', 1),
(347, 'General La Madrid', NULL, b'0', 1),
(348, 'Bolívar', NULL, b'0', 1),
(349, 'Castro Barros', NULL, b'0', 6),
(350, 'Balcarce', NULL, b'0', 1),
(351, 'Hipólito Yrigoyen', NULL, b'0', 1),
(352, 'Capital', NULL, b'0', 13),
(353, 'Dolores', NULL, b'0', 1),
(354, 'Azul', NULL, b'0', 1),
(355, 'Daireaux', NULL, b'0', 1),
(356, 'Godoy Cruz', NULL, b'0', 13),
(357, 'Cafayate', NULL, b'0', 4),
(358, 'Figueroa', NULL, b'0', 22),
(359, 'Saavedra', NULL, b'0', 1),
(360, 'Monte Hermoso', NULL, b'0', 1),
(361, 'Lobería', NULL, b'0', 1),
(362, 'Berisso', NULL, b'0', 1),
(363, 'Tordillo', NULL, b'0', 1),
(364, 'Zárate', NULL, b'0', 1),
(365, 'Ramallo', NULL, b'0', 1),
(366, 'San Nicolás', NULL, b'0', 1),
(367, 'Salavina', NULL, b'0', 22),
(368, 'Pellegrini', NULL, b'0', 22),
(369, 'Avellaneda', NULL, b'0', 22),
(370, '2 de Abril', NULL, b'0', 5),
(371, 'Guaymallén', NULL, b'0', 13),
(372, 'Juárez Celman', NULL, b'0', 12),
(373, 'Capital', NULL, b'0', 4),
(374, 'Silípica', NULL, b'0', 22),
(375, 'La Candelaria', NULL, b'0', 4),
(376, 'Rancul', NULL, b'0', 20),
(377, 'Maipú', NULL, b'0', 13),
(378, 'Guachipas', NULL, b'0', 4),
(379, 'Atreucó', NULL, b'0', 20),
(380, 'San Martín', NULL, b'0', 13),
(381, 'Guatraché', NULL, b'0', 20),
(382, 'Sanagasta', NULL, b'0', 6),
(383, 'Conhelo', NULL, b'0', 20),
(384, 'Libertador General San Martín', NULL, b'0', 21),
(385, 'Rosario Vera Peñaloza', NULL, b'0', 6),
(386, 'San Miguel', NULL, b'0', 3),
(387, 'General Juan Facundo Quiroga', NULL, b'0', 6),
(388, 'Ángel Vicente Peñaloza', NULL, b'0', 6),
(389, 'Empedrado', NULL, b'0', 3),
(390, 'Chilecito', NULL, b'0', 6),
(391, 'Toay', NULL, b'0', 20),
(392, 'Colón', NULL, b'0', 12),
(393, 'Ituzaingó', NULL, b'0', 3),
(394, 'Famatina', NULL, b'0', 6),
(395, 'General López', NULL, b'0', 19),
(396, 'Constitución', NULL, b'0', 19),
(397, 'Caseros', NULL, b'0', 19),
(398, 'Rosario', NULL, b'0', 19),
(399, 'San Lorenzo', NULL, b'0', 19),
(400, 'Iriondo', NULL, b'0', 19),
(401, 'Lanús', NULL, b'0', 1),
(402, 'General San Martín', NULL, b'0', 6),
(403, 'San Blas de Los Sauces', NULL, b'0', 6),
(404, 'San Antonio', NULL, b'0', 15),
(405, 'Rinconada', NULL, b'0', 15),
(406, 'Ramón Lista', NULL, b'0', 14),
(407, 'La Poma', NULL, b'0', 4),
(408, 'Biedma', NULL, b'0', 7),
(409, 'Capital', NULL, b'0', 3),
(410, 'San Luis del Palmar', NULL, b'0', 3),
(411, 'Formosa', NULL, b'0', 14),
(412, 'Pilcomayo', NULL, b'0', 14),
(413, 'Tehuelches', NULL, b'0', 7),
(414, 'Escalante', NULL, b'0', 7),
(415, 'Ischilín', NULL, b'0', 12),
(416, 'Totoral', NULL, b'0', 12),
(417, 'General San Martín', NULL, b'0', 12),
(418, 'San Javier', NULL, b'0', 12),
(419, 'Río Primero', NULL, b'0', 12),
(420, 'Marcos Juárez', NULL, b'0', 12),
(421, 'General Donovan', NULL, b'0', 5),
(422, 'Leandro N. Alem', NULL, b'0', 1),
(423, 'Libertador General San Martín', NULL, b'0', 5),
(424, 'Gastre', NULL, b'0', 7),
(425, 'General Arenales', NULL, b'0', 1),
(426, 'Bermejo', NULL, b'0', 5),
(427, 'Calamuchita', NULL, b'0', 12),
(428, 'Cruz Alta', NULL, b'0', 18),
(429, 'Lules', NULL, b'0', 18),
(430, 'Yerba Buena', NULL, b'0', 18),
(431, 'Tafí Viejo', NULL, b'0', 18),
(432, 'Libertador General San Martín', NULL, b'0', 11),
(433, 'Coronel Pringles', NULL, b'0', 11),
(434, 'Chacabuco', NULL, b'0', 11),
(435, 'Rivadavia', NULL, b'0', 1),
(436, 'Patagones', NULL, b'0', 1),
(437, 'Juan Martín de Pueyrredón', NULL, b'0', 11),
(438, 'General Pedernera', NULL, b'0', 11),
(439, 'Trancas', NULL, b'0', 18),
(440, 'Tafí del Valle', NULL, b'0', 18),
(441, 'Comuna 9', NULL, b'0', 2),
(442, 'Junín', NULL, b'0', 11),
(443, 'Mitre', NULL, b'0', 22),
(444, 'Atamisqui', NULL, b'0', 22),
(445, 'Berón de Astrada', NULL, b'0', 3),
(446, 'Tolhuin', NULL, b'0', 17),
(447, 'Capital', NULL, b'0', 21),
(448, 'Candelaria', NULL, b'0', 21),
(449, 'Jiménez', NULL, b'0', 22),
(450, 'Coronel de Marina Leonardo Rosales', NULL, b'0', 1),
(451, 'Baradero', NULL, b'0', 1),
(452, 'San Pedro', NULL, b'0', 1),
(453, 'Santa Victoria', NULL, b'0', 4),
(454, 'General José de San Martín', NULL, b'0', 4),
(455, 'Rivadavia', NULL, b'0', 4),
(456, 'Rosario de Lerma', NULL, b'0', 4),
(457, 'Ledesma', NULL, b'0', 15),
(458, 'Humahuaca', NULL, b'0', 15),
(459, 'Cochinoca', NULL, b'0', 15),
(460, 'Tumbaya', NULL, b'0', 15),
(461, 'Florentino Ameghino', NULL, b'0', 1),
(462, 'Florentino Ameghino', NULL, b'0', 7),
(463, 'La Cocha', NULL, b'0', 18),
(464, 'Graneros', NULL, b'0', 18),
(465, 'Juan Bautista Alberdi', NULL, b'0', 18),
(466, 'Río Chico', NULL, b'0', 18),
(467, 'Simoca', NULL, b'0', 18),
(468, 'Chicligasta', NULL, b'0', 18),
(469, 'Monteros', NULL, b'0', 18),
(470, 'Leales', NULL, b'0', 18),
(471, 'San Martín', NULL, b'0', 19),
(472, 'La Capital', NULL, b'0', 19),
(473, 'General Manuel Belgrano', NULL, b'0', 21),
(474, 'Guaraní', NULL, b'0', 21),
(475, 'Iguazú', NULL, b'0', 21),
(476, '25 de Mayo', NULL, b'0', 21),
(477, 'Oberá', NULL, b'0', 21),
(478, 'Castellanos', NULL, b'0', 19),
(479, 'Garay', NULL, b'0', 19),
(480, 'Quemú Quemú', NULL, b'0', 20),
(481, 'San Ignacio', NULL, b'0', 21),
(482, 'Utracán', NULL, b'0', 20),
(483, 'San Martín', NULL, b'0', 3),
(484, 'Paso de los Libres', NULL, b'0', 3),
(485, 'Goya', NULL, b'0', 3),
(486, 'Lavalle', NULL, b'0', 3),
(487, 'San Roque', NULL, b'0', 3),
(488, 'General Alvear', NULL, b'0', 3),
(489, 'Concepción', NULL, b'0', 3),
(490, 'Bella Vista', NULL, b'0', 3),
(491, 'Santo Tomé', NULL, b'0', 3),
(492, 'Saladas', NULL, b'0', 3),
(493, 'General Paz', NULL, b'0', 3),
(494, 'Leandro N. Alem', NULL, b'0', 21),
(495, 'San Javier', NULL, b'0', 21),
(496, 'Mburucuyá', NULL, b'0', 3),
(497, 'Concepción', NULL, b'0', 21),
(498, 'Apóstoles', NULL, b'0', 21),
(499, '1° de Mayo', NULL, b'0', 5),
(500, 'San Fernando', NULL, b'0', 5),
(501, 'San Lorenzo', NULL, b'0', 5),
(502, 'Lomas de Zamora', NULL, b'0', 1),
(503, 'Avellaneda', NULL, b'0', 1),
(504, '25 de Mayo', NULL, b'0', 5),
(505, 'General Belgrano', NULL, b'0', 5),
(506, 'Libertad', NULL, b'0', 5),
(507, 'Comandante Fernández', NULL, b'0', 5),
(508, 'Comuna 15', NULL, b'0', 2),
(509, 'Chimbas', NULL, b'0', 24),
(510, 'Capital', NULL, b'0', 24),
(511, 'Rivadavia', NULL, b'0', 24),
(512, '9 de Julio', NULL, b'0', 24),
(513, 'Albardón', NULL, b'0', 24),
(514, 'Angaco', NULL, b'0', 24),
(515, 'Santa Lucía', NULL, b'0', 24),
(516, 'Rawson', NULL, b'0', 24),
(517, '25 de Mayo', NULL, b'0', 24),
(518, 'San Martín', NULL, b'0', 24),
(519, 'Pocito', NULL, b'0', 24),
(520, 'Zonda', NULL, b'0', 24),
(521, 'Ullum', NULL, b'0', 24),
(522, 'Sarmiento', NULL, b'0', 24),
(523, 'Calingasta', NULL, b'0', 24),
(524, 'Iglesia', NULL, b'0', 24),
(525, 'Jáchal', NULL, b'0', 24),
(526, 'Valle Fértil', NULL, b'0', 24),
(527, 'Caucete', NULL, b'0', 24),
(528, 'La Plata', NULL, b'0', 1),
(529, 'Mercedes', NULL, b'0', 3);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
(2, '2024-08-10 11:37:06.922000');

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
(101);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
  ADD CONSTRAINT `FKauqt5ljerhslue4scdu1qexb` FOREIGN KEY (`domicilio_id`) REFERENCES `domicilio` (`id`),
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
  ADD CONSTRAINT `FKpxac8l3j9mwcwolj5dyctwpxo` FOREIGN KEY (`domicilio_id`) REFERENCES `domicilio` (`id`);

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
