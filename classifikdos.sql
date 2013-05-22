-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tempo de Geração: 
-- Versão do Servidor: 5.5.27
-- Versão do PHP: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de Dados: `classifikdos`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

CREATE TABLE IF NOT EXISTS `categorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(128) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Extraindo dados da tabela `categorias`
--

INSERT INTO `categorias` (`id`, `nome`) VALUES
(5, 'Informática'),
(6, 'Eletrodomésticos');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estilos`
--

CREATE TABLE IF NOT EXISTS `estilos` (
  `usuario` varchar(256) NOT NULL,
  `cor` varchar(256) NOT NULL,
  `paginacao` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Extraindo dados da tabela `estilos`
--

INSERT INTO `estilos` (`usuario`, `cor`, `paginacao`, `id`) VALUES
('testando', '1', 10, 1),
('', '', 3, 3),
('', '', 5, 4),
('', '', 3, 5),
('', '1', 3, 6),
('', '2', 10, 7),
('', 'Preto', 0, 8),
('oi', '2', 1, 9),
('hehe', '#fff', 6, 10),
('danilo', '#fff', 6, 11),
('jose', '#fff', 6, 12),
('elmano', '#fff', 6, 13);

-- --------------------------------------------------------

--
-- Estrutura da tabela `mensagems`
--

CREATE TABLE IF NOT EXISTS `mensagems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender` varchar(256) NOT NULL,
  `receiver` varchar(256) NOT NULL,
  `title` varchar(256) NOT NULL,
  `message` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Extraindo dados da tabela `mensagems`
--

INSERT INTO `mensagems` (`id`, `sender`, `receiver`, `title`, `message`, `status`, `created`) VALUES
(1, 'danilo', 'elmano', 'Teste', 'hehehehehehehe testando 123 321.', 1, '0000-00-00 00:00:00'),
(2, 'danilo', 'sdsd', 'Teste', 'a', 0, '0000-00-00 00:00:00'),
(3, 'danilo', 'zdasdas', 'Teste', 'a', 0, '0000-00-00 00:00:00'),
(4, 'danilo', 'zdasdas', 'Teste', 'a', 0, '2012-12-29 05:59:31'),
(6, 'danilo', 'danilo', 'teste', 'teste', 1, '2012-12-29 06:35:17'),
(7, 'elmano', 'danilo', 'iae boy ', 'testando aqui', 0, '2012-12-29 19:38:15'),
(8, 'danilo', 'danilo', 'aiosoiasejaosi', 'seiojasoiejasoiejasoiejasoiejaoisejaosieseiojasoiejasoiejasoiejasoiejaoisejaosieseiojasoiejasoiejasoiejasoiejaoisejaosieseiojasoiejasoiejasoiejasoiejaoisejaosieseiojasoiejasoiejasoiejasoiejaoisejaosieseiojasoiejasoiejasoiejasoiejaoisejaosieseiojasoiejasoiejasoiejasoiejaoisejaosieseiojasoiejasoiejasoiejasoiejaoisejaosieseiojasoiejasoiejasoiejasoiejaoisejaosieseiojasoiejasoiejasoiejasoiejaoisejaosieseiojasoiejasoiejasoiejasoiejaoisejaosieseiojasoiejasoiejasoiejasoiejaoisejaosieseiojasoiejasoiejasoiejasoiejaoisejaosieseiojasoiejasoiejasoiejasoiejaoisejaosieseiojasoiejasoiejasoiejasoiejaoisejaosieseiojasoiejasoiejasoiejasoiejaoisejaosieseiojasoiejasoiejasoiejasoiejaoisejaosieseiojasoiejasoiejasoiejasoiejaoisejaosieseiojasoiejasoiejasoiejasoiejaoisejaosieseiojasoiejasoiejasoiejasoiejaoisejaosieseiojasoiejasoiejasoiejasoiejaoisejaosieseiojasoiejasoiejasoiejasoiejaoisejaosieseiojasoiejasoiejasoiejasoiejaoisejaosieseiojasoiejasoiejasoiejasoiejaoisejaosieseiojasoiejasoiejasoiejasoiejaoisejaosieseiojasoiejasoiejasoiejasoiejaoisejaosieseiojasoiejasoiejasoiejasoiejaoisejaosieseiojasoiejasoiejasoiejasoiejaoisejaosieseiojasoiejasoiejasoiejasoiejaoisejaosieseiojasoiejasoiejasoiejasoiejaoisejaosie', 1, '2013-01-02 21:22:58'),
(9, 'oi', 'oi', 'teste', 'teste', 1, '2013-03-11 03:29:17');

-- --------------------------------------------------------

--
-- Estrutura da tabela `nao_recomendacaos`
--

CREATE TABLE IF NOT EXISTS `nao_recomendacaos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `recomendou` varchar(256) NOT NULL,
  `recomendado` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Extraindo dados da tabela `nao_recomendacaos`
--

INSERT INTO `nao_recomendacaos` (`id`, `recomendou`, `recomendado`) VALUES
(3, 'joao', 'jose'),
(4, 'elmano', 'jose'),
(5, 'lucas', 'jose');

-- --------------------------------------------------------

--
-- Estrutura da tabela `permissaos`
--

CREATE TABLE IF NOT EXISTS `permissaos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(256) NOT NULL,
  `id_produto` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Extraindo dados da tabela `permissaos`
--

INSERT INTO `permissaos` (`id`, `usuario`, `id_produto`) VALUES
(2, 'haha', 17),
(3, 'haha', 17),
(4, 'testando', 17),
(5, 'sadfsdf', 17),
(6, 'haha', 78),
(7, 'haha', 78),
(8, 'haha', 80),
(9, 'haha', 81),
(10, '1', 82),
(11, 'hehe', 82),
(12, 'hehe', 84),
(13, '1', 85),
(14, '1', 86),
(15, '1', 87);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE IF NOT EXISTS `produtos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(256) NOT NULL,
  `descricao` text NOT NULL,
  `preco` double NOT NULL,
  `foto` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `data` date NOT NULL,
  `categoria` int(11) NOT NULL,
  `vendedor` varchar(256) NOT NULL,
  `vendido` tinyint(1) NOT NULL,
  `restrito` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=88 ;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id`, `nome`, `descricao`, `preco`, `foto`, `data`, `categoria`, `vendedor`, `vendido`, `restrito`) VALUES
(86, 'Macaco', 'macaquinho', 1100, NULL, '2013-03-17', 5, 'jose', 1, 0),
(87, 'Carro', 'Equipado', 27000, NULL, '2013-03-17', 6, 'jose', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `recomendacaos`
--

CREATE TABLE IF NOT EXISTS `recomendacaos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `recomendou` varchar(256) NOT NULL,
  `recomendado` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Extraindo dados da tabela `recomendacaos`
--

INSERT INTO `recomendacaos` (`id`, `recomendou`, `recomendado`) VALUES
(5, 'danilo', 'jose');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `telephone` varchar(256) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` varchar(20) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `age` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=59 ;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `telephone`, `username`, `password`, `role`, `created`, `modified`, `age`) VALUES
(54, 'joao', 'oi@oi.com', '(23) 423423-4234', 'joao', '4e9d5788f109c5620718a37eb2a55fc7edf5b7bf', 'vendedor', '2013-03-02 17:13:25', '2013-03-17 03:33:17', 25),
(55, 'lucas', 'lucas@lucas.com', '(24) 323423-4234', 'lucas', '432bbc6c3f182c1dea3779ee68adb79dd82d0844', 'vendedor', '2013-03-03 00:02:49', '2013-03-17 03:31:14', 19),
(56, 'danilo', 'danilo@danilo.com', '(38) 123123-1231', 'danilo', '844b1791394d71b12a02b1ceab7cc4f9c546dadc', 'vendedor', '2013-03-16 05:12:54', '2013-03-16 05:12:54', 18),
(57, 'jose', 'jose@jose.com', '(82) 3333-2222', 'jose', 'a83d9c7d2d445ff12152b0aaf307e0aa42d66501', 'vendedor', '2013-03-17 03:33:49', '2013-03-17 03:33:49', 24),
(58, 'elmano', 'elmano@elamno.com', '(92) 31231-2312', 'elmano', 'b05643649964cbee810b5e157dab28de57201e72', 'vendedor', '2013-03-17 03:47:32', '2013-03-17 03:47:32', 23);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
