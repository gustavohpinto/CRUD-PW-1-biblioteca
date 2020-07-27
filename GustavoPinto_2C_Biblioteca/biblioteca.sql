-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 24-Jul-2020 às 17:49
-- Versão do servidor: 10.1.37-MariaDB
-- versão do PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `biblioteca`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno_cliente`
--

CREATE TABLE `aluno_cliente` (
  `ra` int(11) NOT NULL,
  `dataNascimento` date DEFAULT NULL,
  `nome` varchar(200) DEFAULT NULL,
  `telfixo` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `turma` varchar(200) DEFAULT NULL,
  `celular` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `aluno_cliente`
--

INSERT INTO `aluno_cliente` (`ra`, `dataNascimento`, `nome`, `telfixo`, `email`, `turma`, `celular`) VALUES
(1, '2004-03-13', 'Luana Capossi', NULL, 'lubritto@gmail.com', '2B', '96764-6734'),
(2, '2004-09-23', 'Gustavo Pinto', NULL, 'gustavopinto11@hotmail.com', '2C', '97843-3224'),
(3, '2003-10-21', 'João Victor Morais', NULL, 'jv021@yahoo.com.br', '2C', '98743-5673'),
(4, '2003-10-21', 'João Pedro Morais', NULL, 'jpmoraisdsn@gmail.com', '2C', '97465-6732'),
(5, '2004-06-18', 'Lorenzo Piatieri', '', 'lcp2039@hotmail.com', '2A', '94855-4587'),
(6, '2002-04-11', 'Marian Nicolau', NULL, 'goleironamariannicolau@contato.com.br', '3F', '97473-4635'),
(7, '2004-06-25', 'Mariana Bertolino', NULL, 'maribert@gmail.com', '2I', '98437-3835'),
(8, '2004-12-30', 'Gordon Banks', NULL, 'bigbanks@bol.com', '2C', '96342-7742'),
(9, '2005-02-28', 'Amaral Oliveira', NULL, 'amaraldoolho@yahoo.com', '1C', '97426-3844'),
(10, '2004-01-05', 'Antoine Walter', NULL, 'antwalt001@gmail.com.br', '1B', '98747-5874');

-- --------------------------------------------------------

--
-- Estrutura da tabela `bibliotecario`
--

CREATE TABLE `bibliotecario` (
  `codFuncionario` int(11) NOT NULL,
  `nome` varchar(200) DEFAULT NULL,
  `telefone` varchar(200) DEFAULT NULL,
  `rg` varchar(200) DEFAULT NULL,
  `cpf` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  `logradouro` varchar(200) DEFAULT NULL,
  `num` varchar(200) DEFAULT NULL,
  `complemento` varchar(200) DEFAULT NULL,
  `bairro` varchar(200) DEFAULT NULL,
  `cidade` varchar(200) DEFAULT NULL,
  `uf` char(2) DEFAULT NULL,
  `cep` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `bibliotecario`
--

INSERT INTO `bibliotecario` (`codFuncionario`, `nome`, `telefone`, `rg`, `cpf`, `email`, `data_nascimento`, `logradouro`, `num`, `complemento`, `bairro`, `cidade`, `uf`, `cep`) VALUES
(1, 'Ivanildo Pereira', '94824-4646', NULL, '467.546.568-14', 'ivanildopereira015@gmail.com', '1973-09-02', NULL, NULL, NULL, NULL, 'Ribeirão Pires', 'SP', NULL),
(2, 'Carlos Alberto', '97374-4734', NULL, '263.378.76-21', 'calberto11@hotmail.com', '2000-03-22', NULL, NULL, NULL, NULL, 'Mauá', 'SP', NULL),
(3, 'Lorraine Maria', '96734-8364', NULL, '373.693.945-44', 'llmaria987@yahoo.com.br', '1991-11-14', NULL, NULL, NULL, NULL, 'Rio Grande da Serra', 'SP', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `emprestimo_devolucao`
--

CREATE TABLE `emprestimo_devolucao` (
  `codEmprestimo` int(11) NOT NULL,
  `data_emprestimo` date DEFAULT NULL,
  `data_devolucao` date DEFAULT NULL,
  `ra` int(11) DEFAULT NULL,
  `codFuncionario` int(11) DEFAULT NULL,
  `codLivro` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `emprestimo_devolucao`
--

INSERT INTO `emprestimo_devolucao` (`codEmprestimo`, `data_emprestimo`, `data_devolucao`, `ra`, `codFuncionario`, `codLivro`) VALUES
(1, '2019-05-03', '2019-05-18', 3, 1, 2),
(2, '2019-05-03', '2019-05-18', 3, 2, 7),
(3, '2019-05-05', '2019-05-20', 8, 3, 1),
(4, '2019-05-10', '2019-05-25', 7, 2, 4),
(5, '2019-05-11', '2019-05-26', 3, 2, 3),
(6, '2019-05-15', '2019-05-30', 1, 1, 5),
(7, '2019-05-23', '2019-06-07', 2, 1, 2),
(8, '2019-05-23', '2019-06-07', 5, 3, 9),
(9, '2019-05-25', '2019-06-09', 9, 1, 10),
(10, '2019-05-29', '2019-06-13', 4, 3, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `livro`
--

CREATE TABLE `livro` (
  `codLivro` int(11) NOT NULL,
  `titulo` varchar(200) DEFAULT NULL,
  `editora` varchar(200) DEFAULT NULL,
  `autor` varchar(200) DEFAULT NULL,
  `genero` varchar(200) DEFAULT NULL,
  `paginas` int(11) DEFAULT NULL,
  `qtdExemplares` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `livro`
--

INSERT INTO `livro` (`codLivro`, `titulo`, `editora`, `autor`, `genero`, `paginas`, `qtdExemplares`) VALUES
(1, 'A garota do lago', 'Faro Editorial', 'Charlie Donlea', 'Romance', 100, 3),
(2, 'O conto do Aia', 'Rocco', 'Margaret Atwood', 'Romance', 150, 5),
(3, 'O Homem de Giz', 'Intríseca', 'C. J. Tudor', 'Romance', 200, 7),
(4, 'O Milagre da Manhã', 'BestSeller', 'Hal Elrod', 'Autoajuda', 230, 1),
(5, 'Pai Rico, Pai Pobre', 'Alta Books', 'Robert Kiyosaki', 'Autoajuda', 400, 2),
(6, 'Escravidão', 'Globo Livros', 'Laurentino Gomes', 'Não-Ficção', 140, 9),
(7, 'A Cinco Passos de Você', 'Globo', 'Rachael Lippincott', 'InfantoJuvenil', 132, 3),
(8, 'O Poder da Ação Para Crianças', 'Gente', 'Paulo Vieira', 'InfantoJuvenil', 120, 2),
(9, 'Cem Anos de Solidão', 'Record', 'Gabriel García Márquez', 'Romance', 110, 4),
(10, 'Um Escândalo na Boêmia', 'Record', 'Arthur Conan Doyle', 'Mistério', 220, 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `senha` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `senha`) VALUES
(1, 'Gustavo Pinto', 'gustavinho@gmail.com', '1234'),
(2, 'Anderson Vanin', 'andershow@gmail.com', '4321');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aluno_cliente`
--
ALTER TABLE `aluno_cliente`
  ADD PRIMARY KEY (`ra`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `bibliotecario`
--
ALTER TABLE `bibliotecario`
  ADD PRIMARY KEY (`codFuncionario`),
  ADD UNIQUE KEY `rg` (`rg`),
  ADD UNIQUE KEY `cpf` (`cpf`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `emprestimo_devolucao`
--
ALTER TABLE `emprestimo_devolucao`
  ADD PRIMARY KEY (`codEmprestimo`),
  ADD KEY `ra` (`ra`),
  ADD KEY `codFuncionario` (`codFuncionario`),
  ADD KEY `codLivro` (`codLivro`);

--
-- Indexes for table `livro`
--
ALTER TABLE `livro`
  ADD PRIMARY KEY (`codLivro`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aluno_cliente`
--
ALTER TABLE `aluno_cliente`
  MODIFY `ra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `bibliotecario`
--
ALTER TABLE `bibliotecario`
  MODIFY `codFuncionario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `emprestimo_devolucao`
--
ALTER TABLE `emprestimo_devolucao`
  MODIFY `codEmprestimo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `livro`
--
ALTER TABLE `livro`
  MODIFY `codLivro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `emprestimo_devolucao`
--
ALTER TABLE `emprestimo_devolucao`
  ADD CONSTRAINT `emprestimo_devolucao_ibfk_1` FOREIGN KEY (`ra`) REFERENCES `aluno_cliente` (`ra`),
  ADD CONSTRAINT `emprestimo_devolucao_ibfk_2` FOREIGN KEY (`codFuncionario`) REFERENCES `bibliotecario` (`codFuncionario`),
  ADD CONSTRAINT `emprestimo_devolucao_ibfk_3` FOREIGN KEY (`codLivro`) REFERENCES `livro` (`codLivro`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
