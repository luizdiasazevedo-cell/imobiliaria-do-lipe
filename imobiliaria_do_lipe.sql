-- phpMyAdmin SQL Dump
-- version 5.2.1deb3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 12/11/2026 às 11:54
-- Versão do servidor: 8.0.42-0ubuntu0.24.04.2
-- Versão do PHP: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `imobiliaria do lipe`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `imoveis`
--

CREATE TABLE `imoveis` (
  `id` int NOT NULL,
  `endereco` varchar(50) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `bairro` varchar(50) DEFAULT NULL,
  `id_proprietario` int DEFAULT NULL,
  `tipo_imovel` varchar(48) DEFAULT NULL,
  `tipo_negocio` varchar(48) DEFAULT NULL,
  `valor` float DEFAULT NULL
) ;

--
-- Despejando dados para a tabela `imoveis`
--

INSERT INTO `imoveis` (`id`, `endereco`, `estado`, `cidade`, `bairro`, `id_proprietario`, `tipo_imovel`, `tipo_negocio`, `valor`) VALUES
(1, 'rua dos balaso, 5346', 'pr', 'santa catarina', 'centro', NULL, 'casa', 'aluguel', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `negocios`
--

CREATE TABLE `negocios` (
  `id` int NOT NULL,
  `id_cliente` int DEFAULT NULL,
  `id_imovel` int DEFAULT NULL,
  `contrato` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `pessoas`
--

CREATE TABLE `pessoas` (
  `id` int NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `senha` varchar(50) NOT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `cpf` varchar(14) NOT NULL,
  `fone` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `pessoas`
--

INSERT INTO `pessoas` (`id`, `nome`, `email`, `senha`, `endereco`, `cpf`, `fone`) VALUES
(1, 'LUIZ FELIPE', 'LUIZ@EMAIL.COM', 'P4$$@46!9', 'RUA DOS PASSAROS NULS', '12345678', '44 765534232'),
(2, 'JOAO SILVA', 'JOAO@EMAIL.COM', 'J0@O#123!', 'RUA DAS FLORES N 10', '12345679', '44 765534233'),
(3, 'MARIA SOUZA', 'MARIA@EMAIL.COM', 'M@riA#456!', 'RUA DOS PINHEIROS N 20', '12345680', '44 765534234'),
(4, 'PEDRO SANTOS', 'PEDRO@EMAIL.COM', 'P3dr0@789!', 'AVENIDA CENTRAL N 30', '12345681', '44 765534235'),
(5, 'ANA OLIVEIRA', 'ANA@EMAIL.COM', 'An@#12345!', 'RUA AZUL N 40', '12345682', '44 765534236'),
(6, 'CARLOS LIMA', 'CARLOS@EMAIL.COM', 'C@rl0s#321!', 'RUA VERDE N 50', '12345683', '44 765534237'),
(7, 'JULIA COSTA', 'JULIA@EMAIL.COM', 'JuL!@2026', 'RUA DAS ACACIAS N 60', '12345684', '44 765534238'),
(8, 'MATEUS ROCHA', 'MATEUS@EMAIL.COM', 'M@t#9876!', 'AVENIDA BRASIL N 70', '12345685', '44 765534239'),
(9, 'BEATRIZ ALVES', 'BEATRIZ@EMAIL.COM', 'B3@triz#12', 'RUA DO SOL N 80', '12345686', '44 765534240'),
(10, 'GABRIEL MARTINS', 'GABRIEL@EMAIL.COM', 'G@briel#55!', 'RUA DAS PEDRAS N 90', '12345687', '44 765534241'),
(11, 'LARISSA FERREIRA', 'LARISSA@EMAIL.COM', 'L@r!ssa2026', 'RUA DAS AVES N 100', '12345688', '44 765534242'),
(12, 'RAFAEL GOMES', 'RAFAEL@EMAIL.COM', 'R@f#321654!', 'RUA DO CAMPO N 110', '12345689', '44 765534243'),
(13, 'AMANDA RIBEIRO', 'AMANDA@EMAIL.COM', 'Am@nda#789!', 'AVENIDA PAULISTA N 120', '12345690', '44 765534244'),
(14, 'BRUNO CARVALHO', 'BRUNO@EMAIL.COM', 'Brun0@456!', 'RUA DAS ROSAS N 130', '12345691', '44 765534245'),
(15, 'ISABELA MORAES', 'ISABELA@EMAIL.COM', 'Is@#2026bella', 'RUA DA PAZ N 140', '12345692', '44 765534246'),
(16, 'FELIPE BARROS', 'FELIPE@EMAIL.COM', 'F3l!pe#123', 'RUA DOS LAGOS N 150', '12345693', '44 765534247'),
(17, 'CAMILA NUNES', 'CAMILA@EMAIL.COM', 'C@mila@987!', 'RUA DO BOSQUE N 160', '12345694', '44 765534248'),
(18, 'DIEGO PEREIRA', 'DIEGO@EMAIL.COM', 'D!ego#654', 'AVENIDA DAS FLORES N 170', '12345695', '44 765534249'),
(19, 'VITOR ARAUJO', 'VITOR@EMAIL.COM', 'V!tor@321#', 'RUA NOVA N 180', '12345696', '44 765534250'),
(20, 'SOPHIA CARDOSO', 'SOPHIA@EMAIL.COM', 'S0phia#456!', 'RUA DOS GIRASSOIS N 190', '12345697', '44 765534251'),
(21, 'LUCAS TEIXEIRA', 'LUCAS@EMAIL.COM', 'Luc@s#789!', 'RUA DAS PALMEIRAS N 200', '12345698', '44 765534252');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `imoveis`
--
ALTER TABLE `imoveis`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `negocios`
--
ALTER TABLE `negocios`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `pessoas`
--
ALTER TABLE `pessoas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `imoveis`
--
ALTER TABLE `imoveis`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `negocios`
--
ALTER TABLE `negocios`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pessoas`
--
ALTER TABLE `pessoas`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
