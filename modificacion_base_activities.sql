CREATE TABLE `user_entities` (
 `id` bigint(20) NOT NULL AUTO_INCREMENT,
 `id_entity` bigint(20) NOT NULL,
 `id_user` bigint(20) NOT NULL,
 `observacion` varchar(200) DEFAULT NULL,
 PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `actions_teams` (
 `id` bigint(20) NOT NULL AUTO_INCREMENT,
 `action_id` bigint(20) NOT NULL,
 `teams_id` bigint(20) NOT NULL,
 `observacion` bigint(20) DEFAULT NULL,
 PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

teams	CREATE TABLE `teams` (
 `id` bigint(20) NOT NULL AUTO_INCREMENT,
 `nombre` varchar(100) NOT NULL,
 `apellido` varchar(100) NOT NULL,
 `telefono` varchar(50) DEFAULT NULL,
 `mail` varchar(100) DEFAULT NULL,
 `observaciones` varchar(150) DEFAULT NULL,
 `entity_id` bigint(20) DEFAULT NULL,
 PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

