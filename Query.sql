-- --------------------------------
-- Script de MySQL
-- Base de Datos : Ciudad Verde
-- Author : Jose Luis Pintado Vasquez
-- Fecha : 23-01-2020
-- --------------------------------
drop table if exists ciudadverde;
create database ciudadverde;
use ciudadverde;



create table propietario(
	dni CHAR(8) NOT NULL PRIMARY KEY,
    nombre varchar(50) NOT NULL,
	apellido varchar(50) NOT NULL,
	tipousuario varchar(20) NOT NULL,
    estado TINYINT(1)
);

create table departamento(
	numdepartamento CHAR(8) NOT NULL PRIMARY KEY,
    ubicaciondepartamento varchar(100) NOT NULL,
	detalledepartamento varchar(100) NOT NULL,
    estadodepartamento TINYINT(1)
);

create table propietarioxdepartamento(
	dni CHAR(8),
    numdepartamento CHAR(8) NOT NULL,
    FOREIGN KEY (dni) REFERENCES propietario(dni),
    FOREIGN KEY (numdepartamento) REFERENCES departamento(numdepartamento)
);
create table pago(
	idpago int NOT NULL PRIMARY KEY,
    dni CHAR(8) NOT NULL,
	montopagobanco DECIMAL(5,2)  NOT NULL,
    fechaemision date  NOT NULL,
    fechaVence  date  NOT NULL,
    FechaPago  date  NOT NULL,
    numdepartamento CHAR(8) NOT NULL,
    FOREIGN KEY (dni) REFERENCES propietario(dni),
    FOREIGN KEY (numdepartamento) REFERENCES departamento(numdepartamento)
);
select * from pago

INSERT INTO `propietario` (`dni`, `nombre`, `apellido`, `tipousuario`, `estado`) VALUES ('70469002', 'Jose Luis ', 'Pintado Vasquez', 'admin', '1');
INSERT INTO `propietario` (`dni`, `nombre`, `apellido`, `tipousuario`, `estado`) VALUES ('70469001', 'Alanis', 'Cruz Condori', 'estandar', '1');
INSERT INTO `propietario` (`dni`, `nombre`, `apellido`, `tipousuario`, `estado`) VALUES ('70469000', 'Alisson', 'Sinche', 'estandar', '1');
INSERT INTO `propietario` (`dni`, `nombre`, `apellido`, `tipousuario`, `estado`) VALUES ('70469003', 'Mirella', 'Pintado Huaman', 'estandar', '1');
INSERT INTO `propietario` (`dni`, `nombre`, `apellido`, `tipousuario`, `estado`) VALUES ('70469004', 'Jancarlo', 'Rivera Flores', 'Admin', '1');
INSERT INTO `propietario` (`dni`, `nombre`, `apellido`, `tipousuario`, `estado`) VALUES ('70469005', 'Ines', 'Marcas', 'estandar', '1');
INSERT INTO `propietario` (`dni`, `nombre`, `apellido`, `tipousuario`, `estado`) VALUES ('70469006', 'Bernie', 'Avila Andrade', 'estandar', '1');
INSERT INTO `propietario` (`dni`, `nombre`, `apellido`, `tipousuario`, `estado`) VALUES ('70469007', 'Marta', 'Sanchez', 'estandar', '1');
INSERT INTO `propietario` (`dni`, `nombre`, `apellido`, `tipousuario`, `estado`) VALUES ('70469008', 'Efrain', 'Pintado Vasquez', 'estandar', '1');

INSERT INTO `departamento` (`numdepartamento`, `ubicaciondepartamento`, `detalledepartamento`, `estadodepartamento`) VALUES ('k101', 'Centro Sur', 'K', '1');
INSERT INTO `departamento` (`numdepartamento`, `ubicaciondepartamento`, `detalledepartamento`, `estadodepartamento`) VALUES ('k102', 'Centro Sur', 'K', '1');
INSERT INTO `departamento` (`numdepartamento`, `ubicaciondepartamento`, `detalledepartamento`, `estadodepartamento`) VALUES ('k103', 'Centro Sur', 'K', '1');
INSERT INTO `departamento` (`numdepartamento`, `ubicaciondepartamento`, `detalledepartamento`, `estadodepartamento`) VALUES ('k104', 'Centro Sur', 'K', '1');
INSERT INTO `departamento` (`numdepartamento`, `ubicaciondepartamento`, `detalledepartamento`, `estadodepartamento`) VALUES ('k201', 'Centro Sur', 'K', '1');
INSERT INTO `departamento` (`numdepartamento`, `ubicaciondepartamento`, `detalledepartamento`, `estadodepartamento`) VALUES ('k202', 'Centro Sur', 'K', '1');
INSERT INTO `departamento` (`numdepartamento`, `ubicaciondepartamento`, `detalledepartamento`, `estadodepartamento`) VALUES ('k203', 'Centro Sur', 'K', '1');
INSERT INTO `departamento` (`numdepartamento`, `ubicaciondepartamento`, `detalledepartamento`, `estadodepartamento`) VALUES ('M201', 'Centro Norte', 'M', '1');
INSERT INTO `departamento` (`numdepartamento`, `ubicaciondepartamento`, `detalledepartamento`, `estadodepartamento`) VALUES ('M202', 'Centro Norte', 'M', '1');
INSERT INTO `departamento` (`numdepartamento`, `ubicaciondepartamento`, `detalledepartamento`, `estadodepartamento`) VALUES ('M203', 'Centro Norte', 'M', '1');
INSERT INTO `departamento` (`numdepartamento`, `ubicaciondepartamento`, `detalledepartamento`, `estadodepartamento`) VALUES ('M301', 'Centro Norte', 'M', '1');
INSERT INTO `departamento` (`numdepartamento`, `ubicaciondepartamento`, `detalledepartamento`, `estadodepartamento`) VALUES ('M401', 'Centro Norte', 'M', '1');
INSERT INTO `departamento` (`numdepartamento`, `ubicaciondepartamento`, `detalledepartamento`, `estadodepartamento`) VALUES ('M501', 'Centro Norte', 'M', '1');
INSERT INTO `departamento` (`numdepartamento`, `ubicaciondepartamento`, `detalledepartamento`, `estadodepartamento`) VALUES ('M601', 'Centro Norte', 'M', '1');
INSERT INTO `departamento` (`numdepartamento`, `ubicaciondepartamento`, `detalledepartamento`, `estadodepartamento`) VALUES ('O301', 'Centro Oeste', 'O', '1');
INSERT INTO `departamento` (`numdepartamento`, `ubicaciondepartamento`, `detalledepartamento`, `estadodepartamento`) VALUES ('O302', 'Centro Oeste', 'O', '1');
INSERT INTO `departamento` (`numdepartamento`, `ubicaciondepartamento`, `detalledepartamento`, `estadodepartamento`) VALUES ('O303', 'Centro Oeste', 'O', '1');


INSERT INTO `propietarioxdepartamento` (`dni`, `numdepartamento`) VALUES ('70469000', 'k101');
INSERT INTO `propietarioxdepartamento` (`dni`, `numdepartamento`) VALUES ('70469001', 'k101');
INSERT INTO `propietarioxdepartamento` (`dni`, `numdepartamento`) VALUES ('70469002', 'k101');
INSERT INTO `propietarioxdepartamento` (`dni`, `numdepartamento`) VALUES ('70469003', 'k102');
INSERT INTO `propietarioxdepartamento` (`dni`, `numdepartamento`) VALUES ('70469004', 'k104');
INSERT INTO `propietarioxdepartamento` (`dni`, `numdepartamento`) VALUES ('70469005', 'k203');
INSERT INTO `propietarioxdepartamento` (`dni`, `numdepartamento`) VALUES ('70469006', 'M301');
INSERT INTO `propietarioxdepartamento` (`dni`, `numdepartamento`) VALUES ('70469006', 'M401');
INSERT INTO `propietarioxdepartamento` (`dni`, `numdepartamento`) VALUES ('70469007', 'M401');
INSERT INTO `propietarioxdepartamento` (`dni`, `numdepartamento`) VALUES ('70469007', 'O303');
INSERT INTO `propietarioxdepartamento` (`dni`, `numdepartamento`) VALUES ('70469007', 'O302');
INSERT INTO `propietarioxdepartamento` (`dni`, `numdepartamento`) VALUES ('70469008', 'O301');
INSERT INTO `pago` (`idpago`, `dni`, `montopagobanco`, `fechaemision`, `fechaVence`, `FechaPago`, `numdepartamento`) VALUES ('1', '70469000', '600', '2019-12-25', '2020-01-02', '2020-01-01', 'k101');
INSERT INTO `pago` (`idpago`, `dni`, `montopagobanco`, `fechaemision`, `fechaVence`, `FechaPago`, `numdepartamento`) VALUES ('2', '70469001', '600', '2019-11-25', '2019-12-02', '2020-12-01', 'k101');
INSERT INTO `pago` (`idpago`, `dni`, `montopagobanco`, `fechaemision`, `fechaVence`, `FechaPago`, `numdepartamento`) VALUES ('3', '70469002', '600', '2019-10-25', '2019-11-02', '2020-11-01', 'k101');
INSERT INTO `pago` (`idpago`, `dni`, `montopagobanco`, `fechaemision`, `fechaVence`, `FechaPago`, `numdepartamento`) VALUES ('4', '70469003', '600', '2019-12-25', '2020-01-02', '2020-01-01', 'k102');
INSERT INTO `pago` (`idpago`, `dni`, `montopagobanco`, `fechaemision`, `fechaVence`, `FechaPago`, `numdepartamento`) VALUES ('5', '70469004', '600', '2019-12-25', '2020-01-02', '2020-01-01', 'k104');
INSERT INTO `pago` (`idpago`, `dni`, `montopagobanco`, `fechaemision`, `fechaVence`, `FechaPago`, `numdepartamento`) VALUES ('6', '70469005', '600', '2019-12-25', '2020-01-02', '2020-01-01', 'k203');
INSERT INTO `pago` (`idpago`, `dni`, `montopagobanco`, `fechaemision`, `fechaVence`, `FechaPago`, `numdepartamento`) VALUES ('7', '70469006', '600', '2019-12-25', '2020-01-02', '2020-01-01', 'M301');
INSERT INTO `pago` (`idpago`, `dni`, `montopagobanco`, `fechaemision`, `fechaVence`, `FechaPago`, `numdepartamento`) VALUES ('8', '70469006', '600', '2019-12-25', '2020-01-02', '2020-01-01', 'M401');
INSERT INTO `pago` (`idpago`, `dni`, `montopagobanco`, `fechaemision`, `fechaVence`, `FechaPago`, `numdepartamento`) VALUES ('9', '70469006', '600', '2019-11-25', '2019-12-02', '2020-12-01', 'k101');
INSERT INTO `pago` (`idpago`, `dni`, `montopagobanco`, `fechaemision`, `fechaVence`, `FechaPago`, `numdepartamento`) VALUES ('10', '70469008', '600', '2019-12-25', '2020-01-02', '2020-01-01', 'O301');
INSERT INTO `pago` (`idpago`, `dni`, `montopagobanco`, `fechaemision`, `fechaVence`, `FechaPago`, `numdepartamento`) VALUES ('11', '70469008', '600', '2019-11-25', '2019-12-02', '2020-01-01', 'O301');