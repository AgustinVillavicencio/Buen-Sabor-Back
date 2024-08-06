-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 06-08-2024 a las 22:52:44
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
  `eliminado` bit(1) NOT NULL,
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
  `eliminado` bit(1) NOT NULL,
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
  `eliminado` bit(1) NOT NULL,
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
  `eliminado` bit(1) NOT NULL,
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
  `eliminado` bit(1) NOT NULL,
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
  `eliminado` bit(1) NOT NULL,
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
  `eliminado` bit(1) NOT NULL,
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
  `eliminado` bit(1) NOT NULL,
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
  `id` bigint NOT NULL,
  `eliminado` bit(1) NOT NULL,
  `cuil` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `razon_social` varchar(255) DEFAULT NULL,
  `baja` bit(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
  `eliminado` bit(1) NOT NULL,
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
  `id` bigint NOT NULL,
  `eliminado` bit(1) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `imagen_articulo_id` bigint DEFAULT NULL,
  `baja` bit(1) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
  `eliminado` bit(1) NOT NULL,
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
  `eliminado` bit(1) NOT NULL,
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
  `eliminado` bit(1) NOT NULL,
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
  `id` bigint NOT NULL,
  `eliminado` bit(1) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `id_provincia` bigint DEFAULT NULL,
  `baja` bit(1) NOT NULL,
  `provincia_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKbsjp9dyq5f3hk4ngy6pw3v3b2` (`id_provincia`),
  KEY `FK37mbpxuicwnbo878s9djjgr39` (`provincia_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `localidad`
--

INSERT INTO `localidad` (`id`, `eliminado`, `nombre`, `id_provincia`, `baja`, `provincia_id`) VALUES
(1, b'0', 'Adolfo Gonzales Chaves', 1, b'0', NULL),
(2, b'0', 'Concordia', 2, b'0', NULL),
(3, b'0', 'Federal', 2, b'0', NULL),
(4, b'0', 'Gualeguaychú', 2, b'0', NULL),
(5, b'0', 'Islas del Ibicuy', 2, b'0', NULL),
(6, b'0', 'Victoria', 2, b'0', NULL),
(7, b'0', 'Diamante', 2, b'0', NULL),
(8, b'0', 'Uruguay', 2, b'0', NULL),
(9, b'0', 'Paraná', 2, b'0', NULL),
(10, b'0', 'Saladillo', 1, b'0', NULL),
(11, b'0', 'Las Flores', 1, b'0', NULL),
(12, b'0', 'Rojas', 1, b'0', NULL),
(13, b'0', 'Escobar', 1, b'0', NULL),
(14, b'0', 'José C. Paz', 1, b'0', NULL),
(15, b'0', 'Bahía Blanca', 1, b'0', NULL),
(16, b'0', 'San Antonio de Areco', 1, b'0', NULL),
(17, b'0', 'Maipú', 1, b'0', NULL),
(18, b'0', 'General Alvarado', 1, b'0', NULL),
(19, b'0', 'General Pueyrredón', 1, b'0', NULL),
(20, b'0', 'Mar Chiquita', 1, b'0', NULL),
(21, b'0', 'Villa Gesell', 1, b'0', NULL),
(22, b'0', 'Pinamar', 1, b'0', NULL),
(23, b'0', 'General Lavalle', 1, b'0', NULL),
(24, b'0', 'La Costa', 1, b'0', NULL),
(25, b'0', 'Magdalena', 1, b'0', NULL),
(26, b'0', 'Sauce', 3, b'0', NULL),
(27, b'0', 'Vicente López', 1, b'0', NULL),
(28, b'0', 'La Viña', 4, b'0', NULL),
(29, b'0', 'Rauch', 1, b'0', NULL),
(30, b'0', 'Metán', 4, b'0', NULL),
(31, b'0', 'Molinos', 4, b'0', NULL),
(32, b'0', 'O\'Higgins', 5, b'0', NULL),
(33, b'0', 'Moreno', 1, b'0', NULL),
(34, b'0', 'La Matanza', 1, b'0', NULL),
(35, b'0', 'Tandil', 1, b'0', NULL),
(36, b'0', 'Coronel Suárez', 1, b'0', NULL),
(37, b'0', 'Chamical', 6, b'0', NULL),
(38, b'0', 'Futaleufú', 7, b'0', NULL),
(39, b'0', 'Río Chico', 8, b'0', NULL),
(40, b'0', 'San Antonio', 9, b'0', NULL),
(41, b'0', 'Alberdi', 10, b'0', NULL),
(42, b'0', 'Juan Felipe Ibarra', 10, b'0', NULL),
(43, b'0', 'General Taboada', 10, b'0', NULL),
(44, b'0', 'Salliqueló', 1, b'0', NULL),
(45, b'0', 'Berazategui', 1, b'0', NULL),
(46, b'0', 'General Güemes', 4, b'0', NULL),
(47, b'0', 'San Carlos', 4, b'0', NULL),
(48, b'0', 'General Paz', 1, b'0', NULL),
(49, b'0', 'General Guido', 1, b'0', NULL),
(50, b'0', 'General Juan Madariaga', 1, b'0', NULL),
(51, b'0', 'Lago Argentino', 8, b'0', NULL),
(52, b'0', 'Rivadavia', 10, b'0', NULL),
(53, b'0', 'Ojo de Agua', 10, b'0', NULL),
(54, b'0', 'Choya', 10, b'0', NULL),
(55, b'0', 'Gobernador Dupuy', 11, b'0', NULL),
(56, b'0', 'Cachi', 4, b'0', NULL),
(57, b'0', 'Chicoana', 4, b'0', NULL),
(58, b'0', 'Gaiman', 7, b'0', NULL),
(59, b'0', 'Rawson', 7, b'0', NULL),
(60, b'0', 'General Lamadrid', 6, b'0', NULL),
(61, b'0', 'Ayacucho', 11, b'0', NULL),
(62, b'0', '12 de Octubre', 5, b'0', NULL),
(63, b'0', 'Tulumba', 12, b'0', NULL),
(64, b'0', 'Cruz del Eje', 12, b'0', NULL),
(65, b'0', 'Punilla', 12, b'0', NULL),
(66, b'0', 'Comuna 6', 2, b'0', NULL),
(67, b'0', 'Santa Rosa', 13, b'0', NULL),
(68, b'0', 'General Güemes', 5, b'0', NULL),
(69, b'0', 'General Ortiz de Ocampo', 6, b'0', NULL),
(70, b'0', 'General Roca', 12, b'0', NULL),
(71, b'0', 'Pilagás', 14, b'0', NULL),
(72, b'0', 'Laishi', 14, b'0', NULL),
(73, b'0', 'Rivadavia', 13, b'0', NULL),
(74, b'0', 'Tornquist', 1, b'0', NULL),
(75, b'0', 'La Paz', 13, b'0', NULL),
(76, b'0', 'Coronel Pringles', 1, b'0', NULL),
(77, b'0', 'Conesa', 9, b'0', NULL),
(78, b'0', 'Villarino', 1, b'0', NULL),
(79, b'0', 'Pirané', 14, b'0', NULL),
(80, b'0', 'General Pinto', 1, b'0', NULL),
(81, b'0', 'San Cayetano', 1, b'0', NULL),
(82, b'0', 'Tres Arroyos', 1, b'0', NULL),
(83, b'0', 'Coronel Dorrego', 1, b'0', NULL),
(84, b'0', 'Necochea', 1, b'0', NULL),
(85, b'0', 'Independencia', 6, b'0', NULL),
(86, b'0', 'Chascomús', 1, b'0', NULL),
(87, b'0', 'Punta Indio', 1, b'0', NULL),
(88, b'0', 'El Carmen', 15, b'0', NULL),
(89, b'0', 'Santa María', 12, b'0', NULL),
(90, b'0', 'Valcheta', 9, b'0', NULL),
(91, b'0', 'Arauco', 6, b'0', NULL),
(92, b'0', 'Lezama', 1, b'0', NULL),
(93, b'0', 'Campana', 1, b'0', NULL),
(94, b'0', 'Magallanes', 8, b'0', NULL),
(95, b'0', 'Corpen Aike', 8, b'0', NULL),
(96, b'0', 'Minas', 12, b'0', NULL),
(97, b'0', 'San Alberto', 12, b'0', NULL),
(98, b'0', 'Río Segundo', 12, b'0', NULL),
(99, b'0', 'San Justo', 12, b'0', NULL),
(100, b'0', 'Unión', 12, b'0', NULL),
(101, b'0', 'Tercero Arriba', 12, b'0', NULL),
(102, b'0', 'Cerrillos', 4, b'0', NULL),
(103, b'0', 'Río Cuarto', 12, b'0', NULL),
(104, b'0', 'Tupungato', 13, b'0', NULL),
(105, b'0', '9 de Julio', 9, b'0', NULL),
(106, b'0', 'Ñorquinco', 9, b'0', NULL),
(107, b'0', 'San Rafael', 13, b'0', NULL),
(108, b'0', 'Anta', 4, b'0', NULL),
(109, b'0', 'Picún Leufú', 16, b'0', NULL),
(110, b'0', 'Zapala', 16, b'0', NULL),
(111, b'0', '25 de Mayo', 9, b'0', NULL),
(112, b'0', 'Telsen', 7, b'0', NULL),
(113, b'0', 'Pilcaniyeu', 9, b'0', NULL),
(114, b'0', 'Adolfo Alsina', 1, b'0', NULL),
(115, b'0', 'General Alvear', 13, b'0', NULL),
(116, b'0', 'La Caldera', 4, b'0', NULL),
(117, b'0', 'Sargento Cabral', 5, b'0', NULL),
(118, b'0', 'Pellegrini', 1, b'0', NULL),
(119, b'0', 'Aluminé', 16, b'0', NULL),
(120, b'0', 'Iruya', 4, b'0', NULL),
(121, b'0', 'Lácar', 16, b'0', NULL),
(122, b'0', 'Fray Mamerto Esquiú', 10, b'0', NULL),
(123, b'0', 'Valle Viejo', 10, b'0', NULL),
(124, b'0', 'San Cosme', 3, b'0', NULL),
(125, b'0', 'Sarmiento', 7, b'0', NULL),
(126, b'0', 'Comuna 1', 2, b'0', NULL),
(127, b'0', 'Comuna 4', 2, b'0', NULL),
(128, b'0', 'El Cuy', 9, b'0', NULL),
(129, b'0', 'Las Heras', 13, b'0', NULL),
(130, b'0', 'Tapenagá', 5, b'0', NULL),
(131, b'0', 'Lavalle', 13, b'0', NULL),
(132, b'0', 'Malargüe', 13, b'0', NULL),
(133, b'0', 'Presidente Roque Sáenz Peña', 12, b'0', NULL),
(134, b'0', 'Catán Lil', 16, b'0', NULL),
(135, b'0', 'Presidencia de la Plaza', 5, b'0', NULL),
(136, b'0', 'Comuna 5', 2, b'0', NULL),
(137, b'0', 'Esquina', 3, b'0', NULL),
(138, b'0', 'Ushuaia', 17, b'0', NULL),
(139, b'0', 'Antofagasta de la Sierra', 10, b'0', NULL),
(140, b'0', 'Ensenada', 1, b'0', NULL),
(141, b'0', 'Capital', 18, b'0', NULL),
(142, b'0', 'Belgrano', 19, b'0', NULL),
(143, b'0', 'Pergamino', 1, b'0', NULL),
(144, b'0', 'Puán', 1, b'0', NULL),
(145, b'0', 'General Villegas', 1, b'0', NULL),
(146, b'0', 'Comuna 12', 2, b'0', NULL),
(147, b'0', 'General Obligado', 19, b'0', NULL),
(148, b'0', 'Vera', 19, b'0', NULL),
(149, b'0', '9 de Julio', 19, b'0', NULL),
(150, b'0', 'Adolfo Alsina', 9, b'0', NULL),
(151, b'0', 'Quitilipi', 5, b'0', NULL),
(152, b'0', 'Güer Aike', 8, b'0', NULL),
(153, b'0', 'Capayán', 10, b'0', NULL),
(154, b'0', 'Burruyacú', 18, b'0', NULL),
(155, b'0', 'San Jerónimo', 19, b'0', NULL),
(156, b'0', 'Independencia', 5, b'0', NULL),
(157, b'0', 'Curuzú Cuatiá', 3, b'0', NULL),
(158, b'0', 'Luján de Cuyo', 13, b'0', NULL),
(159, b'0', 'Tinogasta', 10, b'0', NULL),
(160, b'0', 'Comuna 7', 2, b'0', NULL),
(161, b'0', 'Hucal', 20, b'0', NULL),
(162, b'0', 'Itatí', 3, b'0', NULL),
(163, b'0', 'Comuna 10', 2, b'0', NULL),
(164, b'0', 'Caleu Caleu', 20, b'0', NULL),
(165, b'0', 'Lihuel Calel', 20, b'0', NULL),
(166, b'0', 'Curacó', 20, b'0', NULL),
(167, b'0', 'Confluencia', 16, b'0', NULL),
(168, b'0', 'Picunches', 16, b'0', NULL),
(169, b'0', 'Añelo', 16, b'0', NULL),
(170, b'0', 'Loncopué', 16, b'0', NULL),
(171, b'0', 'Ñorquín', 16, b'0', NULL),
(172, b'0', 'Pehuenches', 16, b'0', NULL),
(173, b'0', 'Comuna 11', 2, b'0', NULL),
(174, b'0', 'Montecarlo', 21, b'0', NULL),
(175, b'0', 'Eldorado', 21, b'0', NULL),
(176, b'0', 'San Pedro', 21, b'0', NULL),
(177, b'0', 'Antártida Argentina', 17, b'0', NULL),
(178, b'0', 'Minas', 16, b'0', NULL),
(179, b'0', 'Chos Malal', 16, b'0', NULL),
(180, b'0', 'Cushamen', 7, b'0', NULL),
(181, b'0', 'Lago Buenos Aires', 8, b'0', NULL),
(182, b'0', 'Pichi Mahuida', 9, b'0', NULL),
(183, b'0', 'San Martín', 22, b'0', NULL),
(184, b'0', 'Yavi', 15, b'0', NULL),
(185, b'0', 'Santa Catalina', 15, b'0', NULL),
(186, b'0', 'San Pedro', 15, b'0', NULL),
(187, b'0', 'Valle Grande', 15, b'0', NULL),
(188, b'0', 'Patiño', 14, b'0', NULL),
(189, b'0', 'Bermejo', 14, b'0', NULL),
(190, b'0', 'Susques', 15, b'0', NULL),
(191, b'0', 'Matacos', 14, b'0', NULL),
(192, b'0', 'Los Andes', 4, b'0', NULL),
(193, b'0', 'Orán', 4, b'0', NULL),
(194, b'0', 'Tilcara', 15, b'0', NULL),
(195, b'0', 'Palpalá', 15, b'0', NULL),
(196, b'0', 'Loventué', 20, b'0', NULL),
(197, b'0', 'Río Senguer', 7, b'0', NULL),
(198, b'0', 'Bariloche', 9, b'0', NULL),
(199, b'0', 'Huiliches', 16, b'0', NULL),
(200, b'0', 'Limay Mahuida', 20, b'0', NULL),
(201, b'0', 'Puelén', 20, b'0', NULL),
(202, b'0', 'Chalileo', 20, b'0', NULL),
(203, b'0', 'Chical Co', 20, b'0', NULL),
(204, b'0', 'Quebrachos', 22, b'0', NULL),
(205, b'0', 'Monte Caseros', 3, b'0', NULL),
(206, b'0', 'Mayor Luis J. Fontana', 5, b'0', NULL),
(207, b'0', 'Fray Justo Santa María de Oro', 5, b'0', NULL),
(208, b'0', 'General Belgrano', 6, b'0', NULL),
(209, b'0', 'Las Colonias', 19, b'0', NULL),
(210, b'0', 'San Justo', 19, b'0', NULL),
(211, b'0', 'San Cristóbal', 19, b'0', NULL),
(212, b'0', 'San Javier', 19, b'0', NULL),
(213, b'0', 'Chapaleufú', 20, b'0', NULL),
(214, b'0', 'Realicó', 20, b'0', NULL),
(215, b'0', 'Maracó', 20, b'0', NULL),
(216, b'0', 'Trenel', 20, b'0', NULL),
(217, b'0', 'Copo', 22, b'0', NULL),
(218, b'0', 'Capital', 20, b'0', NULL),
(219, b'0', 'Santa Bárbara', 15, b'0', NULL),
(220, b'0', 'Almirante Brown', 5, b'0', NULL),
(221, b'0', 'Rosario de la Frontera', 4, b'0', NULL),
(222, b'0', 'Collón Curá', 16, b'0', NULL),
(223, b'0', 'Comuna 3', 2, b'0', NULL),
(224, b'0', 'San Fernando', 1, b'0', NULL),
(225, b'0', 'Tigre', 1, b'0', NULL),
(226, b'0', 'Santa María', 10, b'0', NULL),
(227, b'0', 'Santa Rosa', 10, b'0', NULL),
(228, b'0', 'La Paz', 10, b'0', NULL),
(229, b'0', 'Río Hondo', 22, b'0', NULL),
(230, b'0', 'Vinchina', 6, b'0', NULL),
(231, b'0', 'Capital', 6, b'0', NULL),
(232, b'0', 'Río Seco', 12, b'0', NULL),
(233, b'0', 'Avellaneda', 9, b'0', NULL),
(234, b'0', 'General Roca', 9, b'0', NULL),
(235, b'0', 'Belgrano', 11, b'0', NULL),
(236, b'0', 'Los Lagos', 16, b'0', NULL),
(237, b'0', 'Capital', 10, b'0', NULL),
(238, b'0', 'Ancasti', 10, b'0', NULL),
(239, b'0', 'Pomán', 10, b'0', NULL),
(240, b'0', 'Comuna 2', 2, b'0', NULL),
(241, b'0', '9 de Julio', 5, b'0', NULL),
(242, b'0', 'Pocho', 12, b'0', NULL),
(243, b'0', 'Ezeiza', 1, b'0', NULL),
(244, b'0', 'Andalgalá', 10, b'0', NULL),
(245, b'0', 'Ambato', 10, b'0', NULL),
(246, b'0', 'Comuna 8', 2, b'0', NULL),
(247, b'0', 'Guasayán', 22, b'0', NULL),
(248, b'0', 'Paclín', 10, b'0', NULL),
(249, b'0', 'El Alto', 10, b'0', NULL),
(250, b'0', 'Sobremonte', 12, b'0', NULL),
(251, b'0', 'Río Grande', 17, b'0', NULL),
(252, b'0', 'Comuna 13', 2, b'0', NULL),
(253, b'0', 'Banda', 22, b'0', NULL),
(254, b'0', 'Paso de Indios', 7, b'0', NULL),
(255, b'0', 'Capital', 12, b'0', NULL),
(256, b'0', 'Mártires', 7, b'0', NULL),
(257, b'0', 'Sarmiento', 22, b'0', NULL),
(258, b'0', 'Deseado', 8, b'0', NULL),
(259, b'0', 'Languiñeo', 7, b'0', NULL),
(260, b'0', 'Belgrano', 22, b'0', NULL),
(261, b'0', 'Aguirre', 22, b'0', NULL),
(262, b'0', 'Maipú', 5, b'0', NULL),
(263, b'0', 'San Carlos', 13, b'0', NULL),
(264, b'0', 'Tunuyán', 13, b'0', NULL),
(265, b'0', 'Robles', 22, b'0', NULL),
(266, b'0', 'Loreto', 22, b'0', NULL),
(267, b'0', 'Catriló', 20, b'0', NULL),
(268, b'0', 'Capital', 22, b'0', NULL),
(269, b'0', 'Comuna 14', 2, b'0', NULL),
(270, b'0', 'Colón', 23, b'0', NULL),
(271, b'0', 'Villaguay', 23, b'0', NULL),
(272, b'0', 'Castelli', 1, b'0', NULL),
(273, b'0', 'San Salvador', 23, b'0', NULL),
(274, b'0', 'Belén', 10, b'0', NULL),
(275, b'0', 'Almirante Brown', 1, b'0', NULL),
(276, b'0', 'Nogoyá', 23, b'0', NULL),
(277, b'0', 'Tala', 23, b'0', NULL),
(278, b'0', 'Gualeguay', 23, b'0', NULL),
(279, b'0', 'Federación', 23, b'0', NULL),
(280, b'0', 'La Paz', 23, b'0', NULL),
(281, b'0', 'Feliciano', 23, b'0', NULL),
(282, b'0', 'Presidente Perón', 1, b'0', NULL),
(283, b'0', 'Junín', 1, b'0', NULL),
(284, b'0', 'Brandsen', 1, b'0', NULL),
(285, b'0', 'Chivilcoy', 1, b'0', NULL),
(286, b'0', 'Alberti', 1, b'0', NULL),
(287, b'0', 'Bragado', 1, b'0', NULL),
(288, b'0', 'General Las Heras', 1, b'0', NULL),
(289, b'0', 'Carlos Casares', 1, b'0', NULL),
(290, b'0', 'Marcos Paz', 1, b'0', NULL),
(291, b'0', 'General Viamonte', 1, b'0', NULL),
(292, b'0', 'Carlos Tejedor', 1, b'0', NULL),
(293, b'0', '25 de Mayo', 1, b'0', NULL),
(294, b'0', '9 de Julio', 1, b'0', NULL),
(295, b'0', 'Pehuajó', 1, b'0', NULL),
(296, b'0', 'Tapalqué', 1, b'0', NULL),
(297, b'0', 'Trenque Lauquen', 1, b'0', NULL),
(298, b'0', 'General Belgrano', 1, b'0', NULL),
(299, b'0', 'Monte', 1, b'0', NULL),
(300, b'0', 'Roque Pérez', 1, b'0', NULL),
(301, b'0', 'Olavarría', 1, b'0', NULL),
(302, b'0', 'Merlo', 1, b'0', NULL),
(303, b'0', 'Cainguás', 21, b'0', NULL),
(304, b'0', 'Islas del Atlántico Sur', 17, b'0', NULL),
(305, b'0', 'Esteban Echeverría', 1, b'0', NULL),
(306, b'0', 'Arrecifes', 1, b'0', NULL),
(307, b'0', 'Capitán Sarmiento', 1, b'0', NULL),
(308, b'0', 'Dr. Manuel Belgrano', 15, b'0', NULL),
(309, b'0', 'Carmen de Areco', 1, b'0', NULL),
(310, b'0', 'Salto', 1, b'0', NULL),
(311, b'0', 'Exaltación de la Cruz', 1, b'0', NULL),
(312, b'0', 'San Miguel', 1, b'0', NULL),
(313, b'0', 'San Andrés de Giles', 1, b'0', NULL),
(314, b'0', 'Mercedes', 1, b'0', NULL),
(315, b'0', 'Pilar', 1, b'0', NULL),
(316, b'0', 'Luján', 1, b'0', NULL),
(317, b'0', 'Famaillá', 18, b'0', NULL),
(318, b'0', 'Hurlingham', 1, b'0', NULL),
(319, b'0', 'Morón', 1, b'0', NULL),
(320, b'0', 'Chacabuco', 1, b'0', NULL),
(321, b'0', 'Junín', 13, b'0', NULL),
(322, b'0', 'Malvinas Argentinas', 1, b'0', NULL),
(323, b'0', 'Tres Lomas', 1, b'0', NULL),
(324, b'0', 'Ayacucho', 1, b'0', NULL),
(325, b'0', 'Guaminí', 1, b'0', NULL),
(326, b'0', 'General San Martín', 1, b'0', NULL),
(327, b'0', 'Lincoln', 1, b'0', NULL),
(328, b'0', 'Laprida', 1, b'0', NULL),
(329, b'0', 'San Isidro', 1, b'0', NULL),
(330, b'0', 'Benito Juárez', 1, b'0', NULL),
(331, b'0', 'Colón', 1, b'0', NULL),
(332, b'0', 'Ituzaingó', 1, b'0', NULL),
(333, b'0', 'General Rodríguez', 1, b'0', NULL),
(334, b'0', 'Suipacha', 1, b'0', NULL),
(335, b'0', 'Tres de Febrero', 1, b'0', NULL),
(336, b'0', 'General Felipe Varela', 6, b'0', NULL),
(337, b'0', 'Florencio Varela', 1, b'0', NULL),
(338, b'0', 'Navarro', 1, b'0', NULL),
(339, b'0', 'Cañuelas', 1, b'0', NULL),
(340, b'0', 'Moreno', 22, b'0', NULL),
(341, b'0', 'Chacabuco', 5, b'0', NULL),
(342, b'0', 'San Vicente', 1, b'0', NULL),
(343, b'0', 'Lobos', 1, b'0', NULL),
(344, b'0', 'General Alvear', 1, b'0', NULL),
(345, b'0', 'Quilmes', 1, b'0', NULL),
(346, b'0', 'Pila', 1, b'0', NULL),
(347, b'0', 'General La Madrid', 1, b'0', NULL),
(348, b'0', 'Bolívar', 1, b'0', NULL),
(349, b'0', 'Castro Barros', 6, b'0', NULL),
(350, b'0', 'Balcarce', 1, b'0', NULL),
(351, b'0', 'Hipólito Yrigoyen', 1, b'0', NULL),
(352, b'0', 'Capital', 13, b'0', NULL),
(353, b'0', 'Dolores', 1, b'0', NULL),
(354, b'0', 'Azul', 1, b'0', NULL),
(355, b'0', 'Daireaux', 1, b'0', NULL),
(356, b'0', 'Godoy Cruz', 13, b'0', NULL),
(357, b'0', 'Cafayate', 4, b'0', NULL),
(358, b'0', 'Figueroa', 22, b'0', NULL),
(359, b'0', 'Saavedra', 1, b'0', NULL),
(360, b'0', 'Monte Hermoso', 1, b'0', NULL),
(361, b'0', 'Lobería', 1, b'0', NULL),
(362, b'0', 'Berisso', 1, b'0', NULL),
(363, b'0', 'Tordillo', 1, b'0', NULL),
(364, b'0', 'Zárate', 1, b'0', NULL),
(365, b'0', 'Ramallo', 1, b'0', NULL),
(366, b'0', 'San Nicolás', 1, b'0', NULL),
(367, b'0', 'Salavina', 22, b'0', NULL),
(368, b'0', 'Pellegrini', 22, b'0', NULL),
(369, b'0', 'Avellaneda', 22, b'0', NULL),
(370, b'0', '2 de Abril', 5, b'0', NULL),
(371, b'0', 'Guaymallén', 13, b'0', NULL),
(372, b'0', 'Juárez Celman', 12, b'0', NULL),
(373, b'0', 'Capital', 4, b'0', NULL),
(374, b'0', 'Silípica', 22, b'0', NULL),
(375, b'0', 'La Candelaria', 4, b'0', NULL),
(376, b'0', 'Rancul', 20, b'0', NULL),
(377, b'0', 'Maipú', 13, b'0', NULL),
(378, b'0', 'Guachipas', 4, b'0', NULL),
(379, b'0', 'Atreucó', 20, b'0', NULL),
(380, b'0', 'San Martín', 13, b'0', NULL),
(381, b'0', 'Guatraché', 20, b'0', NULL),
(382, b'0', 'Sanagasta', 6, b'0', NULL),
(383, b'0', 'Conhelo', 20, b'0', NULL),
(384, b'0', 'Libertador General San Martín', 21, b'0', NULL),
(385, b'0', 'Rosario Vera Peñaloza', 6, b'0', NULL),
(386, b'0', 'San Miguel', 3, b'0', NULL),
(387, b'0', 'General Juan Facundo Quiroga', 6, b'0', NULL),
(388, b'0', 'Ángel Vicente Peñaloza', 6, b'0', NULL),
(389, b'0', 'Empedrado', 3, b'0', NULL),
(390, b'0', 'Chilecito', 6, b'0', NULL),
(391, b'0', 'Toay', 20, b'0', NULL),
(392, b'0', 'Colón', 12, b'0', NULL),
(393, b'0', 'Ituzaingó', 3, b'0', NULL),
(394, b'0', 'Famatina', 6, b'0', NULL),
(395, b'0', 'General López', 19, b'0', NULL),
(396, b'0', 'Constitución', 19, b'0', NULL),
(397, b'0', 'Caseros', 19, b'0', NULL),
(398, b'0', 'Rosario', 19, b'0', NULL),
(399, b'0', 'San Lorenzo', 19, b'0', NULL),
(400, b'0', 'Iriondo', 19, b'0', NULL),
(401, b'0', 'Lanús', 1, b'0', NULL),
(402, b'0', 'General San Martín', 6, b'0', NULL),
(403, b'0', 'San Blas de Los Sauces', 6, b'0', NULL),
(404, b'0', 'San Antonio', 15, b'0', NULL),
(405, b'0', 'Rinconada', 15, b'0', NULL),
(406, b'0', 'Ramón Lista', 14, b'0', NULL),
(407, b'0', 'La Poma', 4, b'0', NULL),
(408, b'0', 'Biedma', 7, b'0', NULL),
(409, b'0', 'Capital', 3, b'0', NULL),
(410, b'0', 'San Luis del Palmar', 3, b'0', NULL),
(411, b'0', 'Formosa', 14, b'0', NULL),
(412, b'0', 'Pilcomayo', 14, b'0', NULL),
(413, b'0', 'Tehuelches', 7, b'0', NULL),
(414, b'0', 'Escalante', 7, b'0', NULL),
(415, b'0', 'Ischilín', 12, b'0', NULL),
(416, b'0', 'Totoral', 12, b'0', NULL),
(417, b'0', 'General San Martín', 12, b'0', NULL),
(418, b'0', 'San Javier', 12, b'0', NULL),
(419, b'0', 'Río Primero', 12, b'0', NULL),
(420, b'0', 'Marcos Juárez', 12, b'0', NULL),
(421, b'0', 'General Donovan', 5, b'0', NULL),
(422, b'0', 'Leandro N. Alem', 1, b'0', NULL),
(423, b'0', 'Libertador General San Martín', 5, b'0', NULL),
(424, b'0', 'Gastre', 7, b'0', NULL),
(425, b'0', 'General Arenales', 1, b'0', NULL),
(426, b'0', 'Bermejo', 5, b'0', NULL),
(427, b'0', 'Calamuchita', 12, b'0', NULL),
(428, b'0', 'Cruz Alta', 18, b'0', NULL),
(429, b'0', 'Lules', 18, b'0', NULL),
(430, b'0', 'Yerba Buena', 18, b'0', NULL),
(431, b'0', 'Tafí Viejo', 18, b'0', NULL),
(432, b'0', 'Libertador General San Martín', 11, b'0', NULL),
(433, b'0', 'Coronel Pringles', 11, b'0', NULL),
(434, b'0', 'Chacabuco', 11, b'0', NULL),
(435, b'0', 'Rivadavia', 1, b'0', NULL),
(436, b'0', 'Patagones', 1, b'0', NULL),
(437, b'0', 'Juan Martín de Pueyrredón', 11, b'0', NULL),
(438, b'0', 'General Pedernera', 11, b'0', NULL),
(439, b'0', 'Trancas', 18, b'0', NULL),
(440, b'0', 'Tafí del Valle', 18, b'0', NULL),
(441, b'0', 'Comuna 9', 2, b'0', NULL),
(442, b'0', 'Junín', 11, b'0', NULL),
(443, b'0', 'Mitre', 22, b'0', NULL),
(444, b'0', 'Atamisqui', 22, b'0', NULL),
(445, b'0', 'Berón de Astrada', 3, b'0', NULL),
(446, b'0', 'Tolhuin', 17, b'0', NULL),
(447, b'0', 'Capital', 21, b'0', NULL),
(448, b'0', 'Candelaria', 21, b'0', NULL),
(449, b'0', 'Jiménez', 22, b'0', NULL),
(450, b'0', 'Coronel de Marina Leonardo Rosales', 1, b'0', NULL),
(451, b'0', 'Baradero', 1, b'0', NULL),
(452, b'0', 'San Pedro', 1, b'0', NULL),
(453, b'0', 'Santa Victoria', 4, b'0', NULL),
(454, b'0', 'General José de San Martín', 4, b'0', NULL),
(455, b'0', 'Rivadavia', 4, b'0', NULL),
(456, b'0', 'Rosario de Lerma', 4, b'0', NULL),
(457, b'0', 'Ledesma', 15, b'0', NULL),
(458, b'0', 'Humahuaca', 15, b'0', NULL),
(459, b'0', 'Cochinoca', 15, b'0', NULL),
(460, b'0', 'Tumbaya', 15, b'0', NULL),
(461, b'0', 'Florentino Ameghino', 1, b'0', NULL),
(462, b'0', 'Florentino Ameghino', 7, b'0', NULL),
(463, b'0', 'La Cocha', 18, b'0', NULL),
(464, b'0', 'Graneros', 18, b'0', NULL),
(465, b'0', 'Juan Bautista Alberdi', 18, b'0', NULL),
(466, b'0', 'Río Chico', 18, b'0', NULL),
(467, b'0', 'Simoca', 18, b'0', NULL),
(468, b'0', 'Chicligasta', 18, b'0', NULL),
(469, b'0', 'Monteros', 18, b'0', NULL),
(470, b'0', 'Leales', 18, b'0', NULL),
(471, b'0', 'San Martín', 19, b'0', NULL),
(472, b'0', 'La Capital', 19, b'0', NULL),
(473, b'0', 'General Manuel Belgrano', 21, b'0', NULL),
(474, b'0', 'Guaraní', 21, b'0', NULL),
(475, b'0', 'Iguazú', 21, b'0', NULL),
(476, b'0', '25 de Mayo', 21, b'0', NULL),
(477, b'0', 'Oberá', 21, b'0', NULL),
(478, b'0', 'Castellanos', 19, b'0', NULL),
(479, b'0', 'Garay', 19, b'0', NULL),
(480, b'0', 'Quemú Quemú', 20, b'0', NULL),
(481, b'0', 'San Ignacio', 21, b'0', NULL),
(482, b'0', 'Utracán', 20, b'0', NULL),
(483, b'0', 'San Martín', 3, b'0', NULL),
(484, b'0', 'Paso de los Libres', 3, b'0', NULL),
(485, b'0', 'Goya', 3, b'0', NULL),
(486, b'0', 'Lavalle', 3, b'0', NULL),
(487, b'0', 'San Roque', 3, b'0', NULL),
(488, b'0', 'General Alvear', 3, b'0', NULL),
(489, b'0', 'Concepción', 3, b'0', NULL),
(490, b'0', 'Bella Vista', 3, b'0', NULL),
(491, b'0', 'Santo Tomé', 3, b'0', NULL),
(492, b'0', 'Saladas', 3, b'0', NULL),
(493, b'0', 'General Paz', 3, b'0', NULL),
(494, b'0', 'Leandro N. Alem', 21, b'0', NULL),
(495, b'0', 'San Javier', 21, b'0', NULL),
(496, b'0', 'Mburucuyá', 3, b'0', NULL),
(497, b'0', 'Concepción', 21, b'0', NULL),
(498, b'0', 'Apóstoles', 21, b'0', NULL),
(499, b'0', '1° de Mayo', 5, b'0', NULL),
(500, b'0', 'San Fernando', 5, b'0', NULL),
(501, b'0', 'San Lorenzo', 5, b'0', NULL),
(502, b'0', 'Lomas de Zamora', 1, b'0', NULL),
(503, b'0', 'Avellaneda', 1, b'0', NULL),
(504, b'0', '25 de Mayo', 5, b'0', NULL),
(505, b'0', 'General Belgrano', 5, b'0', NULL),
(506, b'0', 'Libertad', 5, b'0', NULL),
(507, b'0', 'Comandante Fernández', 5, b'0', NULL),
(508, b'0', 'Comuna 15', 2, b'0', NULL),
(509, b'0', 'Chimbas', 24, b'0', NULL),
(510, b'0', 'Capital', 24, b'0', NULL),
(511, b'0', 'Rivadavia', 24, b'0', NULL),
(512, b'0', '9 de Julio', 24, b'0', NULL),
(513, b'0', 'Albardón', 24, b'0', NULL),
(514, b'0', 'Angaco', 24, b'0', NULL),
(515, b'0', 'Santa Lucía', 24, b'0', NULL),
(516, b'0', 'Rawson', 24, b'0', NULL),
(517, b'0', '25 de Mayo', 24, b'0', NULL),
(518, b'0', 'San Martín', 24, b'0', NULL),
(519, b'0', 'Pocito', 24, b'0', NULL),
(520, b'0', 'Zonda', 24, b'0', NULL),
(521, b'0', 'Ullum', 24, b'0', NULL),
(522, b'0', 'Sarmiento', 24, b'0', NULL),
(523, b'0', 'Calingasta', 24, b'0', NULL),
(524, b'0', 'Iglesia', 24, b'0', NULL),
(525, b'0', 'Jáchal', 24, b'0', NULL),
(526, b'0', 'Valle Fértil', 24, b'0', NULL),
(527, b'0', 'Caucete', 24, b'0', NULL),
(528, b'0', 'La Plata', 1, b'0', NULL),
(529, b'0', 'Mercedes', 3, b'0', NULL),
(552, b'0', 'Adolfo Gonzales Chaves', 1, b'0', NULL),
(553, b'0', 'Concordia', 23, b'0', NULL),
(554, b'0', 'Federal', 23, b'0', NULL),
(555, b'0', 'Gualeguaychú', 23, b'0', NULL),
(556, b'0', 'Islas del Ibicuy', 23, b'0', NULL),
(557, b'0', 'Victoria', 23, b'0', NULL),
(558, b'0', 'Diamante', 23, b'0', NULL),
(559, b'0', 'Uruguay', 23, b'0', NULL),
(560, b'0', 'Paraná', 23, b'0', NULL),
(561, b'0', 'Saladillo', 1, b'0', NULL),
(562, b'0', 'Las Flores', 1, b'0', NULL),
(563, b'0', 'Rojas', 1, b'0', NULL),
(564, b'0', 'Escobar', 1, b'0', NULL),
(565, b'0', 'José C. Paz', 1, b'0', NULL),
(566, b'0', 'Bahía Blanca', 1, b'0', NULL),
(567, b'0', 'San Antonio de Areco', 1, b'0', NULL),
(568, b'0', 'Maipú', 1, b'0', NULL),
(569, b'0', 'General Alvarado', 1, b'0', NULL),
(570, b'0', 'General Pueyrredón', 1, b'0', NULL),
(571, b'0', 'Mar Chiquita', 1, b'0', NULL),
(572, b'0', 'Villa Gesell', 1, b'0', NULL),
(573, b'0', 'Pinamar', 1, b'0', NULL),
(574, b'0', 'General Lavalle', 1, b'0', NULL),
(575, b'0', 'La Costa', 1, b'0', NULL),
(576, b'0', 'Magdalena', 1, b'0', NULL),
(577, b'0', 'Sauce', 3, b'0', NULL),
(578, b'0', 'Vicente López', 1, b'0', NULL),
(579, b'0', 'La Viña', 4, b'0', NULL),
(580, b'0', 'Rauch', 1, b'0', NULL),
(581, b'0', 'Metán', 4, b'0', NULL),
(582, b'0', 'Molinos', 4, b'0', NULL),
(583, b'0', 'O\'Higgins', 5, b'0', NULL),
(584, b'0', 'Moreno', 1, b'0', NULL),
(585, b'0', 'La Matanza', 1, b'0', NULL),
(586, b'0', 'Tandil', 1, b'0', NULL),
(587, b'0', 'Coronel Suárez', 1, b'0', NULL),
(588, b'0', 'Chamical', 6, b'0', NULL),
(589, b'0', 'Futaleufú', 7, b'0', NULL),
(590, b'0', 'Río Chico', 8, b'0', NULL),
(591, b'0', 'San Antonio', 9, b'0', NULL),
(592, b'0', 'Alberdi', 22, b'0', NULL),
(593, b'0', 'Juan Felipe Ibarra', 22, b'0', NULL),
(594, b'0', 'General Taboada', 22, b'0', NULL),
(595, b'0', 'Salliqueló', 1, b'0', NULL),
(596, b'0', 'Berazategui', 1, b'0', NULL),
(597, b'0', 'General Güemes', 4, b'0', NULL),
(598, b'0', 'San Carlos', 4, b'0', NULL),
(599, b'0', 'General Paz', 1, b'0', NULL),
(600, b'0', 'General Guido', 1, b'0', NULL),
(601, b'0', 'General Juan Madariaga', 1, b'0', NULL),
(602, b'0', 'Lago Argentino', 8, b'0', NULL),
(603, b'0', 'Rivadavia', 22, b'0', NULL),
(604, b'0', 'Ojo de Agua', 22, b'0', NULL),
(605, b'0', 'Choya', 22, b'0', NULL),
(606, b'0', 'Gobernador Dupuy', 11, b'0', NULL),
(607, b'0', 'Cachi', 4, b'0', NULL),
(608, b'0', 'Chicoana', 4, b'0', NULL),
(609, b'0', 'Gaiman', 7, b'0', NULL),
(610, b'0', 'Rawson', 7, b'0', NULL),
(611, b'0', 'General Lamadrid', 6, b'0', NULL),
(612, b'0', 'Ayacucho', 11, b'0', NULL),
(613, b'0', '12 de Octubre', 5, b'0', NULL),
(614, b'0', 'Tulumba', 12, b'0', NULL),
(615, b'0', 'Cruz del Eje', 12, b'0', NULL),
(616, b'0', 'Punilla', 12, b'0', NULL),
(617, b'0', 'Comuna 6', 2, b'0', NULL),
(618, b'0', 'Santa Rosa', 13, b'0', NULL),
(619, b'0', 'General Güemes', 5, b'0', NULL),
(620, b'0', 'General Ortiz de Ocampo', 6, b'0', NULL),
(621, b'0', 'General Roca', 12, b'0', NULL),
(622, b'0', 'Pilagás', 14, b'0', NULL),
(623, b'0', 'Laishi', 14, b'0', NULL),
(624, b'0', 'Rivadavia', 13, b'0', NULL),
(625, b'0', 'Tornquist', 1, b'0', NULL),
(626, b'0', 'La Paz', 13, b'0', NULL),
(627, b'0', 'Coronel Pringles', 1, b'0', NULL),
(628, b'0', 'Conesa', 9, b'0', NULL),
(629, b'0', 'Villarino', 1, b'0', NULL),
(630, b'0', 'Pirané', 14, b'0', NULL),
(631, b'0', 'General Pinto', 1, b'0', NULL),
(632, b'0', 'San Cayetano', 1, b'0', NULL),
(633, b'0', 'Tres Arroyos', 1, b'0', NULL),
(634, b'0', 'Coronel Dorrego', 1, b'0', NULL),
(635, b'0', 'Necochea', 1, b'0', NULL),
(636, b'0', 'Independencia', 6, b'0', NULL),
(637, b'0', 'Chascomús', 1, b'0', NULL),
(638, b'0', 'Punta Indio', 1, b'0', NULL),
(639, b'0', 'El Carmen', 15, b'0', NULL),
(640, b'0', 'Santa María', 12, b'0', NULL),
(641, b'0', 'Valcheta', 9, b'0', NULL),
(642, b'0', 'Arauco', 6, b'0', NULL),
(643, b'0', 'Lezama', 1, b'0', NULL),
(644, b'0', 'Campana', 1, b'0', NULL),
(645, b'0', 'Magallanes', 8, b'0', NULL),
(646, b'0', 'Corpen Aike', 8, b'0', NULL),
(647, b'0', 'Minas', 12, b'0', NULL),
(648, b'0', 'San Alberto', 12, b'0', NULL),
(649, b'0', 'Río Segundo', 12, b'0', NULL),
(650, b'0', 'San Justo', 12, b'0', NULL),
(651, b'0', 'Unión', 12, b'0', NULL),
(652, b'0', 'Tercero Arriba', 12, b'0', NULL),
(653, b'0', 'Cerrillos', 4, b'0', NULL),
(654, b'0', 'Río Cuarto', 12, b'0', NULL),
(655, b'0', 'Tupungato', 13, b'0', NULL),
(656, b'0', '9 de Julio', 9, b'0', NULL),
(657, b'0', 'Ñorquinco', 9, b'0', NULL),
(658, b'0', 'San Rafael', 13, b'0', NULL),
(659, b'0', 'Anta', 4, b'0', NULL),
(660, b'0', 'Picún Leufú', 16, b'0', NULL),
(661, b'0', 'Zapala', 16, b'0', NULL),
(662, b'0', '25 de Mayo', 9, b'0', NULL),
(663, b'0', 'Telsen', 7, b'0', NULL),
(664, b'0', 'Pilcaniyeu', 9, b'0', NULL),
(665, b'0', 'Adolfo Alsina', 1, b'0', NULL),
(666, b'0', 'General Alvear', 13, b'0', NULL),
(667, b'0', 'La Caldera', 4, b'0', NULL),
(668, b'0', 'Sargento Cabral', 5, b'0', NULL),
(669, b'0', 'Pellegrini', 1, b'0', NULL),
(670, b'0', 'Aluminé', 16, b'0', NULL),
(671, b'0', 'Iruya', 4, b'0', NULL),
(672, b'0', 'Lácar', 16, b'0', NULL),
(673, b'0', 'Fray Mamerto Esquiú', 10, b'0', NULL),
(674, b'0', 'Valle Viejo', 10, b'0', NULL),
(675, b'0', 'San Cosme', 3, b'0', NULL),
(676, b'0', 'Sarmiento', 7, b'0', NULL),
(677, b'0', 'Comuna 1', 2, b'0', NULL),
(678, b'0', 'Comuna 4', 2, b'0', NULL),
(679, b'0', 'El Cuy', 9, b'0', NULL),
(680, b'0', 'Las Heras', 13, b'0', NULL),
(681, b'0', 'Tapenagá', 5, b'0', NULL),
(682, b'0', 'Lavalle', 13, b'0', NULL),
(683, b'0', 'Malargüe', 13, b'0', NULL),
(684, b'0', 'Presidente Roque Sáenz Peña', 12, b'0', NULL),
(685, b'0', 'Catán Lil', 16, b'0', NULL),
(686, b'0', 'Presidencia de la Plaza', 5, b'0', NULL),
(687, b'0', 'Comuna 5', 2, b'0', NULL),
(688, b'0', 'Esquina', 3, b'0', NULL),
(689, b'0', 'Ushuaia', 17, b'0', NULL),
(690, b'0', 'Antofagasta de la Sierra', 10, b'0', NULL),
(691, b'0', 'Ensenada', 1, b'0', NULL),
(692, b'0', 'Capital', 18, b'0', NULL),
(693, b'0', 'Belgrano', 19, b'0', NULL),
(694, b'0', 'Pergamino', 1, b'0', NULL),
(695, b'0', 'Puán', 1, b'0', NULL),
(696, b'0', 'General Villegas', 1, b'0', NULL),
(697, b'0', 'Comuna 12', 2, b'0', NULL),
(698, b'0', 'General Obligado', 19, b'0', NULL),
(699, b'0', 'Vera', 19, b'0', NULL),
(700, b'0', '9 de Julio', 19, b'0', NULL),
(701, b'0', 'Adolfo Alsina', 9, b'0', NULL),
(702, b'0', 'Quitilipi', 5, b'0', NULL),
(703, b'0', 'Güer Aike', 8, b'0', NULL),
(704, b'0', 'Capayán', 10, b'0', NULL),
(705, b'0', 'Burruyacú', 18, b'0', NULL),
(706, b'0', 'San Jerónimo', 19, b'0', NULL),
(707, b'0', 'Independencia', 5, b'0', NULL),
(708, b'0', 'Curuzú Cuatiá', 3, b'0', NULL),
(709, b'0', 'Luján de Cuyo', 13, b'0', NULL),
(710, b'0', 'Tinogasta', 10, b'0', NULL),
(711, b'0', 'Comuna 7', 2, b'0', NULL),
(712, b'0', 'Hucal', 20, b'0', NULL),
(713, b'0', 'Itatí', 3, b'0', NULL),
(714, b'0', 'Comuna 10', 2, b'0', NULL),
(715, b'0', 'Caleu Caleu', 20, b'0', NULL),
(716, b'0', 'Lihuel Calel', 20, b'0', NULL),
(717, b'0', 'Curacó', 20, b'0', NULL),
(718, b'0', 'Confluencia', 16, b'0', NULL),
(719, b'0', 'Picunches', 16, b'0', NULL),
(720, b'0', 'Añelo', 16, b'0', NULL),
(721, b'0', 'Loncopué', 16, b'0', NULL),
(722, b'0', 'Ñorquín', 16, b'0', NULL),
(723, b'0', 'Pehuenches', 16, b'0', NULL),
(724, b'0', 'Comuna 11', 2, b'0', NULL),
(725, b'0', 'Montecarlo', 21, b'0', NULL),
(726, b'0', 'Eldorado', 21, b'0', NULL),
(727, b'0', 'San Pedro', 21, b'0', NULL),
(728, b'0', 'Antártida Argentina', 17, b'0', NULL),
(729, b'0', 'Minas', 16, b'0', NULL),
(730, b'0', 'Chos Malal', 16, b'0', NULL),
(731, b'0', 'Cushamen', 7, b'0', NULL),
(732, b'0', 'Lago Buenos Aires', 8, b'0', NULL),
(733, b'0', 'Pichi Mahuida', 9, b'0', NULL),
(734, b'0', 'San Martín', 22, b'0', NULL),
(735, b'0', 'Yavi', 15, b'0', NULL),
(736, b'0', 'Santa Catalina', 15, b'0', NULL),
(737, b'0', 'San Pedro', 15, b'0', NULL),
(738, b'0', 'Valle Grande', 15, b'0', NULL),
(739, b'0', 'Patiño', 14, b'0', NULL),
(740, b'0', 'Bermejo', 14, b'0', NULL),
(741, b'0', 'Susques', 15, b'0', NULL),
(742, b'0', 'Matacos', 14, b'0', NULL),
(743, b'0', 'Los Andes', 4, b'0', NULL),
(744, b'0', 'Orán', 4, b'0', NULL),
(745, b'0', 'Tilcara', 15, b'0', NULL),
(746, b'0', 'Palpalá', 15, b'0', NULL),
(747, b'0', 'Loventué', 20, b'0', NULL),
(748, b'0', 'Río Senguer', 7, b'0', NULL),
(749, b'0', 'Bariloche', 9, b'0', NULL),
(750, b'0', 'Huiliches', 16, b'0', NULL),
(751, b'0', 'Limay Mahuida', 20, b'0', NULL),
(752, b'0', 'Puelén', 20, b'0', NULL),
(753, b'0', 'Chalileo', 20, b'0', NULL),
(754, b'0', 'Chical Co', 20, b'0', NULL),
(755, b'0', 'Quebrachos', 22, b'0', NULL),
(756, b'0', 'Monte Caseros', 3, b'0', NULL),
(757, b'0', 'Mayor Luis J. Fontana', 5, b'0', NULL),
(758, b'0', 'Fray Justo Santa María de Oro', 5, b'0', NULL),
(759, b'0', 'General Belgrano', 6, b'0', NULL),
(760, b'0', 'Las Colonias', 19, b'0', NULL),
(761, b'0', 'San Justo', 19, b'0', NULL),
(762, b'0', 'San Cristóbal', 19, b'0', NULL),
(763, b'0', 'San Javier', 19, b'0', NULL),
(764, b'0', 'Chapaleufú', 20, b'0', NULL),
(765, b'0', 'Realicó', 20, b'0', NULL),
(766, b'0', 'Maracó', 20, b'0', NULL),
(767, b'0', 'Trenel', 20, b'0', NULL),
(768, b'0', 'Copo', 22, b'0', NULL),
(769, b'0', 'Capital', 20, b'0', NULL),
(770, b'0', 'Santa Bárbara', 15, b'0', NULL),
(771, b'0', 'Almirante Brown', 5, b'0', NULL),
(772, b'0', 'Rosario de la Frontera', 4, b'0', NULL),
(773, b'0', 'Collón Curá', 16, b'0', NULL),
(774, b'0', 'Comuna 3', 2, b'0', NULL),
(775, b'0', 'San Fernando', 1, b'0', NULL),
(776, b'0', 'Tigre', 1, b'0', NULL),
(777, b'0', 'Santa María', 10, b'0', NULL),
(778, b'0', 'Santa Rosa', 10, b'0', NULL),
(779, b'0', 'La Paz', 10, b'0', NULL),
(780, b'0', 'Río Hondo', 22, b'0', NULL),
(781, b'0', 'Vinchina', 6, b'0', NULL),
(782, b'0', 'Capital', 6, b'0', NULL),
(783, b'0', 'Río Seco', 12, b'0', NULL),
(784, b'0', 'Avellaneda', 9, b'0', NULL),
(785, b'0', 'General Roca', 9, b'0', NULL),
(786, b'0', 'Belgrano', 11, b'0', NULL),
(787, b'0', 'Los Lagos', 16, b'0', NULL),
(788, b'0', 'Capital', 10, b'0', NULL),
(789, b'0', 'Ancasti', 10, b'0', NULL),
(790, b'0', 'Pomán', 10, b'0', NULL),
(791, b'0', 'Comuna 2', 2, b'0', NULL),
(792, b'0', '9 de Julio', 5, b'0', NULL),
(793, b'0', 'Pocho', 12, b'0', NULL),
(794, b'0', 'Ezeiza', 1, b'0', NULL),
(795, b'0', 'Andalgalá', 10, b'0', NULL),
(796, b'0', 'Ambato', 10, b'0', NULL),
(797, b'0', 'Comuna 8', 2, b'0', NULL),
(798, b'0', 'Guasayán', 22, b'0', NULL),
(799, b'0', 'Paclín', 10, b'0', NULL),
(800, b'0', 'El Alto', 10, b'0', NULL),
(801, b'0', 'Sobremonte', 12, b'0', NULL),
(802, b'0', 'Río Grande', 17, b'0', NULL),
(803, b'0', 'Comuna 13', 2, b'0', NULL),
(804, b'0', 'Banda', 22, b'0', NULL),
(805, b'0', 'Paso de Indios', 7, b'0', NULL),
(806, b'0', 'Capital', 12, b'0', NULL),
(807, b'0', 'Mártires', 7, b'0', NULL),
(808, b'0', 'Sarmiento', 22, b'0', NULL),
(809, b'0', 'Deseado', 8, b'0', NULL),
(810, b'0', 'Languiñeo', 7, b'0', NULL),
(811, b'0', 'Belgrano', 22, b'0', NULL),
(812, b'0', 'Aguirre', 22, b'0', NULL),
(813, b'0', 'Maipú', 5, b'0', NULL),
(814, b'0', 'San Carlos', 13, b'0', NULL),
(815, b'0', 'Tunuyán', 13, b'0', NULL),
(816, b'0', 'Robles', 22, b'0', NULL),
(817, b'0', 'Loreto', 22, b'0', NULL),
(818, b'0', 'Catriló', 20, b'0', NULL),
(819, b'0', 'Capital', 22, b'0', NULL),
(820, b'0', 'Comuna 14', 2, b'0', NULL),
(821, b'0', 'Colón', 23, b'0', NULL),
(822, b'0', 'Villaguay', 23, b'0', NULL),
(823, b'0', 'Castelli', 1, b'0', NULL),
(824, b'0', 'San Salvador', 23, b'0', NULL),
(825, b'0', 'Belén', 10, b'0', NULL),
(826, b'0', 'Almirante Brown', 1, b'0', NULL),
(827, b'0', 'Nogoyá', 23, b'0', NULL),
(828, b'0', 'Tala', 23, b'0', NULL),
(829, b'0', 'Gualeguay', 23, b'0', NULL),
(830, b'0', 'Federación', 23, b'0', NULL),
(831, b'0', 'La Paz', 23, b'0', NULL),
(832, b'0', 'Feliciano', 23, b'0', NULL),
(833, b'0', 'Presidente Perón', 1, b'0', NULL),
(834, b'0', 'Junín', 1, b'0', NULL),
(835, b'0', 'Brandsen', 1, b'0', NULL),
(836, b'0', 'Chivilcoy', 1, b'0', NULL),
(837, b'0', 'Alberti', 1, b'0', NULL),
(838, b'0', 'Bragado', 1, b'0', NULL),
(839, b'0', 'General Las Heras', 1, b'0', NULL),
(840, b'0', 'Carlos Casares', 1, b'0', NULL),
(841, b'0', 'Marcos Paz', 1, b'0', NULL),
(842, b'0', 'General Viamonte', 1, b'0', NULL),
(843, b'0', 'Carlos Tejedor', 1, b'0', NULL),
(844, b'0', '25 de Mayo', 1, b'0', NULL),
(845, b'0', '9 de Julio', 1, b'0', NULL),
(846, b'0', 'Pehuajó', 1, b'0', NULL),
(847, b'0', 'Tapalqué', 1, b'0', NULL),
(848, b'0', 'Trenque Lauquen', 1, b'0', NULL),
(849, b'0', 'General Belgrano', 1, b'0', NULL),
(850, b'0', 'Monte', 1, b'0', NULL),
(851, b'0', 'Roque Pérez', 1, b'0', NULL),
(852, b'0', 'Olavarría', 1, b'0', NULL),
(853, b'0', 'Merlo', 1, b'0', NULL),
(854, b'0', 'Cainguás', 21, b'0', NULL),
(855, b'0', 'Islas del Atlántico Sur', 17, b'0', NULL),
(856, b'0', 'Esteban Echeverría', 1, b'0', NULL),
(857, b'0', 'Arrecifes', 1, b'0', NULL),
(858, b'0', 'Capitán Sarmiento', 1, b'0', NULL),
(859, b'0', 'Dr. Manuel Belgrano', 15, b'0', NULL),
(860, b'0', 'Carmen de Areco', 1, b'0', NULL),
(861, b'0', 'Salto', 1, b'0', NULL),
(862, b'0', 'Exaltación de la Cruz', 1, b'0', NULL),
(863, b'0', 'San Miguel', 1, b'0', NULL),
(864, b'0', 'San Andrés de Giles', 1, b'0', NULL),
(865, b'0', 'Mercedes', 1, b'0', NULL),
(866, b'0', 'Pilar', 1, b'0', NULL),
(867, b'0', 'Luján', 1, b'0', NULL),
(868, b'0', 'Famaillá', 18, b'0', NULL),
(869, b'0', 'Hurlingham', 1, b'0', NULL),
(870, b'0', 'Morón', 1, b'0', NULL),
(871, b'0', 'Chacabuco', 1, b'0', NULL),
(872, b'0', 'Junín', 13, b'0', NULL),
(873, b'0', 'Malvinas Argentinas', 1, b'0', NULL),
(874, b'0', 'Tres Lomas', 1, b'0', NULL),
(875, b'0', 'Ayacucho', 1, b'0', NULL),
(876, b'0', 'Guaminí', 1, b'0', NULL),
(877, b'0', 'General San Martín', 1, b'0', NULL),
(878, b'0', 'Lincoln', 1, b'0', NULL),
(879, b'0', 'Laprida', 1, b'0', NULL),
(880, b'0', 'San Isidro', 1, b'0', NULL),
(881, b'0', 'Benito Juárez', 1, b'0', NULL),
(882, b'0', 'Colón', 1, b'0', NULL),
(883, b'0', 'Ituzaingó', 1, b'0', NULL),
(884, b'0', 'General Rodríguez', 1, b'0', NULL),
(885, b'0', 'Suipacha', 1, b'0', NULL),
(886, b'0', 'Tres de Febrero', 1, b'0', NULL),
(887, b'0', 'General Felipe Varela', 6, b'0', NULL),
(888, b'0', 'Florencio Varela', 1, b'0', NULL),
(889, b'0', 'Navarro', 1, b'0', NULL),
(890, b'0', 'Cañuelas', 1, b'0', NULL),
(891, b'0', 'Moreno', 22, b'0', NULL),
(892, b'0', 'Chacabuco', 5, b'0', NULL),
(893, b'0', 'San Vicente', 1, b'0', NULL),
(894, b'0', 'Lobos', 1, b'0', NULL),
(895, b'0', 'General Alvear', 1, b'0', NULL),
(896, b'0', 'Quilmes', 1, b'0', NULL),
(897, b'0', 'Pila', 1, b'0', NULL),
(898, b'0', 'General La Madrid', 1, b'0', NULL),
(899, b'0', 'Bolívar', 1, b'0', NULL),
(900, b'0', 'Castro Barros', 6, b'0', NULL),
(901, b'0', 'Balcarce', 1, b'0', NULL),
(902, b'0', 'Hipólito Yrigoyen', 1, b'0', NULL),
(903, b'0', 'Capital', 13, b'0', NULL),
(904, b'0', 'Dolores', 1, b'0', NULL),
(905, b'0', 'Azul', 1, b'0', NULL),
(906, b'0', 'Daireaux', 1, b'0', NULL),
(907, b'0', 'Godoy Cruz', 13, b'0', NULL),
(908, b'0', 'Cafayate', 4, b'0', NULL),
(909, b'0', 'Figueroa', 22, b'0', NULL),
(910, b'0', 'Saavedra', 1, b'0', NULL),
(911, b'0', 'Monte Hermoso', 1, b'0', NULL),
(912, b'0', 'Lobería', 1, b'0', NULL),
(913, b'0', 'Berisso', 1, b'0', NULL),
(914, b'0', 'Tordillo', 1, b'0', NULL),
(915, b'0', 'Zárate', 1, b'0', NULL),
(916, b'0', 'Ramallo', 1, b'0', NULL),
(917, b'0', 'San Nicolás', 1, b'0', NULL),
(918, b'0', 'Salavina', 22, b'0', NULL),
(919, b'0', 'Pellegrini', 22, b'0', NULL),
(920, b'0', 'Avellaneda', 22, b'0', NULL),
(921, b'0', '2 de Abril', 5, b'0', NULL),
(922, b'0', 'Guaymallén', 13, b'0', NULL),
(923, b'0', 'Juárez Celman', 12, b'0', NULL),
(924, b'0', 'Capital', 4, b'0', NULL),
(925, b'0', 'Silípica', 22, b'0', NULL),
(926, b'0', 'La Candelaria', 4, b'0', NULL),
(927, b'0', 'Rancul', 20, b'0', NULL),
(928, b'0', 'Maipú', 13, b'0', NULL),
(929, b'0', 'Guachipas', 4, b'0', NULL),
(930, b'0', 'Atreucó', 20, b'0', NULL),
(931, b'0', 'San Martín', 13, b'0', NULL),
(932, b'0', 'Guatraché', 20, b'0', NULL),
(933, b'0', 'Sanagasta', 6, b'0', NULL),
(934, b'0', 'Conhelo', 20, b'0', NULL),
(935, b'0', 'Libertador General San Martín', 21, b'0', NULL),
(936, b'0', 'Rosario Vera Peñaloza', 6, b'0', NULL),
(937, b'0', 'San Miguel', 3, b'0', NULL),
(938, b'0', 'General Juan Facundo Quiroga', 6, b'0', NULL),
(939, b'0', 'Ángel Vicente Peñaloza', 6, b'0', NULL),
(940, b'0', 'Empedrado', 3, b'0', NULL),
(941, b'0', 'Chilecito', 6, b'0', NULL),
(942, b'0', 'Toay', 20, b'0', NULL),
(943, b'0', 'Colón', 12, b'0', NULL),
(944, b'0', 'Ituzaingó', 3, b'0', NULL),
(945, b'0', 'Famatina', 6, b'0', NULL),
(946, b'0', 'General López', 19, b'0', NULL),
(947, b'0', 'Constitución', 19, b'0', NULL),
(948, b'0', 'Caseros', 19, b'0', NULL),
(949, b'0', 'Rosario', 19, b'0', NULL),
(950, b'0', 'San Lorenzo', 19, b'0', NULL),
(951, b'0', 'Iriondo', 19, b'0', NULL),
(952, b'0', 'Lanús', 1, b'0', NULL),
(953, b'0', 'General San Martín', 6, b'0', NULL),
(954, b'0', 'San Blas de Los Sauces', 6, b'0', NULL),
(955, b'0', 'San Antonio', 15, b'0', NULL),
(956, b'0', 'Rinconada', 15, b'0', NULL),
(957, b'0', 'Ramón Lista', 14, b'0', NULL),
(958, b'0', 'La Poma', 4, b'0', NULL),
(959, b'0', 'Biedma', 7, b'0', NULL),
(960, b'0', 'Capital', 3, b'0', NULL),
(961, b'0', 'San Luis del Palmar', 3, b'0', NULL),
(962, b'0', 'Formosa', 14, b'0', NULL),
(963, b'0', 'Pilcomayo', 14, b'0', NULL),
(964, b'0', 'Tehuelches', 7, b'0', NULL),
(965, b'0', 'Escalante', 7, b'0', NULL),
(966, b'0', 'Ischilín', 12, b'0', NULL),
(967, b'0', 'Totoral', 12, b'0', NULL),
(968, b'0', 'General San Martín', 12, b'0', NULL),
(969, b'0', 'San Javier', 12, b'0', NULL),
(970, b'0', 'Río Primero', 12, b'0', NULL),
(971, b'0', 'Marcos Juárez', 12, b'0', NULL),
(972, b'0', 'General Donovan', 5, b'0', NULL),
(973, b'0', 'Leandro N. Alem', 1, b'0', NULL),
(974, b'0', 'Libertador General San Martín', 5, b'0', NULL),
(975, b'0', 'Gastre', 7, b'0', NULL),
(976, b'0', 'General Arenales', 1, b'0', NULL),
(977, b'0', 'Bermejo', 5, b'0', NULL),
(978, b'0', 'Calamuchita', 12, b'0', NULL),
(979, b'0', 'Cruz Alta', 18, b'0', NULL),
(980, b'0', 'Lules', 18, b'0', NULL),
(981, b'0', 'Yerba Buena', 18, b'0', NULL),
(982, b'0', 'Tafí Viejo', 18, b'0', NULL),
(983, b'0', 'Libertador General San Martín', 11, b'0', NULL),
(984, b'0', 'Coronel Pringles', 11, b'0', NULL),
(985, b'0', 'Chacabuco', 11, b'0', NULL),
(986, b'0', 'Rivadavia', 1, b'0', NULL),
(987, b'0', 'Patagones', 1, b'0', NULL),
(988, b'0', 'Juan Martín de Pueyrredón', 11, b'0', NULL),
(989, b'0', 'General Pedernera', 11, b'0', NULL),
(990, b'0', 'Trancas', 18, b'0', NULL),
(991, b'0', 'Tafí del Valle', 18, b'0', NULL),
(992, b'0', 'Comuna 9', 2, b'0', NULL),
(993, b'0', 'Junín', 11, b'0', NULL),
(994, b'0', 'Mitre', 22, b'0', NULL),
(995, b'0', 'Atamisqui', 22, b'0', NULL),
(996, b'0', 'Berón de Astrada', 3, b'0', NULL),
(997, b'0', 'Tolhuin', 17, b'0', NULL),
(998, b'0', 'Capital', 21, b'0', NULL),
(999, b'0', 'Candelaria', 21, b'0', NULL),
(1000, b'0', 'Jiménez', 22, b'0', NULL),
(1001, b'0', 'Coronel de Marina Leonardo Rosales', 1, b'0', NULL),
(1002, b'0', 'Baradero', 1, b'0', NULL),
(1003, b'0', 'San Pedro', 1, b'0', NULL),
(1004, b'0', 'Santa Victoria', 4, b'0', NULL),
(1005, b'0', 'General José de San Martín', 4, b'0', NULL),
(1006, b'0', 'Rivadavia', 4, b'0', NULL),
(1007, b'0', 'Rosario de Lerma', 4, b'0', NULL),
(1008, b'0', 'Ledesma', 15, b'0', NULL),
(1009, b'0', 'Humahuaca', 15, b'0', NULL),
(1010, b'0', 'Cochinoca', 15, b'0', NULL),
(1011, b'0', 'Tumbaya', 15, b'0', NULL),
(1012, b'0', 'Florentino Ameghino', 1, b'0', NULL),
(1013, b'0', 'Florentino Ameghino', 7, b'0', NULL),
(1014, b'0', 'La Cocha', 18, b'0', NULL),
(1015, b'0', 'Graneros', 18, b'0', NULL),
(1016, b'0', 'Juan Bautista Alberdi', 18, b'0', NULL),
(1017, b'0', 'Río Chico', 18, b'0', NULL),
(1018, b'0', 'Simoca', 18, b'0', NULL),
(1019, b'0', 'Chicligasta', 18, b'0', NULL),
(1020, b'0', 'Monteros', 18, b'0', NULL),
(1021, b'0', 'Leales', 18, b'0', NULL),
(1022, b'0', 'San Martín', 19, b'0', NULL),
(1023, b'0', 'La Capital', 19, b'0', NULL),
(1024, b'0', 'General Manuel Belgrano', 21, b'0', NULL),
(1025, b'0', 'Guaraní', 21, b'0', NULL),
(1026, b'0', 'Iguazú', 21, b'0', NULL),
(1027, b'0', '25 de Mayo', 21, b'0', NULL),
(1028, b'0', 'Oberá', 21, b'0', NULL),
(1029, b'0', 'Castellanos', 19, b'0', NULL),
(1030, b'0', 'Garay', 19, b'0', NULL),
(1031, b'0', 'Quemú Quemú', 20, b'0', NULL),
(1032, b'0', 'San Ignacio', 21, b'0', NULL),
(1033, b'0', 'Utracán', 20, b'0', NULL),
(1034, b'0', 'San Martín', 3, b'0', NULL),
(1035, b'0', 'Paso de los Libres', 3, b'0', NULL),
(1036, b'0', 'Goya', 3, b'0', NULL),
(1037, b'0', 'Lavalle', 3, b'0', NULL),
(1038, b'0', 'San Roque', 3, b'0', NULL),
(1039, b'0', 'General Alvear', 3, b'0', NULL),
(1040, b'0', 'Concepción', 3, b'0', NULL),
(1041, b'0', 'Bella Vista', 3, b'0', NULL),
(1042, b'0', 'Santo Tomé', 3, b'0', NULL),
(1043, b'0', 'Saladas', 3, b'0', NULL),
(1044, b'0', 'General Paz', 3, b'0', NULL),
(1045, b'0', 'Leandro N. Alem', 21, b'0', NULL),
(1046, b'0', 'San Javier', 21, b'0', NULL),
(1047, b'0', 'Mburucuyá', 3, b'0', NULL),
(1048, b'0', 'Concepción', 21, b'0', NULL),
(1049, b'0', 'Apóstoles', 21, b'0', NULL),
(1050, b'0', '1° de Mayo', 5, b'0', NULL),
(1051, b'0', 'San Fernando', 5, b'0', NULL),
(1052, b'0', 'San Lorenzo', 5, b'0', NULL),
(1053, b'0', 'Lomas de Zamora', 1, b'0', NULL),
(1054, b'0', 'Avellaneda', 1, b'0', NULL),
(1055, b'0', '25 de Mayo', 5, b'0', NULL),
(1056, b'0', 'General Belgrano', 5, b'0', NULL),
(1057, b'0', 'Libertad', 5, b'0', NULL),
(1058, b'0', 'Comandante Fernández', 5, b'0', NULL),
(1059, b'0', 'Comuna 15', 2, b'0', NULL),
(1060, b'0', 'Chimbas', 24, b'0', NULL),
(1061, b'0', 'Capital', 24, b'0', NULL),
(1062, b'0', 'Rivadavia', 24, b'0', NULL),
(1063, b'0', '9 de Julio', 24, b'0', NULL),
(1064, b'0', 'Albardón', 24, b'0', NULL),
(1065, b'0', 'Angaco', 24, b'0', NULL),
(1066, b'0', 'Santa Lucía', 24, b'0', NULL),
(1067, b'0', 'Rawson', 24, b'0', NULL),
(1068, b'0', '25 de Mayo', 24, b'0', NULL),
(1069, b'0', 'San Martín', 24, b'0', NULL),
(1070, b'0', 'Pocito', 24, b'0', NULL),
(1071, b'0', 'Zonda', 24, b'0', NULL),
(1072, b'0', 'Ullum', 24, b'0', NULL),
(1073, b'0', 'Sarmiento', 24, b'0', NULL),
(1074, b'0', 'Calingasta', 24, b'0', NULL),
(1075, b'0', 'Iglesia', 24, b'0', NULL),
(1076, b'0', 'Jáchal', 24, b'0', NULL),
(1077, b'0', 'Valle Fértil', 24, b'0', NULL),
(1078, b'0', 'Caucete', 24, b'0', NULL),
(1079, b'0', 'La Plata', 1, b'0', NULL),
(1080, b'0', 'Mercedes', 3, b'0', NULL),
(1102, b'0', 'Adolfo Gonzales Chaves', 1, b'0', NULL),
(1103, b'0', 'Concordia', 23, b'0', NULL),
(1104, b'0', 'Federal', 23, b'0', NULL),
(1105, b'0', 'Gualeguaychú', 23, b'0', NULL),
(1106, b'0', 'Islas del Ibicuy', 23, b'0', NULL),
(1107, b'0', 'Victoria', 23, b'0', NULL),
(1108, b'0', 'Diamante', 23, b'0', NULL),
(1109, b'0', 'Uruguay', 23, b'0', NULL),
(1110, b'0', 'Paraná', 23, b'0', NULL),
(1111, b'0', 'Saladillo', 1, b'0', NULL),
(1112, b'0', 'Las Flores', 1, b'0', NULL),
(1113, b'0', 'Rojas', 1, b'0', NULL),
(1114, b'0', 'Escobar', 1, b'0', NULL),
(1115, b'0', 'José C. Paz', 1, b'0', NULL),
(1116, b'0', 'Bahía Blanca', 1, b'0', NULL),
(1117, b'0', 'San Antonio de Areco', 1, b'0', NULL),
(1118, b'0', 'Maipú', 1, b'0', NULL),
(1119, b'0', 'General Alvarado', 1, b'0', NULL),
(1120, b'0', 'General Pueyrredón', 1, b'0', NULL),
(1121, b'0', 'Mar Chiquita', 1, b'0', NULL),
(1122, b'0', 'Villa Gesell', 1, b'0', NULL),
(1123, b'0', 'Pinamar', 1, b'0', NULL),
(1124, b'0', 'General Lavalle', 1, b'0', NULL),
(1125, b'0', 'La Costa', 1, b'0', NULL),
(1126, b'0', 'Magdalena', 1, b'0', NULL),
(1127, b'0', 'Sauce', 3, b'0', NULL),
(1128, b'0', 'Vicente López', 1, b'0', NULL),
(1129, b'0', 'La Viña', 4, b'0', NULL),
(1130, b'0', 'Rauch', 1, b'0', NULL),
(1131, b'0', 'Metán', 4, b'0', NULL),
(1132, b'0', 'Molinos', 4, b'0', NULL),
(1133, b'0', 'O\'Higgins', 5, b'0', NULL),
(1134, b'0', 'Moreno', 1, b'0', NULL),
(1135, b'0', 'La Matanza', 1, b'0', NULL),
(1136, b'0', 'Tandil', 1, b'0', NULL),
(1137, b'0', 'Coronel Suárez', 1, b'0', NULL),
(1138, b'0', 'Chamical', 6, b'0', NULL),
(1139, b'0', 'Futaleufú', 7, b'0', NULL),
(1140, b'0', 'Río Chico', 8, b'0', NULL),
(1141, b'0', 'San Antonio', 9, b'0', NULL),
(1142, b'0', 'Alberdi', 22, b'0', NULL),
(1143, b'0', 'Juan Felipe Ibarra', 22, b'0', NULL),
(1144, b'0', 'General Taboada', 22, b'0', NULL),
(1145, b'0', 'Salliqueló', 1, b'0', NULL),
(1146, b'0', 'Berazategui', 1, b'0', NULL),
(1147, b'0', 'General Güemes', 4, b'0', NULL),
(1148, b'0', 'San Carlos', 4, b'0', NULL),
(1149, b'0', 'General Paz', 1, b'0', NULL),
(1150, b'0', 'General Guido', 1, b'0', NULL),
(1151, b'0', 'General Juan Madariaga', 1, b'0', NULL),
(1152, b'0', 'Lago Argentino', 8, b'0', NULL),
(1153, b'0', 'Rivadavia', 22, b'0', NULL),
(1154, b'0', 'Ojo de Agua', 22, b'0', NULL),
(1155, b'0', 'Choya', 22, b'0', NULL),
(1156, b'0', 'Gobernador Dupuy', 11, b'0', NULL),
(1157, b'0', 'Cachi', 4, b'0', NULL),
(1158, b'0', 'Chicoana', 4, b'0', NULL),
(1159, b'0', 'Gaiman', 7, b'0', NULL),
(1160, b'0', 'Rawson', 7, b'0', NULL),
(1161, b'0', 'General Lamadrid', 6, b'0', NULL),
(1162, b'0', 'Ayacucho', 11, b'0', NULL),
(1163, b'0', '12 de Octubre', 5, b'0', NULL),
(1164, b'0', 'Tulumba', 12, b'0', NULL),
(1165, b'0', 'Cruz del Eje', 12, b'0', NULL),
(1166, b'0', 'Punilla', 12, b'0', NULL),
(1167, b'0', 'Comuna 6', 2, b'0', NULL),
(1168, b'0', 'Santa Rosa', 13, b'0', NULL),
(1169, b'0', 'General Güemes', 5, b'0', NULL),
(1170, b'0', 'General Ortiz de Ocampo', 6, b'0', NULL),
(1171, b'0', 'General Roca', 12, b'0', NULL),
(1172, b'0', 'Pilagás', 14, b'0', NULL),
(1173, b'0', 'Laishi', 14, b'0', NULL),
(1174, b'0', 'Rivadavia', 13, b'0', NULL),
(1175, b'0', 'Tornquist', 1, b'0', NULL),
(1176, b'0', 'La Paz', 13, b'0', NULL),
(1177, b'0', 'Coronel Pringles', 1, b'0', NULL),
(1178, b'0', 'Conesa', 9, b'0', NULL),
(1179, b'0', 'Villarino', 1, b'0', NULL),
(1180, b'0', 'Pirané', 14, b'0', NULL),
(1181, b'0', 'General Pinto', 1, b'0', NULL),
(1182, b'0', 'San Cayetano', 1, b'0', NULL),
(1183, b'0', 'Tres Arroyos', 1, b'0', NULL),
(1184, b'0', 'Coronel Dorrego', 1, b'0', NULL),
(1185, b'0', 'Necochea', 1, b'0', NULL),
(1186, b'0', 'Independencia', 6, b'0', NULL),
(1187, b'0', 'Chascomús', 1, b'0', NULL),
(1188, b'0', 'Punta Indio', 1, b'0', NULL),
(1189, b'0', 'El Carmen', 15, b'0', NULL),
(1190, b'0', 'Santa María', 12, b'0', NULL),
(1191, b'0', 'Valcheta', 9, b'0', NULL),
(1192, b'0', 'Arauco', 6, b'0', NULL),
(1193, b'0', 'Lezama', 1, b'0', NULL),
(1194, b'0', 'Campana', 1, b'0', NULL),
(1195, b'0', 'Magallanes', 8, b'0', NULL),
(1196, b'0', 'Corpen Aike', 8, b'0', NULL),
(1197, b'0', 'Minas', 12, b'0', NULL),
(1198, b'0', 'San Alberto', 12, b'0', NULL),
(1199, b'0', 'Río Segundo', 12, b'0', NULL),
(1200, b'0', 'San Justo', 12, b'0', NULL),
(1201, b'0', 'Unión', 12, b'0', NULL),
(1202, b'0', 'Tercero Arriba', 12, b'0', NULL),
(1203, b'0', 'Cerrillos', 4, b'0', NULL),
(1204, b'0', 'Río Cuarto', 12, b'0', NULL),
(1205, b'0', 'Tupungato', 13, b'0', NULL),
(1206, b'0', '9 de Julio', 9, b'0', NULL),
(1207, b'0', 'Ñorquinco', 9, b'0', NULL),
(1208, b'0', 'San Rafael', 13, b'0', NULL),
(1209, b'0', 'Anta', 4, b'0', NULL),
(1210, b'0', 'Picún Leufú', 16, b'0', NULL),
(1211, b'0', 'Zapala', 16, b'0', NULL),
(1212, b'0', '25 de Mayo', 9, b'0', NULL),
(1213, b'0', 'Telsen', 7, b'0', NULL),
(1214, b'0', 'Pilcaniyeu', 9, b'0', NULL),
(1215, b'0', 'Adolfo Alsina', 1, b'0', NULL),
(1216, b'0', 'General Alvear', 13, b'0', NULL),
(1217, b'0', 'La Caldera', 4, b'0', NULL),
(1218, b'0', 'Sargento Cabral', 5, b'0', NULL),
(1219, b'0', 'Pellegrini', 1, b'0', NULL),
(1220, b'0', 'Aluminé', 16, b'0', NULL),
(1221, b'0', 'Iruya', 4, b'0', NULL),
(1222, b'0', 'Lácar', 16, b'0', NULL),
(1223, b'0', 'Fray Mamerto Esquiú', 10, b'0', NULL),
(1224, b'0', 'Valle Viejo', 10, b'0', NULL),
(1225, b'0', 'San Cosme', 3, b'0', NULL),
(1226, b'0', 'Sarmiento', 7, b'0', NULL),
(1227, b'0', 'Comuna 1', 2, b'0', NULL),
(1228, b'0', 'Comuna 4', 2, b'0', NULL),
(1229, b'0', 'El Cuy', 9, b'0', NULL),
(1230, b'0', 'Las Heras', 13, b'0', NULL),
(1231, b'0', 'Tapenagá', 5, b'0', NULL),
(1232, b'0', 'Lavalle', 13, b'0', NULL),
(1233, b'0', 'Malargüe', 13, b'0', NULL),
(1234, b'0', 'Presidente Roque Sáenz Peña', 12, b'0', NULL),
(1235, b'0', 'Catán Lil', 16, b'0', NULL),
(1236, b'0', 'Presidencia de la Plaza', 5, b'0', NULL),
(1237, b'0', 'Comuna 5', 2, b'0', NULL),
(1238, b'0', 'Esquina', 3, b'0', NULL),
(1239, b'0', 'Ushuaia', 17, b'0', NULL),
(1240, b'0', 'Antofagasta de la Sierra', 10, b'0', NULL),
(1241, b'0', 'Ensenada', 1, b'0', NULL),
(1242, b'0', 'Capital', 18, b'0', NULL),
(1243, b'0', 'Belgrano', 19, b'0', NULL),
(1244, b'0', 'Pergamino', 1, b'0', NULL),
(1245, b'0', 'Puán', 1, b'0', NULL),
(1246, b'0', 'General Villegas', 1, b'0', NULL),
(1247, b'0', 'Comuna 12', 2, b'0', NULL),
(1248, b'0', 'General Obligado', 19, b'0', NULL),
(1249, b'0', 'Vera', 19, b'0', NULL),
(1250, b'0', '9 de Julio', 19, b'0', NULL),
(1251, b'0', 'Adolfo Alsina', 9, b'0', NULL),
(1252, b'0', 'Quitilipi', 5, b'0', NULL),
(1253, b'0', 'Güer Aike', 8, b'0', NULL),
(1254, b'0', 'Capayán', 10, b'0', NULL),
(1255, b'0', 'Burruyacú', 18, b'0', NULL),
(1256, b'0', 'San Jerónimo', 19, b'0', NULL),
(1257, b'0', 'Independencia', 5, b'0', NULL),
(1258, b'0', 'Curuzú Cuatiá', 3, b'0', NULL),
(1259, b'0', 'Luján de Cuyo', 13, b'0', NULL),
(1260, b'0', 'Tinogasta', 10, b'0', NULL),
(1261, b'0', 'Comuna 7', 2, b'0', NULL),
(1262, b'0', 'Hucal', 20, b'0', NULL),
(1263, b'0', 'Itatí', 3, b'0', NULL),
(1264, b'0', 'Comuna 10', 2, b'0', NULL),
(1265, b'0', 'Caleu Caleu', 20, b'0', NULL),
(1266, b'0', 'Lihuel Calel', 20, b'0', NULL),
(1267, b'0', 'Curacó', 20, b'0', NULL),
(1268, b'0', 'Confluencia', 16, b'0', NULL),
(1269, b'0', 'Picunches', 16, b'0', NULL);
INSERT INTO `localidad` (`id`, `eliminado`, `nombre`, `id_provincia`, `baja`, `provincia_id`) VALUES
(1270, b'0', 'Añelo', 16, b'0', NULL),
(1271, b'0', 'Loncopué', 16, b'0', NULL),
(1272, b'0', 'Ñorquín', 16, b'0', NULL),
(1273, b'0', 'Pehuenches', 16, b'0', NULL),
(1274, b'0', 'Comuna 11', 2, b'0', NULL),
(1275, b'0', 'Montecarlo', 21, b'0', NULL),
(1276, b'0', 'Eldorado', 21, b'0', NULL),
(1277, b'0', 'San Pedro', 21, b'0', NULL),
(1278, b'0', 'Antártida Argentina', 17, b'0', NULL),
(1279, b'0', 'Minas', 16, b'0', NULL),
(1280, b'0', 'Chos Malal', 16, b'0', NULL),
(1281, b'0', 'Cushamen', 7, b'0', NULL),
(1282, b'0', 'Lago Buenos Aires', 8, b'0', NULL),
(1283, b'0', 'Pichi Mahuida', 9, b'0', NULL),
(1284, b'0', 'San Martín', 22, b'0', NULL),
(1285, b'0', 'Yavi', 15, b'0', NULL),
(1286, b'0', 'Santa Catalina', 15, b'0', NULL),
(1287, b'0', 'San Pedro', 15, b'0', NULL),
(1288, b'0', 'Valle Grande', 15, b'0', NULL),
(1289, b'0', 'Patiño', 14, b'0', NULL),
(1290, b'0', 'Bermejo', 14, b'0', NULL),
(1291, b'0', 'Susques', 15, b'0', NULL),
(1292, b'0', 'Matacos', 14, b'0', NULL),
(1293, b'0', 'Los Andes', 4, b'0', NULL),
(1294, b'0', 'Orán', 4, b'0', NULL),
(1295, b'0', 'Tilcara', 15, b'0', NULL),
(1296, b'0', 'Palpalá', 15, b'0', NULL),
(1297, b'0', 'Loventué', 20, b'0', NULL),
(1298, b'0', 'Río Senguer', 7, b'0', NULL),
(1299, b'0', 'Bariloche', 9, b'0', NULL),
(1300, b'0', 'Huiliches', 16, b'0', NULL),
(1301, b'0', 'Limay Mahuida', 20, b'0', NULL),
(1302, b'0', 'Puelén', 20, b'0', NULL),
(1303, b'0', 'Chalileo', 20, b'0', NULL),
(1304, b'0', 'Chical Co', 20, b'0', NULL),
(1305, b'0', 'Quebrachos', 22, b'0', NULL),
(1306, b'0', 'Monte Caseros', 3, b'0', NULL),
(1307, b'0', 'Mayor Luis J. Fontana', 5, b'0', NULL),
(1308, b'0', 'Fray Justo Santa María de Oro', 5, b'0', NULL),
(1309, b'0', 'General Belgrano', 6, b'0', NULL),
(1310, b'0', 'Las Colonias', 19, b'0', NULL),
(1311, b'0', 'San Justo', 19, b'0', NULL),
(1312, b'0', 'San Cristóbal', 19, b'0', NULL),
(1313, b'0', 'San Javier', 19, b'0', NULL),
(1314, b'0', 'Chapaleufú', 20, b'0', NULL),
(1315, b'0', 'Realicó', 20, b'0', NULL),
(1316, b'0', 'Maracó', 20, b'0', NULL),
(1317, b'0', 'Trenel', 20, b'0', NULL),
(1318, b'0', 'Copo', 22, b'0', NULL),
(1319, b'0', 'Capital', 20, b'0', NULL),
(1320, b'0', 'Santa Bárbara', 15, b'0', NULL),
(1321, b'0', 'Almirante Brown', 5, b'0', NULL),
(1322, b'0', 'Rosario de la Frontera', 4, b'0', NULL),
(1323, b'0', 'Collón Curá', 16, b'0', NULL),
(1324, b'0', 'Comuna 3', 2, b'0', NULL),
(1325, b'0', 'San Fernando', 1, b'0', NULL),
(1326, b'0', 'Tigre', 1, b'0', NULL),
(1327, b'0', 'Santa María', 10, b'0', NULL),
(1328, b'0', 'Santa Rosa', 10, b'0', NULL),
(1329, b'0', 'La Paz', 10, b'0', NULL),
(1330, b'0', 'Río Hondo', 22, b'0', NULL),
(1331, b'0', 'Vinchina', 6, b'0', NULL),
(1332, b'0', 'Capital', 6, b'0', NULL),
(1333, b'0', 'Río Seco', 12, b'0', NULL),
(1334, b'0', 'Avellaneda', 9, b'0', NULL),
(1335, b'0', 'General Roca', 9, b'0', NULL),
(1336, b'0', 'Belgrano', 11, b'0', NULL),
(1337, b'0', 'Los Lagos', 16, b'0', NULL),
(1338, b'0', 'Capital', 10, b'0', NULL),
(1339, b'0', 'Ancasti', 10, b'0', NULL),
(1340, b'0', 'Pomán', 10, b'0', NULL),
(1341, b'0', 'Comuna 2', 2, b'0', NULL),
(1342, b'0', '9 de Julio', 5, b'0', NULL),
(1343, b'0', 'Pocho', 12, b'0', NULL),
(1344, b'0', 'Ezeiza', 1, b'0', NULL),
(1345, b'0', 'Andalgalá', 10, b'0', NULL),
(1346, b'0', 'Ambato', 10, b'0', NULL),
(1347, b'0', 'Comuna 8', 2, b'0', NULL),
(1348, b'0', 'Guasayán', 22, b'0', NULL),
(1349, b'0', 'Paclín', 10, b'0', NULL),
(1350, b'0', 'El Alto', 10, b'0', NULL),
(1351, b'0', 'Sobremonte', 12, b'0', NULL),
(1352, b'0', 'Río Grande', 17, b'0', NULL),
(1353, b'0', 'Comuna 13', 2, b'0', NULL),
(1354, b'0', 'Banda', 22, b'0', NULL),
(1355, b'0', 'Paso de Indios', 7, b'0', NULL),
(1356, b'0', 'Capital', 12, b'0', NULL),
(1357, b'0', 'Mártires', 7, b'0', NULL),
(1358, b'0', 'Sarmiento', 22, b'0', NULL),
(1359, b'0', 'Deseado', 8, b'0', NULL),
(1360, b'0', 'Languiñeo', 7, b'0', NULL),
(1361, b'0', 'Belgrano', 22, b'0', NULL),
(1362, b'0', 'Aguirre', 22, b'0', NULL),
(1363, b'0', 'Maipú', 5, b'0', NULL),
(1364, b'0', 'San Carlos', 13, b'0', NULL),
(1365, b'0', 'Tunuyán', 13, b'0', NULL),
(1366, b'0', 'Robles', 22, b'0', NULL),
(1367, b'0', 'Loreto', 22, b'0', NULL),
(1368, b'0', 'Catriló', 20, b'0', NULL),
(1369, b'0', 'Capital', 22, b'0', NULL),
(1370, b'0', 'Comuna 14', 2, b'0', NULL),
(1371, b'0', 'Colón', 23, b'0', NULL),
(1372, b'0', 'Villaguay', 23, b'0', NULL),
(1373, b'0', 'Castelli', 1, b'0', NULL),
(1374, b'0', 'San Salvador', 23, b'0', NULL),
(1375, b'0', 'Belén', 10, b'0', NULL),
(1376, b'0', 'Almirante Brown', 1, b'0', NULL),
(1377, b'0', 'Nogoyá', 23, b'0', NULL),
(1378, b'0', 'Tala', 23, b'0', NULL),
(1379, b'0', 'Gualeguay', 23, b'0', NULL),
(1380, b'0', 'Federación', 23, b'0', NULL),
(1381, b'0', 'La Paz', 23, b'0', NULL),
(1382, b'0', 'Feliciano', 23, b'0', NULL),
(1383, b'0', 'Presidente Perón', 1, b'0', NULL),
(1384, b'0', 'Junín', 1, b'0', NULL),
(1385, b'0', 'Brandsen', 1, b'0', NULL),
(1386, b'0', 'Chivilcoy', 1, b'0', NULL),
(1387, b'0', 'Alberti', 1, b'0', NULL),
(1388, b'0', 'Bragado', 1, b'0', NULL),
(1389, b'0', 'General Las Heras', 1, b'0', NULL),
(1390, b'0', 'Carlos Casares', 1, b'0', NULL),
(1391, b'0', 'Marcos Paz', 1, b'0', NULL),
(1392, b'0', 'General Viamonte', 1, b'0', NULL),
(1393, b'0', 'Carlos Tejedor', 1, b'0', NULL),
(1394, b'0', '25 de Mayo', 1, b'0', NULL),
(1395, b'0', '9 de Julio', 1, b'0', NULL),
(1396, b'0', 'Pehuajó', 1, b'0', NULL),
(1397, b'0', 'Tapalqué', 1, b'0', NULL),
(1398, b'0', 'Trenque Lauquen', 1, b'0', NULL),
(1399, b'0', 'General Belgrano', 1, b'0', NULL),
(1400, b'0', 'Monte', 1, b'0', NULL),
(1401, b'0', 'Roque Pérez', 1, b'0', NULL),
(1402, b'0', 'Olavarría', 1, b'0', NULL),
(1403, b'0', 'Merlo', 1, b'0', NULL),
(1404, b'0', 'Cainguás', 21, b'0', NULL),
(1405, b'0', 'Islas del Atlántico Sur', 17, b'0', NULL),
(1406, b'0', 'Esteban Echeverría', 1, b'0', NULL),
(1407, b'0', 'Arrecifes', 1, b'0', NULL),
(1408, b'0', 'Capitán Sarmiento', 1, b'0', NULL),
(1409, b'0', 'Dr. Manuel Belgrano', 15, b'0', NULL),
(1410, b'0', 'Carmen de Areco', 1, b'0', NULL),
(1411, b'0', 'Salto', 1, b'0', NULL),
(1412, b'0', 'Exaltación de la Cruz', 1, b'0', NULL),
(1413, b'0', 'San Miguel', 1, b'0', NULL),
(1414, b'0', 'San Andrés de Giles', 1, b'0', NULL),
(1415, b'0', 'Mercedes', 1, b'0', NULL),
(1416, b'0', 'Pilar', 1, b'0', NULL),
(1417, b'0', 'Luján', 1, b'0', NULL),
(1418, b'0', 'Famaillá', 18, b'0', NULL),
(1419, b'0', 'Hurlingham', 1, b'0', NULL),
(1420, b'0', 'Morón', 1, b'0', NULL),
(1421, b'0', 'Chacabuco', 1, b'0', NULL),
(1422, b'0', 'Junín', 13, b'0', NULL),
(1423, b'0', 'Malvinas Argentinas', 1, b'0', NULL),
(1424, b'0', 'Tres Lomas', 1, b'0', NULL),
(1425, b'0', 'Ayacucho', 1, b'0', NULL),
(1426, b'0', 'Guaminí', 1, b'0', NULL),
(1427, b'0', 'General San Martín', 1, b'0', NULL),
(1428, b'0', 'Lincoln', 1, b'0', NULL),
(1429, b'0', 'Laprida', 1, b'0', NULL),
(1430, b'0', 'San Isidro', 1, b'0', NULL),
(1431, b'0', 'Benito Juárez', 1, b'0', NULL),
(1432, b'0', 'Colón', 1, b'0', NULL),
(1433, b'0', 'Ituzaingó', 1, b'0', NULL),
(1434, b'0', 'General Rodríguez', 1, b'0', NULL),
(1435, b'0', 'Suipacha', 1, b'0', NULL),
(1436, b'0', 'Tres de Febrero', 1, b'0', NULL),
(1437, b'0', 'General Felipe Varela', 6, b'0', NULL),
(1438, b'0', 'Florencio Varela', 1, b'0', NULL),
(1439, b'0', 'Navarro', 1, b'0', NULL),
(1440, b'0', 'Cañuelas', 1, b'0', NULL),
(1441, b'0', 'Moreno', 22, b'0', NULL),
(1442, b'0', 'Chacabuco', 5, b'0', NULL),
(1443, b'0', 'San Vicente', 1, b'0', NULL),
(1444, b'0', 'Lobos', 1, b'0', NULL),
(1445, b'0', 'General Alvear', 1, b'0', NULL),
(1446, b'0', 'Quilmes', 1, b'0', NULL),
(1447, b'0', 'Pila', 1, b'0', NULL),
(1448, b'0', 'General La Madrid', 1, b'0', NULL),
(1449, b'0', 'Bolívar', 1, b'0', NULL),
(1450, b'0', 'Castro Barros', 6, b'0', NULL),
(1451, b'0', 'Balcarce', 1, b'0', NULL),
(1452, b'0', 'Hipólito Yrigoyen', 1, b'0', NULL),
(1453, b'0', 'Capital', 13, b'0', NULL),
(1454, b'0', 'Dolores', 1, b'0', NULL),
(1455, b'0', 'Azul', 1, b'0', NULL),
(1456, b'0', 'Daireaux', 1, b'0', NULL),
(1457, b'0', 'Godoy Cruz', 13, b'0', NULL),
(1458, b'0', 'Cafayate', 4, b'0', NULL),
(1459, b'0', 'Figueroa', 22, b'0', NULL),
(1460, b'0', 'Saavedra', 1, b'0', NULL),
(1461, b'0', 'Monte Hermoso', 1, b'0', NULL),
(1462, b'0', 'Lobería', 1, b'0', NULL),
(1463, b'0', 'Berisso', 1, b'0', NULL),
(1464, b'0', 'Tordillo', 1, b'0', NULL),
(1465, b'0', 'Zárate', 1, b'0', NULL),
(1466, b'0', 'Ramallo', 1, b'0', NULL),
(1467, b'0', 'San Nicolás', 1, b'0', NULL),
(1468, b'0', 'Salavina', 22, b'0', NULL),
(1469, b'0', 'Pellegrini', 22, b'0', NULL),
(1470, b'0', 'Avellaneda', 22, b'0', NULL),
(1471, b'0', '2 de Abril', 5, b'0', NULL),
(1472, b'0', 'Guaymallén', 13, b'0', NULL),
(1473, b'0', 'Juárez Celman', 12, b'0', NULL),
(1474, b'0', 'Capital', 4, b'0', NULL),
(1475, b'0', 'Silípica', 22, b'0', NULL),
(1476, b'0', 'La Candelaria', 4, b'0', NULL),
(1477, b'0', 'Rancul', 20, b'0', NULL),
(1478, b'0', 'Maipú', 13, b'0', NULL),
(1479, b'0', 'Guachipas', 4, b'0', NULL),
(1480, b'0', 'Atreucó', 20, b'0', NULL),
(1481, b'0', 'San Martín', 13, b'0', NULL),
(1482, b'0', 'Guatraché', 20, b'0', NULL),
(1483, b'0', 'Sanagasta', 6, b'0', NULL),
(1484, b'0', 'Conhelo', 20, b'0', NULL),
(1485, b'0', 'Libertador General San Martín', 21, b'0', NULL),
(1486, b'0', 'Rosario Vera Peñaloza', 6, b'0', NULL),
(1487, b'0', 'San Miguel', 3, b'0', NULL),
(1488, b'0', 'General Juan Facundo Quiroga', 6, b'0', NULL),
(1489, b'0', 'Ángel Vicente Peñaloza', 6, b'0', NULL),
(1490, b'0', 'Empedrado', 3, b'0', NULL),
(1491, b'0', 'Chilecito', 6, b'0', NULL),
(1492, b'0', 'Toay', 20, b'0', NULL),
(1493, b'0', 'Colón', 12, b'0', NULL),
(1494, b'0', 'Ituzaingó', 3, b'0', NULL),
(1495, b'0', 'Famatina', 6, b'0', NULL),
(1496, b'0', 'General López', 19, b'0', NULL),
(1497, b'0', 'Constitución', 19, b'0', NULL),
(1498, b'0', 'Caseros', 19, b'0', NULL),
(1499, b'0', 'Rosario', 19, b'0', NULL),
(1500, b'0', 'San Lorenzo', 19, b'0', NULL),
(1501, b'0', 'Iriondo', 19, b'0', NULL),
(1502, b'0', 'Lanús', 1, b'0', NULL),
(1503, b'0', 'General San Martín', 6, b'0', NULL),
(1504, b'0', 'San Blas de Los Sauces', 6, b'0', NULL),
(1505, b'0', 'San Antonio', 15, b'0', NULL),
(1506, b'0', 'Rinconada', 15, b'0', NULL),
(1507, b'0', 'Ramón Lista', 14, b'0', NULL),
(1508, b'0', 'La Poma', 4, b'0', NULL),
(1509, b'0', 'Biedma', 7, b'0', NULL),
(1510, b'0', 'Capital', 3, b'0', NULL),
(1511, b'0', 'San Luis del Palmar', 3, b'0', NULL),
(1512, b'0', 'Formosa', 14, b'0', NULL),
(1513, b'0', 'Pilcomayo', 14, b'0', NULL),
(1514, b'0', 'Tehuelches', 7, b'0', NULL),
(1515, b'0', 'Escalante', 7, b'0', NULL),
(1516, b'0', 'Ischilín', 12, b'0', NULL),
(1517, b'0', 'Totoral', 12, b'0', NULL),
(1518, b'0', 'General San Martín', 12, b'0', NULL),
(1519, b'0', 'San Javier', 12, b'0', NULL),
(1520, b'0', 'Río Primero', 12, b'0', NULL),
(1521, b'0', 'Marcos Juárez', 12, b'0', NULL),
(1522, b'0', 'General Donovan', 5, b'0', NULL),
(1523, b'0', 'Leandro N. Alem', 1, b'0', NULL),
(1524, b'0', 'Libertador General San Martín', 5, b'0', NULL),
(1525, b'0', 'Gastre', 7, b'0', NULL),
(1526, b'0', 'General Arenales', 1, b'0', NULL),
(1527, b'0', 'Bermejo', 5, b'0', NULL),
(1528, b'0', 'Calamuchita', 12, b'0', NULL),
(1529, b'0', 'Cruz Alta', 18, b'0', NULL),
(1530, b'0', 'Lules', 18, b'0', NULL),
(1531, b'0', 'Yerba Buena', 18, b'0', NULL),
(1532, b'0', 'Tafí Viejo', 18, b'0', NULL),
(1533, b'0', 'Libertador General San Martín', 11, b'0', NULL),
(1534, b'0', 'Coronel Pringles', 11, b'0', NULL),
(1535, b'0', 'Chacabuco', 11, b'0', NULL),
(1536, b'0', 'Rivadavia', 1, b'0', NULL),
(1537, b'0', 'Patagones', 1, b'0', NULL),
(1538, b'0', 'Juan Martín de Pueyrredón', 11, b'0', NULL),
(1539, b'0', 'General Pedernera', 11, b'0', NULL),
(1540, b'0', 'Trancas', 18, b'0', NULL),
(1541, b'0', 'Tafí del Valle', 18, b'0', NULL),
(1542, b'0', 'Comuna 9', 2, b'0', NULL),
(1543, b'0', 'Junín', 11, b'0', NULL),
(1544, b'0', 'Mitre', 22, b'0', NULL),
(1545, b'0', 'Atamisqui', 22, b'0', NULL),
(1546, b'0', 'Berón de Astrada', 3, b'0', NULL),
(1547, b'0', 'Tolhuin', 17, b'0', NULL),
(1548, b'0', 'Capital', 21, b'0', NULL),
(1549, b'0', 'Candelaria', 21, b'0', NULL),
(1550, b'0', 'Jiménez', 22, b'0', NULL),
(1551, b'0', 'Coronel de Marina Leonardo Rosales', 1, b'0', NULL),
(1552, b'0', 'Baradero', 1, b'0', NULL),
(1553, b'0', 'San Pedro', 1, b'0', NULL),
(1554, b'0', 'Santa Victoria', 4, b'0', NULL),
(1555, b'0', 'General José de San Martín', 4, b'0', NULL),
(1556, b'0', 'Rivadavia', 4, b'0', NULL),
(1557, b'0', 'Rosario de Lerma', 4, b'0', NULL),
(1558, b'0', 'Ledesma', 15, b'0', NULL),
(1559, b'0', 'Humahuaca', 15, b'0', NULL),
(1560, b'0', 'Cochinoca', 15, b'0', NULL),
(1561, b'0', 'Tumbaya', 15, b'0', NULL),
(1562, b'0', 'Florentino Ameghino', 1, b'0', NULL),
(1563, b'0', 'Florentino Ameghino', 7, b'0', NULL),
(1564, b'0', 'La Cocha', 18, b'0', NULL),
(1565, b'0', 'Graneros', 18, b'0', NULL),
(1566, b'0', 'Juan Bautista Alberdi', 18, b'0', NULL),
(1567, b'0', 'Río Chico', 18, b'0', NULL),
(1568, b'0', 'Simoca', 18, b'0', NULL),
(1569, b'0', 'Chicligasta', 18, b'0', NULL),
(1570, b'0', 'Monteros', 18, b'0', NULL),
(1571, b'0', 'Leales', 18, b'0', NULL),
(1572, b'0', 'San Martín', 19, b'0', NULL),
(1573, b'0', 'La Capital', 19, b'0', NULL),
(1574, b'0', 'General Manuel Belgrano', 21, b'0', NULL),
(1575, b'0', 'Guaraní', 21, b'0', NULL),
(1576, b'0', 'Iguazú', 21, b'0', NULL),
(1577, b'0', '25 de Mayo', 21, b'0', NULL),
(1578, b'0', 'Oberá', 21, b'0', NULL),
(1579, b'0', 'Castellanos', 19, b'0', NULL),
(1580, b'0', 'Garay', 19, b'0', NULL),
(1581, b'0', 'Quemú Quemú', 20, b'0', NULL),
(1582, b'0', 'San Ignacio', 21, b'0', NULL),
(1583, b'0', 'Utracán', 20, b'0', NULL),
(1584, b'0', 'San Martín', 3, b'0', NULL),
(1585, b'0', 'Paso de los Libres', 3, b'0', NULL),
(1586, b'0', 'Goya', 3, b'0', NULL),
(1587, b'0', 'Lavalle', 3, b'0', NULL),
(1588, b'0', 'San Roque', 3, b'0', NULL),
(1589, b'0', 'General Alvear', 3, b'0', NULL),
(1590, b'0', 'Concepción', 3, b'0', NULL),
(1591, b'0', 'Bella Vista', 3, b'0', NULL),
(1592, b'0', 'Santo Tomé', 3, b'0', NULL),
(1593, b'0', 'Saladas', 3, b'0', NULL),
(1594, b'0', 'General Paz', 3, b'0', NULL),
(1595, b'0', 'Leandro N. Alem', 21, b'0', NULL),
(1596, b'0', 'San Javier', 21, b'0', NULL),
(1597, b'0', 'Mburucuyá', 3, b'0', NULL),
(1598, b'0', 'Concepción', 21, b'0', NULL),
(1599, b'0', 'Apóstoles', 21, b'0', NULL),
(1600, b'0', '1° de Mayo', 5, b'0', NULL),
(1601, b'0', 'San Fernando', 5, b'0', NULL),
(1602, b'0', 'San Lorenzo', 5, b'0', NULL),
(1603, b'0', 'Lomas de Zamora', 1, b'0', NULL),
(1604, b'0', 'Avellaneda', 1, b'0', NULL),
(1605, b'0', '25 de Mayo', 5, b'0', NULL),
(1606, b'0', 'General Belgrano', 5, b'0', NULL),
(1607, b'0', 'Libertad', 5, b'0', NULL),
(1608, b'0', 'Comandante Fernández', 5, b'0', NULL),
(1609, b'0', 'Comuna 15', 2, b'0', NULL),
(1610, b'0', 'Chimbas', 24, b'0', NULL),
(1611, b'0', 'Capital', 24, b'0', NULL),
(1612, b'0', 'Rivadavia', 24, b'0', NULL),
(1613, b'0', '9 de Julio', 24, b'0', NULL),
(1614, b'0', 'Albardón', 24, b'0', NULL),
(1615, b'0', 'Angaco', 24, b'0', NULL),
(1616, b'0', 'Santa Lucía', 24, b'0', NULL),
(1617, b'0', 'Rawson', 24, b'0', NULL),
(1618, b'0', '25 de Mayo', 24, b'0', NULL),
(1619, b'0', 'San Martín', 24, b'0', NULL),
(1620, b'0', 'Pocito', 24, b'0', NULL),
(1621, b'0', 'Zonda', 24, b'0', NULL),
(1622, b'0', 'Ullum', 24, b'0', NULL),
(1623, b'0', 'Sarmiento', 24, b'0', NULL),
(1624, b'0', 'Calingasta', 24, b'0', NULL),
(1625, b'0', 'Iglesia', 24, b'0', NULL),
(1626, b'0', 'Jáchal', 24, b'0', NULL),
(1627, b'0', 'Valle Fértil', 24, b'0', NULL),
(1628, b'0', 'Caucete', 24, b'0', NULL),
(1629, b'0', 'La Plata', 1, b'0', NULL),
(1630, b'0', 'Mercedes', 3, b'0', NULL),
(1652, b'0', 'Adolfo Gonzales Chaves', 1, b'0', NULL),
(1653, b'0', 'Concordia', 23, b'0', NULL),
(1654, b'0', 'Federal', 23, b'0', NULL),
(1655, b'0', 'Gualeguaychú', 23, b'0', NULL),
(1656, b'0', 'Islas del Ibicuy', 23, b'0', NULL),
(1657, b'0', 'Victoria', 23, b'0', NULL),
(1658, b'0', 'Diamante', 23, b'0', NULL),
(1659, b'0', 'Uruguay', 23, b'0', NULL),
(1660, b'0', 'Paraná', 23, b'0', NULL),
(1661, b'0', 'Saladillo', 1, b'0', NULL),
(1662, b'0', 'Las Flores', 1, b'0', NULL),
(1663, b'0', 'Rojas', 1, b'0', NULL),
(1664, b'0', 'Escobar', 1, b'0', NULL),
(1665, b'0', 'José C. Paz', 1, b'0', NULL),
(1666, b'0', 'Bahía Blanca', 1, b'0', NULL),
(1667, b'0', 'San Antonio de Areco', 1, b'0', NULL),
(1668, b'0', 'Maipú', 1, b'0', NULL),
(1669, b'0', 'General Alvarado', 1, b'0', NULL),
(1670, b'0', 'General Pueyrredón', 1, b'0', NULL),
(1671, b'0', 'Mar Chiquita', 1, b'0', NULL),
(1672, b'0', 'Villa Gesell', 1, b'0', NULL),
(1673, b'0', 'Pinamar', 1, b'0', NULL),
(1674, b'0', 'General Lavalle', 1, b'0', NULL),
(1675, b'0', 'La Costa', 1, b'0', NULL),
(1676, b'0', 'Magdalena', 1, b'0', NULL),
(1677, b'0', 'Sauce', 3, b'0', NULL),
(1678, b'0', 'Vicente López', 1, b'0', NULL),
(1679, b'0', 'La Viña', 4, b'0', NULL),
(1680, b'0', 'Rauch', 1, b'0', NULL),
(1681, b'0', 'Metán', 4, b'0', NULL),
(1682, b'0', 'Molinos', 4, b'0', NULL),
(1683, b'0', 'O\'Higgins', 5, b'0', NULL),
(1684, b'0', 'Moreno', 1, b'0', NULL),
(1685, b'0', 'La Matanza', 1, b'0', NULL),
(1686, b'0', 'Tandil', 1, b'0', NULL),
(1687, b'0', 'Coronel Suárez', 1, b'0', NULL),
(1688, b'0', 'Chamical', 6, b'0', NULL),
(1689, b'0', 'Futaleufú', 7, b'0', NULL),
(1690, b'0', 'Río Chico', 8, b'0', NULL),
(1691, b'0', 'San Antonio', 9, b'0', NULL),
(1692, b'0', 'Alberdi', 22, b'0', NULL),
(1693, b'0', 'Juan Felipe Ibarra', 22, b'0', NULL),
(1694, b'0', 'General Taboada', 22, b'0', NULL),
(1695, b'0', 'Salliqueló', 1, b'0', NULL),
(1696, b'0', 'Berazategui', 1, b'0', NULL),
(1697, b'0', 'General Güemes', 4, b'0', NULL),
(1698, b'0', 'San Carlos', 4, b'0', NULL),
(1699, b'0', 'General Paz', 1, b'0', NULL),
(1700, b'0', 'General Guido', 1, b'0', NULL),
(1701, b'0', 'General Juan Madariaga', 1, b'0', NULL),
(1702, b'0', 'Lago Argentino', 8, b'0', NULL),
(1703, b'0', 'Rivadavia', 22, b'0', NULL),
(1704, b'0', 'Ojo de Agua', 22, b'0', NULL),
(1705, b'0', 'Choya', 22, b'0', NULL),
(1706, b'0', 'Gobernador Dupuy', 11, b'0', NULL),
(1707, b'0', 'Cachi', 4, b'0', NULL),
(1708, b'0', 'Chicoana', 4, b'0', NULL),
(1709, b'0', 'Gaiman', 7, b'0', NULL),
(1710, b'0', 'Rawson', 7, b'0', NULL),
(1711, b'0', 'General Lamadrid', 6, b'0', NULL),
(1712, b'0', 'Ayacucho', 11, b'0', NULL),
(1713, b'0', '12 de Octubre', 5, b'0', NULL),
(1714, b'0', 'Tulumba', 12, b'0', NULL),
(1715, b'0', 'Cruz del Eje', 12, b'0', NULL),
(1716, b'0', 'Punilla', 12, b'0', NULL),
(1717, b'0', 'Comuna 6', 2, b'0', NULL),
(1718, b'0', 'Santa Rosa', 13, b'0', NULL),
(1719, b'0', 'General Güemes', 5, b'0', NULL),
(1720, b'0', 'General Ortiz de Ocampo', 6, b'0', NULL),
(1721, b'0', 'General Roca', 12, b'0', NULL),
(1722, b'0', 'Pilagás', 14, b'0', NULL),
(1723, b'0', 'Laishi', 14, b'0', NULL),
(1724, b'0', 'Rivadavia', 13, b'0', NULL),
(1725, b'0', 'Tornquist', 1, b'0', NULL),
(1726, b'0', 'La Paz', 13, b'0', NULL),
(1727, b'0', 'Coronel Pringles', 1, b'0', NULL),
(1728, b'0', 'Conesa', 9, b'0', NULL),
(1729, b'0', 'Villarino', 1, b'0', NULL),
(1730, b'0', 'Pirané', 14, b'0', NULL),
(1731, b'0', 'General Pinto', 1, b'0', NULL),
(1732, b'0', 'San Cayetano', 1, b'0', NULL),
(1733, b'0', 'Tres Arroyos', 1, b'0', NULL),
(1734, b'0', 'Coronel Dorrego', 1, b'0', NULL),
(1735, b'0', 'Necochea', 1, b'0', NULL),
(1736, b'0', 'Independencia', 6, b'0', NULL),
(1737, b'0', 'Chascomús', 1, b'0', NULL),
(1738, b'0', 'Punta Indio', 1, b'0', NULL),
(1739, b'0', 'El Carmen', 15, b'0', NULL),
(1740, b'0', 'Santa María', 12, b'0', NULL),
(1741, b'0', 'Valcheta', 9, b'0', NULL),
(1742, b'0', 'Arauco', 6, b'0', NULL),
(1743, b'0', 'Lezama', 1, b'0', NULL),
(1744, b'0', 'Campana', 1, b'0', NULL),
(1745, b'0', 'Magallanes', 8, b'0', NULL),
(1746, b'0', 'Corpen Aike', 8, b'0', NULL),
(1747, b'0', 'Minas', 12, b'0', NULL),
(1748, b'0', 'San Alberto', 12, b'0', NULL),
(1749, b'0', 'Río Segundo', 12, b'0', NULL),
(1750, b'0', 'San Justo', 12, b'0', NULL),
(1751, b'0', 'Unión', 12, b'0', NULL),
(1752, b'0', 'Tercero Arriba', 12, b'0', NULL),
(1753, b'0', 'Cerrillos', 4, b'0', NULL),
(1754, b'0', 'Río Cuarto', 12, b'0', NULL),
(1755, b'0', 'Tupungato', 13, b'0', NULL),
(1756, b'0', '9 de Julio', 9, b'0', NULL),
(1757, b'0', 'Ñorquinco', 9, b'0', NULL),
(1758, b'0', 'San Rafael', 13, b'0', NULL),
(1759, b'0', 'Anta', 4, b'0', NULL),
(1760, b'0', 'Picún Leufú', 16, b'0', NULL),
(1761, b'0', 'Zapala', 16, b'0', NULL),
(1762, b'0', '25 de Mayo', 9, b'0', NULL),
(1763, b'0', 'Telsen', 7, b'0', NULL),
(1764, b'0', 'Pilcaniyeu', 9, b'0', NULL),
(1765, b'0', 'Adolfo Alsina', 1, b'0', NULL),
(1766, b'0', 'General Alvear', 13, b'0', NULL),
(1767, b'0', 'La Caldera', 4, b'0', NULL),
(1768, b'0', 'Sargento Cabral', 5, b'0', NULL),
(1769, b'0', 'Pellegrini', 1, b'0', NULL),
(1770, b'0', 'Aluminé', 16, b'0', NULL),
(1771, b'0', 'Iruya', 4, b'0', NULL),
(1772, b'0', 'Lácar', 16, b'0', NULL),
(1773, b'0', 'Fray Mamerto Esquiú', 10, b'0', NULL),
(1774, b'0', 'Valle Viejo', 10, b'0', NULL),
(1775, b'0', 'San Cosme', 3, b'0', NULL),
(1776, b'0', 'Sarmiento', 7, b'0', NULL),
(1777, b'0', 'Comuna 1', 2, b'0', NULL),
(1778, b'0', 'Comuna 4', 2, b'0', NULL),
(1779, b'0', 'El Cuy', 9, b'0', NULL),
(1780, b'0', 'Las Heras', 13, b'0', NULL),
(1781, b'0', 'Tapenagá', 5, b'0', NULL),
(1782, b'0', 'Lavalle', 13, b'0', NULL),
(1783, b'0', 'Malargüe', 13, b'0', NULL),
(1784, b'0', 'Presidente Roque Sáenz Peña', 12, b'0', NULL),
(1785, b'0', 'Catán Lil', 16, b'0', NULL),
(1786, b'0', 'Presidencia de la Plaza', 5, b'0', NULL),
(1787, b'0', 'Comuna 5', 2, b'0', NULL),
(1788, b'0', 'Esquina', 3, b'0', NULL),
(1789, b'0', 'Ushuaia', 17, b'0', NULL),
(1790, b'0', 'Antofagasta de la Sierra', 10, b'0', NULL),
(1791, b'0', 'Ensenada', 1, b'0', NULL),
(1792, b'0', 'Capital', 18, b'0', NULL),
(1793, b'0', 'Belgrano', 19, b'0', NULL),
(1794, b'0', 'Pergamino', 1, b'0', NULL),
(1795, b'0', 'Puán', 1, b'0', NULL),
(1796, b'0', 'General Villegas', 1, b'0', NULL),
(1797, b'0', 'Comuna 12', 2, b'0', NULL),
(1798, b'0', 'General Obligado', 19, b'0', NULL),
(1799, b'0', 'Vera', 19, b'0', NULL),
(1800, b'0', '9 de Julio', 19, b'0', NULL),
(1801, b'0', 'Adolfo Alsina', 9, b'0', NULL),
(1802, b'0', 'Quitilipi', 5, b'0', NULL),
(1803, b'0', 'Güer Aike', 8, b'0', NULL),
(1804, b'0', 'Capayán', 10, b'0', NULL),
(1805, b'0', 'Burruyacú', 18, b'0', NULL),
(1806, b'0', 'San Jerónimo', 19, b'0', NULL),
(1807, b'0', 'Independencia', 5, b'0', NULL),
(1808, b'0', 'Curuzú Cuatiá', 3, b'0', NULL),
(1809, b'0', 'Luján de Cuyo', 13, b'0', NULL),
(1810, b'0', 'Tinogasta', 10, b'0', NULL),
(1811, b'0', 'Comuna 7', 2, b'0', NULL),
(1812, b'0', 'Hucal', 20, b'0', NULL),
(1813, b'0', 'Itatí', 3, b'0', NULL),
(1814, b'0', 'Comuna 10', 2, b'0', NULL),
(1815, b'0', 'Caleu Caleu', 20, b'0', NULL),
(1816, b'0', 'Lihuel Calel', 20, b'0', NULL),
(1817, b'0', 'Curacó', 20, b'0', NULL),
(1818, b'0', 'Confluencia', 16, b'0', NULL),
(1819, b'0', 'Picunches', 16, b'0', NULL),
(1820, b'0', 'Añelo', 16, b'0', NULL),
(1821, b'0', 'Loncopué', 16, b'0', NULL),
(1822, b'0', 'Ñorquín', 16, b'0', NULL),
(1823, b'0', 'Pehuenches', 16, b'0', NULL),
(1824, b'0', 'Comuna 11', 2, b'0', NULL),
(1825, b'0', 'Montecarlo', 21, b'0', NULL),
(1826, b'0', 'Eldorado', 21, b'0', NULL),
(1827, b'0', 'San Pedro', 21, b'0', NULL),
(1828, b'0', 'Antártida Argentina', 17, b'0', NULL),
(1829, b'0', 'Minas', 16, b'0', NULL),
(1830, b'0', 'Chos Malal', 16, b'0', NULL),
(1831, b'0', 'Cushamen', 7, b'0', NULL),
(1832, b'0', 'Lago Buenos Aires', 8, b'0', NULL),
(1833, b'0', 'Pichi Mahuida', 9, b'0', NULL),
(1834, b'0', 'San Martín', 22, b'0', NULL),
(1835, b'0', 'Yavi', 15, b'0', NULL),
(1836, b'0', 'Santa Catalina', 15, b'0', NULL),
(1837, b'0', 'San Pedro', 15, b'0', NULL),
(1838, b'0', 'Valle Grande', 15, b'0', NULL),
(1839, b'0', 'Patiño', 14, b'0', NULL),
(1840, b'0', 'Bermejo', 14, b'0', NULL),
(1841, b'0', 'Susques', 15, b'0', NULL),
(1842, b'0', 'Matacos', 14, b'0', NULL),
(1843, b'0', 'Los Andes', 4, b'0', NULL),
(1844, b'0', 'Orán', 4, b'0', NULL),
(1845, b'0', 'Tilcara', 15, b'0', NULL),
(1846, b'0', 'Palpalá', 15, b'0', NULL),
(1847, b'0', 'Loventué', 20, b'0', NULL),
(1848, b'0', 'Río Senguer', 7, b'0', NULL),
(1849, b'0', 'Bariloche', 9, b'0', NULL),
(1850, b'0', 'Huiliches', 16, b'0', NULL),
(1851, b'0', 'Limay Mahuida', 20, b'0', NULL),
(1852, b'0', 'Puelén', 20, b'0', NULL),
(1853, b'0', 'Chalileo', 20, b'0', NULL),
(1854, b'0', 'Chical Co', 20, b'0', NULL),
(1855, b'0', 'Quebrachos', 22, b'0', NULL),
(1856, b'0', 'Monte Caseros', 3, b'0', NULL),
(1857, b'0', 'Mayor Luis J. Fontana', 5, b'0', NULL),
(1858, b'0', 'Fray Justo Santa María de Oro', 5, b'0', NULL),
(1859, b'0', 'General Belgrano', 6, b'0', NULL),
(1860, b'0', 'Las Colonias', 19, b'0', NULL),
(1861, b'0', 'San Justo', 19, b'0', NULL),
(1862, b'0', 'San Cristóbal', 19, b'0', NULL),
(1863, b'0', 'San Javier', 19, b'0', NULL),
(1864, b'0', 'Chapaleufú', 20, b'0', NULL),
(1865, b'0', 'Realicó', 20, b'0', NULL),
(1866, b'0', 'Maracó', 20, b'0', NULL),
(1867, b'0', 'Trenel', 20, b'0', NULL),
(1868, b'0', 'Copo', 22, b'0', NULL),
(1869, b'0', 'Capital', 20, b'0', NULL),
(1870, b'0', 'Santa Bárbara', 15, b'0', NULL),
(1871, b'0', 'Almirante Brown', 5, b'0', NULL),
(1872, b'0', 'Rosario de la Frontera', 4, b'0', NULL),
(1873, b'0', 'Collón Curá', 16, b'0', NULL),
(1874, b'0', 'Comuna 3', 2, b'0', NULL),
(1875, b'0', 'San Fernando', 1, b'0', NULL),
(1876, b'0', 'Tigre', 1, b'0', NULL),
(1877, b'0', 'Santa María', 10, b'0', NULL),
(1878, b'0', 'Santa Rosa', 10, b'0', NULL),
(1879, b'0', 'La Paz', 10, b'0', NULL),
(1880, b'0', 'Río Hondo', 22, b'0', NULL),
(1881, b'0', 'Vinchina', 6, b'0', NULL),
(1882, b'0', 'Capital', 6, b'0', NULL),
(1883, b'0', 'Río Seco', 12, b'0', NULL),
(1884, b'0', 'Avellaneda', 9, b'0', NULL),
(1885, b'0', 'General Roca', 9, b'0', NULL),
(1886, b'0', 'Belgrano', 11, b'0', NULL),
(1887, b'0', 'Los Lagos', 16, b'0', NULL),
(1888, b'0', 'Capital', 10, b'0', NULL),
(1889, b'0', 'Ancasti', 10, b'0', NULL),
(1890, b'0', 'Pomán', 10, b'0', NULL),
(1891, b'0', 'Comuna 2', 2, b'0', NULL),
(1892, b'0', '9 de Julio', 5, b'0', NULL),
(1893, b'0', 'Pocho', 12, b'0', NULL),
(1894, b'0', 'Ezeiza', 1, b'0', NULL),
(1895, b'0', 'Andalgalá', 10, b'0', NULL),
(1896, b'0', 'Ambato', 10, b'0', NULL),
(1897, b'0', 'Comuna 8', 2, b'0', NULL),
(1898, b'0', 'Guasayán', 22, b'0', NULL),
(1899, b'0', 'Paclín', 10, b'0', NULL),
(1900, b'0', 'El Alto', 10, b'0', NULL),
(1901, b'0', 'Sobremonte', 12, b'0', NULL),
(1902, b'0', 'Río Grande', 17, b'0', NULL),
(1903, b'0', 'Comuna 13', 2, b'0', NULL),
(1904, b'0', 'Banda', 22, b'0', NULL),
(1905, b'0', 'Paso de Indios', 7, b'0', NULL),
(1906, b'0', 'Capital', 12, b'0', NULL),
(1907, b'0', 'Mártires', 7, b'0', NULL),
(1908, b'0', 'Sarmiento', 22, b'0', NULL),
(1909, b'0', 'Deseado', 8, b'0', NULL),
(1910, b'0', 'Languiñeo', 7, b'0', NULL),
(1911, b'0', 'Belgrano', 22, b'0', NULL),
(1912, b'0', 'Aguirre', 22, b'0', NULL),
(1913, b'0', 'Maipú', 5, b'0', NULL),
(1914, b'0', 'San Carlos', 13, b'0', NULL),
(1915, b'0', 'Tunuyán', 13, b'0', NULL),
(1916, b'0', 'Robles', 22, b'0', NULL),
(1917, b'0', 'Loreto', 22, b'0', NULL),
(1918, b'0', 'Catriló', 20, b'0', NULL),
(1919, b'0', 'Capital', 22, b'0', NULL),
(1920, b'0', 'Comuna 14', 2, b'0', NULL),
(1921, b'0', 'Colón', 23, b'0', NULL),
(1922, b'0', 'Villaguay', 23, b'0', NULL),
(1923, b'0', 'Castelli', 1, b'0', NULL),
(1924, b'0', 'San Salvador', 23, b'0', NULL),
(1925, b'0', 'Belén', 10, b'0', NULL),
(1926, b'0', 'Almirante Brown', 1, b'0', NULL),
(1927, b'0', 'Nogoyá', 23, b'0', NULL),
(1928, b'0', 'Tala', 23, b'0', NULL),
(1929, b'0', 'Gualeguay', 23, b'0', NULL),
(1930, b'0', 'Federación', 23, b'0', NULL),
(1931, b'0', 'La Paz', 23, b'0', NULL),
(1932, b'0', 'Feliciano', 23, b'0', NULL),
(1933, b'0', 'Presidente Perón', 1, b'0', NULL),
(1934, b'0', 'Junín', 1, b'0', NULL),
(1935, b'0', 'Brandsen', 1, b'0', NULL),
(1936, b'0', 'Chivilcoy', 1, b'0', NULL),
(1937, b'0', 'Alberti', 1, b'0', NULL),
(1938, b'0', 'Bragado', 1, b'0', NULL),
(1939, b'0', 'General Las Heras', 1, b'0', NULL),
(1940, b'0', 'Carlos Casares', 1, b'0', NULL),
(1941, b'0', 'Marcos Paz', 1, b'0', NULL),
(1942, b'0', 'General Viamonte', 1, b'0', NULL),
(1943, b'0', 'Carlos Tejedor', 1, b'0', NULL),
(1944, b'0', '25 de Mayo', 1, b'0', NULL),
(1945, b'0', '9 de Julio', 1, b'0', NULL),
(1946, b'0', 'Pehuajó', 1, b'0', NULL),
(1947, b'0', 'Tapalqué', 1, b'0', NULL),
(1948, b'0', 'Trenque Lauquen', 1, b'0', NULL),
(1949, b'0', 'General Belgrano', 1, b'0', NULL),
(1950, b'0', 'Monte', 1, b'0', NULL),
(1951, b'0', 'Roque Pérez', 1, b'0', NULL),
(1952, b'0', 'Olavarría', 1, b'0', NULL),
(1953, b'0', 'Merlo', 1, b'0', NULL),
(1954, b'0', 'Cainguás', 21, b'0', NULL),
(1955, b'0', 'Islas del Atlántico Sur', 17, b'0', NULL),
(1956, b'0', 'Esteban Echeverría', 1, b'0', NULL),
(1957, b'0', 'Arrecifes', 1, b'0', NULL),
(1958, b'0', 'Capitán Sarmiento', 1, b'0', NULL),
(1959, b'0', 'Dr. Manuel Belgrano', 15, b'0', NULL),
(1960, b'0', 'Carmen de Areco', 1, b'0', NULL),
(1961, b'0', 'Salto', 1, b'0', NULL),
(1962, b'0', 'Exaltación de la Cruz', 1, b'0', NULL),
(1963, b'0', 'San Miguel', 1, b'0', NULL),
(1964, b'0', 'San Andrés de Giles', 1, b'0', NULL),
(1965, b'0', 'Mercedes', 1, b'0', NULL),
(1966, b'0', 'Pilar', 1, b'0', NULL),
(1967, b'0', 'Luján', 1, b'0', NULL),
(1968, b'0', 'Famaillá', 18, b'0', NULL),
(1969, b'0', 'Hurlingham', 1, b'0', NULL),
(1970, b'0', 'Morón', 1, b'0', NULL),
(1971, b'0', 'Chacabuco', 1, b'0', NULL),
(1972, b'0', 'Junín', 13, b'0', NULL),
(1973, b'0', 'Malvinas Argentinas', 1, b'0', NULL),
(1974, b'0', 'Tres Lomas', 1, b'0', NULL),
(1975, b'0', 'Ayacucho', 1, b'0', NULL),
(1976, b'0', 'Guaminí', 1, b'0', NULL),
(1977, b'0', 'General San Martín', 1, b'0', NULL),
(1978, b'0', 'Lincoln', 1, b'0', NULL),
(1979, b'0', 'Laprida', 1, b'0', NULL),
(1980, b'0', 'San Isidro', 1, b'0', NULL),
(1981, b'0', 'Benito Juárez', 1, b'0', NULL),
(1982, b'0', 'Colón', 1, b'0', NULL),
(1983, b'0', 'Ituzaingó', 1, b'0', NULL),
(1984, b'0', 'General Rodríguez', 1, b'0', NULL),
(1985, b'0', 'Suipacha', 1, b'0', NULL),
(1986, b'0', 'Tres de Febrero', 1, b'0', NULL),
(1987, b'0', 'General Felipe Varela', 6, b'0', NULL),
(1988, b'0', 'Florencio Varela', 1, b'0', NULL),
(1989, b'0', 'Navarro', 1, b'0', NULL),
(1990, b'0', 'Cañuelas', 1, b'0', NULL),
(1991, b'0', 'Moreno', 22, b'0', NULL),
(1992, b'0', 'Chacabuco', 5, b'0', NULL),
(1993, b'0', 'San Vicente', 1, b'0', NULL),
(1994, b'0', 'Lobos', 1, b'0', NULL),
(1995, b'0', 'General Alvear', 1, b'0', NULL),
(1996, b'0', 'Quilmes', 1, b'0', NULL),
(1997, b'0', 'Pila', 1, b'0', NULL),
(1998, b'0', 'General La Madrid', 1, b'0', NULL),
(1999, b'0', 'Bolívar', 1, b'0', NULL),
(2000, b'0', 'Castro Barros', 6, b'0', NULL),
(2001, b'0', 'Balcarce', 1, b'0', NULL),
(2002, b'0', 'Hipólito Yrigoyen', 1, b'0', NULL),
(2003, b'0', 'Capital', 13, b'0', NULL),
(2004, b'0', 'Dolores', 1, b'0', NULL),
(2005, b'0', 'Azul', 1, b'0', NULL),
(2006, b'0', 'Daireaux', 1, b'0', NULL),
(2007, b'0', 'Godoy Cruz', 13, b'0', NULL),
(2008, b'0', 'Cafayate', 4, b'0', NULL),
(2009, b'0', 'Figueroa', 22, b'0', NULL),
(2010, b'0', 'Saavedra', 1, b'0', NULL),
(2011, b'0', 'Monte Hermoso', 1, b'0', NULL),
(2012, b'0', 'Lobería', 1, b'0', NULL),
(2013, b'0', 'Berisso', 1, b'0', NULL),
(2014, b'0', 'Tordillo', 1, b'0', NULL),
(2015, b'0', 'Zárate', 1, b'0', NULL),
(2016, b'0', 'Ramallo', 1, b'0', NULL),
(2017, b'0', 'San Nicolás', 1, b'0', NULL),
(2018, b'0', 'Salavina', 22, b'0', NULL),
(2019, b'0', 'Pellegrini', 22, b'0', NULL),
(2020, b'0', 'Avellaneda', 22, b'0', NULL),
(2021, b'0', '2 de Abril', 5, b'0', NULL),
(2022, b'0', 'Guaymallén', 13, b'0', NULL),
(2023, b'0', 'Juárez Celman', 12, b'0', NULL),
(2024, b'0', 'Capital', 4, b'0', NULL),
(2025, b'0', 'Silípica', 22, b'0', NULL),
(2026, b'0', 'La Candelaria', 4, b'0', NULL),
(2027, b'0', 'Rancul', 20, b'0', NULL),
(2028, b'0', 'Maipú', 13, b'0', NULL),
(2029, b'0', 'Guachipas', 4, b'0', NULL),
(2030, b'0', 'Atreucó', 20, b'0', NULL),
(2031, b'0', 'San Martín', 13, b'0', NULL),
(2032, b'0', 'Guatraché', 20, b'0', NULL),
(2033, b'0', 'Sanagasta', 6, b'0', NULL),
(2034, b'0', 'Conhelo', 20, b'0', NULL),
(2035, b'0', 'Libertador General San Martín', 21, b'0', NULL),
(2036, b'0', 'Rosario Vera Peñaloza', 6, b'0', NULL),
(2037, b'0', 'San Miguel', 3, b'0', NULL),
(2038, b'0', 'General Juan Facundo Quiroga', 6, b'0', NULL),
(2039, b'0', 'Ángel Vicente Peñaloza', 6, b'0', NULL),
(2040, b'0', 'Empedrado', 3, b'0', NULL),
(2041, b'0', 'Chilecito', 6, b'0', NULL),
(2042, b'0', 'Toay', 20, b'0', NULL),
(2043, b'0', 'Colón', 12, b'0', NULL),
(2044, b'0', 'Ituzaingó', 3, b'0', NULL),
(2045, b'0', 'Famatina', 6, b'0', NULL),
(2046, b'0', 'General López', 19, b'0', NULL),
(2047, b'0', 'Constitución', 19, b'0', NULL),
(2048, b'0', 'Caseros', 19, b'0', NULL),
(2049, b'0', 'Rosario', 19, b'0', NULL),
(2050, b'0', 'San Lorenzo', 19, b'0', NULL),
(2051, b'0', 'Iriondo', 19, b'0', NULL),
(2052, b'0', 'Lanús', 1, b'0', NULL),
(2053, b'0', 'General San Martín', 6, b'0', NULL),
(2054, b'0', 'San Blas de Los Sauces', 6, b'0', NULL),
(2055, b'0', 'San Antonio', 15, b'0', NULL),
(2056, b'0', 'Rinconada', 15, b'0', NULL),
(2057, b'0', 'Ramón Lista', 14, b'0', NULL),
(2058, b'0', 'La Poma', 4, b'0', NULL),
(2059, b'0', 'Biedma', 7, b'0', NULL),
(2060, b'0', 'Capital', 3, b'0', NULL),
(2061, b'0', 'San Luis del Palmar', 3, b'0', NULL),
(2062, b'0', 'Formosa', 14, b'0', NULL),
(2063, b'0', 'Comuna 9', 2, b'0', NULL),
(2064, b'0', 'Tehuelches', 7, b'0', NULL),
(2065, b'0', 'Escalante', 7, b'0', NULL),
(2066, b'0', 'Ischilín', 12, b'0', NULL),
(2067, b'0', 'Totoral', 12, b'0', NULL),
(2068, b'0', 'General San Martín', 12, b'0', NULL),
(2069, b'0', 'San Javier', 12, b'0', NULL),
(2070, b'0', 'Río Primero', 12, b'0', NULL),
(2071, b'0', 'Marcos Juárez', 12, b'0', NULL),
(2072, b'0', 'General Donovan', 5, b'0', NULL),
(2073, b'0', 'Leandro N. Alem', 1, b'0', NULL),
(2074, b'0', 'Libertador General San Martín', 5, b'0', NULL),
(2075, b'0', 'Gastre', 7, b'0', NULL),
(2076, b'0', 'General Arenales', 1, b'0', NULL),
(2077, b'0', 'Bermejo', 5, b'0', NULL),
(2078, b'0', 'Calamuchita', 12, b'0', NULL),
(2079, b'0', 'Cruz Alta', 18, b'0', NULL),
(2080, b'0', 'Lules', 18, b'0', NULL),
(2081, b'0', 'Yerba Buena', 18, b'0', NULL),
(2082, b'0', 'Tafí Viejo', 18, b'0', NULL),
(2083, b'0', 'Libertador General San Martín', 11, b'0', NULL),
(2084, b'0', 'Coronel Pringles', 11, b'0', NULL),
(2085, b'0', 'Chacabuco', 11, b'0', NULL),
(2086, b'0', 'Rivadavia', 1, b'0', NULL),
(2087, b'0', 'Patagones', 1, b'0', NULL),
(2088, b'0', 'Juan Martín de Pueyrredón', 11, b'0', NULL),
(2089, b'0', 'General Pedernera', 11, b'0', NULL),
(2090, b'0', 'Trancas', 18, b'0', NULL),
(2091, b'0', 'Tafí del Valle', 18, b'0', NULL),
(2092, b'0', 'Junín', 11, b'0', NULL),
(2093, b'0', 'Mitre', 22, b'0', NULL),
(2094, b'0', 'Atamisqui', 22, b'0', NULL),
(2095, b'0', 'Berón de Astrada', 3, b'0', NULL),
(2096, b'0', 'Tolhuin', 17, b'0', NULL),
(2097, b'0', 'Capital', 21, b'0', NULL),
(2098, b'0', 'Candelaria', 21, b'0', NULL),
(2099, b'0', 'Jiménez', 22, b'0', NULL),
(2100, b'0', 'Coronel de Marina Leonardo Rosales', 1, b'0', NULL),
(2101, b'0', 'Baradero', 1, b'0', NULL),
(2102, b'0', 'San Pedro', 1, b'0', NULL),
(2103, b'0', 'Santa Victoria', 4, b'0', NULL),
(2104, b'0', 'General José de San Martín', 4, b'0', NULL),
(2105, b'0', 'Comuna 15', 2, b'0', NULL),
(2106, b'0', 'Rosario de Lerma', 4, b'0', NULL),
(2107, b'0', 'Ledesma', 15, b'0', NULL),
(2108, b'0', 'Humahuaca', 15, b'0', NULL),
(2109, b'0', 'Cochinoca', 15, b'0', NULL),
(2110, b'0', 'Tumbaya', 15, b'0', NULL),
(2111, b'0', 'Florentino Ameghino', 1, b'0', NULL),
(2112, b'0', 'Florentino Ameghino', 7, b'0', NULL),
(2113, b'0', 'La Cocha', 18, b'0', NULL),
(2114, b'0', 'Graneros', 18, b'0', NULL),
(2115, b'0', 'Juan Bautista Alberdi', 18, b'0', NULL),
(2116, b'0', 'Río Chico', 18, b'0', NULL),
(2117, b'0', 'Simoca', 18, b'0', NULL),
(2118, b'0', 'Chicligasta', 18, b'0', NULL),
(2119, b'0', 'Monteros', 18, b'0', NULL),
(2120, b'0', 'Leales', 18, b'0', NULL),
(2121, b'0', 'San Martín', 19, b'0', NULL),
(2122, b'0', 'La Capital', 19, b'0', NULL),
(2123, b'0', 'General Manuel Belgrano', 21, b'0', NULL),
(2124, b'0', 'Guaraní', 21, b'0', NULL),
(2125, b'0', 'Iguazú', 21, b'0', NULL),
(2126, b'0', '25 de Mayo', 21, b'0', NULL),
(2127, b'0', 'Oberá', 21, b'0', NULL),
(2128, b'0', 'Castellanos', 19, b'0', NULL),
(2129, b'0', 'Garay', 19, b'0', NULL),
(2130, b'0', 'Quemú Quemú', 20, b'0', NULL),
(2131, b'0', 'San Ignacio', 21, b'0', NULL),
(2132, b'0', 'Utracán', 20, b'0', NULL),
(2133, b'0', 'San Martín', 3, b'0', NULL),
(2134, b'0', 'Paso de los Libres', 3, b'0', NULL),
(2135, b'0', 'Goya', 3, b'0', NULL),
(2136, b'0', 'Lavalle', 3, b'0', NULL),
(2137, b'0', 'San Roque', 3, b'0', NULL),
(2138, b'0', 'General Alvear', 3, b'0', NULL),
(2139, b'0', 'Concepción', 3, b'0', NULL),
(2140, b'0', 'Bella Vista', 3, b'0', NULL),
(2141, b'0', 'Santo Tomé', 3, b'0', NULL),
(2142, b'0', 'Saladas', 3, b'0', NULL),
(2143, b'0', 'General Paz', 3, b'0', NULL),
(2144, b'0', 'Leandro N. Alem', 21, b'0', NULL),
(2145, b'0', 'San Javier', 21, b'0', NULL),
(2146, b'0', 'Mburucuyá', 3, b'0', NULL),
(2147, b'0', 'Concepción', 21, b'0', NULL),
(2148, b'0', 'Apóstoles', 21, b'0', NULL),
(2149, b'0', '1° de Mayo', 5, b'0', NULL),
(2150, b'0', 'San Fernando', 5, b'0', NULL),
(2151, b'0', 'San Lorenzo', 5, b'0', NULL),
(2152, b'0', 'Lomas de Zamora', 1, b'0', NULL),
(2153, b'0', 'Avellaneda', 1, b'0', NULL),
(2154, b'0', '25 de Mayo', 5, b'0', NULL),
(2155, b'0', 'General Belgrano', 5, b'0', NULL),
(2156, b'0', 'Libertad', 5, b'0', NULL),
(2157, b'0', 'Comandante Fernández', 5, b'0', NULL),
(2158, b'0', 'Chimbas', 24, b'0', NULL),
(2159, b'0', 'Capital', 24, b'0', NULL),
(2160, b'0', 'Rivadavia', 24, b'0', NULL),
(2161, b'0', '9 de Julio', 24, b'0', NULL),
(2162, b'0', 'Albardón', 24, b'0', NULL),
(2163, b'0', 'Angaco', 24, b'0', NULL),
(2164, b'0', 'Santa Lucía', 24, b'0', NULL),
(2165, b'0', 'Rawson', 24, b'0', NULL),
(2166, b'0', '25 de Mayo', 24, b'0', NULL),
(2167, b'0', 'San Martín', 24, b'0', NULL),
(2168, b'0', 'Pocito', 24, b'0', NULL),
(2169, b'0', 'Zonda', 24, b'0', NULL),
(2170, b'0', 'Ullum', 24, b'0', NULL),
(2171, b'0', 'Sarmiento', 24, b'0', NULL),
(2172, b'0', 'Calingasta', 24, b'0', NULL),
(2173, b'0', 'Iglesia', 24, b'0', NULL),
(2174, b'0', 'Jáchal', 24, b'0', NULL),
(2175, b'0', 'Valle Fértil', 24, b'0', NULL),
(2176, b'0', 'Caucete', 24, b'0', NULL),
(2177, b'0', 'La Plata', 1, b'0', NULL),
(2178, b'0', 'Mercedes', 3, b'0', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `localidad_seq`
--

DROP TABLE IF EXISTS `localidad_seq`;
CREATE TABLE IF NOT EXISTS `localidad_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `localidad_seq`
--

INSERT INTO `localidad_seq` (`next_val`) VALUES
(2251);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pais`
--

DROP TABLE IF EXISTS `pais`;
CREATE TABLE IF NOT EXISTS `pais` (
  `id` bigint NOT NULL,
  `eliminado` bit(1) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `baja` bit(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `pais`
--

INSERT INTO `pais` (`id`, `eliminado`, `nombre`, `baja`) VALUES
(1, b'0', 'Argentina', b'0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pais_seq`
--

DROP TABLE IF EXISTS `pais_seq`;
CREATE TABLE IF NOT EXISTS `pais_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `pais_seq`
--

INSERT INTO `pais_seq` (`next_val`) VALUES
(51);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

DROP TABLE IF EXISTS `pedido`;
CREATE TABLE IF NOT EXISTS `pedido` (
  `id` bigint NOT NULL,
  `eliminado` bit(1) NOT NULL,
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
  `sucursal_id` bigint DEFAULT NULL,
  `baja` bit(1) NOT NULL,
  `factura_id` bigint DEFAULT NULL,
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
-- Estructura de tabla para la tabla `pedido_seq`
--

DROP TABLE IF EXISTS `pedido_seq`;
CREATE TABLE IF NOT EXISTS `pedido_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `pedido_seq`
--

INSERT INTO `pedido_seq` (`next_val`) VALUES
(1);

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
  `id` bigint NOT NULL,
  `eliminado` bit(1) NOT NULL,
  `denominacion` varchar(255) DEFAULT NULL,
  `descripcion_descuento` varchar(255) DEFAULT NULL,
  `fecha_desde` date DEFAULT NULL,
  `fecha_hasta` date DEFAULT NULL,
  `hora_desde` time(6) DEFAULT NULL,
  `hora_hasta` time(6) DEFAULT NULL,
  `precio_promocional` double DEFAULT NULL,
  `tipo_promocion` tinyint DEFAULT NULL,
  `baja` bit(1) NOT NULL,
  `sucursal_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKaulen6od3ay1qnp7smhlxwr41` (`sucursal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promocion_articulo`
--

DROP TABLE IF EXISTS `promocion_articulo`;
CREATE TABLE IF NOT EXISTS `promocion_articulo` (
  `promocion_id` bigint NOT NULL,
  `articulo_id` bigint NOT NULL,
  PRIMARY KEY (`promocion_id`,`articulo_id`)
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
  `id` bigint NOT NULL,
  `eliminado` bit(1) NOT NULL,
  `cantidad` int NOT NULL,
  `articulo_id` bigint DEFAULT NULL,
  `promocion_id` bigint DEFAULT NULL,
  `baja` bit(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKmxkc9fkv4btuhc89yu338obqd` (`promocion_id`),
  KEY `FK2dthinvgi20qc529cvkab7nt2` (`articulo_id`)
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
-- Estructura de tabla para la tabla `promocion_detalle_seq`
--

DROP TABLE IF EXISTS `promocion_detalle_seq`;
CREATE TABLE IF NOT EXISTS `promocion_detalle_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `promocion_detalle_seq`
--

INSERT INTO `promocion_detalle_seq` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promocion_seq`
--

DROP TABLE IF EXISTS `promocion_seq`;
CREATE TABLE IF NOT EXISTS `promocion_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `promocion_seq`
--

INSERT INTO `promocion_seq` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincia`
--

DROP TABLE IF EXISTS `provincia`;
CREATE TABLE IF NOT EXISTS `provincia` (
  `id` bigint NOT NULL,
  `eliminado` bit(1) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `id_pais` bigint DEFAULT NULL,
  `baja` bit(1) NOT NULL,
  `pais_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKp37jnxd9htn7o8v195jm4uvre` (`id_pais`),
  KEY `FKm4s599988w0v1q1nw6dyo5t2m` (`pais_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `provincia`
--

INSERT INTO `provincia` (`id`, `eliminado`, `nombre`, `id_pais`, `baja`, `pais_id`) VALUES
(1, b'0', 'Buenos Aires', 1, b'0', NULL),
(2, b'0', 'Ciudad Autónoma de Buenos Aires', 1, b'0', NULL),
(3, b'0', 'Corrientes', 1, b'0', NULL),
(4, b'0', 'Salta', 1, b'0', NULL),
(5, b'0', 'Chaco', 1, b'0', NULL),
(6, b'0', 'La Rioja', 1, b'0', NULL),
(7, b'0', 'Chubut', 1, b'0', NULL),
(8, b'0', 'Santa Cruz', 1, b'0', NULL),
(9, b'0', 'Río Negro', 1, b'0', NULL),
(10, b'0', 'Catamarca', 1, b'0', NULL),
(11, b'0', 'San Luis', 1, b'0', NULL),
(12, b'0', 'Córdoba', 1, b'0', NULL),
(13, b'0', 'Mendoza', 1, b'0', NULL),
(14, b'0', 'Formosa', 1, b'0', NULL),
(15, b'0', 'Jujuy', 1, b'0', NULL),
(16, b'0', 'Neuquén', 1, b'0', NULL),
(17, b'0', 'Tierra del Fuego, Antártida e Islas del Atlántico Sur', 1, b'0', NULL),
(18, b'0', 'Tucumán', 1, b'0', NULL),
(19, b'0', 'Santa Fe', 1, b'0', NULL),
(20, b'0', 'La Pampa', 1, b'0', NULL),
(21, b'0', 'Misiones', 1, b'0', NULL),
(22, b'0', 'Santiago del Estero', 1, b'0', NULL),
(23, b'0', 'Entre Ríos', 1, b'0', NULL),
(24, b'0', 'San Juan', 1, b'0', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincia_seq`
--

DROP TABLE IF EXISTS `provincia_seq`;
CREATE TABLE IF NOT EXISTS `provincia_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `provincia_seq`
--

INSERT INTO `provincia_seq` (`next_val`) VALUES
(101);

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
(1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seq_revision_id`
--

DROP TABLE IF EXISTS `seq_revision_id`;
CREATE TABLE IF NOT EXISTS `seq_revision_id` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `seq_revision_id`
--

INSERT INTO `seq_revision_id` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursal`
--

DROP TABLE IF EXISTS `sucursal`;
CREATE TABLE IF NOT EXISTS `sucursal` (
  `id` bigint NOT NULL,
  `eliminado` bit(1) NOT NULL,
  `casa_matriz` bit(1) DEFAULT NULL,
  `horario_apertura` time(6) DEFAULT NULL,
  `horario_cierre` time(6) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `domicilio_id` bigint DEFAULT NULL,
  `id_empresa` bigint DEFAULT NULL,
  `baja` bit(1) NOT NULL,
  `es_casa_matriz` bit(1) NOT NULL,
  `empresa_id` bigint DEFAULT NULL,
  `imagen_sucursal_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_34hifwa9nn1cgdbjgkosx0wy2` (`domicilio_id`),
  UNIQUE KEY `UK_360r6sip78ax5am2e1yk574ry` (`imagen_sucursal_id`),
  KEY `FKnl8kicjg784yrow6qbleby1uq` (`id_empresa`),
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
-- Estructura de tabla para la tabla `sucursal_promocion`
--

DROP TABLE IF EXISTS `sucursal_promocion`;
CREATE TABLE IF NOT EXISTS `sucursal_promocion` (
  `promocion_id` bigint NOT NULL,
  `sucursal_id` bigint NOT NULL,
  PRIMARY KEY (`promocion_id`,`sucursal_id`),
  KEY `FKfv8unyrvkg4sow787vu0lb447` (`sucursal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursal_seq`
--

DROP TABLE IF EXISTS `sucursal_seq`;
CREATE TABLE IF NOT EXISTS `sucursal_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `sucursal_seq`
--

INSERT INTO `sucursal_seq` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidad_medida`
--

DROP TABLE IF EXISTS `unidad_medida`;
CREATE TABLE IF NOT EXISTS `unidad_medida` (
  `id` bigint NOT NULL,
  `eliminado` bit(1) NOT NULL,
  `denominacion` varchar(255) DEFAULT NULL,
  `baja` bit(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `unidad_medida`
--

INSERT INTO `unidad_medida` (`id`, `eliminado`, `denominacion`, `baja`) VALUES
(1, b'0', 'Kilogramos', b'0'),
(2, b'0', 'Gramos', b'0'),
(3, b'0', 'Litros', b'0'),
(4, b'0', 'Mililitros', b'0'),
(5, b'0', 'Unidades', b'0'),
(6, b'0', 'Pizca', b'0'),
(7, b'0', 'Porciones', b'0'),
(8, b'0', 'Cucharadas', b'0');

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
-- Estructura de tabla para la tabla `unidad_medida_seq`
--

DROP TABLE IF EXISTS `unidad_medida_seq`;
CREATE TABLE IF NOT EXISTS `unidad_medida_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `unidad_medida_seq`
--

INSERT INTO `unidad_medida_seq` (`next_val`) VALUES
(101);

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_cliente`
--

DROP TABLE IF EXISTS `usuario_cliente`;
CREATE TABLE IF NOT EXISTS `usuario_cliente` (
  `id` bigint NOT NULL,
  `eliminado` bit(1) NOT NULL,
  `auth0id` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_cliente_seq`
--

DROP TABLE IF EXISTS `usuario_cliente_seq`;
CREATE TABLE IF NOT EXISTS `usuario_cliente_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `usuario_cliente_seq`
--

INSERT INTO `usuario_cliente_seq` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_empleado`
--

DROP TABLE IF EXISTS `usuario_empleado`;
CREATE TABLE IF NOT EXISTS `usuario_empleado` (
  `id` bigint NOT NULL,
  `eliminado` bit(1) NOT NULL,
  `auth0id` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_empleado_seq`
--

DROP TABLE IF EXISTS `usuario_empleado_seq`;
CREATE TABLE IF NOT EXISTS `usuario_empleado_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `usuario_empleado_seq`
--

INSERT INTO `usuario_empleado_seq` (`next_val`) VALUES
(1);

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
  ADD CONSTRAINT `FK5yoloai8ewly5lkbi3wl5904y` FOREIGN KEY (`id`) REFERENCES `articulo` (`id`),
  ADD CONSTRAINT `FK_bq24pwi1icjnu04cdhfq8qik2` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`id`),
  ADD CONSTRAINT `FK_t87v5vp2gygwbhs0s5t4x78aj` FOREIGN KEY (`unidad_medida_id`) REFERENCES `unidad_medida` (`id`);

--
-- Filtros para la tabla `articulo_insumo_aud`
--
ALTER TABLE `articulo_insumo_aud`
  ADD CONSTRAINT `FKc77ixmpho65yoq223ec7jer01` FOREIGN KEY (`rev`,`id`) REFERENCES `articulo_aud` (`rev`, `id`);

--
-- Filtros para la tabla `articulo_manufacturado`
--
ALTER TABLE `articulo_manufacturado`
  ADD CONSTRAINT `FK9t82oibyduo62wci8y6gfpllx` FOREIGN KEY (`id`) REFERENCES `articulo` (`id`),
  ADD CONSTRAINT `FK_j2ltshqmxs8ksyttgpwm7tt27` FOREIGN KEY (`unidad_medida_id`) REFERENCES `unidad_medida` (`id`),
  ADD CONSTRAINT `FK_rxvuc695pmrvn93gu3564up7y` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`id`);

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
  ADD CONSTRAINT `FKee8sad16ogk7in2nlh0vc3y9b` FOREIGN KEY (`articulo_insumo_id`) REFERENCES `articulo_insumo` (`id`),
  ADD CONSTRAINT `FKmq6wwsgxaoxlc7rmrgu0acj7a` FOREIGN KEY (`articulo_manufacturado_detalle_id`) REFERENCES `articulo_manufacturado` (`id`);

--
-- Filtros para la tabla `articulo_manufacturado_detalle_aud`
--
ALTER TABLE `articulo_manufacturado_detalle_aud`
  ADD CONSTRAINT `FK1us9183spe3tj9d6y2mwccuq` FOREIGN KEY (`rev`) REFERENCES `revision_info` (`id`);

--
-- Filtros para la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD CONSTRAINT `FKif4f273okqr2edqkm0xqxjlyk` FOREIGN KEY (`categoria_padre_id`) REFERENCES `categoria` (`id`),
  ADD CONSTRAINT `FKjiixv3teefdkilvoysutbedif` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`id`);

--
-- Filtros para la tabla `categoria_aud`
--
ALTER TABLE `categoria_aud`
  ADD CONSTRAINT `FKjvqndxmkpq87wka6dy953jv6j` FOREIGN KEY (`rev`) REFERENCES `revision_info` (`id`);

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `FK9wu56im8hnincjveq4kw4ectv` FOREIGN KEY (`usuario_id`) REFERENCES `usuario_cliente` (`id`),
  ADD CONSTRAINT `FKkpvkbjg32bso6riqge70hwcel` FOREIGN KEY (`id`) REFERENCES `persona` (`id`),
  ADD CONSTRAINT `FKstms9vorwmch8l3au2hbvhyal` FOREIGN KEY (`imagen_cliente_id`) REFERENCES `imagen_cliente` (`id`);

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
  ADD CONSTRAINT `FK8t63gx4v022qapv45vdwld71j` FOREIGN KEY (`localidad_id`) REFERENCES `localidad` (`id`),
  ADD CONSTRAINT `FKqrmmkejvimmve55527wv6ujtr` FOREIGN KEY (`id_localidad`) REFERENCES `localidad` (`id`);

--
-- Filtros para la tabla `domicilio_aud`
--
ALTER TABLE `domicilio_aud`
  ADD CONSTRAINT `FKr2va00h51h6v43r7txxpov81` FOREIGN KEY (`rev`) REFERENCES `revision_info` (`id`);

--
-- Filtros para la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD CONSTRAINT `FKj85uwmll1sb6cw5rqnlgyhqif` FOREIGN KEY (`imagen_empleado_id`) REFERENCES `imagen_empleado` (`id`),
  ADD CONSTRAINT `FKkv68lx8xpbpv6jprh7taieaej` FOREIGN KEY (`sucursal_id`) REFERENCES `sucursal` (`id`),
  ADD CONSTRAINT `FKl6nu1s893o9x7pmxo0wdhfiei` FOREIGN KEY (`id`) REFERENCES `persona` (`id`),
  ADD CONSTRAINT `FKlmr07q48dtck3j1f08iti0nbh` FOREIGN KEY (`usuario_empleado_id`) REFERENCES `usuario_empleado` (`id`);

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
-- Filtros para la tabla `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `FKn6q9mbkc0n4g1uux57clh2bq0` FOREIGN KEY (`pedido_id`) REFERENCES `pedido` (`id`);

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
  ADD CONSTRAINT `FK37mbpxuicwnbo878s9djjgr39` FOREIGN KEY (`provincia_id`) REFERENCES `provincia` (`id`),
  ADD CONSTRAINT `FKbsjp9dyq5f3hk4ngy6pw3v3b2` FOREIGN KEY (`id_provincia`) REFERENCES `provincia` (`id`);

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
-- Filtros para la tabla `promocion_articulo`
--
ALTER TABLE `promocion_articulo`
  ADD CONSTRAINT `FKmwaxvlywtxtbr2eow3vibc94d` FOREIGN KEY (`promocion_id`) REFERENCES `promocion` (`id`);

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
  ADD CONSTRAINT `FKm4s599988w0v1q1nw6dyo5t2m` FOREIGN KEY (`pais_id`) REFERENCES `pais` (`id`),
  ADD CONSTRAINT `FKp37jnxd9htn7o8v195jm4uvre` FOREIGN KEY (`id_pais`) REFERENCES `pais` (`id`);

--
-- Filtros para la tabla `sucursal`
--
ALTER TABLE `sucursal`
  ADD CONSTRAINT `FK3w56rbjykxbp2e79cdq0xsghd` FOREIGN KEY (`empresa_id`) REFERENCES `empresa` (`id`),
  ADD CONSTRAINT `FKfyxe9k9h5xx1nks7qmpv92yv2` FOREIGN KEY (`imagen_sucursal_id`) REFERENCES `imagen_sucursal` (`id`),
  ADD CONSTRAINT `FKnl8kicjg784yrow6qbleby1uq` FOREIGN KEY (`id_empresa`) REFERENCES `empresa` (`id`),
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
-- Filtros para la tabla `sucursal_promocion`
--
ALTER TABLE `sucursal_promocion`
  ADD CONSTRAINT `FKfv8unyrvkg4sow787vu0lb447` FOREIGN KEY (`sucursal_id`) REFERENCES `promocion` (`id`),
  ADD CONSTRAINT `FKsffdgi1kd25vte47yhjm3rodh` FOREIGN KEY (`promocion_id`) REFERENCES `sucursal` (`id`);

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
