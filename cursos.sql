-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema CursosOn
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema CursosOn
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `CursosOn` DEFAULT CHARACTER SET utf8 ;
USE `CursosOn` ;

-- -----------------------------------------------------
-- Table `CursosOn`.`cursos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CursosOn`.`cursos` (
  `idcursos` INT NOT NULL,
  `nomeCurso` VARCHAR(45) NOT NULL,
  `cargaHoraria` INT NOT NULL,
  `dataInicio` DATE NOT NULL,
  `dataTermino` DATE NOT NULL,
  PRIMARY KEY (`idcursos`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CursosOn`.`matriculas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CursosOn`.`matriculas` (
  `idmatriculas` INT NOT NULL,
  `dataMatricula` DATE NOT NULL,
  PRIMARY KEY (`idmatriculas`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CursosOn`.`alunos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CursosOn`.`alunos` (
  `idAlunos` INT NOT NULL,
  `nomeAluno` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `dataNascimento` DATE NOT NULL,
  `cursos_idcursos` INT NOT NULL,
  `matriculas_idmatriculas` INT NOT NULL,
  PRIMARY KEY (`idAlunos`, `cursos_idcursos`, `matriculas_idmatriculas`),
  INDEX `fk_alunos_matriculas1_idx` (`matriculas_idmatriculas` ASC) VISIBLE,
  CONSTRAINT `fk_alunos_matriculas1`
    FOREIGN KEY (`matriculas_idmatriculas`)
    REFERENCES `CursosOn`.`matriculas` (`idmatriculas`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CursosOn`.`certificados`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CursosOn`.`certificados` (
  `idCertificado` INT NOT NULL,
  `dataEmissao` DATE NOT NULL,
  `alunos_idAlunos` INT NOT NULL,
  `alunos_cursos_idcursos` INT NOT NULL,
  `alunos_matriculas_idmatriculas` INT NOT NULL,
  PRIMARY KEY (`idCertificado`, `alunos_idAlunos`, `alunos_cursos_idcursos`, `alunos_matriculas_idmatriculas`),
  INDEX `fk_certificados_alunos1_idx` (`alunos_idAlunos` ASC, `alunos_cursos_idcursos` ASC, `alunos_matriculas_idmatriculas` ASC) VISIBLE,
  CONSTRAINT `fk_certificados_alunos1`
    FOREIGN KEY (`alunos_idAlunos` , `alunos_cursos_idcursos` , `alunos_matriculas_idmatriculas`)
    REFERENCES `CursosOn`.`alunos` (`idAlunos` , `cursos_idcursos` , `matriculas_idmatriculas`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CursosOn`.`avaliacoes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CursosOn`.`avaliacoes` (
  `idAvaliacoes` INT NOT NULL,
  `tipoAvaliacao` VARCHAR(45) NOT NULL,
  `notaMaxima` DECIMAL NOT NULL,
  `peso` DECIMAL NOT NULL,
  `alunos_idAlunos` INT NOT NULL,
  `alunos_cursos_idcursos` INT NOT NULL,
  PRIMARY KEY (`idAvaliacoes`, `alunos_idAlunos`, `alunos_cursos_idcursos`),
  INDEX `fk_avaliacoes_alunos1_idx` (`alunos_idAlunos` ASC, `alunos_cursos_idcursos` ASC) VISIBLE,
  CONSTRAINT `fk_avaliacoes_alunos1`
    FOREIGN KEY (`alunos_idAlunos` , `alunos_cursos_idcursos`)
    REFERENCES `CursosOn`.`alunos` (`idAlunos` , `cursos_idcursos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CursosOn`.`instrutores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CursosOn`.`instrutores` (
  `idinstrutores` INT NOT NULL,
  `nomeInstrutores` VARCHAR(45) NOT NULL,
  `especialiadade` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `telefone` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idinstrutores`))
ENGINE = InnoDB;









SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
