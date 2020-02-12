-- --------------------------------
-- Script de MySQL
-- Base de Datos : Ciudad Verde
-- Author : Jose Luis Pintado Vasquez
-- Fecha : 23-01-2020----
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

create table deudas(
    fecha date NOT NULL,
	monto DECIMAL(5,2)  NOT NULL,
    numdepartamento char(8)  NOT NULL,
    FOREIGN KEY (numdepartamento) REFERENCES departamento(numdepartamento)
);


INSERT INTO `propietario` (`dni`, `nombre`, `apellido`, `tipousuario`, `estado`) VALUES ('70469002', 'Jose Luis ', 'Pintado Vasquez', 'admin', '1');
INSERT INTO `propietario` (`dni`, `nombre`, `apellido`, `tipousuario`, `estado`) VALUES ('70469001', 'Alanis', 'Cruz Condori', 'estandar', '1');
INSERT INTO `propietario` (`dni`, `nombre`, `apellido`, `tipousuario`, `estado`) VALUES ('70469000', 'Alisson', 'Sinche', 'estandar', '1');
INSERT INTO `propietario` (`dni`, `nombre`, `apellido`, `tipousuario`, `estado`) VALUES ('70469003', 'Mirella', 'Pintado Huaman', 'estandar', '1');
INSERT INTO `propietario` (`dni`, `nombre`, `apellido`, `tipousuario`, `estado`) VALUES ('70469004', 'Jancarlo', 'Rivera Flores', 'Admin', '1');
INSERT INTO `propietario` (`dni`, `nombre`, `apellido`, `tipousuario`, `estado`) VALUES ('70469005', 'Ines', 'Marcas', 'estandar', '1');
INSERT INTO `propietario` (`dni`, `nombre`, `apellido`, `tipousuario`, `estado`) VALUES ('70469006', 'Bernie', 'Avila Andrade', 'estandar', '1');
INSERT INTO `propietario` (`dni`, `nombre`, `apellido`, `tipousuario`, `estado`) VALUES ('70469007', 'Marta', 'Sanchez', 'estandar', '1');
INSERT INTO `propietario` (`dni`, `nombre`, `apellido`, `tipousuario`, `estado`) VALUES ('70469008', 'Efrain', 'Pintado Vasquez', 'estandar', '1');


INSERT INTO departamento VALUES
    ('F101','F1','F',1),
    ('F102','F1','F',1),
    ('F103','F1','F',1),
    ('F104','F1','F',1),
    ('F105','F2','F',1),
    ('F106','F2','F',1),
    ('F107','F2','F',1),
    ('F108','F2','F',1),
    ('F201','F1','F',1),
    ('F202','F1','F',1),
    ('F203','F1','F',1),
    ('F204','F1','F',1),
    ('F205','F2','F',1),
    ('F206','F2','F',1),
    ('F207','F2','F',1),
    ('F208','F2','F',1),
    ('F301','F1','F',1),
    ('F302','F1','F',1),
    ('F303','F1','F',1),
    ('F304','F1','F',1),
    ('F305','F2','F',1),
    ('F306','F2','F',1),
    ('F307','F2','F',1),
    ('F308','F2','F',1),
    ('F401','F1','F',1),
    ('F402','F1','F',1),
    ('F403','F1','F',1),
    ('F404','F1','F',1),
    ('F405','F2','F',1),
    ('F406','F2','F',1),
    ('F407','F2','F',1),
    ('F408','F2','F',1),
    ('F501','F1','F',1),
    ('F502','F1','F',1),
    ('F503','F1','F',1),
    ('F504','F1','F',1),
    ('F505','F2','F',1),
    ('F506','F2','F',1),
    ('F507','F2','F',1),
    ('F508','F2','F',1),
    ('F601','F1','F',1),
    ('F602','F1','F',1),
    ('F603','F1','F',1),
    ('F604','F1','F',1),
    ('F605','F2','F',1),
    ('F606','F2','F',1),
    ('F607','F2','F',1),
    ('F608','F2','F',1),
    ('F701','F1','F',1),
    ('F702','F1','F',1),
    ('F703','F1','F',1),
    ('F704','F1','F',1),
    ('F705','F2','F',1),
    ('F706','F2','F',1),
    ('F707','F2','F',1),
    ('F708','F2','F',1),
    ('F801','F1','F',1),
    ('F802','F1','F',1),
    ('F803','F1','F',1),
    ('F804','F1','F',1),
    ('F805','F2','F',1),
    ('F806','F2','F',1),
    ('F807','F2','F',1),
    ('F808','F2','F',1),
    ('F901','F1','F',1),
    ('F902','F1','F',1),
    ('F903','F1','F',1),
    ('F904','F1','F',1),
    ('F905','F2','F',1),
    ('F906','F2','F',1),
    ('F907','F2','F',1),
    ('F908','F2','F',1),
    ('E101','E1','E',1),
    ('E102','E1','E',1),
    ('E103','E1','E',1),
    ('E104','E1','E',1),
    ('E105','E2','E',1),
    ('E106','E2','E',1),
    ('E107','E2','E',1),
    ('E108','E2','E',1),
    ('E201','E1','E',1),
    ('E202','E1','E',1),
    ('E203','E1','E',1),
    ('E204','E1','E',1),
    ('E205','E2','E',1),
    ('E206','E2','E',1),
    ('E207','E2','E',1),
    ('E208','E2','E',1),
    ('E301','E1','E',1),
    ('E302','E1','E',1),
    ('E303','E1','E',1),
    ('E304','E1','E',1),
    ('E305','E2','E',1),
    ('E306','E2','E',1),
    ('E307','E2','E',1),
    ('E308','E2','E',1),
    ('E401','E1','E',1),
    ('E402','E1','E',1),
    ('E403','E1','E',1),
    ('E404','E1','E',1),
    ('E405','E2','E',1),
    ('E406','E2','E',1),
    ('E407','E2','E',1),
    ('E408','E2','E',1),
    ('E501','E1','E',1),
    ('E502','E1','E',1),
    ('E503','E1','E',1),
    ('E504','E1','E',1),
    ('E505','E2','E',1),
    ('E506','E2','E',1),
    ('E507','E2','E',1),
    ('E508','E2','E',1),
    ('E601','E1','E',1),
    ('E602','E1','E',1),
    ('E603','E1','E',1),
    ('E604','E1','E',1),
    ('E605','E2','E',1),
    ('E606','E2','E',1),
    ('E607','E2','E',1),
    ('E608','E2','E',1),
    ('E701','E1','E',1),
    ('E702','E1','E',1),
    ('E703','E1','E',1),
    ('E704','E1','E',1),
    ('E705','E2','E',1),
    ('E706','E2','E',1),
    ('E707','E2','E',1),
    ('E708','E2','E',1),
    ('E801','E1','E',1),
    ('E802','E1','E',1),
    ('E803','E1','E',1),
    ('E804','E1','E',1),
    ('E805','E2','E',1),
    ('E806','E2','E',1),
    ('E807','E2','E',1),
    ('E808','E2','E',1),
    ('E901','E1','E',1),
    ('E902','E1','E',1),
    ('E903','E1','E',1),
    ('E904','E1','E',1),
    ('E905','E2','E',1),
    ('E906','E2','E',1),
    ('E907','E2','E',1),
    ('E908','E2','E',1);

INSERT INTO `propietarioxdepartamento` (`dni`, `numdepartamento`) VALUES ('70469000', 'F101');
INSERT INTO `propietarioxdepartamento` (`dni`, `numdepartamento`) VALUES ('70469001', 'F101');
INSERT INTO `propietarioxdepartamento` (`dni`, `numdepartamento`) VALUES ('70469002', 'F101');
INSERT INTO `propietarioxdepartamento` (`dni`, `numdepartamento`) VALUES ('70469003', 'F102');
INSERT INTO `propietarioxdepartamento` (`dni`, `numdepartamento`) VALUES ('70469004', 'F104');
INSERT INTO `propietarioxdepartamento` (`dni`, `numdepartamento`) VALUES ('70469005', 'F203');
INSERT INTO `propietarioxdepartamento` (`dni`, `numdepartamento`) VALUES ('70469006', 'E301');
INSERT INTO `propietarioxdepartamento` (`dni`, `numdepartamento`) VALUES ('70469006', 'E401');
INSERT INTO `propietarioxdepartamento` (`dni`, `numdepartamento`) VALUES ('70469007', 'E401');
INSERT INTO `propietarioxdepartamento` (`dni`, `numdepartamento`) VALUES ('70469007', 'E303');
INSERT INTO `propietarioxdepartamento` (`dni`, `numdepartamento`) VALUES ('70469007', 'E302');
INSERT INTO `propietarioxdepartamento` (`dni`, `numdepartamento`) VALUES ('70469008', 'E301');
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