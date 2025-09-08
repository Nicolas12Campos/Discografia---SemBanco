-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 25/08/2025 às 16:51
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `discografianicolas2cb`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbldisco`
--

CREATE TABLE `tbldisco` (
  `idDisco` int(11) NOT NULL,
  `disTítulo` varchar(45) DEFAULT NULL,
  `disData` date DEFAULT NULL,
  `disFormato` int(11) DEFAULT NULL,
  `dis_quantMusica` int(11) NOT NULL,
  `disProdutor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `tbldisco`
--

INSERT INTO `tbldisco` (`idDisco`, `disTítulo`, `disData`, `disFormato`, `dis_quantMusica`, `disProdutor`) VALUES
(1, 'Night Tomorrow', '2025-08-05', 1, 5, 1),
(2, 'VitorDisck', '2025-08-05', 3, 1, 2),
(3, 'DisckVigarista ', '2025-08-05', 2, 2, 3),
(4, 'Queen', '2025-08-05', 4, 2, 4),
(5, 'Voyager', '2025-08-03', 5, 10, 5);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tblendereco`
--

CREATE TABLE `tblendereco` (
  `idEndereco` int(11) NOT NULL,
  `endPais` varchar(45) DEFAULT NULL,
  `endUF` varchar(45) DEFAULT NULL,
  `endBairro` varchar(45) DEFAULT NULL,
  `endNumero` varchar(45) DEFAULT NULL,
  `endComplemento` varchar(45) DEFAULT NULL,
  `endCEP` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `tblendereco`
--

INSERT INTO `tblendereco` (`idEndereco`, `endPais`, `endUF`, `endBairro`, `endNumero`, `endComplemento`, `endCEP`) VALUES
(1, 'Brasil', 'SP', 'Jardim do Vale', '99', 'Casa', '12512270'),
(2, 'Brasil', 'SP', 'Jardim do Vale II', '12', 'Casa', '12512280'),
(3, 'Brasil', 'SP', 'Jardim Espernça', '55', 'Casa', '12512290'),
(4, 'Brasil', 'SP', 'Colonia ', '88', 'Casa', '12512360'),
(5, 'Brasil', 'SP', 'Santa Luzia', '510', 'Sobrado', '12512480');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tblformato`
--

CREATE TABLE `tblformato` (
  `idFormato` int(11) NOT NULL,
  `forTipo` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `tblformato`
--

INSERT INTO `tblformato` (`idFormato`, `forTipo`) VALUES
(1, 'CD'),
(2, 'Vinil'),
(3, 'MP3'),
(4, 'Pendrive'),
(5, 'Fita cassete');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tblinstrumento`
--

CREATE TABLE `tblinstrumento` (
  `idInstrumento` int(11) NOT NULL,
  `insNome` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `tblinstrumento`
--

INSERT INTO `tblinstrumento` (`idInstrumento`, `insNome`) VALUES
(1, 'Flauta Transversal'),
(2, 'Trompete'),
(3, 'Violão'),
(4, 'Violino'),
(5, 'Sax Alto');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tblmusica`
--

CREATE TABLE `tblmusica` (
  `idMusica` int(11) NOT NULL,
  `mus_idAutor` int(11) DEFAULT NULL,
  `musTitulo` varchar(45) DEFAULT NULL,
  `musDisco` int(11) DEFAULT NULL,
  `musParticipantes` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `tblmusica`
--

INSERT INTO `tblmusica` (`idMusica`, `mus_idAutor`, `musTitulo`, `musDisco`, `musParticipantes`) VALUES
(1, 1, 'Imagine Dragons', 1, 1),
(2, 2, 'Imagine Dreens', 2, 2),
(3, 3, 'Drems ', 3, 3),
(4, 4, 'Roock ', 4, 4),
(5, 5, 'O Autor', 5, 5);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tblmusicos`
--

CREATE TABLE `tblmusicos` (
  `idMusicos` int(11) NOT NULL,
  `musNome` varchar(45) NOT NULL,
  `mus_idEndereco` int(11) DEFAULT NULL,
  `musTelefone` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `tblmusicos`
--

INSERT INTO `tblmusicos` (`idMusicos`, `musNome`, `mus_idEndereco`, `musTelefone`) VALUES
(1, 'Saulo', 1, '40028922'),
(2, 'Thales', 2, '12517280'),
(3, 'YAN', 3, '12680250'),
(4, 'Nicolas Camarâ', 4, '12517950'),
(5, 'Vitor', 5, '12517456');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tblmusicosinstrumento`
--

CREATE TABLE `tblmusicosinstrumento` (
  `id_instrumento` int(3) NOT NULL,
  `id_dono` int(3) NOT NULL,
  `id_requisitor` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tblmusicosinstrumento`
--

INSERT INTO `tblmusicosinstrumento` (`id_instrumento`, `id_dono`, `id_requisitor`) VALUES
(1, 1, 2),
(2, 2, 1),
(3, 4, 5),
(5, 3, 4),
(4, 5, 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tblparticipantes`
--

CREATE TABLE `tblparticipantes` (
  `idMusico` int(11) DEFAULT NULL,
  `idMusica` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `tblparticipantes`
--

INSERT INTO `tblparticipantes` (`idMusico`, `idMusica`) VALUES
(5, 1),
(2, 4),
(3, 2),
(4, 2),
(3, 1);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `tbldisco`
--
ALTER TABLE `tbldisco`
  ADD PRIMARY KEY (`idDisco`),
  ADD KEY `fk_formato_idx` (`disFormato`),
  ADD KEY `fk_produtor_idx` (`disProdutor`);

--
-- Índices de tabela `tblendereco`
--
ALTER TABLE `tblendereco`
  ADD PRIMARY KEY (`idEndereco`);

--
-- Índices de tabela `tblformato`
--
ALTER TABLE `tblformato`
  ADD PRIMARY KEY (`idFormato`);

--
-- Índices de tabela `tblinstrumento`
--
ALTER TABLE `tblinstrumento`
  ADD PRIMARY KEY (`idInstrumento`);

--
-- Índices de tabela `tblmusica`
--
ALTER TABLE `tblmusica`
  ADD PRIMARY KEY (`idMusica`),
  ADD KEY `fk_autor_idx` (`mus_idAutor`),
  ADD KEY `fk_disco_idx` (`musDisco`);

--
-- Índices de tabela `tblmusicos`
--
ALTER TABLE `tblmusicos`
  ADD PRIMARY KEY (`idMusicos`),
  ADD KEY `fk_endereco_idx` (`mus_idEndereco`);

--
-- Índices de tabela `tblmusicosinstrumento`
--
ALTER TABLE `tblmusicosinstrumento`
  ADD KEY `id_instrumentoEmp` (`id_instrumento`),
  ADD KEY `id_instrumentoDono` (`id_dono`),
  ADD KEY `id_instrumentoRequisitor` (`id_requisitor`);

--
-- Índices de tabela `tblparticipantes`
--
ALTER TABLE `tblparticipantes`
  ADD KEY `fk_musico_idx` (`idMusico`),
  ADD KEY `fk_musica_idx` (`idMusica`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tbldisco`
--
ALTER TABLE `tbldisco`
  MODIFY `idDisco` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `tblendereco`
--
ALTER TABLE `tblendereco`
  MODIFY `idEndereco` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `tblformato`
--
ALTER TABLE `tblformato`
  MODIFY `idFormato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `tblmusica`
--
ALTER TABLE `tblmusica`
  MODIFY `idMusica` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `tblmusicos`
--
ALTER TABLE `tblmusicos`
  MODIFY `idMusicos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `tbldisco`
--
ALTER TABLE `tbldisco`
  ADD CONSTRAINT `fk_formato` FOREIGN KEY (`disFormato`) REFERENCES `tblformato` (`idFormato`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_produtor` FOREIGN KEY (`disProdutor`) REFERENCES `tblmusicos` (`idMusicos`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `tblinstrumento`
--
ALTER TABLE `tblinstrumento`
  ADD CONSTRAINT `idIntrumento` FOREIGN KEY (`idInstrumento`) REFERENCES `tblmusicos` (`idMusicos`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `tblmusica`
--
ALTER TABLE `tblmusica`
  ADD CONSTRAINT `fk_autor` FOREIGN KEY (`mus_idAutor`) REFERENCES `tblmusicos` (`idMusicos`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_disco` FOREIGN KEY (`musDisco`) REFERENCES `tbldisco` (`idDisco`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `tblmusicos`
--
ALTER TABLE `tblmusicos`
  ADD CONSTRAINT `fk_endereco` FOREIGN KEY (`mus_idEndereco`) REFERENCES `tblendereco` (`idEndereco`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `tblmusicosinstrumento`
--
ALTER TABLE `tblmusicosinstrumento`
  ADD CONSTRAINT `id_instrumentoDono` FOREIGN KEY (`id_dono`) REFERENCES `tblmusicos` (`idMusicos`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_instrumentoEmp` FOREIGN KEY (`id_instrumento`) REFERENCES `tblinstrumento` (`idInstrumento`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_instrumentoRequisitor` FOREIGN KEY (`id_requisitor`) REFERENCES `tblmusicos` (`idMusicos`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `tblparticipantes`
--
ALTER TABLE `tblparticipantes`
  ADD CONSTRAINT `fk_musica` FOREIGN KEY (`idMusica`) REFERENCES `tblmusica` (`idMusica`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_musico` FOREIGN KEY (`idMusico`) REFERENCES `tblmusicos` (`idMusicos`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
