-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 21-Ago-2023 às 15:50
-- Versão do servidor: 10.4.28-MariaDB
-- versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `tecinternet_escola_thais`
--
CREATE DATABASE IF NOT EXISTS `tecinternet_escola_thais` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `tecinternet_escola_thais`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `alunos`
--

CREATE TABLE `alunos` (
  `id` tinyint(4) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `data_nascimento` date NOT NULL,
  `primeiranota` decimal(4,2) NOT NULL,
  `segundanota` decimal(4,2) NOT NULL,
  `curso_id` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `alunos`
--

INSERT INTO `alunos` (`id`, `nome`, `data_nascimento`, `primeiranota`, `segundanota`, `curso_id`) VALUES
(5, 'Thais', '2005-01-20', 10.00, 9.00, 5),
(60, 'Alex', '2002-05-28', 9.00, 2.00, 2),
(61, 'Bianca', '2003-01-15', 7.00, 8.00, 1),
(62, 'Carlos', '2002-08-03', 5.00, 6.00, 3),
(63, 'Daniela', '2001-11-22', 8.00, 9.00, 2),
(64, 'Eduardo', '2003-03-10', 6.00, 7.00, 4),
(65, 'Fernanda', '2002-06-18', 9.00, 8.00, 5),
(66, 'Gabriel', '2001-09-25', 7.00, 6.00, 4),
(67, 'Helena', '2000-04-07', 8.00, 9.00, 5),
(68, 'Isabela', '1997-07-14', 6.00, 7.00, 3),
(69, 'Vanessa', '2002-02-28', 10.00, 10.00, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cursos`
--

CREATE TABLE `cursos` (
  `id` tinyint(4) NOT NULL,
  `titulo` varchar(30) NOT NULL,
  `carga_horaria` tinyint(4) NOT NULL,
  `id_professor` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `cursos`
--

INSERT INTO `cursos` (`id`, `titulo`, `carga_horaria`, `id_professor`) VALUES
(1, 'Front-End', 40, 5),
(2, 'Back-End', 80, 4),
(3, 'UX/UI Design', 30, 3),
(4, 'Figma', 10, 2),
(5, 'Redes de Computadores', 100, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `professores`
--

CREATE TABLE `professores` (
  `id` tinyint(4) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `area_atuacao` text NOT NULL,
  `id_curso` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `professores`
--

INSERT INTO `professores` (`id`, `nome`, `area_atuacao`, `id_curso`) VALUES
(1, 'Jon Oliva', 'Infra', 5),
(2, 'Lemmy Kilmister', 'Design', 4),
(3, 'Neil Peart', 'Design', 3),
(4, 'Ozzy Osbourne', 'Desenvolvimento', 2),
(5, 'David Gilmour', 'Desenvolvimento', 1);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `alunos`
--
ALTER TABLE `alunos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_alunos_cursos` (`curso_id`);

--
-- Índices para tabela `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_cursos_professores` (`id_professor`);

--
-- Índices para tabela `professores`
--
ALTER TABLE `professores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_professores_cursos` (`id_curso`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `alunos`
--
ALTER TABLE `alunos`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT de tabela `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `professores`
--
ALTER TABLE `professores`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `alunos`
--
ALTER TABLE `alunos`
  ADD CONSTRAINT `fk_alunos_cursos` FOREIGN KEY (`curso_id`) REFERENCES `cursos` (`id`);

--
-- Limitadores para a tabela `cursos`
--
ALTER TABLE `cursos`
  ADD CONSTRAINT `fk_cursos_professores` FOREIGN KEY (`id_professor`) REFERENCES `professores` (`id`);

--
-- Limitadores para a tabela `professores`
--
ALTER TABLE `professores`
  ADD CONSTRAINT `fk_professores_cursos` FOREIGN KEY (`id_curso`) REFERENCES `cursos` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
