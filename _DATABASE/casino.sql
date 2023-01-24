-- phpMyAdmin SQL Dump


--
-- Database: `casino`
--

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE DATABASE casino;
USE casino;

CREATE TABLE `video` (
  `ID` int(11) NOT NULL,
  `Name` char(35) NOT NULL DEFAULT '',
  `FrontGameId` char(3) NOT NULL DEFAULT '',
  `ProviderTitle` char(20) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`ID`, `Name`, `FrontGameId`, `ProviderTitle`) VALUES
(1, 'WolfsBet', 'ASG205', 'BETCONSTRUCT'),
(2, 'Viking Treausre', 'ASG204', 'BETCONSTRUCT'),
(3, 'Under Water', 'ASG208', 'BETCONSTRUCT');

-- --------------------------------------------------------






