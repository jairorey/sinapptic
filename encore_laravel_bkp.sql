/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50620
Source Host           : localhost:3306
Source Database       : encore_laravel

Target Server Type    : MYSQL
Target Server Version : 50620
File Encoding         : 65001

Date: 2016-04-29 11:05:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for accesos
-- ----------------------------
DROP TABLE IF EXISTS `accesos`;
CREATE TABLE `accesos` (
`id`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`aplicativo_id`  int(10) UNSIGNED NOT NULL ,
`user_id`  int(10) UNSIGNED NOT NULL ,
`rol_id`  int(10) UNSIGNED NOT NULL ,
`active`  int(11) NOT NULL DEFAULT 1 ,
`created_at`  timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ,
`updated_at`  timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ,
PRIMARY KEY (`id`),
FOREIGN KEY (`aplicativo_id`) REFERENCES `aplicativos` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
FOREIGN KEY (`rol_id`) REFERENCES `roles` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
INDEX `accesos_aplicativo_id_foreign` (`aplicativo_id`) USING BTREE ,
INDEX `accesos_user_id_foreign` (`user_id`) USING BTREE ,
INDEX `accesos_rol_id_foreign` (`rol_id`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_unicode_ci
AUTO_INCREMENT=4

;

-- ----------------------------
-- Records of accesos
-- ----------------------------
BEGIN;
INSERT INTO `accesos` VALUES ('1', '1', '28', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('2', '2', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('3', '3', '28', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
COMMIT;

-- ----------------------------
-- Table structure for aplicativos
-- ----------------------------
DROP TABLE IF EXISTS `aplicativos`;
CREATE TABLE `aplicativos` (
`id`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`name`  varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL ,
`modulo_id`  int(10) UNSIGNED NOT NULL ,
`url`  varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL ,
`description`  varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL ,
`icon`  varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'icons/default.ico' ,
`order`  smallint(6) NOT NULL DEFAULT 1 ,
`created_at`  timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ,
`updated_at`  timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ,
PRIMARY KEY (`id`),
FOREIGN KEY (`modulo_id`) REFERENCES `modulos` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
INDEX `aplicativos_modulo_id_foreign` (`modulo_id`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_unicode_ci
AUTO_INCREMENT=4

;

-- ----------------------------
-- Records of aplicativos
-- ----------------------------
BEGIN;
INSERT INTO `aplicativos` VALUES ('1', 'Usuarios', '1', 'users', null, 'i-users', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('2', 'Doc. Receptor', '2', 'docreceptor', null, 'i-stack-list', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('3', 'Siseftran', '2', 'siseftran/plannacional', null, 'i-books', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
COMMIT;

-- ----------------------------
-- Table structure for cargos
-- ----------------------------
DROP TABLE IF EXISTS `cargos`;
CREATE TABLE `cargos` (
`id`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`name`  varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL ,
`type`  enum('analista','director','director_ejecutivo','asistente','asesor','otro') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL ,
`description`  varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL ,
`created_at`  timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ,
`updated_at`  timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_unicode_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Records of cargos
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for ciudades
-- ----------------------------
DROP TABLE IF EXISTS `ciudades`;
CREATE TABLE `ciudades` (
`id`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`name`  varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL ,
`provincia_id`  int(10) UNSIGNED NOT NULL ,
`created_at`  timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ,
`updated_at`  timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ,
PRIMARY KEY (`id`),
FOREIGN KEY (`provincia_id`) REFERENCES `provincias` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
INDEX `ciudades_provincia_id_foreign` (`provincia_id`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_unicode_ci
AUTO_INCREMENT=25

;

-- ----------------------------
-- Records of ciudades
-- ----------------------------
BEGIN;
INSERT INTO `ciudades` VALUES ('1', 'Cuenca', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('2', 'Guaranda', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('3', 'Azogues', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('4', 'Tulcán', '4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('5', 'Riobamba', '5', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('6', 'Latacunga', '6', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('7', 'Machala', '7', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('8', 'Esmeraldas', '8', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('9', 'Puerto Baquerizo Moreno', '9', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('10', 'Guayaquil', '10', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('11', 'Ibarra', '11', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('12', 'Loja', '12', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('13', 'Babahoyo', '13', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('14', 'Portoviejo', '14', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('15', 'Macas', '15', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('16', 'Tena', '16', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('17', 'Francisco de Orellana', '17', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('18', 'Puyo', '18', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('19', 'Quito', '19', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('20', 'Santa Elena', '20', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('21', 'Santo Domingo', '21', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('22', 'Nueva Loja', '22', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('23', 'Ambato', '23', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('24', 'Zamora', '24', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
COMMIT;

-- ----------------------------
-- Table structure for departamentos
-- ----------------------------
DROP TABLE IF EXISTS `departamentos`;
CREATE TABLE `departamentos` (
`id`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`name`  varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL ,
`institucion_id`  int(10) UNSIGNED NOT NULL ,
`email`  varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL ,
`abbreviation`  varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL ,
`created_at`  timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ,
`updated_at`  timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ,
PRIMARY KEY (`id`),
FOREIGN KEY (`institucion_id`) REFERENCES `instituciones` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
INDEX `departamentos_institucion_id_foreign` (`institucion_id`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_unicode_ci
AUTO_INCREMENT=19

;

-- ----------------------------
-- Records of departamentos
-- ----------------------------
BEGIN;
INSERT INTO `departamentos` VALUES ('1', 'Administrativo', '1', 'administrativo@congope.gob.ec', 'DAM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('2', 'Financiero', '1', 'financiero@congope.gob.ec', 'DFN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('3', 'Tecnologias de la Informacion', '1', 'tic@congope.gob.ec', 'DTI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('4', 'Planificacion', '1', 'planificacion@congope.gob.ec', 'PLAN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('5', 'Fomento productivo', '1', 'fprod@congope.gob.ec', 'FPROD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('6', 'CooperacionInt', '1', 'cic@congope.gob.ec', 'COOIN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('7', 'Rrhh', '10', 'rrhh@gadrios.gob.ec', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('8', 'Rrhh', '5', 'rrhh@gadms.gob.ec', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('9', 'Financiero', '8', 'fin@gobcan.gob.ec', 'FIN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('10', 'Comunicacion', '1', 'comunicacion@congope.gobec', 'COM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('11', 'Juridico', '1', null, 'JRDC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('12', 'Gestion Social', '1', null, 'GSC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('14', 'Gober. y Descent.', '1', null, 'GYD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('15', 'Vialidad', '1', null, 'VLD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('16', 'Dirección Ejecutiva', '1', null, 'DEJ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('17', 'Subdirección', '1', null, 'DSB', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('18', 'Ambiente', '1', null, 'DAM', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
COMMIT;

-- ----------------------------
-- Table structure for documentos_externos
-- ----------------------------
DROP TABLE IF EXISTS `documentos_externos`;
CREATE TABLE `documentos_externos` (
`id`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`institucion_id`  varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL ,
`referencia`  varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL ,
`name_remitente`  varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL ,
`user_id`  varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL ,
`asunto`  varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL ,
`date_recibido`  varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL ,
`date_emitido`  varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL ,
`observacion`  varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL ,
`active`  int(11) NOT NULL DEFAULT 1 ,
`created_at`  timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ,
`updated_at`  timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_unicode_ci
AUTO_INCREMENT=19

;

-- ----------------------------
-- Records of documentos_externos
-- ----------------------------
BEGIN;
INSERT INTO `documentos_externos` VALUES ('14', '1', 'DOC01-TIC', 'GAD Carchi', '28', 'invitacion', '11/18/2015', '11/19/2015', 'invitacion presentacion de sistema', '1', '2015-11-17 16:53:10', '2015-11-18 17:27:11'), ('15', '9', 'DC-01-2015', 'GAD Montufar', '28', 'Instalacion Quipux y demas opciones actuales desarroladas por el congope sdfsdfsdfsdfsdfsdfsdfs sdfsdfs s fsdff s asdasd', '11/18/2015', '11/19/2015', 'pedido dpto TIC', '1', '2015-11-18 12:10:43', '2015-11-30 11:59:17'), ('17', '1', 'asdasdasd', 'asdasdad', '28', 'sdadasd', '11/12/2015', '11/27/2015', 'asdasdadsd', '1', '2015-11-30 14:38:42', '2015-11-30 14:38:42'), ('18', '1', 'DCS01', 'Gustavo Baroja Prefecto Presidente Congope', '28', 'Autorizando Comision de servicios', '12/29/2015', '12/27/2015', 'incluye cd', '1', '2015-12-28 16:29:17', '2015-12-28 16:29:17');
COMMIT;

-- ----------------------------
-- Table structure for documentos_externos_asignados
-- ----------------------------
DROP TABLE IF EXISTS `documentos_externos_asignados`;
CREATE TABLE `documentos_externos_asignados` (
`id`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`documento_externo_id`  int(10) UNSIGNED NOT NULL ,
`user_id`  int(10) UNSIGNED NOT NULL ,
`created_at`  timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ,
`updated_at`  timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ,
PRIMARY KEY (`id`),
FOREIGN KEY (`documento_externo_id`) REFERENCES `documentos_externos` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
INDEX `documentos_externos_asignados_documento_externo_id_foreign` (`documento_externo_id`) USING BTREE ,
INDEX `documentos_externos_asignados_user_id_foreign` (`user_id`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_unicode_ci
AUTO_INCREMENT=6

;

-- ----------------------------
-- Records of documentos_externos_asignados
-- ----------------------------
BEGIN;
INSERT INTO `documentos_externos_asignados` VALUES ('3', '14', '28', '2015-11-25 00:15:24', '2015-11-25 00:15:24'), ('5', '14', '28', '2015-11-27 14:57:17', '2015-11-27 14:57:17');
COMMIT;

-- ----------------------------
-- Table structure for instituciones
-- ----------------------------
DROP TABLE IF EXISTS `instituciones`;
CREATE TABLE `instituciones` (
`id`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`name`  varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL ,
`ciudad_id`  int(10) UNSIGNED NULL DEFAULT NULL ,
`institucion_tipo_id`  int(10) UNSIGNED NOT NULL ,
`business_name`  varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL ,
`ruc`  varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL ,
`address`  varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL ,
`phone`  varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL ,
`email`  varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL ,
`created_at`  timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ,
`updated_at`  timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ,
PRIMARY KEY (`id`),
FOREIGN KEY (`ciudad_id`) REFERENCES `ciudades` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
FOREIGN KEY (`institucion_tipo_id`) REFERENCES `instituciones_tipos` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
INDEX `instituciones_ciudad_id_foreign` (`ciudad_id`) USING BTREE ,
INDEX `instituciones_institucion_tipo_id_foreign` (`institucion_tipo_id`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_unicode_ci
AUTO_INCREMENT=35

;

-- ----------------------------
-- Records of instituciones
-- ----------------------------
BEGIN;
INSERT INTO `instituciones` VALUES ('1', 'CONGOPE', '19', '2', 'Consorcio de Gobiernos Provinciales del Ecuador', '2147483647', null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('2', 'GAP Guayas', '10', '2', 'Gobierno Autónomo Descentralizado de la Provincia de Guayas', null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('3', 'GAP Sucumbios', '22', '2', 'Gobierno Autónomo Descentralizado de la Provincia de Sucumbios', null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('4', 'GAP Manabí', '14', '2', 'Gobierno Autónomo Descentralizado de la Provincia de Manabí', null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('5', 'GAP Morona Santiago', '15', '2', 'Gobierno Autónomo Descentralizado de la Provincia de Santo Domingo de los Tsachilas', null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('6', 'GAP Imbabura', '11', '2', 'Gobierno Autónomo Descentralizado de la Provincia de Imbabura', null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('7', 'GAP Tungurahua', '23', '2', 'Gobierno Autónomo Descentralizado de la Provincia de Tungurahua', null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('8', 'GAP Cañar', '3', '2', 'Gobierno Autónomo Descentralizado de la Provincia del Cañar', null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('9', 'GAP Azuay', '1', '2', 'Gobierno Autónomo Descentralizado de la Provincia de Azuay', null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('10', 'GAP Los Ríos', '13', '2', 'Gobierno Autónomo Descentralizado de la Provincia de Los Ríos', null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('11', 'GAP Bolívar', '2', '2', 'Gobierno Autónomo Descentralizado de la Provincia de Bolívar', null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('12', 'GAP Pastaza', '18', '2', 'Gobierno Autónomo Descentralizado de la Provincia de Pastaza', null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('13', 'GAP El Oro', '7', '2', 'Gobierno Autónomo Descentralizado de la Provincia de El Oro', null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('14', 'GAP Santo Domingo de los Tsáchilas', '21', '2', 'Gobierno Autónomo Descentralizado de la Provincia de Santo Domingo de los Tsáchilas', null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('15', 'GAP Orellana', '17', '2', 'Gobierno Autónomo Descentralizado de la Provincia de Orellana', null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('16', 'GAP Carchi', '4', '2', 'Gobierno Autónomo Descentralizado de la Provincia de Carchi', null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('17', 'GAP Pichincha', '19', '2', 'Gobierno Autónomo Descentralizado de la Provincia de Pichincha', null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('18', 'GAP Cotopaxi', '6', '2', 'Gobierno Autónomo Descentralizado de la Provincia de Cotopaxi', null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('19', 'GAP Esmeraldas', '8', '2', 'Gobierno Autónomo Descentralizado de la Provincia de Esmeraldas', null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('20', 'GAP Chimborazo', '5', '2', 'Gobierno Autónomo Descentralizado de la Provincia de Chimborazo', null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('21', 'GAP Santa Elena', '20', '2', 'Gobierno Autónomo Descentralizado de la Provincia de Santa Elena', null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('22', 'GAP Loja', '12', '2', 'Gobierno Autónomo Descentralizado de la Provincia de Loja', null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('23', 'GAP Zamora Chinchipe', '24', '2', 'Gobierno Autónomo Descentralizado de la Provincia de Zamora Chinchipe', null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('24', 'GAP Napo', '16', '2', 'Gobierno Autónomo Descentralizado de la Provincia de Napo', null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('25', 'Banco Pichincha', '19', '3', 'Banco Pinchincha', null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('26', 'Produbanco', '19', '3', 'Banco Produbanco', null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('27', 'Banco Bolivariano', '19', '3', 'Banco Bolivariano', null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('28', 'Banco de Guayaquil S. A.', '19', '3', 'Banco de Guayaquil S A.', null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('29', 'Banco del Pacífico', '19', '3', 'Banco del Pacífico', null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('30', 'Banco General Rumiñahui', '19', '3', 'Banco General Rumiñahui', null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('31', 'Banco Internacional', '19', '3', 'Banco Internacional', null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('32', 'CACPECO Ltda.', '19', '3', 'CACPECO Ltda.', null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('33', 'Coop. Ahorro y Crédito Andalucía', '19', '3', 'Coop. Ahorro y Crédito Andalucía', null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('34', 'Mutualista Pichincha', '19', '3', 'Mutualista Pichincha', null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
COMMIT;

-- ----------------------------
-- Table structure for instituciones_tipos
-- ----------------------------
DROP TABLE IF EXISTS `instituciones_tipos`;
CREATE TABLE `instituciones_tipos` (
`id`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`name`  varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL ,
`description`  varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL ,
`created_at`  timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ,
`updated_at`  timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_unicode_ci
AUTO_INCREMENT=4

;

-- ----------------------------
-- Records of instituciones_tipos
-- ----------------------------
BEGIN;
INSERT INTO `instituciones_tipos` VALUES ('1', 'Consorcio', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('2', 'Gad', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('3', 'Banco', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
COMMIT;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
`migration`  varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL ,
`batch`  int(11) NOT NULL 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_unicode_ci

;

-- ----------------------------
-- Records of migrations
-- ----------------------------
BEGIN;
INSERT INTO `migrations` VALUES ('2014_10_12_100000_create_password_resets_table', '1'), ('2015_10_22_151906_create_titulos_table', '1'), ('2015_10_22_152601_create_regiones_table', '1'), ('2015_10_22_152610_create_provincias_table', '1'), ('2015_10_22_152616_create_ciudades_table', '1'), ('2015_10_22_153241_create_instituciones_tipos_table', '1'), ('2015_10_22_153422_create_instituciones_table', '1'), ('2015_10_22_154036_create_departamentos_table', '1'), ('2015_10_22_154333_create_modulos_table', '1'), ('2015_10_22_154738_create_aplicativos_table', '1'), ('2015_10_22_155120_create_panel_opciones_table', '1'), ('2015_10_23_104017_create_opciones_table', '1'), ('2015_10_23_105249_create_roles_table', '1'), ('2015_10_23_105711_create_cargos_table', '1'), ('2015_10_23_111533_create_users_table', '1'), ('2015_10_23_112459_create_partidas_table', '1'), ('2015_10_29_153423_create_documentos_externos_table', '2'), ('2015_10_30_142052_create_accesos_table', '2'), ('2015_11_23_115025_create_documentos_externos_asignados_table', '3');
COMMIT;

-- ----------------------------
-- Table structure for modulos
-- ----------------------------
DROP TABLE IF EXISTS `modulos`;
CREATE TABLE `modulos` (
`id`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`name`  varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL ,
`url`  varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL ,
`description`  varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL ,
`icon`  varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'icons/default.ico' ,
`order`  smallint(6) NOT NULL DEFAULT 1 ,
`created_at`  timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ,
`updated_at`  timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_unicode_ci
AUTO_INCREMENT=3

;

-- ----------------------------
-- Records of modulos
-- ----------------------------
BEGIN;
INSERT INTO `modulos` VALUES ('1', 'Tic', 'app/tic', null, 'icons/default.ico', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('2', 'Administrativo', 'Administrativo', null, 'icons/default.ico', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
COMMIT;

-- ----------------------------
-- Table structure for opciones
-- ----------------------------
DROP TABLE IF EXISTS `opciones`;
CREATE TABLE `opciones` (
`id`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`name`  varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL ,
`panel_opcion_id`  int(10) UNSIGNED NOT NULL ,
`url`  varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL ,
`description`  varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL ,
`icon`  varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'icons/default.ico' ,
`order`  smallint(6) NOT NULL DEFAULT 1 ,
`created_at`  timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ,
`updated_at`  timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ,
PRIMARY KEY (`id`),
FOREIGN KEY (`panel_opcion_id`) REFERENCES `panel_opciones` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
INDEX `opciones_panel_opcion_id_foreign` (`panel_opcion_id`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_unicode_ci
AUTO_INCREMENT=11

;

-- ----------------------------
-- Records of opciones
-- ----------------------------
BEGIN;
INSERT INTO `opciones` VALUES ('1', 'Listar', '1', 'users', 'asdad', 'fa fa-users', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('2', 'Agregar', '1', 'users/create', 'asad', 'fa fa-list-ol fa-fw', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('3', 'Listar', '2', 'docreceptor', 'adasdasd', 'fa fa-list-ol fa-fw', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('4', 'Agregar', '2', 'docreceptor/create', 'sdfsdf', 'fa fa-plus fa-fw', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('5', 'Asignar', '3', 'docreceptor/asignar', 'asdsa', 'fa fa-list-ol fa-fw', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('6', 'Tablero', '4', 'siseftran/planterritorial', 'adasd', 'icons/default.ico', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('7', 'Tablero', '6', 'siseftran/plannacional', 'asdsad', 'icons/default.ico', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('8', 'Tablero', '5', 'siseftran/planinstitucional', 'asdad', 'icons/default.ico', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('9', 'Proyectos', '5', 'siseftran/planinstitucional/proyectos', 'asdad', 'icons/default.ico', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('10', 'Reformas', '5', 'siseftran/planinstitucional/reformas', 'asdasd', 'icons/default.ico', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
COMMIT;

-- ----------------------------
-- Table structure for panel_opciones
-- ----------------------------
DROP TABLE IF EXISTS `panel_opciones`;
CREATE TABLE `panel_opciones` (
`id`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`name`  varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL ,
`aplicativo_id`  int(10) UNSIGNED NOT NULL ,
`description`  varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL ,
`icon`  varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'icons/default.ico' ,
`order`  smallint(6) NOT NULL DEFAULT 1 ,
`created_at`  timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ,
`updated_at`  timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ,
PRIMARY KEY (`id`),
FOREIGN KEY (`aplicativo_id`) REFERENCES `aplicativos` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
INDEX `panel_opciones_aplicativo_id_foreign` (`aplicativo_id`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_unicode_ci
AUTO_INCREMENT=7

;

-- ----------------------------
-- Records of panel_opciones
-- ----------------------------
BEGIN;
INSERT INTO `panel_opciones` VALUES ('1', 'Usuarios', '1', 'asdasds', 'fa fa-users', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('2', 'Recibir Documento', '2', 'asdasd', 'fa fa-book', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('3', 'Entregados', '2', 'asdasd', 'fa fa-send', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('4', 'Plan Territorial', '3', 'asdasd', 'fa fa-pagelines', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('5', 'Plan Institucional', '3', 'adasd', 'fa fa-building-o', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('6', 'Plan Nacional', '3', 'asdasads', 'fa fa-institution', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
COMMIT;

-- ----------------------------
-- Table structure for partidas
-- ----------------------------
DROP TABLE IF EXISTS `partidas`;
CREATE TABLE `partidas` (
`id`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`numero`  varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL ,
`departamento_id`  int(10) UNSIGNED NOT NULL ,
`type`  enum('nacional','internacional') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL ,
`created_at`  timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ,
`updated_at`  timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ,
PRIMARY KEY (`id`),
FOREIGN KEY (`departamento_id`) REFERENCES `departamentos` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
INDEX `partidas_departamento_id_foreign` (`departamento_id`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_unicode_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Records of partidas
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
`email`  varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL ,
`token`  varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL ,
`created_at`  timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ,
INDEX `password_resets_email_index` (`email`) USING BTREE ,
INDEX `password_resets_token_index` (`token`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_unicode_ci

;

-- ----------------------------
-- Records of password_resets
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for provincias
-- ----------------------------
DROP TABLE IF EXISTS `provincias`;
CREATE TABLE `provincias` (
`id`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`name`  varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL ,
`region_id`  int(10) UNSIGNED NOT NULL ,
`created_at`  timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ,
`updated_at`  timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ,
PRIMARY KEY (`id`),
FOREIGN KEY (`region_id`) REFERENCES `regiones` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
INDEX `provincias_region_id_foreign` (`region_id`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_unicode_ci
AUTO_INCREMENT=25

;

-- ----------------------------
-- Records of provincias
-- ----------------------------
BEGIN;
INSERT INTO `provincias` VALUES ('1', 'Azuay', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('2', 'Bolivar', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('3', 'Cañar', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('4', 'Carchi', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('5', 'Chimborazo', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('6', 'Cotopaxi', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('7', 'El Oro', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('8', 'Esmeraldas', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('9', 'Galapagos', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('10', 'Guayas', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('11', 'Imbabura', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('12', 'Loja', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('13', 'Los Rios', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('14', 'Manabí', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('15', 'Morona Santiago', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('16', 'Napo', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('17', 'Orellana', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('18', 'Pastaza', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('19', 'Pichincha', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('20', 'Santa Elena', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('21', 'Santo Domingo de los Tzachilas', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('22', 'Sucumbios', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('23', 'Tumgurahua', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('24', 'Zamora Chinchipe', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
COMMIT;

-- ----------------------------
-- Table structure for regiones
-- ----------------------------
DROP TABLE IF EXISTS `regiones`;
CREATE TABLE `regiones` (
`id`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`name`  varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL ,
`created_at`  timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ,
`updated_at`  timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_unicode_ci
AUTO_INCREMENT=5

;

-- ----------------------------
-- Records of regiones
-- ----------------------------
BEGIN;
INSERT INTO `regiones` VALUES ('1', 'Costa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('2', 'Sierra', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('3', 'Amazonia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('4', 'Insular', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
COMMIT;

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
`id`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`name`  varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL ,
`description`  varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL ,
`created_at`  timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ,
`updated_at`  timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_unicode_ci
AUTO_INCREMENT=7

;

-- ----------------------------
-- Records of roles
-- ----------------------------
BEGIN;
INSERT INTO `roles` VALUES ('1', 'Administrator', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('2', 'Usuario', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('3', 'Asistente', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('4', 'Director', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('5', 'Director Ejecutivo', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('6', 'Asesor', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
COMMIT;

-- ----------------------------
-- Table structure for titulos
-- ----------------------------
DROP TABLE IF EXISTS `titulos`;
CREATE TABLE `titulos` (
`id`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`name`  varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL ,
`abbreviation`  varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL ,
`created_at`  timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ,
`updated_at`  timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_unicode_ci
AUTO_INCREMENT=15

;

-- ----------------------------
-- Records of titulos
-- ----------------------------
BEGIN;
INSERT INTO `titulos` VALUES ('1', 'Ingeniero', 'Ing.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('2', 'Arquitecto', 'Arq.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('3', 'Licenciado', 'Lic.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('4', 'Doctor', 'Dr.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('5', 'Abogado', 'Abg.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('6', 'Magister', 'Mgtr.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('7', 'Señor', 'Sr.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('8', 'Señora', 'Sra.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('9', 'Señorita', 'Srta.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('10', 'Ingeniera', 'Ing.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('11', 'Licenciada', 'Lic.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('12', 'Economista', 'Ec.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('13', 'Tecnóloga', 'Tlga.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('14', 'Sociólogo', 'Sco.', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
`id`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`identity`  varchar(13) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL ,
`name`  varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL ,
`lastname`  varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL ,
`nick`  varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL ,
`rol_id`  int(10) UNSIGNED NOT NULL ,
`departamento_id`  int(10) UNSIGNED NOT NULL ,
`titulo_id`  int(10) UNSIGNED NOT NULL ,
`password`  varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL ,
`born`  date NULL DEFAULT NULL ,
`sex`  tinyint(4) NOT NULL ,
`address1`  text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL ,
`address2`  text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL ,
`cell`  varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL ,
`phone`  varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL ,
`email`  varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL ,
`ext`  int(11) NOT NULL ,
`active`  int(11) NOT NULL DEFAULT 1 ,
`remember_token`  varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL ,
`created_at`  timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ,
`updated_at`  timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ,
PRIMARY KEY (`id`),
FOREIGN KEY (`departamento_id`) REFERENCES `departamentos` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
FOREIGN KEY (`rol_id`) REFERENCES `roles` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
FOREIGN KEY (`titulo_id`) REFERENCES `titulos` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
UNIQUE INDEX `users_ext_unique` (`ext`) USING BTREE ,
INDEX `users_rol_id_foreign` (`rol_id`) USING BTREE ,
INDEX `users_departamento_id_foreign` (`departamento_id`) USING BTREE ,
INDEX `users_titulo_id_foreign` (`titulo_id`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_unicode_ci
AUTO_INCREMENT=40

;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES ('1', '3242434', 'jose carlos', 'Perez', 'Jose', '1', '3', '12', '', '1979-09-22', '1', '21157 Bo Parks Suite 650', '05311 Maci Station Apt. 190', '475-898-9251', '(717)174-0064x8', 'jairodarey@hotmail.com', '432', '0', 'r2YWHa1YNT', '2015-10-26 14:30:19', '2015-11-27 16:16:22'), ('7', '790', 'Easter Schulist', 'Deckow', 'Imogene Rohan DVM', '6', '5', '10', '$2y$10$7meCtUK6OnF5D.URHNXRuu1D1qNtRYCXE3yfWA7KeqEjEEZ87PLKK', '1977-11-08', '2', '7759 Mohr Stream Apt. 393', '301 Marquardt Square', '1-980-263-3006x', '1-532-451-3831x', 'Dewayne.Douglas@Runte.com', '530', '1', 'odEt8jfN0q', '2015-10-26 14:30:19', '2015-10-26 14:30:19'), ('8', '2652667', 'America Pouros', 'Moore', 'Prof. Rudy Will', '4', '11', '10', '', '1971-02-21', '1', '433 Zulauf Key', '78266 Odell Shore', '1-178-565-6971x', '(376)726-7174x8', 'rCormier@gmail.com', '186', '0', 'Eo4UyUzjky', '2015-10-26 14:30:19', '2015-11-20 17:25:20'), ('9', '135532299', 'Vernice Gerhold', 'Hills', 'Miss Ilene Heathcote', '6', '5', '10', '$2y$10$aHIYO97Q4wmpi0natr.l6eJZzcXtHMcPSCaAQ3y44uxbHjUGbOTLi', '1999-07-23', '2', '7788 Gregg Trail', '8836 Kling Square Apt. 135', '461-872-2434x58', '021-958-4812', 'Norbert.Christiansen@hotmail.com', '162', '1', 'QO9E1qkgVl', '2015-10-26 14:30:19', '2015-10-26 14:30:19'), ('10', '362981', 'Mr. Alfred Auer', 'Kub', 'Antonietta Langosh DDS', '3', '9', '7', '$2y$10$ikde411jNlUDKxA9ymfUVul9hG4qKG7EM1IxLOVxnntL918zDKkcS', '2002-12-12', '2', '10408 Schmeler Burgs Apt. 029', '954 Keegan Vista Suite 629', '(652)805-7665x7', '(313)413-8684x0', 'Asha.Pagac@yahoo.com', '443', '1', 'bki8D3ccLc', '2015-10-26 14:30:19', '2015-10-26 14:30:19'), ('11', '4002909', 'Janie Waters III', 'Marquardt', 'Prof. Bessie Lockman MD', '4', '9', '14', '$2y$10$2znxBLOlFJj3zkgQrnZa4egWC2.s/Ryc1zEjA3O4yyiLErJm3GqL.', '2013-06-10', '1', '53071 Mante Curve Suite 178', '903 Padberg Meadows Apt. 835', '1-418-721-4533x', '496.862.7294x25', 'Kutch.Muriel@yahoo.com', '207', '1', 'ALBTZI81CE', '2015-10-26 14:30:19', '2015-10-26 14:30:19'), ('12', '9659', 'Ressie Haag', 'Harber', 'Pink Little', '6', '12', '13', '$2y$10$wf4Q7brYGtvMjF88u4IiP.dhPmdFjgimwcJCFQkSmgcl/drtXCRUC', '1988-05-24', '3', '324 Paucek Drive', '20949 Cicero Greens Suite 319', '08085142528', '382-136-0182', 'Kameron.Mayert@yahoo.com', '689', '1', 'pkY043Hsas', '2015-10-26 14:30:19', '2015-10-26 14:30:19'), ('13', '0', 'Dr. Caroline Strosin V', 'Ankunding', 'Antonina Hayes', '6', '10', '2', '$2y$10$fM3uEIrQjLhaBA6eN2HpfuF7JaFIw42xARurB2xxBEBz.Mkuaa.eq', '1975-04-20', '1', '517 Rippin Fork Apt. 094', '0406 Nikolaus Rapids', '1-215-431-3846x', '(327)924-9949', 'Patience46@gmail.com', '597', '1', 'sUJQtESBB7', '2015-10-26 14:30:19', '2015-10-26 14:30:19'), ('14', '438779', 'Dr. Kory Nicolas', 'Kihn', 'Ms. Tomasa Jerde', '5', '8', '10', '$2y$10$yTgmisb3.EmQ0qKNPmNMKOHN7Sq/DHP99bA8OcyoRXSld4qa0TMTO', '2004-06-25', '2', '01254 Rippin Underpass', '00779 Kuhn Flats Suite 191', '1-823-297-8449', '626-507-8421', 'hGleichner@hotmail.com', '233', '1', 'Z3xGXNOZpU', '2015-10-26 14:30:19', '2015-10-26 14:30:19'), ('15', '75605', 'Mr. Sigrid Prohaska Sr.', 'Murazik', 'Frieda Murphy', '1', '3', '8', '$2y$10$lr682wjtSVppxxSsLxHPYOzVFBtX5H1vA/IftCns5OUhraj1tseki', '1974-06-15', '2', '458 Lyric Forge Suite 428', '6576 Elisa Causeway Suite 760', '872-852-1505x29', '564.758.9427', 'Tyreek26@gmail.com', '304', '1', 'T892SENlYb', '2015-10-26 14:30:19', '2015-10-26 14:30:19'), ('16', '78', 'Makayla Moore PhD', 'Wyman', 'Jamey Howell', '6', '2', '10', '$2y$10$e.99gO/.nom6R57KlScJTOOhsHM4jxQa.dsq1KCWWt20Ha.cZk0qi', '1972-04-26', '1', '6729 Weimann Fall Apt. 272', '90110 Monty Bridge', '06132050310', '(816)769-1395x6', 'hOndricka@hotmail.com', '122', '1', 'YQF3RJ450m', '2015-10-26 14:30:57', '2015-10-26 14:30:57'), ('17', '472978', 'Brant Cassin', 'Conroy', 'Sophie Swift III', '5', '12', '2', '$2y$10$ZLkRRduooEU/isucUmi0QuMkgOkBniLZ.IDWQx7LW/aRU7teLUX.m', '1974-04-23', '2', '33230 Runolfsson Springs Apt. 920', '10639 Gerhold Roads', '203-970-5228x85', '(022)206-5992', 'Parker.Dortha@Blanda.com', '513', '1', 'A2MAvEdysf', '2015-10-26 14:30:57', '2015-10-26 14:30:57'), ('18', '86', 'Prof. Yadira Stroman', 'Nitzsche', 'Sincere Streich', '5', '12', '12', '$2y$10$vyTKoF0WLLrbZAfwuFWv4eAR4gyiqxCoi//VjaBSQYEPtDZxYO1Z6', '1970-05-03', '1', '50092 Wunsch Port Apt. 067', '68462 Kendrick Port', '(748)918-8978x7', '1-674-578-9676', 'Wiza.Elisabeth@Rosenbaum.org', '629', '1', 'mgdr9dLWQ9', '2015-10-26 14:30:57', '2015-10-26 14:30:57'), ('19', '1492', 'Stephan Raynor', 'Hammes', 'Augustus Renner IV', '3', '3', '12', '$2y$10$DMKFEYwSQToaLHk95.Eh4.D8azdpzlgSeOdan1Nl/1DTyu3TnMoha', '1972-07-11', '3', '1824 Georgette Ramp', '2050 Gibson Bypass Apt. 817', '406.760.4546x46', '1-634-594-3959', 'Bartell.Myra@Shields.com', '625', '1', 'p2tmwNDnHB', '2015-10-26 14:30:57', '2015-10-26 14:30:57'), ('20', '49212539', 'Rosanna Koepp', 'Bashirian', 'Mrs. Lucie Stark I', '3', '8', '6', '$2y$10$E5IO2LnliHPtBcR5ZTcHpefQNex1DCFij0sTgjZruqdtELCuzGlTS', '1975-02-13', '1', '6448 Jenkins Stravenue', '03934 Langworth Pines Suite 541', '1-696-964-5518', '1-136-844-3819x', 'Bernita30@Adams.com', '211', '1', 'CzmpMdem5Z', '2015-10-26 14:30:57', '2015-10-26 14:30:57'), ('21', '72', 'Mr. Devon Quitzon PhD', 'Ziemann', 'Duncan Brakus', '6', '9', '11', '$2y$10$pfLCZnhkgtpvHf2aFsU6FOOH80AkLe5CWtJM9Mp6WCjLbmfprJRhG', '1972-07-18', '3', '397 Carter Villages', '3278 Rose Underpass Suite 633', '814-210-7607', '424-535-3858', 'oPfannerstill@Ward.com', '521', '1', 'qLS1q9O9mK', '2015-10-26 14:30:57', '2015-10-26 14:30:57'), ('22', '63', 'Haylee Torp', 'Kuhic', 'Jane Hodkiewicz', '2', '10', '6', '$2y$10$0xSPnzr2t7LWLG7HVd2jwuxk2bdd18Y6.OWs0iW0V2b7sFokBKFNS', '2013-04-05', '1', '543 Schinner Dam', '71342 Leffler Course', '309-725-0861x39', '1-916-317-0495x', 'Grant.Alexzander@Padberg.org', '262', '1', 'vnDxSNGZxR', '2015-10-26 14:30:57', '2015-10-26 14:30:57'), ('23', '3', 'Quentin Balistreri', 'Simonis', 'Judge Schumm', '2', '10', '10', '$2y$10$fMHFBmUI6LXb6MxgTk8mfOac0tPIADXkYNJwsZUArLXY6UjEtJCee', '2008-06-03', '3', '92806 Cormier River Apt. 796', '569 Skiles Wells Suite 504', '1-463-421-5946x', '(374)270-1504x3', 'Valentin.Vandervort@Pfeffer.com', '684', '1', 'a34CiXNssv', '2015-10-26 14:30:57', '2015-10-26 14:30:57'), ('24', '544149182', 'Caterina Huel', 'Osinski', 'Lila Cremin', '1', '7', '14', '$2y$10$BpQaQD6xjydI.gt4MSj3SeubGfzsaqlkwfT.atiDSBqWrUFWyryNS', '1981-01-04', '2', '9758 Kuhn Green Apt. 012', '4946 Adonis Mission', '707.172.0582x85', '(857)604-9625x0', 'Hellen86@Pouros.com', '401', '1', 'A2BFwUSQmX', '2015-10-26 14:30:57', '2015-10-26 14:30:57'), ('25', '6', 'Jaunita Miller', 'Feil', 'Ursula Hyatt Jr.', '1', '2', '13', '$2y$10$qq0fP4NNbPZHtDevX8NSee.hZaiL.iqWcaHxUWz5ahFUY2/Vi1IMG', '1993-01-25', '1', '6896 Macejkovic Stravenue', '98748 Carlos Orchard Suite 327', '878-504-2540x09', '503-980-7655', 'eRempel@hotmail.com', '674', '1', 'M8L7ZU5UCn', '2015-10-26 14:30:57', '2015-10-26 14:30:57'), ('28', '1718962911', 'Jairo', 'Rey', 'Jairo', '1', '3', '1', '$2y$10$TccXTMsvAyvGVGNPTRAwY.UOU97nK5rNJLR2aXf6xTEctYV5H5lNG', '1984-08-05', '1', 'Casales Buenaventura etapa 2 casa 100', '', '0999844500', '3811563', 'jairodanielrey@gmail.com', '307', '1', 'PYL5Kx1d8nXoT1SWOCqpW7kY8U4fxSr578BBM5nzQnRSmKtMZd7KmgHE7wtY', '2015-10-26 15:02:59', '2015-12-28 16:20:19'), ('29', '17171717', 'asdasda', 'dsaasd', 'asd', '1', '3', '1', '$2y$10$3k31ZgDgwHK8JjTems11LOnm2b3kcoz2S2POV7DuotGSb/pwEE9Jy', '1984-08-05', '1', 'adasdad', 'asdasd', '123123', '123', 'sfdsd@sdfasf.com', '123', '1', 'BI4frzRZQGNj3JOhyTh3A4bVjsPcvJ5OK2fmQ7Hvsz85prNoQWyrDrXM4sqd', '2015-10-30 11:50:53', '2015-10-30 11:52:27'), ('30', '86', 'Myrtle O\'Reilly', 'Heaney', 'Stone Quitzon III', '6', '5', '8', '$2y$10$0xezIRkyXUvgbSWj/70kK.3Rts8gzszIIbzJdXvvRcgmk6vsh8wou', '1978-04-16', '3', '73712 Toy Villages Apt. 688', '10245 Robel Islands', '326-064-3582x90', '+51(6)687928975', 'Breitenberg.Cydney@Ferry.info', '324', '1', 'u69iOpLhSi', '2015-10-30 14:51:19', '2015-10-30 14:51:19'), ('31', '5', 'Cameron Bauch', 'Cruickshank', 'Emmet Bogisich', '6', '9', '5', '$2y$10$L.eL2YShtqwicwcsHZvBW.S5UwyXzogJ34y1JbdgQx70mC11m4RLa', '1981-07-01', '2', '47675 Kim Ports Apt. 649', '376 Strosin Heights Apt. 345', '(785)060-9383x8', '153-045-9336x92', 'wWillms@gmail.com', '623', '1', 'GWTT4Yn4zI', '2015-10-30 14:51:19', '2015-10-30 14:51:19'), ('34', '43944606', 'Gaston Marvin', 'Upton', 'Mavis Marks', '6', '10', '8', '$2y$10$EhhHiY5S6EA.wGvI3.zLT.G8gQLhZfYoaaTC33C/CkwAx87A/37am', '1985-05-28', '3', '0637 Zulauf Crescent Apt. 178', '36302 Heather Track Suite 110', '(630)187-8371x9', '835-109-3835x60', 'Christelle.Macejkovic@hotmail.com', '616', '1', 'nSXmf1mMIc', '2015-11-23 12:19:49', '2015-11-23 12:19:49'), ('35', '9556546', 'Samantha Howe III', 'Gleason', 'Hilario Zemlak', '6', '7', '10', '$2y$10$nWXH2JCbysSeHScLowg7eufEhVXSNPlz3GMebcfIw85AUiEgJyCaO', '2012-05-01', '3', '969 Korey Pass Apt. 177', '871 Turner Ford Apt. 102', '1-458-610-4392x', '1-067-150-7219x', 'Christiansen.Jaron@gmail.com', '384', '1', 'hydP5UXsrv', '2015-11-23 12:19:49', '2015-11-23 12:19:49'), ('36', '19', 'Dr. Claudia Corkery III', 'Altenwerth', 'Zachariah Russel', '3', '7', '6', '$2y$10$yo0BB9k96lvOYyIH.BQ2/evKwlRSx4s8EySL8YUx.HpOGcWGIjSBy', '2003-01-16', '1', '05216 Ian Valley Suite 225', '0965 Kilback Viaduct', '217-878-5520', '053-843-6622x49', 'Samanta.Kemmer@yahoo.com', '138', '1', 'Q7XYrKTbvU', '2015-11-23 12:19:49', '2015-11-23 12:19:49'), ('37', '790', 'Luigi Waters', 'Jacobi', 'Mr. Hollis Towne PhD', '4', '12', '7', '$2y$10$uUyFQEWz.HUOG9u0w/sxUuP5Qn6qzGfNRJ93J/.Jv3pLX3eBl0YsO', '1975-03-11', '2', '7047 Torphy Estate Suite 019', '022 Keebler Mission', '638.160.3550', '380.323.3901x87', 'Quentin.Jast@Klocko.com', '567', '1', 'h9DF2gNOwM', '2015-11-23 12:19:49', '2015-11-23 12:19:49'), ('38', '66609', 'Deja Emmerich III', 'Gislason', 'Ambrose Ryan', '3', '7', '9', '$2y$10$QueV/l.AUJ2u4Mwp21V77O0fMI4O349qe87Zv6ovd/7rH3l68sYtC', '1970-11-01', '2', '4165 Cole Ports Suite 243', '367 Carmela Ports Apt. 950', '(028)772-2921', '(111)711-0936x6', 'rLegros@Zboncak.com', '682', '1', 'lRFiZaj6Bb', '2015-11-23 12:19:49', '2015-11-23 12:19:49'), ('39', '98', 'Adeline Bednar', 'Pfannerstill', 'Darwin Vandervort', '6', '11', '8', '$2y$10$75m12igmC3LRQjMUav5kq.PeCVQ6TOo3AcmpK2FUX1VLcl/fszrK6', '1987-12-02', '3', '9135 Kreiger Station', '9273 Dorian Fords', '(842)309-7244', '582.176.2278', 'Izabella.Becker@Schaefer.com', '535', '1', 'c6Bqb5N1oL', '2015-11-23 12:19:49', '2015-11-23 12:19:49');
COMMIT;

-- ----------------------------
-- Auto increment value for accesos
-- ----------------------------
ALTER TABLE `accesos` AUTO_INCREMENT=4;

-- ----------------------------
-- Auto increment value for aplicativos
-- ----------------------------
ALTER TABLE `aplicativos` AUTO_INCREMENT=4;

-- ----------------------------
-- Auto increment value for cargos
-- ----------------------------
ALTER TABLE `cargos` AUTO_INCREMENT=1;

-- ----------------------------
-- Auto increment value for ciudades
-- ----------------------------
ALTER TABLE `ciudades` AUTO_INCREMENT=25;

-- ----------------------------
-- Auto increment value for departamentos
-- ----------------------------
ALTER TABLE `departamentos` AUTO_INCREMENT=19;

-- ----------------------------
-- Auto increment value for documentos_externos
-- ----------------------------
ALTER TABLE `documentos_externos` AUTO_INCREMENT=19;

-- ----------------------------
-- Auto increment value for documentos_externos_asignados
-- ----------------------------
ALTER TABLE `documentos_externos_asignados` AUTO_INCREMENT=6;

-- ----------------------------
-- Auto increment value for instituciones
-- ----------------------------
ALTER TABLE `instituciones` AUTO_INCREMENT=35;

-- ----------------------------
-- Auto increment value for instituciones_tipos
-- ----------------------------
ALTER TABLE `instituciones_tipos` AUTO_INCREMENT=4;

-- ----------------------------
-- Auto increment value for modulos
-- ----------------------------
ALTER TABLE `modulos` AUTO_INCREMENT=3;

-- ----------------------------
-- Auto increment value for opciones
-- ----------------------------
ALTER TABLE `opciones` AUTO_INCREMENT=11;

-- ----------------------------
-- Auto increment value for panel_opciones
-- ----------------------------
ALTER TABLE `panel_opciones` AUTO_INCREMENT=7;

-- ----------------------------
-- Auto increment value for partidas
-- ----------------------------
ALTER TABLE `partidas` AUTO_INCREMENT=1;

-- ----------------------------
-- Auto increment value for provincias
-- ----------------------------
ALTER TABLE `provincias` AUTO_INCREMENT=25;

-- ----------------------------
-- Auto increment value for regiones
-- ----------------------------
ALTER TABLE `regiones` AUTO_INCREMENT=5;

-- ----------------------------
-- Auto increment value for roles
-- ----------------------------
ALTER TABLE `roles` AUTO_INCREMENT=7;

-- ----------------------------
-- Auto increment value for titulos
-- ----------------------------
ALTER TABLE `titulos` AUTO_INCREMENT=15;

-- ----------------------------
-- Auto increment value for users
-- ----------------------------
ALTER TABLE `users` AUTO_INCREMENT=40;
