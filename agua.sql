-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-08-2022 a las 05:51:24
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `agua`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contratos`
--

CREATE TABLE `contratos` (
  `id` int(11) NOT NULL,
  `contrato` int(50) NOT NULL,
  `numRegistro` int(59) NOT NULL,
  `fechaAlta` varchar(100) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `calle` varchar(100) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `manzana` int(50) NOT NULL,
  `numero` int(50) NOT NULL,
  `calle1` varchar(100) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `calle2` varchar(100) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `colonia` varchar(100) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `tarifa` varchar(100) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `tipo` varchar(100) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `cuota` varchar(100) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `diametro` varchar(100) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `ultFecha` varchar(100) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `ultImporte` varchar(100) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `ultRecibo` varchar(100) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `meses` varchar(100) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `saldo` varchar(100) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `estado` varchar(100) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `ultMes` varchar(100) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `fechaMovil` varchar(100) COLLATE utf8mb4_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cs`
--

CREATE TABLE `cs` (
  `id` int(11) NOT NULL,
  `fecha` varchar(30) COLLATE utf8mb4_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `cs`
--

INSERT INTO `cs` (`id`, `fecha`) VALUES
(1, '21-08-2022'),
(2, '01-09-2022'),
(3, '28-08-2022');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `general`
--

CREATE TABLE `general` (
  `id` int(11) NOT NULL,
  `nombre` varchar(80) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `apellido` varchar(100) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `calle` varchar(100) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `nur` int(50) NOT NULL,
  `fecha` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `no_recibo` int(50) NOT NULL,
  `paidMes` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `lastMes` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `cuota` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `cobranza` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `recargos` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `rezagos` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `operaciones` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `anticipos` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `varios` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `condona` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `importe` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `general`
--

INSERT INTO `general` (`id`, `nombre`, `apellido`, `calle`, `nur`, `fecha`, `no_recibo`, `paidMes`, `lastMes`, `cuota`, `cobranza`, `recargos`, `rezagos`, `operaciones`, `anticipos`, `varios`, `condona`, `importe`) VALUES
(1, 'James', 'Galeana', '', 10001, '28-08-2022', 10001, 'Enero-Junio', '06-2021', '80', '70', '200', '200', '100', '200', '100', '100', '100'),
(2, 'Sebas', 'Loreto', '', 10002, '28-08-2022', 10002, 'Enero-Junio', '06-2021', '80', '70', '200', '200', '100', '200', '100', '100', '100'),
(3, 'Brenda', 'Axoquen', '', 10003, '28-08-2022', 10003, 'Enero-Junio', '06-2021', '80', '70', '200', '200', '100', '200', '100', '100', '100'),
(4, 'Ana', 'Miguel Hidalgo', '', 10004, '28-08-2022', 10004, 'Enero-Junio', '06-2021', '80', '70', '200', '200', '100', '200', '100', '100', '100'),
(5, 'Camila', 'Cehuan', '', 10005, '28-08-2022', 10005, 'Enero-Junio', '06-2021', '80', '70', '200', '200', '100', '200', '100', '100', '100'),
(6, 'Simon', 'Orgnizacion Popular', '', 10006, '28-08-2022', 10006, 'Enero-Junio', '06-2021', '80', '70', '200', '200', '100', '200', '100', '100', '100'),
(7, 'Perla', 'Ricardo Perez', '', 10007, '28-08-2022', 10007, 'Enero-Junio', '06-2021', '80', '70', '200', '200', '100', '200', '100', '100', '100'),
(8, 'Alfredo', 'Benito Juarez', '', 10008, '28-08-2022', 10008, 'Enero-Junio', '06-2021', '80', '70', '200', '200', '100', '200', '100', '100', '100'),
(9, 'Mariana', 'Popocatepetl', '', 10009, '28-08-2022', 10009, 'Enero-Junio', '06-2021', '80', '70', '200', '200', '100', '200', '100', '100', '100'),
(10, 'Stefanny', 'Revolucion', '', 10010, '28-08-2022', 10010, 'Enero-Junio', '06-2021', '80', '70', '200', '200', '100', '200', '100', '100', '100'),
(11, 'Jose', 'Francisco Villa', '', 10011, '28-08-2022', 10011, 'Enero-Junio', '06-2021', '80', '70', '200', '200', '100', '200', '100', '100', '100'),
(12, 'Joana', 'Matamoros', '', 10012, '28-08-2022', 10012, 'Enero-Junio', '06-2021', '80', '70', '200', '200', '100', '200', '100', '100', '100'),
(13, 'Brian', 'Slobotsky', '', 10013, '28-08-2022', 10013, 'Enero-Junio', '06-2021', '80', '70', '200', '200', '100', '200', '100', '100', '100'),
(14, 'Undefined', 'Arenal', '', 10014, '28-08-2022', 10014, 'Enero-Junio', '06-2021', '80', '70', '200', '200', '100', '200', '100', '100', '100');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `setcs`
--

CREATE TABLE `setcs` (
  `id` int(11) NOT NULL,
  `sen` longtext COLLATE utf8mb4_spanish2_ci NOT NULL,
  `fecha` varchar(100) COLLATE utf8mb4_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `setcs`
--

INSERT INTO `setcs` (`id`, `sen`, `fecha`) VALUES
(1, 'INSERT INTO `cs` (`id`, `user`, `password`, `name`, `login`) VALUES _1,\"21232f297a57a5a743894a0e4a801fc3\",\"827ccb0eea8a706c4c34a16891f84e7b\",\"Brian\",\"admin.-.12345\"_,_2,\"24c9e15e52afc47c225b757e7bee1f9d\",\"81dc9bdb52d04dc20036dbd8313ed055\",\"Joana\",\"user1.-.1234\"_,_3,\"7e58d63b60197ceb55a1c487989a3720\",\"81dc9bdb52d04dc20036dbd8313ed055\",\"Geraldin\",\"user2.-.1234\"_,_4,\"92877af70a45fd6a2ed7fe81e1236b78\",\"81dc9bdb52d04dc20036dbd8313ed055\",\"Sofia\",\"user3.-.1234\"_,_5,\"3f02ebe3d7929b091e3d8ccfde2f3bc6\",\"$2y$10$5.aqlS/lKqqzddAIgGlXI.pCkiCadMtDIns0IuvEvN9pwpbqlVYdy\",\"Wendy\",\"user4.-.1234\"_,_6,\"0a791842f52a0acfbb3a783378c066b8\",\"$2y$10$aW3f8kx4J.CGxCbT7z7eleoVN4Kf01gdZjm3neEjzFdhPf6/9GVN6\",\"Ale\",\"user5.-.1234\"_,_7,\"affec3b64cf90492377a8114c86fc093\",\"$2y$10$2CPrLzdD.6CzqNhrJBoU0eyQOOTDoP6MsEKZ0k25qyEP6AK8cY2R.\",\"Odette\",\"user6.-.1234\"_,_8,\"3e0469fb134991f8f75a2760e409c6ed\",\"$2y$10$DWlIUnjVB9LIo7Z64t898OUcGYdrbOYlb4n2c5TCn18lYHDwBxP9S\",\"Plata\",\"user7.-.1234\"_;', '21-8-2022'),
(2, 'INSERT INTO `cs` (`id`, `user`, `password`, `name`, `login`) VALUES (1,\"21232f297a57a5a743894a0e4a801fc3\",\"827ccb0eea8a706c4c34a16891f84e7b\",\"Brian\",\"admin.-.12345\"),(2,\"24c9e15e52afc47c225b757e7bee1f9d\",\"81dc9bdb52d04dc20036dbd8313ed055\",\"Joana\",\"user1.-.1234\"),(3,\"7e58d63b60197ceb55a1c487989a3720\",\"81dc9bdb52d04dc20036dbd8313ed055\",\"Geraldin\",\"user2.-.1234\"),(4,\"92877af70a45fd6a2ed7fe81e1236b78\",\"81dc9bdb52d04dc20036dbd8313ed055\",\"Sofia\",\"user3.-.1234\"),(5,\"3f02ebe3d7929b091e3d8ccfde2f3bc6\",\"$2y$10$5.aqlS/lKqqzddAIgGlXI.pCkiCadMtDIns0IuvEvN9pwpbqlVYdy\",\"Wendy\",\"user4.-.1234\"),(6,\"0a791842f52a0acfbb3a783378c066b8\",\"$2y$10$aW3f8kx4J.CGxCbT7z7eleoVN4Kf01gdZjm3neEjzFdhPf6/9GVN6\",\"Ale\",\"user5.-.1234\"),(7,\"affec3b64cf90492377a8114c86fc093\",\"$2y$10$2CPrLzdD.6CzqNhrJBoU0eyQOOTDoP6MsEKZ0k25qyEP6AK8cY2R.\",\"Odette\",\"user6.-.1234\"),(8,\"3e0469fb134991f8f75a2760e409c6ed\",\"$2y$10$DWlIUnjVB9LIo7Z64t898OUcGYdrbOYlb4n2c5TCn18lYHDwBxP9S\",\"Plata\",\"user7.-.1234\");', '21-08-2022'),
(3, 'INSERT INTO `cs` (`id`, `user`, `password`, `name`, `login`) VALUES (1,\"21232f297a57a5a743894a0e4a801fc3\",\"827ccb0eea8a706c4c34a16891f84e7b\",\"Brian\",\"admin.-.12345\"),(2,\"24c9e15e52afc47c225b757e7bee1f9d\",\"81dc9bdb52d04dc20036dbd8313ed055\",\"Joana\",\"user1.-.1234\"),(3,\"7e58d63b60197ceb55a1c487989a3720\",\"81dc9bdb52d04dc20036dbd8313ed055\",\"Geraldin\",\"user2.-.1234\"),(4,\"92877af70a45fd6a2ed7fe81e1236b78\",\"81dc9bdb52d04dc20036dbd8313ed055\",\"Sofia\",\"user3.-.1234\"),(5,\"3f02ebe3d7929b091e3d8ccfde2f3bc6\",\"$2y$10$5.aqlS/lKqqzddAIgGlXI.pCkiCadMtDIns0IuvEvN9pwpbqlVYdy\",\"Wendy\",\"user4.-.1234\"),(6,\"0a791842f52a0acfbb3a783378c066b8\",\"$2y$10$aW3f8kx4J.CGxCbT7z7eleoVN4Kf01gdZjm3neEjzFdhPf6/9GVN6\",\"Ale\",\"user5.-.1234\"),(7,\"affec3b64cf90492377a8114c86fc093\",\"$2y$10$2CPrLzdD.6CzqNhrJBoU0eyQOOTDoP6MsEKZ0k25qyEP6AK8cY2R.\",\"Odette\",\"user6.-.1234\"),(8,\"3e0469fb134991f8f75a2760e409c6ed\",\"$2y$10$DWlIUnjVB9LIo7Z64t898OUcGYdrbOYlb4n2c5TCn18lYHDwBxP9S\",\"Plata\",\"user7.-.1234\");', '21-08-2022'),
(4, 'INSERT INTO `cs` (`id`, `user`, `password`, `name`, `login`) VALUES (1,\"21232f297a57a5a743894a0e4a801fc3\",\"827ccb0eea8a706c4c34a16891f84e7b\",\"Brian\",\"admin.-.12345\"),(2,\"24c9e15e52afc47c225b757e7bee1f9d\",\"81dc9bdb52d04dc20036dbd8313ed055\",\"Joana\",\"user1.-.1234\"),(3,\"7e58d63b60197ceb55a1c487989a3720\",\"81dc9bdb52d04dc20036dbd8313ed055\",\"Geraldin\",\"user2.-.1234\"),(4,\"92877af70a45fd6a2ed7fe81e1236b78\",\"81dc9bdb52d04dc20036dbd8313ed055\",\"Sofia\",\"user3.-.1234\"),(5,\"3f02ebe3d7929b091e3d8ccfde2f3bc6\",\"$2y$10$5.aqlS/lKqqzddAIgGlXI.pCkiCadMtDIns0IuvEvN9pwpbqlVYdy\",\"Wendy\",\"user4.-.1234\"),(6,\"0a791842f52a0acfbb3a783378c066b8\",\"$2y$10$aW3f8kx4J.CGxCbT7z7eleoVN4Kf01gdZjm3neEjzFdhPf6/9GVN6\",\"Ale\",\"user5.-.1234\"),(7,\"affec3b64cf90492377a8114c86fc093\",\"$2y$10$2CPrLzdD.6CzqNhrJBoU0eyQOOTDoP6MsEKZ0k25qyEP6AK8cY2R.\",\"Odette\",\"user6.-.1234\"),(8,\"3e0469fb134991f8f75a2760e409c6ed\",\"$2y$10$DWlIUnjVB9LIo7Z64t898OUcGYdrbOYlb4n2c5TCn18lYHDwBxP9S\",\"Plata\",\"user7.-.1234\");', '21-08-2022'),
(5, 'INSERT INTO `cs` (`id`, `user`, `password`, `name`, `login`) VALUES (1,\"21232f297a57a5a743894a0e4a801fc3\",\"827ccb0eea8a706c4c34a16891f84e7b\",\"Brian\",\"admin.-.12345\"),(2,\"24c9e15e52afc47c225b757e7bee1f9d\",\"81dc9bdb52d04dc20036dbd8313ed055\",\"Joana\",\"user1.-.1234\"),(3,\"7e58d63b60197ceb55a1c487989a3720\",\"81dc9bdb52d04dc20036dbd8313ed055\",\"Geraldin\",\"user2.-.1234\"),(4,\"92877af70a45fd6a2ed7fe81e1236b78\",\"81dc9bdb52d04dc20036dbd8313ed055\",\"Sofia\",\"user3.-.1234\"),(5,\"3f02ebe3d7929b091e3d8ccfde2f3bc6\",\"$2y$10$5.aqlS/lKqqzddAIgGlXI.pCkiCadMtDIns0IuvEvN9pwpbqlVYdy\",\"Wendy\",\"user4.-.1234\"),(6,\"0a791842f52a0acfbb3a783378c066b8\",\"$2y$10$aW3f8kx4J.CGxCbT7z7eleoVN4Kf01gdZjm3neEjzFdhPf6/9GVN6\",\"Ale\",\"user5.-.1234\"),(7,\"affec3b64cf90492377a8114c86fc093\",\"$2y$10$2CPrLzdD.6CzqNhrJBoU0eyQOOTDoP6MsEKZ0k25qyEP6AK8cY2R.\",\"Odette\",\"user6.-.1234\"),(8,\"3e0469fb134991f8f75a2760e409c6ed\",\"$2y$10$DWlIUnjVB9LIo7Z64t898OUcGYdrbOYlb4n2c5TCn18lYHDwBxP9S\",\"Plata\",\"user7.-.1234\");', '21-08-2022'),
(6, 'INSERT INTO `cs` (`id`, `user`, `password`, `name`, `login`) VALUES (1,\"21232f297a57a5a743894a0e4a801fc3\",\"827ccb0eea8a706c4c34a16891f84e7b\",\"Brian\",\"admin.-.12345\"),(2,\"24c9e15e52afc47c225b757e7bee1f9d\",\"81dc9bdb52d04dc20036dbd8313ed055\",\"Joana\",\"user1.-.1234\"),(3,\"7e58d63b60197ceb55a1c487989a3720\",\"81dc9bdb52d04dc20036dbd8313ed055\",\"Geraldin\",\"user2.-.1234\"),(4,\"92877af70a45fd6a2ed7fe81e1236b78\",\"81dc9bdb52d04dc20036dbd8313ed055\",\"Sofia\",\"user3.-.1234\"),(5,\"3f02ebe3d7929b091e3d8ccfde2f3bc6\",\"$2y$10$5.aqlS/lKqqzddAIgGlXI.pCkiCadMtDIns0IuvEvN9pwpbqlVYdy\",\"Wendy\",\"user4.-.1234\"),(6,\"0a791842f52a0acfbb3a783378c066b8\",\"$2y$10$aW3f8kx4J.CGxCbT7z7eleoVN4Kf01gdZjm3neEjzFdhPf6/9GVN6\",\"Ale\",\"user5.-.1234\"),(7,\"affec3b64cf90492377a8114c86fc093\",\"$2y$10$2CPrLzdD.6CzqNhrJBoU0eyQOOTDoP6MsEKZ0k25qyEP6AK8cY2R.\",\"Odette\",\"user6.-.1234\"),(8,\"3e0469fb134991f8f75a2760e409c6ed\",\"$2y$10$DWlIUnjVB9LIo7Z64t898OUcGYdrbOYlb4n2c5TCn18lYHDwBxP9S\",\"Plata\",\"user7.-.1234\");', '22-08-2022'),
(7, 'INSERT INTO `cs` (`id`, `user`, `password`, `name`, `login`) VALUES (1,\"21232f297a57a5a743894a0e4a801fc3\",\"827ccb0eea8a706c4c34a16891f84e7b\",\"Brian\",\"admin.-.12345\"),(2,\"24c9e15e52afc47c225b757e7bee1f9d\",\"81dc9bdb52d04dc20036dbd8313ed055\",\"Joana\",\"user1.-.1234\"),(3,\"7e58d63b60197ceb55a1c487989a3720\",\"81dc9bdb52d04dc20036dbd8313ed055\",\"Geraldin\",\"user2.-.1234\"),(4,\"92877af70a45fd6a2ed7fe81e1236b78\",\"81dc9bdb52d04dc20036dbd8313ed055\",\"Sofia\",\"user3.-.1234\"),(5,\"3f02ebe3d7929b091e3d8ccfde2f3bc6\",\"$2y$10$5.aqlS/lKqqzddAIgGlXI.pCkiCadMtDIns0IuvEvN9pwpbqlVYdy\",\"Wendy\",\"user4.-.1234\"),(6,\"0a791842f52a0acfbb3a783378c066b8\",\"$2y$10$aW3f8kx4J.CGxCbT7z7eleoVN4Kf01gdZjm3neEjzFdhPf6/9GVN6\",\"Ale\",\"user5.-.1234\"),(7,\"affec3b64cf90492377a8114c86fc093\",\"$2y$10$2CPrLzdD.6CzqNhrJBoU0eyQOOTDoP6MsEKZ0k25qyEP6AK8cY2R.\",\"Odette\",\"user6.-.1234\"),(8,\"3e0469fb134991f8f75a2760e409c6ed\",\"$2y$10$DWlIUnjVB9LIo7Z64t898OUcGYdrbOYlb4n2c5TCn18lYHDwBxP9S\",\"Plata\",\"user7.-.1234\");', '27-08-2022'),
(8, 'INSERT INTO `cs` (`id`, `user`, `password`, `name`, `login`) VALUES (1,\"83eebac535d14f791f6ee4dbefe689dc\",\"25d55ad283aa400af464c76d713c07ad\",\"Super Admin\",\"superAdmin.-.12345678\"),(2,\"21232f297a57a5a743894a0e4a801fc3\",\"827ccb0eea8a706c4c34a16891f84e7b\",\"Administrador\",\"admin.-.12345\"),(3,\"7e58d63b60197ceb55a1c487989a3720\",\"81dc9bdb52d04dc20036dbd8313ed055\",\"Geraldin\",\"user2.-.1234\"),(4,\"92877af70a45fd6a2ed7fe81e1236b78\",\"81dc9bdb52d04dc20036dbd8313ed055\",\"Joana\",\"user3.-.1234\"),(5,\"3f02ebe3d7929b091e3d8ccfde2f3bc6\",\"$2y$10$5.aqlS/lKqqzddAIgGlXI.pCkiCadMtDIns0IuvEvN9pwpbqlVYdy\",\"Wendy\",\"user4.-.1234\"),(6,\"0a791842f52a0acfbb3a783378c066b8\",\"$2y$10$aW3f8kx4J.CGxCbT7z7eleoVN4Kf01gdZjm3neEjzFdhPf6/9GVN6\",\"Ale\",\"user5.-.1234\"),(7,\"affec3b64cf90492377a8114c86fc093\",\"$2y$10$2CPrLzdD.6CzqNhrJBoU0eyQOOTDoP6MsEKZ0k25qyEP6AK8cY2R.\",\"Odette\",\"user6.-.1234\"),(8,\"3e0469fb134991f8f75a2760e409c6ed\",\"$2y$10$DWlIUnjVB9LIo7Z64t898OUcGYdrbOYlb4n2c5TCn18lYHDwBxP9S\",\"Plata\",\"user7.-.1234\");', '27-08-2022'),
(9, 'INSERT INTO `cs` (`id`, `user`, `password`, `name`, `login`) VALUES (1,\"83eebac535d14f791f6ee4dbefe689dc\",\"25d55ad283aa400af464c76d713c07ad\",\"Super Admin\",\"superAdmin.-.12345678\"),(2,\"21232f297a57a5a743894a0e4a801fc3\",\"827ccb0eea8a706c4c34a16891f84e7b\",\"Administrador\",\"admin.-.12345\"),(3,\"7e58d63b60197ceb55a1c487989a3720\",\"81dc9bdb52d04dc20036dbd8313ed055\",\"Geraldin\",\"user2.-.1234\"),(4,\"92877af70a45fd6a2ed7fe81e1236b78\",\"81dc9bdb52d04dc20036dbd8313ed055\",\"Joana\",\"user3.-.1234\"),(5,\"3f02ebe3d7929b091e3d8ccfde2f3bc6\",\"$2y$10$5.aqlS/lKqqzddAIgGlXI.pCkiCadMtDIns0IuvEvN9pwpbqlVYdy\",\"Wendy\",\"user4.-.1234\"),(6,\"0a791842f52a0acfbb3a783378c066b8\",\"$2y$10$aW3f8kx4J.CGxCbT7z7eleoVN4Kf01gdZjm3neEjzFdhPf6/9GVN6\",\"Ale\",\"user5.-.1234\"),(7,\"affec3b64cf90492377a8114c86fc093\",\"$2y$10$2CPrLzdD.6CzqNhrJBoU0eyQOOTDoP6MsEKZ0k25qyEP6AK8cY2R.\",\"Odette\",\"user6.-.1234\"),(8,\"3e0469fb134991f8f75a2760e409c6ed\",\"$2y$10$DWlIUnjVB9LIo7Z64t898OUcGYdrbOYlb4n2c5TCn18lYHDwBxP9S\",\"Plata\",\"user7.-.1234\");', '27-08-2022'),
(10, 'INSERT INTO `cs` (`id`, `user`, `password`, `name`, `login`) VALUES (1,\"83eebac535d14f791f6ee4dbefe689dc\",\"25d55ad283aa400af464c76d713c07ad\",\"Super Admin\",\"superAdmin.-.12345678\"),(2,\"21232f297a57a5a743894a0e4a801fc3\",\"827ccb0eea8a706c4c34a16891f84e7b\",\"Administrador\",\"admin.-.12345\"),(3,\"7e58d63b60197ceb55a1c487989a3720\",\"81dc9bdb52d04dc20036dbd8313ed055\",\"Geraldin\",\"user2.-.1234\"),(4,\"92877af70a45fd6a2ed7fe81e1236b78\",\"81dc9bdb52d04dc20036dbd8313ed055\",\"Joana\",\"user3.-.1234\"),(5,\"3f02ebe3d7929b091e3d8ccfde2f3bc6\",\"$2y$10$5.aqlS/lKqqzddAIgGlXI.pCkiCadMtDIns0IuvEvN9pwpbqlVYdy\",\"Wendy\",\"user4.-.1234\"),(6,\"0a791842f52a0acfbb3a783378c066b8\",\"$2y$10$aW3f8kx4J.CGxCbT7z7eleoVN4Kf01gdZjm3neEjzFdhPf6/9GVN6\",\"Ale\",\"user5.-.1234\"),(7,\"affec3b64cf90492377a8114c86fc093\",\"$2y$10$2CPrLzdD.6CzqNhrJBoU0eyQOOTDoP6MsEKZ0k25qyEP6AK8cY2R.\",\"Odette\",\"user6.-.1234\"),(8,\"3e0469fb134991f8f75a2760e409c6ed\",\"$2y$10$DWlIUnjVB9LIo7Z64t898OUcGYdrbOYlb4n2c5TCn18lYHDwBxP9S\",\"Plata\",\"user7.-.1234\");', '27-08-2022'),
(11, 'INSERT INTO `cs` (`id`, `user`, `password`, `name`, `login`) VALUES (1,\"83eebac535d14f791f6ee4dbefe689dc\",\"25d55ad283aa400af464c76d713c07ad\",\"Super Admin\",\"superAdmin.-.12345678\"),(2,\"21232f297a57a5a743894a0e4a801fc3\",\"827ccb0eea8a706c4c34a16891f84e7b\",\"Administrador\",\"admin.-.12345\"),(3,\"7e58d63b60197ceb55a1c487989a3720\",\"81dc9bdb52d04dc20036dbd8313ed055\",\"Geraldin\",\"user2.-.1234\"),(4,\"92877af70a45fd6a2ed7fe81e1236b78\",\"81dc9bdb52d04dc20036dbd8313ed055\",\"Joana\",\"user3.-.1234\"),(5,\"3f02ebe3d7929b091e3d8ccfde2f3bc6\",\"$2y$10$5.aqlS/lKqqzddAIgGlXI.pCkiCadMtDIns0IuvEvN9pwpbqlVYdy\",\"Wendy\",\"user4.-.1234\"),(6,\"0a791842f52a0acfbb3a783378c066b8\",\"$2y$10$aW3f8kx4J.CGxCbT7z7eleoVN4Kf01gdZjm3neEjzFdhPf6/9GVN6\",\"Ale\",\"user5.-.1234\"),(7,\"affec3b64cf90492377a8114c86fc093\",\"$2y$10$2CPrLzdD.6CzqNhrJBoU0eyQOOTDoP6MsEKZ0k25qyEP6AK8cY2R.\",\"Odette\",\"user6.-.1234\"),(8,\"3e0469fb134991f8f75a2760e409c6ed\",\"$2y$10$DWlIUnjVB9LIo7Z64t898OUcGYdrbOYlb4n2c5TCn18lYHDwBxP9S\",\"Plata\",\"user7.-.1234\");', '27-08-2022'),
(12, 'INSERT INTO `cs` (`id`, `user`, `password`, `name`, `login`) VALUES (1,\"83eebac535d14f791f6ee4dbefe689dc\",\"25d55ad283aa400af464c76d713c07ad\",\"Super Admin\",\"superAdmin.-.12345678\"),(2,\"21232f297a57a5a743894a0e4a801fc3\",\"827ccb0eea8a706c4c34a16891f84e7b\",\"Administrador\",\"admin.-.12345\"),(3,\"7e58d63b60197ceb55a1c487989a3720\",\"81dc9bdb52d04dc20036dbd8313ed055\",\"Geraldin\",\"user2.-.1234\"),(4,\"92877af70a45fd6a2ed7fe81e1236b78\",\"81dc9bdb52d04dc20036dbd8313ed055\",\"Joana\",\"user3.-.1234\"),(5,\"3f02ebe3d7929b091e3d8ccfde2f3bc6\",\"$2y$10$5.aqlS/lKqqzddAIgGlXI.pCkiCadMtDIns0IuvEvN9pwpbqlVYdy\",\"Wendy\",\"user4.-.1234\"),(6,\"0a791842f52a0acfbb3a783378c066b8\",\"$2y$10$aW3f8kx4J.CGxCbT7z7eleoVN4Kf01gdZjm3neEjzFdhPf6/9GVN6\",\"Ale\",\"user5.-.1234\"),(7,\"affec3b64cf90492377a8114c86fc093\",\"$2y$10$2CPrLzdD.6CzqNhrJBoU0eyQOOTDoP6MsEKZ0k25qyEP6AK8cY2R.\",\"Odette\",\"user6.-.1234\"),(8,\"3e0469fb134991f8f75a2760e409c6ed\",\"$2y$10$DWlIUnjVB9LIo7Z64t898OUcGYdrbOYlb4n2c5TCn18lYHDwBxP9S\",\"Plata\",\"user7.-.1234\");', '27-08-2022'),
(13, 'INSERT INTO `cs` (`id`, `user`, `password`, `name`, `login`) VALUES (1,\"83eebac535d14f791f6ee4dbefe689dc\",\"25d55ad283aa400af464c76d713c07ad\",\"Super Admin\",\"superAdmin.-.12345678\"),(2,\"21232f297a57a5a743894a0e4a801fc3\",\"827ccb0eea8a706c4c34a16891f84e7b\",\"Administrador\",\"admin.-.12345\"),(3,\"7e58d63b60197ceb55a1c487989a3720\",\"81dc9bdb52d04dc20036dbd8313ed055\",\"Geraldin\",\"user2.-.1234\"),(4,\"92877af70a45fd6a2ed7fe81e1236b78\",\"81dc9bdb52d04dc20036dbd8313ed055\",\"Joana\",\"user3.-.1234\"),(5,\"3f02ebe3d7929b091e3d8ccfde2f3bc6\",\"$2y$10$5.aqlS/lKqqzddAIgGlXI.pCkiCadMtDIns0IuvEvN9pwpbqlVYdy\",\"Wendy\",\"user4.-.1234\"),(6,\"0a791842f52a0acfbb3a783378c066b8\",\"$2y$10$aW3f8kx4J.CGxCbT7z7eleoVN4Kf01gdZjm3neEjzFdhPf6/9GVN6\",\"Ale\",\"user5.-.1234\"),(7,\"affec3b64cf90492377a8114c86fc093\",\"$2y$10$2CPrLzdD.6CzqNhrJBoU0eyQOOTDoP6MsEKZ0k25qyEP6AK8cY2R.\",\"Odette\",\"user6.-.1234\"),(8,\"3e0469fb134991f8f75a2760e409c6ed\",\"$2y$10$DWlIUnjVB9LIo7Z64t898OUcGYdrbOYlb4n2c5TCn18lYHDwBxP9S\",\"Plata\",\"user7.-.1234\");', '27-08-2022'),
(14, 'INSERT INTO `cs` (`id`, `user`, `password`, `name`, `login`) VALUES (1,\"83eebac535d14f791f6ee4dbefe689dc\",\"25d55ad283aa400af464c76d713c07ad\",\"Super Admin\",\"superAdmin.-.12345678\"),(2,\"21232f297a57a5a743894a0e4a801fc3\",\"827ccb0eea8a706c4c34a16891f84e7b\",\"Administrador\",\"admin.-.12345\"),(3,\"7e58d63b60197ceb55a1c487989a3720\",\"81dc9bdb52d04dc20036dbd8313ed055\",\"Geraldin\",\"user2.-.1234\"),(4,\"92877af70a45fd6a2ed7fe81e1236b78\",\"81dc9bdb52d04dc20036dbd8313ed055\",\"Joana\",\"user3.-.1234\"),(5,\"3f02ebe3d7929b091e3d8ccfde2f3bc6\",\"$2y$10$5.aqlS/lKqqzddAIgGlXI.pCkiCadMtDIns0IuvEvN9pwpbqlVYdy\",\"Wendy\",\"user4.-.1234\"),(6,\"0a791842f52a0acfbb3a783378c066b8\",\"$2y$10$aW3f8kx4J.CGxCbT7z7eleoVN4Kf01gdZjm3neEjzFdhPf6/9GVN6\",\"Ale\",\"user5.-.1234\"),(7,\"affec3b64cf90492377a8114c86fc093\",\"$2y$10$2CPrLzdD.6CzqNhrJBoU0eyQOOTDoP6MsEKZ0k25qyEP6AK8cY2R.\",\"Odette\",\"user6.-.1234\"),(8,\"3e0469fb134991f8f75a2760e409c6ed\",\"$2y$10$DWlIUnjVB9LIo7Z64t898OUcGYdrbOYlb4n2c5TCn18lYHDwBxP9S\",\"Plata\",\"user7.-.1234\");', '27-08-2022'),
(15, 'INSERT INTO `cs` (`id`, `user`, `password`, `name`, `login`) VALUES (1,\"83eebac535d14f791f6ee4dbefe689dc\",\"25d55ad283aa400af464c76d713c07ad\",\"Super Admin\",\"superAdmin.-.12345678\"),(2,\"21232f297a57a5a743894a0e4a801fc3\",\"827ccb0eea8a706c4c34a16891f84e7b\",\"Administrador\",\"admin.-.12345\"),(3,\"7e58d63b60197ceb55a1c487989a3720\",\"81dc9bdb52d04dc20036dbd8313ed055\",\"Geraldin\",\"user2.-.1234\"),(4,\"92877af70a45fd6a2ed7fe81e1236b78\",\"81dc9bdb52d04dc20036dbd8313ed055\",\"Joana\",\"user3.-.1234\"),(5,\"3f02ebe3d7929b091e3d8ccfde2f3bc6\",\"$2y$10$5.aqlS/lKqqzddAIgGlXI.pCkiCadMtDIns0IuvEvN9pwpbqlVYdy\",\"Wendy\",\"user4.-.1234\"),(6,\"0a791842f52a0acfbb3a783378c066b8\",\"$2y$10$aW3f8kx4J.CGxCbT7z7eleoVN4Kf01gdZjm3neEjzFdhPf6/9GVN6\",\"Ale\",\"user5.-.1234\"),(7,\"affec3b64cf90492377a8114c86fc093\",\"$2y$10$2CPrLzdD.6CzqNhrJBoU0eyQOOTDoP6MsEKZ0k25qyEP6AK8cY2R.\",\"Odette\",\"user6.-.1234\"),(8,\"3e0469fb134991f8f75a2760e409c6ed\",\"$2y$10$DWlIUnjVB9LIo7Z64t898OUcGYdrbOYlb4n2c5TCn18lYHDwBxP9S\",\"Plata\",\"user7.-.1234\");', '27-08-2022'),
(16, 'INSERT INTO `cs` (`id`, `user`, `password`, `name`, `login`) VALUES (1,\"83eebac535d14f791f6ee4dbefe689dc\",\"25d55ad283aa400af464c76d713c07ad\",\"Super Admin\",\"superAdmin.-.12345678\"),(2,\"21232f297a57a5a743894a0e4a801fc3\",\"827ccb0eea8a706c4c34a16891f84e7b\",\"Administrador\",\"admin.-.12345\"),(3,\"7e58d63b60197ceb55a1c487989a3720\",\"81dc9bdb52d04dc20036dbd8313ed055\",\"Geraldin\",\"user2.-.1234\"),(4,\"92877af70a45fd6a2ed7fe81e1236b78\",\"81dc9bdb52d04dc20036dbd8313ed055\",\"Joana\",\"user3.-.1234\"),(5,\"3f02ebe3d7929b091e3d8ccfde2f3bc6\",\"$2y$10$5.aqlS/lKqqzddAIgGlXI.pCkiCadMtDIns0IuvEvN9pwpbqlVYdy\",\"Wendy\",\"user4.-.1234\"),(6,\"0a791842f52a0acfbb3a783378c066b8\",\"$2y$10$aW3f8kx4J.CGxCbT7z7eleoVN4Kf01gdZjm3neEjzFdhPf6/9GVN6\",\"Ale\",\"user5.-.1234\"),(7,\"affec3b64cf90492377a8114c86fc093\",\"$2y$10$2CPrLzdD.6CzqNhrJBoU0eyQOOTDoP6MsEKZ0k25qyEP6AK8cY2R.\",\"Odette\",\"user6.-.1234\"),(8,\"3e0469fb134991f8f75a2760e409c6ed\",\"$2y$10$DWlIUnjVB9LIo7Z64t898OUcGYdrbOYlb4n2c5TCn18lYHDwBxP9S\",\"Plata\",\"user7.-.1234\");', '27-08-2022'),
(17, 'INSERT INTO `cs` (`id`, `user`, `password`, `name`, `login`) VALUES (1,\"83eebac535d14f791f6ee4dbefe689dc\",\"25d55ad283aa400af464c76d713c07ad\",\"Super Admin\",\"superAdmin.-.12345678\"),(2,\"21232f297a57a5a743894a0e4a801fc3\",\"827ccb0eea8a706c4c34a16891f84e7b\",\"Administrador\",\"admin.-.12345\"),(3,\"7e58d63b60197ceb55a1c487989a3720\",\"81dc9bdb52d04dc20036dbd8313ed055\",\"Geraldin\",\"user2.-.1234\"),(4,\"92877af70a45fd6a2ed7fe81e1236b78\",\"81dc9bdb52d04dc20036dbd8313ed055\",\"Joana\",\"user3.-.1234\"),(5,\"3f02ebe3d7929b091e3d8ccfde2f3bc6\",\"$2y$10$5.aqlS/lKqqzddAIgGlXI.pCkiCadMtDIns0IuvEvN9pwpbqlVYdy\",\"Wendy\",\"user4.-.1234\"),(6,\"0a791842f52a0acfbb3a783378c066b8\",\"$2y$10$aW3f8kx4J.CGxCbT7z7eleoVN4Kf01gdZjm3neEjzFdhPf6/9GVN6\",\"Ale\",\"user5.-.1234\"),(7,\"affec3b64cf90492377a8114c86fc093\",\"$2y$10$2CPrLzdD.6CzqNhrJBoU0eyQOOTDoP6MsEKZ0k25qyEP6AK8cY2R.\",\"Odette\",\"user6.-.1234\"),(8,\"3e0469fb134991f8f75a2760e409c6ed\",\"$2y$10$DWlIUnjVB9LIo7Z64t898OUcGYdrbOYlb4n2c5TCn18lYHDwBxP9S\",\"Plata\",\"user7.-.1234\");', '27-08-2022'),
(18, 'INSERT INTO `cs` (`id`, `user`, `password`, `name`, `login`) VALUES (1,\"83eebac535d14f791f6ee4dbefe689dc\",\"25d55ad283aa400af464c76d713c07ad\",\"Super Admin\",\"superAdmin.-.12345678\"),(2,\"21232f297a57a5a743894a0e4a801fc3\",\"827ccb0eea8a706c4c34a16891f84e7b\",\"Administrador\",\"admin.-.12345\"),(3,\"7e58d63b60197ceb55a1c487989a3720\",\"81dc9bdb52d04dc20036dbd8313ed055\",\"Geraldin\",\"user2.-.1234\"),(4,\"92877af70a45fd6a2ed7fe81e1236b78\",\"81dc9bdb52d04dc20036dbd8313ed055\",\"Joana\",\"user3.-.1234\"),(5,\"3f02ebe3d7929b091e3d8ccfde2f3bc6\",\"$2y$10$5.aqlS/lKqqzddAIgGlXI.pCkiCadMtDIns0IuvEvN9pwpbqlVYdy\",\"Wendy\",\"user4.-.1234\"),(6,\"0a791842f52a0acfbb3a783378c066b8\",\"$2y$10$aW3f8kx4J.CGxCbT7z7eleoVN4Kf01gdZjm3neEjzFdhPf6/9GVN6\",\"Ale\",\"user5.-.1234\"),(7,\"affec3b64cf90492377a8114c86fc093\",\"$2y$10$2CPrLzdD.6CzqNhrJBoU0eyQOOTDoP6MsEKZ0k25qyEP6AK8cY2R.\",\"Odette\",\"user6.-.1234\"),(8,\"3e0469fb134991f8f75a2760e409c6ed\",\"$2y$10$DWlIUnjVB9LIo7Z64t898OUcGYdrbOYlb4n2c5TCn18lYHDwBxP9S\",\"Plata\",\"user7.-.1234\");', '27-08-2022'),
(19, '<br />\r\n<b>Warning</b>:  Undefined array key \"login\" in <b>C:xampphtdocsaguaphpcs.php</b> on line <b>23</b><br />\r\n<br />\r\n<b>Warning</b>:  Undefined array key \"login\" in <b>C:xampphtdocsaguaphpcs.php</b> on line <b>23</b><br />\r\n<br />\r\n<b>Warning</b>:  Undefined array key \"login\" in <b>C:xampphtdocsaguaphpcs.php</b> on line <b>23</b><br />\r\n<br />\r\n<b>Warning</b>:  Undefined array key \"login\" in <b>C:xampphtdocsaguaphpcs.php</b> on line <b>23</b><br />\r\n<br />\r\n<b>Warning</b>:  Undefined array key \"login\" in <b>C:xampphtdocsaguaphpcs.php</b> on line <b>23</b><br />\r\n<br />\r\n<b>Warning</b>:  Undefined array key \"login\" in <b>C:xampphtdocsaguaphpcs.php</b> on line <b>23</b><br />\r\n<br />\r\n<b>Warning</b>:  Undefined array key \"login\" in <b>C:xampphtdocsaguaphpcs.php</b> on line <b>23</b><br />\r\n<br />\r\n<b>Warning</b>:  Undefined array key \"login\" in <b>C:xampphtdocsaguaphpcs.php</b> on line <b>23</b><br />\r\nINSERT INTO `cs` (`id`, `user`, `password`, `name`, `login`) VALUES (1,\"83eebac535d14f791f6ee4dbefe689dc\",\"25d55ad283aa400af464c76d713c07ad\",\"Super Admin T-T\",\"\"),(2,\"21232f297a57a5a743894a0e4a801fc3\",\"827ccb0eea8a706c4c34a16891f84e7b\",\"Administrador\",\"\"),(3,\"7e58d63b60197ceb55a1c487989a3720\",\"81dc9bdb52d04dc20036dbd8313ed055\",\"Geraldin\",\"\"),(4,\"92877af70a45fd6a2ed7fe81e1236b78\",\"81dc9bdb52d04dc20036dbd8313ed055\",\"Joana\",\"\"),(5,\"$2y$10$CTB.AQLWGjDX2GX.V7wZmuG476tx.5oUYyXvcjPO6D0r8dZ4wyS8C\",\"$2y$10$j/zjZlo7ntEsAhTm6gBVN.Wxcd0IPvOGgKfpU2nW3Ybbwyiw36AnW\",\"Fabrisio1\",\"\"),(6,\"0a791842f52a0acfbb3a783378c066b8\",\"$2y$10$aW3f8kx4J.CGxCbT7z7eleoVN4Kf01gdZjm3neEjzFdhPf6/9GVN6\",\"Ale\",\"\"),(7,\"affec3b64cf90492377a8114c86fc093\",\"$2y$10$2CPrLzdD.6CzqNhrJBoU0eyQOOTDoP6MsEKZ0k25qyEP6AK8cY2R.\",\"Odette\",\"\"),(8,\"$2y$10$65/OYMNmqh0X9hNqrFWBXeTgQqcxgWJMAXlK5.CQVehOAd7Vd16RK\",\"$2y$10$JNLmNEHftwVL6xy/9EppsOCKIb9pOA/8g0k/aqfDtPta8yUom4XiG\",\"Plata\",\"\");', '28-08-2022'),
(20, '<br />\r\n<b>Warning</b>:  Undefined array key \"login\" in <b>C:xampphtdocsaguaphpcs.php</b> on line <b>23</b><br />\r\n<br />\r\n<b>Warning</b>:  Undefined array key \"login\" in <b>C:xampphtdocsaguaphpcs.php</b> on line <b>23</b><br />\r\n<br />\r\n<b>Warning</b>:  Undefined array key \"login\" in <b>C:xampphtdocsaguaphpcs.php</b> on line <b>23</b><br />\r\n<br />\r\n<b>Warning</b>:  Undefined array key \"login\" in <b>C:xampphtdocsaguaphpcs.php</b> on line <b>23</b><br />\r\n<br />\r\n<b>Warning</b>:  Undefined array key \"login\" in <b>C:xampphtdocsaguaphpcs.php</b> on line <b>23</b><br />\r\n<br />\r\n<b>Warning</b>:  Undefined array key \"login\" in <b>C:xampphtdocsaguaphpcs.php</b> on line <b>23</b><br />\r\n<br />\r\n<b>Warning</b>:  Undefined array key \"login\" in <b>C:xampphtdocsaguaphpcs.php</b> on line <b>23</b><br />\r\n<br />\r\n<b>Warning</b>:  Undefined array key \"login\" in <b>C:xampphtdocsaguaphpcs.php</b> on line <b>23</b><br />\r\nINSERT INTO `cs` (`id`, `user`, `password`, `name`, `login`) VALUES (1,\"83eebac535d14f791f6ee4dbefe689dc\",\"25d55ad283aa400af464c76d713c07ad\",\"Super Admin T-T\",\"\"),(2,\"21232f297a57a5a743894a0e4a801fc3\",\"827ccb0eea8a706c4c34a16891f84e7b\",\"Administrador\",\"\"),(3,\"7e58d63b60197ceb55a1c487989a3720\",\"81dc9bdb52d04dc20036dbd8313ed055\",\"Geraldin\",\"\"),(4,\"92877af70a45fd6a2ed7fe81e1236b78\",\"81dc9bdb52d04dc20036dbd8313ed055\",\"Joana\",\"\"),(5,\"$2y$10$CTB.AQLWGjDX2GX.V7wZmuG476tx.5oUYyXvcjPO6D0r8dZ4wyS8C\",\"$2y$10$j/zjZlo7ntEsAhTm6gBVN.Wxcd0IPvOGgKfpU2nW3Ybbwyiw36AnW\",\"Fabrisio1\",\"\"),(6,\"0a791842f52a0acfbb3a783378c066b8\",\"$2y$10$aW3f8kx4J.CGxCbT7z7eleoVN4Kf01gdZjm3neEjzFdhPf6/9GVN6\",\"Ale\",\"\"),(7,\"affec3b64cf90492377a8114c86fc093\",\"$2y$10$2CPrLzdD.6CzqNhrJBoU0eyQOOTDoP6MsEKZ0k25qyEP6AK8cY2R.\",\"Odette\",\"\"),(8,\"$2y$10$65/OYMNmqh0X9hNqrFWBXeTgQqcxgWJMAXlK5.CQVehOAd7Vd16RK\",\"$2y$10$JNLmNEHftwVL6xy/9EppsOCKIb9pOA/8g0k/aqfDtPta8yUom4XiG\",\"Plata\",\"\");', '28-08-2022'),
(21, '<br />\r\n<b>Warning</b>:  Undefined array key \"login\" in <b>C:xampphtdocsaguaphpcs.php</b> on line <b>23</b><br />\r\n<br />\r\n<b>Warning</b>:  Undefined array key \"login\" in <b>C:xampphtdocsaguaphpcs.php</b> on line <b>23</b><br />\r\n<br />\r\n<b>Warning</b>:  Undefined array key \"login\" in <b>C:xampphtdocsaguaphpcs.php</b> on line <b>23</b><br />\r\n<br />\r\n<b>Warning</b>:  Undefined array key \"login\" in <b>C:xampphtdocsaguaphpcs.php</b> on line <b>23</b><br />\r\n<br />\r\n<b>Warning</b>:  Undefined array key \"login\" in <b>C:xampphtdocsaguaphpcs.php</b> on line <b>23</b><br />\r\n<br />\r\n<b>Warning</b>:  Undefined array key \"login\" in <b>C:xampphtdocsaguaphpcs.php</b> on line <b>23</b><br />\r\n<br />\r\n<b>Warning</b>:  Undefined array key \"login\" in <b>C:xampphtdocsaguaphpcs.php</b> on line <b>23</b><br />\r\n<br />\r\n<b>Warning</b>:  Undefined array key \"login\" in <b>C:xampphtdocsaguaphpcs.php</b> on line <b>23</b><br />\r\nINSERT INTO `cs` (`id`, `user`, `password`, `name`, `login`) VALUES (1,\"83eebac535d14f791f6ee4dbefe689dc\",\"25d55ad283aa400af464c76d713c07ad\",\"Super Admin T-T\",\"\"),(2,\"21232f297a57a5a743894a0e4a801fc3\",\"827ccb0eea8a706c4c34a16891f84e7b\",\"Administrador\",\"\"),(3,\"7e58d63b60197ceb55a1c487989a3720\",\"81dc9bdb52d04dc20036dbd8313ed055\",\"Geraldin\",\"\"),(4,\"92877af70a45fd6a2ed7fe81e1236b78\",\"81dc9bdb52d04dc20036dbd8313ed055\",\"Joana\",\"\"),(5,\"$2y$10$CTB.AQLWGjDX2GX.V7wZmuG476tx.5oUYyXvcjPO6D0r8dZ4wyS8C\",\"$2y$10$j/zjZlo7ntEsAhTm6gBVN.Wxcd0IPvOGgKfpU2nW3Ybbwyiw36AnW\",\"Fabrisio1\",\"\"),(6,\"0a791842f52a0acfbb3a783378c066b8\",\"$2y$10$aW3f8kx4J.CGxCbT7z7eleoVN4Kf01gdZjm3neEjzFdhPf6/9GVN6\",\"Ale\",\"\"),(7,\"affec3b64cf90492377a8114c86fc093\",\"$2y$10$2CPrLzdD.6CzqNhrJBoU0eyQOOTDoP6MsEKZ0k25qyEP6AK8cY2R.\",\"Odette\",\"\"),(8,\"$2y$10$65/OYMNmqh0X9hNqrFWBXeTgQqcxgWJMAXlK5.CQVehOAd7Vd16RK\",\"$2y$10$JNLmNEHftwVL6xy/9EppsOCKIb9pOA/8g0k/aqfDtPta8yUom4XiG\",\"Plata\",\"\");', '28-08-2022'),
(22, '<br />\r\n<b>Warning</b>:  Undefined array key \"sublogin\" in <b>C:xampphtdocsaguaphpcs.php</b> on line <b>23</b><br />\r\n<br />\r\n<b>Warning</b>:  Undefined array key \"sublogin\" in <b>C:xampphtdocsaguaphpcs.php</b> on line <b>23</b><br />\r\n<br />\r\n<b>Warning</b>:  Undefined array key \"sublogin\" in <b>C:xampphtdocsaguaphpcs.php</b> on line <b>23</b><br />\r\n<br />\r\n<b>Warning</b>:  Undefined array key \"sublogin\" in <b>C:xampphtdocsaguaphpcs.php</b> on line <b>23</b><br />\r\n<br />\r\n<b>Warning</b>:  Undefined array key \"sublogin\" in <b>C:xampphtdocsaguaphpcs.php</b> on line <b>23</b><br />\r\n<br />\r\n<b>Warning</b>:  Undefined array key \"sublogin\" in <b>C:xampphtdocsaguaphpcs.php</b> on line <b>23</b><br />\r\n<br />\r\n<b>Warning</b>:  Undefined array key \"sublogin\" in <b>C:xampphtdocsaguaphpcs.php</b> on line <b>23</b><br />\r\n<br />\r\n<b>Warning</b>:  Undefined array key \"sublogin\" in <b>C:xampphtdocsaguaphpcs.php</b> on line <b>23</b><br />\r\nINSERT INTO `cs` (`id`, `user`, `password`, `name`, `login`) VALUES (1,\"83eebac535d14f791f6ee4dbefe689dc\",\"25d55ad283aa400af464c76d713c07ad\",\"Super Admin T-T\",\"\",\"12345678\"),(2,\"21232f297a57a5a743894a0e4a801fc3\",\"827ccb0eea8a706c4c34a16891f84e7b\",\"Administrador\",\"\",\"12345\"),(3,\"7e58d63b60197ceb55a1c487989a3720\",\"81dc9bdb52d04dc20036dbd8313ed055\",\"Geraldin\",\"\",\"1234\"),(4,\"92877af70a45fd6a2ed7fe81e1236b78\",\"81dc9bdb52d04dc20036dbd8313ed055\",\"Joana\",\"\",\"1234\"),(5,\"$2y$10$CTB.AQLWGjDX2GX.V7wZmuG476tx.5oUYyXvcjPO6D0r8dZ4wyS8C\",\"$2y$10$j/zjZlo7ntEsAhTm6gBVN.Wxcd0IPvOGgKfpU2nW3Ybbwyiw36AnW\",\"Fabrisio1\",\"\",\"12345678Abc\"),(6,\"0a791842f52a0acfbb3a783378c066b8\",\"$2y$10$aW3f8kx4J.CGxCbT7z7eleoVN4Kf01gdZjm3neEjzFdhPf6/9GVN6\",\"Ale\",\"\",\"1234\"),(7,\"affec3b64cf90492377a8114c86fc093\",\"$2y$10$2CPrLzdD.6CzqNhrJBoU0eyQOOTDoP6MsEKZ0k25qyEP6AK8cY2R.\",\"Odette\",\"\",\"1234\"),(8,\"$2y$10$65/OYMNmqh0X9hNqrFWBXeTgQqcxgWJMAXlK5.CQVehOAd7Vd16RK\",\"$2y$10$JNLmNEHftwVL6xy/9EppsOCKIb9pOA/8g0k/aqfDtPta8yUom4XiG\",\"Plata\",\"\",\"12345678Abc\");', '28-08-2022'),
(23, 'INSERT INTO `cs` (`id`, `user`, `password`, `name`, `subLogin`, `subPass`) VALUES (1,\"83eebac535d14f791f6ee4dbefe689dc\",\"25d55ad283aa400af464c76d713c07ad\",\"Super Admin T-T\",\"superAdmin\",\"12345678\"),(2,\"21232f297a57a5a743894a0e4a801fc3\",\"827ccb0eea8a706c4c34a16891f84e7b\",\"Administrador\",\"admin\",\"12345\"),(3,\"7e58d63b60197ceb55a1c487989a3720\",\"81dc9bdb52d04dc20036dbd8313ed055\",\"Geraldin\",\"user1\",\"1234\"),(4,\"92877af70a45fd6a2ed7fe81e1236b78\",\"81dc9bdb52d04dc20036dbd8313ed055\",\"Joana\",\"user2\",\"1234\"),(5,\"$2y$10$CTB.AQLWGjDX2GX.V7wZmuG476tx.5oUYyXvcjPO6D0r8dZ4wyS8C\",\"$2y$10$j/zjZlo7ntEsAhTm6gBVN.Wxcd0IPvOGgKfpU2nW3Ybbwyiw36AnW\",\"Fabrisio1\",\"camila123\",\"12345678Abc\"),(6,\"0a791842f52a0acfbb3a783378c066b8\",\"$2y$10$aW3f8kx4J.CGxCbT7z7eleoVN4Kf01gdZjm3neEjzFdhPf6/9GVN6\",\"Ale\",\"user4\",\"1234\"),(7,\"affec3b64cf90492377a8114c86fc093\",\"$2y$10$2CPrLzdD.6CzqNhrJBoU0eyQOOTDoP6MsEKZ0k25qyEP6AK8cY2R.\",\"Odette\",\"user5\",\"1234\"),(8,\"$2y$10$65/OYMNmqh0X9hNqrFWBXeTgQqcxgWJMAXlK5.CQVehOAd7Vd16RK\",\"$2y$10$JNLmNEHftwVL6xy/9EppsOCKIb9pOA/8g0k/aqfDtPta8yUom4XiG\",\"Plata\",\"cami123\",\"12345678Abc\");', '28-08-2022'),
(24, 'INSERT INTO `cs` (`id`, `user`, `password`, `name`, `subLogin`, `subPass`) VALUES (1,\"83eebac535d14f791f6ee4dbefe689dc\",\"25d55ad283aa400af464c76d713c07ad\",\"Super Admin T-T\",\"superAdmin\",\"12345678\"),(2,\"21232f297a57a5a743894a0e4a801fc3\",\"827ccb0eea8a706c4c34a16891f84e7b\",\"Administrador\",\"admin\",\"12345\"),(3,\"7e58d63b60197ceb55a1c487989a3720\",\"81dc9bdb52d04dc20036dbd8313ed055\",\"Geraldin\",\"user1\",\"1234\"),(4,\"92877af70a45fd6a2ed7fe81e1236b78\",\"81dc9bdb52d04dc20036dbd8313ed055\",\"Joana\",\"user2\",\"1234\"),(5,\"$2y$10$CTB.AQLWGjDX2GX.V7wZmuG476tx.5oUYyXvcjPO6D0r8dZ4wyS8C\",\"$2y$10$j/zjZlo7ntEsAhTm6gBVN.Wxcd0IPvOGgKfpU2nW3Ybbwyiw36AnW\",\"Fabrisio1\",\"camila123\",\"12345678Abc\"),(6,\"0a791842f52a0acfbb3a783378c066b8\",\"$2y$10$aW3f8kx4J.CGxCbT7z7eleoVN4Kf01gdZjm3neEjzFdhPf6/9GVN6\",\"Ale\",\"user4\",\"1234\"),(7,\"affec3b64cf90492377a8114c86fc093\",\"$2y$10$2CPrLzdD.6CzqNhrJBoU0eyQOOTDoP6MsEKZ0k25qyEP6AK8cY2R.\",\"Odette\",\"user5\",\"1234\"),(8,\"$2y$10$65/OYMNmqh0X9hNqrFWBXeTgQqcxgWJMAXlK5.CQVehOAd7Vd16RK\",\"$2y$10$JNLmNEHftwVL6xy/9EppsOCKIb9pOA/8g0k/aqfDtPta8yUom4XiG\",\"Plata\",\"cami123\",\"12345678Abc\");', '28-08-2022'),
(25, 'INSERT INTO `cs` (`id`, `user`, `password`, `name`, `subLogin`, `subPass`) VALUES (1,\"83eebac535d14f791f6ee4dbefe689dc\",\"25d55ad283aa400af464c76d713c07ad\",\"Super Admin T-T\",\"superAdmin\",\"12345678\"),(2,\"21232f297a57a5a743894a0e4a801fc3\",\"827ccb0eea8a706c4c34a16891f84e7b\",\"Administrador\",\"admin\",\"12345\"),(3,\"7e58d63b60197ceb55a1c487989a3720\",\"81dc9bdb52d04dc20036dbd8313ed055\",\"Geraldin\",\"user1\",\"1234\"),(4,\"92877af70a45fd6a2ed7fe81e1236b78\",\"81dc9bdb52d04dc20036dbd8313ed055\",\"Joana\",\"user2\",\"1234\"),(5,\"$2y$10$CTB.AQLWGjDX2GX.V7wZmuG476tx.5oUYyXvcjPO6D0r8dZ4wyS8C\",\"$2y$10$j/zjZlo7ntEsAhTm6gBVN.Wxcd0IPvOGgKfpU2nW3Ybbwyiw36AnW\",\"Fabrisio1\",\"camila123\",\"12345678Abc\"),(6,\"0a791842f52a0acfbb3a783378c066b8\",\"$2y$10$aW3f8kx4J.CGxCbT7z7eleoVN4Kf01gdZjm3neEjzFdhPf6/9GVN6\",\"Ale\",\"user4\",\"1234\"),(7,\"affec3b64cf90492377a8114c86fc093\",\"$2y$10$2CPrLzdD.6CzqNhrJBoU0eyQOOTDoP6MsEKZ0k25qyEP6AK8cY2R.\",\"Odette\",\"user5\",\"1234\"),(8,\"$2y$10$65/OYMNmqh0X9hNqrFWBXeTgQqcxgWJMAXlK5.CQVehOAd7Vd16RK\",\"$2y$10$JNLmNEHftwVL6xy/9EppsOCKIb9pOA/8g0k/aqfDtPta8yUom4XiG\",\"Plata\",\"cami123\",\"12345678Abc\");', '28-08-2022');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user` varchar(100) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `password` longtext COLLATE utf8mb4_spanish2_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `subLogin` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `subPass` varchar(100) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `historial` longtext COLLATE utf8mb4_spanish2_ci NOT NULL,
  `condonacion` varchar(100) COLLATE utf8mb4_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `user`, `password`, `name`, `subLogin`, `subPass`, `historial`, `condonacion`) VALUES
(1, '83eebac535d14f791f6ee4dbefe689dc', '25d55ad283aa400af464c76d713c07ad', 'Super Admin T-T', 'superAdmin', '12345678', '', 'edbce914409ab6a733e2e527fbe4349b'),
(2, '21232f297a57a5a743894a0e4a801fc3', '827ccb0eea8a706c4c34a16891f84e7b', 'Administrador', 'admin', '12345', '', 'edbce914409ab6a733e2e527fbe4349b'),
(3, '7e58d63b60197ceb55a1c487989a3720', '81dc9bdb52d04dc20036dbd8313ed055', 'Geraldin', 'user1', '1234', '', ''),
(4, '92877af70a45fd6a2ed7fe81e1236b78', '81dc9bdb52d04dc20036dbd8313ed055', 'Joana', 'user2', '1234', '', ''),
(5, '$2y$10$CTB.AQLWGjDX2GX.V7wZmuG476tx.5oUYyXvcjPO6D0r8dZ4wyS8C', '$2y$10$j/zjZlo7ntEsAhTm6gBVN.Wxcd0IPvOGgKfpU2nW3Ybbwyiw36AnW', 'Fabrisio1', 'camila123', '12345678Abc', 'Fabrisio1', ''),
(6, '0a791842f52a0acfbb3a783378c066b8', '$2y$10$aW3f8kx4J.CGxCbT7z7eleoVN4Kf01gdZjm3neEjzFdhPf6/9GVN6', 'Ale', 'user4', '1234', '', ''),
(7, 'affec3b64cf90492377a8114c86fc093', '$2y$10$2CPrLzdD.6CzqNhrJBoU0eyQOOTDoP6MsEKZ0k25qyEP6AK8cY2R.', 'Odette', 'user5', '1234', '', ''),
(8, '$2y$10$65/OYMNmqh0X9hNqrFWBXeTgQqcxgWJMAXlK5.CQVehOAd7Vd16RK', '$2y$10$JNLmNEHftwVL6xy/9EppsOCKIb9pOA/8g0k/aqfDtPta8yUom4XiG', 'Plata', 'cami123', '12345678Abc', '', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `contratos`
--
ALTER TABLE `contratos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cs`
--
ALTER TABLE `cs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `general`
--
ALTER TABLE `general`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `setcs`
--
ALTER TABLE `setcs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `contratos`
--
ALTER TABLE `contratos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cs`
--
ALTER TABLE `cs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `general`
--
ALTER TABLE `general`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `setcs`
--
ALTER TABLE `setcs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
