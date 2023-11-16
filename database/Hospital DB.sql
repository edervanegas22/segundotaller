CREATE DATABASE hospital;
USE hospital;

CREATE TABLE `medicos` (
  `cedula` int PRIMARY KEY,
  `nombres` varchar(100),
  `apellidos` varchar(100),
  `especialidad` varchar(50),
  `consultorio` char(3),
  `correo` varchar(50),
  `telefono` varchar(50)
);

CREATE TABLE `pacientes` (
  `cedula` int PRIMARY KEY,
  `nombres` varchar(100),
  `apellidos` varchar(100),
  `fecha_nacimiento` date,
  `telefono` varchar(50)
);

CREATE TABLE `cita_medica` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `cedula_medico` int,
  `cedula_paciente` int,
  `fecha_cita` date
);

ALTER TABLE `cita_medica` ADD FOREIGN KEY (`cedula_medico`) REFERENCES `medicos` (`cedula`);

ALTER TABLE `cita_medica` ADD FOREIGN KEY (`cedula_paciente`) REFERENCES `pacientes` (`cedula`);
