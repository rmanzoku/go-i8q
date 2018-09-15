
CREATE TABLE `sheets` (
`id` INT (10) UNSIGNED NOT NULL AUTO_INCREMENT,
`rank` VARCHAR (128) NOT NULL,
`num` INT (10) UNSIGNED NOT NULL,
`price` INT (10) UNSIGNED NOT NULL,
PRIMARY KEY (`id`),
UNIQUE INDEX `rank_num_uniq` (`rank`, `num`)
) DEFAULT CHARACTER SET = utf8mb4;

CREATE TABLE `users` (
`id` INT (10) UNSIGNED NOT NULL AUTO_INCREMENT,
`nickname` VARCHAR (128) NOT NULL,
`login_name` VARCHAR (128) NOT NULL,
`pass_hash` VARCHAR (128) NOT NULL,
PRIMARY KEY (`id`),
UNIQUE INDEX `login_name_uniq` (`login_name`)
)  DEFAULT CHARACTER SET = utf8mb4;

CREATE TABLE `administrators` (
`id` INT (10) UNSIGNED NOT NULL AUTO_INCREMENT,
`nickname` VARCHAR (128) NOT NULL,
`login_name` VARCHAR (128) NOT NULL,
`pass_hash` VARCHAR (128) NOT NULL,
PRIMARY KEY (`id`),
UNIQUE INDEX `login_name_uniq` (`login_name`)
)  DEFAULT CHARACTER SET = utf8mb4;

CREATE TABLE `events` (
`id` INT (10) UNSIGNED NOT NULL AUTO_INCREMENT,
`title` VARCHAR (128) NOT NULL,
`public_fg` TINYINT (1) NOT NULL,
`closed_fg` TINYINT (1) NOT NULL,
`price` INT (10) UNSIGNED NOT NULL,
PRIMARY KEY (`id`)
)  DEFAULT CHARACTER SET = utf8mb4;

CREATE TABLE `reservations` (
`id` INT (10) UNSIGNED NOT NULL AUTO_INCREMENT,
`event_id` INT (10) UNSIGNED NOT NULL,
`sheet_id` INT (10) UNSIGNED NOT NULL,
`user_id` INT (10) UNSIGNED NOT NULL,
`reserved_at` DATETIME (6) NOT NULL,
`canceled_at` DATETIME (6) DEFAULT NULL,
PRIMARY KEY (`id`),
INDEX `event_id_and_sheet_id_idx` (`event_id`, `sheet_id`)
)  DEFAULT CHARACTER SET = utf8mb4;
