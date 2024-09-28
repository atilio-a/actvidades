CREATE TABLE `departamentos` (
 `id` int(11) NOT NULL AUTO_INCREMENT,
 `nombre` varchar(100) NOT NULL,
 `zona` varchar(50) DEFAULT NULL,
 PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `localidades` (
 `id` bigint(20) NOT NULL AUTO_INCREMENT,
 `nombre` varchar(100) NOT NULL,
 `departamento_id` int(11) DEFAULT NULL,
 PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1
