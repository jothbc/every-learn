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
(1, 'Produto A', 100.50, 10, 'Eletrônicos'),
(2, 'Produto B', 200.75, 5, 'Móveis'),
(3, 'Produto C', 50.30, 20, 'Vestuário'),
(4, 'Produto D', 300.40, 7, 'Eletrônicos'),
(5, 'Produto E', 80.20, 15, 'Livros'),
(6, 'Produto F', 120.10, 8, 'Móveis'),
(7, 'Produto G', 110.60, 9, 'Vestuário'),
(8, 'Produto H', 90.70, 6, 'Livros'),
(9, 'Produto I', 210.85, 14, 'Eletrônicos'),
(10, 'Produto J', 240.15, 3, 'Móveis'),
(11, 'Produto K', 170.55, 11, 'Vestuário'),
(12, 'Produto L', 260.95, 12, 'Eletrônicos'),
(13, 'Produto M', 280.25, 16, 'Livros'),
(14, 'Produto N', 150.65, 13, 'Móveis'),
(15, 'Produto O', 220.35, 2, 'Vestuário'),
(16, 'Produto P', 190.45, 18, 'Livros'),
(17, 'Produto Q', 140.05, 1, 'Eletrônicos'),
(18, 'Produto R', 270.75, 17, 'Móveis'),
(19, 'Produto S', 180.95, 19, 'Vestuário'),
(20, 'Produto T', 290.85, 21, 'Livros'),
(21, 'Produto U', 130.65, 4, 'Eletrônicos'),
(22, 'Produto V', 310.35, 23, 'Móveis'),
(23, 'Produto W', 330.15, 22, 'Vestuário'),
(24, 'Produto X', 350.55, 24, 'Livros'),
(25, 'Produto Y', 160.45, 26, 'Eletrônicos'),
(26, 'Produto Z', 370.95, 25, 'Móveis'),
(27, 'Produto AA', 390.25, 27, 'Vestuário'),
(28, 'Produto AB', 410.05, 29, 'Livros'),
(29, 'Produto AC', 430.65, 28, 'Eletrônicos'),
(30, 'Produto AD', 450.35, 30, 'Móveis'),
(31, 'Produto AE', 470.15, 31, 'Vestuário'),
(32, 'Produto AF', 490.55, 32, 'Livros'),
(33, 'Produto AG', 510.45, 33, 'Eletrônicos'),
(34, 'Produto AH', 530.95, 35, 'Móveis'),
(35, 'Produto AI', 550.25, 34, 'Vestuário'),
(36, 'Produto AJ', 570.05, 37, 'Livros'),
(37, 'Produto AK', 590.65, 36, 'Eletrônicos'),
(38, 'Produto AL', 610.35, 38, 'Móveis'),
(39, 'Produto AM', 630.15, 39, 'Vestuário'),
(40, 'Produto AN', 650.55, 40, 'Livros'),
(41, 'Produto AO', 670.45, 41, 'Eletrônicos'),
(42, 'Produto AP', 690.95, 43, 'Móveis'),
(43, 'Produto AQ', 710.25, 42, 'Vestuário'),
(44, 'Produto AR', 730.05, 44, 'Livros'),
(45, 'Produto AS', 750.65, 45, 'Eletrônicos'),
(46, 'Produto AT', 770.35, 46, 'Móveis'),
(47, 'Produto AU', 790.15, 47, 'Vestuário'),
(48, 'Produto AV', 810.55, 49, 'Livros'),
(49, 'Produto AW', 830.45, 48, 'Eletrônicos'),
(50, 'Produto AX', 850.95, 50, 'Móveis');


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
