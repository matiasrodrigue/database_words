CREATE TABLE `documentos_de_identidad` (
  `dni` int NOT NULL,  -- Es obligatorio poner un valor
  `nome` varchar(25) DEFAULT NULL,
  `sobrenome` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`dni`)); -- Es el identificador principal de la tabla