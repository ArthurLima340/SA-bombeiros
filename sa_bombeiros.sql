-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 09-Out-2023 às 16:39
-- Versão do servidor: 8.0.21
-- versão do PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sa_bombeiros`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `decisao_transporte`
--

CREATE TABLE `decisao_transporte` (
  `critico` tinyint(1) NOT NULL,
  `instavel` tinyint(1) NOT NULL,
  `potencialmente_instavel` tinyint(1) NOT NULL,
  `estavel` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `forma_conducao`
--

CREATE TABLE `forma_conducao` (
  `deitada` tinyint(1) NOT NULL,
  `sentada` tinyint(1) NOT NULL,
  `semi_sentada` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `localizacao_traumas`
--

CREATE TABLE `localizacao_traumas` (
  `local` varchar(20) NOT NULL,
  `lado` varchar(20) NOT NULL,
  `face` varchar(20) NOT NULL,
  `tipo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `login`
--

CREATE TABLE `login` (
  `nome_usuario` varchar(20) NOT NULL,
  `senha` varchar(15) NOT NULL,
  `cpf_usuario` varchar(11) NOT NULL,
  `registro_abvesc` int NOT NULL,
  `nome_completo_usuario` varchar(50) NOT NULL,
  `n_unidade` int NOT NULL,
  `unidade` varchar(50) NOT NULL,
  `data_nasc` date NOT NULL,
  `validade` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `login`
--

INSERT INTO `login` (`nome_usuario`, `senha`, `cpf_usuario`, `registro_abvesc`, `nome_completo_usuario`, `n_unidade`, `unidade`, `data_nasc`, `validade`) VALUES
('user_adm', 'sou.adm', '10065279905', 140001, 'Geovana da Silva Jochem', 14, 'Joinville', '2005-11-25', '2024-10-09'),
('ana_ju', 'naju123', '13454347904', 160001, 'Ana Julia Briesemeister Xavier', 16, 'Joinville', '2006-06-16', '2024-10-09');

-- --------------------------------------------------------

--
-- Estrutura da tabela `problemas_encontrados`
--

CREATE TABLE `problemas_encontrados` (
  `id_problemas_encontrados` int NOT NULL,
  `psiquiatrico` tinyint(1) NOT NULL,
  `respiratório_DPOC` tinyint(1) NOT NULL,
  `respiratório_inalacao_fumaca` tinyint(1) NOT NULL,
  `diabetes_hiperglicemia` tinyint(1) NOT NULL,
  `diabetes_hipoglicemia` tinyint(1) NOT NULL,
  `obstetrico_parto_emergencia` tinyint(1) NOT NULL,
  `obstetrico_gestante` tinyint(1) NOT NULL,
  `obstetrico_hemorragia_excessiva` tinyint(1) NOT NULL,
  `outro` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `sinais_sintomas`
--

CREATE TABLE `sinais_sintomas` (
  `abdomem_sensível_rígido` tinyint(1) NOT NULL,
  `afundamento_cranio` tinyint(1) NOT NULL,
  `agitacao` tinyint(1) NOT NULL,
  `amnesia` tinyint(1) NOT NULL,
  `angina_peito` tinyint(1) NOT NULL,
  `apineia` tinyint(1) NOT NULL,
  `bradicardia` tinyint(1) NOT NULL,
  `bradipneia` tinyint(1) NOT NULL,
  `bronco_aspirando` tinyint(1) NOT NULL,
  `cefaleia` tinyint(1) NOT NULL,
  `cianose_labios` tinyint(1) NOT NULL,
  `cianose_extremidades` tinyint(1) NOT NULL,
  `convulsao` tinyint(1) NOT NULL,
  `decorticacao` tinyint(1) NOT NULL,
  `deformidade` tinyint(1) NOT NULL,
  `descerebracao` tinyint(1) NOT NULL,
  `desmaio` tinyint(1) NOT NULL,
  `desvio_traqueia` tinyint(1) NOT NULL,
  `despneia` tinyint(1) NOT NULL,
  `dor_local` tinyint(1) NOT NULL,
  `edema_localizado` tinyint(1) NOT NULL,
  `edema_generalizado` tinyint(1) NOT NULL,
  `enfisema_subcutaneo` tinyint(1) NOT NULL,
  `face_palida` tinyint(1) NOT NULL,
  `hemorragia_interna` tinyint(1) NOT NULL,
  `hemorragia_externa` tinyint(1) NOT NULL,
  `hipertensao` tinyint(1) NOT NULL,
  `hipotencao` tinyint(1) NOT NULL,
  `nausea_vomitos` tinyint(1) NOT NULL,
  `nasoragia` tinyint(1) NOT NULL,
  `obito` tinyint(1) NOT NULL,
  `otorreia` tinyint(1) NOT NULL,
  `otorragia` tinyint(1) NOT NULL,
  `o.v.a.c.e` tinyint(1) NOT NULL,
  `parada_cardiaca` tinyint(1) NOT NULL,
  `parada_respiratoria` tinyint(1) NOT NULL,
  `priapismo` tinyint(1) NOT NULL,
  `prurido_pele` tinyint(1) NOT NULL,
  `pupilas_anisocoria` tinyint(1) NOT NULL,
  `pupilas_isocoria` tinyint(1) NOT NULL,
  `pupilas_midriase` tinyint(1) NOT NULL,
  `pupilas_miose` tinyint(1) NOT NULL,
  `pupilas_reagente` tinyint(1) NOT NULL,
  `pupilas_nao_reagente` tinyint(1) NOT NULL,
  `sede` tinyint(1) NOT NULL,
  `sinal_battle` tinyint(1) NOT NULL,
  `sinal_guaxinim` tinyint(1) NOT NULL,
  `sudorese` tinyint(1) NOT NULL,
  `taquipneia` tinyint(1) NOT NULL,
  `taquicardia` tinyint(1) NOT NULL,
  `tontura` tinyint(1) NOT NULL,
  `outro` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_ocorrencia`
--

CREATE TABLE `tipo_ocorrencia` (
  `id_tipo_ocorrencia` int NOT NULL,
  `causado_por_animais` tinyint(1) NOT NULL,
  `com_meio_transporte` tinyint(1) NOT NULL,
  `desmoronamento_deslizamento` tinyint(1) NOT NULL,
  `emergencia_medica` tinyint(1) NOT NULL,
  `queda_altura_2m` tinyint(1) NOT NULL,
  `tentativa_suicidio` tinyint(1) NOT NULL,
  `queda_própria_altura` tinyint(1) NOT NULL,
  `afogamento` tinyint(1) NOT NULL,
  `agressao` tinyint(1) NOT NULL,
  `atropelamento` tinyint(1) NOT NULL,
  `choque_eletrico` tinyint(1) NOT NULL,
  `desabamento` tinyint(1) NOT NULL,
  `doméstico` tinyint(1) NOT NULL,
  `esportivo` tinyint(1) NOT NULL,
  `intoxicacao` tinyint(1) NOT NULL,
  `queda_bicicleta` tinyint(1) NOT NULL,
  `queda_moto` tinyint(1) NOT NULL,
  `queda_nivel_<2m` tinyint(1) NOT NULL,
  `trabalho` tinyint(1) NOT NULL,
  `transferencia` tinyint(1) NOT NULL,
  `outro` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `transporte`
--

CREATE TABLE `transporte` (
  `aereo` tinyint(1) NOT NULL,
  `clinico` tinyint(1) NOT NULL,
  `emergencial` tinyint(1) NOT NULL,
  `pos_trauma` tinyint(1) NOT NULL,
  `samu` tinyint(1) NOT NULL,
  `outro` tinyint(1) NOT NULL,
  `sem_remocao` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `vitima_era`
--

CREATE TABLE `vitima_era` (
  `ciclista` tinyint(1) NOT NULL,
  `condutor_moto` tinyint(1) NOT NULL,
  `gestante` tinyint(1) NOT NULL,
  `passageiro_banco_frente` tinyint(1) NOT NULL,
  `passageiro_banco_tras` tinyint(1) NOT NULL,
  `condutor_carro` tinyint(1) NOT NULL,
  `clinico` tinyint(1) NOT NULL,
  `trauma` tinyint(1) NOT NULL,
  `passageiro_moto` tinyint(1) NOT NULL,
  `pedestre` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
