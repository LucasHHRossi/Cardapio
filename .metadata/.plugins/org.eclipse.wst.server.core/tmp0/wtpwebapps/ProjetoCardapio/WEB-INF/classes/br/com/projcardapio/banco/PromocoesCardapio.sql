CREATE TABLE `promocoescardapio`(
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(45) DEFAULT NULL,
  `datainicio` varchar(45) DEFAULT NULL,
  `datafim` varchar(45) DEFAULT NULL,
  `valor` double(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
)ENGINE=InnoDB AUTO_INCREMENT=5DEFAULT CHARSET=utf8;