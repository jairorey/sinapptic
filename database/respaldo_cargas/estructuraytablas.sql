/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : 127.0.0.1:3306
Source Database       : sinapptic

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-03-23 12:52:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for accesos
-- ----------------------------
DROP TABLE IF EXISTS `accesos`;
CREATE TABLE `accesos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `aplicativo_id` int(10) unsigned NOT NULL,
  `grupo_id` int(10) unsigned NOT NULL,
  `rol_id` int(10) unsigned NOT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `accesos_aplicativo_id_foreign` (`aplicativo_id`),
  KEY `accesos_grupo_id_foreign` (`grupo_id`),
  KEY `accesos_rol_id_foreign` (`rol_id`),
  CONSTRAINT `accesos_aplicativo_id_foreign` FOREIGN KEY (`aplicativo_id`) REFERENCES `aplicativos` (`id`),
  CONSTRAINT `accesos_grupo_id_foreign` FOREIGN KEY (`grupo_id`) REFERENCES `grupos` (`id`),
  CONSTRAINT `accesos_rol_id_foreign` FOREIGN KEY (`rol_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of accesos
-- ----------------------------
INSERT INTO `accesos` VALUES ('1', '1', '3', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `accesos` VALUES ('2', '2', '3', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `accesos` VALUES ('3', '3', '3', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `accesos` VALUES ('4', '4', '3', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for aplicativos
-- ----------------------------
DROP TABLE IF EXISTS `aplicativos`;
CREATE TABLE `aplicativos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `modulo_id` int(10) unsigned NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'icons/default.ico',
  `order` smallint(6) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `aplicativos_modulo_id_foreign` (`modulo_id`),
  CONSTRAINT `aplicativos_modulo_id_foreign` FOREIGN KEY (`modulo_id`) REFERENCES `modulos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of aplicativos
-- ----------------------------
INSERT INTO `aplicativos` VALUES ('1', 'Sistema', '1', 'core', null, 'i-cogs', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `aplicativos` VALUES ('2', 'Doc. Receptor', '2', 'docreceptor', null, 'i-stack-list', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `aplicativos` VALUES ('3', 'Siseftran', '2', 'siseftran/plannacional', null, 'i-books', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `aplicativos` VALUES ('4', 'WorkMetric', '2', 'laboral', null, 'i-stopwatch', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for asistencias
-- ----------------------------
DROP TABLE IF EXISTS `asistencias`;
CREATE TABLE `asistencias` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `numca` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `empleado` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dia` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fecha` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `horaentrada` time DEFAULT NULL,
  `horasalida` time DEFAULT NULL,
  `ausente` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1163 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of asistencias
-- ----------------------------

-- ----------------------------
-- Table structure for blog_posts
-- ----------------------------
DROP TABLE IF EXISTS `blog_posts`;
CREATE TABLE `blog_posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `departamento_id` int(10) unsigned NOT NULL,
  `title` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `subtitle` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  `url` longtext COLLATE utf8_unicode_ci,
  `source` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url_source` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `blog_posts_departamento_id_foreign` (`departamento_id`),
  CONSTRAINT `blog_posts_departamento_id_foreign` FOREIGN KEY (`departamento_id`) REFERENCES `departamentos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of blog_posts
-- ----------------------------

-- ----------------------------
-- Table structure for cargos
-- ----------------------------
DROP TABLE IF EXISTS `cargos`;
CREATE TABLE `cargos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('analista','director','director_ejecutivo','asistente','asesor','otro') COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of cargos
-- ----------------------------

-- ----------------------------
-- Table structure for ciudades
-- ----------------------------
DROP TABLE IF EXISTS `ciudades`;
CREATE TABLE `ciudades` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `provincia_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `ciudades_provincia_id_foreign` (`provincia_id`),
  CONSTRAINT `ciudades_provincia_id_foreign` FOREIGN KEY (`provincia_id`) REFERENCES `provincias` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of ciudades
-- ----------------------------
INSERT INTO `ciudades` VALUES ('1', 'Cuenca', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `ciudades` VALUES ('2', 'Guaranda', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `ciudades` VALUES ('3', 'Azogues', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `ciudades` VALUES ('4', 'Tulcán', '4', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `ciudades` VALUES ('5', 'Riobamba', '5', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `ciudades` VALUES ('6', 'Latacunga', '6', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `ciudades` VALUES ('7', 'Machala', '7', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `ciudades` VALUES ('8', 'Esmeraldas', '8', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `ciudades` VALUES ('9', 'Puerto Baquerizo Moreno', '9', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `ciudades` VALUES ('10', 'Guayaquil', '10', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `ciudades` VALUES ('11', 'Ibarra', '11', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `ciudades` VALUES ('12', 'Loja', '12', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `ciudades` VALUES ('13', 'Babahoyo', '13', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `ciudades` VALUES ('14', 'Portoviejo', '14', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `ciudades` VALUES ('15', 'Macas', '15', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `ciudades` VALUES ('16', 'Tena', '16', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `ciudades` VALUES ('17', 'Francisco de Orellana', '17', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `ciudades` VALUES ('18', 'Puyo', '18', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `ciudades` VALUES ('19', 'Quito', '19', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `ciudades` VALUES ('20', 'Santa Elena', '20', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `ciudades` VALUES ('21', 'Santo Domingo', '21', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `ciudades` VALUES ('22', 'Nueva Loja', '22', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `ciudades` VALUES ('23', 'Ambato', '23', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `ciudades` VALUES ('24', 'Zamora', '24', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for departamentos
-- ----------------------------
DROP TABLE IF EXISTS `departamentos`;
CREATE TABLE `departamentos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `institucion_id` int(10) unsigned NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `departamentos_institucion_id_foreign` (`institucion_id`),
  CONSTRAINT `departamentos_institucion_id_foreign` FOREIGN KEY (`institucion_id`) REFERENCES `instituciones` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of departamentos
-- ----------------------------
INSERT INTO `departamentos` VALUES ('1', 'Administrativo', '1', 'administrativo@congope.gob.ec', 'DAM', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `departamentos` VALUES ('2', 'Financiero', '1', 'financiero@congope.gob.ec', 'DFN', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `departamentos` VALUES ('3', 'Tecnologias de la Informacion', '1', 'tic@congope.gob.ec', 'DTI', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `departamentos` VALUES ('4', 'Planificacion', '1', 'planificacion@congope.gob.ec', 'PLAN', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `departamentos` VALUES ('5', 'Fomento productivo', '1', 'fprod@congope.gob.ec', 'FPROD', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `departamentos` VALUES ('6', 'CooperacionInt', '1', 'cic@congope.gob.ec', 'COOIN', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `departamentos` VALUES ('7', 'Rrhh', '10', 'rrhh@gadrios.gob.ec', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `departamentos` VALUES ('8', 'Rrhh', '5', 'rrhh@gadms.gob.ec', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `departamentos` VALUES ('9', 'Financiero', '8', 'fin@gobcan.gob.ec', 'FIN', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `departamentos` VALUES ('10', 'Comunicacion', '1', 'comunicacion@congope.gobec', 'COM', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `departamentos` VALUES ('11', 'Juridico', '1', null, 'JRDC', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `departamentos` VALUES ('12', 'Gestion Social', '1', null, 'GSC', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `departamentos` VALUES ('14', 'Gober. y Descent.', '1', null, 'GYD', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `departamentos` VALUES ('15', 'Vialidad', '1', null, 'VLD', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `departamentos` VALUES ('16', 'Dirección Ejecutiva', '1', null, 'DEJ', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `departamentos` VALUES ('17', 'Subdirección', '1', null, 'DSB', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `departamentos` VALUES ('18', 'Ambiente', '1', null, 'DAM', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for documentos_externos
-- ----------------------------
DROP TABLE IF EXISTS `documentos_externos`;
CREATE TABLE `documentos_externos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `institucion_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `referencia` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name_remitente` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `asunto` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_recibido` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_emitido` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `observacion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of documentos_externos
-- ----------------------------

-- ----------------------------
-- Table structure for documentos_externos_asignados
-- ----------------------------
DROP TABLE IF EXISTS `documentos_externos_asignados`;
CREATE TABLE `documentos_externos_asignados` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `documento_externo_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `documentos_externos_asignados_documento_externo_id_foreign` (`documento_externo_id`),
  KEY `documentos_externos_asignados_user_id_foreign` (`user_id`),
  CONSTRAINT `documentos_externos_asignados_documento_externo_id_foreign` FOREIGN KEY (`documento_externo_id`) REFERENCES `documentos_externos` (`id`),
  CONSTRAINT `documentos_externos_asignados_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of documentos_externos_asignados
-- ----------------------------

-- ----------------------------
-- Table structure for grupos
-- ----------------------------
DROP TABLE IF EXISTS `grupos`;
CREATE TABLE `grupos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of grupos
-- ----------------------------
INSERT INTO `grupos` VALUES ('1', 'Administrativo', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `grupos` VALUES ('2', 'Financiero', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `grupos` VALUES ('3', 'Tecnologias de la Informacion', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `grupos` VALUES ('4', 'Planificacion', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `grupos` VALUES ('5', 'Fomento productivo', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `grupos` VALUES ('6', 'CooperacionInt', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `grupos` VALUES ('7', 'Rrhh', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `grupos` VALUES ('8', 'Rrhh', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `grupos` VALUES ('9', 'Financiero', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `grupos` VALUES ('10', 'Comunicacion', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `grupos` VALUES ('11', 'Juridico', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `grupos` VALUES ('12', 'Gestion Social', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `grupos` VALUES ('14', 'Gober. y Descent.', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `grupos` VALUES ('15', 'Vialidad', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `grupos` VALUES ('16', 'Dirección Ejecutiva', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `grupos` VALUES ('17', 'Subdirección', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `grupos` VALUES ('18', 'Ambiente', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for grupos_users
-- ----------------------------
DROP TABLE IF EXISTS `grupos_users`;
CREATE TABLE `grupos_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `grupo_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `grupos_users_grupo_id_foreign` (`grupo_id`),
  KEY `grupos_users_user_id_foreign` (`user_id`),
  CONSTRAINT `grupos_users_grupo_id_foreign` FOREIGN KEY (`grupo_id`) REFERENCES `grupos` (`id`),
  CONSTRAINT `grupos_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of grupos_users
-- ----------------------------
INSERT INTO `grupos_users` VALUES ('1', '3', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for instituciones
-- ----------------------------
DROP TABLE IF EXISTS `instituciones`;
CREATE TABLE `instituciones` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ciudad_id` int(10) unsigned DEFAULT NULL,
  `institucion_tipo_id` int(10) unsigned NOT NULL,
  `business_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ruc` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `instituciones_ciudad_id_foreign` (`ciudad_id`),
  KEY `instituciones_institucion_tipo_id_foreign` (`institucion_tipo_id`),
  CONSTRAINT `instituciones_ciudad_id_foreign` FOREIGN KEY (`ciudad_id`) REFERENCES `ciudades` (`id`),
  CONSTRAINT `instituciones_institucion_tipo_id_foreign` FOREIGN KEY (`institucion_tipo_id`) REFERENCES `instituciones_tipos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of instituciones
-- ----------------------------
INSERT INTO `instituciones` VALUES ('1', 'CONGOPE', '19', '2', 'Consorcio de Gobiernos Provinciales del Ecuador', '2147483647', null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `instituciones` VALUES ('2', 'GAP Guayas', '10', '2', 'Gobierno Autónomo Descentralizado de la Provincia de Guayas', null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `instituciones` VALUES ('3', 'GAP Sucumbios', '22', '2', 'Gobierno Autónomo Descentralizado de la Provincia de Sucumbios', null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `instituciones` VALUES ('4', 'GAP Manabí', '14', '2', 'Gobierno Autónomo Descentralizado de la Provincia de Manabí', null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `instituciones` VALUES ('5', 'GAP Morona Santiago', '15', '2', 'Gobierno Autónomo Descentralizado de la Provincia de Santo Domingo de los Tsachilas', null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `instituciones` VALUES ('6', 'GAP Imbabura', '11', '2', 'Gobierno Autónomo Descentralizado de la Provincia de Imbabura', null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `instituciones` VALUES ('7', 'GAP Tungurahua', '23', '2', 'Gobierno Autónomo Descentralizado de la Provincia de Tungurahua', null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `instituciones` VALUES ('8', 'GAP Cañar', '3', '2', 'Gobierno Autónomo Descentralizado de la Provincia del Cañar', null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `instituciones` VALUES ('9', 'GAP Azuay', '1', '2', 'Gobierno Autónomo Descentralizado de la Provincia de Azuay', null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `instituciones` VALUES ('10', 'GAP Los Ríos', '13', '2', 'Gobierno Autónomo Descentralizado de la Provincia de Los Ríos', null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `instituciones` VALUES ('11', 'GAP Bolívar', '2', '2', 'Gobierno Autónomo Descentralizado de la Provincia de Bolívar', null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `instituciones` VALUES ('12', 'GAP Pastaza', '18', '2', 'Gobierno Autónomo Descentralizado de la Provincia de Pastaza', null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `instituciones` VALUES ('13', 'GAP El Oro', '7', '2', 'Gobierno Autónomo Descentralizado de la Provincia de El Oro', null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `instituciones` VALUES ('14', 'GAP Santo Domingo de los Tsáchilas', '21', '2', 'Gobierno Autónomo Descentralizado de la Provincia de Santo Domingo de los Tsáchilas', null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `instituciones` VALUES ('15', 'GAP Orellana', '17', '2', 'Gobierno Autónomo Descentralizado de la Provincia de Orellana', null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `instituciones` VALUES ('16', 'GAP Carchi', '4', '2', 'Gobierno Autónomo Descentralizado de la Provincia de Carchi', null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `instituciones` VALUES ('17', 'GAP Pichincha', '19', '2', 'Gobierno Autónomo Descentralizado de la Provincia de Pichincha', null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `instituciones` VALUES ('18', 'GAP Cotopaxi', '6', '2', 'Gobierno Autónomo Descentralizado de la Provincia de Cotopaxi', null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `instituciones` VALUES ('19', 'GAP Esmeraldas', '8', '2', 'Gobierno Autónomo Descentralizado de la Provincia de Esmeraldas', null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `instituciones` VALUES ('20', 'GAP Chimborazo', '5', '2', 'Gobierno Autónomo Descentralizado de la Provincia de Chimborazo', null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `instituciones` VALUES ('21', 'GAP Santa Elena', '20', '2', 'Gobierno Autónomo Descentralizado de la Provincia de Santa Elena', null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `instituciones` VALUES ('22', 'GAP Loja', '12', '2', 'Gobierno Autónomo Descentralizado de la Provincia de Loja', null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `instituciones` VALUES ('23', 'GAP Zamora Chinchipe', '24', '2', 'Gobierno Autónomo Descentralizado de la Provincia de Zamora Chinchipe', null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `instituciones` VALUES ('24', 'GAP Napo', '16', '2', 'Gobierno Autónomo Descentralizado de la Provincia de Napo', null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `instituciones` VALUES ('25', 'Banco Pichincha', '19', '3', 'Banco Pinchincha', null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `instituciones` VALUES ('26', 'Produbanco', '19', '3', 'Banco Produbanco', null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `instituciones` VALUES ('27', 'Banco Bolivariano', '19', '3', 'Banco Bolivariano', null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `instituciones` VALUES ('28', 'Banco de Guayaquil S. A.', '19', '3', 'Banco de Guayaquil S A.', null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `instituciones` VALUES ('29', 'Banco del Pacífico', '19', '3', 'Banco del Pacífico', null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `instituciones` VALUES ('30', 'Banco General Rumiñahui', '19', '3', 'Banco General Rumiñahui', null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `instituciones` VALUES ('31', 'Banco Internacional', '19', '3', 'Banco Internacional', null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `instituciones` VALUES ('32', 'CACPECO Ltda.', '19', '3', 'CACPECO Ltda.', null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `instituciones` VALUES ('33', 'Coop. Ahorro y Crédito Andalucía', '19', '3', 'Coop. Ahorro y Crédito Andalucía', null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `instituciones` VALUES ('34', 'Mutualista Pichincha', '19', '3', 'Mutualista Pichincha', null, null, null, null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for instituciones_tipos
-- ----------------------------
DROP TABLE IF EXISTS `instituciones_tipos`;
CREATE TABLE `instituciones_tipos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of instituciones_tipos
-- ----------------------------
INSERT INTO `instituciones_tipos` VALUES ('1', 'Consorcio', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `instituciones_tipos` VALUES ('2', 'Gad', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `instituciones_tipos` VALUES ('3', 'Banco', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('2015_10_22_151906_create_titulos_table', '1');
INSERT INTO `migrations` VALUES ('2015_10_22_152601_create_regiones_table', '1');
INSERT INTO `migrations` VALUES ('2015_10_22_152610_create_provincias_table', '1');
INSERT INTO `migrations` VALUES ('2015_10_22_152616_create_ciudades_table', '1');
INSERT INTO `migrations` VALUES ('2015_10_22_153241_create_instituciones_tipos_table', '1');
INSERT INTO `migrations` VALUES ('2015_10_22_153422_create_instituciones_table', '1');
INSERT INTO `migrations` VALUES ('2015_10_22_154036_create_departamentos_table', '1');
INSERT INTO `migrations` VALUES ('2015_10_22_154333_create_modulos_table', '1');
INSERT INTO `migrations` VALUES ('2015_10_22_154738_create_aplicativos_table', '1');
INSERT INTO `migrations` VALUES ('2015_10_22_155120_create_panel_opciones_table', '1');
INSERT INTO `migrations` VALUES ('2015_10_23_104017_create_opciones_table', '1');
INSERT INTO `migrations` VALUES ('2015_10_23_105249_create_roles_table', '1');
INSERT INTO `migrations` VALUES ('2015_10_23_105711_create_cargos_table', '1');
INSERT INTO `migrations` VALUES ('2015_10_23_111533_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2015_10_23_112459_create_partidas_table', '1');
INSERT INTO `migrations` VALUES ('2015_10_29_153423_create_documentos_externos_table', '1');
INSERT INTO `migrations` VALUES ('2015_11_23_115025_create_documentos_externos_asignados_table', '1');
INSERT INTO `migrations` VALUES ('2016_09_06_103415_create_grupos_table', '1');
INSERT INTO `migrations` VALUES ('2016_09_28_111705_create_accesos_table', '1');
INSERT INTO `migrations` VALUES ('2016_09_28_111805_create_grupos_users_table', '1');
INSERT INTO `migrations` VALUES ('2017_02_22_113031_create_blog_posts_table', '1');
INSERT INTO `migrations` VALUES ('2017_03_17_161149_create_asistencias_table', '1');

-- ----------------------------
-- Table structure for modulos
-- ----------------------------
DROP TABLE IF EXISTS `modulos`;
CREATE TABLE `modulos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'icons/default.ico',
  `order` smallint(6) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of modulos
-- ----------------------------
INSERT INTO `modulos` VALUES ('1', 'Tic', 'app/tic', null, 'icons/default.ico', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `modulos` VALUES ('2', 'Administrativo', 'Administrativo', null, 'icons/default.ico', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for opciones
-- ----------------------------
DROP TABLE IF EXISTS `opciones`;
CREATE TABLE `opciones` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `panel_opcion_id` int(10) unsigned NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'icons/default.ico',
  `order` smallint(6) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `opciones_panel_opcion_id_foreign` (`panel_opcion_id`),
  CONSTRAINT `opciones_panel_opcion_id_foreign` FOREIGN KEY (`panel_opcion_id`) REFERENCES `panel_opciones` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of opciones
-- ----------------------------
INSERT INTO `opciones` VALUES ('1', 'Ver Usuarios', '1', 'core/users/index', 'asdasd', 'icons/default.ico', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `opciones` VALUES ('2', 'Crear Usuario', '1', 'core/users/create', 'asda', 'icons/default.ico', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `opciones` VALUES ('3', 'Ver Grupos', '4', 'core/grupos/index', 'asdasd', 'icons/default.ico', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `opciones` VALUES ('4', 'Crear Grupo', '4', 'core/grupos/create', 'sdfsdf', 'icons/default.ico', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `opciones` VALUES ('5', 'Ver Instituciones', '2', 'core/instituciones/index', 'asdasd', 'icons/default.ico', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `opciones` VALUES ('6', 'Crear Institucion', '2', 'core/instituciones/create', 'sdfsdf', 'icons/default.ico', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `opciones` VALUES ('7', 'Crear Departamento', '2', 'core/departamentos/create', 'asdasd', 'icons/default.ico', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `opciones` VALUES ('8', 'Ver Aplicaciones', '3', 'core/aplicaciones/index', 'asdasd', 'icons/default.ico', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `opciones` VALUES ('9', 'Crear Aplicacion', '3', 'core/aplicaciones/create', 'asdasd', 'icons/default.ico', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `opciones` VALUES ('10', 'Subir Archivo', '5', 'laboral/carga', 'asdad', 'icons/default.ico', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `opciones` VALUES ('11', 'Historial Cargas', '5', 'laboral/historial', 'sda', 'icons/default.ico', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `opciones` VALUES ('12', 'Consultar', '6', 'laboral/asistencias', 'asdad', 'icons/default.ico', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `opciones` VALUES ('13', 'Justificar', '6', 'laboral/justificaciones', 'asdad', 'icons/default.ico', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `opciones` VALUES ('14', 'Calcular', '7', 'laboral/calc_vacacion', 'asdad', 'icons/default.ico', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `opciones` VALUES ('15', 'Solicitar', '7', 'laboral/solicitues_vacacion', 'asdads', 'icons/default.ico', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for panel_opciones
-- ----------------------------
DROP TABLE IF EXISTS `panel_opciones`;
CREATE TABLE `panel_opciones` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `aplicativo_id` int(10) unsigned NOT NULL,
  `url` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'icons/default.ico',
  `order` smallint(6) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `panel_opciones_aplicativo_id_foreign` (`aplicativo_id`),
  CONSTRAINT `panel_opciones_aplicativo_id_foreign` FOREIGN KEY (`aplicativo_id`) REFERENCES `aplicativos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of panel_opciones
-- ----------------------------
INSERT INTO `panel_opciones` VALUES ('1', 'Usuarios', '1', 'users', 'fa fa-users', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `panel_opciones` VALUES ('2', 'Instituciones', '1', 'instituciones', 'fa fa-building-o', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `panel_opciones` VALUES ('3', 'Aplicaciones', '1', 'aplicaciones', 'fa fa-puzzle-piece', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `panel_opciones` VALUES ('4', 'Permisos', '1', 'accesos', 'fa fa-key', '4', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `panel_opciones` VALUES ('5', 'Cargas', '4', 'carga', 'fa fa-upload', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `panel_opciones` VALUES ('6', 'Asistencia', '4', 'asistencia', 'fa fa-calendar', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `panel_opciones` VALUES ('7', 'Vacaciones', '4', 'vacacion', 'fa fa-sun-o', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for partidas
-- ----------------------------
DROP TABLE IF EXISTS `partidas`;
CREATE TABLE `partidas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `numero` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `departamento_id` int(10) unsigned NOT NULL,
  `type` enum('nacional','internacional') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `partidas_departamento_id_foreign` (`departamento_id`),
  CONSTRAINT `partidas_departamento_id_foreign` FOREIGN KEY (`departamento_id`) REFERENCES `departamentos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of partidas
-- ----------------------------

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for provincias
-- ----------------------------
DROP TABLE IF EXISTS `provincias`;
CREATE TABLE `provincias` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `region_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `provincias_region_id_foreign` (`region_id`),
  CONSTRAINT `provincias_region_id_foreign` FOREIGN KEY (`region_id`) REFERENCES `regiones` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of provincias
-- ----------------------------
INSERT INTO `provincias` VALUES ('1', 'Azuay', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `provincias` VALUES ('2', 'Bolivar', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `provincias` VALUES ('3', 'Cañar', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `provincias` VALUES ('4', 'Carchi', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `provincias` VALUES ('5', 'Chimborazo', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `provincias` VALUES ('6', 'Cotopaxi', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `provincias` VALUES ('7', 'El Oro', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `provincias` VALUES ('8', 'Esmeraldas', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `provincias` VALUES ('9', 'Galapagos', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `provincias` VALUES ('10', 'Guayas', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `provincias` VALUES ('11', 'Imbabura', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `provincias` VALUES ('12', 'Loja', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `provincias` VALUES ('13', 'Los Rios', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `provincias` VALUES ('14', 'Manabí', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `provincias` VALUES ('15', 'Morona Santiago', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `provincias` VALUES ('16', 'Napo', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `provincias` VALUES ('17', 'Orellana', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `provincias` VALUES ('18', 'Pastaza', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `provincias` VALUES ('19', 'Pichincha', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `provincias` VALUES ('20', 'Santa Elena', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `provincias` VALUES ('21', 'Santo Domingo de los Tzachilas', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `provincias` VALUES ('22', 'Sucumbios', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `provincias` VALUES ('23', 'Tumgurahua', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `provincias` VALUES ('24', 'Zamora Chinchipe', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for regiones
-- ----------------------------
DROP TABLE IF EXISTS `regiones`;
CREATE TABLE `regiones` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of regiones
-- ----------------------------
INSERT INTO `regiones` VALUES ('1', 'Costa', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `regiones` VALUES ('2', 'Sierra', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `regiones` VALUES ('3', 'Amazonia', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `regiones` VALUES ('4', 'Insular', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES ('1', 'Administrator', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `roles` VALUES ('2', 'Usuario', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `roles` VALUES ('3', 'Asistente', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `roles` VALUES ('4', 'Director', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `roles` VALUES ('5', 'Director Ejecutivo', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `roles` VALUES ('6', 'Asesor', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for titulos
-- ----------------------------
DROP TABLE IF EXISTS `titulos`;
CREATE TABLE `titulos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `abbreviation` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of titulos
-- ----------------------------
INSERT INTO `titulos` VALUES ('1', 'Ingeniero', 'Ing.', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `titulos` VALUES ('2', 'Arquitecto', 'Arq.', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `titulos` VALUES ('3', 'Licenciado', 'Lic.', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `titulos` VALUES ('4', 'Doctor', 'Dr.', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `titulos` VALUES ('5', 'Abogado', 'Abg.', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `titulos` VALUES ('6', 'Magister', 'Mgtr.', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `titulos` VALUES ('7', 'Señor', 'Sr.', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `titulos` VALUES ('8', 'Señora', 'Sra.', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `titulos` VALUES ('9', 'Señorita', 'Srta.', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `titulos` VALUES ('10', 'Ingeniera', 'Ing.', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `titulos` VALUES ('11', 'Licenciada', 'Lic.', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `titulos` VALUES ('12', 'Economista', 'Ec.', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `titulos` VALUES ('13', 'Tecnóloga', 'Tlga.', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `titulos` VALUES ('14', 'Sociólogo', 'Sco.', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identity` varchar(13) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `nick` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rol_id` int(10) unsigned NOT NULL,
  `departamento_id` int(10) unsigned NOT NULL,
  `titulo_id` int(10) unsigned NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `born` date DEFAULT NULL,
  `sex` tinyint(4) NOT NULL,
  `address1` text COLLATE utf8_unicode_ci,
  `address2` text COLLATE utf8_unicode_ci,
  `cell` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ext` int(11) NOT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_ext_unique` (`ext`),
  KEY `users_rol_id_foreign` (`rol_id`),
  KEY `users_departamento_id_foreign` (`departamento_id`),
  KEY `users_titulo_id_foreign` (`titulo_id`),
  CONSTRAINT `users_departamento_id_foreign` FOREIGN KEY (`departamento_id`) REFERENCES `departamentos` (`id`),
  CONSTRAINT `users_rol_id_foreign` FOREIGN KEY (`rol_id`) REFERENCES `roles` (`id`),
  CONSTRAINT `users_titulo_id_foreign` FOREIGN KEY (`titulo_id`) REFERENCES `titulos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '1718962911', 'Jairo', 'Rey', 'Jairo', '', '1', '3', '1', '$2y$10$TccXTMsvAyvGVGNPTRAwY.UOU97nK5rNJLR2aXf6xTEctYV5H5lNG', '1984-08-05', '1', 'Casales Buenaventura etapa 2 casa 100', '', '0999844500', '3811563', 'jairodanielrey@gmail.com', '307', '1', 'PYL5Kx1d8nXoT1SWOCqpW7kY8U4fxSr578BBM5nzQnRSmKtMZd7KmgHE7wtY', '2015-10-26 15:02:59', '2015-12-28 16:20:19');
