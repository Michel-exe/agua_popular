-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-08-2022 a las 06:54:08
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
(3, '27-08-2022');

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
(18, 'INSERT INTO `cs` (`id`, `user`, `password`, `name`, `login`) VALUES (1,\"83eebac535d14f791f6ee4dbefe689dc\",\"25d55ad283aa400af464c76d713c07ad\",\"Super Admin\",\"superAdmin.-.12345678\"),(2,\"21232f297a57a5a743894a0e4a801fc3\",\"827ccb0eea8a706c4c34a16891f84e7b\",\"Administrador\",\"admin.-.12345\"),(3,\"7e58d63b60197ceb55a1c487989a3720\",\"81dc9bdb52d04dc20036dbd8313ed055\",\"Geraldin\",\"user2.-.1234\"),(4,\"92877af70a45fd6a2ed7fe81e1236b78\",\"81dc9bdb52d04dc20036dbd8313ed055\",\"Joana\",\"user3.-.1234\"),(5,\"3f02ebe3d7929b091e3d8ccfde2f3bc6\",\"$2y$10$5.aqlS/lKqqzddAIgGlXI.pCkiCadMtDIns0IuvEvN9pwpbqlVYdy\",\"Wendy\",\"user4.-.1234\"),(6,\"0a791842f52a0acfbb3a783378c066b8\",\"$2y$10$aW3f8kx4J.CGxCbT7z7eleoVN4Kf01gdZjm3neEjzFdhPf6/9GVN6\",\"Ale\",\"user5.-.1234\"),(7,\"affec3b64cf90492377a8114c86fc093\",\"$2y$10$2CPrLzdD.6CzqNhrJBoU0eyQOOTDoP6MsEKZ0k25qyEP6AK8cY2R.\",\"Odette\",\"user6.-.1234\"),(8,\"3e0469fb134991f8f75a2760e409c6ed\",\"$2y$10$DWlIUnjVB9LIo7Z64t898OUcGYdrbOYlb4n2c5TCn18lYHDwBxP9S\",\"Plata\",\"user7.-.1234\");', '27-08-2022');

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
  `historial` longtext COLLATE utf8mb4_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `user`, `password`, `name`, `subLogin`, `subPass`, `historial`) VALUES
(1, '83eebac535d14f791f6ee4dbefe689dc', '25d55ad283aa400af464c76d713c07ad', 'Super Admin T-T', 'superAdmin', '12345678', ''),
(2, '21232f297a57a5a743894a0e4a801fc3', '827ccb0eea8a706c4c34a16891f84e7b', 'Administrador', 'admin', '12345', ''),
(3, '7e58d63b60197ceb55a1c487989a3720', '81dc9bdb52d04dc20036dbd8313ed055', 'Geraldin', 'user1', '1234', ''),
(4, '92877af70a45fd6a2ed7fe81e1236b78', '81dc9bdb52d04dc20036dbd8313ed055', 'Joana', 'user2', '1234', ''),
(5, '$2y$10$CTB.AQLWGjDX2GX.V7wZmuG476tx.5oUYyXvcjPO6D0r8dZ4wyS8C', '$2y$10$j/zjZlo7ntEsAhTm6gBVN.Wxcd0IPvOGgKfpU2nW3Ybbwyiw36AnW', 'Fabrisio1', 'camila123', '12345678Abc', 'Fabrisio1'),
(6, '0a791842f52a0acfbb3a783378c066b8', '$2y$10$aW3f8kx4J.CGxCbT7z7eleoVN4Kf01gdZjm3neEjzFdhPf6/9GVN6', 'Ale', 'user4', '1234', ''),
(7, 'affec3b64cf90492377a8114c86fc093', '$2y$10$2CPrLzdD.6CzqNhrJBoU0eyQOOTDoP6MsEKZ0k25qyEP6AK8cY2R.', 'Odette', 'user5', '1234', ''),
(8, '$2y$10$65/OYMNmqh0X9hNqrFWBXeTgQqcxgWJMAXlK5.CQVehOAd7Vd16RK', '$2y$10$JNLmNEHftwVL6xy/9EppsOCKIb9pOA/8g0k/aqfDtPta8yUom4XiG', 'Plata', 'cami123', '12345678Abc', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cs`
--
ALTER TABLE `cs`
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
-- AUTO_INCREMENT de la tabla `cs`
--
ALTER TABLE `cs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `setcs`
--
ALTER TABLE `setcs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
