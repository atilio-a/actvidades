CREATE TABLE `programs` (
 `id` int(11) NOT NULL AUTO_INCREMENT,
 `nombre` varchar(250) NOT NULL,
 `descripcion` varchar(300) DEFAULT NULL,
 `entity_id` int(11) DEFAULT NULL,
 `created_at` date DEFAULT NULL,
 `updated_at` date DEFAULT NULL,
 `user_id` int(11) DEFAULT NULL,
 PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


CREATE TABLE `projects` (
 `id` int(11) NOT NULL AUTO_INCREMENT,
 `nombre` varchar(250) NOT NULL,
 `descripcion` varchar(300) DEFAULT NULL,
 `entity_id` int(11) DEFAULT NULL,
 `created_at` date DEFAULT NULL,
 `updated_at` date DEFAULT NULL,
 `user_id` int(11) DEFAULT NULL,
 PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

ALTER TABLE `actions` CHANGE `program_id` `program_id` INT(100) NULL DEFAULT NULL;
ALTER TABLE `actions` CHANGE `proyecto` `project_id` INT(100) NULL DEFAULT NULL;

ALTER TABLE `categories` ADD `user_id` INT NULL AFTER `descripcion`, ADD `created_at` DATE NULL AFTER `user_id`, ADD `updated_at` DATE NOT NULL AFTER `created_at`;