/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : 127.0.0.1:3306
Source Database       : sinapptic

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-03-23 12:53:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for accesos
-- ----------------------------
DROP TABLE IF EXISTS `accesos`;
CREATE TABLE `accesos` (
`id`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`aplicativo_id`  int(10) UNSIGNED NOT NULL ,
`grupo_id`  int(10) UNSIGNED NOT NULL ,
`rol_id`  int(10) UNSIGNED NOT NULL ,
`active`  int(11) NOT NULL DEFAULT 1 ,
`created_at`  timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ,
`updated_at`  timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ,
PRIMARY KEY (`id`),
FOREIGN KEY (`aplicativo_id`) REFERENCES `aplicativos` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
FOREIGN KEY (`grupo_id`) REFERENCES `grupos` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
FOREIGN KEY (`rol_id`) REFERENCES `roles` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
INDEX `accesos_aplicativo_id_foreign` (`aplicativo_id`) USING BTREE ,
INDEX `accesos_grupo_id_foreign` (`grupo_id`) USING BTREE ,
INDEX `accesos_rol_id_foreign` (`rol_id`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_unicode_ci
AUTO_INCREMENT=5

;

-- ----------------------------
-- Records of accesos
-- ----------------------------
BEGIN;
INSERT INTO `accesos` VALUES ('1', '1', '3', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('2', '2', '3', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('3', '3', '3', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('4', '4', '3', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
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
AUTO_INCREMENT=5

;

-- ----------------------------
-- Records of aplicativos
-- ----------------------------
BEGIN;
INSERT INTO `aplicativos` VALUES ('1', 'Sistema', '1', 'core', null, 'i-cogs', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('2', 'Doc. Receptor', '2', 'docreceptor', null, 'i-stack-list', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('3', 'Siseftran', '2', 'siseftran/plannacional', null, 'i-books', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('4', 'WorkMetric', '2', 'laboral', null, 'i-stopwatch', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
COMMIT;

-- ----------------------------
-- Table structure for asistencias
-- ----------------------------
DROP TABLE IF EXISTS `asistencias`;
CREATE TABLE `asistencias` (
`id`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`numca`  varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL ,
`empleado`  varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL ,
`dia`  varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL ,
`fecha`  varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL ,
`horaentrada`  time NULL DEFAULT NULL ,
`horasalida`  time NULL DEFAULT NULL ,
`ausente`  int(11) NULL DEFAULT NULL ,
`created_at`  timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ,
`updated_at`  timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_unicode_ci
AUTO_INCREMENT=1163

;

-- ----------------------------
-- Records of asistencias
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for blog_posts
-- ----------------------------
DROP TABLE IF EXISTS `blog_posts`;
CREATE TABLE `blog_posts` (
`id`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`departamento_id`  int(10) UNSIGNED NOT NULL ,
`title`  varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL ,
`subtitle`  varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL ,
`content`  longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL ,
`image`  varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL ,
`type`  int(11) NOT NULL ,
`status`  int(11) NOT NULL ,
`order`  int(11) NOT NULL ,
`url`  longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL ,
`source`  varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL ,
`url_source`  longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL ,
`created_at`  timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ,
`updated_at`  timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ,
PRIMARY KEY (`id`),
FOREIGN KEY (`departamento_id`) REFERENCES `departamentos` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
INDEX `blog_posts_departamento_id_foreign` (`departamento_id`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_unicode_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Records of blog_posts
-- ----------------------------
BEGIN;
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
AUTO_INCREMENT=1

;

-- ----------------------------
-- Records of documentos_externos
-- ----------------------------
BEGIN;
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
AUTO_INCREMENT=1

;

-- ----------------------------
-- Records of documentos_externos_asignados
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for grupos
-- ----------------------------
DROP TABLE IF EXISTS `grupos`;
CREATE TABLE `grupos` (
`id`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`name`  varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL ,
`created_at`  timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ,
`updated_at`  timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_unicode_ci
AUTO_INCREMENT=19

;

-- ----------------------------
-- Records of grupos
-- ----------------------------
BEGIN;
INSERT INTO `grupos` VALUES ('1', 'Administrativo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('2', 'Financiero', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('3', 'Tecnologias de la Informacion', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('4', 'Planificacion', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('5', 'Fomento productivo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('6', 'CooperacionInt', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('7', 'Rrhh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('8', 'Rrhh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('9', 'Financiero', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('10', 'Comunicacion', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('11', 'Juridico', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('12', 'Gestion Social', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('14', 'Gober. y Descent.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('15', 'Vialidad', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('16', 'Dirección Ejecutiva', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('17', 'Subdirección', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('18', 'Ambiente', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
COMMIT;

-- ----------------------------
-- Table structure for grupos_users
-- ----------------------------
DROP TABLE IF EXISTS `grupos_users`;
CREATE TABLE `grupos_users` (
`id`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`grupo_id`  int(10) UNSIGNED NOT NULL ,
`user_id`  int(10) UNSIGNED NOT NULL ,
`active`  int(11) NOT NULL DEFAULT 1 ,
`created_at`  timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ,
`updated_at`  timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ,
PRIMARY KEY (`id`),
FOREIGN KEY (`grupo_id`) REFERENCES `grupos` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
INDEX `grupos_users_grupo_id_foreign` (`grupo_id`) USING BTREE ,
INDEX `grupos_users_user_id_foreign` (`user_id`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_unicode_ci
AUTO_INCREMENT=2

;

-- ----------------------------
-- Records of grupos_users
-- ----------------------------
BEGIN;
INSERT INTO `grupos_users` VALUES ('1', '3', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
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
INSERT INTO `migrations` VALUES ('2014_10_12_100000_create_password_resets_table', '1'), ('2015_10_22_151906_create_titulos_table', '1'), ('2015_10_22_152601_create_regiones_table', '1'), ('2015_10_22_152610_create_provincias_table', '1'), ('2015_10_22_152616_create_ciudades_table', '1'), ('2015_10_22_153241_create_instituciones_tipos_table', '1'), ('2015_10_22_153422_create_instituciones_table', '1'), ('2015_10_22_154036_create_departamentos_table', '1'), ('2015_10_22_154333_create_modulos_table', '1'), ('2015_10_22_154738_create_aplicativos_table', '1'), ('2015_10_22_155120_create_panel_opciones_table', '1'), ('2015_10_23_104017_create_opciones_table', '1'), ('2015_10_23_105249_create_roles_table', '1'), ('2015_10_23_105711_create_cargos_table', '1'), ('2015_10_23_111533_create_users_table', '1'), ('2015_10_23_112459_create_partidas_table', '1'), ('2015_10_29_153423_create_documentos_externos_table', '1'), ('2015_11_23_115025_create_documentos_externos_asignados_table', '1'), ('2016_09_06_103415_create_grupos_table', '1'), ('2016_09_28_111705_create_accesos_table', '1'), ('2016_09_28_111805_create_grupos_users_table', '1'), ('2017_02_22_113031_create_blog_posts_table', '1'), ('2017_03_17_161149_create_asistencias_table', '1');
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
AUTO_INCREMENT=16

;

-- ----------------------------
-- Records of opciones
-- ----------------------------
BEGIN;
INSERT INTO `opciones` VALUES ('1', 'Ver Usuarios', '1', 'core/users/index', 'asdasd', 'icons/default.ico', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('2', 'Crear Usuario', '1', 'core/users/create', 'asda', 'icons/default.ico', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('3', 'Ver Grupos', '4', 'core/grupos/index', 'asdasd', 'icons/default.ico', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('4', 'Crear Grupo', '4', 'core/grupos/create', 'sdfsdf', 'icons/default.ico', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('5', 'Ver Instituciones', '2', 'core/instituciones/index', 'asdasd', 'icons/default.ico', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('6', 'Crear Institucion', '2', 'core/instituciones/create', 'sdfsdf', 'icons/default.ico', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('7', 'Crear Departamento', '2', 'core/departamentos/create', 'asdasd', 'icons/default.ico', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('8', 'Ver Aplicaciones', '3', 'core/aplicaciones/index', 'asdasd', 'icons/default.ico', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('9', 'Crear Aplicacion', '3', 'core/aplicaciones/create', 'asdasd', 'icons/default.ico', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('10', 'Subir Archivo', '5', 'laboral/carga', 'asdad', 'icons/default.ico', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('11', 'Historial Cargas', '5', 'laboral/historial', 'sda', 'icons/default.ico', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('12', 'Consultar', '6', 'laboral/asistencias', 'asdad', 'icons/default.ico', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('13', 'Justificar', '6', 'laboral/justificaciones', 'asdad', 'icons/default.ico', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('14', 'Calcular', '7', 'laboral/calc_vacacion', 'asdad', 'icons/default.ico', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('15', 'Solicitar', '7', 'laboral/solicitues_vacacion', 'asdads', 'icons/default.ico', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
COMMIT;

-- ----------------------------
-- Table structure for panel_opciones
-- ----------------------------
DROP TABLE IF EXISTS `panel_opciones`;
CREATE TABLE `panel_opciones` (
`id`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`name`  varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL ,
`aplicativo_id`  int(10) UNSIGNED NOT NULL ,
`url`  varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL ,
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
AUTO_INCREMENT=8

;

-- ----------------------------
-- Records of panel_opciones
-- ----------------------------
BEGIN;
INSERT INTO `panel_opciones` VALUES ('1', 'Usuarios', '1', 'users', 'fa fa-users', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('2', 'Instituciones', '1', 'instituciones', 'fa fa-building-o', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('3', 'Aplicaciones', '1', 'aplicaciones', 'fa fa-puzzle-piece', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('4', 'Permisos', '1', 'accesos', 'fa fa-key', '4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('5', 'Cargas', '4', 'carga', 'fa fa-upload', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('6', 'Asistencia', '4', 'asistencia', 'fa fa-calendar', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'), ('7', 'Vacaciones', '4', 'vacacion', 'fa fa-sun-o', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
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
`avatar`  varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL ,
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
AUTO_INCREMENT=2

;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES ('1', '1718962911', 'Jairo', 'Rey', 'Jairo', '', '1', '3', '1', '$2y$10$TccXTMsvAyvGVGNPTRAwY.UOU97nK5rNJLR2aXf6xTEctYV5H5lNG', '1984-08-05', '1', 'Casales Buenaventura etapa 2 casa 100', '', '0999844500', '3811563', 'jairodanielrey@gmail.com', '307', '1', 'PYL5Kx1d8nXoT1SWOCqpW7kY8U4fxSr578BBM5nzQnRSmKtMZd7KmgHE7wtY', '2015-10-26 15:02:59', '2015-12-28 16:20:19');
COMMIT;

-- ----------------------------
-- Auto increment value for accesos
-- ----------------------------
ALTER TABLE `accesos` AUTO_INCREMENT=5;

-- ----------------------------
-- Auto increment value for aplicativos
-- ----------------------------
ALTER TABLE `aplicativos` AUTO_INCREMENT=5;

-- ----------------------------
-- Auto increment value for asistencias
-- ----------------------------
ALTER TABLE `asistencias` AUTO_INCREMENT=1163;

-- ----------------------------
-- Auto increment value for blog_posts
-- ----------------------------
ALTER TABLE `blog_posts` AUTO_INCREMENT=1;

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
ALTER TABLE `documentos_externos` AUTO_INCREMENT=1;

-- ----------------------------
-- Auto increment value for documentos_externos_asignados
-- ----------------------------
ALTER TABLE `documentos_externos_asignados` AUTO_INCREMENT=1;

-- ----------------------------
-- Auto increment value for grupos
-- ----------------------------
ALTER TABLE `grupos` AUTO_INCREMENT=19;

-- ----------------------------
-- Auto increment value for grupos_users
-- ----------------------------
ALTER TABLE `grupos_users` AUTO_INCREMENT=2;

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
ALTER TABLE `opciones` AUTO_INCREMENT=16;

-- ----------------------------
-- Auto increment value for panel_opciones
-- ----------------------------
ALTER TABLE `panel_opciones` AUTO_INCREMENT=8;

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
ALTER TABLE `users` AUTO_INCREMENT=2;
