-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 24/08/2023 às 04:03
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `aula03`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `categorias`
--

INSERT INTO `categorias` (`id`, `nome`) VALUES
(3, 'Automotive'),
(4, 'Baby'),
(7, 'Beauty'),
(10, 'Clothing'),
(11, 'Computers'),
(9, 'Grocery'),
(8, 'Health'),
(12, 'Jewelery'),
(13, 'Kids'),
(2, 'Music'),
(5, 'Sports'),
(6, 'Tools'),
(1, 'Toys');

-- --------------------------------------------------------

--
-- Estrutura para tabela `itenspedido`
--

CREATE TABLE `itenspedido` (
  `id` int(11) NOT NULL,
  `pedido_id` int(11) DEFAULT NULL,
  `produto_id` int(11) DEFAULT NULL,
  `quantidade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `itenspedido`
--

INSERT INTO `itenspedido` (`id`, `pedido_id`, `produto_id`, `quantidade`) VALUES
(1, 49, 7, 3),
(2, 43, 98, 1),
(3, 12, 68, 3),
(4, 41, 60, 5),
(5, 45, 58, 2),
(6, 50, 95, 3),
(7, 46, 57, 5),
(8, 18, 90, 3),
(9, 11, 38, 2),
(10, 13, 20, 3),
(11, 20, 57, 4),
(12, 23, 57, 5),
(13, 29, 27, 2),
(14, 9, 93, 3),
(15, 33, 96, 2),
(16, 13, 14, 1),
(17, 30, 51, 5),
(18, 13, 48, 4),
(19, 25, 86, 5),
(20, 29, 49, 3),
(21, 8, 89, 5),
(22, 36, 83, 2),
(23, 39, 43, 4),
(24, 41, 36, 3),
(25, 38, 24, 4),
(26, 44, 12, 1),
(27, 37, 92, 4),
(28, 32, 91, 4),
(29, 23, 44, 2),
(30, 17, 59, 5),
(31, 31, 41, 3),
(32, 40, 50, 5),
(33, 45, 49, 4),
(34, 39, 89, 1),
(35, 13, 17, 4),
(36, 43, 66, 2),
(37, 25, 29, 5),
(38, 20, 98, 3),
(39, 11, 14, 1),
(40, 30, 99, 5),
(41, 21, 8, 5),
(42, 24, 44, 2),
(43, 33, 46, 2),
(44, 41, 22, 3),
(45, 30, 58, 1),
(46, 40, 36, 4),
(47, 11, 64, 1),
(48, 15, 9, 3),
(49, 44, 2, 3),
(50, 16, 1, 3),
(51, 27, 81, 1),
(52, 20, 31, 4),
(53, 14, 45, 3),
(54, 46, 26, 3),
(55, 8, 8, 4),
(56, 33, 68, 1),
(57, 45, 12, 2),
(58, 15, 4, 4),
(59, 3, 28, 1),
(60, 49, 45, 4),
(61, 2, 12, 5),
(62, 3, 99, 1),
(63, 40, 51, 1),
(64, 23, 9, 3),
(65, 44, 54, 1),
(66, 7, 55, 4),
(67, 18, 66, 1),
(68, 11, 75, 2),
(69, 36, 56, 4),
(70, 37, 44, 1),
(71, 33, 24, 5),
(72, 14, 3, 5),
(73, 19, 36, 2),
(74, 47, 76, 1),
(75, 25, 19, 2),
(76, 50, 86, 5),
(77, 35, 52, 5),
(78, 3, 44, 4),
(79, 22, 67, 4),
(80, 38, 25, 4),
(81, 45, 72, 1),
(82, 36, 28, 1),
(83, 19, 42, 2),
(84, 3, 22, 1),
(85, 8, 47, 3),
(86, 28, 89, 4),
(87, 6, 23, 2),
(88, 43, 49, 4),
(89, 47, 92, 2),
(90, 36, 60, 3),
(91, 36, 99, 3),
(92, 46, 64, 5),
(93, 6, 17, 4),
(94, 22, 63, 4),
(95, 41, 39, 4),
(96, 6, 74, 5),
(97, 44, 57, 3),
(98, 47, 21, 4),
(99, 28, 33, 4),
(100, 38, 10, 2),
(101, 1, 74, 4),
(102, 19, 19, 2),
(103, 36, 6, 4),
(104, 39, 47, 4),
(105, 34, 89, 5),
(106, 36, 74, 3),
(107, 46, 36, 1),
(108, 29, 96, 3),
(109, 11, 79, 1),
(110, 3, 56, 2),
(111, 4, 11, 3),
(112, 47, 75, 1),
(113, 24, 43, 4),
(114, 8, 36, 1),
(115, 6, 19, 4),
(116, 9, 56, 2),
(117, 43, 81, 3),
(118, 9, 98, 3),
(119, 7, 89, 5),
(120, 13, 52, 4),
(121, 34, 48, 4),
(122, 43, 42, 1),
(123, 2, 35, 5),
(124, 29, 15, 5),
(125, 14, 52, 4),
(126, 22, 47, 3),
(127, 10, 93, 4),
(128, 44, 68, 5),
(129, 3, 71, 1),
(130, 13, 91, 4),
(131, 49, 46, 5),
(132, 8, 56, 3),
(133, 9, 74, 3),
(134, 3, 53, 2),
(135, 8, 40, 5),
(136, 28, 24, 2),
(137, 9, 64, 1),
(138, 30, 93, 4),
(139, 1, 56, 3),
(140, 17, 12, 1),
(141, 27, 6, 3),
(142, 50, 6, 5),
(143, 29, 76, 5),
(144, 34, 31, 4),
(145, 31, 41, 1),
(146, 5, 26, 4),
(147, 42, 66, 1),
(148, 31, 25, 4),
(149, 12, 85, 2),
(150, 12, 65, 2),
(151, 16, 84, 1),
(152, 11, 45, 4),
(153, 33, 50, 5),
(154, 26, 89, 1),
(155, 6, 84, 1),
(156, 38, 32, 2),
(157, 48, 26, 5),
(158, 33, 52, 5),
(159, 7, 42, 1),
(160, 18, 37, 4),
(161, 49, 15, 3),
(162, 7, 30, 5),
(163, 18, 62, 5),
(164, 2, 93, 3),
(165, 8, 13, 1),
(166, 12, 22, 5),
(167, 19, 11, 4),
(168, 8, 72, 4),
(169, 37, 63, 5),
(170, 19, 72, 3),
(171, 44, 9, 2),
(172, 48, 97, 4),
(173, 34, 24, 3),
(174, 42, 12, 5),
(175, 11, 44, 3),
(176, 44, 40, 5),
(177, 41, 15, 4),
(178, 21, 88, 4),
(179, 23, 86, 5),
(180, 28, 58, 1),
(181, 32, 3, 1),
(182, 31, 42, 1),
(183, 15, 31, 1),
(184, 1, 91, 5),
(185, 50, 48, 5),
(186, 34, 99, 2),
(187, 24, 90, 2),
(188, 1, 75, 4),
(189, 44, 39, 2),
(190, 10, 82, 1),
(191, 20, 26, 2),
(192, 29, 42, 4),
(193, 48, 76, 4),
(194, 10, 41, 1),
(195, 9, 17, 5),
(196, 43, 33, 3),
(197, 7, 46, 1),
(198, 1, 56, 5),
(199, 3, 7, 3),
(200, 41, 6, 3);

-- --------------------------------------------------------

--
-- Estrutura para tabela `pedidos`
--

CREATE TABLE `pedidos` (
  `id` int(11) NOT NULL,
  `data_pedido` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `pedidos`
--

INSERT INTO `pedidos` (`id`, `data_pedido`) VALUES
(1, '2022-09-13'),
(2, '2023-04-02'),
(3, '2022-11-02'),
(4, '2022-09-08'),
(5, '2022-11-15'),
(6, '2023-06-07'),
(7, '2022-12-17'),
(8, '2023-08-20'),
(9, '2022-12-25'),
(10, '2022-09-27'),
(11, '2022-12-01'),
(12, '2023-07-22'),
(13, '2022-09-22'),
(14, '2023-07-17'),
(15, '2022-10-14'),
(16, '2023-01-29'),
(17, '2023-07-09'),
(18, '2023-07-28'),
(19, '2022-10-04'),
(20, '2023-03-22'),
(21, '2023-07-21'),
(22, '2023-02-15'),
(23, '2022-09-19'),
(24, '2022-09-11'),
(25, '2022-10-25'),
(26, '2023-02-17'),
(27, '2022-10-25'),
(28, '2022-10-20'),
(29, '2023-03-05'),
(30, '2023-04-17'),
(31, '2023-01-05'),
(32, '2022-09-13'),
(33, '2023-06-24'),
(34, '2023-07-23'),
(35, '2022-12-10'),
(36, '2022-09-26'),
(37, '2022-10-23'),
(38, '2023-06-05'),
(39, '2023-03-08'),
(40, '2023-01-11'),
(41, '2023-01-02'),
(42, '2023-05-29'),
(43, '2023-04-12'),
(44, '2022-11-29'),
(45, '2023-07-18'),
(46, '2022-10-27'),
(47, '2022-12-23'),
(48, '2022-10-13'),
(49, '2022-11-29'),
(50, '2023-06-02');

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `preco` decimal(10,2) DEFAULT NULL,
  `estoque` int(11) DEFAULT NULL,
  `categoria_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `produtos`
--

INSERT INTO `produtos` (`id`, `nome`, `preco`, `estoque`, `categoria_id`) VALUES
(1, 'Fish', 125.00, 290, 4),
(2, 'Towels', 735.00, 105, 1),
(3, 'Shirt', 520.00, 128, 9),
(4, 'Shirt', 428.00, 57, 1),
(5, 'Shoes', 828.00, 215, 3),
(6, 'Cheese', 609.00, 44, 13),
(7, 'Pizza', 758.00, 268, 3),
(8, 'Fish', 142.00, 60, 5),
(9, 'Tuna', 573.00, 119, 10),
(10, 'Towels', 979.00, 49, 6),
(11, 'Car', 412.00, 193, 8),
(12, 'Pants', 717.00, 262, 5),
(13, 'Keyboard', 179.00, 17, 12),
(14, 'Ball', 903.00, 235, 11),
(15, 'Bacon', 859.00, 179, 13),
(16, 'Hat', 35.00, 255, 1),
(17, 'Bike', 363.00, 295, 13),
(18, 'Car', 616.00, 179, 4),
(19, 'Shoes', 397.00, 94, 2),
(20, 'Cheese', 86.00, 285, 13),
(21, 'Pizza', 449.00, 178, 2),
(22, 'Gloves', 750.00, 3, 10),
(23, 'Chair', 31.00, 266, 3),
(24, 'Pants', 734.00, 300, 8),
(25, 'Pizza', 996.00, 15, 2),
(26, 'Car', 513.00, 205, 11),
(27, 'Keyboard', 438.00, 71, 3),
(28, 'Salad', 330.00, 226, 8),
(29, 'Chair', 787.00, 189, 7),
(30, 'Chips', 920.00, 92, 10),
(31, 'Bacon', 651.00, 271, 2),
(32, 'Chair', 594.00, 238, 5),
(33, 'Mouse', 710.00, 250, 5),
(34, 'Chips', 644.00, 119, 4),
(35, 'Hat', 824.00, 136, 5),
(36, 'Mouse', 640.00, 117, 3),
(37, 'Car', 284.00, 112, 7),
(38, 'Bacon', 57.00, 169, 7),
(39, 'Salad', 976.00, 254, 1),
(40, 'Mouse', 86.00, 157, 11),
(41, 'Sausages', 727.00, 20, 2),
(42, 'Chair', 422.00, 239, 12),
(43, 'Car', 26.00, 246, 9),
(44, 'Shirt', 467.00, 75, 4),
(45, 'Chicken', 186.00, 268, 12),
(46, 'Bike', 191.00, 81, 13),
(47, 'Bacon', 590.00, 270, 9),
(48, 'Chips', 325.00, 265, 12),
(49, 'Shirt', 761.00, 93, 11),
(50, 'Computer', 296.00, 93, 10),
(51, 'Table', 510.00, 298, 13),
(52, 'Salad', 443.00, 138, 13),
(53, 'Fish', 347.00, 159, 6),
(54, 'Tuna', 115.00, 78, 5),
(55, 'Bacon', 657.00, 1, 1),
(56, 'Bike', 879.00, 150, 11),
(57, 'Bacon', 248.00, 247, 6),
(58, 'Keyboard', 93.00, 221, 6),
(59, 'Bacon', 700.00, 135, 6),
(60, 'Shoes', 593.00, 174, 6),
(61, 'Hat', 53.00, 133, 1),
(62, 'Salad', 574.00, 181, 7),
(63, 'Salad', 515.00, 65, 3),
(64, 'Computer', 779.00, 78, 9),
(65, 'Bacon', 445.00, 41, 11),
(66, 'Chair', 769.00, 272, 2),
(67, 'Soap', 513.00, 254, 10),
(68, 'Shoes', 846.00, 55, 1),
(69, 'Pizza', 584.00, 158, 13),
(70, 'Sausages', 796.00, 152, 13),
(71, 'Table', 968.00, 115, 13),
(72, 'Gloves', 832.00, 13, 4),
(73, 'Chicken', 157.00, 8, 9),
(74, 'Car', 627.00, 54, 8),
(75, 'Salad', 395.00, 162, 7),
(76, 'Tuna', 353.00, 244, 3),
(77, 'Shirt', 495.00, 38, 8),
(78, 'Fish', 341.00, 56, 13),
(79, 'Soap', 159.00, 73, 2),
(80, 'Gloves', 148.00, 16, 4),
(81, 'Soap', 96.00, 284, 12),
(82, 'Towels', 309.00, 270, 11),
(83, 'Chicken', 416.00, 117, 4),
(84, 'Shoes', 957.00, 237, 12),
(85, 'Tuna', 184.00, 43, 8),
(86, 'Salad', 448.00, 157, 10),
(87, 'Cheese', 404.00, 242, 5),
(88, 'Mouse', 546.00, 98, 6),
(89, 'Shirt', 273.00, 166, 13),
(90, 'Keyboard', 94.00, 155, 9),
(91, 'Mouse', 848.00, 289, 13),
(92, 'Tuna', 74.00, 14, 4),
(93, 'Chicken', 332.00, 23, 6),
(94, 'Computer', 457.00, 225, 6),
(95, 'Pizza', 37.00, 181, 6),
(96, 'Bacon', 201.00, 73, 10),
(97, 'Chips', 746.00, 44, 6),
(98, 'Ball', 675.00, 255, 13),
(99, 'Bike', 864.00, 67, 3),
(100, 'Shirt', 208.00, 246, 5);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nome` (`nome`);

--
-- Índices de tabela `itenspedido`
--
ALTER TABLE `itenspedido`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pedido_id` (`pedido_id`),
  ADD KEY `produto_id` (`produto_id`);

--
-- Índices de tabela `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoria_id` (`categoria_id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `itenspedido`
--
ALTER TABLE `itenspedido`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT de tabela `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `itenspedido`
--
ALTER TABLE `itenspedido`
  ADD CONSTRAINT `itenspedido_ibfk_1` FOREIGN KEY (`pedido_id`) REFERENCES `pedidos` (`id`),
  ADD CONSTRAINT `itenspedido_ibfk_2` FOREIGN KEY (`produto_id`) REFERENCES `produtos` (`id`);

--
-- Restrições para tabelas `produtos`
--
ALTER TABLE `produtos`
  ADD CONSTRAINT `produtos_ibfk_1` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
