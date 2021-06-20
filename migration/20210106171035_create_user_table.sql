CREATE TABLE IF NOT EXISTS `user` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `email` VARCHAR(100) NULL,
  `password` VARCHAR(100) NULL,
  `mobile_number` VARCHAR(10) NULL,
  `is_active` BOOLEAN NOT NULL DEFAULT true,
  `is_verified` BOOLEAN NOT NULL DEFAULT false,
  `has_active_password` BOOLEAN NOT NULL DEFAULT false,
  `is_absolete` BOOLEAN NOT NULL DEFAULT false,
  `created_at` DATETIME DEFAULT CURRENT_TIMESTAMP ,
  `updated_at` DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`))
ENGINE = InnoDB DEFAULT CHARSET=utf8mb4;