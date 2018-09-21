/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 100113
Source Host           : 127.0.0.1:3306
Source Database       : sinapptic

Target Server Type    : MYSQL
Target Server Version : 100113
File Encoding         : 65001

Date: 2018-09-20 19:07:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for accesos
-- ----------------------------
DROP TABLE IF EXISTS `accesos`;
CREATE TABLE `accesos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `panel_opcion_id` int(10) unsigned NOT NULL,
  `grupo_id` int(10) unsigned NOT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `accesos_grupo_id_foreign` (`grupo_id`),
  KEY `accesos_panel_opcion_id_foreign` (`panel_opcion_id`),
  CONSTRAINT `accesos_grupo_id_foreign` FOREIGN KEY (`grupo_id`) REFERENCES `grupos` (`id`),
  CONSTRAINT `accesos_panel_opcion_id_foreign` FOREIGN KEY (`panel_opcion_id`) REFERENCES `panel_opciones` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of accesos
-- ----------------------------
INSERT INTO `accesos` VALUES ('1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `accesos` VALUES ('2', '2', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `accesos` VALUES ('3', '3', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `accesos` VALUES ('4', '4', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `accesos` VALUES ('5', '5', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `accesos` VALUES ('6', '9', '4', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `accesos` VALUES ('7', '10', '4', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `accesos` VALUES ('8', '9', '17', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `accesos` VALUES ('9', '11', '17', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `accesos` VALUES ('10', '9', '14', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `accesos` VALUES ('11', '10', '14', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of aplicativos
-- ----------------------------
INSERT INTO `aplicativos` VALUES ('1', 'Administración del Sistema', '1', 'core', null, 'i-cogs', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `aplicativos` VALUES ('2', 'Ingresar Documentos Externos', '2', 'docreceptor', null, 'i-stack-list', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `aplicativos` VALUES ('3', 'Siseftran', '2', 'siseftran/plannacional', null, 'i-books', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `aplicativos` VALUES ('4', 'Biometrico', '2', 'biometrico', null, 'i-briefcase', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `aplicativos` VALUES ('5', 'Solicitudes de Viáticos', '2', 'autorizaciones', null, 'i-clipboard', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `aplicativos` VALUES ('6', 'Despacho Ejecutivo', '2', 'despacho', null, 'i-stackoverflow', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

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
  `regentrada` time DEFAULT NULL,
  `regsalida` time DEFAULT NULL,
  `ausente` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10919 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of asistencias
-- ----------------------------
INSERT INTO `asistencias` VALUES ('8552', '1008', '1008', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:28:24', '2017-04-04 15:28:24');
INSERT INTO `asistencias` VALUES ('8553', '1008', '1008', 'Martes', '03/01/2017', null, null, '1', '2017-04-04 15:28:24', '2017-04-04 15:28:24');
INSERT INTO `asistencias` VALUES ('8554', '1008', '1008', 'Miércoles', '04/01/2017', null, null, '1', '2017-04-04 15:28:25', '2017-04-04 15:28:25');
INSERT INTO `asistencias` VALUES ('8555', '1008', '1008', 'Jueves', '05/01/2017', null, null, '1', '2017-04-04 15:28:25', '2017-04-04 15:28:25');
INSERT INTO `asistencias` VALUES ('8556', '1008', '1008', 'Viernes', '06/01/2017', null, null, '1', '2017-04-04 15:28:25', '2017-04-04 15:28:25');
INSERT INTO `asistencias` VALUES ('8557', '1008', '1008', 'Lunes', '09/01/2017', null, null, '1', '2017-04-04 15:28:25', '2017-04-04 15:28:25');
INSERT INTO `asistencias` VALUES ('8558', '1008', '1008', 'Martes', '10/01/2017', null, null, '1', '2017-04-04 15:28:25', '2017-04-04 15:28:25');
INSERT INTO `asistencias` VALUES ('8559', '1008', '1008', 'Miércoles', '11/01/2017', null, null, '1', '2017-04-04 15:28:25', '2017-04-04 15:28:25');
INSERT INTO `asistencias` VALUES ('8560', '1008', '1008', 'Jueves', '12/01/2017', null, null, '1', '2017-04-04 15:28:25', '2017-04-04 15:28:25');
INSERT INTO `asistencias` VALUES ('8561', '1008', '1008', 'Viernes', '13/01/2017', null, null, '1', '2017-04-04 15:28:25', '2017-04-04 15:28:25');
INSERT INTO `asistencias` VALUES ('8562', '1008', '1008', 'Lunes', '16/01/2017', null, null, '1', '2017-04-04 15:28:25', '2017-04-04 15:28:25');
INSERT INTO `asistencias` VALUES ('8563', '1008', '1008', 'Martes', '17/01/2017', null, null, '1', '2017-04-04 15:28:25', '2017-04-04 15:28:25');
INSERT INTO `asistencias` VALUES ('8564', '1008', '1008', 'Miércoles', '18/01/2017', null, null, '1', '2017-04-04 15:28:25', '2017-04-04 15:28:25');
INSERT INTO `asistencias` VALUES ('8565', '1008', '1008', 'Jueves', '19/01/2017', null, null, '1', '2017-04-04 15:28:25', '2017-04-04 15:28:25');
INSERT INTO `asistencias` VALUES ('8566', '1008', '1008', 'Viernes', '20/01/2017', null, null, '1', '2017-04-04 15:28:25', '2017-04-04 15:28:25');
INSERT INTO `asistencias` VALUES ('8567', '1008', '1008', 'Lunes', '23/01/2017', null, null, '1', '2017-04-04 15:28:25', '2017-04-04 15:28:25');
INSERT INTO `asistencias` VALUES ('8568', '1008', '1008', 'Martes', '24/01/2017', null, null, '1', '2017-04-04 15:28:25', '2017-04-04 15:28:25');
INSERT INTO `asistencias` VALUES ('8569', '1008', '1008', 'Miércoles', '25/01/2017', null, null, '1', '2017-04-04 15:28:25', '2017-04-04 15:28:25');
INSERT INTO `asistencias` VALUES ('8570', '1008', '1008', 'Jueves', '26/01/2017', null, null, '1', '2017-04-04 15:28:25', '2017-04-04 15:28:25');
INSERT INTO `asistencias` VALUES ('8571', '1008', '1008', 'Viernes', '27/01/2017', null, null, '1', '2017-04-04 15:28:25', '2017-04-04 15:28:25');
INSERT INTO `asistencias` VALUES ('8572', '1008', '1008', 'Lunes', '30/01/2017', null, null, '1', '2017-04-04 15:28:25', '2017-04-04 15:28:25');
INSERT INTO `asistencias` VALUES ('8573', '1008', '1008', 'Martes', '31/01/2017', null, null, '1', '2017-04-04 15:28:25', '2017-04-04 15:28:25');
INSERT INTO `asistencias` VALUES ('8574', '110', '110', 'Martes', '03/01/2017', '08:35:00', '17:04:00', null, '2017-04-04 15:28:25', '2017-04-04 15:28:25');
INSERT INTO `asistencias` VALUES ('8575', '110', '110', 'Miércoles', '04/01/2017', '08:28:00', '17:01:00', null, '2017-04-04 15:28:25', '2017-04-04 15:28:25');
INSERT INTO `asistencias` VALUES ('8576', '110', '110', 'Jueves', '05/01/2017', '08:34:00', '17:03:00', null, '2017-04-04 15:28:25', '2017-04-04 15:28:25');
INSERT INTO `asistencias` VALUES ('8577', '110', '110', 'Viernes', '06/01/2017', '08:29:00', '17:02:00', null, '2017-04-04 15:28:25', '2017-04-04 15:28:25');
INSERT INTO `asistencias` VALUES ('8578', '110', '110', 'Lunes', '09/01/2017', '08:32:00', '17:02:00', null, '2017-04-04 15:28:25', '2017-04-04 15:28:25');
INSERT INTO `asistencias` VALUES ('8579', '110', '110', 'Martes', '10/01/2017', '08:33:00', '16:16:00', null, '2017-04-04 15:28:25', '2017-04-04 15:28:25');
INSERT INTO `asistencias` VALUES ('8580', '110', '110', 'Jueves', '12/01/2017', '08:19:00', '17:05:00', null, '2017-04-04 15:28:25', '2017-04-04 15:28:25');
INSERT INTO `asistencias` VALUES ('8581', '110', '110', 'Viernes', '13/01/2017', '08:36:00', '18:03:00', null, '2017-04-04 15:28:25', '2017-04-04 15:28:25');
INSERT INTO `asistencias` VALUES ('8582', '110', '110', 'Martes', '17/01/2017', '08:31:00', '17:05:00', null, '2017-04-04 15:28:25', '2017-04-04 15:28:25');
INSERT INTO `asistencias` VALUES ('8583', '110', '110', 'Miércoles', '18/01/2017', '08:36:00', '17:04:00', null, '2017-04-04 15:28:25', '2017-04-04 15:28:25');
INSERT INTO `asistencias` VALUES ('8584', '110', '110', 'Viernes', '20/01/2017', '08:31:00', '17:11:00', null, '2017-04-04 15:28:26', '2017-04-04 15:28:26');
INSERT INTO `asistencias` VALUES ('8585', '110', '110', 'Lunes', '23/01/2017', '08:29:00', '17:04:00', null, '2017-04-04 15:28:26', '2017-04-04 15:28:26');
INSERT INTO `asistencias` VALUES ('8586', '110', '110', 'Martes', '24/01/2017', '08:28:00', '17:09:00', null, '2017-04-04 15:28:26', '2017-04-04 15:28:26');
INSERT INTO `asistencias` VALUES ('8587', '110', '110', 'Miércoles', '25/01/2017', '08:29:00', '17:03:00', null, '2017-04-04 15:28:26', '2017-04-04 15:28:26');
INSERT INTO `asistencias` VALUES ('8588', '110', '110', 'Jueves', '26/01/2017', '08:40:00', '17:12:00', null, '2017-04-04 15:28:26', '2017-04-04 15:28:26');
INSERT INTO `asistencias` VALUES ('8589', '110', '110', 'Viernes', '27/01/2017', '08:28:00', '17:00:00', null, '2017-04-04 15:28:26', '2017-04-04 15:28:26');
INSERT INTO `asistencias` VALUES ('8590', '110', '110', 'Lunes', '30/01/2017', '08:27:00', '17:10:00', null, '2017-04-04 15:28:26', '2017-04-04 15:28:26');
INSERT INTO `asistencias` VALUES ('8591', '110', '110', 'Martes', '31/01/2017', '08:27:00', '17:04:00', null, '2017-04-04 15:28:26', '2017-04-04 15:28:26');
INSERT INTO `asistencias` VALUES ('8592', '112', '112', 'Martes', '03/01/2017', '08:18:00', '17:08:00', null, '2017-04-04 15:28:26', '2017-04-04 15:28:26');
INSERT INTO `asistencias` VALUES ('8593', '112', '112', 'Miércoles', '04/01/2017', '08:35:00', '17:00:00', null, '2017-04-04 15:28:26', '2017-04-04 15:28:26');
INSERT INTO `asistencias` VALUES ('8594', '112', '112', 'Jueves', '05/01/2017', '08:34:00', '18:37:00', null, '2017-04-04 15:28:26', '2017-04-04 15:28:26');
INSERT INTO `asistencias` VALUES ('8595', '112', '112', 'Lunes', '09/01/2017', '08:54:00', '17:00:00', null, '2017-04-04 15:28:26', '2017-04-04 15:28:26');
INSERT INTO `asistencias` VALUES ('8596', '112', '112', 'Martes', '10/01/2017', '08:45:00', '17:03:00', null, '2017-04-04 15:28:26', '2017-04-04 15:28:26');
INSERT INTO `asistencias` VALUES ('8597', '112', '112', 'Miércoles', '11/01/2017', '08:30:00', '17:01:00', null, '2017-04-04 15:28:26', '2017-04-04 15:28:26');
INSERT INTO `asistencias` VALUES ('8598', '112', '112', 'Jueves', '12/01/2017', '08:45:00', '17:06:00', null, '2017-04-04 15:28:26', '2017-04-04 15:28:26');
INSERT INTO `asistencias` VALUES ('8599', '112', '112', 'Viernes', '13/01/2017', '08:30:00', '17:03:00', null, '2017-04-04 15:28:26', '2017-04-04 15:28:26');
INSERT INTO `asistencias` VALUES ('8600', '112', '112', 'Lunes', '16/01/2017', '08:28:00', '17:24:00', null, '2017-04-04 15:28:26', '2017-04-04 15:28:26');
INSERT INTO `asistencias` VALUES ('8601', '112', '112', 'Martes', '17/01/2017', '08:20:00', '17:00:00', null, '2017-04-04 15:28:26', '2017-04-04 15:28:26');
INSERT INTO `asistencias` VALUES ('8602', '112', '112', 'Miércoles', '18/01/2017', '08:31:00', '17:01:00', null, '2017-04-04 15:28:26', '2017-04-04 15:28:26');
INSERT INTO `asistencias` VALUES ('8603', '112', '112', 'Jueves', '19/01/2017', '08:22:00', '17:02:00', null, '2017-04-04 15:28:26', '2017-04-04 15:28:26');
INSERT INTO `asistencias` VALUES ('8604', '112', '112', 'Viernes', '20/01/2017', '08:38:00', '17:00:00', null, '2017-04-04 15:28:26', '2017-04-04 15:28:26');
INSERT INTO `asistencias` VALUES ('8605', '112', '112', 'Lunes', '23/01/2017', '08:53:00', '17:08:00', null, '2017-04-04 15:28:26', '2017-04-04 15:28:26');
INSERT INTO `asistencias` VALUES ('8606', '112', '112', 'Martes', '24/01/2017', '08:28:00', '17:29:00', null, '2017-04-04 15:28:26', '2017-04-04 15:28:26');
INSERT INTO `asistencias` VALUES ('8607', '112', '112', 'Miércoles', '25/01/2017', '08:45:00', '17:00:00', null, '2017-04-04 15:28:26', '2017-04-04 15:28:26');
INSERT INTO `asistencias` VALUES ('8608', '112', '112', 'Jueves', '26/01/2017', '08:31:00', '17:12:00', null, '2017-04-04 15:28:26', '2017-04-04 15:28:26');
INSERT INTO `asistencias` VALUES ('8609', '112', '112', 'Viernes', '27/01/2017', '08:31:00', '17:00:00', null, '2017-04-04 15:28:26', '2017-04-04 15:28:26');
INSERT INTO `asistencias` VALUES ('8610', '112', '112', 'Lunes', '30/01/2017', '08:27:00', '17:04:00', null, '2017-04-04 15:28:26', '2017-04-04 15:28:26');
INSERT INTO `asistencias` VALUES ('8611', '112', '112', 'Martes', '31/01/2017', '08:37:00', '17:14:00', null, '2017-04-04 15:28:26', '2017-04-04 15:28:26');
INSERT INTO `asistencias` VALUES ('8612', '113', '113', 'Martes', '03/01/2017', '07:16:00', '14:58:00', null, '2017-04-04 15:28:26', '2017-04-04 15:28:26');
INSERT INTO `asistencias` VALUES ('8613', '113', '113', 'Miércoles', '04/01/2017', '07:39:00', '14:57:00', null, '2017-04-04 15:28:26', '2017-04-04 15:28:26');
INSERT INTO `asistencias` VALUES ('8614', '113', '113', 'Jueves', '05/01/2017', '07:32:00', '10:20:00', null, '2017-04-04 15:28:27', '2017-04-04 15:28:27');
INSERT INTO `asistencias` VALUES ('8615', '113', '113', 'Viernes', '06/01/2017', '07:39:00', '17:28:00', null, '2017-04-04 15:28:27', '2017-04-04 15:28:27');
INSERT INTO `asistencias` VALUES ('8616', '113', '113', 'Lunes', '09/01/2017', '07:36:00', '15:00:00', null, '2017-04-04 15:28:27', '2017-04-04 15:28:27');
INSERT INTO `asistencias` VALUES ('8617', '113', '113', 'Miércoles', '11/01/2017', '07:24:00', '15:52:00', null, '2017-04-04 15:28:27', '2017-04-04 15:28:27');
INSERT INTO `asistencias` VALUES ('8618', '113', '113', 'Jueves', '12/01/2017', '07:21:00', '14:50:00', null, '2017-04-04 15:28:27', '2017-04-04 15:28:27');
INSERT INTO `asistencias` VALUES ('8619', '113', '113', 'Viernes', '13/01/2017', '07:36:00', '17:27:00', null, '2017-04-04 15:28:27', '2017-04-04 15:28:27');
INSERT INTO `asistencias` VALUES ('8620', '113', '113', 'Lunes', '16/01/2017', '07:28:00', '14:54:00', null, '2017-04-04 15:28:27', '2017-04-04 15:28:27');
INSERT INTO `asistencias` VALUES ('8621', '113', '113', 'Martes', '17/01/2017', '07:24:00', '14:52:00', null, '2017-04-04 15:28:27', '2017-04-04 15:28:27');
INSERT INTO `asistencias` VALUES ('8622', '113', '113', 'Miércoles', '18/01/2017', '07:20:00', '14:52:00', null, '2017-04-04 15:28:27', '2017-04-04 15:28:27');
INSERT INTO `asistencias` VALUES ('8623', '113', '113', 'Jueves', '19/01/2017', '07:38:00', '15:09:00', null, '2017-04-04 15:28:27', '2017-04-04 15:28:27');
INSERT INTO `asistencias` VALUES ('8624', '113', '113', 'Viernes', '20/01/2017', '07:49:00', '17:28:00', null, '2017-04-04 15:28:27', '2017-04-04 15:28:27');
INSERT INTO `asistencias` VALUES ('8625', '113', '113', 'Lunes', '23/01/2017', '07:31:00', '14:44:00', null, '2017-04-04 15:28:27', '2017-04-04 15:28:27');
INSERT INTO `asistencias` VALUES ('8626', '113', '113', 'Martes', '24/01/2017', '07:28:00', '14:58:00', null, '2017-04-04 15:28:27', '2017-04-04 15:28:27');
INSERT INTO `asistencias` VALUES ('8627', '113', '113', 'Miércoles', '25/01/2017', '07:46:00', '14:59:00', null, '2017-04-04 15:28:27', '2017-04-04 15:28:27');
INSERT INTO `asistencias` VALUES ('8628', '113', '113', 'Jueves', '26/01/2017', '07:37:00', '14:47:00', null, '2017-04-04 15:28:27', '2017-04-04 15:28:27');
INSERT INTO `asistencias` VALUES ('8629', '113', '113', 'Viernes', '27/01/2017', '07:48:00', '17:24:00', null, '2017-04-04 15:28:27', '2017-04-04 15:28:27');
INSERT INTO `asistencias` VALUES ('8630', '113', '113', 'Lunes', '30/01/2017', '07:25:00', '14:47:00', null, '2017-04-04 15:28:27', '2017-04-04 15:28:27');
INSERT INTO `asistencias` VALUES ('8631', '113', '113', 'Martes', '31/01/2017', '07:45:00', '15:04:00', null, '2017-04-04 15:28:27', '2017-04-04 15:28:27');
INSERT INTO `asistencias` VALUES ('8632', '115', '115', 'Jueves', '05/01/2017', '07:57:00', '17:16:00', null, '2017-04-04 15:28:27', '2017-04-04 15:28:27');
INSERT INTO `asistencias` VALUES ('8633', '115', '115', 'Viernes', '06/01/2017', '07:46:00', '17:28:00', null, '2017-04-04 15:28:27', '2017-04-04 15:28:27');
INSERT INTO `asistencias` VALUES ('8634', '115', '115', 'Lunes', '09/01/2017', '07:51:00', '17:30:00', null, '2017-04-04 15:28:27', '2017-04-04 15:28:27');
INSERT INTO `asistencias` VALUES ('8635', '115', '115', 'Martes', '10/01/2017', '08:00:00', '18:08:00', null, '2017-04-04 15:28:27', '2017-04-04 15:28:27');
INSERT INTO `asistencias` VALUES ('8636', '115', '115', 'Miércoles', '11/01/2017', '08:07:00', '17:40:00', null, '2017-04-04 15:28:27', '2017-04-04 15:28:27');
INSERT INTO `asistencias` VALUES ('8637', '115', '115', 'Jueves', '12/01/2017', '07:57:00', '17:04:00', null, '2017-04-04 15:28:27', '2017-04-04 15:28:27');
INSERT INTO `asistencias` VALUES ('8638', '115', '115', 'Viernes', '13/01/2017', '07:52:00', '17:25:00', null, '2017-04-04 15:28:27', '2017-04-04 15:28:27');
INSERT INTO `asistencias` VALUES ('8639', '115', '115', 'Lunes', '16/01/2017', '07:48:00', '17:44:00', null, '2017-04-04 15:28:27', '2017-04-04 15:28:27');
INSERT INTO `asistencias` VALUES ('8640', '115', '115', 'Martes', '17/01/2017', '07:52:00', '17:06:00', null, '2017-04-04 15:28:27', '2017-04-04 15:28:27');
INSERT INTO `asistencias` VALUES ('8641', '115', '115', 'Jueves', '19/01/2017', '07:46:00', '17:02:00', null, '2017-04-04 15:28:27', '2017-04-04 15:28:27');
INSERT INTO `asistencias` VALUES ('8642', '115', '115', 'Viernes', '20/01/2017', '07:51:00', '17:30:00', null, '2017-04-04 15:28:27', '2017-04-04 15:28:27');
INSERT INTO `asistencias` VALUES ('8643', '115', '115', 'Martes', '24/01/2017', '07:56:00', '17:04:00', null, '2017-04-04 15:28:27', '2017-04-04 15:28:27');
INSERT INTO `asistencias` VALUES ('8644', '115', '115', 'Miércoles', '25/01/2017', '08:13:00', '17:00:00', null, '2017-04-04 15:28:27', '2017-04-04 15:28:27');
INSERT INTO `asistencias` VALUES ('8645', '115', '115', 'Jueves', '26/01/2017', '10:58:00', '17:17:00', null, '2017-04-04 15:28:27', '2017-04-04 15:28:27');
INSERT INTO `asistencias` VALUES ('8646', '115', '115', 'Viernes', '27/01/2017', '07:39:00', '17:22:00', null, '2017-04-04 15:28:27', '2017-04-04 15:28:27');
INSERT INTO `asistencias` VALUES ('8647', '115', '115', 'Lunes', '30/01/2017', '07:47:00', '17:02:00', null, '2017-04-04 15:28:28', '2017-04-04 15:28:28');
INSERT INTO `asistencias` VALUES ('8648', '115', '115', 'Martes', '31/01/2017', '08:00:00', '17:08:00', null, '2017-04-04 15:28:28', '2017-04-04 15:28:28');
INSERT INTO `asistencias` VALUES ('8649', '116', '116', 'Martes', '03/01/2017', '07:41:00', '17:03:00', null, '2017-04-04 15:28:28', '2017-04-04 15:28:28');
INSERT INTO `asistencias` VALUES ('8650', '116', '116', 'Miércoles', '04/01/2017', '08:17:00', '17:05:00', null, '2017-04-04 15:28:28', '2017-04-04 15:28:28');
INSERT INTO `asistencias` VALUES ('8651', '116', '116', 'Jueves', '05/01/2017', '08:33:00', '17:14:00', null, '2017-04-04 15:28:28', '2017-04-04 15:28:28');
INSERT INTO `asistencias` VALUES ('8652', '116', '116', 'Viernes', '06/01/2017', '08:21:00', '18:07:00', null, '2017-04-04 15:28:28', '2017-04-04 15:28:28');
INSERT INTO `asistencias` VALUES ('8653', '116', '116', 'Lunes', '09/01/2017', '08:23:00', '17:16:00', null, '2017-04-04 15:28:28', '2017-04-04 15:28:28');
INSERT INTO `asistencias` VALUES ('8654', '116', '116', 'Martes', '10/01/2017', '08:22:00', '17:21:00', null, '2017-04-04 15:28:28', '2017-04-04 15:28:28');
INSERT INTO `asistencias` VALUES ('8655', '116', '116', 'Miércoles', '11/01/2017', '08:17:00', '18:40:00', null, '2017-04-04 15:28:28', '2017-04-04 15:28:28');
INSERT INTO `asistencias` VALUES ('8656', '116', '116', 'Jueves', '12/01/2017', '08:22:00', '17:18:00', null, '2017-04-04 15:28:28', '2017-04-04 15:28:28');
INSERT INTO `asistencias` VALUES ('8657', '116', '116', 'Viernes', '13/01/2017', '08:18:00', '17:24:00', null, '2017-04-04 15:28:28', '2017-04-04 15:28:28');
INSERT INTO `asistencias` VALUES ('8658', '116', '116', 'Lunes', '16/01/2017', '08:21:00', '17:11:00', null, '2017-04-04 15:28:28', '2017-04-04 15:28:28');
INSERT INTO `asistencias` VALUES ('8659', '116', '116', 'Martes', '17/01/2017', '08:18:00', '17:10:00', null, '2017-04-04 15:28:28', '2017-04-04 15:28:28');
INSERT INTO `asistencias` VALUES ('8660', '116', '116', 'Jueves', '19/01/2017', '08:26:00', '17:52:00', null, '2017-04-04 15:28:28', '2017-04-04 15:28:28');
INSERT INTO `asistencias` VALUES ('8661', '116', '116', 'Viernes', '20/01/2017', '08:29:00', '17:03:00', null, '2017-04-04 15:28:28', '2017-04-04 15:28:28');
INSERT INTO `asistencias` VALUES ('8662', '116', '116', 'Lunes', '23/01/2017', '08:29:00', '17:13:00', null, '2017-04-04 15:28:28', '2017-04-04 15:28:28');
INSERT INTO `asistencias` VALUES ('8663', '116', '116', 'Martes', '24/01/2017', '08:23:00', '17:05:00', null, '2017-04-04 15:28:28', '2017-04-04 15:28:28');
INSERT INTO `asistencias` VALUES ('8664', '116', '116', 'Miércoles', '25/01/2017', '08:26:00', '17:10:00', null, '2017-04-04 15:28:28', '2017-04-04 15:28:28');
INSERT INTO `asistencias` VALUES ('8665', '116', '116', 'Jueves', '26/01/2017', '08:33:00', '16:59:00', null, '2017-04-04 15:28:28', '2017-04-04 15:28:28');
INSERT INTO `asistencias` VALUES ('8666', '116', '116', 'Lunes', '30/01/2017', '08:30:00', '17:07:00', null, '2017-04-04 15:28:28', '2017-04-04 15:28:28');
INSERT INTO `asistencias` VALUES ('8667', '116', '116', 'Martes', '31/01/2017', '08:24:00', '19:06:00', null, '2017-04-04 15:28:28', '2017-04-04 15:28:28');
INSERT INTO `asistencias` VALUES ('8668', '118', '118', 'Martes', '03/01/2017', '08:25:00', '17:12:00', null, '2017-04-04 15:28:28', '2017-04-04 15:28:28');
INSERT INTO `asistencias` VALUES ('8669', '118', '118', 'Miércoles', '04/01/2017', '08:33:00', '17:05:00', null, '2017-04-04 15:28:28', '2017-04-04 15:28:28');
INSERT INTO `asistencias` VALUES ('8670', '118', '118', 'Jueves', '05/01/2017', '08:32:00', '17:13:00', null, '2017-04-04 15:28:28', '2017-04-04 15:28:28');
INSERT INTO `asistencias` VALUES ('8671', '118', '118', 'Viernes', '06/01/2017', '08:44:00', '17:28:00', null, '2017-04-04 15:28:28', '2017-04-04 15:28:28');
INSERT INTO `asistencias` VALUES ('8672', '118', '118', 'Lunes', '09/01/2017', '08:34:00', '17:50:00', null, '2017-04-04 15:28:28', '2017-04-04 15:28:28');
INSERT INTO `asistencias` VALUES ('8673', '118', '118', 'Miércoles', '11/01/2017', '08:24:00', '17:26:00', null, '2017-04-04 15:28:28', '2017-04-04 15:28:28');
INSERT INTO `asistencias` VALUES ('8674', '118', '118', 'Jueves', '12/01/2017', '08:30:00', '16:58:00', null, '2017-04-04 15:28:28', '2017-04-04 15:28:28');
INSERT INTO `asistencias` VALUES ('8675', '118', '118', 'Viernes', '13/01/2017', '08:26:00', '17:09:00', null, '2017-04-04 15:28:28', '2017-04-04 15:28:28');
INSERT INTO `asistencias` VALUES ('8676', '118', '118', 'Lunes', '16/01/2017', '08:27:00', '17:05:00', null, '2017-04-04 15:28:28', '2017-04-04 15:28:28');
INSERT INTO `asistencias` VALUES ('8677', '118', '118', 'Martes', '17/01/2017', '08:29:00', '17:25:00', null, '2017-04-04 15:28:28', '2017-04-04 15:28:28');
INSERT INTO `asistencias` VALUES ('8678', '118', '118', 'Miércoles', '18/01/2017', '08:29:00', '17:16:00', null, '2017-04-04 15:28:28', '2017-04-04 15:28:28');
INSERT INTO `asistencias` VALUES ('8679', '118', '118', 'Jueves', '19/01/2017', '08:36:00', '17:32:00', null, '2017-04-04 15:28:29', '2017-04-04 15:28:29');
INSERT INTO `asistencias` VALUES ('8680', '118', '118', 'Viernes', '20/01/2017', '08:28:00', '17:07:00', null, '2017-04-04 15:28:29', '2017-04-04 15:28:29');
INSERT INTO `asistencias` VALUES ('8681', '118', '118', 'Lunes', '23/01/2017', '08:29:00', '14:26:00', null, '2017-04-04 15:28:29', '2017-04-04 15:28:29');
INSERT INTO `asistencias` VALUES ('8682', '118', '118', 'Martes', '24/01/2017', '08:30:00', '17:08:00', null, '2017-04-04 15:28:29', '2017-04-04 15:28:29');
INSERT INTO `asistencias` VALUES ('8683', '118', '118', 'Miércoles', '25/01/2017', '08:31:00', '16:59:00', null, '2017-04-04 15:28:29', '2017-04-04 15:28:29');
INSERT INTO `asistencias` VALUES ('8684', '118', '118', 'Jueves', '26/01/2017', '08:33:00', '16:58:00', null, '2017-04-04 15:28:29', '2017-04-04 15:28:29');
INSERT INTO `asistencias` VALUES ('8685', '118', '118', 'Viernes', '27/01/2017', '08:34:00', '17:30:00', null, '2017-04-04 15:28:29', '2017-04-04 15:28:29');
INSERT INTO `asistencias` VALUES ('8686', '118', '118', 'Lunes', '30/01/2017', '08:32:00', '17:15:00', null, '2017-04-04 15:28:29', '2017-04-04 15:28:29');
INSERT INTO `asistencias` VALUES ('8687', '118', '118', 'Martes', '31/01/2017', '09:33:00', '16:22:00', null, '2017-04-04 15:28:29', '2017-04-04 15:28:29');
INSERT INTO `asistencias` VALUES ('8688', '120', '120', 'Martes', '03/01/2017', '08:06:00', '17:36:00', null, '2017-04-04 15:28:29', '2017-04-04 15:28:29');
INSERT INTO `asistencias` VALUES ('8689', '120', '120', 'Miércoles', '04/01/2017', '08:33:00', '17:35:00', null, '2017-04-04 15:28:29', '2017-04-04 15:28:29');
INSERT INTO `asistencias` VALUES ('8690', '120', '120', 'Lunes', '09/01/2017', '08:28:00', '19:15:00', null, '2017-04-04 15:28:29', '2017-04-04 15:28:29');
INSERT INTO `asistencias` VALUES ('8691', '120', '120', 'Martes', '10/01/2017', '08:14:00', '18:37:00', null, '2017-04-04 15:28:29', '2017-04-04 15:28:29');
INSERT INTO `asistencias` VALUES ('8692', '120', '120', 'Miércoles', '11/01/2017', '08:27:00', '19:22:00', null, '2017-04-04 15:28:29', '2017-04-04 15:28:29');
INSERT INTO `asistencias` VALUES ('8693', '120', '120', 'Jueves', '12/01/2017', '08:34:00', '18:53:00', null, '2017-04-04 15:28:29', '2017-04-04 15:28:29');
INSERT INTO `asistencias` VALUES ('8694', '120', '120', 'Viernes', '13/01/2017', '07:45:00', '17:16:00', null, '2017-04-04 15:28:29', '2017-04-04 15:28:29');
INSERT INTO `asistencias` VALUES ('8695', '120', '120', 'Lunes', '16/01/2017', '08:14:00', '17:05:00', null, '2017-04-04 15:28:29', '2017-04-04 15:28:29');
INSERT INTO `asistencias` VALUES ('8696', '120', '120', 'Martes', '17/01/2017', '08:21:00', '18:21:00', null, '2017-04-04 15:28:29', '2017-04-04 15:28:29');
INSERT INTO `asistencias` VALUES ('8697', '120', '120', 'Miércoles', '18/01/2017', '08:18:00', '17:06:00', null, '2017-04-04 15:28:29', '2017-04-04 15:28:29');
INSERT INTO `asistencias` VALUES ('8698', '120', '120', 'Jueves', '19/01/2017', '07:35:00', '17:32:00', null, '2017-04-04 15:28:29', '2017-04-04 15:28:29');
INSERT INTO `asistencias` VALUES ('8699', '120', '120', 'Viernes', '20/01/2017', '08:23:00', '17:03:00', null, '2017-04-04 15:28:29', '2017-04-04 15:28:29');
INSERT INTO `asistencias` VALUES ('8700', '120', '120', 'Lunes', '23/01/2017', '08:25:00', '17:21:00', null, '2017-04-04 15:28:29', '2017-04-04 15:28:29');
INSERT INTO `asistencias` VALUES ('8701', '120', '120', 'Martes', '24/01/2017', '08:21:00', '17:44:00', null, '2017-04-04 15:28:29', '2017-04-04 15:28:29');
INSERT INTO `asistencias` VALUES ('8702', '120', '120', 'Miércoles', '25/01/2017', '08:19:00', '17:42:00', null, '2017-04-04 15:28:29', '2017-04-04 15:28:29');
INSERT INTO `asistencias` VALUES ('8703', '120', '120', 'Jueves', '26/01/2017', '08:37:00', '17:11:00', null, '2017-04-04 15:28:29', '2017-04-04 15:28:29');
INSERT INTO `asistencias` VALUES ('8704', '120', '120', 'Viernes', '27/01/2017', '08:33:00', '17:29:00', null, '2017-04-04 15:28:29', '2017-04-04 15:28:29');
INSERT INTO `asistencias` VALUES ('8705', '120', '120', 'Lunes', '30/01/2017', '08:28:00', '17:23:00', null, '2017-04-04 15:28:29', '2017-04-04 15:28:29');
INSERT INTO `asistencias` VALUES ('8706', '120', '120', 'Martes', '31/01/2017', '08:17:00', '19:06:00', null, '2017-04-04 15:28:29', '2017-04-04 15:28:29');
INSERT INTO `asistencias` VALUES ('8707', '121', '121', 'Martes', '03/01/2017', '08:01:00', '17:03:00', null, '2017-04-04 15:28:29', '2017-04-04 15:28:29');
INSERT INTO `asistencias` VALUES ('8708', '121', '121', 'Miércoles', '04/01/2017', '08:16:00', '17:03:00', null, '2017-04-04 15:28:29', '2017-04-04 15:28:29');
INSERT INTO `asistencias` VALUES ('8709', '121', '121', 'Jueves', '05/01/2017', '08:32:00', '17:02:00', null, '2017-04-04 15:28:29', '2017-04-04 15:28:29');
INSERT INTO `asistencias` VALUES ('8710', '121', '121', 'Viernes', '06/01/2017', '08:35:00', '17:00:00', null, '2017-04-04 15:28:29', '2017-04-04 15:28:29');
INSERT INTO `asistencias` VALUES ('8711', '121', '121', 'Lunes', '09/01/2017', '08:17:00', '17:04:00', null, '2017-04-04 15:28:30', '2017-04-04 15:28:30');
INSERT INTO `asistencias` VALUES ('8712', '121', '121', 'Martes', '10/01/2017', '08:29:00', '17:03:00', null, '2017-04-04 15:28:30', '2017-04-04 15:28:30');
INSERT INTO `asistencias` VALUES ('8713', '121', '121', 'Miércoles', '11/01/2017', '08:31:00', '17:05:00', null, '2017-04-04 15:28:30', '2017-04-04 15:28:30');
INSERT INTO `asistencias` VALUES ('8714', '121', '121', 'Jueves', '12/01/2017', '08:38:00', '17:08:00', null, '2017-04-04 15:28:30', '2017-04-04 15:28:30');
INSERT INTO `asistencias` VALUES ('8715', '121', '121', 'Viernes', '13/01/2017', '08:19:00', '17:04:00', null, '2017-04-04 15:28:30', '2017-04-04 15:28:30');
INSERT INTO `asistencias` VALUES ('8716', '121', '121', 'Lunes', '16/01/2017', '08:27:00', '17:00:00', null, '2017-04-04 15:28:30', '2017-04-04 15:28:30');
INSERT INTO `asistencias` VALUES ('8717', '121', '121', 'Martes', '17/01/2017', '08:27:00', '17:00:00', null, '2017-04-04 15:28:30', '2017-04-04 15:28:30');
INSERT INTO `asistencias` VALUES ('8718', '121', '121', 'Miércoles', '18/01/2017', '08:29:00', '17:00:00', null, '2017-04-04 15:28:30', '2017-04-04 15:28:30');
INSERT INTO `asistencias` VALUES ('8719', '121', '121', 'Jueves', '19/01/2017', '08:33:00', '17:20:00', null, '2017-04-04 15:28:30', '2017-04-04 15:28:30');
INSERT INTO `asistencias` VALUES ('8720', '121', '121', 'Viernes', '20/01/2017', '08:28:00', '17:03:00', null, '2017-04-04 15:28:30', '2017-04-04 15:28:30');
INSERT INTO `asistencias` VALUES ('8721', '121', '121', 'Lunes', '23/01/2017', '08:12:00', '17:12:00', null, '2017-04-04 15:28:30', '2017-04-04 15:28:30');
INSERT INTO `asistencias` VALUES ('8722', '121', '121', 'Martes', '24/01/2017', '08:20:00', '17:08:00', null, '2017-04-04 15:28:30', '2017-04-04 15:28:30');
INSERT INTO `asistencias` VALUES ('8723', '121', '121', 'Miércoles', '25/01/2017', '08:33:00', '17:00:00', null, '2017-04-04 15:28:30', '2017-04-04 15:28:30');
INSERT INTO `asistencias` VALUES ('8724', '121', '121', 'Jueves', '26/01/2017', '08:29:00', '17:00:00', null, '2017-04-04 15:28:30', '2017-04-04 15:28:30');
INSERT INTO `asistencias` VALUES ('8725', '121', '121', 'Viernes', '27/01/2017', '08:21:00', '14:58:00', null, '2017-04-04 15:28:30', '2017-04-04 15:28:30');
INSERT INTO `asistencias` VALUES ('8726', '121', '121', 'Lunes', '30/01/2017', '08:29:00', '17:08:00', null, '2017-04-04 15:28:30', '2017-04-04 15:28:30');
INSERT INTO `asistencias` VALUES ('8727', '121', '121', 'Martes', '31/01/2017', '08:29:00', '17:15:00', null, '2017-04-04 15:28:30', '2017-04-04 15:28:30');
INSERT INTO `asistencias` VALUES ('8728', '123', '123', 'Miércoles', '04/01/2017', '09:18:00', '17:11:00', null, '2017-04-04 15:28:30', '2017-04-04 15:28:30');
INSERT INTO `asistencias` VALUES ('8729', '123', '123', 'Jueves', '05/01/2017', '11:21:00', '19:02:00', null, '2017-04-04 15:28:30', '2017-04-04 15:28:30');
INSERT INTO `asistencias` VALUES ('8730', '124', '124', 'Miércoles', '04/01/2017', '09:32:00', '17:11:00', null, '2017-04-04 15:28:30', '2017-04-04 15:28:30');
INSERT INTO `asistencias` VALUES ('8731', '126', '126', 'Martes', '03/01/2017', '08:40:00', '16:02:00', null, '2017-04-04 15:28:30', '2017-04-04 15:28:30');
INSERT INTO `asistencias` VALUES ('8732', '126', '126', 'Miércoles', '04/01/2017', '07:48:00', '17:10:00', null, '2017-04-04 15:28:30', '2017-04-04 15:28:30');
INSERT INTO `asistencias` VALUES ('8733', '128', '128', 'Martes', '03/01/2017', '09:47:00', '16:58:00', null, '2017-04-04 15:28:30', '2017-04-04 15:28:30');
INSERT INTO `asistencias` VALUES ('8734', '128', '128', 'Miércoles', '04/01/2017', '10:08:00', '17:08:00', null, '2017-04-04 15:28:30', '2017-04-04 15:28:30');
INSERT INTO `asistencias` VALUES ('8735', '129', '129', 'Martes', '03/01/2017', '08:26:00', '17:03:00', null, '2017-04-04 15:28:30', '2017-04-04 15:28:30');
INSERT INTO `asistencias` VALUES ('8736', '129', '129', 'Miércoles', '04/01/2017', '08:28:00', '17:03:00', null, '2017-04-04 15:28:30', '2017-04-04 15:28:30');
INSERT INTO `asistencias` VALUES ('8737', '129', '129', 'Jueves', '05/01/2017', '08:44:00', '17:16:00', null, '2017-04-04 15:28:30', '2017-04-04 15:28:30');
INSERT INTO `asistencias` VALUES ('8738', '129', '129', 'Viernes', '06/01/2017', '09:34:00', '17:28:00', null, '2017-04-04 15:28:30', '2017-04-04 15:28:30');
INSERT INTO `asistencias` VALUES ('8739', '129', '129', 'Lunes', '09/01/2017', '08:37:00', '17:07:00', null, '2017-04-04 15:28:30', '2017-04-04 15:28:30');
INSERT INTO `asistencias` VALUES ('8740', '129', '129', 'Martes', '10/01/2017', '08:29:00', '17:11:00', null, '2017-04-04 15:28:30', '2017-04-04 15:28:30');
INSERT INTO `asistencias` VALUES ('8741', '129', '129', 'Jueves', '12/01/2017', '08:26:00', '17:04:00', null, '2017-04-04 15:28:30', '2017-04-04 15:28:30');
INSERT INTO `asistencias` VALUES ('8742', '129', '129', 'Viernes', '13/01/2017', '08:23:00', '18:29:00', null, '2017-04-04 15:28:31', '2017-04-04 15:28:31');
INSERT INTO `asistencias` VALUES ('8743', '129', '129', 'Lunes', '16/01/2017', '08:34:00', '17:05:00', null, '2017-04-04 15:28:31', '2017-04-04 15:28:31');
INSERT INTO `asistencias` VALUES ('8744', '129', '129', 'Martes', '17/01/2017', '08:29:00', '17:06:00', null, '2017-04-04 15:28:31', '2017-04-04 15:28:31');
INSERT INTO `asistencias` VALUES ('8745', '129', '129', 'Miércoles', '18/01/2017', '08:30:00', '17:07:00', null, '2017-04-04 15:28:31', '2017-04-04 15:28:31');
INSERT INTO `asistencias` VALUES ('8746', '129', '129', 'Jueves', '19/01/2017', '08:29:00', '17:02:00', null, '2017-04-04 15:28:31', '2017-04-04 15:28:31');
INSERT INTO `asistencias` VALUES ('8747', '129', '129', 'Viernes', '20/01/2017', '08:31:00', '18:56:00', null, '2017-04-04 15:28:31', '2017-04-04 15:28:31');
INSERT INTO `asistencias` VALUES ('8748', '129', '129', 'Lunes', '23/01/2017', '08:26:00', '17:08:00', null, '2017-04-04 15:28:31', '2017-04-04 15:28:31');
INSERT INTO `asistencias` VALUES ('8749', '129', '129', 'Martes', '24/01/2017', '08:22:00', '17:04:00', null, '2017-04-04 15:28:31', '2017-04-04 15:28:31');
INSERT INTO `asistencias` VALUES ('8750', '129', '129', 'Miércoles', '25/01/2017', '08:30:00', '17:20:00', null, '2017-04-04 15:28:31', '2017-04-04 15:28:31');
INSERT INTO `asistencias` VALUES ('8751', '129', '129', 'Jueves', '26/01/2017', '13:11:00', '17:06:00', null, '2017-04-04 15:28:31', '2017-04-04 15:28:31');
INSERT INTO `asistencias` VALUES ('8752', '129', '129', 'Lunes', '30/01/2017', '08:33:00', '17:02:00', null, '2017-04-04 15:28:31', '2017-04-04 15:28:31');
INSERT INTO `asistencias` VALUES ('8753', '129', '129', 'Martes', '31/01/2017', '08:30:00', '17:09:00', null, '2017-04-04 15:28:31', '2017-04-04 15:28:31');
INSERT INTO `asistencias` VALUES ('8754', '130', '130', 'Martes', '03/01/2017', '08:24:00', '17:01:00', null, '2017-04-04 15:28:31', '2017-04-04 15:28:31');
INSERT INTO `asistencias` VALUES ('8755', '130', '130', 'Miércoles', '04/01/2017', '08:24:00', '17:21:00', null, '2017-04-04 15:28:31', '2017-04-04 15:28:31');
INSERT INTO `asistencias` VALUES ('8756', '130', '130', 'Jueves', '05/01/2017', '08:26:00', '17:08:00', null, '2017-04-04 15:28:31', '2017-04-04 15:28:31');
INSERT INTO `asistencias` VALUES ('8757', '130', '130', 'Viernes', '06/01/2017', '08:35:00', '17:06:00', null, '2017-04-04 15:28:31', '2017-04-04 15:28:31');
INSERT INTO `asistencias` VALUES ('8758', '130', '130', 'Lunes', '09/01/2017', '08:27:00', '17:03:00', null, '2017-04-04 15:28:31', '2017-04-04 15:28:31');
INSERT INTO `asistencias` VALUES ('8759', '130', '130', 'Martes', '10/01/2017', '08:25:00', '17:20:00', null, '2017-04-04 15:28:31', '2017-04-04 15:28:31');
INSERT INTO `asistencias` VALUES ('8760', '130', '130', 'Miércoles', '11/01/2017', '08:28:00', '17:06:00', null, '2017-04-04 15:28:31', '2017-04-04 15:28:31');
INSERT INTO `asistencias` VALUES ('8761', '130', '130', 'Jueves', '12/01/2017', '08:24:00', '17:15:00', null, '2017-04-04 15:28:31', '2017-04-04 15:28:31');
INSERT INTO `asistencias` VALUES ('8762', '130', '130', 'Viernes', '13/01/2017', '08:29:00', '17:08:00', null, '2017-04-04 15:28:31', '2017-04-04 15:28:31');
INSERT INTO `asistencias` VALUES ('8763', '130', '130', 'Lunes', '16/01/2017', '08:34:00', '17:15:00', null, '2017-04-04 15:28:31', '2017-04-04 15:28:31');
INSERT INTO `asistencias` VALUES ('8764', '130', '130', 'Martes', '17/01/2017', '08:30:00', '17:16:00', null, '2017-04-04 15:28:31', '2017-04-04 15:28:31');
INSERT INTO `asistencias` VALUES ('8765', '130', '130', 'Miércoles', '18/01/2017', '08:28:00', '17:56:00', null, '2017-04-04 15:28:31', '2017-04-04 15:28:31');
INSERT INTO `asistencias` VALUES ('8766', '130', '130', 'Viernes', '20/01/2017', '08:23:00', '17:38:00', null, '2017-04-04 15:28:31', '2017-04-04 15:28:31');
INSERT INTO `asistencias` VALUES ('8767', '130', '130', 'Lunes', '23/01/2017', '08:28:00', '17:16:00', null, '2017-04-04 15:28:31', '2017-04-04 15:28:31');
INSERT INTO `asistencias` VALUES ('8768', '130', '130', 'Jueves', '26/01/2017', '08:24:00', '17:12:00', null, '2017-04-04 15:28:31', '2017-04-04 15:28:31');
INSERT INTO `asistencias` VALUES ('8769', '130', '130', 'Viernes', '27/01/2017', '08:21:00', '17:43:00', null, '2017-04-04 15:28:31', '2017-04-04 15:28:31');
INSERT INTO `asistencias` VALUES ('8770', '130', '130', 'Lunes', '30/01/2017', '08:27:00', '17:09:00', null, '2017-04-04 15:28:31', '2017-04-04 15:28:31');
INSERT INTO `asistencias` VALUES ('8771', '130', '130', 'Martes', '31/01/2017', '08:41:00', '17:16:00', null, '2017-04-04 15:28:31', '2017-04-04 15:28:31');
INSERT INTO `asistencias` VALUES ('8772', '133', '133', 'Martes', '03/01/2017', '08:52:00', '17:07:00', null, '2017-04-04 15:28:31', '2017-04-04 15:28:31');
INSERT INTO `asistencias` VALUES ('8773', '133', '133', 'Miércoles', '04/01/2017', '08:54:00', '17:01:00', null, '2017-04-04 15:28:31', '2017-04-04 15:28:31');
INSERT INTO `asistencias` VALUES ('8774', '133', '133', 'Jueves', '05/01/2017', '08:54:00', '17:57:00', null, '2017-04-04 15:28:31', '2017-04-04 15:28:31');
INSERT INTO `asistencias` VALUES ('8775', '133', '133', 'Viernes', '06/01/2017', '09:02:00', '17:00:00', null, '2017-04-04 15:28:32', '2017-04-04 15:28:32');
INSERT INTO `asistencias` VALUES ('8776', '133', '133', 'Martes', '10/01/2017', '08:53:00', '17:03:00', null, '2017-04-04 15:28:32', '2017-04-04 15:28:32');
INSERT INTO `asistencias` VALUES ('8777', '133', '133', 'Miércoles', '11/01/2017', '09:17:00', '17:01:00', null, '2017-04-04 15:28:32', '2017-04-04 15:28:32');
INSERT INTO `asistencias` VALUES ('8778', '133', '133', 'Jueves', '12/01/2017', '09:09:00', '17:01:00', null, '2017-04-04 15:28:32', '2017-04-04 15:28:32');
INSERT INTO `asistencias` VALUES ('8779', '133', '133', 'Viernes', '13/01/2017', '10:26:00', '17:13:00', null, '2017-04-04 15:28:32', '2017-04-04 15:28:32');
INSERT INTO `asistencias` VALUES ('8780', '133', '133', 'Lunes', '16/01/2017', '08:56:00', '17:03:00', null, '2017-04-04 15:28:32', '2017-04-04 15:28:32');
INSERT INTO `asistencias` VALUES ('8781', '133', '133', 'Martes', '17/01/2017', '08:42:00', '17:03:00', null, '2017-04-04 15:28:32', '2017-04-04 15:28:32');
INSERT INTO `asistencias` VALUES ('8782', '133', '133', 'Miércoles', '18/01/2017', '08:40:00', '17:00:00', null, '2017-04-04 15:28:32', '2017-04-04 15:28:32');
INSERT INTO `asistencias` VALUES ('8783', '133', '133', 'Jueves', '19/01/2017', '08:54:00', '15:23:00', null, '2017-04-04 15:28:32', '2017-04-04 15:28:32');
INSERT INTO `asistencias` VALUES ('8784', '133', '133', 'Viernes', '20/01/2017', '08:50:00', '16:10:00', null, '2017-04-04 15:28:32', '2017-04-04 15:28:32');
INSERT INTO `asistencias` VALUES ('8785', '133', '133', 'Lunes', '23/01/2017', '08:56:00', '17:12:00', null, '2017-04-04 15:28:32', '2017-04-04 15:28:32');
INSERT INTO `asistencias` VALUES ('8786', '133', '133', 'Martes', '24/01/2017', '08:50:00', '17:01:00', null, '2017-04-04 15:28:32', '2017-04-04 15:28:32');
INSERT INTO `asistencias` VALUES ('8787', '133', '133', 'Miércoles', '25/01/2017', '08:40:00', '17:01:00', null, '2017-04-04 15:28:32', '2017-04-04 15:28:32');
INSERT INTO `asistencias` VALUES ('8788', '133', '133', 'Jueves', '26/01/2017', '11:47:00', '17:12:00', null, '2017-04-04 15:28:32', '2017-04-04 15:28:32');
INSERT INTO `asistencias` VALUES ('8789', '133', '133', 'Lunes', '30/01/2017', '08:48:00', '17:05:00', null, '2017-04-04 15:28:32', '2017-04-04 15:28:32');
INSERT INTO `asistencias` VALUES ('8790', '133', '133', 'Martes', '31/01/2017', '08:31:00', '17:14:00', null, '2017-04-04 15:28:32', '2017-04-04 15:28:32');
INSERT INTO `asistencias` VALUES ('8791', '134', '134', 'Martes', '03/01/2017', '08:26:00', '17:02:00', null, '2017-04-04 15:28:32', '2017-04-04 15:28:32');
INSERT INTO `asistencias` VALUES ('8792', '134', '134', 'Miércoles', '04/01/2017', '08:39:00', '17:04:00', null, '2017-04-04 15:28:32', '2017-04-04 15:28:32');
INSERT INTO `asistencias` VALUES ('8793', '134', '134', 'Viernes', '06/01/2017', '08:35:00', '17:16:00', null, '2017-04-04 15:28:32', '2017-04-04 15:28:32');
INSERT INTO `asistencias` VALUES ('8794', '134', '134', 'Martes', '10/01/2017', '08:37:00', '17:01:00', null, '2017-04-04 15:28:32', '2017-04-04 15:28:32');
INSERT INTO `asistencias` VALUES ('8795', '134', '134', 'Viernes', '13/01/2017', '08:32:00', '17:04:00', null, '2017-04-04 15:28:32', '2017-04-04 15:28:32');
INSERT INTO `asistencias` VALUES ('8796', '134', '134', 'Lunes', '16/01/2017', '08:46:00', '17:00:00', null, '2017-04-04 15:28:32', '2017-04-04 15:28:32');
INSERT INTO `asistencias` VALUES ('8797', '134', '134', 'Martes', '17/01/2017', '08:27:00', '17:00:00', null, '2017-04-04 15:28:32', '2017-04-04 15:28:32');
INSERT INTO `asistencias` VALUES ('8798', '134', '134', 'Miércoles', '18/01/2017', '08:30:00', '17:01:00', null, '2017-04-04 15:28:32', '2017-04-04 15:28:32');
INSERT INTO `asistencias` VALUES ('8799', '134', '134', 'Jueves', '19/01/2017', '08:21:00', '17:20:00', null, '2017-04-04 15:28:32', '2017-04-04 15:28:32');
INSERT INTO `asistencias` VALUES ('8800', '134', '134', 'Viernes', '20/01/2017', '08:29:00', '17:03:00', null, '2017-04-04 15:28:32', '2017-04-04 15:28:32');
INSERT INTO `asistencias` VALUES ('8801', '134', '134', 'Lunes', '23/01/2017', '08:45:00', '17:12:00', null, '2017-04-04 15:28:32', '2017-04-04 15:28:32');
INSERT INTO `asistencias` VALUES ('8802', '134', '134', 'Martes', '24/01/2017', '08:06:00', '17:12:00', null, '2017-04-04 15:28:32', '2017-04-04 15:28:32');
INSERT INTO `asistencias` VALUES ('8803', '134', '134', 'Miércoles', '25/01/2017', '08:26:00', '17:00:00', null, '2017-04-04 15:28:32', '2017-04-04 15:28:32');
INSERT INTO `asistencias` VALUES ('8804', '134', '134', 'Jueves', '26/01/2017', '08:03:00', '17:00:00', null, '2017-04-04 15:28:32', '2017-04-04 15:28:32');
INSERT INTO `asistencias` VALUES ('8805', '134', '134', 'Viernes', '27/01/2017', '08:39:00', '12:05:00', null, '2017-04-04 15:28:32', '2017-04-04 15:28:32');
INSERT INTO `asistencias` VALUES ('8806', '134', '134', 'Lunes', '30/01/2017', '08:40:00', '17:01:00', null, '2017-04-04 15:28:32', '2017-04-04 15:28:32');
INSERT INTO `asistencias` VALUES ('8807', '134', '134', 'Martes', '31/01/2017', '08:30:00', '19:06:00', null, '2017-04-04 15:28:32', '2017-04-04 15:28:32');
INSERT INTO `asistencias` VALUES ('8808', '135', '135', 'Martes', '03/01/2017', '08:45:00', '19:04:00', null, '2017-04-04 15:28:32', '2017-04-04 15:28:32');
INSERT INTO `asistencias` VALUES ('8809', '135', '135', 'Miércoles', '04/01/2017', '08:18:00', '18:07:00', null, '2017-04-04 15:28:33', '2017-04-04 15:28:33');
INSERT INTO `asistencias` VALUES ('8810', '135', '135', 'Viernes', '06/01/2017', '07:55:00', '18:52:00', null, '2017-04-04 15:28:33', '2017-04-04 15:28:33');
INSERT INTO `asistencias` VALUES ('8811', '135', '135', 'Miércoles', '11/01/2017', '08:28:00', '18:38:00', null, '2017-04-04 15:28:33', '2017-04-04 15:28:33');
INSERT INTO `asistencias` VALUES ('8812', '135', '135', 'Jueves', '12/01/2017', '08:24:00', '19:17:00', null, '2017-04-04 15:28:33', '2017-04-04 15:28:33');
INSERT INTO `asistencias` VALUES ('8813', '135', '135', 'Martes', '17/01/2017', '08:32:00', '16:51:00', null, '2017-04-04 15:28:33', '2017-04-04 15:28:33');
INSERT INTO `asistencias` VALUES ('8814', '135', '135', 'Lunes', '23/01/2017', '08:27:00', '19:06:00', null, '2017-04-04 15:28:33', '2017-04-04 15:28:33');
INSERT INTO `asistencias` VALUES ('8815', '135', '135', 'Miércoles', '25/01/2017', '08:30:00', '18:38:00', null, '2017-04-04 15:28:33', '2017-04-04 15:28:33');
INSERT INTO `asistencias` VALUES ('8816', '135', '135', 'Viernes', '27/01/2017', '08:36:00', '19:01:00', null, '2017-04-04 15:28:33', '2017-04-04 15:28:33');
INSERT INTO `asistencias` VALUES ('8817', '135', '135', 'Lunes', '30/01/2017', '08:33:00', '18:19:00', null, '2017-04-04 15:28:33', '2017-04-04 15:28:33');
INSERT INTO `asistencias` VALUES ('8818', '135', '135', 'Martes', '31/01/2017', '08:27:00', '18:58:00', null, '2017-04-04 15:28:33', '2017-04-04 15:28:33');
INSERT INTO `asistencias` VALUES ('8819', '136', '136', 'Martes', '03/01/2017', '09:01:00', '17:44:00', null, '2017-04-04 15:28:33', '2017-04-04 15:28:33');
INSERT INTO `asistencias` VALUES ('8820', '136', '136', 'Miércoles', '04/01/2017', '09:08:00', '18:22:00', null, '2017-04-04 15:28:33', '2017-04-04 15:28:33');
INSERT INTO `asistencias` VALUES ('8821', '136', '136', 'Jueves', '05/01/2017', '09:01:00', '17:49:00', null, '2017-04-04 15:28:33', '2017-04-04 15:28:33');
INSERT INTO `asistencias` VALUES ('8822', '136', '136', 'Viernes', '06/01/2017', '09:05:00', '17:32:00', null, '2017-04-04 15:28:33', '2017-04-04 15:28:33');
INSERT INTO `asistencias` VALUES ('8823', '136', '136', 'Lunes', '09/01/2017', '09:08:00', '18:08:00', null, '2017-04-04 15:28:33', '2017-04-04 15:28:33');
INSERT INTO `asistencias` VALUES ('8824', '136', '136', 'Martes', '10/01/2017', '08:43:00', '17:29:00', null, '2017-04-04 15:28:33', '2017-04-04 15:28:33');
INSERT INTO `asistencias` VALUES ('8825', '136', '136', 'Miércoles', '11/01/2017', '09:03:00', '17:54:00', null, '2017-04-04 15:28:33', '2017-04-04 15:28:33');
INSERT INTO `asistencias` VALUES ('8826', '136', '136', 'Viernes', '13/01/2017', '09:05:00', '19:16:00', null, '2017-04-04 15:28:33', '2017-04-04 15:28:33');
INSERT INTO `asistencias` VALUES ('8827', '136', '136', 'Lunes', '16/01/2017', '08:58:00', '17:25:00', null, '2017-04-04 15:28:33', '2017-04-04 15:28:33');
INSERT INTO `asistencias` VALUES ('8828', '136', '136', 'Martes', '17/01/2017', '09:02:00', '17:56:00', null, '2017-04-04 15:28:33', '2017-04-04 15:28:33');
INSERT INTO `asistencias` VALUES ('8829', '136', '136', 'Miércoles', '18/01/2017', '09:00:00', '17:34:00', null, '2017-04-04 15:28:33', '2017-04-04 15:28:33');
INSERT INTO `asistencias` VALUES ('8830', '136', '136', 'Jueves', '19/01/2017', '09:01:00', '17:16:00', null, '2017-04-04 15:28:33', '2017-04-04 15:28:33');
INSERT INTO `asistencias` VALUES ('8831', '136', '136', 'Viernes', '20/01/2017', '08:37:00', '18:20:00', null, '2017-04-04 15:28:33', '2017-04-04 15:28:33');
INSERT INTO `asistencias` VALUES ('8832', '136', '136', 'Lunes', '23/01/2017', '08:57:00', '17:57:00', null, '2017-04-04 15:28:33', '2017-04-04 15:28:33');
INSERT INTO `asistencias` VALUES ('8833', '136', '136', 'Jueves', '26/01/2017', '09:05:00', '17:46:00', null, '2017-04-04 15:28:33', '2017-04-04 15:28:33');
INSERT INTO `asistencias` VALUES ('8834', '136', '136', 'Viernes', '27/01/2017', '09:07:00', '17:57:00', null, '2017-04-04 15:28:33', '2017-04-04 15:28:33');
INSERT INTO `asistencias` VALUES ('8835', '136', '136', 'Lunes', '30/01/2017', '08:52:00', '17:29:00', null, '2017-04-04 15:28:33', '2017-04-04 15:28:33');
INSERT INTO `asistencias` VALUES ('8836', '136', '136', 'Martes', '31/01/2017', '09:01:00', '17:21:00', null, '2017-04-04 15:28:33', '2017-04-04 15:28:33');
INSERT INTO `asistencias` VALUES ('8837', '47', '47', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:28:33', '2017-04-04 15:28:33');
INSERT INTO `asistencias` VALUES ('8838', '47', '47', 'Martes', '03/01/2017', null, null, '1', '2017-04-04 15:28:33', '2017-04-04 15:28:33');
INSERT INTO `asistencias` VALUES ('8839', '47', '47', 'Miércoles', '04/01/2017', null, null, '1', '2017-04-04 15:28:33', '2017-04-04 15:28:33');
INSERT INTO `asistencias` VALUES ('8840', '47', '47', 'Jueves', '05/01/2017', null, null, '1', '2017-04-04 15:28:33', '2017-04-04 15:28:33');
INSERT INTO `asistencias` VALUES ('8841', '47', '47', 'Viernes', '06/01/2017', null, null, '1', '2017-04-04 15:28:33', '2017-04-04 15:28:33');
INSERT INTO `asistencias` VALUES ('8842', '47', '47', 'Lunes', '09/01/2017', null, null, '1', '2017-04-04 15:28:34', '2017-04-04 15:28:34');
INSERT INTO `asistencias` VALUES ('8843', '47', '47', 'Martes', '10/01/2017', null, null, '1', '2017-04-04 15:28:34', '2017-04-04 15:28:34');
INSERT INTO `asistencias` VALUES ('8844', '47', '47', 'Miércoles', '11/01/2017', null, null, '1', '2017-04-04 15:28:34', '2017-04-04 15:28:34');
INSERT INTO `asistencias` VALUES ('8845', '47', '47', 'Jueves', '12/01/2017', null, null, '1', '2017-04-04 15:28:34', '2017-04-04 15:28:34');
INSERT INTO `asistencias` VALUES ('8846', '47', '47', 'Viernes', '13/01/2017', null, null, '1', '2017-04-04 15:28:34', '2017-04-04 15:28:34');
INSERT INTO `asistencias` VALUES ('8847', '47', '47', 'Lunes', '16/01/2017', null, null, '1', '2017-04-04 15:28:34', '2017-04-04 15:28:34');
INSERT INTO `asistencias` VALUES ('8848', '47', '47', 'Martes', '17/01/2017', null, null, '1', '2017-04-04 15:28:34', '2017-04-04 15:28:34');
INSERT INTO `asistencias` VALUES ('8849', '47', '47', 'Miércoles', '18/01/2017', null, null, '1', '2017-04-04 15:28:34', '2017-04-04 15:28:34');
INSERT INTO `asistencias` VALUES ('8850', '47', '47', 'Jueves', '19/01/2017', null, null, '1', '2017-04-04 15:28:34', '2017-04-04 15:28:34');
INSERT INTO `asistencias` VALUES ('8851', '47', '47', 'Viernes', '20/01/2017', null, null, '1', '2017-04-04 15:28:34', '2017-04-04 15:28:34');
INSERT INTO `asistencias` VALUES ('8852', '47', '47', 'Lunes', '23/01/2017', null, null, '1', '2017-04-04 15:28:34', '2017-04-04 15:28:34');
INSERT INTO `asistencias` VALUES ('8853', '47', '47', 'Martes', '24/01/2017', null, null, '1', '2017-04-04 15:28:34', '2017-04-04 15:28:34');
INSERT INTO `asistencias` VALUES ('8854', '47', '47', 'Miércoles', '25/01/2017', null, null, '1', '2017-04-04 15:28:34', '2017-04-04 15:28:34');
INSERT INTO `asistencias` VALUES ('8855', '47', '47', 'Jueves', '26/01/2017', null, null, '1', '2017-04-04 15:28:34', '2017-04-04 15:28:34');
INSERT INTO `asistencias` VALUES ('8856', '47', '47', 'Viernes', '27/01/2017', null, null, '1', '2017-04-04 15:28:34', '2017-04-04 15:28:34');
INSERT INTO `asistencias` VALUES ('8857', '47', '47', 'Lunes', '30/01/2017', null, null, '1', '2017-04-04 15:28:34', '2017-04-04 15:28:34');
INSERT INTO `asistencias` VALUES ('8858', '47', '47', 'Martes', '31/01/2017', null, null, '1', '2017-04-04 15:28:34', '2017-04-04 15:28:34');
INSERT INTO `asistencias` VALUES ('8859', '52', 'ALEJANDRA MENDIETA', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:28:34', '2017-04-04 15:28:34');
INSERT INTO `asistencias` VALUES ('8860', '52', 'ALEJANDRA MENDIETA', 'Martes', '03/01/2017', null, null, '1', '2017-04-04 15:28:34', '2017-04-04 15:28:34');
INSERT INTO `asistencias` VALUES ('8861', '52', 'ALEJANDRA MENDIETA', 'Miércoles', '04/01/2017', null, null, '1', '2017-04-04 15:28:34', '2017-04-04 15:28:34');
INSERT INTO `asistencias` VALUES ('8862', '52', 'ALEJANDRA MENDIETA', 'Jueves', '05/01/2017', null, null, '1', '2017-04-04 15:28:34', '2017-04-04 15:28:34');
INSERT INTO `asistencias` VALUES ('8863', '52', 'ALEJANDRA MENDIETA', 'Viernes', '06/01/2017', null, null, '1', '2017-04-04 15:28:34', '2017-04-04 15:28:34');
INSERT INTO `asistencias` VALUES ('8864', '52', 'ALEJANDRA MENDIETA', 'Lunes', '09/01/2017', null, null, '1', '2017-04-04 15:28:34', '2017-04-04 15:28:34');
INSERT INTO `asistencias` VALUES ('8865', '52', 'ALEJANDRA MENDIETA', 'Martes', '10/01/2017', null, null, '1', '2017-04-04 15:28:34', '2017-04-04 15:28:34');
INSERT INTO `asistencias` VALUES ('8866', '52', 'ALEJANDRA MENDIETA', 'Miércoles', '11/01/2017', null, null, '1', '2017-04-04 15:28:34', '2017-04-04 15:28:34');
INSERT INTO `asistencias` VALUES ('8867', '52', 'ALEJANDRA MENDIETA', 'Jueves', '12/01/2017', null, null, '1', '2017-04-04 15:28:34', '2017-04-04 15:28:34');
INSERT INTO `asistencias` VALUES ('8868', '52', 'ALEJANDRA MENDIETA', 'Viernes', '13/01/2017', null, null, '1', '2017-04-04 15:28:34', '2017-04-04 15:28:34');
INSERT INTO `asistencias` VALUES ('8869', '52', 'ALEJANDRA MENDIETA', 'Lunes', '16/01/2017', null, null, '1', '2017-04-04 15:28:34', '2017-04-04 15:28:34');
INSERT INTO `asistencias` VALUES ('8870', '52', 'ALEJANDRA MENDIETA', 'Martes', '17/01/2017', null, null, '1', '2017-04-04 15:28:34', '2017-04-04 15:28:34');
INSERT INTO `asistencias` VALUES ('8871', '52', 'ALEJANDRA MENDIETA', 'Miércoles', '18/01/2017', null, null, '1', '2017-04-04 15:28:34', '2017-04-04 15:28:34');
INSERT INTO `asistencias` VALUES ('8872', '52', 'ALEJANDRA MENDIETA', 'Jueves', '19/01/2017', null, null, '1', '2017-04-04 15:28:34', '2017-04-04 15:28:34');
INSERT INTO `asistencias` VALUES ('8873', '52', 'ALEJANDRA MENDIETA', 'Viernes', '20/01/2017', null, null, '1', '2017-04-04 15:28:34', '2017-04-04 15:28:34');
INSERT INTO `asistencias` VALUES ('8874', '52', 'ALEJANDRA MENDIETA', 'Lunes', '23/01/2017', null, null, '1', '2017-04-04 15:28:34', '2017-04-04 15:28:34');
INSERT INTO `asistencias` VALUES ('8875', '52', 'ALEJANDRA MENDIETA', 'Martes', '24/01/2017', null, null, '1', '2017-04-04 15:28:34', '2017-04-04 15:28:34');
INSERT INTO `asistencias` VALUES ('8876', '52', 'ALEJANDRA MENDIETA', 'Miércoles', '25/01/2017', null, null, '1', '2017-04-04 15:28:34', '2017-04-04 15:28:34');
INSERT INTO `asistencias` VALUES ('8877', '52', 'ALEJANDRA MENDIETA', 'Jueves', '26/01/2017', null, null, '1', '2017-04-04 15:28:34', '2017-04-04 15:28:34');
INSERT INTO `asistencias` VALUES ('8878', '52', 'ALEJANDRA MENDIETA', 'Viernes', '27/01/2017', null, null, '1', '2017-04-04 15:28:34', '2017-04-04 15:28:34');
INSERT INTO `asistencias` VALUES ('8879', '52', 'ALEJANDRA MENDIETA', 'Lunes', '30/01/2017', null, null, '1', '2017-04-04 15:28:35', '2017-04-04 15:28:35');
INSERT INTO `asistencias` VALUES ('8880', '52', 'ALEJANDRA MENDIETA', 'Martes', '31/01/2017', null, null, '1', '2017-04-04 15:28:35', '2017-04-04 15:28:35');
INSERT INTO `asistencias` VALUES ('8881', '58', 'ALONDRA YEPEZ', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:28:35', '2017-04-04 15:28:35');
INSERT INTO `asistencias` VALUES ('8882', '58', 'ALONDRA YEPEZ', 'Martes', '03/01/2017', '08:18:00', '16:54:00', null, '2017-04-04 15:28:35', '2017-04-04 15:28:35');
INSERT INTO `asistencias` VALUES ('8883', '58', 'ALONDRA YEPEZ', 'Miércoles', '04/01/2017', '08:20:00', '16:51:00', null, '2017-04-04 15:28:35', '2017-04-04 15:28:35');
INSERT INTO `asistencias` VALUES ('8884', '58', 'ALONDRA YEPEZ', 'Jueves', '05/01/2017', null, null, '1', '2017-04-04 15:28:35', '2017-04-04 15:28:35');
INSERT INTO `asistencias` VALUES ('8885', '58', 'ALONDRA YEPEZ', 'Viernes', '06/01/2017', null, null, '1', '2017-04-04 15:28:35', '2017-04-04 15:28:35');
INSERT INTO `asistencias` VALUES ('8886', '58', 'ALONDRA YEPEZ', 'Lunes', '09/01/2017', '08:43:00', '16:57:00', null, '2017-04-04 15:28:35', '2017-04-04 15:28:35');
INSERT INTO `asistencias` VALUES ('8887', '58', 'ALONDRA YEPEZ', 'Martes', '10/01/2017', '08:31:00', '16:56:00', null, '2017-04-04 15:28:35', '2017-04-04 15:28:35');
INSERT INTO `asistencias` VALUES ('8888', '58', 'ALONDRA YEPEZ', 'Miércoles', '11/01/2017', '08:23:00', '16:53:00', null, '2017-04-04 15:28:35', '2017-04-04 15:28:35');
INSERT INTO `asistencias` VALUES ('8889', '58', 'ALONDRA YEPEZ', 'Jueves', '12/01/2017', '08:25:00', '16:55:00', null, '2017-04-04 15:28:35', '2017-04-04 15:28:35');
INSERT INTO `asistencias` VALUES ('8890', '58', 'ALONDRA YEPEZ', 'Viernes', '13/01/2017', '08:18:00', null, null, '2017-04-04 15:28:35', '2017-04-04 15:28:35');
INSERT INTO `asistencias` VALUES ('8891', '58', 'ALONDRA YEPEZ', 'Lunes', '16/01/2017', '09:17:00', '16:54:00', null, '2017-04-04 15:28:35', '2017-04-04 15:28:35');
INSERT INTO `asistencias` VALUES ('8892', '58', 'ALONDRA YEPEZ', 'Martes', '17/01/2017', '08:42:00', '15:18:00', null, '2017-04-04 15:28:35', '2017-04-04 15:28:35');
INSERT INTO `asistencias` VALUES ('8893', '58', 'ALONDRA YEPEZ', 'Miércoles', '18/01/2017', '08:31:00', '16:49:00', null, '2017-04-04 15:28:35', '2017-04-04 15:28:35');
INSERT INTO `asistencias` VALUES ('8894', '58', 'ALONDRA YEPEZ', 'Jueves', '19/01/2017', '08:28:00', '16:50:00', null, '2017-04-04 15:28:35', '2017-04-04 15:28:35');
INSERT INTO `asistencias` VALUES ('8895', '58', 'ALONDRA YEPEZ', 'Viernes', '20/01/2017', '08:36:00', '16:51:00', null, '2017-04-04 15:28:35', '2017-04-04 15:28:35');
INSERT INTO `asistencias` VALUES ('8896', '58', 'ALONDRA YEPEZ', 'Lunes', '23/01/2017', null, '16:56:00', null, '2017-04-04 15:28:35', '2017-04-04 15:28:35');
INSERT INTO `asistencias` VALUES ('8897', '58', 'ALONDRA YEPEZ', 'Martes', '24/01/2017', '08:31:00', '16:57:00', null, '2017-04-04 15:28:35', '2017-04-04 15:28:35');
INSERT INTO `asistencias` VALUES ('8898', '58', 'ALONDRA YEPEZ', 'Miércoles', '25/01/2017', '08:14:00', '16:59:00', null, '2017-04-04 15:28:35', '2017-04-04 15:28:35');
INSERT INTO `asistencias` VALUES ('8899', '58', 'ALONDRA YEPEZ', 'Jueves', '26/01/2017', '08:20:00', '16:58:00', null, '2017-04-04 15:28:35', '2017-04-04 15:28:35');
INSERT INTO `asistencias` VALUES ('8900', '58', 'ALONDRA YEPEZ', 'Viernes', '27/01/2017', '07:41:00', '16:59:00', null, '2017-04-04 15:28:35', '2017-04-04 15:28:35');
INSERT INTO `asistencias` VALUES ('8901', '58', 'ALONDRA YEPEZ', 'Lunes', '30/01/2017', '08:33:00', '16:58:00', null, '2017-04-04 15:28:35', '2017-04-04 15:28:35');
INSERT INTO `asistencias` VALUES ('8902', '58', 'ALONDRA YEPEZ', 'Martes', '31/01/2017', '08:22:00', '16:58:00', null, '2017-04-04 15:28:35', '2017-04-04 15:28:35');
INSERT INTO `asistencias` VALUES ('8903', '106', 'Ana Tenelema', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:28:35', '2017-04-04 15:28:35');
INSERT INTO `asistencias` VALUES ('8904', '106', 'Ana Tenelema', 'Martes', '03/01/2017', '08:32:00', '17:13:00', null, '2017-04-04 15:28:35', '2017-04-04 15:28:35');
INSERT INTO `asistencias` VALUES ('8905', '106', 'Ana Tenelema', 'Miércoles', '04/01/2017', '08:27:00', '17:19:00', null, '2017-04-04 15:28:35', '2017-04-04 15:28:35');
INSERT INTO `asistencias` VALUES ('8906', '106', 'Ana Tenelema', 'Jueves', '05/01/2017', '08:39:00', '17:10:00', null, '2017-04-04 15:28:35', '2017-04-04 15:28:35');
INSERT INTO `asistencias` VALUES ('8907', '106', 'Ana Tenelema', 'Viernes', '06/01/2017', '08:39:00', '17:09:00', null, '2017-04-04 15:28:35', '2017-04-04 15:28:35');
INSERT INTO `asistencias` VALUES ('8908', '106', 'Ana Tenelema', 'Lunes', '09/01/2017', '08:43:00', '17:32:00', null, '2017-04-04 15:28:35', '2017-04-04 15:28:35');
INSERT INTO `asistencias` VALUES ('8909', '106', 'Ana Tenelema', 'Martes', '10/01/2017', '08:40:00', '17:41:00', null, '2017-04-04 15:28:35', '2017-04-04 15:28:35');
INSERT INTO `asistencias` VALUES ('8910', '106', 'Ana Tenelema', 'Miércoles', '11/01/2017', '08:31:00', '17:26:00', null, '2017-04-04 15:28:35', '2017-04-04 15:28:35');
INSERT INTO `asistencias` VALUES ('8911', '106', 'Ana Tenelema', 'Jueves', '12/01/2017', '08:37:00', '18:12:00', null, '2017-04-04 15:28:35', '2017-04-04 15:28:35');
INSERT INTO `asistencias` VALUES ('8912', '106', 'Ana Tenelema', 'Viernes', '13/01/2017', '08:41:00', '18:12:00', null, '2017-04-04 15:28:35', '2017-04-04 15:28:35');
INSERT INTO `asistencias` VALUES ('8913', '106', 'Ana Tenelema', 'Lunes', '16/01/2017', '08:36:00', '18:17:00', null, '2017-04-04 15:28:35', '2017-04-04 15:28:35');
INSERT INTO `asistencias` VALUES ('8914', '106', 'Ana Tenelema', 'Martes', '17/01/2017', '08:40:00', '17:51:00', null, '2017-04-04 15:28:35', '2017-04-04 15:28:35');
INSERT INTO `asistencias` VALUES ('8915', '106', 'Ana Tenelema', 'Miércoles', '18/01/2017', '08:41:00', '17:10:00', null, '2017-04-04 15:28:36', '2017-04-04 15:28:36');
INSERT INTO `asistencias` VALUES ('8916', '106', 'Ana Tenelema', 'Jueves', '19/01/2017', '08:37:00', '17:10:00', null, '2017-04-04 15:28:36', '2017-04-04 15:28:36');
INSERT INTO `asistencias` VALUES ('8917', '106', 'Ana Tenelema', 'Viernes', '20/01/2017', '08:49:00', '17:52:00', null, '2017-04-04 15:28:36', '2017-04-04 15:28:36');
INSERT INTO `asistencias` VALUES ('8918', '106', 'Ana Tenelema', 'Lunes', '23/01/2017', '08:41:00', '17:24:00', null, '2017-04-04 15:28:36', '2017-04-04 15:28:36');
INSERT INTO `asistencias` VALUES ('8919', '106', 'Ana Tenelema', 'Martes', '24/01/2017', '08:42:00', '17:43:00', null, '2017-04-04 15:28:36', '2017-04-04 15:28:36');
INSERT INTO `asistencias` VALUES ('8920', '106', 'Ana Tenelema', 'Miércoles', '25/01/2017', '08:31:00', '17:32:00', null, '2017-04-04 15:28:36', '2017-04-04 15:28:36');
INSERT INTO `asistencias` VALUES ('8921', '106', 'Ana Tenelema', 'Jueves', '26/01/2017', '08:21:00', '17:48:00', null, '2017-04-04 15:28:36', '2017-04-04 15:28:36');
INSERT INTO `asistencias` VALUES ('8922', '106', 'Ana Tenelema', 'Viernes', '27/01/2017', '08:38:00', '17:55:00', null, '2017-04-04 15:28:36', '2017-04-04 15:28:36');
INSERT INTO `asistencias` VALUES ('8923', '106', 'Ana Tenelema', 'Lunes', '30/01/2017', '08:28:00', '17:16:00', null, '2017-04-04 15:28:36', '2017-04-04 15:28:36');
INSERT INTO `asistencias` VALUES ('8924', '106', 'Ana Tenelema', 'Martes', '31/01/2017', '08:30:00', '17:22:00', null, '2017-04-04 15:28:36', '2017-04-04 15:28:36');
INSERT INTO `asistencias` VALUES ('8925', '102', 'Ana Zambrano', 'Martes', '03/01/2017', '05:28:00', '16:03:00', null, '2017-04-04 15:28:36', '2017-04-04 15:28:36');
INSERT INTO `asistencias` VALUES ('8926', '102', 'Ana Zambrano', 'Miércoles', '04/01/2017', '05:27:00', '14:09:00', null, '2017-04-04 15:28:36', '2017-04-04 15:28:36');
INSERT INTO `asistencias` VALUES ('8927', '102', 'Ana Zambrano', 'Viernes', '06/01/2017', '05:31:00', '14:26:00', null, '2017-04-04 15:28:36', '2017-04-04 15:28:36');
INSERT INTO `asistencias` VALUES ('8928', '102', 'Ana Zambrano', 'Lunes', '09/01/2017', '05:25:00', '14:15:00', null, '2017-04-04 15:28:36', '2017-04-04 15:28:36');
INSERT INTO `asistencias` VALUES ('8929', '102', 'Ana Zambrano', 'Miércoles', '11/01/2017', '05:30:00', '14:04:00', null, '2017-04-04 15:28:36', '2017-04-04 15:28:36');
INSERT INTO `asistencias` VALUES ('8930', '102', 'Ana Zambrano', 'Jueves', '12/01/2017', '05:29:00', '14:16:00', null, '2017-04-04 15:28:36', '2017-04-04 15:28:36');
INSERT INTO `asistencias` VALUES ('8931', '102', 'Ana Zambrano', 'Lunes', '16/01/2017', '05:27:00', '14:08:00', null, '2017-04-04 15:28:36', '2017-04-04 15:28:36');
INSERT INTO `asistencias` VALUES ('8932', '102', 'Ana Zambrano', 'Martes', '17/01/2017', '05:31:00', '14:09:00', null, '2017-04-04 15:28:36', '2017-04-04 15:28:36');
INSERT INTO `asistencias` VALUES ('8933', '102', 'Ana Zambrano', 'Miércoles', '18/01/2017', '05:32:00', '14:15:00', null, '2017-04-04 15:28:36', '2017-04-04 15:28:36');
INSERT INTO `asistencias` VALUES ('8934', '102', 'Ana Zambrano', 'Jueves', '19/01/2017', '05:32:00', '14:06:00', null, '2017-04-04 15:28:36', '2017-04-04 15:28:36');
INSERT INTO `asistencias` VALUES ('8935', '102', 'Ana Zambrano', 'Lunes', '23/01/2017', '05:30:00', '14:30:00', null, '2017-04-04 15:28:36', '2017-04-04 15:28:36');
INSERT INTO `asistencias` VALUES ('8936', '102', 'Ana Zambrano', 'Jueves', '26/01/2017', '05:29:00', '14:13:00', null, '2017-04-04 15:28:36', '2017-04-04 15:28:36');
INSERT INTO `asistencias` VALUES ('8937', '102', 'Ana Zambrano', 'Lunes', '30/01/2017', '05:32:00', '14:02:00', null, '2017-04-04 15:28:36', '2017-04-04 15:28:36');
INSERT INTO `asistencias` VALUES ('8938', '102', 'Ana Zambrano', 'Martes', '31/01/2017', '05:39:00', '14:04:00', null, '2017-04-04 15:28:36', '2017-04-04 15:28:36');
INSERT INTO `asistencias` VALUES ('8939', '5', 'Andrade Carlos', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:28:36', '2017-04-04 15:28:36');
INSERT INTO `asistencias` VALUES ('8940', '5', 'Andrade Carlos', 'Martes', '03/01/2017', null, null, '1', '2017-04-04 15:28:36', '2017-04-04 15:28:36');
INSERT INTO `asistencias` VALUES ('8941', '5', 'Andrade Carlos', 'Miércoles', '04/01/2017', null, null, '1', '2017-04-04 15:28:36', '2017-04-04 15:28:36');
INSERT INTO `asistencias` VALUES ('8942', '5', 'Andrade Carlos', 'Jueves', '05/01/2017', null, null, '1', '2017-04-04 15:28:36', '2017-04-04 15:28:36');
INSERT INTO `asistencias` VALUES ('8943', '5', 'Andrade Carlos', 'Viernes', '06/01/2017', null, null, '1', '2017-04-04 15:28:36', '2017-04-04 15:28:36');
INSERT INTO `asistencias` VALUES ('8944', '5', 'Andrade Carlos', 'Lunes', '09/01/2017', null, null, '1', '2017-04-04 15:28:36', '2017-04-04 15:28:36');
INSERT INTO `asistencias` VALUES ('8945', '5', 'Andrade Carlos', 'Martes', '10/01/2017', null, null, '1', '2017-04-04 15:28:36', '2017-04-04 15:28:36');
INSERT INTO `asistencias` VALUES ('8946', '5', 'Andrade Carlos', 'Miércoles', '11/01/2017', null, null, '1', '2017-04-04 15:28:36', '2017-04-04 15:28:36');
INSERT INTO `asistencias` VALUES ('8947', '5', 'Andrade Carlos', 'Jueves', '12/01/2017', null, null, '1', '2017-04-04 15:28:36', '2017-04-04 15:28:36');
INSERT INTO `asistencias` VALUES ('8948', '5', 'Andrade Carlos', 'Viernes', '13/01/2017', null, null, '1', '2017-04-04 15:28:36', '2017-04-04 15:28:36');
INSERT INTO `asistencias` VALUES ('8949', '5', 'Andrade Carlos', 'Lunes', '16/01/2017', null, null, '1', '2017-04-04 15:28:36', '2017-04-04 15:28:36');
INSERT INTO `asistencias` VALUES ('8950', '5', 'Andrade Carlos', 'Martes', '17/01/2017', null, null, '1', '2017-04-04 15:28:36', '2017-04-04 15:28:36');
INSERT INTO `asistencias` VALUES ('8951', '5', 'Andrade Carlos', 'Miércoles', '18/01/2017', null, null, '1', '2017-04-04 15:28:36', '2017-04-04 15:28:36');
INSERT INTO `asistencias` VALUES ('8952', '5', 'Andrade Carlos', 'Jueves', '19/01/2017', null, null, '1', '2017-04-04 15:28:37', '2017-04-04 15:28:37');
INSERT INTO `asistencias` VALUES ('8953', '5', 'Andrade Carlos', 'Viernes', '20/01/2017', null, null, '1', '2017-04-04 15:28:37', '2017-04-04 15:28:37');
INSERT INTO `asistencias` VALUES ('8954', '5', 'Andrade Carlos', 'Lunes', '23/01/2017', null, null, '1', '2017-04-04 15:28:37', '2017-04-04 15:28:37');
INSERT INTO `asistencias` VALUES ('8955', '5', 'Andrade Carlos', 'Martes', '24/01/2017', null, null, '1', '2017-04-04 15:28:37', '2017-04-04 15:28:37');
INSERT INTO `asistencias` VALUES ('8956', '5', 'Andrade Carlos', 'Miércoles', '25/01/2017', null, null, '1', '2017-04-04 15:28:37', '2017-04-04 15:28:37');
INSERT INTO `asistencias` VALUES ('8957', '5', 'Andrade Carlos', 'Jueves', '26/01/2017', null, null, '1', '2017-04-04 15:28:37', '2017-04-04 15:28:37');
INSERT INTO `asistencias` VALUES ('8958', '5', 'Andrade Carlos', 'Viernes', '27/01/2017', null, null, '1', '2017-04-04 15:28:37', '2017-04-04 15:28:37');
INSERT INTO `asistencias` VALUES ('8959', '5', 'Andrade Carlos', 'Lunes', '30/01/2017', null, null, '1', '2017-04-04 15:28:37', '2017-04-04 15:28:37');
INSERT INTO `asistencias` VALUES ('8960', '5', 'Andrade Carlos', 'Martes', '31/01/2017', null, null, '1', '2017-04-04 15:28:37', '2017-04-04 15:28:37');
INSERT INTO `asistencias` VALUES ('8961', '68', 'Andres Zambrano', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:28:37', '2017-04-04 15:28:37');
INSERT INTO `asistencias` VALUES ('8962', '68', 'Andres Zambrano', 'Martes', '03/01/2017', '08:19:00', '18:18:00', null, '2017-04-04 15:28:37', '2017-04-04 15:28:37');
INSERT INTO `asistencias` VALUES ('8963', '68', 'Andres Zambrano', 'Miércoles', '04/01/2017', '08:37:00', '17:03:00', null, '2017-04-04 15:28:37', '2017-04-04 15:28:37');
INSERT INTO `asistencias` VALUES ('8964', '68', 'Andres Zambrano', 'Jueves', '05/01/2017', '08:08:00', null, null, '2017-04-04 15:28:37', '2017-04-04 15:28:37');
INSERT INTO `asistencias` VALUES ('8965', '68', 'Andres Zambrano', 'Viernes', '06/01/2017', '08:48:00', null, null, '2017-04-04 15:28:37', '2017-04-04 15:28:37');
INSERT INTO `asistencias` VALUES ('8966', '68', 'Andres Zambrano', 'Lunes', '09/01/2017', '08:57:00', null, null, '2017-04-04 15:28:37', '2017-04-04 15:28:37');
INSERT INTO `asistencias` VALUES ('8967', '68', 'Andres Zambrano', 'Martes', '10/01/2017', '08:36:00', '17:20:00', null, '2017-04-04 15:28:37', '2017-04-04 15:28:37');
INSERT INTO `asistencias` VALUES ('8968', '68', 'Andres Zambrano', 'Miércoles', '11/01/2017', '08:29:00', '17:33:00', null, '2017-04-04 15:28:37', '2017-04-04 15:28:37');
INSERT INTO `asistencias` VALUES ('8969', '68', 'Andres Zambrano', 'Jueves', '12/01/2017', '07:00:00', '19:20:00', null, '2017-04-04 15:28:37', '2017-04-04 15:28:37');
INSERT INTO `asistencias` VALUES ('8970', '68', 'Andres Zambrano', 'Viernes', '13/01/2017', null, '17:09:00', null, '2017-04-04 15:28:37', '2017-04-04 15:28:37');
INSERT INTO `asistencias` VALUES ('8971', '68', 'Andres Zambrano', 'Lunes', '16/01/2017', null, '17:13:00', null, '2017-04-04 15:28:37', '2017-04-04 15:28:37');
INSERT INTO `asistencias` VALUES ('8972', '68', 'Andres Zambrano', 'Martes', '17/01/2017', '08:28:00', '17:17:00', null, '2017-04-04 15:28:37', '2017-04-04 15:28:37');
INSERT INTO `asistencias` VALUES ('8973', '68', 'Andres Zambrano', 'Miércoles', '18/01/2017', '08:34:00', '17:53:00', null, '2017-04-04 15:28:37', '2017-04-04 15:28:37');
INSERT INTO `asistencias` VALUES ('8974', '68', 'Andres Zambrano', 'Jueves', '19/01/2017', '07:40:00', '17:55:00', null, '2017-04-04 15:28:37', '2017-04-04 15:28:37');
INSERT INTO `asistencias` VALUES ('8975', '68', 'Andres Zambrano', 'Viernes', '20/01/2017', '08:42:00', '17:44:00', null, '2017-04-04 15:28:37', '2017-04-04 15:28:37');
INSERT INTO `asistencias` VALUES ('8976', '68', 'Andres Zambrano', 'Lunes', '23/01/2017', '08:40:00', '17:14:00', null, '2017-04-04 15:28:37', '2017-04-04 15:28:37');
INSERT INTO `asistencias` VALUES ('8977', '68', 'Andres Zambrano', 'Martes', '24/01/2017', null, '17:32:00', null, '2017-04-04 15:28:37', '2017-04-04 15:28:37');
INSERT INTO `asistencias` VALUES ('8978', '68', 'Andres Zambrano', 'Miércoles', '25/01/2017', '08:35:00', '17:30:00', null, '2017-04-04 15:28:38', '2017-04-04 15:28:38');
INSERT INTO `asistencias` VALUES ('8979', '68', 'Andres Zambrano', 'Jueves', '26/01/2017', '08:35:00', null, null, '2017-04-04 15:28:38', '2017-04-04 15:28:38');
INSERT INTO `asistencias` VALUES ('8980', '68', 'Andres Zambrano', 'Viernes', '27/01/2017', '08:39:00', '17:43:00', null, '2017-04-04 15:28:38', '2017-04-04 15:28:38');
INSERT INTO `asistencias` VALUES ('8981', '68', 'Andres Zambrano', 'Lunes', '30/01/2017', '08:33:00', '17:09:00', null, '2017-04-04 15:28:38', '2017-04-04 15:28:38');
INSERT INTO `asistencias` VALUES ('8982', '68', 'Andres Zambrano', 'Martes', '31/01/2017', null, '17:16:00', null, '2017-04-04 15:28:38', '2017-04-04 15:28:38');
INSERT INTO `asistencias` VALUES ('8983', '60', 'ANGEL CHALUIZA', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:28:38', '2017-04-04 15:28:38');
INSERT INTO `asistencias` VALUES ('8984', '60', 'ANGEL CHALUIZA', 'Martes', '03/01/2017', null, null, '1', '2017-04-04 15:28:38', '2017-04-04 15:28:38');
INSERT INTO `asistencias` VALUES ('8985', '60', 'ANGEL CHALUIZA', 'Miércoles', '04/01/2017', null, null, '1', '2017-04-04 15:28:38', '2017-04-04 15:28:38');
INSERT INTO `asistencias` VALUES ('8986', '60', 'ANGEL CHALUIZA', 'Jueves', '05/01/2017', null, null, '1', '2017-04-04 15:28:38', '2017-04-04 15:28:38');
INSERT INTO `asistencias` VALUES ('8987', '60', 'ANGEL CHALUIZA', 'Viernes', '06/01/2017', null, null, '1', '2017-04-04 15:28:38', '2017-04-04 15:28:38');
INSERT INTO `asistencias` VALUES ('8988', '60', 'ANGEL CHALUIZA', 'Lunes', '09/01/2017', null, null, '1', '2017-04-04 15:28:38', '2017-04-04 15:28:38');
INSERT INTO `asistencias` VALUES ('8989', '60', 'ANGEL CHALUIZA', 'Martes', '10/01/2017', null, null, '1', '2017-04-04 15:28:38', '2017-04-04 15:28:38');
INSERT INTO `asistencias` VALUES ('8990', '60', 'ANGEL CHALUIZA', 'Miércoles', '11/01/2017', null, null, '1', '2017-04-04 15:28:38', '2017-04-04 15:28:38');
INSERT INTO `asistencias` VALUES ('8991', '60', 'ANGEL CHALUIZA', 'Jueves', '12/01/2017', null, null, '1', '2017-04-04 15:28:38', '2017-04-04 15:28:38');
INSERT INTO `asistencias` VALUES ('8992', '60', 'ANGEL CHALUIZA', 'Viernes', '13/01/2017', null, null, '1', '2017-04-04 15:28:38', '2017-04-04 15:28:38');
INSERT INTO `asistencias` VALUES ('8993', '60', 'ANGEL CHALUIZA', 'Lunes', '16/01/2017', null, null, '1', '2017-04-04 15:28:38', '2017-04-04 15:28:38');
INSERT INTO `asistencias` VALUES ('8994', '60', 'ANGEL CHALUIZA', 'Martes', '17/01/2017', null, null, '1', '2017-04-04 15:28:38', '2017-04-04 15:28:38');
INSERT INTO `asistencias` VALUES ('8995', '60', 'ANGEL CHALUIZA', 'Miércoles', '18/01/2017', null, null, '1', '2017-04-04 15:28:38', '2017-04-04 15:28:38');
INSERT INTO `asistencias` VALUES ('8996', '60', 'ANGEL CHALUIZA', 'Jueves', '19/01/2017', null, null, '1', '2017-04-04 15:28:38', '2017-04-04 15:28:38');
INSERT INTO `asistencias` VALUES ('8997', '60', 'ANGEL CHALUIZA', 'Viernes', '20/01/2017', null, null, '1', '2017-04-04 15:28:38', '2017-04-04 15:28:38');
INSERT INTO `asistencias` VALUES ('8998', '60', 'ANGEL CHALUIZA', 'Lunes', '23/01/2017', null, null, '1', '2017-04-04 15:28:38', '2017-04-04 15:28:38');
INSERT INTO `asistencias` VALUES ('8999', '60', 'ANGEL CHALUIZA', 'Martes', '24/01/2017', null, null, '1', '2017-04-04 15:28:38', '2017-04-04 15:28:38');
INSERT INTO `asistencias` VALUES ('9000', '60', 'ANGEL CHALUIZA', 'Miércoles', '25/01/2017', null, null, '1', '2017-04-04 15:28:38', '2017-04-04 15:28:38');
INSERT INTO `asistencias` VALUES ('9001', '60', 'ANGEL CHALUIZA', 'Jueves', '26/01/2017', null, null, '1', '2017-04-04 15:28:38', '2017-04-04 15:28:38');
INSERT INTO `asistencias` VALUES ('9002', '60', 'ANGEL CHALUIZA', 'Viernes', '27/01/2017', null, null, '1', '2017-04-04 15:28:38', '2017-04-04 15:28:38');
INSERT INTO `asistencias` VALUES ('9003', '60', 'ANGEL CHALUIZA', 'Lunes', '30/01/2017', null, null, '1', '2017-04-04 15:28:38', '2017-04-04 15:28:38');
INSERT INTO `asistencias` VALUES ('9004', '60', 'ANGEL CHALUIZA', 'Martes', '31/01/2017', null, null, '1', '2017-04-04 15:28:38', '2017-04-04 15:28:38');
INSERT INTO `asistencias` VALUES ('9005', '3', 'ANTONIETA ARAUJO', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:28:38', '2017-04-04 15:28:38');
INSERT INTO `asistencias` VALUES ('9006', '3', 'ANTONIETA ARAUJO', 'Martes', '03/01/2017', '07:59:00', '16:58:00', null, '2017-04-04 15:28:38', '2017-04-04 15:28:38');
INSERT INTO `asistencias` VALUES ('9007', '3', 'ANTONIETA ARAUJO', 'Miércoles', '04/01/2017', '07:55:00', '16:59:00', null, '2017-04-04 15:28:38', '2017-04-04 15:28:38');
INSERT INTO `asistencias` VALUES ('9008', '3', 'ANTONIETA ARAUJO', 'Jueves', '05/01/2017', '08:04:00', '17:01:00', null, '2017-04-04 15:28:38', '2017-04-04 15:28:38');
INSERT INTO `asistencias` VALUES ('9009', '3', 'ANTONIETA ARAUJO', 'Viernes', '06/01/2017', '08:26:00', '17:00:00', null, '2017-04-04 15:28:38', '2017-04-04 15:28:38');
INSERT INTO `asistencias` VALUES ('9010', '3', 'ANTONIETA ARAUJO', 'Lunes', '09/01/2017', '08:04:00', '17:00:00', null, '2017-04-04 15:28:38', '2017-04-04 15:28:38');
INSERT INTO `asistencias` VALUES ('9011', '3', 'ANTONIETA ARAUJO', 'Martes', '10/01/2017', '07:53:00', '17:03:00', null, '2017-04-04 15:28:38', '2017-04-04 15:28:38');
INSERT INTO `asistencias` VALUES ('9012', '3', 'ANTONIETA ARAUJO', 'Miércoles', '11/01/2017', '07:49:00', '17:01:00', null, '2017-04-04 15:28:38', '2017-04-04 15:28:38');
INSERT INTO `asistencias` VALUES ('9013', '3', 'ANTONIETA ARAUJO', 'Jueves', '12/01/2017', '07:39:00', '17:00:00', null, '2017-04-04 15:28:38', '2017-04-04 15:28:38');
INSERT INTO `asistencias` VALUES ('9014', '3', 'ANTONIETA ARAUJO', 'Viernes', '13/01/2017', '08:01:00', '17:00:00', null, '2017-04-04 15:28:38', '2017-04-04 15:28:38');
INSERT INTO `asistencias` VALUES ('9015', '3', 'ANTONIETA ARAUJO', 'Lunes', '16/01/2017', '07:58:00', '17:00:00', null, '2017-04-04 15:28:38', '2017-04-04 15:28:38');
INSERT INTO `asistencias` VALUES ('9016', '3', 'ANTONIETA ARAUJO', 'Martes', '17/01/2017', '07:43:00', '17:03:00', null, '2017-04-04 15:28:38', '2017-04-04 15:28:38');
INSERT INTO `asistencias` VALUES ('9017', '3', 'ANTONIETA ARAUJO', 'Miércoles', '18/01/2017', '07:46:00', '17:01:00', null, '2017-04-04 15:28:39', '2017-04-04 15:28:39');
INSERT INTO `asistencias` VALUES ('9018', '3', 'ANTONIETA ARAUJO', 'Jueves', '19/01/2017', '07:52:00', '17:02:00', null, '2017-04-04 15:28:39', '2017-04-04 15:28:39');
INSERT INTO `asistencias` VALUES ('9019', '3', 'ANTONIETA ARAUJO', 'Viernes', '20/01/2017', '07:56:00', '18:28:00', null, '2017-04-04 15:28:39', '2017-04-04 15:28:39');
INSERT INTO `asistencias` VALUES ('9020', '3', 'ANTONIETA ARAUJO', 'Lunes', '23/01/2017', '07:49:00', '17:00:00', null, '2017-04-04 15:28:39', '2017-04-04 15:28:39');
INSERT INTO `asistencias` VALUES ('9021', '3', 'ANTONIETA ARAUJO', 'Martes', '24/01/2017', '07:58:00', '17:01:00', null, '2017-04-04 15:28:39', '2017-04-04 15:28:39');
INSERT INTO `asistencias` VALUES ('9022', '3', 'ANTONIETA ARAUJO', 'Miércoles', '25/01/2017', '07:56:00', '17:00:00', null, '2017-04-04 15:28:39', '2017-04-04 15:28:39');
INSERT INTO `asistencias` VALUES ('9023', '3', 'ANTONIETA ARAUJO', 'Jueves', '26/01/2017', '08:00:00', '17:02:00', null, '2017-04-04 15:28:39', '2017-04-04 15:28:39');
INSERT INTO `asistencias` VALUES ('9024', '3', 'ANTONIETA ARAUJO', 'Viernes', '27/01/2017', '07:59:00', '17:01:00', null, '2017-04-04 15:28:39', '2017-04-04 15:28:39');
INSERT INTO `asistencias` VALUES ('9025', '3', 'ANTONIETA ARAUJO', 'Lunes', '30/01/2017', null, null, '1', '2017-04-04 15:28:39', '2017-04-04 15:28:39');
INSERT INTO `asistencias` VALUES ('9026', '3', 'ANTONIETA ARAUJO', 'Martes', '31/01/2017', '07:53:00', '16:59:00', null, '2017-04-04 15:28:39', '2017-04-04 15:28:39');
INSERT INTO `asistencias` VALUES ('9027', '55', 'ARIANA BAQUERO', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:28:39', '2017-04-04 15:28:39');
INSERT INTO `asistencias` VALUES ('9028', '55', 'ARIANA BAQUERO', 'Martes', '03/01/2017', null, null, '1', '2017-04-04 15:28:39', '2017-04-04 15:28:39');
INSERT INTO `asistencias` VALUES ('9029', '55', 'ARIANA BAQUERO', 'Miércoles', '04/01/2017', null, null, '1', '2017-04-04 15:28:39', '2017-04-04 15:28:39');
INSERT INTO `asistencias` VALUES ('9030', '55', 'ARIANA BAQUERO', 'Jueves', '05/01/2017', null, null, '1', '2017-04-04 15:28:39', '2017-04-04 15:28:39');
INSERT INTO `asistencias` VALUES ('9031', '55', 'ARIANA BAQUERO', 'Viernes', '06/01/2017', null, null, '1', '2017-04-04 15:28:39', '2017-04-04 15:28:39');
INSERT INTO `asistencias` VALUES ('9032', '55', 'ARIANA BAQUERO', 'Lunes', '09/01/2017', null, null, '1', '2017-04-04 15:28:39', '2017-04-04 15:28:39');
INSERT INTO `asistencias` VALUES ('9033', '55', 'ARIANA BAQUERO', 'Martes', '10/01/2017', null, null, '1', '2017-04-04 15:28:39', '2017-04-04 15:28:39');
INSERT INTO `asistencias` VALUES ('9034', '55', 'ARIANA BAQUERO', 'Miércoles', '11/01/2017', null, null, '1', '2017-04-04 15:28:39', '2017-04-04 15:28:39');
INSERT INTO `asistencias` VALUES ('9035', '55', 'ARIANA BAQUERO', 'Jueves', '12/01/2017', null, null, '1', '2017-04-04 15:28:39', '2017-04-04 15:28:39');
INSERT INTO `asistencias` VALUES ('9036', '55', 'ARIANA BAQUERO', 'Viernes', '13/01/2017', null, null, '1', '2017-04-04 15:28:39', '2017-04-04 15:28:39');
INSERT INTO `asistencias` VALUES ('9037', '55', 'ARIANA BAQUERO', 'Lunes', '16/01/2017', null, null, '1', '2017-04-04 15:28:39', '2017-04-04 15:28:39');
INSERT INTO `asistencias` VALUES ('9038', '55', 'ARIANA BAQUERO', 'Martes', '17/01/2017', null, null, '1', '2017-04-04 15:28:39', '2017-04-04 15:28:39');
INSERT INTO `asistencias` VALUES ('9039', '55', 'ARIANA BAQUERO', 'Miércoles', '18/01/2017', null, null, '1', '2017-04-04 15:28:39', '2017-04-04 15:28:39');
INSERT INTO `asistencias` VALUES ('9040', '55', 'ARIANA BAQUERO', 'Jueves', '19/01/2017', null, null, '1', '2017-04-04 15:28:39', '2017-04-04 15:28:39');
INSERT INTO `asistencias` VALUES ('9041', '55', 'ARIANA BAQUERO', 'Viernes', '20/01/2017', null, null, '1', '2017-04-04 15:28:39', '2017-04-04 15:28:39');
INSERT INTO `asistencias` VALUES ('9042', '55', 'ARIANA BAQUERO', 'Lunes', '23/01/2017', null, null, '1', '2017-04-04 15:28:39', '2017-04-04 15:28:39');
INSERT INTO `asistencias` VALUES ('9043', '55', 'ARIANA BAQUERO', 'Martes', '24/01/2017', null, null, '1', '2017-04-04 15:28:39', '2017-04-04 15:28:39');
INSERT INTO `asistencias` VALUES ('9044', '55', 'ARIANA BAQUERO', 'Miércoles', '25/01/2017', null, null, '1', '2017-04-04 15:28:39', '2017-04-04 15:28:39');
INSERT INTO `asistencias` VALUES ('9045', '55', 'ARIANA BAQUERO', 'Jueves', '26/01/2017', null, null, '1', '2017-04-04 15:28:39', '2017-04-04 15:28:39');
INSERT INTO `asistencias` VALUES ('9046', '55', 'ARIANA BAQUERO', 'Viernes', '27/01/2017', null, null, '1', '2017-04-04 15:28:39', '2017-04-04 15:28:39');
INSERT INTO `asistencias` VALUES ('9047', '55', 'ARIANA BAQUERO', 'Lunes', '30/01/2017', null, null, '1', '2017-04-04 15:28:39', '2017-04-04 15:28:39');
INSERT INTO `asistencias` VALUES ('9048', '55', 'ARIANA BAQUERO', 'Martes', '31/01/2017', null, null, '1', '2017-04-04 15:28:39', '2017-04-04 15:28:39');
INSERT INTO `asistencias` VALUES ('9049', '27', 'Benalcázar Jairo', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:28:39', '2017-04-04 15:28:39');
INSERT INTO `asistencias` VALUES ('9050', '27', 'Benalcázar Jairo', 'Martes', '03/01/2017', null, null, '1', '2017-04-04 15:28:39', '2017-04-04 15:28:39');
INSERT INTO `asistencias` VALUES ('9051', '27', 'Benalcázar Jairo', 'Miércoles', '04/01/2017', null, null, '1', '2017-04-04 15:28:39', '2017-04-04 15:28:39');
INSERT INTO `asistencias` VALUES ('9052', '27', 'Benalcázar Jairo', 'Jueves', '05/01/2017', null, null, '1', '2017-04-04 15:28:39', '2017-04-04 15:28:39');
INSERT INTO `asistencias` VALUES ('9053', '27', 'Benalcázar Jairo', 'Viernes', '06/01/2017', null, null, '1', '2017-04-04 15:28:39', '2017-04-04 15:28:39');
INSERT INTO `asistencias` VALUES ('9054', '27', 'Benalcázar Jairo', 'Lunes', '09/01/2017', null, null, '1', '2017-04-04 15:28:39', '2017-04-04 15:28:39');
INSERT INTO `asistencias` VALUES ('9055', '27', 'Benalcázar Jairo', 'Martes', '10/01/2017', null, null, '1', '2017-04-04 15:28:39', '2017-04-04 15:28:39');
INSERT INTO `asistencias` VALUES ('9056', '27', 'Benalcázar Jairo', 'Miércoles', '11/01/2017', null, null, '1', '2017-04-04 15:28:39', '2017-04-04 15:28:39');
INSERT INTO `asistencias` VALUES ('9057', '27', 'Benalcázar Jairo', 'Jueves', '12/01/2017', null, null, '1', '2017-04-04 15:28:40', '2017-04-04 15:28:40');
INSERT INTO `asistencias` VALUES ('9058', '27', 'Benalcázar Jairo', 'Viernes', '13/01/2017', null, null, '1', '2017-04-04 15:28:40', '2017-04-04 15:28:40');
INSERT INTO `asistencias` VALUES ('9059', '27', 'Benalcázar Jairo', 'Lunes', '16/01/2017', null, null, '1', '2017-04-04 15:28:40', '2017-04-04 15:28:40');
INSERT INTO `asistencias` VALUES ('9060', '27', 'Benalcázar Jairo', 'Martes', '17/01/2017', null, null, '1', '2017-04-04 15:28:40', '2017-04-04 15:28:40');
INSERT INTO `asistencias` VALUES ('9061', '27', 'Benalcázar Jairo', 'Miércoles', '18/01/2017', null, null, '1', '2017-04-04 15:28:40', '2017-04-04 15:28:40');
INSERT INTO `asistencias` VALUES ('9062', '27', 'Benalcázar Jairo', 'Jueves', '19/01/2017', null, null, '1', '2017-04-04 15:28:40', '2017-04-04 15:28:40');
INSERT INTO `asistencias` VALUES ('9063', '27', 'Benalcázar Jairo', 'Viernes', '20/01/2017', null, null, '1', '2017-04-04 15:28:40', '2017-04-04 15:28:40');
INSERT INTO `asistencias` VALUES ('9064', '27', 'Benalcázar Jairo', 'Lunes', '23/01/2017', null, null, '1', '2017-04-04 15:28:40', '2017-04-04 15:28:40');
INSERT INTO `asistencias` VALUES ('9065', '27', 'Benalcázar Jairo', 'Martes', '24/01/2017', null, null, '1', '2017-04-04 15:28:40', '2017-04-04 15:28:40');
INSERT INTO `asistencias` VALUES ('9066', '27', 'Benalcázar Jairo', 'Miércoles', '25/01/2017', null, null, '1', '2017-04-04 15:28:40', '2017-04-04 15:28:40');
INSERT INTO `asistencias` VALUES ('9067', '27', 'Benalcázar Jairo', 'Jueves', '26/01/2017', null, null, '1', '2017-04-04 15:28:40', '2017-04-04 15:28:40');
INSERT INTO `asistencias` VALUES ('9068', '27', 'Benalcázar Jairo', 'Viernes', '27/01/2017', null, null, '1', '2017-04-04 15:28:40', '2017-04-04 15:28:40');
INSERT INTO `asistencias` VALUES ('9069', '27', 'Benalcázar Jairo', 'Lunes', '30/01/2017', null, null, '1', '2017-04-04 15:28:40', '2017-04-04 15:28:40');
INSERT INTO `asistencias` VALUES ('9070', '27', 'Benalcázar Jairo', 'Martes', '31/01/2017', null, null, '1', '2017-04-04 15:28:40', '2017-04-04 15:28:40');
INSERT INTO `asistencias` VALUES ('9071', '103', 'Byron Mera', 'Martes', '03/01/2017', '07:20:00', '16:37:00', null, '2017-04-04 15:28:40', '2017-04-04 15:28:40');
INSERT INTO `asistencias` VALUES ('9072', '103', 'Byron Mera', 'Miércoles', '04/01/2017', '08:24:00', '16:53:00', null, '2017-04-04 15:28:40', '2017-04-04 15:28:40');
INSERT INTO `asistencias` VALUES ('9073', '103', 'Byron Mera', 'Viernes', '06/01/2017', '08:23:00', '17:15:00', null, '2017-04-04 15:28:40', '2017-04-04 15:28:40');
INSERT INTO `asistencias` VALUES ('9074', '103', 'Byron Mera', 'Lunes', '09/01/2017', '07:15:00', '16:35:00', null, '2017-04-04 15:28:40', '2017-04-04 15:28:40');
INSERT INTO `asistencias` VALUES ('9075', '103', 'Byron Mera', 'Martes', '10/01/2017', '08:33:00', '17:01:00', null, '2017-04-04 15:28:40', '2017-04-04 15:28:40');
INSERT INTO `asistencias` VALUES ('9076', '103', 'Byron Mera', 'Miércoles', '11/01/2017', '08:25:00', '17:26:00', null, '2017-04-04 15:28:40', '2017-04-04 15:28:40');
INSERT INTO `asistencias` VALUES ('9077', '103', 'Byron Mera', 'Jueves', '12/01/2017', '08:33:00', '17:12:00', null, '2017-04-04 15:28:40', '2017-04-04 15:28:40');
INSERT INTO `asistencias` VALUES ('9078', '103', 'Byron Mera', 'Viernes', '13/01/2017', '08:16:00', '17:00:00', null, '2017-04-04 15:28:40', '2017-04-04 15:28:40');
INSERT INTO `asistencias` VALUES ('9079', '103', 'Byron Mera', 'Lunes', '16/01/2017', '07:20:00', '16:28:00', null, '2017-04-04 15:28:40', '2017-04-04 15:28:40');
INSERT INTO `asistencias` VALUES ('9080', '103', 'Byron Mera', 'Martes', '17/01/2017', '08:22:00', '17:01:00', null, '2017-04-04 15:28:40', '2017-04-04 15:28:40');
INSERT INTO `asistencias` VALUES ('9081', '103', 'Byron Mera', 'Miércoles', '18/01/2017', '07:26:00', '17:39:00', null, '2017-04-04 15:28:40', '2017-04-04 15:28:40');
INSERT INTO `asistencias` VALUES ('9082', '103', 'Byron Mera', 'Jueves', '19/01/2017', '07:19:00', '16:13:00', null, '2017-04-04 15:28:40', '2017-04-04 15:28:40');
INSERT INTO `asistencias` VALUES ('9083', '103', 'Byron Mera', 'Lunes', '23/01/2017', '06:58:00', '15:35:00', null, '2017-04-04 15:28:40', '2017-04-04 15:28:40');
INSERT INTO `asistencias` VALUES ('9084', '103', 'Byron Mera', 'Martes', '24/01/2017', '05:55:00', '14:00:00', null, '2017-04-04 15:28:40', '2017-04-04 15:28:40');
INSERT INTO `asistencias` VALUES ('9085', '103', 'Byron Mera', 'Jueves', '26/01/2017', '05:49:00', '14:45:00', null, '2017-04-04 15:28:40', '2017-04-04 15:28:40');
INSERT INTO `asistencias` VALUES ('9086', '103', 'Byron Mera', 'Viernes', '27/01/2017', '08:02:00', '16:54:00', null, '2017-04-04 15:28:40', '2017-04-04 15:28:40');
INSERT INTO `asistencias` VALUES ('9087', '103', 'Byron Mera', 'Lunes', '30/01/2017', '10:07:00', '19:14:00', null, '2017-04-04 15:28:40', '2017-04-04 15:28:40');
INSERT INTO `asistencias` VALUES ('9088', '103', 'Byron Mera', 'Martes', '31/01/2017', '07:05:00', '15:48:00', null, '2017-04-04 15:28:40', '2017-04-04 15:28:40');
INSERT INTO `asistencias` VALUES ('9089', '8', 'CARLA CELI', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:28:40', '2017-04-04 15:28:40');
INSERT INTO `asistencias` VALUES ('9090', '8', 'CARLA CELI', 'Martes', '03/01/2017', null, null, '1', '2017-04-04 15:28:40', '2017-04-04 15:28:40');
INSERT INTO `asistencias` VALUES ('9091', '8', 'CARLA CELI', 'Miércoles', '04/01/2017', null, null, '1', '2017-04-04 15:28:40', '2017-04-04 15:28:40');
INSERT INTO `asistencias` VALUES ('9092', '8', 'CARLA CELI', 'Jueves', '05/01/2017', null, null, '1', '2017-04-04 15:28:41', '2017-04-04 15:28:41');
INSERT INTO `asistencias` VALUES ('9093', '8', 'CARLA CELI', 'Viernes', '06/01/2017', null, null, '1', '2017-04-04 15:28:41', '2017-04-04 15:28:41');
INSERT INTO `asistencias` VALUES ('9094', '8', 'CARLA CELI', 'Lunes', '09/01/2017', null, null, '1', '2017-04-04 15:28:41', '2017-04-04 15:28:41');
INSERT INTO `asistencias` VALUES ('9095', '8', 'CARLA CELI', 'Martes', '10/01/2017', null, null, '1', '2017-04-04 15:28:41', '2017-04-04 15:28:41');
INSERT INTO `asistencias` VALUES ('9096', '8', 'CARLA CELI', 'Miércoles', '11/01/2017', null, null, '1', '2017-04-04 15:28:41', '2017-04-04 15:28:41');
INSERT INTO `asistencias` VALUES ('9097', '8', 'CARLA CELI', 'Jueves', '12/01/2017', null, null, '1', '2017-04-04 15:28:41', '2017-04-04 15:28:41');
INSERT INTO `asistencias` VALUES ('9098', '8', 'CARLA CELI', 'Viernes', '13/01/2017', null, null, '1', '2017-04-04 15:28:41', '2017-04-04 15:28:41');
INSERT INTO `asistencias` VALUES ('9099', '8', 'CARLA CELI', 'Lunes', '16/01/2017', null, null, '1', '2017-04-04 15:28:41', '2017-04-04 15:28:41');
INSERT INTO `asistencias` VALUES ('9100', '8', 'CARLA CELI', 'Martes', '17/01/2017', null, null, '1', '2017-04-04 15:28:41', '2017-04-04 15:28:41');
INSERT INTO `asistencias` VALUES ('9101', '8', 'CARLA CELI', 'Miércoles', '18/01/2017', null, null, '1', '2017-04-04 15:28:41', '2017-04-04 15:28:41');
INSERT INTO `asistencias` VALUES ('9102', '8', 'CARLA CELI', 'Jueves', '19/01/2017', null, null, '1', '2017-04-04 15:28:41', '2017-04-04 15:28:41');
INSERT INTO `asistencias` VALUES ('9103', '8', 'CARLA CELI', 'Viernes', '20/01/2017', null, null, '1', '2017-04-04 15:28:41', '2017-04-04 15:28:41');
INSERT INTO `asistencias` VALUES ('9104', '8', 'CARLA CELI', 'Lunes', '23/01/2017', null, null, '1', '2017-04-04 15:28:41', '2017-04-04 15:28:41');
INSERT INTO `asistencias` VALUES ('9105', '8', 'CARLA CELI', 'Martes', '24/01/2017', null, null, '1', '2017-04-04 15:28:41', '2017-04-04 15:28:41');
INSERT INTO `asistencias` VALUES ('9106', '8', 'CARLA CELI', 'Miércoles', '25/01/2017', null, null, '1', '2017-04-04 15:28:41', '2017-04-04 15:28:41');
INSERT INTO `asistencias` VALUES ('9107', '8', 'CARLA CELI', 'Jueves', '26/01/2017', null, null, '1', '2017-04-04 15:28:41', '2017-04-04 15:28:41');
INSERT INTO `asistencias` VALUES ('9108', '8', 'CARLA CELI', 'Viernes', '27/01/2017', null, null, '1', '2017-04-04 15:28:41', '2017-04-04 15:28:41');
INSERT INTO `asistencias` VALUES ('9109', '8', 'CARLA CELI', 'Lunes', '30/01/2017', null, null, '1', '2017-04-04 15:28:41', '2017-04-04 15:28:41');
INSERT INTO `asistencias` VALUES ('9110', '8', 'CARLA CELI', 'Martes', '31/01/2017', null, null, '1', '2017-04-04 15:28:41', '2017-04-04 15:28:41');
INSERT INTO `asistencias` VALUES ('9111', '70', 'CARLOS ANDRADE', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:28:41', '2017-04-04 15:28:41');
INSERT INTO `asistencias` VALUES ('9112', '70', 'CARLOS ANDRADE', 'Martes', '03/01/2017', null, null, '1', '2017-04-04 15:28:41', '2017-04-04 15:28:41');
INSERT INTO `asistencias` VALUES ('9113', '70', 'CARLOS ANDRADE', 'Miércoles', '04/01/2017', null, null, '1', '2017-04-04 15:28:41', '2017-04-04 15:28:41');
INSERT INTO `asistencias` VALUES ('9114', '70', 'CARLOS ANDRADE', 'Jueves', '05/01/2017', null, null, '1', '2017-04-04 15:28:41', '2017-04-04 15:28:41');
INSERT INTO `asistencias` VALUES ('9115', '70', 'CARLOS ANDRADE', 'Viernes', '06/01/2017', null, null, '1', '2017-04-04 15:28:41', '2017-04-04 15:28:41');
INSERT INTO `asistencias` VALUES ('9116', '70', 'CARLOS ANDRADE', 'Lunes', '09/01/2017', null, null, '1', '2017-04-04 15:28:41', '2017-04-04 15:28:41');
INSERT INTO `asistencias` VALUES ('9117', '70', 'CARLOS ANDRADE', 'Martes', '10/01/2017', null, null, '1', '2017-04-04 15:28:41', '2017-04-04 15:28:41');
INSERT INTO `asistencias` VALUES ('9118', '70', 'CARLOS ANDRADE', 'Miércoles', '11/01/2017', null, null, '1', '2017-04-04 15:28:41', '2017-04-04 15:28:41');
INSERT INTO `asistencias` VALUES ('9119', '70', 'CARLOS ANDRADE', 'Jueves', '12/01/2017', null, null, '1', '2017-04-04 15:28:41', '2017-04-04 15:28:41');
INSERT INTO `asistencias` VALUES ('9120', '70', 'CARLOS ANDRADE', 'Viernes', '13/01/2017', null, null, '1', '2017-04-04 15:28:41', '2017-04-04 15:28:41');
INSERT INTO `asistencias` VALUES ('9121', '70', 'CARLOS ANDRADE', 'Lunes', '16/01/2017', null, null, '1', '2017-04-04 15:28:41', '2017-04-04 15:28:41');
INSERT INTO `asistencias` VALUES ('9122', '70', 'CARLOS ANDRADE', 'Martes', '17/01/2017', null, null, '1', '2017-04-04 15:28:41', '2017-04-04 15:28:41');
INSERT INTO `asistencias` VALUES ('9123', '70', 'CARLOS ANDRADE', 'Miércoles', '18/01/2017', null, null, '1', '2017-04-04 15:28:41', '2017-04-04 15:28:41');
INSERT INTO `asistencias` VALUES ('9124', '70', 'CARLOS ANDRADE', 'Jueves', '19/01/2017', null, null, '1', '2017-04-04 15:28:41', '2017-04-04 15:28:41');
INSERT INTO `asistencias` VALUES ('9125', '70', 'CARLOS ANDRADE', 'Viernes', '20/01/2017', null, null, '1', '2017-04-04 15:28:41', '2017-04-04 15:28:41');
INSERT INTO `asistencias` VALUES ('9126', '70', 'CARLOS ANDRADE', 'Lunes', '23/01/2017', null, null, '1', '2017-04-04 15:28:41', '2017-04-04 15:28:41');
INSERT INTO `asistencias` VALUES ('9127', '70', 'CARLOS ANDRADE', 'Martes', '24/01/2017', null, null, '1', '2017-04-04 15:28:41', '2017-04-04 15:28:41');
INSERT INTO `asistencias` VALUES ('9128', '70', 'CARLOS ANDRADE', 'Miércoles', '25/01/2017', null, null, '1', '2017-04-04 15:28:41', '2017-04-04 15:28:41');
INSERT INTO `asistencias` VALUES ('9129', '70', 'CARLOS ANDRADE', 'Jueves', '26/01/2017', null, null, '1', '2017-04-04 15:28:42', '2017-04-04 15:28:42');
INSERT INTO `asistencias` VALUES ('9130', '70', 'CARLOS ANDRADE', 'Viernes', '27/01/2017', null, null, '1', '2017-04-04 15:28:42', '2017-04-04 15:28:42');
INSERT INTO `asistencias` VALUES ('9131', '70', 'CARLOS ANDRADE', 'Lunes', '30/01/2017', null, null, '1', '2017-04-04 15:28:42', '2017-04-04 15:28:42');
INSERT INTO `asistencias` VALUES ('9132', '70', 'CARLOS ANDRADE', 'Martes', '31/01/2017', null, null, '1', '2017-04-04 15:28:42', '2017-04-04 15:28:42');
INSERT INTO `asistencias` VALUES ('9133', '65', 'Chamorro Cesar', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:28:42', '2017-04-04 15:28:42');
INSERT INTO `asistencias` VALUES ('9134', '65', 'Chamorro Cesar', 'Martes', '03/01/2017', '10:15:00', null, null, '2017-04-04 15:28:42', '2017-04-04 15:28:42');
INSERT INTO `asistencias` VALUES ('9135', '65', 'Chamorro Cesar', 'Miércoles', '04/01/2017', '08:53:00', '17:10:00', null, '2017-04-04 15:28:42', '2017-04-04 15:28:42');
INSERT INTO `asistencias` VALUES ('9136', '65', 'Chamorro Cesar', 'Jueves', '05/01/2017', '09:08:00', '16:35:00', null, '2017-04-04 15:28:42', '2017-04-04 15:28:42');
INSERT INTO `asistencias` VALUES ('9137', '65', 'Chamorro Cesar', 'Viernes', '06/01/2017', null, '17:06:00', null, '2017-04-04 15:28:42', '2017-04-04 15:28:42');
INSERT INTO `asistencias` VALUES ('9138', '65', 'Chamorro Cesar', 'Lunes', '09/01/2017', '08:50:00', null, null, '2017-04-04 15:28:42', '2017-04-04 15:28:42');
INSERT INTO `asistencias` VALUES ('9139', '65', 'Chamorro Cesar', 'Martes', '10/01/2017', '07:53:00', '17:09:00', null, '2017-04-04 15:28:42', '2017-04-04 15:28:42');
INSERT INTO `asistencias` VALUES ('9140', '65', 'Chamorro Cesar', 'Miércoles', '11/01/2017', '07:10:00', null, null, '2017-04-04 15:28:42', '2017-04-04 15:28:42');
INSERT INTO `asistencias` VALUES ('9141', '65', 'Chamorro Cesar', 'Jueves', '12/01/2017', null, '17:09:00', null, '2017-04-04 15:28:42', '2017-04-04 15:28:42');
INSERT INTO `asistencias` VALUES ('9142', '65', 'Chamorro Cesar', 'Viernes', '13/01/2017', null, '15:54:00', null, '2017-04-04 15:28:42', '2017-04-04 15:28:42');
INSERT INTO `asistencias` VALUES ('9143', '65', 'Chamorro Cesar', 'Lunes', '16/01/2017', '09:00:00', null, null, '2017-04-04 15:28:42', '2017-04-04 15:28:42');
INSERT INTO `asistencias` VALUES ('9144', '65', 'Chamorro Cesar', 'Martes', '17/01/2017', '09:15:00', null, null, '2017-04-04 15:28:42', '2017-04-04 15:28:42');
INSERT INTO `asistencias` VALUES ('9145', '65', 'Chamorro Cesar', 'Miércoles', '18/01/2017', '08:20:00', '17:53:00', null, '2017-04-04 15:28:42', '2017-04-04 15:28:42');
INSERT INTO `asistencias` VALUES ('9146', '65', 'Chamorro Cesar', 'Jueves', '19/01/2017', '07:07:00', '20:08:00', null, '2017-04-04 15:28:42', '2017-04-04 15:28:42');
INSERT INTO `asistencias` VALUES ('9147', '65', 'Chamorro Cesar', 'Viernes', '20/01/2017', '07:43:00', null, null, '2017-04-04 15:28:42', '2017-04-04 15:28:42');
INSERT INTO `asistencias` VALUES ('9148', '65', 'Chamorro Cesar', 'Lunes', '23/01/2017', '09:43:00', '17:12:00', null, '2017-04-04 15:28:42', '2017-04-04 15:28:42');
INSERT INTO `asistencias` VALUES ('9149', '65', 'Chamorro Cesar', 'Martes', '24/01/2017', '09:15:00', null, null, '2017-04-04 15:28:42', '2017-04-04 15:28:42');
INSERT INTO `asistencias` VALUES ('9150', '65', 'Chamorro Cesar', 'Miércoles', '25/01/2017', '08:28:00', null, null, '2017-04-04 15:28:42', '2017-04-04 15:28:42');
INSERT INTO `asistencias` VALUES ('9151', '65', 'Chamorro Cesar', 'Jueves', '26/01/2017', '08:37:00', null, null, '2017-04-04 15:28:42', '2017-04-04 15:28:42');
INSERT INTO `asistencias` VALUES ('9152', '65', 'Chamorro Cesar', 'Viernes', '27/01/2017', '09:14:00', null, null, '2017-04-04 15:28:42', '2017-04-04 15:28:42');
INSERT INTO `asistencias` VALUES ('9153', '65', 'Chamorro Cesar', 'Lunes', '30/01/2017', '08:36:00', '17:10:00', null, '2017-04-04 15:28:42', '2017-04-04 15:28:42');
INSERT INTO `asistencias` VALUES ('9154', '65', 'Chamorro Cesar', 'Martes', '31/01/2017', '08:40:00', '17:18:00', null, '2017-04-04 15:28:42', '2017-04-04 15:28:42');
INSERT INTO `asistencias` VALUES ('9155', '9', 'Cisneros Felipe', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:28:42', '2017-04-04 15:28:42');
INSERT INTO `asistencias` VALUES ('9156', '9', 'Cisneros Felipe', 'Martes', '03/01/2017', null, null, '1', '2017-04-04 15:28:42', '2017-04-04 15:28:42');
INSERT INTO `asistencias` VALUES ('9157', '9', 'Cisneros Felipe', 'Miércoles', '04/01/2017', null, null, '1', '2017-04-04 15:28:42', '2017-04-04 15:28:42');
INSERT INTO `asistencias` VALUES ('9158', '9', 'Cisneros Felipe', 'Jueves', '05/01/2017', null, null, '1', '2017-04-04 15:28:42', '2017-04-04 15:28:42');
INSERT INTO `asistencias` VALUES ('9159', '9', 'Cisneros Felipe', 'Viernes', '06/01/2017', null, null, '1', '2017-04-04 15:28:42', '2017-04-04 15:28:42');
INSERT INTO `asistencias` VALUES ('9160', '9', 'Cisneros Felipe', 'Lunes', '09/01/2017', null, null, '1', '2017-04-04 15:28:42', '2017-04-04 15:28:42');
INSERT INTO `asistencias` VALUES ('9161', '9', 'Cisneros Felipe', 'Martes', '10/01/2017', null, null, '1', '2017-04-04 15:28:42', '2017-04-04 15:28:42');
INSERT INTO `asistencias` VALUES ('9162', '9', 'Cisneros Felipe', 'Miércoles', '11/01/2017', null, null, '1', '2017-04-04 15:28:42', '2017-04-04 15:28:42');
INSERT INTO `asistencias` VALUES ('9163', '9', 'Cisneros Felipe', 'Jueves', '12/01/2017', null, null, '1', '2017-04-04 15:28:42', '2017-04-04 15:28:42');
INSERT INTO `asistencias` VALUES ('9164', '9', 'Cisneros Felipe', 'Viernes', '13/01/2017', null, null, '1', '2017-04-04 15:28:42', '2017-04-04 15:28:42');
INSERT INTO `asistencias` VALUES ('9165', '9', 'Cisneros Felipe', 'Lunes', '16/01/2017', null, null, '1', '2017-04-04 15:28:43', '2017-04-04 15:28:43');
INSERT INTO `asistencias` VALUES ('9166', '9', 'Cisneros Felipe', 'Martes', '17/01/2017', null, null, '1', '2017-04-04 15:28:43', '2017-04-04 15:28:43');
INSERT INTO `asistencias` VALUES ('9167', '9', 'Cisneros Felipe', 'Miércoles', '18/01/2017', null, null, '1', '2017-04-04 15:28:43', '2017-04-04 15:28:43');
INSERT INTO `asistencias` VALUES ('9168', '9', 'Cisneros Felipe', 'Jueves', '19/01/2017', null, null, '1', '2017-04-04 15:28:43', '2017-04-04 15:28:43');
INSERT INTO `asistencias` VALUES ('9169', '9', 'Cisneros Felipe', 'Viernes', '20/01/2017', null, null, '1', '2017-04-04 15:28:43', '2017-04-04 15:28:43');
INSERT INTO `asistencias` VALUES ('9170', '9', 'Cisneros Felipe', 'Lunes', '23/01/2017', null, null, '1', '2017-04-04 15:28:43', '2017-04-04 15:28:43');
INSERT INTO `asistencias` VALUES ('9171', '9', 'Cisneros Felipe', 'Martes', '24/01/2017', null, null, '1', '2017-04-04 15:28:43', '2017-04-04 15:28:43');
INSERT INTO `asistencias` VALUES ('9172', '9', 'Cisneros Felipe', 'Miércoles', '25/01/2017', null, null, '1', '2017-04-04 15:28:43', '2017-04-04 15:28:43');
INSERT INTO `asistencias` VALUES ('9173', '9', 'Cisneros Felipe', 'Jueves', '26/01/2017', null, null, '1', '2017-04-04 15:28:43', '2017-04-04 15:28:43');
INSERT INTO `asistencias` VALUES ('9174', '9', 'Cisneros Felipe', 'Viernes', '27/01/2017', null, null, '1', '2017-04-04 15:28:43', '2017-04-04 15:28:43');
INSERT INTO `asistencias` VALUES ('9175', '9', 'Cisneros Felipe', 'Lunes', '30/01/2017', null, null, '1', '2017-04-04 15:28:43', '2017-04-04 15:28:43');
INSERT INTO `asistencias` VALUES ('9176', '9', 'Cisneros Felipe', 'Martes', '31/01/2017', null, null, '1', '2017-04-04 15:28:43', '2017-04-04 15:28:43');
INSERT INTO `asistencias` VALUES ('9177', '26', 'CRISTINA PUCHA', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:28:43', '2017-04-04 15:28:43');
INSERT INTO `asistencias` VALUES ('9178', '26', 'CRISTINA PUCHA', 'Martes', '03/01/2017', '08:29:00', '17:32:00', null, '2017-04-04 15:28:43', '2017-04-04 15:28:43');
INSERT INTO `asistencias` VALUES ('9179', '26', 'CRISTINA PUCHA', 'Miércoles', '04/01/2017', '08:31:00', '17:22:00', null, '2017-04-04 15:28:43', '2017-04-04 15:28:43');
INSERT INTO `asistencias` VALUES ('9180', '26', 'CRISTINA PUCHA', 'Jueves', '05/01/2017', '08:26:00', '17:29:00', null, '2017-04-04 15:28:43', '2017-04-04 15:28:43');
INSERT INTO `asistencias` VALUES ('9181', '26', 'CRISTINA PUCHA', 'Viernes', '06/01/2017', '08:46:00', '17:11:00', null, '2017-04-04 15:28:43', '2017-04-04 15:28:43');
INSERT INTO `asistencias` VALUES ('9182', '26', 'CRISTINA PUCHA', 'Lunes', '09/01/2017', null, null, '1', '2017-04-04 15:28:43', '2017-04-04 15:28:43');
INSERT INTO `asistencias` VALUES ('9183', '26', 'CRISTINA PUCHA', 'Martes', '10/01/2017', '08:50:00', '17:28:00', null, '2017-04-04 15:28:43', '2017-04-04 15:28:43');
INSERT INTO `asistencias` VALUES ('9184', '26', 'CRISTINA PUCHA', 'Miércoles', '11/01/2017', '08:18:00', '17:41:00', null, '2017-04-04 15:28:43', '2017-04-04 15:28:43');
INSERT INTO `asistencias` VALUES ('9185', '26', 'CRISTINA PUCHA', 'Jueves', '12/01/2017', '08:14:00', '15:15:00', null, '2017-04-04 15:28:43', '2017-04-04 15:28:43');
INSERT INTO `asistencias` VALUES ('9186', '26', 'CRISTINA PUCHA', 'Viernes', '13/01/2017', '08:18:00', '17:09:00', null, '2017-04-04 15:28:43', '2017-04-04 15:28:43');
INSERT INTO `asistencias` VALUES ('9187', '26', 'CRISTINA PUCHA', 'Lunes', '16/01/2017', '08:32:00', '17:00:00', null, '2017-04-04 15:28:43', '2017-04-04 15:28:43');
INSERT INTO `asistencias` VALUES ('9188', '26', 'CRISTINA PUCHA', 'Martes', '17/01/2017', '08:29:00', '17:06:00', null, '2017-04-04 15:28:43', '2017-04-04 15:28:43');
INSERT INTO `asistencias` VALUES ('9189', '26', 'CRISTINA PUCHA', 'Miércoles', '18/01/2017', null, null, '1', '2017-04-04 15:28:43', '2017-04-04 15:28:43');
INSERT INTO `asistencias` VALUES ('9190', '26', 'CRISTINA PUCHA', 'Jueves', '19/01/2017', '08:37:00', '17:19:00', null, '2017-04-04 15:28:43', '2017-04-04 15:28:43');
INSERT INTO `asistencias` VALUES ('9191', '26', 'CRISTINA PUCHA', 'Viernes', '20/01/2017', '08:42:00', '17:20:00', null, '2017-04-04 15:28:43', '2017-04-04 15:28:43');
INSERT INTO `asistencias` VALUES ('9192', '26', 'CRISTINA PUCHA', 'Lunes', '23/01/2017', '08:15:00', '17:33:00', null, '2017-04-04 15:28:43', '2017-04-04 15:28:43');
INSERT INTO `asistencias` VALUES ('9193', '26', 'CRISTINA PUCHA', 'Martes', '24/01/2017', '08:15:00', '17:44:00', null, '2017-04-04 15:28:43', '2017-04-04 15:28:43');
INSERT INTO `asistencias` VALUES ('9194', '26', 'CRISTINA PUCHA', 'Miércoles', '25/01/2017', '08:25:00', '17:18:00', null, '2017-04-04 15:28:43', '2017-04-04 15:28:43');
INSERT INTO `asistencias` VALUES ('9195', '26', 'CRISTINA PUCHA', 'Jueves', '26/01/2017', '08:38:00', '17:29:00', null, '2017-04-04 15:28:43', '2017-04-04 15:28:43');
INSERT INTO `asistencias` VALUES ('9196', '26', 'CRISTINA PUCHA', 'Viernes', '27/01/2017', '08:36:00', '17:25:00', null, '2017-04-04 15:28:43', '2017-04-04 15:28:43');
INSERT INTO `asistencias` VALUES ('9197', '26', 'CRISTINA PUCHA', 'Lunes', '30/01/2017', '08:34:00', '17:15:00', null, '2017-04-04 15:28:43', '2017-04-04 15:28:43');
INSERT INTO `asistencias` VALUES ('9198', '26', 'CRISTINA PUCHA', 'Martes', '31/01/2017', '08:33:00', '17:24:00', null, '2017-04-04 15:28:43', '2017-04-04 15:28:43');
INSERT INTO `asistencias` VALUES ('9199', '32', 'DANY ARIAS', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:28:43', '2017-04-04 15:28:43');
INSERT INTO `asistencias` VALUES ('9200', '32', 'DANY ARIAS', 'Martes', '03/01/2017', null, null, '1', '2017-04-04 15:28:43', '2017-04-04 15:28:43');
INSERT INTO `asistencias` VALUES ('9201', '32', 'DANY ARIAS', 'Miércoles', '04/01/2017', null, null, '1', '2017-04-04 15:28:43', '2017-04-04 15:28:43');
INSERT INTO `asistencias` VALUES ('9202', '32', 'DANY ARIAS', 'Jueves', '05/01/2017', null, null, '1', '2017-04-04 15:28:43', '2017-04-04 15:28:43');
INSERT INTO `asistencias` VALUES ('9203', '32', 'DANY ARIAS', 'Viernes', '06/01/2017', '08:23:00', '17:08:00', null, '2017-04-04 15:28:44', '2017-04-04 15:28:44');
INSERT INTO `asistencias` VALUES ('9204', '32', 'DANY ARIAS', 'Lunes', '09/01/2017', '08:21:00', '17:27:00', null, '2017-04-04 15:28:44', '2017-04-04 15:28:44');
INSERT INTO `asistencias` VALUES ('9205', '32', 'DANY ARIAS', 'Martes', '10/01/2017', '08:20:00', '16:03:00', null, '2017-04-04 15:28:44', '2017-04-04 15:28:44');
INSERT INTO `asistencias` VALUES ('9206', '32', 'DANY ARIAS', 'Miércoles', '11/01/2017', '08:10:00', '17:06:00', null, '2017-04-04 15:28:44', '2017-04-04 15:28:44');
INSERT INTO `asistencias` VALUES ('9207', '32', 'DANY ARIAS', 'Jueves', '12/01/2017', null, null, '1', '2017-04-04 15:28:44', '2017-04-04 15:28:44');
INSERT INTO `asistencias` VALUES ('9208', '32', 'DANY ARIAS', 'Viernes', '13/01/2017', '07:19:00', '16:02:00', null, '2017-04-04 15:28:44', '2017-04-04 15:28:44');
INSERT INTO `asistencias` VALUES ('9209', '32', 'DANY ARIAS', 'Lunes', '16/01/2017', '06:37:00', '16:30:00', null, '2017-04-04 15:28:44', '2017-04-04 15:28:44');
INSERT INTO `asistencias` VALUES ('9210', '32', 'DANY ARIAS', 'Martes', '17/01/2017', null, '17:00:00', null, '2017-04-04 15:28:44', '2017-04-04 15:28:44');
INSERT INTO `asistencias` VALUES ('9211', '32', 'DANY ARIAS', 'Miércoles', '18/01/2017', '08:22:00', '17:55:00', null, '2017-04-04 15:28:44', '2017-04-04 15:28:44');
INSERT INTO `asistencias` VALUES ('9212', '32', 'DANY ARIAS', 'Jueves', '19/01/2017', '08:22:00', '17:07:00', null, '2017-04-04 15:28:44', '2017-04-04 15:28:44');
INSERT INTO `asistencias` VALUES ('9213', '32', 'DANY ARIAS', 'Viernes', '20/01/2017', '08:32:00', '19:39:00', null, '2017-04-04 15:28:44', '2017-04-04 15:28:44');
INSERT INTO `asistencias` VALUES ('9214', '32', 'DANY ARIAS', 'Lunes', '23/01/2017', '08:28:00', '17:16:00', null, '2017-04-04 15:28:44', '2017-04-04 15:28:44');
INSERT INTO `asistencias` VALUES ('9215', '32', 'DANY ARIAS', 'Martes', '24/01/2017', '08:19:00', null, null, '2017-04-04 15:28:44', '2017-04-04 15:28:44');
INSERT INTO `asistencias` VALUES ('9216', '32', 'DANY ARIAS', 'Miércoles', '25/01/2017', null, '16:57:00', null, '2017-04-04 15:28:44', '2017-04-04 15:28:44');
INSERT INTO `asistencias` VALUES ('9217', '32', 'DANY ARIAS', 'Jueves', '26/01/2017', '08:26:00', '17:00:00', null, '2017-04-04 15:28:44', '2017-04-04 15:28:44');
INSERT INTO `asistencias` VALUES ('9218', '32', 'DANY ARIAS', 'Viernes', '27/01/2017', null, null, '1', '2017-04-04 15:28:44', '2017-04-04 15:28:44');
INSERT INTO `asistencias` VALUES ('9219', '32', 'DANY ARIAS', 'Lunes', '30/01/2017', null, '16:56:00', null, '2017-04-04 15:28:44', '2017-04-04 15:28:44');
INSERT INTO `asistencias` VALUES ('9220', '32', 'DANY ARIAS', 'Martes', '31/01/2017', '06:01:00', null, null, '2017-04-04 15:28:44', '2017-04-04 15:28:44');
INSERT INTO `asistencias` VALUES ('9221', '1', 'DARWIN RUILOVA', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:28:44', '2017-04-04 15:28:44');
INSERT INTO `asistencias` VALUES ('9222', '1', 'DARWIN RUILOVA', 'Martes', '03/01/2017', null, null, '1', '2017-04-04 15:28:44', '2017-04-04 15:28:44');
INSERT INTO `asistencias` VALUES ('9223', '1', 'DARWIN RUILOVA', 'Miércoles', '04/01/2017', null, null, '1', '2017-04-04 15:28:44', '2017-04-04 15:28:44');
INSERT INTO `asistencias` VALUES ('9224', '1', 'DARWIN RUILOVA', 'Jueves', '05/01/2017', null, null, '1', '2017-04-04 15:28:44', '2017-04-04 15:28:44');
INSERT INTO `asistencias` VALUES ('9225', '1', 'DARWIN RUILOVA', 'Viernes', '06/01/2017', null, null, '1', '2017-04-04 15:28:44', '2017-04-04 15:28:44');
INSERT INTO `asistencias` VALUES ('9226', '1', 'DARWIN RUILOVA', 'Lunes', '09/01/2017', null, null, '1', '2017-04-04 15:28:44', '2017-04-04 15:28:44');
INSERT INTO `asistencias` VALUES ('9227', '1', 'DARWIN RUILOVA', 'Martes', '10/01/2017', null, null, '1', '2017-04-04 15:28:44', '2017-04-04 15:28:44');
INSERT INTO `asistencias` VALUES ('9228', '1', 'DARWIN RUILOVA', 'Miércoles', '11/01/2017', null, null, '1', '2017-04-04 15:28:44', '2017-04-04 15:28:44');
INSERT INTO `asistencias` VALUES ('9229', '1', 'DARWIN RUILOVA', 'Jueves', '12/01/2017', null, null, '1', '2017-04-04 15:28:44', '2017-04-04 15:28:44');
INSERT INTO `asistencias` VALUES ('9230', '1', 'DARWIN RUILOVA', 'Viernes', '13/01/2017', null, null, '1', '2017-04-04 15:28:44', '2017-04-04 15:28:44');
INSERT INTO `asistencias` VALUES ('9231', '1', 'DARWIN RUILOVA', 'Lunes', '16/01/2017', null, null, '1', '2017-04-04 15:28:44', '2017-04-04 15:28:44');
INSERT INTO `asistencias` VALUES ('9232', '1', 'DARWIN RUILOVA', 'Martes', '17/01/2017', null, null, '1', '2017-04-04 15:28:44', '2017-04-04 15:28:44');
INSERT INTO `asistencias` VALUES ('9233', '1', 'DARWIN RUILOVA', 'Miércoles', '18/01/2017', null, null, '1', '2017-04-04 15:28:44', '2017-04-04 15:28:44');
INSERT INTO `asistencias` VALUES ('9234', '1', 'DARWIN RUILOVA', 'Jueves', '19/01/2017', null, null, '1', '2017-04-04 15:28:44', '2017-04-04 15:28:44');
INSERT INTO `asistencias` VALUES ('9235', '1', 'DARWIN RUILOVA', 'Viernes', '20/01/2017', null, null, '1', '2017-04-04 15:28:44', '2017-04-04 15:28:44');
INSERT INTO `asistencias` VALUES ('9236', '1', 'DARWIN RUILOVA', 'Lunes', '23/01/2017', null, null, '1', '2017-04-04 15:28:44', '2017-04-04 15:28:44');
INSERT INTO `asistencias` VALUES ('9237', '1', 'DARWIN RUILOVA', 'Martes', '24/01/2017', null, null, '1', '2017-04-04 15:28:44', '2017-04-04 15:28:44');
INSERT INTO `asistencias` VALUES ('9238', '1', 'DARWIN RUILOVA', 'Miércoles', '25/01/2017', null, null, '1', '2017-04-04 15:28:44', '2017-04-04 15:28:44');
INSERT INTO `asistencias` VALUES ('9239', '1', 'DARWIN RUILOVA', 'Jueves', '26/01/2017', null, null, '1', '2017-04-04 15:28:44', '2017-04-04 15:28:44');
INSERT INTO `asistencias` VALUES ('9240', '1', 'DARWIN RUILOVA', 'Viernes', '27/01/2017', null, null, '1', '2017-04-04 15:28:45', '2017-04-04 15:28:45');
INSERT INTO `asistencias` VALUES ('9241', '1', 'DARWIN RUILOVA', 'Lunes', '30/01/2017', null, null, '1', '2017-04-04 15:28:45', '2017-04-04 15:28:45');
INSERT INTO `asistencias` VALUES ('9242', '1', 'DARWIN RUILOVA', 'Martes', '31/01/2017', null, null, '1', '2017-04-04 15:28:45', '2017-04-04 15:28:45');
INSERT INTO `asistencias` VALUES ('9243', '100', 'Diana Pérez', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:28:45', '2017-04-04 15:28:45');
INSERT INTO `asistencias` VALUES ('9244', '100', 'Diana Pérez', 'Martes', '03/01/2017', '08:54:00', '18:13:00', null, '2017-04-04 15:28:45', '2017-04-04 15:28:45');
INSERT INTO `asistencias` VALUES ('9245', '100', 'Diana Pérez', 'Miércoles', '04/01/2017', '09:09:00', '17:14:00', null, '2017-04-04 15:28:45', '2017-04-04 15:28:45');
INSERT INTO `asistencias` VALUES ('9246', '100', 'Diana Pérez', 'Jueves', '05/01/2017', '09:19:00', '17:05:00', null, '2017-04-04 15:28:45', '2017-04-04 15:28:45');
INSERT INTO `asistencias` VALUES ('9247', '100', 'Diana Pérez', 'Viernes', '06/01/2017', '09:45:00', '17:10:00', null, '2017-04-04 15:28:45', '2017-04-04 15:28:45');
INSERT INTO `asistencias` VALUES ('9248', '100', 'Diana Pérez', 'Lunes', '09/01/2017', null, '17:10:00', null, '2017-04-04 15:28:45', '2017-04-04 15:28:45');
INSERT INTO `asistencias` VALUES ('9249', '100', 'Diana Pérez', 'Martes', '10/01/2017', '09:15:00', '17:26:00', null, '2017-04-04 15:28:45', '2017-04-04 15:28:45');
INSERT INTO `asistencias` VALUES ('9250', '100', 'Diana Pérez', 'Miércoles', '11/01/2017', '09:00:00', '17:23:00', null, '2017-04-04 15:28:45', '2017-04-04 15:28:45');
INSERT INTO `asistencias` VALUES ('9251', '100', 'Diana Pérez', 'Jueves', '12/01/2017', '08:30:00', '17:35:00', null, '2017-04-04 15:28:45', '2017-04-04 15:28:45');
INSERT INTO `asistencias` VALUES ('9252', '100', 'Diana Pérez', 'Viernes', '13/01/2017', '08:16:00', '17:42:00', null, '2017-04-04 15:28:45', '2017-04-04 15:28:45');
INSERT INTO `asistencias` VALUES ('9253', '100', 'Diana Pérez', 'Lunes', '16/01/2017', '08:49:00', '17:37:00', null, '2017-04-04 15:28:45', '2017-04-04 15:28:45');
INSERT INTO `asistencias` VALUES ('9254', '100', 'Diana Pérez', 'Martes', '17/01/2017', '08:26:00', null, null, '2017-04-04 15:28:45', '2017-04-04 15:28:45');
INSERT INTO `asistencias` VALUES ('9255', '100', 'Diana Pérez', 'Miércoles', '18/01/2017', '08:26:00', '17:20:00', null, '2017-04-04 15:28:45', '2017-04-04 15:28:45');
INSERT INTO `asistencias` VALUES ('9256', '100', 'Diana Pérez', 'Jueves', '19/01/2017', null, '17:41:00', null, '2017-04-04 15:28:45', '2017-04-04 15:28:45');
INSERT INTO `asistencias` VALUES ('9257', '100', 'Diana Pérez', 'Viernes', '20/01/2017', null, null, '1', '2017-04-04 15:28:45', '2017-04-04 15:28:45');
INSERT INTO `asistencias` VALUES ('9258', '100', 'Diana Pérez', 'Lunes', '23/01/2017', '08:38:00', '17:24:00', null, '2017-04-04 15:28:45', '2017-04-04 15:28:45');
INSERT INTO `asistencias` VALUES ('9259', '100', 'Diana Pérez', 'Martes', '24/01/2017', '08:16:00', '17:17:00', null, '2017-04-04 15:28:45', '2017-04-04 15:28:45');
INSERT INTO `asistencias` VALUES ('9260', '100', 'Diana Pérez', 'Miércoles', '25/01/2017', '08:00:00', '17:39:00', null, '2017-04-04 15:28:45', '2017-04-04 15:28:45');
INSERT INTO `asistencias` VALUES ('9261', '100', 'Diana Pérez', 'Jueves', '26/01/2017', '09:17:00', null, null, '2017-04-04 15:28:45', '2017-04-04 15:28:45');
INSERT INTO `asistencias` VALUES ('9262', '100', 'Diana Pérez', 'Viernes', '27/01/2017', null, null, '1', '2017-04-04 15:28:45', '2017-04-04 15:28:45');
INSERT INTO `asistencias` VALUES ('9263', '100', 'Diana Pérez', 'Lunes', '30/01/2017', '08:16:00', '17:14:00', null, '2017-04-04 15:28:45', '2017-04-04 15:28:45');
INSERT INTO `asistencias` VALUES ('9264', '100', 'Diana Pérez', 'Martes', '31/01/2017', null, null, '1', '2017-04-04 15:28:45', '2017-04-04 15:28:45');
INSERT INTO `asistencias` VALUES ('9265', '4', 'EDGAR AIMACANA', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:28:45', '2017-04-04 15:28:45');
INSERT INTO `asistencias` VALUES ('9266', '4', 'EDGAR AIMACANA', 'Martes', '03/01/2017', null, null, '1', '2017-04-04 15:28:45', '2017-04-04 15:28:45');
INSERT INTO `asistencias` VALUES ('9267', '4', 'EDGAR AIMACANA', 'Miércoles', '04/01/2017', null, null, '1', '2017-04-04 15:28:45', '2017-04-04 15:28:45');
INSERT INTO `asistencias` VALUES ('9268', '4', 'EDGAR AIMACANA', 'Jueves', '05/01/2017', null, null, '1', '2017-04-04 15:28:45', '2017-04-04 15:28:45');
INSERT INTO `asistencias` VALUES ('9269', '4', 'EDGAR AIMACANA', 'Viernes', '06/01/2017', null, null, '1', '2017-04-04 15:28:45', '2017-04-04 15:28:45');
INSERT INTO `asistencias` VALUES ('9270', '4', 'EDGAR AIMACANA', 'Lunes', '09/01/2017', null, null, '1', '2017-04-04 15:28:45', '2017-04-04 15:28:45');
INSERT INTO `asistencias` VALUES ('9271', '4', 'EDGAR AIMACANA', 'Martes', '10/01/2017', null, null, '1', '2017-04-04 15:28:45', '2017-04-04 15:28:45');
INSERT INTO `asistencias` VALUES ('9272', '4', 'EDGAR AIMACANA', 'Miércoles', '11/01/2017', null, null, '1', '2017-04-04 15:28:45', '2017-04-04 15:28:45');
INSERT INTO `asistencias` VALUES ('9273', '4', 'EDGAR AIMACANA', 'Jueves', '12/01/2017', null, null, '1', '2017-04-04 15:28:45', '2017-04-04 15:28:45');
INSERT INTO `asistencias` VALUES ('9274', '4', 'EDGAR AIMACANA', 'Viernes', '13/01/2017', null, null, '1', '2017-04-04 15:28:45', '2017-04-04 15:28:45');
INSERT INTO `asistencias` VALUES ('9275', '4', 'EDGAR AIMACANA', 'Lunes', '16/01/2017', null, null, '1', '2017-04-04 15:28:45', '2017-04-04 15:28:45');
INSERT INTO `asistencias` VALUES ('9276', '4', 'EDGAR AIMACANA', 'Martes', '17/01/2017', null, null, '1', '2017-04-04 15:28:45', '2017-04-04 15:28:45');
INSERT INTO `asistencias` VALUES ('9277', '4', 'EDGAR AIMACANA', 'Miércoles', '18/01/2017', null, null, '1', '2017-04-04 15:28:45', '2017-04-04 15:28:45');
INSERT INTO `asistencias` VALUES ('9278', '4', 'EDGAR AIMACANA', 'Jueves', '19/01/2017', null, null, '1', '2017-04-04 15:28:45', '2017-04-04 15:28:45');
INSERT INTO `asistencias` VALUES ('9279', '4', 'EDGAR AIMACANA', 'Viernes', '20/01/2017', null, null, '1', '2017-04-04 15:28:46', '2017-04-04 15:28:46');
INSERT INTO `asistencias` VALUES ('9280', '4', 'EDGAR AIMACANA', 'Lunes', '23/01/2017', null, null, '1', '2017-04-04 15:28:46', '2017-04-04 15:28:46');
INSERT INTO `asistencias` VALUES ('9281', '4', 'EDGAR AIMACANA', 'Martes', '24/01/2017', null, null, '1', '2017-04-04 15:28:46', '2017-04-04 15:28:46');
INSERT INTO `asistencias` VALUES ('9282', '4', 'EDGAR AIMACANA', 'Miércoles', '25/01/2017', null, null, '1', '2017-04-04 15:28:46', '2017-04-04 15:28:46');
INSERT INTO `asistencias` VALUES ('9283', '4', 'EDGAR AIMACANA', 'Jueves', '26/01/2017', null, null, '1', '2017-04-04 15:28:46', '2017-04-04 15:28:46');
INSERT INTO `asistencias` VALUES ('9284', '4', 'EDGAR AIMACANA', 'Viernes', '27/01/2017', null, null, '1', '2017-04-04 15:28:46', '2017-04-04 15:28:46');
INSERT INTO `asistencias` VALUES ('9285', '4', 'EDGAR AIMACANA', 'Lunes', '30/01/2017', null, null, '1', '2017-04-04 15:28:46', '2017-04-04 15:28:46');
INSERT INTO `asistencias` VALUES ('9286', '4', 'EDGAR AIMACANA', 'Martes', '31/01/2017', null, null, '1', '2017-04-04 15:28:46', '2017-04-04 15:28:46');
INSERT INTO `asistencias` VALUES ('9287', '73', 'ELEANA JEREZ', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:28:46', '2017-04-04 15:28:46');
INSERT INTO `asistencias` VALUES ('9288', '73', 'ELEANA JEREZ', 'Martes', '03/01/2017', null, null, '1', '2017-04-04 15:28:46', '2017-04-04 15:28:46');
INSERT INTO `asistencias` VALUES ('9289', '73', 'ELEANA JEREZ', 'Miércoles', '04/01/2017', null, null, '1', '2017-04-04 15:28:46', '2017-04-04 15:28:46');
INSERT INTO `asistencias` VALUES ('9290', '73', 'ELEANA JEREZ', 'Jueves', '05/01/2017', null, null, '1', '2017-04-04 15:28:46', '2017-04-04 15:28:46');
INSERT INTO `asistencias` VALUES ('9291', '73', 'ELEANA JEREZ', 'Viernes', '06/01/2017', null, null, '1', '2017-04-04 15:28:46', '2017-04-04 15:28:46');
INSERT INTO `asistencias` VALUES ('9292', '73', 'ELEANA JEREZ', 'Lunes', '09/01/2017', null, null, '1', '2017-04-04 15:28:46', '2017-04-04 15:28:46');
INSERT INTO `asistencias` VALUES ('9293', '73', 'ELEANA JEREZ', 'Martes', '10/01/2017', null, null, '1', '2017-04-04 15:28:46', '2017-04-04 15:28:46');
INSERT INTO `asistencias` VALUES ('9294', '73', 'ELEANA JEREZ', 'Miércoles', '11/01/2017', null, null, '1', '2017-04-04 15:28:46', '2017-04-04 15:28:46');
INSERT INTO `asistencias` VALUES ('9295', '73', 'ELEANA JEREZ', 'Jueves', '12/01/2017', null, null, '1', '2017-04-04 15:28:46', '2017-04-04 15:28:46');
INSERT INTO `asistencias` VALUES ('9296', '73', 'ELEANA JEREZ', 'Viernes', '13/01/2017', null, null, '1', '2017-04-04 15:28:46', '2017-04-04 15:28:46');
INSERT INTO `asistencias` VALUES ('9297', '73', 'ELEANA JEREZ', 'Lunes', '16/01/2017', null, null, '1', '2017-04-04 15:28:46', '2017-04-04 15:28:46');
INSERT INTO `asistencias` VALUES ('9298', '73', 'ELEANA JEREZ', 'Martes', '17/01/2017', null, null, '1', '2017-04-04 15:28:46', '2017-04-04 15:28:46');
INSERT INTO `asistencias` VALUES ('9299', '73', 'ELEANA JEREZ', 'Miércoles', '18/01/2017', null, null, '1', '2017-04-04 15:28:46', '2017-04-04 15:28:46');
INSERT INTO `asistencias` VALUES ('9300', '73', 'ELEANA JEREZ', 'Jueves', '19/01/2017', null, null, '1', '2017-04-04 15:28:46', '2017-04-04 15:28:46');
INSERT INTO `asistencias` VALUES ('9301', '73', 'ELEANA JEREZ', 'Viernes', '20/01/2017', null, null, '1', '2017-04-04 15:28:46', '2017-04-04 15:28:46');
INSERT INTO `asistencias` VALUES ('9302', '73', 'ELEANA JEREZ', 'Lunes', '23/01/2017', null, null, '1', '2017-04-04 15:28:46', '2017-04-04 15:28:46');
INSERT INTO `asistencias` VALUES ('9303', '73', 'ELEANA JEREZ', 'Martes', '24/01/2017', null, null, '1', '2017-04-04 15:28:46', '2017-04-04 15:28:46');
INSERT INTO `asistencias` VALUES ('9304', '73', 'ELEANA JEREZ', 'Miércoles', '25/01/2017', null, null, '1', '2017-04-04 15:28:46', '2017-04-04 15:28:46');
INSERT INTO `asistencias` VALUES ('9305', '73', 'ELEANA JEREZ', 'Jueves', '26/01/2017', null, null, '1', '2017-04-04 15:28:46', '2017-04-04 15:28:46');
INSERT INTO `asistencias` VALUES ('9306', '73', 'ELEANA JEREZ', 'Viernes', '27/01/2017', null, null, '1', '2017-04-04 15:28:46', '2017-04-04 15:28:46');
INSERT INTO `asistencias` VALUES ('9307', '73', 'ELEANA JEREZ', 'Lunes', '30/01/2017', null, null, '1', '2017-04-04 15:28:46', '2017-04-04 15:28:46');
INSERT INTO `asistencias` VALUES ('9308', '73', 'ELEANA JEREZ', 'Martes', '31/01/2017', null, null, '1', '2017-04-04 15:28:46', '2017-04-04 15:28:46');
INSERT INTO `asistencias` VALUES ('9309', '53', 'EMILY LASLUISA', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:28:46', '2017-04-04 15:28:46');
INSERT INTO `asistencias` VALUES ('9310', '53', 'EMILY LASLUISA', 'Martes', '03/01/2017', null, null, '1', '2017-04-04 15:28:46', '2017-04-04 15:28:46');
INSERT INTO `asistencias` VALUES ('9311', '53', 'EMILY LASLUISA', 'Miércoles', '04/01/2017', null, null, '1', '2017-04-04 15:28:46', '2017-04-04 15:28:46');
INSERT INTO `asistencias` VALUES ('9312', '53', 'EMILY LASLUISA', 'Jueves', '05/01/2017', null, null, '1', '2017-04-04 15:28:46', '2017-04-04 15:28:46');
INSERT INTO `asistencias` VALUES ('9313', '53', 'EMILY LASLUISA', 'Viernes', '06/01/2017', null, null, '1', '2017-04-04 15:28:46', '2017-04-04 15:28:46');
INSERT INTO `asistencias` VALUES ('9314', '53', 'EMILY LASLUISA', 'Lunes', '09/01/2017', null, null, '1', '2017-04-04 15:28:46', '2017-04-04 15:28:46');
INSERT INTO `asistencias` VALUES ('9315', '53', 'EMILY LASLUISA', 'Martes', '10/01/2017', null, null, '1', '2017-04-04 15:28:47', '2017-04-04 15:28:47');
INSERT INTO `asistencias` VALUES ('9316', '53', 'EMILY LASLUISA', 'Miércoles', '11/01/2017', null, null, '1', '2017-04-04 15:28:47', '2017-04-04 15:28:47');
INSERT INTO `asistencias` VALUES ('9317', '53', 'EMILY LASLUISA', 'Jueves', '12/01/2017', null, null, '1', '2017-04-04 15:28:47', '2017-04-04 15:28:47');
INSERT INTO `asistencias` VALUES ('9318', '53', 'EMILY LASLUISA', 'Viernes', '13/01/2017', null, null, '1', '2017-04-04 15:28:47', '2017-04-04 15:28:47');
INSERT INTO `asistencias` VALUES ('9319', '53', 'EMILY LASLUISA', 'Lunes', '16/01/2017', null, null, '1', '2017-04-04 15:28:47', '2017-04-04 15:28:47');
INSERT INTO `asistencias` VALUES ('9320', '53', 'EMILY LASLUISA', 'Martes', '17/01/2017', null, null, '1', '2017-04-04 15:28:47', '2017-04-04 15:28:47');
INSERT INTO `asistencias` VALUES ('9321', '53', 'EMILY LASLUISA', 'Miércoles', '18/01/2017', null, null, '1', '2017-04-04 15:28:47', '2017-04-04 15:28:47');
INSERT INTO `asistencias` VALUES ('9322', '53', 'EMILY LASLUISA', 'Jueves', '19/01/2017', null, null, '1', '2017-04-04 15:28:47', '2017-04-04 15:28:47');
INSERT INTO `asistencias` VALUES ('9323', '53', 'EMILY LASLUISA', 'Viernes', '20/01/2017', null, null, '1', '2017-04-04 15:28:47', '2017-04-04 15:28:47');
INSERT INTO `asistencias` VALUES ('9324', '53', 'EMILY LASLUISA', 'Lunes', '23/01/2017', null, null, '1', '2017-04-04 15:28:47', '2017-04-04 15:28:47');
INSERT INTO `asistencias` VALUES ('9325', '53', 'EMILY LASLUISA', 'Martes', '24/01/2017', null, null, '1', '2017-04-04 15:28:47', '2017-04-04 15:28:47');
INSERT INTO `asistencias` VALUES ('9326', '53', 'EMILY LASLUISA', 'Miércoles', '25/01/2017', null, null, '1', '2017-04-04 15:28:47', '2017-04-04 15:28:47');
INSERT INTO `asistencias` VALUES ('9327', '53', 'EMILY LASLUISA', 'Jueves', '26/01/2017', null, null, '1', '2017-04-04 15:28:47', '2017-04-04 15:28:47');
INSERT INTO `asistencias` VALUES ('9328', '53', 'EMILY LASLUISA', 'Viernes', '27/01/2017', null, null, '1', '2017-04-04 15:28:47', '2017-04-04 15:28:47');
INSERT INTO `asistencias` VALUES ('9329', '53', 'EMILY LASLUISA', 'Lunes', '30/01/2017', null, null, '1', '2017-04-04 15:28:47', '2017-04-04 15:28:47');
INSERT INTO `asistencias` VALUES ('9330', '53', 'EMILY LASLUISA', 'Martes', '31/01/2017', null, null, '1', '2017-04-04 15:28:47', '2017-04-04 15:28:47');
INSERT INTO `asistencias` VALUES ('9331', '88', 'Fabian Romero', 'Martes', '03/01/2017', '08:31:00', '17:27:00', null, '2017-04-04 15:28:47', '2017-04-04 15:28:47');
INSERT INTO `asistencias` VALUES ('9332', '88', 'Fabian Romero', 'Miércoles', '04/01/2017', '08:40:00', '17:12:00', null, '2017-04-04 15:28:47', '2017-04-04 15:28:47');
INSERT INTO `asistencias` VALUES ('9333', '88', 'Fabian Romero', 'Jueves', '05/01/2017', '08:46:00', '17:16:00', null, '2017-04-04 15:28:47', '2017-04-04 15:28:47');
INSERT INTO `asistencias` VALUES ('9334', '88', 'Fabian Romero', 'Viernes', '06/01/2017', '08:43:00', '18:07:00', null, '2017-04-04 15:28:47', '2017-04-04 15:28:47');
INSERT INTO `asistencias` VALUES ('9335', '88', 'Fabian Romero', 'Lunes', '09/01/2017', '08:53:00', '18:04:00', null, '2017-04-04 15:28:47', '2017-04-04 15:28:47');
INSERT INTO `asistencias` VALUES ('9336', '88', 'Fabian Romero', 'Martes', '10/01/2017', '08:43:00', '16:59:00', null, '2017-04-04 15:28:47', '2017-04-04 15:28:47');
INSERT INTO `asistencias` VALUES ('9337', '88', 'Fabian Romero', 'Miércoles', '11/01/2017', '08:37:00', '17:23:00', null, '2017-04-04 15:28:47', '2017-04-04 15:28:47');
INSERT INTO `asistencias` VALUES ('9338', '88', 'Fabian Romero', 'Jueves', '12/01/2017', '08:50:00', '18:36:00', null, '2017-04-04 15:28:47', '2017-04-04 15:28:47');
INSERT INTO `asistencias` VALUES ('9339', '88', 'Fabian Romero', 'Viernes', '13/01/2017', '08:54:00', '17:39:00', null, '2017-04-04 15:28:47', '2017-04-04 15:28:47');
INSERT INTO `asistencias` VALUES ('9340', '88', 'Fabian Romero', 'Martes', '17/01/2017', '08:48:00', '19:22:00', null, '2017-04-04 15:28:47', '2017-04-04 15:28:47');
INSERT INTO `asistencias` VALUES ('9341', '88', 'Fabian Romero', 'Miércoles', '18/01/2017', '08:30:00', '17:36:00', null, '2017-04-04 15:28:47', '2017-04-04 15:28:47');
INSERT INTO `asistencias` VALUES ('9342', '88', 'Fabian Romero', 'Jueves', '19/01/2017', '08:24:00', '17:27:00', null, '2017-04-04 15:28:47', '2017-04-04 15:28:47');
INSERT INTO `asistencias` VALUES ('9343', '88', 'Fabian Romero', 'Lunes', '23/01/2017', '08:54:00', '17:10:00', null, '2017-04-04 15:28:47', '2017-04-04 15:28:47');
INSERT INTO `asistencias` VALUES ('9344', '88', 'Fabian Romero', 'Jueves', '26/01/2017', '08:38:00', '17:21:00', null, '2017-04-04 15:28:47', '2017-04-04 15:28:47');
INSERT INTO `asistencias` VALUES ('9345', '88', 'Fabian Romero', 'Viernes', '27/01/2017', '08:37:00', '17:06:00', null, '2017-04-04 15:28:47', '2017-04-04 15:28:47');
INSERT INTO `asistencias` VALUES ('9346', '88', 'Fabian Romero', 'Lunes', '30/01/2017', '08:37:00', '19:37:00', null, '2017-04-04 15:28:47', '2017-04-04 15:28:47');
INSERT INTO `asistencias` VALUES ('9347', '88', 'Fabian Romero', 'Martes', '31/01/2017', '08:27:00', '17:20:00', null, '2017-04-04 15:28:47', '2017-04-04 15:28:47');
INSERT INTO `asistencias` VALUES ('9348', '95', 'Franklin Columba', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:28:47', '2017-04-04 15:28:47');
INSERT INTO `asistencias` VALUES ('9349', '95', 'Franklin Columba', 'Martes', '03/01/2017', null, null, '1', '2017-04-04 15:28:47', '2017-04-04 15:28:47');
INSERT INTO `asistencias` VALUES ('9350', '95', 'Franklin Columba', 'Miércoles', '04/01/2017', null, null, '1', '2017-04-04 15:28:48', '2017-04-04 15:28:48');
INSERT INTO `asistencias` VALUES ('9351', '95', 'Franklin Columba', 'Jueves', '05/01/2017', null, null, '1', '2017-04-04 15:28:48', '2017-04-04 15:28:48');
INSERT INTO `asistencias` VALUES ('9352', '95', 'Franklin Columba', 'Viernes', '06/01/2017', null, null, '1', '2017-04-04 15:28:48', '2017-04-04 15:28:48');
INSERT INTO `asistencias` VALUES ('9353', '95', 'Franklin Columba', 'Lunes', '09/01/2017', null, null, '1', '2017-04-04 15:28:48', '2017-04-04 15:28:48');
INSERT INTO `asistencias` VALUES ('9354', '95', 'Franklin Columba', 'Martes', '10/01/2017', null, null, '1', '2017-04-04 15:28:48', '2017-04-04 15:28:48');
INSERT INTO `asistencias` VALUES ('9355', '95', 'Franklin Columba', 'Miércoles', '11/01/2017', null, null, '1', '2017-04-04 15:28:48', '2017-04-04 15:28:48');
INSERT INTO `asistencias` VALUES ('9356', '95', 'Franklin Columba', 'Jueves', '12/01/2017', null, null, '1', '2017-04-04 15:28:48', '2017-04-04 15:28:48');
INSERT INTO `asistencias` VALUES ('9357', '95', 'Franklin Columba', 'Viernes', '13/01/2017', null, null, '1', '2017-04-04 15:28:48', '2017-04-04 15:28:48');
INSERT INTO `asistencias` VALUES ('9358', '95', 'Franklin Columba', 'Lunes', '16/01/2017', null, null, '1', '2017-04-04 15:28:48', '2017-04-04 15:28:48');
INSERT INTO `asistencias` VALUES ('9359', '95', 'Franklin Columba', 'Martes', '17/01/2017', null, null, '1', '2017-04-04 15:28:48', '2017-04-04 15:28:48');
INSERT INTO `asistencias` VALUES ('9360', '95', 'Franklin Columba', 'Miércoles', '18/01/2017', null, null, '1', '2017-04-04 15:28:48', '2017-04-04 15:28:48');
INSERT INTO `asistencias` VALUES ('9361', '95', 'Franklin Columba', 'Jueves', '19/01/2017', null, null, '1', '2017-04-04 15:28:48', '2017-04-04 15:28:48');
INSERT INTO `asistencias` VALUES ('9362', '95', 'Franklin Columba', 'Viernes', '20/01/2017', null, null, '1', '2017-04-04 15:28:48', '2017-04-04 15:28:48');
INSERT INTO `asistencias` VALUES ('9363', '95', 'Franklin Columba', 'Lunes', '23/01/2017', null, null, '1', '2017-04-04 15:28:48', '2017-04-04 15:28:48');
INSERT INTO `asistencias` VALUES ('9364', '95', 'Franklin Columba', 'Martes', '24/01/2017', null, null, '1', '2017-04-04 15:28:48', '2017-04-04 15:28:48');
INSERT INTO `asistencias` VALUES ('9365', '95', 'Franklin Columba', 'Miércoles', '25/01/2017', null, null, '1', '2017-04-04 15:28:48', '2017-04-04 15:28:48');
INSERT INTO `asistencias` VALUES ('9366', '95', 'Franklin Columba', 'Jueves', '26/01/2017', null, null, '1', '2017-04-04 15:28:48', '2017-04-04 15:28:48');
INSERT INTO `asistencias` VALUES ('9367', '95', 'Franklin Columba', 'Viernes', '27/01/2017', null, null, '1', '2017-04-04 15:28:48', '2017-04-04 15:28:48');
INSERT INTO `asistencias` VALUES ('9368', '95', 'Franklin Columba', 'Lunes', '30/01/2017', null, null, '1', '2017-04-04 15:28:48', '2017-04-04 15:28:48');
INSERT INTO `asistencias` VALUES ('9369', '95', 'Franklin Columba', 'Martes', '31/01/2017', null, null, '1', '2017-04-04 15:28:48', '2017-04-04 15:28:48');
INSERT INTO `asistencias` VALUES ('9370', '96', 'Gabriela Banda', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:28:48', '2017-04-04 15:28:48');
INSERT INTO `asistencias` VALUES ('9371', '96', 'Gabriela Banda', 'Martes', '03/01/2017', '08:06:00', '17:03:00', null, '2017-04-04 15:28:48', '2017-04-04 15:28:48');
INSERT INTO `asistencias` VALUES ('9372', '96', 'Gabriela Banda', 'Miércoles', '04/01/2017', '08:31:00', '17:08:00', null, '2017-04-04 15:28:48', '2017-04-04 15:28:48');
INSERT INTO `asistencias` VALUES ('9373', '96', 'Gabriela Banda', 'Jueves', '05/01/2017', '08:36:00', '17:03:00', null, '2017-04-04 15:28:48', '2017-04-04 15:28:48');
INSERT INTO `asistencias` VALUES ('9374', '96', 'Gabriela Banda', 'Viernes', '06/01/2017', '08:53:00', '17:09:00', null, '2017-04-04 15:28:48', '2017-04-04 15:28:48');
INSERT INTO `asistencias` VALUES ('9375', '96', 'Gabriela Banda', 'Lunes', '09/01/2017', '08:13:00', '17:12:00', null, '2017-04-04 15:28:48', '2017-04-04 15:28:48');
INSERT INTO `asistencias` VALUES ('9376', '96', 'Gabriela Banda', 'Martes', '10/01/2017', '08:25:00', '17:08:00', null, '2017-04-04 15:28:48', '2017-04-04 15:28:48');
INSERT INTO `asistencias` VALUES ('9377', '96', 'Gabriela Banda', 'Miércoles', '11/01/2017', '08:39:00', '17:05:00', null, '2017-04-04 15:28:48', '2017-04-04 15:28:48');
INSERT INTO `asistencias` VALUES ('9378', '96', 'Gabriela Banda', 'Jueves', '12/01/2017', '08:11:00', '14:00:00', null, '2017-04-04 15:28:48', '2017-04-04 15:28:48');
INSERT INTO `asistencias` VALUES ('9379', '96', 'Gabriela Banda', 'Viernes', '13/01/2017', '08:22:00', '18:03:00', null, '2017-04-04 15:28:48', '2017-04-04 15:28:48');
INSERT INTO `asistencias` VALUES ('9380', '96', 'Gabriela Banda', 'Lunes', '16/01/2017', '07:54:00', '17:06:00', null, '2017-04-04 15:28:48', '2017-04-04 15:28:48');
INSERT INTO `asistencias` VALUES ('9381', '96', 'Gabriela Banda', 'Martes', '17/01/2017', '08:27:00', '17:05:00', null, '2017-04-04 15:28:48', '2017-04-04 15:28:48');
INSERT INTO `asistencias` VALUES ('9382', '96', 'Gabriela Banda', 'Miércoles', '18/01/2017', '08:35:00', '15:04:00', null, '2017-04-04 15:28:48', '2017-04-04 15:28:48');
INSERT INTO `asistencias` VALUES ('9383', '96', 'Gabriela Banda', 'Jueves', '19/01/2017', null, null, '1', '2017-04-04 15:28:48', '2017-04-04 15:28:48');
INSERT INTO `asistencias` VALUES ('9384', '96', 'Gabriela Banda', 'Viernes', '20/01/2017', '08:21:00', '17:11:00', null, '2017-04-04 15:28:48', '2017-04-04 15:28:48');
INSERT INTO `asistencias` VALUES ('9385', '96', 'Gabriela Banda', 'Lunes', '23/01/2017', '08:15:00', '17:04:00', null, '2017-04-04 15:28:48', '2017-04-04 15:28:48');
INSERT INTO `asistencias` VALUES ('9386', '96', 'Gabriela Banda', 'Martes', '24/01/2017', '08:13:00', '17:09:00', null, '2017-04-04 15:28:48', '2017-04-04 15:28:48');
INSERT INTO `asistencias` VALUES ('9387', '96', 'Gabriela Banda', 'Miércoles', '25/01/2017', '08:22:00', '17:03:00', null, '2017-04-04 15:28:48', '2017-04-04 15:28:48');
INSERT INTO `asistencias` VALUES ('9388', '96', 'Gabriela Banda', 'Jueves', '26/01/2017', null, '13:28:00', null, '2017-04-04 15:28:48', '2017-04-04 15:28:48');
INSERT INTO `asistencias` VALUES ('9389', '96', 'Gabriela Banda', 'Viernes', '27/01/2017', '09:43:00', '17:00:00', null, '2017-04-04 15:28:49', '2017-04-04 15:28:49');
INSERT INTO `asistencias` VALUES ('9390', '96', 'Gabriela Banda', 'Lunes', '30/01/2017', '08:35:00', '17:10:00', null, '2017-04-04 15:28:49', '2017-04-04 15:28:49');
INSERT INTO `asistencias` VALUES ('9391', '96', 'Gabriela Banda', 'Martes', '31/01/2017', '08:49:00', '17:04:00', null, '2017-04-04 15:28:49', '2017-04-04 15:28:49');
INSERT INTO `asistencias` VALUES ('9392', '108', 'Gabriela Cevallos', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:28:49', '2017-04-04 15:28:49');
INSERT INTO `asistencias` VALUES ('9393', '108', 'Gabriela Cevallos', 'Martes', '03/01/2017', null, null, '1', '2017-04-04 15:28:49', '2017-04-04 15:28:49');
INSERT INTO `asistencias` VALUES ('9394', '108', 'Gabriela Cevallos', 'Miércoles', '04/01/2017', null, null, '1', '2017-04-04 15:28:49', '2017-04-04 15:28:49');
INSERT INTO `asistencias` VALUES ('9395', '108', 'Gabriela Cevallos', 'Jueves', '05/01/2017', null, null, '1', '2017-04-04 15:28:49', '2017-04-04 15:28:49');
INSERT INTO `asistencias` VALUES ('9396', '108', 'Gabriela Cevallos', 'Viernes', '06/01/2017', null, null, '1', '2017-04-04 15:28:49', '2017-04-04 15:28:49');
INSERT INTO `asistencias` VALUES ('9397', '108', 'Gabriela Cevallos', 'Lunes', '09/01/2017', null, null, '1', '2017-04-04 15:28:49', '2017-04-04 15:28:49');
INSERT INTO `asistencias` VALUES ('9398', '108', 'Gabriela Cevallos', 'Martes', '10/01/2017', null, null, '1', '2017-04-04 15:28:49', '2017-04-04 15:28:49');
INSERT INTO `asistencias` VALUES ('9399', '108', 'Gabriela Cevallos', 'Miércoles', '11/01/2017', null, null, '1', '2017-04-04 15:28:49', '2017-04-04 15:28:49');
INSERT INTO `asistencias` VALUES ('9400', '108', 'Gabriela Cevallos', 'Jueves', '12/01/2017', null, null, '1', '2017-04-04 15:28:49', '2017-04-04 15:28:49');
INSERT INTO `asistencias` VALUES ('9401', '108', 'Gabriela Cevallos', 'Viernes', '13/01/2017', null, null, '1', '2017-04-04 15:28:49', '2017-04-04 15:28:49');
INSERT INTO `asistencias` VALUES ('9402', '108', 'Gabriela Cevallos', 'Lunes', '16/01/2017', null, null, '1', '2017-04-04 15:28:49', '2017-04-04 15:28:49');
INSERT INTO `asistencias` VALUES ('9403', '108', 'Gabriela Cevallos', 'Martes', '17/01/2017', null, null, '1', '2017-04-04 15:28:49', '2017-04-04 15:28:49');
INSERT INTO `asistencias` VALUES ('9404', '108', 'Gabriela Cevallos', 'Miércoles', '18/01/2017', null, null, '1', '2017-04-04 15:28:49', '2017-04-04 15:28:49');
INSERT INTO `asistencias` VALUES ('9405', '108', 'Gabriela Cevallos', 'Jueves', '19/01/2017', null, null, '1', '2017-04-04 15:28:49', '2017-04-04 15:28:49');
INSERT INTO `asistencias` VALUES ('9406', '108', 'Gabriela Cevallos', 'Viernes', '20/01/2017', null, null, '1', '2017-04-04 15:28:49', '2017-04-04 15:28:49');
INSERT INTO `asistencias` VALUES ('9407', '108', 'Gabriela Cevallos', 'Lunes', '23/01/2017', null, null, '1', '2017-04-04 15:28:49', '2017-04-04 15:28:49');
INSERT INTO `asistencias` VALUES ('9408', '108', 'Gabriela Cevallos', 'Martes', '24/01/2017', null, null, '1', '2017-04-04 15:28:49', '2017-04-04 15:28:49');
INSERT INTO `asistencias` VALUES ('9409', '108', 'Gabriela Cevallos', 'Miércoles', '25/01/2017', null, null, '1', '2017-04-04 15:28:49', '2017-04-04 15:28:49');
INSERT INTO `asistencias` VALUES ('9410', '108', 'Gabriela Cevallos', 'Jueves', '26/01/2017', null, null, '1', '2017-04-04 15:28:49', '2017-04-04 15:28:49');
INSERT INTO `asistencias` VALUES ('9411', '108', 'Gabriela Cevallos', 'Viernes', '27/01/2017', null, null, '1', '2017-04-04 15:28:49', '2017-04-04 15:28:49');
INSERT INTO `asistencias` VALUES ('9412', '108', 'Gabriela Cevallos', 'Lunes', '30/01/2017', null, null, '1', '2017-04-04 15:28:49', '2017-04-04 15:28:49');
INSERT INTO `asistencias` VALUES ('9413', '108', 'Gabriela Cevallos', 'Martes', '31/01/2017', null, null, '1', '2017-04-04 15:28:49', '2017-04-04 15:28:49');
INSERT INTO `asistencias` VALUES ('9414', '12', 'GEMA NAUPARI', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:28:49', '2017-04-04 15:28:49');
INSERT INTO `asistencias` VALUES ('9415', '12', 'GEMA NAUPARI', 'Martes', '03/01/2017', '07:41:00', '17:03:00', null, '2017-04-04 15:28:49', '2017-04-04 15:28:49');
INSERT INTO `asistencias` VALUES ('9416', '12', 'GEMA NAUPARI', 'Miércoles', '04/01/2017', '08:13:00', '17:05:00', null, '2017-04-04 15:28:49', '2017-04-04 15:28:49');
INSERT INTO `asistencias` VALUES ('9417', '12', 'GEMA NAUPARI', 'Jueves', '05/01/2017', '09:12:00', '19:47:00', null, '2017-04-04 15:28:49', '2017-04-04 15:28:49');
INSERT INTO `asistencias` VALUES ('9418', '12', 'GEMA NAUPARI', 'Viernes', '06/01/2017', '08:28:00', '18:07:00', null, '2017-04-04 15:28:49', '2017-04-04 15:28:49');
INSERT INTO `asistencias` VALUES ('9419', '12', 'GEMA NAUPARI', 'Lunes', '09/01/2017', '08:57:00', '17:16:00', null, '2017-04-04 15:28:49', '2017-04-04 15:28:49');
INSERT INTO `asistencias` VALUES ('9420', '12', 'GEMA NAUPARI', 'Martes', '10/01/2017', '08:00:00', '17:21:00', null, '2017-04-04 15:28:49', '2017-04-04 15:28:49');
INSERT INTO `asistencias` VALUES ('9421', '12', 'GEMA NAUPARI', 'Miércoles', '11/01/2017', '08:15:00', '18:39:00', null, '2017-04-04 15:28:49', '2017-04-04 15:28:49');
INSERT INTO `asistencias` VALUES ('9422', '12', 'GEMA NAUPARI', 'Jueves', '12/01/2017', '08:22:00', '17:18:00', null, '2017-04-04 15:28:49', '2017-04-04 15:28:49');
INSERT INTO `asistencias` VALUES ('9423', '12', 'GEMA NAUPARI', 'Viernes', '13/01/2017', '08:49:00', '17:23:00', null, '2017-04-04 15:28:49', '2017-04-04 15:28:49');
INSERT INTO `asistencias` VALUES ('9424', '12', 'GEMA NAUPARI', 'Lunes', '16/01/2017', '08:27:00', '17:16:00', null, '2017-04-04 15:28:49', '2017-04-04 15:28:49');
INSERT INTO `asistencias` VALUES ('9425', '12', 'GEMA NAUPARI', 'Martes', '17/01/2017', '07:57:00', '17:10:00', null, '2017-04-04 15:28:49', '2017-04-04 15:28:49');
INSERT INTO `asistencias` VALUES ('9426', '12', 'GEMA NAUPARI', 'Miércoles', '18/01/2017', '09:00:00', '18:30:00', null, '2017-04-04 15:28:49', '2017-04-04 15:28:49');
INSERT INTO `asistencias` VALUES ('9427', '12', 'GEMA NAUPARI', 'Jueves', '19/01/2017', '09:18:00', '17:52:00', null, '2017-04-04 15:28:50', '2017-04-04 15:28:50');
INSERT INTO `asistencias` VALUES ('9428', '12', 'GEMA NAUPARI', 'Viernes', '20/01/2017', '08:45:00', '17:03:00', null, '2017-04-04 15:28:50', '2017-04-04 15:28:50');
INSERT INTO `asistencias` VALUES ('9429', '12', 'GEMA NAUPARI', 'Lunes', '23/01/2017', null, null, '1', '2017-04-04 15:28:50', '2017-04-04 15:28:50');
INSERT INTO `asistencias` VALUES ('9430', '12', 'GEMA NAUPARI', 'Martes', '24/01/2017', null, null, '1', '2017-04-04 15:28:50', '2017-04-04 15:28:50');
INSERT INTO `asistencias` VALUES ('9431', '12', 'GEMA NAUPARI', 'Miércoles', '25/01/2017', null, null, '1', '2017-04-04 15:28:50', '2017-04-04 15:28:50');
INSERT INTO `asistencias` VALUES ('9432', '12', 'GEMA NAUPARI', 'Jueves', '26/01/2017', null, null, '1', '2017-04-04 15:28:50', '2017-04-04 15:28:50');
INSERT INTO `asistencias` VALUES ('9433', '12', 'GEMA NAUPARI', 'Viernes', '27/01/2017', null, null, '1', '2017-04-04 15:28:50', '2017-04-04 15:28:50');
INSERT INTO `asistencias` VALUES ('9434', '12', 'GEMA NAUPARI', 'Lunes', '30/01/2017', null, null, '1', '2017-04-04 15:28:50', '2017-04-04 15:28:50');
INSERT INTO `asistencias` VALUES ('9435', '12', 'GEMA NAUPARI', 'Martes', '31/01/2017', null, null, '1', '2017-04-04 15:28:50', '2017-04-04 15:28:50');
INSERT INTO `asistencias` VALUES ('9436', '82', 'Gianpaolo Franke', 'Martes', '03/01/2017', '07:26:00', '16:51:00', null, '2017-04-04 15:28:50', '2017-04-04 15:28:50');
INSERT INTO `asistencias` VALUES ('9437', '82', 'Gianpaolo Franke', 'Miércoles', '04/01/2017', '07:44:00', '18:34:00', null, '2017-04-04 15:28:50', '2017-04-04 15:28:50');
INSERT INTO `asistencias` VALUES ('9438', '82', 'Gianpaolo Franke', 'Jueves', '05/01/2017', '07:53:00', '17:29:00', null, '2017-04-04 15:28:50', '2017-04-04 15:28:50');
INSERT INTO `asistencias` VALUES ('9439', '10', 'GILMA SAGBAY', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:28:50', '2017-04-04 15:28:50');
INSERT INTO `asistencias` VALUES ('9440', '10', 'GILMA SAGBAY', 'Martes', '03/01/2017', '08:03:00', '17:41:00', null, '2017-04-04 15:28:50', '2017-04-04 15:28:50');
INSERT INTO `asistencias` VALUES ('9441', '10', 'GILMA SAGBAY', 'Miércoles', '04/01/2017', '07:58:00', '17:55:00', null, '2017-04-04 15:28:50', '2017-04-04 15:28:50');
INSERT INTO `asistencias` VALUES ('9442', '10', 'GILMA SAGBAY', 'Jueves', '05/01/2017', '08:21:00', '19:06:00', null, '2017-04-04 15:28:50', '2017-04-04 15:28:50');
INSERT INTO `asistencias` VALUES ('9443', '10', 'GILMA SAGBAY', 'Viernes', '06/01/2017', null, null, '1', '2017-04-04 15:28:50', '2017-04-04 15:28:50');
INSERT INTO `asistencias` VALUES ('9444', '10', 'GILMA SAGBAY', 'Lunes', '09/01/2017', '08:40:00', '18:31:00', null, '2017-04-04 15:28:50', '2017-04-04 15:28:50');
INSERT INTO `asistencias` VALUES ('9445', '10', 'GILMA SAGBAY', 'Martes', '10/01/2017', '08:37:00', '18:12:00', null, '2017-04-04 15:28:50', '2017-04-04 15:28:50');
INSERT INTO `asistencias` VALUES ('9446', '10', 'GILMA SAGBAY', 'Miércoles', '11/01/2017', '08:09:00', '17:45:00', null, '2017-04-04 15:28:50', '2017-04-04 15:28:50');
INSERT INTO `asistencias` VALUES ('9447', '10', 'GILMA SAGBAY', 'Jueves', '12/01/2017', '08:12:00', '17:45:00', null, '2017-04-04 15:28:50', '2017-04-04 15:28:50');
INSERT INTO `asistencias` VALUES ('9448', '10', 'GILMA SAGBAY', 'Viernes', '13/01/2017', '08:14:00', null, null, '2017-04-04 15:28:50', '2017-04-04 15:28:50');
INSERT INTO `asistencias` VALUES ('9449', '10', 'GILMA SAGBAY', 'Lunes', '16/01/2017', '08:17:00', '17:34:00', null, '2017-04-04 15:28:50', '2017-04-04 15:28:50');
INSERT INTO `asistencias` VALUES ('9450', '10', 'GILMA SAGBAY', 'Martes', '17/01/2017', null, '17:48:00', null, '2017-04-04 15:28:50', '2017-04-04 15:28:50');
INSERT INTO `asistencias` VALUES ('9451', '10', 'GILMA SAGBAY', 'Miércoles', '18/01/2017', '08:10:00', '17:40:00', null, '2017-04-04 15:28:50', '2017-04-04 15:28:50');
INSERT INTO `asistencias` VALUES ('9452', '10', 'GILMA SAGBAY', 'Jueves', '19/01/2017', '08:03:00', '16:26:00', null, '2017-04-04 15:28:50', '2017-04-04 15:28:50');
INSERT INTO `asistencias` VALUES ('9453', '10', 'GILMA SAGBAY', 'Viernes', '20/01/2017', '08:02:00', '17:25:00', null, '2017-04-04 15:28:50', '2017-04-04 15:28:50');
INSERT INTO `asistencias` VALUES ('9454', '10', 'GILMA SAGBAY', 'Lunes', '23/01/2017', '08:21:00', '17:47:00', null, '2017-04-04 15:28:50', '2017-04-04 15:28:50');
INSERT INTO `asistencias` VALUES ('9455', '10', 'GILMA SAGBAY', 'Martes', '24/01/2017', '08:06:00', '17:36:00', null, '2017-04-04 15:28:50', '2017-04-04 15:28:50');
INSERT INTO `asistencias` VALUES ('9456', '10', 'GILMA SAGBAY', 'Miércoles', '25/01/2017', '08:09:00', '18:12:00', null, '2017-04-04 15:28:50', '2017-04-04 15:28:50');
INSERT INTO `asistencias` VALUES ('9457', '10', 'GILMA SAGBAY', 'Jueves', '26/01/2017', '07:54:00', '18:16:00', null, '2017-04-04 15:28:50', '2017-04-04 15:28:50');
INSERT INTO `asistencias` VALUES ('9458', '10', 'GILMA SAGBAY', 'Viernes', '27/01/2017', '08:03:00', '16:23:00', null, '2017-04-04 15:28:50', '2017-04-04 15:28:50');
INSERT INTO `asistencias` VALUES ('9459', '10', 'GILMA SAGBAY', 'Lunes', '30/01/2017', '08:22:00', '17:39:00', null, '2017-04-04 15:28:50', '2017-04-04 15:28:50');
INSERT INTO `asistencias` VALUES ('9460', '10', 'GILMA SAGBAY', 'Martes', '31/01/2017', '08:25:00', '18:02:00', null, '2017-04-04 15:28:50', '2017-04-04 15:28:50');
INSERT INTO `asistencias` VALUES ('9461', '37', 'Granja Amado', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:28:50', '2017-04-04 15:28:50');
INSERT INTO `asistencias` VALUES ('9462', '37', 'Granja Amado', 'Martes', '03/01/2017', null, null, '1', '2017-04-04 15:28:50', '2017-04-04 15:28:50');
INSERT INTO `asistencias` VALUES ('9463', '37', 'Granja Amado', 'Miércoles', '04/01/2017', null, null, '1', '2017-04-04 15:28:50', '2017-04-04 15:28:50');
INSERT INTO `asistencias` VALUES ('9464', '37', 'Granja Amado', 'Jueves', '05/01/2017', null, null, '1', '2017-04-04 15:28:50', '2017-04-04 15:28:50');
INSERT INTO `asistencias` VALUES ('9465', '37', 'Granja Amado', 'Viernes', '06/01/2017', null, null, '1', '2017-04-04 15:28:51', '2017-04-04 15:28:51');
INSERT INTO `asistencias` VALUES ('9466', '37', 'Granja Amado', 'Lunes', '09/01/2017', null, null, '1', '2017-04-04 15:28:51', '2017-04-04 15:28:51');
INSERT INTO `asistencias` VALUES ('9467', '37', 'Granja Amado', 'Martes', '10/01/2017', null, null, '1', '2017-04-04 15:28:51', '2017-04-04 15:28:51');
INSERT INTO `asistencias` VALUES ('9468', '37', 'Granja Amado', 'Miércoles', '11/01/2017', null, null, '1', '2017-04-04 15:28:51', '2017-04-04 15:28:51');
INSERT INTO `asistencias` VALUES ('9469', '37', 'Granja Amado', 'Jueves', '12/01/2017', null, null, '1', '2017-04-04 15:28:51', '2017-04-04 15:28:51');
INSERT INTO `asistencias` VALUES ('9470', '37', 'Granja Amado', 'Viernes', '13/01/2017', null, null, '1', '2017-04-04 15:28:51', '2017-04-04 15:28:51');
INSERT INTO `asistencias` VALUES ('9471', '37', 'Granja Amado', 'Lunes', '16/01/2017', null, null, '1', '2017-04-04 15:28:51', '2017-04-04 15:28:51');
INSERT INTO `asistencias` VALUES ('9472', '37', 'Granja Amado', 'Martes', '17/01/2017', null, null, '1', '2017-04-04 15:28:51', '2017-04-04 15:28:51');
INSERT INTO `asistencias` VALUES ('9473', '37', 'Granja Amado', 'Miércoles', '18/01/2017', null, null, '1', '2017-04-04 15:28:51', '2017-04-04 15:28:51');
INSERT INTO `asistencias` VALUES ('9474', '37', 'Granja Amado', 'Jueves', '19/01/2017', null, null, '1', '2017-04-04 15:28:51', '2017-04-04 15:28:51');
INSERT INTO `asistencias` VALUES ('9475', '37', 'Granja Amado', 'Viernes', '20/01/2017', null, null, '1', '2017-04-04 15:28:51', '2017-04-04 15:28:51');
INSERT INTO `asistencias` VALUES ('9476', '37', 'Granja Amado', 'Lunes', '23/01/2017', null, null, '1', '2017-04-04 15:28:51', '2017-04-04 15:28:51');
INSERT INTO `asistencias` VALUES ('9477', '37', 'Granja Amado', 'Martes', '24/01/2017', null, null, '1', '2017-04-04 15:28:51', '2017-04-04 15:28:51');
INSERT INTO `asistencias` VALUES ('9478', '37', 'Granja Amado', 'Miércoles', '25/01/2017', null, null, '1', '2017-04-04 15:28:51', '2017-04-04 15:28:51');
INSERT INTO `asistencias` VALUES ('9479', '37', 'Granja Amado', 'Jueves', '26/01/2017', null, null, '1', '2017-04-04 15:28:51', '2017-04-04 15:28:51');
INSERT INTO `asistencias` VALUES ('9480', '37', 'Granja Amado', 'Viernes', '27/01/2017', null, null, '1', '2017-04-04 15:28:51', '2017-04-04 15:28:51');
INSERT INTO `asistencias` VALUES ('9481', '37', 'Granja Amado', 'Lunes', '30/01/2017', null, null, '1', '2017-04-04 15:28:51', '2017-04-04 15:28:51');
INSERT INTO `asistencias` VALUES ('9482', '37', 'Granja Amado', 'Martes', '31/01/2017', null, null, '1', '2017-04-04 15:28:51', '2017-04-04 15:28:51');
INSERT INTO `asistencias` VALUES ('9483', '78', 'HENRY GUZMAN', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:28:51', '2017-04-04 15:28:51');
INSERT INTO `asistencias` VALUES ('9484', '78', 'HENRY GUZMAN', 'Martes', '03/01/2017', '08:35:00', '17:26:00', null, '2017-04-04 15:28:51', '2017-04-04 15:28:51');
INSERT INTO `asistencias` VALUES ('9485', '78', 'HENRY GUZMAN', 'Miércoles', '04/01/2017', '08:29:00', '17:17:00', null, '2017-04-04 15:28:51', '2017-04-04 15:28:51');
INSERT INTO `asistencias` VALUES ('9486', '78', 'HENRY GUZMAN', 'Jueves', '05/01/2017', '08:23:00', '17:14:00', null, '2017-04-04 15:28:51', '2017-04-04 15:28:51');
INSERT INTO `asistencias` VALUES ('9487', '78', 'HENRY GUZMAN', 'Viernes', '06/01/2017', '08:48:00', '17:30:00', null, '2017-04-04 15:28:51', '2017-04-04 15:28:51');
INSERT INTO `asistencias` VALUES ('9488', '78', 'HENRY GUZMAN', 'Lunes', '09/01/2017', '08:27:00', null, null, '2017-04-04 15:28:51', '2017-04-04 15:28:51');
INSERT INTO `asistencias` VALUES ('9489', '78', 'HENRY GUZMAN', 'Martes', '10/01/2017', '08:40:00', '18:56:00', null, '2017-04-04 15:28:51', '2017-04-04 15:28:51');
INSERT INTO `asistencias` VALUES ('9490', '78', 'HENRY GUZMAN', 'Miércoles', '11/01/2017', '08:26:00', '17:42:00', null, '2017-04-04 15:28:51', '2017-04-04 15:28:51');
INSERT INTO `asistencias` VALUES ('9491', '78', 'HENRY GUZMAN', 'Jueves', '12/01/2017', '08:22:00', '17:25:00', null, '2017-04-04 15:28:51', '2017-04-04 15:28:51');
INSERT INTO `asistencias` VALUES ('9492', '78', 'HENRY GUZMAN', 'Viernes', '13/01/2017', '08:25:00', '17:26:00', null, '2017-04-04 15:28:51', '2017-04-04 15:28:51');
INSERT INTO `asistencias` VALUES ('9493', '78', 'HENRY GUZMAN', 'Lunes', '16/01/2017', '08:33:00', '17:22:00', null, '2017-04-04 15:28:51', '2017-04-04 15:28:51');
INSERT INTO `asistencias` VALUES ('9494', '78', 'HENRY GUZMAN', 'Martes', '17/01/2017', '08:24:00', '17:36:00', null, '2017-04-04 15:28:51', '2017-04-04 15:28:51');
INSERT INTO `asistencias` VALUES ('9495', '78', 'HENRY GUZMAN', 'Miércoles', '18/01/2017', '08:28:00', '17:11:00', null, '2017-04-04 15:28:51', '2017-04-04 15:28:51');
INSERT INTO `asistencias` VALUES ('9496', '78', 'HENRY GUZMAN', 'Jueves', '19/01/2017', '08:21:00', '17:03:00', null, '2017-04-04 15:28:51', '2017-04-04 15:28:51');
INSERT INTO `asistencias` VALUES ('9497', '78', 'HENRY GUZMAN', 'Viernes', '20/01/2017', '08:26:00', '19:25:00', null, '2017-04-04 15:28:51', '2017-04-04 15:28:51');
INSERT INTO `asistencias` VALUES ('9498', '78', 'HENRY GUZMAN', 'Lunes', '23/01/2017', '08:27:00', '17:30:00', null, '2017-04-04 15:28:51', '2017-04-04 15:28:51');
INSERT INTO `asistencias` VALUES ('9499', '78', 'HENRY GUZMAN', 'Martes', '24/01/2017', '08:31:00', '18:39:00', null, '2017-04-04 15:28:51', '2017-04-04 15:28:51');
INSERT INTO `asistencias` VALUES ('9500', '78', 'HENRY GUZMAN', 'Miércoles', '25/01/2017', '08:22:00', '16:32:00', null, '2017-04-04 15:28:51', '2017-04-04 15:28:51');
INSERT INTO `asistencias` VALUES ('9501', '78', 'HENRY GUZMAN', 'Jueves', '26/01/2017', null, null, '1', '2017-04-04 15:28:51', '2017-04-04 15:28:51');
INSERT INTO `asistencias` VALUES ('9502', '78', 'HENRY GUZMAN', 'Viernes', '27/01/2017', '08:25:00', '17:08:00', null, '2017-04-04 15:28:51', '2017-04-04 15:28:51');
INSERT INTO `asistencias` VALUES ('9503', '78', 'HENRY GUZMAN', 'Lunes', '30/01/2017', '08:14:00', '17:16:00', null, '2017-04-04 15:28:51', '2017-04-04 15:28:51');
INSERT INTO `asistencias` VALUES ('9504', '78', 'HENRY GUZMAN', 'Martes', '31/01/2017', '08:26:00', '17:12:00', null, '2017-04-04 15:28:52', '2017-04-04 15:28:52');
INSERT INTO `asistencias` VALUES ('9505', '11', 'HERNAN CASTILLO', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:28:52', '2017-04-04 15:28:52');
INSERT INTO `asistencias` VALUES ('9506', '11', 'HERNAN CASTILLO', 'Martes', '03/01/2017', '08:06:00', '17:01:00', null, '2017-04-04 15:28:52', '2017-04-04 15:28:52');
INSERT INTO `asistencias` VALUES ('9507', '11', 'HERNAN CASTILLO', 'Miércoles', '04/01/2017', '08:05:00', '17:02:00', null, '2017-04-04 15:28:52', '2017-04-04 15:28:52');
INSERT INTO `asistencias` VALUES ('9508', '11', 'HERNAN CASTILLO', 'Jueves', '05/01/2017', '08:07:00', '17:32:00', null, '2017-04-04 15:28:52', '2017-04-04 15:28:52');
INSERT INTO `asistencias` VALUES ('9509', '11', 'HERNAN CASTILLO', 'Viernes', '06/01/2017', '08:19:00', '16:54:00', null, '2017-04-04 15:28:52', '2017-04-04 15:28:52');
INSERT INTO `asistencias` VALUES ('9510', '11', 'HERNAN CASTILLO', 'Lunes', '09/01/2017', null, null, '1', '2017-04-04 15:28:52', '2017-04-04 15:28:52');
INSERT INTO `asistencias` VALUES ('9511', '11', 'HERNAN CASTILLO', 'Martes', '10/01/2017', '08:25:00', '17:01:00', null, '2017-04-04 15:28:52', '2017-04-04 15:28:52');
INSERT INTO `asistencias` VALUES ('9512', '11', 'HERNAN CASTILLO', 'Miércoles', '11/01/2017', '08:08:00', '16:59:00', null, '2017-04-04 15:28:52', '2017-04-04 15:28:52');
INSERT INTO `asistencias` VALUES ('9513', '11', 'HERNAN CASTILLO', 'Jueves', '12/01/2017', '08:00:00', '16:58:00', null, '2017-04-04 15:28:52', '2017-04-04 15:28:52');
INSERT INTO `asistencias` VALUES ('9514', '11', 'HERNAN CASTILLO', 'Viernes', '13/01/2017', '08:11:00', '15:19:00', null, '2017-04-04 15:28:52', '2017-04-04 15:28:52');
INSERT INTO `asistencias` VALUES ('9515', '11', 'HERNAN CASTILLO', 'Lunes', '16/01/2017', '08:13:00', '16:58:00', null, '2017-04-04 15:28:52', '2017-04-04 15:28:52');
INSERT INTO `asistencias` VALUES ('9516', '11', 'HERNAN CASTILLO', 'Martes', '17/01/2017', '08:11:00', '16:58:00', null, '2017-04-04 15:28:52', '2017-04-04 15:28:52');
INSERT INTO `asistencias` VALUES ('9517', '11', 'HERNAN CASTILLO', 'Miércoles', '18/01/2017', '08:07:00', '16:59:00', null, '2017-04-04 15:28:52', '2017-04-04 15:28:52');
INSERT INTO `asistencias` VALUES ('9518', '11', 'HERNAN CASTILLO', 'Jueves', '19/01/2017', null, '16:59:00', null, '2017-04-04 15:28:52', '2017-04-04 15:28:52');
INSERT INTO `asistencias` VALUES ('9519', '11', 'HERNAN CASTILLO', 'Viernes', '20/01/2017', '07:53:00', '16:47:00', null, '2017-04-04 15:28:52', '2017-04-04 15:28:52');
INSERT INTO `asistencias` VALUES ('9520', '11', 'HERNAN CASTILLO', 'Lunes', '23/01/2017', '08:14:00', '16:58:00', null, '2017-04-04 15:28:52', '2017-04-04 15:28:52');
INSERT INTO `asistencias` VALUES ('9521', '11', 'HERNAN CASTILLO', 'Martes', '24/01/2017', '08:12:00', '16:59:00', null, '2017-04-04 15:28:52', '2017-04-04 15:28:52');
INSERT INTO `asistencias` VALUES ('9522', '11', 'HERNAN CASTILLO', 'Miércoles', '25/01/2017', '08:11:00', '16:59:00', null, '2017-04-04 15:28:52', '2017-04-04 15:28:52');
INSERT INTO `asistencias` VALUES ('9523', '11', 'HERNAN CASTILLO', 'Jueves', '26/01/2017', '08:20:00', '17:01:00', null, '2017-04-04 15:28:52', '2017-04-04 15:28:52');
INSERT INTO `asistencias` VALUES ('9524', '11', 'HERNAN CASTILLO', 'Viernes', '27/01/2017', '08:08:00', '17:00:00', null, '2017-04-04 15:28:52', '2017-04-04 15:28:52');
INSERT INTO `asistencias` VALUES ('9525', '11', 'HERNAN CASTILLO', 'Lunes', '30/01/2017', '08:16:00', '16:58:00', null, '2017-04-04 15:28:52', '2017-04-04 15:28:52');
INSERT INTO `asistencias` VALUES ('9526', '11', 'HERNAN CASTILLO', 'Martes', '31/01/2017', '08:12:00', '17:00:00', null, '2017-04-04 15:28:52', '2017-04-04 15:28:52');
INSERT INTO `asistencias` VALUES ('9527', '43', 'HUMBERTO ORDONEZ', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:28:52', '2017-04-04 15:28:52');
INSERT INTO `asistencias` VALUES ('9528', '43', 'HUMBERTO ORDONEZ', 'Martes', '03/01/2017', '08:37:00', '17:01:00', null, '2017-04-04 15:28:52', '2017-04-04 15:28:52');
INSERT INTO `asistencias` VALUES ('9529', '43', 'HUMBERTO ORDONEZ', 'Miércoles', '04/01/2017', '08:37:00', null, null, '2017-04-04 15:28:52', '2017-04-04 15:28:52');
INSERT INTO `asistencias` VALUES ('9530', '43', 'HUMBERTO ORDONEZ', 'Jueves', '05/01/2017', null, null, '1', '2017-04-04 15:28:52', '2017-04-04 15:28:52');
INSERT INTO `asistencias` VALUES ('9531', '43', 'HUMBERTO ORDONEZ', 'Viernes', '06/01/2017', null, '17:01:00', null, '2017-04-04 15:28:52', '2017-04-04 15:28:52');
INSERT INTO `asistencias` VALUES ('9532', '43', 'HUMBERTO ORDONEZ', 'Lunes', '09/01/2017', null, null, '1', '2017-04-04 15:28:52', '2017-04-04 15:28:52');
INSERT INTO `asistencias` VALUES ('9533', '43', 'HUMBERTO ORDONEZ', 'Martes', '10/01/2017', null, '17:01:00', null, '2017-04-04 15:28:52', '2017-04-04 15:28:52');
INSERT INTO `asistencias` VALUES ('9534', '43', 'HUMBERTO ORDONEZ', 'Miércoles', '11/01/2017', '08:19:00', null, null, '2017-04-04 15:28:52', '2017-04-04 15:28:52');
INSERT INTO `asistencias` VALUES ('9535', '43', 'HUMBERTO ORDONEZ', 'Jueves', '12/01/2017', null, '17:05:00', null, '2017-04-04 15:28:52', '2017-04-04 15:28:52');
INSERT INTO `asistencias` VALUES ('9536', '43', 'HUMBERTO ORDONEZ', 'Viernes', '13/01/2017', '08:26:00', '17:04:00', null, '2017-04-04 15:28:52', '2017-04-04 15:28:52');
INSERT INTO `asistencias` VALUES ('9537', '43', 'HUMBERTO ORDONEZ', 'Lunes', '16/01/2017', '07:59:00', '17:00:00', null, '2017-04-04 15:28:52', '2017-04-04 15:28:52');
INSERT INTO `asistencias` VALUES ('9538', '43', 'HUMBERTO ORDONEZ', 'Martes', '17/01/2017', '08:27:00', '17:00:00', null, '2017-04-04 15:28:52', '2017-04-04 15:28:52');
INSERT INTO `asistencias` VALUES ('9539', '43', 'HUMBERTO ORDONEZ', 'Miércoles', '18/01/2017', null, null, '1', '2017-04-04 15:28:52', '2017-04-04 15:28:52');
INSERT INTO `asistencias` VALUES ('9540', '43', 'HUMBERTO ORDONEZ', 'Jueves', '19/01/2017', null, null, '1', '2017-04-04 15:28:52', '2017-04-04 15:28:52');
INSERT INTO `asistencias` VALUES ('9541', '43', 'HUMBERTO ORDONEZ', 'Viernes', '20/01/2017', '07:39:00', '17:00:00', null, '2017-04-04 15:28:52', '2017-04-04 15:28:52');
INSERT INTO `asistencias` VALUES ('9542', '43', 'HUMBERTO ORDONEZ', 'Lunes', '23/01/2017', '07:55:00', null, null, '2017-04-04 15:28:53', '2017-04-04 15:28:53');
INSERT INTO `asistencias` VALUES ('9543', '43', 'HUMBERTO ORDONEZ', 'Martes', '24/01/2017', null, null, '1', '2017-04-04 15:28:53', '2017-04-04 15:28:53');
INSERT INTO `asistencias` VALUES ('9544', '43', 'HUMBERTO ORDONEZ', 'Miércoles', '25/01/2017', null, null, '1', '2017-04-04 15:28:53', '2017-04-04 15:28:53');
INSERT INTO `asistencias` VALUES ('9545', '43', 'HUMBERTO ORDONEZ', 'Jueves', '26/01/2017', null, null, '1', '2017-04-04 15:28:53', '2017-04-04 15:28:53');
INSERT INTO `asistencias` VALUES ('9546', '43', 'HUMBERTO ORDONEZ', 'Viernes', '27/01/2017', null, null, '1', '2017-04-04 15:28:53', '2017-04-04 15:28:53');
INSERT INTO `asistencias` VALUES ('9547', '43', 'HUMBERTO ORDONEZ', 'Lunes', '30/01/2017', null, null, '1', '2017-04-04 15:28:53', '2017-04-04 15:28:53');
INSERT INTO `asistencias` VALUES ('9548', '43', 'HUMBERTO ORDONEZ', 'Martes', '31/01/2017', null, null, '1', '2017-04-04 15:28:53', '2017-04-04 15:28:53');
INSERT INTO `asistencias` VALUES ('9549', '13', 'IDILIA REINOSO', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:28:53', '2017-04-04 15:28:53');
INSERT INTO `asistencias` VALUES ('9550', '13', 'IDILIA REINOSO', 'Martes', '03/01/2017', '08:27:00', '17:08:00', null, '2017-04-04 15:28:53', '2017-04-04 15:28:53');
INSERT INTO `asistencias` VALUES ('9551', '13', 'IDILIA REINOSO', 'Miércoles', '04/01/2017', '08:33:00', '17:00:00', null, '2017-04-04 15:28:53', '2017-04-04 15:28:53');
INSERT INTO `asistencias` VALUES ('9552', '13', 'IDILIA REINOSO', 'Jueves', '05/01/2017', '08:28:00', '17:03:00', null, '2017-04-04 15:28:53', '2017-04-04 15:28:53');
INSERT INTO `asistencias` VALUES ('9553', '13', 'IDILIA REINOSO', 'Viernes', '06/01/2017', '08:37:00', '17:00:00', null, '2017-04-04 15:28:53', '2017-04-04 15:28:53');
INSERT INTO `asistencias` VALUES ('9554', '13', 'IDILIA REINOSO', 'Lunes', '09/01/2017', '08:33:00', '17:00:00', null, '2017-04-04 15:28:53', '2017-04-04 15:28:53');
INSERT INTO `asistencias` VALUES ('9555', '13', 'IDILIA REINOSO', 'Martes', '10/01/2017', '08:29:00', '17:03:00', null, '2017-04-04 15:28:53', '2017-04-04 15:28:53');
INSERT INTO `asistencias` VALUES ('9556', '13', 'IDILIA REINOSO', 'Miércoles', '11/01/2017', '08:24:00', '17:01:00', null, '2017-04-04 15:28:53', '2017-04-04 15:28:53');
INSERT INTO `asistencias` VALUES ('9557', '13', 'IDILIA REINOSO', 'Jueves', '12/01/2017', null, null, '1', '2017-04-04 15:28:53', '2017-04-04 15:28:53');
INSERT INTO `asistencias` VALUES ('9558', '13', 'IDILIA REINOSO', 'Viernes', '13/01/2017', '08:35:00', '17:03:00', null, '2017-04-04 15:28:53', '2017-04-04 15:28:53');
INSERT INTO `asistencias` VALUES ('9559', '13', 'IDILIA REINOSO', 'Lunes', '16/01/2017', '08:32:00', '17:07:00', null, '2017-04-04 15:28:53', '2017-04-04 15:28:53');
INSERT INTO `asistencias` VALUES ('9560', '13', 'IDILIA REINOSO', 'Martes', '17/01/2017', '08:28:00', '17:04:00', null, '2017-04-04 15:28:53', '2017-04-04 15:28:53');
INSERT INTO `asistencias` VALUES ('9561', '13', 'IDILIA REINOSO', 'Miércoles', '18/01/2017', '08:29:00', '17:01:00', null, '2017-04-04 15:28:53', '2017-04-04 15:28:53');
INSERT INTO `asistencias` VALUES ('9562', '13', 'IDILIA REINOSO', 'Jueves', '19/01/2017', '08:13:00', '17:02:00', null, '2017-04-04 15:28:53', '2017-04-04 15:28:53');
INSERT INTO `asistencias` VALUES ('9563', '13', 'IDILIA REINOSO', 'Viernes', '20/01/2017', '08:42:00', '11:12:00', null, '2017-04-04 15:28:53', '2017-04-04 15:28:53');
INSERT INTO `asistencias` VALUES ('9564', '13', 'IDILIA REINOSO', 'Lunes', '23/01/2017', '08:29:00', '17:16:00', null, '2017-04-04 15:28:53', '2017-04-04 15:28:53');
INSERT INTO `asistencias` VALUES ('9565', '13', 'IDILIA REINOSO', 'Martes', '24/01/2017', '08:33:00', '17:01:00', null, '2017-04-04 15:28:53', '2017-04-04 15:28:53');
INSERT INTO `asistencias` VALUES ('9566', '13', 'IDILIA REINOSO', 'Miércoles', '25/01/2017', '08:24:00', '17:00:00', null, '2017-04-04 15:28:53', '2017-04-04 15:28:53');
INSERT INTO `asistencias` VALUES ('9567', '13', 'IDILIA REINOSO', 'Jueves', '26/01/2017', '08:33:00', '17:12:00', null, '2017-04-04 15:28:53', '2017-04-04 15:28:53');
INSERT INTO `asistencias` VALUES ('9568', '13', 'IDILIA REINOSO', 'Viernes', '27/01/2017', '08:32:00', '17:01:00', null, '2017-04-04 15:28:53', '2017-04-04 15:28:53');
INSERT INTO `asistencias` VALUES ('9569', '13', 'IDILIA REINOSO', 'Lunes', '30/01/2017', '08:30:00', '17:12:00', null, '2017-04-04 15:28:53', '2017-04-04 15:28:53');
INSERT INTO `asistencias` VALUES ('9570', '13', 'IDILIA REINOSO', 'Martes', '31/01/2017', '08:24:00', '16:58:00', null, '2017-04-04 15:28:53', '2017-04-04 15:28:53');
INSERT INTO `asistencias` VALUES ('9571', '21', 'Illapa Lenin', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:28:54', '2017-04-04 15:28:54');
INSERT INTO `asistencias` VALUES ('9572', '21', 'Illapa Lenin', 'Martes', '03/01/2017', null, null, '1', '2017-04-04 15:28:54', '2017-04-04 15:28:54');
INSERT INTO `asistencias` VALUES ('9573', '21', 'Illapa Lenin', 'Miércoles', '04/01/2017', null, null, '1', '2017-04-04 15:28:54', '2017-04-04 15:28:54');
INSERT INTO `asistencias` VALUES ('9574', '21', 'Illapa Lenin', 'Jueves', '05/01/2017', null, null, '1', '2017-04-04 15:28:54', '2017-04-04 15:28:54');
INSERT INTO `asistencias` VALUES ('9575', '21', 'Illapa Lenin', 'Viernes', '06/01/2017', null, null, '1', '2017-04-04 15:28:54', '2017-04-04 15:28:54');
INSERT INTO `asistencias` VALUES ('9576', '21', 'Illapa Lenin', 'Lunes', '09/01/2017', null, null, '1', '2017-04-04 15:28:54', '2017-04-04 15:28:54');
INSERT INTO `asistencias` VALUES ('9577', '21', 'Illapa Lenin', 'Martes', '10/01/2017', null, null, '1', '2017-04-04 15:28:54', '2017-04-04 15:28:54');
INSERT INTO `asistencias` VALUES ('9578', '21', 'Illapa Lenin', 'Miércoles', '11/01/2017', null, null, '1', '2017-04-04 15:28:54', '2017-04-04 15:28:54');
INSERT INTO `asistencias` VALUES ('9579', '21', 'Illapa Lenin', 'Jueves', '12/01/2017', null, null, '1', '2017-04-04 15:28:54', '2017-04-04 15:28:54');
INSERT INTO `asistencias` VALUES ('9580', '21', 'Illapa Lenin', 'Viernes', '13/01/2017', null, null, '1', '2017-04-04 15:28:54', '2017-04-04 15:28:54');
INSERT INTO `asistencias` VALUES ('9581', '21', 'Illapa Lenin', 'Lunes', '16/01/2017', null, null, '1', '2017-04-04 15:28:54', '2017-04-04 15:28:54');
INSERT INTO `asistencias` VALUES ('9582', '21', 'Illapa Lenin', 'Martes', '17/01/2017', null, null, '1', '2017-04-04 15:28:54', '2017-04-04 15:28:54');
INSERT INTO `asistencias` VALUES ('9583', '21', 'Illapa Lenin', 'Miércoles', '18/01/2017', null, null, '1', '2017-04-04 15:28:54', '2017-04-04 15:28:54');
INSERT INTO `asistencias` VALUES ('9584', '21', 'Illapa Lenin', 'Jueves', '19/01/2017', null, null, '1', '2017-04-04 15:28:54', '2017-04-04 15:28:54');
INSERT INTO `asistencias` VALUES ('9585', '21', 'Illapa Lenin', 'Viernes', '20/01/2017', null, null, '1', '2017-04-04 15:28:54', '2017-04-04 15:28:54');
INSERT INTO `asistencias` VALUES ('9586', '21', 'Illapa Lenin', 'Lunes', '23/01/2017', null, null, '1', '2017-04-04 15:28:54', '2017-04-04 15:28:54');
INSERT INTO `asistencias` VALUES ('9587', '21', 'Illapa Lenin', 'Martes', '24/01/2017', null, null, '1', '2017-04-04 15:28:54', '2017-04-04 15:28:54');
INSERT INTO `asistencias` VALUES ('9588', '21', 'Illapa Lenin', 'Miércoles', '25/01/2017', null, null, '1', '2017-04-04 15:28:54', '2017-04-04 15:28:54');
INSERT INTO `asistencias` VALUES ('9589', '21', 'Illapa Lenin', 'Jueves', '26/01/2017', null, null, '1', '2017-04-04 15:28:54', '2017-04-04 15:28:54');
INSERT INTO `asistencias` VALUES ('9590', '21', 'Illapa Lenin', 'Viernes', '27/01/2017', null, null, '1', '2017-04-04 15:28:54', '2017-04-04 15:28:54');
INSERT INTO `asistencias` VALUES ('9591', '21', 'Illapa Lenin', 'Lunes', '30/01/2017', null, null, '1', '2017-04-04 15:28:54', '2017-04-04 15:28:54');
INSERT INTO `asistencias` VALUES ('9592', '21', 'Illapa Lenin', 'Martes', '31/01/2017', null, null, '1', '2017-04-04 15:28:54', '2017-04-04 15:28:54');
INSERT INTO `asistencias` VALUES ('9593', '18', 'Jácome Carlos', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:28:54', '2017-04-04 15:28:54');
INSERT INTO `asistencias` VALUES ('9594', '18', 'Jácome Carlos', 'Martes', '03/01/2017', null, null, '1', '2017-04-04 15:28:54', '2017-04-04 15:28:54');
INSERT INTO `asistencias` VALUES ('9595', '18', 'Jácome Carlos', 'Miércoles', '04/01/2017', null, null, '1', '2017-04-04 15:28:54', '2017-04-04 15:28:54');
INSERT INTO `asistencias` VALUES ('9596', '18', 'Jácome Carlos', 'Jueves', '05/01/2017', null, null, '1', '2017-04-04 15:28:54', '2017-04-04 15:28:54');
INSERT INTO `asistencias` VALUES ('9597', '18', 'Jácome Carlos', 'Viernes', '06/01/2017', null, null, '1', '2017-04-04 15:28:54', '2017-04-04 15:28:54');
INSERT INTO `asistencias` VALUES ('9598', '18', 'Jácome Carlos', 'Lunes', '09/01/2017', null, null, '1', '2017-04-04 15:28:54', '2017-04-04 15:28:54');
INSERT INTO `asistencias` VALUES ('9599', '18', 'Jácome Carlos', 'Martes', '10/01/2017', null, null, '1', '2017-04-04 15:28:54', '2017-04-04 15:28:54');
INSERT INTO `asistencias` VALUES ('9600', '18', 'Jácome Carlos', 'Miércoles', '11/01/2017', null, null, '1', '2017-04-04 15:28:54', '2017-04-04 15:28:54');
INSERT INTO `asistencias` VALUES ('9601', '18', 'Jácome Carlos', 'Jueves', '12/01/2017', null, null, '1', '2017-04-04 15:28:54', '2017-04-04 15:28:54');
INSERT INTO `asistencias` VALUES ('9602', '18', 'Jácome Carlos', 'Viernes', '13/01/2017', null, null, '1', '2017-04-04 15:28:54', '2017-04-04 15:28:54');
INSERT INTO `asistencias` VALUES ('9603', '18', 'Jácome Carlos', 'Lunes', '16/01/2017', null, null, '1', '2017-04-04 15:28:54', '2017-04-04 15:28:54');
INSERT INTO `asistencias` VALUES ('9604', '18', 'Jácome Carlos', 'Martes', '17/01/2017', null, null, '1', '2017-04-04 15:28:54', '2017-04-04 15:28:54');
INSERT INTO `asistencias` VALUES ('9605', '18', 'Jácome Carlos', 'Miércoles', '18/01/2017', null, null, '1', '2017-04-04 15:28:55', '2017-04-04 15:28:55');
INSERT INTO `asistencias` VALUES ('9606', '18', 'Jácome Carlos', 'Jueves', '19/01/2017', null, null, '1', '2017-04-04 15:28:55', '2017-04-04 15:28:55');
INSERT INTO `asistencias` VALUES ('9607', '18', 'Jácome Carlos', 'Viernes', '20/01/2017', null, null, '1', '2017-04-04 15:28:55', '2017-04-04 15:28:55');
INSERT INTO `asistencias` VALUES ('9608', '18', 'Jácome Carlos', 'Lunes', '23/01/2017', null, null, '1', '2017-04-04 15:28:55', '2017-04-04 15:28:55');
INSERT INTO `asistencias` VALUES ('9609', '18', 'Jácome Carlos', 'Martes', '24/01/2017', null, null, '1', '2017-04-04 15:28:55', '2017-04-04 15:28:55');
INSERT INTO `asistencias` VALUES ('9610', '18', 'Jácome Carlos', 'Miércoles', '25/01/2017', null, null, '1', '2017-04-04 15:28:55', '2017-04-04 15:28:55');
INSERT INTO `asistencias` VALUES ('9611', '18', 'Jácome Carlos', 'Jueves', '26/01/2017', null, null, '1', '2017-04-04 15:28:55', '2017-04-04 15:28:55');
INSERT INTO `asistencias` VALUES ('9612', '18', 'Jácome Carlos', 'Viernes', '27/01/2017', null, null, '1', '2017-04-04 15:28:55', '2017-04-04 15:28:55');
INSERT INTO `asistencias` VALUES ('9613', '18', 'Jácome Carlos', 'Lunes', '30/01/2017', null, null, '1', '2017-04-04 15:28:55', '2017-04-04 15:28:55');
INSERT INTO `asistencias` VALUES ('9614', '18', 'Jácome Carlos', 'Martes', '31/01/2017', null, null, '1', '2017-04-04 15:28:55', '2017-04-04 15:28:55');
INSERT INTO `asistencias` VALUES ('9615', '71', 'JAIRO BENALCAZAR', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:28:55', '2017-04-04 15:28:55');
INSERT INTO `asistencias` VALUES ('9616', '71', 'JAIRO BENALCAZAR', 'Martes', '03/01/2017', null, '15:23:00', null, '2017-04-04 15:28:55', '2017-04-04 15:28:55');
INSERT INTO `asistencias` VALUES ('9617', '71', 'JAIRO BENALCAZAR', 'Miércoles', '04/01/2017', null, '16:09:00', null, '2017-04-04 15:28:55', '2017-04-04 15:28:55');
INSERT INTO `asistencias` VALUES ('9618', '71', 'JAIRO BENALCAZAR', 'Jueves', '05/01/2017', null, null, '1', '2017-04-04 15:28:55', '2017-04-04 15:28:55');
INSERT INTO `asistencias` VALUES ('9619', '71', 'JAIRO BENALCAZAR', 'Viernes', '06/01/2017', null, null, '1', '2017-04-04 15:28:55', '2017-04-04 15:28:55');
INSERT INTO `asistencias` VALUES ('9620', '71', 'JAIRO BENALCAZAR', 'Lunes', '09/01/2017', null, null, '1', '2017-04-04 15:28:55', '2017-04-04 15:28:55');
INSERT INTO `asistencias` VALUES ('9621', '71', 'JAIRO BENALCAZAR', 'Martes', '10/01/2017', null, null, '1', '2017-04-04 15:28:55', '2017-04-04 15:28:55');
INSERT INTO `asistencias` VALUES ('9622', '71', 'JAIRO BENALCAZAR', 'Miércoles', '11/01/2017', null, null, '1', '2017-04-04 15:28:55', '2017-04-04 15:28:55');
INSERT INTO `asistencias` VALUES ('9623', '71', 'JAIRO BENALCAZAR', 'Jueves', '12/01/2017', null, null, '1', '2017-04-04 15:28:55', '2017-04-04 15:28:55');
INSERT INTO `asistencias` VALUES ('9624', '71', 'JAIRO BENALCAZAR', 'Viernes', '13/01/2017', null, null, '1', '2017-04-04 15:28:55', '2017-04-04 15:28:55');
INSERT INTO `asistencias` VALUES ('9625', '71', 'JAIRO BENALCAZAR', 'Lunes', '16/01/2017', null, null, '1', '2017-04-04 15:28:55', '2017-04-04 15:28:55');
INSERT INTO `asistencias` VALUES ('9626', '71', 'JAIRO BENALCAZAR', 'Martes', '17/01/2017', null, null, '1', '2017-04-04 15:28:55', '2017-04-04 15:28:55');
INSERT INTO `asistencias` VALUES ('9627', '71', 'JAIRO BENALCAZAR', 'Miércoles', '18/01/2017', null, '11:26:00', null, '2017-04-04 15:28:55', '2017-04-04 15:28:55');
INSERT INTO `asistencias` VALUES ('9628', '71', 'JAIRO BENALCAZAR', 'Jueves', '19/01/2017', null, null, '1', '2017-04-04 15:28:55', '2017-04-04 15:28:55');
INSERT INTO `asistencias` VALUES ('9629', '71', 'JAIRO BENALCAZAR', 'Viernes', '20/01/2017', null, null, '1', '2017-04-04 15:28:55', '2017-04-04 15:28:55');
INSERT INTO `asistencias` VALUES ('9630', '71', 'JAIRO BENALCAZAR', 'Lunes', '23/01/2017', null, null, '1', '2017-04-04 15:28:55', '2017-04-04 15:28:55');
INSERT INTO `asistencias` VALUES ('9631', '71', 'JAIRO BENALCAZAR', 'Martes', '24/01/2017', null, null, '1', '2017-04-04 15:28:55', '2017-04-04 15:28:55');
INSERT INTO `asistencias` VALUES ('9632', '71', 'JAIRO BENALCAZAR', 'Miércoles', '25/01/2017', null, null, '1', '2017-04-04 15:28:55', '2017-04-04 15:28:55');
INSERT INTO `asistencias` VALUES ('9633', '71', 'JAIRO BENALCAZAR', 'Jueves', '26/01/2017', null, null, '1', '2017-04-04 15:28:55', '2017-04-04 15:28:55');
INSERT INTO `asistencias` VALUES ('9634', '71', 'JAIRO BENALCAZAR', 'Viernes', '27/01/2017', null, '17:02:00', null, '2017-04-04 15:28:55', '2017-04-04 15:28:55');
INSERT INTO `asistencias` VALUES ('9635', '71', 'JAIRO BENALCAZAR', 'Lunes', '30/01/2017', '09:05:00', null, null, '2017-04-04 15:28:55', '2017-04-04 15:28:55');
INSERT INTO `asistencias` VALUES ('9636', '71', 'JAIRO BENALCAZAR', 'Martes', '31/01/2017', null, null, '1', '2017-04-04 15:28:55', '2017-04-04 15:28:55');
INSERT INTO `asistencias` VALUES ('9637', '101', 'Jairo Rey', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:28:55', '2017-04-04 15:28:55');
INSERT INTO `asistencias` VALUES ('9638', '101', 'Jairo Rey', 'Martes', '03/01/2017', '08:19:00', '17:11:00', null, '2017-04-04 15:28:55', '2017-04-04 15:28:55');
INSERT INTO `asistencias` VALUES ('9639', '101', 'Jairo Rey', 'Miércoles', '04/01/2017', '08:29:00', '17:15:00', null, '2017-04-04 15:28:55', '2017-04-04 15:28:55');
INSERT INTO `asistencias` VALUES ('9640', '101', 'Jairo Rey', 'Jueves', '05/01/2017', '08:49:00', '17:10:00', null, '2017-04-04 15:28:55', '2017-04-04 15:28:55');
INSERT INTO `asistencias` VALUES ('9641', '101', 'Jairo Rey', 'Viernes', '06/01/2017', '08:45:00', '17:06:00', null, '2017-04-04 15:28:56', '2017-04-04 15:28:56');
INSERT INTO `asistencias` VALUES ('9642', '101', 'Jairo Rey', 'Lunes', '09/01/2017', '08:51:00', '17:03:00', null, '2017-04-04 15:28:56', '2017-04-04 15:28:56');
INSERT INTO `asistencias` VALUES ('9643', '101', 'Jairo Rey', 'Martes', '10/01/2017', '08:40:00', '17:54:00', null, '2017-04-04 15:28:56', '2017-04-04 15:28:56');
INSERT INTO `asistencias` VALUES ('9644', '101', 'Jairo Rey', 'Miércoles', '11/01/2017', '08:32:00', '17:56:00', null, '2017-04-04 15:28:56', '2017-04-04 15:28:56');
INSERT INTO `asistencias` VALUES ('9645', '101', 'Jairo Rey', 'Jueves', '12/01/2017', '08:32:00', '19:55:00', null, '2017-04-04 15:28:56', '2017-04-04 15:28:56');
INSERT INTO `asistencias` VALUES ('9646', '101', 'Jairo Rey', 'Viernes', '13/01/2017', '08:37:00', '17:01:00', null, '2017-04-04 15:28:56', '2017-04-04 15:28:56');
INSERT INTO `asistencias` VALUES ('9647', '101', 'Jairo Rey', 'Lunes', '16/01/2017', null, '17:17:00', null, '2017-04-04 15:28:56', '2017-04-04 15:28:56');
INSERT INTO `asistencias` VALUES ('9648', '101', 'Jairo Rey', 'Martes', '17/01/2017', '08:19:00', '18:13:00', null, '2017-04-04 15:28:56', '2017-04-04 15:28:56');
INSERT INTO `asistencias` VALUES ('9649', '101', 'Jairo Rey', 'Miércoles', '18/01/2017', '08:29:00', '17:27:00', null, '2017-04-04 15:28:56', '2017-04-04 15:28:56');
INSERT INTO `asistencias` VALUES ('9650', '101', 'Jairo Rey', 'Jueves', '19/01/2017', '08:31:00', '17:38:00', null, '2017-04-04 15:28:56', '2017-04-04 15:28:56');
INSERT INTO `asistencias` VALUES ('9651', '101', 'Jairo Rey', 'Viernes', '20/01/2017', '08:33:00', '17:06:00', null, '2017-04-04 15:28:56', '2017-04-04 15:28:56');
INSERT INTO `asistencias` VALUES ('9652', '101', 'Jairo Rey', 'Lunes', '23/01/2017', '08:37:00', '17:43:00', null, '2017-04-04 15:28:56', '2017-04-04 15:28:56');
INSERT INTO `asistencias` VALUES ('9653', '101', 'Jairo Rey', 'Martes', '24/01/2017', '08:28:00', '17:48:00', null, '2017-04-04 15:28:56', '2017-04-04 15:28:56');
INSERT INTO `asistencias` VALUES ('9654', '101', 'Jairo Rey', 'Miércoles', '25/01/2017', '06:44:00', '15:27:00', null, '2017-04-04 15:28:56', '2017-04-04 15:28:56');
INSERT INTO `asistencias` VALUES ('9655', '101', 'Jairo Rey', 'Jueves', '26/01/2017', '08:24:00', '17:08:00', null, '2017-04-04 15:28:56', '2017-04-04 15:28:56');
INSERT INTO `asistencias` VALUES ('9656', '101', 'Jairo Rey', 'Viernes', '27/01/2017', '08:17:00', '17:01:00', null, '2017-04-04 15:28:56', '2017-04-04 15:28:56');
INSERT INTO `asistencias` VALUES ('9657', '101', 'Jairo Rey', 'Lunes', '30/01/2017', '08:28:00', '17:19:00', null, '2017-04-04 15:28:56', '2017-04-04 15:28:56');
INSERT INTO `asistencias` VALUES ('9658', '101', 'Jairo Rey', 'Martes', '31/01/2017', '08:44:00', '17:04:00', null, '2017-04-04 15:28:56', '2017-04-04 15:28:56');
INSERT INTO `asistencias` VALUES ('9659', '81', 'Jaramillo Nicolas', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:28:56', '2017-04-04 15:28:56');
INSERT INTO `asistencias` VALUES ('9660', '81', 'Jaramillo Nicolas', 'Martes', '03/01/2017', '08:43:00', '17:39:00', null, '2017-04-04 15:28:56', '2017-04-04 15:28:56');
INSERT INTO `asistencias` VALUES ('9661', '81', 'Jaramillo Nicolas', 'Miércoles', '04/01/2017', '08:46:00', '17:08:00', null, '2017-04-04 15:28:56', '2017-04-04 15:28:56');
INSERT INTO `asistencias` VALUES ('9662', '81', 'Jaramillo Nicolas', 'Jueves', '05/01/2017', '08:56:00', '17:38:00', null, '2017-04-04 15:28:56', '2017-04-04 15:28:56');
INSERT INTO `asistencias` VALUES ('9663', '81', 'Jaramillo Nicolas', 'Viernes', '06/01/2017', '09:13:00', '18:10:00', null, '2017-04-04 15:28:56', '2017-04-04 15:28:56');
INSERT INTO `asistencias` VALUES ('9664', '81', 'Jaramillo Nicolas', 'Lunes', '09/01/2017', '08:31:00', '17:35:00', null, '2017-04-04 15:28:56', '2017-04-04 15:28:56');
INSERT INTO `asistencias` VALUES ('9665', '81', 'Jaramillo Nicolas', 'Martes', '10/01/2017', '08:50:00', '17:24:00', null, '2017-04-04 15:28:56', '2017-04-04 15:28:56');
INSERT INTO `asistencias` VALUES ('9666', '81', 'Jaramillo Nicolas', 'Miércoles', '11/01/2017', '08:45:00', '17:56:00', null, '2017-04-04 15:28:56', '2017-04-04 15:28:56');
INSERT INTO `asistencias` VALUES ('9667', '81', 'Jaramillo Nicolas', 'Jueves', '12/01/2017', '08:45:00', '17:12:00', null, '2017-04-04 15:28:56', '2017-04-04 15:28:56');
INSERT INTO `asistencias` VALUES ('9668', '81', 'Jaramillo Nicolas', 'Viernes', '13/01/2017', '08:45:00', '18:00:00', null, '2017-04-04 15:28:56', '2017-04-04 15:28:56');
INSERT INTO `asistencias` VALUES ('9669', '81', 'Jaramillo Nicolas', 'Lunes', '16/01/2017', '08:51:00', '17:37:00', null, '2017-04-04 15:28:56', '2017-04-04 15:28:56');
INSERT INTO `asistencias` VALUES ('9670', '81', 'Jaramillo Nicolas', 'Martes', '17/01/2017', '08:38:00', '18:04:00', null, '2017-04-04 15:28:56', '2017-04-04 15:28:56');
INSERT INTO `asistencias` VALUES ('9671', '81', 'Jaramillo Nicolas', 'Miércoles', '18/01/2017', '08:45:00', '17:29:00', null, '2017-04-04 15:28:56', '2017-04-04 15:28:56');
INSERT INTO `asistencias` VALUES ('9672', '81', 'Jaramillo Nicolas', 'Jueves', '19/01/2017', '08:47:00', '17:18:00', null, '2017-04-04 15:28:56', '2017-04-04 15:28:56');
INSERT INTO `asistencias` VALUES ('9673', '81', 'Jaramillo Nicolas', 'Viernes', '20/01/2017', '08:15:00', '18:01:00', null, '2017-04-04 15:28:56', '2017-04-04 15:28:56');
INSERT INTO `asistencias` VALUES ('9674', '81', 'Jaramillo Nicolas', 'Lunes', '23/01/2017', '09:11:00', '17:45:00', null, '2017-04-04 15:28:56', '2017-04-04 15:28:56');
INSERT INTO `asistencias` VALUES ('9675', '81', 'Jaramillo Nicolas', 'Martes', '24/01/2017', null, null, '1', '2017-04-04 15:28:56', '2017-04-04 15:28:56');
INSERT INTO `asistencias` VALUES ('9676', '81', 'Jaramillo Nicolas', 'Miércoles', '25/01/2017', '10:18:00', null, null, '2017-04-04 15:28:57', '2017-04-04 15:28:57');
INSERT INTO `asistencias` VALUES ('9677', '81', 'Jaramillo Nicolas', 'Jueves', '26/01/2017', null, null, '1', '2017-04-04 15:28:57', '2017-04-04 15:28:57');
INSERT INTO `asistencias` VALUES ('9678', '81', 'Jaramillo Nicolas', 'Viernes', '27/01/2017', '10:27:00', '18:36:00', null, '2017-04-04 15:28:57', '2017-04-04 15:28:57');
INSERT INTO `asistencias` VALUES ('9679', '81', 'Jaramillo Nicolas', 'Lunes', '30/01/2017', '08:40:00', '15:25:00', null, '2017-04-04 15:28:57', '2017-04-04 15:28:57');
INSERT INTO `asistencias` VALUES ('9680', '81', 'Jaramillo Nicolas', 'Martes', '31/01/2017', '08:29:00', null, null, '2017-04-04 15:28:57', '2017-04-04 15:28:57');
INSERT INTO `asistencias` VALUES ('9681', '38', 'JAVIER ESPIN', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:28:57', '2017-04-04 15:28:57');
INSERT INTO `asistencias` VALUES ('9682', '38', 'JAVIER ESPIN', 'Martes', '03/01/2017', null, null, '1', '2017-04-04 15:28:57', '2017-04-04 15:28:57');
INSERT INTO `asistencias` VALUES ('9683', '38', 'JAVIER ESPIN', 'Miércoles', '04/01/2017', null, null, '1', '2017-04-04 15:28:57', '2017-04-04 15:28:57');
INSERT INTO `asistencias` VALUES ('9684', '38', 'JAVIER ESPIN', 'Jueves', '05/01/2017', null, null, '1', '2017-04-04 15:28:57', '2017-04-04 15:28:57');
INSERT INTO `asistencias` VALUES ('9685', '38', 'JAVIER ESPIN', 'Viernes', '06/01/2017', null, null, '1', '2017-04-04 15:28:57', '2017-04-04 15:28:57');
INSERT INTO `asistencias` VALUES ('9686', '38', 'JAVIER ESPIN', 'Lunes', '09/01/2017', null, null, '1', '2017-04-04 15:28:57', '2017-04-04 15:28:57');
INSERT INTO `asistencias` VALUES ('9687', '38', 'JAVIER ESPIN', 'Martes', '10/01/2017', null, null, '1', '2017-04-04 15:28:57', '2017-04-04 15:28:57');
INSERT INTO `asistencias` VALUES ('9688', '38', 'JAVIER ESPIN', 'Miércoles', '11/01/2017', null, null, '1', '2017-04-04 15:28:57', '2017-04-04 15:28:57');
INSERT INTO `asistencias` VALUES ('9689', '38', 'JAVIER ESPIN', 'Jueves', '12/01/2017', null, null, '1', '2017-04-04 15:28:57', '2017-04-04 15:28:57');
INSERT INTO `asistencias` VALUES ('9690', '38', 'JAVIER ESPIN', 'Viernes', '13/01/2017', null, null, '1', '2017-04-04 15:28:57', '2017-04-04 15:28:57');
INSERT INTO `asistencias` VALUES ('9691', '38', 'JAVIER ESPIN', 'Lunes', '16/01/2017', null, null, '1', '2017-04-04 15:28:57', '2017-04-04 15:28:57');
INSERT INTO `asistencias` VALUES ('9692', '38', 'JAVIER ESPIN', 'Martes', '17/01/2017', null, null, '1', '2017-04-04 15:28:57', '2017-04-04 15:28:57');
INSERT INTO `asistencias` VALUES ('9693', '38', 'JAVIER ESPIN', 'Miércoles', '18/01/2017', null, null, '1', '2017-04-04 15:28:57', '2017-04-04 15:28:57');
INSERT INTO `asistencias` VALUES ('9694', '38', 'JAVIER ESPIN', 'Jueves', '19/01/2017', null, null, '1', '2017-04-04 15:28:57', '2017-04-04 15:28:57');
INSERT INTO `asistencias` VALUES ('9695', '38', 'JAVIER ESPIN', 'Viernes', '20/01/2017', null, null, '1', '2017-04-04 15:28:57', '2017-04-04 15:28:57');
INSERT INTO `asistencias` VALUES ('9696', '38', 'JAVIER ESPIN', 'Lunes', '23/01/2017', null, null, '1', '2017-04-04 15:28:57', '2017-04-04 15:28:57');
INSERT INTO `asistencias` VALUES ('9697', '38', 'JAVIER ESPIN', 'Martes', '24/01/2017', null, null, '1', '2017-04-04 15:28:57', '2017-04-04 15:28:57');
INSERT INTO `asistencias` VALUES ('9698', '38', 'JAVIER ESPIN', 'Miércoles', '25/01/2017', null, null, '1', '2017-04-04 15:28:57', '2017-04-04 15:28:57');
INSERT INTO `asistencias` VALUES ('9699', '38', 'JAVIER ESPIN', 'Jueves', '26/01/2017', null, null, '1', '2017-04-04 15:28:57', '2017-04-04 15:28:57');
INSERT INTO `asistencias` VALUES ('9700', '38', 'JAVIER ESPIN', 'Viernes', '27/01/2017', null, null, '1', '2017-04-04 15:28:57', '2017-04-04 15:28:57');
INSERT INTO `asistencias` VALUES ('9701', '38', 'JAVIER ESPIN', 'Lunes', '30/01/2017', null, null, '1', '2017-04-04 15:28:57', '2017-04-04 15:28:57');
INSERT INTO `asistencias` VALUES ('9702', '38', 'JAVIER ESPIN', 'Martes', '31/01/2017', null, null, '1', '2017-04-04 15:28:57', '2017-04-04 15:28:57');
INSERT INTO `asistencias` VALUES ('9703', '75', 'JENNY CARRILLO', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:28:57', '2017-04-04 15:28:57');
INSERT INTO `asistencias` VALUES ('9704', '75', 'JENNY CARRILLO', 'Martes', '03/01/2017', '08:29:00', '17:01:00', null, '2017-04-04 15:28:57', '2017-04-04 15:28:57');
INSERT INTO `asistencias` VALUES ('9705', '75', 'JENNY CARRILLO', 'Miércoles', '04/01/2017', '08:54:00', '17:08:00', null, '2017-04-04 15:28:57', '2017-04-04 15:28:57');
INSERT INTO `asistencias` VALUES ('9706', '75', 'JENNY CARRILLO', 'Jueves', '05/01/2017', '08:31:00', '17:12:00', null, '2017-04-04 15:28:57', '2017-04-04 15:28:57');
INSERT INTO `asistencias` VALUES ('9707', '75', 'JENNY CARRILLO', 'Viernes', '06/01/2017', '08:37:00', '17:05:00', null, '2017-04-04 15:28:57', '2017-04-04 15:28:57');
INSERT INTO `asistencias` VALUES ('9708', '75', 'JENNY CARRILLO', 'Lunes', '09/01/2017', '08:35:00', '17:03:00', null, '2017-04-04 15:28:57', '2017-04-04 15:28:57');
INSERT INTO `asistencias` VALUES ('9709', '75', 'JENNY CARRILLO', 'Martes', '10/01/2017', '08:26:00', '17:51:00', null, '2017-04-04 15:28:57', '2017-04-04 15:28:57');
INSERT INTO `asistencias` VALUES ('9710', '75', 'JENNY CARRILLO', 'Miércoles', '11/01/2017', '08:54:00', '17:13:00', null, '2017-04-04 15:28:58', '2017-04-04 15:28:58');
INSERT INTO `asistencias` VALUES ('9711', '75', 'JENNY CARRILLO', 'Jueves', '12/01/2017', '08:18:00', '15:22:00', null, '2017-04-04 15:28:58', '2017-04-04 15:28:58');
INSERT INTO `asistencias` VALUES ('9712', '75', 'JENNY CARRILLO', 'Viernes', '13/01/2017', '08:23:00', '17:07:00', null, '2017-04-04 15:28:58', '2017-04-04 15:28:58');
INSERT INTO `asistencias` VALUES ('9713', '75', 'JENNY CARRILLO', 'Lunes', '16/01/2017', '08:52:00', '17:05:00', null, '2017-04-04 15:28:58', '2017-04-04 15:28:58');
INSERT INTO `asistencias` VALUES ('9714', '75', 'JENNY CARRILLO', 'Martes', '17/01/2017', '08:37:00', '17:00:00', null, '2017-04-04 15:28:58', '2017-04-04 15:28:58');
INSERT INTO `asistencias` VALUES ('9715', '75', 'JENNY CARRILLO', 'Miércoles', '18/01/2017', '09:40:00', '16:56:00', null, '2017-04-04 15:28:58', '2017-04-04 15:28:58');
INSERT INTO `asistencias` VALUES ('9716', '75', 'JENNY CARRILLO', 'Jueves', '19/01/2017', '08:29:00', '17:08:00', null, '2017-04-04 15:28:58', '2017-04-04 15:28:58');
INSERT INTO `asistencias` VALUES ('9717', '75', 'JENNY CARRILLO', 'Viernes', '20/01/2017', '08:35:00', '17:08:00', null, '2017-04-04 15:28:58', '2017-04-04 15:28:58');
INSERT INTO `asistencias` VALUES ('9718', '75', 'JENNY CARRILLO', 'Lunes', '23/01/2017', '08:31:00', '18:37:00', null, '2017-04-04 15:28:58', '2017-04-04 15:28:58');
INSERT INTO `asistencias` VALUES ('9719', '75', 'JENNY CARRILLO', 'Martes', '24/01/2017', '08:24:00', '17:03:00', null, '2017-04-04 15:28:58', '2017-04-04 15:28:58');
INSERT INTO `asistencias` VALUES ('9720', '75', 'JENNY CARRILLO', 'Miércoles', '25/01/2017', '08:50:00', '17:07:00', null, '2017-04-04 15:28:58', '2017-04-04 15:28:58');
INSERT INTO `asistencias` VALUES ('9721', '75', 'JENNY CARRILLO', 'Jueves', '26/01/2017', '08:14:00', '17:09:00', null, '2017-04-04 15:28:58', '2017-04-04 15:28:58');
INSERT INTO `asistencias` VALUES ('9722', '75', 'JENNY CARRILLO', 'Viernes', '27/01/2017', '08:14:00', '17:17:00', null, '2017-04-04 15:28:58', '2017-04-04 15:28:58');
INSERT INTO `asistencias` VALUES ('9723', '75', 'JENNY CARRILLO', 'Lunes', '30/01/2017', '08:25:00', '17:10:00', null, '2017-04-04 15:28:58', '2017-04-04 15:28:58');
INSERT INTO `asistencias` VALUES ('9724', '75', 'JENNY CARRILLO', 'Martes', '31/01/2017', '08:19:00', '17:18:00', null, '2017-04-04 15:28:58', '2017-04-04 15:28:58');
INSERT INTO `asistencias` VALUES ('9725', '77', 'JOE ORTIZ', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:28:58', '2017-04-04 15:28:58');
INSERT INTO `asistencias` VALUES ('9726', '77', 'JOE ORTIZ', 'Martes', '03/01/2017', '08:43:00', '13:33:00', null, '2017-04-04 15:28:58', '2017-04-04 15:28:58');
INSERT INTO `asistencias` VALUES ('9727', '77', 'JOE ORTIZ', 'Miércoles', '04/01/2017', null, null, '1', '2017-04-04 15:28:58', '2017-04-04 15:28:58');
INSERT INTO `asistencias` VALUES ('9728', '77', 'JOE ORTIZ', 'Jueves', '05/01/2017', '10:03:00', '18:41:00', null, '2017-04-04 15:28:58', '2017-04-04 15:28:58');
INSERT INTO `asistencias` VALUES ('9729', '77', 'JOE ORTIZ', 'Viernes', '06/01/2017', '09:11:00', '19:39:00', null, '2017-04-04 15:28:58', '2017-04-04 15:28:58');
INSERT INTO `asistencias` VALUES ('9730', '77', 'JOE ORTIZ', 'Lunes', '09/01/2017', '09:11:00', '18:17:00', null, '2017-04-04 15:28:58', '2017-04-04 15:28:58');
INSERT INTO `asistencias` VALUES ('9731', '77', 'JOE ORTIZ', 'Martes', '10/01/2017', '09:18:00', '18:00:00', null, '2017-04-04 15:28:58', '2017-04-04 15:28:58');
INSERT INTO `asistencias` VALUES ('9732', '77', 'JOE ORTIZ', 'Miércoles', '11/01/2017', '09:27:00', '18:01:00', null, '2017-04-04 15:28:58', '2017-04-04 15:28:58');
INSERT INTO `asistencias` VALUES ('9733', '77', 'JOE ORTIZ', 'Jueves', '12/01/2017', '09:12:00', '18:00:00', null, '2017-04-04 15:28:58', '2017-04-04 15:28:58');
INSERT INTO `asistencias` VALUES ('9734', '77', 'JOE ORTIZ', 'Viernes', '13/01/2017', '08:41:00', '17:00:00', null, '2017-04-04 15:28:58', '2017-04-04 15:28:58');
INSERT INTO `asistencias` VALUES ('9735', '77', 'JOE ORTIZ', 'Lunes', '16/01/2017', '09:32:00', '18:03:00', null, '2017-04-04 15:28:58', '2017-04-04 15:28:58');
INSERT INTO `asistencias` VALUES ('9736', '77', 'JOE ORTIZ', 'Martes', '17/01/2017', '09:14:00', '18:00:00', null, '2017-04-04 15:28:58', '2017-04-04 15:28:58');
INSERT INTO `asistencias` VALUES ('9737', '77', 'JOE ORTIZ', 'Miércoles', '18/01/2017', '09:13:00', '17:39:00', null, '2017-04-04 15:28:58', '2017-04-04 15:28:58');
INSERT INTO `asistencias` VALUES ('9738', '77', 'JOE ORTIZ', 'Jueves', '19/01/2017', '09:17:00', '18:01:00', null, '2017-04-04 15:28:58', '2017-04-04 15:28:58');
INSERT INTO `asistencias` VALUES ('9739', '77', 'JOE ORTIZ', 'Viernes', '20/01/2017', '08:57:00', '17:06:00', null, '2017-04-04 15:28:58', '2017-04-04 15:28:58');
INSERT INTO `asistencias` VALUES ('9740', '77', 'JOE ORTIZ', 'Lunes', '23/01/2017', '09:21:00', '18:01:00', null, '2017-04-04 15:28:59', '2017-04-04 15:28:59');
INSERT INTO `asistencias` VALUES ('9741', '77', 'JOE ORTIZ', 'Martes', '24/01/2017', '09:20:00', '18:04:00', null, '2017-04-04 15:28:59', '2017-04-04 15:28:59');
INSERT INTO `asistencias` VALUES ('9742', '77', 'JOE ORTIZ', 'Miércoles', '25/01/2017', '09:07:00', '17:30:00', null, '2017-04-04 15:28:59', '2017-04-04 15:28:59');
INSERT INTO `asistencias` VALUES ('9743', '77', 'JOE ORTIZ', 'Jueves', '26/01/2017', '09:24:00', '18:01:00', null, '2017-04-04 15:28:59', '2017-04-04 15:28:59');
INSERT INTO `asistencias` VALUES ('9744', '77', 'JOE ORTIZ', 'Viernes', '27/01/2017', '08:30:00', '17:05:00', null, '2017-04-04 15:28:59', '2017-04-04 15:28:59');
INSERT INTO `asistencias` VALUES ('9745', '77', 'JOE ORTIZ', 'Lunes', '30/01/2017', '09:46:00', '18:06:00', null, '2017-04-04 15:28:59', '2017-04-04 15:28:59');
INSERT INTO `asistencias` VALUES ('9746', '77', 'JOE ORTIZ', 'Martes', '31/01/2017', '09:12:00', '18:00:00', null, '2017-04-04 15:28:59', '2017-04-04 15:28:59');
INSERT INTO `asistencias` VALUES ('9747', '19', 'JOSE ANDRADE', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:28:59', '2017-04-04 15:28:59');
INSERT INTO `asistencias` VALUES ('9748', '19', 'JOSE ANDRADE', 'Martes', '03/01/2017', '08:17:00', '17:10:00', null, '2017-04-04 15:28:59', '2017-04-04 15:28:59');
INSERT INTO `asistencias` VALUES ('9749', '19', 'JOSE ANDRADE', 'Miércoles', '04/01/2017', '08:38:00', '17:07:00', null, '2017-04-04 15:28:59', '2017-04-04 15:28:59');
INSERT INTO `asistencias` VALUES ('9750', '19', 'JOSE ANDRADE', 'Jueves', '05/01/2017', '08:20:00', '17:14:00', null, '2017-04-04 15:28:59', '2017-04-04 15:28:59');
INSERT INTO `asistencias` VALUES ('9751', '19', 'JOSE ANDRADE', 'Viernes', '06/01/2017', '08:38:00', '17:37:00', null, '2017-04-04 15:28:59', '2017-04-04 15:28:59');
INSERT INTO `asistencias` VALUES ('9752', '19', 'JOSE ANDRADE', 'Lunes', '09/01/2017', '08:33:00', '17:49:00', null, '2017-04-04 15:28:59', '2017-04-04 15:28:59');
INSERT INTO `asistencias` VALUES ('9753', '19', 'JOSE ANDRADE', 'Martes', '10/01/2017', '08:25:00', '17:14:00', null, '2017-04-04 15:28:59', '2017-04-04 15:28:59');
INSERT INTO `asistencias` VALUES ('9754', '19', 'JOSE ANDRADE', 'Miércoles', '11/01/2017', '08:48:00', '17:07:00', null, '2017-04-04 15:28:59', '2017-04-04 15:28:59');
INSERT INTO `asistencias` VALUES ('9755', '19', 'JOSE ANDRADE', 'Jueves', '12/01/2017', '08:47:00', '17:08:00', null, '2017-04-04 15:28:59', '2017-04-04 15:28:59');
INSERT INTO `asistencias` VALUES ('9756', '19', 'JOSE ANDRADE', 'Viernes', '13/01/2017', '08:30:00', '17:27:00', null, '2017-04-04 15:28:59', '2017-04-04 15:28:59');
INSERT INTO `asistencias` VALUES ('9757', '19', 'JOSE ANDRADE', 'Lunes', '16/01/2017', '08:45:00', '17:21:00', null, '2017-04-04 15:28:59', '2017-04-04 15:28:59');
INSERT INTO `asistencias` VALUES ('9758', '19', 'JOSE ANDRADE', 'Martes', '17/01/2017', '08:37:00', '17:21:00', null, '2017-04-04 15:28:59', '2017-04-04 15:28:59');
INSERT INTO `asistencias` VALUES ('9759', '19', 'JOSE ANDRADE', 'Miércoles', '18/01/2017', '08:39:00', '17:33:00', null, '2017-04-04 15:28:59', '2017-04-04 15:28:59');
INSERT INTO `asistencias` VALUES ('9760', '19', 'JOSE ANDRADE', 'Jueves', '19/01/2017', '08:07:00', '17:23:00', null, '2017-04-04 15:28:59', '2017-04-04 15:28:59');
INSERT INTO `asistencias` VALUES ('9761', '19', 'JOSE ANDRADE', 'Viernes', '20/01/2017', '08:26:00', '17:40:00', null, '2017-04-04 15:28:59', '2017-04-04 15:28:59');
INSERT INTO `asistencias` VALUES ('9762', '19', 'JOSE ANDRADE', 'Lunes', '23/01/2017', '08:33:00', '17:20:00', null, '2017-04-04 15:28:59', '2017-04-04 15:28:59');
INSERT INTO `asistencias` VALUES ('9763', '19', 'JOSE ANDRADE', 'Martes', '24/01/2017', '08:43:00', '17:10:00', null, '2017-04-04 15:28:59', '2017-04-04 15:28:59');
INSERT INTO `asistencias` VALUES ('9764', '19', 'JOSE ANDRADE', 'Miércoles', '25/01/2017', '08:46:00', '17:26:00', null, '2017-04-04 15:28:59', '2017-04-04 15:28:59');
INSERT INTO `asistencias` VALUES ('9765', '19', 'JOSE ANDRADE', 'Jueves', '26/01/2017', '08:24:00', '17:02:00', null, '2017-04-04 15:28:59', '2017-04-04 15:28:59');
INSERT INTO `asistencias` VALUES ('9766', '19', 'JOSE ANDRADE', 'Viernes', '27/01/2017', '08:42:00', '17:08:00', null, '2017-04-04 15:28:59', '2017-04-04 15:28:59');
INSERT INTO `asistencias` VALUES ('9767', '19', 'JOSE ANDRADE', 'Lunes', '30/01/2017', '08:26:00', '17:11:00', null, '2017-04-04 15:28:59', '2017-04-04 15:28:59');
INSERT INTO `asistencias` VALUES ('9768', '19', 'JOSE ANDRADE', 'Martes', '31/01/2017', '08:33:00', '19:05:00', null, '2017-04-04 15:28:59', '2017-04-04 15:28:59');
INSERT INTO `asistencias` VALUES ('9769', '46', 'JOSE GARCIA', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:28:59', '2017-04-04 15:28:59');
INSERT INTO `asistencias` VALUES ('9770', '46', 'JOSE GARCIA', 'Martes', '03/01/2017', null, '14:33:00', null, '2017-04-04 15:28:59', '2017-04-04 15:28:59');
INSERT INTO `asistencias` VALUES ('9771', '46', 'JOSE GARCIA', 'Miércoles', '04/01/2017', null, '14:12:00', null, '2017-04-04 15:28:59', '2017-04-04 15:28:59');
INSERT INTO `asistencias` VALUES ('9772', '46', 'JOSE GARCIA', 'Jueves', '05/01/2017', null, '14:36:00', null, '2017-04-04 15:28:59', '2017-04-04 15:28:59');
INSERT INTO `asistencias` VALUES ('9773', '46', 'JOSE GARCIA', 'Viernes', '06/01/2017', '06:08:00', '14:45:00', null, '2017-04-04 15:29:00', '2017-04-04 15:29:00');
INSERT INTO `asistencias` VALUES ('9774', '46', 'JOSE GARCIA', 'Lunes', '09/01/2017', '06:18:00', '14:25:00', null, '2017-04-04 15:29:00', '2017-04-04 15:29:00');
INSERT INTO `asistencias` VALUES ('9775', '46', 'JOSE GARCIA', 'Martes', '10/01/2017', null, '14:46:00', null, '2017-04-04 15:29:00', '2017-04-04 15:29:00');
INSERT INTO `asistencias` VALUES ('9776', '46', 'JOSE GARCIA', 'Miércoles', '11/01/2017', null, '14:17:00', null, '2017-04-04 15:29:00', '2017-04-04 15:29:00');
INSERT INTO `asistencias` VALUES ('9777', '46', 'JOSE GARCIA', 'Jueves', '12/01/2017', null, '15:19:00', null, '2017-04-04 15:29:00', '2017-04-04 15:29:00');
INSERT INTO `asistencias` VALUES ('9778', '46', 'JOSE GARCIA', 'Viernes', '13/01/2017', null, '14:21:00', null, '2017-04-04 15:29:00', '2017-04-04 15:29:00');
INSERT INTO `asistencias` VALUES ('9779', '46', 'JOSE GARCIA', 'Lunes', '16/01/2017', null, '14:35:00', null, '2017-04-04 15:29:00', '2017-04-04 15:29:00');
INSERT INTO `asistencias` VALUES ('9780', '46', 'JOSE GARCIA', 'Martes', '17/01/2017', null, '14:40:00', null, '2017-04-04 15:29:00', '2017-04-04 15:29:00');
INSERT INTO `asistencias` VALUES ('9781', '46', 'JOSE GARCIA', 'Miércoles', '18/01/2017', null, '14:28:00', null, '2017-04-04 15:29:00', '2017-04-04 15:29:00');
INSERT INTO `asistencias` VALUES ('9782', '46', 'JOSE GARCIA', 'Jueves', '19/01/2017', null, '14:48:00', null, '2017-04-04 15:29:00', '2017-04-04 15:29:00');
INSERT INTO `asistencias` VALUES ('9783', '46', 'JOSE GARCIA', 'Viernes', '20/01/2017', null, '14:18:00', null, '2017-04-04 15:29:00', '2017-04-04 15:29:00');
INSERT INTO `asistencias` VALUES ('9784', '46', 'JOSE GARCIA', 'Lunes', '23/01/2017', null, '14:21:00', null, '2017-04-04 15:29:00', '2017-04-04 15:29:00');
INSERT INTO `asistencias` VALUES ('9785', '46', 'JOSE GARCIA', 'Martes', '24/01/2017', null, '14:37:00', null, '2017-04-04 15:29:00', '2017-04-04 15:29:00');
INSERT INTO `asistencias` VALUES ('9786', '46', 'JOSE GARCIA', 'Miércoles', '25/01/2017', null, '14:16:00', null, '2017-04-04 15:29:00', '2017-04-04 15:29:00');
INSERT INTO `asistencias` VALUES ('9787', '46', 'JOSE GARCIA', 'Jueves', '26/01/2017', null, '14:53:00', null, '2017-04-04 15:29:00', '2017-04-04 15:29:00');
INSERT INTO `asistencias` VALUES ('9788', '46', 'JOSE GARCIA', 'Viernes', '27/01/2017', null, '14:09:00', null, '2017-04-04 15:29:00', '2017-04-04 15:29:00');
INSERT INTO `asistencias` VALUES ('9789', '46', 'JOSE GARCIA', 'Lunes', '30/01/2017', null, '14:12:00', null, '2017-04-04 15:29:00', '2017-04-04 15:29:00');
INSERT INTO `asistencias` VALUES ('9790', '46', 'JOSE GARCIA', 'Martes', '31/01/2017', '06:00:00', '14:43:00', null, '2017-04-04 15:29:00', '2017-04-04 15:29:00');
INSERT INTO `asistencias` VALUES ('9791', '76', 'JUAN HARO', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:29:00', '2017-04-04 15:29:00');
INSERT INTO `asistencias` VALUES ('9792', '76', 'JUAN HARO', 'Martes', '03/01/2017', '08:42:00', null, null, '2017-04-04 15:29:00', '2017-04-04 15:29:00');
INSERT INTO `asistencias` VALUES ('9793', '76', 'JUAN HARO', 'Miércoles', '04/01/2017', '09:02:00', '18:34:00', null, '2017-04-04 15:29:00', '2017-04-04 15:29:00');
INSERT INTO `asistencias` VALUES ('9794', '76', 'JUAN HARO', 'Jueves', '05/01/2017', '09:37:00', '19:45:00', null, '2017-04-04 15:29:00', '2017-04-04 15:29:00');
INSERT INTO `asistencias` VALUES ('9795', '76', 'JUAN HARO', 'Viernes', '06/01/2017', '07:51:00', '17:47:00', null, '2017-04-04 15:29:00', '2017-04-04 15:29:00');
INSERT INTO `asistencias` VALUES ('9796', '76', 'JUAN HARO', 'Lunes', '09/01/2017', '09:01:00', '19:06:00', null, '2017-04-04 15:29:00', '2017-04-04 15:29:00');
INSERT INTO `asistencias` VALUES ('9797', '76', 'JUAN HARO', 'Martes', '10/01/2017', '07:57:00', '18:54:00', null, '2017-04-04 15:29:00', '2017-04-04 15:29:00');
INSERT INTO `asistencias` VALUES ('9798', '76', 'JUAN HARO', 'Miércoles', '11/01/2017', '08:31:00', '17:31:00', null, '2017-04-04 15:29:00', '2017-04-04 15:29:00');
INSERT INTO `asistencias` VALUES ('9799', '76', 'JUAN HARO', 'Jueves', '12/01/2017', null, '19:43:00', null, '2017-04-04 15:29:00', '2017-04-04 15:29:00');
INSERT INTO `asistencias` VALUES ('9800', '76', 'JUAN HARO', 'Viernes', '13/01/2017', '08:47:00', null, null, '2017-04-04 15:29:00', '2017-04-04 15:29:00');
INSERT INTO `asistencias` VALUES ('9801', '76', 'JUAN HARO', 'Lunes', '16/01/2017', '09:20:00', '16:49:00', null, '2017-04-04 15:29:00', '2017-04-04 15:29:00');
INSERT INTO `asistencias` VALUES ('9802', '76', 'JUAN HARO', 'Martes', '17/01/2017', null, '17:31:00', null, '2017-04-04 15:29:00', '2017-04-04 15:29:00');
INSERT INTO `asistencias` VALUES ('9803', '76', 'JUAN HARO', 'Miércoles', '18/01/2017', '08:50:00', '17:36:00', null, '2017-04-04 15:29:00', '2017-04-04 15:29:00');
INSERT INTO `asistencias` VALUES ('9804', '76', 'JUAN HARO', 'Jueves', '19/01/2017', '08:56:00', '18:27:00', null, '2017-04-04 15:29:00', '2017-04-04 15:29:00');
INSERT INTO `asistencias` VALUES ('9805', '76', 'JUAN HARO', 'Viernes', '20/01/2017', '08:06:00', '17:57:00', null, '2017-04-04 15:29:00', '2017-04-04 15:29:00');
INSERT INTO `asistencias` VALUES ('9806', '76', 'JUAN HARO', 'Lunes', '23/01/2017', '08:22:00', '18:09:00', null, '2017-04-04 15:29:00', '2017-04-04 15:29:00');
INSERT INTO `asistencias` VALUES ('9807', '76', 'JUAN HARO', 'Martes', '24/01/2017', '08:54:00', '17:43:00', null, '2017-04-04 15:29:00', '2017-04-04 15:29:00');
INSERT INTO `asistencias` VALUES ('9808', '76', 'JUAN HARO', 'Miércoles', '25/01/2017', '08:51:00', '17:47:00', null, '2017-04-04 15:29:00', '2017-04-04 15:29:00');
INSERT INTO `asistencias` VALUES ('9809', '76', 'JUAN HARO', 'Jueves', '26/01/2017', '09:14:00', null, null, '2017-04-04 15:29:00', '2017-04-04 15:29:00');
INSERT INTO `asistencias` VALUES ('9810', '76', 'JUAN HARO', 'Viernes', '27/01/2017', '08:26:00', '18:25:00', null, '2017-04-04 15:29:01', '2017-04-04 15:29:01');
INSERT INTO `asistencias` VALUES ('9811', '76', 'JUAN HARO', 'Lunes', '30/01/2017', null, '17:25:00', null, '2017-04-04 15:29:01', '2017-04-04 15:29:01');
INSERT INTO `asistencias` VALUES ('9812', '76', 'JUAN HARO', 'Martes', '31/01/2017', '08:49:00', '17:16:00', null, '2017-04-04 15:29:01', '2017-04-04 15:29:01');
INSERT INTO `asistencias` VALUES ('9813', '85', 'Katty Toscano', 'Lunes', '09/01/2017', '08:22:00', '18:45:00', null, '2017-04-04 15:29:01', '2017-04-04 15:29:01');
INSERT INTO `asistencias` VALUES ('9814', '85', 'Katty Toscano', 'Martes', '10/01/2017', '08:31:00', '18:57:00', null, '2017-04-04 15:29:01', '2017-04-04 15:29:01');
INSERT INTO `asistencias` VALUES ('9815', '85', 'Katty Toscano', 'Miércoles', '11/01/2017', '08:31:00', '18:07:00', null, '2017-04-04 15:29:01', '2017-04-04 15:29:01');
INSERT INTO `asistencias` VALUES ('9816', '85', 'Katty Toscano', 'Viernes', '13/01/2017', '08:39:00', '18:28:00', null, '2017-04-04 15:29:01', '2017-04-04 15:29:01');
INSERT INTO `asistencias` VALUES ('9817', '85', 'Katty Toscano', 'Lunes', '16/01/2017', '08:43:00', '17:25:00', null, '2017-04-04 15:29:01', '2017-04-04 15:29:01');
INSERT INTO `asistencias` VALUES ('9818', '85', 'Katty Toscano', 'Martes', '17/01/2017', '08:28:00', '18:31:00', null, '2017-04-04 15:29:01', '2017-04-04 15:29:01');
INSERT INTO `asistencias` VALUES ('9819', '85', 'Katty Toscano', 'Miércoles', '18/01/2017', '08:29:00', '17:26:00', null, '2017-04-04 15:29:01', '2017-04-04 15:29:01');
INSERT INTO `asistencias` VALUES ('9820', '85', 'Katty Toscano', 'Jueves', '19/01/2017', '07:46:00', '17:05:00', null, '2017-04-04 15:29:01', '2017-04-04 15:29:01');
INSERT INTO `asistencias` VALUES ('9821', '85', 'Katty Toscano', 'Viernes', '20/01/2017', '09:27:00', '17:03:00', null, '2017-04-04 15:29:01', '2017-04-04 15:29:01');
INSERT INTO `asistencias` VALUES ('9822', '85', 'Katty Toscano', 'Lunes', '23/01/2017', '08:20:00', '17:08:00', null, '2017-04-04 15:29:01', '2017-04-04 15:29:01');
INSERT INTO `asistencias` VALUES ('9823', '85', 'Katty Toscano', 'Martes', '24/01/2017', '08:36:00', '18:15:00', null, '2017-04-04 15:29:01', '2017-04-04 15:29:01');
INSERT INTO `asistencias` VALUES ('9824', '85', 'Katty Toscano', 'Miércoles', '25/01/2017', '08:38:00', '17:20:00', null, '2017-04-04 15:29:01', '2017-04-04 15:29:01');
INSERT INTO `asistencias` VALUES ('9825', '85', 'Katty Toscano', 'Viernes', '27/01/2017', '08:30:00', '18:14:00', null, '2017-04-04 15:29:01', '2017-04-04 15:29:01');
INSERT INTO `asistencias` VALUES ('9826', '85', 'Katty Toscano', 'Lunes', '30/01/2017', '08:20:00', '16:58:00', null, '2017-04-04 15:29:01', '2017-04-04 15:29:01');
INSERT INTO `asistencias` VALUES ('9827', '85', 'Katty Toscano', 'Martes', '31/01/2017', '08:33:00', '17:16:00', null, '2017-04-04 15:29:01', '2017-04-04 15:29:01');
INSERT INTO `asistencias` VALUES ('9828', '35', 'LENIN ILLAPA', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:29:01', '2017-04-04 15:29:01');
INSERT INTO `asistencias` VALUES ('9829', '35', 'LENIN ILLAPA', 'Martes', '03/01/2017', '07:58:00', '17:02:00', null, '2017-04-04 15:29:01', '2017-04-04 15:29:01');
INSERT INTO `asistencias` VALUES ('9830', '35', 'LENIN ILLAPA', 'Miércoles', '04/01/2017', '07:57:00', '17:03:00', null, '2017-04-04 15:29:01', '2017-04-04 15:29:01');
INSERT INTO `asistencias` VALUES ('9831', '35', 'LENIN ILLAPA', 'Jueves', '05/01/2017', '07:59:00', '16:52:00', null, '2017-04-04 15:29:01', '2017-04-04 15:29:01');
INSERT INTO `asistencias` VALUES ('9832', '35', 'LENIN ILLAPA', 'Viernes', '06/01/2017', '07:59:00', '17:03:00', null, '2017-04-04 15:29:01', '2017-04-04 15:29:01');
INSERT INTO `asistencias` VALUES ('9833', '35', 'LENIN ILLAPA', 'Lunes', '09/01/2017', '08:04:00', '17:05:00', null, '2017-04-04 15:29:01', '2017-04-04 15:29:01');
INSERT INTO `asistencias` VALUES ('9834', '35', 'LENIN ILLAPA', 'Martes', '10/01/2017', '08:00:00', '17:01:00', null, '2017-04-04 15:29:01', '2017-04-04 15:29:01');
INSERT INTO `asistencias` VALUES ('9835', '35', 'LENIN ILLAPA', 'Miércoles', '11/01/2017', '08:04:00', '16:59:00', null, '2017-04-04 15:29:01', '2017-04-04 15:29:01');
INSERT INTO `asistencias` VALUES ('9836', '35', 'LENIN ILLAPA', 'Jueves', '12/01/2017', '07:59:00', '17:02:00', null, '2017-04-04 15:29:01', '2017-04-04 15:29:01');
INSERT INTO `asistencias` VALUES ('9837', '35', 'LENIN ILLAPA', 'Viernes', '13/01/2017', '07:56:00', '17:00:00', null, '2017-04-04 15:29:01', '2017-04-04 15:29:01');
INSERT INTO `asistencias` VALUES ('9838', '35', 'LENIN ILLAPA', 'Lunes', '16/01/2017', '08:01:00', '17:01:00', null, '2017-04-04 15:29:01', '2017-04-04 15:29:01');
INSERT INTO `asistencias` VALUES ('9839', '35', 'LENIN ILLAPA', 'Martes', '17/01/2017', '07:58:00', '17:02:00', null, '2017-04-04 15:29:01', '2017-04-04 15:29:01');
INSERT INTO `asistencias` VALUES ('9840', '35', 'LENIN ILLAPA', 'Miércoles', '18/01/2017', '07:49:00', '17:04:00', null, '2017-04-04 15:29:01', '2017-04-04 15:29:01');
INSERT INTO `asistencias` VALUES ('9841', '35', 'LENIN ILLAPA', 'Jueves', '19/01/2017', '07:59:00', '17:01:00', null, '2017-04-04 15:29:01', '2017-04-04 15:29:01');
INSERT INTO `asistencias` VALUES ('9842', '35', 'LENIN ILLAPA', 'Viernes', '20/01/2017', '07:49:00', '17:00:00', null, '2017-04-04 15:29:01', '2017-04-04 15:29:01');
INSERT INTO `asistencias` VALUES ('9843', '35', 'LENIN ILLAPA', 'Lunes', '23/01/2017', '07:53:00', '17:39:00', null, '2017-04-04 15:29:01', '2017-04-04 15:29:01');
INSERT INTO `asistencias` VALUES ('9844', '35', 'LENIN ILLAPA', 'Martes', '24/01/2017', '07:59:00', '17:05:00', null, '2017-04-04 15:29:01', '2017-04-04 15:29:01');
INSERT INTO `asistencias` VALUES ('9845', '35', 'LENIN ILLAPA', 'Miércoles', '25/01/2017', '07:48:00', '17:01:00', null, '2017-04-04 15:29:02', '2017-04-04 15:29:02');
INSERT INTO `asistencias` VALUES ('9846', '35', 'LENIN ILLAPA', 'Jueves', '26/01/2017', '07:54:00', '17:02:00', null, '2017-04-04 15:29:02', '2017-04-04 15:29:02');
INSERT INTO `asistencias` VALUES ('9847', '35', 'LENIN ILLAPA', 'Viernes', '27/01/2017', '07:57:00', '17:01:00', null, '2017-04-04 15:29:02', '2017-04-04 15:29:02');
INSERT INTO `asistencias` VALUES ('9848', '35', 'LENIN ILLAPA', 'Lunes', '30/01/2017', '08:02:00', '17:01:00', null, '2017-04-04 15:29:02', '2017-04-04 15:29:02');
INSERT INTO `asistencias` VALUES ('9849', '35', 'LENIN ILLAPA', 'Martes', '31/01/2017', '07:55:00', '17:03:00', null, '2017-04-04 15:29:02', '2017-04-04 15:29:02');
INSERT INTO `asistencias` VALUES ('9850', '105', 'Lourdes Quiroz', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:29:02', '2017-04-04 15:29:02');
INSERT INTO `asistencias` VALUES ('9851', '105', 'Lourdes Quiroz', 'Martes', '03/01/2017', null, null, '1', '2017-04-04 15:29:02', '2017-04-04 15:29:02');
INSERT INTO `asistencias` VALUES ('9852', '105', 'Lourdes Quiroz', 'Miércoles', '04/01/2017', null, '18:43:00', null, '2017-04-04 15:29:02', '2017-04-04 15:29:02');
INSERT INTO `asistencias` VALUES ('9853', '105', 'Lourdes Quiroz', 'Jueves', '05/01/2017', '08:48:00', null, null, '2017-04-04 15:29:02', '2017-04-04 15:29:02');
INSERT INTO `asistencias` VALUES ('9854', '105', 'Lourdes Quiroz', 'Viernes', '06/01/2017', '07:58:00', '17:05:00', null, '2017-04-04 15:29:02', '2017-04-04 15:29:02');
INSERT INTO `asistencias` VALUES ('9855', '105', 'Lourdes Quiroz', 'Lunes', '09/01/2017', '08:34:00', null, null, '2017-04-04 15:29:02', '2017-04-04 15:29:02');
INSERT INTO `asistencias` VALUES ('9856', '105', 'Lourdes Quiroz', 'Martes', '10/01/2017', '09:22:00', '18:54:00', null, '2017-04-04 15:29:02', '2017-04-04 15:29:02');
INSERT INTO `asistencias` VALUES ('9857', '105', 'Lourdes Quiroz', 'Miércoles', '11/01/2017', '08:38:00', '17:31:00', null, '2017-04-04 15:29:02', '2017-04-04 15:29:02');
INSERT INTO `asistencias` VALUES ('9858', '105', 'Lourdes Quiroz', 'Jueves', '12/01/2017', '08:49:00', '18:12:00', null, '2017-04-04 15:29:02', '2017-04-04 15:29:02');
INSERT INTO `asistencias` VALUES ('9859', '105', 'Lourdes Quiroz', 'Viernes', '13/01/2017', '09:41:00', '18:12:00', null, '2017-04-04 15:29:02', '2017-04-04 15:29:02');
INSERT INTO `asistencias` VALUES ('9860', '105', 'Lourdes Quiroz', 'Lunes', '16/01/2017', '08:40:00', '18:17:00', null, '2017-04-04 15:29:02', '2017-04-04 15:29:02');
INSERT INTO `asistencias` VALUES ('9861', '105', 'Lourdes Quiroz', 'Martes', '17/01/2017', '08:29:00', '18:05:00', null, '2017-04-04 15:29:02', '2017-04-04 15:29:02');
INSERT INTO `asistencias` VALUES ('9862', '105', 'Lourdes Quiroz', 'Miércoles', '18/01/2017', '10:15:00', '17:28:00', null, '2017-04-04 15:29:02', '2017-04-04 15:29:02');
INSERT INTO `asistencias` VALUES ('9863', '105', 'Lourdes Quiroz', 'Jueves', '19/01/2017', '08:55:00', '17:18:00', null, '2017-04-04 15:29:02', '2017-04-04 15:29:02');
INSERT INTO `asistencias` VALUES ('9864', '105', 'Lourdes Quiroz', 'Viernes', '20/01/2017', '09:59:00', '18:09:00', null, '2017-04-04 15:29:02', '2017-04-04 15:29:02');
INSERT INTO `asistencias` VALUES ('9865', '105', 'Lourdes Quiroz', 'Lunes', '23/01/2017', '08:35:00', '17:30:00', null, '2017-04-04 15:29:02', '2017-04-04 15:29:02');
INSERT INTO `asistencias` VALUES ('9866', '105', 'Lourdes Quiroz', 'Martes', '24/01/2017', '08:54:00', '17:43:00', null, '2017-04-04 15:29:02', '2017-04-04 15:29:02');
INSERT INTO `asistencias` VALUES ('9867', '105', 'Lourdes Quiroz', 'Miércoles', '25/01/2017', '09:09:00', '17:50:00', null, '2017-04-04 15:29:02', '2017-04-04 15:29:02');
INSERT INTO `asistencias` VALUES ('9868', '105', 'Lourdes Quiroz', 'Jueves', '26/01/2017', '08:40:00', null, null, '2017-04-04 15:29:02', '2017-04-04 15:29:02');
INSERT INTO `asistencias` VALUES ('9869', '105', 'Lourdes Quiroz', 'Viernes', '27/01/2017', '08:41:00', '18:42:00', null, '2017-04-04 15:29:02', '2017-04-04 15:29:02');
INSERT INTO `asistencias` VALUES ('9870', '105', 'Lourdes Quiroz', 'Lunes', '30/01/2017', '08:40:00', '19:53:00', null, '2017-04-04 15:29:02', '2017-04-04 15:29:02');
INSERT INTO `asistencias` VALUES ('9871', '105', 'Lourdes Quiroz', 'Martes', '31/01/2017', '08:40:00', '18:35:00', null, '2017-04-04 15:29:02', '2017-04-04 15:29:02');
INSERT INTO `asistencias` VALUES ('9872', '62', 'LUCRECIA TORRES', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:29:02', '2017-04-04 15:29:02');
INSERT INTO `asistencias` VALUES ('9873', '62', 'LUCRECIA TORRES', 'Martes', '03/01/2017', '08:11:00', '17:07:00', null, '2017-04-04 15:29:02', '2017-04-04 15:29:02');
INSERT INTO `asistencias` VALUES ('9874', '62', 'LUCRECIA TORRES', 'Miércoles', '04/01/2017', '08:20:00', '18:55:00', null, '2017-04-04 15:29:02', '2017-04-04 15:29:02');
INSERT INTO `asistencias` VALUES ('9875', '62', 'LUCRECIA TORRES', 'Jueves', '05/01/2017', null, null, '1', '2017-04-04 15:29:02', '2017-04-04 15:29:02');
INSERT INTO `asistencias` VALUES ('9876', '62', 'LUCRECIA TORRES', 'Viernes', '06/01/2017', null, null, '1', '2017-04-04 15:29:02', '2017-04-04 15:29:02');
INSERT INTO `asistencias` VALUES ('9877', '62', 'LUCRECIA TORRES', 'Lunes', '09/01/2017', '08:25:00', '17:53:00', null, '2017-04-04 15:29:02', '2017-04-04 15:29:02');
INSERT INTO `asistencias` VALUES ('9878', '62', 'LUCRECIA TORRES', 'Martes', '10/01/2017', '08:36:00', '17:22:00', null, '2017-04-04 15:29:02', '2017-04-04 15:29:02');
INSERT INTO `asistencias` VALUES ('9879', '62', 'LUCRECIA TORRES', 'Miércoles', '11/01/2017', '08:33:00', '18:01:00', null, '2017-04-04 15:29:02', '2017-04-04 15:29:02');
INSERT INTO `asistencias` VALUES ('9880', '62', 'LUCRECIA TORRES', 'Jueves', '12/01/2017', '08:23:00', '17:04:00', null, '2017-04-04 15:29:02', '2017-04-04 15:29:02');
INSERT INTO `asistencias` VALUES ('9881', '62', 'LUCRECIA TORRES', 'Viernes', '13/01/2017', '08:37:00', '17:40:00', null, '2017-04-04 15:29:03', '2017-04-04 15:29:03');
INSERT INTO `asistencias` VALUES ('9882', '62', 'LUCRECIA TORRES', 'Lunes', '16/01/2017', '08:38:00', '17:06:00', null, '2017-04-04 15:29:03', '2017-04-04 15:29:03');
INSERT INTO `asistencias` VALUES ('9883', '62', 'LUCRECIA TORRES', 'Martes', '17/01/2017', '08:28:00', '16:56:00', null, '2017-04-04 15:29:03', '2017-04-04 15:29:03');
INSERT INTO `asistencias` VALUES ('9884', '62', 'LUCRECIA TORRES', 'Miércoles', '18/01/2017', '08:02:00', '15:32:00', null, '2017-04-04 15:29:03', '2017-04-04 15:29:03');
INSERT INTO `asistencias` VALUES ('9885', '62', 'LUCRECIA TORRES', 'Jueves', '19/01/2017', '08:29:00', '17:31:00', null, '2017-04-04 15:29:03', '2017-04-04 15:29:03');
INSERT INTO `asistencias` VALUES ('9886', '62', 'LUCRECIA TORRES', 'Viernes', '20/01/2017', null, null, '1', '2017-04-04 15:29:03', '2017-04-04 15:29:03');
INSERT INTO `asistencias` VALUES ('9887', '62', 'LUCRECIA TORRES', 'Lunes', '23/01/2017', '08:28:00', '18:01:00', null, '2017-04-04 15:29:03', '2017-04-04 15:29:03');
INSERT INTO `asistencias` VALUES ('9888', '62', 'LUCRECIA TORRES', 'Martes', '24/01/2017', '08:26:00', '17:17:00', null, '2017-04-04 15:29:03', '2017-04-04 15:29:03');
INSERT INTO `asistencias` VALUES ('9889', '62', 'LUCRECIA TORRES', 'Miércoles', '25/01/2017', '08:31:00', '17:53:00', null, '2017-04-04 15:29:03', '2017-04-04 15:29:03');
INSERT INTO `asistencias` VALUES ('9890', '62', 'LUCRECIA TORRES', 'Jueves', '26/01/2017', '08:27:00', '17:04:00', null, '2017-04-04 15:29:03', '2017-04-04 15:29:03');
INSERT INTO `asistencias` VALUES ('9891', '62', 'LUCRECIA TORRES', 'Viernes', '27/01/2017', '08:33:00', '17:29:00', null, '2017-04-04 15:29:03', '2017-04-04 15:29:03');
INSERT INTO `asistencias` VALUES ('9892', '62', 'LUCRECIA TORRES', 'Lunes', '30/01/2017', '08:16:00', '17:12:00', null, '2017-04-04 15:29:03', '2017-04-04 15:29:03');
INSERT INTO `asistencias` VALUES ('9893', '62', 'LUCRECIA TORRES', 'Martes', '31/01/2017', '08:30:00', '17:27:00', null, '2017-04-04 15:29:03', '2017-04-04 15:29:03');
INSERT INTO `asistencias` VALUES ('9894', '36', 'LUIS CIFUENTES', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:29:03', '2017-04-04 15:29:03');
INSERT INTO `asistencias` VALUES ('9895', '36', 'LUIS CIFUENTES', 'Martes', '03/01/2017', null, null, '1', '2017-04-04 15:29:03', '2017-04-04 15:29:03');
INSERT INTO `asistencias` VALUES ('9896', '36', 'LUIS CIFUENTES', 'Miércoles', '04/01/2017', null, null, '1', '2017-04-04 15:29:03', '2017-04-04 15:29:03');
INSERT INTO `asistencias` VALUES ('9897', '36', 'LUIS CIFUENTES', 'Jueves', '05/01/2017', null, null, '1', '2017-04-04 15:29:03', '2017-04-04 15:29:03');
INSERT INTO `asistencias` VALUES ('9898', '36', 'LUIS CIFUENTES', 'Viernes', '06/01/2017', null, null, '1', '2017-04-04 15:29:03', '2017-04-04 15:29:03');
INSERT INTO `asistencias` VALUES ('9899', '36', 'LUIS CIFUENTES', 'Lunes', '09/01/2017', null, null, '1', '2017-04-04 15:29:03', '2017-04-04 15:29:03');
INSERT INTO `asistencias` VALUES ('9900', '36', 'LUIS CIFUENTES', 'Martes', '10/01/2017', null, null, '1', '2017-04-04 15:29:03', '2017-04-04 15:29:03');
INSERT INTO `asistencias` VALUES ('9901', '36', 'LUIS CIFUENTES', 'Miércoles', '11/01/2017', null, null, '1', '2017-04-04 15:29:03', '2017-04-04 15:29:03');
INSERT INTO `asistencias` VALUES ('9902', '36', 'LUIS CIFUENTES', 'Jueves', '12/01/2017', null, null, '1', '2017-04-04 15:29:03', '2017-04-04 15:29:03');
INSERT INTO `asistencias` VALUES ('9903', '36', 'LUIS CIFUENTES', 'Viernes', '13/01/2017', null, null, '1', '2017-04-04 15:29:03', '2017-04-04 15:29:03');
INSERT INTO `asistencias` VALUES ('9904', '36', 'LUIS CIFUENTES', 'Lunes', '16/01/2017', null, null, '1', '2017-04-04 15:29:03', '2017-04-04 15:29:03');
INSERT INTO `asistencias` VALUES ('9905', '36', 'LUIS CIFUENTES', 'Martes', '17/01/2017', null, null, '1', '2017-04-04 15:29:03', '2017-04-04 15:29:03');
INSERT INTO `asistencias` VALUES ('9906', '36', 'LUIS CIFUENTES', 'Miércoles', '18/01/2017', null, null, '1', '2017-04-04 15:29:03', '2017-04-04 15:29:03');
INSERT INTO `asistencias` VALUES ('9907', '36', 'LUIS CIFUENTES', 'Jueves', '19/01/2017', null, null, '1', '2017-04-04 15:29:03', '2017-04-04 15:29:03');
INSERT INTO `asistencias` VALUES ('9908', '36', 'LUIS CIFUENTES', 'Viernes', '20/01/2017', null, null, '1', '2017-04-04 15:29:03', '2017-04-04 15:29:03');
INSERT INTO `asistencias` VALUES ('9909', '36', 'LUIS CIFUENTES', 'Lunes', '23/01/2017', null, null, '1', '2017-04-04 15:29:03', '2017-04-04 15:29:03');
INSERT INTO `asistencias` VALUES ('9910', '36', 'LUIS CIFUENTES', 'Martes', '24/01/2017', null, null, '1', '2017-04-04 15:29:03', '2017-04-04 15:29:03');
INSERT INTO `asistencias` VALUES ('9911', '36', 'LUIS CIFUENTES', 'Miércoles', '25/01/2017', null, null, '1', '2017-04-04 15:29:03', '2017-04-04 15:29:03');
INSERT INTO `asistencias` VALUES ('9912', '36', 'LUIS CIFUENTES', 'Jueves', '26/01/2017', null, null, '1', '2017-04-04 15:29:03', '2017-04-04 15:29:03');
INSERT INTO `asistencias` VALUES ('9913', '36', 'LUIS CIFUENTES', 'Viernes', '27/01/2017', null, null, '1', '2017-04-04 15:29:03', '2017-04-04 15:29:03');
INSERT INTO `asistencias` VALUES ('9914', '36', 'LUIS CIFUENTES', 'Lunes', '30/01/2017', null, null, '1', '2017-04-04 15:29:03', '2017-04-04 15:29:03');
INSERT INTO `asistencias` VALUES ('9915', '36', 'LUIS CIFUENTES', 'Martes', '31/01/2017', null, null, '1', '2017-04-04 15:29:04', '2017-04-04 15:29:04');
INSERT INTO `asistencias` VALUES ('9916', '66', 'Luis Ochoa', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:29:04', '2017-04-04 15:29:04');
INSERT INTO `asistencias` VALUES ('9917', '66', 'Luis Ochoa', 'Martes', '03/01/2017', '08:19:00', '17:28:00', null, '2017-04-04 15:29:04', '2017-04-04 15:29:04');
INSERT INTO `asistencias` VALUES ('9918', '66', 'Luis Ochoa', 'Miércoles', '04/01/2017', '07:44:00', '17:10:00', null, '2017-04-04 15:29:04', '2017-04-04 15:29:04');
INSERT INTO `asistencias` VALUES ('9919', '66', 'Luis Ochoa', 'Jueves', '05/01/2017', '08:04:00', '17:03:00', null, '2017-04-04 15:29:04', '2017-04-04 15:29:04');
INSERT INTO `asistencias` VALUES ('9920', '66', 'Luis Ochoa', 'Viernes', '06/01/2017', '08:15:00', '17:06:00', null, '2017-04-04 15:29:04', '2017-04-04 15:29:04');
INSERT INTO `asistencias` VALUES ('9921', '66', 'Luis Ochoa', 'Lunes', '09/01/2017', '08:25:00', '17:28:00', null, '2017-04-04 15:29:04', '2017-04-04 15:29:04');
INSERT INTO `asistencias` VALUES ('9922', '66', 'Luis Ochoa', 'Martes', '10/01/2017', '08:34:00', '17:03:00', null, '2017-04-04 15:29:04', '2017-04-04 15:29:04');
INSERT INTO `asistencias` VALUES ('9923', '66', 'Luis Ochoa', 'Miércoles', '11/01/2017', '08:33:00', '17:17:00', null, '2017-04-04 15:29:04', '2017-04-04 15:29:04');
INSERT INTO `asistencias` VALUES ('9924', '66', 'Luis Ochoa', 'Jueves', '12/01/2017', '08:16:00', '17:18:00', null, '2017-04-04 15:29:04', '2017-04-04 15:29:04');
INSERT INTO `asistencias` VALUES ('9925', '66', 'Luis Ochoa', 'Viernes', '13/01/2017', '08:41:00', '17:29:00', null, '2017-04-04 15:29:04', '2017-04-04 15:29:04');
INSERT INTO `asistencias` VALUES ('9926', '66', 'Luis Ochoa', 'Lunes', '16/01/2017', '08:27:00', '17:08:00', null, '2017-04-04 15:29:04', '2017-04-04 15:29:04');
INSERT INTO `asistencias` VALUES ('9927', '66', 'Luis Ochoa', 'Martes', '17/01/2017', '08:28:00', '17:18:00', null, '2017-04-04 15:29:04', '2017-04-04 15:29:04');
INSERT INTO `asistencias` VALUES ('9928', '66', 'Luis Ochoa', 'Miércoles', '18/01/2017', '08:45:00', '17:14:00', null, '2017-04-04 15:29:04', '2017-04-04 15:29:04');
INSERT INTO `asistencias` VALUES ('9929', '66', 'Luis Ochoa', 'Jueves', '19/01/2017', '08:29:00', null, null, '2017-04-04 15:29:04', '2017-04-04 15:29:04');
INSERT INTO `asistencias` VALUES ('9930', '66', 'Luis Ochoa', 'Viernes', '20/01/2017', '08:35:00', '17:00:00', null, '2017-04-04 15:29:04', '2017-04-04 15:29:04');
INSERT INTO `asistencias` VALUES ('9931', '66', 'Luis Ochoa', 'Lunes', '23/01/2017', '08:32:00', '17:13:00', null, '2017-04-04 15:29:04', '2017-04-04 15:29:04');
INSERT INTO `asistencias` VALUES ('9932', '66', 'Luis Ochoa', 'Martes', '24/01/2017', '08:26:00', '17:14:00', null, '2017-04-04 15:29:04', '2017-04-04 15:29:04');
INSERT INTO `asistencias` VALUES ('9933', '66', 'Luis Ochoa', 'Miércoles', '25/01/2017', '08:28:00', '17:05:00', null, '2017-04-04 15:29:04', '2017-04-04 15:29:04');
INSERT INTO `asistencias` VALUES ('9934', '66', 'Luis Ochoa', 'Jueves', '26/01/2017', '08:07:00', '17:08:00', null, '2017-04-04 15:29:04', '2017-04-04 15:29:04');
INSERT INTO `asistencias` VALUES ('9935', '66', 'Luis Ochoa', 'Viernes', '27/01/2017', '08:33:00', '17:04:00', null, '2017-04-04 15:29:04', '2017-04-04 15:29:04');
INSERT INTO `asistencias` VALUES ('9936', '66', 'Luis Ochoa', 'Lunes', '30/01/2017', '08:23:00', '17:10:00', null, '2017-04-04 15:29:04', '2017-04-04 15:29:04');
INSERT INTO `asistencias` VALUES ('9937', '66', 'Luis Ochoa', 'Martes', '31/01/2017', '07:25:00', null, null, '2017-04-04 15:29:04', '2017-04-04 15:29:04');
INSERT INTO `asistencias` VALUES ('9938', '15', 'MABEL CORDOVA', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:29:04', '2017-04-04 15:29:04');
INSERT INTO `asistencias` VALUES ('9939', '15', 'MABEL CORDOVA', 'Martes', '03/01/2017', '09:03:00', '17:37:00', null, '2017-04-04 15:29:04', '2017-04-04 15:29:04');
INSERT INTO `asistencias` VALUES ('9940', '15', 'MABEL CORDOVA', 'Miércoles', '04/01/2017', '08:44:00', null, null, '2017-04-04 15:29:04', '2017-04-04 15:29:04');
INSERT INTO `asistencias` VALUES ('9941', '15', 'MABEL CORDOVA', 'Jueves', '05/01/2017', '10:23:00', '15:01:00', null, '2017-04-04 15:29:04', '2017-04-04 15:29:04');
INSERT INTO `asistencias` VALUES ('9942', '15', 'MABEL CORDOVA', 'Viernes', '06/01/2017', '09:03:00', '17:19:00', null, '2017-04-04 15:29:04', '2017-04-04 15:29:04');
INSERT INTO `asistencias` VALUES ('9943', '15', 'MABEL CORDOVA', 'Lunes', '09/01/2017', '08:30:00', '17:14:00', null, '2017-04-04 15:29:04', '2017-04-04 15:29:04');
INSERT INTO `asistencias` VALUES ('9944', '15', 'MABEL CORDOVA', 'Martes', '10/01/2017', '09:40:00', '17:07:00', null, '2017-04-04 15:29:04', '2017-04-04 15:29:04');
INSERT INTO `asistencias` VALUES ('9945', '15', 'MABEL CORDOVA', 'Miércoles', '11/01/2017', '08:36:00', null, null, '2017-04-04 15:29:04', '2017-04-04 15:29:04');
INSERT INTO `asistencias` VALUES ('9946', '15', 'MABEL CORDOVA', 'Jueves', '12/01/2017', '08:58:00', '17:20:00', null, '2017-04-04 15:29:04', '2017-04-04 15:29:04');
INSERT INTO `asistencias` VALUES ('9947', '15', 'MABEL CORDOVA', 'Viernes', '13/01/2017', '09:25:00', '17:15:00', null, '2017-04-04 15:29:04', '2017-04-04 15:29:04');
INSERT INTO `asistencias` VALUES ('9948', '15', 'MABEL CORDOVA', 'Lunes', '16/01/2017', '08:29:00', '17:13:00', null, '2017-04-04 15:29:04', '2017-04-04 15:29:04');
INSERT INTO `asistencias` VALUES ('9949', '15', 'MABEL CORDOVA', 'Martes', '17/01/2017', '07:53:00', '17:14:00', null, '2017-04-04 15:29:04', '2017-04-04 15:29:04');
INSERT INTO `asistencias` VALUES ('9950', '15', 'MABEL CORDOVA', 'Miércoles', '18/01/2017', null, null, '1', '2017-04-04 15:29:04', '2017-04-04 15:29:04');
INSERT INTO `asistencias` VALUES ('9951', '15', 'MABEL CORDOVA', 'Jueves', '19/01/2017', '08:23:00', '17:06:00', null, '2017-04-04 15:29:04', '2017-04-04 15:29:04');
INSERT INTO `asistencias` VALUES ('9952', '15', 'MABEL CORDOVA', 'Viernes', '20/01/2017', '08:15:00', '17:25:00', null, '2017-04-04 15:29:05', '2017-04-04 15:29:05');
INSERT INTO `asistencias` VALUES ('9953', '15', 'MABEL CORDOVA', 'Lunes', '23/01/2017', '08:53:00', '17:17:00', null, '2017-04-04 15:29:05', '2017-04-04 15:29:05');
INSERT INTO `asistencias` VALUES ('9954', '15', 'MABEL CORDOVA', 'Martes', '24/01/2017', '09:04:00', '15:38:00', null, '2017-04-04 15:29:05', '2017-04-04 15:29:05');
INSERT INTO `asistencias` VALUES ('9955', '15', 'MABEL CORDOVA', 'Miércoles', '25/01/2017', '08:37:00', '17:32:00', null, '2017-04-04 15:29:05', '2017-04-04 15:29:05');
INSERT INTO `asistencias` VALUES ('9956', '15', 'MABEL CORDOVA', 'Jueves', '26/01/2017', '08:47:00', '17:20:00', null, '2017-04-04 15:29:05', '2017-04-04 15:29:05');
INSERT INTO `asistencias` VALUES ('9957', '15', 'MABEL CORDOVA', 'Viernes', '27/01/2017', '09:21:00', '17:21:00', null, '2017-04-04 15:29:05', '2017-04-04 15:29:05');
INSERT INTO `asistencias` VALUES ('9958', '15', 'MABEL CORDOVA', 'Lunes', '30/01/2017', '08:31:00', '17:14:00', null, '2017-04-04 15:29:05', '2017-04-04 15:29:05');
INSERT INTO `asistencias` VALUES ('9959', '15', 'MABEL CORDOVA', 'Martes', '31/01/2017', '08:18:00', '16:25:00', null, '2017-04-04 15:29:05', '2017-04-04 15:29:05');
INSERT INTO `asistencias` VALUES ('9960', '44', 'MARCELO MALDONADO', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:29:05', '2017-04-04 15:29:05');
INSERT INTO `asistencias` VALUES ('9961', '44', 'MARCELO MALDONADO', 'Martes', '03/01/2017', '08:14:00', '17:00:00', null, '2017-04-04 15:29:05', '2017-04-04 15:29:05');
INSERT INTO `asistencias` VALUES ('9962', '44', 'MARCELO MALDONADO', 'Miércoles', '04/01/2017', '07:59:00', '17:00:00', null, '2017-04-04 15:29:05', '2017-04-04 15:29:05');
INSERT INTO `asistencias` VALUES ('9963', '44', 'MARCELO MALDONADO', 'Jueves', '05/01/2017', null, '17:00:00', null, '2017-04-04 15:29:05', '2017-04-04 15:29:05');
INSERT INTO `asistencias` VALUES ('9964', '44', 'MARCELO MALDONADO', 'Viernes', '06/01/2017', null, '17:00:00', null, '2017-04-04 15:29:05', '2017-04-04 15:29:05');
INSERT INTO `asistencias` VALUES ('9965', '44', 'MARCELO MALDONADO', 'Lunes', '09/01/2017', '08:24:00', '16:59:00', null, '2017-04-04 15:29:05', '2017-04-04 15:29:05');
INSERT INTO `asistencias` VALUES ('9966', '44', 'MARCELO MALDONADO', 'Martes', '10/01/2017', null, null, '1', '2017-04-04 15:29:05', '2017-04-04 15:29:05');
INSERT INTO `asistencias` VALUES ('9967', '44', 'MARCELO MALDONADO', 'Miércoles', '11/01/2017', '08:14:00', '17:04:00', null, '2017-04-04 15:29:05', '2017-04-04 15:29:05');
INSERT INTO `asistencias` VALUES ('9968', '44', 'MARCELO MALDONADO', 'Jueves', '12/01/2017', '08:20:00', '16:59:00', null, '2017-04-04 15:29:05', '2017-04-04 15:29:05');
INSERT INTO `asistencias` VALUES ('9969', '44', 'MARCELO MALDONADO', 'Viernes', '13/01/2017', '07:49:00', '17:06:00', null, '2017-04-04 15:29:05', '2017-04-04 15:29:05');
INSERT INTO `asistencias` VALUES ('9970', '44', 'MARCELO MALDONADO', 'Lunes', '16/01/2017', null, '17:00:00', null, '2017-04-04 15:29:05', '2017-04-04 15:29:05');
INSERT INTO `asistencias` VALUES ('9971', '44', 'MARCELO MALDONADO', 'Martes', '17/01/2017', '06:11:00', '17:01:00', null, '2017-04-04 15:29:05', '2017-04-04 15:29:05');
INSERT INTO `asistencias` VALUES ('9972', '44', 'MARCELO MALDONADO', 'Miércoles', '18/01/2017', '08:26:00', '19:31:00', null, '2017-04-04 15:29:05', '2017-04-04 15:29:05');
INSERT INTO `asistencias` VALUES ('9973', '44', 'MARCELO MALDONADO', 'Jueves', '19/01/2017', '08:13:00', '17:00:00', null, '2017-04-04 15:29:05', '2017-04-04 15:29:05');
INSERT INTO `asistencias` VALUES ('9974', '44', 'MARCELO MALDONADO', 'Viernes', '20/01/2017', '07:48:00', '17:01:00', null, '2017-04-04 15:29:05', '2017-04-04 15:29:05');
INSERT INTO `asistencias` VALUES ('9975', '44', 'MARCELO MALDONADO', 'Lunes', '23/01/2017', '07:58:00', '17:01:00', null, '2017-04-04 15:29:05', '2017-04-04 15:29:05');
INSERT INTO `asistencias` VALUES ('9976', '44', 'MARCELO MALDONADO', 'Martes', '24/01/2017', '08:02:00', null, null, '2017-04-04 15:29:05', '2017-04-04 15:29:05');
INSERT INTO `asistencias` VALUES ('9977', '44', 'MARCELO MALDONADO', 'Miércoles', '25/01/2017', null, '19:28:00', null, '2017-04-04 15:29:05', '2017-04-04 15:29:05');
INSERT INTO `asistencias` VALUES ('9978', '44', 'MARCELO MALDONADO', 'Jueves', '26/01/2017', '08:12:00', '19:30:00', null, '2017-04-04 15:29:05', '2017-04-04 15:29:05');
INSERT INTO `asistencias` VALUES ('9979', '44', 'MARCELO MALDONADO', 'Viernes', '27/01/2017', null, '19:24:00', null, '2017-04-04 15:29:05', '2017-04-04 15:29:05');
INSERT INTO `asistencias` VALUES ('9980', '44', 'MARCELO MALDONADO', 'Lunes', '30/01/2017', '08:12:00', '17:00:00', null, '2017-04-04 15:29:05', '2017-04-04 15:29:05');
INSERT INTO `asistencias` VALUES ('9981', '44', 'MARCELO MALDONADO', 'Martes', '31/01/2017', '08:19:00', '17:01:00', null, '2017-04-04 15:29:05', '2017-04-04 15:29:05');
INSERT INTO `asistencias` VALUES ('9982', '61', 'MARCELO NARVAEZ', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:29:05', '2017-04-04 15:29:05');
INSERT INTO `asistencias` VALUES ('9983', '61', 'MARCELO NARVAEZ', 'Martes', '03/01/2017', null, null, '1', '2017-04-04 15:29:05', '2017-04-04 15:29:05');
INSERT INTO `asistencias` VALUES ('9984', '61', 'MARCELO NARVAEZ', 'Miércoles', '04/01/2017', null, null, '1', '2017-04-04 15:29:05', '2017-04-04 15:29:05');
INSERT INTO `asistencias` VALUES ('9985', '61', 'MARCELO NARVAEZ', 'Jueves', '05/01/2017', null, null, '1', '2017-04-04 15:29:05', '2017-04-04 15:29:05');
INSERT INTO `asistencias` VALUES ('9986', '61', 'MARCELO NARVAEZ', 'Viernes', '06/01/2017', null, null, '1', '2017-04-04 15:29:06', '2017-04-04 15:29:06');
INSERT INTO `asistencias` VALUES ('9987', '61', 'MARCELO NARVAEZ', 'Lunes', '09/01/2017', null, null, '1', '2017-04-04 15:29:06', '2017-04-04 15:29:06');
INSERT INTO `asistencias` VALUES ('9988', '61', 'MARCELO NARVAEZ', 'Martes', '10/01/2017', null, null, '1', '2017-04-04 15:29:06', '2017-04-04 15:29:06');
INSERT INTO `asistencias` VALUES ('9989', '61', 'MARCELO NARVAEZ', 'Miércoles', '11/01/2017', null, null, '1', '2017-04-04 15:29:06', '2017-04-04 15:29:06');
INSERT INTO `asistencias` VALUES ('9990', '61', 'MARCELO NARVAEZ', 'Jueves', '12/01/2017', null, null, '1', '2017-04-04 15:29:06', '2017-04-04 15:29:06');
INSERT INTO `asistencias` VALUES ('9991', '61', 'MARCELO NARVAEZ', 'Viernes', '13/01/2017', null, null, '1', '2017-04-04 15:29:06', '2017-04-04 15:29:06');
INSERT INTO `asistencias` VALUES ('9992', '61', 'MARCELO NARVAEZ', 'Lunes', '16/01/2017', null, null, '1', '2017-04-04 15:29:06', '2017-04-04 15:29:06');
INSERT INTO `asistencias` VALUES ('9993', '61', 'MARCELO NARVAEZ', 'Martes', '17/01/2017', null, null, '1', '2017-04-04 15:29:06', '2017-04-04 15:29:06');
INSERT INTO `asistencias` VALUES ('9994', '61', 'MARCELO NARVAEZ', 'Miércoles', '18/01/2017', null, null, '1', '2017-04-04 15:29:06', '2017-04-04 15:29:06');
INSERT INTO `asistencias` VALUES ('9995', '61', 'MARCELO NARVAEZ', 'Jueves', '19/01/2017', null, null, '1', '2017-04-04 15:29:06', '2017-04-04 15:29:06');
INSERT INTO `asistencias` VALUES ('9996', '61', 'MARCELO NARVAEZ', 'Viernes', '20/01/2017', null, null, '1', '2017-04-04 15:29:06', '2017-04-04 15:29:06');
INSERT INTO `asistencias` VALUES ('9997', '61', 'MARCELO NARVAEZ', 'Lunes', '23/01/2017', null, null, '1', '2017-04-04 15:29:06', '2017-04-04 15:29:06');
INSERT INTO `asistencias` VALUES ('9998', '61', 'MARCELO NARVAEZ', 'Martes', '24/01/2017', null, null, '1', '2017-04-04 15:29:06', '2017-04-04 15:29:06');
INSERT INTO `asistencias` VALUES ('9999', '61', 'MARCELO NARVAEZ', 'Miércoles', '25/01/2017', null, null, '1', '2017-04-04 15:29:06', '2017-04-04 15:29:06');
INSERT INTO `asistencias` VALUES ('10000', '61', 'MARCELO NARVAEZ', 'Jueves', '26/01/2017', null, null, '1', '2017-04-04 15:29:06', '2017-04-04 15:29:06');
INSERT INTO `asistencias` VALUES ('10001', '61', 'MARCELO NARVAEZ', 'Viernes', '27/01/2017', null, null, '1', '2017-04-04 15:29:06', '2017-04-04 15:29:06');
INSERT INTO `asistencias` VALUES ('10002', '61', 'MARCELO NARVAEZ', 'Lunes', '30/01/2017', null, null, '1', '2017-04-04 15:29:06', '2017-04-04 15:29:06');
INSERT INTO `asistencias` VALUES ('10003', '61', 'MARCELO NARVAEZ', 'Martes', '31/01/2017', null, null, '1', '2017-04-04 15:29:06', '2017-04-04 15:29:06');
INSERT INTO `asistencias` VALUES ('10004', '7', 'MARCOS ARBOLEDA', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:29:06', '2017-04-04 15:29:06');
INSERT INTO `asistencias` VALUES ('10005', '7', 'MARCOS ARBOLEDA', 'Martes', '03/01/2017', null, null, '1', '2017-04-04 15:29:06', '2017-04-04 15:29:06');
INSERT INTO `asistencias` VALUES ('10006', '7', 'MARCOS ARBOLEDA', 'Miércoles', '04/01/2017', null, null, '1', '2017-04-04 15:29:06', '2017-04-04 15:29:06');
INSERT INTO `asistencias` VALUES ('10007', '7', 'MARCOS ARBOLEDA', 'Jueves', '05/01/2017', null, null, '1', '2017-04-04 15:29:06', '2017-04-04 15:29:06');
INSERT INTO `asistencias` VALUES ('10008', '7', 'MARCOS ARBOLEDA', 'Viernes', '06/01/2017', null, null, '1', '2017-04-04 15:29:06', '2017-04-04 15:29:06');
INSERT INTO `asistencias` VALUES ('10009', '7', 'MARCOS ARBOLEDA', 'Lunes', '09/01/2017', null, null, '1', '2017-04-04 15:29:06', '2017-04-04 15:29:06');
INSERT INTO `asistencias` VALUES ('10010', '7', 'MARCOS ARBOLEDA', 'Martes', '10/01/2017', null, null, '1', '2017-04-04 15:29:06', '2017-04-04 15:29:06');
INSERT INTO `asistencias` VALUES ('10011', '7', 'MARCOS ARBOLEDA', 'Miércoles', '11/01/2017', null, null, '1', '2017-04-04 15:29:06', '2017-04-04 15:29:06');
INSERT INTO `asistencias` VALUES ('10012', '7', 'MARCOS ARBOLEDA', 'Jueves', '12/01/2017', null, null, '1', '2017-04-04 15:29:06', '2017-04-04 15:29:06');
INSERT INTO `asistencias` VALUES ('10013', '7', 'MARCOS ARBOLEDA', 'Viernes', '13/01/2017', null, null, '1', '2017-04-04 15:29:06', '2017-04-04 15:29:06');
INSERT INTO `asistencias` VALUES ('10014', '7', 'MARCOS ARBOLEDA', 'Lunes', '16/01/2017', null, null, '1', '2017-04-04 15:29:06', '2017-04-04 15:29:06');
INSERT INTO `asistencias` VALUES ('10015', '7', 'MARCOS ARBOLEDA', 'Martes', '17/01/2017', null, null, '1', '2017-04-04 15:29:06', '2017-04-04 15:29:06');
INSERT INTO `asistencias` VALUES ('10016', '7', 'MARCOS ARBOLEDA', 'Miércoles', '18/01/2017', null, null, '1', '2017-04-04 15:29:06', '2017-04-04 15:29:06');
INSERT INTO `asistencias` VALUES ('10017', '7', 'MARCOS ARBOLEDA', 'Jueves', '19/01/2017', null, null, '1', '2017-04-04 15:29:06', '2017-04-04 15:29:06');
INSERT INTO `asistencias` VALUES ('10018', '7', 'MARCOS ARBOLEDA', 'Viernes', '20/01/2017', null, null, '1', '2017-04-04 15:29:06', '2017-04-04 15:29:06');
INSERT INTO `asistencias` VALUES ('10019', '7', 'MARCOS ARBOLEDA', 'Lunes', '23/01/2017', null, null, '1', '2017-04-04 15:29:06', '2017-04-04 15:29:06');
INSERT INTO `asistencias` VALUES ('10020', '7', 'MARCOS ARBOLEDA', 'Martes', '24/01/2017', null, null, '1', '2017-04-04 15:29:06', '2017-04-04 15:29:06');
INSERT INTO `asistencias` VALUES ('10021', '7', 'MARCOS ARBOLEDA', 'Miércoles', '25/01/2017', null, null, '1', '2017-04-04 15:29:06', '2017-04-04 15:29:06');
INSERT INTO `asistencias` VALUES ('10022', '7', 'MARCOS ARBOLEDA', 'Jueves', '26/01/2017', null, null, '1', '2017-04-04 15:29:07', '2017-04-04 15:29:07');
INSERT INTO `asistencias` VALUES ('10023', '7', 'MARCOS ARBOLEDA', 'Viernes', '27/01/2017', null, null, '1', '2017-04-04 15:29:07', '2017-04-04 15:29:07');
INSERT INTO `asistencias` VALUES ('10024', '7', 'MARCOS ARBOLEDA', 'Lunes', '30/01/2017', null, null, '1', '2017-04-04 15:29:07', '2017-04-04 15:29:07');
INSERT INTO `asistencias` VALUES ('10025', '7', 'MARCOS ARBOLEDA', 'Martes', '31/01/2017', null, null, '1', '2017-04-04 15:29:07', '2017-04-04 15:29:07');
INSERT INTO `asistencias` VALUES ('10026', '74', 'MARIA PONCE', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:29:07', '2017-04-04 15:29:07');
INSERT INTO `asistencias` VALUES ('10027', '74', 'MARIA PONCE', 'Martes', '03/01/2017', '09:06:00', '18:08:00', null, '2017-04-04 15:29:07', '2017-04-04 15:29:07');
INSERT INTO `asistencias` VALUES ('10028', '74', 'MARIA PONCE', 'Miércoles', '04/01/2017', '08:59:00', '19:03:00', null, '2017-04-04 15:29:07', '2017-04-04 15:29:07');
INSERT INTO `asistencias` VALUES ('10029', '74', 'MARIA PONCE', 'Jueves', '05/01/2017', '09:03:00', '18:35:00', null, '2017-04-04 15:29:07', '2017-04-04 15:29:07');
INSERT INTO `asistencias` VALUES ('10030', '74', 'MARIA PONCE', 'Viernes', '06/01/2017', '09:06:00', '15:16:00', null, '2017-04-04 15:29:07', '2017-04-04 15:29:07');
INSERT INTO `asistencias` VALUES ('10031', '74', 'MARIA PONCE', 'Lunes', '09/01/2017', '09:47:00', '18:45:00', null, '2017-04-04 15:29:07', '2017-04-04 15:29:07');
INSERT INTO `asistencias` VALUES ('10032', '74', 'MARIA PONCE', 'Martes', '10/01/2017', '10:16:00', '18:57:00', null, '2017-04-04 15:29:07', '2017-04-04 15:29:07');
INSERT INTO `asistencias` VALUES ('10033', '74', 'MARIA PONCE', 'Miércoles', '11/01/2017', null, '18:07:00', null, '2017-04-04 15:29:07', '2017-04-04 15:29:07');
INSERT INTO `asistencias` VALUES ('10034', '74', 'MARIA PONCE', 'Jueves', '12/01/2017', '09:11:00', '17:27:00', null, '2017-04-04 15:29:07', '2017-04-04 15:29:07');
INSERT INTO `asistencias` VALUES ('10035', '74', 'MARIA PONCE', 'Viernes', '13/01/2017', '08:51:00', null, null, '2017-04-04 15:29:07', '2017-04-04 15:29:07');
INSERT INTO `asistencias` VALUES ('10036', '74', 'MARIA PONCE', 'Lunes', '16/01/2017', null, '18:13:00', null, '2017-04-04 15:29:07', '2017-04-04 15:29:07');
INSERT INTO `asistencias` VALUES ('10037', '74', 'MARIA PONCE', 'Martes', '17/01/2017', '07:39:00', '18:31:00', null, '2017-04-04 15:29:07', '2017-04-04 15:29:07');
INSERT INTO `asistencias` VALUES ('10038', '74', 'MARIA PONCE', 'Miércoles', '18/01/2017', '09:30:00', null, null, '2017-04-04 15:29:07', '2017-04-04 15:29:07');
INSERT INTO `asistencias` VALUES ('10039', '74', 'MARIA PONCE', 'Jueves', '19/01/2017', null, '17:06:00', null, '2017-04-04 15:29:07', '2017-04-04 15:29:07');
INSERT INTO `asistencias` VALUES ('10040', '74', 'MARIA PONCE', 'Viernes', '20/01/2017', '09:19:00', '18:56:00', null, '2017-04-04 15:29:07', '2017-04-04 15:29:07');
INSERT INTO `asistencias` VALUES ('10041', '74', 'MARIA PONCE', 'Lunes', '23/01/2017', '09:21:00', '17:08:00', null, '2017-04-04 15:29:07', '2017-04-04 15:29:07');
INSERT INTO `asistencias` VALUES ('10042', '74', 'MARIA PONCE', 'Martes', '24/01/2017', '09:30:00', '18:15:00', null, '2017-04-04 15:29:07', '2017-04-04 15:29:07');
INSERT INTO `asistencias` VALUES ('10043', '74', 'MARIA PONCE', 'Miércoles', '25/01/2017', '09:27:00', '17:20:00', null, '2017-04-04 15:29:07', '2017-04-04 15:29:07');
INSERT INTO `asistencias` VALUES ('10044', '74', 'MARIA PONCE', 'Jueves', '26/01/2017', '09:32:00', '18:18:00', null, '2017-04-04 15:29:07', '2017-04-04 15:29:07');
INSERT INTO `asistencias` VALUES ('10045', '74', 'MARIA PONCE', 'Viernes', '27/01/2017', '09:24:00', '18:14:00', null, '2017-04-04 15:29:07', '2017-04-04 15:29:07');
INSERT INTO `asistencias` VALUES ('10046', '74', 'MARIA PONCE', 'Lunes', '30/01/2017', '09:54:00', '18:42:00', null, '2017-04-04 15:29:07', '2017-04-04 15:29:07');
INSERT INTO `asistencias` VALUES ('10047', '74', 'MARIA PONCE', 'Martes', '31/01/2017', '09:22:00', '17:02:00', null, '2017-04-04 15:29:07', '2017-04-04 15:29:07');
INSERT INTO `asistencias` VALUES ('10048', '104', 'Maria Toapanta', 'Martes', '03/01/2017', '10:07:00', '19:21:00', null, '2017-04-04 15:29:07', '2017-04-04 15:29:07');
INSERT INTO `asistencias` VALUES ('10049', '104', 'Maria Toapanta', 'Miércoles', '04/01/2017', '10:10:00', '19:00:00', null, '2017-04-04 15:29:07', '2017-04-04 15:29:07');
INSERT INTO `asistencias` VALUES ('10050', '104', 'Maria Toapanta', 'Lunes', '09/01/2017', '10:12:00', '19:14:00', null, '2017-04-04 15:29:07', '2017-04-04 15:29:07');
INSERT INTO `asistencias` VALUES ('10051', '104', 'Maria Toapanta', 'Martes', '10/01/2017', '10:21:00', '19:09:00', null, '2017-04-04 15:29:07', '2017-04-04 15:29:07');
INSERT INTO `asistencias` VALUES ('10052', '104', 'Maria Toapanta', 'Miércoles', '11/01/2017', '10:12:00', '19:02:00', null, '2017-04-04 15:29:07', '2017-04-04 15:29:07');
INSERT INTO `asistencias` VALUES ('10053', '104', 'Maria Toapanta', 'Jueves', '12/01/2017', '10:22:00', '19:01:00', null, '2017-04-04 15:29:07', '2017-04-04 15:29:07');
INSERT INTO `asistencias` VALUES ('10054', '104', 'Maria Toapanta', 'Lunes', '16/01/2017', '10:37:00', '19:09:00', null, '2017-04-04 15:29:07', '2017-04-04 15:29:07');
INSERT INTO `asistencias` VALUES ('10055', '104', 'Maria Toapanta', 'Martes', '17/01/2017', '10:12:00', '19:00:00', null, '2017-04-04 15:29:07', '2017-04-04 15:29:07');
INSERT INTO `asistencias` VALUES ('10056', '104', 'Maria Toapanta', 'Miércoles', '18/01/2017', '10:13:00', '19:01:00', null, '2017-04-04 15:29:07', '2017-04-04 15:29:07');
INSERT INTO `asistencias` VALUES ('10057', '104', 'Maria Toapanta', 'Jueves', '19/01/2017', '10:16:00', '19:05:00', null, '2017-04-04 15:29:07', '2017-04-04 15:29:07');
INSERT INTO `asistencias` VALUES ('10058', '104', 'Maria Toapanta', 'Viernes', '20/01/2017', '10:42:00', '19:40:00', null, '2017-04-04 15:29:07', '2017-04-04 15:29:07');
INSERT INTO `asistencias` VALUES ('10059', '104', 'Maria Toapanta', 'Lunes', '23/01/2017', '10:34:00', '19:10:00', null, '2017-04-04 15:29:08', '2017-04-04 15:29:08');
INSERT INTO `asistencias` VALUES ('10060', '104', 'Maria Toapanta', 'Martes', '24/01/2017', '10:23:00', '19:10:00', null, '2017-04-04 15:29:08', '2017-04-04 15:29:08');
INSERT INTO `asistencias` VALUES ('10061', '104', 'Maria Toapanta', 'Jueves', '26/01/2017', '09:43:00', '19:01:00', null, '2017-04-04 15:29:08', '2017-04-04 15:29:08');
INSERT INTO `asistencias` VALUES ('10062', '104', 'Maria Toapanta', 'Viernes', '27/01/2017', '10:30:00', '19:00:00', null, '2017-04-04 15:29:08', '2017-04-04 15:29:08');
INSERT INTO `asistencias` VALUES ('10063', '104', 'Maria Toapanta', 'Martes', '31/01/2017', '10:19:00', '19:00:00', null, '2017-04-04 15:29:08', '2017-04-04 15:29:08');
INSERT INTO `asistencias` VALUES ('10064', '56', 'MARIA VITERI', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:29:08', '2017-04-04 15:29:08');
INSERT INTO `asistencias` VALUES ('10065', '56', 'MARIA VITERI', 'Martes', '03/01/2017', null, null, '1', '2017-04-04 15:29:08', '2017-04-04 15:29:08');
INSERT INTO `asistencias` VALUES ('10066', '56', 'MARIA VITERI', 'Miércoles', '04/01/2017', null, null, '1', '2017-04-04 15:29:08', '2017-04-04 15:29:08');
INSERT INTO `asistencias` VALUES ('10067', '56', 'MARIA VITERI', 'Jueves', '05/01/2017', null, null, '1', '2017-04-04 15:29:08', '2017-04-04 15:29:08');
INSERT INTO `asistencias` VALUES ('10068', '56', 'MARIA VITERI', 'Viernes', '06/01/2017', null, null, '1', '2017-04-04 15:29:08', '2017-04-04 15:29:08');
INSERT INTO `asistencias` VALUES ('10069', '56', 'MARIA VITERI', 'Lunes', '09/01/2017', null, null, '1', '2017-04-04 15:29:08', '2017-04-04 15:29:08');
INSERT INTO `asistencias` VALUES ('10070', '56', 'MARIA VITERI', 'Martes', '10/01/2017', null, null, '1', '2017-04-04 15:29:08', '2017-04-04 15:29:08');
INSERT INTO `asistencias` VALUES ('10071', '56', 'MARIA VITERI', 'Miércoles', '11/01/2017', null, null, '1', '2017-04-04 15:29:08', '2017-04-04 15:29:08');
INSERT INTO `asistencias` VALUES ('10072', '56', 'MARIA VITERI', 'Jueves', '12/01/2017', null, null, '1', '2017-04-04 15:29:08', '2017-04-04 15:29:08');
INSERT INTO `asistencias` VALUES ('10073', '56', 'MARIA VITERI', 'Viernes', '13/01/2017', null, null, '1', '2017-04-04 15:29:08', '2017-04-04 15:29:08');
INSERT INTO `asistencias` VALUES ('10074', '56', 'MARIA VITERI', 'Lunes', '16/01/2017', null, null, '1', '2017-04-04 15:29:08', '2017-04-04 15:29:08');
INSERT INTO `asistencias` VALUES ('10075', '56', 'MARIA VITERI', 'Martes', '17/01/2017', null, null, '1', '2017-04-04 15:29:08', '2017-04-04 15:29:08');
INSERT INTO `asistencias` VALUES ('10076', '56', 'MARIA VITERI', 'Miércoles', '18/01/2017', null, null, '1', '2017-04-04 15:29:08', '2017-04-04 15:29:08');
INSERT INTO `asistencias` VALUES ('10077', '56', 'MARIA VITERI', 'Jueves', '19/01/2017', null, null, '1', '2017-04-04 15:29:08', '2017-04-04 15:29:08');
INSERT INTO `asistencias` VALUES ('10078', '56', 'MARIA VITERI', 'Viernes', '20/01/2017', null, null, '1', '2017-04-04 15:29:08', '2017-04-04 15:29:08');
INSERT INTO `asistencias` VALUES ('10079', '56', 'MARIA VITERI', 'Lunes', '23/01/2017', null, null, '1', '2017-04-04 15:29:08', '2017-04-04 15:29:08');
INSERT INTO `asistencias` VALUES ('10080', '56', 'MARIA VITERI', 'Martes', '24/01/2017', null, null, '1', '2017-04-04 15:29:08', '2017-04-04 15:29:08');
INSERT INTO `asistencias` VALUES ('10081', '56', 'MARIA VITERI', 'Miércoles', '25/01/2017', null, null, '1', '2017-04-04 15:29:08', '2017-04-04 15:29:08');
INSERT INTO `asistencias` VALUES ('10082', '56', 'MARIA VITERI', 'Jueves', '26/01/2017', null, null, '1', '2017-04-04 15:29:08', '2017-04-04 15:29:08');
INSERT INTO `asistencias` VALUES ('10083', '56', 'MARIA VITERI', 'Viernes', '27/01/2017', null, null, '1', '2017-04-04 15:29:08', '2017-04-04 15:29:08');
INSERT INTO `asistencias` VALUES ('10084', '56', 'MARIA VITERI', 'Lunes', '30/01/2017', null, null, '1', '2017-04-04 15:29:08', '2017-04-04 15:29:08');
INSERT INTO `asistencias` VALUES ('10085', '56', 'MARIA VITERI', 'Martes', '31/01/2017', null, null, '1', '2017-04-04 15:29:08', '2017-04-04 15:29:08');
INSERT INTO `asistencias` VALUES ('10086', '109', 'Marieta Molina', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:29:08', '2017-04-04 15:29:08');
INSERT INTO `asistencias` VALUES ('10087', '109', 'Marieta Molina', 'Martes', '03/01/2017', '08:37:00', '15:13:00', null, '2017-04-04 15:29:08', '2017-04-04 15:29:08');
INSERT INTO `asistencias` VALUES ('10088', '109', 'Marieta Molina', 'Miércoles', '04/01/2017', '08:29:00', '15:18:00', null, '2017-04-04 15:29:08', '2017-04-04 15:29:08');
INSERT INTO `asistencias` VALUES ('10089', '109', 'Marieta Molina', 'Jueves', '05/01/2017', '08:30:00', '15:22:00', null, '2017-04-04 15:29:08', '2017-04-04 15:29:08');
INSERT INTO `asistencias` VALUES ('10090', '109', 'Marieta Molina', 'Viernes', '06/01/2017', '08:37:00', null, null, '2017-04-04 15:29:08', '2017-04-04 15:29:08');
INSERT INTO `asistencias` VALUES ('10091', '109', 'Marieta Molina', 'Lunes', '09/01/2017', null, null, '1', '2017-04-04 15:29:08', '2017-04-04 15:29:08');
INSERT INTO `asistencias` VALUES ('10092', '109', 'Marieta Molina', 'Martes', '10/01/2017', null, null, '1', '2017-04-04 15:29:08', '2017-04-04 15:29:08');
INSERT INTO `asistencias` VALUES ('10093', '109', 'Marieta Molina', 'Miércoles', '11/01/2017', null, null, '1', '2017-04-04 15:29:08', '2017-04-04 15:29:08');
INSERT INTO `asistencias` VALUES ('10094', '109', 'Marieta Molina', 'Jueves', '12/01/2017', null, null, '1', '2017-04-04 15:29:09', '2017-04-04 15:29:09');
INSERT INTO `asistencias` VALUES ('10095', '109', 'Marieta Molina', 'Viernes', '13/01/2017', null, null, '1', '2017-04-04 15:29:09', '2017-04-04 15:29:09');
INSERT INTO `asistencias` VALUES ('10096', '109', 'Marieta Molina', 'Lunes', '16/01/2017', null, null, '1', '2017-04-04 15:29:09', '2017-04-04 15:29:09');
INSERT INTO `asistencias` VALUES ('10097', '109', 'Marieta Molina', 'Martes', '17/01/2017', null, null, '1', '2017-04-04 15:29:09', '2017-04-04 15:29:09');
INSERT INTO `asistencias` VALUES ('10098', '109', 'Marieta Molina', 'Miércoles', '18/01/2017', null, null, '1', '2017-04-04 15:29:09', '2017-04-04 15:29:09');
INSERT INTO `asistencias` VALUES ('10099', '109', 'Marieta Molina', 'Jueves', '19/01/2017', null, null, '1', '2017-04-04 15:29:09', '2017-04-04 15:29:09');
INSERT INTO `asistencias` VALUES ('10100', '109', 'Marieta Molina', 'Viernes', '20/01/2017', null, null, '1', '2017-04-04 15:29:09', '2017-04-04 15:29:09');
INSERT INTO `asistencias` VALUES ('10101', '109', 'Marieta Molina', 'Lunes', '23/01/2017', null, null, '1', '2017-04-04 15:29:09', '2017-04-04 15:29:09');
INSERT INTO `asistencias` VALUES ('10102', '109', 'Marieta Molina', 'Martes', '24/01/2017', null, null, '1', '2017-04-04 15:29:09', '2017-04-04 15:29:09');
INSERT INTO `asistencias` VALUES ('10103', '109', 'Marieta Molina', 'Miércoles', '25/01/2017', null, null, '1', '2017-04-04 15:29:09', '2017-04-04 15:29:09');
INSERT INTO `asistencias` VALUES ('10104', '109', 'Marieta Molina', 'Jueves', '26/01/2017', null, null, '1', '2017-04-04 15:29:09', '2017-04-04 15:29:09');
INSERT INTO `asistencias` VALUES ('10105', '109', 'Marieta Molina', 'Viernes', '27/01/2017', null, null, '1', '2017-04-04 15:29:09', '2017-04-04 15:29:09');
INSERT INTO `asistencias` VALUES ('10106', '109', 'Marieta Molina', 'Lunes', '30/01/2017', null, null, '1', '2017-04-04 15:29:09', '2017-04-04 15:29:09');
INSERT INTO `asistencias` VALUES ('10107', '109', 'Marieta Molina', 'Martes', '31/01/2017', null, null, '1', '2017-04-04 15:29:09', '2017-04-04 15:29:09');
INSERT INTO `asistencias` VALUES ('10108', '63', 'MARILIN SALGADO', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:29:09', '2017-04-04 15:29:09');
INSERT INTO `asistencias` VALUES ('10109', '63', 'MARILIN SALGADO', 'Martes', '03/01/2017', '08:28:00', '17:26:00', null, '2017-04-04 15:29:09', '2017-04-04 15:29:09');
INSERT INTO `asistencias` VALUES ('10110', '63', 'MARILIN SALGADO', 'Miércoles', '04/01/2017', '07:44:00', '17:14:00', null, '2017-04-04 15:29:09', '2017-04-04 15:29:09');
INSERT INTO `asistencias` VALUES ('10111', '63', 'MARILIN SALGADO', 'Jueves', '05/01/2017', '08:04:00', '17:01:00', null, '2017-04-04 15:29:09', '2017-04-04 15:29:09');
INSERT INTO `asistencias` VALUES ('10112', '63', 'MARILIN SALGADO', 'Viernes', '06/01/2017', '08:30:00', '16:58:00', null, '2017-04-04 15:29:09', '2017-04-04 15:29:09');
INSERT INTO `asistencias` VALUES ('10113', '63', 'MARILIN SALGADO', 'Lunes', '09/01/2017', '08:25:00', '17:29:00', null, '2017-04-04 15:29:09', '2017-04-04 15:29:09');
INSERT INTO `asistencias` VALUES ('10114', '63', 'MARILIN SALGADO', 'Martes', '10/01/2017', '08:34:00', '17:13:00', null, '2017-04-04 15:29:09', '2017-04-04 15:29:09');
INSERT INTO `asistencias` VALUES ('10115', '63', 'MARILIN SALGADO', 'Miércoles', '11/01/2017', '08:33:00', '17:30:00', null, '2017-04-04 15:29:09', '2017-04-04 15:29:09');
INSERT INTO `asistencias` VALUES ('10116', '63', 'MARILIN SALGADO', 'Jueves', '12/01/2017', '08:16:00', '17:20:00', null, '2017-04-04 15:29:09', '2017-04-04 15:29:09');
INSERT INTO `asistencias` VALUES ('10117', '63', 'MARILIN SALGADO', 'Viernes', '13/01/2017', '10:21:00', '16:59:00', null, '2017-04-04 15:29:09', '2017-04-04 15:29:09');
INSERT INTO `asistencias` VALUES ('10118', '63', 'MARILIN SALGADO', 'Lunes', '16/01/2017', '08:26:00', '17:08:00', null, '2017-04-04 15:29:09', '2017-04-04 15:29:09');
INSERT INTO `asistencias` VALUES ('10119', '63', 'MARILIN SALGADO', 'Martes', '17/01/2017', '08:28:00', '17:20:00', null, '2017-04-04 15:29:09', '2017-04-04 15:29:09');
INSERT INTO `asistencias` VALUES ('10120', '63', 'MARILIN SALGADO', 'Miércoles', '18/01/2017', '08:32:00', '17:18:00', null, '2017-04-04 15:29:09', '2017-04-04 15:29:09');
INSERT INTO `asistencias` VALUES ('10121', '63', 'MARILIN SALGADO', 'Jueves', '19/01/2017', '08:29:00', '17:06:00', null, '2017-04-04 15:29:09', '2017-04-04 15:29:09');
INSERT INTO `asistencias` VALUES ('10122', '63', 'MARILIN SALGADO', 'Viernes', '20/01/2017', '08:36:00', '17:03:00', null, '2017-04-04 15:29:09', '2017-04-04 15:29:09');
INSERT INTO `asistencias` VALUES ('10123', '63', 'MARILIN SALGADO', 'Lunes', '23/01/2017', '08:32:00', '17:18:00', null, '2017-04-04 15:29:09', '2017-04-04 15:29:09');
INSERT INTO `asistencias` VALUES ('10124', '63', 'MARILIN SALGADO', 'Martes', '24/01/2017', '08:26:00', '17:30:00', null, '2017-04-04 15:29:09', '2017-04-04 15:29:09');
INSERT INTO `asistencias` VALUES ('10125', '63', 'MARILIN SALGADO', 'Miércoles', '25/01/2017', '08:28:00', '17:12:00', null, '2017-04-04 15:29:10', '2017-04-04 15:29:10');
INSERT INTO `asistencias` VALUES ('10126', '63', 'MARILIN SALGADO', 'Jueves', '26/01/2017', '08:07:00', '17:38:00', null, '2017-04-04 15:29:10', '2017-04-04 15:29:10');
INSERT INTO `asistencias` VALUES ('10127', '63', 'MARILIN SALGADO', 'Viernes', '27/01/2017', '08:19:00', '17:10:00', null, '2017-04-04 15:29:10', '2017-04-04 15:29:10');
INSERT INTO `asistencias` VALUES ('10128', '63', 'MARILIN SALGADO', 'Lunes', '30/01/2017', '08:22:00', '17:19:00', null, '2017-04-04 15:29:10', '2017-04-04 15:29:10');
INSERT INTO `asistencias` VALUES ('10129', '63', 'MARILIN SALGADO', 'Martes', '31/01/2017', '07:55:00', '17:35:00', null, '2017-04-04 15:29:10', '2017-04-04 15:29:10');
INSERT INTO `asistencias` VALUES ('10130', '72', 'MARIO SAENZ', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:29:10', '2017-04-04 15:29:10');
INSERT INTO `asistencias` VALUES ('10131', '72', 'MARIO SAENZ', 'Martes', '03/01/2017', '08:15:00', '17:06:00', null, '2017-04-04 15:29:10', '2017-04-04 15:29:10');
INSERT INTO `asistencias` VALUES ('10132', '72', 'MARIO SAENZ', 'Miércoles', '04/01/2017', '08:26:00', '17:07:00', null, '2017-04-04 15:29:10', '2017-04-04 15:29:10');
INSERT INTO `asistencias` VALUES ('10133', '72', 'MARIO SAENZ', 'Jueves', '05/01/2017', null, null, '1', '2017-04-04 15:29:10', '2017-04-04 15:29:10');
INSERT INTO `asistencias` VALUES ('10134', '72', 'MARIO SAENZ', 'Viernes', '06/01/2017', '08:27:00', '17:21:00', null, '2017-04-04 15:29:10', '2017-04-04 15:29:10');
INSERT INTO `asistencias` VALUES ('10135', '72', 'MARIO SAENZ', 'Lunes', '09/01/2017', null, null, '1', '2017-04-04 15:29:10', '2017-04-04 15:29:10');
INSERT INTO `asistencias` VALUES ('10136', '72', 'MARIO SAENZ', 'Martes', '10/01/2017', '08:23:00', '17:16:00', null, '2017-04-04 15:29:10', '2017-04-04 15:29:10');
INSERT INTO `asistencias` VALUES ('10137', '72', 'MARIO SAENZ', 'Miércoles', '11/01/2017', '08:20:00', '17:24:00', null, '2017-04-04 15:29:10', '2017-04-04 15:29:10');
INSERT INTO `asistencias` VALUES ('10138', '72', 'MARIO SAENZ', 'Jueves', '12/01/2017', '08:11:00', '17:10:00', null, '2017-04-04 15:29:10', '2017-04-04 15:29:10');
INSERT INTO `asistencias` VALUES ('10139', '72', 'MARIO SAENZ', 'Viernes', '13/01/2017', '08:09:00', '17:09:00', null, '2017-04-04 15:29:10', '2017-04-04 15:29:10');
INSERT INTO `asistencias` VALUES ('10140', '72', 'MARIO SAENZ', 'Lunes', '16/01/2017', '08:20:00', '17:12:00', null, '2017-04-04 15:29:10', '2017-04-04 15:29:10');
INSERT INTO `asistencias` VALUES ('10141', '72', 'MARIO SAENZ', 'Martes', '17/01/2017', '08:11:00', '17:18:00', null, '2017-04-04 15:29:10', '2017-04-04 15:29:10');
INSERT INTO `asistencias` VALUES ('10142', '72', 'MARIO SAENZ', 'Miércoles', '18/01/2017', '08:11:00', '17:24:00', null, '2017-04-04 15:29:10', '2017-04-04 15:29:10');
INSERT INTO `asistencias` VALUES ('10143', '72', 'MARIO SAENZ', 'Jueves', '19/01/2017', '08:10:00', '17:21:00', null, '2017-04-04 15:29:10', '2017-04-04 15:29:10');
INSERT INTO `asistencias` VALUES ('10144', '72', 'MARIO SAENZ', 'Viernes', '20/01/2017', '08:16:00', '17:18:00', null, '2017-04-04 15:29:10', '2017-04-04 15:29:10');
INSERT INTO `asistencias` VALUES ('10145', '72', 'MARIO SAENZ', 'Lunes', '23/01/2017', '08:21:00', '17:22:00', null, '2017-04-04 15:29:10', '2017-04-04 15:29:10');
INSERT INTO `asistencias` VALUES ('10146', '72', 'MARIO SAENZ', 'Martes', '24/01/2017', '08:18:00', '17:14:00', null, '2017-04-04 15:29:10', '2017-04-04 15:29:10');
INSERT INTO `asistencias` VALUES ('10147', '72', 'MARIO SAENZ', 'Miércoles', '25/01/2017', '08:24:00', '17:18:00', null, '2017-04-04 15:29:10', '2017-04-04 15:29:10');
INSERT INTO `asistencias` VALUES ('10148', '72', 'MARIO SAENZ', 'Jueves', '26/01/2017', '08:10:00', '17:17:00', null, '2017-04-04 15:29:10', '2017-04-04 15:29:10');
INSERT INTO `asistencias` VALUES ('10149', '72', 'MARIO SAENZ', 'Viernes', '27/01/2017', '08:09:00', '17:24:00', null, '2017-04-04 15:29:10', '2017-04-04 15:29:10');
INSERT INTO `asistencias` VALUES ('10150', '72', 'MARIO SAENZ', 'Lunes', '30/01/2017', '08:09:00', '17:14:00', null, '2017-04-04 15:29:10', '2017-04-04 15:29:10');
INSERT INTO `asistencias` VALUES ('10151', '72', 'MARIO SAENZ', 'Martes', '31/01/2017', '08:03:00', '17:33:00', null, '2017-04-04 15:29:10', '2017-04-04 15:29:10');
INSERT INTO `asistencias` VALUES ('10152', '57', 'MAURO BAQUERO', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:29:10', '2017-04-04 15:29:10');
INSERT INTO `asistencias` VALUES ('10153', '57', 'MAURO BAQUERO', 'Martes', '03/01/2017', null, null, '1', '2017-04-04 15:29:10', '2017-04-04 15:29:10');
INSERT INTO `asistencias` VALUES ('10154', '57', 'MAURO BAQUERO', 'Miércoles', '04/01/2017', null, null, '1', '2017-04-04 15:29:10', '2017-04-04 15:29:10');
INSERT INTO `asistencias` VALUES ('10155', '57', 'MAURO BAQUERO', 'Jueves', '05/01/2017', null, null, '1', '2017-04-04 15:29:10', '2017-04-04 15:29:10');
INSERT INTO `asistencias` VALUES ('10156', '57', 'MAURO BAQUERO', 'Viernes', '06/01/2017', null, null, '1', '2017-04-04 15:29:10', '2017-04-04 15:29:10');
INSERT INTO `asistencias` VALUES ('10157', '57', 'MAURO BAQUERO', 'Lunes', '09/01/2017', null, null, '1', '2017-04-04 15:29:11', '2017-04-04 15:29:11');
INSERT INTO `asistencias` VALUES ('10158', '57', 'MAURO BAQUERO', 'Martes', '10/01/2017', null, null, '1', '2017-04-04 15:29:11', '2017-04-04 15:29:11');
INSERT INTO `asistencias` VALUES ('10159', '57', 'MAURO BAQUERO', 'Miércoles', '11/01/2017', null, null, '1', '2017-04-04 15:29:11', '2017-04-04 15:29:11');
INSERT INTO `asistencias` VALUES ('10160', '57', 'MAURO BAQUERO', 'Jueves', '12/01/2017', null, null, '1', '2017-04-04 15:29:11', '2017-04-04 15:29:11');
INSERT INTO `asistencias` VALUES ('10161', '57', 'MAURO BAQUERO', 'Viernes', '13/01/2017', null, null, '1', '2017-04-04 15:29:11', '2017-04-04 15:29:11');
INSERT INTO `asistencias` VALUES ('10162', '57', 'MAURO BAQUERO', 'Lunes', '16/01/2017', null, null, '1', '2017-04-04 15:29:11', '2017-04-04 15:29:11');
INSERT INTO `asistencias` VALUES ('10163', '57', 'MAURO BAQUERO', 'Martes', '17/01/2017', null, null, '1', '2017-04-04 15:29:11', '2017-04-04 15:29:11');
INSERT INTO `asistencias` VALUES ('10164', '57', 'MAURO BAQUERO', 'Miércoles', '18/01/2017', null, null, '1', '2017-04-04 15:29:11', '2017-04-04 15:29:11');
INSERT INTO `asistencias` VALUES ('10165', '57', 'MAURO BAQUERO', 'Jueves', '19/01/2017', null, null, '1', '2017-04-04 15:29:11', '2017-04-04 15:29:11');
INSERT INTO `asistencias` VALUES ('10166', '57', 'MAURO BAQUERO', 'Viernes', '20/01/2017', null, null, '1', '2017-04-04 15:29:11', '2017-04-04 15:29:11');
INSERT INTO `asistencias` VALUES ('10167', '57', 'MAURO BAQUERO', 'Lunes', '23/01/2017', null, null, '1', '2017-04-04 15:29:11', '2017-04-04 15:29:11');
INSERT INTO `asistencias` VALUES ('10168', '57', 'MAURO BAQUERO', 'Martes', '24/01/2017', null, null, '1', '2017-04-04 15:29:11', '2017-04-04 15:29:11');
INSERT INTO `asistencias` VALUES ('10169', '57', 'MAURO BAQUERO', 'Miércoles', '25/01/2017', null, null, '1', '2017-04-04 15:29:11', '2017-04-04 15:29:11');
INSERT INTO `asistencias` VALUES ('10170', '57', 'MAURO BAQUERO', 'Jueves', '26/01/2017', null, null, '1', '2017-04-04 15:29:11', '2017-04-04 15:29:11');
INSERT INTO `asistencias` VALUES ('10171', '57', 'MAURO BAQUERO', 'Viernes', '27/01/2017', null, null, '1', '2017-04-04 15:29:11', '2017-04-04 15:29:11');
INSERT INTO `asistencias` VALUES ('10172', '57', 'MAURO BAQUERO', 'Lunes', '30/01/2017', null, null, '1', '2017-04-04 15:29:11', '2017-04-04 15:29:11');
INSERT INTO `asistencias` VALUES ('10173', '57', 'MAURO BAQUERO', 'Martes', '31/01/2017', null, null, '1', '2017-04-04 15:29:11', '2017-04-04 15:29:11');
INSERT INTO `asistencias` VALUES ('10174', '14', 'Mendieta Alejandra', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:29:11', '2017-04-04 15:29:11');
INSERT INTO `asistencias` VALUES ('10175', '14', 'Mendieta Alejandra', 'Martes', '03/01/2017', null, null, '1', '2017-04-04 15:29:11', '2017-04-04 15:29:11');
INSERT INTO `asistencias` VALUES ('10176', '14', 'Mendieta Alejandra', 'Miércoles', '04/01/2017', null, null, '1', '2017-04-04 15:29:11', '2017-04-04 15:29:11');
INSERT INTO `asistencias` VALUES ('10177', '14', 'Mendieta Alejandra', 'Jueves', '05/01/2017', null, null, '1', '2017-04-04 15:29:11', '2017-04-04 15:29:11');
INSERT INTO `asistencias` VALUES ('10178', '14', 'Mendieta Alejandra', 'Viernes', '06/01/2017', null, null, '1', '2017-04-04 15:29:11', '2017-04-04 15:29:11');
INSERT INTO `asistencias` VALUES ('10179', '14', 'Mendieta Alejandra', 'Lunes', '09/01/2017', null, null, '1', '2017-04-04 15:29:11', '2017-04-04 15:29:11');
INSERT INTO `asistencias` VALUES ('10180', '14', 'Mendieta Alejandra', 'Martes', '10/01/2017', null, null, '1', '2017-04-04 15:29:11', '2017-04-04 15:29:11');
INSERT INTO `asistencias` VALUES ('10181', '14', 'Mendieta Alejandra', 'Miércoles', '11/01/2017', null, null, '1', '2017-04-04 15:29:11', '2017-04-04 15:29:11');
INSERT INTO `asistencias` VALUES ('10182', '14', 'Mendieta Alejandra', 'Jueves', '12/01/2017', null, null, '1', '2017-04-04 15:29:11', '2017-04-04 15:29:11');
INSERT INTO `asistencias` VALUES ('10183', '14', 'Mendieta Alejandra', 'Viernes', '13/01/2017', null, null, '1', '2017-04-04 15:29:11', '2017-04-04 15:29:11');
INSERT INTO `asistencias` VALUES ('10184', '14', 'Mendieta Alejandra', 'Lunes', '16/01/2017', null, null, '1', '2017-04-04 15:29:11', '2017-04-04 15:29:11');
INSERT INTO `asistencias` VALUES ('10185', '14', 'Mendieta Alejandra', 'Martes', '17/01/2017', null, null, '1', '2017-04-04 15:29:11', '2017-04-04 15:29:11');
INSERT INTO `asistencias` VALUES ('10186', '14', 'Mendieta Alejandra', 'Miércoles', '18/01/2017', null, null, '1', '2017-04-04 15:29:11', '2017-04-04 15:29:11');
INSERT INTO `asistencias` VALUES ('10187', '14', 'Mendieta Alejandra', 'Jueves', '19/01/2017', null, null, '1', '2017-04-04 15:29:11', '2017-04-04 15:29:11');
INSERT INTO `asistencias` VALUES ('10188', '14', 'Mendieta Alejandra', 'Viernes', '20/01/2017', null, null, '1', '2017-04-04 15:29:11', '2017-04-04 15:29:11');
INSERT INTO `asistencias` VALUES ('10189', '14', 'Mendieta Alejandra', 'Lunes', '23/01/2017', null, null, '1', '2017-04-04 15:29:11', '2017-04-04 15:29:11');
INSERT INTO `asistencias` VALUES ('10190', '14', 'Mendieta Alejandra', 'Martes', '24/01/2017', null, null, '1', '2017-04-04 15:29:11', '2017-04-04 15:29:11');
INSERT INTO `asistencias` VALUES ('10191', '14', 'Mendieta Alejandra', 'Miércoles', '25/01/2017', null, null, '1', '2017-04-04 15:29:12', '2017-04-04 15:29:12');
INSERT INTO `asistencias` VALUES ('10192', '14', 'Mendieta Alejandra', 'Jueves', '26/01/2017', null, null, '1', '2017-04-04 15:29:12', '2017-04-04 15:29:12');
INSERT INTO `asistencias` VALUES ('10193', '14', 'Mendieta Alejandra', 'Viernes', '27/01/2017', null, null, '1', '2017-04-04 15:29:12', '2017-04-04 15:29:12');
INSERT INTO `asistencias` VALUES ('10194', '14', 'Mendieta Alejandra', 'Lunes', '30/01/2017', null, null, '1', '2017-04-04 15:29:12', '2017-04-04 15:29:12');
INSERT INTO `asistencias` VALUES ('10195', '14', 'Mendieta Alejandra', 'Martes', '31/01/2017', null, null, '1', '2017-04-04 15:29:12', '2017-04-04 15:29:12');
INSERT INTO `asistencias` VALUES ('10196', '30', 'MILENI SANTILLAN', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:29:12', '2017-04-04 15:29:12');
INSERT INTO `asistencias` VALUES ('10197', '30', 'MILENI SANTILLAN', 'Martes', '03/01/2017', '08:42:00', '17:20:00', null, '2017-04-04 15:29:12', '2017-04-04 15:29:12');
INSERT INTO `asistencias` VALUES ('10198', '30', 'MILENI SANTILLAN', 'Miércoles', '04/01/2017', '08:25:00', '17:20:00', null, '2017-04-04 15:29:12', '2017-04-04 15:29:12');
INSERT INTO `asistencias` VALUES ('10199', '30', 'MILENI SANTILLAN', 'Jueves', '05/01/2017', '08:46:00', '19:49:00', null, '2017-04-04 15:29:12', '2017-04-04 15:29:12');
INSERT INTO `asistencias` VALUES ('10200', '30', 'MILENI SANTILLAN', 'Viernes', '06/01/2017', '09:01:00', '19:11:00', null, '2017-04-04 15:29:12', '2017-04-04 15:29:12');
INSERT INTO `asistencias` VALUES ('10201', '30', 'MILENI SANTILLAN', 'Lunes', '09/01/2017', '08:55:00', '18:42:00', null, '2017-04-04 15:29:12', '2017-04-04 15:29:12');
INSERT INTO `asistencias` VALUES ('10202', '30', 'MILENI SANTILLAN', 'Martes', '10/01/2017', '08:21:00', '16:56:00', null, '2017-04-04 15:29:12', '2017-04-04 15:29:12');
INSERT INTO `asistencias` VALUES ('10203', '30', 'MILENI SANTILLAN', 'Miércoles', '11/01/2017', '09:04:00', null, null, '2017-04-04 15:29:12', '2017-04-04 15:29:12');
INSERT INTO `asistencias` VALUES ('10204', '30', 'MILENI SANTILLAN', 'Jueves', '12/01/2017', '08:46:00', '18:53:00', null, '2017-04-04 15:29:12', '2017-04-04 15:29:12');
INSERT INTO `asistencias` VALUES ('10205', '30', 'MILENI SANTILLAN', 'Viernes', '13/01/2017', '09:34:00', '17:28:00', null, '2017-04-04 15:29:12', '2017-04-04 15:29:12');
INSERT INTO `asistencias` VALUES ('10206', '30', 'MILENI SANTILLAN', 'Lunes', '16/01/2017', '08:06:00', '15:05:00', null, '2017-04-04 15:29:12', '2017-04-04 15:29:12');
INSERT INTO `asistencias` VALUES ('10207', '30', 'MILENI SANTILLAN', 'Martes', '17/01/2017', '09:14:00', '17:00:00', null, '2017-04-04 15:29:12', '2017-04-04 15:29:12');
INSERT INTO `asistencias` VALUES ('10208', '30', 'MILENI SANTILLAN', 'Miércoles', '18/01/2017', '08:53:00', '16:48:00', null, '2017-04-04 15:29:12', '2017-04-04 15:29:12');
INSERT INTO `asistencias` VALUES ('10209', '30', 'MILENI SANTILLAN', 'Jueves', '19/01/2017', null, null, '1', '2017-04-04 15:29:12', '2017-04-04 15:29:12');
INSERT INTO `asistencias` VALUES ('10210', '30', 'MILENI SANTILLAN', 'Viernes', '20/01/2017', '08:40:00', '17:07:00', null, '2017-04-04 15:29:12', '2017-04-04 15:29:12');
INSERT INTO `asistencias` VALUES ('10211', '30', 'MILENI SANTILLAN', 'Lunes', '23/01/2017', '08:56:00', '17:11:00', null, '2017-04-04 15:29:12', '2017-04-04 15:29:12');
INSERT INTO `asistencias` VALUES ('10212', '30', 'MILENI SANTILLAN', 'Martes', '24/01/2017', '09:01:00', '16:36:00', null, '2017-04-04 15:29:12', '2017-04-04 15:29:12');
INSERT INTO `asistencias` VALUES ('10213', '30', 'MILENI SANTILLAN', 'Miércoles', '25/01/2017', '10:45:00', '17:48:00', null, '2017-04-04 15:29:12', '2017-04-04 15:29:12');
INSERT INTO `asistencias` VALUES ('10214', '30', 'MILENI SANTILLAN', 'Jueves', '26/01/2017', '09:10:00', '15:19:00', null, '2017-04-04 15:29:12', '2017-04-04 15:29:12');
INSERT INTO `asistencias` VALUES ('10215', '30', 'MILENI SANTILLAN', 'Viernes', '27/01/2017', '09:02:00', '17:02:00', null, '2017-04-04 15:29:12', '2017-04-04 15:29:12');
INSERT INTO `asistencias` VALUES ('10216', '30', 'MILENI SANTILLAN', 'Lunes', '30/01/2017', null, null, '1', '2017-04-04 15:29:12', '2017-04-04 15:29:12');
INSERT INTO `asistencias` VALUES ('10217', '30', 'MILENI SANTILLAN', 'Martes', '31/01/2017', null, null, '1', '2017-04-04 15:29:12', '2017-04-04 15:29:12');
INSERT INTO `asistencias` VALUES ('10218', '6', 'MONICA MUNOZ', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:29:12', '2017-04-04 15:29:12');
INSERT INTO `asistencias` VALUES ('10219', '6', 'MONICA MUNOZ', 'Martes', '03/01/2017', null, null, '1', '2017-04-04 15:29:12', '2017-04-04 15:29:12');
INSERT INTO `asistencias` VALUES ('10220', '6', 'MONICA MUNOZ', 'Miércoles', '04/01/2017', null, null, '1', '2017-04-04 15:29:13', '2017-04-04 15:29:13');
INSERT INTO `asistencias` VALUES ('10221', '6', 'MONICA MUNOZ', 'Jueves', '05/01/2017', '08:34:00', '17:32:00', null, '2017-04-04 15:29:13', '2017-04-04 15:29:13');
INSERT INTO `asistencias` VALUES ('10222', '6', 'MONICA MUNOZ', 'Viernes', '06/01/2017', '08:43:00', '18:12:00', null, '2017-04-04 15:29:13', '2017-04-04 15:29:13');
INSERT INTO `asistencias` VALUES ('10223', '6', 'MONICA MUNOZ', 'Lunes', '09/01/2017', '08:25:00', '17:53:00', null, '2017-04-04 15:29:13', '2017-04-04 15:29:13');
INSERT INTO `asistencias` VALUES ('10224', '6', 'MONICA MUNOZ', 'Martes', '10/01/2017', '08:36:00', '17:22:00', null, '2017-04-04 15:29:13', '2017-04-04 15:29:13');
INSERT INTO `asistencias` VALUES ('10225', '6', 'MONICA MUNOZ', 'Miércoles', '11/01/2017', '08:33:00', '18:01:00', null, '2017-04-04 15:29:13', '2017-04-04 15:29:13');
INSERT INTO `asistencias` VALUES ('10226', '6', 'MONICA MUNOZ', 'Jueves', '12/01/2017', '08:24:00', '17:04:00', null, '2017-04-04 15:29:13', '2017-04-04 15:29:13');
INSERT INTO `asistencias` VALUES ('10227', '6', 'MONICA MUNOZ', 'Viernes', '13/01/2017', '08:37:00', '17:41:00', null, '2017-04-04 15:29:13', '2017-04-04 15:29:13');
INSERT INTO `asistencias` VALUES ('10228', '6', 'MONICA MUNOZ', 'Lunes', '16/01/2017', '08:39:00', '17:06:00', null, '2017-04-04 15:29:13', '2017-04-04 15:29:13');
INSERT INTO `asistencias` VALUES ('10229', '6', 'MONICA MUNOZ', 'Martes', '17/01/2017', '08:28:00', '15:04:00', null, '2017-04-04 15:29:13', '2017-04-04 15:29:13');
INSERT INTO `asistencias` VALUES ('10230', '6', 'MONICA MUNOZ', 'Miércoles', '18/01/2017', '08:04:00', '17:04:00', null, '2017-04-04 15:29:13', '2017-04-04 15:29:13');
INSERT INTO `asistencias` VALUES ('10231', '6', 'MONICA MUNOZ', 'Jueves', '19/01/2017', '08:29:00', '17:31:00', null, '2017-04-04 15:29:13', '2017-04-04 15:29:13');
INSERT INTO `asistencias` VALUES ('10232', '6', 'MONICA MUNOZ', 'Viernes', '20/01/2017', '08:41:00', '18:04:00', null, '2017-04-04 15:29:13', '2017-04-04 15:29:13');
INSERT INTO `asistencias` VALUES ('10233', '6', 'MONICA MUNOZ', 'Lunes', '23/01/2017', '08:28:00', '18:01:00', null, '2017-04-04 15:29:13', '2017-04-04 15:29:13');
INSERT INTO `asistencias` VALUES ('10234', '6', 'MONICA MUNOZ', 'Martes', '24/01/2017', '08:26:00', '18:01:00', null, '2017-04-04 15:29:13', '2017-04-04 15:29:13');
INSERT INTO `asistencias` VALUES ('10235', '6', 'MONICA MUNOZ', 'Miércoles', '25/01/2017', '08:31:00', '17:53:00', null, '2017-04-04 15:29:13', '2017-04-04 15:29:13');
INSERT INTO `asistencias` VALUES ('10236', '6', 'MONICA MUNOZ', 'Jueves', '26/01/2017', '08:27:00', '17:04:00', null, '2017-04-04 15:29:13', '2017-04-04 15:29:13');
INSERT INTO `asistencias` VALUES ('10237', '6', 'MONICA MUNOZ', 'Viernes', '27/01/2017', '08:33:00', '17:29:00', null, '2017-04-04 15:29:13', '2017-04-04 15:29:13');
INSERT INTO `asistencias` VALUES ('10238', '6', 'MONICA MUNOZ', 'Lunes', '30/01/2017', '08:16:00', '17:12:00', null, '2017-04-04 15:29:13', '2017-04-04 15:29:13');
INSERT INTO `asistencias` VALUES ('10239', '6', 'MONICA MUNOZ', 'Martes', '31/01/2017', '08:30:00', '17:27:00', null, '2017-04-04 15:29:13', '2017-04-04 15:29:13');
INSERT INTO `asistencias` VALUES ('10240', '80', 'Montalvo Veronica', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:29:13', '2017-04-04 15:29:13');
INSERT INTO `asistencias` VALUES ('10241', '80', 'Montalvo Veronica', 'Martes', '03/01/2017', null, null, '1', '2017-04-04 15:29:13', '2017-04-04 15:29:13');
INSERT INTO `asistencias` VALUES ('10242', '80', 'Montalvo Veronica', 'Miércoles', '04/01/2017', null, null, '1', '2017-04-04 15:29:13', '2017-04-04 15:29:13');
INSERT INTO `asistencias` VALUES ('10243', '80', 'Montalvo Veronica', 'Jueves', '05/01/2017', null, null, '1', '2017-04-04 15:29:13', '2017-04-04 15:29:13');
INSERT INTO `asistencias` VALUES ('10244', '80', 'Montalvo Veronica', 'Viernes', '06/01/2017', null, null, '1', '2017-04-04 15:29:13', '2017-04-04 15:29:13');
INSERT INTO `asistencias` VALUES ('10245', '80', 'Montalvo Veronica', 'Lunes', '09/01/2017', null, null, '1', '2017-04-04 15:29:13', '2017-04-04 15:29:13');
INSERT INTO `asistencias` VALUES ('10246', '80', 'Montalvo Veronica', 'Martes', '10/01/2017', null, null, '1', '2017-04-04 15:29:13', '2017-04-04 15:29:13');
INSERT INTO `asistencias` VALUES ('10247', '80', 'Montalvo Veronica', 'Miércoles', '11/01/2017', null, null, '1', '2017-04-04 15:29:13', '2017-04-04 15:29:13');
INSERT INTO `asistencias` VALUES ('10248', '80', 'Montalvo Veronica', 'Jueves', '12/01/2017', null, null, '1', '2017-04-04 15:29:13', '2017-04-04 15:29:13');
INSERT INTO `asistencias` VALUES ('10249', '80', 'Montalvo Veronica', 'Viernes', '13/01/2017', null, null, '1', '2017-04-04 15:29:13', '2017-04-04 15:29:13');
INSERT INTO `asistencias` VALUES ('10250', '80', 'Montalvo Veronica', 'Lunes', '16/01/2017', null, null, '1', '2017-04-04 15:29:13', '2017-04-04 15:29:13');
INSERT INTO `asistencias` VALUES ('10251', '80', 'Montalvo Veronica', 'Martes', '17/01/2017', null, null, '1', '2017-04-04 15:29:13', '2017-04-04 15:29:13');
INSERT INTO `asistencias` VALUES ('10252', '80', 'Montalvo Veronica', 'Miércoles', '18/01/2017', null, null, '1', '2017-04-04 15:29:13', '2017-04-04 15:29:13');
INSERT INTO `asistencias` VALUES ('10253', '80', 'Montalvo Veronica', 'Jueves', '19/01/2017', null, null, '1', '2017-04-04 15:29:13', '2017-04-04 15:29:13');
INSERT INTO `asistencias` VALUES ('10254', '80', 'Montalvo Veronica', 'Viernes', '20/01/2017', null, null, '1', '2017-04-04 15:29:13', '2017-04-04 15:29:13');
INSERT INTO `asistencias` VALUES ('10255', '80', 'Montalvo Veronica', 'Lunes', '23/01/2017', null, null, '1', '2017-04-04 15:29:13', '2017-04-04 15:29:13');
INSERT INTO `asistencias` VALUES ('10256', '80', 'Montalvo Veronica', 'Martes', '24/01/2017', null, null, '1', '2017-04-04 15:29:13', '2017-04-04 15:29:13');
INSERT INTO `asistencias` VALUES ('10257', '80', 'Montalvo Veronica', 'Miércoles', '25/01/2017', null, null, '1', '2017-04-04 15:29:14', '2017-04-04 15:29:14');
INSERT INTO `asistencias` VALUES ('10258', '80', 'Montalvo Veronica', 'Jueves', '26/01/2017', null, null, '1', '2017-04-04 15:29:14', '2017-04-04 15:29:14');
INSERT INTO `asistencias` VALUES ('10259', '80', 'Montalvo Veronica', 'Viernes', '27/01/2017', null, null, '1', '2017-04-04 15:29:14', '2017-04-04 15:29:14');
INSERT INTO `asistencias` VALUES ('10260', '80', 'Montalvo Veronica', 'Lunes', '30/01/2017', null, null, '1', '2017-04-04 15:29:14', '2017-04-04 15:29:14');
INSERT INTO `asistencias` VALUES ('10261', '80', 'Montalvo Veronica', 'Martes', '31/01/2017', null, null, '1', '2017-04-04 15:29:14', '2017-04-04 15:29:14');
INSERT INTO `asistencias` VALUES ('10262', '42', 'Ordoñez Cristina', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:29:14', '2017-04-04 15:29:14');
INSERT INTO `asistencias` VALUES ('10263', '42', 'Ordoñez Cristina', 'Martes', '03/01/2017', null, null, '1', '2017-04-04 15:29:14', '2017-04-04 15:29:14');
INSERT INTO `asistencias` VALUES ('10264', '42', 'Ordoñez Cristina', 'Miércoles', '04/01/2017', null, null, '1', '2017-04-04 15:29:14', '2017-04-04 15:29:14');
INSERT INTO `asistencias` VALUES ('10265', '42', 'Ordoñez Cristina', 'Jueves', '05/01/2017', null, null, '1', '2017-04-04 15:29:14', '2017-04-04 15:29:14');
INSERT INTO `asistencias` VALUES ('10266', '42', 'Ordoñez Cristina', 'Viernes', '06/01/2017', null, null, '1', '2017-04-04 15:29:14', '2017-04-04 15:29:14');
INSERT INTO `asistencias` VALUES ('10267', '42', 'Ordoñez Cristina', 'Lunes', '09/01/2017', null, null, '1', '2017-04-04 15:29:14', '2017-04-04 15:29:14');
INSERT INTO `asistencias` VALUES ('10268', '42', 'Ordoñez Cristina', 'Martes', '10/01/2017', null, null, '1', '2017-04-04 15:29:14', '2017-04-04 15:29:14');
INSERT INTO `asistencias` VALUES ('10269', '42', 'Ordoñez Cristina', 'Miércoles', '11/01/2017', null, null, '1', '2017-04-04 15:29:14', '2017-04-04 15:29:14');
INSERT INTO `asistencias` VALUES ('10270', '42', 'Ordoñez Cristina', 'Jueves', '12/01/2017', null, null, '1', '2017-04-04 15:29:14', '2017-04-04 15:29:14');
INSERT INTO `asistencias` VALUES ('10271', '42', 'Ordoñez Cristina', 'Viernes', '13/01/2017', null, null, '1', '2017-04-04 15:29:14', '2017-04-04 15:29:14');
INSERT INTO `asistencias` VALUES ('10272', '42', 'Ordoñez Cristina', 'Lunes', '16/01/2017', null, null, '1', '2017-04-04 15:29:14', '2017-04-04 15:29:14');
INSERT INTO `asistencias` VALUES ('10273', '42', 'Ordoñez Cristina', 'Martes', '17/01/2017', null, null, '1', '2017-04-04 15:29:14', '2017-04-04 15:29:14');
INSERT INTO `asistencias` VALUES ('10274', '42', 'Ordoñez Cristina', 'Miércoles', '18/01/2017', null, null, '1', '2017-04-04 15:29:14', '2017-04-04 15:29:14');
INSERT INTO `asistencias` VALUES ('10275', '42', 'Ordoñez Cristina', 'Jueves', '19/01/2017', null, null, '1', '2017-04-04 15:29:14', '2017-04-04 15:29:14');
INSERT INTO `asistencias` VALUES ('10276', '42', 'Ordoñez Cristina', 'Viernes', '20/01/2017', null, null, '1', '2017-04-04 15:29:14', '2017-04-04 15:29:14');
INSERT INTO `asistencias` VALUES ('10277', '42', 'Ordoñez Cristina', 'Lunes', '23/01/2017', null, null, '1', '2017-04-04 15:29:14', '2017-04-04 15:29:14');
INSERT INTO `asistencias` VALUES ('10278', '42', 'Ordoñez Cristina', 'Martes', '24/01/2017', null, null, '1', '2017-04-04 15:29:14', '2017-04-04 15:29:14');
INSERT INTO `asistencias` VALUES ('10279', '42', 'Ordoñez Cristina', 'Miércoles', '25/01/2017', null, null, '1', '2017-04-04 15:29:14', '2017-04-04 15:29:14');
INSERT INTO `asistencias` VALUES ('10280', '42', 'Ordoñez Cristina', 'Jueves', '26/01/2017', null, null, '1', '2017-04-04 15:29:14', '2017-04-04 15:29:14');
INSERT INTO `asistencias` VALUES ('10281', '42', 'Ordoñez Cristina', 'Viernes', '27/01/2017', null, null, '1', '2017-04-04 15:29:14', '2017-04-04 15:29:14');
INSERT INTO `asistencias` VALUES ('10282', '42', 'Ordoñez Cristina', 'Lunes', '30/01/2017', null, null, '1', '2017-04-04 15:29:14', '2017-04-04 15:29:14');
INSERT INTO `asistencias` VALUES ('10283', '42', 'Ordoñez Cristina', 'Martes', '31/01/2017', null, null, '1', '2017-04-04 15:29:14', '2017-04-04 15:29:14');
INSERT INTO `asistencias` VALUES ('10284', '20', 'ORLANDO GUACHAMIN', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:29:14', '2017-04-04 15:29:14');
INSERT INTO `asistencias` VALUES ('10285', '20', 'ORLANDO GUACHAMIN', 'Martes', '03/01/2017', '08:32:00', '17:00:00', null, '2017-04-04 15:29:14', '2017-04-04 15:29:14');
INSERT INTO `asistencias` VALUES ('10286', '20', 'ORLANDO GUACHAMIN', 'Miércoles', '04/01/2017', '08:26:00', '17:02:00', null, '2017-04-04 15:29:14', '2017-04-04 15:29:14');
INSERT INTO `asistencias` VALUES ('10287', '20', 'ORLANDO GUACHAMIN', 'Jueves', '05/01/2017', '08:30:00', '17:03:00', null, '2017-04-04 15:29:14', '2017-04-04 15:29:14');
INSERT INTO `asistencias` VALUES ('10288', '20', 'ORLANDO GUACHAMIN', 'Viernes', '06/01/2017', '08:32:00', '16:02:00', null, '2017-04-04 15:29:14', '2017-04-04 15:29:14');
INSERT INTO `asistencias` VALUES ('10289', '20', 'ORLANDO GUACHAMIN', 'Lunes', '09/01/2017', '08:36:00', '17:05:00', null, '2017-04-04 15:29:14', '2017-04-04 15:29:14');
INSERT INTO `asistencias` VALUES ('10290', '20', 'ORLANDO GUACHAMIN', 'Martes', '10/01/2017', '08:32:00', '17:01:00', null, '2017-04-04 15:29:14', '2017-04-04 15:29:14');
INSERT INTO `asistencias` VALUES ('10291', '20', 'ORLANDO GUACHAMIN', 'Miércoles', '11/01/2017', '08:30:00', '16:59:00', null, '2017-04-04 15:29:14', '2017-04-04 15:29:14');
INSERT INTO `asistencias` VALUES ('10292', '20', 'ORLANDO GUACHAMIN', 'Jueves', '12/01/2017', '08:30:00', '17:06:00', null, '2017-04-04 15:29:14', '2017-04-04 15:29:14');
INSERT INTO `asistencias` VALUES ('10293', '20', 'ORLANDO GUACHAMIN', 'Viernes', '13/01/2017', '08:29:00', '17:00:00', null, '2017-04-04 15:29:15', '2017-04-04 15:29:15');
INSERT INTO `asistencias` VALUES ('10294', '20', 'ORLANDO GUACHAMIN', 'Lunes', '16/01/2017', '08:28:00', '17:03:00', null, '2017-04-04 15:29:15', '2017-04-04 15:29:15');
INSERT INTO `asistencias` VALUES ('10295', '20', 'ORLANDO GUACHAMIN', 'Martes', '17/01/2017', '08:31:00', '17:05:00', null, '2017-04-04 15:29:15', '2017-04-04 15:29:15');
INSERT INTO `asistencias` VALUES ('10296', '20', 'ORLANDO GUACHAMIN', 'Miércoles', '18/01/2017', '08:30:00', '17:06:00', null, '2017-04-04 15:29:15', '2017-04-04 15:29:15');
INSERT INTO `asistencias` VALUES ('10297', '20', 'ORLANDO GUACHAMIN', 'Jueves', '19/01/2017', '08:30:00', '16:59:00', null, '2017-04-04 15:29:15', '2017-04-04 15:29:15');
INSERT INTO `asistencias` VALUES ('10298', '20', 'ORLANDO GUACHAMIN', 'Viernes', '20/01/2017', '08:29:00', '17:05:00', null, '2017-04-04 15:29:15', '2017-04-04 15:29:15');
INSERT INTO `asistencias` VALUES ('10299', '20', 'ORLANDO GUACHAMIN', 'Lunes', '23/01/2017', '08:32:00', '17:02:00', null, '2017-04-04 15:29:15', '2017-04-04 15:29:15');
INSERT INTO `asistencias` VALUES ('10300', '20', 'ORLANDO GUACHAMIN', 'Martes', '24/01/2017', '08:33:00', '17:13:00', null, '2017-04-04 15:29:15', '2017-04-04 15:29:15');
INSERT INTO `asistencias` VALUES ('10301', '20', 'ORLANDO GUACHAMIN', 'Miércoles', '25/01/2017', '08:26:00', '17:23:00', null, '2017-04-04 15:29:15', '2017-04-04 15:29:15');
INSERT INTO `asistencias` VALUES ('10302', '20', 'ORLANDO GUACHAMIN', 'Jueves', '26/01/2017', '08:26:00', '17:06:00', null, '2017-04-04 15:29:15', '2017-04-04 15:29:15');
INSERT INTO `asistencias` VALUES ('10303', '20', 'ORLANDO GUACHAMIN', 'Viernes', '27/01/2017', '08:29:00', '17:03:00', null, '2017-04-04 15:29:15', '2017-04-04 15:29:15');
INSERT INTO `asistencias` VALUES ('10304', '20', 'ORLANDO GUACHAMIN', 'Lunes', '30/01/2017', '08:29:00', '17:08:00', null, '2017-04-04 15:29:15', '2017-04-04 15:29:15');
INSERT INTO `asistencias` VALUES ('10305', '20', 'ORLANDO GUACHAMIN', 'Martes', '31/01/2017', '08:28:00', '17:07:00', null, '2017-04-04 15:29:15', '2017-04-04 15:29:15');
INSERT INTO `asistencias` VALUES ('10306', '59', 'OSWALDO RIVERA', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:29:15', '2017-04-04 15:29:15');
INSERT INTO `asistencias` VALUES ('10307', '59', 'OSWALDO RIVERA', 'Martes', '03/01/2017', '08:40:00', '17:08:00', null, '2017-04-04 15:29:15', '2017-04-04 15:29:15');
INSERT INTO `asistencias` VALUES ('10308', '59', 'OSWALDO RIVERA', 'Miércoles', '04/01/2017', '08:32:00', '19:02:00', null, '2017-04-04 15:29:15', '2017-04-04 15:29:15');
INSERT INTO `asistencias` VALUES ('10309', '59', 'OSWALDO RIVERA', 'Jueves', '05/01/2017', '08:46:00', '18:39:00', null, '2017-04-04 15:29:15', '2017-04-04 15:29:15');
INSERT INTO `asistencias` VALUES ('10310', '59', 'OSWALDO RIVERA', 'Viernes', '06/01/2017', '08:50:00', '17:37:00', null, '2017-04-04 15:29:15', '2017-04-04 15:29:15');
INSERT INTO `asistencias` VALUES ('10311', '59', 'OSWALDO RIVERA', 'Lunes', '09/01/2017', '08:57:00', '18:37:00', null, '2017-04-04 15:29:15', '2017-04-04 15:29:15');
INSERT INTO `asistencias` VALUES ('10312', '59', 'OSWALDO RIVERA', 'Martes', '10/01/2017', '08:54:00', null, null, '2017-04-04 15:29:15', '2017-04-04 15:29:15');
INSERT INTO `asistencias` VALUES ('10313', '59', 'OSWALDO RIVERA', 'Miércoles', '11/01/2017', '08:24:00', '18:33:00', null, '2017-04-04 15:29:15', '2017-04-04 15:29:15');
INSERT INTO `asistencias` VALUES ('10314', '59', 'OSWALDO RIVERA', 'Jueves', '12/01/2017', '09:00:00', '17:40:00', null, '2017-04-04 15:29:15', '2017-04-04 15:29:15');
INSERT INTO `asistencias` VALUES ('10315', '59', 'OSWALDO RIVERA', 'Viernes', '13/01/2017', '08:38:00', '17:12:00', null, '2017-04-04 15:29:15', '2017-04-04 15:29:15');
INSERT INTO `asistencias` VALUES ('10316', '59', 'OSWALDO RIVERA', 'Lunes', '16/01/2017', '08:39:00', '17:51:00', null, '2017-04-04 15:29:15', '2017-04-04 15:29:15');
INSERT INTO `asistencias` VALUES ('10317', '59', 'OSWALDO RIVERA', 'Martes', '17/01/2017', '08:27:00', '17:08:00', null, '2017-04-04 15:29:15', '2017-04-04 15:29:15');
INSERT INTO `asistencias` VALUES ('10318', '59', 'OSWALDO RIVERA', 'Miércoles', '18/01/2017', '08:45:00', '17:43:00', null, '2017-04-04 15:29:15', '2017-04-04 15:29:15');
INSERT INTO `asistencias` VALUES ('10319', '59', 'OSWALDO RIVERA', 'Jueves', '19/01/2017', '09:01:00', null, null, '2017-04-04 15:29:15', '2017-04-04 15:29:15');
INSERT INTO `asistencias` VALUES ('10320', '59', 'OSWALDO RIVERA', 'Viernes', '20/01/2017', '08:51:00', '17:05:00', null, '2017-04-04 15:29:15', '2017-04-04 15:29:15');
INSERT INTO `asistencias` VALUES ('10321', '59', 'OSWALDO RIVERA', 'Lunes', '23/01/2017', '08:25:00', '18:31:00', null, '2017-04-04 15:29:15', '2017-04-04 15:29:15');
INSERT INTO `asistencias` VALUES ('10322', '59', 'OSWALDO RIVERA', 'Martes', '24/01/2017', '08:26:00', '17:15:00', null, '2017-04-04 15:29:15', '2017-04-04 15:29:15');
INSERT INTO `asistencias` VALUES ('10323', '59', 'OSWALDO RIVERA', 'Miércoles', '25/01/2017', null, null, '1', '2017-04-04 15:29:15', '2017-04-04 15:29:15');
INSERT INTO `asistencias` VALUES ('10324', '59', 'OSWALDO RIVERA', 'Jueves', '26/01/2017', null, null, '1', '2017-04-04 15:29:15', '2017-04-04 15:29:15');
INSERT INTO `asistencias` VALUES ('10325', '59', 'OSWALDO RIVERA', 'Viernes', '27/01/2017', null, null, '1', '2017-04-04 15:29:15', '2017-04-04 15:29:15');
INSERT INTO `asistencias` VALUES ('10326', '59', 'OSWALDO RIVERA', 'Lunes', '30/01/2017', '08:41:00', null, null, '2017-04-04 15:29:16', '2017-04-04 15:29:16');
INSERT INTO `asistencias` VALUES ('10327', '59', 'OSWALDO RIVERA', 'Martes', '31/01/2017', '08:41:00', '17:12:00', null, '2017-04-04 15:29:16', '2017-04-04 15:29:16');
INSERT INTO `asistencias` VALUES ('10328', '28', 'PAOLA CADENA', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:29:16', '2017-04-04 15:29:16');
INSERT INTO `asistencias` VALUES ('10329', '28', 'PAOLA CADENA', 'Martes', '03/01/2017', '08:36:00', '17:43:00', null, '2017-04-04 15:29:16', '2017-04-04 15:29:16');
INSERT INTO `asistencias` VALUES ('10330', '28', 'PAOLA CADENA', 'Miércoles', '04/01/2017', '08:49:00', '17:05:00', null, '2017-04-04 15:29:16', '2017-04-04 15:29:16');
INSERT INTO `asistencias` VALUES ('10331', '28', 'PAOLA CADENA', 'Jueves', '05/01/2017', '08:38:00', '17:19:00', null, '2017-04-04 15:29:16', '2017-04-04 15:29:16');
INSERT INTO `asistencias` VALUES ('10332', '28', 'PAOLA CADENA', 'Viernes', '06/01/2017', null, '17:50:00', null, '2017-04-04 15:29:16', '2017-04-04 15:29:16');
INSERT INTO `asistencias` VALUES ('10333', '28', 'PAOLA CADENA', 'Lunes', '09/01/2017', '08:36:00', '17:14:00', null, '2017-04-04 15:29:16', '2017-04-04 15:29:16');
INSERT INTO `asistencias` VALUES ('10334', '28', 'PAOLA CADENA', 'Martes', '10/01/2017', '08:44:00', '17:11:00', null, '2017-04-04 15:29:16', '2017-04-04 15:29:16');
INSERT INTO `asistencias` VALUES ('10335', '28', 'PAOLA CADENA', 'Miércoles', '11/01/2017', '08:39:00', '17:52:00', null, '2017-04-04 15:29:16', '2017-04-04 15:29:16');
INSERT INTO `asistencias` VALUES ('10336', '28', 'PAOLA CADENA', 'Jueves', '12/01/2017', '08:35:00', '17:15:00', null, '2017-04-04 15:29:16', '2017-04-04 15:29:16');
INSERT INTO `asistencias` VALUES ('10337', '28', 'PAOLA CADENA', 'Viernes', '13/01/2017', '08:39:00', '17:42:00', null, '2017-04-04 15:29:16', '2017-04-04 15:29:16');
INSERT INTO `asistencias` VALUES ('10338', '28', 'PAOLA CADENA', 'Lunes', '16/01/2017', '08:31:00', '17:29:00', null, '2017-04-04 15:29:16', '2017-04-04 15:29:16');
INSERT INTO `asistencias` VALUES ('10339', '28', 'PAOLA CADENA', 'Martes', '17/01/2017', '08:46:00', '17:35:00', null, '2017-04-04 15:29:16', '2017-04-04 15:29:16');
INSERT INTO `asistencias` VALUES ('10340', '28', 'PAOLA CADENA', 'Miércoles', '18/01/2017', '08:45:00', '17:34:00', null, '2017-04-04 15:29:16', '2017-04-04 15:29:16');
INSERT INTO `asistencias` VALUES ('10341', '28', 'PAOLA CADENA', 'Jueves', '19/01/2017', '08:37:00', '17:24:00', null, '2017-04-04 15:29:16', '2017-04-04 15:29:16');
INSERT INTO `asistencias` VALUES ('10342', '28', 'PAOLA CADENA', 'Viernes', '20/01/2017', '08:08:00', '17:53:00', null, '2017-04-04 15:29:16', '2017-04-04 15:29:16');
INSERT INTO `asistencias` VALUES ('10343', '28', 'PAOLA CADENA', 'Lunes', '23/01/2017', '08:43:00', '17:45:00', null, '2017-04-04 15:29:16', '2017-04-04 15:29:16');
INSERT INTO `asistencias` VALUES ('10344', '28', 'PAOLA CADENA', 'Martes', '24/01/2017', '08:39:00', null, null, '2017-04-04 15:29:16', '2017-04-04 15:29:16');
INSERT INTO `asistencias` VALUES ('10345', '28', 'PAOLA CADENA', 'Miércoles', '25/01/2017', null, null, '1', '2017-04-04 15:29:16', '2017-04-04 15:29:16');
INSERT INTO `asistencias` VALUES ('10346', '28', 'PAOLA CADENA', 'Jueves', '26/01/2017', null, '21:12:00', null, '2017-04-04 15:29:16', '2017-04-04 15:29:16');
INSERT INTO `asistencias` VALUES ('10347', '28', 'PAOLA CADENA', 'Viernes', '27/01/2017', null, null, '1', '2017-04-04 15:29:16', '2017-04-04 15:29:16');
INSERT INTO `asistencias` VALUES ('10348', '28', 'PAOLA CADENA', 'Lunes', '30/01/2017', '08:31:00', '17:21:00', null, '2017-04-04 15:29:16', '2017-04-04 15:29:16');
INSERT INTO `asistencias` VALUES ('10349', '28', 'PAOLA CADENA', 'Martes', '31/01/2017', '08:56:00', '17:35:00', null, '2017-04-04 15:29:16', '2017-04-04 15:29:16');
INSERT INTO `asistencias` VALUES ('10350', '17', 'PATRICIO ARAQUE', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:29:16', '2017-04-04 15:29:16');
INSERT INTO `asistencias` VALUES ('10351', '17', 'PATRICIO ARAQUE', 'Martes', '03/01/2017', '10:11:00', '19:17:00', null, '2017-04-04 15:29:16', '2017-04-04 15:29:16');
INSERT INTO `asistencias` VALUES ('10352', '17', 'PATRICIO ARAQUE', 'Miércoles', '04/01/2017', '10:28:00', '19:00:00', null, '2017-04-04 15:29:16', '2017-04-04 15:29:16');
INSERT INTO `asistencias` VALUES ('10353', '17', 'PATRICIO ARAQUE', 'Jueves', '05/01/2017', null, null, '1', '2017-04-04 15:29:16', '2017-04-04 15:29:16');
INSERT INTO `asistencias` VALUES ('10354', '17', 'PATRICIO ARAQUE', 'Viernes', '06/01/2017', '10:43:00', '19:00:00', null, '2017-04-04 15:29:16', '2017-04-04 15:29:16');
INSERT INTO `asistencias` VALUES ('10355', '17', 'PATRICIO ARAQUE', 'Lunes', '09/01/2017', '10:14:00', '19:00:00', null, '2017-04-04 15:29:16', '2017-04-04 15:29:16');
INSERT INTO `asistencias` VALUES ('10356', '17', 'PATRICIO ARAQUE', 'Martes', '10/01/2017', '10:10:00', '19:00:00', null, '2017-04-04 15:29:16', '2017-04-04 15:29:16');
INSERT INTO `asistencias` VALUES ('10357', '17', 'PATRICIO ARAQUE', 'Miércoles', '11/01/2017', '10:12:00', '19:01:00', null, '2017-04-04 15:29:16', '2017-04-04 15:29:16');
INSERT INTO `asistencias` VALUES ('10358', '17', 'PATRICIO ARAQUE', 'Jueves', '12/01/2017', '10:04:00', '19:01:00', null, '2017-04-04 15:29:16', '2017-04-04 15:29:16');
INSERT INTO `asistencias` VALUES ('10359', '17', 'PATRICIO ARAQUE', 'Viernes', '13/01/2017', '10:22:00', '19:00:00', null, '2017-04-04 15:29:16', '2017-04-04 15:29:16');
INSERT INTO `asistencias` VALUES ('10360', '17', 'PATRICIO ARAQUE', 'Lunes', '16/01/2017', '10:15:00', '19:00:00', null, '2017-04-04 15:29:16', '2017-04-04 15:29:16');
INSERT INTO `asistencias` VALUES ('10361', '17', 'PATRICIO ARAQUE', 'Martes', '17/01/2017', '10:22:00', '19:00:00', null, '2017-04-04 15:29:16', '2017-04-04 15:29:16');
INSERT INTO `asistencias` VALUES ('10362', '17', 'PATRICIO ARAQUE', 'Miércoles', '18/01/2017', null, '19:24:00', null, '2017-04-04 15:29:17', '2017-04-04 15:29:17');
INSERT INTO `asistencias` VALUES ('10363', '17', 'PATRICIO ARAQUE', 'Jueves', '19/01/2017', '10:16:00', '19:06:00', null, '2017-04-04 15:29:17', '2017-04-04 15:29:17');
INSERT INTO `asistencias` VALUES ('10364', '17', 'PATRICIO ARAQUE', 'Viernes', '20/01/2017', '10:28:00', '19:00:00', null, '2017-04-04 15:29:17', '2017-04-04 15:29:17');
INSERT INTO `asistencias` VALUES ('10365', '17', 'PATRICIO ARAQUE', 'Lunes', '23/01/2017', '10:19:00', '19:00:00', null, '2017-04-04 15:29:17', '2017-04-04 15:29:17');
INSERT INTO `asistencias` VALUES ('10366', '17', 'PATRICIO ARAQUE', 'Martes', '24/01/2017', '10:24:00', '19:03:00', null, '2017-04-04 15:29:17', '2017-04-04 15:29:17');
INSERT INTO `asistencias` VALUES ('10367', '17', 'PATRICIO ARAQUE', 'Miércoles', '25/01/2017', '07:24:00', '19:00:00', null, '2017-04-04 15:29:17', '2017-04-04 15:29:17');
INSERT INTO `asistencias` VALUES ('10368', '17', 'PATRICIO ARAQUE', 'Jueves', '26/01/2017', '10:43:00', '19:00:00', null, '2017-04-04 15:29:17', '2017-04-04 15:29:17');
INSERT INTO `asistencias` VALUES ('10369', '17', 'PATRICIO ARAQUE', 'Viernes', '27/01/2017', '10:20:00', null, null, '2017-04-04 15:29:17', '2017-04-04 15:29:17');
INSERT INTO `asistencias` VALUES ('10370', '17', 'PATRICIO ARAQUE', 'Lunes', '30/01/2017', '10:31:00', '19:15:00', null, '2017-04-04 15:29:17', '2017-04-04 15:29:17');
INSERT INTO `asistencias` VALUES ('10371', '17', 'PATRICIO ARAQUE', 'Martes', '31/01/2017', '10:34:00', '19:00:00', null, '2017-04-04 15:29:17', '2017-04-04 15:29:17');
INSERT INTO `asistencias` VALUES ('10372', '50', 'PAULO VILLEGAS', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:29:17', '2017-04-04 15:29:17');
INSERT INTO `asistencias` VALUES ('10373', '50', 'PAULO VILLEGAS', 'Martes', '03/01/2017', null, null, '1', '2017-04-04 15:29:17', '2017-04-04 15:29:17');
INSERT INTO `asistencias` VALUES ('10374', '50', 'PAULO VILLEGAS', 'Miércoles', '04/01/2017', null, null, '1', '2017-04-04 15:29:17', '2017-04-04 15:29:17');
INSERT INTO `asistencias` VALUES ('10375', '50', 'PAULO VILLEGAS', 'Jueves', '05/01/2017', null, null, '1', '2017-04-04 15:29:17', '2017-04-04 15:29:17');
INSERT INTO `asistencias` VALUES ('10376', '50', 'PAULO VILLEGAS', 'Viernes', '06/01/2017', null, null, '1', '2017-04-04 15:29:17', '2017-04-04 15:29:17');
INSERT INTO `asistencias` VALUES ('10377', '50', 'PAULO VILLEGAS', 'Lunes', '09/01/2017', null, null, '1', '2017-04-04 15:29:17', '2017-04-04 15:29:17');
INSERT INTO `asistencias` VALUES ('10378', '50', 'PAULO VILLEGAS', 'Martes', '10/01/2017', null, null, '1', '2017-04-04 15:29:17', '2017-04-04 15:29:17');
INSERT INTO `asistencias` VALUES ('10379', '50', 'PAULO VILLEGAS', 'Miércoles', '11/01/2017', null, null, '1', '2017-04-04 15:29:17', '2017-04-04 15:29:17');
INSERT INTO `asistencias` VALUES ('10380', '50', 'PAULO VILLEGAS', 'Jueves', '12/01/2017', null, null, '1', '2017-04-04 15:29:17', '2017-04-04 15:29:17');
INSERT INTO `asistencias` VALUES ('10381', '50', 'PAULO VILLEGAS', 'Viernes', '13/01/2017', null, null, '1', '2017-04-04 15:29:17', '2017-04-04 15:29:17');
INSERT INTO `asistencias` VALUES ('10382', '50', 'PAULO VILLEGAS', 'Lunes', '16/01/2017', null, null, '1', '2017-04-04 15:29:17', '2017-04-04 15:29:17');
INSERT INTO `asistencias` VALUES ('10383', '50', 'PAULO VILLEGAS', 'Martes', '17/01/2017', null, null, '1', '2017-04-04 15:29:17', '2017-04-04 15:29:17');
INSERT INTO `asistencias` VALUES ('10384', '50', 'PAULO VILLEGAS', 'Miércoles', '18/01/2017', null, null, '1', '2017-04-04 15:29:17', '2017-04-04 15:29:17');
INSERT INTO `asistencias` VALUES ('10385', '50', 'PAULO VILLEGAS', 'Jueves', '19/01/2017', null, null, '1', '2017-04-04 15:29:17', '2017-04-04 15:29:17');
INSERT INTO `asistencias` VALUES ('10386', '50', 'PAULO VILLEGAS', 'Viernes', '20/01/2017', null, null, '1', '2017-04-04 15:29:17', '2017-04-04 15:29:17');
INSERT INTO `asistencias` VALUES ('10387', '50', 'PAULO VILLEGAS', 'Lunes', '23/01/2017', null, null, '1', '2017-04-04 15:29:17', '2017-04-04 15:29:17');
INSERT INTO `asistencias` VALUES ('10388', '50', 'PAULO VILLEGAS', 'Martes', '24/01/2017', null, null, '1', '2017-04-04 15:29:17', '2017-04-04 15:29:17');
INSERT INTO `asistencias` VALUES ('10389', '50', 'PAULO VILLEGAS', 'Miércoles', '25/01/2017', null, null, '1', '2017-04-04 15:29:17', '2017-04-04 15:29:17');
INSERT INTO `asistencias` VALUES ('10390', '50', 'PAULO VILLEGAS', 'Jueves', '26/01/2017', null, null, '1', '2017-04-04 15:29:17', '2017-04-04 15:29:17');
INSERT INTO `asistencias` VALUES ('10391', '50', 'PAULO VILLEGAS', 'Viernes', '27/01/2017', null, null, '1', '2017-04-04 15:29:17', '2017-04-04 15:29:17');
INSERT INTO `asistencias` VALUES ('10392', '50', 'PAULO VILLEGAS', 'Lunes', '30/01/2017', null, null, '1', '2017-04-04 15:29:17', '2017-04-04 15:29:17');
INSERT INTO `asistencias` VALUES ('10393', '50', 'PAULO VILLEGAS', 'Martes', '31/01/2017', null, null, '1', '2017-04-04 15:29:17', '2017-04-04 15:29:17');
INSERT INTO `asistencias` VALUES ('10394', '94', 'Pedro Saenz', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:29:17', '2017-04-04 15:29:17');
INSERT INTO `asistencias` VALUES ('10395', '94', 'Pedro Saenz', 'Martes', '03/01/2017', null, null, '1', '2017-04-04 15:29:17', '2017-04-04 15:29:17');
INSERT INTO `asistencias` VALUES ('10396', '94', 'Pedro Saenz', 'Miércoles', '04/01/2017', null, null, '1', '2017-04-04 15:29:18', '2017-04-04 15:29:18');
INSERT INTO `asistencias` VALUES ('10397', '94', 'Pedro Saenz', 'Jueves', '05/01/2017', null, null, '1', '2017-04-04 15:29:18', '2017-04-04 15:29:18');
INSERT INTO `asistencias` VALUES ('10398', '94', 'Pedro Saenz', 'Viernes', '06/01/2017', null, null, '1', '2017-04-04 15:29:18', '2017-04-04 15:29:18');
INSERT INTO `asistencias` VALUES ('10399', '94', 'Pedro Saenz', 'Lunes', '09/01/2017', null, null, '1', '2017-04-04 15:29:18', '2017-04-04 15:29:18');
INSERT INTO `asistencias` VALUES ('10400', '94', 'Pedro Saenz', 'Martes', '10/01/2017', null, null, '1', '2017-04-04 15:29:18', '2017-04-04 15:29:18');
INSERT INTO `asistencias` VALUES ('10401', '94', 'Pedro Saenz', 'Miércoles', '11/01/2017', null, null, '1', '2017-04-04 15:29:18', '2017-04-04 15:29:18');
INSERT INTO `asistencias` VALUES ('10402', '94', 'Pedro Saenz', 'Jueves', '12/01/2017', null, null, '1', '2017-04-04 15:29:18', '2017-04-04 15:29:18');
INSERT INTO `asistencias` VALUES ('10403', '94', 'Pedro Saenz', 'Viernes', '13/01/2017', null, null, '1', '2017-04-04 15:29:18', '2017-04-04 15:29:18');
INSERT INTO `asistencias` VALUES ('10404', '94', 'Pedro Saenz', 'Lunes', '16/01/2017', null, '17:01:00', null, '2017-04-04 15:29:18', '2017-04-04 15:29:18');
INSERT INTO `asistencias` VALUES ('10405', '94', 'Pedro Saenz', 'Martes', '17/01/2017', null, null, '1', '2017-04-04 15:29:18', '2017-04-04 15:29:18');
INSERT INTO `asistencias` VALUES ('10406', '94', 'Pedro Saenz', 'Miércoles', '18/01/2017', null, null, '1', '2017-04-04 15:29:18', '2017-04-04 15:29:18');
INSERT INTO `asistencias` VALUES ('10407', '94', 'Pedro Saenz', 'Jueves', '19/01/2017', null, null, '1', '2017-04-04 15:29:18', '2017-04-04 15:29:18');
INSERT INTO `asistencias` VALUES ('10408', '94', 'Pedro Saenz', 'Viernes', '20/01/2017', null, null, '1', '2017-04-04 15:29:18', '2017-04-04 15:29:18');
INSERT INTO `asistencias` VALUES ('10409', '94', 'Pedro Saenz', 'Lunes', '23/01/2017', null, null, '1', '2017-04-04 15:29:18', '2017-04-04 15:29:18');
INSERT INTO `asistencias` VALUES ('10410', '94', 'Pedro Saenz', 'Martes', '24/01/2017', null, null, '1', '2017-04-04 15:29:18', '2017-04-04 15:29:18');
INSERT INTO `asistencias` VALUES ('10411', '94', 'Pedro Saenz', 'Miércoles', '25/01/2017', null, null, '1', '2017-04-04 15:29:18', '2017-04-04 15:29:18');
INSERT INTO `asistencias` VALUES ('10412', '94', 'Pedro Saenz', 'Jueves', '26/01/2017', null, null, '1', '2017-04-04 15:29:18', '2017-04-04 15:29:18');
INSERT INTO `asistencias` VALUES ('10413', '94', 'Pedro Saenz', 'Viernes', '27/01/2017', null, null, '1', '2017-04-04 15:29:18', '2017-04-04 15:29:18');
INSERT INTO `asistencias` VALUES ('10414', '94', 'Pedro Saenz', 'Lunes', '30/01/2017', null, null, '1', '2017-04-04 15:29:18', '2017-04-04 15:29:18');
INSERT INTO `asistencias` VALUES ('10415', '94', 'Pedro Saenz', 'Martes', '31/01/2017', null, null, '1', '2017-04-04 15:29:18', '2017-04-04 15:29:18');
INSERT INTO `asistencias` VALUES ('10416', '79', 'Portilla Johana', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:29:18', '2017-04-04 15:29:18');
INSERT INTO `asistencias` VALUES ('10417', '79', 'Portilla Johana', 'Martes', '03/01/2017', null, null, '1', '2017-04-04 15:29:18', '2017-04-04 15:29:18');
INSERT INTO `asistencias` VALUES ('10418', '79', 'Portilla Johana', 'Miércoles', '04/01/2017', null, null, '1', '2017-04-04 15:29:18', '2017-04-04 15:29:18');
INSERT INTO `asistencias` VALUES ('10419', '79', 'Portilla Johana', 'Jueves', '05/01/2017', '08:14:00', '17:09:00', null, '2017-04-04 15:29:18', '2017-04-04 15:29:18');
INSERT INTO `asistencias` VALUES ('10420', '79', 'Portilla Johana', 'Viernes', '06/01/2017', '08:30:00', '17:14:00', null, '2017-04-04 15:29:18', '2017-04-04 15:29:18');
INSERT INTO `asistencias` VALUES ('10421', '79', 'Portilla Johana', 'Lunes', '09/01/2017', '08:26:00', '17:47:00', null, '2017-04-04 15:29:18', '2017-04-04 15:29:18');
INSERT INTO `asistencias` VALUES ('10422', '79', 'Portilla Johana', 'Martes', '10/01/2017', null, '17:48:00', null, '2017-04-04 15:29:18', '2017-04-04 15:29:18');
INSERT INTO `asistencias` VALUES ('10423', '79', 'Portilla Johana', 'Miércoles', '11/01/2017', '08:24:00', '17:24:00', null, '2017-04-04 15:29:18', '2017-04-04 15:29:18');
INSERT INTO `asistencias` VALUES ('10424', '79', 'Portilla Johana', 'Jueves', '12/01/2017', '08:34:00', '17:29:00', null, '2017-04-04 15:29:18', '2017-04-04 15:29:18');
INSERT INTO `asistencias` VALUES ('10425', '79', 'Portilla Johana', 'Viernes', '13/01/2017', '08:28:00', '17:04:00', null, '2017-04-04 15:29:18', '2017-04-04 15:29:18');
INSERT INTO `asistencias` VALUES ('10426', '79', 'Portilla Johana', 'Lunes', '16/01/2017', '08:26:00', '17:08:00', null, '2017-04-04 15:29:18', '2017-04-04 15:29:18');
INSERT INTO `asistencias` VALUES ('10427', '79', 'Portilla Johana', 'Martes', '17/01/2017', '08:19:00', '17:16:00', null, '2017-04-04 15:29:18', '2017-04-04 15:29:18');
INSERT INTO `asistencias` VALUES ('10428', '79', 'Portilla Johana', 'Miércoles', '18/01/2017', '08:27:00', '17:40:00', null, '2017-04-04 15:29:18', '2017-04-04 15:29:18');
INSERT INTO `asistencias` VALUES ('10429', '79', 'Portilla Johana', 'Jueves', '19/01/2017', '08:23:00', '17:08:00', null, '2017-04-04 15:29:18', '2017-04-04 15:29:18');
INSERT INTO `asistencias` VALUES ('10430', '79', 'Portilla Johana', 'Viernes', '20/01/2017', '09:32:00', '13:35:00', null, '2017-04-04 15:29:18', '2017-04-04 15:29:18');
INSERT INTO `asistencias` VALUES ('10431', '79', 'Portilla Johana', 'Lunes', '23/01/2017', '08:31:00', '17:23:00', null, '2017-04-04 15:29:18', '2017-04-04 15:29:18');
INSERT INTO `asistencias` VALUES ('10432', '79', 'Portilla Johana', 'Martes', '24/01/2017', '08:30:00', '17:36:00', null, '2017-04-04 15:29:18', '2017-04-04 15:29:18');
INSERT INTO `asistencias` VALUES ('10433', '79', 'Portilla Johana', 'Miércoles', '25/01/2017', '08:30:00', '17:12:00', null, '2017-04-04 15:29:19', '2017-04-04 15:29:19');
INSERT INTO `asistencias` VALUES ('10434', '79', 'Portilla Johana', 'Jueves', '26/01/2017', '08:10:00', '17:38:00', null, '2017-04-04 15:29:19', '2017-04-04 15:29:19');
INSERT INTO `asistencias` VALUES ('10435', '79', 'Portilla Johana', 'Viernes', '27/01/2017', '08:30:00', null, null, '2017-04-04 15:29:19', '2017-04-04 15:29:19');
INSERT INTO `asistencias` VALUES ('10436', '79', 'Portilla Johana', 'Lunes', '30/01/2017', '08:15:00', '17:12:00', null, '2017-04-04 15:29:19', '2017-04-04 15:29:19');
INSERT INTO `asistencias` VALUES ('10437', '79', 'Portilla Johana', 'Martes', '31/01/2017', '08:05:00', '17:39:00', null, '2017-04-04 15:29:19', '2017-04-04 15:29:19');
INSERT INTO `asistencias` VALUES ('10438', '34', 'Quinde Oswaldo', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:29:19', '2017-04-04 15:29:19');
INSERT INTO `asistencias` VALUES ('10439', '34', 'Quinde Oswaldo', 'Martes', '03/01/2017', null, null, '1', '2017-04-04 15:29:19', '2017-04-04 15:29:19');
INSERT INTO `asistencias` VALUES ('10440', '34', 'Quinde Oswaldo', 'Miércoles', '04/01/2017', null, null, '1', '2017-04-04 15:29:19', '2017-04-04 15:29:19');
INSERT INTO `asistencias` VALUES ('10441', '34', 'Quinde Oswaldo', 'Jueves', '05/01/2017', null, null, '1', '2017-04-04 15:29:19', '2017-04-04 15:29:19');
INSERT INTO `asistencias` VALUES ('10442', '34', 'Quinde Oswaldo', 'Viernes', '06/01/2017', null, null, '1', '2017-04-04 15:29:19', '2017-04-04 15:29:19');
INSERT INTO `asistencias` VALUES ('10443', '34', 'Quinde Oswaldo', 'Lunes', '09/01/2017', null, null, '1', '2017-04-04 15:29:19', '2017-04-04 15:29:19');
INSERT INTO `asistencias` VALUES ('10444', '34', 'Quinde Oswaldo', 'Martes', '10/01/2017', null, null, '1', '2017-04-04 15:29:19', '2017-04-04 15:29:19');
INSERT INTO `asistencias` VALUES ('10445', '34', 'Quinde Oswaldo', 'Miércoles', '11/01/2017', null, null, '1', '2017-04-04 15:29:19', '2017-04-04 15:29:19');
INSERT INTO `asistencias` VALUES ('10446', '34', 'Quinde Oswaldo', 'Jueves', '12/01/2017', null, null, '1', '2017-04-04 15:29:19', '2017-04-04 15:29:19');
INSERT INTO `asistencias` VALUES ('10447', '34', 'Quinde Oswaldo', 'Viernes', '13/01/2017', null, null, '1', '2017-04-04 15:29:19', '2017-04-04 15:29:19');
INSERT INTO `asistencias` VALUES ('10448', '34', 'Quinde Oswaldo', 'Lunes', '16/01/2017', null, null, '1', '2017-04-04 15:29:19', '2017-04-04 15:29:19');
INSERT INTO `asistencias` VALUES ('10449', '34', 'Quinde Oswaldo', 'Martes', '17/01/2017', null, null, '1', '2017-04-04 15:29:19', '2017-04-04 15:29:19');
INSERT INTO `asistencias` VALUES ('10450', '34', 'Quinde Oswaldo', 'Miércoles', '18/01/2017', null, null, '1', '2017-04-04 15:29:19', '2017-04-04 15:29:19');
INSERT INTO `asistencias` VALUES ('10451', '34', 'Quinde Oswaldo', 'Jueves', '19/01/2017', null, null, '1', '2017-04-04 15:29:19', '2017-04-04 15:29:19');
INSERT INTO `asistencias` VALUES ('10452', '34', 'Quinde Oswaldo', 'Viernes', '20/01/2017', null, null, '1', '2017-04-04 15:29:19', '2017-04-04 15:29:19');
INSERT INTO `asistencias` VALUES ('10453', '34', 'Quinde Oswaldo', 'Lunes', '23/01/2017', null, null, '1', '2017-04-04 15:29:19', '2017-04-04 15:29:19');
INSERT INTO `asistencias` VALUES ('10454', '34', 'Quinde Oswaldo', 'Martes', '24/01/2017', null, null, '1', '2017-04-04 15:29:19', '2017-04-04 15:29:19');
INSERT INTO `asistencias` VALUES ('10455', '34', 'Quinde Oswaldo', 'Miércoles', '25/01/2017', null, null, '1', '2017-04-04 15:29:19', '2017-04-04 15:29:19');
INSERT INTO `asistencias` VALUES ('10456', '34', 'Quinde Oswaldo', 'Jueves', '26/01/2017', null, null, '1', '2017-04-04 15:29:19', '2017-04-04 15:29:19');
INSERT INTO `asistencias` VALUES ('10457', '34', 'Quinde Oswaldo', 'Viernes', '27/01/2017', null, null, '1', '2017-04-04 15:29:19', '2017-04-04 15:29:19');
INSERT INTO `asistencias` VALUES ('10458', '34', 'Quinde Oswaldo', 'Lunes', '30/01/2017', null, null, '1', '2017-04-04 15:29:19', '2017-04-04 15:29:19');
INSERT INTO `asistencias` VALUES ('10459', '34', 'Quinde Oswaldo', 'Martes', '31/01/2017', null, null, '1', '2017-04-04 15:29:19', '2017-04-04 15:29:19');
INSERT INTO `asistencias` VALUES ('10460', '40', 'REINALDO VELEZ', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:29:19', '2017-04-04 15:29:19');
INSERT INTO `asistencias` VALUES ('10461', '40', 'REINALDO VELEZ', 'Martes', '03/01/2017', '06:44:00', '17:01:00', null, '2017-04-04 15:29:19', '2017-04-04 15:29:19');
INSERT INTO `asistencias` VALUES ('10462', '40', 'REINALDO VELEZ', 'Miércoles', '04/01/2017', '06:42:00', '17:04:00', null, '2017-04-04 15:29:19', '2017-04-04 15:29:19');
INSERT INTO `asistencias` VALUES ('10463', '40', 'REINALDO VELEZ', 'Jueves', '05/01/2017', '06:45:00', '16:42:00', null, '2017-04-04 15:29:19', '2017-04-04 15:29:19');
INSERT INTO `asistencias` VALUES ('10464', '40', 'REINALDO VELEZ', 'Viernes', '06/01/2017', '06:56:00', '17:07:00', null, '2017-04-04 15:29:19', '2017-04-04 15:29:19');
INSERT INTO `asistencias` VALUES ('10465', '40', 'REINALDO VELEZ', 'Lunes', '09/01/2017', '06:50:00', '17:02:00', null, '2017-04-04 15:29:19', '2017-04-04 15:29:19');
INSERT INTO `asistencias` VALUES ('10466', '40', 'REINALDO VELEZ', 'Martes', '10/01/2017', '06:45:00', '17:01:00', null, '2017-04-04 15:29:19', '2017-04-04 15:29:19');
INSERT INTO `asistencias` VALUES ('10467', '40', 'REINALDO VELEZ', 'Miércoles', '11/01/2017', '06:47:00', '16:59:00', null, '2017-04-04 15:29:19', '2017-04-04 15:29:19');
INSERT INTO `asistencias` VALUES ('10468', '40', 'REINALDO VELEZ', 'Jueves', '12/01/2017', '06:38:00', '17:01:00', null, '2017-04-04 15:29:20', '2017-04-04 15:29:20');
INSERT INTO `asistencias` VALUES ('10469', '40', 'REINALDO VELEZ', 'Viernes', '13/01/2017', '06:46:00', '16:57:00', null, '2017-04-04 15:29:20', '2017-04-04 15:29:20');
INSERT INTO `asistencias` VALUES ('10470', '40', 'REINALDO VELEZ', 'Lunes', '16/01/2017', '06:39:00', '16:58:00', null, '2017-04-04 15:29:20', '2017-04-04 15:29:20');
INSERT INTO `asistencias` VALUES ('10471', '40', 'REINALDO VELEZ', 'Martes', '17/01/2017', '06:35:00', '17:01:00', null, '2017-04-04 15:29:20', '2017-04-04 15:29:20');
INSERT INTO `asistencias` VALUES ('10472', '40', 'REINALDO VELEZ', 'Miércoles', '18/01/2017', '06:42:00', '17:03:00', null, '2017-04-04 15:29:20', '2017-04-04 15:29:20');
INSERT INTO `asistencias` VALUES ('10473', '40', 'REINALDO VELEZ', 'Jueves', '19/01/2017', '06:41:00', '16:59:00', null, '2017-04-04 15:29:20', '2017-04-04 15:29:20');
INSERT INTO `asistencias` VALUES ('10474', '40', 'REINALDO VELEZ', 'Viernes', '20/01/2017', '06:44:00', '17:00:00', null, '2017-04-04 15:29:20', '2017-04-04 15:29:20');
INSERT INTO `asistencias` VALUES ('10475', '40', 'REINALDO VELEZ', 'Lunes', '23/01/2017', '06:42:00', '17:02:00', null, '2017-04-04 15:29:20', '2017-04-04 15:29:20');
INSERT INTO `asistencias` VALUES ('10476', '40', 'REINALDO VELEZ', 'Martes', '24/01/2017', '06:44:00', '16:13:00', null, '2017-04-04 15:29:20', '2017-04-04 15:29:20');
INSERT INTO `asistencias` VALUES ('10477', '40', 'REINALDO VELEZ', 'Miércoles', '25/01/2017', '06:39:00', '17:01:00', null, '2017-04-04 15:29:20', '2017-04-04 15:29:20');
INSERT INTO `asistencias` VALUES ('10478', '40', 'REINALDO VELEZ', 'Jueves', '26/01/2017', '06:44:00', '17:03:00', null, '2017-04-04 15:29:20', '2017-04-04 15:29:20');
INSERT INTO `asistencias` VALUES ('10479', '40', 'REINALDO VELEZ', 'Viernes', '27/01/2017', '06:37:00', '17:01:00', null, '2017-04-04 15:29:20', '2017-04-04 15:29:20');
INSERT INTO `asistencias` VALUES ('10480', '40', 'REINALDO VELEZ', 'Lunes', '30/01/2017', '06:45:00', '16:58:00', null, '2017-04-04 15:29:20', '2017-04-04 15:29:20');
INSERT INTO `asistencias` VALUES ('10481', '40', 'REINALDO VELEZ', 'Martes', '31/01/2017', '06:40:00', '17:05:00', null, '2017-04-04 15:29:20', '2017-04-04 15:29:20');
INSERT INTO `asistencias` VALUES ('10482', '16', 'RENE LARENAS', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:29:20', '2017-04-04 15:29:20');
INSERT INTO `asistencias` VALUES ('10483', '16', 'RENE LARENAS', 'Martes', '03/01/2017', '09:06:00', '17:35:00', null, '2017-04-04 15:29:20', '2017-04-04 15:29:20');
INSERT INTO `asistencias` VALUES ('10484', '16', 'RENE LARENAS', 'Miércoles', '04/01/2017', '08:01:00', '17:44:00', null, '2017-04-04 15:29:20', '2017-04-04 15:29:20');
INSERT INTO `asistencias` VALUES ('10485', '16', 'RENE LARENAS', 'Jueves', '05/01/2017', '09:48:00', null, null, '2017-04-04 15:29:20', '2017-04-04 15:29:20');
INSERT INTO `asistencias` VALUES ('10486', '16', 'RENE LARENAS', 'Viernes', '06/01/2017', '08:33:00', '19:11:00', null, '2017-04-04 15:29:20', '2017-04-04 15:29:20');
INSERT INTO `asistencias` VALUES ('10487', '16', 'RENE LARENAS', 'Lunes', '09/01/2017', '08:59:00', '18:42:00', null, '2017-04-04 15:29:20', '2017-04-04 15:29:20');
INSERT INTO `asistencias` VALUES ('10488', '16', 'RENE LARENAS', 'Martes', '10/01/2017', null, null, '1', '2017-04-04 15:29:20', '2017-04-04 15:29:20');
INSERT INTO `asistencias` VALUES ('10489', '16', 'RENE LARENAS', 'Miércoles', '11/01/2017', null, null, '1', '2017-04-04 15:29:20', '2017-04-04 15:29:20');
INSERT INTO `asistencias` VALUES ('10490', '16', 'RENE LARENAS', 'Jueves', '12/01/2017', null, null, '1', '2017-04-04 15:29:20', '2017-04-04 15:29:20');
INSERT INTO `asistencias` VALUES ('10491', '16', 'RENE LARENAS', 'Viernes', '13/01/2017', null, null, '1', '2017-04-04 15:29:20', '2017-04-04 15:29:20');
INSERT INTO `asistencias` VALUES ('10492', '16', 'RENE LARENAS', 'Lunes', '16/01/2017', null, null, '1', '2017-04-04 15:29:20', '2017-04-04 15:29:20');
INSERT INTO `asistencias` VALUES ('10493', '16', 'RENE LARENAS', 'Martes', '17/01/2017', null, null, '1', '2017-04-04 15:29:20', '2017-04-04 15:29:20');
INSERT INTO `asistencias` VALUES ('10494', '16', 'RENE LARENAS', 'Miércoles', '18/01/2017', null, null, '1', '2017-04-04 15:29:20', '2017-04-04 15:29:20');
INSERT INTO `asistencias` VALUES ('10495', '16', 'RENE LARENAS', 'Jueves', '19/01/2017', null, null, '1', '2017-04-04 15:29:20', '2017-04-04 15:29:20');
INSERT INTO `asistencias` VALUES ('10496', '16', 'RENE LARENAS', 'Viernes', '20/01/2017', null, null, '1', '2017-04-04 15:29:20', '2017-04-04 15:29:20');
INSERT INTO `asistencias` VALUES ('10497', '16', 'RENE LARENAS', 'Lunes', '23/01/2017', null, null, '1', '2017-04-04 15:29:20', '2017-04-04 15:29:20');
INSERT INTO `asistencias` VALUES ('10498', '16', 'RENE LARENAS', 'Martes', '24/01/2017', null, null, '1', '2017-04-04 15:29:20', '2017-04-04 15:29:20');
INSERT INTO `asistencias` VALUES ('10499', '16', 'RENE LARENAS', 'Miércoles', '25/01/2017', null, null, '1', '2017-04-04 15:29:20', '2017-04-04 15:29:20');
INSERT INTO `asistencias` VALUES ('10500', '16', 'RENE LARENAS', 'Jueves', '26/01/2017', null, null, '1', '2017-04-04 15:29:20', '2017-04-04 15:29:20');
INSERT INTO `asistencias` VALUES ('10501', '16', 'RENE LARENAS', 'Viernes', '27/01/2017', null, null, '1', '2017-04-04 15:29:20', '2017-04-04 15:29:20');
INSERT INTO `asistencias` VALUES ('10502', '16', 'RENE LARENAS', 'Lunes', '30/01/2017', '09:23:00', null, null, '2017-04-04 15:29:20', '2017-04-04 15:29:20');
INSERT INTO `asistencias` VALUES ('10503', '16', 'RENE LARENAS', 'Martes', '31/01/2017', '09:39:00', '17:31:00', null, '2017-04-04 15:29:21', '2017-04-04 15:29:21');
INSERT INTO `asistencias` VALUES ('10504', '23', 'Rivera Oswaldo', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:29:21', '2017-04-04 15:29:21');
INSERT INTO `asistencias` VALUES ('10505', '23', 'Rivera Oswaldo', 'Martes', '03/01/2017', null, null, '1', '2017-04-04 15:29:21', '2017-04-04 15:29:21');
INSERT INTO `asistencias` VALUES ('10506', '23', 'Rivera Oswaldo', 'Miércoles', '04/01/2017', null, null, '1', '2017-04-04 15:29:21', '2017-04-04 15:29:21');
INSERT INTO `asistencias` VALUES ('10507', '23', 'Rivera Oswaldo', 'Jueves', '05/01/2017', null, null, '1', '2017-04-04 15:29:21', '2017-04-04 15:29:21');
INSERT INTO `asistencias` VALUES ('10508', '23', 'Rivera Oswaldo', 'Viernes', '06/01/2017', null, null, '1', '2017-04-04 15:29:21', '2017-04-04 15:29:21');
INSERT INTO `asistencias` VALUES ('10509', '23', 'Rivera Oswaldo', 'Lunes', '09/01/2017', null, null, '1', '2017-04-04 15:29:21', '2017-04-04 15:29:21');
INSERT INTO `asistencias` VALUES ('10510', '23', 'Rivera Oswaldo', 'Martes', '10/01/2017', null, null, '1', '2017-04-04 15:29:21', '2017-04-04 15:29:21');
INSERT INTO `asistencias` VALUES ('10511', '23', 'Rivera Oswaldo', 'Miércoles', '11/01/2017', null, null, '1', '2017-04-04 15:29:21', '2017-04-04 15:29:21');
INSERT INTO `asistencias` VALUES ('10512', '23', 'Rivera Oswaldo', 'Jueves', '12/01/2017', null, null, '1', '2017-04-04 15:29:21', '2017-04-04 15:29:21');
INSERT INTO `asistencias` VALUES ('10513', '23', 'Rivera Oswaldo', 'Viernes', '13/01/2017', null, null, '1', '2017-04-04 15:29:21', '2017-04-04 15:29:21');
INSERT INTO `asistencias` VALUES ('10514', '23', 'Rivera Oswaldo', 'Lunes', '16/01/2017', null, null, '1', '2017-04-04 15:29:21', '2017-04-04 15:29:21');
INSERT INTO `asistencias` VALUES ('10515', '23', 'Rivera Oswaldo', 'Martes', '17/01/2017', null, null, '1', '2017-04-04 15:29:21', '2017-04-04 15:29:21');
INSERT INTO `asistencias` VALUES ('10516', '23', 'Rivera Oswaldo', 'Miércoles', '18/01/2017', null, null, '1', '2017-04-04 15:29:21', '2017-04-04 15:29:21');
INSERT INTO `asistencias` VALUES ('10517', '23', 'Rivera Oswaldo', 'Jueves', '19/01/2017', null, null, '1', '2017-04-04 15:29:21', '2017-04-04 15:29:21');
INSERT INTO `asistencias` VALUES ('10518', '23', 'Rivera Oswaldo', 'Viernes', '20/01/2017', null, null, '1', '2017-04-04 15:29:21', '2017-04-04 15:29:21');
INSERT INTO `asistencias` VALUES ('10519', '23', 'Rivera Oswaldo', 'Lunes', '23/01/2017', null, null, '1', '2017-04-04 15:29:21', '2017-04-04 15:29:21');
INSERT INTO `asistencias` VALUES ('10520', '23', 'Rivera Oswaldo', 'Martes', '24/01/2017', null, null, '1', '2017-04-04 15:29:21', '2017-04-04 15:29:21');
INSERT INTO `asistencias` VALUES ('10521', '23', 'Rivera Oswaldo', 'Miércoles', '25/01/2017', null, null, '1', '2017-04-04 15:29:21', '2017-04-04 15:29:21');
INSERT INTO `asistencias` VALUES ('10522', '23', 'Rivera Oswaldo', 'Jueves', '26/01/2017', null, null, '1', '2017-04-04 15:29:21', '2017-04-04 15:29:21');
INSERT INTO `asistencias` VALUES ('10523', '23', 'Rivera Oswaldo', 'Viernes', '27/01/2017', null, null, '1', '2017-04-04 15:29:21', '2017-04-04 15:29:21');
INSERT INTO `asistencias` VALUES ('10524', '23', 'Rivera Oswaldo', 'Lunes', '30/01/2017', null, null, '1', '2017-04-04 15:29:21', '2017-04-04 15:29:21');
INSERT INTO `asistencias` VALUES ('10525', '23', 'Rivera Oswaldo', 'Martes', '31/01/2017', null, null, '1', '2017-04-04 15:29:21', '2017-04-04 15:29:21');
INSERT INTO `asistencias` VALUES ('10526', '2', 'ROCIO ALOMIA', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:29:21', '2017-04-04 15:29:21');
INSERT INTO `asistencias` VALUES ('10527', '2', 'ROCIO ALOMIA', 'Martes', '03/01/2017', '08:34:00', '17:11:00', null, '2017-04-04 15:29:21', '2017-04-04 15:29:21');
INSERT INTO `asistencias` VALUES ('10528', '2', 'ROCIO ALOMIA', 'Miércoles', '04/01/2017', '08:35:00', '14:57:00', null, '2017-04-04 15:29:21', '2017-04-04 15:29:21');
INSERT INTO `asistencias` VALUES ('10529', '2', 'ROCIO ALOMIA', 'Jueves', '05/01/2017', '08:38:00', null, null, '2017-04-04 15:29:21', '2017-04-04 15:29:21');
INSERT INTO `asistencias` VALUES ('10530', '2', 'ROCIO ALOMIA', 'Viernes', '06/01/2017', '08:43:00', '17:22:00', null, '2017-04-04 15:29:21', '2017-04-04 15:29:21');
INSERT INTO `asistencias` VALUES ('10531', '2', 'ROCIO ALOMIA', 'Lunes', '09/01/2017', '08:44:00', '17:02:00', null, '2017-04-04 15:29:21', '2017-04-04 15:29:21');
INSERT INTO `asistencias` VALUES ('10532', '2', 'ROCIO ALOMIA', 'Martes', '10/01/2017', '08:34:00', '17:13:00', null, '2017-04-04 15:29:21', '2017-04-04 15:29:21');
INSERT INTO `asistencias` VALUES ('10533', '2', 'ROCIO ALOMIA', 'Miércoles', '11/01/2017', '08:52:00', '17:41:00', null, '2017-04-04 15:29:21', '2017-04-04 15:29:21');
INSERT INTO `asistencias` VALUES ('10534', '2', 'ROCIO ALOMIA', 'Jueves', '12/01/2017', '09:18:00', '17:10:00', null, '2017-04-04 15:29:21', '2017-04-04 15:29:21');
INSERT INTO `asistencias` VALUES ('10535', '2', 'ROCIO ALOMIA', 'Viernes', '13/01/2017', '08:36:00', '17:19:00', null, '2017-04-04 15:29:21', '2017-04-04 15:29:21');
INSERT INTO `asistencias` VALUES ('10536', '2', 'ROCIO ALOMIA', 'Lunes', '16/01/2017', '08:45:00', '17:18:00', null, '2017-04-04 15:29:21', '2017-04-04 15:29:21');
INSERT INTO `asistencias` VALUES ('10537', '2', 'ROCIO ALOMIA', 'Martes', '17/01/2017', '08:41:00', '17:07:00', null, '2017-04-04 15:29:21', '2017-04-04 15:29:21');
INSERT INTO `asistencias` VALUES ('10538', '2', 'ROCIO ALOMIA', 'Miércoles', '18/01/2017', '08:41:00', '17:17:00', null, '2017-04-04 15:29:22', '2017-04-04 15:29:22');
INSERT INTO `asistencias` VALUES ('10539', '2', 'ROCIO ALOMIA', 'Jueves', '19/01/2017', null, null, '1', '2017-04-04 15:29:22', '2017-04-04 15:29:22');
INSERT INTO `asistencias` VALUES ('10540', '2', 'ROCIO ALOMIA', 'Viernes', '20/01/2017', null, null, '1', '2017-04-04 15:29:22', '2017-04-04 15:29:22');
INSERT INTO `asistencias` VALUES ('10541', '2', 'ROCIO ALOMIA', 'Lunes', '23/01/2017', '08:52:00', '17:23:00', null, '2017-04-04 15:29:22', '2017-04-04 15:29:22');
INSERT INTO `asistencias` VALUES ('10542', '2', 'ROCIO ALOMIA', 'Martes', '24/01/2017', '08:40:00', '17:04:00', null, '2017-04-04 15:29:22', '2017-04-04 15:29:22');
INSERT INTO `asistencias` VALUES ('10543', '2', 'ROCIO ALOMIA', 'Miércoles', '25/01/2017', '08:33:00', '17:12:00', null, '2017-04-04 15:29:22', '2017-04-04 15:29:22');
INSERT INTO `asistencias` VALUES ('10544', '2', 'ROCIO ALOMIA', 'Jueves', '26/01/2017', '08:40:00', '14:39:00', null, '2017-04-04 15:29:22', '2017-04-04 15:29:22');
INSERT INTO `asistencias` VALUES ('10545', '2', 'ROCIO ALOMIA', 'Viernes', '27/01/2017', '08:42:00', '17:22:00', null, '2017-04-04 15:29:22', '2017-04-04 15:29:22');
INSERT INTO `asistencias` VALUES ('10546', '2', 'ROCIO ALOMIA', 'Lunes', '30/01/2017', '08:25:00', '17:14:00', null, '2017-04-04 15:29:22', '2017-04-04 15:29:22');
INSERT INTO `asistencias` VALUES ('10547', '2', 'ROCIO ALOMIA', 'Martes', '31/01/2017', '08:36:00', '17:11:00', null, '2017-04-04 15:29:22', '2017-04-04 15:29:22');
INSERT INTO `asistencias` VALUES ('10548', '51', 'RUBEN PATINO', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:29:22', '2017-04-04 15:29:22');
INSERT INTO `asistencias` VALUES ('10549', '51', 'RUBEN PATINO', 'Martes', '03/01/2017', null, null, '1', '2017-04-04 15:29:22', '2017-04-04 15:29:22');
INSERT INTO `asistencias` VALUES ('10550', '51', 'RUBEN PATINO', 'Miércoles', '04/01/2017', null, null, '1', '2017-04-04 15:29:22', '2017-04-04 15:29:22');
INSERT INTO `asistencias` VALUES ('10551', '51', 'RUBEN PATINO', 'Jueves', '05/01/2017', null, null, '1', '2017-04-04 15:29:22', '2017-04-04 15:29:22');
INSERT INTO `asistencias` VALUES ('10552', '51', 'RUBEN PATINO', 'Viernes', '06/01/2017', null, null, '1', '2017-04-04 15:29:22', '2017-04-04 15:29:22');
INSERT INTO `asistencias` VALUES ('10553', '51', 'RUBEN PATINO', 'Lunes', '09/01/2017', null, null, '1', '2017-04-04 15:29:22', '2017-04-04 15:29:22');
INSERT INTO `asistencias` VALUES ('10554', '51', 'RUBEN PATINO', 'Martes', '10/01/2017', null, null, '1', '2017-04-04 15:29:22', '2017-04-04 15:29:22');
INSERT INTO `asistencias` VALUES ('10555', '51', 'RUBEN PATINO', 'Miércoles', '11/01/2017', null, null, '1', '2017-04-04 15:29:22', '2017-04-04 15:29:22');
INSERT INTO `asistencias` VALUES ('10556', '51', 'RUBEN PATINO', 'Jueves', '12/01/2017', null, null, '1', '2017-04-04 15:29:22', '2017-04-04 15:29:22');
INSERT INTO `asistencias` VALUES ('10557', '51', 'RUBEN PATINO', 'Viernes', '13/01/2017', null, null, '1', '2017-04-04 15:29:22', '2017-04-04 15:29:22');
INSERT INTO `asistencias` VALUES ('10558', '51', 'RUBEN PATINO', 'Lunes', '16/01/2017', null, null, '1', '2017-04-04 15:29:22', '2017-04-04 15:29:22');
INSERT INTO `asistencias` VALUES ('10559', '51', 'RUBEN PATINO', 'Martes', '17/01/2017', null, null, '1', '2017-04-04 15:29:22', '2017-04-04 15:29:22');
INSERT INTO `asistencias` VALUES ('10560', '51', 'RUBEN PATINO', 'Miércoles', '18/01/2017', null, null, '1', '2017-04-04 15:29:22', '2017-04-04 15:29:22');
INSERT INTO `asistencias` VALUES ('10561', '51', 'RUBEN PATINO', 'Jueves', '19/01/2017', null, null, '1', '2017-04-04 15:29:22', '2017-04-04 15:29:22');
INSERT INTO `asistencias` VALUES ('10562', '51', 'RUBEN PATINO', 'Viernes', '20/01/2017', null, null, '1', '2017-04-04 15:29:22', '2017-04-04 15:29:22');
INSERT INTO `asistencias` VALUES ('10563', '51', 'RUBEN PATINO', 'Lunes', '23/01/2017', null, null, '1', '2017-04-04 15:29:22', '2017-04-04 15:29:22');
INSERT INTO `asistencias` VALUES ('10564', '51', 'RUBEN PATINO', 'Martes', '24/01/2017', null, null, '1', '2017-04-04 15:29:22', '2017-04-04 15:29:22');
INSERT INTO `asistencias` VALUES ('10565', '51', 'RUBEN PATINO', 'Miércoles', '25/01/2017', null, null, '1', '2017-04-04 15:29:22', '2017-04-04 15:29:22');
INSERT INTO `asistencias` VALUES ('10566', '51', 'RUBEN PATINO', 'Jueves', '26/01/2017', null, null, '1', '2017-04-04 15:29:22', '2017-04-04 15:29:22');
INSERT INTO `asistencias` VALUES ('10567', '51', 'RUBEN PATINO', 'Viernes', '27/01/2017', null, null, '1', '2017-04-04 15:29:22', '2017-04-04 15:29:22');
INSERT INTO `asistencias` VALUES ('10568', '51', 'RUBEN PATINO', 'Lunes', '30/01/2017', null, null, '1', '2017-04-04 15:29:22', '2017-04-04 15:29:22');
INSERT INTO `asistencias` VALUES ('10569', '51', 'RUBEN PATINO', 'Martes', '31/01/2017', null, null, '1', '2017-04-04 15:29:23', '2017-04-04 15:29:23');
INSERT INTO `asistencias` VALUES ('10570', '91', 'Sandra Negrete', 'Martes', '03/01/2017', '08:04:00', '16:27:00', null, '2017-04-04 15:29:23', '2017-04-04 15:29:23');
INSERT INTO `asistencias` VALUES ('10571', '91', 'Sandra Negrete', 'Miércoles', '04/01/2017', '08:23:00', '17:06:00', null, '2017-04-04 15:29:23', '2017-04-04 15:29:23');
INSERT INTO `asistencias` VALUES ('10572', '91', 'Sandra Negrete', 'Jueves', '05/01/2017', '08:17:00', '17:08:00', null, '2017-04-04 15:29:23', '2017-04-04 15:29:23');
INSERT INTO `asistencias` VALUES ('10573', '91', 'Sandra Negrete', 'Viernes', '06/01/2017', '08:48:00', '17:14:00', null, '2017-04-04 15:29:23', '2017-04-04 15:29:23');
INSERT INTO `asistencias` VALUES ('10574', '91', 'Sandra Negrete', 'Lunes', '09/01/2017', '08:35:00', '17:12:00', null, '2017-04-04 15:29:23', '2017-04-04 15:29:23');
INSERT INTO `asistencias` VALUES ('10575', '91', 'Sandra Negrete', 'Martes', '10/01/2017', '08:24:00', '17:32:00', null, '2017-04-04 15:29:23', '2017-04-04 15:29:23');
INSERT INTO `asistencias` VALUES ('10576', '91', 'Sandra Negrete', 'Miércoles', '11/01/2017', '08:13:00', '17:05:00', null, '2017-04-04 15:29:23', '2017-04-04 15:29:23');
INSERT INTO `asistencias` VALUES ('10577', '91', 'Sandra Negrete', 'Jueves', '12/01/2017', '08:20:00', '17:29:00', null, '2017-04-04 15:29:23', '2017-04-04 15:29:23');
INSERT INTO `asistencias` VALUES ('10578', '91', 'Sandra Negrete', 'Lunes', '16/01/2017', '08:25:00', '17:03:00', null, '2017-04-04 15:29:23', '2017-04-04 15:29:23');
INSERT INTO `asistencias` VALUES ('10579', '91', 'Sandra Negrete', 'Martes', '17/01/2017', '08:23:00', '17:16:00', null, '2017-04-04 15:29:23', '2017-04-04 15:29:23');
INSERT INTO `asistencias` VALUES ('10580', '91', 'Sandra Negrete', 'Miércoles', '18/01/2017', '08:17:00', '17:14:00', null, '2017-04-04 15:29:23', '2017-04-04 15:29:23');
INSERT INTO `asistencias` VALUES ('10581', '91', 'Sandra Negrete', 'Jueves', '19/01/2017', '10:57:00', '17:08:00', null, '2017-04-04 15:29:23', '2017-04-04 15:29:23');
INSERT INTO `asistencias` VALUES ('10582', '91', 'Sandra Negrete', 'Viernes', '20/01/2017', '08:31:00', '17:25:00', null, '2017-04-04 15:29:23', '2017-04-04 15:29:23');
INSERT INTO `asistencias` VALUES ('10583', '91', 'Sandra Negrete', 'Lunes', '23/01/2017', '08:25:00', '17:16:00', null, '2017-04-04 15:29:23', '2017-04-04 15:29:23');
INSERT INTO `asistencias` VALUES ('10584', '91', 'Sandra Negrete', 'Martes', '24/01/2017', '10:12:00', '17:06:00', null, '2017-04-04 15:29:23', '2017-04-04 15:29:23');
INSERT INTO `asistencias` VALUES ('10585', '91', 'Sandra Negrete', 'Miércoles', '25/01/2017', '08:23:00', '17:12:00', null, '2017-04-04 15:29:23', '2017-04-04 15:29:23');
INSERT INTO `asistencias` VALUES ('10586', '91', 'Sandra Negrete', 'Jueves', '26/01/2017', '08:22:00', '17:12:00', null, '2017-04-04 15:29:23', '2017-04-04 15:29:23');
INSERT INTO `asistencias` VALUES ('10587', '91', 'Sandra Negrete', 'Viernes', '27/01/2017', '08:34:00', '17:10:00', null, '2017-04-04 15:29:23', '2017-04-04 15:29:23');
INSERT INTO `asistencias` VALUES ('10588', '91', 'Sandra Negrete', 'Lunes', '30/01/2017', '08:24:00', '17:12:00', null, '2017-04-04 15:29:23', '2017-04-04 15:29:23');
INSERT INTO `asistencias` VALUES ('10589', '31', 'SANTIAGO SALTOS', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:29:23', '2017-04-04 15:29:23');
INSERT INTO `asistencias` VALUES ('10590', '31', 'SANTIAGO SALTOS', 'Martes', '03/01/2017', '07:37:00', '17:00:00', null, '2017-04-04 15:29:23', '2017-04-04 15:29:23');
INSERT INTO `asistencias` VALUES ('10591', '31', 'SANTIAGO SALTOS', 'Miércoles', '04/01/2017', '07:42:00', '17:00:00', null, '2017-04-04 15:29:23', '2017-04-04 15:29:23');
INSERT INTO `asistencias` VALUES ('10592', '31', 'SANTIAGO SALTOS', 'Jueves', '05/01/2017', '07:41:00', '17:00:00', null, '2017-04-04 15:29:23', '2017-04-04 15:29:23');
INSERT INTO `asistencias` VALUES ('10593', '31', 'SANTIAGO SALTOS', 'Viernes', '06/01/2017', '07:51:00', null, null, '2017-04-04 15:29:23', '2017-04-04 15:29:23');
INSERT INTO `asistencias` VALUES ('10594', '31', 'SANTIAGO SALTOS', 'Lunes', '09/01/2017', '07:36:00', null, null, '2017-04-04 15:29:23', '2017-04-04 15:29:23');
INSERT INTO `asistencias` VALUES ('10595', '31', 'SANTIAGO SALTOS', 'Martes', '10/01/2017', '07:46:00', '17:00:00', null, '2017-04-04 15:29:23', '2017-04-04 15:29:23');
INSERT INTO `asistencias` VALUES ('10596', '31', 'SANTIAGO SALTOS', 'Miércoles', '11/01/2017', '07:39:00', '17:02:00', null, '2017-04-04 15:29:23', '2017-04-04 15:29:23');
INSERT INTO `asistencias` VALUES ('10597', '31', 'SANTIAGO SALTOS', 'Jueves', '12/01/2017', '07:38:00', '17:00:00', null, '2017-04-04 15:29:23', '2017-04-04 15:29:23');
INSERT INTO `asistencias` VALUES ('10598', '31', 'SANTIAGO SALTOS', 'Viernes', '13/01/2017', '07:58:00', '17:06:00', null, '2017-04-04 15:29:23', '2017-04-04 15:29:23');
INSERT INTO `asistencias` VALUES ('10599', '31', 'SANTIAGO SALTOS', 'Lunes', '16/01/2017', '07:36:00', '17:00:00', null, '2017-04-04 15:29:23', '2017-04-04 15:29:23');
INSERT INTO `asistencias` VALUES ('10600', '31', 'SANTIAGO SALTOS', 'Martes', '17/01/2017', '07:37:00', '17:01:00', null, '2017-04-04 15:29:24', '2017-04-04 15:29:24');
INSERT INTO `asistencias` VALUES ('10601', '31', 'SANTIAGO SALTOS', 'Miércoles', '18/01/2017', '07:36:00', '17:01:00', null, '2017-04-04 15:29:24', '2017-04-04 15:29:24');
INSERT INTO `asistencias` VALUES ('10602', '31', 'SANTIAGO SALTOS', 'Jueves', '19/01/2017', '07:49:00', '17:00:00', null, '2017-04-04 15:29:24', '2017-04-04 15:29:24');
INSERT INTO `asistencias` VALUES ('10603', '31', 'SANTIAGO SALTOS', 'Viernes', '20/01/2017', '07:59:00', '17:01:00', null, '2017-04-04 15:29:24', '2017-04-04 15:29:24');
INSERT INTO `asistencias` VALUES ('10604', '31', 'SANTIAGO SALTOS', 'Lunes', '23/01/2017', '08:02:00', '17:01:00', null, '2017-04-04 15:29:24', '2017-04-04 15:29:24');
INSERT INTO `asistencias` VALUES ('10605', '31', 'SANTIAGO SALTOS', 'Martes', '24/01/2017', null, null, '1', '2017-04-04 15:29:24', '2017-04-04 15:29:24');
INSERT INTO `asistencias` VALUES ('10606', '31', 'SANTIAGO SALTOS', 'Miércoles', '25/01/2017', null, null, '1', '2017-04-04 15:29:24', '2017-04-04 15:29:24');
INSERT INTO `asistencias` VALUES ('10607', '31', 'SANTIAGO SALTOS', 'Jueves', '26/01/2017', null, null, '1', '2017-04-04 15:29:24', '2017-04-04 15:29:24');
INSERT INTO `asistencias` VALUES ('10608', '31', 'SANTIAGO SALTOS', 'Viernes', '27/01/2017', '07:46:00', '17:01:00', null, '2017-04-04 15:29:24', '2017-04-04 15:29:24');
INSERT INTO `asistencias` VALUES ('10609', '31', 'SANTIAGO SALTOS', 'Lunes', '30/01/2017', '07:09:00', '17:31:00', null, '2017-04-04 15:29:24', '2017-04-04 15:29:24');
INSERT INTO `asistencias` VALUES ('10610', '31', 'SANTIAGO SALTOS', 'Martes', '31/01/2017', '07:35:00', '17:01:00', null, '2017-04-04 15:29:24', '2017-04-04 15:29:24');
INSERT INTO `asistencias` VALUES ('10611', '24', 'SEGUNDO JIMENEZ', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:29:24', '2017-04-04 15:29:24');
INSERT INTO `asistencias` VALUES ('10612', '24', 'SEGUNDO JIMENEZ', 'Martes', '03/01/2017', '07:51:00', '17:00:00', null, '2017-04-04 15:29:24', '2017-04-04 15:29:24');
INSERT INTO `asistencias` VALUES ('10613', '24', 'SEGUNDO JIMENEZ', 'Miércoles', '04/01/2017', '07:42:00', '17:00:00', null, '2017-04-04 15:29:24', '2017-04-04 15:29:24');
INSERT INTO `asistencias` VALUES ('10614', '24', 'SEGUNDO JIMENEZ', 'Jueves', '05/01/2017', '07:32:00', '17:00:00', null, '2017-04-04 15:29:24', '2017-04-04 15:29:24');
INSERT INTO `asistencias` VALUES ('10615', '24', 'SEGUNDO JIMENEZ', 'Viernes', '06/01/2017', '07:47:00', '17:00:00', null, '2017-04-04 15:29:24', '2017-04-04 15:29:24');
INSERT INTO `asistencias` VALUES ('10616', '24', 'SEGUNDO JIMENEZ', 'Lunes', '09/01/2017', '07:37:00', '17:00:00', null, '2017-04-04 15:29:24', '2017-04-04 15:29:24');
INSERT INTO `asistencias` VALUES ('10617', '24', 'SEGUNDO JIMENEZ', 'Martes', '10/01/2017', '07:30:00', '17:00:00', null, '2017-04-04 15:29:24', '2017-04-04 15:29:24');
INSERT INTO `asistencias` VALUES ('10618', '24', 'SEGUNDO JIMENEZ', 'Miércoles', '11/01/2017', '07:47:00', '17:01:00', null, '2017-04-04 15:29:24', '2017-04-04 15:29:24');
INSERT INTO `asistencias` VALUES ('10619', '24', 'SEGUNDO JIMENEZ', 'Jueves', '12/01/2017', '07:38:00', '17:00:00', null, '2017-04-04 15:29:24', '2017-04-04 15:29:24');
INSERT INTO `asistencias` VALUES ('10620', '24', 'SEGUNDO JIMENEZ', 'Viernes', '13/01/2017', null, null, '1', '2017-04-04 15:29:24', '2017-04-04 15:29:24');
INSERT INTO `asistencias` VALUES ('10621', '24', 'SEGUNDO JIMENEZ', 'Lunes', '16/01/2017', '07:54:00', '17:00:00', null, '2017-04-04 15:29:24', '2017-04-04 15:29:24');
INSERT INTO `asistencias` VALUES ('10622', '24', 'SEGUNDO JIMENEZ', 'Martes', '17/01/2017', '07:49:00', '17:01:00', null, '2017-04-04 15:29:24', '2017-04-04 15:29:24');
INSERT INTO `asistencias` VALUES ('10623', '24', 'SEGUNDO JIMENEZ', 'Miércoles', '18/01/2017', '07:56:00', '17:01:00', null, '2017-04-04 15:29:24', '2017-04-04 15:29:24');
INSERT INTO `asistencias` VALUES ('10624', '24', 'SEGUNDO JIMENEZ', 'Jueves', '19/01/2017', '07:54:00', '17:00:00', null, '2017-04-04 15:29:24', '2017-04-04 15:29:24');
INSERT INTO `asistencias` VALUES ('10625', '24', 'SEGUNDO JIMENEZ', 'Viernes', '20/01/2017', '07:44:00', '17:01:00', null, '2017-04-04 15:29:24', '2017-04-04 15:29:24');
INSERT INTO `asistencias` VALUES ('10626', '24', 'SEGUNDO JIMENEZ', 'Lunes', '23/01/2017', '07:48:00', '17:01:00', null, '2017-04-04 15:29:24', '2017-04-04 15:29:24');
INSERT INTO `asistencias` VALUES ('10627', '24', 'SEGUNDO JIMENEZ', 'Martes', '24/01/2017', '07:46:00', '17:00:00', null, '2017-04-04 15:29:24', '2017-04-04 15:29:24');
INSERT INTO `asistencias` VALUES ('10628', '24', 'SEGUNDO JIMENEZ', 'Miércoles', '25/01/2017', '07:50:00', '17:00:00', null, '2017-04-04 15:29:24', '2017-04-04 15:29:24');
INSERT INTO `asistencias` VALUES ('10629', '24', 'SEGUNDO JIMENEZ', 'Jueves', '26/01/2017', '07:45:00', '17:01:00', null, '2017-04-04 15:29:24', '2017-04-04 15:29:24');
INSERT INTO `asistencias` VALUES ('10630', '24', 'SEGUNDO JIMENEZ', 'Viernes', '27/01/2017', '07:46:00', '17:01:00', null, '2017-04-04 15:29:24', '2017-04-04 15:29:24');
INSERT INTO `asistencias` VALUES ('10631', '24', 'SEGUNDO JIMENEZ', 'Lunes', '30/01/2017', '07:46:00', '17:00:00', null, '2017-04-04 15:29:24', '2017-04-04 15:29:24');
INSERT INTO `asistencias` VALUES ('10632', '24', 'SEGUNDO JIMENEZ', 'Martes', '31/01/2017', null, '17:01:00', null, '2017-04-04 15:29:25', '2017-04-04 15:29:25');
INSERT INTO `asistencias` VALUES ('10633', '48', 'SYLVIA ESTRELLA', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:29:25', '2017-04-04 15:29:25');
INSERT INTO `asistencias` VALUES ('10634', '48', 'SYLVIA ESTRELLA', 'Martes', '03/01/2017', null, null, '1', '2017-04-04 15:29:25', '2017-04-04 15:29:25');
INSERT INTO `asistencias` VALUES ('10635', '48', 'SYLVIA ESTRELLA', 'Miércoles', '04/01/2017', null, null, '1', '2017-04-04 15:29:25', '2017-04-04 15:29:25');
INSERT INTO `asistencias` VALUES ('10636', '48', 'SYLVIA ESTRELLA', 'Jueves', '05/01/2017', null, null, '1', '2017-04-04 15:29:25', '2017-04-04 15:29:25');
INSERT INTO `asistencias` VALUES ('10637', '48', 'SYLVIA ESTRELLA', 'Viernes', '06/01/2017', null, null, '1', '2017-04-04 15:29:25', '2017-04-04 15:29:25');
INSERT INTO `asistencias` VALUES ('10638', '48', 'SYLVIA ESTRELLA', 'Lunes', '09/01/2017', null, null, '1', '2017-04-04 15:29:25', '2017-04-04 15:29:25');
INSERT INTO `asistencias` VALUES ('10639', '48', 'SYLVIA ESTRELLA', 'Martes', '10/01/2017', null, null, '1', '2017-04-04 15:29:25', '2017-04-04 15:29:25');
INSERT INTO `asistencias` VALUES ('10640', '48', 'SYLVIA ESTRELLA', 'Miércoles', '11/01/2017', null, null, '1', '2017-04-04 15:29:25', '2017-04-04 15:29:25');
INSERT INTO `asistencias` VALUES ('10641', '48', 'SYLVIA ESTRELLA', 'Jueves', '12/01/2017', null, null, '1', '2017-04-04 15:29:25', '2017-04-04 15:29:25');
INSERT INTO `asistencias` VALUES ('10642', '48', 'SYLVIA ESTRELLA', 'Viernes', '13/01/2017', null, null, '1', '2017-04-04 15:29:25', '2017-04-04 15:29:25');
INSERT INTO `asistencias` VALUES ('10643', '48', 'SYLVIA ESTRELLA', 'Lunes', '16/01/2017', null, null, '1', '2017-04-04 15:29:25', '2017-04-04 15:29:25');
INSERT INTO `asistencias` VALUES ('10644', '48', 'SYLVIA ESTRELLA', 'Martes', '17/01/2017', null, null, '1', '2017-04-04 15:29:25', '2017-04-04 15:29:25');
INSERT INTO `asistencias` VALUES ('10645', '48', 'SYLVIA ESTRELLA', 'Miércoles', '18/01/2017', null, null, '1', '2017-04-04 15:29:25', '2017-04-04 15:29:25');
INSERT INTO `asistencias` VALUES ('10646', '48', 'SYLVIA ESTRELLA', 'Jueves', '19/01/2017', null, null, '1', '2017-04-04 15:29:25', '2017-04-04 15:29:25');
INSERT INTO `asistencias` VALUES ('10647', '48', 'SYLVIA ESTRELLA', 'Viernes', '20/01/2017', null, null, '1', '2017-04-04 15:29:25', '2017-04-04 15:29:25');
INSERT INTO `asistencias` VALUES ('10648', '48', 'SYLVIA ESTRELLA', 'Lunes', '23/01/2017', null, null, '1', '2017-04-04 15:29:25', '2017-04-04 15:29:25');
INSERT INTO `asistencias` VALUES ('10649', '48', 'SYLVIA ESTRELLA', 'Martes', '24/01/2017', null, null, '1', '2017-04-04 15:29:25', '2017-04-04 15:29:25');
INSERT INTO `asistencias` VALUES ('10650', '48', 'SYLVIA ESTRELLA', 'Miércoles', '25/01/2017', null, null, '1', '2017-04-04 15:29:25', '2017-04-04 15:29:25');
INSERT INTO `asistencias` VALUES ('10651', '48', 'SYLVIA ESTRELLA', 'Jueves', '26/01/2017', null, null, '1', '2017-04-04 15:29:25', '2017-04-04 15:29:25');
INSERT INTO `asistencias` VALUES ('10652', '48', 'SYLVIA ESTRELLA', 'Viernes', '27/01/2017', null, null, '1', '2017-04-04 15:29:25', '2017-04-04 15:29:25');
INSERT INTO `asistencias` VALUES ('10653', '48', 'SYLVIA ESTRELLA', 'Lunes', '30/01/2017', null, null, '1', '2017-04-04 15:29:25', '2017-04-04 15:29:25');
INSERT INTO `asistencias` VALUES ('10654', '48', 'SYLVIA ESTRELLA', 'Martes', '31/01/2017', null, null, '1', '2017-04-04 15:29:25', '2017-04-04 15:29:25');
INSERT INTO `asistencias` VALUES ('10655', '41', 'TATIANA EGUEZ', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:29:25', '2017-04-04 15:29:25');
INSERT INTO `asistencias` VALUES ('10656', '41', 'TATIANA EGUEZ', 'Martes', '03/01/2017', null, null, '1', '2017-04-04 15:29:25', '2017-04-04 15:29:25');
INSERT INTO `asistencias` VALUES ('10657', '41', 'TATIANA EGUEZ', 'Miércoles', '04/01/2017', null, null, '1', '2017-04-04 15:29:25', '2017-04-04 15:29:25');
INSERT INTO `asistencias` VALUES ('10658', '41', 'TATIANA EGUEZ', 'Jueves', '05/01/2017', null, null, '1', '2017-04-04 15:29:25', '2017-04-04 15:29:25');
INSERT INTO `asistencias` VALUES ('10659', '41', 'TATIANA EGUEZ', 'Viernes', '06/01/2017', null, null, '1', '2017-04-04 15:29:25', '2017-04-04 15:29:25');
INSERT INTO `asistencias` VALUES ('10660', '41', 'TATIANA EGUEZ', 'Lunes', '09/01/2017', null, null, '1', '2017-04-04 15:29:25', '2017-04-04 15:29:25');
INSERT INTO `asistencias` VALUES ('10661', '41', 'TATIANA EGUEZ', 'Martes', '10/01/2017', null, null, '1', '2017-04-04 15:29:25', '2017-04-04 15:29:25');
INSERT INTO `asistencias` VALUES ('10662', '41', 'TATIANA EGUEZ', 'Miércoles', '11/01/2017', null, null, '1', '2017-04-04 15:29:25', '2017-04-04 15:29:25');
INSERT INTO `asistencias` VALUES ('10663', '41', 'TATIANA EGUEZ', 'Jueves', '12/01/2017', null, null, '1', '2017-04-04 15:29:25', '2017-04-04 15:29:25');
INSERT INTO `asistencias` VALUES ('10664', '41', 'TATIANA EGUEZ', 'Viernes', '13/01/2017', null, null, '1', '2017-04-04 15:29:25', '2017-04-04 15:29:25');
INSERT INTO `asistencias` VALUES ('10665', '41', 'TATIANA EGUEZ', 'Lunes', '16/01/2017', null, null, '1', '2017-04-04 15:29:25', '2017-04-04 15:29:25');
INSERT INTO `asistencias` VALUES ('10666', '41', 'TATIANA EGUEZ', 'Martes', '17/01/2017', null, null, '1', '2017-04-04 15:29:25', '2017-04-04 15:29:25');
INSERT INTO `asistencias` VALUES ('10667', '41', 'TATIANA EGUEZ', 'Miércoles', '18/01/2017', null, null, '1', '2017-04-04 15:29:25', '2017-04-04 15:29:25');
INSERT INTO `asistencias` VALUES ('10668', '41', 'TATIANA EGUEZ', 'Jueves', '19/01/2017', null, null, '1', '2017-04-04 15:29:26', '2017-04-04 15:29:26');
INSERT INTO `asistencias` VALUES ('10669', '41', 'TATIANA EGUEZ', 'Viernes', '20/01/2017', null, null, '1', '2017-04-04 15:29:26', '2017-04-04 15:29:26');
INSERT INTO `asistencias` VALUES ('10670', '41', 'TATIANA EGUEZ', 'Lunes', '23/01/2017', null, null, '1', '2017-04-04 15:29:26', '2017-04-04 15:29:26');
INSERT INTO `asistencias` VALUES ('10671', '41', 'TATIANA EGUEZ', 'Martes', '24/01/2017', null, null, '1', '2017-04-04 15:29:26', '2017-04-04 15:29:26');
INSERT INTO `asistencias` VALUES ('10672', '41', 'TATIANA EGUEZ', 'Miércoles', '25/01/2017', null, null, '1', '2017-04-04 15:29:26', '2017-04-04 15:29:26');
INSERT INTO `asistencias` VALUES ('10673', '41', 'TATIANA EGUEZ', 'Jueves', '26/01/2017', null, null, '1', '2017-04-04 15:29:26', '2017-04-04 15:29:26');
INSERT INTO `asistencias` VALUES ('10674', '41', 'TATIANA EGUEZ', 'Viernes', '27/01/2017', null, null, '1', '2017-04-04 15:29:26', '2017-04-04 15:29:26');
INSERT INTO `asistencias` VALUES ('10675', '41', 'TATIANA EGUEZ', 'Lunes', '30/01/2017', null, null, '1', '2017-04-04 15:29:26', '2017-04-04 15:29:26');
INSERT INTO `asistencias` VALUES ('10676', '41', 'TATIANA EGUEZ', 'Martes', '31/01/2017', null, null, '1', '2017-04-04 15:29:26', '2017-04-04 15:29:26');
INSERT INTO `asistencias` VALUES ('10677', '45', 'TERESA REA', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:29:26', '2017-04-04 15:29:26');
INSERT INTO `asistencias` VALUES ('10678', '45', 'TERESA REA', 'Martes', '03/01/2017', '09:24:00', '20:08:00', null, '2017-04-04 15:29:26', '2017-04-04 15:29:26');
INSERT INTO `asistencias` VALUES ('10679', '45', 'TERESA REA', 'Miércoles', '04/01/2017', null, '15:39:00', null, '2017-04-04 15:29:26', '2017-04-04 15:29:26');
INSERT INTO `asistencias` VALUES ('10680', '45', 'TERESA REA', 'Jueves', '05/01/2017', '08:44:00', '18:37:00', null, '2017-04-04 15:29:26', '2017-04-04 15:29:26');
INSERT INTO `asistencias` VALUES ('10681', '45', 'TERESA REA', 'Viernes', '06/01/2017', '07:05:00', '15:43:00', null, '2017-04-04 15:29:26', '2017-04-04 15:29:26');
INSERT INTO `asistencias` VALUES ('10682', '45', 'TERESA REA', 'Lunes', '09/01/2017', '09:36:00', '17:00:00', null, '2017-04-04 15:29:26', '2017-04-04 15:29:26');
INSERT INTO `asistencias` VALUES ('10683', '45', 'TERESA REA', 'Martes', '10/01/2017', '08:31:00', '17:05:00', null, '2017-04-04 15:29:26', '2017-04-04 15:29:26');
INSERT INTO `asistencias` VALUES ('10684', '45', 'TERESA REA', 'Miércoles', '11/01/2017', '09:46:00', '17:28:00', null, '2017-04-04 15:29:26', '2017-04-04 15:29:26');
INSERT INTO `asistencias` VALUES ('10685', '45', 'TERESA REA', 'Jueves', '12/01/2017', '07:41:00', '17:39:00', null, '2017-04-04 15:29:26', '2017-04-04 15:29:26');
INSERT INTO `asistencias` VALUES ('10686', '45', 'TERESA REA', 'Viernes', '13/01/2017', '08:36:00', '17:07:00', null, '2017-04-04 15:29:26', '2017-04-04 15:29:26');
INSERT INTO `asistencias` VALUES ('10687', '45', 'TERESA REA', 'Lunes', '16/01/2017', null, '17:24:00', null, '2017-04-04 15:29:26', '2017-04-04 15:29:26');
INSERT INTO `asistencias` VALUES ('10688', '45', 'TERESA REA', 'Martes', '17/01/2017', '07:31:00', '17:18:00', null, '2017-04-04 15:29:26', '2017-04-04 15:29:26');
INSERT INTO `asistencias` VALUES ('10689', '45', 'TERESA REA', 'Miércoles', '18/01/2017', '08:00:00', '17:07:00', null, '2017-04-04 15:29:26', '2017-04-04 15:29:26');
INSERT INTO `asistencias` VALUES ('10690', '45', 'TERESA REA', 'Jueves', '19/01/2017', '09:25:00', '17:31:00', null, '2017-04-04 15:29:26', '2017-04-04 15:29:26');
INSERT INTO `asistencias` VALUES ('10691', '45', 'TERESA REA', 'Viernes', '20/01/2017', '08:26:00', '18:13:00', null, '2017-04-04 15:29:26', '2017-04-04 15:29:26');
INSERT INTO `asistencias` VALUES ('10692', '45', 'TERESA REA', 'Lunes', '23/01/2017', '08:08:00', '17:08:00', null, '2017-04-04 15:29:26', '2017-04-04 15:29:26');
INSERT INTO `asistencias` VALUES ('10693', '45', 'TERESA REA', 'Martes', '24/01/2017', '08:43:00', '17:29:00', null, '2017-04-04 15:29:26', '2017-04-04 15:29:26');
INSERT INTO `asistencias` VALUES ('10694', '45', 'TERESA REA', 'Miércoles', '25/01/2017', '08:33:00', '16:32:00', null, '2017-04-04 15:29:26', '2017-04-04 15:29:26');
INSERT INTO `asistencias` VALUES ('10695', '45', 'TERESA REA', 'Jueves', '26/01/2017', null, null, '1', '2017-04-04 15:29:26', '2017-04-04 15:29:26');
INSERT INTO `asistencias` VALUES ('10696', '45', 'TERESA REA', 'Viernes', '27/01/2017', '07:35:00', '17:15:00', null, '2017-04-04 15:29:27', '2017-04-04 15:29:27');
INSERT INTO `asistencias` VALUES ('10697', '45', 'TERESA REA', 'Lunes', '30/01/2017', '07:19:00', '17:04:00', null, '2017-04-04 15:29:27', '2017-04-04 15:29:27');
INSERT INTO `asistencias` VALUES ('10698', '45', 'TERESA REA', 'Martes', '31/01/2017', '08:27:00', '17:14:00', null, '2017-04-04 15:29:27', '2017-04-04 15:29:27');
INSERT INTO `asistencias` VALUES ('10699', '33', 'VERONICA MARCHAN', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:29:27', '2017-04-04 15:29:27');
INSERT INTO `asistencias` VALUES ('10700', '33', 'VERONICA MARCHAN', 'Martes', '03/01/2017', null, null, '1', '2017-04-04 15:29:27', '2017-04-04 15:29:27');
INSERT INTO `asistencias` VALUES ('10701', '33', 'VERONICA MARCHAN', 'Miércoles', '04/01/2017', '08:28:00', '17:00:00', null, '2017-04-04 15:29:27', '2017-04-04 15:29:27');
INSERT INTO `asistencias` VALUES ('10702', '33', 'VERONICA MARCHAN', 'Jueves', '05/01/2017', '08:23:00', '16:30:00', null, '2017-04-04 15:29:27', '2017-04-04 15:29:27');
INSERT INTO `asistencias` VALUES ('10703', '33', 'VERONICA MARCHAN', 'Viernes', '06/01/2017', '08:27:00', '17:00:00', null, '2017-04-04 15:29:27', '2017-04-04 15:29:27');
INSERT INTO `asistencias` VALUES ('10704', '33', 'VERONICA MARCHAN', 'Lunes', '09/01/2017', '08:24:00', '16:58:00', null, '2017-04-04 15:29:27', '2017-04-04 15:29:27');
INSERT INTO `asistencias` VALUES ('10705', '33', 'VERONICA MARCHAN', 'Martes', '10/01/2017', '08:11:00', '17:03:00', null, '2017-04-04 15:29:27', '2017-04-04 15:29:27');
INSERT INTO `asistencias` VALUES ('10706', '33', 'VERONICA MARCHAN', 'Miércoles', '11/01/2017', '08:06:00', '17:01:00', null, '2017-04-04 15:29:27', '2017-04-04 15:29:27');
INSERT INTO `asistencias` VALUES ('10707', '33', 'VERONICA MARCHAN', 'Jueves', '12/01/2017', '08:18:00', '17:00:00', null, '2017-04-04 15:29:27', '2017-04-04 15:29:27');
INSERT INTO `asistencias` VALUES ('10708', '33', 'VERONICA MARCHAN', 'Viernes', '13/01/2017', '08:18:00', '17:01:00', null, '2017-04-04 15:29:27', '2017-04-04 15:29:27');
INSERT INTO `asistencias` VALUES ('10709', '33', 'VERONICA MARCHAN', 'Lunes', '16/01/2017', '08:24:00', '16:58:00', null, '2017-04-04 15:29:27', '2017-04-04 15:29:27');
INSERT INTO `asistencias` VALUES ('10710', '33', 'VERONICA MARCHAN', 'Martes', '17/01/2017', '08:14:00', '17:00:00', null, '2017-04-04 15:29:27', '2017-04-04 15:29:27');
INSERT INTO `asistencias` VALUES ('10711', '33', 'VERONICA MARCHAN', 'Miércoles', '18/01/2017', '08:11:00', '17:01:00', null, '2017-04-04 15:29:27', '2017-04-04 15:29:27');
INSERT INTO `asistencias` VALUES ('10712', '33', 'VERONICA MARCHAN', 'Jueves', '19/01/2017', '08:02:00', '17:02:00', null, '2017-04-04 15:29:27', '2017-04-04 15:29:27');
INSERT INTO `asistencias` VALUES ('10713', '33', 'VERONICA MARCHAN', 'Viernes', '20/01/2017', '08:18:00', '17:00:00', null, '2017-04-04 15:29:27', '2017-04-04 15:29:27');
INSERT INTO `asistencias` VALUES ('10714', '33', 'VERONICA MARCHAN', 'Lunes', '23/01/2017', '08:24:00', '17:03:00', null, '2017-04-04 15:29:27', '2017-04-04 15:29:27');
INSERT INTO `asistencias` VALUES ('10715', '33', 'VERONICA MARCHAN', 'Martes', '24/01/2017', '08:20:00', '17:01:00', null, '2017-04-04 15:29:27', '2017-04-04 15:29:27');
INSERT INTO `asistencias` VALUES ('10716', '33', 'VERONICA MARCHAN', 'Miércoles', '25/01/2017', '08:12:00', '17:00:00', null, '2017-04-04 15:29:27', '2017-04-04 15:29:27');
INSERT INTO `asistencias` VALUES ('10717', '33', 'VERONICA MARCHAN', 'Jueves', '26/01/2017', '08:20:00', '12:00:00', null, '2017-04-04 15:29:27', '2017-04-04 15:29:27');
INSERT INTO `asistencias` VALUES ('10718', '33', 'VERONICA MARCHAN', 'Viernes', '27/01/2017', '08:13:00', '17:01:00', null, '2017-04-04 15:29:27', '2017-04-04 15:29:27');
INSERT INTO `asistencias` VALUES ('10719', '33', 'VERONICA MARCHAN', 'Lunes', '30/01/2017', '08:12:00', '16:57:00', null, '2017-04-04 15:29:27', '2017-04-04 15:29:27');
INSERT INTO `asistencias` VALUES ('10720', '33', 'VERONICA MARCHAN', 'Martes', '31/01/2017', '09:22:00', '16:57:00', null, '2017-04-04 15:29:27', '2017-04-04 15:29:27');
INSERT INTO `asistencias` VALUES ('10721', '54', 'VERONICA POZO', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:29:27', '2017-04-04 15:29:27');
INSERT INTO `asistencias` VALUES ('10722', '54', 'VERONICA POZO', 'Martes', '03/01/2017', null, null, '1', '2017-04-04 15:29:27', '2017-04-04 15:29:27');
INSERT INTO `asistencias` VALUES ('10723', '54', 'VERONICA POZO', 'Miércoles', '04/01/2017', null, null, '1', '2017-04-04 15:29:27', '2017-04-04 15:29:27');
INSERT INTO `asistencias` VALUES ('10724', '54', 'VERONICA POZO', 'Jueves', '05/01/2017', null, null, '1', '2017-04-04 15:29:27', '2017-04-04 15:29:27');
INSERT INTO `asistencias` VALUES ('10725', '54', 'VERONICA POZO', 'Viernes', '06/01/2017', null, null, '1', '2017-04-04 15:29:27', '2017-04-04 15:29:27');
INSERT INTO `asistencias` VALUES ('10726', '54', 'VERONICA POZO', 'Lunes', '09/01/2017', null, null, '1', '2017-04-04 15:29:27', '2017-04-04 15:29:27');
INSERT INTO `asistencias` VALUES ('10727', '54', 'VERONICA POZO', 'Martes', '10/01/2017', null, null, '1', '2017-04-04 15:29:27', '2017-04-04 15:29:27');
INSERT INTO `asistencias` VALUES ('10728', '54', 'VERONICA POZO', 'Miércoles', '11/01/2017', null, null, '1', '2017-04-04 15:29:27', '2017-04-04 15:29:27');
INSERT INTO `asistencias` VALUES ('10729', '54', 'VERONICA POZO', 'Jueves', '12/01/2017', null, null, '1', '2017-04-04 15:29:28', '2017-04-04 15:29:28');
INSERT INTO `asistencias` VALUES ('10730', '54', 'VERONICA POZO', 'Viernes', '13/01/2017', null, null, '1', '2017-04-04 15:29:28', '2017-04-04 15:29:28');
INSERT INTO `asistencias` VALUES ('10731', '54', 'VERONICA POZO', 'Lunes', '16/01/2017', null, null, '1', '2017-04-04 15:29:28', '2017-04-04 15:29:28');
INSERT INTO `asistencias` VALUES ('10732', '54', 'VERONICA POZO', 'Martes', '17/01/2017', null, null, '1', '2017-04-04 15:29:28', '2017-04-04 15:29:28');
INSERT INTO `asistencias` VALUES ('10733', '54', 'VERONICA POZO', 'Miércoles', '18/01/2017', null, null, '1', '2017-04-04 15:29:28', '2017-04-04 15:29:28');
INSERT INTO `asistencias` VALUES ('10734', '54', 'VERONICA POZO', 'Jueves', '19/01/2017', null, null, '1', '2017-04-04 15:29:28', '2017-04-04 15:29:28');
INSERT INTO `asistencias` VALUES ('10735', '54', 'VERONICA POZO', 'Viernes', '20/01/2017', null, null, '1', '2017-04-04 15:29:28', '2017-04-04 15:29:28');
INSERT INTO `asistencias` VALUES ('10736', '54', 'VERONICA POZO', 'Lunes', '23/01/2017', null, null, '1', '2017-04-04 15:29:28', '2017-04-04 15:29:28');
INSERT INTO `asistencias` VALUES ('10737', '54', 'VERONICA POZO', 'Martes', '24/01/2017', null, null, '1', '2017-04-04 15:29:28', '2017-04-04 15:29:28');
INSERT INTO `asistencias` VALUES ('10738', '54', 'VERONICA POZO', 'Miércoles', '25/01/2017', null, null, '1', '2017-04-04 15:29:28', '2017-04-04 15:29:28');
INSERT INTO `asistencias` VALUES ('10739', '54', 'VERONICA POZO', 'Jueves', '26/01/2017', null, null, '1', '2017-04-04 15:29:28', '2017-04-04 15:29:28');
INSERT INTO `asistencias` VALUES ('10740', '54', 'VERONICA POZO', 'Viernes', '27/01/2017', null, null, '1', '2017-04-04 15:29:28', '2017-04-04 15:29:28');
INSERT INTO `asistencias` VALUES ('10741', '54', 'VERONICA POZO', 'Lunes', '30/01/2017', null, null, '1', '2017-04-04 15:29:28', '2017-04-04 15:29:28');
INSERT INTO `asistencias` VALUES ('10742', '54', 'VERONICA POZO', 'Martes', '31/01/2017', null, null, '1', '2017-04-04 15:29:28', '2017-04-04 15:29:28');
INSERT INTO `asistencias` VALUES ('10743', '49', 'VICTORIA GUERRA', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:29:28', '2017-04-04 15:29:28');
INSERT INTO `asistencias` VALUES ('10744', '49', 'VICTORIA GUERRA', 'Martes', '03/01/2017', '08:25:00', '17:02:00', null, '2017-04-04 15:29:28', '2017-04-04 15:29:28');
INSERT INTO `asistencias` VALUES ('10745', '49', 'VICTORIA GUERRA', 'Miércoles', '04/01/2017', '08:33:00', '17:07:00', null, '2017-04-04 15:29:28', '2017-04-04 15:29:28');
INSERT INTO `asistencias` VALUES ('10746', '49', 'VICTORIA GUERRA', 'Jueves', '05/01/2017', '08:20:00', '17:08:00', null, '2017-04-04 15:29:28', '2017-04-04 15:29:28');
INSERT INTO `asistencias` VALUES ('10747', '49', 'VICTORIA GUERRA', 'Viernes', '06/01/2017', '08:23:00', '17:01:00', null, '2017-04-04 15:29:28', '2017-04-04 15:29:28');
INSERT INTO `asistencias` VALUES ('10748', '49', 'VICTORIA GUERRA', 'Lunes', '09/01/2017', '08:14:00', '17:08:00', null, '2017-04-04 15:29:28', '2017-04-04 15:29:28');
INSERT INTO `asistencias` VALUES ('10749', '49', 'VICTORIA GUERRA', 'Martes', '10/01/2017', '08:19:00', '17:01:00', null, '2017-04-04 15:29:28', '2017-04-04 15:29:28');
INSERT INTO `asistencias` VALUES ('10750', '49', 'VICTORIA GUERRA', 'Miércoles', '11/01/2017', '08:07:00', '17:09:00', null, '2017-04-04 15:29:28', '2017-04-04 15:29:28');
INSERT INTO `asistencias` VALUES ('10751', '49', 'VICTORIA GUERRA', 'Jueves', '12/01/2017', '08:23:00', '17:04:00', null, '2017-04-04 15:29:28', '2017-04-04 15:29:28');
INSERT INTO `asistencias` VALUES ('10752', '49', 'VICTORIA GUERRA', 'Viernes', '13/01/2017', null, null, '1', '2017-04-04 15:29:28', '2017-04-04 15:29:28');
INSERT INTO `asistencias` VALUES ('10753', '49', 'VICTORIA GUERRA', 'Lunes', '16/01/2017', '08:34:00', '17:02:00', null, '2017-04-04 15:29:28', '2017-04-04 15:29:28');
INSERT INTO `asistencias` VALUES ('10754', '49', 'VICTORIA GUERRA', 'Martes', '17/01/2017', '08:21:00', '17:01:00', null, '2017-04-04 15:29:28', '2017-04-04 15:29:28');
INSERT INTO `asistencias` VALUES ('10755', '49', 'VICTORIA GUERRA', 'Miércoles', '18/01/2017', '08:18:00', '17:06:00', null, '2017-04-04 15:29:28', '2017-04-04 15:29:28');
INSERT INTO `asistencias` VALUES ('10756', '49', 'VICTORIA GUERRA', 'Jueves', '19/01/2017', '08:18:00', '17:22:00', null, '2017-04-04 15:29:28', '2017-04-04 15:29:28');
INSERT INTO `asistencias` VALUES ('10757', '49', 'VICTORIA GUERRA', 'Viernes', '20/01/2017', '08:29:00', null, null, '2017-04-04 15:29:28', '2017-04-04 15:29:28');
INSERT INTO `asistencias` VALUES ('10758', '49', 'VICTORIA GUERRA', 'Lunes', '23/01/2017', '08:25:00', '17:21:00', null, '2017-04-04 15:29:28', '2017-04-04 15:29:28');
INSERT INTO `asistencias` VALUES ('10759', '49', 'VICTORIA GUERRA', 'Martes', '24/01/2017', '08:20:00', '17:47:00', null, '2017-04-04 15:29:28', '2017-04-04 15:29:28');
INSERT INTO `asistencias` VALUES ('10760', '49', 'VICTORIA GUERRA', 'Miércoles', '25/01/2017', '08:19:00', '17:51:00', null, '2017-04-04 15:29:28', '2017-04-04 15:29:28');
INSERT INTO `asistencias` VALUES ('10761', '49', 'VICTORIA GUERRA', 'Jueves', '26/01/2017', '08:25:00', '17:29:00', null, '2017-04-04 15:29:28', '2017-04-04 15:29:28');
INSERT INTO `asistencias` VALUES ('10762', '49', 'VICTORIA GUERRA', 'Viernes', '27/01/2017', '08:24:00', null, null, '2017-04-04 15:29:28', '2017-04-04 15:29:28');
INSERT INTO `asistencias` VALUES ('10763', '49', 'VICTORIA GUERRA', 'Lunes', '30/01/2017', '08:28:00', '17:08:00', null, '2017-04-04 15:29:28', '2017-04-04 15:29:28');
INSERT INTO `asistencias` VALUES ('10764', '49', 'VICTORIA GUERRA', 'Martes', '31/01/2017', null, null, '1', '2017-04-04 15:29:29', '2017-04-04 15:29:29');
INSERT INTO `asistencias` VALUES ('10765', '29', 'Viteri María José', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:29:29', '2017-04-04 15:29:29');
INSERT INTO `asistencias` VALUES ('10766', '29', 'Viteri María José', 'Martes', '03/01/2017', null, null, '1', '2017-04-04 15:29:29', '2017-04-04 15:29:29');
INSERT INTO `asistencias` VALUES ('10767', '29', 'Viteri María José', 'Miércoles', '04/01/2017', null, null, '1', '2017-04-04 15:29:29', '2017-04-04 15:29:29');
INSERT INTO `asistencias` VALUES ('10768', '29', 'Viteri María José', 'Jueves', '05/01/2017', null, null, '1', '2017-04-04 15:29:29', '2017-04-04 15:29:29');
INSERT INTO `asistencias` VALUES ('10769', '29', 'Viteri María José', 'Viernes', '06/01/2017', null, null, '1', '2017-04-04 15:29:29', '2017-04-04 15:29:29');
INSERT INTO `asistencias` VALUES ('10770', '29', 'Viteri María José', 'Lunes', '09/01/2017', null, null, '1', '2017-04-04 15:29:29', '2017-04-04 15:29:29');
INSERT INTO `asistencias` VALUES ('10771', '29', 'Viteri María José', 'Martes', '10/01/2017', null, null, '1', '2017-04-04 15:29:29', '2017-04-04 15:29:29');
INSERT INTO `asistencias` VALUES ('10772', '29', 'Viteri María José', 'Miércoles', '11/01/2017', null, null, '1', '2017-04-04 15:29:29', '2017-04-04 15:29:29');
INSERT INTO `asistencias` VALUES ('10773', '29', 'Viteri María José', 'Jueves', '12/01/2017', null, null, '1', '2017-04-04 15:29:29', '2017-04-04 15:29:29');
INSERT INTO `asistencias` VALUES ('10774', '29', 'Viteri María José', 'Viernes', '13/01/2017', null, null, '1', '2017-04-04 15:29:29', '2017-04-04 15:29:29');
INSERT INTO `asistencias` VALUES ('10775', '29', 'Viteri María José', 'Lunes', '16/01/2017', null, null, '1', '2017-04-04 15:29:29', '2017-04-04 15:29:29');
INSERT INTO `asistencias` VALUES ('10776', '29', 'Viteri María José', 'Martes', '17/01/2017', null, null, '1', '2017-04-04 15:29:29', '2017-04-04 15:29:29');
INSERT INTO `asistencias` VALUES ('10777', '29', 'Viteri María José', 'Miércoles', '18/01/2017', null, null, '1', '2017-04-04 15:29:29', '2017-04-04 15:29:29');
INSERT INTO `asistencias` VALUES ('10778', '29', 'Viteri María José', 'Jueves', '19/01/2017', null, null, '1', '2017-04-04 15:29:29', '2017-04-04 15:29:29');
INSERT INTO `asistencias` VALUES ('10779', '29', 'Viteri María José', 'Viernes', '20/01/2017', null, null, '1', '2017-04-04 15:29:29', '2017-04-04 15:29:29');
INSERT INTO `asistencias` VALUES ('10780', '29', 'Viteri María José', 'Lunes', '23/01/2017', null, null, '1', '2017-04-04 15:29:29', '2017-04-04 15:29:29');
INSERT INTO `asistencias` VALUES ('10781', '29', 'Viteri María José', 'Martes', '24/01/2017', null, null, '1', '2017-04-04 15:29:29', '2017-04-04 15:29:29');
INSERT INTO `asistencias` VALUES ('10782', '29', 'Viteri María José', 'Miércoles', '25/01/2017', null, null, '1', '2017-04-04 15:29:29', '2017-04-04 15:29:29');
INSERT INTO `asistencias` VALUES ('10783', '29', 'Viteri María José', 'Jueves', '26/01/2017', null, null, '1', '2017-04-04 15:29:29', '2017-04-04 15:29:29');
INSERT INTO `asistencias` VALUES ('10784', '29', 'Viteri María José', 'Viernes', '27/01/2017', null, null, '1', '2017-04-04 15:29:29', '2017-04-04 15:29:29');
INSERT INTO `asistencias` VALUES ('10785', '29', 'Viteri María José', 'Lunes', '30/01/2017', null, null, '1', '2017-04-04 15:29:29', '2017-04-04 15:29:29');
INSERT INTO `asistencias` VALUES ('10786', '29', 'Viteri María José', 'Martes', '31/01/2017', null, null, '1', '2017-04-04 15:29:29', '2017-04-04 15:29:29');
INSERT INTO `asistencias` VALUES ('10787', '98', 'Viviana de la Cadena', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:29:29', '2017-04-04 15:29:29');
INSERT INTO `asistencias` VALUES ('10788', '98', 'Viviana de la Cadena', 'Martes', '03/01/2017', '07:54:00', '18:18:00', null, '2017-04-04 15:29:29', '2017-04-04 15:29:29');
INSERT INTO `asistencias` VALUES ('10789', '98', 'Viviana de la Cadena', 'Miércoles', '04/01/2017', '08:35:00', '17:57:00', null, '2017-04-04 15:29:29', '2017-04-04 15:29:29');
INSERT INTO `asistencias` VALUES ('10790', '98', 'Viviana de la Cadena', 'Jueves', '05/01/2017', '08:46:00', '19:45:00', null, '2017-04-04 15:29:29', '2017-04-04 15:29:29');
INSERT INTO `asistencias` VALUES ('10791', '98', 'Viviana de la Cadena', 'Viernes', '06/01/2017', '08:51:00', '17:47:00', null, '2017-04-04 15:29:29', '2017-04-04 15:29:29');
INSERT INTO `asistencias` VALUES ('10792', '98', 'Viviana de la Cadena', 'Lunes', '09/01/2017', '08:43:00', '17:33:00', null, '2017-04-04 15:29:29', '2017-04-04 15:29:29');
INSERT INTO `asistencias` VALUES ('10793', '98', 'Viviana de la Cadena', 'Martes', '10/01/2017', '07:56:00', '18:54:00', null, '2017-04-04 15:29:29', '2017-04-04 15:29:29');
INSERT INTO `asistencias` VALUES ('10794', '98', 'Viviana de la Cadena', 'Miércoles', '11/01/2017', null, null, '1', '2017-04-04 15:29:29', '2017-04-04 15:29:29');
INSERT INTO `asistencias` VALUES ('10795', '98', 'Viviana de la Cadena', 'Jueves', '12/01/2017', '08:35:00', '18:44:00', null, '2017-04-04 15:29:29', '2017-04-04 15:29:29');
INSERT INTO `asistencias` VALUES ('10796', '98', 'Viviana de la Cadena', 'Viernes', '13/01/2017', '08:38:00', '17:40:00', null, '2017-04-04 15:29:29', '2017-04-04 15:29:29');
INSERT INTO `asistencias` VALUES ('10797', '98', 'Viviana de la Cadena', 'Lunes', '16/01/2017', '08:34:00', '17:17:00', null, '2017-04-04 15:29:29', '2017-04-04 15:29:29');
INSERT INTO `asistencias` VALUES ('10798', '98', 'Viviana de la Cadena', 'Martes', '17/01/2017', '08:43:00', '17:37:00', null, '2017-04-04 15:29:30', '2017-04-04 15:29:30');
INSERT INTO `asistencias` VALUES ('10799', '98', 'Viviana de la Cadena', 'Miércoles', '18/01/2017', '08:14:00', '19:03:00', null, '2017-04-04 15:29:30', '2017-04-04 15:29:30');
INSERT INTO `asistencias` VALUES ('10800', '98', 'Viviana de la Cadena', 'Jueves', '19/01/2017', '08:42:00', '18:27:00', null, '2017-04-04 15:29:30', '2017-04-04 15:29:30');
INSERT INTO `asistencias` VALUES ('10801', '98', 'Viviana de la Cadena', 'Viernes', '20/01/2017', '08:03:00', '17:56:00', null, '2017-04-04 15:29:30', '2017-04-04 15:29:30');
INSERT INTO `asistencias` VALUES ('10802', '98', 'Viviana de la Cadena', 'Lunes', '23/01/2017', '08:09:00', '18:09:00', null, '2017-04-04 15:29:30', '2017-04-04 15:29:30');
INSERT INTO `asistencias` VALUES ('10803', '98', 'Viviana de la Cadena', 'Martes', '24/01/2017', '08:27:00', '19:04:00', null, '2017-04-04 15:29:30', '2017-04-04 15:29:30');
INSERT INTO `asistencias` VALUES ('10804', '98', 'Viviana de la Cadena', 'Miércoles', '25/01/2017', '08:24:00', '17:32:00', null, '2017-04-04 15:29:30', '2017-04-04 15:29:30');
INSERT INTO `asistencias` VALUES ('10805', '98', 'Viviana de la Cadena', 'Jueves', '26/01/2017', null, '17:16:00', null, '2017-04-04 15:29:30', '2017-04-04 15:29:30');
INSERT INTO `asistencias` VALUES ('10806', '98', 'Viviana de la Cadena', 'Viernes', '27/01/2017', '08:22:00', '18:24:00', null, '2017-04-04 15:29:30', '2017-04-04 15:29:30');
INSERT INTO `asistencias` VALUES ('10807', '98', 'Viviana de la Cadena', 'Lunes', '30/01/2017', '08:35:00', '17:25:00', null, '2017-04-04 15:29:30', '2017-04-04 15:29:30');
INSERT INTO `asistencias` VALUES ('10808', '98', 'Viviana de la Cadena', 'Martes', '31/01/2017', '08:32:00', '17:41:00', null, '2017-04-04 15:29:30', '2017-04-04 15:29:30');
INSERT INTO `asistencias` VALUES ('10809', '107', 'William Molina', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:29:30', '2017-04-04 15:29:30');
INSERT INTO `asistencias` VALUES ('10810', '107', 'William Molina', 'Martes', '03/01/2017', '08:26:00', '17:05:00', null, '2017-04-04 15:29:30', '2017-04-04 15:29:30');
INSERT INTO `asistencias` VALUES ('10811', '107', 'William Molina', 'Miércoles', '04/01/2017', '08:43:00', '17:49:00', null, '2017-04-04 15:29:30', '2017-04-04 15:29:30');
INSERT INTO `asistencias` VALUES ('10812', '107', 'William Molina', 'Jueves', '05/01/2017', '08:32:00', '17:12:00', null, '2017-04-04 15:29:30', '2017-04-04 15:29:30');
INSERT INTO `asistencias` VALUES ('10813', '107', 'William Molina', 'Viernes', '06/01/2017', '08:36:00', '17:45:00', null, '2017-04-04 15:29:30', '2017-04-04 15:29:30');
INSERT INTO `asistencias` VALUES ('10814', '107', 'William Molina', 'Lunes', '09/01/2017', '08:38:00', '17:56:00', null, '2017-04-04 15:29:30', '2017-04-04 15:29:30');
INSERT INTO `asistencias` VALUES ('10815', '107', 'William Molina', 'Martes', '10/01/2017', '10:47:00', null, null, '2017-04-04 15:29:30', '2017-04-04 15:29:30');
INSERT INTO `asistencias` VALUES ('10816', '107', 'William Molina', 'Miércoles', '11/01/2017', '08:46:00', '17:11:00', null, '2017-04-04 15:29:30', '2017-04-04 15:29:30');
INSERT INTO `asistencias` VALUES ('10817', '107', 'William Molina', 'Jueves', '12/01/2017', '08:34:00', '18:04:00', null, '2017-04-04 15:29:30', '2017-04-04 15:29:30');
INSERT INTO `asistencias` VALUES ('10818', '107', 'William Molina', 'Viernes', '13/01/2017', '08:50:00', '17:22:00', null, '2017-04-04 15:29:30', '2017-04-04 15:29:30');
INSERT INTO `asistencias` VALUES ('10819', '107', 'William Molina', 'Lunes', '16/01/2017', '08:27:00', '17:35:00', null, '2017-04-04 15:29:30', '2017-04-04 15:29:30');
INSERT INTO `asistencias` VALUES ('10820', '107', 'William Molina', 'Martes', '17/01/2017', '08:31:00', '18:21:00', null, '2017-04-04 15:29:30', '2017-04-04 15:29:30');
INSERT INTO `asistencias` VALUES ('10821', '107', 'William Molina', 'Miércoles', '18/01/2017', '08:43:00', '17:17:00', null, '2017-04-04 15:29:30', '2017-04-04 15:29:30');
INSERT INTO `asistencias` VALUES ('10822', '107', 'William Molina', 'Jueves', '19/01/2017', '08:34:00', '17:20:00', null, '2017-04-04 15:29:30', '2017-04-04 15:29:30');
INSERT INTO `asistencias` VALUES ('10823', '107', 'William Molina', 'Viernes', '20/01/2017', '08:37:00', '19:00:00', null, '2017-04-04 15:29:30', '2017-04-04 15:29:30');
INSERT INTO `asistencias` VALUES ('10824', '107', 'William Molina', 'Lunes', '23/01/2017', '08:40:00', '17:32:00', null, '2017-04-04 15:29:30', '2017-04-04 15:29:30');
INSERT INTO `asistencias` VALUES ('10825', '107', 'William Molina', 'Martes', '24/01/2017', '08:28:00', '17:10:00', null, '2017-04-04 15:29:30', '2017-04-04 15:29:30');
INSERT INTO `asistencias` VALUES ('10826', '107', 'William Molina', 'Miércoles', '25/01/2017', '08:38:00', '17:56:00', null, '2017-04-04 15:29:30', '2017-04-04 15:29:30');
INSERT INTO `asistencias` VALUES ('10827', '107', 'William Molina', 'Jueves', '26/01/2017', null, null, '1', '2017-04-04 15:29:30', '2017-04-04 15:29:30');
INSERT INTO `asistencias` VALUES ('10828', '107', 'William Molina', 'Viernes', '27/01/2017', null, null, '1', '2017-04-04 15:29:30', '2017-04-04 15:29:30');
INSERT INTO `asistencias` VALUES ('10829', '107', 'William Molina', 'Lunes', '30/01/2017', '08:37:00', '17:16:00', null, '2017-04-04 15:29:30', '2017-04-04 15:29:30');
INSERT INTO `asistencias` VALUES ('10830', '107', 'William Molina', 'Martes', '31/01/2017', '08:33:00', '17:24:00', null, '2017-04-04 15:29:30', '2017-04-04 15:29:30');
INSERT INTO `asistencias` VALUES ('10831', '39', 'WILLIAN ESCOBAR', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:29:30', '2017-04-04 15:29:30');
INSERT INTO `asistencias` VALUES ('10832', '39', 'WILLIAN ESCOBAR', 'Martes', '03/01/2017', '07:45:00', null, null, '2017-04-04 15:29:31', '2017-04-04 15:29:31');
INSERT INTO `asistencias` VALUES ('10833', '39', 'WILLIAN ESCOBAR', 'Miércoles', '04/01/2017', null, null, '1', '2017-04-04 15:29:31', '2017-04-04 15:29:31');
INSERT INTO `asistencias` VALUES ('10834', '39', 'WILLIAN ESCOBAR', 'Jueves', '05/01/2017', null, null, '1', '2017-04-04 15:29:31', '2017-04-04 15:29:31');
INSERT INTO `asistencias` VALUES ('10835', '39', 'WILLIAN ESCOBAR', 'Viernes', '06/01/2017', null, null, '1', '2017-04-04 15:29:31', '2017-04-04 15:29:31');
INSERT INTO `asistencias` VALUES ('10836', '39', 'WILLIAN ESCOBAR', 'Lunes', '09/01/2017', null, null, '1', '2017-04-04 15:29:31', '2017-04-04 15:29:31');
INSERT INTO `asistencias` VALUES ('10837', '39', 'WILLIAN ESCOBAR', 'Martes', '10/01/2017', null, null, '1', '2017-04-04 15:29:31', '2017-04-04 15:29:31');
INSERT INTO `asistencias` VALUES ('10838', '39', 'WILLIAN ESCOBAR', 'Miércoles', '11/01/2017', null, null, '1', '2017-04-04 15:29:31', '2017-04-04 15:29:31');
INSERT INTO `asistencias` VALUES ('10839', '39', 'WILLIAN ESCOBAR', 'Jueves', '12/01/2017', null, null, '1', '2017-04-04 15:29:31', '2017-04-04 15:29:31');
INSERT INTO `asistencias` VALUES ('10840', '39', 'WILLIAN ESCOBAR', 'Viernes', '13/01/2017', null, null, '1', '2017-04-04 15:29:31', '2017-04-04 15:29:31');
INSERT INTO `asistencias` VALUES ('10841', '39', 'WILLIAN ESCOBAR', 'Lunes', '16/01/2017', null, null, '1', '2017-04-04 15:29:31', '2017-04-04 15:29:31');
INSERT INTO `asistencias` VALUES ('10842', '39', 'WILLIAN ESCOBAR', 'Martes', '17/01/2017', null, null, '1', '2017-04-04 15:29:31', '2017-04-04 15:29:31');
INSERT INTO `asistencias` VALUES ('10843', '39', 'WILLIAN ESCOBAR', 'Miércoles', '18/01/2017', null, null, '1', '2017-04-04 15:29:31', '2017-04-04 15:29:31');
INSERT INTO `asistencias` VALUES ('10844', '39', 'WILLIAN ESCOBAR', 'Jueves', '19/01/2017', null, null, '1', '2017-04-04 15:29:31', '2017-04-04 15:29:31');
INSERT INTO `asistencias` VALUES ('10845', '39', 'WILLIAN ESCOBAR', 'Viernes', '20/01/2017', null, null, '1', '2017-04-04 15:29:31', '2017-04-04 15:29:31');
INSERT INTO `asistencias` VALUES ('10846', '39', 'WILLIAN ESCOBAR', 'Lunes', '23/01/2017', null, null, '1', '2017-04-04 15:29:31', '2017-04-04 15:29:31');
INSERT INTO `asistencias` VALUES ('10847', '39', 'WILLIAN ESCOBAR', 'Martes', '24/01/2017', null, null, '1', '2017-04-04 15:29:31', '2017-04-04 15:29:31');
INSERT INTO `asistencias` VALUES ('10848', '39', 'WILLIAN ESCOBAR', 'Miércoles', '25/01/2017', null, null, '1', '2017-04-04 15:29:31', '2017-04-04 15:29:31');
INSERT INTO `asistencias` VALUES ('10849', '39', 'WILLIAN ESCOBAR', 'Jueves', '26/01/2017', null, null, '1', '2017-04-04 15:29:31', '2017-04-04 15:29:31');
INSERT INTO `asistencias` VALUES ('10850', '39', 'WILLIAN ESCOBAR', 'Viernes', '27/01/2017', null, null, '1', '2017-04-04 15:29:31', '2017-04-04 15:29:31');
INSERT INTO `asistencias` VALUES ('10851', '39', 'WILLIAN ESCOBAR', 'Lunes', '30/01/2017', null, null, '1', '2017-04-04 15:29:31', '2017-04-04 15:29:31');
INSERT INTO `asistencias` VALUES ('10852', '39', 'WILLIAN ESCOBAR', 'Martes', '31/01/2017', null, null, '1', '2017-04-04 15:29:31', '2017-04-04 15:29:31');
INSERT INTO `asistencias` VALUES ('10853', '97', 'Wilson Lechon', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:29:31', '2017-04-04 15:29:31');
INSERT INTO `asistencias` VALUES ('10854', '97', 'Wilson Lechon', 'Martes', '03/01/2017', '08:26:00', '17:11:00', null, '2017-04-04 15:29:31', '2017-04-04 15:29:31');
INSERT INTO `asistencias` VALUES ('10855', '97', 'Wilson Lechon', 'Miércoles', '04/01/2017', '08:36:00', '17:17:00', null, '2017-04-04 15:29:31', '2017-04-04 15:29:31');
INSERT INTO `asistencias` VALUES ('10856', '97', 'Wilson Lechon', 'Jueves', '05/01/2017', '08:35:00', '17:24:00', null, '2017-04-04 15:29:31', '2017-04-04 15:29:31');
INSERT INTO `asistencias` VALUES ('10857', '97', 'Wilson Lechon', 'Viernes', '06/01/2017', '08:36:00', '17:03:00', null, '2017-04-04 15:29:31', '2017-04-04 15:29:31');
INSERT INTO `asistencias` VALUES ('10858', '97', 'Wilson Lechon', 'Lunes', '09/01/2017', '08:38:00', null, null, '2017-04-04 15:29:31', '2017-04-04 15:29:31');
INSERT INTO `asistencias` VALUES ('10859', '97', 'Wilson Lechon', 'Martes', '10/01/2017', '08:36:00', '17:19:00', null, '2017-04-04 15:29:31', '2017-04-04 15:29:31');
INSERT INTO `asistencias` VALUES ('10860', '97', 'Wilson Lechon', 'Miércoles', '11/01/2017', '08:42:00', '17:56:00', null, '2017-04-04 15:29:31', '2017-04-04 15:29:31');
INSERT INTO `asistencias` VALUES ('10861', '97', 'Wilson Lechon', 'Jueves', '12/01/2017', null, null, '1', '2017-04-04 15:29:31', '2017-04-04 15:29:31');
INSERT INTO `asistencias` VALUES ('10862', '97', 'Wilson Lechon', 'Viernes', '13/01/2017', null, null, '1', '2017-04-04 15:29:31', '2017-04-04 15:29:31');
INSERT INTO `asistencias` VALUES ('10863', '97', 'Wilson Lechon', 'Lunes', '16/01/2017', '08:33:00', '17:08:00', null, '2017-04-04 15:29:31', '2017-04-04 15:29:31');
INSERT INTO `asistencias` VALUES ('10864', '97', 'Wilson Lechon', 'Martes', '17/01/2017', '08:35:00', '17:23:00', null, '2017-04-04 15:29:31', '2017-04-04 15:29:31');
INSERT INTO `asistencias` VALUES ('10865', '97', 'Wilson Lechon', 'Miércoles', '18/01/2017', '08:37:00', '17:21:00', null, '2017-04-04 15:29:31', '2017-04-04 15:29:31');
INSERT INTO `asistencias` VALUES ('10866', '97', 'Wilson Lechon', 'Jueves', '19/01/2017', '08:34:00', '17:14:00', null, '2017-04-04 15:29:31', '2017-04-04 15:29:31');
INSERT INTO `asistencias` VALUES ('10867', '97', 'Wilson Lechon', 'Viernes', '20/01/2017', '08:34:00', '19:24:00', null, '2017-04-04 15:29:31', '2017-04-04 15:29:31');
INSERT INTO `asistencias` VALUES ('10868', '97', 'Wilson Lechon', 'Lunes', '23/01/2017', '08:30:00', '17:27:00', null, '2017-04-04 15:29:32', '2017-04-04 15:29:32');
INSERT INTO `asistencias` VALUES ('10869', '97', 'Wilson Lechon', 'Martes', '24/01/2017', '08:37:00', '18:37:00', null, '2017-04-04 15:29:32', '2017-04-04 15:29:32');
INSERT INTO `asistencias` VALUES ('10870', '97', 'Wilson Lechon', 'Miércoles', '25/01/2017', '08:28:00', '17:47:00', null, '2017-04-04 15:29:32', '2017-04-04 15:29:32');
INSERT INTO `asistencias` VALUES ('10871', '97', 'Wilson Lechon', 'Jueves', '26/01/2017', '08:35:00', '17:12:00', null, '2017-04-04 15:29:32', '2017-04-04 15:29:32');
INSERT INTO `asistencias` VALUES ('10872', '97', 'Wilson Lechon', 'Viernes', '27/01/2017', '08:36:00', '17:15:00', null, '2017-04-04 15:29:32', '2017-04-04 15:29:32');
INSERT INTO `asistencias` VALUES ('10873', '97', 'Wilson Lechon', 'Lunes', '30/01/2017', '08:30:00', '17:25:00', null, '2017-04-04 15:29:32', '2017-04-04 15:29:32');
INSERT INTO `asistencias` VALUES ('10874', '97', 'Wilson Lechon', 'Martes', '31/01/2017', '08:34:00', '17:10:00', null, '2017-04-04 15:29:32', '2017-04-04 15:29:32');
INSERT INTO `asistencias` VALUES ('10875', '25', 'XAVIER VILLAFUERTE', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:29:32', '2017-04-04 15:29:32');
INSERT INTO `asistencias` VALUES ('10876', '25', 'XAVIER VILLAFUERTE', 'Martes', '03/01/2017', null, null, '1', '2017-04-04 15:29:32', '2017-04-04 15:29:32');
INSERT INTO `asistencias` VALUES ('10877', '25', 'XAVIER VILLAFUERTE', 'Miércoles', '04/01/2017', null, null, '1', '2017-04-04 15:29:32', '2017-04-04 15:29:32');
INSERT INTO `asistencias` VALUES ('10878', '25', 'XAVIER VILLAFUERTE', 'Jueves', '05/01/2017', null, null, '1', '2017-04-04 15:29:32', '2017-04-04 15:29:32');
INSERT INTO `asistencias` VALUES ('10879', '25', 'XAVIER VILLAFUERTE', 'Viernes', '06/01/2017', null, null, '1', '2017-04-04 15:29:32', '2017-04-04 15:29:32');
INSERT INTO `asistencias` VALUES ('10880', '25', 'XAVIER VILLAFUERTE', 'Lunes', '09/01/2017', null, null, '1', '2017-04-04 15:29:32', '2017-04-04 15:29:32');
INSERT INTO `asistencias` VALUES ('10881', '25', 'XAVIER VILLAFUERTE', 'Martes', '10/01/2017', null, null, '1', '2017-04-04 15:29:32', '2017-04-04 15:29:32');
INSERT INTO `asistencias` VALUES ('10882', '25', 'XAVIER VILLAFUERTE', 'Miércoles', '11/01/2017', null, null, '1', '2017-04-04 15:29:32', '2017-04-04 15:29:32');
INSERT INTO `asistencias` VALUES ('10883', '25', 'XAVIER VILLAFUERTE', 'Jueves', '12/01/2017', null, null, '1', '2017-04-04 15:29:32', '2017-04-04 15:29:32');
INSERT INTO `asistencias` VALUES ('10884', '25', 'XAVIER VILLAFUERTE', 'Viernes', '13/01/2017', null, null, '1', '2017-04-04 15:29:32', '2017-04-04 15:29:32');
INSERT INTO `asistencias` VALUES ('10885', '25', 'XAVIER VILLAFUERTE', 'Lunes', '16/01/2017', null, null, '1', '2017-04-04 15:29:32', '2017-04-04 15:29:32');
INSERT INTO `asistencias` VALUES ('10886', '25', 'XAVIER VILLAFUERTE', 'Martes', '17/01/2017', null, null, '1', '2017-04-04 15:29:32', '2017-04-04 15:29:32');
INSERT INTO `asistencias` VALUES ('10887', '25', 'XAVIER VILLAFUERTE', 'Miércoles', '18/01/2017', null, null, '1', '2017-04-04 15:29:32', '2017-04-04 15:29:32');
INSERT INTO `asistencias` VALUES ('10888', '25', 'XAVIER VILLAFUERTE', 'Jueves', '19/01/2017', null, null, '1', '2017-04-04 15:29:32', '2017-04-04 15:29:32');
INSERT INTO `asistencias` VALUES ('10889', '25', 'XAVIER VILLAFUERTE', 'Viernes', '20/01/2017', null, null, '1', '2017-04-04 15:29:32', '2017-04-04 15:29:32');
INSERT INTO `asistencias` VALUES ('10890', '25', 'XAVIER VILLAFUERTE', 'Lunes', '23/01/2017', null, null, '1', '2017-04-04 15:29:32', '2017-04-04 15:29:32');
INSERT INTO `asistencias` VALUES ('10891', '25', 'XAVIER VILLAFUERTE', 'Martes', '24/01/2017', null, null, '1', '2017-04-04 15:29:32', '2017-04-04 15:29:32');
INSERT INTO `asistencias` VALUES ('10892', '25', 'XAVIER VILLAFUERTE', 'Miércoles', '25/01/2017', null, null, '1', '2017-04-04 15:29:32', '2017-04-04 15:29:32');
INSERT INTO `asistencias` VALUES ('10893', '25', 'XAVIER VILLAFUERTE', 'Jueves', '26/01/2017', null, null, '1', '2017-04-04 15:29:32', '2017-04-04 15:29:32');
INSERT INTO `asistencias` VALUES ('10894', '25', 'XAVIER VILLAFUERTE', 'Viernes', '27/01/2017', null, null, '1', '2017-04-04 15:29:32', '2017-04-04 15:29:32');
INSERT INTO `asistencias` VALUES ('10895', '25', 'XAVIER VILLAFUERTE', 'Lunes', '30/01/2017', null, null, '1', '2017-04-04 15:29:32', '2017-04-04 15:29:32');
INSERT INTO `asistencias` VALUES ('10896', '25', 'XAVIER VILLAFUERTE', 'Martes', '31/01/2017', null, null, '1', '2017-04-04 15:29:32', '2017-04-04 15:29:32');
INSERT INTO `asistencias` VALUES ('10897', '99', 'Ximena Zapata', 'Lunes', '02/01/2017', null, null, '1', '2017-04-04 15:29:32', '2017-04-04 15:29:32');
INSERT INTO `asistencias` VALUES ('10898', '99', 'Ximena Zapata', 'Martes', '03/01/2017', null, null, '1', '2017-04-04 15:29:32', '2017-04-04 15:29:32');
INSERT INTO `asistencias` VALUES ('10899', '99', 'Ximena Zapata', 'Miércoles', '04/01/2017', null, null, '1', '2017-04-04 15:29:32', '2017-04-04 15:29:32');
INSERT INTO `asistencias` VALUES ('10900', '99', 'Ximena Zapata', 'Jueves', '05/01/2017', null, null, '1', '2017-04-04 15:29:32', '2017-04-04 15:29:32');
INSERT INTO `asistencias` VALUES ('10901', '99', 'Ximena Zapata', 'Viernes', '06/01/2017', null, null, '1', '2017-04-04 15:29:32', '2017-04-04 15:29:32');
INSERT INTO `asistencias` VALUES ('10902', '99', 'Ximena Zapata', 'Lunes', '09/01/2017', null, null, '1', '2017-04-04 15:29:32', '2017-04-04 15:29:32');
INSERT INTO `asistencias` VALUES ('10903', '99', 'Ximena Zapata', 'Martes', '10/01/2017', null, null, '1', '2017-04-04 15:29:32', '2017-04-04 15:29:32');
INSERT INTO `asistencias` VALUES ('10904', '99', 'Ximena Zapata', 'Miércoles', '11/01/2017', null, null, '1', '2017-04-04 15:29:32', '2017-04-04 15:29:32');
INSERT INTO `asistencias` VALUES ('10905', '99', 'Ximena Zapata', 'Jueves', '12/01/2017', null, null, '1', '2017-04-04 15:29:32', '2017-04-04 15:29:32');
INSERT INTO `asistencias` VALUES ('10906', '99', 'Ximena Zapata', 'Viernes', '13/01/2017', null, null, '1', '2017-04-04 15:29:33', '2017-04-04 15:29:33');
INSERT INTO `asistencias` VALUES ('10907', '99', 'Ximena Zapata', 'Lunes', '16/01/2017', null, null, '1', '2017-04-04 15:29:33', '2017-04-04 15:29:33');
INSERT INTO `asistencias` VALUES ('10908', '99', 'Ximena Zapata', 'Martes', '17/01/2017', null, null, '1', '2017-04-04 15:29:33', '2017-04-04 15:29:33');
INSERT INTO `asistencias` VALUES ('10909', '99', 'Ximena Zapata', 'Miércoles', '18/01/2017', null, null, '1', '2017-04-04 15:29:33', '2017-04-04 15:29:33');
INSERT INTO `asistencias` VALUES ('10910', '99', 'Ximena Zapata', 'Jueves', '19/01/2017', null, null, '1', '2017-04-04 15:29:33', '2017-04-04 15:29:33');
INSERT INTO `asistencias` VALUES ('10911', '99', 'Ximena Zapata', 'Viernes', '20/01/2017', null, null, '1', '2017-04-04 15:29:33', '2017-04-04 15:29:33');
INSERT INTO `asistencias` VALUES ('10912', '99', 'Ximena Zapata', 'Lunes', '23/01/2017', null, null, '1', '2017-04-04 15:29:33', '2017-04-04 15:29:33');
INSERT INTO `asistencias` VALUES ('10913', '99', 'Ximena Zapata', 'Martes', '24/01/2017', null, null, '1', '2017-04-04 15:29:33', '2017-04-04 15:29:33');
INSERT INTO `asistencias` VALUES ('10914', '99', 'Ximena Zapata', 'Miércoles', '25/01/2017', null, null, '1', '2017-04-04 15:29:33', '2017-04-04 15:29:33');
INSERT INTO `asistencias` VALUES ('10915', '99', 'Ximena Zapata', 'Jueves', '26/01/2017', null, null, '1', '2017-04-04 15:29:33', '2017-04-04 15:29:33');
INSERT INTO `asistencias` VALUES ('10916', '99', 'Ximena Zapata', 'Viernes', '27/01/2017', null, null, '1', '2017-04-04 15:29:33', '2017-04-04 15:29:33');
INSERT INTO `asistencias` VALUES ('10917', '99', 'Ximena Zapata', 'Lunes', '30/01/2017', null, null, '1', '2017-04-04 15:29:33', '2017-04-04 15:29:33');
INSERT INTO `asistencias` VALUES ('10918', '99', 'Ximena Zapata', 'Martes', '31/01/2017', null, null, '1', '2017-04-04 15:29:33', '2017-04-04 15:29:33');

-- ----------------------------
-- Table structure for asistencias_historico_cargas
-- ----------------------------
DROP TABLE IF EXISTS `asistencias_historico_cargas`;
CREATE TABLE `asistencias_historico_cargas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mes` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `anio` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of asistencias_historico_cargas
-- ----------------------------
INSERT INTO `asistencias_historico_cargas` VALUES ('1', '01', '2017', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `asistencias_historico_cargas` VALUES ('2', '04', '2017', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `asistencias_historico_cargas` VALUES ('3', '06', '2017', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for aut_solicitudes
-- ----------------------------
DROP TABLE IF EXISTS `aut_solicitudes`;
CREATE TABLE `aut_solicitudes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tipo_solicitud` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `numero_solicitud` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_solicitud` date DEFAULT NULL,
  `partida_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `ciudad_id` int(10) unsigned NOT NULL,
  `ciudad_otro` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fecha_salida` date NOT NULL,
  `hora_salida` time NOT NULL,
  `fecha_retorno` date NOT NULL,
  `hora_retorno` time NOT NULL,
  `integrantes` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` longtext COLLATE utf8_unicode_ci NOT NULL,
  `filename` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `aut_solicitudes_partida_id_foreign` (`partida_id`),
  KEY `aut_solicitudes_user_id_foreign` (`user_id`),
  KEY `aut_solicitudes_ciudad_id_foreign` (`ciudad_id`),
  CONSTRAINT `aut_solicitudes_ciudad_id_foreign` FOREIGN KEY (`ciudad_id`) REFERENCES `ciudades` (`id`),
  CONSTRAINT `aut_solicitudes_partida_id_foreign` FOREIGN KEY (`partida_id`) REFERENCES `partidas` (`id`),
  CONSTRAINT `aut_solicitudes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=242 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of aut_solicitudes
-- ----------------------------
INSERT INTO `aut_solicitudes` VALUES ('43', 'viaticos', 'DTI-SOL-JR-1', '2017-07-26', '1', '1', '10', '', '2017-07-26', '07:00:00', '2017-07-26', '20:00:00', 'Jairo Rey\r\nNicolas Jaramillo', 'Instalacion sistema sinapticc', null, '2017-07-26 10:03:16', '2017-07-26 10:03:16');
INSERT INTO `aut_solicitudes` VALUES ('44', 'viaticos', 'DTI-SOL-JR-44', '2017-07-26', '1', '1', '11', '', '2017-07-26', '09:30:00', '2017-07-26', '18:30:00', 'Xavier Ortiz\r\nReinaldo Velez', 'Instalacion de servidores y correos', null, '2017-07-26 11:43:06', '2017-07-26 11:43:06');
INSERT INTO `aut_solicitudes` VALUES ('45', 'viaticos', 'DTI-SOL-JR-45', '2017-07-26', '1', '1', '6', '', '2017-07-26', '07:00:00', '2017-07-26', '17:00:00', 'Milton Fuelantala\r\nAngel Medina', 'revisión territorio', null, '2017-07-26 12:25:15', '2017-07-26 12:25:15');
INSERT INTO `aut_solicitudes` VALUES ('46', 'viaticos', 'DTI-SOL-JR-46', '2017-07-31', '1', '1', '12', '', '2017-07-31', '07:00:00', '2017-07-31', '17:00:00', 'ASDASDA\r\nASDASDA', 'ASDASDA', null, '2017-07-31 10:32:02', '2017-07-31 10:32:02');
INSERT INTO `aut_solicitudes` VALUES ('47', 'viaticos', 'DTI-SOL-JR-47', '2017-07-31', '1', '1', '10', '', '2017-07-31', '08:00:00', '2017-08-02', '23:00:00', 'Jairo Rey\r\nNicolas Jaramillo\r\nLenin Illapa\r\nPaola Cadena', 'Presentación de Sistemas\r\n - Sistema Quipux\r\n - Sistema SinappTic\r\n - Sistema Financiero', null, '2017-07-31 12:10:44', '2017-07-31 16:05:57');
INSERT INTO `aut_solicitudes` VALUES ('48', 'viaticos', 'DTI-SOL-JR-48', '2017-08-01', '1', '1', '1', '', '2017-08-01', '07:00:00', '2017-08-01', '17:00:00', 'dasda', 'asdad', null, '2017-08-01 11:16:56', '2017-08-01 11:16:56');
INSERT INTO `aut_solicitudes` VALUES ('49', 'viaticos', 'DTI-SOL-JR-49', '2017-08-01', '1', '1', '1', '', '2017-08-01', '07:00:00', '2017-08-01', '17:00:00', 'asdadad', 'asdasdad', null, '2017-08-01 16:38:35', '2017-08-01 16:38:35');
INSERT INTO `aut_solicitudes` VALUES ('50', 'viaticos', 'DTI-SOL-JR-49', '2017-08-01', '1', '1', '1', '', '2017-08-01', '07:00:00', '2017-08-01', '17:00:00', 'asdadad', 'asdasdad', null, '2017-08-01 16:39:08', '2017-08-01 16:39:08');
INSERT INTO `aut_solicitudes` VALUES ('51', 'viaticos', 'DTI-SOL-JR-51', '2017-08-01', '1', '1', '1', '', '2017-08-01', '07:00:00', '2017-08-01', '17:00:00', 'asdasda', 'asdasdasd', null, '2017-08-01 16:39:17', '2017-08-01 16:39:17');
INSERT INTO `aut_solicitudes` VALUES ('52', 'viaticos', 'DTI-SOL-JR-52', '2017-08-02', '1', '1', '1', '', '2017-08-02', '07:00:00', '2017-08-02', '17:00:00', 'asdasd', 'asdasdasd', null, '2017-08-02 09:35:24', '2017-08-02 09:35:24');
INSERT INTO `aut_solicitudes` VALUES ('53', 'viaticos', 'DTI-SOL-JR-52', '2017-08-02', '1', '1', '1', '', '2017-08-02', '07:00:00', '2017-08-02', '17:00:00', 'asdasd', 'asdasdasd', null, '2017-08-02 09:35:45', '2017-08-02 09:39:24');
INSERT INTO `aut_solicitudes` VALUES ('54', 'viaticos', 'DTI-SOL-JR-54', '2017-08-02', '1', '1', '1', '', '2017-08-02', '07:00:00', '2017-08-02', '17:00:00', 'asdasda', 'asdasdasd', null, '2017-08-02 09:39:30', '2017-08-02 09:39:30');
INSERT INTO `aut_solicitudes` VALUES ('55', 'viaticos', 'DTI-SOL-JR-55', '2017-08-03', '1', '1', '1', '', '2017-08-03', '07:00:00', '2017-08-03', '17:00:00', 'asdasda', 'asdadasd', null, '2017-08-03 11:51:17', '2017-08-03 11:51:17');
INSERT INTO `aut_solicitudes` VALUES ('56', 'viaticos', 'DTI-SOL-JR-55', '2017-08-03', '1', '1', '1', '', '2017-08-03', '07:00:00', '2017-08-03', '17:00:00', 'asdasda', 'asdadasd', null, '2017-08-03 11:59:51', '2017-08-03 11:59:51');
INSERT INTO `aut_solicitudes` VALUES ('57', 'viaticos', 'DTI-SOL-JR-55', '2017-08-03', '1', '1', '1', '', '2017-08-03', '07:00:00', '2017-08-03', '17:00:00', 'asdasda', 'asdadasd', null, '2017-08-03 12:00:20', '2017-08-03 12:00:20');
INSERT INTO `aut_solicitudes` VALUES ('58', 'viaticos', 'DTI-SOL-JR-58', '2017-08-03', '1', '1', '1', '', '2017-08-03', '07:00:00', '2017-08-03', '17:00:00', 'dsdff', 'sdfsdf', null, '2017-08-03 15:51:40', '2017-08-03 15:51:40');
INSERT INTO `aut_solicitudes` VALUES ('59', 'viaticos', 'DTI-SOL-JR-59', '2017-08-03', '1', '1', '1', '', '2017-08-03', '07:00:00', '2017-08-03', '17:00:00', 'asdasda', 'asdasad', null, '2017-08-03 15:55:18', '2017-08-03 15:55:18');
INSERT INTO `aut_solicitudes` VALUES ('60', 'viaticos', 'DTI-SOL-JR-60', '2017-08-03', '1', '1', '1', '', '2017-08-03', '07:00:00', '2017-08-03', '17:00:00', 'asdasda', 'asdasadasd', null, '2017-08-03 15:56:38', '2017-08-03 15:56:38');
INSERT INTO `aut_solicitudes` VALUES ('61', 'viaticos', 'DTI-SOL-JR-61', '2017-08-03', '1', '1', '1', '', '2017-08-03', '07:00:00', '2017-08-03', '17:00:00', 'eeee', 'eeeee', null, '2017-08-03 16:02:55', '2017-08-03 16:02:55');
INSERT INTO `aut_solicitudes` VALUES ('62', 'viaticos', 'DTI-SOL-JR-62', '2017-08-03', '1', '1', '1', '', '2017-08-03', '07:00:00', '2017-08-03', '17:00:00', 'dadasd', 'asdasdad', null, '2017-08-03 16:50:17', '2017-08-03 16:50:17');
INSERT INTO `aut_solicitudes` VALUES ('63', 'viaticos', 'DTI-SOL-JR-63', '2017-08-03', '1', '1', '1', '', '2017-08-03', '07:00:00', '2017-08-03', '17:00:00', 'adasdasd', 'asdasda', null, '2017-08-03 16:51:03', '2017-08-03 16:51:03');
INSERT INTO `aut_solicitudes` VALUES ('64', 'viaticos', 'DTI-SOL-JR-64', '2017-08-04', '1', '1', '1', '', '2017-08-04', '07:00:00', '2017-08-04', '17:00:00', 'pppppp', 'pooooo', null, '2017-08-04 09:29:26', '2017-08-04 09:29:57');
INSERT INTO `aut_solicitudes` VALUES ('65', 'viaticos', 'DTI-SOL-JR-65', '2017-08-04', '1', '1', '1', '', '2017-08-04', '07:00:00', '2017-08-04', '17:00:00', 'aaaaaaaaa', 'eeeeeeeeeeeeee', '', '2017-08-04 09:57:03', '2017-10-04 15:56:08');
INSERT INTO `aut_solicitudes` VALUES ('66', 'viaticos', 'DTI-SOL-JR-66', '2017-08-04', '1', '1', '1', '', '2017-08-04', '07:00:00', '2017-08-04', '17:00:00', 'uuuuu', 'ooooo', null, '2017-08-04 09:58:30', '2017-08-04 09:58:30');
INSERT INTO `aut_solicitudes` VALUES ('67', 'viaticos', 'DTI-SOL-JR-67', '2017-08-07', '1', '1', '1', '', '2017-08-07', '07:00:00', '2017-08-07', '17:00:00', 'aaaaaa', 'aaaaa', null, '2017-08-07 11:49:33', '2017-08-07 11:49:33');
INSERT INTO `aut_solicitudes` VALUES ('68', 'viaticos', 'DTI-SOL-JR-68', '2017-08-07', '1', '1', '1', '', '2017-08-07', '07:00:00', '2017-08-07', '17:00:00', 'adasda', 'asdasdasdasd', 'sol_1502124899584', '2017-08-07 11:55:04', '2017-08-07 11:55:04');
INSERT INTO `aut_solicitudes` VALUES ('69', 'viaticos', 'DTI-SOL-JR-69', '2017-08-08', '1', '1', '1', '', '2017-08-08', '07:00:00', '2017-08-08', '17:00:00', 'ejemplo1', 'ejmplooooo1', 'sol_1502202274897', '2017-08-08 09:24:53', '2017-08-08 09:24:53');
INSERT INTO `aut_solicitudes` VALUES ('70', 'viaticos', 'DTI-SOL-JR-70', '2017-08-15', '1', '1', '10', '', '2017-08-17', '08:00:00', '2017-08-18', '17:00:00', 'mishell Mera\r\nPaola Cadena \r\nJuan Haro', 'Ir a pegarme una mona', 'sol_1502898639772', '2017-08-16 10:59:46', '2017-08-16 10:59:46');
INSERT INTO `aut_solicitudes` VALUES ('71', 'viaticos', 'DTI-SOL-JR-71', '2017-08-16', '1', '1', '1', '', '2017-08-16', '07:00:00', '2017-08-16', '17:00:00', 'asdadd', 'casadasdasda', 'sol_1502899215451', '2017-08-16 11:00:23', '2017-08-16 11:00:23');
INSERT INTO `aut_solicitudes` VALUES ('72', 'viaticos', 'DTI-SOL-JR-72', '2017-08-16', '1', '1', '1', '', '2017-08-16', '07:00:00', '2017-08-16', '17:00:00', 'sdasdasda', 'asdasdad', 'sol_1502899503974', '2017-08-16 11:05:11', '2017-08-16 11:05:11');
INSERT INTO `aut_solicitudes` VALUES ('73', 'viaticos', 'DTI-SOL-JR-73', '2017-08-15', '1', '1', '10', '', '2017-08-16', '07:00:00', '2017-08-16', '17:00:00', 'juan haro \r\njairo rey', 'vamos a ver peladas', 'sol_1502899708761', '2017-08-16 11:09:52', '2017-08-16 11:09:52');
INSERT INTO `aut_solicitudes` VALUES ('77', 'viaticos', 'DTI-SOL-JR-74', '2017-08-28', '19', '1', '1', '', '2017-08-28', '07:00:00', '2017-08-28', '17:00:00', 'aaaaa', 'aaaaa', 'sol_1503914896537', '2017-08-28 05:08:19', '2017-08-28 05:08:19');
INSERT INTO `aut_solicitudes` VALUES ('78', 'viaticos', 'DTI-SOL-JR-78', '2017-08-28', '19', '1', '1', '', '2017-08-28', '07:00:00', '2017-08-28', '17:00:00', 'asdasdadasd', 'asdasdasda', 'sol_1503927824178', '2017-08-28 08:43:51', '2017-08-28 08:43:51');
INSERT INTO `aut_solicitudes` VALUES ('79', 'viaticos', 'DTI-SOL-JR-79', '2017-08-29', '19', '1', '8', '', '2017-08-29', '07:00:00', '2017-08-29', '17:00:00', 'adasdasda', 'asdasdasdad', 'sol_1504006089504', '2017-08-29 06:28:22', '2017-08-29 06:29:10');
INSERT INTO `aut_solicitudes` VALUES ('80', 'viaticos', 'DTI-SOL-JR-80', '2017-08-29', '19', '1', '1', '', '2017-08-29', '07:00:00', '2017-08-29', '17:00:00', 'sdadas', 'asdasdasd', 'sol_1504014906121', '2017-08-29 09:01:27', '2017-08-29 09:01:27');
INSERT INTO `aut_solicitudes` VALUES ('81', 'viaticos', 'DTI-SOL-JR-81', '2017-08-29', '19', '1', '7', '', '2017-08-29', '07:00:00', '2017-08-29', '17:00:00', 'sdsfsdf', 'fsdfsfsdfs', 'sol_1504015733797', '2017-08-29 09:11:05', '2017-08-29 09:11:05');
INSERT INTO `aut_solicitudes` VALUES ('82', 'viaticos', 'DTI-SOL-JR-82', '2017-08-29', '19', '1', '1', '', '2017-08-29', '07:00:00', '2017-08-29', '17:00:00', 'sdasdasd', 'zdfzzsads', 'sol_1504015924974', '2017-08-29 09:12:11', '2017-08-29 09:12:11');
INSERT INTO `aut_solicitudes` VALUES ('83', 'viaticos', 'DTI-SOL-JR-83', '2017-08-29', '19', '1', '7', '', '2017-08-29', '07:00:00', '2017-08-31', '17:00:00', 'Johana Portilla', 'Instlaacion sistemas', 'sol_1504016074390', '2017-08-29 09:15:08', '2017-08-29 09:15:08');
INSERT INTO `aut_solicitudes` VALUES ('84', 'viaticos', 'DTI-SOL-JR-84', '2017-08-29', '19', '1', '1', '', '2017-08-29', '07:00:00', '2017-08-29', '17:00:00', 'asdsda', 'asdasdad', 'sol_1504017809582', '2017-08-29 09:43:32', '2017-08-29 09:43:32');
INSERT INTO `aut_solicitudes` VALUES ('85', 'viaticos', 'DTI-SOL-JR-85', '2017-08-29', '19', '1', '1', '', '2017-08-29', '07:00:00', '2017-08-29', '17:00:00', 'asdasd', 'asdasd', 'sol_1504017843469', '2017-08-29 09:44:05', '2017-08-29 09:44:05');
INSERT INTO `aut_solicitudes` VALUES ('86', 'viaticos', 'DTI-SOL-JR-86', '2017-08-29', '19', '1', '1', '', '2017-08-29', '07:00:00', '2017-08-29', '17:00:00', 'asdasa', 'adasda', 'sol_1504017852904', '2017-08-29 09:44:15', '2017-08-29 09:44:15');
INSERT INTO `aut_solicitudes` VALUES ('87', 'viaticos', 'DTI-SOL-JR-87', '2017-08-29', '19', '1', '1', '', '2017-08-29', '07:00:00', '2017-08-29', '17:00:00', 'adfadsf', 'asdfafsda', 'sol_1504017877860', '2017-08-29 09:44:40', '2017-08-29 09:44:40');
INSERT INTO `aut_solicitudes` VALUES ('88', 'viaticos', 'DTI-SOL-JR-88', '2017-08-29', '19', '1', '1', '', '2017-08-29', '07:00:00', '2017-08-29', '17:00:00', 'dfadfasdf', 'asdfasdfa', 'sol_1504022672283', '2017-08-29 11:04:35', '2017-08-29 11:04:35');
INSERT INTO `aut_solicitudes` VALUES ('89', 'viaticos', 'DTI-SOL-JR-89', '2017-08-29', '19', '1', '1', '', '2017-08-29', '07:00:00', '2017-08-29', '17:00:00', 'dasdasd', 'asdadasd', 'sol_1504025004099', '2017-08-29 11:43:27', '2017-08-29 11:43:27');
INSERT INTO `aut_solicitudes` VALUES ('90', 'viaticos', 'DTI-SOL-JR-90', '2017-08-29', '19', '1', '1', '', '2017-08-29', '07:00:00', '2017-08-29', '17:00:00', 'asdasdad', 'asdasasd', 'sol_1504025051324', '2017-08-29 11:44:14', '2017-08-29 11:44:14');
INSERT INTO `aut_solicitudes` VALUES ('91', 'viaticos', 'DTI-SOL-JR-91', '2017-08-29', '19', '1', '1', '', '2017-08-29', '07:00:00', '2017-08-29', '17:00:00', 'asdasda', 'asdasad', 'sol_1504027136828', '2017-08-29 12:18:59', '2017-08-29 12:18:59');
INSERT INTO `aut_solicitudes` VALUES ('92', 'viaticos', 'DTI-SOL-JR-91', '2017-08-29', '19', '1', '1', '', '2017-08-29', '07:00:00', '2017-08-29', '17:00:00', 'asdasda', 'asdasad', 'sol_1504027136828', '2017-08-29 12:38:56', '2017-08-29 12:38:56');
INSERT INTO `aut_solicitudes` VALUES ('93', 'viaticos', 'DTI-SOL-JR-93', '2017-08-29', '19', '1', '1', '', '2017-08-29', '07:00:00', '2017-08-29', '17:00:00', 'asdasda', 'asdasdad', 'sol_1504028369418', '2017-08-29 12:39:31', '2017-08-29 12:39:31');
INSERT INTO `aut_solicitudes` VALUES ('94', 'viaticos', 'DTI-SOL-JR-94', '2017-08-29', '19', '1', '1', '', '2017-08-29', '07:00:00', '2017-08-29', '17:00:00', 'dsfdsfsdfs', 'sdfsdfsff', 'sol_1504028420166', '2017-08-29 12:40:23', '2017-08-29 12:40:23');
INSERT INTO `aut_solicitudes` VALUES ('95', 'viaticos', 'DTI-SOL-JR-95', '2017-08-29', '19', '1', '1', '', '2017-08-29', '07:00:00', '2017-08-29', '17:00:00', 'asdasdad', 'asdasdasd', 'sol_1504028479662', '2017-08-29 12:41:21', '2017-08-29 12:41:21');
INSERT INTO `aut_solicitudes` VALUES ('96', 'viaticos', 'DTI-SOL-JR-96', '2017-08-29', '19', '1', '1', '', '2017-08-29', '07:00:00', '2017-08-29', '17:00:00', 'asdasd', 'asdasda', 'sol_1504028538597', '2017-08-29 12:42:20', '2017-08-29 12:42:20');
INSERT INTO `aut_solicitudes` VALUES ('97', 'viaticos', 'DTI-SOL-JR-97', '2017-08-29', '19', '1', '1', '', '2017-08-29', '07:00:00', '2017-08-29', '17:00:00', 'asdasdad', 'asdasdasd', 'sol_1504028624547', '2017-08-29 12:43:46', '2017-08-29 12:43:46');
INSERT INTO `aut_solicitudes` VALUES ('98', 'viaticos', 'DTI-SOL-JR-98', '2017-08-29', '19', '1', '1', '', '2017-08-29', '07:00:00', '2017-08-29', '17:00:00', 'asdasd', 'asdasdad', 'sol_1504028795210', '2017-08-29 12:46:37', '2017-08-29 12:46:37');
INSERT INTO `aut_solicitudes` VALUES ('99', 'viaticos', 'DTI-SOL-JR-99', '2017-08-29', '19', '1', '1', '', '2017-08-29', '07:00:00', '2017-08-29', '17:00:00', 'asdasdasd', 'asadsdasdadas', 'sol_1504028909278', '2017-08-29 12:48:32', '2017-08-29 12:48:32');
INSERT INTO `aut_solicitudes` VALUES ('100', 'viaticos', 'DTI-SOL-JR-100', '2017-08-29', '19', '1', '1', '', '2017-08-21', '11:00:00', '2017-09-08', '17:00:00', 'asdadsa', 'asdasdasd', 'sol_1504028921114', '2017-08-29 12:48:43', '2017-10-02 18:53:39');
INSERT INTO `aut_solicitudes` VALUES ('101', 'viaticos', 'DTI-SOL-JR-101', '2017-08-29', '19', '1', '1', '', '2017-08-29', '07:00:00', '2017-08-29', '17:00:00', 'asdasdasd', 'asdasdad', 'sol_1504036009926', '2017-08-29 14:46:53', '2017-08-29 14:46:53');
INSERT INTO `aut_solicitudes` VALUES ('102', 'viaticos', 'DTI-SOL-JR-102', '2017-08-29', '19', '1', '1', '', '2017-08-29', '07:00:00', '2017-08-29', '17:00:00', 'asdasda', 'adasdasd', 'sol_1504036129932', '2017-08-29 14:48:52', '2017-08-29 14:48:52');
INSERT INTO `aut_solicitudes` VALUES ('103', 'viaticos', 'DTI-SOL-JR-103', '2017-08-29', '19', '1', '1', '', '2017-08-29', '07:00:00', '2017-08-29', '17:00:00', 'aaa', 'aaaa', 'sol_1504036158534', '2017-08-29 14:49:21', '2017-08-29 14:49:21');
INSERT INTO `aut_solicitudes` VALUES ('104', 'viaticos', 'DTI-SOL-JR-104', '2017-08-29', '19', '1', '1', '', '2017-08-29', '07:00:00', '2017-08-29', '17:00:00', 'xczcxc', 'zxczxzc', 'sol_1504044417507', '2017-08-29 17:07:00', '2017-08-29 17:07:00');
INSERT INTO `aut_solicitudes` VALUES ('105', 'viaticos', 'DTI-SOL-JR-104', '2017-08-29', '19', '1', '1', '', '2017-08-29', '07:00:00', '2017-08-29', '17:00:00', 'xczcxc', 'zxczxzc', 'sol_1504044436201', '2017-08-29 17:07:17', '2017-08-29 17:07:17');
INSERT INTO `aut_solicitudes` VALUES ('106', 'viaticos', 'DTI-SOL-JR-104', '2017-08-29', '19', '1', '1', '', '2017-08-29', '07:00:00', '2017-08-29', '17:00:00', 'xczcxc', 'zxczxzc', 'sol_1504044481901', '2017-08-29 17:08:02', '2017-08-29 17:08:02');
INSERT INTO `aut_solicitudes` VALUES ('107', 'viaticos', 'DTI-SOL-JR-104', '2017-08-29', '19', '1', '1', '', '2017-08-29', '07:00:00', '2017-08-29', '17:00:00', 'xczcxc', 'zxczxzc', 'sol_1504044503245', '2017-08-29 17:08:24', '2017-08-29 17:08:24');
INSERT INTO `aut_solicitudes` VALUES ('108', 'viaticos', 'DTI-SOL-JR-108', '2017-08-30', '19', '1', '1', '', '2017-08-30', '07:00:00', '2017-08-30', '17:00:00', 'sdafasf', 'asfadfasdf', 'sol_1504130019762', '2017-08-30 16:53:42', '2017-08-30 16:54:34');
INSERT INTO `aut_solicitudes` VALUES ('109', 'viaticos', 'DTI-SOL-JR-109', '2017-08-30', '19', '1', '1', '', '2017-08-30', '07:00:00', '2017-08-30', '17:00:00', 'asdasda', 'asdasdad', 'sol_1504130086907', '2017-08-30 16:54:49', '2017-08-30 16:54:49');
INSERT INTO `aut_solicitudes` VALUES ('110', 'viaticos', 'DTI-SOL-JR-110', '2017-08-30', '19', '1', '1', '', '2017-08-30', '07:00:00', '2017-08-30', '17:00:00', 'asdasdad', 'asdasdasd', 'sol_1504130188222', '2017-08-30 16:56:30', '2017-08-30 16:56:30');
INSERT INTO `aut_solicitudes` VALUES ('111', 'viaticos', 'DTI-SOL-JR-111', '2017-09-01', '19', '1', '1', '', '2017-09-01', '07:00:00', '2017-09-01', '17:00:00', 'fasasdfasdf', 'asdfadsf', 'sol_1504284948217', '2017-09-01 11:55:51', '2017-09-01 11:55:51');
INSERT INTO `aut_solicitudes` VALUES ('112', 'viaticos', 'DTI-SOL-JR-112', '2017-09-01', '19', '1', '1', '', '2017-09-01', '07:00:00', '2017-09-01', '17:00:00', 'asdasd', 'asdasdasd', 'sol_1504285634543', '2017-09-01 12:07:16', '2017-09-01 12:07:16');
INSERT INTO `aut_solicitudes` VALUES ('113', 'viaticos', 'DTI-SOL-JR-113', '2017-09-01', '19', '1', '1', '', '2017-09-01', '07:00:00', '2017-09-01', '17:00:00', 'asdasdasd', 'asdasdad', 'sol_1504288437258', '2017-09-01 12:53:59', '2017-09-01 12:53:59');
INSERT INTO `aut_solicitudes` VALUES ('114', 'viaticos', 'DTI-SOL-JR-113', '2017-09-01', '19', '1', '1', '', '2017-09-01', '07:00:00', '2017-09-01', '17:00:00', 'asdasdasd', 'asdasdad', 'sol_1504288489991', '2017-09-01 12:54:52', '2017-09-01 12:54:52');
INSERT INTO `aut_solicitudes` VALUES ('115', 'viaticos', 'DTI-SOL-JR-115', '2017-09-04', '19', '1', '1', '', '2017-09-04', '07:00:00', '2017-09-04', '17:00:00', 'asdasd', 'asdasdad', 'sol_1504539764363', '2017-09-04 10:42:47', '2017-09-04 10:42:47');
INSERT INTO `aut_solicitudes` VALUES ('116', 'viaticos', 'DTI-SOL-JR-116', '2017-09-04', '19', '1', '1', '', '2017-09-04', '07:00:00', '2017-09-04', '17:00:00', 'asdaad', 'asdasd', 'sol_1504553022952', '2017-09-04 14:24:52', '2017-09-04 14:24:52');
INSERT INTO `aut_solicitudes` VALUES ('117', 'viaticos', 'DTI-SOL-JR-117', '2017-09-04', '19', '1', '1', '', '2017-09-04', '07:00:00', '2017-09-04', '17:00:00', 'asdasd', 'asdadsad', 'sol_1504553231527', '2017-09-04 14:27:14', '2017-09-04 14:27:14');
INSERT INTO `aut_solicitudes` VALUES ('118', 'viaticos', 'DTI-SOL-JR-118', '2017-09-04', '19', '1', '1', '', '2017-09-04', '07:00:00', '2017-09-04', '17:00:00', 'asdsd', 'asdasd', 'sol_1504553278235', '2017-09-04 14:28:00', '2017-09-04 14:28:00');
INSERT INTO `aut_solicitudes` VALUES ('119', 'viaticos', 'DTI-SOL-JR-118', '2017-09-04', '19', '1', '1', '', '2017-09-04', '07:00:00', '2017-09-04', '17:00:00', 'asdsd', 'asdasd', 'sol_1504553278235', '2017-09-04 15:40:03', '2017-09-04 15:40:03');
INSERT INTO `aut_solicitudes` VALUES ('120', 'viaticos', 'DTI-SOL-JR-120', '2017-09-04', '19', '1', '1', '', '2017-09-04', '07:00:00', '2017-09-04', '17:00:00', 'dasdsd', 'asdasdasd', 'sol_1504557608699', '2017-09-04 15:40:12', '2017-09-04 15:40:12');
INSERT INTO `aut_solicitudes` VALUES ('121', 'viaticos', 'DTI-SOL-JR-120', '2017-09-04', '19', '1', '1', '', '2017-09-04', '07:00:00', '2017-09-04', '17:00:00', 'dasdsd', 'asdasdasd', 'sol_1504557720637', '2017-09-04 15:42:02', '2017-09-04 15:42:02');
INSERT INTO `aut_solicitudes` VALUES ('122', 'viaticos', 'DTI-SOL-JR-122', '2017-09-04', '19', '1', '1', '', '2017-09-04', '07:00:00', '2017-09-04', '17:00:00', 'asdad', 'asdasdasd', 'sol_1504557749906', '2017-09-04 15:42:32', '2017-09-04 15:42:32');
INSERT INTO `aut_solicitudes` VALUES ('123', 'viaticos', 'DTI-SOL-JR-122', '2017-09-04', '19', '1', '1', '', '2017-09-04', '07:00:00', '2017-09-04', '17:00:00', 'asdad', 'asdasdasd', 'sol_1504557749906', '2017-09-04 15:42:44', '2017-09-04 15:42:44');
INSERT INTO `aut_solicitudes` VALUES ('124', 'viaticos', 'DTI-SOL-JR-122', '2017-09-04', '19', '1', '1', '', '2017-09-04', '07:00:00', '2017-09-04', '17:00:00', 'asdad', 'asdasdasd', 'sol_1504557749906', '2017-09-04 17:04:45', '2017-09-04 17:04:45');
INSERT INTO `aut_solicitudes` VALUES ('125', 'viaticos', 'DTI-SOL-JR-125', '2017-09-04', '19', '1', '1', '', '2017-09-04', '07:00:00', '2017-09-04', '17:00:00', 'asdadas', 'asdadasd', 'sol_1504562696923', '2017-09-04 17:04:58', '2017-09-04 17:04:58');
INSERT INTO `aut_solicitudes` VALUES ('126', 'viaticos', 'DTI-SOL-JR-126', '2017-09-04', '19', '1', '1', '', '2017-09-04', '07:00:00', '2017-09-04', '17:00:00', 'asdasd', 'asdasdad', 'sol_1504562724973', '2017-09-04 17:05:27', '2017-09-04 17:05:27');
INSERT INTO `aut_solicitudes` VALUES ('127', 'viaticos', 'DTI-SOL-JR-127', '2017-09-04', '19', '1', '1', '', '2017-09-04', '07:00:00', '2017-09-04', '17:00:00', 'a', 'aaaa', 'sol_1504562746811', '2017-09-04 17:05:49', '2017-09-04 17:05:49');
INSERT INTO `aut_solicitudes` VALUES ('128', 'viaticos', 'DTI-SOL-JR-128', '2017-09-04', '19', '1', '1', '', '2017-09-04', '07:00:00', '2017-09-04', '17:00:00', 'asdas', 'asdasdad', 'sol_1504562759281', '2017-09-04 17:06:01', '2017-09-04 17:06:01');
INSERT INTO `aut_solicitudes` VALUES ('129', 'viaticos', 'DTI-SOL-JR-129', '2017-09-07', '19', '1', '1', '', '2017-09-07', '07:00:00', '2017-09-07', '17:00:00', 'asdasd', 'asdasd', 'sol_1504808118658', '2017-09-07 13:15:21', '2017-09-07 13:15:21');
INSERT INTO `aut_solicitudes` VALUES ('130', 'viaticos', 'DTI-SOL-JR-129', '2017-09-07', '19', '1', '1', '', '2017-09-07', '07:00:00', '2017-09-07', '17:00:00', 'asdasd', 'asdasd', 'sol_1504808118658', '2017-09-07 13:15:36', '2017-09-07 13:15:36');
INSERT INTO `aut_solicitudes` VALUES ('131', 'viaticos', 'DTI-SOL-JR-129', '2017-09-07', '19', '1', '1', '', '2017-09-07', '07:00:00', '2017-09-07', '17:00:00', 'asdasd', 'asdasd', 'sol_1504808118658', '2017-09-07 13:17:13', '2017-09-07 13:17:13');
INSERT INTO `aut_solicitudes` VALUES ('132', 'viaticos', 'DTI-SOL-JR-129', '2017-09-07', '19', '1', '1', '', '2017-09-07', '07:00:00', '2017-09-07', '17:00:00', 'asdasd', 'asdasd', 'sol_1504808118658', '2017-09-07 13:18:57', '2017-09-07 13:18:57');
INSERT INTO `aut_solicitudes` VALUES ('133', 'viaticos', 'DTI-SOL-JR-133', '2017-09-07', '19', '1', '1', '', '2017-09-07', '07:00:00', '2017-09-07', '17:00:00', 'asdad', 'asdad', 'sol_1504808347141', '2017-09-07 13:19:10', '2017-09-07 13:19:10');
INSERT INTO `aut_solicitudes` VALUES ('134', 'viaticos', 'DTI-SOL-JR-133', '2017-09-07', '19', '1', '1', '', '2017-09-07', '07:00:00', '2017-09-07', '17:00:00', 'asdad', 'asdad', 'sol_1504808347141', '2017-09-07 13:24:18', '2017-09-07 13:24:18');
INSERT INTO `aut_solicitudes` VALUES ('135', 'viaticos', 'DTI-SOL-JR-133', '2017-09-07', '19', '1', '1', '', '2017-09-07', '07:00:00', '2017-09-07', '17:00:00', 'asdad', 'asdad', 'sol_1504808347141', '2017-09-07 13:24:33', '2017-09-07 13:24:33');
INSERT INTO `aut_solicitudes` VALUES ('136', 'viaticos', 'DTI-SOL-JR-136', '2017-09-07', '19', '1', '1', '', '2017-09-07', '07:00:00', '2017-09-07', '17:00:00', 'asdasd', 'asdasasd', 'sol_1504808746554', '2017-09-07 13:25:49', '2017-09-07 13:25:49');
INSERT INTO `aut_solicitudes` VALUES ('137', 'viaticos', 'DTI-SOL-JR-137', '2017-09-07', '19', '1', '1', '', '2017-09-07', '07:00:00', '2017-09-07', '17:00:00', 'asdasda', 'asasda', 'sol_1504808831602', '2017-09-07 13:27:13', '2017-09-07 13:27:13');
INSERT INTO `aut_solicitudes` VALUES ('138', 'viaticos', 'DTI-SOL-JR-138', '2017-09-07', '19', '1', '1', '', '2017-09-07', '07:00:00', '2017-09-07', '17:00:00', 'asdasd', 'asdads', 'sol_1504817614832', '2017-09-07 15:53:41', '2017-09-07 15:53:41');
INSERT INTO `aut_solicitudes` VALUES ('139', 'viaticos', 'DTI-SOL-JR-138', '2017-09-07', '19', '1', '1', '', '2017-09-07', '07:00:00', '2017-09-07', '17:00:00', 'asdasd', 'asdads', 'sol_1504817614832', '2017-09-07 15:56:10', '2017-09-07 15:56:10');
INSERT INTO `aut_solicitudes` VALUES ('140', 'viaticos', 'DTI-SOL-JR-138', '2017-09-07', '19', '1', '1', '', '2017-09-07', '07:00:00', '2017-09-07', '17:00:00', 'asdasd', 'asdads', 'sol_1504817614832', '2017-09-07 15:56:20', '2017-09-07 15:56:20');
INSERT INTO `aut_solicitudes` VALUES ('141', 'viaticos', 'DTI-SOL-JR-138', '2017-09-07', '19', '1', '1', '', '2017-09-07', '07:00:00', '2017-09-07', '17:00:00', 'asdasd', 'asdads', 'sol_1504817614832', '2017-09-07 15:57:14', '2017-09-07 15:57:14');
INSERT INTO `aut_solicitudes` VALUES ('142', 'viaticos', 'DTI-SOL-JR-142', '0000-00-00', '19', '1', '8', '', '2017-09-12', '07:00:00', '2017-09-29', '17:00:00', 'hdgdngdbgfdbgfdbgfd', 'hgdfhg\r\njhgfjhg\r\njhfhgj', 'sol_1505336702616', '2017-09-13 16:09:11', '2017-09-13 16:09:11');
INSERT INTO `aut_solicitudes` VALUES ('143', 'viaticos', 'DTI-SOL-JR-142', '0000-00-00', '19', '1', '8', '', '2017-09-12', '07:00:00', '2017-09-29', '17:00:00', 'hdgdngdbgfdbgfdbgfd', 'hgdfhg\r\njhgfjhg\r\njhfhgj', 'sol_1505336702616', '2017-09-13 16:09:58', '2017-09-13 16:09:58');
INSERT INTO `aut_solicitudes` VALUES ('144', 'viaticos', 'DTI-SOL-JR-144', '2017-09-13', '19', '1', '1', '', '2017-09-13', '07:00:00', '2017-09-13', '17:00:00', 'dsfsf', 'sdfsf', 'sol_1505337045842', '2017-09-13 16:10:50', '2017-09-13 16:10:50');
INSERT INTO `aut_solicitudes` VALUES ('145', 'viaticos', 'DTI-SOL-JR-144', '2017-09-13', '19', '1', '1', '', '2017-09-13', '07:00:00', '2017-09-13', '17:00:00', 'dsfsf', 'sdfsf', 'sol_1505337045842', '2017-09-13 16:11:28', '2017-09-13 16:11:28');
INSERT INTO `aut_solicitudes` VALUES ('146', 'viaticos', 'DTI-SOL-JR-146', '2017-09-19', '19', '1', '1', '', '2017-09-19', '07:00:00', '2017-09-19', '17:00:00', 'dasads', 'asdada', 'sol_1505842908877', '2017-09-19 12:41:52', '2017-09-19 12:41:52');
INSERT INTO `aut_solicitudes` VALUES ('147', 'viaticos', 'DTI-SOL-JR-146', '2017-09-19', '19', '1', '1', '', '2017-09-19', '07:00:00', '2017-09-19', '17:00:00', 'dasads', 'asdada', 'sol_1505842908877', '2017-09-19 12:42:24', '2017-09-19 12:42:24');
INSERT INTO `aut_solicitudes` VALUES ('148', 'viaticos', 'DTI-SOL-NJ-1', '2017-09-25', '19', '2', '1', '', '2017-09-25', '07:00:00', '2017-09-25', '17:00:00', 'asdad', 'asdadasd', 'sol_1506373193679', '2017-09-25 15:59:56', '2017-09-25 15:59:56');
INSERT INTO `aut_solicitudes` VALUES ('149', 'viaticos', 'DEJ-SOL-EM-1', '2017-09-25', '1', '3', '1', '', '2017-09-25', '07:00:00', '2017-09-25', '17:00:00', 'aasdad', 'asdasdad', 'sol_1506373652153', '2017-09-25 16:12:24', '2017-09-25 16:12:24');
INSERT INTO `aut_solicitudes` VALUES ('150', 'viaticos', 'DTI-SOL-JR-148', '2017-09-26', '19', '1', '1', '', '2017-09-26', '07:00:00', '2017-09-26', '17:00:00', 'asdasd', 'asdasda', 'sol_1506436312780', '2017-09-26 09:32:02', '2017-10-04 15:56:24');
INSERT INTO `aut_solicitudes` VALUES ('151', 'viaticos', 'DTI-SOL-JR-151', '2017-10-02', '19', '1', '1', '', '2017-10-02', '07:00:00', '2017-10-02', '17:00:00', 'ASDASD', 'ASASDASDASD', 'sol_1506959177440', '2017-10-02 10:46:23', '2017-10-02 10:46:23');
INSERT INTO `aut_solicitudes` VALUES ('154', 'viaticos', 'DTI-SOL-JR-152', '2017-10-04', '19', '1', '8', '', '2017-10-08', '08:00:00', '2017-10-27', '17:00:00', 'yopox', 'todax', 'sol_1507146703958', '2017-10-04 14:51:59', '2017-10-04 15:40:19');
INSERT INTO `aut_solicitudes` VALUES ('155', 'viaticos', 'DTI-SOL-JR-155', '2017-10-24', '19', '1', '1', '', '2017-10-24', '07:00:00', '2017-10-24', '17:00:00', 'qasdasda', 'asdasda', 'sol_1508882040583', '2017-10-24 16:54:05', '2017-10-24 16:54:05');
INSERT INTO `aut_solicitudes` VALUES ('156', 'viaticos', 'DTI-SOL-JR-155', '2017-10-24', '19', '1', '1', '', '2017-10-24', '07:00:00', '2017-10-24', '17:00:00', 'qasdasda', 'asdasda', 'sol_1508882040583', '2017-10-24 16:56:43', '2017-10-24 16:56:43');
INSERT INTO `aut_solicitudes` VALUES ('157', 'viaticos', 'DTI-SOL-JR-155', '2017-10-24', '19', '1', '1', '', '2017-10-24', '07:00:00', '2017-10-24', '17:00:00', 'qasdasda', 'asdasda', 'sol_1508882040583', '2017-10-24 16:57:00', '2017-10-24 16:57:00');
INSERT INTO `aut_solicitudes` VALUES ('158', 'viaticos', 'DTI-SOL-JR-155', '2017-10-24', '19', '1', '1', '', '2017-10-24', '07:00:00', '2017-10-24', '17:00:00', 'qasdasda', 'asdasda', 'sol_1508882040583', '2017-10-24 16:57:34', '2017-10-24 16:57:34');
INSERT INTO `aut_solicitudes` VALUES ('159', 'viaticos', 'DTI-SOL-JR-159', '2017-10-24', '19', '1', '1', '', '2017-10-24', '07:00:00', '2017-10-24', '17:00:00', 'asdsdada', 'asdasda', 'sol_1508882269304', '2017-10-24 16:57:52', '2017-10-24 16:57:52');
INSERT INTO `aut_solicitudes` VALUES ('160', 'viaticos', 'DTI-SOL-JR-160', '2017-10-24', '19', '1', '1', '', '2017-10-24', '07:00:00', '2017-10-24', '17:00:00', 'asdasdad', 'asdasad', 'sol_1508882352274', '2017-10-24 16:59:16', '2017-10-24 16:59:16');
INSERT INTO `aut_solicitudes` VALUES ('161', 'viaticos', 'DTI-SOL-JR-161', '2017-10-24', '19', '1', '1', '', '2017-10-24', '07:00:00', '2017-10-24', '17:00:00', 'asdasda', 'asdasd', 'sol_1508882707951', '2017-10-24 17:05:10', '2017-10-24 17:05:10');
INSERT INTO `aut_solicitudes` VALUES ('162', 'viaticos', 'DTI-SOL-JR-162', '2017-10-24', '19', '1', '1', '', '2017-10-24', '07:00:00', '2017-10-24', '17:00:00', 'adasda', 'asdasd', 'sol_1508882747318', '2017-10-24 17:05:49', '2017-10-24 17:05:49');
INSERT INTO `aut_solicitudes` VALUES ('163', 'viaticos', 'DTI-SOL-JR-163', '2017-10-24', '19', '1', '1', '', '2017-10-24', '07:00:00', '2017-10-24', '17:00:00', 'adasda', 'asdasd', 'sol_1508882814994', '2017-10-24 17:06:57', '2017-10-24 17:06:57');
INSERT INTO `aut_solicitudes` VALUES ('164', 'viaticos', 'DTI-SOL-JR-164', '2017-10-24', '19', '1', '1', '', '2017-10-24', '07:00:00', '2017-10-24', '17:00:00', 'asdasd', 'asdasda', 'sol_1508888350617', '2017-10-24 18:39:16', '2017-10-24 18:39:16');
INSERT INTO `aut_solicitudes` VALUES ('165', 'viaticos', 'DTI-SOL-JR-165', '2017-10-24', '19', '1', '1', '', '2017-10-24', '07:00:00', '2017-10-24', '17:00:00', 'testfinal', 'asdadad', 'sol_1508889352877', '2017-10-24 18:56:03', '2017-10-24 18:56:03');
INSERT INTO `aut_solicitudes` VALUES ('166', 'viaticos', 'DTI-SOL-JR-166', '2017-10-26', '19', '1', '16', '', '2017-10-30', '05:00:00', '2017-11-01', '18:00:00', 'test integrantes', 'test actividades', 'sol_1509054834829', '2017-10-26 16:54:56', '2017-10-26 16:54:56');
INSERT INTO `aut_solicitudes` VALUES ('167', 'viaticos', 'DTI-SOL-JR-167', '2017-11-08', '19', '1', '1', '', '2017-11-08', '07:00:00', '2017-11-08', '17:00:00', 'asdasdad', 'asdasda', 'sol_1510150446450', '2017-11-08 09:14:13', '2017-11-08 09:14:13');
INSERT INTO `aut_solicitudes` VALUES ('168', 'viaticos', 'DTI-SOL-JR-168', '2017-11-08', '19', '1', '1', '', '2017-11-08', '07:00:00', '2017-11-08', '17:00:00', 'asdasd', 'asdasd', 'sol_1510151301860', '2017-11-08 09:28:24', '2017-11-08 09:28:32');
INSERT INTO `aut_solicitudes` VALUES ('169', 'viaticos', 'DTI-SOL-JR-169', '2017-11-08', '19', '1', '1', '', '2017-11-08', '07:00:00', '2017-11-08', '17:00:00', 'asda', 'sadasd', 'sol_1510151397536', '2017-11-08 09:29:59', '2017-11-08 09:29:59');
INSERT INTO `aut_solicitudes` VALUES ('170', 'viaticos', 'DTI-SOL-JR-170', '2017-11-08', '19', '1', '1', '', '2017-11-08', '07:00:00', '2017-11-08', '17:00:00', 'asda', 'asdad', 'sol_1510151532323', '2017-11-08 09:32:14', '2017-11-08 09:32:14');
INSERT INTO `aut_solicitudes` VALUES ('171', 'viaticos', 'DTI-SOL-JR-171', '2017-11-08', '19', '1', '1', '', '2017-11-08', '07:00:00', '2017-11-08', '17:00:00', 'weewrwer', 'sdfsrwerwer', 'sol_1510151567811', '2017-11-08 09:32:50', '2017-11-08 09:32:50');
INSERT INTO `aut_solicitudes` VALUES ('172', 'viaticos', 'DTI-SOL-JR-172', '2017-11-08', '19', '1', '1', '', '2017-11-08', '07:00:00', '2017-11-08', '17:00:00', 'ada', 'asdad', 'sol_1510151774205', '2017-11-08 09:36:15', '2017-11-08 09:36:15');
INSERT INTO `aut_solicitudes` VALUES ('173', 'viaticos', 'DTI-SOL-JR-173', '2017-11-08', '19', '1', '1', '', '2017-11-08', '07:00:00', '2017-11-08', '17:00:00', 'asdad', 'asdad', 'sol_1510152018638', '2017-11-08 09:40:20', '2017-11-08 09:40:20');
INSERT INTO `aut_solicitudes` VALUES ('174', 'viaticos', 'DTI-SOL-JR-174', '2017-11-08', '19', '1', '1', '', '2017-11-08', '07:00:00', '2017-11-08', '17:00:00', 'asdasd', 'asdasdasd', 'sol_1510152146481', '2017-11-08 09:42:29', '2017-11-08 09:42:29');
INSERT INTO `aut_solicitudes` VALUES ('175', 'viaticos', 'DTI-SOL-JR-175', '2017-11-08', '19', '1', '1', '', '2017-11-08', '07:00:00', '2017-11-08', '17:00:00', 'iiiii', 'iiiii', 'sol_1510152545185', '2017-11-08 09:49:09', '2017-11-08 09:49:09');
INSERT INTO `aut_solicitudes` VALUES ('176', 'viaticos', 'DTI-SOL-JR-176', '2017-11-08', '19', '1', '1', '', '2017-11-08', '07:00:00', '2017-11-08', '17:00:00', 'asdad', 'asdad', 'sol_1510152781397', '2017-11-08 09:53:06', '2017-11-08 09:53:06');
INSERT INTO `aut_solicitudes` VALUES ('177', 'viaticos', 'DTI-SOL-JR-177', '2017-11-08', '19', '1', '1', '', '2017-11-08', '07:00:00', '2017-11-08', '17:00:00', 'adasda', 'dasdasd', 'sol_1510152873148', '2017-11-08 09:54:35', '2017-11-08 09:54:35');
INSERT INTO `aut_solicitudes` VALUES ('178', 'viaticos', 'DTI-SOL-JR-178', '2017-11-08', '19', '1', '1', '', '2017-11-08', '07:00:00', '2017-11-08', '17:00:00', 'asdasd', 'asdasdad', 'sol_1510153881810', '2017-11-08 10:11:24', '2017-11-08 10:11:24');
INSERT INTO `aut_solicitudes` VALUES ('179', 'viaticos', 'DTI-SOL-JR-179', '2017-11-08', '19', '1', '1', '', '2017-11-08', '07:00:00', '2017-11-08', '17:00:00', 'asdad', 'asdasd', 'sol_1510158014514', '2017-11-08 11:20:16', '2017-11-08 11:20:16');
INSERT INTO `aut_solicitudes` VALUES ('180', 'viaticos', 'DTI-SOL-JR-180', '2017-11-08', '19', '1', '1', '', '2017-11-08', '07:00:00', '2017-11-08', '17:00:00', 'asdad', 'asdada', 'sol_1510158501261', '2017-11-08 11:28:23', '2017-11-08 11:28:23');
INSERT INTO `aut_solicitudes` VALUES ('181', 'viaticos', 'DTI-SOL-JR-181', '2017-11-08', '19', '1', '1', '', '2017-11-08', '07:00:00', '2017-11-08', '17:00:00', 'asda', 'dasdasd', 'sol_1510158791865', '2017-11-08 11:33:14', '2017-11-08 11:33:14');
INSERT INTO `aut_solicitudes` VALUES ('182', 'viaticos', 'DTI-SOL-JR-182', '2017-11-08', '19', '1', '1', '', '2017-11-08', '07:00:00', '2017-11-08', '17:00:00', 'asdad', 'adsad', 'sol_1510158891936', '2017-11-08 11:34:53', '2017-11-08 11:34:53');
INSERT INTO `aut_solicitudes` VALUES ('183', 'viaticos', 'DTI-SOL-JR-183', '2017-11-08', '19', '1', '1', '', '2017-11-08', '07:00:00', '2017-11-08', '17:00:00', 'asda', 'asdad', 'sol_1510159276131', '2017-11-08 11:41:18', '2017-11-08 11:41:18');
INSERT INTO `aut_solicitudes` VALUES ('184', 'viaticos', 'DTI-SOL-JR-184', '2017-11-08', '19', '1', '1', '', '2017-11-08', '07:00:00', '2017-11-08', '17:00:00', 'asdasd', 'asdasda', 'sol_1510159686639', '2017-11-08 11:48:10', '2017-11-08 11:48:10');
INSERT INTO `aut_solicitudes` VALUES ('185', 'viaticos', 'DTI-SOL-JR-185', '2017-11-08', '19', '1', '1', '', '2017-11-08', '07:00:00', '2017-11-08', '17:00:00', 'adad', 'asdadsa', 'sol_1510159874709', '2017-11-08 11:51:16', '2017-11-08 11:51:16');
INSERT INTO `aut_solicitudes` VALUES ('186', 'viaticos', 'DTI-SOL-JR-186', '2017-11-08', '19', '1', '1', '', '2017-11-08', '07:00:00', '2017-11-08', '17:00:00', 'asdad', 'asdasd', 'sol_1510160111735', '2017-11-08 11:55:13', '2017-11-08 11:55:13');
INSERT INTO `aut_solicitudes` VALUES ('187', 'viaticos', 'DTI-SOL-JR-187', '2017-11-08', '19', '1', '1', '', '2017-11-08', '07:00:00', '2017-11-08', '17:00:00', 'asdad', 'asdasd', 'sol_1510160250696', '2017-11-08 11:57:32', '2017-11-08 11:57:32');
INSERT INTO `aut_solicitudes` VALUES ('188', 'viaticos', 'DTI-SOL-JR-188', '2017-11-08', '19', '1', '1', '', '2017-11-08', '07:00:00', '2017-11-08', '17:00:00', 'asdasd', 'asdad', 'sol_1510161080411', '2017-11-08 12:11:22', '2017-11-08 12:11:22');
INSERT INTO `aut_solicitudes` VALUES ('189', 'viaticos', 'DTI-SOL-JR-189', '2017-11-08', '19', '1', '1', '', '2017-11-08', '07:00:00', '2017-11-08', '17:00:00', 'adsad', 'asdadasd', 'sol_1510161442113', '2017-11-08 12:17:24', '2017-11-08 12:17:24');
INSERT INTO `aut_solicitudes` VALUES ('190', 'viaticos', 'DTI-SOL-JR-190', '2017-11-08', '19', '1', '1', '', '2017-11-08', '07:00:00', '2017-11-08', '17:00:00', 'sdasda', 'asdasdad', 'sol_1510161487466', '2017-11-08 12:18:10', '2017-11-08 12:18:10');
INSERT INTO `aut_solicitudes` VALUES ('191', 'viaticos', 'DTI-SOL-JR-191', '2017-11-08', '19', '1', '1', '', '2017-11-08', '07:00:00', '2017-11-08', '17:00:00', 'asdad', 'asdasd', 'sol_1510161673906', '2017-11-08 12:21:16', '2017-11-08 12:21:16');
INSERT INTO `aut_solicitudes` VALUES ('192', 'viaticos', 'DTI-SOL-JR-192', '2017-11-08', '19', '1', '1', '', '2017-11-08', '07:00:00', '2017-11-08', '17:00:00', 'asdasdad', 'asdasdad', 'sol_1510161710736', '2017-11-08 12:21:53', '2017-11-08 12:21:53');
INSERT INTO `aut_solicitudes` VALUES ('193', 'viaticos', 'DTI-SOL-JR-193', '2017-11-08', '19', '1', '1', '', '2017-11-08', '07:00:00', '2017-11-08', '17:00:00', 'sada', 'adasdad', 'sol_1510167115154', '2017-11-08 13:51:57', '2017-11-08 13:51:57');
INSERT INTO `aut_solicitudes` VALUES ('194', 'viaticos', 'DTI-SOL-JR-194', '2017-11-08', '19', '1', '1', '', '2017-11-08', '07:00:00', '2017-11-08', '17:00:00', 'asdsd', 'asda', 'sol_1510167797978', '2017-11-08 14:03:20', '2017-11-08 14:03:20');
INSERT INTO `aut_solicitudes` VALUES ('195', 'viaticos', 'DTI-SOL-JR-195', '2017-11-08', '19', '1', '1', '', '2017-11-08', '07:00:00', '2017-11-08', '17:00:00', 'asda', 'asdasd', 'sol_1510168219572', '2017-11-08 14:10:23', '2017-11-08 14:10:23');
INSERT INTO `aut_solicitudes` VALUES ('196', 'viaticos', 'DTI-SOL-JR-196', '2017-11-08', '19', '1', '1', '', '2017-11-08', '07:00:00', '2017-11-08', '17:00:00', 'asdasdad', 'asdasda', 'sol_1510168384521', '2017-11-08 14:13:10', '2017-11-08 14:13:10');
INSERT INTO `aut_solicitudes` VALUES ('197', 'viaticos', 'DTI-SOL-JR-197', '2017-11-08', '19', '1', '1', '', '2017-11-08', '07:00:00', '2017-11-08', '17:00:00', 'asdasda', 'sdad', 'sol_1510168468456', '2017-11-08 14:14:46', '2017-11-08 14:14:46');
INSERT INTO `aut_solicitudes` VALUES ('198', 'viaticos', 'DTI-SOL-JR-198', '2017-11-08', '19', '1', '1', '', '2017-11-08', '07:00:00', '2017-11-08', '17:00:00', 'asdad', 'asda', 'sol_1510169250424', '2017-11-08 14:27:33', '2017-11-08 14:27:33');
INSERT INTO `aut_solicitudes` VALUES ('199', 'viaticos', 'DTI-SOL-JR-199', '2017-11-08', '19', '1', '1', '', '2017-11-08', '07:00:00', '2017-11-08', '17:00:00', 'asdasd', 'asdad', 'sol_1510169289417', '2017-11-08 14:28:15', '2017-11-08 14:28:15');
INSERT INTO `aut_solicitudes` VALUES ('200', 'viaticos', 'DTI-SOL-JR-200', '2017-11-08', '19', '1', '1', '', '2017-11-08', '07:00:00', '2017-11-08', '17:00:00', 'dfsdf', 'sdsdfsf', 'sol_1510169333724', '2017-11-08 14:28:57', '2017-11-08 14:28:57');
INSERT INTO `aut_solicitudes` VALUES ('201', 'viaticos', 'DTI-SOL-JR-201', '2017-11-08', '19', '1', '1', '', '2017-11-08', '07:00:00', '2017-11-08', '17:00:00', 'sdfsdf', 'sdfsf', 'sol_1510169716499', '2017-11-08 14:35:19', '2017-11-08 14:35:19');
INSERT INTO `aut_solicitudes` VALUES ('202', 'viaticos', 'DTI-SOL-JR-202', '2017-11-08', '19', '1', '1', '', '2017-11-08', '07:00:00', '2017-11-08', '17:00:00', 'dfs', 'sdfsf', 'sol_1510169740799', '2017-11-08 14:35:43', '2017-11-08 14:35:43');
INSERT INTO `aut_solicitudes` VALUES ('203', 'viaticos', 'DTI-SOL-JR-203', '2017-11-08', '19', '1', '1', '', '2017-11-08', '07:00:00', '2017-11-08', '17:00:00', 'sda', 'asdd', 'sol_1510170139825', '2017-11-08 14:42:22', '2017-11-08 14:42:22');
INSERT INTO `aut_solicitudes` VALUES ('204', 'viaticos', 'DTI-SOL-JR-204', '2017-11-08', '19', '1', '1', '', '2017-11-08', '07:00:00', '2017-11-08', '17:00:00', 'asdad', 'asdasd', 'sol_1510170421232', '2017-11-08 14:47:04', '2017-11-08 14:47:04');
INSERT INTO `aut_solicitudes` VALUES ('205', 'viaticos', 'DTI-SOL-JR-205', '2017-11-08', '19', '1', '1', '', '2017-11-08', '07:00:00', '2017-11-08', '17:00:00', 'ddfg', 'dfg', 'sol_1510170449087', '2017-11-08 14:47:32', '2017-11-08 14:47:32');
INSERT INTO `aut_solicitudes` VALUES ('206', 'viaticos', 'DTI-SOL-JR-206', '2017-11-08', '19', '1', '1', '', '2017-11-08', '07:00:00', '2017-11-08', '17:00:00', 'asdad', 'asdasd', 'sol_1510170468419', '2017-11-08 14:47:51', '2017-11-08 14:47:51');
INSERT INTO `aut_solicitudes` VALUES ('207', 'viaticos', 'DTI-SOL-JR-207', '2017-11-08', '19', '1', '1', '', '2017-11-08', '07:00:00', '2017-11-08', '17:00:00', 'fgfh', 'fghf', 'sol_1510170487827', '2017-11-08 14:48:10', '2017-11-08 14:48:10');
INSERT INTO `aut_solicitudes` VALUES ('208', 'viaticos', 'DTI-SOL-JR-208', '2017-11-08', '19', '1', '1', '', '2017-11-08', '07:00:00', '2017-11-08', '17:00:00', 'gfg', 'dfg', 'sol_1510170512872', '2017-11-08 14:48:35', '2017-11-08 14:48:35');
INSERT INTO `aut_solicitudes` VALUES ('209', 'viaticos', 'DTI-SOL-JR-209', '2017-11-08', '19', '1', '1', '', '2017-11-08', '07:00:00', '2017-11-08', '17:00:00', 'asdad', 'asdasd', 'sol_1510170530784', '2017-11-08 14:48:53', '2017-11-08 14:48:53');
INSERT INTO `aut_solicitudes` VALUES ('210', 'viaticos', 'DTI-SOL-JR-210', '2017-11-08', '19', '1', '1', '', '2017-11-08', '07:00:00', '2017-11-08', '17:00:00', 'assd', 'asdad', 'sol_1510170564000', '2017-11-08 14:49:27', '2017-11-08 14:49:27');
INSERT INTO `aut_solicitudes` VALUES ('211', 'viaticos', 'DTI-SOL-JR-211', '2017-11-08', '19', '1', '1', '', '2017-11-08', '07:00:00', '2017-11-08', '17:00:00', 'asdasd', 'asdad', 'sol_1510170623767', '2017-11-08 14:50:26', '2017-11-08 14:50:26');
INSERT INTO `aut_solicitudes` VALUES ('212', 'viaticos', 'DTI-SOL-JR-212', '2017-11-08', '19', '1', '1', '', '2017-11-08', '07:00:00', '2017-11-08', '17:00:00', 'asdad', 'asdad', 'sol_1510170658688', '2017-11-08 14:51:01', '2017-11-08 14:51:01');
INSERT INTO `aut_solicitudes` VALUES ('213', 'viaticos', 'DTI-SOL-JR-213', '2017-11-08', '19', '1', '1', '', '2017-11-08', '07:00:00', '2017-11-08', '17:00:00', 'sdfsdf', 'sdfsf', 'sol_1510170681433', '2017-11-08 14:51:24', '2017-11-08 14:51:24');
INSERT INTO `aut_solicitudes` VALUES ('214', 'viaticos', 'DTI-SOL-JR-214', '2017-11-08', '19', '1', '1', '', '2017-11-08', '07:00:00', '2017-11-08', '17:00:00', 'asdasd', 'asdasd', 'sol_1510170739239', '2017-11-08 14:52:21', '2017-11-08 14:52:21');
INSERT INTO `aut_solicitudes` VALUES ('215', 'viaticos', 'DTI-SOL-JR-215', '2017-11-08', '19', '1', '1', '', '2017-11-08', '07:00:00', '2017-11-08', '17:00:00', 'sdfsf', 'sdfsf', 'sol_1510170782916', '2017-11-08 14:53:05', '2017-11-08 14:53:05');
INSERT INTO `aut_solicitudes` VALUES ('216', 'viaticos', 'DTI-SOL-JR-216', '2017-11-08', '19', '1', '1', '', '2017-11-08', '07:00:00', '2017-11-08', '17:00:00', 'asadsd', 'asdasd', 'sol_1510173081563', '2017-11-08 15:31:24', '2017-11-08 15:31:24');
INSERT INTO `aut_solicitudes` VALUES ('217', 'viaticos', 'DTI-SOL-JR-217', '2017-11-08', '19', '1', '1', '', '2017-11-08', '07:00:00', '2017-11-08', '17:00:00', 'asdad', 'asda', 'sol_1510173204539', '2017-11-08 15:33:26', '2017-11-08 15:33:26');
INSERT INTO `aut_solicitudes` VALUES ('218', 'viaticos', 'DTI-SOL-JR-218', '2017-11-08', '19', '1', '1', '', '2017-11-08', '07:00:00', '2017-11-08', '17:00:00', 'sada', 'asda', 'sol_1510173687871', '2017-11-08 15:41:30', '2017-11-08 15:41:30');
INSERT INTO `aut_solicitudes` VALUES ('219', 'viaticos', 'DTI-SOL-JR-219', '2017-11-08', '19', '1', '1', '', '2017-11-08', '07:00:00', '2017-11-08', '17:00:00', 'asdasd', 'asdad', 'sol_1510174697833', '2017-11-08 15:58:20', '2017-11-08 15:58:20');
INSERT INTO `aut_solicitudes` VALUES ('220', 'viaticos', 'DTI-SOL-JR-220', '2017-11-09', '19', '1', '1', '', '2017-11-09', '07:00:00', '2017-11-09', '17:00:00', 'ad', 'asdasd', 'sol_1510237374154', '2017-11-09 09:23:01', '2017-11-09 09:23:01');
INSERT INTO `aut_solicitudes` VALUES ('221', 'viaticos', 'DTI-SOL-NJ-149', '2017-11-09', '19', '2', '1', '', '2017-11-09', '07:00:00', '2017-11-09', '17:00:00', 'adsdad', 'asdasd', 'sol_1510243413378', '2017-11-09 11:03:46', '2017-11-09 11:03:46');
INSERT INTO `aut_solicitudes` VALUES ('222', 'viaticos', 'DTI-SOL-JR-221', '2017-12-28', '19', '1', '17', '', '2017-12-20', '07:00:00', '2017-12-30', '17:00:00', 'asdasdad', 'asdasdasdasdasd', 'sol_1513284805664', '2017-12-14 15:55:21', '2017-12-14 15:55:21');
INSERT INTO `aut_solicitudes` VALUES ('223', 'viaticos', 'DTI-SOL-JR-223', '2017-12-14', '19', '1', '1', '', '2017-12-14', '07:00:00', '2017-12-14', '17:00:00', 'aaaaaaaa', 'aaaaaaa', 'sol_1513285067349', '2017-12-14 15:57:59', '2017-12-18 16:37:39');
INSERT INTO `aut_solicitudes` VALUES ('224', 'viaticos', 'DTI-SOL-JR-224', '2017-12-14', '19', '1', '1', '', '2017-12-14', '07:00:00', '2017-12-14', '17:00:00', 'asdad', 'sdadasd', 'sol_1513287385345', '2017-12-14 16:36:30', '2017-12-14 16:36:30');
INSERT INTO `aut_solicitudes` VALUES ('225', 'viaticos', 'DTI-SOL-JR-225', '2017-12-18', '19', '1', '1', '', '2017-12-18', '07:00:00', '2017-12-18', '17:00:00', 'asdasds', 'asdasd', 'sol_1513631273327', '2017-12-18 16:07:58', '2017-12-18 16:07:58');
INSERT INTO `aut_solicitudes` VALUES ('226', 'viaticos', 'DTI-SOL-JR-226', '2017-12-18', '19', '1', '1', '', '2017-12-18', '07:00:00', '2017-12-18', '17:00:00', 'gsgsdg', 'sdfsdfsf', 'sol_1513632483187', '2017-12-18 16:28:46', '2017-12-18 16:28:46');
INSERT INTO `aut_solicitudes` VALUES ('227', 'viaticos', 'DTI-SOL-JR-227', '2017-12-18', '19', '1', '1', '', '2017-12-18', '07:00:00', '2017-12-18', '17:00:00', 'solicitud xavier', 'asdadad', 'sol_1513632576970', '2017-12-18 16:30:07', '2017-12-18 16:30:07');
INSERT INTO `aut_solicitudes` VALUES ('228', 'viaticos', 'DTI-SOL-JR-228', '2017-12-29', '19', '1', '1', '', '2017-12-29', '07:00:00', '2017-12-29', '17:00:00', 'Asdad', 'asdad', 'sol2017-12-29 11:42:49sol_1514565766087', '2017-12-29 11:42:49', '2017-12-29 11:42:49');
INSERT INTO `aut_solicitudes` VALUES ('229', 'viaticos', 'DTI-SOL-JR-229', '2017-12-29', '19', '1', '1', '', '2017-12-29', '07:00:00', '2017-12-29', '17:00:00', 'asdasd', 'asdad', 'sol2017-12-29 11:47:01sol_1514566018327', '2017-12-29 11:47:01', '2017-12-29 11:47:01');
INSERT INTO `aut_solicitudes` VALUES ('230', 'viaticos', 'DTI-SOL-JR-230', '2017-12-29', '19', '1', '1', '', '2017-12-29', '07:00:00', '2017-12-29', '17:00:00', 'asdadad', 'asdasd', 'sol2017-12-29 11:50:17sol_1514566214540', '2017-12-29 11:50:17', '2017-12-29 11:50:17');
INSERT INTO `aut_solicitudes` VALUES ('231', 'viaticos', 'DTI-SOL-JR-231', '2017-12-29', '19', '1', '1', '', '2017-12-29', '07:00:00', '2017-12-29', '17:00:00', 'asdadasad', 'asdasd', 'sol2017-12-29 11:52:25sol_1514566341879', '2017-12-29 11:52:25', '2017-12-29 11:52:25');
INSERT INTO `aut_solicitudes` VALUES ('232', 'viaticos', 'DTI-SOL-JR-232', '2017-12-29', '19', '1', '1', '', '2017-12-29', '07:00:00', '2017-12-29', '17:00:00', 'asdad', 'asdad', null, '2017-12-29 12:11:36', '2017-12-29 12:11:36');
INSERT INTO `aut_solicitudes` VALUES ('233', 'viaticos', 'DTI-SOL-JR-233', '2017-12-29', '19', '1', '1', '', '2017-12-29', '07:00:00', '2017-12-29', '17:00:00', 'asdad', 'asdad', 'DTI-SOL-JR-233', '2017-12-29 12:13:19', '2017-12-29 12:13:19');
INSERT INTO `aut_solicitudes` VALUES ('234', 'viaticos', 'DTI-SOL-JR-234', '2017-12-29', '19', '1', '1', '', '2017-12-29', '07:00:00', '2017-12-29', '17:00:00', 'sdasdas', 'asdasd', null, '2017-12-29 12:34:30', '2017-12-29 12:34:30');
INSERT INTO `aut_solicitudes` VALUES ('235', 'viaticos', 'DTI-SOL-JR-235', '2017-12-29', '19', '1', '1', '', '2017-12-29', '07:00:00', '2017-12-29', '17:00:00', 'Aaaa', 'aaaaaa', 'DTI-SOL-JR-235', '2017-12-29 12:35:45', '2017-12-29 12:35:45');
INSERT INTO `aut_solicitudes` VALUES ('236', 'viaticos', 'DTI-SOL-JR-236', '2017-12-29', '19', '1', '1', '', '2017-12-29', '07:00:00', '2017-12-29', '17:00:00', 'asdasd', 'asda', 'DTISOLJR236', '2017-12-29 12:42:03', '2017-12-29 12:42:03');
INSERT INTO `aut_solicitudes` VALUES ('237', 'viaticos', 'DTI-SOL-JR-237', '2017-12-29', '19', '1', '1', '', '2017-12-29', '07:00:00', '2017-12-29', '17:00:00', 'asdads', 'asdasdad', 'dtisoljr237', '2017-12-29 12:43:12', '2017-12-29 12:43:12');
INSERT INTO `aut_solicitudes` VALUES ('238', 'viaticos', 'DTI-SOL-JR-238', '2017-12-29', '19', '1', '1', '', '2017-12-29', '07:00:00', '2017-12-29', '17:00:00', 'asdada', 'asdad', 'DTISOLJR238', '2017-12-29 12:54:32', '2017-12-29 12:54:32');
INSERT INTO `aut_solicitudes` VALUES ('239', 'viaticos', 'DTI-SOL-JR-239', '2017-12-29', '19', '1', '14', '', '2017-12-29', '07:00:00', '2017-12-29', '17:00:00', 'yopox', 'muchax', 'DTISOLJR239', '2017-12-29 13:54:21', '2017-12-29 13:54:21');
INSERT INTO `aut_solicitudes` VALUES ('240', 'viaticos', 'DTI-SOL-JR-240', '2017-12-29', '19', '1', '16', '', '2017-12-29', '07:00:00', '2017-12-29', '17:00:00', 'uuuu', 'uuuuu', 'DTISOLJR240', '2017-12-29 14:00:31', '2017-12-29 14:00:31');
INSERT INTO `aut_solicitudes` VALUES ('241', 'viaticos', 'DTI-SOL-JR-241', '2018-01-23', '19', '1', '10', '', '2018-01-24', '07:00:00', '2018-01-27', '17:00:00', 'dsfsfsdfs', 'asadasdadasd', 'DTISOLJR241', '2018-01-23 10:39:02', '2018-01-23 10:39:02');

-- ----------------------------
-- Table structure for aut_solicitudes_historicos
-- ----------------------------
DROP TABLE IF EXISTS `aut_solicitudes_historicos`;
CREATE TABLE `aut_solicitudes_historicos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `solicitud_id` int(10) unsigned NOT NULL,
  `emisor_id` int(10) unsigned NOT NULL,
  `receptor_id` int(10) unsigned NOT NULL,
  `estado` int(11) NOT NULL,
  `nota` mediumtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `aut_solicitudes_historicos_solicitud_id_foreign` (`solicitud_id`),
  KEY `aut_solicitudes_historicos_emisor_id_foreign` (`emisor_id`),
  KEY `aut_solicitudes_historicos_receptor_id_foreign` (`receptor_id`),
  CONSTRAINT `aut_solicitudes_historicos_emisor_id_foreign` FOREIGN KEY (`emisor_id`) REFERENCES `users` (`id`),
  CONSTRAINT `aut_solicitudes_historicos_receptor_id_foreign` FOREIGN KEY (`receptor_id`) REFERENCES `users` (`id`),
  CONSTRAINT `aut_solicitudes_historicos_solicitud_id_foreign` FOREIGN KEY (`solicitud_id`) REFERENCES `aut_solicitudes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=449 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of aut_solicitudes_historicos
-- ----------------------------
INSERT INTO `aut_solicitudes_historicos` VALUES ('33', '43', '1', '2', '1', '', '2017-07-26 10:03:16', '2017-07-26 10:03:16');
INSERT INTO `aut_solicitudes_historicos` VALUES ('34', '43', '1', '2', '2', 'LISTO', '2017-07-26 10:04:52', '2017-07-26 10:04:52');
INSERT INTO `aut_solicitudes_historicos` VALUES ('35', '44', '1', '2', '1', '', '2017-07-26 11:43:06', '2017-07-26 11:43:06');
INSERT INTO `aut_solicitudes_historicos` VALUES ('36', '44', '1', '2', '2', 'solicitud viaje', '2017-07-26 11:44:41', '2017-07-26 11:44:41');
INSERT INTO `aut_solicitudes_historicos` VALUES ('37', '45', '1', '2', '1', '', '2017-07-26 12:25:15', '2017-07-26 12:25:15');
INSERT INTO `aut_solicitudes_historicos` VALUES ('38', '46', '1', '2', '1', '', '2017-07-31 10:32:02', '2017-07-31 10:32:02');
INSERT INTO `aut_solicitudes_historicos` VALUES ('39', '45', '1', '2', '2', 'OKOKOKOK', '2017-07-31 10:33:02', '2017-07-31 10:33:02');
INSERT INTO `aut_solicitudes_historicos` VALUES ('40', '47', '1', '2', '1', '', '2017-07-31 12:10:44', '2017-07-31 12:10:44');
INSERT INTO `aut_solicitudes_historicos` VALUES ('41', '48', '1', '2', '1', '', '2017-08-01 11:16:56', '2017-08-01 11:16:56');
INSERT INTO `aut_solicitudes_historicos` VALUES ('42', '49', '1', '2', '1', '', '2017-08-01 16:38:35', '2017-08-01 16:38:35');
INSERT INTO `aut_solicitudes_historicos` VALUES ('43', '50', '1', '2', '1', '', '2017-08-01 16:39:08', '2017-08-01 16:39:08');
INSERT INTO `aut_solicitudes_historicos` VALUES ('44', '51', '1', '2', '1', '', '2017-08-01 16:39:17', '2017-08-01 16:39:17');
INSERT INTO `aut_solicitudes_historicos` VALUES ('45', '52', '1', '2', '1', '', '2017-08-02 09:35:24', '2017-08-02 09:35:24');
INSERT INTO `aut_solicitudes_historicos` VALUES ('46', '53', '1', '2', '1', '', '2017-08-02 09:35:45', '2017-08-02 09:35:45');
INSERT INTO `aut_solicitudes_historicos` VALUES ('47', '54', '1', '2', '1', '', '2017-08-02 09:39:30', '2017-08-02 09:39:30');
INSERT INTO `aut_solicitudes_historicos` VALUES ('48', '55', '1', '2', '1', '', '2017-08-03 11:51:17', '2017-08-03 11:51:17');
INSERT INTO `aut_solicitudes_historicos` VALUES ('49', '56', '1', '2', '1', '', '2017-08-03 11:59:51', '2017-08-03 11:59:51');
INSERT INTO `aut_solicitudes_historicos` VALUES ('50', '57', '1', '2', '1', '', '2017-08-03 12:00:20', '2017-08-03 12:00:20');
INSERT INTO `aut_solicitudes_historicos` VALUES ('51', '58', '1', '2', '1', '', '2017-08-03 15:51:40', '2017-08-03 15:51:40');
INSERT INTO `aut_solicitudes_historicos` VALUES ('52', '59', '1', '2', '1', '', '2017-08-03 15:55:18', '2017-08-03 15:55:18');
INSERT INTO `aut_solicitudes_historicos` VALUES ('53', '60', '1', '2', '1', '', '2017-08-03 15:56:38', '2017-08-03 15:56:38');
INSERT INTO `aut_solicitudes_historicos` VALUES ('54', '61', '1', '2', '1', '', '2017-08-03 16:02:55', '2017-08-03 16:02:55');
INSERT INTO `aut_solicitudes_historicos` VALUES ('55', '62', '1', '2', '1', '', '2017-08-03 16:50:17', '2017-08-03 16:50:17');
INSERT INTO `aut_solicitudes_historicos` VALUES ('56', '63', '1', '2', '1', '', '2017-08-03 16:51:03', '2017-08-03 16:51:03');
INSERT INTO `aut_solicitudes_historicos` VALUES ('57', '63', '1', '2', '2', 'dadas', '2017-08-03 17:04:55', '2017-08-03 17:04:55');
INSERT INTO `aut_solicitudes_historicos` VALUES ('58', '64', '1', '2', '1', '', '2017-08-04 09:29:26', '2017-08-04 09:29:26');
INSERT INTO `aut_solicitudes_historicos` VALUES ('60', '65', '1', '2', '1', '', '2017-08-04 09:57:03', '2017-08-04 09:57:03');
INSERT INTO `aut_solicitudes_historicos` VALUES ('61', '65', '1', '2', '2', 'iiii', '2017-08-04 09:57:31', '2017-08-04 09:57:31');
INSERT INTO `aut_solicitudes_historicos` VALUES ('62', '66', '1', '2', '1', '', '2017-08-04 09:58:30', '2017-08-04 09:58:30');
INSERT INTO `aut_solicitudes_historicos` VALUES ('63', '66', '1', '2', '2', 'okokokoko', '2017-08-07 11:45:08', '2017-08-07 11:45:08');
INSERT INTO `aut_solicitudes_historicos` VALUES ('64', '67', '1', '2', '1', '', '2017-08-07 11:49:33', '2017-08-07 11:49:33');
INSERT INTO `aut_solicitudes_historicos` VALUES ('65', '68', '1', '2', '1', '', '2017-08-07 11:55:04', '2017-08-07 11:55:04');
INSERT INTO `aut_solicitudes_historicos` VALUES ('66', '68', '1', '2', '2', 'aaaaa', '2017-08-07 11:56:45', '2017-08-07 11:56:45');
INSERT INTO `aut_solicitudes_historicos` VALUES ('67', '69', '1', '2', '1', '', '2017-08-08 09:24:53', '2017-08-08 09:24:53');
INSERT INTO `aut_solicitudes_historicos` VALUES ('68', '69', '1', '2', '2', 'asdasdas', '2017-08-08 09:25:15', '2017-08-08 09:25:15');
INSERT INTO `aut_solicitudes_historicos` VALUES ('69', '70', '1', '2', '1', '', '2017-08-16 10:59:46', '2017-08-16 10:59:46');
INSERT INTO `aut_solicitudes_historicos` VALUES ('70', '71', '1', '2', '1', '', '2017-08-16 11:00:23', '2017-08-16 11:00:23');
INSERT INTO `aut_solicitudes_historicos` VALUES ('71', '72', '1', '2', '1', '', '2017-08-16 11:05:11', '2017-08-16 11:05:11');
INSERT INTO `aut_solicitudes_historicos` VALUES ('72', '73', '1', '2', '1', '', '2017-08-16 11:09:52', '2017-08-16 11:09:52');
INSERT INTO `aut_solicitudes_historicos` VALUES ('73', '73', '1', '2', '2', 'acepta porfa', '2017-08-16 11:25:59', '2017-08-16 11:25:59');
INSERT INTO `aut_solicitudes_historicos` VALUES ('75', '44', '1', '2', '2', 'aprobadooo', '2017-08-27 23:10:55', '2017-08-27 23:10:55');
INSERT INTO `aut_solicitudes_historicos` VALUES ('76', '45', '1', '3', '2', 'a ver', '2017-08-28 00:32:11', '2017-08-28 00:32:11');
INSERT INTO `aut_solicitudes_historicos` VALUES ('77', '77', '1', '2', '1', '', '2017-08-28 05:08:19', '2017-08-28 05:08:19');
INSERT INTO `aut_solicitudes_historicos` VALUES ('78', '78', '1', '2', '1', '', '2017-08-28 08:43:51', '2017-08-28 08:43:51');
INSERT INTO `aut_solicitudes_historicos` VALUES ('79', '79', '1', '2', '1', '', '2017-08-29 06:28:22', '2017-08-29 06:28:22');
INSERT INTO `aut_solicitudes_historicos` VALUES ('80', '79', '1', '2', '2', 'favor aprobar', '2017-08-29 06:30:52', '2017-08-29 06:30:52');
INSERT INTO `aut_solicitudes_historicos` VALUES ('84', '79', '2', '3', '2', 'aprobado tic', '2017-08-29 06:57:28', '2017-08-29 06:57:28');
INSERT INTO `aut_solicitudes_historicos` VALUES ('85', '80', '1', '2', '1', '', '2017-08-29 09:01:27', '2017-08-29 09:01:27');
INSERT INTO `aut_solicitudes_historicos` VALUES ('86', '81', '1', '2', '1', '', '2017-08-29 09:11:05', '2017-08-29 09:11:05');
INSERT INTO `aut_solicitudes_historicos` VALUES ('87', '82', '1', '2', '1', '', '2017-08-29 09:12:11', '2017-08-29 09:12:11');
INSERT INTO `aut_solicitudes_historicos` VALUES ('88', '83', '1', '2', '1', '', '2017-08-29 09:15:08', '2017-08-29 09:15:08');
INSERT INTO `aut_solicitudes_historicos` VALUES ('89', '84', '1', '2', '1', '', '2017-08-29 09:43:32', '2017-08-29 09:43:32');
INSERT INTO `aut_solicitudes_historicos` VALUES ('90', '85', '1', '2', '1', '', '2017-08-29 09:44:05', '2017-08-29 09:44:05');
INSERT INTO `aut_solicitudes_historicos` VALUES ('91', '86', '1', '2', '1', '', '2017-08-29 09:44:15', '2017-08-29 09:44:15');
INSERT INTO `aut_solicitudes_historicos` VALUES ('92', '87', '1', '2', '1', '', '2017-08-29 09:44:40', '2017-08-29 09:44:40');
INSERT INTO `aut_solicitudes_historicos` VALUES ('93', '88', '1', '2', '1', '', '2017-08-29 11:04:36', '2017-08-29 11:04:36');
INSERT INTO `aut_solicitudes_historicos` VALUES ('94', '89', '1', '2', '1', '', '2017-08-29 11:43:27', '2017-08-29 11:43:27');
INSERT INTO `aut_solicitudes_historicos` VALUES ('95', '90', '1', '2', '1', '', '2017-08-29 11:44:14', '2017-08-29 11:44:14');
INSERT INTO `aut_solicitudes_historicos` VALUES ('96', '91', '1', '2', '1', '', '2017-08-29 12:18:59', '2017-08-29 12:18:59');
INSERT INTO `aut_solicitudes_historicos` VALUES ('97', '92', '1', '2', '1', '', '2017-08-29 12:38:56', '2017-08-29 12:38:56');
INSERT INTO `aut_solicitudes_historicos` VALUES ('98', '93', '1', '2', '1', '', '2017-08-29 12:39:31', '2017-08-29 12:39:31');
INSERT INTO `aut_solicitudes_historicos` VALUES ('99', '94', '1', '2', '1', '', '2017-08-29 12:40:23', '2017-08-29 12:40:23');
INSERT INTO `aut_solicitudes_historicos` VALUES ('100', '95', '1', '2', '1', '', '2017-08-29 12:41:21', '2017-08-29 12:41:21');
INSERT INTO `aut_solicitudes_historicos` VALUES ('101', '96', '1', '2', '1', '', '2017-08-29 12:42:20', '2017-08-29 12:42:20');
INSERT INTO `aut_solicitudes_historicos` VALUES ('102', '97', '1', '2', '1', '', '2017-08-29 12:43:46', '2017-08-29 12:43:46');
INSERT INTO `aut_solicitudes_historicos` VALUES ('103', '98', '1', '2', '1', '', '2017-08-29 12:46:37', '2017-08-29 12:46:37');
INSERT INTO `aut_solicitudes_historicos` VALUES ('104', '99', '1', '2', '1', '', '2017-08-29 12:48:32', '2017-08-29 12:48:32');
INSERT INTO `aut_solicitudes_historicos` VALUES ('105', '100', '1', '2', '1', '', '2017-08-29 12:48:43', '2017-08-29 12:48:43');
INSERT INTO `aut_solicitudes_historicos` VALUES ('106', '101', '1', '2', '1', '', '2017-08-29 14:46:53', '2017-08-29 14:46:53');
INSERT INTO `aut_solicitudes_historicos` VALUES ('107', '102', '1', '2', '1', '', '2017-08-29 14:48:52', '2017-08-29 14:48:52');
INSERT INTO `aut_solicitudes_historicos` VALUES ('108', '103', '1', '2', '1', '', '2017-08-29 14:49:21', '2017-08-29 14:49:21');
INSERT INTO `aut_solicitudes_historicos` VALUES ('109', '104', '1', '2', '1', '', '2017-08-29 17:07:00', '2017-08-29 17:07:00');
INSERT INTO `aut_solicitudes_historicos` VALUES ('110', '105', '1', '2', '1', '', '2017-08-29 17:07:17', '2017-08-29 17:07:17');
INSERT INTO `aut_solicitudes_historicos` VALUES ('111', '106', '1', '2', '1', '', '2017-08-29 17:08:02', '2017-08-29 17:08:02');
INSERT INTO `aut_solicitudes_historicos` VALUES ('112', '107', '1', '2', '1', '', '2017-08-29 17:08:24', '2017-08-29 17:08:24');
INSERT INTO `aut_solicitudes_historicos` VALUES ('113', '108', '1', '2', '1', '', '2017-08-30 16:53:42', '2017-08-30 16:53:42');
INSERT INTO `aut_solicitudes_historicos` VALUES ('114', '109', '1', '2', '1', '', '2017-08-30 16:54:49', '2017-08-30 16:54:49');
INSERT INTO `aut_solicitudes_historicos` VALUES ('115', '110', '1', '2', '1', '', '2017-08-30 16:56:30', '2017-08-30 16:56:30');
INSERT INTO `aut_solicitudes_historicos` VALUES ('116', '111', '1', '2', '1', '', '2017-09-01 11:55:51', '2017-09-01 11:55:51');
INSERT INTO `aut_solicitudes_historicos` VALUES ('117', '112', '1', '2', '1', '', '2017-09-01 12:07:16', '2017-09-01 12:07:16');
INSERT INTO `aut_solicitudes_historicos` VALUES ('118', '113', '1', '2', '1', '', '2017-09-01 12:53:59', '2017-09-01 12:53:59');
INSERT INTO `aut_solicitudes_historicos` VALUES ('119', '114', '1', '2', '1', '', '2017-09-01 12:54:52', '2017-09-01 12:54:52');
INSERT INTO `aut_solicitudes_historicos` VALUES ('120', '115', '1', '2', '1', '', '2017-09-04 10:42:47', '2017-09-04 10:42:47');
INSERT INTO `aut_solicitudes_historicos` VALUES ('121', '116', '1', '2', '1', '', '2017-09-04 14:24:52', '2017-09-04 14:24:52');
INSERT INTO `aut_solicitudes_historicos` VALUES ('122', '117', '1', '2', '1', '', '2017-09-04 14:27:14', '2017-09-04 14:27:14');
INSERT INTO `aut_solicitudes_historicos` VALUES ('123', '118', '1', '2', '1', '', '2017-09-04 14:28:00', '2017-09-04 14:28:00');
INSERT INTO `aut_solicitudes_historicos` VALUES ('124', '119', '1', '2', '1', '', '2017-09-04 15:40:03', '2017-09-04 15:40:03');
INSERT INTO `aut_solicitudes_historicos` VALUES ('125', '120', '1', '2', '1', '', '2017-09-04 15:40:12', '2017-09-04 15:40:12');
INSERT INTO `aut_solicitudes_historicos` VALUES ('126', '121', '1', '2', '1', '', '2017-09-04 15:42:02', '2017-09-04 15:42:02');
INSERT INTO `aut_solicitudes_historicos` VALUES ('127', '122', '1', '2', '1', '', '2017-09-04 15:42:32', '2017-09-04 15:42:32');
INSERT INTO `aut_solicitudes_historicos` VALUES ('128', '123', '1', '2', '1', '', '2017-09-04 15:42:44', '2017-09-04 15:42:44');
INSERT INTO `aut_solicitudes_historicos` VALUES ('129', '124', '1', '2', '1', '', '2017-09-04 17:04:45', '2017-09-04 17:04:45');
INSERT INTO `aut_solicitudes_historicos` VALUES ('130', '125', '1', '2', '1', '', '2017-09-04 17:04:58', '2017-09-04 17:04:58');
INSERT INTO `aut_solicitudes_historicos` VALUES ('131', '126', '1', '2', '1', '', '2017-09-04 17:05:27', '2017-09-04 17:05:27');
INSERT INTO `aut_solicitudes_historicos` VALUES ('132', '127', '1', '2', '1', '', '2017-09-04 17:05:49', '2017-09-04 17:05:49');
INSERT INTO `aut_solicitudes_historicos` VALUES ('133', '128', '1', '2', '1', '', '2017-09-04 17:06:01', '2017-09-04 17:06:01');
INSERT INTO `aut_solicitudes_historicos` VALUES ('134', '129', '1', '2', '1', '', '2017-09-07 13:15:21', '2017-09-07 13:15:21');
INSERT INTO `aut_solicitudes_historicos` VALUES ('135', '130', '1', '2', '1', '', '2017-09-07 13:15:36', '2017-09-07 13:15:36');
INSERT INTO `aut_solicitudes_historicos` VALUES ('136', '131', '1', '2', '1', '', '2017-09-07 13:17:13', '2017-09-07 13:17:13');
INSERT INTO `aut_solicitudes_historicos` VALUES ('137', '132', '1', '2', '1', '', '2017-09-07 13:18:57', '2017-09-07 13:18:57');
INSERT INTO `aut_solicitudes_historicos` VALUES ('138', '133', '1', '2', '1', '', '2017-09-07 13:19:10', '2017-09-07 13:19:10');
INSERT INTO `aut_solicitudes_historicos` VALUES ('139', '134', '1', '2', '1', '', '2017-09-07 13:24:18', '2017-09-07 13:24:18');
INSERT INTO `aut_solicitudes_historicos` VALUES ('140', '135', '1', '2', '1', '', '2017-09-07 13:24:33', '2017-09-07 13:24:33');
INSERT INTO `aut_solicitudes_historicos` VALUES ('141', '136', '1', '2', '1', '', '2017-09-07 13:25:49', '2017-09-07 13:25:49');
INSERT INTO `aut_solicitudes_historicos` VALUES ('142', '137', '1', '2', '1', '', '2017-09-07 13:27:13', '2017-09-07 13:27:13');
INSERT INTO `aut_solicitudes_historicos` VALUES ('143', '138', '1', '2', '1', '', '2017-09-07 15:53:41', '2017-09-07 15:53:41');
INSERT INTO `aut_solicitudes_historicos` VALUES ('144', '139', '1', '2', '1', '', '2017-09-07 15:56:10', '2017-09-07 15:56:10');
INSERT INTO `aut_solicitudes_historicos` VALUES ('145', '140', '1', '2', '1', '', '2017-09-07 15:56:20', '2017-09-07 15:56:20');
INSERT INTO `aut_solicitudes_historicos` VALUES ('146', '141', '1', '2', '1', '', '2017-09-07 15:57:14', '2017-09-07 15:57:14');
INSERT INTO `aut_solicitudes_historicos` VALUES ('147', '142', '1', '2', '1', '', '2017-09-13 16:09:11', '2017-09-13 16:09:11');
INSERT INTO `aut_solicitudes_historicos` VALUES ('148', '143', '1', '2', '1', '', '2017-09-13 16:09:58', '2017-09-13 16:09:58');
INSERT INTO `aut_solicitudes_historicos` VALUES ('149', '144', '1', '2', '1', '', '2017-09-13 16:10:50', '2017-09-13 16:10:50');
INSERT INTO `aut_solicitudes_historicos` VALUES ('150', '145', '1', '2', '1', '', '2017-09-13 16:11:28', '2017-09-13 16:11:28');
INSERT INTO `aut_solicitudes_historicos` VALUES ('151', '146', '1', '2', '1', '', '2017-09-19 12:41:52', '2017-09-19 12:41:52');
INSERT INTO `aut_solicitudes_historicos` VALUES ('152', '147', '1', '2', '1', '', '2017-09-19 12:42:24', '2017-09-19 12:42:24');
INSERT INTO `aut_solicitudes_historicos` VALUES ('153', '101', '1', '2', '2', 'fgfgfg', '2017-09-22 15:08:47', '2017-09-22 15:08:47');
INSERT INTO `aut_solicitudes_historicos` VALUES ('154', '148', '2', '2', '1', '', '2017-09-25 15:59:56', '2017-09-25 15:59:56');
INSERT INTO `aut_solicitudes_historicos` VALUES ('155', '149', '3', '3', '1', '', '2017-09-25 16:12:24', '2017-09-25 16:12:24');
INSERT INTO `aut_solicitudes_historicos` VALUES ('156', '150', '1', '1', '1', '', '2017-09-26 09:32:02', '2017-09-26 09:32:02');
INSERT INTO `aut_solicitudes_historicos` VALUES ('158', '65', '2', '1', '4', 'rechazado', '2017-09-26 16:44:47', '2017-09-26 16:44:47');
INSERT INTO `aut_solicitudes_historicos` VALUES ('159', '151', '1', '2', '1', '', '2017-10-02 10:46:23', '2017-10-02 10:46:23');
INSERT INTO `aut_solicitudes_historicos` VALUES ('160', '69', '2', '1', '4', 'faltan datos', '2017-10-03 09:14:32', '2017-10-03 09:14:32');
INSERT INTO `aut_solicitudes_historicos` VALUES ('161', '100', '1', '2', '2', 'enviado para aprobación 3/10/2017', '2017-10-03 09:24:26', '2017-10-03 09:24:26');
INSERT INTO `aut_solicitudes_historicos` VALUES ('162', '73', '2', '1', '4', 'hoja de ruta con detalles duplicados', '2017-10-03 09:45:23', '2017-10-03 09:45:23');
INSERT INTO `aut_solicitudes_historicos` VALUES ('163', '44', '2', '1', '4', '', '2017-10-03 10:48:30', '2017-10-03 10:48:30');
INSERT INTO `aut_solicitudes_historicos` VALUES ('166', '154', '1', '2', '1', '', '2017-10-04 14:51:59', '2017-10-04 14:51:59');
INSERT INTO `aut_solicitudes_historicos` VALUES ('167', '79', '3', '1', '5', '', '2017-10-12 10:52:40', '2017-10-12 10:52:40');
INSERT INTO `aut_solicitudes_historicos` VALUES ('168', '155', '1', '2', '1', '', '2017-10-24 16:54:05', '2017-10-24 16:54:05');
INSERT INTO `aut_solicitudes_historicos` VALUES ('169', '156', '1', '2', '1', '', '2017-10-24 16:56:43', '2017-10-24 16:56:43');
INSERT INTO `aut_solicitudes_historicos` VALUES ('170', '157', '1', '2', '1', '', '2017-10-24 16:57:00', '2017-10-24 16:57:00');
INSERT INTO `aut_solicitudes_historicos` VALUES ('171', '158', '1', '2', '1', '', '2017-10-24 16:57:34', '2017-10-24 16:57:34');
INSERT INTO `aut_solicitudes_historicos` VALUES ('172', '159', '1', '2', '1', '', '2017-10-24 16:57:52', '2017-10-24 16:57:52');
INSERT INTO `aut_solicitudes_historicos` VALUES ('173', '160', '1', '2', '1', '', '2017-10-24 16:59:16', '2017-10-24 16:59:16');
INSERT INTO `aut_solicitudes_historicos` VALUES ('174', '161', '1', '2', '1', '', '2017-10-24 17:05:10', '2017-10-24 17:05:10');
INSERT INTO `aut_solicitudes_historicos` VALUES ('175', '162', '1', '2', '1', '', '2017-10-24 17:05:50', '2017-10-24 17:05:50');
INSERT INTO `aut_solicitudes_historicos` VALUES ('176', '163', '1', '2', '1', '', '2017-10-24 17:06:57', '2017-10-24 17:06:57');
INSERT INTO `aut_solicitudes_historicos` VALUES ('177', '164', '1', '2', '1', '', '2017-10-24 18:39:16', '2017-10-24 18:39:16');
INSERT INTO `aut_solicitudes_historicos` VALUES ('178', '165', '1', '2', '1', '', '2017-10-24 18:56:03', '2017-10-24 18:56:03');
INSERT INTO `aut_solicitudes_historicos` VALUES ('179', '165', '1', '2', '2', 'LISTO', '2017-10-24 18:58:16', '2017-10-24 18:58:16');
INSERT INTO `aut_solicitudes_historicos` VALUES ('192', '45', '3', '1', '5', 'listo, tramite', '2017-10-26 16:49:53', '2017-10-26 16:49:53');
INSERT INTO `aut_solicitudes_historicos` VALUES ('193', '166', '1', '2', '1', '', '2017-10-26 16:54:56', '2017-10-26 16:54:56');
INSERT INTO `aut_solicitudes_historicos` VALUES ('194', '166', '1', '2', '2', 'favor aprobar', '2017-10-26 16:57:40', '2017-10-26 16:57:40');
INSERT INTO `aut_solicitudes_historicos` VALUES ('195', '166', '2', '3', '2', 'aprobado tic', '2017-10-26 16:59:23', '2017-10-26 16:59:23');
INSERT INTO `aut_solicitudes_historicos` VALUES ('196', '166', '3', '1', '5', 'aprobado para salir', '2017-10-26 17:00:04', '2017-10-26 17:00:04');
INSERT INTO `aut_solicitudes_historicos` VALUES ('197', '167', '1', '2', '1', '', '2017-11-08 09:14:13', '2017-11-08 09:14:13');
INSERT INTO `aut_solicitudes_historicos` VALUES ('198', '167', '1', '2', '2', 'ok', '2017-11-08 09:14:30', '2017-11-08 09:14:30');
INSERT INTO `aut_solicitudes_historicos` VALUES ('199', '167', '1', '2', '2', 'ok', '2017-11-08 09:15:12', '2017-11-08 09:15:12');
INSERT INTO `aut_solicitudes_historicos` VALUES ('200', '167', '1', '2', '2', 'ok', '2017-11-08 09:17:00', '2017-11-08 09:17:00');
INSERT INTO `aut_solicitudes_historicos` VALUES ('201', '167', '1', '2', '2', 'ok', '2017-11-08 09:18:20', '2017-11-08 09:18:20');
INSERT INTO `aut_solicitudes_historicos` VALUES ('202', '167', '1', '2', '2', 'ok', '2017-11-08 09:19:17', '2017-11-08 09:19:17');
INSERT INTO `aut_solicitudes_historicos` VALUES ('203', '167', '1', '2', '2', 'ok', '2017-11-08 09:21:03', '2017-11-08 09:21:03');
INSERT INTO `aut_solicitudes_historicos` VALUES ('204', '167', '1', '2', '2', 'ok', '2017-11-08 09:26:13', '2017-11-08 09:26:13');
INSERT INTO `aut_solicitudes_historicos` VALUES ('205', '167', '1', '2', '2', 'ok', '2017-11-08 09:26:27', '2017-11-08 09:26:27');
INSERT INTO `aut_solicitudes_historicos` VALUES ('206', '168', '1', '2', '1', '', '2017-11-08 09:28:24', '2017-11-08 09:28:24');
INSERT INTO `aut_solicitudes_historicos` VALUES ('207', '168', '1', '2', '2', 'sad', '2017-11-08 09:28:37', '2017-11-08 09:28:37');
INSERT INTO `aut_solicitudes_historicos` VALUES ('208', '169', '1', '2', '1', '', '2017-11-08 09:29:59', '2017-11-08 09:29:59');
INSERT INTO `aut_solicitudes_historicos` VALUES ('209', '169', '1', '2', '2', '', '2017-11-08 09:30:08', '2017-11-08 09:30:08');
INSERT INTO `aut_solicitudes_historicos` VALUES ('210', '170', '1', '2', '1', '', '2017-11-08 09:32:14', '2017-11-08 09:32:14');
INSERT INTO `aut_solicitudes_historicos` VALUES ('211', '170', '1', '2', '2', '', '2017-11-08 09:32:22', '2017-11-08 09:32:22');
INSERT INTO `aut_solicitudes_historicos` VALUES ('212', '171', '1', '2', '1', '', '2017-11-08 09:32:50', '2017-11-08 09:32:50');
INSERT INTO `aut_solicitudes_historicos` VALUES ('213', '171', '1', '2', '2', '', '2017-11-08 09:32:58', '2017-11-08 09:32:58');
INSERT INTO `aut_solicitudes_historicos` VALUES ('214', '172', '1', '2', '1', '', '2017-11-08 09:36:15', '2017-11-08 09:36:15');
INSERT INTO `aut_solicitudes_historicos` VALUES ('215', '172', '1', '2', '2', '', '2017-11-08 09:36:23', '2017-11-08 09:36:23');
INSERT INTO `aut_solicitudes_historicos` VALUES ('216', '173', '1', '2', '1', '', '2017-11-08 09:40:20', '2017-11-08 09:40:20');
INSERT INTO `aut_solicitudes_historicos` VALUES ('217', '173', '1', '2', '2', '', '2017-11-08 09:40:31', '2017-11-08 09:40:31');
INSERT INTO `aut_solicitudes_historicos` VALUES ('218', '174', '1', '2', '1', '', '2017-11-08 09:42:29', '2017-11-08 09:42:29');
INSERT INTO `aut_solicitudes_historicos` VALUES ('219', '174', '1', '2', '2', '', '2017-11-08 09:42:40', '2017-11-08 09:42:40');
INSERT INTO `aut_solicitudes_historicos` VALUES ('220', '174', '1', '2', '2', '', '2017-11-08 09:44:56', '2017-11-08 09:44:56');
INSERT INTO `aut_solicitudes_historicos` VALUES ('221', '174', '1', '2', '2', '', '2017-11-08 09:48:56', '2017-11-08 09:48:56');
INSERT INTO `aut_solicitudes_historicos` VALUES ('222', '175', '1', '2', '1', '', '2017-11-08 09:49:09', '2017-11-08 09:49:09');
INSERT INTO `aut_solicitudes_historicos` VALUES ('223', '175', '1', '2', '2', '', '2017-11-08 09:49:17', '2017-11-08 09:49:17');
INSERT INTO `aut_solicitudes_historicos` VALUES ('224', '176', '1', '2', '1', '', '2017-11-08 09:53:06', '2017-11-08 09:53:06');
INSERT INTO `aut_solicitudes_historicos` VALUES ('225', '176', '1', '2', '2', '', '2017-11-08 09:53:15', '2017-11-08 09:53:15');
INSERT INTO `aut_solicitudes_historicos` VALUES ('226', '177', '1', '2', '1', '', '2017-11-08 09:54:35', '2017-11-08 09:54:35');
INSERT INTO `aut_solicitudes_historicos` VALUES ('227', '177', '1', '2', '2', '', '2017-11-08 09:54:43', '2017-11-08 09:54:43');
INSERT INTO `aut_solicitudes_historicos` VALUES ('228', '178', '1', '2', '1', '', '2017-11-08 10:11:24', '2017-11-08 10:11:24');
INSERT INTO `aut_solicitudes_historicos` VALUES ('229', '178', '1', '2', '2', '', '2017-11-08 10:11:31', '2017-11-08 10:11:31');
INSERT INTO `aut_solicitudes_historicos` VALUES ('230', '178', '1', '2', '2', '', '2017-11-08 10:14:17', '2017-11-08 10:14:17');
INSERT INTO `aut_solicitudes_historicos` VALUES ('231', '178', '1', '2', '2', '', '2017-11-08 10:14:35', '2017-11-08 10:14:35');
INSERT INTO `aut_solicitudes_historicos` VALUES ('232', '178', '1', '2', '2', '', '2017-11-08 10:15:20', '2017-11-08 10:15:20');
INSERT INTO `aut_solicitudes_historicos` VALUES ('233', '178', '1', '2', '2', '', '2017-11-08 10:15:37', '2017-11-08 10:15:37');
INSERT INTO `aut_solicitudes_historicos` VALUES ('234', '178', '1', '2', '2', '', '2017-11-08 10:16:28', '2017-11-08 10:16:28');
INSERT INTO `aut_solicitudes_historicos` VALUES ('235', '178', '1', '2', '2', '', '2017-11-08 10:17:06', '2017-11-08 10:17:06');
INSERT INTO `aut_solicitudes_historicos` VALUES ('236', '178', '1', '2', '2', '', '2017-11-08 10:25:32', '2017-11-08 10:25:32');
INSERT INTO `aut_solicitudes_historicos` VALUES ('237', '178', '1', '2', '2', '', '2017-11-08 10:27:20', '2017-11-08 10:27:20');
INSERT INTO `aut_solicitudes_historicos` VALUES ('238', '178', '1', '2', '2', '', '2017-11-08 10:27:26', '2017-11-08 10:27:26');
INSERT INTO `aut_solicitudes_historicos` VALUES ('239', '178', '1', '2', '2', '', '2017-11-08 10:27:51', '2017-11-08 10:27:51');
INSERT INTO `aut_solicitudes_historicos` VALUES ('240', '178', '1', '2', '2', '', '2017-11-08 10:27:58', '2017-11-08 10:27:58');
INSERT INTO `aut_solicitudes_historicos` VALUES ('241', '178', '1', '2', '2', '', '2017-11-08 10:28:02', '2017-11-08 10:28:02');
INSERT INTO `aut_solicitudes_historicos` VALUES ('242', '178', '1', '2', '2', '', '2017-11-08 10:28:19', '2017-11-08 10:28:19');
INSERT INTO `aut_solicitudes_historicos` VALUES ('243', '178', '1', '2', '2', '', '2017-11-08 10:28:25', '2017-11-08 10:28:25');
INSERT INTO `aut_solicitudes_historicos` VALUES ('244', '178', '1', '2', '2', '', '2017-11-08 10:54:35', '2017-11-08 10:54:35');
INSERT INTO `aut_solicitudes_historicos` VALUES ('245', '179', '1', '2', '1', '', '2017-11-08 11:20:16', '2017-11-08 11:20:16');
INSERT INTO `aut_solicitudes_historicos` VALUES ('246', '179', '1', '2', '2', '', '2017-11-08 11:20:24', '2017-11-08 11:20:24');
INSERT INTO `aut_solicitudes_historicos` VALUES ('247', '179', '1', '2', '2', '', '2017-11-08 11:21:52', '2017-11-08 11:21:52');
INSERT INTO `aut_solicitudes_historicos` VALUES ('248', '179', '1', '2', '2', '', '2017-11-08 11:25:39', '2017-11-08 11:25:39');
INSERT INTO `aut_solicitudes_historicos` VALUES ('249', '180', '1', '2', '1', '', '2017-11-08 11:28:23', '2017-11-08 11:28:23');
INSERT INTO `aut_solicitudes_historicos` VALUES ('250', '180', '1', '2', '2', '', '2017-11-08 11:28:30', '2017-11-08 11:28:30');
INSERT INTO `aut_solicitudes_historicos` VALUES ('251', '181', '1', '2', '1', '', '2017-11-08 11:33:14', '2017-11-08 11:33:14');
INSERT INTO `aut_solicitudes_historicos` VALUES ('252', '181', '1', '2', '2', '', '2017-11-08 11:33:20', '2017-11-08 11:33:20');
INSERT INTO `aut_solicitudes_historicos` VALUES ('253', '182', '1', '2', '1', '', '2017-11-08 11:34:53', '2017-11-08 11:34:53');
INSERT INTO `aut_solicitudes_historicos` VALUES ('254', '182', '1', '2', '2', '', '2017-11-08 11:35:00', '2017-11-08 11:35:00');
INSERT INTO `aut_solicitudes_historicos` VALUES ('255', '183', '1', '2', '1', '', '2017-11-08 11:41:18', '2017-11-08 11:41:18');
INSERT INTO `aut_solicitudes_historicos` VALUES ('256', '183', '1', '2', '2', '', '2017-11-08 11:41:26', '2017-11-08 11:41:26');
INSERT INTO `aut_solicitudes_historicos` VALUES ('257', '183', '1', '2', '2', '', '2017-11-08 11:41:51', '2017-11-08 11:41:51');
INSERT INTO `aut_solicitudes_historicos` VALUES ('258', '184', '1', '2', '1', '', '2017-11-08 11:48:10', '2017-11-08 11:48:10');
INSERT INTO `aut_solicitudes_historicos` VALUES ('259', '185', '1', '2', '1', '', '2017-11-08 11:51:16', '2017-11-08 11:51:16');
INSERT INTO `aut_solicitudes_historicos` VALUES ('260', '185', '1', '2', '2', '', '2017-11-08 11:51:22', '2017-11-08 11:51:22');
INSERT INTO `aut_solicitudes_historicos` VALUES ('261', '185', '1', '2', '2', '', '2017-11-08 11:53:12', '2017-11-08 11:53:12');
INSERT INTO `aut_solicitudes_historicos` VALUES ('262', '185', '1', '2', '2', '', '2017-11-08 11:54:54', '2017-11-08 11:54:54');
INSERT INTO `aut_solicitudes_historicos` VALUES ('263', '186', '1', '2', '1', '', '2017-11-08 11:55:13', '2017-11-08 11:55:13');
INSERT INTO `aut_solicitudes_historicos` VALUES ('264', '186', '1', '2', '2', '', '2017-11-08 11:57:27', '2017-11-08 11:57:27');
INSERT INTO `aut_solicitudes_historicos` VALUES ('265', '187', '1', '2', '1', '', '2017-11-08 11:57:32', '2017-11-08 11:57:32');
INSERT INTO `aut_solicitudes_historicos` VALUES ('266', '187', '1', '2', '2', '', '2017-11-08 12:10:04', '2017-11-08 12:10:04');
INSERT INTO `aut_solicitudes_historicos` VALUES ('267', '188', '1', '2', '1', '', '2017-11-08 12:11:22', '2017-11-08 12:11:22');
INSERT INTO `aut_solicitudes_historicos` VALUES ('268', '188', '1', '2', '2', 'adasd', '2017-11-08 12:11:32', '2017-11-08 12:11:32');
INSERT INTO `aut_solicitudes_historicos` VALUES ('269', '188', '1', '2', '2', 'adasd', '2017-11-08 12:13:49', '2017-11-08 12:13:49');
INSERT INTO `aut_solicitudes_historicos` VALUES ('270', '188', '1', '2', '2', 'adasd', '2017-11-08 12:13:55', '2017-11-08 12:13:55');
INSERT INTO `aut_solicitudes_historicos` VALUES ('271', '188', '1', '2', '2', 'adasd', '2017-11-08 12:14:37', '2017-11-08 12:14:37');
INSERT INTO `aut_solicitudes_historicos` VALUES ('272', '188', '1', '2', '2', 'adasd', '2017-11-08 12:14:58', '2017-11-08 12:14:58');
INSERT INTO `aut_solicitudes_historicos` VALUES ('273', '188', '1', '2', '2', 'adasd', '2017-11-08 12:15:06', '2017-11-08 12:15:06');
INSERT INTO `aut_solicitudes_historicos` VALUES ('274', '188', '1', '2', '2', 'adasd', '2017-11-08 12:15:31', '2017-11-08 12:15:31');
INSERT INTO `aut_solicitudes_historicos` VALUES ('275', '189', '1', '2', '1', '', '2017-11-08 12:17:24', '2017-11-08 12:17:24');
INSERT INTO `aut_solicitudes_historicos` VALUES ('276', '189', '1', '2', '2', '', '2017-11-08 12:17:32', '2017-11-08 12:17:32');
INSERT INTO `aut_solicitudes_historicos` VALUES ('277', '189', '1', '2', '2', '', '2017-11-08 12:17:43', '2017-11-08 12:17:43');
INSERT INTO `aut_solicitudes_historicos` VALUES ('278', '190', '1', '2', '1', '', '2017-11-08 12:18:10', '2017-11-08 12:18:10');
INSERT INTO `aut_solicitudes_historicos` VALUES ('279', '190', '1', '2', '2', '', '2017-11-08 12:18:18', '2017-11-08 12:18:18');
INSERT INTO `aut_solicitudes_historicos` VALUES ('280', '191', '1', '2', '1', '', '2017-11-08 12:21:16', '2017-11-08 12:21:16');
INSERT INTO `aut_solicitudes_historicos` VALUES ('281', '191', '1', '2', '2', '', '2017-11-08 12:21:27', '2017-11-08 12:21:27');
INSERT INTO `aut_solicitudes_historicos` VALUES ('282', '192', '1', '2', '1', '', '2017-11-08 12:21:53', '2017-11-08 12:21:53');
INSERT INTO `aut_solicitudes_historicos` VALUES ('283', '192', '1', '2', '2', '', '2017-11-08 12:22:00', '2017-11-08 12:22:00');
INSERT INTO `aut_solicitudes_historicos` VALUES ('284', '193', '1', '2', '1', '', '2017-11-08 13:51:57', '2017-11-08 13:51:57');
INSERT INTO `aut_solicitudes_historicos` VALUES ('285', '193', '1', '2', '2', '', '2017-11-08 13:52:07', '2017-11-08 13:52:07');
INSERT INTO `aut_solicitudes_historicos` VALUES ('286', '194', '1', '2', '1', '', '2017-11-08 14:03:20', '2017-11-08 14:03:20');
INSERT INTO `aut_solicitudes_historicos` VALUES ('287', '194', '1', '2', '2', 'asdad', '2017-11-08 14:03:29', '2017-11-08 14:03:29');
INSERT INTO `aut_solicitudes_historicos` VALUES ('288', '194', '1', '2', '2', 'asdad', '2017-11-08 14:04:04', '2017-11-08 14:04:04');
INSERT INTO `aut_solicitudes_historicos` VALUES ('289', '195', '1', '2', '1', '', '2017-11-08 14:10:23', '2017-11-08 14:10:23');
INSERT INTO `aut_solicitudes_historicos` VALUES ('290', '195', '1', '2', '2', '', '2017-11-08 14:11:01', '2017-11-08 14:11:01');
INSERT INTO `aut_solicitudes_historicos` VALUES ('291', '196', '1', '2', '1', '', '2017-11-08 14:13:10', '2017-11-08 14:13:10');
INSERT INTO `aut_solicitudes_historicos` VALUES ('292', '196', '1', '2', '2', '', '2017-11-08 14:13:22', '2017-11-08 14:13:22');
INSERT INTO `aut_solicitudes_historicos` VALUES ('293', '197', '1', '2', '1', '', '2017-11-08 14:14:46', '2017-11-08 14:14:46');
INSERT INTO `aut_solicitudes_historicos` VALUES ('294', '44', '1', '2', '2', '', '2017-11-08 14:23:21', '2017-11-08 14:23:21');
INSERT INTO `aut_solicitudes_historicos` VALUES ('295', '198', '1', '2', '1', '', '2017-11-08 14:27:33', '2017-11-08 14:27:33');
INSERT INTO `aut_solicitudes_historicos` VALUES ('296', '198', '1', '2', '2', '', '2017-11-08 14:27:42', '2017-11-08 14:27:42');
INSERT INTO `aut_solicitudes_historicos` VALUES ('297', '199', '1', '2', '1', '', '2017-11-08 14:28:15', '2017-11-08 14:28:15');
INSERT INTO `aut_solicitudes_historicos` VALUES ('298', '199', '1', '2', '2', '', '2017-11-08 14:28:22', '2017-11-08 14:28:22');
INSERT INTO `aut_solicitudes_historicos` VALUES ('299', '200', '1', '2', '1', '', '2017-11-08 14:28:57', '2017-11-08 14:28:57');
INSERT INTO `aut_solicitudes_historicos` VALUES ('300', '200', '1', '2', '2', '', '2017-11-08 14:29:12', '2017-11-08 14:29:12');
INSERT INTO `aut_solicitudes_historicos` VALUES ('301', '201', '1', '2', '1', '', '2017-11-08 14:35:19', '2017-11-08 14:35:19');
INSERT INTO `aut_solicitudes_historicos` VALUES ('302', '201', '1', '2', '2', '', '2017-11-08 14:35:28', '2017-11-08 14:35:28');
INSERT INTO `aut_solicitudes_historicos` VALUES ('303', '202', '1', '2', '1', '', '2017-11-08 14:35:43', '2017-11-08 14:35:43');
INSERT INTO `aut_solicitudes_historicos` VALUES ('304', '202', '1', '2', '2', '', '2017-11-08 14:35:53', '2017-11-08 14:35:53');
INSERT INTO `aut_solicitudes_historicos` VALUES ('305', '203', '1', '2', '1', '', '2017-11-08 14:42:22', '2017-11-08 14:42:22');
INSERT INTO `aut_solicitudes_historicos` VALUES ('306', '203', '1', '2', '2', '', '2017-11-08 14:42:32', '2017-11-08 14:42:32');
INSERT INTO `aut_solicitudes_historicos` VALUES ('307', '203', '1', '2', '2', '', '2017-11-08 14:45:36', '2017-11-08 14:45:36');
INSERT INTO `aut_solicitudes_historicos` VALUES ('308', '203', '1', '2', '2', '', '2017-11-08 14:46:09', '2017-11-08 14:46:09');
INSERT INTO `aut_solicitudes_historicos` VALUES ('309', '203', '1', '2', '2', '', '2017-11-08 14:46:19', '2017-11-08 14:46:19');
INSERT INTO `aut_solicitudes_historicos` VALUES ('310', '203', '1', '2', '2', '', '2017-11-08 14:46:55', '2017-11-08 14:46:55');
INSERT INTO `aut_solicitudes_historicos` VALUES ('311', '204', '1', '2', '1', '', '2017-11-08 14:47:04', '2017-11-08 14:47:04');
INSERT INTO `aut_solicitudes_historicos` VALUES ('312', '204', '1', '2', '2', '', '2017-11-08 14:47:18', '2017-11-08 14:47:18');
INSERT INTO `aut_solicitudes_historicos` VALUES ('313', '205', '1', '2', '1', '', '2017-11-08 14:47:32', '2017-11-08 14:47:32');
INSERT INTO `aut_solicitudes_historicos` VALUES ('314', '205', '1', '2', '2', '', '2017-11-08 14:47:40', '2017-11-08 14:47:40');
INSERT INTO `aut_solicitudes_historicos` VALUES ('315', '206', '1', '2', '1', '', '2017-11-08 14:47:51', '2017-11-08 14:47:51');
INSERT INTO `aut_solicitudes_historicos` VALUES ('316', '206', '1', '2', '2', '', '2017-11-08 14:48:01', '2017-11-08 14:48:01');
INSERT INTO `aut_solicitudes_historicos` VALUES ('317', '207', '1', '2', '1', '', '2017-11-08 14:48:10', '2017-11-08 14:48:10');
INSERT INTO `aut_solicitudes_historicos` VALUES ('318', '207', '1', '2', '2', '', '2017-11-08 14:48:19', '2017-11-08 14:48:19');
INSERT INTO `aut_solicitudes_historicos` VALUES ('319', '208', '1', '2', '1', '', '2017-11-08 14:48:35', '2017-11-08 14:48:35');
INSERT INTO `aut_solicitudes_historicos` VALUES ('320', '208', '1', '2', '2', '', '2017-11-08 14:48:45', '2017-11-08 14:48:45');
INSERT INTO `aut_solicitudes_historicos` VALUES ('321', '209', '1', '2', '1', '', '2017-11-08 14:48:53', '2017-11-08 14:48:53');
INSERT INTO `aut_solicitudes_historicos` VALUES ('322', '209', '1', '2', '2', '', '2017-11-08 14:49:04', '2017-11-08 14:49:04');
INSERT INTO `aut_solicitudes_historicos` VALUES ('323', '210', '1', '2', '1', '', '2017-11-08 14:49:27', '2017-11-08 14:49:27');
INSERT INTO `aut_solicitudes_historicos` VALUES ('324', '210', '1', '2', '2', '', '2017-11-08 14:49:33', '2017-11-08 14:49:33');
INSERT INTO `aut_solicitudes_historicos` VALUES ('325', '211', '1', '2', '1', '', '2017-11-08 14:50:26', '2017-11-08 14:50:26');
INSERT INTO `aut_solicitudes_historicos` VALUES ('326', '211', '1', '2', '2', '', '2017-11-08 14:50:34', '2017-11-08 14:50:34');
INSERT INTO `aut_solicitudes_historicos` VALUES ('327', '212', '1', '2', '1', '', '2017-11-08 14:51:01', '2017-11-08 14:51:01');
INSERT INTO `aut_solicitudes_historicos` VALUES ('328', '212', '1', '2', '2', '', '2017-11-08 14:51:08', '2017-11-08 14:51:08');
INSERT INTO `aut_solicitudes_historicos` VALUES ('329', '213', '1', '2', '1', '', '2017-11-08 14:51:24', '2017-11-08 14:51:24');
INSERT INTO `aut_solicitudes_historicos` VALUES ('330', '214', '1', '2', '1', '', '2017-11-08 14:52:21', '2017-11-08 14:52:21');
INSERT INTO `aut_solicitudes_historicos` VALUES ('331', '214', '1', '2', '2', '', '2017-11-08 14:52:28', '2017-11-08 14:52:28');
INSERT INTO `aut_solicitudes_historicos` VALUES ('332', '215', '1', '2', '1', '', '2017-11-08 14:53:05', '2017-11-08 14:53:05');
INSERT INTO `aut_solicitudes_historicos` VALUES ('333', '215', '1', '2', '2', '', '2017-11-08 14:53:14', '2017-11-08 14:53:14');
INSERT INTO `aut_solicitudes_historicos` VALUES ('334', '213', '1', '2', '2', '', '2017-11-08 15:28:47', '2017-11-08 15:28:47');
INSERT INTO `aut_solicitudes_historicos` VALUES ('335', '216', '1', '2', '1', '', '2017-11-08 15:31:24', '2017-11-08 15:31:24');
INSERT INTO `aut_solicitudes_historicos` VALUES ('336', '216', '1', '2', '5', '', '2017-11-08 15:31:30', '2017-11-08 15:31:30');
INSERT INTO `aut_solicitudes_historicos` VALUES ('337', '217', '1', '2', '1', '', '2017-11-08 15:33:26', '2017-11-08 15:33:26');
INSERT INTO `aut_solicitudes_historicos` VALUES ('338', '218', '1', '2', '1', '', '2017-11-08 15:41:30', '2017-11-08 15:41:30');
INSERT INTO `aut_solicitudes_historicos` VALUES ('339', '218', '1', '2', '2', 'sdad', '2017-11-08 15:41:38', '2017-11-08 15:41:38');
INSERT INTO `aut_solicitudes_historicos` VALUES ('340', '218', '1', '2', '2', '', '2017-11-08 15:42:23', '2017-11-08 15:42:23');
INSERT INTO `aut_solicitudes_historicos` VALUES ('341', '218', '1', '2', '2', '', '2017-11-08 15:42:53', '2017-11-08 15:42:53');
INSERT INTO `aut_solicitudes_historicos` VALUES ('342', '218', '1', '2', '2', '', '2017-11-08 15:43:27', '2017-11-08 15:43:27');
INSERT INTO `aut_solicitudes_historicos` VALUES ('343', '218', '1', '2', '2', '', '2017-11-08 15:43:36', '2017-11-08 15:43:36');
INSERT INTO `aut_solicitudes_historicos` VALUES ('344', '219', '1', '2', '1', '', '2017-11-08 15:58:20', '2017-11-08 15:58:20');
INSERT INTO `aut_solicitudes_historicos` VALUES ('345', '219', '1', '2', '2', '', '2017-11-08 16:03:54', '2017-11-08 16:03:54');
INSERT INTO `aut_solicitudes_historicos` VALUES ('346', '220', '1', '2', '1', '', '2017-11-09 09:23:01', '2017-11-09 09:23:01');
INSERT INTO `aut_solicitudes_historicos` VALUES ('347', '221', '2', '2', '1', '', '2017-11-09 11:03:46', '2017-11-09 11:03:46');
INSERT INTO `aut_solicitudes_historicos` VALUES ('348', '222', '1', '2', '1', '', '2017-12-14 15:55:21', '2017-12-14 15:55:21');
INSERT INTO `aut_solicitudes_historicos` VALUES ('349', '223', '1', '2', '1', '', '2017-12-14 15:57:59', '2017-12-14 15:57:59');
INSERT INTO `aut_solicitudes_historicos` VALUES ('350', '224', '1', '2', '1', '', '2017-12-14 16:36:30', '2017-12-14 16:36:30');
INSERT INTO `aut_solicitudes_historicos` VALUES ('351', '224', '1', '2', '2', 'asdad', '2017-12-14 16:36:46', '2017-12-14 16:36:46');
INSERT INTO `aut_solicitudes_historicos` VALUES ('352', '224', '2', '3', '2', 'acepta', '2017-12-14 16:38:04', '2017-12-14 16:38:04');
INSERT INTO `aut_solicitudes_historicos` VALUES ('353', '224', '3', '1', '5', 'si ', '2017-12-14 16:51:20', '2017-12-14 16:51:20');
INSERT INTO `aut_solicitudes_historicos` VALUES ('354', '225', '1', '2', '1', '', '2017-12-18 16:07:58', '2017-12-18 16:07:58');
INSERT INTO `aut_solicitudes_historicos` VALUES ('355', '225', '1', '2', '2', 'asdasd', '2017-12-18 16:08:08', '2017-12-18 16:08:08');
INSERT INTO `aut_solicitudes_historicos` VALUES ('356', '226', '1', '2', '1', '', '2017-12-18 16:28:46', '2017-12-18 16:28:46');
INSERT INTO `aut_solicitudes_historicos` VALUES ('357', '227', '1', '2', '1', '', '2017-12-18 16:30:07', '2017-12-18 16:30:07');
INSERT INTO `aut_solicitudes_historicos` VALUES ('358', '223', '1', '2', '2', 'ASDASDASD', '2017-12-18 16:37:45', '2017-12-18 16:37:45');
INSERT INTO `aut_solicitudes_historicos` VALUES ('359', '228', '1', '2', '1', '', '2017-12-29 11:42:49', '2017-12-29 11:42:49');
INSERT INTO `aut_solicitudes_historicos` VALUES ('360', '228', '1', '2', '2', '3333', '2017-12-29 11:43:02', '2017-12-29 11:43:02');
INSERT INTO `aut_solicitudes_historicos` VALUES ('361', '229', '1', '2', '1', '', '2017-12-29 11:47:01', '2017-12-29 11:47:01');
INSERT INTO `aut_solicitudes_historicos` VALUES ('362', '229', '1', '2', '2', 'asdasd', '2017-12-29 11:47:09', '2017-12-29 11:47:09');
INSERT INTO `aut_solicitudes_historicos` VALUES ('363', '230', '1', '2', '1', '', '2017-12-29 11:50:17', '2017-12-29 11:50:17');
INSERT INTO `aut_solicitudes_historicos` VALUES ('364', '230', '1', '2', '2', 'asdad', '2017-12-29 11:50:25', '2017-12-29 11:50:25');
INSERT INTO `aut_solicitudes_historicos` VALUES ('365', '230', '1', '2', '2', 'asdad', '2017-12-29 11:50:30', '2017-12-29 11:50:30');
INSERT INTO `aut_solicitudes_historicos` VALUES ('366', '230', '1', '2', '2', 'asdad', '2017-12-29 11:50:45', '2017-12-29 11:50:45');
INSERT INTO `aut_solicitudes_historicos` VALUES ('367', '231', '1', '2', '1', '', '2017-12-29 11:52:25', '2017-12-29 11:52:25');
INSERT INTO `aut_solicitudes_historicos` VALUES ('368', '232', '1', '2', '1', '', '2017-12-29 12:11:36', '2017-12-29 12:11:36');
INSERT INTO `aut_solicitudes_historicos` VALUES ('369', '233', '1', '2', '1', '', '2017-12-29 12:13:19', '2017-12-29 12:13:19');
INSERT INTO `aut_solicitudes_historicos` VALUES ('370', '234', '1', '2', '1', '', '2017-12-29 12:34:30', '2017-12-29 12:34:30');
INSERT INTO `aut_solicitudes_historicos` VALUES ('371', '235', '1', '2', '1', '', '2017-12-29 12:35:45', '2017-12-29 12:35:45');
INSERT INTO `aut_solicitudes_historicos` VALUES ('372', '236', '1', '2', '1', '', '2017-12-29 12:42:03', '2017-12-29 12:42:03');
INSERT INTO `aut_solicitudes_historicos` VALUES ('373', '237', '1', '2', '1', '', '2017-12-29 12:43:12', '2017-12-29 12:43:12');
INSERT INTO `aut_solicitudes_historicos` VALUES ('374', '237', '1', '2', '2', '', '2017-12-29 12:52:56', '2017-12-29 12:52:56');
INSERT INTO `aut_solicitudes_historicos` VALUES ('375', '238', '1', '2', '1', '', '2017-12-29 12:54:32', '2017-12-29 12:54:32');
INSERT INTO `aut_solicitudes_historicos` VALUES ('376', '238', '1', '2', '2', '', '2017-12-29 12:54:43', '2017-12-29 12:54:43');
INSERT INTO `aut_solicitudes_historicos` VALUES ('378', '238', '2', '2', '5', 'asdasda', '2017-12-29 13:52:19', '2017-12-29 13:52:19');
INSERT INTO `aut_solicitudes_historicos` VALUES ('379', '239', '1', '2', '1', '', '2017-12-29 13:54:21', '2017-12-29 13:54:21');
INSERT INTO `aut_solicitudes_historicos` VALUES ('380', '239', '1', '2', '2', 'FAVOR APROBAR', '2017-12-29 13:54:41', '2017-12-29 13:54:41');
INSERT INTO `aut_solicitudes_historicos` VALUES ('381', '239', '2', '2', '5', 'asddad', '2017-12-29 13:56:08', '2017-12-29 13:56:08');
INSERT INTO `aut_solicitudes_historicos` VALUES ('382', '240', '1', '2', '1', '', '2017-12-29 14:00:31', '2017-12-29 14:00:31');
INSERT INTO `aut_solicitudes_historicos` VALUES ('383', '240', '1', '2', '2', 'uuuuu', '2017-12-29 14:00:42', '2017-12-29 14:00:42');
INSERT INTO `aut_solicitudes_historicos` VALUES ('447', '240', '2', '3', '5', 'asad', '2017-12-29 17:10:17', '2017-12-29 17:10:17');
INSERT INTO `aut_solicitudes_historicos` VALUES ('448', '241', '1', '2', '1', '', '2018-01-23 10:39:02', '2018-01-23 10:39:02');

-- ----------------------------
-- Table structure for aut_solicitudes_transportes
-- ----------------------------
DROP TABLE IF EXISTS `aut_solicitudes_transportes`;
CREATE TABLE `aut_solicitudes_transportes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tipo_transporte` enum('Terrestre','Aereo') COLLATE utf8_unicode_ci NOT NULL,
  `solicitud_id` int(10) unsigned NOT NULL,
  `referencia` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ciudad_origen_id` int(10) unsigned DEFAULT NULL,
  `ciudad_origen_otro` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ciudad_destino_id` int(10) unsigned DEFAULT NULL,
  `ciudad_destino_otro` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fecha_origen` date NOT NULL,
  `hora_origen` time NOT NULL,
  `fecha_destino` date NOT NULL,
  `hora_destino` time NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `aut_solicitudes_transportes_solicitud_id_foreign` (`solicitud_id`),
  KEY `aut_solicitudes_transportes_ciudad_origen_id_foreign` (`ciudad_origen_id`),
  KEY `aut_solicitudes_transportes_ciudad_destino_id_foreign` (`ciudad_destino_id`),
  CONSTRAINT `aut_solicitudes_transportes_ciudad_destino_id_foreign` FOREIGN KEY (`ciudad_destino_id`) REFERENCES `ciudades` (`id`),
  CONSTRAINT `aut_solicitudes_transportes_ciudad_origen_id_foreign` FOREIGN KEY (`ciudad_origen_id`) REFERENCES `ciudades` (`id`),
  CONSTRAINT `aut_solicitudes_transportes_solicitud_id_foreign` FOREIGN KEY (`solicitud_id`) REFERENCES `aut_solicitudes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of aut_solicitudes_transportes
-- ----------------------------
INSERT INTO `aut_solicitudes_transportes` VALUES ('13', 'Terrestre', '43', 'PBE1234', '19', '', '10', '', '2017-07-26', '08:00:00', '2017-07-26', '20:00:00', '2017-07-26 10:04:41', '2017-07-26 10:04:41');
INSERT INTO `aut_solicitudes_transportes` VALUES ('14', 'Terrestre', '44', 'PRF2345', '19', '', '11', '', '2017-07-26', '09:30:00', '2017-07-26', '18:30:00', '2017-07-26 11:43:43', '2017-07-26 11:43:43');
INSERT INTO `aut_solicitudes_transportes` VALUES ('15', 'Terrestre', '44', 'PRF2345', '11', '', '19', '', '2017-07-26', '18:30:00', '2017-07-26', '21:30:00', '2017-07-26 11:44:04', '2017-07-26 11:44:04');
INSERT INTO `aut_solicitudes_transportes` VALUES ('16', 'Terrestre', '45', 'PNN123', '5', '', '1', '', '2017-07-31', '07:00:00', '2017-07-31', '17:00:00', '2017-07-31 10:31:36', '2017-07-31 10:31:36');
INSERT INTO `aut_solicitudes_transportes` VALUES ('17', 'Terrestre', '46', 'TRTR234', '1', '', '12', '', '2017-07-31', '07:00:00', '2017-07-31', '17:00:00', '2017-07-31 10:32:21', '2017-07-31 10:32:21');
INSERT INTO `aut_solicitudes_transportes` VALUES ('18', 'Terrestre', '73', '-', '19', '', '10', '', '2017-08-16', '07:00:00', '2017-08-16', '17:00:00', '2017-08-16 11:13:26', '2017-08-16 11:13:26');
INSERT INTO `aut_solicitudes_transportes` VALUES ('19', 'Terrestre', '73', '-', '19', '', '10', '', '2017-08-16', '07:00:00', '2017-08-16', '17:00:00', '2017-08-16 11:13:33', '2017-08-16 11:13:33');
INSERT INTO `aut_solicitudes_transportes` VALUES ('20', 'Terrestre', '78', 'PBS123', '19', '', '1', '', '2017-08-28', '07:00:00', '2017-08-28', '17:00:00', '2017-08-28 08:44:09', '2017-08-28 08:44:09');
INSERT INTO `aut_solicitudes_transportes` VALUES ('21', 'Terrestre', '79', 'ABC111', '13', '', '6', '', '2017-08-29', '07:00:00', '2017-08-29', '17:00:00', '2017-08-29 06:28:57', '2017-08-29 06:28:57');
INSERT INTO `aut_solicitudes_transportes` VALUES ('22', 'Terrestre', '83', 'abs123', '19', '', '25', 'Santa Rosa', '2017-08-29', '07:00:00', '0000-00-00', '17:00:00', '2017-08-29 09:18:41', '2017-08-29 09:18:41');
INSERT INTO `aut_solicitudes_transportes` VALUES ('23', 'Terrestre', '141', 'asd123', '1', '', '1', '', '2017-09-07', '00:00:00', '2017-09-07', '17:00:00', '2017-09-07 16:22:23', '2017-09-07 16:22:23');
INSERT INTO `aut_solicitudes_transportes` VALUES ('24', 'Terrestre', '106', '', '1', '', '1', '', '2017-09-11', '00:00:00', '2017-09-11', '17:00:00', '2017-09-11 16:13:33', '2017-09-11 16:13:33');
INSERT INTO `aut_solicitudes_transportes` VALUES ('25', 'Terrestre', '145', 'PBA123', '1', '', '1', '', '2017-09-13', '00:00:00', '2017-09-13', '17:00:00', '2017-09-13 16:12:14', '2017-09-13 16:12:14');
INSERT INTO `aut_solicitudes_transportes` VALUES ('26', 'Terrestre', '145', 'PBA123', '5', '', '6', '', '2017-09-13', '00:00:00', '0000-00-00', '18:00:00', '2017-09-13 16:13:25', '2017-09-13 16:13:25');
INSERT INTO `aut_solicitudes_transportes` VALUES ('27', 'Terrestre', '147', 'ABC123', '4', '', '1', '', '2017-09-19', '00:00:00', '2017-09-19', '17:00:00', '2017-09-19 16:36:25', '2017-09-19 16:36:25');
INSERT INTO `aut_solicitudes_transportes` VALUES ('28', 'Terrestre', '101', 'abc111', '10', '', '19', '', '2017-09-19', '00:00:00', '2017-09-19', '17:00:00', '2017-09-19 17:22:23', '2017-09-19 17:22:23');
INSERT INTO `aut_solicitudes_transportes` VALUES ('29', 'Aereo', '101', 'ererer', '10', '', '1', '', '2017-09-22', '00:00:00', '2017-09-22', '17:00:00', '2017-09-22 15:07:41', '2017-09-22 15:07:41');
INSERT INTO `aut_solicitudes_transportes` VALUES ('30', 'Terrestre', '148', '', '3', '', '1', '', '2017-09-25', '00:00:00', '2017-09-25', '17:00:00', '2017-09-25 16:00:08', '2017-09-25 16:00:08');
INSERT INTO `aut_solicitudes_transportes` VALUES ('32', 'Terrestre', '103', '', '19', '', '18', '', '2017-10-02', '00:00:00', '2017-10-02', '13:00:00', '2017-10-02 11:26:46', '2017-10-02 11:26:46');
INSERT INTO `aut_solicitudes_transportes` VALUES ('33', 'Terrestre', '100', '', '1', '', '1', '', '2017-10-02', '00:00:00', '2017-10-02', '17:00:00', '2017-10-02 18:54:15', '2017-10-02 18:54:15');
INSERT INTO `aut_solicitudes_transportes` VALUES ('34', 'Terrestre', '125', '', '7', '', '1', '', '2017-10-02', '00:00:00', '2017-10-02', '17:00:00', '2017-10-02 19:25:48', '2017-10-02 19:25:48');
INSERT INTO `aut_solicitudes_transportes` VALUES ('36', 'Terrestre', '150', 'aaaa', '19', '', '1', '', '2017-09-26', '00:00:00', '2017-09-26', '17:00:00', '2017-10-05 09:54:21', '2017-10-05 09:54:21');
INSERT INTO `aut_solicitudes_transportes` VALUES ('37', 'Terrestre', '142', '', '19', '', '8', '', '2017-09-12', '00:00:00', '2017-09-12', '17:00:00', '2017-10-05 16:12:21', '2017-10-05 16:12:21');
INSERT INTO `aut_solicitudes_transportes` VALUES ('38', 'Terrestre', '142', 'ABC123', '19', '', '8', '', '2017-09-12', '00:00:00', '2017-09-13', '17:00:00', '2017-10-24 15:06:40', '2017-10-24 15:06:40');
INSERT INTO `aut_solicitudes_transportes` VALUES ('39', 'Aereo', '165', 'TAME', '19', '', '1', '', '2017-10-24', '00:00:00', '2017-10-24', '09:00:00', '2017-10-24 18:56:39', '2017-10-24 18:56:39');
INSERT INTO `aut_solicitudes_transportes` VALUES ('40', 'Aereo', '165', 'TAME', '1', '', '19', '', '2017-10-24', '00:00:00', '2017-10-24', '18:00:00', '2017-10-24 18:57:04', '2017-10-24 18:57:04');
INSERT INTO `aut_solicitudes_transportes` VALUES ('41', 'Aereo', '166', 'avianca', '19', '', '16', '', '2017-10-30', '00:00:00', '2017-10-30', '17:00:00', '2017-10-26 16:55:21', '2017-10-26 16:55:21');
INSERT INTO `aut_solicitudes_transportes` VALUES ('42', 'Aereo', '166', 'tame', '19', '', '16', '', '2017-10-30', '00:00:00', '2017-11-01', '17:00:00', '2017-10-26 16:57:10', '2017-10-26 16:57:10');
INSERT INTO `aut_solicitudes_transportes` VALUES ('43', 'Terrestre', '167', '1213', '19', '', '1', '', '2017-11-08', '00:00:00', '2017-11-08', '17:00:00', '2017-11-08 09:14:21', '2017-11-08 09:14:21');
INSERT INTO `aut_solicitudes_transportes` VALUES ('44', 'Terrestre', '168', '665', '19', '', '1', '', '2017-11-08', '00:00:00', '2017-11-08', '17:00:00', '2017-11-08 09:28:28', '2017-11-08 09:28:28');
INSERT INTO `aut_solicitudes_transportes` VALUES ('45', 'Terrestre', '169', '3214', '19', '', '1', '', '2017-11-08', '00:00:00', '2017-11-08', '17:00:00', '2017-11-08 09:30:04', '2017-11-08 09:30:04');
INSERT INTO `aut_solicitudes_transportes` VALUES ('46', 'Terrestre', '170', '444', '19', '', '1', '', '2017-11-08', '00:00:00', '2017-11-08', '17:00:00', '2017-11-08 09:32:18', '2017-11-08 09:32:18');
INSERT INTO `aut_solicitudes_transportes` VALUES ('47', 'Terrestre', '171', '666', '19', '', '1', '', '2017-11-08', '00:00:00', '2017-11-08', '17:00:00', '2017-11-08 09:32:55', '2017-11-08 09:32:55');
INSERT INTO `aut_solicitudes_transportes` VALUES ('48', 'Terrestre', '172', '555', '19', '', '1', '', '2017-11-08', '00:00:00', '2017-11-08', '17:00:00', '2017-11-08 09:36:20', '2017-11-08 09:36:20');
INSERT INTO `aut_solicitudes_transportes` VALUES ('49', 'Terrestre', '173', '888', '19', '', '1', '', '2017-11-08', '00:00:00', '2017-11-08', '17:00:00', '2017-11-08 09:40:27', '2017-11-08 09:40:27');
INSERT INTO `aut_solicitudes_transportes` VALUES ('50', 'Terrestre', '174', '777', '19', '', '1', '', '2017-11-08', '00:00:00', '2017-11-08', '17:00:00', '2017-11-08 09:42:36', '2017-11-08 09:42:36');
INSERT INTO `aut_solicitudes_transportes` VALUES ('51', 'Terrestre', '175', 'iii', '19', '', '1', '', '2017-11-08', '00:00:00', '2017-11-08', '17:00:00', '2017-11-08 09:49:13', '2017-11-08 09:49:13');
INSERT INTO `aut_solicitudes_transportes` VALUES ('52', 'Terrestre', '176', '56757', '19', '', '1', '', '2017-11-08', '00:00:00', '2017-11-08', '17:00:00', '2017-11-08 09:53:12', '2017-11-08 09:53:12');
INSERT INTO `aut_solicitudes_transportes` VALUES ('53', 'Terrestre', '177', 'iuiuiui', '19', '', '1', '', '2017-11-08', '00:00:00', '2017-11-08', '17:00:00', '2017-11-08 09:54:40', '2017-11-08 09:54:40');
INSERT INTO `aut_solicitudes_transportes` VALUES ('54', 'Terrestre', '178', 'asdad', '19', '', '1', '', '2017-11-08', '00:00:00', '2017-11-08', '17:00:00', '2017-11-08 10:11:28', '2017-11-08 10:11:28');
INSERT INTO `aut_solicitudes_transportes` VALUES ('55', 'Terrestre', '179', 'asda', '19', '', '1', '', '2017-11-08', '00:00:00', '2017-11-08', '17:00:00', '2017-11-08 11:20:20', '2017-11-08 11:20:20');
INSERT INTO `aut_solicitudes_transportes` VALUES ('56', 'Terrestre', '180', '456456', '19', '', '1', '', '2017-11-08', '00:00:00', '2017-11-08', '17:00:00', '2017-11-08 11:28:27', '2017-11-08 11:28:27');
INSERT INTO `aut_solicitudes_transportes` VALUES ('57', 'Terrestre', '181', 'asd', '19', '', '1', '', '2017-11-08', '00:00:00', '2017-11-08', '17:00:00', '2017-11-08 11:33:18', '2017-11-08 11:33:18');
INSERT INTO `aut_solicitudes_transportes` VALUES ('58', 'Terrestre', '182', 'asda', '19', '', '1', '', '2017-11-08', '00:00:00', '2017-11-08', '17:00:00', '2017-11-08 11:34:56', '2017-11-08 11:34:56');
INSERT INTO `aut_solicitudes_transportes` VALUES ('59', 'Terrestre', '183', 'asdasd', '19', '', '1', '', '2017-11-08', '00:00:00', '2017-11-08', '17:00:00', '2017-11-08 11:41:22', '2017-11-08 11:41:22');
INSERT INTO `aut_solicitudes_transportes` VALUES ('60', 'Terrestre', '185', '2342', '19', '', '1', '', '2017-11-08', '00:00:00', '2017-11-08', '17:00:00', '2017-11-08 11:51:20', '2017-11-08 11:51:20');
INSERT INTO `aut_solicitudes_transportes` VALUES ('61', 'Terrestre', '186', 'asda', '19', '', '1', '', '2017-11-08', '00:00:00', '2017-11-08', '17:00:00', '2017-11-08 11:55:20', '2017-11-08 11:55:20');
INSERT INTO `aut_solicitudes_transportes` VALUES ('67', 'Terrestre', '187', '3455', '19', '', '1', '', '2017-11-08', '00:00:00', '2017-11-08', '17:00:00', '2017-11-08 12:10:00', '2017-11-08 12:10:00');
INSERT INTO `aut_solicitudes_transportes` VALUES ('68', 'Terrestre', '188', '345', '19', '', '1', '', '2017-11-08', '00:00:00', '2017-11-08', '17:00:00', '2017-11-08 12:11:26', '2017-11-08 12:11:26');
INSERT INTO `aut_solicitudes_transportes` VALUES ('69', 'Terrestre', '189', '3453', '19', '', '1', '', '2017-11-08', '00:00:00', '2017-11-08', '17:00:00', '2017-11-08 12:17:29', '2017-11-08 12:17:29');
INSERT INTO `aut_solicitudes_transportes` VALUES ('70', 'Terrestre', '190', '34535', '19', '', '1', '', '2017-11-08', '00:00:00', '2017-11-08', '17:00:00', '2017-11-08 12:18:15', '2017-11-08 12:18:15');
INSERT INTO `aut_solicitudes_transportes` VALUES ('71', 'Terrestre', '191', '3243', '19', '', '1', '', '2017-11-08', '00:00:00', '2017-11-08', '17:00:00', '2017-11-08 12:21:24', '2017-11-08 12:21:24');
INSERT INTO `aut_solicitudes_transportes` VALUES ('72', 'Terrestre', '192', '23424', '19', '', '1', '', '2017-11-08', '00:00:00', '2017-11-08', '17:00:00', '2017-11-08 12:21:57', '2017-11-08 12:21:57');
INSERT INTO `aut_solicitudes_transportes` VALUES ('73', 'Terrestre', '193', 'asd234', '19', '', '1', '', '2017-11-08', '00:00:00', '2017-11-08', '17:00:00', '2017-11-08 13:52:03', '2017-11-08 13:52:03');
INSERT INTO `aut_solicitudes_transportes` VALUES ('74', 'Terrestre', '194', '234', '19', '', '1', '', '2017-11-08', '00:00:00', '2017-11-08', '17:00:00', '2017-11-08 14:03:24', '2017-11-08 14:03:24');
INSERT INTO `aut_solicitudes_transportes` VALUES ('75', 'Terrestre', '195', 'asdas', '19', '', '1', '', '2017-11-08', '00:00:00', '2017-11-08', '17:00:00', '2017-11-08 14:10:57', '2017-11-08 14:10:57');
INSERT INTO `aut_solicitudes_transportes` VALUES ('76', 'Terrestre', '196', 'afsdfa', '19', '', '1', '', '2017-11-08', '00:00:00', '2017-11-08', '17:00:00', '2017-11-08 14:13:18', '2017-11-08 14:13:18');
INSERT INTO `aut_solicitudes_transportes` VALUES ('77', 'Terrestre', '197', 'adasdas', '19', '', '1', '', '2017-11-08', '00:00:00', '2017-11-08', '17:00:00', '2017-11-08 14:14:56', '2017-11-08 14:14:56');
INSERT INTO `aut_solicitudes_transportes` VALUES ('78', 'Terrestre', '198', 'asd', '19', '', '1', '', '2017-11-08', '00:00:00', '2017-11-08', '17:00:00', '2017-11-08 14:27:37', '2017-11-08 14:27:37');
INSERT INTO `aut_solicitudes_transportes` VALUES ('79', 'Terrestre', '199', 'asas', '19', '', '1', '', '2017-11-08', '00:00:00', '2017-11-08', '17:00:00', '2017-11-08 14:28:18', '2017-11-08 14:28:18');
INSERT INTO `aut_solicitudes_transportes` VALUES ('80', 'Terrestre', '200', 'asdfadf', '19', '', '1', '', '2017-11-08', '00:00:00', '2017-11-08', '17:00:00', '2017-11-08 14:29:05', '2017-11-08 14:29:05');
INSERT INTO `aut_solicitudes_transportes` VALUES ('81', 'Terrestre', '201', 'sdfsf', '19', '', '1', '', '2017-11-08', '00:00:00', '2017-11-08', '17:00:00', '2017-11-08 14:35:23', '2017-11-08 14:35:23');
INSERT INTO `aut_solicitudes_transportes` VALUES ('82', 'Terrestre', '202', 'asda', '19', '', '1', '', '2017-11-08', '00:00:00', '2017-11-08', '17:00:00', '2017-11-08 14:35:47', '2017-11-08 14:35:47');
INSERT INTO `aut_solicitudes_transportes` VALUES ('83', 'Terrestre', '203', 'sdf345', '19', '', '1', '', '2017-11-08', '00:00:00', '2017-11-08', '17:00:00', '2017-11-08 14:42:28', '2017-11-08 14:42:28');
INSERT INTO `aut_solicitudes_transportes` VALUES ('84', 'Terrestre', '204', 'asdasd', '19', '', '1', '', '2017-11-08', '00:00:00', '2017-11-08', '17:00:00', '2017-11-08 14:47:09', '2017-11-08 14:47:09');
INSERT INTO `aut_solicitudes_transportes` VALUES ('85', 'Terrestre', '204', 'asdasd', '19', '', '1', '', '2017-11-08', '00:00:00', '2017-11-08', '17:00:00', '2017-11-08 14:47:12', '2017-11-08 14:47:12');
INSERT INTO `aut_solicitudes_transportes` VALUES ('86', 'Terrestre', '205', '678', '19', '', '1', '', '2017-11-08', '00:00:00', '2017-11-08', '17:00:00', '2017-11-08 14:47:36', '2017-11-08 14:47:36');
INSERT INTO `aut_solicitudes_transportes` VALUES ('87', 'Terrestre', '206', 'asdasd', '19', '', '1', '', '2017-11-08', '00:00:00', '2017-11-08', '17:00:00', '2017-11-08 14:47:57', '2017-11-08 14:47:57');
INSERT INTO `aut_solicitudes_transportes` VALUES ('88', 'Terrestre', '207', 'rty', '19', '', '1', '', '2017-11-08', '00:00:00', '2017-11-08', '17:00:00', '2017-11-08 14:48:14', '2017-11-08 14:48:14');
INSERT INTO `aut_solicitudes_transportes` VALUES ('89', 'Terrestre', '208', 'vxcx', '19', '', '1', '', '2017-11-08', '00:00:00', '2017-11-08', '17:00:00', '2017-11-08 14:48:41', '2017-11-08 14:48:41');
INSERT INTO `aut_solicitudes_transportes` VALUES ('90', 'Terrestre', '209', 'asd', '19', '', '1', '', '2017-11-08', '00:00:00', '2017-11-08', '17:00:00', '2017-11-08 14:48:56', '2017-11-08 14:48:56');
INSERT INTO `aut_solicitudes_transportes` VALUES ('91', 'Terrestre', '210', 'asa', '19', '', '1', '', '2017-11-08', '00:00:00', '2017-11-08', '17:00:00', '2017-11-08 14:49:31', '2017-11-08 14:49:31');
INSERT INTO `aut_solicitudes_transportes` VALUES ('92', 'Terrestre', '211', 'asdas234', '19', '', '1', '', '2017-11-08', '00:00:00', '2017-11-08', '17:00:00', '2017-11-08 14:50:31', '2017-11-08 14:50:31');
INSERT INTO `aut_solicitudes_transportes` VALUES ('93', 'Terrestre', '212', 'asda', '19', '', '1', '', '2017-11-08', '00:00:00', '2017-11-08', '17:00:00', '2017-11-08 14:51:06', '2017-11-08 14:51:06');
INSERT INTO `aut_solicitudes_transportes` VALUES ('94', 'Terrestre', '213', 'asdasd', '19', '', '1', '', '2017-11-08', '00:00:00', '2017-11-08', '17:00:00', '2017-11-08 14:51:29', '2017-11-08 14:51:29');
INSERT INTO `aut_solicitudes_transportes` VALUES ('95', 'Terrestre', '214', 'asda', '19', '', '1', '', '2017-11-08', '00:00:00', '2017-11-08', '17:00:00', '2017-11-08 14:52:25', '2017-11-08 14:52:25');
INSERT INTO `aut_solicitudes_transportes` VALUES ('96', 'Terrestre', '215', 'adasd', '19', '', '1', '', '2017-11-08', '00:00:00', '2017-11-08', '17:00:00', '2017-11-08 14:53:09', '2017-11-08 14:53:09');
INSERT INTO `aut_solicitudes_transportes` VALUES ('97', 'Terrestre', '216', 'asdad', '19', '', '1', '', '2017-11-08', '00:00:00', '2017-11-08', '17:00:00', '2017-11-08 15:31:27', '2017-11-08 15:31:27');
INSERT INTO `aut_solicitudes_transportes` VALUES ('98', 'Terrestre', '217', 'asdad', '19', '', '1', '', '2017-11-08', '00:00:00', '2017-11-08', '17:00:00', '2017-11-08 15:33:31', '2017-11-08 15:33:31');
INSERT INTO `aut_solicitudes_transportes` VALUES ('99', 'Terrestre', '218', 'asda', '19', '', '1', '', '2017-11-08', '00:00:00', '2017-11-08', '17:00:00', '2017-11-08 15:41:34', '2017-11-08 15:41:34');
INSERT INTO `aut_solicitudes_transportes` VALUES ('100', 'Terrestre', '219', 'asdad', '19', '', '1', '', '2017-11-08', '00:00:00', '2017-11-08', '17:00:00', '2017-11-08 15:58:24', '2017-11-08 15:58:24');
INSERT INTO `aut_solicitudes_transportes` VALUES ('101', 'Terrestre', '220', 'asda', '19', '', '1', '', '2017-11-09', '00:00:00', '2017-11-09', '17:00:00', '2017-11-09 09:23:05', '2017-11-09 09:23:05');
INSERT INTO `aut_solicitudes_transportes` VALUES ('102', 'Terrestre', '221', 'efb232', '25', 'adasd', '25', 'aasd', '2017-11-22', '00:00:00', '2017-11-24', '17:00:00', '2017-11-09 11:13:29', '2017-11-09 11:13:29');
INSERT INTO `aut_solicitudes_transportes` VALUES ('106', 'Terrestre', '224', 'sdfsf', '19', '', '1', '', '2017-12-14', '00:00:00', '2017-12-14', '17:00:00', '2017-12-14 16:36:35', '2017-12-14 16:36:35');
INSERT INTO `aut_solicitudes_transportes` VALUES ('107', 'Terrestre', '225', 'asdasd', '19', '', '1', '', '2017-12-18', '00:00:00', '2017-12-18', '17:00:00', '2017-12-18 16:08:04', '2017-12-18 16:08:04');
INSERT INTO `aut_solicitudes_transportes` VALUES ('108', 'Terrestre', '223', 'PBS123', '19', '', '10', '', '2017-12-14', '00:00:00', '2017-12-14', '17:00:00', '2017-12-18 16:37:11', '2017-12-18 16:37:11');
INSERT INTO `aut_solicitudes_transportes` VALUES ('109', 'Terrestre', '223', 'PBS123', '10', '', '7', '', '2017-12-14', '00:00:00', '2017-12-14', '17:00:00', '2017-12-18 16:37:25', '2017-12-18 16:37:25');
INSERT INTO `aut_solicitudes_transportes` VALUES ('110', 'Terrestre', '223', 'PBS123', '7', '', '12', '', '2017-12-14', '00:00:00', '2017-12-14', '17:00:00', '2017-12-18 16:37:33', '2017-12-18 16:37:33');
INSERT INTO `aut_solicitudes_transportes` VALUES ('111', 'Terrestre', '226', '', '19', '', '1', '', '2017-12-18', '00:00:00', '2017-12-18', '17:00:00', '2017-12-18 16:39:14', '2017-12-18 16:39:14');
INSERT INTO `aut_solicitudes_transportes` VALUES ('112', 'Terrestre', '226', '', '19', '', '12', '', '2017-12-18', '00:00:00', '2017-12-18', '17:00:00', '2017-12-18 16:39:17', '2017-12-18 16:39:17');
INSERT INTO `aut_solicitudes_transportes` VALUES ('113', 'Terrestre', '226', '', '19', '', '25', 'Pueblo Arrecho', '2017-12-18', '00:00:00', '2017-12-18', '17:00:00', '2017-12-18 16:42:05', '2017-12-18 16:42:05');
INSERT INTO `aut_solicitudes_transportes` VALUES ('114', 'Terrestre', '228', '', '19', '', '1', '', '2017-12-29', '00:00:00', '2017-12-29', '17:00:00', '2017-12-29 11:42:54', '2017-12-29 11:42:54');
INSERT INTO `aut_solicitudes_transportes` VALUES ('115', 'Terrestre', '229', '', '19', '', '1', '', '2017-12-29', '00:00:00', '2017-12-29', '17:00:00', '2017-12-29 11:47:05', '2017-12-29 11:47:05');
INSERT INTO `aut_solicitudes_transportes` VALUES ('116', 'Terrestre', '230', '', '19', '', '1', '', '2017-12-29', '00:00:00', '2017-12-29', '17:00:00', '2017-12-29 11:50:20', '2017-12-29 11:50:20');
INSERT INTO `aut_solicitudes_transportes` VALUES ('117', 'Terrestre', '237', '', '19', '', '1', '', '2017-12-29', '00:00:00', '2017-12-29', '17:00:00', '2017-12-29 12:52:51', '2017-12-29 12:52:51');
INSERT INTO `aut_solicitudes_transportes` VALUES ('118', 'Terrestre', '238', 'eeeee', '19', '', '1', '', '2017-12-29', '00:00:00', '2017-12-29', '17:00:00', '2017-12-29 12:54:40', '2017-12-29 12:54:40');
INSERT INTO `aut_solicitudes_transportes` VALUES ('119', 'Terrestre', '239', 'PBS123', '19', '', '14', '', '2017-12-29', '00:00:00', '2017-12-29', '17:00:00', '2017-12-29 13:54:32', '2017-12-29 13:54:32');
INSERT INTO `aut_solicitudes_transportes` VALUES ('120', 'Terrestre', '240', 'uuu123', '19', '', '16', '', '2017-12-29', '00:00:00', '2017-12-29', '17:00:00', '2017-12-29 14:00:36', '2017-12-29 14:00:36');
INSERT INTO `aut_solicitudes_transportes` VALUES ('121', 'Aereo', '241', 'TAME', '19', '', '10', '', '2018-01-24', '00:00:00', '2018-01-24', '17:00:00', '2018-01-23 10:39:24', '2018-01-23 10:39:24');
INSERT INTO `aut_solicitudes_transportes` VALUES ('122', 'Aereo', '241', 'TAME', '10', '', '19', '', '2018-01-24', '00:00:00', '2018-01-24', '17:00:00', '2018-01-23 10:39:43', '2018-01-23 10:39:43');
INSERT INTO `aut_solicitudes_transportes` VALUES ('124', 'Terrestre', '222', 'ABC123', '19', '', '17', '', '2017-12-20', '00:00:00', '2017-12-20', '17:00:00', '2018-07-12 15:37:36', '2018-07-12 15:37:36');

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
  `grado` enum('1','2','3','5') COLLATE utf8_unicode_ci NOT NULL,
  `nivel` enum('1','2','3') COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of cargos
-- ----------------------------
INSERT INTO `cargos` VALUES ('1', 'ASISTENTE ADMINISTRIVO/A', '1', '1', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cargos` VALUES ('2', 'ANALISTA', '1', '1', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cargos` VALUES ('3', 'DIRECTOR', '2', '2', 'Nivel Jerarjico Superior', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cargos` VALUES ('4', 'DIRECTOR EJECUTIVO', '5', '3', 'Nivel Jerarjico Superior', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cargos` VALUES ('5', 'ASESOR DE DIRECCIÓN EJECUTIVA', '3', '1', 'Nivel Jerarjico Superior', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cargos` VALUES ('6', 'CHOFER', '1', '1', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cargos` VALUES ('7', 'CONTADOR', '1', '1', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cargos` VALUES ('8', 'COORDINADOR', '2', '1', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cargos` VALUES ('9', 'ESPECIALISTA', '1', '1', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cargos` VALUES ('10', 'JEFA FINANCIERA', '1', '1', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cargos` VALUES ('11', 'JEFE INFORMÁTICO', '1', '1', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cargos` VALUES ('12', 'SUBDIRECTOR', '3', '1', 'Nivel Jerarjico Superior', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cargos` VALUES ('13', 'TECNICA DE ARCHIVO', '1', '1', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
INSERT INTO `ciudades` VALUES ('25', 'Otro lugar...', '25', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for cuentas_bancarias
-- ----------------------------
DROP TABLE IF EXISTS `cuentas_bancarias`;
CREATE TABLE `cuentas_bancarias` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `institucion_id` int(10) unsigned NOT NULL,
  `tipo_cuenta` enum('Ahorros','Corriente') COLLATE utf8_unicode_ci NOT NULL,
  `numero` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `cuentas_bancarias_institucion_id_foreign` (`institucion_id`),
  CONSTRAINT `cuentas_bancarias_institucion_id_foreign` FOREIGN KEY (`institucion_id`) REFERENCES `instituciones` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of cuentas_bancarias
-- ----------------------------
INSERT INTO `cuentas_bancarias` VALUES ('1', '25', 'Ahorros', '4815461800', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cuentas_bancarias` VALUES ('2', '27', 'Ahorros', '5001199351', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cuentas_bancarias` VALUES ('3', '27', 'Ahorros', '931006878', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cuentas_bancarias` VALUES ('4', '28', 'Ahorros', '6218763', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cuentas_bancarias` VALUES ('5', '28', 'Ahorros', '10535625', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cuentas_bancarias` VALUES ('6', '26', 'Ahorros', '12673001674', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cuentas_bancarias` VALUES ('7', '26', 'Ahorros', '12143044066', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cuentas_bancarias` VALUES ('8', '26', 'Ahorros', '12000089872', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cuentas_bancarias` VALUES ('9', '29', 'Ahorros', '1005956463', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cuentas_bancarias` VALUES ('10', '29', 'Ahorros', '1031628656', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cuentas_bancarias` VALUES ('12', '30', 'Ahorros', '8250258400', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cuentas_bancarias` VALUES ('13', '30', 'Ahorros', '8258553300\r\n', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cuentas_bancarias` VALUES ('14', '30', 'Ahorros', '8205016400\r\n', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cuentas_bancarias` VALUES ('15', '30', 'Ahorros', '8175158200\r\n', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cuentas_bancarias` VALUES ('16', '31', 'Ahorros', '610805140', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cuentas_bancarias` VALUES ('17', '31', 'Ahorros', '450745368', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cuentas_bancarias` VALUES ('18', '31', 'Ahorros', '9700790728', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cuentas_bancarias` VALUES ('19', '25', 'Ahorros', '4436565900', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cuentas_bancarias` VALUES ('20', '25', 'Ahorros', '5448453600', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cuentas_bancarias` VALUES ('21', '25', 'Ahorros', '4296791800', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cuentas_bancarias` VALUES ('22', '25', 'Corriente', '3083822004', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cuentas_bancarias` VALUES ('23', '25', 'Ahorros', '4202553500', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cuentas_bancarias` VALUES ('24', '25', 'Ahorros', '3154029800', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cuentas_bancarias` VALUES ('25', '25', 'Ahorros', '5804793200', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cuentas_bancarias` VALUES ('26', '25', 'Ahorros', '3328187100', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cuentas_bancarias` VALUES ('27', '25', 'Ahorros', '4182471300', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cuentas_bancarias` VALUES ('28', '25', 'Corriente', '66001348', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cuentas_bancarias` VALUES ('29', '25', 'Ahorros', '4133895100', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cuentas_bancarias` VALUES ('30', '25', 'Ahorros', '5613883400', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cuentas_bancarias` VALUES ('31', '25', 'Ahorros', '3338211700', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cuentas_bancarias` VALUES ('32', '25', 'Ahorros', '3155891300', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cuentas_bancarias` VALUES ('33', '25', 'Ahorros', '3563718200', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cuentas_bancarias` VALUES ('34', '25', 'Ahorros', '3185874200', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cuentas_bancarias` VALUES ('35', '25', 'Ahorros', '6009155200', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cuentas_bancarias` VALUES ('36', '25', 'Ahorros', '3156812100', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cuentas_bancarias` VALUES ('37', '34', 'Ahorros', '20635144', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cuentas_bancarias` VALUES ('38', '34', 'Ahorros', '40236227', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cuentas_bancarias` VALUES ('39', '34', 'Ahorros', '63204971', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cuentas_bancarias` VALUES ('40', '34', 'Ahorros', '20660512', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cuentas_bancarias` VALUES ('41', '25', 'Ahorros', '4395828600', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cuentas_bancarias` VALUES ('42', '27', 'Ahorros', '666666', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cuentas_bancarias` VALUES ('43', '27', 'Ahorros', '77777', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cuentas_bancarias` VALUES ('44', '25', 'Ahorros', '77777', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cuentas_bancarias` VALUES ('45', '27', 'Ahorros', '20635144', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cuentas_bancarias` VALUES ('46', '27', 'Ahorros', '20635144', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cuentas_bancarias` VALUES ('47', '27', 'Ahorros', '206351445', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cuentas_bancarias` VALUES ('48', '28', 'Ahorros', '20635144', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cuentas_bancarias` VALUES ('49', '27', 'Ahorros', '20635144', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cuentas_bancarias` VALUES ('50', '29', 'Ahorros', '1039658047', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cuentas_bancarias` VALUES ('51', '26', 'Ahorros', '12002101640', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cuentas_bancarias` VALUES ('52', '25', 'Ahorros', '5230510200', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cuentas_bancarias` VALUES ('53', '26', 'Ahorros', '12058006007', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `cuentas_bancarias` VALUES ('54', '26', 'Ahorros', '12196016717', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of documentos_externos
-- ----------------------------
INSERT INTO `documentos_externos` VALUES ('1', '1', '12345678', 'asdasd', '1', 'asdad', '', '', 'asdad', '1', '0000-00-00 00:00:00', '2017-10-24 14:35:27');

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
-- Table structure for files
-- ----------------------------
DROP TABLE IF EXISTS `files`;
CREATE TABLE `files` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `detail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `filetype` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `estado` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `files_user_id_foreign` (`user_id`),
  CONSTRAINT `files_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of files
-- ----------------------------

-- ----------------------------
-- Table structure for grupos
-- ----------------------------
DROP TABLE IF EXISTS `grupos`;
CREATE TABLE `grupos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `institucion_id` int(10) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of grupos
-- ----------------------------
INSERT INTO `grupos` VALUES ('1', 'Administrador', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `grupos` VALUES ('2', 'Grupo Administrativo', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `grupos` VALUES ('3', 'Grupo Financiero', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `grupos` VALUES ('4', 'Grupo Tecnologias de la Informacion', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `grupos` VALUES ('5', 'Grupo Planificacion', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `grupos` VALUES ('6', 'Grupo Fomento productivo', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `grupos` VALUES ('7', 'Grupo CooperacionInt', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `grupos` VALUES ('8', 'Grupo Rrhh', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `grupos` VALUES ('9', 'Grupo Comunicacion', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `grupos` VALUES ('10', 'Grupo Juridico', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `grupos` VALUES ('11', 'Grupo Gestion Social', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `grupos` VALUES ('12', 'Grupo Gober. y Descent.', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `grupos` VALUES ('13', 'Grupo Vialidad', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `grupos` VALUES ('14', 'Grupo Dirección Ejecutiva', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `grupos` VALUES ('15', 'Grupo Subdirección', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `grupos` VALUES ('16', 'Grupo Ambiente', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `grupos` VALUES ('17', 'Grupo Asistentes Direccion Ejecutiva', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for grupos_users
-- ----------------------------
DROP TABLE IF EXISTS `grupos_users`;
CREATE TABLE `grupos_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `grupo_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `rol_id` int(10) NOT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `grupos_users_grupo_id_foreign` (`grupo_id`),
  KEY `grupos_users_user_id_foreign` (`user_id`),
  KEY `grupos_users_rol_id_foreign` (`rol_id`) USING BTREE,
  CONSTRAINT `grupos_users_grupo_id_foreign` FOREIGN KEY (`grupo_id`) REFERENCES `grupos` (`id`),
  CONSTRAINT `grupos_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of grupos_users
-- ----------------------------
INSERT INTO `grupos_users` VALUES ('1', '1', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `grupos_users` VALUES ('2', '4', '1', '2', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `grupos_users` VALUES ('3', '4', '2', '3', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `grupos_users` VALUES ('4', '14', '3', '4', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `grupos_users` VALUES ('5', '17', '5', '2', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

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
INSERT INTO `migrations` VALUES ('2017_03_23_124935_create_asistencias_historico_cargas_table', '2');
INSERT INTO `migrations` VALUES ('2017_05_11_124728_create_permiso_laborals_table', '3');
INSERT INTO `migrations` VALUES ('2017_06_12_123123_create_aut_solicitudes_table', '4');
INSERT INTO `migrations` VALUES ('2017_06_12_144618_create_aut_solicitudes_historicos_table', '4');
INSERT INTO `migrations` VALUES ('2017_06_12_165838_create_aut_solicitudes_transportes_table', '4');
INSERT INTO `migrations` VALUES ('2017_09_06_095930_create_cuentas_bancarias_table', '5');
INSERT INTO `migrations` VALUES ('2017_11_16_115726_create_files_table', '6');

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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of opciones
-- ----------------------------
INSERT INTO `opciones` VALUES ('1', 'Ver Usuarios', '1', 'core/users', 'asdasd', 'icons/default.ico', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `opciones` VALUES ('2', 'Crear Usuario', '1', 'core/users/create', 'asda', 'icons/default.ico', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `opciones` VALUES ('3', 'Ver Grupos de Acceso', '4', 'core/grupos', 'asdasd', 'icons/default.ico', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `opciones` VALUES ('4', 'Crear Grupo de Acceso', '4', 'core/grupos/create', 'sdfsdf', 'icons/default.ico', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `opciones` VALUES ('5', 'Ver Instituciones', '2', 'core/instituciones', 'asdasd', 'icons/default.ico', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `opciones` VALUES ('6', 'Crear Institucion', '2', 'core/instituciones/create', 'sdfsdf', 'icons/default.ico', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `opciones` VALUES ('7', 'Crear Departamento', '2', 'core/departamentos/create', 'asdasd', 'icons/default.ico', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `opciones` VALUES ('8', 'Aplicativos', '3', 'core/aplicativos', 'asdasd', 'icons/default.ico', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `opciones` VALUES ('9', 'Crear Aplicativo', '3', 'core/aplicativos/create', 'asdasd', 'icons/default.ico', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `opciones` VALUES ('10', 'Paneles', '3', 'core/aplicativos/panel_opciones', 'asasd', 'icons/default.ico', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `opciones` VALUES ('11', 'Crear Panel', '3', 'core/aplicativos/panel_opciones/create', 'asd', 'icons/default.ico', '4', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `opciones` VALUES ('12', 'Opciones', '3', 'core/aplicativos/opciones', 'asd', 'icons/default.ico', '5', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `opciones` VALUES ('13', 'Crear Opción', '3', 'core/aplicativos/opciones/create', 'asdad', 'icons/default.ico', '6', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `opciones` VALUES ('15', 'Biometrico', '5', 'core/cargabiometrico', 'asdad', 'icons/default.ico', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `opciones` VALUES ('16', 'Lista Asistencia', '6', 'biometrico/asistencia', 'asdad', 'icons/default.ico', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `opciones` VALUES ('17', 'Historicos', '6', 'biometrico/asistencia/historico', 'asdad', 'icons/default.ico', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `opciones` VALUES ('18', 'Historial Justificaciones', '7', 'sdfdf', 'sdfsdf', 'icons/default.ico', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `opciones` VALUES ('19', 'Crear Justificación', '7', 'laboral/utilesoficina', 'asdads', 'icons/default.ico', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `opciones` VALUES ('20', 'Historial Permisos', '8', 'biometrico/permiso/index', 'asdad', 'icons/default.ico', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `opciones` VALUES ('21', 'Crear Permiso', '8', 'biometrico/permiso/create', 'asdasd', 'icons/default.ico', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `opciones` VALUES ('22', 'Mis Solicitudes', '9', 'autorizaciones/solicitudes', 'asdasd', 'icons/default.ico', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `opciones` VALUES ('23', 'Mis Informes', '9', 'autorizaciones/informes/index', 'sdsdfsdf', 'icons/default.ico', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `opciones` VALUES ('24', 'Solicitudes Recibidas', '10', 'autorizaciones/solicitudes/recibido', 'asdasd', 'icons/default.ico', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `opciones` VALUES ('25', 'Informes Recibidos', '10', 'asdasd', 'asdad', 'icons/default.ico', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of panel_opciones
-- ----------------------------
INSERT INTO `panel_opciones` VALUES ('1', 'Usuarios', '1', 'users', 'fa fa-users', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `panel_opciones` VALUES ('2', 'Instituciones', '1', 'instituciones', 'fa fa-building-o', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `panel_opciones` VALUES ('3', 'Aplicaciones', '1', 'aplicaciones', 'fa fa-puzzle-piece', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `panel_opciones` VALUES ('4', 'Permisos', '1', 'accesos', 'fa fa-key', '4', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `panel_opciones` VALUES ('5', 'Carga de Archivos', '1', 'carga', 'fa fa-floppy-o', '5', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `panel_opciones` VALUES ('6', 'Asistencia', '4', 'asistencia', 'fa fa-calendar', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `panel_opciones` VALUES ('7', 'Justificaciones', '4', 'justificaciones', 'fa fa-tags', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `panel_opciones` VALUES ('8', 'Permisos', '4', 'permisos', 'fa fa-renren', '4', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `panel_opciones` VALUES ('9', 'Panel Personal', '5', 'misautorizaciones', 'fa fa-bookmark', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `panel_opciones` VALUES ('10', 'Panel de Gestión', '5', 'autorizacionesrecibidas', 'fa fa-external-link-square', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `panel_opciones` VALUES ('11', 'Panel Despacho', '6', 'despacho', 'icons/default.ico', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of partidas
-- ----------------------------
INSERT INTO `partidas` VALUES ('1', '01.01.000.001.000.5.53.03.03', '16', 'nacional', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `partidas` VALUES ('2', '01.01.000.001.000.5.53.03.04\r\n', '16', 'internacional', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `partidas` VALUES ('3', '01.01.000.002.000.5.53.03.03\r\n', '1', 'nacional', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `partidas` VALUES ('4', '21.01.001.001.000.7.73.03.03\r\n', '4', 'nacional', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `partidas` VALUES ('5', '21.01.001.002.000.7.73.03.03\r\n', '5', 'nacional', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `partidas` VALUES ('6', '21.02.001.001.000.7.73.03.03\r\n', '15', 'nacional', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `partidas` VALUES ('7', '21.02.001.002.000.7.73.03.03\r\n', '18', 'nacional', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `partidas` VALUES ('8', '21.02.001.003.000.7.73.03.03\r\n', '15', 'nacional', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `partidas` VALUES ('9', '21.02.002.001.001.7.73.03.03\r\n', '15', 'nacional', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `partidas` VALUES ('10', '21.02.002.001.002.7.73.03.03\r\n', '15', 'nacional', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `partidas` VALUES ('11', '21.02.002.001.003.7.73.03.03\r\n', '15', 'nacional', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `partidas` VALUES ('12', '21.02.002.001.004.7.73.03.03\r\n', '15', 'nacional', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `partidas` VALUES ('13', '21.02.002.001.005.7.73.03.03\r\n', '15', 'nacional', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `partidas` VALUES ('14', '21.02.002.002.001.7.73.03.03\r\n', '15', 'nacional', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `partidas` VALUES ('15', '21.03.001.001.000.7.73.03.03\r\n', '1', 'nacional', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `partidas` VALUES ('16', '21.03.001.002.000.7.73.03.03\r\n', '2', 'nacional', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `partidas` VALUES ('17', '21.03.001.003.000.7.73.03.03\r\n', '10', 'nacional', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `partidas` VALUES ('18', '21.03.001.004.000.7.73.03.03\r\n', '11', 'nacional', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `partidas` VALUES ('19', '21.03.001.005.000.7.73.03.03\r\n', '3', 'nacional', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `partidas` VALUES ('20', '22.01.001.001.000.7.73.03.03\r\n', '14', 'internacional', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `partidas` VALUES ('21', '22.01.001.001.000.7.73.03.04\r\n', '14', 'nacional', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `partidas` VALUES ('22', '22.01.002.001.000.7.73.03.03\r\n', '6', 'nacional', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `partidas` VALUES ('23', '22.01.002.001.000.7.73.03.04\r\n', '6', 'nacional', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `partidas` VALUES ('24', '22.01.002.002.000.7.73.03.03\r\n', '12', 'nacional', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `partidas` VALUES ('25', '22.01.002.003.000.7.73.03.03\r\n', '14', 'internacional', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `partidas` VALUES ('26', '22.01.002.003.000.7.73.03.04\r\n', '14', 'nacional', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `partidas` VALUES ('27', '22.01.002.004.000.7.73.03.03\r\n', '6', 'nacional', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `partidas` VALUES ('28', '22.01.002.004.000.7.73.03.04\r\n', '6', 'nacional', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

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
-- Table structure for permiso_laborals
-- ----------------------------
DROP TABLE IF EXISTS `permiso_laborals`;
CREATE TABLE `permiso_laborals` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of permiso_laborals
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
INSERT INTO `provincias` VALUES ('25', 'Ecuador', '5', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of regiones
-- ----------------------------
INSERT INTO `regiones` VALUES ('1', 'Costa', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `regiones` VALUES ('2', 'Sierra', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `regiones` VALUES ('3', 'Amazonia', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `regiones` VALUES ('4', 'Insular', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `regiones` VALUES ('5', 'Ecuador', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES ('1', 'administrator', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `roles` VALUES ('2', 'user', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `roles` VALUES ('3', 'manager', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `roles` VALUES ('4', 'Director Ejecutivo', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

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
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'default.jpg',
  `cargo_id` int(10) NOT NULL,
  `departamento_id` int(10) unsigned NOT NULL,
  `titulo_id` int(10) unsigned NOT NULL,
  `cuenta_bancaria_id` int(10) NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `born` date DEFAULT NULL,
  `sex` tinyint(4) NOT NULL,
  `address1` text COLLATE utf8_unicode_ci,
  `address2` text COLLATE utf8_unicode_ci,
  `cell` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ext` int(11) DEFAULT NULL,
  `active` int(11) DEFAULT '1',
  `numca` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_ext_unique` (`ext`),
  KEY `users_departamento_id_foreign` (`departamento_id`),
  KEY `users_titulo_id_foreign` (`titulo_id`),
  KEY `identity` (`identity`),
  CONSTRAINT `users_departamento_id_foreign` FOREIGN KEY (`departamento_id`) REFERENCES `departamentos` (`id`),
  CONSTRAINT `users_titulo_id_foreign` FOREIGN KEY (`titulo_id`) REFERENCES `titulos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '1718962911', 'Jairo', 'Rey', 'Jairo', 'default.jpg', '1', '3', '1', '1', '$2y$10$TccXTMsvAyvGVGNPTRAwY.UOU97nK5rNJLR2aXf6xTEctYV5H5lNG', '1984-08-05', '1', 'Casales Buenaventura etapa 2 casa 100', '', '0999844500', '3811563', 'jairodanielrey@gmail.com', '307', '1', '1', 'g29egVHsxuzssnjRcUMrv22EfOlTKCLEP36L6LXFVUJZr3xXLdBRvN6P3Luo', '2015-10-26 15:02:59', '2018-07-12 16:43:24');
INSERT INTO `users` VALUES ('2', '1713205688', 'Nicolas', 'Jaramillo', 'Nico', 'default.jpg', '3', '3', '1', '2', '$2y$10$TccXTMsvAyvGVGNPTRAwY.UOU97nK5rNJLR2aXf6xTEctYV5H5lNG', '2017-03-22', '1', 'asdasd', 'asdasd', '234324', '23432', 'njaramillo@congope.gob.ec', '0', '1', null, 'vXmJB1EacCFyi2iYO1hNghYHFlkcSMCisiC3MfjUj8xBfnDk4w8lwtqhxsXS', '2017-03-30 15:32:57', '2017-12-29 14:55:06');
INSERT INTO `users` VALUES ('3', '1708202666', 'Edwin', 'Miño', 'Edwin', 'default.jpg', '4', '16', '4', '3', '$2y$10$TccXTMsvAyvGVGNPTRAwY.UOU97nK5rNJLR2aXf6xTEctYV5H5lNG', '2017-03-08', '1', 'adasdasd', 'asdadas', '1231231', '123456', 'emino@congope.gob.ec', '555', '1', null, '0r33P35TAC8TJq6S7N7Pm7HbMNkhDHxgxw2Zp55oAiQNjmt7mu4ByYGh4R0y', '2017-03-30 16:21:23', '2017-12-29 15:11:26');
INSERT INTO `users` VALUES ('5', '1712911468', 'Monica', 'Muñoz', 'mona', 'default.jpg', '1', '16', '1', '4', '$2y$10$TccXTMsvAyvGVGNPTRAwY.UOU97nK5rNJLR2aXf6xTEctYV5H5lNG', '2017-03-21', '1', 'asdasdasd', '', '123123123123', '123123', 'mmunoz@congope.gob.ec', '888', '1', null, 'BhyhX9xXuddKEf9AjfMf4T6cAv70sNkIlSYrC25hU1x3C41YlDedVGo3Uc2G', '2017-03-30 16:21:58', '2017-12-14 16:54:29');
INSERT INTO `users` VALUES ('8', '99999', 'eeee', 'eeee', 'eeee', 'default.jpg', '1', '1', '1', '0', '', '2017-03-09', '1', 'dadsda', '', '1111', '111', 'eeee', '222', '1', null, null, '2017-03-30 16:22:42', '2017-03-30 16:22:42');
