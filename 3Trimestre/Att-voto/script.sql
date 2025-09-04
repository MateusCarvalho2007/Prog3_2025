SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE DATABASE IF NOT EXISTS `Att_votos` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `Att_votos`;

CREATE TABLE `usuarios` (
  `idUsuario` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `senha` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idUsuario`);

ALTER TABLE `usuarios`
MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

CREATE TABLE `navegadores` (
  `idNavegador` int(11) NOT NULL,
  `nome` varchar(200) NOT NULL

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE `navegadores`
  ADD PRIMARY KEY (`idNavegador`);

ALTER TABLE `navegadores`
MODIFY `idNavegador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

INSERT INTO `navegadores` (`nome`) VALUES
('Google'),
('Opera GX'),
('Bing'),
('Edge');

CREATE TABLE `votos_resultado` (
  `idUsuario` int(11) NOT NULL,
  `idNavegador` int(11) NOT NULL,
  `idVoto` int(11) NOT NULL

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE `votos_resultado`
  ADD PRIMARY KEY (`idVoto`);

ALTER TABLE `votos_resultado`
MODIFY `idVoto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

ALTER TABLE `votos_resultado`
  ADD CONSTRAINT `votos_resultado_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`idUsuario`);

ALTER TABLE `votos_resultado`
  ADD CONSTRAINT `votos_resultado_ibfk_2` FOREIGN KEY (`idNavegador`) REFERENCES `navegadores` (`idNavegador`);

COMMIT;

