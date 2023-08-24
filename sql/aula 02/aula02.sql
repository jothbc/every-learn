-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 24/08/2023 às 03:46
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
-- Banco de dados: `aula02`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `alunos`
--

CREATE TABLE `alunos` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `sobrenome` varchar(50) DEFAULT NULL,
  `idade` int(11) DEFAULT NULL,
  `curso_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `alunos`
--

INSERT INTO `alunos` (`id`, `nome`, `sobrenome`, `idade`, `curso_id`) VALUES
(1, 'Deangelo', 'Pacocha', 48, 45),
(2, 'Blake', 'Connelly', 68, 16),
(3, 'Adrien', 'Koch', 69, 26),
(4, 'Robbie', 'Ankunding', 39, 34),
(5, 'Kathlyn', 'Gerhold', 63, 45),
(6, 'Reed', 'Altenwerth', 54, 30),
(7, 'Asa', 'Kunde', 73, 41),
(8, 'Jazmyne', 'Toy', 69, 43),
(9, 'Wendy', 'Schuppe', 63, 13),
(10, 'Hayley', 'O\'Conner', 66, 41),
(11, 'Reanna', 'Hackett', 37, 18),
(12, 'Mohammed', 'Homenick', 21, 10),
(13, 'Kimberly', 'Ondricka', 61, 30),
(14, 'Florencio', 'Will', 40, 2),
(15, 'Bruce', 'Leffler', 60, 39),
(16, 'Katelin', 'West-Spencer', 29, 14),
(17, 'Virgil', 'Konopelski', 77, 46),
(18, 'Rickie', 'Howell', 52, 13),
(19, 'Horace', 'Howe', 71, 47),
(20, 'Alisha', 'Bartell', 37, 3),
(21, 'Bridie', 'Green', 23, 28),
(22, 'Mason', 'Von', 21, 16),
(23, 'Aleen', 'Zemlak', 74, 40),
(24, 'Verdie', 'Witting', 20, 14),
(25, 'Pablo', 'McCullough', 67, 44),
(26, 'Jaycee', 'Schuster', 23, 27),
(27, 'Alda', 'Franey', 43, 17),
(28, 'Petra', 'Braun', 77, 29),
(29, 'Barry', 'Bartell-Stracke', 61, 30),
(30, 'Aiden', 'Mueller', 71, 40),
(31, 'Estella', 'Quitzon', 62, 28),
(32, 'Imogene', 'Welch', 73, 37),
(33, 'Blaze', 'Kiehn', 60, 29),
(34, 'Brady', 'Koss', 60, 13),
(35, 'Aiden', 'Kunze', 80, 29),
(36, 'Willy', 'Larkin', 60, 47),
(37, 'Gerardo', 'Wehner', 53, 6),
(38, 'Rickie', 'Schmeler', 66, 25),
(39, 'Alexandre', 'Bayer', 48, 32),
(40, 'Pasquale', 'Gusikowski', 18, 23),
(41, 'Bud', 'Brakus', 28, 19),
(42, 'Grayson', 'Turner', 69, 25),
(43, 'Else', 'Fritsch', 43, 31),
(44, 'Owen', 'Walker', 45, 9),
(45, 'Kirsten', 'Adams', 25, 33),
(46, 'Herbert', 'Nitzsche', 48, 31),
(47, 'Kristopher', 'Deckow', 65, 45),
(48, 'Vena', 'Feest', 40, 36),
(49, 'Ardith', 'Yundt', 78, 7),
(50, 'Iliana', 'Olson', 46, 10),
(51, 'Dayton', 'Buckridge', 68, 11),
(52, 'Bulah', 'Kuhic-Von', 60, 21),
(53, 'Stephania', 'Bartell', 25, 16),
(54, 'Craig', 'Sawayn', 35, 32),
(55, 'Emmitt', 'Halvorson', 37, 46),
(56, 'Estefania', 'Cole', 32, 46),
(57, 'Juwan', 'Dare', 61, 30),
(58, 'Emmet', 'Doyle', 40, 30),
(59, 'Rachael', 'O\'Kon', 53, 23),
(60, 'Austyn', 'Von', 53, 20),
(61, 'Agustin', 'Shanahan', 41, 36),
(62, 'Buford', 'D\'Amore', 20, 30),
(63, 'Justus', 'Abshire', 74, 15),
(64, 'Agustina', 'Legros', 80, 13),
(65, 'Dortha', 'Mann', 57, 15),
(66, 'Rogelio', 'Olson', 24, 43),
(67, 'Mossie', 'Beier', 62, 9),
(68, 'Neoma', 'Konopelski', 25, 17),
(69, 'Orie', 'Nader', 43, 6),
(70, 'Tommie', 'Metz', 64, 34),
(71, 'Yasmeen', 'Hane', 49, 13),
(72, 'Ariel', 'Pouros', 28, 19),
(73, 'Christian', 'Harris', 52, 8),
(74, 'Addie', 'Turner', 79, 13),
(75, 'Buck', 'Kirlin', 52, 13),
(76, 'Jared', 'Rosenbaum', 35, 13),
(77, 'Nina', 'Leuschke', 65, 13),
(78, 'Joel', 'Renner', 56, 43),
(79, 'Elisha', 'Stanton', 49, 38),
(80, 'Kim', 'Gerhold', 71, 3),
(81, 'Colby', 'MacGyver', 20, 38),
(82, 'Kelli', 'Crist', 60, 20),
(83, 'Dell', 'Toy', 68, 8),
(84, 'Carole', 'Connelly', 77, 47),
(85, 'Elda', 'Upton', 60, 13),
(86, 'Antoinette', 'Pfannerstill', 43, 13),
(87, 'Nelle', 'Rempel', 32, 47),
(88, 'Sim', 'Roberts', 54, 31),
(89, 'Rebeka', 'Medhurst', 18, 32),
(90, 'Ayana', 'Morar', 57, 9),
(91, 'Bruce', 'Kiehn', 55, 44),
(92, 'Fanny', 'Beier', 74, 4),
(93, 'Craig', 'Oberbrunner', 36, 11),
(94, 'Deshaun', 'Treutel', 74, 36),
(95, 'Drew', 'Franecki', 28, 9),
(96, 'Uriah', 'Leannon', 41, 30),
(97, 'Roma', 'Medhurst', 80, 45),
(98, 'Garland', 'Dibbert', 65, 41),
(99, 'Eveline', 'McClure', 25, 45),
(100, 'Katelin', 'Parisian', 35, 23);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cursos`
--

CREATE TABLE `cursos` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cursos`
--

INSERT INTO `cursos` (`id`, `nome`) VALUES
(1, 'Engenharia de Software'),
(2, 'Ciência da Computação'),
(3, 'Design Gráfico'),
(4, 'Administração de Empresas'),
(5, 'Marketing Digital'),
(6, 'Medicina'),
(7, 'Direito'),
(8, 'Engenharia Civil'),
(9, 'Psicologia'),
(10, 'Arquitetura'),
(11, 'Economia'),
(12, 'Enfermagem'),
(13, 'Biologia'),
(14, 'Física'),
(15, 'Matemática'),
(16, 'Química'),
(17, 'História'),
(18, 'Geografia'),
(19, 'Letras'),
(20, 'Pedagogia'),
(21, 'Gastronomia'),
(22, 'Engenharia Elétrica'),
(23, 'Música'),
(24, 'Cinema'),
(25, 'Teatro'),
(26, 'Dança'),
(27, 'Jornalismo'),
(28, 'Relações Internacionais'),
(29, 'Design de Moda'),
(30, 'Engenharia Mecânica'),
(31, 'Nutrição'),
(32, 'Farmácia'),
(33, 'Veterinária'),
(34, 'Fisioterapia'),
(35, 'Odontologia'),
(36, 'Artes Plásticas'),
(37, 'Turismo'),
(38, 'Hotelaria'),
(39, 'Engenharia Química'),
(40, 'Engenharia de Alimentos'),
(41, 'Medicina Veterinária'),
(42, 'Engenharia de Produção'),
(43, 'Astrofísica'),
(44, 'Engenharia Aeroespacial'),
(45, 'Robótica'),
(46, 'Geologia'),
(47, 'Neurociência');

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `preco` decimal(10,2) DEFAULT NULL,
  `estoque` int(11) DEFAULT NULL,
  `categoria` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `produtos`
--

INSERT INTO `produtos` (`id`, `nome`, `preco`, `estoque`, `categoria`) VALUES
(1, 'Soap', 672.00, 199, 'Grocery'),
(2, 'Gloves', 44.00, 29, 'Music'),
(3, 'Shoes', 548.00, 233, 'Industrial'),
(4, 'Shirt', 230.00, 181, 'Health'),
(5, 'Pants', 137.00, 253, 'Health'),
(6, 'Gloves', 344.00, 251, 'Tools'),
(7, 'Pizza', 996.00, 100, 'Outdoors'),
(8, 'Chair', 601.00, 166, 'Tools'),
(9, 'Soap', 227.00, 101, 'Industrial'),
(10, 'Tuna', 986.00, 106, 'Baby'),
(11, 'Mouse', 626.00, 214, 'Jewelery'),
(12, 'Computer', 349.00, 143, 'Health'),
(13, 'Car', 76.00, 22, 'Electronics'),
(14, 'Table', 962.00, 65, 'Health'),
(15, 'Chair', 889.00, 232, 'Books'),
(16, 'Pants', 686.00, 77, 'Tools'),
(17, 'Chicken', 718.00, 127, 'Music'),
(18, 'Hat', 261.00, 66, 'Music'),
(19, 'Car', 746.00, 224, 'Sports'),
(20, 'Bacon', 953.00, 66, 'Computers'),
(21, 'Bacon', 3.00, 235, 'Clothing'),
(22, 'Hat', 428.00, 192, 'Computers'),
(23, 'Fish', 824.00, 257, 'Health'),
(24, 'Ball', 763.00, 173, 'Books'),
(25, 'Chair', 905.00, 238, 'Shoes'),
(26, 'Chair', 702.00, 216, 'Music'),
(27, 'Bacon', 957.00, 267, 'Shoes'),
(28, 'Chicken', 511.00, 4, 'Books'),
(29, 'Cheese', 145.00, 178, 'Baby'),
(30, 'Cheese', 45.00, 78, 'Beauty'),
(31, 'Chips', 609.00, 230, 'Outdoors'),
(32, 'Shirt', 426.00, 219, 'Computers'),
(33, 'Towels', 205.00, 154, 'Movies'),
(34, 'Pizza', 419.00, 117, 'Tools'),
(35, 'Sausages', 62.00, 12, 'Toys'),
(36, 'Fish', 206.00, 57, 'Industrial'),
(37, 'Keyboard', 889.00, 292, 'Health'),
(38, 'Pants', 708.00, 77, 'Grocery'),
(39, 'Bacon', 351.00, 225, 'Home'),
(40, 'Pants', 683.00, 157, 'Books'),
(41, 'Tuna', 937.00, 275, 'Health'),
(42, 'Shirt', 264.00, 220, 'Sports'),
(43, 'Fish', 931.00, 300, 'Movies'),
(44, 'Salad', 913.00, 209, 'Electronics'),
(45, 'Mouse', 67.00, 186, 'Movies'),
(46, 'Salad', 41.00, 196, 'Movies'),
(47, 'Soap', 515.00, 240, 'Toys'),
(48, 'Bike', 475.00, 126, 'Toys'),
(49, 'Gloves', 539.00, 37, 'Garden'),
(50, 'Towels', 348.00, 30, 'Toys'),
(51, 'Sausages', 119.00, 41, 'Shoes'),
(52, 'Keyboard', 306.00, 81, 'Toys'),
(53, 'Car', 810.00, 35, 'Shoes'),
(54, 'Towels', 602.00, 40, 'Automotive'),
(55, 'Keyboard', 498.00, 238, 'Movies'),
(56, 'Car', 314.00, 94, 'Kids'),
(57, 'Table', 345.00, 249, 'Baby'),
(58, 'Salad', 71.00, 183, 'Games'),
(59, 'Mouse', 400.00, 218, 'Shoes'),
(60, 'Chips', 771.00, 5, 'Garden'),
(61, 'Pants', 479.00, 227, 'Games'),
(62, 'Chips', 941.00, 203, 'Tools'),
(63, 'Chair', 277.00, 265, 'Baby'),
(64, 'Ball', 650.00, 266, 'Games'),
(65, 'Table', 205.00, 288, 'Computers'),
(66, 'Table', 269.00, 209, 'Tools'),
(67, 'Table', 312.00, 193, 'Health'),
(68, 'Towels', 924.00, 200, 'Kids'),
(69, 'Mouse', 58.00, 54, 'Beauty'),
(70, 'Gloves', 923.00, 42, 'Jewelery'),
(71, 'Ball', 274.00, 10, 'Sports'),
(72, 'Pizza', 707.00, 18, 'Music'),
(73, 'Towels', 644.00, 137, 'Games'),
(74, 'Hat', 767.00, 37, 'Books'),
(75, 'Pants', 258.00, 52, 'Kids'),
(76, 'Chips', 631.00, 240, 'Clothing'),
(77, 'Table', 539.00, 271, 'Beauty'),
(78, 'Fish', 575.00, 139, 'Home'),
(79, 'Chair', 724.00, 242, 'Books'),
(80, 'Hat', 725.00, 265, 'Industrial'),
(81, 'Table', 479.00, 58, 'Computers'),
(82, 'Gloves', 591.00, 259, 'Clothing'),
(83, 'Sausages', 951.00, 152, 'Industrial'),
(84, 'Bacon', 747.00, 295, 'Garden'),
(85, 'Gloves', 931.00, 122, 'Toys'),
(86, 'Keyboard', 107.00, 124, 'Electronics'),
(87, 'Ball', 721.00, 286, 'Electronics'),
(88, 'Shirt', 211.00, 48, 'Sports'),
(89, 'Computer', 456.00, 151, 'Grocery'),
(90, 'Tuna', 771.00, 192, 'Tools'),
(91, 'Table', 675.00, 247, 'Automotive'),
(92, 'Salad', 666.00, 48, 'Home'),
(93, 'Ball', 121.00, 235, 'Tools'),
(94, 'Cheese', 192.00, 44, 'Automotive'),
(95, 'Fish', 935.00, 232, 'Grocery'),
(96, 'Towels', 916.00, 119, 'Grocery'),
(97, 'Soap', 69.00, 147, 'Health'),
(98, 'Chair', 40.00, 86, 'Sports'),
(99, 'Car', 764.00, 84, 'Movies'),
(100, 'Table', 472.00, 141, 'Baby');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `alunos`
--
ALTER TABLE `alunos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `curso_id` (`curso_id`);

--
-- Índices de tabela `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `alunos`
--
ALTER TABLE `alunos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de tabela `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `alunos`
--
ALTER TABLE `alunos`
  ADD CONSTRAINT `alunos_ibfk_1` FOREIGN KEY (`curso_id`) REFERENCES `cursos` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
