/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50534
Source Host           : localhost:3306
Source Database       : xocium

Target Server Type    : MYSQL
Target Server Version : 50534
File Encoding         : 65001

Date: 2016-02-22 23:53:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cliente
-- ----------------------------
DROP TABLE IF EXISTS `cliente`;
CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `razon_social` varchar(255) DEFAULT NULL,
  `ruc` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `ubicacion` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `icono` varchar(255) DEFAULT NULL,
  `estado` smallint(255) DEFAULT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of cliente
-- ----------------------------

-- ----------------------------
-- Table structure for competencia
-- ----------------------------
DROP TABLE IF EXISTS `competencia`;
CREATE TABLE `competencia` (
  `id_competencia` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `estado` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id_competencia`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of competencia
-- ----------------------------
INSERT INTO `competencia` VALUES ('1', 'Equipo multidisciplinario, integrado por profesionales de primer nivel los cuales tienen extensa experiencia en el sector .', null, '0');
INSERT INTO `competencia` VALUES ('2', 'Integra profesionales especializados en los diferentes productos y servicios', null, '0');
INSERT INTO `competencia` VALUES ('3', 'Elaboración de planes estratégicos y financieros, análisis de costo de organizaciones, costos de finca, capacitación, formación de facilitadores, elaboración de proyectos productivos, entre otros).', null, '0');
INSERT INTO `competencia` VALUES ('4', 'Capacidad para identificar problemas y proponer soluciones que asocien desarrollo empresarial y mejoras sociales .', null, '0');
INSERT INTO `competencia` VALUES ('5', 'Experiencia y red de contactos para facilitar la elaboración de estrategias, su aplicación e incluso financiamiento.', null, '0');

-- ----------------------------
-- Table structure for desc_expe
-- ----------------------------
DROP TABLE IF EXISTS `desc_expe`;
CREATE TABLE `desc_expe` (
  `id_des_exp` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `estado` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id_des_exp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of desc_expe
-- ----------------------------

-- ----------------------------
-- Table structure for det_equipo
-- ----------------------------
DROP TABLE IF EXISTS `det_equipo`;
CREATE TABLE `det_equipo` (
  `id_det_equipo` int(11) NOT NULL AUTO_INCREMENT,
  `id_equipo` int(11) DEFAULT NULL,
  `id_personal` int(11) DEFAULT NULL,
  `cargo` varchar(255) DEFAULT NULL,
  `periodoi` datetime DEFAULT NULL,
  `periodof` datetime DEFAULT NULL,
  `estado` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id_det_equipo`),
  KEY `id_equipo` (`id_equipo`),
  KEY `id_personal` (`id_personal`),
  CONSTRAINT `det_equipo_ibfk_1` FOREIGN KEY (`id_equipo`) REFERENCES `equipo` (`id_equipo`),
  CONSTRAINT `det_equipo_ibfk_2` FOREIGN KEY (`id_personal`) REFERENCES `personal` (`id_personal`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of det_equipo
-- ----------------------------
INSERT INTO `det_equipo` VALUES ('1', '1', '1', 'Gerente', null, null, '0');
INSERT INTO `det_equipo` VALUES ('2', '1', '2', 'Gerente de Gestión Empresarial', null, null, '0');
INSERT INTO `det_equipo` VALUES ('3', '1', '3', null, null, null, '0');
INSERT INTO `det_equipo` VALUES ('4', '1', '4', null, null, null, '0');
INSERT INTO `det_equipo` VALUES ('5', '1', '5', null, null, null, '0');
INSERT INTO `det_equipo` VALUES ('6', '1', '6', null, null, null, '0');
INSERT INTO `det_equipo` VALUES ('7', '1', '7', null, null, null, '0');

-- ----------------------------
-- Table structure for det_expe
-- ----------------------------
DROP TABLE IF EXISTS `det_expe`;
CREATE TABLE `det_expe` (
  `id_det_expe` int(11) NOT NULL AUTO_INCREMENT,
  `id_cliente` int(11) DEFAULT NULL,
  `id_linea` int(11) DEFAULT NULL,
  `id_instituto` int(11) DEFAULT NULL,
  `id_experiencias` int(11) DEFAULT NULL,
  `periodoi` datetime DEFAULT NULL,
  `periodof` datetime DEFAULT NULL,
  PRIMARY KEY (`id_det_expe`),
  KEY `id_cliente` (`id_cliente`),
  KEY `id_linea` (`id_linea`),
  KEY `id_instituto` (`id_instituto`),
  KEY `id_experiencias` (`id_experiencias`),
  CONSTRAINT `det_expe_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`),
  CONSTRAINT `det_expe_ibfk_2` FOREIGN KEY (`id_linea`) REFERENCES `linea` (`id_linea`),
  CONSTRAINT `det_expe_ibfk_3` FOREIGN KEY (`id_instituto`) REFERENCES `instituto` (`id_instituto`),
  CONSTRAINT `det_expe_ibfk_4` FOREIGN KEY (`id_experiencias`) REFERENCES `experiencias` (`id_experiencias`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of det_expe
-- ----------------------------

-- ----------------------------
-- Table structure for empresa
-- ----------------------------
DROP TABLE IF EXISTS `empresa`;
CREATE TABLE `empresa` (
  `id_empresa` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `razon_social` varchar(255) DEFAULT NULL,
  `ruc` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `rpm` varchar(255) DEFAULT NULL,
  `rpc` varchar(255) DEFAULT NULL,
  `ciudad` varchar(255) DEFAULT NULL,
  `departamento` varchar(255) DEFAULT NULL,
  `descripcion` text,
  `rec_titulo` varchar(255) DEFAULT NULL,
  `rec_descripcion` text,
  `email` varchar(255) DEFAULT NULL,
  `img1` varchar(255) DEFAULT NULL,
  `img2` varchar(255) DEFAULT NULL,
  `estado` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id_empresa`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of empresa
-- ----------------------------
INSERT INTO `empresa` VALUES ('5', 'XOCIUM', 'XOCIUM PERU SA', '20542346516', 'Psje. Reninger Vela #345', '(051) 995 147 869', '*137281', '', 'Morales', 'San Martin', 'XOCIUM PERÚ S.A., es una empresa peruana conformada por un equipo de profesionales expertos en el análisis estratégico y financiero de organizaciones con énfasis en agro-negocios, el fomento del cooperativismo y la asociatividad de productores.Nuestro trabajo se realiza mediante el análisis integral de organizaciones, la generación de soluciones estratégicas basadas en diagnósticos específicos, la formulación de estrategias concretas de desarrollo económico y rural; la articulación comercial entre los productores organizados con los mercados y compradores; la formulación, ejecución, evaluación y monitoreo de proyectos y planes de negocio, etc.', '', '', 'oinocente@xocium.pe', 'hola.jpg', 'asd', '0');

-- ----------------------------
-- Table structure for equipo
-- ----------------------------
DROP TABLE IF EXISTS `equipo`;
CREATE TABLE `equipo` (
  `id_equipo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_equipo` varchar(255) DEFAULT NULL,
  `descripcion` text,
  `img` varchar(255) DEFAULT NULL,
  `estado` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id_equipo`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of equipo
-- ----------------------------
INSERT INTO `equipo` VALUES ('1', 'Equipo Multidisciplinario', 'El equipo consultor está compuesto por profesionales con sólida trayectoria en el sector Empresarial y Desarrollo Social, es un equipo multidisciplinario que asocia diferentes conocimientos y experiencias, las cuales permiten generar un mayor valor agregado para el análisis y generación de estrategias de solución en el ámbito de organizaciones agrarias e instituciones públicas y privadas.La experiencia del equipo se ha desarrollado a lo largo de los años y en diferentes campos, habiéndose desenvuelto en cadenas productivas como: Café, cacao, palma, palmito, frejol, maíz, mangos, palta, quinua, papa, cuyes, sacha inchi, camu camu, truchas, maíz, ganadería entre otros productos.', '', '0');

-- ----------------------------
-- Table structure for experiencia
-- ----------------------------
DROP TABLE IF EXISTS `experiencia`;
CREATE TABLE `experiencia` (
  `id_experiencia` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_experiencia` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `estado` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id_experiencia`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of experiencia
-- ----------------------------

-- ----------------------------
-- Table structure for experiencias
-- ----------------------------
DROP TABLE IF EXISTS `experiencias`;
CREATE TABLE `experiencias` (
  `id_experiencias` int(11) NOT NULL AUTO_INCREMENT,
  `id_tipo_exp` int(11) DEFAULT NULL,
  `nombre_expe` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `experiencia` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_experiencias`),
  KEY `id_tipo_exp` (`id_tipo_exp`),
  CONSTRAINT `experiencias_ibfk_1` FOREIGN KEY (`id_tipo_exp`) REFERENCES `tipo_exp` (`id_tipo_exp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of experiencias
-- ----------------------------

-- ----------------------------
-- Table structure for indicador
-- ----------------------------
DROP TABLE IF EXISTS `indicador`;
CREATE TABLE `indicador` (
  `id_indicador` int(11) NOT NULL,
  `nombre_indicador` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `estado` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id_indicador`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of indicador
-- ----------------------------

-- ----------------------------
-- Table structure for instituto
-- ----------------------------
DROP TABLE IF EXISTS `instituto`;
CREATE TABLE `instituto` (
  `id_instituto` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `telefono` int(11) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_instituto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of instituto
-- ----------------------------

-- ----------------------------
-- Table structure for linea
-- ----------------------------
DROP TABLE IF EXISTS `linea`;
CREATE TABLE `linea` (
  `id_linea` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) DEFAULT NULL,
  `producto` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `estado` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id_linea`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of linea
-- ----------------------------
INSERT INTO `linea` VALUES ('1', null, 'Cacao', null, '0');
INSERT INTO `linea` VALUES ('2', null, 'Cafe', null, '0');
INSERT INTO `linea` VALUES ('3', null, 'Mango', null, '0');
INSERT INTO `linea` VALUES ('4', null, 'Espárrago', null, '0');
INSERT INTO `linea` VALUES ('5', null, 'Palma', null, '0');
INSERT INTO `linea` VALUES ('6', null, 'Papa', null, '0');
INSERT INTO `linea` VALUES ('7', null, 'Quinua', null, '0');
INSERT INTO `linea` VALUES ('8', null, 'Maiz', null, '0');

-- ----------------------------
-- Table structure for mision
-- ----------------------------
DROP TABLE IF EXISTS `mision`;
CREATE TABLE `mision` (
  `id_mision` int(11) NOT NULL AUTO_INCREMENT,
  `mision` text,
  `estado` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_mision`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mision
-- ----------------------------
INSERT INTO `mision` VALUES ('1', 'Somos una empresa Consultora con operaciones a nivel nacional dedicados a brindar soluciones para el desarrollo de negocios rentables, sostenibles e inclusivos, brindamos asesoría y asistencia gerencial a organizaciones y empresas agrarias en todo el Perú', '0');

-- ----------------------------
-- Table structure for modulos
-- ----------------------------
DROP TABLE IF EXISTS `modulos`;
CREATE TABLE `modulos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `icono` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `idpadre` int(10) unsigned NOT NULL,
  `estado` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orden` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `modulos_idpadre_foreign` (`idpadre`),
  CONSTRAINT `modulos_ibfk_1` FOREIGN KEY (`idpadre`) REFERENCES `modulos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of modulos
-- ----------------------------
INSERT INTO `modulos` VALUES ('1', 'Modulo Padre', '#', 'menu-icon fa fa-list', '1', '1', null);
INSERT INTO `modulos` VALUES ('2', 'Quienes Somos', '#', 'menu-icon fa fa-list', '1', '0', '1');
INSERT INTO `modulos` VALUES ('3', 'Servicios', '#', 'menu-icon fa fa-list', '1', '0', '3');
INSERT INTO `modulos` VALUES ('5', 'Testimonios', '#', 'menu-icon fa fa-list', '1', '0', '5');
INSERT INTO `modulos` VALUES ('7', 'Contactenos', '#', 'menu-icon fa fa-list', '1', '0', '6');
INSERT INTO `modulos` VALUES ('9', 'Datos Generales', 'empresa', 'menu-icon fa fa-list', '2', '0', null);
INSERT INTO `modulos` VALUES ('10', 'Personal', 'personal', 'menu-icon fa fa-list', '16', '0', null);
INSERT INTO `modulos` VALUES ('13', 'Mision y Vision', 'plantear', 'menu-icon fa fa-list', '2', '0', null);
INSERT INTO `modulos` VALUES ('14', 'Que nos Diferencia', 'ventaja', 'menu-icon fa fa-list', '2', '0', null);
INSERT INTO `modulos` VALUES ('15', 'Competencias', 'competencia', 'menu-icon fa fa-list', '2', '0', null);
INSERT INTO `modulos` VALUES ('16', 'Equipo Tecnico', '#', 'menu-icon fa fa-list', '1', '0', '2');
INSERT INTO `modulos` VALUES ('17', 'Tipo de Servicios', 'tipo_servicio', 'menu-icon fa fa-list', '3', '0', null);
INSERT INTO `modulos` VALUES ('18', 'Linea', 'linea', 'menu-icon fa fa-list', '3', '0', null);
INSERT INTO `modulos` VALUES ('19', 'Indicadores', 'indicador', 'menu-icon fa fa-list', '3', '0', null);
INSERT INTO `modulos` VALUES ('20', 'Sostenibilidad', 'sostenibilidad', 'menu-icon fa fa-list', '3', '0', null);
INSERT INTO `modulos` VALUES ('21', 'Experiencias', 'experiencia', 'menu-icon fa fa-list', '3', '0', null);
INSERT INTO `modulos` VALUES ('22', 'Herramientas', '#', 'menu-icon fa fa-list', '1', '0', '4');

-- ----------------------------
-- Table structure for personal
-- ----------------------------
DROP TABLE IF EXISTS `personal`;
CREATE TABLE `personal` (
  `id_personal` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `apellidop` varchar(255) DEFAULT NULL,
  `apellidom` varchar(255) DEFAULT NULL,
  `grado_titulo` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `cel` varchar(255) DEFAULT NULL,
  `rpm` varchar(255) DEFAULT NULL,
  `rpc` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `ciudad` varchar(255) DEFAULT NULL,
  `descripcion` text,
  `foto` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_personal`),
  KEY `id_personal` (`id_personal`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of personal
-- ----------------------------
INSERT INTO `personal` VALUES ('1', 'Oscar', 'Inocente', 'Julca', 'Dr.', '', '(51)995147869', '*137281', null, 'oinocente@xocium.pe', null, null, 'Abogado por la Pontificia Universidad Católica del Perú, con estudios de Maestría en Derecho Empresarial; con experiencia en Análisis de organizaciones de productores con un enfoque que combina el desarrollo social y empresarial. Experiencia en Planificación Estratégica y Planificación Financiera de organizaciones. Análisis legal con énfasis en desarrollo de negocios asociativos. Capacidad para asociar la generación de estrategias empresariales y comerciales con un desarrollo social amplio. Experiencia en monitoreo y evaluación de actividades bajo enfoques de resultados, elaboración de marcos lógicos, diseño de planes operativos y evaluación operativa y financiera de avances.\r\nSe ha desempeñado laboralmente en la Corporación Backus y Johnston, en la Agencia Suiza para el Desarrollo y la Cooperación ( COSUDE) entre otras organizaciones, y como consultor independiente con organizaciones como: ROOT CAPITAL ( EEUU) AGRITERRA ( Holanda) OIKO CREDIT (Holanda) GIZ (Alemania) AECID(España) HABITAT (EEUU), GVC(Italia), VECO ANDINO (Bélgica) NESST, MINAGRI, entre otros. Experiencia para estructurar financiamiento para negocios sostenibles.', null, '0');
INSERT INTO `personal` VALUES ('2', 'CHRISTOPER', 'ESPÍRITU', 'CISTERNA', 'ING.', null, '(51) 942692106', '#660366', null, 'cespiritu@xocium.pe', null, null, 'Ingeniero Agroindustrial, con 19 años de experiencia en el área de Organización, Producción, Planeación, Diagnósticos Empresariales, Diagnósticos FODA, Mercadeo, Elaboración de Proyectos, Planes Estratégicos, Planes de Negocio, Diagramas de Caracterización, Planes de Mejoras, Post-cosecha y Agroindustria, Gestión, Administración, Manejo de Personal, Herramientas de Gestión, Comercialización, Asociatividad, Sensibilización de organizaciones, Asesoría Empresarial y como Consultor y Facilitador de temas de Gestión Empresarial con aplicación de metodologías participativas – vivénciales PROGESTION (Swisscontact), CEFE (GTZ), ISUN (OIT), GER (CONPCAT) y PACA (CDG). Facilitador acreditado en Metodología CEFE (Capacitación en base a la Economía para la formación de Empresarios (as)), y metodología OIT. Con Maestría en Ciencias Económicas con Mención en Gestión Empresarial. Especialista en temas de Fortalecimiento Organizacional y Motivación. Docente a tiempo parcial en la Universidad Cesar Vallejo – Tarapoto. Actualmente en un programa de formación sobre salud financiera en organizaciones agrarias – promovido a nivel regional por la Fundación holandesa AGRITERRA.', null, '0');
INSERT INTO `personal` VALUES ('3', 'Lith', 'Montes', 'Quispe', 'Lic.', null, '(51) 952876144', '#952876144', null, 'lmontes@xocium.pe', null, null, 'Lith Montes Quispe, tiene 24 años de edad es natural de Pichanaki en la Selva Central del Perú, es licenciada en Gestión de Turismo y cuenta con sólida formación en análisis financiero y Planificación Estratégica. Forma parte de XOCIUM desde el año 2013, su ingreso ha agregado el valioso plus de combinar su conocimiento como socia y productora de café, con la aplicación de herramientas de gestión y financieras. Se define como una persona alegre, muy activa, que intenta anticiparse a los problemas y muy deseosa de aprender y de aplicar sus conocimientos para mejorar la situación en las organizaciones. Se desempeña actualmente en el análisis de organizaciones, en la elaboración de Planes Estratégicos y Financieros, y como facilitadora en talleres participativos. Su experiencia en análisis de organizaciones la ha llevado a trabajar con organizaciones que producen café, cacao, palma aceitera, palmito, mango, cuyes, papas, entre otros.', null, '0');
INSERT INTO `personal` VALUES ('4', 'Vania', 'Jordán', 'Araujo', 'Ec.', '084-228062', '984125511', null, null, 'vjordan@rurayperu.com', 'Avenida Infancia 439,', 'Cusco', 'Economista natural del Cusco, con estudios en la Universidad Nacional San Antonio Abad del Cusco y con estudios de maestría en economía agrícola desarrollados en la Universidad Nacional Agraria La Molina, 12 años de experiencia en temas de desarrollo rural, elaboración de Proyectos de desarrollo, análisis de mercado, evaluación de proyectos. Formulación participativa de planes de negocio, análisis de cadenas productivas y articulación comercial. Experiencia laboral en la Agencia Suiza para el Desarrollo “COSUDE”, en INKAGRO y en otras organizaciones dentro y fuera de Cusco. Experiencia en evaluación y supervisión de proyectos y planes de negocio (INCAGRO, AGROIDEAS, FONDOEMPLEO) Amplio conocimiento del ámbito rural de la región Cusco', null, '0');
INSERT INTO `personal` VALUES ('5', 'Renán', 'Ramos', 'Alva', 'Ing.', '986823850', '986823850', null, null, 'erranan@hotmail.com', null, '', 'Ingeniero pesquero con estudios de maestría en Ecología aplicada y Diplomados en Gobernabilidad, Gestión Pública, Liderazgo y estudios de Gestión de Conflictos.\r\n25 años de experiencia en el sector Pesquero y Agropecuario, en el sector público y privado en diferentes cargos: ejecución, coordinación, evaluación, supervisión y seguimiento de proyectos en sedes locales y descentralizadas.\r\nHa desarrollado proyectos de Desarrollo Rural, Económico, Social, Productivo y de Educación, asociados a la actividad acuícola, pesquera, agropecuaria, forestal y educativa, con enfoque de manejo de recursos naturales; en diferentes ámbitos socioeconómicos (rural, urbano y urbano-marginal); comprendiendo actividades de Prospección, Diseño, Ejecución, Monitoreo, Evaluación y Seguimiento de Proyectos. Experiencia en Consultarías, Estudios de base, preparación y dictado de Cursos de Capacitación (Acuícola, Pesquera, Agropecuaria) y extensión; elaboración de expedientes técnicos. En lo productivo, he hecho diseño acuícola y civil, construcción, implementación y puesta en marcha de sistemas acuícolas, hidráulicos, construcciones rurales, pequeños sistemas de tratamiento de aguas, laboratorios dulceacuícolas y marinos.\r\nExperiencia en formulación, aplicación, seguimiento de Proyectos de Investigación + Desarrollo + Innovación (I+D+i) y Transferencia tecnológica, en diferentes temáticas, de tipo productivos, servicios e investigación básica y aplicada; con Universidades (privadas y públicas) y Empresas (micro, pequeña, mediana y gran empresa); así como Diseños Experimentales y Estadísticos. En Proyectos I+D+i, durante el periodo 2010 al 2011 he monitoreado 34 Proyectos, evaluado 90 Fichas de Proyecto; en 2012 -2013, he negociado 50 Proyectos y evaluado 25 Fichas; durante el 2011 al 2014, he formulado 40 Fichas de Proyecto, 15 Proyectos, 04 Estudios de Línea Base, evalué On Line 05 Proyectos y 01 Pasantía. Entre el 2011-2013, también he evaluado 16 Proyectos de Desarrollo y 02 de Capacitación\r\nExperiencia en formulación y ejecución de Proyectos en temas Sociales y Comunitarios con Pueblos Indígenas y Colonos (Loreto: San Lorenzo y Andoas en Datem del Marañón, e Iquitos; Selva Central: Satipo y Mazamari, Pucallpa), Comunidades Campesinas (Puno, Huarochirí-Lima, Huancayo, La Oroya, Huancabamba-Piura); y con Pescadores Artesanales (Ica: Pisco, Laguna Grande, San Andrés, Tambo de Mora, Comatrana y San Juan de Marcona; Piura: Sechura y Lobos de Tierra; Ancash: Huarmey).\r\nAptitud para el trabajo en equipo; dirección, liderazgo y manejo de grupos multidisciplinarios, trabajo por metas y bajo presión, experiencia en diferentes sectores, conocimiento del trabajo de campo y de gabinete, y sensibilidad social para tratar con actores locales desde una perspectiva intercultural', null, '0');
INSERT INTO `personal` VALUES ('6', 'Sandra', 'Esaine.', null, 'Econ.', '4355256', null, null, null, 'sandraesaine@yahoo.com.m', null, null, 'Economista de la Universidad Agraria la Molina, con Master en Dirección y Gestión en Comercio Exterior en la Universidad Santiago de Compostela en España, conocimientos en marketing, nivel avanzado de inglés de la Universidad de Texas en Austin/EEUU.\r\nCon más de 10 años de experiencia laboral trabajando para diferentes sectores como sector privado, público, a través del Ministerio de Agricultura y la Cooperación Internacional, en temas relacionados a cadenas productivas y comercio exterior, promoviendo negocios en la pequeña y mediana empresa y articulando productores con mercados.\r\nExperiencia como Responsable del Área de Fomento Empresarial y Agro-negocios en la Cooperación Norteamericana a través de Winrock International Consulting, promoviendo cultivos de exportación tanto convencionales como orgánicos: café, cacao, banano, piña, a través de empresas de ex cocaleros.\r\nExperiencia en la Cooperación SUIZA (COSUDE) a través del proyecto PYMAGROS; articulando actividades entre el sector público y la cooperación internacional en temas de capacitación para mejorar la comercialización de productos de pequeños agricultores de la sierra del Perú .\r\nEn el sector Público me desempeñé como Oficial de Proyectos para la Dirección de Promoción Agraria (DGPA).\r\nGerente Comercial de Allpa SAC, empresa exportadora líder en el mercado nacional para la exportación de productos hechos a mano para decoración de interiores, moda y joyería en plata. Perteneciente al Comercio Justo, buscando resultados financieros para la empresa pero con impacto social positivos.\r\nParticipación en Ferias nacionales e internacionales negociando productos agrícolas y artesanales. Conocimiento de procesos productivos en el sector agrícola y artesanal.\r\nCuento también con experiencia en asesorías, consultorías y docencia. Alta capacidad de interrelación a todo nivel. Excelentes habilidades de análisis y pensamiento crítico / estratégico. Alta capacidad de aprendizaje y adaptación al cambio.', null, '0');
INSERT INTO `personal` VALUES ('7', 'Roberto', 'Salazar', 'Córdova', 'Ingeniero agrónomo/MAGISTER SCIENTIAE', null, '969255270', '*405270', null, 'roberto_salazar6832@hotmail.com', null, null, 'Ingeniero Agrónomo con más de 20 años de experiencia a nivel gerencial. Director y coordinador de diversos programas de agricultura a nivel de campo.\r\nExperiencia en operaciones y manejo de diversos cultivos y proyectos( mango, algodón, espárragos, maíz, paltas, mandarinas, cebollas). Gerente de exportaciones de productos frescos a nivel internacional. Capacidad para solucionar problemas y manejar grupos de trabajadores. Participación en ferias internacionales, con experiencia en negociación de contratos de agro-exportación a nivel internacional\r\nMagister en Agronomía (Producción Agrícola) de la Universidad Agraria La Molina. Curso Internacional en Planificación, Manejo y Ferti-rriego en la Agricultura Intensiva en Shefayim – ISRAEL.\r\nExperiencia en la Cooperación Internacional habiéndome desempeñado como oficial de proyectos en la Cooperación Suiza (COSUDE). También con experiencia en el sector público donde desempeñé cargos Directivos en el sector Agricultura a nivel Regional y Nacional.\r\nÚltimamente me desempeñé como Director de Información Agraria de la Dirección General de Competitividad Agraria del Ministerio de Agricultura y Riego.', null, '0');
INSERT INTO `personal` VALUES ('8', 'Silvia', 'Torres', 'Gatica', 'Ing.', null, null, null, '942760012', 'storres31@gmail.com', null, null, 'Ingeniera Civil, con 9 años de experiencia laboral, prestados a favor de las Entidades Públicas y Privadas, asistente en obras de pavimentación de vías, participación en elaboración de propuestas técnicas para concurso de obras públicas, participación en la elaboración de expedientes técnicos para remodelación de edificaciones en municipalidades, participación en el equipo técnico de la Unidad Formuladora de la Dirección Regional de Educación de San Martín, Supervisora en Obra de Alcantarillado Sanitario, Evaluadora de Proyectos de Inversión Pública del Gobierno Regional de San Martín, evaluadora de costos y presupuestos de los distintos sectores de los proyectos de inversión pública, participación en el equipo técnico en los procesos de los Presupuesto Participativos del Gobierno Regional de San Martín, Responsable de la Oficina de Programación e Inversiones del Gobierno Regional de San Martín, responsable de la secretaria técnica en el Consejo de Coordinación Regional de San Martín, de la secretaria técnica en el Comité Regional de Inversiones del Gobierno Regional de San Martín y del equipo técnico del Comité Regional de Inversiones en Salud del Gobierno Regional de San Martín.', null, '0');
INSERT INTO `personal` VALUES ('9', 'HERMANN', 'DÍAZ', 'GALLEGOS', null, '(51) 99934-5791', '(51) 99934-5791', '*872715', null, 'hermann_diaz@hotmail.com', null, null, 'Máster europeo en marketing y comercialización (EOI - España) (UPC- Escuela de empresa Perú) amplia experiencia en promoción y venta de productos y servicios, Administrador de empresas de profesión (UIGV) idioma Inglés en nivel avanzado, hablado y escrito (ICPNA), Ofimática a nivel Avanzado (NEW HORIZONS), experiencia laboral en empresas transnacionales y asesor comercial de empresas y cooperativas de productores a nivel nacional e internacional. Formulación de nuevas estrategias de negocios.\r\nCapacidad demostrada para articular nuevos productos con mercados competitivos. Conocimientos plus en áreas de: importaciones y exportaciones, área laboral, área tributaria, área financiera vocación de servicio, capacidad analítica y de investigación, creativo, proactivo, manejo efectivo de la transmisión del conocimiento, liderazgo para la formación y desarrollo de grupos de trabajo, motivando y orientando hacia los objetivos de la organización.', null, '0');
INSERT INTO `personal` VALUES ('10', 'Raúl', 'De la Torre', 'Morán', 'CPC.', null, '', '# 981495805', null, 'rdelatorrem@gmail.com', null, null, 'Contador Público Colegiado y Auditor Independiente con experiencia en Gestión Pública. Graduado en la Universidad Nacional Federico Villarreal, Diplomado en Planificación y Gestión Local por la Universidad Alcalá de Henares e INAP – España, Especialista en Presupuesto Público por la ENC, Diplomado en Gobernabilidad por la George Washington University y PUCP, expositor en Centro de Altos Estudios Nacionales (CAEN), egresado de la Maestría en Administración y Gestión Pública en la UNMSM; con gran sentido de responsabilidad, capacidad para trabajar bajo presión, liderar grupos, proponer alternativas y establecer políticas para el logro de los Objetivos Institucionales; buen manejo de herramientas informáticas.', null, '0');
INSERT INTO `personal` VALUES ('11', 'Daniel', 'Vecco', 'Giove', 'Ing.', null, '51-42-942058671', '#958671', null, 'carvec2@yahoo.es', null, null, 'Ing. Agrónomo, aspirante a Doctorado en Ciencias Agrícolas (IIFT- La Habana, Cuba). Investigador, especialista en estudios biológicos y económicos, pueblos originarios, cambio climático, biodiversidad, impacto ambiental, ecoturismo y agricultura ecológica, diseños experimentales, formulación de Proyectos, planes de manejo de fauna silvestre y procesos de innovación tecnológica. Desempeñó servicios con: Coordinadora de las Organizaciones Indígenas de la Cuenca Amazónica (COICA), Fondo Nacional para Áreas Naturales Protegidas por el Estado (PROFONANPE), Gobierno Regional de San Martín (GRSM), Ministerio de Educación – DIGEIBIR, Universidad Nacional de San Martín (UNSM-T), Proyecto de Investigación y Extensión Agraria del Ministerio de Agricultura del Perú (PIEA-INCAGRO), Cooperación Alemana al Desarrollo (GTZ), Instituto Interamericano de Cooperación para la Agricultura (IICA), Ministerio Diaconal Paz y Esperanza, Asociación Amazónicos por la Amazonía (AMPA), entre otras. Investigador con varios aportes a la investigación de la diversidad biológica, pueblos originarios y ecología en las regiones de San Martín y Cajamarca; estudios tomados como referencia en expedientes de interés regional (acciones jurídicas, diseño de políticas, creación de áreas naturales protegidas y normatividad). Participante en 6 eventos internacionales, 15 nacionales, y organizador de 23 eventos científicos locales, autor de 41 publicaciones, miembro de comité editor de revista científica.', null, '0');
INSERT INTO `personal` VALUES ('12', 'Sandro', 'Aquino', 'Y.', 'Ing.', '+51 01 3401255', '945312958', null, null, 'sandro.ay@gmail.com', null, null, 'Ingeniero con más de 15 años de experiencia en comercio internacional, gestión de comunidades rurales y empresas asociativas, especialista en la cadena de valor del café y cacao, finanzas internacionales en empresas de exportación, gestión de riesgo en manejo de precios en bolsa; gestión de proyectos y planes de negocios, dominio avanzado de inglés y manejo eficiente de varios programas informáticos, internet y redes sociales. Magister Scientiae en Desarrollo Rural y Gestión Ambiental en el Centro Agronómico Tropical de Investigación y Enseñanza (CATIE) de Costa Rica, perfeccionamiento del Inglés en el Spring International Language Center at the University of Arkansas, Diplomado en Gestión de Cooperativas Agrarias (MYCOOP) de la Universidad Nacional Agraria La Molina, Diplomado en Gestión de Negocios de Exportación de la Universidad Privada Boliviana, Gerenciamiento de Riesgos en la Comercialización del Café (SOSFAIM y Cooperación Belga), Ingeniero Agrónomo de la Universidad Agraria de la Selva. Condecorado con medalla y diploma de honor como Gerente General de la CAC Oro Verde Ltda. durante la ceremonia de los 70 años del MINAGRI, medalla entregada por el ministro de agricultura Milton von Hesse y Presidente Ollanta Humala respectivamente. Liderazgo para manejar equipos multidisciplinarios, buen negociador, habilidad estratégica y analítica, con visión de negocios, habilidad para amoldarse a condiciones cambiantes, trabajo por indicadores, dinámico y orientado a resultados. Actualmente es Gerente General de la Central de productores de cacao de Tocache que agrupa a 6 cooperativas de la región.', null, '0');
INSERT INTO `personal` VALUES ('13', 'MANUEL', 'SALIRROSAS', 'VASQUEZ', 'Ing.', '01-971435933', '*828389', null, null, 'salirrosas1@yahoo.es', null, null, 'Profesional con más18 años de experiencia en la actividad forestal, especialista en Certificación Forestal Voluntaria “FSC”. Desde el 2007, logró la certificación de Manejo Forestal de aproximadamente 200,000 hectáreas en la Amazonia Peruana, también la implementación de las plantas de transformación para obtener la Certificación FSC, en diferentes empresas ubicadas en los departamentos de Ucayali, Loreto, Madre de Dios y Lima (Industria de productos terminados). Consultor forestal en Elaboración del Plan General de Manejo Forestal y Programa Operativo Anual para Comunidades nativas, Concesiones Forestales, Concesiones de Conservación Regional y/o privadas y Ecoturismo y Elaboración de planes de negocios para las empresas del sector forestal. Auditor en Manejo Forestal – SCS Global Services. Regente forestal en Certificación de Manejo Forestal - FSC de la comunidad nativa Bélgica – Iñapari – Madre de Dios, para el aprovechamiento sostenible de los bosques (Manejo Forestal Comunitario) y la implementación de proyecto integrales de productos diferentes a la madera, artesanía, Shiringa y proyecto REDD “Reducción de Emisiones de Carbono a Consecuencia de la Deforestación y Degradación de los Bosques” y la propuesta de ecoturismo vivencial. Asesor Forestal de las empresas MADERYJA SAC, Nature Wood (Perú) SAC, Nature America SAC, en FM y CoC – FSC e Implementación del Proyect Amazon REDD. Gerente de bosque de Nature América SAC (Certificación Forestal de manejo forestal) y planta de transformación en Yurimaguas – Amazonas- Loreto. Asesor de las empresas de Turbina SAC, Nature Wood y Universal Flooring (Certificación FSC de productos terminados – pisos). Especialista en elaboración de EIA, para empresas consultoras del Ministerio de Energía y Minas, Transportes y Comunicaciones, para desbosques en Ucayali, San Martín Loreto y Piura. Liderazgo para trabajar en equipo, capacidad para coordinar con personal de distintas áreas, capacidad de interactuar en grupos bajo presión en base a metas y objetivos. Con cualidades de vocación de servicio, trato profesional, con experiencia para interrelacionarse a todo nivel.', null, null);

-- ----------------------------
-- Table structure for servicio
-- ----------------------------
DROP TABLE IF EXISTS `servicio`;
CREATE TABLE `servicio` (
  `id_servicio` int(11) NOT NULL AUTO_INCREMENT,
  `id_trabajo` int(11) DEFAULT NULL,
  `nombre_servicio` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `estado` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id_servicio`),
  KEY `id_trabajo` (`id_trabajo`),
  CONSTRAINT `servicio_ibfk_1` FOREIGN KEY (`id_trabajo`) REFERENCES `trabajo` (`id_trabajo`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of servicio
-- ----------------------------
INSERT INTO `servicio` VALUES ('1', '1', 'Asesoría empresarial y financiera', null, '0');
INSERT INTO `servicio` VALUES ('2', '1', 'Desarrollo de capacidades socio empresariales en organizaciones de productores', null, '0');
INSERT INTO `servicio` VALUES ('3', '1', 'Planificación estratégica y financiera para organizaciones, empresas agrarias e instituciones públicas y privadas', null, '0');
INSERT INTO `servicio` VALUES ('4', '1', 'Análisis estratégico y financiero integral de cadenas de valor.', null, '0');
INSERT INTO `servicio` VALUES ('5', '1', 'Análisis de eficiencia productiva a nivel de finca para cualquier tipo de cultivo.', null, '0');
INSERT INTO `servicio` VALUES ('7', '1', 'Análisis de eficiencia financiera en organizaciones de productores agrícolas', null, '0');
INSERT INTO `servicio` VALUES ('8', '1', 'Análisis de procesos y eficiencia en plantas de transformación agro industrial', null, '0');
INSERT INTO `servicio` VALUES ('9', '1', 'Reingeniería de organizaciones productivas', null, '0');
INSERT INTO `servicio` VALUES ('10', '1', 'Formulación de planes de negocio, estudios de mercado, planes de marketing. etc.', null, '0');
INSERT INTO `servicio` VALUES ('11', '1', 'Desarrollo de productos y articulación con mercados y compradores.', null, '0');
INSERT INTO `servicio` VALUES ('12', '1', 'Análisis contable y tributario de organizaciones principalmente en agro-negocios.', null, '0');
INSERT INTO `servicio` VALUES ('13', '2', 'Asesoría en la identificación de Fuentes de Cooperación Nacionales e Internacionales.', null, '0');
INSERT INTO `servicio` VALUES ('14', '2', 'Asesoría en la elaboración de Proyectos para AGROIDEAS', null, '0');
INSERT INTO `servicio` VALUES ('15', '2', 'Formulación de Proyectos para FONDOEMPLEO.', null, '0');
INSERT INTO `servicio` VALUES ('16', '2', 'Formulación de Proyectos para PROCOMPITE.', null, '0');
INSERT INTO `servicio` VALUES ('17', '2', 'Formulación de Proyectos para FIDECOM', null, '0');
INSERT INTO `servicio` VALUES ('18', '2', 'Formulación de proyectos para entidades de Cooperación Internacionales.', null, '0');
INSERT INTO `servicio` VALUES ('19', '2', 'Capacidad de administración de fondos.', null, '0');
INSERT INTO `servicio` VALUES ('20', '2', 'Asesoría para la organización de fondos concursables.', null, '0');
INSERT INTO `servicio` VALUES ('21', '2', 'Asesoría para la obtención de Fondos vía Presupuestos participativos.', null, '0');
INSERT INTO `servicio` VALUES ('22', '2', 'Asesoría para acceder a Fondos para Misiones Comerciales y pasantías.', null, '0');
INSERT INTO `servicio` VALUES ('23', '2', 'Asesoría para la identificación de oportunidades para presentación de Proyectos ante entidades nacionales e internacionales', null, '0');
INSERT INTO `servicio` VALUES ('24', '3', 'Asesoría en la gestión gubernamental para gobiernos locales y regionales.', null, '0');
INSERT INTO `servicio` VALUES ('25', '3', 'Asesoría pre y post auditorías gubernamentales.', null, '0');
INSERT INTO `servicio` VALUES ('26', '3', 'Cursos de sistema integrado de administración financiera (SIAF)', null, '0');
INSERT INTO `servicio` VALUES ('27', '3', 'Revisión de Estados Financieros', null, '0');
INSERT INTO `servicio` VALUES ('28', '3', 'Elaboración de cartas estratégicas para Municipios', null, '0');
INSERT INTO `servicio` VALUES ('29', '3', 'Proyectos de Enfoque Territorial', null, '0');
INSERT INTO `servicio` VALUES ('30', '3', 'Evaluación de necesidades de proyectos en inversión Publica.', null, '0');
INSERT INTO `servicio` VALUES ('31', '3', 'Elaboración de sistema de seguimiento y monitoreo a los proyectos de inversión', null, '0');
INSERT INTO `servicio` VALUES ('32', '3', 'Asesoría e liquidaciones y cierres de proyectos', null, '0');
INSERT INTO `servicio` VALUES ('33', '3', 'Elaboración de proyectos SNIP', null, '0');
INSERT INTO `servicio` VALUES ('34', '3', 'Elaboración de documentos de gestión (MOF, ROF,CAP,PAP) elaboración del plan manual de adquisiciones', null, '0');
INSERT INTO `servicio` VALUES ('35', '3', 'Elaboración del plan estratégico institucional', null, '0');
INSERT INTO `servicio` VALUES ('36', '3', 'Asesoría en convenios internacionales', null, '0');
INSERT INTO `servicio` VALUES ('37', '3', 'Levantamiento de observaciones de auditoria', null, '0');

-- ----------------------------
-- Table structure for simulador
-- ----------------------------
DROP TABLE IF EXISTS `simulador`;
CREATE TABLE `simulador` (
  `id_simulador` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `descripcion` text,
  `img1` varchar(255) DEFAULT NULL,
  `img2` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_simulador`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of simulador
-- ----------------------------
INSERT INTO `simulador` VALUES ('1', 'Manejo de roles y funciones “Las Torres”', 'Este simulador nos enseña la importancia de conocer los roles y fusiones de cada uno de los miembros de una organización . Los Directivos, Trabajadores deben conocer claramente lo que se espera de ellos, como la suma de esfuerzos se relaciona con el crecimiento de la organización .\r\nEl éxito de una organización implica contar con herramientas de gestión y una sana combinación de estabilidad estructural y la flexibilidad para hacer frente a los cambios.', null, null, '0');
INSERT INTO `simulador` VALUES ('2', 'La Jaula del Cordero', 'Nos enseña la importancia de trabajar de manera conjunta para lograr los objetivos de la organización, estar unidos para solucionar los problemas internos y externos de la organización.', null, null, '0');
INSERT INTO `simulador` VALUES ('3', 'Las Palas', 'Nos enseña la importancia de conocer y saber identificar los costos dentro de la organización, identificar los costos fijos y variables, Registrar las operaciones, determinar el precio, negociar con proveedor, punto de equilibrio, utilidad neta.\r\nAyuda en la comprensión de que los costos conllevan a un manejo adecuado de la organización, programar los recursos, evaluar la rentabilidad, estimar los costo, realizar presupuestos y contralar su producción.', null, null, '0');
INSERT INTO `simulador` VALUES ('4', 'Rompe Cabezas', 'El objetivo es comprender la diferencia de trabajar en grupo y de trabajar en equipo; asimismo busca analizar el comportamiento en la solución de problemas y desarrollar estrategias individuales y de equipo para solucionarlos.', null, null, '0');
INSERT INTO `simulador` VALUES ('5', 'Cuatro Rincones Ovillo de Lana”', 'Nos enseña la importancia del recurso humano dentro de la organización, trabajo en equipo asumir nuestras responsabilidades.', null, null, '0');
INSERT INTO `simulador` VALUES ('6', 'Construcción de Palas', 'Construcción de Palas Tiene como objetivo comprender la importancia del análisis de costos (fijos y variables), su utilidad para calcular los precios, la importancia de conocer el punto de equilibrio y la rentabilidad.', null, null, '0');
INSERT INTO `simulador` VALUES ('7', 'Armando Pajaritos', 'Este simulador tiene como objetivo que los participantes comprendan la importancia de la calidad, y la importancia de cumplir objetivos de producción.', null, null, '0');
INSERT INTO `simulador` VALUES ('8', 'Sobrevivencia', 'Este simulador tiene como objetivo que los participantes desarrollen estrategias, planifiquen actividades y trabajen en equipo. Se utiliza caramelos y chupetines para desarrollar el simulador', null, null, '0');
INSERT INTO `simulador` VALUES ('9', 'Rompecabezas', 'Este simulador tiene como objetivo que los participantes reconozcan el trabajo en equipo, donde la organización logrará metas si la gerencia coordina con los trabajadores y socios, aplicando la tecnología para generar recursos. El trabajo consiste en armar un rompecabezas del cuerpo humano.', null, null, '0');
INSERT INTO `simulador` VALUES ('10', 'Cuadrado Hueco', 'Este simulador tiene como objetivo que los participantes valoren la comunicación y coordinación como ejes importantes en una organización', null, null, '0');
INSERT INTO `simulador` VALUES ('11', 'El Gung Ho', 'Este simulador tiene como objetivo que los participantes comprendan el comportamiento que tiene cada uno de los integrantes de la organización en base a: 1) Espíritu de la ardilla: Amar lo que uno hace; 2) Método del Castor: Reconocer el trabajo de los demás y ser responsables y 3) Don de los Gansos: Tener una sola visión', null, null, '0');
INSERT INTO `simulador` VALUES ('12', 'Los Dardos', 'Este simulador tiene como objetivo que los participantes comprendan el valor de las estrategias en el cumplimiento de metas. Se utiliza un juego de dardos', null, null, '0');
INSERT INTO `simulador` VALUES ('13', 'El huevo Volador', 'Este simulador tiene como objetivo que los participantes elaboren sus Fortalezas, Debilidades, Oportunidades y Amenazas en base a un trabajo en equipo, utilización optima de recursos y cumplimiento de metas. Se utiliza un huevo que simula la organización y tienen que protegerlo de una caída.', null, null, '0');

-- ----------------------------
-- Table structure for testimonio
-- ----------------------------
DROP TABLE IF EXISTS `testimonio`;
CREATE TABLE `testimonio` (
  `id_testimonios` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_testigo` varchar(255) DEFAULT NULL,
  `descripcion` text,
  `foto` varchar(255) DEFAULT NULL,
  `estado` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id_testimonios`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of testimonio
-- ----------------------------
INSERT INTO `testimonio` VALUES ('1', 'Fidencio Quispe Medina:', 'nos dice que el trabajo fue diferente, señala que le ayudó mucho para reflexionar, nos dice que ahora tiene una visión diferente, aprendió la importancia de trabajar en equipo con una actitud positiva, destacó la importancia de utilizar herramientas de gestión así mismo invertir en la formación de líderes. Productor y administrador Asoc. Mountain Coffee – Junín', null, '0');
INSERT INTO `testimonio` VALUES ('2', 'Gaby Camac Fernandez,', 'Me encantó y contribuyó en mi formación personal y profesional, ayudó a que nos integremos más como compañeros de trabajo de las diferentes áreas. Asistenta Contable Cooperativa Sol &Café- Cajamarca', null, '0');
INSERT INTO `testimonio` VALUES ('3', 'Herrera Ocupa Salomón,', 'Quiero agradecer a mi cooperativa por organizar y realizar este tipo de evento donde entendí que todos somos iguales, desde el agricultor en el campo, gerente, y todas las áreas de trabajo dentro de la cooperativa, y que todos debemos trabajar y enrumbar la organización en un solo sentido. Productor TABACONAS –CAJAMARCA', null, '0');
INSERT INTO `testimonio` VALUES ('4', 'Tomás Marchena', 'el curso nos abrió los ojos para muchas cosas, ha sido muy importante para mí , siento que me ayudará mucho en mis funciones como directivo, espero aplicarlo en Oro Verde. – Vice presidente de la Cooperativa Oro Verde -San MartÍn', null, '0');
INSERT INTO `testimonio` VALUES ('5', 'Yoelma Rodríguez Venancio,', 'el taller fue muy nutritivo, nos ayuda a trabajar mejor con nuestros socios, invertir en educación y fidelización, aprendí la importancia de la perseverancia, de actuar de manera optimista, entender y respetar los roles dentro de la organización. Hija de productor de café, asistente comercial CAC. Divisoria – Huánuco', null, '0');
INSERT INTO `testimonio` VALUES ('6', 'Jorge Basilio Palomino', 'Esta Capacitación ha sido muy importante, es una vivencia nueva, he aprendido herramientas de gestión, me gusta la metodología que hace que participemos todos, nos ayuda a trabajar en equipo y trabajar con una sola visión. Presidente – Presidente de la Cooperativa Central de productores de alpaca -COOPECAN- AREQUIPA', null, '0');
INSERT INTO `testimonio` VALUES ('7', 'Felicita Aguirre', 'El taller ayudó a ver nuestra realidad, me voy satisfecha de las enseñanzas recibidas, fue un curso especial e inolvidable. Tengo como compromiso poner en práctica todos los conocimientos recibidos. Productora de Cacao del departamento de San Martín.', null, '0');

-- ----------------------------
-- Table structure for tipo_exp
-- ----------------------------
DROP TABLE IF EXISTS `tipo_exp`;
CREATE TABLE `tipo_exp` (
  `id_tipo_exp` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_tipo_exp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tipo_exp
-- ----------------------------

-- ----------------------------
-- Table structure for trabajo
-- ----------------------------
DROP TABLE IF EXISTS `trabajo`;
CREATE TABLE `trabajo` (
  `id_trabajo` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) DEFAULT NULL,
  `estado` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id_trabajo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of trabajo
-- ----------------------------
INSERT INTO `trabajo` VALUES ('1', 'EMPRENDIMIENTO PRODUCTIVO', '0');
INSERT INTO `trabajo` VALUES ('2', 'Asesoría en Fundraising y generación de fondos', '0');
INSERT INTO `trabajo` VALUES ('3', 'SECTOR GUBERNAMENTAL', '0');

-- ----------------------------
-- Table structure for ubigeo
-- ----------------------------
DROP TABLE IF EXISTS `ubigeo`;
CREATE TABLE `ubigeo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CodDpto` int(100) DEFAULT NULL,
  `CodProv` int(100) DEFAULT NULL,
  `CodDist` int(100) DEFAULT NULL,
  `Nombre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2053 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ubigeo
-- ----------------------------
INSERT INTO `ubigeo` VALUES ('1', '1', '0', '0', 'AMAZONAS');
INSERT INTO `ubigeo` VALUES ('2', '1', '1', '0', 'CHACHAPOYAS');
INSERT INTO `ubigeo` VALUES ('3', '1', '1', '1', 'CHACHAPOYAS');
INSERT INTO `ubigeo` VALUES ('4', '1', '1', '2', 'ASUNCION');
INSERT INTO `ubigeo` VALUES ('5', '1', '1', '3', 'BALSAS');
INSERT INTO `ubigeo` VALUES ('6', '1', '1', '4', 'CHETO');
INSERT INTO `ubigeo` VALUES ('7', '1', '1', '5', 'CHILIQUIN');
INSERT INTO `ubigeo` VALUES ('8', '1', '1', '6', 'CHUQUIBAMBA');
INSERT INTO `ubigeo` VALUES ('9', '1', '1', '7', 'GRANADA');
INSERT INTO `ubigeo` VALUES ('10', '1', '1', '8', 'HUANCAS');
INSERT INTO `ubigeo` VALUES ('11', '1', '1', '9', 'LA JALCA');
INSERT INTO `ubigeo` VALUES ('12', '1', '1', '10', 'LEIMEBAMBA');
INSERT INTO `ubigeo` VALUES ('13', '1', '1', '11', 'LEVANTO');
INSERT INTO `ubigeo` VALUES ('14', '1', '1', '12', 'MAGDALENA');
INSERT INTO `ubigeo` VALUES ('15', '1', '1', '13', 'MARISCAL CASTILLA');
INSERT INTO `ubigeo` VALUES ('16', '1', '1', '14', 'MOLINOPAMPA');
INSERT INTO `ubigeo` VALUES ('17', '1', '1', '15', 'MONTEVIDEO');
INSERT INTO `ubigeo` VALUES ('18', '1', '1', '16', 'OLLEROS');
INSERT INTO `ubigeo` VALUES ('19', '1', '1', '17', 'QUINJALCA');
INSERT INTO `ubigeo` VALUES ('20', '1', '1', '18', 'SAN FRANCISCO DE DAGUAS');
INSERT INTO `ubigeo` VALUES ('21', '1', '1', '19', 'SAN ISIDRO DE MAINO');
INSERT INTO `ubigeo` VALUES ('22', '1', '1', '20', 'SOLOCO');
INSERT INTO `ubigeo` VALUES ('23', '1', '1', '21', 'SONCHE');
INSERT INTO `ubigeo` VALUES ('24', '1', '2', '0', 'BAGUA');
INSERT INTO `ubigeo` VALUES ('25', '1', '2', '1', 'LA PECA');
INSERT INTO `ubigeo` VALUES ('26', '1', '2', '2', 'ARAMANGO');
INSERT INTO `ubigeo` VALUES ('27', '1', '2', '3', 'COPALLIN');
INSERT INTO `ubigeo` VALUES ('28', '1', '2', '4', 'EL PARCO');
INSERT INTO `ubigeo` VALUES ('29', '1', '2', '5', 'IMAZA');
INSERT INTO `ubigeo` VALUES ('30', '1', '3', '0', 'BONGARA');
INSERT INTO `ubigeo` VALUES ('31', '1', '3', '1', 'JUMBILLA');
INSERT INTO `ubigeo` VALUES ('32', '1', '3', '2', 'CHISQUILLA');
INSERT INTO `ubigeo` VALUES ('33', '1', '3', '3', 'CHURUJA');
INSERT INTO `ubigeo` VALUES ('34', '1', '3', '4', 'COROSHA');
INSERT INTO `ubigeo` VALUES ('35', '1', '3', '5', 'CUISPES');
INSERT INTO `ubigeo` VALUES ('36', '1', '3', '6', 'FLORIDA');
INSERT INTO `ubigeo` VALUES ('37', '1', '3', '7', 'JAZAN');
INSERT INTO `ubigeo` VALUES ('38', '1', '3', '8', 'RECTA');
INSERT INTO `ubigeo` VALUES ('39', '1', '3', '9', 'SAN CARLOS');
INSERT INTO `ubigeo` VALUES ('40', '1', '3', '10', 'SHIPASBAMBA');
INSERT INTO `ubigeo` VALUES ('41', '1', '3', '11', 'VALERA');
INSERT INTO `ubigeo` VALUES ('42', '1', '3', '12', 'YAMBRASBAMBA');
INSERT INTO `ubigeo` VALUES ('43', '1', '4', '0', 'CONDORCANQUI');
INSERT INTO `ubigeo` VALUES ('44', '1', '4', '1', 'NIEVA');
INSERT INTO `ubigeo` VALUES ('45', '1', '4', '2', 'EL CENEPA');
INSERT INTO `ubigeo` VALUES ('46', '1', '4', '3', 'RIO SANTIAGO');
INSERT INTO `ubigeo` VALUES ('47', '1', '5', '0', 'LUYA');
INSERT INTO `ubigeo` VALUES ('48', '1', '5', '1', 'LAMUD');
INSERT INTO `ubigeo` VALUES ('49', '1', '5', '2', 'CAMPORREDONDO');
INSERT INTO `ubigeo` VALUES ('50', '1', '5', '3', 'COCABAMBA');
INSERT INTO `ubigeo` VALUES ('51', '1', '5', '4', 'COLCAMAR');
INSERT INTO `ubigeo` VALUES ('52', '1', '5', '5', 'CONILA');
INSERT INTO `ubigeo` VALUES ('53', '1', '5', '6', 'INGUILPATA');
INSERT INTO `ubigeo` VALUES ('54', '1', '5', '7', 'LONGUITA');
INSERT INTO `ubigeo` VALUES ('55', '1', '5', '8', 'LONYA CHICO');
INSERT INTO `ubigeo` VALUES ('56', '1', '5', '9', 'LUYA');
INSERT INTO `ubigeo` VALUES ('57', '1', '5', '10', 'LUYA VIEJO');
INSERT INTO `ubigeo` VALUES ('58', '1', '5', '11', 'MARIA');
INSERT INTO `ubigeo` VALUES ('59', '1', '5', '12', 'OCALLI');
INSERT INTO `ubigeo` VALUES ('60', '1', '5', '13', 'OCUMAL');
INSERT INTO `ubigeo` VALUES ('61', '1', '5', '14', 'PISUQUIA');
INSERT INTO `ubigeo` VALUES ('62', '1', '5', '15', 'PROVIDENCIA');
INSERT INTO `ubigeo` VALUES ('63', '1', '5', '16', 'SAN CRISTOBAL');
INSERT INTO `ubigeo` VALUES ('64', '1', '5', '17', 'SAN FRANCISCO DEL YESO');
INSERT INTO `ubigeo` VALUES ('65', '1', '5', '18', 'SAN JERONIMO');
INSERT INTO `ubigeo` VALUES ('66', '1', '5', '19', 'SAN JUAN DE LOPECANCHA');
INSERT INTO `ubigeo` VALUES ('67', '1', '5', '20', 'SANTA CATALINA');
INSERT INTO `ubigeo` VALUES ('68', '1', '5', '21', 'SANTO TOMAS');
INSERT INTO `ubigeo` VALUES ('69', '1', '5', '22', 'TINGO');
INSERT INTO `ubigeo` VALUES ('70', '1', '5', '23', 'TRITA');
INSERT INTO `ubigeo` VALUES ('71', '1', '6', '0', 'RODRIGUEZ DE MENDOZA');
INSERT INTO `ubigeo` VALUES ('72', '1', '6', '1', 'SAN NICOLAS');
INSERT INTO `ubigeo` VALUES ('73', '1', '6', '2', 'CHIRIMOTO');
INSERT INTO `ubigeo` VALUES ('74', '1', '6', '3', 'COCHAMAL');
INSERT INTO `ubigeo` VALUES ('75', '1', '6', '4', 'HUAMBO');
INSERT INTO `ubigeo` VALUES ('76', '1', '6', '5', 'LIMABAMBA');
INSERT INTO `ubigeo` VALUES ('77', '1', '6', '6', 'LONGAR');
INSERT INTO `ubigeo` VALUES ('78', '1', '6', '7', 'MARISCAL BENAVIDES');
INSERT INTO `ubigeo` VALUES ('79', '1', '6', '8', 'MILPUC');
INSERT INTO `ubigeo` VALUES ('80', '1', '6', '9', 'OMIA');
INSERT INTO `ubigeo` VALUES ('81', '1', '6', '10', 'SANTA ROSA');
INSERT INTO `ubigeo` VALUES ('82', '1', '6', '11', 'TOTORA');
INSERT INTO `ubigeo` VALUES ('83', '1', '6', '12', 'VISTA ALEGRE');
INSERT INTO `ubigeo` VALUES ('84', '1', '7', '0', 'UTCUBAMBA');
INSERT INTO `ubigeo` VALUES ('85', '1', '7', '1', 'BAGUA GRANDE');
INSERT INTO `ubigeo` VALUES ('86', '1', '7', '2', 'CAJARURO');
INSERT INTO `ubigeo` VALUES ('87', '1', '7', '3', 'CUMBA');
INSERT INTO `ubigeo` VALUES ('88', '1', '7', '4', 'EL MILAGRO');
INSERT INTO `ubigeo` VALUES ('89', '1', '7', '5', 'JAMALCA');
INSERT INTO `ubigeo` VALUES ('90', '1', '7', '6', 'LONYA GRANDE');
INSERT INTO `ubigeo` VALUES ('91', '1', '7', '7', 'YAMON');
INSERT INTO `ubigeo` VALUES ('92', '2', '0', '0', 'ANCASH');
INSERT INTO `ubigeo` VALUES ('93', '2', '1', '0', 'HUARAZ');
INSERT INTO `ubigeo` VALUES ('94', '2', '1', '1', 'HUARAZ');
INSERT INTO `ubigeo` VALUES ('95', '2', '1', '2', 'COCHABAMBA');
INSERT INTO `ubigeo` VALUES ('96', '2', '1', '3', 'COLCABAMBA');
INSERT INTO `ubigeo` VALUES ('97', '2', '1', '4', 'HUANCHAY');
INSERT INTO `ubigeo` VALUES ('98', '2', '1', '5', 'INDEPENDENCIA');
INSERT INTO `ubigeo` VALUES ('99', '2', '1', '6', 'JANGAS');
INSERT INTO `ubigeo` VALUES ('100', '2', '1', '7', 'LA LIBERTAD');
INSERT INTO `ubigeo` VALUES ('101', '2', '1', '8', 'OLLEROS');
INSERT INTO `ubigeo` VALUES ('102', '2', '1', '9', 'PAMPAS');
INSERT INTO `ubigeo` VALUES ('103', '2', '1', '10', 'PARIACOTO');
INSERT INTO `ubigeo` VALUES ('104', '2', '1', '11', 'PIRA');
INSERT INTO `ubigeo` VALUES ('105', '2', '1', '12', 'TARICA');
INSERT INTO `ubigeo` VALUES ('106', '2', '2', '0', 'AIJA');
INSERT INTO `ubigeo` VALUES ('107', '2', '2', '1', 'AIJA');
INSERT INTO `ubigeo` VALUES ('108', '2', '2', '2', 'CORIS');
INSERT INTO `ubigeo` VALUES ('109', '2', '2', '3', 'HUACLLAN');
INSERT INTO `ubigeo` VALUES ('110', '2', '2', '4', 'LA MERCED');
INSERT INTO `ubigeo` VALUES ('111', '2', '2', '5', 'SUCCHA');
INSERT INTO `ubigeo` VALUES ('112', '2', '3', '0', 'ANTONIO RAYMONDI');
INSERT INTO `ubigeo` VALUES ('113', '2', '3', '1', 'LLAMELLIN');
INSERT INTO `ubigeo` VALUES ('114', '2', '3', '2', 'ACZO');
INSERT INTO `ubigeo` VALUES ('115', '2', '3', '3', 'CHACCHO');
INSERT INTO `ubigeo` VALUES ('116', '2', '3', '4', 'CHINGAS');
INSERT INTO `ubigeo` VALUES ('117', '2', '3', '5', 'MIRGAS');
INSERT INTO `ubigeo` VALUES ('118', '2', '3', '6', 'SAN JUAN DE RONTOY');
INSERT INTO `ubigeo` VALUES ('119', '2', '4', '0', 'ASUNCION');
INSERT INTO `ubigeo` VALUES ('120', '2', '4', '1', 'CHACAS');
INSERT INTO `ubigeo` VALUES ('121', '2', '4', '2', 'ACOCHACA');
INSERT INTO `ubigeo` VALUES ('122', '2', '5', '0', 'BOLOGNESI');
INSERT INTO `ubigeo` VALUES ('123', '2', '5', '1', 'CHIQUIAN');
INSERT INTO `ubigeo` VALUES ('124', '2', '5', '2', 'ABELARDO PARDO LEZAMETA');
INSERT INTO `ubigeo` VALUES ('125', '2', '5', '3', 'ANTONIO RAYMONDI');
INSERT INTO `ubigeo` VALUES ('126', '2', '5', '4', 'AQUIA');
INSERT INTO `ubigeo` VALUES ('127', '2', '5', '5', 'CAJACAY');
INSERT INTO `ubigeo` VALUES ('128', '2', '5', '6', 'CANIS');
INSERT INTO `ubigeo` VALUES ('129', '2', '5', '7', 'COLQUIOC');
INSERT INTO `ubigeo` VALUES ('130', '2', '5', '8', 'HUALLANCA');
INSERT INTO `ubigeo` VALUES ('131', '2', '5', '9', 'HUASTA');
INSERT INTO `ubigeo` VALUES ('132', '2', '5', '10', 'HUAYLLACAYAN');
INSERT INTO `ubigeo` VALUES ('133', '2', '5', '11', 'LA PRIMAVERA');
INSERT INTO `ubigeo` VALUES ('134', '2', '5', '12', 'MANGAS');
INSERT INTO `ubigeo` VALUES ('135', '2', '5', '13', 'PACLLON');
INSERT INTO `ubigeo` VALUES ('136', '2', '5', '14', 'SAN MIGUEL DE CORPANQUI');
INSERT INTO `ubigeo` VALUES ('137', '2', '5', '15', 'TICLLOS');
INSERT INTO `ubigeo` VALUES ('138', '2', '6', '0', 'CARHUAZ');
INSERT INTO `ubigeo` VALUES ('139', '2', '6', '1', 'CARHUAZ');
INSERT INTO `ubigeo` VALUES ('140', '2', '6', '2', 'ACOPAMPA');
INSERT INTO `ubigeo` VALUES ('141', '2', '6', '3', 'AMASHCA');
INSERT INTO `ubigeo` VALUES ('142', '2', '6', '4', 'ANTA');
INSERT INTO `ubigeo` VALUES ('143', '2', '6', '5', 'ATAQUERO');
INSERT INTO `ubigeo` VALUES ('144', '2', '6', '6', 'MARCARA');
INSERT INTO `ubigeo` VALUES ('145', '2', '6', '7', 'PARIAHUANCA');
INSERT INTO `ubigeo` VALUES ('146', '2', '6', '8', 'SAN MIGUEL DE ACO');
INSERT INTO `ubigeo` VALUES ('147', '2', '6', '9', 'SHILLA');
INSERT INTO `ubigeo` VALUES ('148', '2', '6', '10', 'TINCO');
INSERT INTO `ubigeo` VALUES ('149', '2', '6', '11', 'YUNGAR');
INSERT INTO `ubigeo` VALUES ('150', '2', '7', '0', 'CARLOS FERMIN FITZCARRALD');
INSERT INTO `ubigeo` VALUES ('151', '2', '7', '1', 'SAN LUIS');
INSERT INTO `ubigeo` VALUES ('152', '2', '7', '2', 'SAN NICOLAS');
INSERT INTO `ubigeo` VALUES ('153', '2', '7', '3', 'YAUYA');
INSERT INTO `ubigeo` VALUES ('154', '2', '8', '0', 'CASMA');
INSERT INTO `ubigeo` VALUES ('155', '2', '8', '1', 'CASMA');
INSERT INTO `ubigeo` VALUES ('156', '2', '8', '2', 'BUENA VISTA ALTA');
INSERT INTO `ubigeo` VALUES ('157', '2', '8', '3', 'COMANDANTE NOEL');
INSERT INTO `ubigeo` VALUES ('158', '2', '8', '4', 'YAUTAN');
INSERT INTO `ubigeo` VALUES ('159', '2', '9', '0', 'CORONGO');
INSERT INTO `ubigeo` VALUES ('160', '2', '9', '1', 'CORONGO');
INSERT INTO `ubigeo` VALUES ('161', '2', '9', '2', 'ACO');
INSERT INTO `ubigeo` VALUES ('162', '2', '9', '3', 'BAMBAS');
INSERT INTO `ubigeo` VALUES ('163', '2', '9', '4', 'CUSCA');
INSERT INTO `ubigeo` VALUES ('164', '2', '9', '5', 'LA PAMPA');
INSERT INTO `ubigeo` VALUES ('165', '2', '9', '6', 'YANAC');
INSERT INTO `ubigeo` VALUES ('166', '2', '9', '7', 'YUPAN');
INSERT INTO `ubigeo` VALUES ('167', '2', '10', '0', 'HUARI');
INSERT INTO `ubigeo` VALUES ('168', '2', '10', '1', 'HUARI');
INSERT INTO `ubigeo` VALUES ('169', '2', '10', '2', 'ANRA');
INSERT INTO `ubigeo` VALUES ('170', '2', '10', '3', 'CAJAY');
INSERT INTO `ubigeo` VALUES ('171', '2', '10', '4', 'CHAVIN DE HUANTAR');
INSERT INTO `ubigeo` VALUES ('172', '2', '10', '5', 'HUACACHI');
INSERT INTO `ubigeo` VALUES ('173', '2', '10', '6', 'HUACCHIS');
INSERT INTO `ubigeo` VALUES ('174', '2', '10', '7', 'HUACHIS');
INSERT INTO `ubigeo` VALUES ('175', '2', '10', '8', 'HUANTAR');
INSERT INTO `ubigeo` VALUES ('176', '2', '10', '9', 'MASIN');
INSERT INTO `ubigeo` VALUES ('177', '2', '10', '10', 'PAUCAS');
INSERT INTO `ubigeo` VALUES ('178', '2', '10', '11', 'PONTO');
INSERT INTO `ubigeo` VALUES ('179', '2', '10', '12', 'RAHUAPAMPA');
INSERT INTO `ubigeo` VALUES ('180', '2', '10', '13', 'RAPAYAN');
INSERT INTO `ubigeo` VALUES ('181', '2', '10', '14', 'SAN MARCOS');
INSERT INTO `ubigeo` VALUES ('182', '2', '10', '15', 'SAN PEDRO DE CHANA');
INSERT INTO `ubigeo` VALUES ('183', '2', '10', '16', 'UCO');
INSERT INTO `ubigeo` VALUES ('184', '2', '11', '0', 'HUARMEY');
INSERT INTO `ubigeo` VALUES ('185', '2', '11', '1', 'HUARMEY');
INSERT INTO `ubigeo` VALUES ('186', '2', '11', '2', 'COCHAPETI');
INSERT INTO `ubigeo` VALUES ('187', '2', '11', '3', 'CULEBRAS');
INSERT INTO `ubigeo` VALUES ('188', '2', '11', '4', 'HUAYAN');
INSERT INTO `ubigeo` VALUES ('189', '2', '11', '5', 'MALVAS');
INSERT INTO `ubigeo` VALUES ('190', '2', '12', '0', 'HUAYLAS');
INSERT INTO `ubigeo` VALUES ('191', '2', '12', '1', 'CARAZ');
INSERT INTO `ubigeo` VALUES ('192', '2', '12', '2', 'HUALLANCA');
INSERT INTO `ubigeo` VALUES ('193', '2', '12', '3', 'HUATA');
INSERT INTO `ubigeo` VALUES ('194', '2', '12', '4', 'HUAYLAS');
INSERT INTO `ubigeo` VALUES ('195', '2', '12', '5', 'MATO');
INSERT INTO `ubigeo` VALUES ('196', '2', '12', '6', 'PAMPAROMAS');
INSERT INTO `ubigeo` VALUES ('197', '2', '12', '7', 'PUEBLO LIBRE');
INSERT INTO `ubigeo` VALUES ('198', '2', '12', '8', 'SANTA CRUZ');
INSERT INTO `ubigeo` VALUES ('199', '2', '12', '9', 'SANTO TORIBIO');
INSERT INTO `ubigeo` VALUES ('200', '2', '12', '10', 'YURACMARCA');
INSERT INTO `ubigeo` VALUES ('201', '2', '13', '0', 'MARISCAL LUZURIAGA');
INSERT INTO `ubigeo` VALUES ('202', '2', '13', '1', 'PISCOBAMBA');
INSERT INTO `ubigeo` VALUES ('203', '2', '13', '2', 'CASCA');
INSERT INTO `ubigeo` VALUES ('204', '2', '13', '3', 'ELEAZAR GUZMAN BARRON');
INSERT INTO `ubigeo` VALUES ('205', '2', '13', '4', 'FIDEL OLIVAS ESCUDERO');
INSERT INTO `ubigeo` VALUES ('206', '2', '13', '5', 'LLAMA');
INSERT INTO `ubigeo` VALUES ('207', '2', '13', '6', 'LLUMPA');
INSERT INTO `ubigeo` VALUES ('208', '2', '13', '7', 'LUCMA');
INSERT INTO `ubigeo` VALUES ('209', '2', '13', '8', 'MUSGA');
INSERT INTO `ubigeo` VALUES ('210', '2', '14', '0', 'OCROS');
INSERT INTO `ubigeo` VALUES ('211', '2', '14', '1', 'OCROS');
INSERT INTO `ubigeo` VALUES ('212', '2', '14', '2', 'ACAS');
INSERT INTO `ubigeo` VALUES ('213', '2', '14', '3', 'CAJAMARQUILLA');
INSERT INTO `ubigeo` VALUES ('214', '2', '14', '4', 'CARHUAPAMPA');
INSERT INTO `ubigeo` VALUES ('215', '2', '14', '5', 'COCHAS');
INSERT INTO `ubigeo` VALUES ('216', '2', '14', '6', 'CONGAS');
INSERT INTO `ubigeo` VALUES ('217', '2', '14', '7', 'LLIPA');
INSERT INTO `ubigeo` VALUES ('218', '2', '14', '8', 'SAN CRISTOBAL DE RAJAN');
INSERT INTO `ubigeo` VALUES ('219', '2', '14', '9', 'SAN PEDRO');
INSERT INTO `ubigeo` VALUES ('220', '2', '14', '10', 'SANTIAGO DE CHILCAS');
INSERT INTO `ubigeo` VALUES ('221', '2', '15', '0', 'PALLASCA');
INSERT INTO `ubigeo` VALUES ('222', '2', '15', '1', 'CABANA');
INSERT INTO `ubigeo` VALUES ('223', '2', '15', '2', 'BOLOGNESI');
INSERT INTO `ubigeo` VALUES ('224', '2', '15', '3', 'CONCHUCOS');
INSERT INTO `ubigeo` VALUES ('225', '2', '15', '4', 'HUACASCHUQUE');
INSERT INTO `ubigeo` VALUES ('226', '2', '15', '5', 'HUANDOVAL');
INSERT INTO `ubigeo` VALUES ('227', '2', '15', '6', 'LACABAMBA');
INSERT INTO `ubigeo` VALUES ('228', '2', '15', '7', 'LLAPO');
INSERT INTO `ubigeo` VALUES ('229', '2', '15', '8', 'PALLASCA');
INSERT INTO `ubigeo` VALUES ('230', '2', '15', '9', 'PAMPAS');
INSERT INTO `ubigeo` VALUES ('231', '2', '15', '10', 'SANTA ROSA');
INSERT INTO `ubigeo` VALUES ('232', '2', '15', '11', 'TAUCA');
INSERT INTO `ubigeo` VALUES ('233', '2', '16', '0', 'POMABAMBA');
INSERT INTO `ubigeo` VALUES ('234', '2', '16', '1', 'POMABAMBA');
INSERT INTO `ubigeo` VALUES ('235', '2', '16', '2', 'HUAYLLAN');
INSERT INTO `ubigeo` VALUES ('236', '2', '16', '3', 'PAROBAMBA');
INSERT INTO `ubigeo` VALUES ('237', '2', '16', '4', 'QUINUABAMBA');
INSERT INTO `ubigeo` VALUES ('238', '2', '17', '0', 'RECUAY');
INSERT INTO `ubigeo` VALUES ('239', '2', '17', '1', 'RECUAY');
INSERT INTO `ubigeo` VALUES ('240', '2', '17', '2', 'CATAC');
INSERT INTO `ubigeo` VALUES ('241', '2', '17', '3', 'COTAPARACO');
INSERT INTO `ubigeo` VALUES ('242', '2', '17', '4', 'HUAYLLAPAMPA');
INSERT INTO `ubigeo` VALUES ('243', '2', '17', '5', 'LLACLLIN');
INSERT INTO `ubigeo` VALUES ('244', '2', '17', '6', 'MARCA');
INSERT INTO `ubigeo` VALUES ('245', '2', '17', '7', 'PAMPAS CHICO');
INSERT INTO `ubigeo` VALUES ('246', '2', '17', '8', 'PARARIN');
INSERT INTO `ubigeo` VALUES ('247', '2', '17', '9', 'TAPACOCHA');
INSERT INTO `ubigeo` VALUES ('248', '2', '17', '10', 'TICAPAMPA');
INSERT INTO `ubigeo` VALUES ('249', '2', '18', '0', 'SANTA');
INSERT INTO `ubigeo` VALUES ('250', '2', '18', '1', 'CHIMBOTE');
INSERT INTO `ubigeo` VALUES ('251', '2', '18', '2', 'CACERES DEL PERU');
INSERT INTO `ubigeo` VALUES ('252', '2', '18', '3', 'COISHCO');
INSERT INTO `ubigeo` VALUES ('253', '2', '18', '4', 'MACATE');
INSERT INTO `ubigeo` VALUES ('254', '2', '18', '5', 'MORO');
INSERT INTO `ubigeo` VALUES ('255', '2', '18', '6', 'NEPEÑA');
INSERT INTO `ubigeo` VALUES ('256', '2', '18', '7', 'SAMANCO');
INSERT INTO `ubigeo` VALUES ('257', '2', '18', '8', 'SANTA');
INSERT INTO `ubigeo` VALUES ('258', '2', '18', '9', 'NUEVO CHIMBOTE');
INSERT INTO `ubigeo` VALUES ('259', '2', '19', '0', 'SIHUAS');
INSERT INTO `ubigeo` VALUES ('260', '2', '19', '1', 'SIHUAS');
INSERT INTO `ubigeo` VALUES ('261', '2', '19', '2', 'ACOBAMBA');
INSERT INTO `ubigeo` VALUES ('262', '2', '19', '3', 'ALFONSO UGARTE');
INSERT INTO `ubigeo` VALUES ('263', '2', '19', '4', 'CASHAPAMPA');
INSERT INTO `ubigeo` VALUES ('264', '2', '19', '5', 'CHINGALPO');
INSERT INTO `ubigeo` VALUES ('265', '2', '19', '6', 'HUAYLLABAMBA');
INSERT INTO `ubigeo` VALUES ('266', '2', '19', '7', 'QUICHES');
INSERT INTO `ubigeo` VALUES ('267', '2', '19', '8', 'RAGASH');
INSERT INTO `ubigeo` VALUES ('268', '2', '19', '9', 'SAN JUAN');
INSERT INTO `ubigeo` VALUES ('269', '2', '19', '10', 'SICSIBAMBA');
INSERT INTO `ubigeo` VALUES ('270', '2', '20', '0', 'YUNGAY');
INSERT INTO `ubigeo` VALUES ('271', '2', '20', '1', 'YUNGAY');
INSERT INTO `ubigeo` VALUES ('272', '2', '20', '2', 'CASCAPARA');
INSERT INTO `ubigeo` VALUES ('273', '2', '20', '3', 'MANCOS');
INSERT INTO `ubigeo` VALUES ('274', '2', '20', '4', 'MATACOTO');
INSERT INTO `ubigeo` VALUES ('275', '2', '20', '5', 'QUILLO');
INSERT INTO `ubigeo` VALUES ('276', '2', '20', '6', 'RANRAHIRCA');
INSERT INTO `ubigeo` VALUES ('277', '2', '20', '7', 'SHUPLUY');
INSERT INTO `ubigeo` VALUES ('278', '2', '20', '8', 'YANAMA');
INSERT INTO `ubigeo` VALUES ('279', '3', '0', '0', 'APURIMAC');
INSERT INTO `ubigeo` VALUES ('280', '3', '1', '0', 'ABANCAY');
INSERT INTO `ubigeo` VALUES ('281', '3', '1', '1', 'ABANCAY');
INSERT INTO `ubigeo` VALUES ('282', '3', '1', '2', 'CHACOCHE');
INSERT INTO `ubigeo` VALUES ('283', '3', '1', '3', 'CIRCA');
INSERT INTO `ubigeo` VALUES ('284', '3', '1', '4', 'CURAHUASI');
INSERT INTO `ubigeo` VALUES ('285', '3', '1', '5', 'HUANIPACA');
INSERT INTO `ubigeo` VALUES ('286', '3', '1', '6', 'LAMBRAMA');
INSERT INTO `ubigeo` VALUES ('287', '3', '1', '7', 'PICHIRHUA');
INSERT INTO `ubigeo` VALUES ('288', '3', '1', '8', 'SAN PEDRO DE CACHORA');
INSERT INTO `ubigeo` VALUES ('289', '3', '1', '9', 'TAMBURCO');
INSERT INTO `ubigeo` VALUES ('290', '3', '2', '0', 'ANDAHUAYLAS');
INSERT INTO `ubigeo` VALUES ('291', '3', '2', '1', 'ANDAHUAYLAS');
INSERT INTO `ubigeo` VALUES ('292', '3', '2', '2', 'ANDARAPA');
INSERT INTO `ubigeo` VALUES ('293', '3', '2', '3', 'CHIARA');
INSERT INTO `ubigeo` VALUES ('294', '3', '2', '4', 'HUANCARAMA');
INSERT INTO `ubigeo` VALUES ('295', '3', '2', '5', 'HUANCARAY');
INSERT INTO `ubigeo` VALUES ('296', '3', '2', '6', 'HUAYANA');
INSERT INTO `ubigeo` VALUES ('297', '3', '2', '7', 'KISHUARA');
INSERT INTO `ubigeo` VALUES ('298', '3', '2', '8', 'PACOBAMBA');
INSERT INTO `ubigeo` VALUES ('299', '3', '2', '9', 'PACUCHA');
INSERT INTO `ubigeo` VALUES ('300', '3', '2', '10', 'PAMPACHIRI');
INSERT INTO `ubigeo` VALUES ('301', '3', '2', '11', 'POMACOCHA');
INSERT INTO `ubigeo` VALUES ('302', '3', '2', '12', 'SAN ANTONIO DE CACHI');
INSERT INTO `ubigeo` VALUES ('303', '3', '2', '13', 'SAN JERONIMO');
INSERT INTO `ubigeo` VALUES ('304', '3', '2', '14', 'SAN MIGUEL DE CHACCRAMPA');
INSERT INTO `ubigeo` VALUES ('305', '3', '2', '15', 'SANTA MARIA DE CHICMO');
INSERT INTO `ubigeo` VALUES ('306', '3', '2', '16', 'TALAVERA');
INSERT INTO `ubigeo` VALUES ('307', '3', '2', '17', 'TUMAY HUARACA');
INSERT INTO `ubigeo` VALUES ('308', '3', '2', '18', 'TURPO');
INSERT INTO `ubigeo` VALUES ('309', '3', '2', '19', 'KAQUIABAMBA');
INSERT INTO `ubigeo` VALUES ('310', '3', '3', '0', 'ANTABAMBA');
INSERT INTO `ubigeo` VALUES ('311', '3', '3', '1', 'ANTABAMBA');
INSERT INTO `ubigeo` VALUES ('312', '3', '3', '2', 'EL ORO');
INSERT INTO `ubigeo` VALUES ('313', '3', '3', '3', 'HUAQUIRCA');
INSERT INTO `ubigeo` VALUES ('314', '3', '3', '4', 'JUAN ESPINOZA MEDRANO');
INSERT INTO `ubigeo` VALUES ('315', '3', '3', '5', 'OROPESA');
INSERT INTO `ubigeo` VALUES ('316', '3', '3', '6', 'PACHACONAS');
INSERT INTO `ubigeo` VALUES ('317', '3', '3', '7', 'SABAINO');
INSERT INTO `ubigeo` VALUES ('318', '3', '4', '0', 'AYMARAES');
INSERT INTO `ubigeo` VALUES ('319', '3', '4', '1', 'CHALHUANCA');
INSERT INTO `ubigeo` VALUES ('320', '3', '4', '2', 'CAPAYA');
INSERT INTO `ubigeo` VALUES ('321', '3', '4', '3', 'CARAYBAMBA');
INSERT INTO `ubigeo` VALUES ('322', '3', '4', '4', 'CHAPIMARCA');
INSERT INTO `ubigeo` VALUES ('323', '3', '4', '5', 'COLCABAMBA');
INSERT INTO `ubigeo` VALUES ('324', '3', '4', '6', 'COTARUSE');
INSERT INTO `ubigeo` VALUES ('325', '3', '4', '7', 'HUAYLLO');
INSERT INTO `ubigeo` VALUES ('326', '3', '4', '8', 'JUSTO APU SAHUARAURA');
INSERT INTO `ubigeo` VALUES ('327', '3', '4', '9', 'LUCRE');
INSERT INTO `ubigeo` VALUES ('328', '3', '4', '10', 'POCOHUANCA');
INSERT INTO `ubigeo` VALUES ('329', '3', '4', '11', 'SAN JUAN DE CHACÑA');
INSERT INTO `ubigeo` VALUES ('330', '3', '4', '12', 'SAÑAYCA');
INSERT INTO `ubigeo` VALUES ('331', '3', '4', '13', 'SORAYA');
INSERT INTO `ubigeo` VALUES ('332', '3', '4', '14', 'TAPAIRIHUA');
INSERT INTO `ubigeo` VALUES ('333', '3', '4', '15', 'TINTAY');
INSERT INTO `ubigeo` VALUES ('334', '3', '4', '16', 'TORAYA');
INSERT INTO `ubigeo` VALUES ('335', '3', '4', '17', 'YANACA');
INSERT INTO `ubigeo` VALUES ('336', '3', '5', '0', 'COTABAMBAS');
INSERT INTO `ubigeo` VALUES ('337', '3', '5', '1', 'TAMBOBAMBA');
INSERT INTO `ubigeo` VALUES ('338', '3', '5', '2', 'COTABAMBAS');
INSERT INTO `ubigeo` VALUES ('339', '3', '5', '3', 'COYLLURQUI');
INSERT INTO `ubigeo` VALUES ('340', '3', '5', '4', 'HAQUIRA');
INSERT INTO `ubigeo` VALUES ('341', '3', '5', '5', 'MARA');
INSERT INTO `ubigeo` VALUES ('342', '3', '5', '6', 'CHALLHUAHUACHO');
INSERT INTO `ubigeo` VALUES ('343', '3', '6', '0', 'CHINCHEROS');
INSERT INTO `ubigeo` VALUES ('344', '3', '6', '1', 'CHINCHEROS');
INSERT INTO `ubigeo` VALUES ('345', '3', '6', '2', 'ANCO_HUALLO');
INSERT INTO `ubigeo` VALUES ('346', '3', '6', '3', 'COCHARCAS');
INSERT INTO `ubigeo` VALUES ('347', '3', '6', '4', 'HUACCANA');
INSERT INTO `ubigeo` VALUES ('348', '3', '6', '5', 'OCOBAMBA');
INSERT INTO `ubigeo` VALUES ('349', '3', '6', '6', 'ONGOY');
INSERT INTO `ubigeo` VALUES ('350', '3', '6', '7', 'URANMARCA');
INSERT INTO `ubigeo` VALUES ('351', '3', '6', '8', 'RANRACANCHA');
INSERT INTO `ubigeo` VALUES ('352', '3', '7', '0', 'GRAU');
INSERT INTO `ubigeo` VALUES ('353', '3', '7', '1', 'CHUQUIBAMBILLA');
INSERT INTO `ubigeo` VALUES ('354', '3', '7', '2', 'CURPAHUASI');
INSERT INTO `ubigeo` VALUES ('355', '3', '7', '3', 'GAMARRA');
INSERT INTO `ubigeo` VALUES ('356', '3', '7', '4', 'HUAYLLATI');
INSERT INTO `ubigeo` VALUES ('357', '3', '7', '5', 'MAMARA');
INSERT INTO `ubigeo` VALUES ('358', '3', '7', '6', 'MICAELA BASTIDAS');
INSERT INTO `ubigeo` VALUES ('359', '3', '7', '7', 'PATAYPAMPA');
INSERT INTO `ubigeo` VALUES ('360', '3', '7', '8', 'PROGRESO');
INSERT INTO `ubigeo` VALUES ('361', '3', '7', '9', 'SAN ANTONIO');
INSERT INTO `ubigeo` VALUES ('362', '3', '7', '10', 'SANTA ROSA');
INSERT INTO `ubigeo` VALUES ('363', '3', '7', '11', 'TURPAY');
INSERT INTO `ubigeo` VALUES ('364', '3', '7', '12', 'VILCABAMBA');
INSERT INTO `ubigeo` VALUES ('365', '3', '7', '13', 'VIRUNDO');
INSERT INTO `ubigeo` VALUES ('366', '3', '7', '14', 'CURASCO');
INSERT INTO `ubigeo` VALUES ('367', '4', '0', '0', 'AREQUIPA');
INSERT INTO `ubigeo` VALUES ('368', '4', '1', '0', 'AREQUIPA');
INSERT INTO `ubigeo` VALUES ('369', '4', '1', '1', 'AREQUIPA');
INSERT INTO `ubigeo` VALUES ('370', '4', '1', '2', 'ALTO SELVA ALEGRE');
INSERT INTO `ubigeo` VALUES ('371', '4', '1', '3', 'CAYMA');
INSERT INTO `ubigeo` VALUES ('372', '4', '1', '4', 'CERRO COLORADO');
INSERT INTO `ubigeo` VALUES ('373', '4', '1', '5', 'CHARACATO');
INSERT INTO `ubigeo` VALUES ('374', '4', '1', '6', 'CHIGUATA');
INSERT INTO `ubigeo` VALUES ('375', '4', '1', '7', 'JACOBO HUNTER');
INSERT INTO `ubigeo` VALUES ('376', '4', '1', '8', 'LA JOYA');
INSERT INTO `ubigeo` VALUES ('377', '4', '1', '9', 'MARIANO MELGAR');
INSERT INTO `ubigeo` VALUES ('378', '4', '1', '10', 'MIRAFLORES');
INSERT INTO `ubigeo` VALUES ('379', '4', '1', '11', 'MOLLEBAYA');
INSERT INTO `ubigeo` VALUES ('380', '4', '1', '12', 'PAUCARPATA');
INSERT INTO `ubigeo` VALUES ('381', '4', '1', '13', 'POCSI');
INSERT INTO `ubigeo` VALUES ('382', '4', '1', '14', 'POLOBAYA');
INSERT INTO `ubigeo` VALUES ('383', '4', '1', '15', 'QUEQUEÑA');
INSERT INTO `ubigeo` VALUES ('384', '4', '1', '16', 'SABANDIA');
INSERT INTO `ubigeo` VALUES ('385', '4', '1', '17', 'SACHACA');
INSERT INTO `ubigeo` VALUES ('386', '4', '1', '18', 'SAN JUAN DE SIGUAS');
INSERT INTO `ubigeo` VALUES ('387', '4', '1', '19', 'SAN JUAN DE TARUCANI');
INSERT INTO `ubigeo` VALUES ('388', '4', '1', '20', 'SANTA ISABEL DE SIGUAS');
INSERT INTO `ubigeo` VALUES ('389', '4', '1', '21', 'SANTA RITA DE SIGUAS');
INSERT INTO `ubigeo` VALUES ('390', '4', '1', '22', 'SOCABAYA');
INSERT INTO `ubigeo` VALUES ('391', '4', '1', '23', 'TIABAYA');
INSERT INTO `ubigeo` VALUES ('392', '4', '1', '24', 'UCHUMAYO');
INSERT INTO `ubigeo` VALUES ('393', '4', '1', '25', 'VITOR');
INSERT INTO `ubigeo` VALUES ('394', '4', '1', '26', 'YANAHUARA');
INSERT INTO `ubigeo` VALUES ('395', '4', '1', '27', 'YARABAMBA');
INSERT INTO `ubigeo` VALUES ('396', '4', '1', '28', 'YURA');
INSERT INTO `ubigeo` VALUES ('397', '4', '1', '29', 'JOSE LUIS BUSTAMANTE Y RIVERO');
INSERT INTO `ubigeo` VALUES ('398', '4', '2', '0', 'CAMANA');
INSERT INTO `ubigeo` VALUES ('399', '4', '2', '1', 'CAMANA');
INSERT INTO `ubigeo` VALUES ('400', '4', '2', '2', 'JOSE MARIA QUIMPER');
INSERT INTO `ubigeo` VALUES ('401', '4', '2', '3', 'MARIANO NICOLAS VALCARCEL');
INSERT INTO `ubigeo` VALUES ('402', '4', '2', '4', 'MARISCAL CACERES');
INSERT INTO `ubigeo` VALUES ('403', '4', '2', '5', 'NICOLAS DE PIEROLA');
INSERT INTO `ubigeo` VALUES ('404', '4', '2', '6', 'OCOÑA');
INSERT INTO `ubigeo` VALUES ('405', '4', '2', '7', 'QUILCA');
INSERT INTO `ubigeo` VALUES ('406', '4', '2', '8', 'SAMUEL PASTOR');
INSERT INTO `ubigeo` VALUES ('407', '4', '3', '0', 'CARAVELI');
INSERT INTO `ubigeo` VALUES ('408', '4', '3', '1', 'CARAVELI');
INSERT INTO `ubigeo` VALUES ('409', '4', '3', '2', 'ACARI');
INSERT INTO `ubigeo` VALUES ('410', '4', '3', '3', 'ATICO');
INSERT INTO `ubigeo` VALUES ('411', '4', '3', '4', 'ATIQUIPA');
INSERT INTO `ubigeo` VALUES ('412', '4', '3', '5', 'BELLA UNION');
INSERT INTO `ubigeo` VALUES ('413', '4', '3', '6', 'CAHUACHO');
INSERT INTO `ubigeo` VALUES ('414', '4', '3', '7', 'CHALA');
INSERT INTO `ubigeo` VALUES ('415', '4', '3', '8', 'CHAPARRA');
INSERT INTO `ubigeo` VALUES ('416', '4', '3', '9', 'HUANUHUANU');
INSERT INTO `ubigeo` VALUES ('417', '4', '3', '10', 'JAQUI');
INSERT INTO `ubigeo` VALUES ('418', '4', '3', '11', 'LOMAS');
INSERT INTO `ubigeo` VALUES ('419', '4', '3', '12', 'QUICACHA');
INSERT INTO `ubigeo` VALUES ('420', '4', '3', '13', 'YAUCA');
INSERT INTO `ubigeo` VALUES ('421', '4', '4', '0', 'CASTILLA');
INSERT INTO `ubigeo` VALUES ('422', '4', '4', '1', 'APLAO');
INSERT INTO `ubigeo` VALUES ('423', '4', '4', '2', 'ANDAGUA');
INSERT INTO `ubigeo` VALUES ('424', '4', '4', '3', 'AYO');
INSERT INTO `ubigeo` VALUES ('425', '4', '4', '4', 'CHACHAS');
INSERT INTO `ubigeo` VALUES ('426', '4', '4', '5', 'CHILCAYMARCA');
INSERT INTO `ubigeo` VALUES ('427', '4', '4', '6', 'CHOCO');
INSERT INTO `ubigeo` VALUES ('428', '4', '4', '7', 'HUANCARQUI');
INSERT INTO `ubigeo` VALUES ('429', '4', '4', '8', 'MACHAGUAY');
INSERT INTO `ubigeo` VALUES ('430', '4', '4', '9', 'ORCOPAMPA');
INSERT INTO `ubigeo` VALUES ('431', '4', '4', '10', 'PAMPACOLCA');
INSERT INTO `ubigeo` VALUES ('432', '4', '4', '11', 'TIPAN');
INSERT INTO `ubigeo` VALUES ('433', '4', '4', '12', 'UÑON');
INSERT INTO `ubigeo` VALUES ('434', '4', '4', '13', 'URACA');
INSERT INTO `ubigeo` VALUES ('435', '4', '4', '14', 'VIRACO');
INSERT INTO `ubigeo` VALUES ('436', '4', '5', '0', 'CAYLLOMA');
INSERT INTO `ubigeo` VALUES ('437', '4', '5', '1', 'CHIVAY');
INSERT INTO `ubigeo` VALUES ('438', '4', '5', '2', 'ACHOMA');
INSERT INTO `ubigeo` VALUES ('439', '4', '5', '3', 'CABANACONDE');
INSERT INTO `ubigeo` VALUES ('440', '4', '5', '4', 'CALLALLI');
INSERT INTO `ubigeo` VALUES ('441', '4', '5', '5', 'CAYLLOMA');
INSERT INTO `ubigeo` VALUES ('442', '4', '5', '6', 'COPORAQUE');
INSERT INTO `ubigeo` VALUES ('443', '4', '5', '7', 'HUAMBO');
INSERT INTO `ubigeo` VALUES ('444', '4', '5', '8', 'HUANCA');
INSERT INTO `ubigeo` VALUES ('445', '4', '5', '9', 'ICHUPAMPA');
INSERT INTO `ubigeo` VALUES ('446', '4', '5', '10', 'LARI');
INSERT INTO `ubigeo` VALUES ('447', '4', '5', '11', 'LLUTA');
INSERT INTO `ubigeo` VALUES ('448', '4', '5', '12', 'MACA');
INSERT INTO `ubigeo` VALUES ('449', '4', '5', '13', 'MADRIGAL');
INSERT INTO `ubigeo` VALUES ('450', '4', '5', '14', 'SAN ANTONIO DE CHUCA');
INSERT INTO `ubigeo` VALUES ('451', '4', '5', '15', 'SIBAYO');
INSERT INTO `ubigeo` VALUES ('452', '4', '5', '16', 'TAPAY');
INSERT INTO `ubigeo` VALUES ('453', '4', '5', '17', 'TISCO');
INSERT INTO `ubigeo` VALUES ('454', '4', '5', '18', 'TUTI');
INSERT INTO `ubigeo` VALUES ('455', '4', '5', '19', 'YANQUE');
INSERT INTO `ubigeo` VALUES ('456', '4', '5', '20', 'MAJES');
INSERT INTO `ubigeo` VALUES ('457', '4', '6', '0', 'CONDESUYOS');
INSERT INTO `ubigeo` VALUES ('458', '4', '6', '1', 'CHUQUIBAMBA');
INSERT INTO `ubigeo` VALUES ('459', '4', '6', '2', 'ANDARAY');
INSERT INTO `ubigeo` VALUES ('460', '4', '6', '3', 'CAYARANI');
INSERT INTO `ubigeo` VALUES ('461', '4', '6', '4', 'CHICHAS');
INSERT INTO `ubigeo` VALUES ('462', '4', '6', '5', 'IRAY');
INSERT INTO `ubigeo` VALUES ('463', '4', '6', '6', 'RIO GRANDE');
INSERT INTO `ubigeo` VALUES ('464', '4', '6', '7', 'SALAMANCA');
INSERT INTO `ubigeo` VALUES ('465', '4', '6', '8', 'YANAQUIHUA');
INSERT INTO `ubigeo` VALUES ('466', '4', '7', '0', 'ISLAY');
INSERT INTO `ubigeo` VALUES ('467', '4', '7', '1', 'MOLLENDO');
INSERT INTO `ubigeo` VALUES ('468', '4', '7', '2', 'COCACHACRA');
INSERT INTO `ubigeo` VALUES ('469', '4', '7', '3', 'DEAN VALDIVIA');
INSERT INTO `ubigeo` VALUES ('470', '4', '7', '4', 'ISLAY');
INSERT INTO `ubigeo` VALUES ('471', '4', '7', '5', 'MEJIA');
INSERT INTO `ubigeo` VALUES ('472', '4', '7', '6', 'PUNTA DE BOMBON');
INSERT INTO `ubigeo` VALUES ('473', '4', '8', '0', 'LA UNION');
INSERT INTO `ubigeo` VALUES ('474', '4', '8', '1', 'COTAHUASI');
INSERT INTO `ubigeo` VALUES ('475', '4', '8', '2', 'ALCA');
INSERT INTO `ubigeo` VALUES ('476', '4', '8', '3', 'CHARCANA');
INSERT INTO `ubigeo` VALUES ('477', '4', '8', '4', 'HUAYNACOTAS');
INSERT INTO `ubigeo` VALUES ('478', '4', '8', '5', 'PAMPAMARCA');
INSERT INTO `ubigeo` VALUES ('479', '4', '8', '6', 'PUYCA');
INSERT INTO `ubigeo` VALUES ('480', '4', '8', '7', 'QUECHUALLA');
INSERT INTO `ubigeo` VALUES ('481', '4', '8', '8', 'SAYLA');
INSERT INTO `ubigeo` VALUES ('482', '4', '8', '9', 'TAURIA');
INSERT INTO `ubigeo` VALUES ('483', '4', '8', '10', 'TOMEPAMPA');
INSERT INTO `ubigeo` VALUES ('484', '4', '8', '11', 'TORO');
INSERT INTO `ubigeo` VALUES ('485', '5', '0', '0', 'AYACUCHO');
INSERT INTO `ubigeo` VALUES ('486', '5', '1', '0', 'HUAMANGA');
INSERT INTO `ubigeo` VALUES ('487', '5', '1', '1', 'AYACUCHO');
INSERT INTO `ubigeo` VALUES ('488', '5', '1', '2', 'ACOCRO');
INSERT INTO `ubigeo` VALUES ('489', '5', '1', '3', 'ACOS VINCHOS');
INSERT INTO `ubigeo` VALUES ('490', '5', '1', '4', 'CARMEN ALTO');
INSERT INTO `ubigeo` VALUES ('491', '5', '1', '5', 'CHIARA');
INSERT INTO `ubigeo` VALUES ('492', '5', '1', '6', 'OCROS');
INSERT INTO `ubigeo` VALUES ('493', '5', '1', '7', 'PACAYCASA');
INSERT INTO `ubigeo` VALUES ('494', '5', '1', '8', 'QUINUA');
INSERT INTO `ubigeo` VALUES ('495', '5', '1', '9', 'SAN JOSE DE TICLLAS');
INSERT INTO `ubigeo` VALUES ('496', '5', '1', '10', 'SAN JUAN BAUTISTA');
INSERT INTO `ubigeo` VALUES ('497', '5', '1', '11', 'SANTIAGO DE PISCHA');
INSERT INTO `ubigeo` VALUES ('498', '5', '1', '12', 'SOCOS');
INSERT INTO `ubigeo` VALUES ('499', '5', '1', '13', 'TAMBILLO');
INSERT INTO `ubigeo` VALUES ('500', '5', '1', '14', 'VINCHOS');
INSERT INTO `ubigeo` VALUES ('501', '5', '1', '15', 'JESUS NAZARENO');
INSERT INTO `ubigeo` VALUES ('502', '5', '2', '0', 'CANGALLO');
INSERT INTO `ubigeo` VALUES ('503', '5', '2', '1', 'CANGALLO');
INSERT INTO `ubigeo` VALUES ('504', '5', '2', '2', 'CHUSCHI');
INSERT INTO `ubigeo` VALUES ('505', '5', '2', '3', 'LOS MOROCHUCOS');
INSERT INTO `ubigeo` VALUES ('506', '5', '2', '4', 'MARIA PARADO DE BELLIDO');
INSERT INTO `ubigeo` VALUES ('507', '5', '2', '5', 'PARAS');
INSERT INTO `ubigeo` VALUES ('508', '5', '2', '6', 'TOTOS');
INSERT INTO `ubigeo` VALUES ('509', '5', '3', '0', 'HUANCA SANCOS');
INSERT INTO `ubigeo` VALUES ('510', '5', '3', '1', 'SANCOS');
INSERT INTO `ubigeo` VALUES ('511', '5', '3', '2', 'CARAPO');
INSERT INTO `ubigeo` VALUES ('512', '5', '3', '3', 'SACSAMARCA');
INSERT INTO `ubigeo` VALUES ('513', '5', '3', '4', 'SANTIAGO DE LUCANAMARCA');
INSERT INTO `ubigeo` VALUES ('514', '5', '4', '0', 'HUANTA');
INSERT INTO `ubigeo` VALUES ('515', '5', '4', '1', 'HUANTA');
INSERT INTO `ubigeo` VALUES ('516', '5', '4', '2', 'AYAHUANCO');
INSERT INTO `ubigeo` VALUES ('517', '5', '4', '3', 'HUAMANGUILLA');
INSERT INTO `ubigeo` VALUES ('518', '5', '4', '4', 'IGUAIN');
INSERT INTO `ubigeo` VALUES ('519', '5', '4', '5', 'LURICOCHA');
INSERT INTO `ubigeo` VALUES ('520', '5', '4', '6', 'SANTILLANA');
INSERT INTO `ubigeo` VALUES ('521', '5', '4', '7', 'SIVIA');
INSERT INTO `ubigeo` VALUES ('522', '5', '4', '8', 'LLOCHEGUA');
INSERT INTO `ubigeo` VALUES ('523', '5', '5', '0', 'LA MAR');
INSERT INTO `ubigeo` VALUES ('524', '5', '5', '1', 'SAN MIGUEL');
INSERT INTO `ubigeo` VALUES ('525', '5', '5', '2', 'ANCO');
INSERT INTO `ubigeo` VALUES ('526', '5', '5', '3', 'AYNA');
INSERT INTO `ubigeo` VALUES ('527', '5', '5', '4', 'CHILCAS');
INSERT INTO `ubigeo` VALUES ('528', '5', '5', '5', 'CHUNGUI');
INSERT INTO `ubigeo` VALUES ('529', '5', '5', '6', 'LUIS CARRANZA');
INSERT INTO `ubigeo` VALUES ('530', '5', '5', '7', 'SANTA ROSA');
INSERT INTO `ubigeo` VALUES ('531', '5', '5', '8', 'TAMBO');
INSERT INTO `ubigeo` VALUES ('532', '5', '6', '0', 'LUCANAS');
INSERT INTO `ubigeo` VALUES ('533', '5', '6', '1', 'PUQUIO');
INSERT INTO `ubigeo` VALUES ('534', '5', '6', '2', 'AUCARA');
INSERT INTO `ubigeo` VALUES ('535', '5', '6', '3', 'CABANA');
INSERT INTO `ubigeo` VALUES ('536', '5', '6', '4', 'CARMEN SALCEDO');
INSERT INTO `ubigeo` VALUES ('537', '5', '6', '5', 'CHAVIÑA');
INSERT INTO `ubigeo` VALUES ('538', '5', '6', '6', 'CHIPAO');
INSERT INTO `ubigeo` VALUES ('539', '5', '6', '7', 'HUAC-HUAS');
INSERT INTO `ubigeo` VALUES ('540', '5', '6', '8', 'LARAMATE');
INSERT INTO `ubigeo` VALUES ('541', '5', '6', '9', 'LEONCIO PRADO');
INSERT INTO `ubigeo` VALUES ('542', '5', '6', '10', 'LLAUTA');
INSERT INTO `ubigeo` VALUES ('543', '5', '6', '11', 'LUCANAS');
INSERT INTO `ubigeo` VALUES ('544', '5', '6', '12', 'OCAÑA');
INSERT INTO `ubigeo` VALUES ('545', '5', '6', '13', 'OTOCA');
INSERT INTO `ubigeo` VALUES ('546', '5', '6', '14', 'SAISA');
INSERT INTO `ubigeo` VALUES ('547', '5', '6', '15', 'SAN CRISTOBAL');
INSERT INTO `ubigeo` VALUES ('548', '5', '6', '16', 'SAN JUAN');
INSERT INTO `ubigeo` VALUES ('549', '5', '6', '17', 'SAN PEDRO');
INSERT INTO `ubigeo` VALUES ('550', '5', '6', '18', 'SAN PEDRO DE PALCO');
INSERT INTO `ubigeo` VALUES ('551', '5', '6', '19', 'SANCOS');
INSERT INTO `ubigeo` VALUES ('552', '5', '6', '20', 'SANTA ANA DE HUAYCAHUACHO');
INSERT INTO `ubigeo` VALUES ('553', '5', '6', '21', 'SANTA LUCIA');
INSERT INTO `ubigeo` VALUES ('554', '5', '7', '0', 'PARINACOCHAS');
INSERT INTO `ubigeo` VALUES ('555', '5', '7', '1', 'CORACORA');
INSERT INTO `ubigeo` VALUES ('556', '5', '7', '2', 'CHUMPI');
INSERT INTO `ubigeo` VALUES ('557', '5', '7', '3', 'CORONEL CASTAÑEDA');
INSERT INTO `ubigeo` VALUES ('558', '5', '7', '4', 'PACAPAUSA');
INSERT INTO `ubigeo` VALUES ('559', '5', '7', '5', 'PULLO');
INSERT INTO `ubigeo` VALUES ('560', '5', '7', '6', 'PUYUSCA');
INSERT INTO `ubigeo` VALUES ('561', '5', '7', '7', 'SAN FRANCISCO DE RAVACAYCO');
INSERT INTO `ubigeo` VALUES ('562', '5', '7', '8', 'UPAHUACHO');
INSERT INTO `ubigeo` VALUES ('563', '5', '8', '0', 'PAUCAR DEL SARA SARA');
INSERT INTO `ubigeo` VALUES ('564', '5', '8', '1', 'PAUSA');
INSERT INTO `ubigeo` VALUES ('565', '5', '8', '2', 'COLTA');
INSERT INTO `ubigeo` VALUES ('566', '5', '8', '3', 'CORCULLA');
INSERT INTO `ubigeo` VALUES ('567', '5', '8', '4', 'LAMPA');
INSERT INTO `ubigeo` VALUES ('568', '5', '8', '5', 'MARCABAMBA');
INSERT INTO `ubigeo` VALUES ('569', '5', '8', '6', 'OYOLO');
INSERT INTO `ubigeo` VALUES ('570', '5', '8', '7', 'PARARCA');
INSERT INTO `ubigeo` VALUES ('571', '5', '8', '8', 'SAN JAVIER DE ALPABAMBA');
INSERT INTO `ubigeo` VALUES ('572', '5', '8', '9', 'SAN JOSE DE USHUA');
INSERT INTO `ubigeo` VALUES ('573', '5', '8', '10', 'SARA SARA');
INSERT INTO `ubigeo` VALUES ('574', '5', '9', '0', 'SUCRE');
INSERT INTO `ubigeo` VALUES ('575', '5', '9', '1', 'QUEROBAMBA');
INSERT INTO `ubigeo` VALUES ('576', '5', '9', '2', 'BELEN');
INSERT INTO `ubigeo` VALUES ('577', '5', '9', '3', 'CHALCOS');
INSERT INTO `ubigeo` VALUES ('578', '5', '9', '4', 'CHILCAYOC');
INSERT INTO `ubigeo` VALUES ('579', '5', '9', '5', 'HUACAÑA');
INSERT INTO `ubigeo` VALUES ('580', '5', '9', '6', 'MORCOLLA');
INSERT INTO `ubigeo` VALUES ('581', '5', '9', '7', 'PAICO');
INSERT INTO `ubigeo` VALUES ('582', '5', '9', '8', 'SAN PEDRO DE LARCAY');
INSERT INTO `ubigeo` VALUES ('583', '5', '9', '9', 'SAN SALVADOR DE QUIJE');
INSERT INTO `ubigeo` VALUES ('584', '5', '9', '10', 'SANTIAGO DE PAUCARAY');
INSERT INTO `ubigeo` VALUES ('585', '5', '9', '11', 'SORAS');
INSERT INTO `ubigeo` VALUES ('586', '5', '10', '0', 'VICTOR FAJARDO');
INSERT INTO `ubigeo` VALUES ('587', '5', '10', '1', 'HUANCAPI');
INSERT INTO `ubigeo` VALUES ('588', '5', '10', '2', 'ALCAMENCA');
INSERT INTO `ubigeo` VALUES ('589', '5', '10', '3', 'APONGO');
INSERT INTO `ubigeo` VALUES ('590', '5', '10', '4', 'ASQUIPATA');
INSERT INTO `ubigeo` VALUES ('591', '5', '10', '5', 'CANARIA');
INSERT INTO `ubigeo` VALUES ('592', '5', '10', '6', 'CAYARA');
INSERT INTO `ubigeo` VALUES ('593', '5', '10', '7', 'COLCA');
INSERT INTO `ubigeo` VALUES ('594', '5', '10', '8', 'HUAMANQUIQUIA');
INSERT INTO `ubigeo` VALUES ('595', '5', '10', '9', 'HUANCARAYLLA');
INSERT INTO `ubigeo` VALUES ('596', '5', '10', '10', 'HUAYA');
INSERT INTO `ubigeo` VALUES ('597', '5', '10', '11', 'SARHUA');
INSERT INTO `ubigeo` VALUES ('598', '5', '10', '12', 'VILCANCHOS');
INSERT INTO `ubigeo` VALUES ('599', '5', '11', '0', 'VILCAS HUAMAN');
INSERT INTO `ubigeo` VALUES ('600', '5', '11', '1', 'VILCAS HUAMAN');
INSERT INTO `ubigeo` VALUES ('601', '5', '11', '2', 'ACCOMARCA');
INSERT INTO `ubigeo` VALUES ('602', '5', '11', '3', 'CARHUANCA');
INSERT INTO `ubigeo` VALUES ('603', '5', '11', '4', 'CONCEPCION');
INSERT INTO `ubigeo` VALUES ('604', '5', '11', '5', 'HUAMBALPA');
INSERT INTO `ubigeo` VALUES ('605', '5', '11', '6', 'INDEPENDENCIA');
INSERT INTO `ubigeo` VALUES ('606', '5', '11', '7', 'SAURAMA');
INSERT INTO `ubigeo` VALUES ('607', '5', '11', '8', 'VISCHONGO');
INSERT INTO `ubigeo` VALUES ('608', '6', '0', '0', 'CAJAMARCA');
INSERT INTO `ubigeo` VALUES ('609', '6', '1', '0', 'CAJAMARCA');
INSERT INTO `ubigeo` VALUES ('610', '6', '1', '1', 'CAJAMARCA');
INSERT INTO `ubigeo` VALUES ('611', '6', '1', '2', 'ASUNCION');
INSERT INTO `ubigeo` VALUES ('612', '6', '1', '3', 'CHETILLA');
INSERT INTO `ubigeo` VALUES ('613', '6', '1', '4', 'COSPAN');
INSERT INTO `ubigeo` VALUES ('614', '6', '1', '5', 'ENCAÑADA');
INSERT INTO `ubigeo` VALUES ('615', '6', '1', '6', 'JESUS');
INSERT INTO `ubigeo` VALUES ('616', '6', '1', '7', 'LLACANORA');
INSERT INTO `ubigeo` VALUES ('617', '6', '1', '8', 'LOS BAÑOS DEL INCA');
INSERT INTO `ubigeo` VALUES ('618', '6', '1', '9', 'MAGDALENA');
INSERT INTO `ubigeo` VALUES ('619', '6', '1', '10', 'MATARA');
INSERT INTO `ubigeo` VALUES ('620', '6', '1', '11', 'NAMORA');
INSERT INTO `ubigeo` VALUES ('621', '6', '1', '12', 'SAN JUAN');
INSERT INTO `ubigeo` VALUES ('622', '6', '2', '0', 'CAJABAMBA');
INSERT INTO `ubigeo` VALUES ('623', '6', '2', '1', 'CAJABAMBA');
INSERT INTO `ubigeo` VALUES ('624', '6', '2', '2', 'CACHACHI');
INSERT INTO `ubigeo` VALUES ('625', '6', '2', '3', 'CONDEBAMBA');
INSERT INTO `ubigeo` VALUES ('626', '6', '2', '4', 'SITACOCHA');
INSERT INTO `ubigeo` VALUES ('627', '6', '3', '0', 'CELENDIN');
INSERT INTO `ubigeo` VALUES ('628', '6', '3', '1', 'CELENDIN');
INSERT INTO `ubigeo` VALUES ('629', '6', '3', '2', 'CHUMUCH');
INSERT INTO `ubigeo` VALUES ('630', '6', '3', '3', 'CORTEGANA');
INSERT INTO `ubigeo` VALUES ('631', '6', '3', '4', 'HUASMIN');
INSERT INTO `ubigeo` VALUES ('632', '6', '3', '5', 'JORGE CHAVEZ');
INSERT INTO `ubigeo` VALUES ('633', '6', '3', '6', 'JOSE GALVEZ');
INSERT INTO `ubigeo` VALUES ('634', '6', '3', '7', 'MIGUEL IGLESIAS');
INSERT INTO `ubigeo` VALUES ('635', '6', '3', '8', 'OXAMARCA');
INSERT INTO `ubigeo` VALUES ('636', '6', '3', '9', 'SOROCHUCO');
INSERT INTO `ubigeo` VALUES ('637', '6', '3', '10', 'SUCRE');
INSERT INTO `ubigeo` VALUES ('638', '6', '3', '11', 'UTCO');
INSERT INTO `ubigeo` VALUES ('639', '6', '3', '12', 'LA LIBERTAD DE PALLAN');
INSERT INTO `ubigeo` VALUES ('640', '6', '4', '0', 'CHOTA');
INSERT INTO `ubigeo` VALUES ('641', '6', '4', '1', 'CHOTA');
INSERT INTO `ubigeo` VALUES ('642', '6', '4', '2', 'ANGUIA');
INSERT INTO `ubigeo` VALUES ('643', '6', '4', '3', 'CHADIN');
INSERT INTO `ubigeo` VALUES ('644', '6', '4', '4', 'CHIGUIRIP');
INSERT INTO `ubigeo` VALUES ('645', '6', '4', '5', 'CHIMBAN');
INSERT INTO `ubigeo` VALUES ('646', '6', '4', '6', 'CHOROPAMPA');
INSERT INTO `ubigeo` VALUES ('647', '6', '4', '7', 'COCHABAMBA');
INSERT INTO `ubigeo` VALUES ('648', '6', '4', '8', 'CONCHAN');
INSERT INTO `ubigeo` VALUES ('649', '6', '4', '9', 'HUAMBOS');
INSERT INTO `ubigeo` VALUES ('650', '6', '4', '10', 'LAJAS');
INSERT INTO `ubigeo` VALUES ('651', '6', '4', '11', 'LLAMA');
INSERT INTO `ubigeo` VALUES ('652', '6', '4', '12', 'MIRACOSTA');
INSERT INTO `ubigeo` VALUES ('653', '6', '4', '13', 'PACCHA');
INSERT INTO `ubigeo` VALUES ('654', '6', '4', '14', 'PION');
INSERT INTO `ubigeo` VALUES ('655', '6', '4', '15', 'QUEROCOTO');
INSERT INTO `ubigeo` VALUES ('656', '6', '4', '16', 'SAN JUAN DE LICUPIS');
INSERT INTO `ubigeo` VALUES ('657', '6', '4', '17', 'TACABAMBA');
INSERT INTO `ubigeo` VALUES ('658', '6', '4', '18', 'TOCMOCHE');
INSERT INTO `ubigeo` VALUES ('659', '6', '4', '19', 'CHALAMARCA');
INSERT INTO `ubigeo` VALUES ('660', '6', '5', '0', 'CONTUMAZA');
INSERT INTO `ubigeo` VALUES ('661', '6', '5', '1', 'CONTUMAZA');
INSERT INTO `ubigeo` VALUES ('662', '6', '5', '2', 'CHILETE');
INSERT INTO `ubigeo` VALUES ('663', '6', '5', '3', 'CUPISNIQUE');
INSERT INTO `ubigeo` VALUES ('664', '6', '5', '4', 'GUZMANGO');
INSERT INTO `ubigeo` VALUES ('665', '6', '5', '5', 'SAN BENITO');
INSERT INTO `ubigeo` VALUES ('666', '6', '5', '6', 'SANTA CRUZ DE TOLED');
INSERT INTO `ubigeo` VALUES ('667', '6', '5', '7', 'TANTARICA');
INSERT INTO `ubigeo` VALUES ('668', '6', '5', '8', 'YONAN');
INSERT INTO `ubigeo` VALUES ('669', '6', '6', '0', 'CUTERVO');
INSERT INTO `ubigeo` VALUES ('670', '6', '6', '1', 'CUTERVO');
INSERT INTO `ubigeo` VALUES ('671', '6', '6', '2', 'CALLAYUC');
INSERT INTO `ubigeo` VALUES ('672', '6', '6', '3', 'CHOROS');
INSERT INTO `ubigeo` VALUES ('673', '6', '6', '4', 'CUJILLO');
INSERT INTO `ubigeo` VALUES ('674', '6', '6', '5', 'LA RAMADA');
INSERT INTO `ubigeo` VALUES ('675', '6', '6', '6', 'PIMPINGOS');
INSERT INTO `ubigeo` VALUES ('676', '6', '6', '7', 'QUEROCOTILLO');
INSERT INTO `ubigeo` VALUES ('677', '6', '6', '8', 'SAN ANDRES DE CUTERVO');
INSERT INTO `ubigeo` VALUES ('678', '6', '6', '9', 'SAN JUAN DE CUTERVO');
INSERT INTO `ubigeo` VALUES ('679', '6', '6', '10', 'SAN LUIS DE LUCMA');
INSERT INTO `ubigeo` VALUES ('680', '6', '6', '11', 'SANTA CRUZ');
INSERT INTO `ubigeo` VALUES ('681', '6', '6', '12', 'SANTO DOMINGO DE LA CAPILLA');
INSERT INTO `ubigeo` VALUES ('682', '6', '6', '13', 'SANTO TOMAS');
INSERT INTO `ubigeo` VALUES ('683', '6', '6', '14', 'SOCOTA');
INSERT INTO `ubigeo` VALUES ('684', '6', '6', '15', 'TORIBIO CASANOVA');
INSERT INTO `ubigeo` VALUES ('685', '6', '7', '0', 'HUALGAYOC');
INSERT INTO `ubigeo` VALUES ('686', '6', '7', '1', 'BAMBAMARCA');
INSERT INTO `ubigeo` VALUES ('687', '6', '7', '2', 'CHUGUR');
INSERT INTO `ubigeo` VALUES ('688', '6', '7', '3', 'HUALGAYOC');
INSERT INTO `ubigeo` VALUES ('689', '6', '8', '0', 'JAEN');
INSERT INTO `ubigeo` VALUES ('690', '6', '8', '1', 'JAEN');
INSERT INTO `ubigeo` VALUES ('691', '6', '8', '2', 'BELLAVISTA');
INSERT INTO `ubigeo` VALUES ('692', '6', '8', '3', 'CHONTALI');
INSERT INTO `ubigeo` VALUES ('693', '6', '8', '4', 'COLASAY');
INSERT INTO `ubigeo` VALUES ('694', '6', '8', '5', 'HUABAL');
INSERT INTO `ubigeo` VALUES ('695', '6', '8', '6', 'LAS PIRIAS');
INSERT INTO `ubigeo` VALUES ('696', '6', '8', '7', 'POMAHUACA');
INSERT INTO `ubigeo` VALUES ('697', '6', '8', '8', 'PUCARA');
INSERT INTO `ubigeo` VALUES ('698', '6', '8', '9', 'SALLIQUE');
INSERT INTO `ubigeo` VALUES ('699', '6', '8', '10', 'SAN FELIPE');
INSERT INTO `ubigeo` VALUES ('700', '6', '8', '11', 'SAN JOSE DEL ALTO');
INSERT INTO `ubigeo` VALUES ('701', '6', '8', '12', 'SANTA ROSA');
INSERT INTO `ubigeo` VALUES ('702', '6', '9', '0', 'SAN IGNACIO');
INSERT INTO `ubigeo` VALUES ('703', '6', '9', '1', 'SAN IGNACIO');
INSERT INTO `ubigeo` VALUES ('704', '6', '9', '2', 'CHIRINOS');
INSERT INTO `ubigeo` VALUES ('705', '6', '9', '3', 'HUARANGO');
INSERT INTO `ubigeo` VALUES ('706', '6', '9', '4', 'LA COIPA');
INSERT INTO `ubigeo` VALUES ('707', '6', '9', '5', 'NAMBALLE');
INSERT INTO `ubigeo` VALUES ('708', '6', '9', '6', 'SAN JOSE DE LOURDES');
INSERT INTO `ubigeo` VALUES ('709', '6', '9', '7', 'TABACONAS');
INSERT INTO `ubigeo` VALUES ('710', '6', '10', '0', 'SAN MARCOS');
INSERT INTO `ubigeo` VALUES ('711', '6', '10', '1', 'PEDRO GALVEZ');
INSERT INTO `ubigeo` VALUES ('712', '6', '10', '2', 'CHANCAY');
INSERT INTO `ubigeo` VALUES ('713', '6', '10', '3', 'EDUARDO VILLANUEVA');
INSERT INTO `ubigeo` VALUES ('714', '6', '10', '4', 'GREGORIO PITA');
INSERT INTO `ubigeo` VALUES ('715', '6', '10', '5', 'ICHOCAN');
INSERT INTO `ubigeo` VALUES ('716', '6', '10', '6', 'JOSE MANUEL QUIROZ');
INSERT INTO `ubigeo` VALUES ('717', '6', '10', '7', 'JOSE SABOGAL');
INSERT INTO `ubigeo` VALUES ('718', '6', '11', '0', 'SAN MIGUEL');
INSERT INTO `ubigeo` VALUES ('719', '6', '11', '1', 'SAN MIGUEL');
INSERT INTO `ubigeo` VALUES ('720', '6', '11', '2', 'BOLIVAR');
INSERT INTO `ubigeo` VALUES ('721', '6', '11', '3', 'CALQUIS');
INSERT INTO `ubigeo` VALUES ('722', '6', '11', '4', 'CATILLUC');
INSERT INTO `ubigeo` VALUES ('723', '6', '11', '5', 'EL PRADO');
INSERT INTO `ubigeo` VALUES ('724', '6', '11', '6', 'LA FLORIDA');
INSERT INTO `ubigeo` VALUES ('725', '6', '11', '7', 'LLAPA');
INSERT INTO `ubigeo` VALUES ('726', '6', '11', '8', 'NANCHOC');
INSERT INTO `ubigeo` VALUES ('727', '6', '11', '9', 'NIEPOS');
INSERT INTO `ubigeo` VALUES ('728', '6', '11', '10', 'SAN GREGORIO');
INSERT INTO `ubigeo` VALUES ('729', '6', '11', '11', 'SAN SILVESTRE DE COCHAN');
INSERT INTO `ubigeo` VALUES ('730', '6', '11', '12', 'TONGOD');
INSERT INTO `ubigeo` VALUES ('731', '6', '11', '13', 'UNION AGUA BLANCA');
INSERT INTO `ubigeo` VALUES ('732', '6', '12', '0', 'SAN PABLO');
INSERT INTO `ubigeo` VALUES ('733', '6', '12', '1', 'SAN PABLO');
INSERT INTO `ubigeo` VALUES ('734', '6', '12', '2', 'SAN BERNARDINO');
INSERT INTO `ubigeo` VALUES ('735', '6', '12', '3', 'SAN LUIS');
INSERT INTO `ubigeo` VALUES ('736', '6', '12', '4', 'TUMBADEN');
INSERT INTO `ubigeo` VALUES ('737', '6', '13', '0', 'SANTA CRUZ');
INSERT INTO `ubigeo` VALUES ('738', '6', '13', '1', 'SANTA CRUZ');
INSERT INTO `ubigeo` VALUES ('739', '6', '13', '2', 'ANDABAMBA');
INSERT INTO `ubigeo` VALUES ('740', '6', '13', '3', 'CATACHE');
INSERT INTO `ubigeo` VALUES ('741', '6', '13', '4', 'CHANCAYBAÑOS');
INSERT INTO `ubigeo` VALUES ('742', '6', '13', '5', 'LA ESPERANZA');
INSERT INTO `ubigeo` VALUES ('743', '6', '13', '6', 'NINABAMBA');
INSERT INTO `ubigeo` VALUES ('744', '6', '13', '7', 'PULAN');
INSERT INTO `ubigeo` VALUES ('745', '6', '13', '8', 'SAUCEPAMPA');
INSERT INTO `ubigeo` VALUES ('746', '6', '13', '9', 'SEXI');
INSERT INTO `ubigeo` VALUES ('747', '6', '13', '10', 'UTICYACU');
INSERT INTO `ubigeo` VALUES ('748', '6', '13', '11', 'YAUYUCAN');
INSERT INTO `ubigeo` VALUES ('749', '7', '0', '0', 'CALLAO');
INSERT INTO `ubigeo` VALUES ('750', '7', '1', '0', 'CALLAO');
INSERT INTO `ubigeo` VALUES ('751', '7', '1', '1', 'CALLAO');
INSERT INTO `ubigeo` VALUES ('752', '7', '1', '2', 'BELLAVISTA');
INSERT INTO `ubigeo` VALUES ('753', '7', '1', '3', 'CARMEN DE LA LEGUA REYNOSO');
INSERT INTO `ubigeo` VALUES ('754', '7', '1', '4', 'LA PERLA');
INSERT INTO `ubigeo` VALUES ('755', '7', '1', '5', 'LA PUNTA');
INSERT INTO `ubigeo` VALUES ('756', '7', '1', '6', 'VENTANILLA');
INSERT INTO `ubigeo` VALUES ('757', '8', '0', '0', 'CUSCO');
INSERT INTO `ubigeo` VALUES ('758', '8', '1', '0', 'CUSCO');
INSERT INTO `ubigeo` VALUES ('759', '8', '1', '1', 'CUSCO');
INSERT INTO `ubigeo` VALUES ('760', '8', '1', '2', 'CCORCA');
INSERT INTO `ubigeo` VALUES ('761', '8', '1', '3', 'POROY');
INSERT INTO `ubigeo` VALUES ('762', '8', '1', '4', 'SAN JERONIMO');
INSERT INTO `ubigeo` VALUES ('763', '8', '1', '5', 'SAN SEBASTIAN');
INSERT INTO `ubigeo` VALUES ('764', '8', '1', '6', 'SANTIAGO');
INSERT INTO `ubigeo` VALUES ('765', '8', '1', '7', 'SAYLLA');
INSERT INTO `ubigeo` VALUES ('766', '8', '1', '8', 'WANCHAQ');
INSERT INTO `ubigeo` VALUES ('767', '8', '2', '0', 'ACOMAYO');
INSERT INTO `ubigeo` VALUES ('768', '8', '2', '1', 'ACOMAYO');
INSERT INTO `ubigeo` VALUES ('769', '8', '2', '2', 'ACOPIA');
INSERT INTO `ubigeo` VALUES ('770', '8', '2', '3', 'ACOS');
INSERT INTO `ubigeo` VALUES ('771', '8', '2', '4', 'MOSOC LLACTA');
INSERT INTO `ubigeo` VALUES ('772', '8', '2', '5', 'POMACANCHI');
INSERT INTO `ubigeo` VALUES ('773', '8', '2', '6', 'RONDOCAN');
INSERT INTO `ubigeo` VALUES ('774', '8', '2', '7', 'SANGARARA');
INSERT INTO `ubigeo` VALUES ('775', '8', '3', '0', 'ANTA');
INSERT INTO `ubigeo` VALUES ('776', '8', '3', '1', 'ANTA');
INSERT INTO `ubigeo` VALUES ('777', '8', '3', '2', 'ANCAHUASI');
INSERT INTO `ubigeo` VALUES ('778', '8', '3', '3', 'CACHIMAYO');
INSERT INTO `ubigeo` VALUES ('779', '8', '3', '4', 'CHINCHAYPUJIO');
INSERT INTO `ubigeo` VALUES ('780', '8', '3', '5', 'HUAROCONDO');
INSERT INTO `ubigeo` VALUES ('781', '8', '3', '6', 'LIMATAMBO');
INSERT INTO `ubigeo` VALUES ('782', '8', '3', '7', 'MOLLEPATA');
INSERT INTO `ubigeo` VALUES ('783', '8', '3', '8', 'PUCYURA');
INSERT INTO `ubigeo` VALUES ('784', '8', '3', '9', 'ZURITE');
INSERT INTO `ubigeo` VALUES ('785', '8', '4', '0', 'CALCA');
INSERT INTO `ubigeo` VALUES ('786', '8', '4', '1', 'CALCA');
INSERT INTO `ubigeo` VALUES ('787', '8', '4', '2', 'COYA');
INSERT INTO `ubigeo` VALUES ('788', '8', '4', '3', 'LAMAY');
INSERT INTO `ubigeo` VALUES ('789', '8', '4', '4', '');
INSERT INTO `ubigeo` VALUES ('790', '8', '4', '5', 'PISAC');
INSERT INTO `ubigeo` VALUES ('791', '8', '4', '6', 'SAN SALVADOR');
INSERT INTO `ubigeo` VALUES ('792', '8', '4', '7', 'TARAY');
INSERT INTO `ubigeo` VALUES ('793', '8', '4', '8', 'YANATILE');
INSERT INTO `ubigeo` VALUES ('794', '8', '5', '0', 'CANAS');
INSERT INTO `ubigeo` VALUES ('795', '8', '5', '1', 'YANAOCA');
INSERT INTO `ubigeo` VALUES ('796', '8', '5', '2', 'CHECCA');
INSERT INTO `ubigeo` VALUES ('797', '8', '5', '3', 'KUNTURKANKI');
INSERT INTO `ubigeo` VALUES ('798', '8', '5', '4', 'LANGUI');
INSERT INTO `ubigeo` VALUES ('799', '8', '5', '5', 'LAYO');
INSERT INTO `ubigeo` VALUES ('800', '8', '5', '6', 'PAMPAMARCA');
INSERT INTO `ubigeo` VALUES ('801', '8', '5', '7', 'QUEHUE');
INSERT INTO `ubigeo` VALUES ('802', '8', '5', '8', 'TUPAC AMARU');
INSERT INTO `ubigeo` VALUES ('803', '8', '6', '0', 'CANCHIS');
INSERT INTO `ubigeo` VALUES ('804', '8', '6', '1', 'SICUANI');
INSERT INTO `ubigeo` VALUES ('805', '8', '6', '2', 'CHECACUPE');
INSERT INTO `ubigeo` VALUES ('806', '8', '6', '3', 'COMBAPATA');
INSERT INTO `ubigeo` VALUES ('807', '8', '6', '4', 'MARANGANI');
INSERT INTO `ubigeo` VALUES ('808', '8', '6', '5', 'PITUMARCA');
INSERT INTO `ubigeo` VALUES ('809', '8', '6', '6', 'SAN PABLO');
INSERT INTO `ubigeo` VALUES ('810', '8', '6', '7', 'SAN PEDRO');
INSERT INTO `ubigeo` VALUES ('811', '8', '6', '8', 'TINTA');
INSERT INTO `ubigeo` VALUES ('812', '8', '7', '0', 'CHUMBIVILCAS');
INSERT INTO `ubigeo` VALUES ('813', '8', '7', '1', 'SANTO TOMAS');
INSERT INTO `ubigeo` VALUES ('814', '8', '7', '2', 'CAPACMARCA');
INSERT INTO `ubigeo` VALUES ('815', '8', '7', '3', 'CHAMACA');
INSERT INTO `ubigeo` VALUES ('816', '8', '7', '4', 'COLQUEMARCA');
INSERT INTO `ubigeo` VALUES ('817', '8', '7', '5', 'LIVITACA');
INSERT INTO `ubigeo` VALUES ('818', '8', '7', '6', 'LLUSCO');
INSERT INTO `ubigeo` VALUES ('819', '8', '7', '7', 'QUIÑOTA');
INSERT INTO `ubigeo` VALUES ('820', '8', '7', '8', 'VELILLE');
INSERT INTO `ubigeo` VALUES ('821', '8', '8', '0', 'ESPINAR');
INSERT INTO `ubigeo` VALUES ('822', '8', '8', '1', 'ESPINAR');
INSERT INTO `ubigeo` VALUES ('823', '8', '8', '2', 'CONDOROMA');
INSERT INTO `ubigeo` VALUES ('824', '8', '8', '3', 'COPORAQUE');
INSERT INTO `ubigeo` VALUES ('825', '8', '8', '4', 'OCORURO');
INSERT INTO `ubigeo` VALUES ('826', '8', '8', '5', 'PALLPATA');
INSERT INTO `ubigeo` VALUES ('827', '8', '8', '6', 'PICHIGUA');
INSERT INTO `ubigeo` VALUES ('828', '8', '8', '7', 'SUYCKUTAMBO');
INSERT INTO `ubigeo` VALUES ('829', '8', '8', '8', 'ALTO PICHIGUA');
INSERT INTO `ubigeo` VALUES ('830', '8', '9', '0', 'LA CONVENCION');
INSERT INTO `ubigeo` VALUES ('831', '8', '9', '1', 'SANTA ANA');
INSERT INTO `ubigeo` VALUES ('832', '8', '9', '2', 'ECHARATE');
INSERT INTO `ubigeo` VALUES ('833', '8', '9', '3', 'HUAYOPATA');
INSERT INTO `ubigeo` VALUES ('834', '8', '9', '4', 'MARANURA');
INSERT INTO `ubigeo` VALUES ('835', '8', '9', '5', 'OCOBAMBA');
INSERT INTO `ubigeo` VALUES ('836', '8', '9', '6', 'QUELLOUNO');
INSERT INTO `ubigeo` VALUES ('837', '8', '9', '7', 'KIMBIRI');
INSERT INTO `ubigeo` VALUES ('838', '8', '9', '8', 'SANTA TERESA');
INSERT INTO `ubigeo` VALUES ('839', '8', '9', '9', 'VILCABAMBA');
INSERT INTO `ubigeo` VALUES ('840', '8', '9', '10', 'PICHARI');
INSERT INTO `ubigeo` VALUES ('841', '8', '10', '0', 'PARURO');
INSERT INTO `ubigeo` VALUES ('842', '8', '10', '1', 'PARURO');
INSERT INTO `ubigeo` VALUES ('843', '8', '10', '2', 'ACCHA');
INSERT INTO `ubigeo` VALUES ('844', '8', '10', '3', 'CCAPI');
INSERT INTO `ubigeo` VALUES ('845', '8', '10', '4', 'COLCHA');
INSERT INTO `ubigeo` VALUES ('846', '8', '10', '5', 'HUANOQUITE');
INSERT INTO `ubigeo` VALUES ('847', '8', '10', '6', 'OMACHA');
INSERT INTO `ubigeo` VALUES ('848', '8', '10', '7', 'PACCARITAMBO');
INSERT INTO `ubigeo` VALUES ('849', '8', '10', '8', 'PILLPINTO');
INSERT INTO `ubigeo` VALUES ('850', '8', '10', '9', 'YAURISQUE');
INSERT INTO `ubigeo` VALUES ('851', '8', '11', '0', 'PAUCARTAMBO');
INSERT INTO `ubigeo` VALUES ('852', '8', '11', '1', 'PAUCARTAMBO');
INSERT INTO `ubigeo` VALUES ('853', '8', '11', '2', 'CAICAY');
INSERT INTO `ubigeo` VALUES ('854', '8', '11', '3', 'CHALLABAMBA');
INSERT INTO `ubigeo` VALUES ('855', '8', '11', '4', 'COLQUEPATA');
INSERT INTO `ubigeo` VALUES ('856', '8', '11', '5', 'HUANCARANI');
INSERT INTO `ubigeo` VALUES ('857', '8', '11', '6', 'KOSÑIPATA');
INSERT INTO `ubigeo` VALUES ('858', '8', '12', '0', 'QUISPICANCHI');
INSERT INTO `ubigeo` VALUES ('859', '8', '12', '1', 'URCOS');
INSERT INTO `ubigeo` VALUES ('860', '8', '12', '2', 'ANDAHUAYLILLAS');
INSERT INTO `ubigeo` VALUES ('861', '8', '12', '3', 'CAMANTI');
INSERT INTO `ubigeo` VALUES ('862', '8', '12', '4', 'CCARHUAYO');
INSERT INTO `ubigeo` VALUES ('863', '8', '12', '5', 'CCATCA');
INSERT INTO `ubigeo` VALUES ('864', '8', '12', '6', 'CUSIPATA');
INSERT INTO `ubigeo` VALUES ('865', '8', '12', '7', 'HUARO');
INSERT INTO `ubigeo` VALUES ('866', '8', '12', '8', 'LUCRE');
INSERT INTO `ubigeo` VALUES ('867', '8', '12', '9', 'MARCAPATA');
INSERT INTO `ubigeo` VALUES ('868', '8', '12', '10', 'OCONGATE');
INSERT INTO `ubigeo` VALUES ('869', '8', '12', '11', 'OROPESA');
INSERT INTO `ubigeo` VALUES ('870', '8', '12', '12', 'QUIQUIJANA');
INSERT INTO `ubigeo` VALUES ('871', '8', '13', '0', 'URUBAMBA');
INSERT INTO `ubigeo` VALUES ('872', '8', '13', '1', 'URUBAMBA');
INSERT INTO `ubigeo` VALUES ('873', '8', '13', '2', 'CHINCHERO');
INSERT INTO `ubigeo` VALUES ('874', '8', '13', '3', 'HUAYLLABAMBA');
INSERT INTO `ubigeo` VALUES ('875', '8', '13', '4', 'MACHUPICCHU');
INSERT INTO `ubigeo` VALUES ('876', '8', '13', '5', 'MARAS');
INSERT INTO `ubigeo` VALUES ('877', '8', '13', '6', 'OLLANTAYTAMBO');
INSERT INTO `ubigeo` VALUES ('878', '8', '13', '7', 'YUCAY');
INSERT INTO `ubigeo` VALUES ('879', '9', '0', '0', 'HUANCAVELICA');
INSERT INTO `ubigeo` VALUES ('880', '9', '1', '0', 'HUANCAVELICA');
INSERT INTO `ubigeo` VALUES ('881', '9', '1', '1', 'HUANCAVELICA');
INSERT INTO `ubigeo` VALUES ('882', '9', '1', '2', 'ACOBAMBILLA');
INSERT INTO `ubigeo` VALUES ('883', '9', '1', '3', 'ACORIA');
INSERT INTO `ubigeo` VALUES ('884', '9', '1', '4', 'CONAYCA');
INSERT INTO `ubigeo` VALUES ('885', '9', '1', '5', 'CUENCA');
INSERT INTO `ubigeo` VALUES ('886', '9', '1', '6', 'HUACHOCOLPA');
INSERT INTO `ubigeo` VALUES ('887', '9', '1', '7', 'HUAYLLAHUARA');
INSERT INTO `ubigeo` VALUES ('888', '9', '1', '8', 'IZCUCHACA');
INSERT INTO `ubigeo` VALUES ('889', '9', '1', '9', 'LARIA');
INSERT INTO `ubigeo` VALUES ('890', '9', '1', '10', 'MANTA');
INSERT INTO `ubigeo` VALUES ('891', '9', '1', '11', 'MARISCAL CACERES');
INSERT INTO `ubigeo` VALUES ('892', '9', '1', '12', 'MOYA');
INSERT INTO `ubigeo` VALUES ('893', '9', '1', '13', 'NUEVO OCCORO');
INSERT INTO `ubigeo` VALUES ('894', '9', '1', '14', 'PALCA');
INSERT INTO `ubigeo` VALUES ('895', '9', '1', '15', 'PILCHACA');
INSERT INTO `ubigeo` VALUES ('896', '9', '1', '16', 'VILCA');
INSERT INTO `ubigeo` VALUES ('897', '9', '1', '17', 'YAULI');
INSERT INTO `ubigeo` VALUES ('898', '9', '1', '18', 'ASCENSION');
INSERT INTO `ubigeo` VALUES ('899', '9', '1', '19', 'HUANDO');
INSERT INTO `ubigeo` VALUES ('900', '9', '2', '0', 'ACOBAMBA');
INSERT INTO `ubigeo` VALUES ('901', '9', '2', '1', 'ACOBAMBA');
INSERT INTO `ubigeo` VALUES ('902', '9', '2', '2', 'ANDABAMBA');
INSERT INTO `ubigeo` VALUES ('903', '9', '2', '3', 'ANTA');
INSERT INTO `ubigeo` VALUES ('904', '9', '2', '4', 'CAJA');
INSERT INTO `ubigeo` VALUES ('905', '9', '2', '5', 'MARCAS');
INSERT INTO `ubigeo` VALUES ('906', '9', '2', '6', 'PAUCARA');
INSERT INTO `ubigeo` VALUES ('907', '9', '2', '7', 'POMACOCHA');
INSERT INTO `ubigeo` VALUES ('908', '9', '2', '8', 'ROSARIO');
INSERT INTO `ubigeo` VALUES ('909', '9', '3', '0', 'ANGARAES');
INSERT INTO `ubigeo` VALUES ('910', '9', '3', '1', 'LIRCAY');
INSERT INTO `ubigeo` VALUES ('911', '9', '3', '2', 'ANCHONGA');
INSERT INTO `ubigeo` VALUES ('912', '9', '3', '3', 'CALLANMARCA');
INSERT INTO `ubigeo` VALUES ('913', '9', '3', '4', 'CCOCHACCASA');
INSERT INTO `ubigeo` VALUES ('914', '9', '3', '5', 'CHINCHO');
INSERT INTO `ubigeo` VALUES ('915', '9', '3', '6', 'CONGALLA');
INSERT INTO `ubigeo` VALUES ('916', '9', '3', '7', 'HUANCA-HUANCA');
INSERT INTO `ubigeo` VALUES ('917', '9', '3', '8', 'HUAYLLAY GRANDE');
INSERT INTO `ubigeo` VALUES ('918', '9', '3', '9', 'JULCAMARCA');
INSERT INTO `ubigeo` VALUES ('919', '9', '3', '10', 'SAN ANTONIO DE ANTAPARCO');
INSERT INTO `ubigeo` VALUES ('920', '9', '3', '11', 'SANTO TOMAS DE PATA');
INSERT INTO `ubigeo` VALUES ('921', '9', '3', '12', 'SECCLLA');
INSERT INTO `ubigeo` VALUES ('922', '9', '4', '0', 'CASTROVIRREYNA');
INSERT INTO `ubigeo` VALUES ('923', '9', '4', '1', 'CASTROVIRREYNA');
INSERT INTO `ubigeo` VALUES ('924', '9', '4', '2', 'ARMA');
INSERT INTO `ubigeo` VALUES ('925', '9', '4', '3', 'AURAHUA');
INSERT INTO `ubigeo` VALUES ('926', '9', '4', '4', 'CAPILLAS');
INSERT INTO `ubigeo` VALUES ('927', '9', '4', '5', 'CHUPAMARCA');
INSERT INTO `ubigeo` VALUES ('928', '9', '4', '6', 'COCAS');
INSERT INTO `ubigeo` VALUES ('929', '9', '4', '7', 'HUACHOS');
INSERT INTO `ubigeo` VALUES ('930', '9', '4', '8', 'HUAMATAMBO');
INSERT INTO `ubigeo` VALUES ('931', '9', '4', '9', 'MOLLEPAMPA');
INSERT INTO `ubigeo` VALUES ('932', '9', '4', '10', 'SAN JUAN');
INSERT INTO `ubigeo` VALUES ('933', '9', '4', '11', 'SANTA ANA');
INSERT INTO `ubigeo` VALUES ('934', '9', '4', '12', 'TANTARA');
INSERT INTO `ubigeo` VALUES ('935', '9', '4', '13', 'TICRAPO');
INSERT INTO `ubigeo` VALUES ('936', '9', '5', '0', 'CHURCAMPA');
INSERT INTO `ubigeo` VALUES ('937', '9', '5', '1', 'CHURCAMPA');
INSERT INTO `ubigeo` VALUES ('938', '9', '5', '2', 'ANCO');
INSERT INTO `ubigeo` VALUES ('939', '9', '5', '3', 'CHINCHIHUASI');
INSERT INTO `ubigeo` VALUES ('940', '9', '5', '4', 'EL CARMEN');
INSERT INTO `ubigeo` VALUES ('941', '9', '5', '5', 'LA MERCED');
INSERT INTO `ubigeo` VALUES ('942', '9', '5', '6', 'LOCROJA');
INSERT INTO `ubigeo` VALUES ('943', '9', '5', '7', 'PAUCARBAMBA');
INSERT INTO `ubigeo` VALUES ('944', '9', '5', '8', 'SAN MIGUEL DE MAYOCC');
INSERT INTO `ubigeo` VALUES ('945', '9', '5', '9', 'SAN PEDRO DE CORIS');
INSERT INTO `ubigeo` VALUES ('946', '9', '5', '10', 'PACHAMARCA');
INSERT INTO `ubigeo` VALUES ('947', '9', '6', '0', 'HUAYTARA');
INSERT INTO `ubigeo` VALUES ('948', '9', '6', '1', 'HUAYTARA');
INSERT INTO `ubigeo` VALUES ('949', '9', '6', '2', 'AYAVI');
INSERT INTO `ubigeo` VALUES ('950', '9', '6', '3', 'CORDOVA');
INSERT INTO `ubigeo` VALUES ('951', '9', '6', '4', 'HUAYACUNDO ARMA');
INSERT INTO `ubigeo` VALUES ('952', '9', '6', '5', 'LARAMARCA');
INSERT INTO `ubigeo` VALUES ('953', '9', '6', '6', 'OCOYO');
INSERT INTO `ubigeo` VALUES ('954', '9', '6', '7', 'PILPICHACA');
INSERT INTO `ubigeo` VALUES ('955', '9', '6', '8', 'QUERCO');
INSERT INTO `ubigeo` VALUES ('956', '9', '6', '9', 'QUITO-ARMA');
INSERT INTO `ubigeo` VALUES ('957', '9', '6', '10', 'SAN ANTONIO DE CUSICANCHA');
INSERT INTO `ubigeo` VALUES ('958', '9', '6', '11', 'SAN FRANCISCO DE SANGAYAICO');
INSERT INTO `ubigeo` VALUES ('959', '9', '6', '12', 'SAN ISIDRO');
INSERT INTO `ubigeo` VALUES ('960', '9', '6', '13', 'SANTIAGO DE CHOCORVOS');
INSERT INTO `ubigeo` VALUES ('961', '9', '6', '14', 'SANTIAGO DE QUIRAHUARA');
INSERT INTO `ubigeo` VALUES ('962', '9', '6', '15', 'SANTO DOMINGO DE CAPILLAS');
INSERT INTO `ubigeo` VALUES ('963', '9', '6', '16', 'TAMBO');
INSERT INTO `ubigeo` VALUES ('964', '9', '7', '0', 'TAYACAJA');
INSERT INTO `ubigeo` VALUES ('965', '9', '7', '1', 'PAMPAS');
INSERT INTO `ubigeo` VALUES ('966', '9', '7', '2', 'ACOSTAMBO');
INSERT INTO `ubigeo` VALUES ('967', '9', '7', '3', 'ACRAQUIA');
INSERT INTO `ubigeo` VALUES ('968', '9', '7', '4', 'AHUAYCHA');
INSERT INTO `ubigeo` VALUES ('969', '9', '7', '5', 'COLCABAMBA');
INSERT INTO `ubigeo` VALUES ('970', '9', '7', '6', 'DANIEL HERNANDEZ');
INSERT INTO `ubigeo` VALUES ('971', '9', '7', '7', 'HUACHOCOLPA');
INSERT INTO `ubigeo` VALUES ('972', '9', '7', '9', 'HUARIBAMBA');
INSERT INTO `ubigeo` VALUES ('973', '9', '7', '10', 'ÑAHUIMPUQUIO');
INSERT INTO `ubigeo` VALUES ('974', '9', '7', '11', 'PAZOS');
INSERT INTO `ubigeo` VALUES ('975', '9', '7', '13', 'QUISHUAR');
INSERT INTO `ubigeo` VALUES ('976', '9', '7', '14', 'SALCABAMBA');
INSERT INTO `ubigeo` VALUES ('977', '9', '7', '15', 'SALCAHUASI');
INSERT INTO `ubigeo` VALUES ('978', '9', '7', '16', 'SAN MARCOS DE ROCCHAC');
INSERT INTO `ubigeo` VALUES ('979', '9', '7', '17', 'SURCUBAMBA');
INSERT INTO `ubigeo` VALUES ('980', '9', '7', '18', 'TINTAY PUNCU');
INSERT INTO `ubigeo` VALUES ('981', '10', '0', '0', 'HUANUCO');
INSERT INTO `ubigeo` VALUES ('982', '10', '1', '0', 'HUANUCO');
INSERT INTO `ubigeo` VALUES ('983', '10', '1', '1', 'HUANUCO');
INSERT INTO `ubigeo` VALUES ('984', '10', '1', '2', 'AMARILIS');
INSERT INTO `ubigeo` VALUES ('985', '10', '1', '3', 'CHINCHAO');
INSERT INTO `ubigeo` VALUES ('986', '10', '1', '4', 'CHURUBAMBA');
INSERT INTO `ubigeo` VALUES ('987', '10', '1', '5', 'MARGOS');
INSERT INTO `ubigeo` VALUES ('988', '10', '1', '6', 'QUISQUI');
INSERT INTO `ubigeo` VALUES ('989', '10', '1', '7', 'SAN FRANCISCO DE CAYRAN');
INSERT INTO `ubigeo` VALUES ('990', '10', '1', '8', 'SAN PEDRO DE CHAULAN');
INSERT INTO `ubigeo` VALUES ('991', '10', '1', '9', 'SANTA MARIA DEL VALLE');
INSERT INTO `ubigeo` VALUES ('992', '10', '1', '10', 'YARUMAYO');
INSERT INTO `ubigeo` VALUES ('993', '10', '1', '11', 'PILLCO MARCA');
INSERT INTO `ubigeo` VALUES ('994', '10', '2', '0', 'AMBO');
INSERT INTO `ubigeo` VALUES ('995', '10', '2', '1', 'AMBO');
INSERT INTO `ubigeo` VALUES ('996', '10', '2', '2', 'CAYNA');
INSERT INTO `ubigeo` VALUES ('997', '10', '2', '3', 'COLPAS');
INSERT INTO `ubigeo` VALUES ('998', '10', '2', '4', 'CONCHAMARCA');
INSERT INTO `ubigeo` VALUES ('999', '10', '2', '5', 'HUACAR');
INSERT INTO `ubigeo` VALUES ('1000', '10', '2', '6', 'SAN FRANCISCO');
INSERT INTO `ubigeo` VALUES ('1001', '10', '2', '7', 'SAN RAFAEL');
INSERT INTO `ubigeo` VALUES ('1002', '10', '2', '8', 'TOMAY KICHWA');
INSERT INTO `ubigeo` VALUES ('1003', '10', '3', '0', 'DOS DE MAYO');
INSERT INTO `ubigeo` VALUES ('1004', '10', '3', '1', 'LA UNION');
INSERT INTO `ubigeo` VALUES ('1005', '10', '3', '7', 'CHUQUIS');
INSERT INTO `ubigeo` VALUES ('1006', '10', '3', '11', 'MARIAS');
INSERT INTO `ubigeo` VALUES ('1007', '10', '3', '13', 'PACHAS');
INSERT INTO `ubigeo` VALUES ('1008', '10', '3', '16', 'QUIVILLA');
INSERT INTO `ubigeo` VALUES ('1009', '10', '3', '17', 'RIPAN');
INSERT INTO `ubigeo` VALUES ('1010', '10', '3', '21', 'SHUNQUI');
INSERT INTO `ubigeo` VALUES ('1011', '10', '3', '22', 'SILLAPATA');
INSERT INTO `ubigeo` VALUES ('1012', '10', '3', '23', 'YANAS');
INSERT INTO `ubigeo` VALUES ('1013', '10', '4', '0', 'HUACAYBAMBA');
INSERT INTO `ubigeo` VALUES ('1014', '10', '4', '1', 'HUACAYBAMBA');
INSERT INTO `ubigeo` VALUES ('1015', '10', '4', '2', 'CANCHABAMBA');
INSERT INTO `ubigeo` VALUES ('1016', '10', '4', '3', 'COCHABAMBA');
INSERT INTO `ubigeo` VALUES ('1017', '10', '4', '4', 'PINRA');
INSERT INTO `ubigeo` VALUES ('1018', '10', '5', '0', 'HUAMALIES');
INSERT INTO `ubigeo` VALUES ('1019', '10', '5', '1', 'LLATA');
INSERT INTO `ubigeo` VALUES ('1020', '10', '5', '2', 'ARANCAY');
INSERT INTO `ubigeo` VALUES ('1021', '10', '5', '3', 'CHAVIN DE PARIARCA');
INSERT INTO `ubigeo` VALUES ('1022', '10', '5', '4', 'JACAS GRANDE');
INSERT INTO `ubigeo` VALUES ('1023', '10', '5', '5', 'JIRCAN');
INSERT INTO `ubigeo` VALUES ('1024', '10', '5', '6', 'MIRAFLORES');
INSERT INTO `ubigeo` VALUES ('1025', '10', '5', '7', 'MONZON');
INSERT INTO `ubigeo` VALUES ('1026', '10', '5', '8', 'PUNCHAO');
INSERT INTO `ubigeo` VALUES ('1027', '10', '5', '9', 'PUÑOS');
INSERT INTO `ubigeo` VALUES ('1028', '10', '5', '10', 'SINGA');
INSERT INTO `ubigeo` VALUES ('1029', '10', '5', '11', 'TANTAMAYO');
INSERT INTO `ubigeo` VALUES ('1030', '10', '6', '0', 'LEONCIO PRADO');
INSERT INTO `ubigeo` VALUES ('1031', '10', '6', '1', 'RUPA-RUPA');
INSERT INTO `ubigeo` VALUES ('1032', '10', '6', '2', 'DANIEL ALOMIAS ROBLES');
INSERT INTO `ubigeo` VALUES ('1033', '10', '6', '3', 'HERMILIO VALDIZAN');
INSERT INTO `ubigeo` VALUES ('1034', '10', '6', '4', 'JOSE CRESPO Y CASTILLO');
INSERT INTO `ubigeo` VALUES ('1035', '10', '6', '5', 'LUYANDO');
INSERT INTO `ubigeo` VALUES ('1036', '10', '6', '6', 'MARIANO DAMASO BERAUN');
INSERT INTO `ubigeo` VALUES ('1037', '10', '7', '0', 'MARAÑON');
INSERT INTO `ubigeo` VALUES ('1038', '10', '7', '1', 'HUACRACHUCO');
INSERT INTO `ubigeo` VALUES ('1039', '10', '7', '2', 'CHOLON');
INSERT INTO `ubigeo` VALUES ('1040', '10', '7', '3', 'SAN BUENAVENTURA');
INSERT INTO `ubigeo` VALUES ('1041', '10', '8', '0', 'PACHITEA');
INSERT INTO `ubigeo` VALUES ('1042', '10', '8', '1', 'PANAO');
INSERT INTO `ubigeo` VALUES ('1043', '10', '8', '2', 'CHAGLLA');
INSERT INTO `ubigeo` VALUES ('1044', '10', '8', '3', 'MOLINO');
INSERT INTO `ubigeo` VALUES ('1045', '10', '8', '4', 'UMARI');
INSERT INTO `ubigeo` VALUES ('1046', '10', '9', '0', 'PUERTO INCA');
INSERT INTO `ubigeo` VALUES ('1047', '10', '9', '1', 'PUERTO INCA');
INSERT INTO `ubigeo` VALUES ('1048', '10', '9', '2', 'CODO DEL POZUZO');
INSERT INTO `ubigeo` VALUES ('1049', '10', '9', '3', 'HONORIA');
INSERT INTO `ubigeo` VALUES ('1050', '10', '9', '4', 'TOURNAVISTA');
INSERT INTO `ubigeo` VALUES ('1051', '10', '9', '5', 'YUYAPICHIS');
INSERT INTO `ubigeo` VALUES ('1052', '10', '10', '0', 'LAURICOCHA');
INSERT INTO `ubigeo` VALUES ('1053', '10', '10', '1', 'JESUS');
INSERT INTO `ubigeo` VALUES ('1054', '10', '10', '2', 'BAÑOS');
INSERT INTO `ubigeo` VALUES ('1055', '10', '10', '3', 'JIVIA');
INSERT INTO `ubigeo` VALUES ('1056', '10', '10', '4', 'QUEROPALCA');
INSERT INTO `ubigeo` VALUES ('1057', '10', '10', '5', 'RONDOS');
INSERT INTO `ubigeo` VALUES ('1058', '10', '10', '6', 'SAN FRANCISCO DE ASIS');
INSERT INTO `ubigeo` VALUES ('1059', '10', '10', '7', 'SAN MIGUEL DE CAURI');
INSERT INTO `ubigeo` VALUES ('1060', '10', '11', '0', 'YAROWILCA');
INSERT INTO `ubigeo` VALUES ('1061', '10', '11', '1', 'CHAVINILLO');
INSERT INTO `ubigeo` VALUES ('1062', '10', '11', '2', 'CAHUAC');
INSERT INTO `ubigeo` VALUES ('1063', '10', '11', '3', 'CHACABAMBA');
INSERT INTO `ubigeo` VALUES ('1064', '10', '11', '4', 'APARICIO POMARES');
INSERT INTO `ubigeo` VALUES ('1065', '10', '11', '5', 'JACAS CHICO');
INSERT INTO `ubigeo` VALUES ('1066', '10', '11', '6', 'OBAS');
INSERT INTO `ubigeo` VALUES ('1067', '10', '11', '7', 'PAMPAMARCA');
INSERT INTO `ubigeo` VALUES ('1068', '10', '11', '8', 'CHORAS');
INSERT INTO `ubigeo` VALUES ('1069', '11', '0', '0', 'ICA');
INSERT INTO `ubigeo` VALUES ('1070', '11', '1', '0', 'ICA');
INSERT INTO `ubigeo` VALUES ('1071', '11', '1', '1', 'ICA');
INSERT INTO `ubigeo` VALUES ('1072', '11', '1', '2', 'LA TINGUIÑA');
INSERT INTO `ubigeo` VALUES ('1073', '11', '1', '3', 'LOS AQUIJES');
INSERT INTO `ubigeo` VALUES ('1074', '11', '1', '4', 'OCUCAJE');
INSERT INTO `ubigeo` VALUES ('1075', '11', '1', '5', 'PACHACUTEC');
INSERT INTO `ubigeo` VALUES ('1076', '11', '1', '6', 'PARCONA');
INSERT INTO `ubigeo` VALUES ('1077', '11', '1', '7', 'PUEBLO NUEVO');
INSERT INTO `ubigeo` VALUES ('1078', '11', '1', '8', 'SALAS');
INSERT INTO `ubigeo` VALUES ('1079', '11', '1', '9', 'SAN JOSE DE LOS MOLINOS');
INSERT INTO `ubigeo` VALUES ('1080', '11', '1', '10', 'SAN JUAN BAUTISTA');
INSERT INTO `ubigeo` VALUES ('1081', '11', '1', '11', 'SANTIAGO');
INSERT INTO `ubigeo` VALUES ('1082', '11', '1', '12', 'SUBTANJALLA');
INSERT INTO `ubigeo` VALUES ('1083', '11', '1', '13', 'TATE');
INSERT INTO `ubigeo` VALUES ('1084', '11', '1', '14', 'YAUCA DEL ROSARIO');
INSERT INTO `ubigeo` VALUES ('1085', '11', '2', '0', 'CHINCHA');
INSERT INTO `ubigeo` VALUES ('1086', '11', '2', '1', 'CHINCHA ALTA');
INSERT INTO `ubigeo` VALUES ('1087', '11', '2', '2', 'ALTO LARAN');
INSERT INTO `ubigeo` VALUES ('1088', '11', '2', '3', 'CHAVIN');
INSERT INTO `ubigeo` VALUES ('1089', '11', '2', '4', 'CHINCHA BAJA');
INSERT INTO `ubigeo` VALUES ('1090', '11', '2', '5', 'EL CARMEN');
INSERT INTO `ubigeo` VALUES ('1091', '11', '2', '6', 'GROCIO PRADO');
INSERT INTO `ubigeo` VALUES ('1092', '11', '2', '7', 'PUEBLO NUEVO');
INSERT INTO `ubigeo` VALUES ('1093', '11', '2', '8', 'SAN JUAN DE YANAC');
INSERT INTO `ubigeo` VALUES ('1094', '11', '2', '9', 'SAN PEDRO DE HUACARPANA');
INSERT INTO `ubigeo` VALUES ('1095', '11', '2', '10', 'SUNAMPE');
INSERT INTO `ubigeo` VALUES ('1096', '11', '2', '11', 'TAMBO DE MORA');
INSERT INTO `ubigeo` VALUES ('1097', '11', '3', '0', 'NAZCA');
INSERT INTO `ubigeo` VALUES ('1098', '11', '3', '1', 'NAZCA');
INSERT INTO `ubigeo` VALUES ('1099', '11', '3', '2', 'CHANGUILLO');
INSERT INTO `ubigeo` VALUES ('1100', '11', '3', '3', 'EL INGENIO');
INSERT INTO `ubigeo` VALUES ('1101', '11', '3', '4', 'MARCONA');
INSERT INTO `ubigeo` VALUES ('1102', '11', '3', '5', 'VISTA ALEGRE');
INSERT INTO `ubigeo` VALUES ('1103', '11', '4', '0', 'PALPA');
INSERT INTO `ubigeo` VALUES ('1104', '11', '4', '1', 'PALPA');
INSERT INTO `ubigeo` VALUES ('1105', '11', '4', '2', 'LLIPATA');
INSERT INTO `ubigeo` VALUES ('1106', '11', '4', '3', 'RIO GRANDE');
INSERT INTO `ubigeo` VALUES ('1107', '11', '4', '4', 'SANTA CRUZ');
INSERT INTO `ubigeo` VALUES ('1108', '11', '4', '5', 'TIBILLO');
INSERT INTO `ubigeo` VALUES ('1109', '11', '5', '0', 'PISCO');
INSERT INTO `ubigeo` VALUES ('1110', '11', '5', '1', 'PISCO');
INSERT INTO `ubigeo` VALUES ('1111', '11', '5', '2', 'HUANCANO');
INSERT INTO `ubigeo` VALUES ('1112', '11', '5', '3', 'HUMAY');
INSERT INTO `ubigeo` VALUES ('1113', '11', '5', '4', 'INDEPENDENCIA');
INSERT INTO `ubigeo` VALUES ('1114', '11', '5', '5', 'PARACAS');
INSERT INTO `ubigeo` VALUES ('1115', '11', '5', '6', 'SAN ANDRES');
INSERT INTO `ubigeo` VALUES ('1116', '11', '5', '7', 'SAN CLEMENTE');
INSERT INTO `ubigeo` VALUES ('1117', '11', '5', '8', 'TUPAC AMARU INCA');
INSERT INTO `ubigeo` VALUES ('1118', '12', '0', '0', 'JUNIN');
INSERT INTO `ubigeo` VALUES ('1119', '12', '1', '0', 'HUANCAYO');
INSERT INTO `ubigeo` VALUES ('1120', '12', '1', '1', 'HUANCAYO');
INSERT INTO `ubigeo` VALUES ('1121', '12', '1', '4', 'CARHUACALLANGA');
INSERT INTO `ubigeo` VALUES ('1122', '12', '1', '5', 'CHACAPAMPA');
INSERT INTO `ubigeo` VALUES ('1123', '12', '1', '6', 'CHICCHE');
INSERT INTO `ubigeo` VALUES ('1124', '12', '1', '7', 'CHILCA');
INSERT INTO `ubigeo` VALUES ('1125', '12', '1', '8', 'CHONGOS ALTO');
INSERT INTO `ubigeo` VALUES ('1126', '12', '1', '11', 'CHUPURO');
INSERT INTO `ubigeo` VALUES ('1127', '12', '1', '12', 'COLCA');
INSERT INTO `ubigeo` VALUES ('1128', '12', '1', '13', 'CULLHUAS');
INSERT INTO `ubigeo` VALUES ('1129', '12', '1', '14', 'EL TAMBO');
INSERT INTO `ubigeo` VALUES ('1130', '12', '1', '16', 'HUACRAPUQUIO');
INSERT INTO `ubigeo` VALUES ('1131', '12', '1', '17', 'HUALHUAS');
INSERT INTO `ubigeo` VALUES ('1132', '12', '1', '19', 'HUANCAN');
INSERT INTO `ubigeo` VALUES ('1133', '12', '1', '20', 'HUASICANCHA');
INSERT INTO `ubigeo` VALUES ('1134', '12', '1', '21', 'HUAYUCACHI');
INSERT INTO `ubigeo` VALUES ('1135', '12', '1', '22', 'INGENIO');
INSERT INTO `ubigeo` VALUES ('1136', '12', '1', '24', 'PARIAHUANCA');
INSERT INTO `ubigeo` VALUES ('1137', '12', '1', '25', 'PILCOMAYO');
INSERT INTO `ubigeo` VALUES ('1138', '12', '1', '26', 'PUCARA');
INSERT INTO `ubigeo` VALUES ('1139', '12', '1', '27', 'QUICHUAY');
INSERT INTO `ubigeo` VALUES ('1140', '12', '1', '28', 'QUILCAS');
INSERT INTO `ubigeo` VALUES ('1141', '12', '1', '29', 'SAN AGUSTIN');
INSERT INTO `ubigeo` VALUES ('1142', '12', '1', '30', 'SAN JERONIMO DE TUNAN');
INSERT INTO `ubigeo` VALUES ('1143', '12', '1', '32', 'SAÑO');
INSERT INTO `ubigeo` VALUES ('1144', '12', '1', '33', 'SAPALLANGA');
INSERT INTO `ubigeo` VALUES ('1145', '12', '1', '34', 'SICAYA');
INSERT INTO `ubigeo` VALUES ('1146', '12', '1', '35', 'SANTO DOMINGO DE ACOBAMBA');
INSERT INTO `ubigeo` VALUES ('1147', '12', '1', '36', 'VIQUES');
INSERT INTO `ubigeo` VALUES ('1148', '12', '2', '0', 'CONCEPCION');
INSERT INTO `ubigeo` VALUES ('1149', '12', '2', '1', 'CONCEPCION');
INSERT INTO `ubigeo` VALUES ('1150', '12', '2', '2', 'ACO');
INSERT INTO `ubigeo` VALUES ('1151', '12', '2', '3', 'ANDAMARCA');
INSERT INTO `ubigeo` VALUES ('1152', '12', '2', '4', 'CHAMBARA');
INSERT INTO `ubigeo` VALUES ('1153', '12', '2', '5', 'COCHAS');
INSERT INTO `ubigeo` VALUES ('1154', '12', '2', '6', 'COMAS');
INSERT INTO `ubigeo` VALUES ('1155', '12', '2', '7', 'HEROINAS TOLEDO');
INSERT INTO `ubigeo` VALUES ('1156', '12', '2', '8', 'MANZANARES');
INSERT INTO `ubigeo` VALUES ('1157', '12', '2', '9', 'MARISCAL CASTILLA');
INSERT INTO `ubigeo` VALUES ('1158', '12', '2', '10', 'MATAHUASI');
INSERT INTO `ubigeo` VALUES ('1159', '12', '2', '11', 'MITO');
INSERT INTO `ubigeo` VALUES ('1160', '12', '2', '12', 'NUEVE DE JULIO');
INSERT INTO `ubigeo` VALUES ('1161', '12', '2', '13', 'ORCOTUNA');
INSERT INTO `ubigeo` VALUES ('1162', '12', '2', '14', 'SAN JOSE DE QUERO');
INSERT INTO `ubigeo` VALUES ('1163', '12', '2', '15', 'SANTA ROSA DE OCOPA');
INSERT INTO `ubigeo` VALUES ('1164', '12', '3', '0', 'CHANCHAMAYO');
INSERT INTO `ubigeo` VALUES ('1165', '12', '3', '1', 'CHANCHAMAYO');
INSERT INTO `ubigeo` VALUES ('1166', '12', '3', '2', 'PERENE');
INSERT INTO `ubigeo` VALUES ('1167', '12', '3', '3', 'PICHANAQUI');
INSERT INTO `ubigeo` VALUES ('1168', '12', '3', '4', 'SAN LUIS DE SHUARO');
INSERT INTO `ubigeo` VALUES ('1169', '12', '3', '5', 'SAN RAMON');
INSERT INTO `ubigeo` VALUES ('1170', '12', '3', '6', 'VITOC');
INSERT INTO `ubigeo` VALUES ('1171', '12', '4', '0', 'JAUJA');
INSERT INTO `ubigeo` VALUES ('1172', '12', '4', '1', 'JAUJA');
INSERT INTO `ubigeo` VALUES ('1173', '12', '4', '2', 'ACOLLA');
INSERT INTO `ubigeo` VALUES ('1174', '12', '4', '3', 'APATA');
INSERT INTO `ubigeo` VALUES ('1175', '12', '4', '4', 'ATAURA');
INSERT INTO `ubigeo` VALUES ('1176', '12', '4', '5', 'CANCHAYLLO');
INSERT INTO `ubigeo` VALUES ('1177', '12', '4', '6', 'CURICACA');
INSERT INTO `ubigeo` VALUES ('1178', '12', '4', '7', 'EL MANTARO');
INSERT INTO `ubigeo` VALUES ('1179', '12', '4', '8', 'HUAMALI');
INSERT INTO `ubigeo` VALUES ('1180', '12', '4', '9', 'HUARIPAMPA');
INSERT INTO `ubigeo` VALUES ('1181', '12', '4', '10', 'HUERTAS');
INSERT INTO `ubigeo` VALUES ('1182', '12', '4', '11', 'JANJAILLO');
INSERT INTO `ubigeo` VALUES ('1183', '12', '4', '12', 'JULCAN');
INSERT INTO `ubigeo` VALUES ('1184', '12', '4', '13', 'LEONOR ORDOÑEZ');
INSERT INTO `ubigeo` VALUES ('1185', '12', '4', '14', 'LLOCLLAPAMPA');
INSERT INTO `ubigeo` VALUES ('1186', '12', '4', '15', 'MARCO');
INSERT INTO `ubigeo` VALUES ('1187', '12', '4', '16', 'MASMA');
INSERT INTO `ubigeo` VALUES ('1188', '12', '4', '17', 'MASMA CHICCHE');
INSERT INTO `ubigeo` VALUES ('1189', '12', '4', '18', 'MOLINOS');
INSERT INTO `ubigeo` VALUES ('1190', '12', '4', '19', 'MONOBAMBA');
INSERT INTO `ubigeo` VALUES ('1191', '12', '4', '20', 'MUQUI');
INSERT INTO `ubigeo` VALUES ('1192', '12', '4', '21', 'MUQUIYAUYO');
INSERT INTO `ubigeo` VALUES ('1193', '12', '4', '22', 'PACA');
INSERT INTO `ubigeo` VALUES ('1194', '12', '4', '23', 'PACCHA');
INSERT INTO `ubigeo` VALUES ('1195', '12', '4', '24', 'PANCAN');
INSERT INTO `ubigeo` VALUES ('1196', '12', '4', '25', 'PARCO');
INSERT INTO `ubigeo` VALUES ('1197', '12', '4', '26', 'POMACANCHA');
INSERT INTO `ubigeo` VALUES ('1198', '12', '4', '27', 'RICRAN');
INSERT INTO `ubigeo` VALUES ('1199', '12', '4', '28', 'SAN LORENZO');
INSERT INTO `ubigeo` VALUES ('1200', '12', '4', '29', 'SAN PEDRO DE CHUNAN');
INSERT INTO `ubigeo` VALUES ('1201', '12', '4', '30', 'SAUSA');
INSERT INTO `ubigeo` VALUES ('1202', '12', '4', '31', 'SINCOS');
INSERT INTO `ubigeo` VALUES ('1203', '12', '4', '32', 'TUNAN MARCA');
INSERT INTO `ubigeo` VALUES ('1204', '12', '4', '33', 'YAULI');
INSERT INTO `ubigeo` VALUES ('1205', '12', '4', '34', 'YAUYOS');
INSERT INTO `ubigeo` VALUES ('1206', '12', '5', '0', 'JUNIN');
INSERT INTO `ubigeo` VALUES ('1207', '12', '5', '1', 'JUNIN');
INSERT INTO `ubigeo` VALUES ('1208', '12', '5', '2', 'CARHUAMAYO');
INSERT INTO `ubigeo` VALUES ('1209', '12', '5', '3', 'ONDORES');
INSERT INTO `ubigeo` VALUES ('1210', '12', '5', '4', 'ULCUMAYO');
INSERT INTO `ubigeo` VALUES ('1211', '12', '6', '0', 'SATIPO');
INSERT INTO `ubigeo` VALUES ('1212', '12', '6', '1', 'SATIPO');
INSERT INTO `ubigeo` VALUES ('1213', '12', '6', '2', 'COVIRIALI');
INSERT INTO `ubigeo` VALUES ('1214', '12', '6', '3', 'LLAYLLA');
INSERT INTO `ubigeo` VALUES ('1215', '12', '6', '4', 'MAZAMARI');
INSERT INTO `ubigeo` VALUES ('1216', '12', '6', '5', 'PAMPA HERMOSA');
INSERT INTO `ubigeo` VALUES ('1217', '12', '6', '6', 'PANGOA');
INSERT INTO `ubigeo` VALUES ('1218', '12', '6', '7', 'RIO NEGRO');
INSERT INTO `ubigeo` VALUES ('1219', '12', '6', '8', 'RIO TAMBO');
INSERT INTO `ubigeo` VALUES ('1220', '12', '7', '0', 'TARMA');
INSERT INTO `ubigeo` VALUES ('1221', '12', '7', '1', 'TARMA');
INSERT INTO `ubigeo` VALUES ('1222', '12', '7', '2', 'ACOBAMBA');
INSERT INTO `ubigeo` VALUES ('1223', '12', '7', '3', 'HUARICOLCA');
INSERT INTO `ubigeo` VALUES ('1224', '12', '7', '4', 'HUASAHUASI');
INSERT INTO `ubigeo` VALUES ('1225', '12', '7', '5', 'LA UNION');
INSERT INTO `ubigeo` VALUES ('1226', '12', '7', '6', 'PALCA');
INSERT INTO `ubigeo` VALUES ('1227', '12', '7', '7', 'PALCAMAYO');
INSERT INTO `ubigeo` VALUES ('1228', '12', '7', '8', 'SAN PEDRO DE CAJAS');
INSERT INTO `ubigeo` VALUES ('1229', '12', '7', '9', 'TAPO');
INSERT INTO `ubigeo` VALUES ('1230', '12', '8', '0', 'YAULI');
INSERT INTO `ubigeo` VALUES ('1231', '12', '8', '1', 'LA OROYA');
INSERT INTO `ubigeo` VALUES ('1232', '12', '8', '2', 'CHACAPALPA');
INSERT INTO `ubigeo` VALUES ('1233', '12', '8', '3', 'HUAY-HUAY');
INSERT INTO `ubigeo` VALUES ('1234', '12', '8', '4', 'MARCAPOMACOCHA');
INSERT INTO `ubigeo` VALUES ('1235', '12', '8', '5', 'MOROCOCHA');
INSERT INTO `ubigeo` VALUES ('1236', '12', '8', '6', 'PACCHA');
INSERT INTO `ubigeo` VALUES ('1237', '12', '8', '7', 'SANTA BARBARA DE CARHUACAYAN');
INSERT INTO `ubigeo` VALUES ('1238', '12', '8', '8', 'SANTA ROSA DE SACCO');
INSERT INTO `ubigeo` VALUES ('1239', '12', '8', '9', 'SUITUCANCHA');
INSERT INTO `ubigeo` VALUES ('1240', '12', '8', '10', 'YAULI');
INSERT INTO `ubigeo` VALUES ('1241', '12', '9', '0', 'CHUPACA');
INSERT INTO `ubigeo` VALUES ('1242', '12', '9', '1', 'CHUPACA');
INSERT INTO `ubigeo` VALUES ('1243', '12', '9', '2', 'AHUAC');
INSERT INTO `ubigeo` VALUES ('1244', '12', '9', '3', 'CHONGOS BAJO');
INSERT INTO `ubigeo` VALUES ('1245', '12', '9', '4', 'HUACHAC');
INSERT INTO `ubigeo` VALUES ('1246', '12', '9', '5', 'HUAMANCACA CHICO');
INSERT INTO `ubigeo` VALUES ('1247', '12', '9', '6', 'SAN JUAN DE YSCOS');
INSERT INTO `ubigeo` VALUES ('1248', '12', '9', '7', 'SAN JUAN DE JARPA');
INSERT INTO `ubigeo` VALUES ('1249', '12', '9', '8', 'TRES DE DICIEMBRE');
INSERT INTO `ubigeo` VALUES ('1250', '12', '9', '9', 'YANACANCHA');
INSERT INTO `ubigeo` VALUES ('1251', '13', '0', '0', 'LA LIBERTAD');
INSERT INTO `ubigeo` VALUES ('1252', '13', '1', '0', 'TRUJILLO');
INSERT INTO `ubigeo` VALUES ('1253', '13', '1', '1', 'TRUJILLO');
INSERT INTO `ubigeo` VALUES ('1254', '13', '1', '2', 'EL PORVENIR');
INSERT INTO `ubigeo` VALUES ('1255', '13', '1', '3', 'FLORENCIA DE MORA');
INSERT INTO `ubigeo` VALUES ('1256', '13', '1', '4', 'HUANCHACO');
INSERT INTO `ubigeo` VALUES ('1257', '13', '1', '5', 'LA ESPERANZA');
INSERT INTO `ubigeo` VALUES ('1258', '13', '1', '6', 'LAREDO');
INSERT INTO `ubigeo` VALUES ('1259', '13', '1', '7', 'MOCHE');
INSERT INTO `ubigeo` VALUES ('1260', '13', '1', '8', 'POROTO');
INSERT INTO `ubigeo` VALUES ('1261', '13', '1', '9', 'SALAVERRY');
INSERT INTO `ubigeo` VALUES ('1262', '13', '1', '10', 'SIMBAL');
INSERT INTO `ubigeo` VALUES ('1263', '13', '1', '11', 'VICTOR LARCO HERRERA');
INSERT INTO `ubigeo` VALUES ('1264', '13', '2', '0', 'ASCOPE');
INSERT INTO `ubigeo` VALUES ('1265', '13', '2', '1', 'ASCOPE');
INSERT INTO `ubigeo` VALUES ('1266', '13', '2', '2', 'CHICAMA');
INSERT INTO `ubigeo` VALUES ('1267', '13', '2', '3', 'CHOCOPE');
INSERT INTO `ubigeo` VALUES ('1268', '13', '2', '4', 'MAGDALENA DE CAO');
INSERT INTO `ubigeo` VALUES ('1269', '13', '2', '5', 'PAIJAN');
INSERT INTO `ubigeo` VALUES ('1270', '13', '2', '6', 'RAZURI');
INSERT INTO `ubigeo` VALUES ('1271', '13', '2', '7', 'SANTIAGO DE CAO');
INSERT INTO `ubigeo` VALUES ('1272', '13', '2', '8', 'CASA GRANDE');
INSERT INTO `ubigeo` VALUES ('1273', '13', '3', '0', 'BOLIVAR');
INSERT INTO `ubigeo` VALUES ('1274', '13', '3', '1', 'BOLIVAR');
INSERT INTO `ubigeo` VALUES ('1275', '13', '3', '2', 'BAMBAMARCA');
INSERT INTO `ubigeo` VALUES ('1276', '13', '3', '3', 'CONDORMARCA');
INSERT INTO `ubigeo` VALUES ('1277', '13', '3', '4', 'LONGOTEA');
INSERT INTO `ubigeo` VALUES ('1278', '13', '3', '5', 'UCHUMARCA');
INSERT INTO `ubigeo` VALUES ('1279', '13', '3', '6', 'UCUNCHA');
INSERT INTO `ubigeo` VALUES ('1280', '13', '4', '0', 'CHEPEN');
INSERT INTO `ubigeo` VALUES ('1281', '13', '4', '1', 'CHEPEN');
INSERT INTO `ubigeo` VALUES ('1282', '13', '4', '2', 'PACANGA');
INSERT INTO `ubigeo` VALUES ('1283', '13', '4', '3', 'PUEBLO NUEVO');
INSERT INTO `ubigeo` VALUES ('1284', '13', '5', '0', 'JULCAN');
INSERT INTO `ubigeo` VALUES ('1285', '13', '5', '1', 'JULCAN');
INSERT INTO `ubigeo` VALUES ('1286', '13', '5', '2', 'CALAMARCA');
INSERT INTO `ubigeo` VALUES ('1287', '13', '5', '3', 'CARABAMBA');
INSERT INTO `ubigeo` VALUES ('1288', '13', '5', '4', 'HUASO');
INSERT INTO `ubigeo` VALUES ('1289', '13', '6', '0', 'OTUZCO');
INSERT INTO `ubigeo` VALUES ('1290', '13', '6', '1', 'OTUZCO');
INSERT INTO `ubigeo` VALUES ('1291', '13', '6', '2', 'AGALLPAMPA');
INSERT INTO `ubigeo` VALUES ('1292', '13', '6', '4', 'CHARAT');
INSERT INTO `ubigeo` VALUES ('1293', '13', '6', '5', 'HUARANCHAL');
INSERT INTO `ubigeo` VALUES ('1294', '13', '6', '6', 'LA CUESTA');
INSERT INTO `ubigeo` VALUES ('1295', '13', '6', '8', 'MACHE');
INSERT INTO `ubigeo` VALUES ('1296', '13', '6', '10', 'PARANDAY');
INSERT INTO `ubigeo` VALUES ('1297', '13', '6', '11', 'SALPO');
INSERT INTO `ubigeo` VALUES ('1298', '13', '6', '13', 'SINSICAP');
INSERT INTO `ubigeo` VALUES ('1299', '13', '6', '14', 'USQUIL');
INSERT INTO `ubigeo` VALUES ('1300', '13', '7', '0', 'PACASMAYO');
INSERT INTO `ubigeo` VALUES ('1301', '13', '7', '1', 'SAN PEDRO DE LLOC');
INSERT INTO `ubigeo` VALUES ('1302', '13', '7', '2', 'GUADALUPE');
INSERT INTO `ubigeo` VALUES ('1303', '13', '7', '3', 'JEQUETEPEQUE');
INSERT INTO `ubigeo` VALUES ('1304', '13', '7', '4', 'PACASMAYO');
INSERT INTO `ubigeo` VALUES ('1305', '13', '7', '5', 'SAN JOSE');
INSERT INTO `ubigeo` VALUES ('1306', '13', '8', '0', 'PATAZ');
INSERT INTO `ubigeo` VALUES ('1307', '13', '8', '1', 'TAYABAMBA');
INSERT INTO `ubigeo` VALUES ('1308', '13', '8', '2', 'BULDIBUYO');
INSERT INTO `ubigeo` VALUES ('1309', '13', '8', '3', 'CHILLIA');
INSERT INTO `ubigeo` VALUES ('1310', '13', '8', '4', 'HUANCASPATA');
INSERT INTO `ubigeo` VALUES ('1311', '13', '8', '5', 'HUAYLILLAS');
INSERT INTO `ubigeo` VALUES ('1312', '13', '8', '6', 'HUAYO');
INSERT INTO `ubigeo` VALUES ('1313', '13', '8', '7', 'ONGON');
INSERT INTO `ubigeo` VALUES ('1314', '13', '8', '8', 'PARCOY');
INSERT INTO `ubigeo` VALUES ('1315', '13', '8', '9', 'PATAZ');
INSERT INTO `ubigeo` VALUES ('1316', '13', '8', '10', 'PIAS');
INSERT INTO `ubigeo` VALUES ('1317', '13', '8', '11', 'SANTIAGO DE CHALLAS');
INSERT INTO `ubigeo` VALUES ('1318', '13', '8', '12', 'TAURIJA');
INSERT INTO `ubigeo` VALUES ('1319', '13', '8', '13', 'URPAY');
INSERT INTO `ubigeo` VALUES ('1320', '13', '9', '0', 'SANCHEZ CARRION');
INSERT INTO `ubigeo` VALUES ('1321', '13', '9', '1', 'HUAMACHUCO');
INSERT INTO `ubigeo` VALUES ('1322', '13', '9', '2', 'CHUGAY');
INSERT INTO `ubigeo` VALUES ('1323', '13', '9', '3', 'COCHORCO');
INSERT INTO `ubigeo` VALUES ('1324', '13', '9', '4', 'CURGOS');
INSERT INTO `ubigeo` VALUES ('1325', '13', '9', '5', 'MARCABAL');
INSERT INTO `ubigeo` VALUES ('1326', '13', '9', '6', 'SANAGORAN');
INSERT INTO `ubigeo` VALUES ('1327', '13', '9', '7', 'SARIN');
INSERT INTO `ubigeo` VALUES ('1328', '13', '9', '8', 'SARTIMBAMBA');
INSERT INTO `ubigeo` VALUES ('1329', '13', '10', '0', 'SANTIAGO DE CHUCO');
INSERT INTO `ubigeo` VALUES ('1330', '13', '10', '1', 'SANTIAGO DE CHUCO');
INSERT INTO `ubigeo` VALUES ('1331', '13', '10', '2', 'ANGASMARCA');
INSERT INTO `ubigeo` VALUES ('1332', '13', '10', '3', 'CACHICADAN');
INSERT INTO `ubigeo` VALUES ('1333', '13', '10', '4', 'MOLLEBAMBA');
INSERT INTO `ubigeo` VALUES ('1334', '13', '10', '5', 'MOLLEPATA');
INSERT INTO `ubigeo` VALUES ('1335', '13', '10', '6', 'QUIRUVILCA');
INSERT INTO `ubigeo` VALUES ('1336', '13', '10', '7', 'SANTA CRUZ DE CHUCA');
INSERT INTO `ubigeo` VALUES ('1337', '13', '10', '8', 'SITABAMBA');
INSERT INTO `ubigeo` VALUES ('1338', '13', '11', '0', 'GRAN CHIMU');
INSERT INTO `ubigeo` VALUES ('1339', '13', '11', '1', 'CASCAS');
INSERT INTO `ubigeo` VALUES ('1340', '13', '11', '2', 'LUCMA');
INSERT INTO `ubigeo` VALUES ('1341', '13', '11', '3', 'COMPIN');
INSERT INTO `ubigeo` VALUES ('1342', '13', '11', '4', 'SAYAPULLO');
INSERT INTO `ubigeo` VALUES ('1343', '13', '12', '0', 'VIRU');
INSERT INTO `ubigeo` VALUES ('1344', '13', '12', '1', 'VIRU');
INSERT INTO `ubigeo` VALUES ('1345', '13', '12', '2', 'CHAO');
INSERT INTO `ubigeo` VALUES ('1346', '13', '12', '3', 'GUADALUPITO');
INSERT INTO `ubigeo` VALUES ('1347', '14', '0', '0', 'LAMBAYEQUE');
INSERT INTO `ubigeo` VALUES ('1348', '14', '1', '0', 'CHICLAYO');
INSERT INTO `ubigeo` VALUES ('1349', '14', '1', '1', 'CHICLAYO');
INSERT INTO `ubigeo` VALUES ('1350', '14', '1', '2', 'CHONGOYAPE');
INSERT INTO `ubigeo` VALUES ('1351', '14', '1', '3', 'ETEN');
INSERT INTO `ubigeo` VALUES ('1352', '14', '1', '4', 'ETEN PUERTO');
INSERT INTO `ubigeo` VALUES ('1353', '14', '1', '5', 'JOSE LEONARDO ORTIZ');
INSERT INTO `ubigeo` VALUES ('1354', '14', '1', '6', 'LA VICTORIA');
INSERT INTO `ubigeo` VALUES ('1355', '14', '1', '7', 'LAGUNAS');
INSERT INTO `ubigeo` VALUES ('1356', '14', '1', '8', 'MONSEFU');
INSERT INTO `ubigeo` VALUES ('1357', '14', '1', '9', 'NUEVA ARICA');
INSERT INTO `ubigeo` VALUES ('1358', '14', '1', '10', 'OYOTUN');
INSERT INTO `ubigeo` VALUES ('1359', '14', '1', '11', 'PICSI');
INSERT INTO `ubigeo` VALUES ('1360', '14', '1', '12', 'PIMENTEL');
INSERT INTO `ubigeo` VALUES ('1361', '14', '1', '13', 'REQUE');
INSERT INTO `ubigeo` VALUES ('1362', '14', '1', '14', 'SANTA ROSA');
INSERT INTO `ubigeo` VALUES ('1363', '14', '1', '15', 'SAÑA');
INSERT INTO `ubigeo` VALUES ('1364', '14', '1', '16', 'CAYALTI');
INSERT INTO `ubigeo` VALUES ('1365', '14', '1', '17', 'PATAPO');
INSERT INTO `ubigeo` VALUES ('1366', '14', '1', '18', 'POMALCA');
INSERT INTO `ubigeo` VALUES ('1367', '14', '1', '19', 'PUCALA');
INSERT INTO `ubigeo` VALUES ('1368', '14', '1', '20', 'TUMAN');
INSERT INTO `ubigeo` VALUES ('1369', '14', '2', '0', 'FERREÑAFE');
INSERT INTO `ubigeo` VALUES ('1370', '14', '2', '1', 'FERREÑAFE');
INSERT INTO `ubigeo` VALUES ('1371', '14', '2', '2', 'CAÑARIS');
INSERT INTO `ubigeo` VALUES ('1372', '14', '2', '3', 'INCAHUASI');
INSERT INTO `ubigeo` VALUES ('1373', '14', '2', '4', 'MANUEL ANTONIO MESONES MURO');
INSERT INTO `ubigeo` VALUES ('1374', '14', '2', '5', 'PITIPO');
INSERT INTO `ubigeo` VALUES ('1375', '14', '2', '6', 'PUEBLO NUEVO');
INSERT INTO `ubigeo` VALUES ('1376', '14', '3', '0', 'LAMBAYEQUE');
INSERT INTO `ubigeo` VALUES ('1377', '14', '3', '1', 'LAMBAYEQUE');
INSERT INTO `ubigeo` VALUES ('1378', '14', '3', '2', 'CHOCHOPE');
INSERT INTO `ubigeo` VALUES ('1379', '14', '3', '3', 'ILLIMO');
INSERT INTO `ubigeo` VALUES ('1380', '14', '3', '4', 'JAYANCA');
INSERT INTO `ubigeo` VALUES ('1381', '14', '3', '5', 'MOCHUMI');
INSERT INTO `ubigeo` VALUES ('1382', '14', '3', '6', 'MORROPE');
INSERT INTO `ubigeo` VALUES ('1383', '14', '3', '7', 'MOTUPE');
INSERT INTO `ubigeo` VALUES ('1384', '14', '3', '8', 'OLMOS');
INSERT INTO `ubigeo` VALUES ('1385', '14', '3', '9', 'PACORA');
INSERT INTO `ubigeo` VALUES ('1386', '14', '3', '10', 'SALAS');
INSERT INTO `ubigeo` VALUES ('1387', '14', '3', '11', 'SAN JOSE');
INSERT INTO `ubigeo` VALUES ('1388', '14', '3', '12', 'TUCUME');
INSERT INTO `ubigeo` VALUES ('1389', '15', '0', '0', 'LIMA');
INSERT INTO `ubigeo` VALUES ('1390', '15', '1', '0', 'LIMA');
INSERT INTO `ubigeo` VALUES ('1391', '15', '1', '1', 'LIMA');
INSERT INTO `ubigeo` VALUES ('1392', '15', '1', '2', 'ANCON');
INSERT INTO `ubigeo` VALUES ('1393', '15', '1', '3', 'ATE');
INSERT INTO `ubigeo` VALUES ('1394', '15', '1', '4', 'BARRANCO');
INSERT INTO `ubigeo` VALUES ('1395', '15', '1', '5', 'BREÑA');
INSERT INTO `ubigeo` VALUES ('1396', '15', '1', '6', 'CARABAYLLO');
INSERT INTO `ubigeo` VALUES ('1397', '15', '1', '7', 'CHACLACAYO');
INSERT INTO `ubigeo` VALUES ('1398', '15', '1', '8', 'CHORRILLOS');
INSERT INTO `ubigeo` VALUES ('1399', '15', '1', '9', 'CIENEGUILLA');
INSERT INTO `ubigeo` VALUES ('1400', '15', '1', '10', 'COMAS');
INSERT INTO `ubigeo` VALUES ('1401', '15', '1', '11', 'EL AGUSTINO');
INSERT INTO `ubigeo` VALUES ('1402', '15', '1', '12', 'INDEPENDENCIA');
INSERT INTO `ubigeo` VALUES ('1403', '15', '1', '13', 'JESUS MARIA');
INSERT INTO `ubigeo` VALUES ('1404', '15', '1', '14', 'LA MOLINA');
INSERT INTO `ubigeo` VALUES ('1405', '15', '1', '15', 'LA VICTORIA');
INSERT INTO `ubigeo` VALUES ('1406', '15', '1', '16', 'LINCE');
INSERT INTO `ubigeo` VALUES ('1407', '15', '1', '17', 'LOS OLIVOS');
INSERT INTO `ubigeo` VALUES ('1408', '15', '1', '18', 'LURIGANCHO');
INSERT INTO `ubigeo` VALUES ('1409', '15', '1', '19', 'LURIN');
INSERT INTO `ubigeo` VALUES ('1410', '15', '1', '20', 'MAGDALENA DEL MAR');
INSERT INTO `ubigeo` VALUES ('1411', '15', '1', '21', 'MAGDALENA VIEJA');
INSERT INTO `ubigeo` VALUES ('1412', '15', '1', '22', 'MIRAFLORES');
INSERT INTO `ubigeo` VALUES ('1413', '15', '1', '23', 'PACHACAMAC');
INSERT INTO `ubigeo` VALUES ('1414', '15', '1', '24', 'PUCUSANA');
INSERT INTO `ubigeo` VALUES ('1415', '15', '1', '25', 'PUENTE PIEDRA');
INSERT INTO `ubigeo` VALUES ('1416', '15', '1', '26', 'PUNTA HERMOSA');
INSERT INTO `ubigeo` VALUES ('1417', '15', '1', '27', 'PUNTA NEGRA');
INSERT INTO `ubigeo` VALUES ('1418', '15', '1', '28', 'RIMAC');
INSERT INTO `ubigeo` VALUES ('1419', '15', '1', '29', 'SAN BARTOLO');
INSERT INTO `ubigeo` VALUES ('1420', '15', '1', '30', 'SAN BORJA');
INSERT INTO `ubigeo` VALUES ('1421', '15', '1', '31', 'SAN ISIDRO');
INSERT INTO `ubigeo` VALUES ('1422', '15', '1', '32', 'SAN JUAN DE LURIGANCHO');
INSERT INTO `ubigeo` VALUES ('1423', '15', '1', '33', 'SAN JUAN DE MIRAFLORES');
INSERT INTO `ubigeo` VALUES ('1424', '15', '1', '34', 'SAN LUIS');
INSERT INTO `ubigeo` VALUES ('1425', '15', '1', '35', 'SAN MARTIN DE PORRES');
INSERT INTO `ubigeo` VALUES ('1426', '15', '1', '36', 'SAN MIGUEL');
INSERT INTO `ubigeo` VALUES ('1427', '15', '1', '37', 'SANTA ANITA');
INSERT INTO `ubigeo` VALUES ('1428', '15', '1', '38', 'SANTA MARIA DEL MAR');
INSERT INTO `ubigeo` VALUES ('1429', '15', '1', '39', 'SANTA ROSA');
INSERT INTO `ubigeo` VALUES ('1430', '15', '1', '40', 'SANTIAGO DE SURCO');
INSERT INTO `ubigeo` VALUES ('1431', '15', '1', '41', 'SURQUILLO');
INSERT INTO `ubigeo` VALUES ('1432', '15', '1', '42', 'VILLA EL SALVADOR');
INSERT INTO `ubigeo` VALUES ('1433', '15', '1', '43', 'VILLA MARIA DEL TRIUNFO');
INSERT INTO `ubigeo` VALUES ('1434', '15', '2', '0', 'BARRANCA');
INSERT INTO `ubigeo` VALUES ('1435', '15', '2', '1', 'BARRANCA');
INSERT INTO `ubigeo` VALUES ('1436', '15', '2', '2', 'PARAMONGA');
INSERT INTO `ubigeo` VALUES ('1437', '15', '2', '3', 'PATIVILCA');
INSERT INTO `ubigeo` VALUES ('1438', '15', '2', '4', 'SUPE');
INSERT INTO `ubigeo` VALUES ('1439', '15', '2', '5', 'SUPE PUERTO');
INSERT INTO `ubigeo` VALUES ('1440', '15', '3', '0', 'CAJATAMBO');
INSERT INTO `ubigeo` VALUES ('1441', '15', '3', '1', 'CAJATAMBO');
INSERT INTO `ubigeo` VALUES ('1442', '15', '3', '2', 'COPA');
INSERT INTO `ubigeo` VALUES ('1443', '15', '3', '3', 'GORGOR');
INSERT INTO `ubigeo` VALUES ('1444', '15', '3', '4', 'HUANCAPON');
INSERT INTO `ubigeo` VALUES ('1445', '15', '3', '5', 'MANAS');
INSERT INTO `ubigeo` VALUES ('1446', '15', '4', '0', 'CANTA');
INSERT INTO `ubigeo` VALUES ('1447', '15', '4', '1', 'CANTA');
INSERT INTO `ubigeo` VALUES ('1448', '15', '4', '2', 'ARAHUAY');
INSERT INTO `ubigeo` VALUES ('1449', '15', '4', '3', 'HUAMANTANGA');
INSERT INTO `ubigeo` VALUES ('1450', '15', '4', '4', 'HUAROS');
INSERT INTO `ubigeo` VALUES ('1451', '15', '4', '5', 'LACHAQUI');
INSERT INTO `ubigeo` VALUES ('1452', '15', '4', '6', 'SAN BUENAVENTURA');
INSERT INTO `ubigeo` VALUES ('1453', '15', '4', '7', 'SANTA ROSA DE QUIVES');
INSERT INTO `ubigeo` VALUES ('1454', '15', '5', '0', 'CAÑETE');
INSERT INTO `ubigeo` VALUES ('1455', '15', '5', '1', 'SAN VICENTE DE CAÑETE');
INSERT INTO `ubigeo` VALUES ('1456', '15', '5', '2', 'ASIA');
INSERT INTO `ubigeo` VALUES ('1457', '15', '5', '3', 'CALANGO');
INSERT INTO `ubigeo` VALUES ('1458', '15', '5', '4', 'CERRO AZUL');
INSERT INTO `ubigeo` VALUES ('1459', '15', '5', '5', 'CHILCA');
INSERT INTO `ubigeo` VALUES ('1460', '15', '5', '6', 'COAYLLO');
INSERT INTO `ubigeo` VALUES ('1461', '15', '5', '7', 'IMPERIAL');
INSERT INTO `ubigeo` VALUES ('1462', '15', '5', '8', 'LUNAHUANA');
INSERT INTO `ubigeo` VALUES ('1463', '15', '5', '9', 'MALA');
INSERT INTO `ubigeo` VALUES ('1464', '15', '5', '10', 'NUEVO IMPERIAL');
INSERT INTO `ubigeo` VALUES ('1465', '15', '5', '11', 'PACARAN');
INSERT INTO `ubigeo` VALUES ('1466', '15', '5', '12', 'QUILMANA');
INSERT INTO `ubigeo` VALUES ('1467', '15', '5', '13', 'SAN ANTONIO');
INSERT INTO `ubigeo` VALUES ('1468', '15', '5', '14', 'SAN LUIS');
INSERT INTO `ubigeo` VALUES ('1469', '15', '5', '15', 'SANTA CRUZ DE FLORES');
INSERT INTO `ubigeo` VALUES ('1470', '15', '5', '16', 'ZUÑIGA');
INSERT INTO `ubigeo` VALUES ('1471', '15', '6', '0', 'HUARAL');
INSERT INTO `ubigeo` VALUES ('1472', '15', '6', '1', 'HUARAL');
INSERT INTO `ubigeo` VALUES ('1473', '15', '6', '2', 'ATAVILLOS ALTO');
INSERT INTO `ubigeo` VALUES ('1474', '15', '6', '3', 'ATAVILLOS BAJO');
INSERT INTO `ubigeo` VALUES ('1475', '15', '6', '4', 'AUCALLAMA');
INSERT INTO `ubigeo` VALUES ('1476', '15', '6', '5', 'CHANCAY');
INSERT INTO `ubigeo` VALUES ('1477', '15', '6', '6', 'IHUARI');
INSERT INTO `ubigeo` VALUES ('1478', '15', '6', '7', 'LAMPIAN');
INSERT INTO `ubigeo` VALUES ('1479', '15', '6', '8', 'PACARAOS');
INSERT INTO `ubigeo` VALUES ('1480', '15', '6', '9', 'SAN MIGUEL DE ACOS');
INSERT INTO `ubigeo` VALUES ('1481', '15', '6', '10', 'SANTA CRUZ DE ANDAMARCA');
INSERT INTO `ubigeo` VALUES ('1482', '15', '6', '11', 'SUMBILCA');
INSERT INTO `ubigeo` VALUES ('1483', '15', '6', '12', 'VEINTISIETE DE NOVIEMBRE');
INSERT INTO `ubigeo` VALUES ('1484', '15', '7', '0', 'HUAROCHIRI');
INSERT INTO `ubigeo` VALUES ('1485', '15', '7', '1', 'MATUCANA');
INSERT INTO `ubigeo` VALUES ('1486', '15', '7', '2', 'ANTIOQUIA');
INSERT INTO `ubigeo` VALUES ('1487', '15', '7', '3', 'CALLAHUANCA');
INSERT INTO `ubigeo` VALUES ('1488', '15', '7', '4', 'CARAMPOMA');
INSERT INTO `ubigeo` VALUES ('1489', '15', '7', '5', 'CHICLA');
INSERT INTO `ubigeo` VALUES ('1490', '15', '7', '6', 'CUENCA');
INSERT INTO `ubigeo` VALUES ('1491', '15', '7', '7', 'HUACHUPAMPA');
INSERT INTO `ubigeo` VALUES ('1492', '15', '7', '8', 'HUANZA');
INSERT INTO `ubigeo` VALUES ('1493', '15', '7', '9', 'HUAROCHIRI');
INSERT INTO `ubigeo` VALUES ('1494', '15', '7', '10', 'LAHUAYTAMBO');
INSERT INTO `ubigeo` VALUES ('1495', '15', '7', '11', 'LANGA');
INSERT INTO `ubigeo` VALUES ('1496', '15', '7', '12', 'LARAOS');
INSERT INTO `ubigeo` VALUES ('1497', '15', '7', '13', 'MARIATANA');
INSERT INTO `ubigeo` VALUES ('1498', '15', '7', '14', 'RICARDO PALMA');
INSERT INTO `ubigeo` VALUES ('1499', '15', '7', '15', 'SAN ANDRES DE TUPICOCHA');
INSERT INTO `ubigeo` VALUES ('1500', '15', '7', '16', 'SAN ANTONIO');
INSERT INTO `ubigeo` VALUES ('1501', '15', '7', '17', 'SAN BARTOLOME');
INSERT INTO `ubigeo` VALUES ('1502', '15', '7', '18', 'SAN DAMIAN');
INSERT INTO `ubigeo` VALUES ('1503', '15', '7', '19', 'SAN JUAN DE IRIS');
INSERT INTO `ubigeo` VALUES ('1504', '15', '7', '20', 'SAN JUAN DE TANTARANCHE');
INSERT INTO `ubigeo` VALUES ('1505', '15', '7', '21', 'SAN LORENZO DE QUINTI');
INSERT INTO `ubigeo` VALUES ('1506', '15', '7', '22', 'SAN MATEO');
INSERT INTO `ubigeo` VALUES ('1507', '15', '7', '23', 'SAN MATEO DE OTAO');
INSERT INTO `ubigeo` VALUES ('1508', '15', '7', '24', 'SAN PEDRO DE CASTA');
INSERT INTO `ubigeo` VALUES ('1509', '15', '7', '25', 'SAN PEDRO DE HUANCAYRE');
INSERT INTO `ubigeo` VALUES ('1510', '15', '7', '26', 'SANGALLAYA');
INSERT INTO `ubigeo` VALUES ('1511', '15', '7', '27', 'SANTA CRUZ DE COCACHACRA');
INSERT INTO `ubigeo` VALUES ('1512', '15', '7', '28', 'SANTA EULALIA');
INSERT INTO `ubigeo` VALUES ('1513', '15', '7', '29', 'SANTIAGO DE ANCHUCAYA');
INSERT INTO `ubigeo` VALUES ('1514', '15', '7', '30', 'SANTIAGO DE TUNA');
INSERT INTO `ubigeo` VALUES ('1515', '15', '7', '31', 'SANTO DOMINGO DE LOS OLLEROS');
INSERT INTO `ubigeo` VALUES ('1516', '15', '7', '32', 'SURCO');
INSERT INTO `ubigeo` VALUES ('1517', '15', '8', '0', 'HUAURA');
INSERT INTO `ubigeo` VALUES ('1518', '15', '8', '1', 'HUACHO');
INSERT INTO `ubigeo` VALUES ('1519', '15', '8', '2', 'AMBAR');
INSERT INTO `ubigeo` VALUES ('1520', '15', '8', '3', 'CALETA DE CARQUIN');
INSERT INTO `ubigeo` VALUES ('1521', '15', '8', '4', 'CHECRAS');
INSERT INTO `ubigeo` VALUES ('1522', '15', '8', '5', 'HUALMAY');
INSERT INTO `ubigeo` VALUES ('1523', '15', '8', '6', 'HUAURA');
INSERT INTO `ubigeo` VALUES ('1524', '15', '8', '7', 'LEONCIO PRADO');
INSERT INTO `ubigeo` VALUES ('1525', '15', '8', '8', 'PACCHO');
INSERT INTO `ubigeo` VALUES ('1526', '15', '8', '9', 'SANTA LEONOR');
INSERT INTO `ubigeo` VALUES ('1527', '15', '8', '10', 'SANTA MARIA');
INSERT INTO `ubigeo` VALUES ('1528', '15', '8', '11', 'SAYAN');
INSERT INTO `ubigeo` VALUES ('1529', '15', '8', '12', 'VEGUETA');
INSERT INTO `ubigeo` VALUES ('1530', '15', '9', '0', 'OYON');
INSERT INTO `ubigeo` VALUES ('1531', '15', '9', '1', 'OYON');
INSERT INTO `ubigeo` VALUES ('1532', '15', '9', '2', 'ANDAJES');
INSERT INTO `ubigeo` VALUES ('1533', '15', '9', '3', 'CAUJUL');
INSERT INTO `ubigeo` VALUES ('1534', '15', '9', '4', 'COCHAMARCA');
INSERT INTO `ubigeo` VALUES ('1535', '15', '9', '5', 'NAVAN');
INSERT INTO `ubigeo` VALUES ('1536', '15', '9', '6', 'PACHANGARA');
INSERT INTO `ubigeo` VALUES ('1537', '15', '10', '0', 'YAUYOS');
INSERT INTO `ubigeo` VALUES ('1538', '15', '10', '1', 'YAUYOS');
INSERT INTO `ubigeo` VALUES ('1539', '15', '10', '2', 'ALIS');
INSERT INTO `ubigeo` VALUES ('1540', '15', '10', '3', 'AYAUCA');
INSERT INTO `ubigeo` VALUES ('1541', '15', '10', '4', 'AYAVIRI');
INSERT INTO `ubigeo` VALUES ('1542', '15', '10', '5', 'AZANGARO');
INSERT INTO `ubigeo` VALUES ('1543', '15', '10', '6', 'CACRA');
INSERT INTO `ubigeo` VALUES ('1544', '15', '10', '7', 'CARANIA');
INSERT INTO `ubigeo` VALUES ('1545', '15', '10', '8', 'CATAHUASI');
INSERT INTO `ubigeo` VALUES ('1546', '15', '10', '9', 'CHOCOS');
INSERT INTO `ubigeo` VALUES ('1547', '15', '10', '10', 'COCHAS');
INSERT INTO `ubigeo` VALUES ('1548', '15', '10', '11', 'COLONIA');
INSERT INTO `ubigeo` VALUES ('1549', '15', '10', '12', 'HONGOS');
INSERT INTO `ubigeo` VALUES ('1550', '15', '10', '13', 'HUAMPARA');
INSERT INTO `ubigeo` VALUES ('1551', '15', '10', '14', 'HUANCAYA');
INSERT INTO `ubigeo` VALUES ('1552', '15', '10', '15', 'HUANGASCAR');
INSERT INTO `ubigeo` VALUES ('1553', '15', '10', '16', 'HUANTAN');
INSERT INTO `ubigeo` VALUES ('1554', '15', '10', '17', 'HUAÑEC');
INSERT INTO `ubigeo` VALUES ('1555', '15', '10', '18', 'LARAOS');
INSERT INTO `ubigeo` VALUES ('1556', '15', '10', '19', 'LINCHA');
INSERT INTO `ubigeo` VALUES ('1557', '15', '10', '20', 'MADEAN');
INSERT INTO `ubigeo` VALUES ('1558', '15', '10', '21', 'MIRAFLORES');
INSERT INTO `ubigeo` VALUES ('1559', '15', '10', '22', 'OMAS');
INSERT INTO `ubigeo` VALUES ('1560', '15', '10', '23', 'PUTINZA');
INSERT INTO `ubigeo` VALUES ('1561', '15', '10', '24', 'QUINCHES');
INSERT INTO `ubigeo` VALUES ('1562', '15', '10', '25', 'QUINOCAY');
INSERT INTO `ubigeo` VALUES ('1563', '15', '10', '26', 'SAN JOAQUIN');
INSERT INTO `ubigeo` VALUES ('1564', '15', '10', '27', 'SAN PEDRO DE PILAS');
INSERT INTO `ubigeo` VALUES ('1565', '15', '10', '28', 'TANTA');
INSERT INTO `ubigeo` VALUES ('1566', '15', '10', '29', 'TAURIPAMPA');
INSERT INTO `ubigeo` VALUES ('1567', '15', '10', '30', 'TOMAS');
INSERT INTO `ubigeo` VALUES ('1568', '15', '10', '31', 'TUPE');
INSERT INTO `ubigeo` VALUES ('1569', '15', '10', '32', 'VIÑAC');
INSERT INTO `ubigeo` VALUES ('1570', '15', '10', '33', 'VITIS');
INSERT INTO `ubigeo` VALUES ('1571', '16', '0', '0', 'LORETO');
INSERT INTO `ubigeo` VALUES ('1572', '16', '1', '0', 'MAYNAS');
INSERT INTO `ubigeo` VALUES ('1573', '16', '1', '1', 'IQUITOS');
INSERT INTO `ubigeo` VALUES ('1574', '16', '1', '2', 'ALTO NANAY');
INSERT INTO `ubigeo` VALUES ('1575', '16', '1', '3', 'FERNANDO LORES');
INSERT INTO `ubigeo` VALUES ('1576', '16', '1', '4', 'INDIANA');
INSERT INTO `ubigeo` VALUES ('1577', '16', '1', '5', 'LAS AMAZONAS');
INSERT INTO `ubigeo` VALUES ('1578', '16', '1', '6', 'MAZAN');
INSERT INTO `ubigeo` VALUES ('1579', '16', '1', '7', 'NAPO');
INSERT INTO `ubigeo` VALUES ('1580', '16', '1', '8', 'PUNCHANA');
INSERT INTO `ubigeo` VALUES ('1581', '16', '1', '9', 'PUTUMAYO');
INSERT INTO `ubigeo` VALUES ('1582', '16', '1', '10', 'TORRES CAUSANA');
INSERT INTO `ubigeo` VALUES ('1583', '16', '1', '12', 'BELEN');
INSERT INTO `ubigeo` VALUES ('1584', '16', '1', '13', 'SAN JUAN BAUTISTA');
INSERT INTO `ubigeo` VALUES ('1585', '16', '1', '14', 'TENIENTE MANUEL CLAVERO');
INSERT INTO `ubigeo` VALUES ('1586', '16', '2', '0', 'ALTO AMAZONAS');
INSERT INTO `ubigeo` VALUES ('1587', '16', '2', '1', 'YURIMAGUAS');
INSERT INTO `ubigeo` VALUES ('1588', '16', '2', '2', 'BALSAPUERTO');
INSERT INTO `ubigeo` VALUES ('1589', '16', '2', '5', 'JEBEROS');
INSERT INTO `ubigeo` VALUES ('1590', '16', '2', '6', 'LAGUNAS');
INSERT INTO `ubigeo` VALUES ('1591', '16', '2', '10', 'SANTA CRUZ');
INSERT INTO `ubigeo` VALUES ('1592', '16', '2', '11', 'TENIENTE CESAR LOPEZ ROJAS');
INSERT INTO `ubigeo` VALUES ('1593', '16', '3', '0', 'LORETO');
INSERT INTO `ubigeo` VALUES ('1594', '16', '3', '1', 'NAUTA');
INSERT INTO `ubigeo` VALUES ('1595', '16', '3', '2', 'PARINARI');
INSERT INTO `ubigeo` VALUES ('1596', '16', '3', '3', 'TIGRE');
INSERT INTO `ubigeo` VALUES ('1597', '16', '3', '4', 'TROMPETEROS');
INSERT INTO `ubigeo` VALUES ('1598', '16', '3', '5', 'URARINAS');
INSERT INTO `ubigeo` VALUES ('1599', '16', '4', '0', 'MARISCAL RAMON CASTILLA');
INSERT INTO `ubigeo` VALUES ('1600', '16', '4', '1', 'RAMON CASTILLA');
INSERT INTO `ubigeo` VALUES ('1601', '16', '4', '2', 'PEBAS');
INSERT INTO `ubigeo` VALUES ('1602', '16', '4', '3', 'YAVARI');
INSERT INTO `ubigeo` VALUES ('1603', '16', '4', '4', 'SAN PABLO');
INSERT INTO `ubigeo` VALUES ('1604', '16', '5', '0', 'REQUENA');
INSERT INTO `ubigeo` VALUES ('1605', '16', '5', '1', 'REQUENA');
INSERT INTO `ubigeo` VALUES ('1606', '16', '5', '2', 'ALTO TAPICHE');
INSERT INTO `ubigeo` VALUES ('1607', '16', '5', '3', 'CAPELO');
INSERT INTO `ubigeo` VALUES ('1608', '16', '5', '4', 'EMILIO SAN MARTIN');
INSERT INTO `ubigeo` VALUES ('1609', '16', '5', '5', 'MAQUIA');
INSERT INTO `ubigeo` VALUES ('1610', '16', '5', '6', 'PUINAHUA');
INSERT INTO `ubigeo` VALUES ('1611', '16', '5', '7', 'SAQUENA');
INSERT INTO `ubigeo` VALUES ('1612', '16', '5', '8', 'SOPLIN');
INSERT INTO `ubigeo` VALUES ('1613', '16', '5', '9', 'TAPICHE');
INSERT INTO `ubigeo` VALUES ('1614', '16', '5', '10', 'JENARO HERRERA');
INSERT INTO `ubigeo` VALUES ('1615', '16', '5', '11', 'YAQUERANA');
INSERT INTO `ubigeo` VALUES ('1616', '16', '6', '0', 'UCAYALI');
INSERT INTO `ubigeo` VALUES ('1617', '16', '6', '1', 'CONTAMANA');
INSERT INTO `ubigeo` VALUES ('1618', '16', '6', '2', 'INAHUAYA');
INSERT INTO `ubigeo` VALUES ('1619', '16', '6', '3', 'PADRE MARQUEZ');
INSERT INTO `ubigeo` VALUES ('1620', '16', '6', '4', 'PAMPA HERMOSA');
INSERT INTO `ubigeo` VALUES ('1621', '16', '6', '5', 'SARAYACU');
INSERT INTO `ubigeo` VALUES ('1622', '16', '6', '6', 'VARGAS GUERRA');
INSERT INTO `ubigeo` VALUES ('1623', '16', '7', '0', 'DATEM DEL MARAÑON');
INSERT INTO `ubigeo` VALUES ('1624', '16', '7', '1', 'BARRANCA');
INSERT INTO `ubigeo` VALUES ('1625', '16', '7', '2', 'CAHUAPANAS');
INSERT INTO `ubigeo` VALUES ('1626', '16', '7', '3', 'MANSERICHE');
INSERT INTO `ubigeo` VALUES ('1627', '16', '7', '4', 'MORONA');
INSERT INTO `ubigeo` VALUES ('1628', '16', '7', '5', 'PASTAZA');
INSERT INTO `ubigeo` VALUES ('1629', '16', '7', '6', 'ANDOAS');
INSERT INTO `ubigeo` VALUES ('1630', '17', '0', '0', 'MADRE DE DIOS');
INSERT INTO `ubigeo` VALUES ('1631', '17', '1', '0', 'TAMBOPATA');
INSERT INTO `ubigeo` VALUES ('1632', '17', '1', '1', 'TAMBOPATA');
INSERT INTO `ubigeo` VALUES ('1633', '17', '1', '2', 'INAMBARI');
INSERT INTO `ubigeo` VALUES ('1634', '17', '1', '3', 'LAS PIEDRAS');
INSERT INTO `ubigeo` VALUES ('1635', '17', '1', '4', 'LABERINTO');
INSERT INTO `ubigeo` VALUES ('1636', '17', '2', '0', 'MANU');
INSERT INTO `ubigeo` VALUES ('1637', '17', '2', '1', 'MANU');
INSERT INTO `ubigeo` VALUES ('1638', '17', '2', '2', 'FITZCARRALD');
INSERT INTO `ubigeo` VALUES ('1639', '17', '2', '3', 'MADRE DE DIOS');
INSERT INTO `ubigeo` VALUES ('1640', '17', '2', '4', 'HUEPETUHE');
INSERT INTO `ubigeo` VALUES ('1641', '17', '3', '0', 'TAHUAMANU');
INSERT INTO `ubigeo` VALUES ('1642', '17', '3', '1', 'IÑAPARI');
INSERT INTO `ubigeo` VALUES ('1643', '17', '3', '2', 'IBERIA');
INSERT INTO `ubigeo` VALUES ('1644', '17', '3', '3', 'TAHUAMANU');
INSERT INTO `ubigeo` VALUES ('1645', '18', '0', '0', 'MOQUEGUA');
INSERT INTO `ubigeo` VALUES ('1646', '18', '1', '0', 'MARISCAL NIETO');
INSERT INTO `ubigeo` VALUES ('1647', '18', '1', '1', 'MOQUEGUA');
INSERT INTO `ubigeo` VALUES ('1648', '18', '1', '2', 'CARUMAS');
INSERT INTO `ubigeo` VALUES ('1649', '18', '1', '3', 'CUCHUMBAYA');
INSERT INTO `ubigeo` VALUES ('1650', '18', '1', '4', 'SAMEGUA');
INSERT INTO `ubigeo` VALUES ('1651', '18', '1', '5', 'SAN CRISTOBAL');
INSERT INTO `ubigeo` VALUES ('1652', '18', '1', '6', 'TORATA');
INSERT INTO `ubigeo` VALUES ('1653', '18', '2', '0', 'GENERAL SANCHEZ CERRO');
INSERT INTO `ubigeo` VALUES ('1654', '18', '2', '1', 'OMATE');
INSERT INTO `ubigeo` VALUES ('1655', '18', '2', '2', 'CHOJATA');
INSERT INTO `ubigeo` VALUES ('1656', '18', '2', '3', 'COALAQUE');
INSERT INTO `ubigeo` VALUES ('1657', '18', '2', '4', 'ICHUÑA');
INSERT INTO `ubigeo` VALUES ('1658', '18', '2', '5', 'LA CAPILLA');
INSERT INTO `ubigeo` VALUES ('1659', '18', '2', '6', 'LLOQUE');
INSERT INTO `ubigeo` VALUES ('1660', '18', '2', '7', 'MATALAQUE');
INSERT INTO `ubigeo` VALUES ('1661', '18', '2', '8', 'PUQUINA');
INSERT INTO `ubigeo` VALUES ('1662', '18', '2', '9', 'QUINISTAQUILLAS');
INSERT INTO `ubigeo` VALUES ('1663', '18', '2', '10', 'UBINAS');
INSERT INTO `ubigeo` VALUES ('1664', '18', '2', '11', 'YUNGA');
INSERT INTO `ubigeo` VALUES ('1665', '18', '3', '0', 'ILO');
INSERT INTO `ubigeo` VALUES ('1666', '18', '3', '1', 'ILO');
INSERT INTO `ubigeo` VALUES ('1667', '18', '3', '2', 'EL ALGARROBAL');
INSERT INTO `ubigeo` VALUES ('1668', '18', '3', '3', 'PACOCHA');
INSERT INTO `ubigeo` VALUES ('1669', '19', '0', '0', 'PASCO');
INSERT INTO `ubigeo` VALUES ('1670', '19', '1', '0', 'PASCO');
INSERT INTO `ubigeo` VALUES ('1671', '19', '1', '1', 'CHAUPIMARCA');
INSERT INTO `ubigeo` VALUES ('1672', '19', '1', '2', 'HUACHON');
INSERT INTO `ubigeo` VALUES ('1673', '19', '1', '3', 'HUARIACA');
INSERT INTO `ubigeo` VALUES ('1674', '19', '1', '4', 'HUAYLLAY');
INSERT INTO `ubigeo` VALUES ('1675', '19', '1', '5', 'NINACACA');
INSERT INTO `ubigeo` VALUES ('1676', '19', '1', '6', 'PALLANCHACRA');
INSERT INTO `ubigeo` VALUES ('1677', '19', '1', '7', 'PAUCARTAMBO');
INSERT INTO `ubigeo` VALUES ('1678', '19', '1', '8', 'SAN FRANCISCO DE ASIS DE YARUSYACAN');
INSERT INTO `ubigeo` VALUES ('1679', '19', '1', '9', 'SIMON BOLIVAR');
INSERT INTO `ubigeo` VALUES ('1680', '19', '1', '10', 'TICLACAYAN');
INSERT INTO `ubigeo` VALUES ('1681', '19', '1', '11', 'TINYAHUARCO');
INSERT INTO `ubigeo` VALUES ('1682', '19', '1', '12', 'VICCO');
INSERT INTO `ubigeo` VALUES ('1683', '19', '1', '13', 'YANACANCHA');
INSERT INTO `ubigeo` VALUES ('1684', '19', '2', '0', 'DANIEL ALCIDES CARRION');
INSERT INTO `ubigeo` VALUES ('1685', '19', '2', '1', 'YANAHUANCA');
INSERT INTO `ubigeo` VALUES ('1686', '19', '2', '2', 'CHACAYAN');
INSERT INTO `ubigeo` VALUES ('1687', '19', '2', '3', 'GOYLLARISQUIZGA');
INSERT INTO `ubigeo` VALUES ('1688', '19', '2', '4', 'PAUCAR');
INSERT INTO `ubigeo` VALUES ('1689', '19', '2', '5', 'SAN PEDRO DE PILLAO');
INSERT INTO `ubigeo` VALUES ('1690', '19', '2', '6', 'SANTA ANA DE TUSI');
INSERT INTO `ubigeo` VALUES ('1691', '19', '2', '7', 'TAPUC');
INSERT INTO `ubigeo` VALUES ('1692', '19', '2', '8', 'VILCABAMBA');
INSERT INTO `ubigeo` VALUES ('1693', '19', '3', '0', 'OXAPAMPA');
INSERT INTO `ubigeo` VALUES ('1694', '19', '3', '1', 'OXAPAMPA');
INSERT INTO `ubigeo` VALUES ('1695', '19', '3', '2', 'CHONTABAMBA');
INSERT INTO `ubigeo` VALUES ('1696', '19', '3', '3', 'HUANCABAMBA');
INSERT INTO `ubigeo` VALUES ('1697', '19', '3', '4', 'PALCAZU');
INSERT INTO `ubigeo` VALUES ('1698', '19', '3', '5', 'POZUZO');
INSERT INTO `ubigeo` VALUES ('1699', '19', '3', '6', 'PUERTO BERMUDEZ');
INSERT INTO `ubigeo` VALUES ('1700', '19', '3', '7', 'VILLA RICA');
INSERT INTO `ubigeo` VALUES ('1701', '20', '0', '0', 'PIURA');
INSERT INTO `ubigeo` VALUES ('1702', '20', '1', '0', 'PIURA');
INSERT INTO `ubigeo` VALUES ('1703', '20', '1', '1', 'PIURA');
INSERT INTO `ubigeo` VALUES ('1704', '20', '1', '4', 'CASTILLA');
INSERT INTO `ubigeo` VALUES ('1705', '20', '1', '5', 'CATACAOS');
INSERT INTO `ubigeo` VALUES ('1706', '20', '1', '7', 'CURA MORI');
INSERT INTO `ubigeo` VALUES ('1707', '20', '1', '8', 'EL TALLAN');
INSERT INTO `ubigeo` VALUES ('1708', '20', '1', '9', 'LA ARENA');
INSERT INTO `ubigeo` VALUES ('1709', '20', '1', '10', 'LA UNION');
INSERT INTO `ubigeo` VALUES ('1710', '20', '1', '11', 'LAS LOMAS');
INSERT INTO `ubigeo` VALUES ('1711', '20', '1', '14', 'TAMBO GRANDE');
INSERT INTO `ubigeo` VALUES ('1712', '20', '2', '0', 'AYABACA');
INSERT INTO `ubigeo` VALUES ('1713', '20', '2', '1', 'AYABACA');
INSERT INTO `ubigeo` VALUES ('1714', '20', '2', '2', 'FRIAS');
INSERT INTO `ubigeo` VALUES ('1715', '20', '2', '3', 'JILILI');
INSERT INTO `ubigeo` VALUES ('1716', '20', '2', '4', 'LAGUNAS');
INSERT INTO `ubigeo` VALUES ('1717', '20', '2', '5', 'MONTERO');
INSERT INTO `ubigeo` VALUES ('1718', '20', '2', '6', 'PACAIPAMPA');
INSERT INTO `ubigeo` VALUES ('1719', '20', '2', '7', 'PAIMAS');
INSERT INTO `ubigeo` VALUES ('1720', '20', '2', '8', 'SAPILLICA');
INSERT INTO `ubigeo` VALUES ('1721', '20', '2', '9', 'SICCHEZ');
INSERT INTO `ubigeo` VALUES ('1722', '20', '2', '10', 'SUYO');
INSERT INTO `ubigeo` VALUES ('1723', '20', '3', '0', 'HUANCABAMBA');
INSERT INTO `ubigeo` VALUES ('1724', '20', '3', '1', 'HUANCABAMBA');
INSERT INTO `ubigeo` VALUES ('1725', '20', '3', '2', 'CANCHAQUE');
INSERT INTO `ubigeo` VALUES ('1726', '20', '3', '3', 'EL CARMEN DE LA FRONTERA');
INSERT INTO `ubigeo` VALUES ('1727', '20', '3', '4', 'HUARMACA');
INSERT INTO `ubigeo` VALUES ('1728', '20', '3', '5', 'LALAQUIZ');
INSERT INTO `ubigeo` VALUES ('1729', '20', '3', '6', 'SAN MIGUEL DE EL FAIQUE');
INSERT INTO `ubigeo` VALUES ('1730', '20', '3', '7', 'SONDOR');
INSERT INTO `ubigeo` VALUES ('1731', '20', '3', '8', 'SONDORILLO');
INSERT INTO `ubigeo` VALUES ('1732', '20', '4', '0', 'MORROPON');
INSERT INTO `ubigeo` VALUES ('1733', '20', '4', '1', 'CHULUCANAS');
INSERT INTO `ubigeo` VALUES ('1734', '20', '4', '2', 'BUENOS AIRES');
INSERT INTO `ubigeo` VALUES ('1735', '20', '4', '3', 'CHALACO');
INSERT INTO `ubigeo` VALUES ('1736', '20', '4', '4', 'LA MATANZA');
INSERT INTO `ubigeo` VALUES ('1737', '20', '4', '5', 'MORROPON');
INSERT INTO `ubigeo` VALUES ('1738', '20', '4', '6', 'SALITRAL');
INSERT INTO `ubigeo` VALUES ('1739', '20', '4', '7', 'SAN JUAN DE BIGOTE');
INSERT INTO `ubigeo` VALUES ('1740', '20', '4', '8', 'SANTA CATALINA DE MOSSA');
INSERT INTO `ubigeo` VALUES ('1741', '20', '4', '9', 'SANTO DOMINGO');
INSERT INTO `ubigeo` VALUES ('1742', '20', '4', '10', 'YAMANGO');
INSERT INTO `ubigeo` VALUES ('1743', '20', '5', '0', 'PAITA');
INSERT INTO `ubigeo` VALUES ('1744', '20', '5', '1', 'PAITA');
INSERT INTO `ubigeo` VALUES ('1745', '20', '5', '2', 'AMOTAPE');
INSERT INTO `ubigeo` VALUES ('1746', '20', '5', '3', 'ARENAL');
INSERT INTO `ubigeo` VALUES ('1747', '20', '5', '4', 'COLAN');
INSERT INTO `ubigeo` VALUES ('1748', '20', '5', '5', 'LA HUACA');
INSERT INTO `ubigeo` VALUES ('1749', '20', '5', '6', 'TAMARINDO');
INSERT INTO `ubigeo` VALUES ('1750', '20', '5', '7', 'VICHAYAL');
INSERT INTO `ubigeo` VALUES ('1751', '20', '6', '0', 'SULLANA');
INSERT INTO `ubigeo` VALUES ('1752', '20', '6', '1', 'SULLANA');
INSERT INTO `ubigeo` VALUES ('1753', '20', '6', '2', 'BELLAVISTA');
INSERT INTO `ubigeo` VALUES ('1754', '20', '6', '3', 'IGNACIO ESCUDERO');
INSERT INTO `ubigeo` VALUES ('1755', '20', '6', '4', 'LANCONES');
INSERT INTO `ubigeo` VALUES ('1756', '20', '6', '5', 'MARCAVELICA');
INSERT INTO `ubigeo` VALUES ('1757', '20', '6', '6', 'MIGUEL CHECA');
INSERT INTO `ubigeo` VALUES ('1758', '20', '6', '7', 'QUERECOTILLO');
INSERT INTO `ubigeo` VALUES ('1759', '20', '6', '8', 'SALITRAL');
INSERT INTO `ubigeo` VALUES ('1760', '20', '7', '0', 'TALARA');
INSERT INTO `ubigeo` VALUES ('1761', '20', '7', '1', 'PARIÑAS');
INSERT INTO `ubigeo` VALUES ('1762', '20', '7', '2', 'EL ALTO');
INSERT INTO `ubigeo` VALUES ('1763', '20', '7', '3', 'LA BREA');
INSERT INTO `ubigeo` VALUES ('1764', '20', '7', '4', 'LOBITOS');
INSERT INTO `ubigeo` VALUES ('1765', '20', '7', '5', 'LOS ORGANOS');
INSERT INTO `ubigeo` VALUES ('1766', '20', '7', '6', 'MANCORA');
INSERT INTO `ubigeo` VALUES ('1767', '20', '8', '0', 'SECHURA');
INSERT INTO `ubigeo` VALUES ('1768', '20', '8', '1', 'SECHURA');
INSERT INTO `ubigeo` VALUES ('1769', '20', '8', '2', 'BELLAVISTA DE LA UNION');
INSERT INTO `ubigeo` VALUES ('1770', '20', '8', '3', 'BERNAL');
INSERT INTO `ubigeo` VALUES ('1771', '20', '8', '4', 'CRISTO NOS VALGA');
INSERT INTO `ubigeo` VALUES ('1772', '20', '8', '5', 'VICE');
INSERT INTO `ubigeo` VALUES ('1773', '20', '8', '6', 'RINCONADA LLICUAR');
INSERT INTO `ubigeo` VALUES ('1774', '21', '0', '0', 'PUNO');
INSERT INTO `ubigeo` VALUES ('1775', '21', '1', '0', 'PUNO');
INSERT INTO `ubigeo` VALUES ('1776', '21', '1', '1', 'PUNO');
INSERT INTO `ubigeo` VALUES ('1777', '21', '1', '2', 'ACORA');
INSERT INTO `ubigeo` VALUES ('1778', '21', '1', '3', 'AMANTANI');
INSERT INTO `ubigeo` VALUES ('1779', '21', '1', '4', 'ATUNCOLLA');
INSERT INTO `ubigeo` VALUES ('1780', '21', '1', '5', 'CAPACHICA');
INSERT INTO `ubigeo` VALUES ('1781', '21', '1', '6', 'CHUCUITO');
INSERT INTO `ubigeo` VALUES ('1782', '21', '1', '7', 'COATA');
INSERT INTO `ubigeo` VALUES ('1783', '21', '1', '8', 'HUATA');
INSERT INTO `ubigeo` VALUES ('1784', '21', '1', '9', 'MAÑAZO');
INSERT INTO `ubigeo` VALUES ('1785', '21', '1', '10', 'PAUCARCOLLA');
INSERT INTO `ubigeo` VALUES ('1786', '21', '1', '11', 'PICHACANI');
INSERT INTO `ubigeo` VALUES ('1787', '21', '1', '12', 'PLATERIA');
INSERT INTO `ubigeo` VALUES ('1788', '21', '1', '13', 'SAN ANTONIO');
INSERT INTO `ubigeo` VALUES ('1789', '21', '1', '14', 'TIQUILLACA');
INSERT INTO `ubigeo` VALUES ('1790', '21', '1', '15', 'VILQUE');
INSERT INTO `ubigeo` VALUES ('1791', '21', '2', '0', 'AZANGARO');
INSERT INTO `ubigeo` VALUES ('1792', '21', '2', '1', 'AZANGARO');
INSERT INTO `ubigeo` VALUES ('1793', '21', '2', '2', 'ACHAYA');
INSERT INTO `ubigeo` VALUES ('1794', '21', '2', '3', 'ARAPA');
INSERT INTO `ubigeo` VALUES ('1795', '21', '2', '4', 'ASILLO');
INSERT INTO `ubigeo` VALUES ('1796', '21', '2', '5', 'CAMINACA');
INSERT INTO `ubigeo` VALUES ('1797', '21', '2', '6', 'CHUPA');
INSERT INTO `ubigeo` VALUES ('1798', '21', '2', '7', 'JOSE DOMINGO CHOQUEHUANCA');
INSERT INTO `ubigeo` VALUES ('1799', '21', '2', '8', 'MUÑANI');
INSERT INTO `ubigeo` VALUES ('1800', '21', '2', '9', 'POTONI');
INSERT INTO `ubigeo` VALUES ('1801', '21', '2', '10', 'SAMAN');
INSERT INTO `ubigeo` VALUES ('1802', '21', '2', '11', 'SAN ANTON');
INSERT INTO `ubigeo` VALUES ('1803', '21', '2', '12', 'SAN JOSE');
INSERT INTO `ubigeo` VALUES ('1804', '21', '2', '13', 'SAN JUAN DE SALINAS');
INSERT INTO `ubigeo` VALUES ('1805', '21', '2', '14', 'SANTIAGO DE PUPUJA');
INSERT INTO `ubigeo` VALUES ('1806', '21', '2', '15', 'TIRAPATA');
INSERT INTO `ubigeo` VALUES ('1807', '21', '3', '0', 'CARABAYA');
INSERT INTO `ubigeo` VALUES ('1808', '21', '3', '1', 'MACUSANI');
INSERT INTO `ubigeo` VALUES ('1809', '21', '3', '2', 'AJOYANI');
INSERT INTO `ubigeo` VALUES ('1810', '21', '3', '3', 'AYAPATA');
INSERT INTO `ubigeo` VALUES ('1811', '21', '3', '4', 'COASA');
INSERT INTO `ubigeo` VALUES ('1812', '21', '3', '5', 'CORANI');
INSERT INTO `ubigeo` VALUES ('1813', '21', '3', '6', 'CRUCERO');
INSERT INTO `ubigeo` VALUES ('1814', '21', '3', '7', 'ITUATA');
INSERT INTO `ubigeo` VALUES ('1815', '21', '3', '8', 'OLLACHEA');
INSERT INTO `ubigeo` VALUES ('1816', '21', '3', '9', 'SAN GABAN');
INSERT INTO `ubigeo` VALUES ('1817', '21', '3', '10', 'USICAYOS');
INSERT INTO `ubigeo` VALUES ('1818', '21', '4', '0', 'CHUCUITO');
INSERT INTO `ubigeo` VALUES ('1819', '21', '4', '1', 'JULI');
INSERT INTO `ubigeo` VALUES ('1820', '21', '4', '2', 'DESAGUADERO');
INSERT INTO `ubigeo` VALUES ('1821', '21', '4', '3', 'HUACULLANI');
INSERT INTO `ubigeo` VALUES ('1822', '21', '4', '4', 'KELLUYO');
INSERT INTO `ubigeo` VALUES ('1823', '21', '4', '5', 'PISACOMA');
INSERT INTO `ubigeo` VALUES ('1824', '21', '4', '6', 'POMATA');
INSERT INTO `ubigeo` VALUES ('1825', '21', '4', '7', 'ZEPITA');
INSERT INTO `ubigeo` VALUES ('1826', '21', '5', '0', 'EL COLLAO');
INSERT INTO `ubigeo` VALUES ('1827', '21', '5', '1', 'ILAVE');
INSERT INTO `ubigeo` VALUES ('1828', '21', '5', '2', 'CAPAZO');
INSERT INTO `ubigeo` VALUES ('1829', '21', '5', '3', 'PILCUYO');
INSERT INTO `ubigeo` VALUES ('1830', '21', '5', '4', 'SANTA ROSA');
INSERT INTO `ubigeo` VALUES ('1831', '21', '5', '5', 'CONDURIRI');
INSERT INTO `ubigeo` VALUES ('1832', '21', '6', '0', 'HUANCANE');
INSERT INTO `ubigeo` VALUES ('1833', '21', '6', '1', 'HUANCANE');
INSERT INTO `ubigeo` VALUES ('1834', '21', '6', '2', 'COJATA');
INSERT INTO `ubigeo` VALUES ('1835', '21', '6', '3', 'HUATASANI');
INSERT INTO `ubigeo` VALUES ('1836', '21', '6', '4', 'INCHUPALLA');
INSERT INTO `ubigeo` VALUES ('1837', '21', '6', '5', 'PUSI');
INSERT INTO `ubigeo` VALUES ('1838', '21', '6', '6', 'ROSASPATA');
INSERT INTO `ubigeo` VALUES ('1839', '21', '6', '7', 'TARACO');
INSERT INTO `ubigeo` VALUES ('1840', '21', '6', '8', 'VILQUE CHICO');
INSERT INTO `ubigeo` VALUES ('1841', '21', '7', '0', 'LAMPA');
INSERT INTO `ubigeo` VALUES ('1842', '21', '7', '1', 'LAMPA');
INSERT INTO `ubigeo` VALUES ('1843', '21', '7', '2', 'CABANILLA');
INSERT INTO `ubigeo` VALUES ('1844', '21', '7', '3', 'CALAPUJA');
INSERT INTO `ubigeo` VALUES ('1845', '21', '7', '4', 'NICASIO');
INSERT INTO `ubigeo` VALUES ('1846', '21', '7', '5', 'OCUVIRI');
INSERT INTO `ubigeo` VALUES ('1847', '21', '7', '6', 'PALCA');
INSERT INTO `ubigeo` VALUES ('1848', '21', '7', '7', 'PARATIA');
INSERT INTO `ubigeo` VALUES ('1849', '21', '7', '8', 'PUCARA');
INSERT INTO `ubigeo` VALUES ('1850', '21', '7', '9', 'SANTA LUCIA');
INSERT INTO `ubigeo` VALUES ('1851', '21', '7', '10', 'VILAVILA');
INSERT INTO `ubigeo` VALUES ('1852', '21', '8', '0', 'MELGAR');
INSERT INTO `ubigeo` VALUES ('1853', '21', '8', '1', 'AYAVIRI');
INSERT INTO `ubigeo` VALUES ('1854', '21', '8', '2', 'ANTAUTA');
INSERT INTO `ubigeo` VALUES ('1855', '21', '8', '3', 'CUPI');
INSERT INTO `ubigeo` VALUES ('1856', '21', '8', '4', 'LLALLI');
INSERT INTO `ubigeo` VALUES ('1857', '21', '8', '5', 'MACARI');
INSERT INTO `ubigeo` VALUES ('1858', '21', '8', '6', 'NUÑOA');
INSERT INTO `ubigeo` VALUES ('1859', '21', '8', '7', 'ORURILLO');
INSERT INTO `ubigeo` VALUES ('1860', '21', '8', '8', 'SANTA ROSA');
INSERT INTO `ubigeo` VALUES ('1861', '21', '8', '9', 'UMACHIRI');
INSERT INTO `ubigeo` VALUES ('1862', '21', '9', '0', 'MOHO');
INSERT INTO `ubigeo` VALUES ('1863', '21', '9', '1', 'MOHO');
INSERT INTO `ubigeo` VALUES ('1864', '21', '9', '2', 'CONIMA');
INSERT INTO `ubigeo` VALUES ('1865', '21', '9', '3', 'HUAYRAPATA');
INSERT INTO `ubigeo` VALUES ('1866', '21', '9', '4', 'TILALI');
INSERT INTO `ubigeo` VALUES ('1867', '21', '10', '0', 'SAN ANTONIO DE PUTINA');
INSERT INTO `ubigeo` VALUES ('1868', '21', '10', '1', 'PUTINA');
INSERT INTO `ubigeo` VALUES ('1869', '21', '10', '2', 'ANANEA');
INSERT INTO `ubigeo` VALUES ('1870', '21', '10', '3', 'PEDRO VILCA APAZA');
INSERT INTO `ubigeo` VALUES ('1871', '21', '10', '4', 'QUILCAPUNCU');
INSERT INTO `ubigeo` VALUES ('1872', '21', '10', '5', 'SINA');
INSERT INTO `ubigeo` VALUES ('1873', '21', '11', '0', 'SAN ROMAN');
INSERT INTO `ubigeo` VALUES ('1874', '21', '11', '1', 'JULIACA');
INSERT INTO `ubigeo` VALUES ('1875', '21', '11', '2', 'CABANA');
INSERT INTO `ubigeo` VALUES ('1876', '21', '11', '3', 'CABANILLAS');
INSERT INTO `ubigeo` VALUES ('1877', '21', '11', '4', 'CARACOTO');
INSERT INTO `ubigeo` VALUES ('1878', '21', '12', '0', 'SANDIA');
INSERT INTO `ubigeo` VALUES ('1879', '21', '12', '1', 'SANDIA');
INSERT INTO `ubigeo` VALUES ('1880', '21', '12', '2', 'CUYOCUYO');
INSERT INTO `ubigeo` VALUES ('1881', '21', '12', '3', 'LIMBANI');
INSERT INTO `ubigeo` VALUES ('1882', '21', '12', '4', 'PATAMBUCO');
INSERT INTO `ubigeo` VALUES ('1883', '21', '12', '5', 'PHARA');
INSERT INTO `ubigeo` VALUES ('1884', '21', '12', '6', 'QUIACA');
INSERT INTO `ubigeo` VALUES ('1885', '21', '12', '7', 'SAN JUAN DEL ORO');
INSERT INTO `ubigeo` VALUES ('1886', '21', '12', '8', 'YANAHUAYA');
INSERT INTO `ubigeo` VALUES ('1887', '21', '12', '9', 'ALTO INAMBARI');
INSERT INTO `ubigeo` VALUES ('1888', '21', '12', '10', 'SAN PEDRO DE PUTINA PUNCO');
INSERT INTO `ubigeo` VALUES ('1889', '21', '13', '0', 'YUNGUYO');
INSERT INTO `ubigeo` VALUES ('1890', '21', '13', '1', 'YUNGUYO');
INSERT INTO `ubigeo` VALUES ('1891', '21', '13', '2', 'ANAPIA');
INSERT INTO `ubigeo` VALUES ('1892', '21', '13', '3', 'COPANI');
INSERT INTO `ubigeo` VALUES ('1893', '21', '13', '4', 'CUTURAPI');
INSERT INTO `ubigeo` VALUES ('1894', '21', '13', '5', 'OLLARAYA');
INSERT INTO `ubigeo` VALUES ('1895', '21', '13', '6', 'TINICACHI');
INSERT INTO `ubigeo` VALUES ('1896', '21', '13', '7', 'UNICACHI');
INSERT INTO `ubigeo` VALUES ('1897', '22', '0', '0', 'SAN MARTIN');
INSERT INTO `ubigeo` VALUES ('1898', '22', '1', '0', 'MOYOBAMBA');
INSERT INTO `ubigeo` VALUES ('1899', '22', '1', '1', 'MOYOBAMBA');
INSERT INTO `ubigeo` VALUES ('1900', '22', '1', '2', 'CALZADA');
INSERT INTO `ubigeo` VALUES ('1901', '22', '1', '3', 'HABANA');
INSERT INTO `ubigeo` VALUES ('1902', '22', '1', '4', 'JEPELACIO');
INSERT INTO `ubigeo` VALUES ('1903', '22', '1', '5', 'SORITOR');
INSERT INTO `ubigeo` VALUES ('1904', '22', '1', '6', 'YANTALO');
INSERT INTO `ubigeo` VALUES ('1905', '22', '2', '0', 'BELLAVISTA');
INSERT INTO `ubigeo` VALUES ('1906', '22', '2', '1', 'BELLAVISTA');
INSERT INTO `ubigeo` VALUES ('1907', '22', '2', '2', 'ALTO BIAVO');
INSERT INTO `ubigeo` VALUES ('1908', '22', '2', '3', 'BAJO BIAVO');
INSERT INTO `ubigeo` VALUES ('1909', '22', '2', '4', 'HUALLAGA');
INSERT INTO `ubigeo` VALUES ('1910', '22', '2', '5', 'SAN PABLO');
INSERT INTO `ubigeo` VALUES ('1911', '22', '2', '6', 'SAN RAFAEL');
INSERT INTO `ubigeo` VALUES ('1912', '22', '3', '0', 'EL DORADO');
INSERT INTO `ubigeo` VALUES ('1913', '22', '3', '1', 'SAN JOSE DE SISA');
INSERT INTO `ubigeo` VALUES ('1914', '22', '3', '2', 'AGUA BLANCA');
INSERT INTO `ubigeo` VALUES ('1915', '22', '3', '3', 'SAN MARTIN');
INSERT INTO `ubigeo` VALUES ('1916', '22', '3', '4', 'SANTA ROSA');
INSERT INTO `ubigeo` VALUES ('1917', '22', '3', '5', 'SHATOJA');
INSERT INTO `ubigeo` VALUES ('1918', '22', '4', '0', 'HUALLAGA');
INSERT INTO `ubigeo` VALUES ('1919', '22', '4', '1', 'SAPOSOA');
INSERT INTO `ubigeo` VALUES ('1920', '22', '4', '2', 'ALTO SAPOSOA');
INSERT INTO `ubigeo` VALUES ('1921', '22', '4', '3', 'EL ESLABON');
INSERT INTO `ubigeo` VALUES ('1922', '22', '4', '4', 'PISCOYACU');
INSERT INTO `ubigeo` VALUES ('1923', '22', '4', '5', 'SACANCHE');
INSERT INTO `ubigeo` VALUES ('1924', '22', '4', '6', 'TINGO DE SAPOSOA');
INSERT INTO `ubigeo` VALUES ('1925', '22', '5', '0', 'LAMAS');
INSERT INTO `ubigeo` VALUES ('1926', '22', '5', '1', 'LAMAS');
INSERT INTO `ubigeo` VALUES ('1927', '22', '5', '2', 'ALONSO DE ALVARADO');
INSERT INTO `ubigeo` VALUES ('1928', '22', '5', '3', 'BARRANQUITA');
INSERT INTO `ubigeo` VALUES ('1929', '22', '5', '4', 'CAYNARACHI');
INSERT INTO `ubigeo` VALUES ('1930', '22', '5', '5', 'CUÑUMBUQUI');
INSERT INTO `ubigeo` VALUES ('1931', '22', '5', '6', 'PINTO RECODO');
INSERT INTO `ubigeo` VALUES ('1932', '22', '5', '7', 'RUMISAPA');
INSERT INTO `ubigeo` VALUES ('1933', '22', '5', '8', 'SAN ROQUE DE CUMBAZA');
INSERT INTO `ubigeo` VALUES ('1934', '22', '5', '9', 'SHANAO');
INSERT INTO `ubigeo` VALUES ('1935', '22', '5', '10', 'TABALOSOS');
INSERT INTO `ubigeo` VALUES ('1936', '22', '5', '11', 'ZAPATERO');
INSERT INTO `ubigeo` VALUES ('1937', '22', '6', '0', 'MARISCAL CACERES');
INSERT INTO `ubigeo` VALUES ('1938', '22', '6', '1', 'JUANJUI');
INSERT INTO `ubigeo` VALUES ('1939', '22', '6', '2', 'CAMPANILLA');
INSERT INTO `ubigeo` VALUES ('1940', '22', '6', '3', 'HUICUNGO');
INSERT INTO `ubigeo` VALUES ('1941', '22', '6', '4', 'PACHIZA');
INSERT INTO `ubigeo` VALUES ('1942', '22', '6', '5', 'PAJARILLO');
INSERT INTO `ubigeo` VALUES ('1943', '22', '7', '0', 'PICOTA');
INSERT INTO `ubigeo` VALUES ('1944', '22', '7', '1', 'PICOTA');
INSERT INTO `ubigeo` VALUES ('1945', '22', '7', '2', 'BUENOS AIRES');
INSERT INTO `ubigeo` VALUES ('1946', '22', '7', '3', 'CASPISAPA');
INSERT INTO `ubigeo` VALUES ('1947', '22', '7', '4', 'PILLUANA');
INSERT INTO `ubigeo` VALUES ('1948', '22', '7', '5', 'PUCACACA');
INSERT INTO `ubigeo` VALUES ('1949', '22', '7', '6', 'SAN CRISTOBAL');
INSERT INTO `ubigeo` VALUES ('1950', '22', '7', '7', 'SAN HILARION');
INSERT INTO `ubigeo` VALUES ('1951', '22', '7', '8', 'SHAMBOYACU');
INSERT INTO `ubigeo` VALUES ('1952', '22', '7', '9', 'TINGO DE PONASA');
INSERT INTO `ubigeo` VALUES ('1953', '22', '7', '10', 'TRES UNIDOS');
INSERT INTO `ubigeo` VALUES ('1954', '22', '8', '0', 'RIOJA');
INSERT INTO `ubigeo` VALUES ('1955', '22', '8', '1', 'RIOJA');
INSERT INTO `ubigeo` VALUES ('1956', '22', '8', '2', 'AWAJUN');
INSERT INTO `ubigeo` VALUES ('1957', '22', '8', '3', 'ELIAS SOPLIN VARGAS');
INSERT INTO `ubigeo` VALUES ('1958', '22', '8', '4', 'NUEVA CAJAMARCA');
INSERT INTO `ubigeo` VALUES ('1959', '22', '8', '5', 'PARDO MIGUEL');
INSERT INTO `ubigeo` VALUES ('1960', '22', '8', '6', 'POSIC');
INSERT INTO `ubigeo` VALUES ('1961', '22', '8', '7', 'SAN FERNANDO');
INSERT INTO `ubigeo` VALUES ('1962', '22', '8', '8', 'YORONGOS');
INSERT INTO `ubigeo` VALUES ('1963', '22', '8', '9', 'YURACYACU');
INSERT INTO `ubigeo` VALUES ('1964', '22', '9', '0', 'SAN MARTIN');
INSERT INTO `ubigeo` VALUES ('1965', '22', '9', '1', 'TARAPOTO');
INSERT INTO `ubigeo` VALUES ('1966', '22', '9', '2', 'ALBERTO LEVEAU');
INSERT INTO `ubigeo` VALUES ('1967', '22', '9', '3', 'CACATACHI');
INSERT INTO `ubigeo` VALUES ('1968', '22', '9', '4', 'CHAZUTA');
INSERT INTO `ubigeo` VALUES ('1969', '22', '9', '5', 'CHIPURANA');
INSERT INTO `ubigeo` VALUES ('1970', '22', '9', '6', 'EL PORVENIR');
INSERT INTO `ubigeo` VALUES ('1971', '22', '9', '7', 'HUIMBAYOC');
INSERT INTO `ubigeo` VALUES ('1972', '22', '9', '8', 'JUAN GUERRA');
INSERT INTO `ubigeo` VALUES ('1973', '22', '9', '9', 'LA BANDA DE SHILCAYO');
INSERT INTO `ubigeo` VALUES ('1974', '22', '9', '10', 'MORALES');
INSERT INTO `ubigeo` VALUES ('1975', '22', '9', '11', 'PAPAPLAYA');
INSERT INTO `ubigeo` VALUES ('1976', '22', '9', '12', 'SAN ANTONIO');
INSERT INTO `ubigeo` VALUES ('1977', '22', '9', '13', 'SAUCE');
INSERT INTO `ubigeo` VALUES ('1978', '22', '9', '14', 'SHAPAJA');
INSERT INTO `ubigeo` VALUES ('1979', '22', '10', '0', 'TOCACHE');
INSERT INTO `ubigeo` VALUES ('1980', '22', '10', '1', 'TOCACHE');
INSERT INTO `ubigeo` VALUES ('1981', '22', '10', '2', 'NUEVO PROGRESO');
INSERT INTO `ubigeo` VALUES ('1982', '22', '10', '3', 'POLVORA');
INSERT INTO `ubigeo` VALUES ('1983', '22', '10', '4', 'SHUNTE');
INSERT INTO `ubigeo` VALUES ('1984', '22', '10', '5', 'UCHIZA');
INSERT INTO `ubigeo` VALUES ('1985', '23', '0', '0', 'TACNA');
INSERT INTO `ubigeo` VALUES ('1986', '23', '1', '0', 'TACNA');
INSERT INTO `ubigeo` VALUES ('1987', '23', '1', '1', 'TACNA');
INSERT INTO `ubigeo` VALUES ('1988', '23', '1', '2', 'ALTO DE LA ALIANZA');
INSERT INTO `ubigeo` VALUES ('1989', '23', '1', '3', 'CALANA');
INSERT INTO `ubigeo` VALUES ('1990', '23', '1', '4', 'CIUDAD NUEVA');
INSERT INTO `ubigeo` VALUES ('1991', '23', '1', '5', 'INCLAN');
INSERT INTO `ubigeo` VALUES ('1992', '23', '1', '6', 'PACHIA');
INSERT INTO `ubigeo` VALUES ('1993', '23', '1', '7', 'PALCA');
INSERT INTO `ubigeo` VALUES ('1994', '23', '1', '8', 'POCOLLAY');
INSERT INTO `ubigeo` VALUES ('1995', '23', '1', '9', 'SAMA');
INSERT INTO `ubigeo` VALUES ('1996', '23', '1', '10', 'CORONEL GREGORIO ALBARRACIN LANCHIPA');
INSERT INTO `ubigeo` VALUES ('1997', '23', '2', '0', 'CANDARAVE');
INSERT INTO `ubigeo` VALUES ('1998', '23', '2', '1', 'CANDARAVE');
INSERT INTO `ubigeo` VALUES ('1999', '23', '2', '2', 'CAIRANI');
INSERT INTO `ubigeo` VALUES ('2000', '23', '2', '3', 'CAMILACA');
INSERT INTO `ubigeo` VALUES ('2001', '23', '2', '4', 'CURIBAYA');
INSERT INTO `ubigeo` VALUES ('2002', '23', '2', '5', 'HUANUARA');
INSERT INTO `ubigeo` VALUES ('2003', '23', '2', '6', 'QUILAHUANI');
INSERT INTO `ubigeo` VALUES ('2004', '23', '3', '0', 'JORGE BASADRE');
INSERT INTO `ubigeo` VALUES ('2005', '23', '3', '1', 'LOCUMBA');
INSERT INTO `ubigeo` VALUES ('2006', '23', '3', '2', 'ILABAYA');
INSERT INTO `ubigeo` VALUES ('2007', '23', '3', '3', 'ITE');
INSERT INTO `ubigeo` VALUES ('2008', '23', '4', '0', 'TARATA');
INSERT INTO `ubigeo` VALUES ('2009', '23', '4', '1', 'TARATA');
INSERT INTO `ubigeo` VALUES ('2010', '23', '4', '2', 'HEROES ALBARRACIN');
INSERT INTO `ubigeo` VALUES ('2011', '23', '4', '3', 'ESTIQUE');
INSERT INTO `ubigeo` VALUES ('2012', '23', '4', '4', 'ESTIQUE-PAMPA');
INSERT INTO `ubigeo` VALUES ('2013', '23', '4', '5', 'SITAJARA');
INSERT INTO `ubigeo` VALUES ('2014', '23', '4', '6', 'SUSAPAYA');
INSERT INTO `ubigeo` VALUES ('2015', '23', '4', '7', 'TARUCACHI');
INSERT INTO `ubigeo` VALUES ('2016', '23', '4', '8', 'TICACO');
INSERT INTO `ubigeo` VALUES ('2017', '24', '0', '0', 'TUMBES');
INSERT INTO `ubigeo` VALUES ('2018', '24', '1', '0', 'TUMBES');
INSERT INTO `ubigeo` VALUES ('2019', '24', '1', '1', 'TUMBES');
INSERT INTO `ubigeo` VALUES ('2020', '24', '1', '2', 'CORRALES');
INSERT INTO `ubigeo` VALUES ('2021', '24', '1', '3', 'LA CRUZ');
INSERT INTO `ubigeo` VALUES ('2022', '24', '1', '4', 'PAMPAS DE HOSPITAL');
INSERT INTO `ubigeo` VALUES ('2023', '24', '1', '5', 'SAN JACINTO');
INSERT INTO `ubigeo` VALUES ('2024', '24', '1', '6', 'SAN JUAN DE LA VIRGEN');
INSERT INTO `ubigeo` VALUES ('2025', '24', '2', '0', 'CONTRALMIRANTE VILLAR');
INSERT INTO `ubigeo` VALUES ('2026', '24', '2', '1', 'ZORRITOS');
INSERT INTO `ubigeo` VALUES ('2027', '24', '2', '2', 'CASITAS');
INSERT INTO `ubigeo` VALUES ('2028', '24', '2', '3', 'CANOAS DE PUNTA SAL');
INSERT INTO `ubigeo` VALUES ('2029', '24', '3', '0', 'ZARUMILLA');
INSERT INTO `ubigeo` VALUES ('2030', '24', '3', '1', 'ZARUMILLA');
INSERT INTO `ubigeo` VALUES ('2031', '24', '3', '2', 'AGUAS VERDES');
INSERT INTO `ubigeo` VALUES ('2032', '24', '3', '3', 'MATAPALO');
INSERT INTO `ubigeo` VALUES ('2033', '24', '3', '4', 'PAPAYAL');
INSERT INTO `ubigeo` VALUES ('2034', '25', '0', '0', 'UCAYALI');
INSERT INTO `ubigeo` VALUES ('2035', '25', '1', '0', 'CORONEL PORTILLO');
INSERT INTO `ubigeo` VALUES ('2036', '25', '1', '1', 'CALLERIA');
INSERT INTO `ubigeo` VALUES ('2037', '25', '1', '2', 'CAMPOVERDE');
INSERT INTO `ubigeo` VALUES ('2038', '25', '1', '3', 'IPARIA');
INSERT INTO `ubigeo` VALUES ('2039', '25', '1', '4', 'MASISEA');
INSERT INTO `ubigeo` VALUES ('2040', '25', '1', '5', 'YARINACOCHA');
INSERT INTO `ubigeo` VALUES ('2041', '25', '1', '6', 'NUEVA REQUENA');
INSERT INTO `ubigeo` VALUES ('2042', '25', '2', '0', 'ATALAYA');
INSERT INTO `ubigeo` VALUES ('2043', '25', '2', '1', 'RAYMONDI');
INSERT INTO `ubigeo` VALUES ('2044', '25', '2', '2', 'SEPAHUA');
INSERT INTO `ubigeo` VALUES ('2045', '25', '2', '3', 'TAHUANIA');
INSERT INTO `ubigeo` VALUES ('2046', '25', '2', '4', 'YURUA');
INSERT INTO `ubigeo` VALUES ('2047', '25', '3', '0', 'PADRE ABAD');
INSERT INTO `ubigeo` VALUES ('2048', '25', '3', '1', 'PADRE ABAD');
INSERT INTO `ubigeo` VALUES ('2049', '25', '3', '2', 'IRAZOLA');
INSERT INTO `ubigeo` VALUES ('2050', '25', '3', '3', 'CURIMANA');
INSERT INTO `ubigeo` VALUES ('2051', '25', '4', '0', 'PURUS');
INSERT INTO `ubigeo` VALUES ('2052', '25', '4', '1', 'PURUS');

-- ----------------------------
-- Table structure for usuarios
-- ----------------------------
DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dni` char(8) DEFAULT NULL,
  `nombres` char(100) DEFAULT NULL,
  `apellidos` char(100) DEFAULT NULL,
  `usuario` char(100) DEFAULT NULL,
  `password` char(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of usuarios
-- ----------------------------
INSERT INTO `usuarios` VALUES ('1', '74023929', 'denys', 'guerrero', 'admin', '123');
INSERT INTO `usuarios` VALUES ('2', '12345678', 'joel', 'guerrero guerra', 'admin2', '1234');

-- ----------------------------
-- Table structure for ventaja
-- ----------------------------
DROP TABLE IF EXISTS `ventaja`;
CREATE TABLE `ventaja` (
  `id_ventaja` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_ventaja` varchar(255) DEFAULT NULL,
  `descripcion` text,
  `img` varchar(255) DEFAULT NULL,
  `estado` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id_ventaja`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ventaja
-- ----------------------------
INSERT INTO `ventaja` VALUES ('1', 'Campo de acción a nivel nacional', 'Cobertura necesaria para elaborar trabajos de consultoría a nivel nacional, rápidamente y con eficiencia.', '', '0');
INSERT INTO `ventaja` VALUES ('2', 'Conocimiento de la realidad local', 'Teniendo los especialistas podemos identificar rápidamente los temas específicos de las organizaciones y concentrarnos en ellos antes que se transformen en problemas. Esto también significa que podemos trabajar de forma complementaria con las normas locales, procedimientos y temas culturales.', '', '0');
INSERT INTO `ventaja` VALUES ('3', 'Firma multidisciplinaria', 'La naturaleza multidisciplinaria de XOCIUM, nos permite recurrir a los especialistas idóneos de acuerdo a la necesidad del servicio, facilitándonos un rápido despliegue para llegar a resultados eficientes.', null, '0');
INSERT INTO `ventaja` VALUES ('4', 'Registro de éxito', 'Tenemos un largo historial positivo en la asesoría de los trabajos de finanzas, planes estratégicos y financieros, formación de facilitadores y elaboración de proyectos. Estamos constantemente desarrollando nuevos servicios y herramientas.', null, '0');
INSERT INTO `ventaja` VALUES ('5', 'Herramientas desarrolladas', 'Nuestro equipo ha desarrollado herramientas innovadoras que le permite facilitar sus intervenciones en el área estratégica, financiera y contable .', null, '0');
INSERT INTO `ventaja` VALUES ('6', 'Capacidad de generar estrategias a la medida del cliente', 'Contamos con un equipo capaz de analizar el fondo de la necesidad del cliente y ofrecerle propuestas de solución concretas, añadimos a las estrategias su respectivo análisis financiero. No nos limitamos sólo a proponer estrategias, sino que debemos probar si genera valor para la organización, sólo así habrá garantía de ejecución y éxito.', null, '0');

-- ----------------------------
-- Table structure for vision
-- ----------------------------
DROP TABLE IF EXISTS `vision`;
CREATE TABLE `vision` (
  `id_vision` int(11) NOT NULL AUTO_INCREMENT,
  `vision` text,
  `estado` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_vision`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of vision
-- ----------------------------
INSERT INTO `vision` VALUES ('1', 'Contribuir al desarrollo económico y social de las familias rurales del Perú, mediante la formulación y aplicación de instrumentos de gestión; la asesoría a las organizaciones y organismos de desarrollo, y la articulación competitiva con el mercado y el sistema financiero.', '0');
