CREATE TABLE `estoque` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `peso` int(10) DEFAULT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  `data` varchar(45) DEFAULT NULL,
  `valor` int (10) DEFAULT NULL,
  
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
