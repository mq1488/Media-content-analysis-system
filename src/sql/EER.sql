
SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `mydb` ;

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`ServiceNode`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`ServiceNode` (
  `url` TEXT NOT NULL,
  `name` TEXT NULL,
  `description` TEXT NULL,
  `OpenApi` TEXT NULL,
  PRIMARY KEY (`url`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`ServiceChain`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`ServiceChain` (
  `id` INT NOT NULL,
  `next` TEXT NULL,
  `ServiceNode_url` TEXT NOT NULL,
  `ServiceChain_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_ServiceChain_ServiceNode1_idx` (`ServiceNode_url` ASC) VISIBLE,
  INDEX `fk_ServiceChain_ServiceChain1_idx` (`ServiceChain_id` ASC) VISIBLE,
  CONSTRAINT `fk_ServiceChain_ServiceNode1`
    FOREIGN KEY (`ServiceNode_url`)
    REFERENCES `mydb`.`ServiceNode` (`url`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ServiceChain_ServiceChain1`
    FOREIGN KEY (`ServiceChain_id`)
    REFERENCES `mydb`.`ServiceChain` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Stream`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Stream` (
  `name` INT NOT NULL,
  `description` TEXT NULL,
  `etc` TEXT NULL,
  `ServiceChain_id` INT NOT NULL,
  PRIMARY KEY (`name`),
  INDEX `fk_Stream_ServiceChain1_idx` (`ServiceChain_id` ASC) VISIBLE,
  CONSTRAINT `fk_Stream_ServiceChain1`
    FOREIGN KEY (`ServiceChain_id`)
    REFERENCES `mydb`.`ServiceChain` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`BeatType`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`BeatType` (
  `name` TEXT NOT NULL,
  `installer` TEXT NULL,
  PRIMARY KEY (`name`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`beat`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`beat` (
  `id GUID` INT NOT NULL,
  `interval` INT NULL,
  `Stream_name` INT NOT NULL,
  `BeatType_name` TEXT NOT NULL,
  PRIMARY KEY (`id GUID`),
  INDEX `fk_beat_Stream1_idx` (`Stream_name` ASC) VISIBLE,
  INDEX `fk_beat_BeatType1_idx` (`BeatType_name` ASC) VISIBLE,
  CONSTRAINT `fk_beat_Stream1`
    FOREIGN KEY (`Stream_name`)
    REFERENCES `mydb`.`Stream` (`name`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_beat_BeatType1`
    FOREIGN KEY (`BeatType_name`)
    REFERENCES `mydb`.`BeatType` (`name`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Source`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Source` (
  `url` TEXT NOT NULL,
  `password` TEXT NULL,
  `username` TEXT NULL,
  `apikey` TEXT NULL,
  `beat_id GUID` INT NOT NULL,
  PRIMARY KEY (`url`),
  UNIQUE INDEX `username_UNIQUE` (`username` ASC) VISIBLE,
  INDEX `fk_Source_beat_idx` (`beat_id GUID` ASC) VISIBLE,
  CONSTRAINT `fk_Source_beat`
    FOREIGN KEY (`beat_id GUID`)
    REFERENCES `mydb`.`beat` (`id GUID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`User`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`User` (
  `id` INT NOT NULL,
  `password` TEXT NULL,
  `email` TEXT NULL,
  `status` INT NULL,
  `username` VARCHAR(45) NULL,
  `beat_id GUID` INT NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE,
  UNIQUE INDEX `status_UNIQUE` (`status` ASC) VISIBLE,
  INDEX `fk_User_beat1_idx` (`beat_id GUID` ASC) VISIBLE,
  CONSTRAINT `fk_User_beat1`
    FOREIGN KEY (`beat_id GUID`)
    REFERENCES `mydb`.`beat` (`id GUID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
