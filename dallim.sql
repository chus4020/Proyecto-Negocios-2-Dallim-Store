-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-11-2020 a las 23:10:04
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dallim`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo`
--

CREATE TABLE `articulo` (
  `id_articulo` int(11) NOT NULL,
  `nombre_articulo` varchar(30) NOT NULL,
  `precio` decimal(10,0) NOT NULL,
  `id_marca` int(11) NOT NULL,
  `color` varchar(11) NOT NULL,
  `existencia` tinyint(3) NOT NULL,
  `descripción` text NOT NULL,
  `id_talla` int(11) NOT NULL,
  `id_diseño` int(11) NOT NULL,
  `id_oferta` int(11) NOT NULL,
  `id_imagen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo_categoria`
--

CREATE TABLE `articulo_categoria` (
  `id_categoria` int(11) NOT NULL,
  `tipo_categoria` varchar(45) NOT NULL,
  `tipo_articulo` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `articulo_categoria`
--

INSERT INTO `articulo_categoria` (`id_categoria`, `tipo_categoria`, `tipo_articulo`) VALUES
(0, 'Mujer', 'Vestido'),
(1, 'Mujer', 'Pantalón'),
(2, 'Mujer', 'Sombrero'),
(4, 'Mujer', 'Sombrero'),
(5, 'Mujer', 'Tacones'),
(6, 'Hombre', 'Tannis'),
(7, 'Hombre', 'Camisa'),
(8, 'Hombre', 'Sudadera'),
(9, 'Hombre', 'Chamarra'),
(10, 'Hombre', 'Corbata');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo_visita`
--

CREATE TABLE `articulo_visita` (
  `id_visita` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_articulo` int(11) NOT NULL,
  `fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificaciones`
--

CREATE TABLE `calificaciones` (
  `id_calif` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_articulo` int(11) NOT NULL,
  `comentario` text NOT NULL,
  `calificacion` tinyint(1) NOT NULL,
  `fecha_hora` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrito`
--

CREATE TABLE `carrito` (
  `id_total` int(11) NOT NULL,
  `id_articulo` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra`
--

CREATE TABLE `compra` (
  `id_compra` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `num_tarjeta` varchar(20) NOT NULL,
  `id_total` int(11) NOT NULL,
  `fecha_compra` datetime(2) NOT NULL,
  `Descripción` varchar(255) NOT NULL,
  `id_articulo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `id_empleado` int(11) NOT NULL,
  `apellidos` varchar(45) DEFAULT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `nombreUS` varchar(40) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `correo` varchar(45) DEFAULT NULL,
  `passEmp` varchar(100) DEFAULT NULL,
  `token` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`id_empleado`, `apellidos`, `nombre`, `nombreUS`, `telefono`, `correo`, `passEmp`, `token`) VALUES
(1, 'De Anda Delgado', 'Jesus', 'Asthas', '4493319679', 'jesus.chuy@gmail.com', 'jesus123', '1253'),
(2, 'Reyna', 'Katherine', 'Kat', '4491234567', 'kat.reyna@gmail.com', 'kat123', '4483'),
(3, 'Sergio', 'Martinez', 'Checo', '4497654321', 'cheko@hotmail.com', 'cheko123', '0124'),
(4, 'Gonzalez', 'Andres', 'AndresG', '4499876543', 'andresg@gmail.com', 'andres123', '3483'),
(5, 'Santos', 'Alonso', 'Sabino', '4498765432', 'sabino@gmail.com', 'sabino123', '0134'),
(6, 'García', 'Johan', 'JohanGM', '4491970697', 'johan.gar@hotmail.com', 'johan123', '1234'),
(7, 'Palos', 'Humberto', 'Humbert', '4497482812', 'humbert.palos@hotmail.com', 'humberto123', '6859'),
(8, 'Alvarez', 'Jaqueline', 'Jackie', '4491848185', 'jackie.alv@hotmail.com', 'jackie123', '2959'),
(9, 'Montoya', 'Roberto', 'Robert', '4493571781', 'roberto.mon@hotmail.com', 'roberto123', '4486'),
(10, 'Hernadez', 'Joel', 'Joel', '4491758283', 'joel.ulises@gmail.com', 'joel123', '3485');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagen`
--

CREATE TABLE `imagen` (
  `id_imagen` int(11) NOT NULL,
  `imagen` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lista_deseos`
--

CREATE TABLE `lista_deseos` (
  `id_listadeseos` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `id_articulo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca`
--

CREATE TABLE `marca` (
  `id_marca` int(11) NOT NULL,
  `nombre_marca` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `marca`
--

INSERT INTO `marca` (`id_marca`, `nombre_marca`) VALUES
(1, 'Zara'),
(2, 'CalvinKlein'),
(3, 'Chein'),
(4, 'Addidas'),
(5, 'Nike'),
(6, 'Boquie'),
(7, 'Dracula'),
(8, 'D&D'),
(9, 'ABS'),
(10, 'Sport');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oferta`
--

CREATE TABLE `oferta` (
  `id_oferta` int(11) NOT NULL,
  `nombre_oferta` varchar(30) NOT NULL,
  `porcentaje_oferta` decimal(1,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `oferta`
--

INSERT INTO `oferta` (`id_oferta`, `nombre_oferta`, `porcentaje_oferta`) VALUES
(1, 'Buen Fin', '9'),
(2, 'Black Friday', '9'),
(3, 'Julio Regalado', '3'),
(4, 'Viernes 13', '4'),
(5, 'Buen Fin 2.0', '5'),
(6, 'ProVenta', '6'),
(7, 'Noche Buena', '7'),
(8, 'Halloween', '8'),
(9, 'Mes patriotico', '1'),
(10, 'Valentine Day', '2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pago`
--

CREATE TABLE `pago` (
  `id_pago` int(11) NOT NULL,
  `nombre_pago` varchar(30) NOT NULL,
  `total_pago` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pago`
--

INSERT INTO `pago` (`id_pago`, `nombre_pago`, `total_pago`) VALUES
(1, 'Compra 1', 1273),
(2, 'Compra 2', 1300),
(3, 'Compra 3', 1000),
(4, 'Compra 4', 800),
(5, 'Compra 5', 600),
(6, 'Compra 6', 2000),
(7, 'Compra 7', 690),
(8, 'Compra 8', 580),
(9, 'Compra 9', 3000),
(10, 'Compra 10', 500);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id_pedido` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `num_tarjeta` varchar(20) NOT NULL,
  `id_articulo` int(11) NOT NULL,
  `desc_pedido` varchar(200) NOT NULL,
  `fecha_solicitud` date NOT NULL,
  `fecha_entrega` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `talla`
--

CREATE TABLE `talla` (
  `id_talla` int(11) NOT NULL,
  `tipo_talla` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `talla`
--

INSERT INTO `talla` (`id_talla`, `tipo_talla`) VALUES
(1, 'Ch'),
(2, 'M'),
(3, 'G'),
(4, 'Ch'),
(5, 'M'),
(6, 'G'),
(7, 'M'),
(8, 'G'),
(9, 'Ch'),
(10, 'Ch');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_empleado`
--

CREATE TABLE `tipo_empleado` (
  `id_tipo_empleado` int(11) NOT NULL,
  `rol_empleado` varchar(40) NOT NULL,
  `id_empleado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipo_empleado`
--

INSERT INTO `tipo_empleado` (`id_tipo_empleado`, `rol_empleado`, `id_empleado`) VALUES
(1, 'Cajero', 5),
(2, 'Proveedor', 4),
(3, 'Marketing', 3),
(4, 'Publicitario', 2),
(5, 'Fabricante', 6),
(6, 'Maquinista', 7),
(7, 'Mostrario', 8),
(8, 'Invertor', 9),
(9, 'Ventas', 5),
(10, 'Chalan', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `ap_pat` varchar(30) NOT NULL,
  `ap_mat` varchar(30) NOT NULL,
  `nombre_usuario` varchar(20) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `direccion` varchar(60) NOT NULL,
  `fecha_nac` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nombre`, `ap_pat`, `ap_mat`, `nombre_usuario`, `password`, `correo`, `telefono`, `direccion`, `fecha_nac`) VALUES
(1, 'Kartherine', 'Guzman', 'Lopez', 'Katherine', 'kat123', 'kat_12@gmail.com', '4491321213', 'Col. Morelos Calle Hermanos Bravo #382', '1998-02-12'),
(2, 'Jesus', 'Calderon', 'Hernandez', 'Chuy', 'chuy123', 'chuy.98@gmail.com', '44923103954', 'Col. Miradores Calle Del Prado #960', '1998-07-23'),
(3, 'Johan', 'García', 'Montoya', 'JohanGM', 'johan123', 'johan_97@gmail.com', '4491970697', 'Col. Casa Blanca Calle Jefes Insurgentes #129', '1997-12-12'),
(4, 'Andres', 'Salazar', 'Jimenez', 'Andres', 'andres123', 'andres.98@gmail.com', '4491848383', 'Col. Vistas del Sol Calle Eclipse #194', '1998-10-30'),
(5, 'Jaqueline', 'Alvarez', 'Alba', 'Jackie', 'jackie123', 'jackie.alba@gmail.com', '4491848184', 'Col Miradores Calle Insurgentes #485', '1998-02-26'),
(6, 'Marlene', 'Del valle', 'Vallecillo', 'Marlen', 'marlen123', 'marlen.valle@gmail.com', '4491040360', 'Col Guerrera Calle Soldado #194', '1996-12-25'),
(7, 'Humbero', 'Palos', 'Espiricueta', 'Humbert', 'humber123', 'humbert.barca@hotmail.com', '4491848274', 'Col. Insurgentes Calle Vivero #184', '1997-08-13'),
(8, 'Vanesa', 'Felix', 'Moreno', 'Vane', 'vane123', 'vane_felix@hotmail.com', '4491848218', 'Col Alta Vista Calle 30 de Septiembre #194', '1995-06-18'),
(9, 'Tania', 'Moreno', 'Jimenez', 'Tania', 'tania123', 'tania_mor@hotmail.com', '4491749393', 'Col. Politecnica Calle Heroes #195', '1999-11-10'),
(10, 'Sabino', 'Santos', 'Reyes', 'Sabino', 'sabino123', 'sabino_santos@hotmail.com', '449184818', 'Col. Lomas Calles de la Ajedrez #695', '1998-12-21');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulo`
--
ALTER TABLE `articulo`
  ADD PRIMARY KEY (`id_articulo`),
  ADD KEY `id_diseño` (`id_diseño`),
  ADD KEY `articulo_marca` (`id_marca`),
  ADD KEY `id_oferta` (`id_oferta`),
  ADD KEY `id_imagen` (`id_imagen`),
  ADD KEY `id_talla` (`id_talla`);

--
-- Indices de la tabla `articulo_categoria`
--
ALTER TABLE `articulo_categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `articulo_visita`
--
ALTER TABLE `articulo_visita`
  ADD PRIMARY KEY (`id_visita`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_articulo` (`id_articulo`);

--
-- Indices de la tabla `calificaciones`
--
ALTER TABLE `calificaciones`
  ADD PRIMARY KEY (`id_calif`),
  ADD KEY `id_usuario` (`id_usuario`,`id_articulo`),
  ADD KEY `calif_art` (`id_articulo`);

--
-- Indices de la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD PRIMARY KEY (`id_total`),
  ADD KEY `carrito_articulo` (`id_articulo`);

--
-- Indices de la tabla `compra`
--
ALTER TABLE `compra`
  ADD PRIMARY KEY (`id_compra`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_articulo` (`id_articulo`),
  ADD KEY `id_total` (`id_total`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`id_empleado`);

--
-- Indices de la tabla `imagen`
--
ALTER TABLE `imagen`
  ADD PRIMARY KEY (`id_imagen`);

--
-- Indices de la tabla `lista_deseos`
--
ALTER TABLE `lista_deseos`
  ADD PRIMARY KEY (`id_listadeseos`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_articulo` (`id_articulo`);

--
-- Indices de la tabla `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`id_marca`);

--
-- Indices de la tabla `oferta`
--
ALTER TABLE `oferta`
  ADD PRIMARY KEY (`id_oferta`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id_pedido`),
  ADD KEY `pedido_usuario` (`id_articulo`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `talla`
--
ALTER TABLE `talla`
  ADD PRIMARY KEY (`id_talla`);

--
-- Indices de la tabla `tipo_empleado`
--
ALTER TABLE `tipo_empleado`
  ADD PRIMARY KEY (`id_tipo_empleado`),
  ADD KEY `id_empleado` (`id_empleado`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `compra`
--
ALTER TABLE `compra`
  MODIFY `id_compra` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `empleado`
--
ALTER TABLE `empleado`
  MODIFY `id_empleado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id_pedido` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `articulo`
--
ALTER TABLE `articulo`
  ADD CONSTRAINT `articulo_ibfk_1` FOREIGN KEY (`id_diseño`) REFERENCES `articulo_categoria` (`id_categoria`),
  ADD CONSTRAINT `articulo_imagen` FOREIGN KEY (`id_imagen`) REFERENCES `imagen` (`id_imagen`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `articulo_marca` FOREIGN KEY (`id_marca`) REFERENCES `marca` (`id_marca`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `articulo_oferta` FOREIGN KEY (`id_oferta`) REFERENCES `oferta` (`id_oferta`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `articulo_talla` FOREIGN KEY (`id_talla`) REFERENCES `talla` (`id_talla`);

--
-- Filtros para la tabla `articulo_visita`
--
ALTER TABLE `articulo_visita`
  ADD CONSTRAINT `articulo_visita_art` FOREIGN KEY (`id_articulo`) REFERENCES `articulo` (`id_articulo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `articulo_visita_us` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `calificaciones`
--
ALTER TABLE `calificaciones`
  ADD CONSTRAINT `calif_art` FOREIGN KEY (`id_articulo`) REFERENCES `articulo` (`id_articulo`),
  ADD CONSTRAINT `calif_us` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD CONSTRAINT `carrito_articulo` FOREIGN KEY (`id_articulo`) REFERENCES `articulo` (`id_articulo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `compra`
--
ALTER TABLE `compra`
  ADD CONSTRAINT `compra_articulo` FOREIGN KEY (`id_articulo`) REFERENCES `articulo` (`id_articulo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `compra_cantidad` FOREIGN KEY (`id_total`) REFERENCES `carrito` (`id_total`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `compra_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `imagen`
--
ALTER TABLE `imagen`
  ADD CONSTRAINT `imagen_ibfk_1` FOREIGN KEY (`id_imagen`) REFERENCES `articulo` (`id_articulo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `lista_deseos`
--
ALTER TABLE `lista_deseos`
  ADD CONSTRAINT `lista_deseos_art` FOREIGN KEY (`id_articulo`) REFERENCES `articulo` (`id_articulo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lista_deseos_us` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedido_articulo` FOREIGN KEY (`id_articulo`) REFERENCES `articulo` (`id_articulo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pedido_usuario` FOREIGN KEY (`id_articulo`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tipo_empleado`
--
ALTER TABLE `tipo_empleado`
  ADD CONSTRAINT `tipo_empleado` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`id_empleado`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
