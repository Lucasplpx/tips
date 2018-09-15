-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 15-Set-2018 às 13:03
-- Versão do servidor: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `titulo` varchar(30) NOT NULL,
  `corpo` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `posts`
--

INSERT INTO `posts` (`id`, `titulo`, `corpo`) VALUES
(1, 'Teste', 'Lorenohaosidfasdf  asdf asdfasd fasd asdf asd'),
(2, 'Teste', 'Lorenohaosidfasdf  asdf asdfasd fasd asdf asd'),
(3, 'Teste', 'Lorenohaosidfasdf  asdf asdfasd fasd asdf asd'),
(4, 'Teste', 'Lorenohaosidfasdf  asdf asdfasd fasd asdf asd'),
(5, 'Teste', 'Lorenohaosidfasdf  asdf asdfasd fasd asdf asd'),
(6, 'Teste', 'Lorenohaosidfasdf  asdf asdfasd fasd asdf asd'),
(7, 'Teste', 'Lorenohaosidfasdf  asdf asdfasd fasd asdf asd'),
(8, 'Teste', 'Lorenohaosidfasdf  asdf asdfasd fasd asdf asd'),
(9, 'Teste', 'Lorenohaosidfasdf  asdf asdfasd fasd asdf asd'),
(10, 'Teste', 'Lorenohaosidfasdf  asdf asdfasd fasd asdf asd'),
(11, 'Teste', 'Lorenohaosidfasdf  asdf asdfasd fasd asdf asd'),
(12, 'Teste', 'Lorenohaosidfasdf  asdf asdfasd fasd asdf asd'),
(13, 'Teste', 'Lorenohaosidfasdf  asdf asdfasd fasd asdf asd'),
(14, 'Teste', 'Lorenohaosidfasdf  asdf asdfasd fasd asdf asd'),
(15, 'Teste', 'Lorenohaosidfasdf  asdf asdfasd fasd asdf asd'),
(16, 'Teste', 'Lorenohaosidfasdf  asdf asdfasd fasd asdf asd'),
(17, 'Teste', 'Lorenohaosidfasdf  asdf asdfasd fasd asdf asd'),
(18, 'Teste', 'Lorenohaosidfasdf  asdf asdfasd fasd asdf asd'),
(19, 'Teste', 'Lorenohaosidfasdf  asdf asdfasd fasd asdf asd'),
(20, 'Teste', 'Lorenohaosidfasdf  asdf asdfasd fasd asdf asd'),
(21, 'Teste', 'Lorenohaosidfasdf  asdf asdfasd fasd asdf asd'),
(22, 'Teste', 'Lorenohaosidfasdf  asdf asdfasd fasd asdf asd'),
(23, 'Teste', 'Lorenohaosidfasdf  asdf asdfasd fasd asdf asd'),
(24, 'Teste', 'Lorenohaosidfasdf  asdf asdfasd fasd asdf asd'),
(25, 'Teste', 'Lorenohaosidfasdf  asdf asdfasd fasd asdf asd'),
(26, 'Teste', 'Lorenohaosidfasdf  asdf asdfasd fasd asdf asd'),
(27, 'Teste', 'Lorenohaosidfasdf  asdf asdfasd fasd asdf asd'),
(28, 'Teste', 'Lorenohaosidfasdf  asdf asdfasd fasd asdf asd'),
(29, 'Teste', 'Lorenohaosidfasdf  asdf asdfasd fasd asdf asd'),
(30, 'Teste', 'Lorenohaosidfasdf  asdf asdfasd fasd asdf asd'),
(31, 'Teste', 'Lorenohaosidfasdf  asdf asdfasd fasd asdf asd'),
(32, 'Teste', 'Lorenohaosidfasdf  asdf asdfasd fasd asdf asd'),
(33, 'Teste', 'Lorenohaosidfasdf  asdf asdfasd fasd asdf asd'),
(34, 'Teste', 'Lorenohaosidfasdf  asdf asdfasd fasd asdf asd'),
(35, 'Teste', 'Lorenohaosidfasdf  asdf asdfasd fasd asdf asd'),
(36, 'Teste', 'Lorenohaosidfasdf  asdf asdfasd fasd asdf asd'),
(37, 'Teste', 'Lorenohaosidfasdf  asdf asdfasd fasd asdf asd'),
(38, 'Teste', 'Lorenohaosidfasdf  asdf asdfasd fasd asdf asd'),
(39, 'Teste', 'Lorenohaosidfasdf  asdf asdfasd fasd asdf asd'),
(40, 'Teste', 'Lorenohaosidfasdf  asdf asdfasd fasd asdf asd'),
(41, 'Teste', 'Lorenohaosidfasdf  asdf asdfasd fasd asdf asd'),
(42, 'Teste', 'Lorenohaosidfasdf  asdf asdfasd fasd asdf asd'),
(43, 'Teste', 'Lorenohaosidfasdf  asdf asdfasd fasd asdf asd'),
(44, 'Teste', 'Lorenohaosidfasdf  asdf asdfasd fasd asdf asd'),
(45, 'Teste', 'Lorenohaosidfasdf  asdf asdfasd fasd asdf asd'),
(46, 'Teste', 'Lorenohaosidfasdf  asdf asdfasd fasd asdf asd'),
(47, 'Teste', 'Lorenohaosidfasdf  asdf asdfasd fasd asdf asd'),
(48, 'Teste', 'Lorenohaosidfasdf  asdf asdfasd fasd asdf asd'),
(49, 'Teste', 'Lorenohaosidfasdf  asdf asdfasd fasd asdf asd'),
(50, 'Teste', 'Lorenohaosidfasdf  asdf asdfasd fasd asdf asd'),
(51, 'Teste', 'Lorenohaosidfasdf  asdf asdfasd fasd asdf asd'),
(52, 'Teste', 'Lorenohaosidfasdf  asdf asdfasd fasd asdf asd'),
(53, 'Teste', 'Lorenohaosidfasdf  asdf asdfasd fasd asdf asd'),
(54, 'Teste', 'Lorenohaosidfasdf  asdf asdfasd fasd asdf asd');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `senha` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `senha`) VALUES
(2, 'Lucasx', 'tx@gmail.com', '250cf8b51c773f3f8dc8b4be8'),
(3, 'Asdf', 'twwewewex@gmail.com', '202cb962ac59075b964b07152'),
(5, 'BBBB', 'BBBB@gmail.com', '68053af2923e00204c3ca7c6a'),
(6, 'CCCC', 'CCCC@gmail.com', 'd9896d2a7c2b5695682e925a1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
