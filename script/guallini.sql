-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 07, 2017 at 12:20 AM
-- Server version: 5.7.17-0ubuntu0.16.04.1
-- PHP Version: 7.0.15-0ubuntu0.16.04.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gk12_guallini`
--

-- --------------------------------------------------------

--
-- Table structure for table `aire_acondicionado`
--

CREATE TABLE `aire_acondicionado` (
  `id_aireacondicionado` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aire_acondicionado`
--

INSERT INTO `aire_acondicionado` (`id_aireacondicionado`, `nombre`) VALUES
(1, '1 split.'),
(2, 'Split.');

-- --------------------------------------------------------

--
-- Table structure for table `artefacto_cocina`
--

CREATE TABLE `artefacto_cocina` (
  `id_artefacto_cocina` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `barrio`
--

CREATE TABLE `barrio` (
  `id_barrio` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barrio`
--

INSERT INTO `barrio` (`id_barrio`, `nombre`) VALUES
(5, 'Punta Chica'),
(6, 'Martinez'),
(7, 'Las Cañitas'),
(8, 'Los Sauces'),
(9, 'Mart.-Vias/Sta Fe'),
(14, 'Acc Tigre a Reconquista, San Fernando'),
(13, 'Acc Tigre a Acc Norte, Victoria'),
(15, 'Acc Tigre A Reconquista, Virreyes'),
(16, 'Aviación, Don Torcuato'),
(17, 'B° Altavista, Maschwitz'),
(18, 'B° Baires, Don Torcuato'),
(19, 'B° Carreras, San Isidro'),
(20, 'B° Gutierrez, Don Torcuato'),
(21, 'B° Lambaré, Maschwitz'),
(22, 'B° Los Molinos, Don Torcuato'),
(23, 'B° Parque Aguirre, Acassuso'),
(24, 'B° Malvinas, Lomas de San Isidro'),
(25, 'B° San Felipe, Don Torcuato'),
(26, 'B° San Luis, Maschwitz'),
(27, 'Carapachay, Carapachay'),
(28, 'Ciudad, Benavidez'),
(29, 'Ciudad, Tigre'),
(30, 'Delta, San Fernando'),
(31, 'Delta, Tigre'),
(32, 'El Cazador, Escobar'),
(33, 'El Triángulo, Maschwitz'),
(34, 'Elcano al Río, Acassuso'),
(35, 'Estación Don Torcuato, Don Torcuato'),
(36, 'Fleming a Panamericana, Accasuso'),
(37, 'Fleming a Panamerica, Martinez'),
(38, 'Golf, Lomas de San Isidro'),
(39, 'La Bota, Maschwitz'),
(40, 'Las Glorias, Maschwitz'),
(41, 'Lasalle al río, San Isidro'),
(42, 'Libertador a Lasalle, San Isidro'),
(43, 'Libertador a Solis, Acassuso'),
(44, 'Libertador al Río, Beccar'),
(45, 'Libertador al Río, La Lucila'),
(46, 'Libertador al Río, Martínez'),
(47, 'Libertador al Río, San Fernando'),
(48, 'Loma Verde, Escobar'),
(49, 'Los Naranjos, Maschwitz'),
(50, 'Los Ñanduces, Maschwitz'),
(51, 'Maipú a Panamericana, Olivos'),
(52, 'Maipú a Uzal, La Lucila'),
(53, 'Perón a Vías, Victoria'),
(54, 'Punta Chica Bajo, Victoria'),
(55, 'Punta Chica Alto, Victoria'),
(56, 'Rolón a Acc Tigre, Beccar'),
(57, 'Santa Fe a Fleming, Acassuso'),
(58, 'Santa Fe a Fleming, Martínez'),
(59, 'Santa Rita, Lomas de San Isidro'),
(60, 'Schoenstatt, Lomas de San Isidro'),
(61, 'Tortugas Norte, Escobar'),
(62, 'Tortugas Norte, Garín'),
(63, 'Triángulo, Don Torcuato'),
(64, 'Uzal a Panamericana, La Lucila'),
(65, 'Vías a Acc Tigre, San Fernando'),
(66, 'Vías a Acc Tigre, Victoria'),
(67, 'Vías a Acc Tigre, Virreyes'),
(68, 'Vías a Libertador, Acassuso'),
(69, 'Vías a Libertador, Beccar'),
(70, 'Vías a Libertador, Martínez'),
(71, 'Vías a Libertador, La Lucila'),
(72, 'Vías a Libertador, San Fernando'),
(73, 'Vías a Libertador, San Isidro'),
(74, 'Vías a Maipú, La Lucila'),
(75, 'Vías a Maipú, Olivos'),
(76, 'Vías a Maipú, Vicente López'),
(77, 'Vías a Rolón, Beccar'),
(78, 'Vías a Rolón, San Isidro'),
(79, 'Vías a Santa Fe, Acassuso'),
(80, 'Vías a Santa Fe, Martínez'),
(81, 'Vías al Río, Olivos'),
(82, 'Vías al Río, Vicente López'),
(83, 'Vías G.B a 1ra Junta, Carapachay'),
(84, 'Vías G.B a Alcorta, Boulogne'),
(85, 'Vías G.B a Panamericana, Boulogne'),
(86, 'Vías G.B a Panamericana, Carapachay'),
(87, 'Vías G.B a Panamericana, Villa Adelina'),
(88, 'Villa Nueva, Benavidez'),
(89, 'Zona Chaltel, Don Torcuato'),
(90, 'B° Santa María, Tigre'),
(91, 'La Horqueta, San Isidro'),
(92, 'Vías a Sobremonte'),
(93, 'Perón a Vías'),
(94, '3  de Febrero a Sobremonte'),
(95, 'Santa Fe a Libertador, Acassuso'),
(96, 'Pte Perón a Vías, San Fernando'),
(97, 'B° Aranzazú, Escobar'),
(98, 'Av. Ingeniero Madero a Ramal Pilar'),
(99, 'Tres de Febrero a Vías, San Fernando.'),
(100, 'Vías a Acc. Norte, Virreyes'),
(101, 'Sobremonte a Acc. Tigre, Virreyes'),
(102, 'Rincón de Milberg, Tigre'),
(103, 'B° Los Sauces, Nordelta'),
(104, 'B° Los Sauces'),
(157, 'Victoria'),
(106, 'Av. Maipú a Acc. Norte'),
(107, 'Panamericana a Fleming'),
(108, 'Country Miraflores'),
(109, 'Vias al Rio'),
(110, 'Isla del Sol'),
(111, 'Miraflores'),
(112, 'Santa Maria de Los Olivos'),
(113, 'Bº Los Fresnos, Pilar'),
(115, 'Bº Santa Maria de Los Olivos'),
(116, 'Bº Miraflores'),
(117, 'Country Pueyrredon'),
(118, 'Country Miraflores'),
(119, 'El Portillo'),
(120, 'Highland Park'),
(121, 'Acc Tigre al Rio'),
(122, 'Vias a Peron, Victoria'),
(123, 'La Damasia'),
(124, 'Villa Ballester'),
(125, 'Acceso a Camino de Buen Ayre'),
(126, 'Independencia a Artigas'),
(127, 'Villa Crespo'),
(128, 'Las Tres Horquetas'),
(129, 'Acc. Tigre a Bancalari'),
(130, 'Las Tres Horquetas'),
(131, 'El atardecer'),
(132, 'Barrio Cerrado El Atardecer'),
(133, 'Barrio Cerrado El Atardecer'),
(134, 'Vias al rio'),
(136, 'Cerca Acc. Tigre'),
(137, 'Balvanera Once'),
(138, 'Balvanera Once'),
(139, 'Av.Rivadavia3029'),
(141, 'Vias a Libertador'),
(144, 'Vias a acceso Tigre'),
(147, 'Mil Viviendas'),
(148, 'Vias a Av.Perón,San Fernando'),
(149, 'Sobre Av.Centenario'),
(150, 'cerca Estación Virreyes'),
(151, 'Estación Virreyes a Sobremonte'),
(152, 'Santa Rita'),
(154, 'Vias a Av.Centenario'),
(155, 'Vías a Av.Centenario'),
(156, 'Vias a acceso Norte'),
(158, 'Nordelta'),
(159, 'B° Los Tilos Nordelta'),
(160, 'Vías a Rolón'),
(162, 'Vìas a Av.Centenario'),
(163, 'Tigre'),
(164, 'Infico'),
(166, 'San Fernando'),
(171, 'La Calabria'),
(174, 'Vías a Acc Tigre'),
(187, 'Barrio Fate');

-- --------------------------------------------------------

--
-- Table structure for table `ciudad`
--

CREATE TABLE `ciudad` (
  `id_ciudad` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ciudad`
--

INSERT INTO `ciudad` (`id_ciudad`, `nombre`) VALUES
(6, 'Ciudad Autónoma de Buenos Aires.'),
(7, 'Buenos Aires'),
(8, 'Entre Ríos'),
(9, 'San Fernando'),
(10, 'Don Torcuato'),
(11, 'San Isidro'),
(12, 'Canal'),
(13, 'Tigre');

-- --------------------------------------------------------

--
-- Table structure for table `cochera`
--

CREATE TABLE `cochera` (
  `id_cocheras` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cochera`
--

INSERT INTO `cochera` (`id_cocheras`, `nombre`) VALUES
(1, 'Cubierta 1 auto.'),
(2, 'Cubierta 1 camioneta.'),
(3, 'Descubierta.'),
(4, '2 cocheras'),
(5, 'Opcional');

-- --------------------------------------------------------

--
-- Table structure for table `estado`
--

CREATE TABLE `estado` (
  `id_estado` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `estado`
--

INSERT INTO `estado` (`id_estado`, `nombre`) VALUES
(1, 'Excelente'),
(2, 'Muy Bueno'),
(3, 'Bueno'),
(4, 'Regular '),
(6, 'A refaccionar');

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `id_pregunta` int(11) NOT NULL,
  `pregunta` text,
  `respuesta` text,
  `publicar` int(2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`id_pregunta`, `pregunta`, `respuesta`, `publicar`) VALUES
(20, '¿Qué tiempo normalmente se conviene entre la firma del Boleto de Compra Venta y la Escritura?', 'El plazo lo estipulan entre las partes de acuerdo a sus necesidades. Normalmente  no menos de 30 días corridos.', 0),
(21, '¿Quién designa al escribano que realizará la operatoria?', 'Normalmente el escribano selecciona el comprador en el Boleto de Compra Venta. Hay excepciones, si la compra es con financiación, en esos casos al escribano suele ser el designado acreedor hipotecario. Pasa lo mismo cuando se trata de una "primera Escritura", es decir un edificio "a estrenar" o un nuevo loteo.', 1),
(10, 'COMPRA-VENTA\r\n\r\n¿Que documentación se suscribe hasta la Escritura?', 'Generalmente son tres los documentos: Reserva,  Boleto - Venta y Escritura traslativa  de dominio.', 1),
(11, '¿Qué es la Reserva de Compra?', 'Este  documento simplemente es una "oferta" que el oferente realiza por la propiedad en cuestión depositando una suma de dinero, y  que en tanto no sea aceptada  por la vendedora, la operación no estará cerrada.', 1),
(12, '¿Para que sirve la reserva?', 'Abre una instancia de negociación seria entre las partes, en algunos casos se puede realizar una seña una vez conformada la oferta, incluyendo un pacto comisorio en la misma, Independientemente de eso una vez que la propiedad es reservada, el inmueble  es retirado de la venta y se comienzan los trámites  preparatorios para la suscripción del Boleto de Compra Venta o de la Escritura directa (siempre posterior a la aceptación).', 1),
(13, '¿Qué pasa si el oferente/comprador se arrepiente luego de realizada la reserva?', 'El comprador pierde el dinero entregado de reserva. Por ello, antes de realizar una oferta por una propiedad, es importante estar muy convencido de querer realizar la compra.', 1),
(14, '¿Qué debe figurar principalmente en la reserva?', 'El precio que el oferente/comprador desea pagar  por el inmueble, el plazo para la realización del Boleto de Compra Venta o de la Escritura, quien va a ser el escribano interviniente, como serán soportados los gastos de escritura, y cuanto le va a cobrar de honorarios la inmobiliaria.', 1),
(15, 'Ya aprobada la oferta por el propietario y comunicado ello al Comprador. ¿Cómo siguen los trámites?', 'Normalmente con la firma del Boleto de Compra Venta, dentro del plazo de los días que figuran en la misma reserva.', 1),
(16, '¿Qué porcentaje del valor de la propiedad se paga normalmente en el Boleto de Compra Venta?', 'la parte compradora paga a cuenta de precio el 30% del total de la compraventa. No obstante, este porcentaje puede ser distinto, de común acuerdo entre las partes.', 1),
(17, '¿Qué es un informe de dominio?', 'Es un certificado emitido por el Registro de la Propiedad Inmueble. Es la copia de la "ficha" de la propiedad de la que surge su domicilio y m2, quién es el dueño hoy y si tiene algún gravamen (hipoteca, embargo, usufructo, bien de familia).', 1),
(18, '¿Qué es un informe de Inhibiciones?', 'También es un certificado emitido por el Registro de la Propiedad Inmueble el cual dice si el vendedor no está "inhibida" para vender.', 1),
(19, '¿Y si el actual propietario según informe de dominio ha fallecido?', 'El principio general dice que puede vender solamente quien figure como propietario en el Registro de la Propiedad Inmueble, aunque existen algunas excepciones, ésta es una de ellas. Obviamente, con determinados requisitos. Tienen que tener tramitada la sucesión, teniendo los herederos, quienes deberán firmar el Boleto y la correspondiente escritura. También es necesario que el juez ya haya ordenado que ese bien se "inscriba" a nombre de los herederos, o en su defecto que haya autorizado su venta. De todo ello el escribano deberá dejar constancia en la escritura para que el Registro proceda a inscribírsela. A este tipo de escrituras se las llama "Ventas por tracto Abreviado", porque en el Registro se pasa de la persona fallecida al nuevo comprador, sin inscribirse el inmueble a nombre de los herederos.', 1),
(23, '¿Si el comprador/oferente toma un crédito bancario puede designar escribano que intervendrá en la compra?', 'Si. El Banco no puede obligar a tomar un determinado escribano para la escritura de compraventa. Existe una Ley Nacional, sancionada el 04/1999 que así lo establece. Es relativamente habitual tener un escribano para la compra y otro para la hipoteca. Tampoco debe prestase atención a la excusa de que de esa manera resulta más económico, puesto que no hay duplicación de tareas, dado que el notario que hace la hipoteca usa copia de la documentación y certificados solicitados por el notario que realiza la compra.', 1),
(24, '¿Se puede usar un escribano de una jurisdicción distinta a la de la ubicación del bien?', 'Si, seguro. Su escribano es "Escribano Público Nacional" y puede hacer operaciones en todo el país. Hay provincias que para algunos trámites (inscripción del nuevo título) tendrá que utilizar los servicios de otro profesional.', 1),
(25, '¿Que es lo que hace del escribano en la escritura de compraventa?', 'Asiste y asesoran a las partes. Al transcribir la escritura el escribano, normalmente verifica los antecedentes con un estudio de títulos, protegiendo al comprador de que sean auténticos los antecedentes y no tengan vicios. Una vez firmada la escritura se ocupa de inscribir el testimonio en el Registro de la Propiedad Inmueble.', 1),
(26, '¿Cómo se distribuye el pago de los gastos y honorarios?', 'Los honorarios los paga normalmente la parte compradora. En cuanto a gastos, los usos y costumbres dicen que todos los gastos que correspondan a la tramitación anterior a la escritura los paga la parte vendedora, y los posteriores a la firma la parte compradora (Inscripción título).', 1),
(28, '¿Y los impuestos que se deben?', 'Antes de la escritura el escribano solicitará los libre deuda de "Impuestos" que se pudieran deber (rentas provinciales, municipales, etc.). En caso que hubiera deuda, deberá retener el importe al momento de la firma. Los "Servicios" (Luz, Gas, Teléfono), En muchos casos se hace una retención, sobre la base de últimos consumos. Si se trata de un ph, también necesitará libre deuda de expensas comunes.', 1),
(29, '¿Cuándo es la posesión del bien?', 'Habitualmente el día de la escritura, se entregan las llaves y  posesión del bien.', 1),
(30, 'ALQUILER\r\n¿Cómo se llaman a las partes en el contrato de locación?', 'a) Al que paga el precio se lo llama inquilino, locatario, o arrendatario.\r\n\r\n\r\nb) Al que cobra el pago y da en la propiedad en alquiler se lo llama arrendador o locador.', 1),
(31, '¿Se puede pagar en cualquier moneda?', 'No. En moneda de curso legal, por ley de Convertibilidad puede ser en dólares o en pesos.', 1),
(32, '¿Cuáles son los plazos mínimos y máximos?', 'La ley diferencia según para qué destino sean las locaciones: si es para vivienda, el  mínimo será de 2 años; para otros destinos (industria, comercio, ejercicio de profesiones, etc.) este será de 3 años. Cuando los contratos de alquiler sean por términos menores serán considerados formulados por los plazos legales.\r\nQuedan exceptuados:\r\na) las contrataciones para organismos internacionales, sedes de embajadas, y consulados, también las destinadas a su personal.\r\nb) viviendas amuebladas para turistas en zonas para ese destino, que tendrán un plazo máximo de seis meses\r\nc) espacios o lugares para la guarda de vehículos, animales, u otros objetos, y los que formen parte de una propiedad destinada a vivienda que hubieren sido locados, por separado, a dichos efectos\r\nd) ferias o puestos de mercados  no necesitan acogerse al plazo mínimo legal\r\ne) las locaciones en que el Estado Provincial o Nacional, municipios o entes autárquicos sean parte como inquilinos.\r\nEn cuanto al máximo, la ley dice que el contrato no puede ser por mayor tiempo que 10 años. El que se hiciere por más tiempo  concluirá automáticamente a los 10 años.', 1),
(33, '¿Y qué pasa si, pasado el período del contrato, se continúa con la locación?', 'No se juzgará que hay tácita reconducción (renovación automática del contrato), sino la continuación de la locación concluida, y en sus mismos términos, hasta que el arrendador pida la devolución; y podrá solicitarla en cualquier tiempo, sea cual fuere el que el locatario hubiese continuado en el uso y goce de la propiedad.', 1),
(34, '¿Los pagos deben convenirse siempre por  mes?', 'Sí, es lo que dice la ley, limitando en este caso el principio de libertad de contratación, establece como regla para todos los contratos.', 1),
(35, '¿Qué diferencia hay entre el depósito en garantía y la fianza?', 'La fianza es un contrato, que rige cuando el fiador o garante se obliga accesoriamente por una tercera persona (el locatario), y la acreedora de esa tercera (la locadora) acepta su obligación accesoria. La fiadora es una persona que asume, frente a la locadora, todas las responsabilidades del locatario.\r\nEl depósito en garantía es la entrega de una suma afectada a cubrir el cumplimiento de las obligaciones  del contrato de locación. La fianza también, pero es personal.', 1),
(36, '¿Se puede convenir el cobro del valor llave?', 'Por esencia corresponde al comercio, industria, etc., nunca ha sido prohibida, si en vivienda.', 1),
(37, '¿El locatario puede dar por terminado el alquiler antes de la finalización?', 'El locatario podrá, pasados los primeros 6 meses de vigencia del contrato, terminar la contratación, deberá notificar fehacientemente su decisión con una antelación mínima de 60 días de la fecha en que reintegrará la propiedad.\r\nSi toma esta opción en el transcurso del 1er año, deberá abonar al locador un 1 y 1/2 de alquiler, y la 1 solo mes si la opción se toma transcurrido dicho plazo.', 1),
(38, '¿Qué sucede en caso de muerte del locatario?', 'En caso de muerte del locatario (o de abandono), la locación podrá ser continuada en las condiciones pactadas, y hasta la finalización del contrato, por sus herederos o quienes acrediten haber convivido.', 1),
(39, '¿Cómo se puede saber que una garantía es comprada?', 'Para determinar si una garantía es "comprada" hay que pedir al Registro un Formulario Nº 5, de esta forma sabremos la cantidad de informes de dominio que se han pedido sobre la propiedad del garante en los últimos 90 días. Si hay varios pedidos, se puede presumir que la garantía puede ser comprada.\r\nTambién, el informe de dominio dice si una propiedad esta embargada o hipotecada o si está como bien de familia. .\r\nEl Informe puede pedirse de 3 formas: simple (tarda 4 días aprox) o urgente (1 días aprox) .', 1);

-- --------------------------------------------------------

--
-- Table structure for table `imagenes`
--

CREATE TABLE `imagenes` (
  `id_imagen` int(11) NOT NULL,
  `id_propiedad` int(11) DEFAULT NULL,
  `id_tipo_imagen` int(11) DEFAULT NULL,
  `titulo` varchar(50) DEFAULT NULL,
  `nombre` varchar(250) DEFAULT NULL,
  `descripcion` varchar(250) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `imagenes`
--

INSERT INTO `imagenes` (`id_imagen`, `id_propiedad`, `id_tipo_imagen`, `titulo`, `nombre`, `descripcion`) VALUES
(1027, 260, 3, NULL, 'duplex_pablo.jpg', NULL),
(959, 237, 3, NULL, '4)__av._peron_3520(2).jpg', NULL),
(60, 20, 1, 'Venta de Lote', 'img00874-20110831-1629.jpg', NULL),
(1016, 265, 3, NULL, 'img-20160315-wa0070(1).jpg', NULL),
(1017, 266, 3, NULL, '20131218_171832.jpg', NULL),
(965, 239, 3, NULL, 'img-20150123-wa0009.jpg', NULL),
(1014, 264, 3, NULL, 'img-20160210-wa0057(1).jpg', NULL),
(1018, 267, 3, NULL, '20160307_161102.jpg', NULL),
(203, 52, 3, NULL, 'florida_(3).jpg', NULL),
(940, 230, 3, NULL, 'img-20150427-wa0021.jpg', NULL),
(938, 180, 3, NULL, '4)__av._peron_3520.jpg', NULL),
(939, 229, 3, NULL, '4)__av._peron_3520(1).jpg', NULL),
(786, 190, 3, NULL, '6)_ayacucho_1221.jpg', NULL),
(1025, 274, 3, NULL, '6-montes_de_oca_551.jpg', NULL),
(1026, 274, 3, NULL, '6-montes_de_oca_551(1).jpg', NULL),
(1024, 273, 3, NULL, '5-_garibaldi_1355.jpg', NULL),
(1010, 261, 3, NULL, NULL, NULL),
(1009, 259, 3, NULL, 'la_foto_1_(2).jpg', NULL),
(1008, 258, 3, NULL, 'img-20160223-wa0028.jpg', NULL),
(1007, 257, 1, NULL, 'callao_1465_-_lote.jpg', NULL),
(1006, 256, 1, NULL, 'img-20151106-wa0048.jpg', NULL),
(1005, 255, 1, NULL, 'dsc02057.jpg', NULL),
(1004, 254, 1, NULL, '20151006_170721.jpg', NULL),
(1003, 253, 1, NULL, '20151006_124801.jpg', NULL),
(1002, 252, 1, NULL, '12chacabuco.jpg', NULL),
(1001, 250, 1, NULL, '2gandolfo_1160.jpg', NULL),
(318, 75, 3, NULL, '4.jpg', NULL),
(319, 77, 3, NULL, '10011890.jpg', NULL),
(321, 77, 3, NULL, '10011891.jpg', NULL),
(443, 99, 3, NULL, 'tres_de_febrero_2852(7).jpg', NULL),
(452, 101, 3, NULL, 'dsc02183.jpg', NULL),
(1032, 279, 3, NULL, '6-belgrano_2176.jpg', NULL),
(1031, 277, 3, NULL, '2-balcarce(1).jpg', NULL),
(1030, 277, 3, NULL, '2-balcarce.jpg', NULL),
(1029, 276, NULL, NULL, 'fachada_don_orione_1185(1).jpg', NULL),
(486, 106, 3, NULL, 'casa_new_(10).jpg', NULL),
(487, 106, 3, NULL, 'casa_new_(8).jpg', NULL),
(1028, 275, NULL, NULL, 'fachada_don_orione_1185.jpg', NULL),
(1021, 269, 3, NULL, 'received_1621663264734878_(2).jpeg', NULL),
(1022, 270, 3, NULL, '20160423_113401.jpg', NULL),
(524, 113, 3, NULL, 'edison_52_(7).jpg', NULL),
(591, 126, 3, NULL, '20120711_112124(2).jpg', NULL),
(614, 131, 3, NULL, '20120718_095534(1).jpg', NULL),
(618, 133, 3, NULL, '20120725_174122.jpg', NULL),
(720, 159, 3, NULL, '20130409_102450_(1).jpg', NULL),
(721, 159, 3, NULL, '20130409_101134.jpg', NULL),
(724, 160, 3, NULL, '20130415_121237.jpg', NULL),
(739, 171, 3, 'Fachada', 'quinta_4348_frente.jpg', 'Frente en plena remodelación'),
(760, 179, 3, NULL, '100_4857(1).jpg', NULL),
(797, 193, 2, NULL, '20131214_105402.jpg', NULL),
(798, 193, 2, NULL, '20131214_105526.jpg', NULL),
(799, 193, 2, NULL, '20131214_105324.jpg', NULL),
(805, 194, 1, NULL, '20140124_191952(1).jpg', NULL),
(806, 194, 1, NULL, '20130913_154853_(2)(1).jpg', NULL),
(807, 194, 1, NULL, '20130913_154739(2).jpg', NULL),
(808, 194, 1, NULL, '20130913_154758.jpg', NULL),
(820, 197, 2, NULL, '20140404_153454.jpg', NULL),
(845, 203, 3, NULL, '20140802_113932.jpg', NULL),
(846, 203, 3, NULL, 'img-20140802-wa0026_(1).jpg', NULL),
(852, 205, NULL, NULL, '20140104_110316.jpg', NULL),
(853, 205, 3, NULL, '20140104_110341.jpg', NULL),
(854, 206, 3, NULL, '20140816_105027.jpg', NULL),
(855, 206, 3, NULL, '20140816_105005.jpg', NULL),
(856, 206, 3, NULL, '20140816_104949.jpg', NULL),
(857, 206, 3, NULL, '20140816_104924.jpg', NULL),
(858, 206, 3, NULL, '20140816_104930.jpg', NULL),
(859, 190, 3, NULL, '6)_ayacucho_1221_(2).jpg', NULL),
(864, 207, 3, NULL, '20140113_103125.jpg', NULL),
(865, 209, 3, NULL, '20140821_105128.jpg', NULL),
(866, 209, 3, NULL, '20140821_103842.jpg', NULL),
(867, 209, 3, NULL, '20140821_103659.jpg', NULL),
(868, 209, 3, NULL, '20140821_103613.jpg', NULL),
(869, 209, 3, NULL, '20140821_103758_(1).jpg', NULL),
(871, 212, 3, NULL, '20141117_102820.jpg', NULL),
(882, 215, 3, NULL, 'img-20141027-wa0018(1).jpg', NULL),
(892, 217, 3, NULL, '20141120_115005.jpg', NULL),
(893, 217, 3, NULL, '20141120_113821.jpg', NULL),
(894, 217, 3, NULL, '20141120_114226.jpg', NULL),
(895, 217, 3, NULL, '20141120_114156.jpg', NULL),
(896, 217, 3, NULL, '20141120_113959.jpg', NULL),
(897, 218, 3, NULL, 'simon_de_iriondo_1154.jpg', NULL),
(903, 220, 3, NULL, '20141127_120718.jpg', NULL),
(904, 220, 3, NULL, '20141126_094810.jpg', NULL),
(905, 220, 3, NULL, '20141126_094817.jpg', NULL),
(906, 220, 3, NULL, '20141126_094833.jpg', NULL),
(907, 220, 3, NULL, '20141126_094841.jpg', NULL),
(908, 220, 3, NULL, '20141126_094912.jpg', NULL),
(915, 222, 3, NULL, 'img-20150122-wa0006_(1).jpg', NULL),
(919, 222, 3, NULL, '20150121_162141.jpg', NULL),
(920, 222, 3, NULL, '20150121_162237.jpg', NULL),
(921, 223, 3, NULL, '20150106_113905.jpg', NULL),
(923, 225, 3, NULL, 'img-20150108-wa0021.jpg', NULL),
(957, 235, 3, NULL, '20150607_114126_(1).jpg', NULL),
(958, 236, 3, NULL, '20150514_170634_(1).jpg', NULL),
(995, 240, 1, NULL, '6)9_de_julio.jpg', NULL),
(1042, 288, 3, NULL, 'maipu_y_libertador.jpg', NULL),
(1041, 287, 3, NULL, '20161212_154412.jpg', NULL),
(984, 242, 3, NULL, 'foto_guall1.jpg', NULL),
(1040, 286, 3, NULL, '10-peron.jpg', NULL),
(1039, 285, 3, NULL, '1-fate.jpg', NULL),
(1038, 284, 3, NULL, '14-padre_acevedo.jpg', NULL),
(1036, 281, 3, NULL, '20160526_162424_(2).jpg', NULL),
(1037, 283, 3, NULL, '20140407_174708.jpg', NULL),
(1033, 278, 3, NULL, '2-balcarce(2).jpg', NULL),
(993, 244, 3, NULL, '12)moreno.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `latitud`
--

CREATE TABLE `latitud` (
  `id_latitud` int(11) NOT NULL,
  `id_propiedad` int(11) NOT NULL,
  `latitud` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `latitud`
--

INSERT INTO `latitud` (`id_latitud`, `id_propiedad`, `latitud`) VALUES
(11, 10, '-34.44790103525081, -58.5575795173645'),
(10, 9, '-34.442844572077334, -58.57977747917175'),
(9, 6, '-34.454341720910094, -58.53959798812866'),
(5, 8, '-34.46360375921272, -58.53922247886658'),
(6, 5, '34.452590, -58.539254'),
(7, 7, '-34.48606899927084, -58.563072681427'),
(8, 4, '-34.453494, -58.534035'),
(12, 11, '-34.44076969679354, -58.56464982032776'),
(13, 15, '-34.44163, -58.559089'),
(14, 12, '-34.443618766071914, -58.55633497238159'),
(15, 13, '-34.43822137860744, -58.56629133224487'),
(16, 14, '-34.44213230726586, -58.55609893798828'),
(17, 16, '-34.480928, -58.503863'),
(18, 17, '-34.44309, -58.563013'),
(19, 22, '-34.46294032358439, -58.567214012145996'),
(20, 23, '-34.45243080006411, -58.57131242752075'),
(21, 25, '-34.43712416211997, -58.55043411254883'),
(22, 27, '-34.50079194731668, -58.506789207458496'),
(23, 28, '-34.441019, -58.558326'),
(24, 29, '-34.44777717104361, -58.557729721069336'),
(25, 30, '-34.467027003259425, -58.64634990692139'),
(26, 31, '-34.47128, -58.546312'),
(27, 33, '-34.45630567732529, -58.563523292541504'),
(28, 34, '-34.45844651413059, -58.56963872909546'),
(29, 35, '-34.4454, -58.555839'),
(30, 36, '-34.50333835568686, -58.57090473175049'),
(31, 37, '-34.443732, -58.546056'),
(32, 38, '-34.497927, -58.513933'),
(33, 39, '-34.443559, -58.554735'),
(34, 40, '-34.458699, -58.570394'),
(35, 41, '-34.438218, -58.566291'),
(36, 42, '-34.41087515835625, -58.63197326660156'),
(37, 43, '-34.464727164853535, -58.58133316040039'),
(38, 44, '-34.464727164853535, -58.58133316040039'),
(39, 45, '-34.43731883061262, -58.56238603591919'),
(40, 46, '-34.44406115941905, -58.57294321060181'),
(41, 51, '-34.452413106148256, -58.57129096984863'),
(42, 52, '-34.528537, -58.492996'),
(43, 53, '-34.43876998144838, -58.56114149093628'),
(44, 54, '-34.464803, -58.58105'),
(45, 56, '-34.44218539553577, -58.55661392211914'),
(46, 56, '-34.442256179843184, -58.556721210479736'),
(47, 58, '-34.44467165839092, -58.556034564971924'),
(48, 60, '-34.44846726928749, -58.555541038513184'),
(49, 61, '-34.470405881666586, -58.57592582702637'),
(50, 112, '34.538874,-58.572364'),
(51, 119, '34.457243,-58.568029');

-- --------------------------------------------------------

--
-- Table structure for table `localidad`
--

CREATE TABLE `localidad` (
  `id_localidad` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `localidad`
--

INSERT INTO `localidad` (`id_localidad`, `nombre`) VALUES
(1, 'Victoria'),
(2, 'Beccar'),
(4, 'Belgrano'),
(5, 'Martinez'),
(6, 'Virreyes'),
(7, 'General Pacheco'),
(8, 'Troncos del Talar'),
(9, 'El Talar'),
(10, 'Benavidez'),
(11, 'Don Torcuato'),
(12, 'Olivos'),
(33, 'La Horqueta'),
(14, 'Garin'),
(15, 'Ingeniero Maschwitz'),
(16, 'Maquinista Savio'),
(17, 'Matheu'),
(18, 'Del Viso'),
(19, 'Tortuguitas'),
(20, 'Manzanares'),
(21, 'Villa Rosa'),
(22, 'Villa Astolfi'),
(23, 'Presidente Derqui'),
(24, 'Manuel Alberti'),
(25, 'Florida'),
(26, 'Carapachay'),
(27, 'La Lucila'),
(28, 'Dique Luján'),
(29, 'Lopez Camelo'),
(30, 'Boulogne'),
(31, 'Lomas de San Isidro'),
(32, 'Acassuso'),
(35, 'San Fernando'),
(39, 'Rincón de Milberg'),
(37, 'Escobar'),
(38, 'Pilar'),
(40, 'Tigre'),
(41, 'Colón'),
(43, 'Malvinas Argentinas'),
(45, 'San Isidro'),
(46, 'Villa Ballester'),
(48, 'Villa Crespo'),
(49, NULL),
(50, 'Balvanera Once'),
(52, 'Ciudad Autónoma de Buenos Aires');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(2, '2014_10_12_100000_create_password_resets_table', 2),
(3, '2014_10_12_000000_create_users_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `moneda`
--

CREATE TABLE `moneda` (
  `id_moneda` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `valor` decimal(10,0) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `moneda`
--

INSERT INTO `moneda` (`id_moneda`, `nombre`, `valor`) VALUES
(1, '$', '1'),
(2, 'u$s', '4');

-- --------------------------------------------------------

--
-- Table structure for table `mueble_cocina`
--

CREATE TABLE `mueble_cocina` (
  `id_muebles_cocina` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mueble_cocina`
--

INSERT INTO `mueble_cocina` (`id_muebles_cocina`, `nombre`) VALUES
(1, 'Sobre mesada y bajo mesada.'),
(2, 'Sin.');

-- --------------------------------------------------------

--
-- Table structure for table `orientacion`
--

CREATE TABLE `orientacion` (
  `id_orientacion` int(11) NOT NULL,
  `nombre` varchar(3) DEFAULT NULL,
  `img` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orientacion`
--

INSERT INTO `orientacion` (`id_orientacion`, `nombre`, `img`) VALUES
(1, 'N', NULL),
(2, 'S', NULL),
(3, 'E', NULL),
(6, 'NE', NULL),
(5, 'O', NULL),
(7, 'SE', NULL),
(8, 'NO', NULL),
(9, 'SO', NULL),
(10, 'Ent', NULL),
(11, NULL, NULL),
(12, 'Av', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `partido`
--

CREATE TABLE `partido` (
  `id_partido` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `partido`
--

INSERT INTO `partido` (`id_partido`, `nombre`) VALUES
(1, 'San Fernando'),
(2, 'San Isidro'),
(3, 'Tigre'),
(4, 'Capital Federal'),
(6, 'Escobar'),
(7, 'Pilar'),
(8, 'Vicente Lopez'),
(10, 'Colón'),
(11, 'Malvinas Argentinas'),
(12, 'General San Martin');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `propiedad`
--

CREATE TABLE `propiedad` (
  `id_propiedad` int(11) NOT NULL,
  `id_tipo_propiedad` int(11) DEFAULT NULL,
  `id_tipo_operacion` int(11) DEFAULT NULL,
  `id_tipo_moneda` int(20) DEFAULT NULL,
  `id_provincia` int(11) DEFAULT NULL,
  `id_partido` int(11) DEFAULT NULL,
  `id_ciudad` int(11) DEFAULT NULL,
  `id_localidad` int(11) DEFAULT NULL,
  `id_barrio` int(11) DEFAULT NULL,
  `id_orientacion` int(11) DEFAULT NULL,
  `id_tipo_zona` int(11) DEFAULT NULL,
  `precio` int(11) DEFAULT NULL,
  `calle` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `nro` int(10) DEFAULT NULL,
  `entre` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `cerca` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `plantas` int(11) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  `dormitorios` int(11) DEFAULT NULL,
  `antiguedad` int(11) DEFAULT NULL,
  `descripcion140` varchar(115) DEFAULT NULL,
  `descripcion` longtext,
  `sup_cubierta` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `sup_descubierta` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `sup_total` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `hab_servicio` int(2) DEFAULT NULL,
  `ent_servicio` int(2) DEFAULT NULL,
  `frente_medida` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `parrilla` int(2) DEFAULT NULL,
  `quincho` int(2) DEFAULT NULL,
  `piscina` int(2) DEFAULT NULL,
  `ocupada` int(2) DEFAULT NULL,
  `destacado` int(2) DEFAULT '0',
  `terraza` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `banio_servicio` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `comedor_diario` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `office` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `cocina` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `toilettes` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `banio` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `dormitorio` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `suite` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `playroom` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `comedor` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `living` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `escritorio` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `slider` int(1) DEFAULT NULL,
  `home` int(11) DEFAULT '0',
  `publicar` int(2) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `propiedad`
--

INSERT INTO `propiedad` (`id_propiedad`, `id_tipo_propiedad`, `id_tipo_operacion`, `id_tipo_moneda`, `id_provincia`, `id_partido`, `id_ciudad`, `id_localidad`, `id_barrio`, `id_orientacion`, `id_tipo_zona`, `precio`, `calle`, `nro`, `entre`, `cerca`, `plantas`, `estado`, `dormitorios`, `antiguedad`, `descripcion140`, `descripcion`, `sup_cubierta`, `sup_descubierta`, `sup_total`, `hab_servicio`, `ent_servicio`, `frente_medida`, `parrilla`, `quincho`, `piscina`, `ocupada`, `destacado`, `terraza`, `banio_servicio`, `comedor_diario`, `office`, `cocina`, `toilettes`, `banio`, `dormitorio`, `suite`, `playroom`, `comedor`, `living`, `escritorio`, `slider`, `home`, `publicar`) VALUES
(281, 3, 2, 1, 1, 1, 9, 35, 166, NULL, 1, 6000, 'lavalle', 456, 'Alvear', 'Centro comercial', 1, 'Muy bueno', 1, 3, 'Hermoso 2 ambientes con cochera', 'Amplio departamento de dos ambientes con cochera,living comedor muy luminoso con cocina integrada,baño completo 1 dormitorio con placard con interiores,balcón,el departamento consta con losa radiante.-', '52', '3', '55', NULL, NULL, NULL, 0, NULL, 0, 0, 1, NULL, NULL, NULL, NULL, '1', NULL, NULL, '1', NULL, NULL, '1', '1', NULL, NULL, 0, 0),
(274, 3, 1, 2, 1, 3, 13, 40, 109, 1, NULL, 105000, 'Montes de Oca', 551, NULL, 'Av.Cazón', 1, 'Muy bueno', 1, NULL, 'Departamento  a estrenar', 'Excelente departamento de dos ambientes con cochera, a metros de Av. Cazón muy buena ubicación.\r\nLiving comedor con cocina integrada, balcón corrido, con parrilla, baño completo, dormitorio con placard,  muy luminoso.', '48', '7', '55', NULL, NULL, NULL, 1, NULL, 0, 1, 0, NULL, NULL, NULL, NULL, '1', NULL, '1', '1', NULL, NULL, NULL, '1', NULL, NULL, 1, 1),
(285, 3, 1, 2, 1, 1, 9, 1, 187, NULL, 3, 77000, 'Blanco Encalada', 2593, NULL, NULL, 2, 'Muy bueno', 2, NULL, 'LIndo departamento de 2 amb.Barrio Fate', 'Lindo departamento de tres ambientes , en Barrio fate. buenos accesos de colectivos y a cuadras de acceso norte.\r\n\r\nPB: living comedor,con salida a un pequeño jardin, cocina con alacenas y bajo mesada, lavadero y patio pequeño.\r\n\r\nPA: Dos dormitorios con placard, baño con ducha.', '89', '10', '89', NULL, NULL, NULL, 1, NULL, 0, 1, 0, NULL, NULL, '1', NULL, '1', NULL, '1', '2', NULL, NULL, NULL, '1', NULL, NULL, 1, 1),
(215, 16, 1, 2, 1, 3, 7, 40, 159, NULL, NULL, 89000, '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '490', '0', '490', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(284, 1, 1, 2, 1, 2, 11, 2, 155, 6, 3, 245000, 'Padre Acevedo', 546, NULL, NULL, 2, 'Bueno', NULL, NULL, NULL, 'Dos casas sobre lote de 10 x 30 cada una con entrada independiente\r\nCasa  al frente :Dos dormitorios living comedor,cocina completa y baño entrada de autos.\r\nCasa al fondo PB:cocina comedor diario en la planta baja con buenas aberturas de madera.PA:tres dormitorios con placard baño completo.\r\nLa casa está en muy buen estado.\r\nGalpón,Amplio jardín y pileta', '187', NULL, '300', NULL, NULL, NULL, NULL, NULL, 1, 1, 0, NULL, NULL, NULL, NULL, '1', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(276, 1, 1, 2, 1, 1, 9, 1, 157, 2, NULL, 285000, 'Don Orione', 1185, 'Constitucion', 'Centro comercial', 1, 'Bueno', 6, NULL, 'Antigua casona', 'Casa antigua manteniendo su estilo original ,Ubicada en el corazon de Victoria sobre lote de 10x25, Posee 5 dormitorios mas dependencia de servicio,pisos de pinotea y mosaico,sala de recepcion amplia,baño con bañera,cocina,comedor diario,toilette,jardin y patio.\r\nPA: un dormitorio\r\nIDEAL GERIATRICO,CONSULTORIO MEDICO ETC', '185', '45', '250', 1, NULL, NULL, 0, NULL, 0, 0, 0, '1', '1', '1', NULL, '1', '1', '1', '6', NULL, NULL, NULL, '1', NULL, NULL, 0, 1),
(264, 1, 1, 2, 1, 1, 9, 1, 13, NULL, 3, 200000, 'Carlos Casares', 3315, NULL, 'Acceso Tigre', 2, 'Muy bueno', 4, 20, 'Casa ideal dos familias', 'Excelente casa ideal dos familias, buena ubicación a cuadras del Acceso Norte. PB: jardin, entrada para dos autos, living comedor, dos dormitorios con placard, baño completo, cocina, lavadero independiente, cuarto de herramientas.patio. PA: Living comedor, dos dormitorios con placard, baño completo, cocina, lavadero, patio pequeño. "DIGNA DE VER"', '145', NULL, '145', NULL, NULL, NULL, 1, NULL, 0, 1, 0, '1', NULL, '2', NULL, '2', NULL, NULL, '4', NULL, NULL, '2', '2', NULL, NULL, 0, 1),
(203, 3, 2, 1, 1, 1, 9, 35, 14, 1, 1, 3000, 'Av.Colon', 1136, 'Constitucion', 'Centro comercial', 1, 'Bueno', 2, NULL, 'Dpto de tres ambientes', 'Departamento de tres ambientes,1Â° pisos por escalera,Cocina comedor con barra desayunadora con alacenas y bajo mesada,living comedor,lavadero,dos dormitorios con placard uno de ellos alfombrado.baÃ±o con ante baÃ±o-\r\nOportunidad!!\r\nBajas Expensas', '60', '0', '60', NULL, NULL, NULL, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '1', NULL, NULL, '2', NULL, NULL, '1', NULL, NULL, NULL, 0, 0),
(223, 14, 2, 1, 1, 1, 9, 6, 15, 2, NULL, 4200, 'Av.Avellaneda', 4483, 'Rastreador', NULL, 1, 'Bueno', NULL, NULL, 'Local comercial', 'Local sobre Av.Avellaneda de 3.50 x12 con baÃ±o con cortina metÃ¡lica.', '42', '0', '42', NULL, NULL, '3.50', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(273, 2, 1, 2, 1, 1, 9, 1, NULL, NULL, 3, 90000, 'Garibaldi', 1355, 'Constitucion', 'Av.peron', 1, NULL, 3, NULL, 'Muy lindo PH', 'PH, de tres ambientes en buen estado, dos dormitorio, mas un altillo. Living comedor, cocina con alacena y bajo mesada, baño con ducha. terraza.\r\nBuena ubicacion.', '70', '15', '85', NULL, NULL, NULL, 0, NULL, 1, NULL, 0, NULL, NULL, NULL, NULL, '1', NULL, '1', '2', NULL, '1', NULL, '1', NULL, NULL, 1, 1),
(225, 28, 1, 2, 1, 1, 9, 6, 100, 2, NULL, 450000, 'Av.Avellaneda', 3333, 'Ruchi', 'Acceso Tigre', 2, 'bueno', 0, NULL, 'Venta en Block', 'Venta en block sobre Av.Avellaneda a dos cuadras del acceso norte, zona netamente comercial,DOS LOCALES   Local 1) de 5 x 4. y el local 2)6.7 x 3.50  ambos con renta más  TRES DEPARTAMENTOS DE TRES AMBIENTES  cada uno.\r\nideal "inversores".-\r\nOPORTUNIDAD!!!!!!!!!!!!', '190', '52', '242', NULL, NULL, NULL, 1, NULL, NULL, 1, 0, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(288, 1, 1, 2, 1, 1, 7, 35, NULL, NULL, 1, 320000, 'Maipú', 1015, 'Libertador', 'Centro comercial', 2, 'Muy bueno', 5, 60, 'Hermosa casa', 'Hermoso chalet de 7 ambientes Lote 13,20 x 20,32 = 2268,22 m2  entrada por dos calles, Maipu y Av. Libertador.\r\nPB: Garage, Hall de distribucion, Living  comedor con hogar, toillete, cocina con mesada y alacenas, comedor diario, baño de servicio, patio con parrilla.\r\n\r\nPA: 4 dormitorios con placard, baño completo, dormitorio principal muy amplio con posibilidad de vestidor.\r\nrejas en todas las aberturas- techo de tejas', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 1, NULL, '1', '1', NULL, '1', '1', '2', '4', NULL, NULL, NULL, '1', '1', NULL, 0, 1),
(236, 3, 1, 2, 1, 1, 9, 35, 164, 1, 3, 65000, 'Barrio Infico', 0, 'Intendente Arnoldi', NULL, 1, 'Bueno', 3, NULL, 'Departamento de 4 ambientes', '"Barrio Infico".Departamento de cuatro ambientes, living comedor, cocina amplia, tres dormitorios, baño completo. " muy luminoso"', '65', '0', '65', NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, '1', NULL, '1', NULL, '1', '3', NULL, NULL, '1', '1', NULL, NULL, 1, 1),
(222, 2, 2, 1, 1, 1, 7, 35, 156, 5, 3, 5000, 'Carlos Pellegrini', 2952, 'Ambrosoni', 'vias estacion Victoria', 1, 'Muy bueno', 2, NULL, 'PH refaccionado a nuevo', 'Amplio  y luminoso  PH de tres ambientes, living comedor,cocina separada,dos dormitorios,baÃ±o completo y patio.-\r\n REFACCIONADA A NUEVO!!!', '60', '10', '70', NULL, NULL, '8.66', 0, NULL, 0, 0, 0, NULL, NULL, '1', NULL, '1', NULL, '1', '2', NULL, NULL, NULL, '1', NULL, NULL, 0, 0),
(259, 2, 1, 2, 1, 1, 9, 1, 5, 3, NULL, 250000, 'Mitre', 3421, 'Martin Rodriguez', 'Av.peron', 2, 'Excelente', 2, NULL, 'Excelente PH al frente', 'Excelente PH  en dos plantas en inmejorable ubicación,PB: Living  con pisos tarugados,baño completo,cocina comedor diario con muebles a medida,con barra desayunador,muy luminosa,comedor independiente con salida al patio con parrilla y cuarto de herramienta,PA:dos dormitorios con placard y uno de ellos tiene un altillo o tercer dormitorio,baño completo,importante balcón aterrazado.\r\nGarage \r\nIMPECABLE!DIGNA DE VER', '119', '40', '159', NULL, NULL, NULL, 1, NULL, 0, 1, 1, 'si', NULL, 'si', NULL, 'si', '1', '1', '2', NULL, NULL, 'si', 'si', NULL, NULL, 0, 1),
(256, 3, 2, 1, 1, 2, 11, 45, 155, 3, 1, 4000, 'Alberti', 392, 'Diego Palma', 'Av. Centenario', 1, 'Muy bueno', 0, 15, 'Simpático monoambiente', 'Impecable monoambiente, a tres cuadras de Av Centenario, excelente  ubicación.\r\nLIving , cocina separada, baño completo.\r\n "Luminoso"\r\nEl edificio cuenta con un quincho con parrilla', '40', '0', '40', NULL, NULL, NULL, 1, NULL, 0, 0, 1, NULL, NULL, NULL, NULL, '1', NULL, '1', NULL, NULL, NULL, NULL, '1', NULL, NULL, 0, 0),
(252, 1, 1, 2, 1, 1, 9, 35, 65, 6, 3, 145000, 'Chacabuco', 1580, 'Belgrano', 'Vias', 1, 'bueno', 2, 50, 'Casa estilo Colonial', 'Casa estilo "Colonial" en lote 8.66 x 24 living comedor amplio,dos dormitorios de 5.50 x 5.50 cada uno,cocina 4 x 4, baño,zaguán,patio y parrilla.-', '137', '71', '208', NULL, NULL, '8.66', 1, NULL, 0, 1, 0, NULL, NULL, '1', NULL, '1', NULL, '1', '2', NULL, NULL, NULL, '1', NULL, NULL, 1, 1),
(258, 3, 2, 1, 1, 1, 9, 1, 53, 3, 3, 5500, 'Constitucion', 2247, 'Quintana', 'Av.peron', 1, 'Excelente', 0, 0, 'Departamento  a estrenar', 'Hermoso monoambiente amplio, a estrenar con cochera, muy luminoso y buena ubicacion.\r\nse puede dividir, tiene aire acondicionado, calefaccion.\r\n\r\nActualización semestral un 15%', '40', '0', '40', NULL, NULL, NULL, 0, NULL, 0, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(253, 3, 2, 1, 1, 1, 9, 1, 157, NULL, 3, 6000, 'Alfredo Palacios', 1156, 'Av.Peron', 'Avenida', 1, 'Excelente', 1, 0, 'Departamento con cochera a estrenar', 'Excelente dos ambientes a estrenar en el edificio "Palacios",living comedor  amplio muy luminoso cocina integrada con barra desayunadora,con alacenas y bajo mesada,caldera,toilette,1 dormitorio con placard con interiores baño en suite,balcón con parrilla.\r\n\r\nGimnasio,piscina', '52', '5', '57', NULL, NULL, NULL, 1, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, '1', '1', '1', '1', '1', NULL, '1', '1', NULL, NULL, 0, 0),
(238, 3, 2, 1, 1, 3, 13, 40, 121, 8, NULL, 4500, 'Luis Garcia', 1170, NULL, 'estación tren', 1, 'Excelente', 1, 0, 'Hermoso departamento', 'Lindisimo departamento de dos ambientes a estrenar con cochera,cocina comedor con barra desayunadora,un dormitorio con placard,baño completo,balcón corrido,con losa radiante.\r\nEl edificio cuenta con seguridad y piscina.', '50', '12', '62', NULL, NULL, NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, '1', NULL, '1', '1', NULL, NULL, NULL, '1', NULL, NULL, 0, 0),
(239, 3, 2, 1, 1, 1, 9, 1, 157, 3, 3, 4500, 'Brandsen', 3455, 'Martin Rodriguez', 'Tren', 1, 'Muy bueno', 2, 1, 'Hermoso departamento', 'Hermoso departamento frente a la estación de Victoria,Living comedor con pisos de cerámicos con cocina integrada con alacenas y bajo mesada,dos dormitorios con placard y estufas tiro balanceado,baño completo.-', '65', '0', '65', NULL, NULL, NULL, 0, NULL, 0, 0, 1, '1', NULL, NULL, NULL, '1', NULL, '1', '2', NULL, NULL, NULL, '1', NULL, NULL, 0, 0),
(54, 14, 10, 1, 1, 1, 7, 6, 101, NULL, 1, 2500, 'Av. Avellaneda', 4483, 'Sargento Cabral y Rastreador Fournier', 'Acc', 1, 'Muy Bueno', NULL, NULL, 'Local sobre Av. Avellaneda', 'Local en Alquiler sobre Av. Avellaneda. Virreyes. Medidas 3.23x12.74. mts. Vidriera con puerta. Cortina metalica manual. 1 BaÃ±o', '41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0),
(227, 3, 2, 1, 1, 1, 9, 6, 15, NULL, NULL, 3500, 'Av.Avellaneda', 5398, 'Payro', 'Acceso Tigre', 1, 'Bueno', 1, NULL, 'Monoambiente divisible', 'Monoambiente amplio con posibilidad de dividirlo,luminoso,sobre Av.Avellaneda.\r\nLiving comedor con cocina integrada con bajo mesada y su artefacto,baño con ducha.', '40', '2', '42', NULL, NULL, NULL, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, NULL, '1', NULL, '1', NULL, NULL, NULL, NULL, '1', NULL, NULL, 0, 0),
(266, 3, 1, 2, 1, 1, 9, 1, 157, NULL, 1, 68000, 'Don Orione', 1170, 'Constitucion', 'Av.Perón', 1, 'Muy bueno', 0, 10, 'Monoambiente', 'Excelente ubicación a media cuadra de Av. Perón\r\nUn monoambiente divisible, con kitchenette, baño con ducha.\r\nBalcón al frente, Luminoso, excelente ubicacion.\r\n\r\nApto profesional\r\nActualmente con renta hasta Diciembre del 2016.', '30', '2', '32', NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '1', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0),
(267, 2, 1, 2, 1, 1, 9, 35, 96, NULL, 3, 105000, 'Almirante Brown', 1281, 'tres de Febrero', NULL, 1, 'a refaccionar', 2, 45, 'PH en planta alta', 'PH  a refaccionar de tres ambientes en planta alta,living comedor,cocina independiente,dos dormitorios y baño actualizado.\r\nBuena ubicación.-', '70', '4', '74', NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, '1', NULL, '1', '2', NULL, NULL, NULL, '1', NULL, NULL, 1, 1),
(209, 1, 1, 2, 1, 1, 9, 1, 66, 2, 3, 170000, 'Ambrosoni', 1941, 'Carlos Pellegrini', 'vias estacion Victoria', 1, 'Excelente', 2, NULL, 'Casa refaccionada a nuevo', 'Muy linda  casa refaccionada a nuevo con revestimiento tipo"tarquini" al frente y en el interior de la propiedad.  4 amb. en Lote propio con patio al frente  y amplio jardin al fondo.Lote de 260 metros ,Sup. cubierta: 125 metros. living comedor, cocina integrada con  barra desayunadora con muebles bajos y altos de madera .1 dormitorio al frente con placard empotrado . baÃ±o completo muy moderno con venecitas . 2Â° dormitorio de  con placard empotrado . patio cubierto de 5.x 2 . sala de estar  o tercer dormitorio  con baÃ±o. lavadero  cubierto. jardin amplio de 10 x 8 . cuarto de herramientas  al fondo o posible quincho.entrada de servicio.Muy buen estado. pisos de parquet en dormitorios. todas las aberturas y puertas de madera de buena calidad . ideal para ampliar!!', '125', NULL, '260', NULL, 1, '8.66', 1, NULL, 0, 1, 0, NULL, '1', '1', NULL, '1', NULL, '1', '2', NULL, NULL, '1', '1', '1', NULL, 1, 1),
(210, 1, 2, 1, 1, 1, 9, 6, 15, 3, NULL, 4000, 'Balcarce', 2779, 'Simon de Iriondo', 'de acceso Norte', 2, 'Muy bueno', 2, NULL, 'Casa de 3 ambientes', 'Casa en dos plantas, cerca de accceso tigre , linea de colectivos 710, 371, 60,21.\r\nPB: living , cocina comedor con alacenas y bajo mesada, toillete .\r\nPA: Dos dormitorios, baÃ±o completo.', '62', '3', '65', NULL, NULL, '8.66', 0, NULL, 0, 0, 1, NULL, '1', NULL, NULL, '1', NULL, '1', '2', NULL, NULL, '1', '1', NULL, NULL, 0, 0),
(221, 2, 2, 1, 1, 1, 9, 1, 122, 3, 3, 5300, '3 de Febrero', 2609, 'Estrada', 'Avenida PerÃ³n', 1, 'Muy bueno', 1, NULL, 'PH de 2 ambientes con cochera', 'PH de dos ambientes amplios y luminoso con pisos de porcelanato,hermosa cocina con alacenas y bajo mesada pisos de porcelanato,un dormitorio con placard,baÃ±o completo.-\r\nCOCHERA!!!', '55', '5', '60', NULL, NULL, NULL, 0, NULL, 0, 0, 1, NULL, NULL, NULL, NULL, '1', NULL, '1', '1', NULL, NULL, NULL, '1', NULL, NULL, 0, 0),
(148, 3, 2, 1, 1, 3, 7, 8, 136, NULL, 3, 2500, 'Crisologo Larralde', 2550, NULL, 'Acceso a Tigre', 1, 'impecable', 2, NULL, 'Hermoso departamento en Complejo "Los Alamos"', 'Impecable departamento de tres ambientes con excelente vista abierta. Dos dormitorios con placard con interiores Cocina con alacenas y bajo mesada con lavadero incorporado BaÃ±o completo', '57', '57', '57', NULL, NULL, NULL, 1, NULL, 1, NULL, 0, NULL, NULL, 'si', NULL, 'si', NULL, 'si', 'si', NULL, NULL, 'si', 'si', 'si', 0, 1, 0),
(265, 14, 1, 2, 1, 1, 9, 35, 148, NULL, 1, 47000, 'chacabuco', 1208, 'Constitucion', 'centro comercial', 1, 'Bueno', NULL, 20, 'Local comercial', 'Local de 30 metros con baño, a metros del centro comercial de san fernando.', '30', '0', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(280, 3, 2, 1, 1, 3, 13, 40, 144, 2, 3, 5000, 'Crisologo Larralde', 2550, NULL, 'Acceso Tigre', 1, 'Muy bueno', 2, 20, 'Departamento de 3 ambientes', 'Departamento de 3 amb en el complejo "los Alamos" complejo con seguridad las 24 hs piscina,SUM.El departamento está en muy buen estado consta de living comedor luminoso,cocina independiente con alacenas y bajo mesada,2 dormitorios alfombrados con placard con interiores,baño completo.-', '57', '0', '57', NULL, NULL, NULL, 1, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, '1', NULL, '1', NULL, NULL, NULL, '1', '1', NULL, NULL, 0, 0),
(279, 3, 1, 2, 1, 1, 9, 35, 100, 8, NULL, 125000, 'Belgrano', 2176, 'Quintana', 'Estación de trenes', 1, 'Bueno', 2, NULL, 'Departamento de 3 ambientes', 'Departamento de cuatro ambientes, muy luminoso. a dos cuadras de la Estacion de Virreyes y a cuatro cuadras  de la Av. Peron.\r\nEl Edificio cuenta con jardin en comun. \r\nLiving Comedor, cocina independiente, con mesada y alacenas, lavadero cubierto, tres dormitorios con placard, baño completo.', '67', '0', '67', NULL, NULL, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '1', NULL, '1', '3', NULL, NULL, NULL, '1', NULL, NULL, 1, 1),
(262, 3, 2, 1, 1, 2, 11, 45, 171, 1, 3, 6000, 'Diego Palma', 358, 'Monseñor Alberti', 'Av.Centenario', 1, 'Muy bueno', 1, NULL, 'Departamento de 2 ambientes', 'Departamento de dos ambientes con cochera, muy bien ubicado.\r\nliving comedor, cocina con bajo mesada y alacenas, dormitorio placard con cortinas , espejo, baño completo.\r\nmuy luminoso!!!', '42', '5', '47', NULL, NULL, NULL, 0, NULL, 0, 1, 1, NULL, NULL, NULL, NULL, '1', NULL, '1', '1', NULL, NULL, NULL, '1', NULL, NULL, 0, 0),
(282, 3, 2, 1, 1, 1, 9, 6, 67, NULL, 1, 6000, 'Rastreador Fournier', 2078, 'Avellaneda', 'Acceso norte', 1, 'Muy bueno', 1, 4, 'Ec', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(283, 3, 2, 1, 1, 1, 9, 6, 67, NULL, 1, 6000, 'Rastreador Fournier', 2078, 'Avellaneda', 'Acceso norte', 1, 'Muy bueno', 1, 4, 'Hermoso 2 ambientes con cochera', 'Impecable departamento de dos ambientes amplios con cochera.\r\nSobre la Av, Avellaneda, Living Comedor, cocina independiente con todos sus artefactos, mesada y alacenas, ante baño y baño completo, dormitorio con placard, muy luminoso.\r\nEl edificio tiene terraza compartida con parrilla.', '60', '5', '65', NULL, NULL, NULL, 1, NULL, 0, 0, 1, '1', NULL, '1', NULL, '1', NULL, '1', '1', NULL, NULL, NULL, '1', NULL, NULL, 0, 0),
(286, 3, 1, 2, 1, 1, 9, 35, 148, NULL, 1, 125000, 'Av.Perón', 2239, 'Quintana', 'Av.Libertador', 1, 'Muy bueno', 2, 30, 'Muy lindo Depto de 3 amb sobre importante avenida', 'Cómodo tres ambientes S/ importante Avenida,consta de living comedor con pisos de parquet,cocina integrada con barra desayunador,pasillo con amplio placard empotrado,dos dormitorios luminosos con sus respectivos placard y baño con mampara con todos sus accesorios y lavadero.', '64', '0', '64', NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, NULL, '1', NULL, '1', NULL, '1', '2', NULL, NULL, '1', '1', NULL, NULL, 0, 1),
(278, 1, 1, 2, 1, 1, 9, 35, 14, 2, 3, 90000, 'Balcarce', 1666, NULL, 'Acceso Tigre', 2, 'Bueno', 2, NULL, 'Dos casas de 3 amb cada una', 'Casa para dos familias de tres ambientes cada una.\r\nPlanta baja. \r\nCocina comedor, dos dormitorios, baño, lavadero, entrada para autos, jardín.\r\nPlanta Alta. \r\n Living comedor, dos dormitorios, cocina con bajo mesada y alacenas, baño completo. en muy buen estado!!', '140', NULL, '240', NULL, NULL, '8.66', 0, NULL, 0, 1, 0, NULL, NULL, '1', NULL, '1', NULL, '1', '2', NULL, NULL, '1', '1', NULL, NULL, 1, 1),
(270, 2, 1, 2, 1, 1, 7, 1, 13, 8, 3, 100000, 'Carlos Pellegrini', 2952, 'Somón de Iriondo', 'Estación tren Línea Mitre', 1, 'Muy bueno', 2, 30, 'Ph al frente de 3 ambientes', 'Ph, de tres ambientes buen estado, Living comedor, cocina con muebles altos y bajos, baño completo, dos dormitorios amplios, patio y lavadero.\r\nSE VENDE CON RENTA.\r\nSE ACEPTA FINANCIACION.', '70', '30', '100', NULL, NULL, '8.66', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2', NULL, NULL, '1', '1', NULL, NULL, 1, 1),
(108, 1, 1, 2, 1, 1, 7, 1, 66, NULL, 3, 110000, 'Miller', 178, NULL, NULL, 2, NULL, 4, NULL, 'Casa en Venta', 'Casa en lote propio 8.66x18, refaccionada a nuevo hace 5 aÃ±os. \r\nPB: Living Comedor grande con pisos de porcellanato. Cocina con muebles altos y bajos. Comedor diario. 2 dormitorios. BaÃ±o completo. Lavadero. Quincho, parrilla y piscina.\r\nPA: 2 dormitorios amplios. BaÃ±o Completo . Calefaccion tiro balanceado.', '180', NULL, '156', NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL, NULL, NULL, NULL, 'si', NULL, NULL, 'si', NULL, NULL, 'si', 'si', NULL, NULL, 1, 1),
(205, 3, 2, 1, 1, 1, 9, 6, 15, NULL, 1, 3500, 'Av.Avellaneda', 5398, 'PayrÃ³', NULL, NULL, 'Muy bueno', NULL, NULL, 'Monoambiente', 'Monoambientes amplio, con posibilidad de dividirlo, muy luminoso, sobre Av, Avellaneda\r\nBuenos accesos.', '40', '2', '42', NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, '0', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(200, 3, 2, 1, 1, 2, 11, 45, 155, NULL, 3, 3500, 'Diego Palma', 386, 'Alberti', 'Av. Centenario', 1, 'Muy bueno', 1, 10, 'Muy buen departamento 2 ambientes', 'Departamento de dos ambientes  con cochera descubierta, Living Comedor, con balcon, cocina con alacena y bajo mesada, dormitorio con placard, baÃ±o completo, aire frÃ­o/calor buen estado," muy buena ubicacion"', '40', '40', '40', NULL, NULL, NULL, 0, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '1', NULL, '1', '1', NULL, NULL, '1', '1', NULL, NULL, 0, 0),
(194, 3, 2, 1, 1, 1, 9, 1, 92, NULL, 3, 4500, 'Carlos Pellegrini', 2942, 'Carlos Casares y Ambrosoni', 'vias estacion Victoria', NULL, 'a estrenar', 1, 0, 'Dpto 2 amb a estrenar, sin expensas', 'Departamentos de dos ambientes a estrenar, cocina comedor integrada con artefacto de cocina y bajo mesada, 1 Dormitorio, BaÃ±o con todos sus accesorios, BalcÃ³n.-\r\nâ€œSin Expensasâ€', '40', NULL, '45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'si', NULL, 'si', NULL, 'si', '1', NULL, NULL, 'si', NULL, NULL, NULL, 1, 0),
(257, 16, 1, 2, 1, 1, 7, 35, 92, 3, 3, 130000, 'Callao', 1465, 'Chacabuco y Maipu', 'Vias tren y Ruta 202', NULL, NULL, NULL, NULL, NULL, 'Lote en buena ubicación a dos cuadras de Ruta 202 y tres de Vías tren Mitre, estación San Fernando', '433', '433', '433', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(113, 2, 1, 2, 1, 1, 7, 1, 66, NULL, 3, 60000, 'Edison', 52, 'Martin Rodriguez y Kennedy', NULL, 1, 'Bueno', 2, NULL, 'Ph en venta', 'PH al frente. Cocina comedor integrada. 2 Dormitorios. BaÃ±o con ducha. Lavadero.', '52', NULL, '60', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'si', NULL, 'si', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(126, 3, 1, 2, 1, 1, 7, 35, 96, NULL, NULL, 76000, 'Presidente Peron', 1558, NULL, NULL, 1, 'Estrenar', 1, NULL, 'Departamento a estrenar  de 2 ambientes', 'Excelente departamento a estrenar muy luminoso sobre importante avenida. Cocina comedor con barra desayunadora, pisos de cer&aacute;¡micos. Las aberturas son de aluminio con doble vidrio.  1 Dormitorio con placard con pisos de cer&aacute;¡micos. Ba&aacute;±o completo. Cochera .', '45', '45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'si', NULL, 'si', 'si', NULL, NULL, 'si', 'si', NULL, NULL, 1, 0),
(254, 21, 1, 2, 1, 1, 9, 35, 166, 8, NULL, 160000, 'San Gines', 1204, 'Alsina', 'Av.Perón', 3, 'Excelente', 2, 6, 'Triplex muy luminoso', 'Vivienda tipo triplex en impecable estado\r\n1°Piso:Living comedor con con pisos de cerámicos,con cocina integrada,toilette,balcó.\r\n2°:Dormitorio amplio con placard y calefactor de tiro balanceado,baño completo.\r\n3°amplio playroom o segundo dormitorio\r\ngarage.', '112', '3', '115', NULL, NULL, NULL, 0, NULL, 0, 1, 0, NULL, NULL, NULL, NULL, '1', '1', '1', '1', NULL, '2', NULL, '1', NULL, NULL, 1, 1),
(255, 3, 1, 2, 1, 1, 9, 35, 157, 8, 3, 105000, 'Constitución', 3232, 'Santamarina', 'Centro comercial de Victoria', 1, 'Excelente', 1, 6, 'Departamento con cochera', 'Muy lindo departamento en el centro de Victoria,living comedor con pisos flotantes con cocina integrada con barra desayunadora con muebles hecho a medida,aire frio calor en el living y estufa de tiro balanceado,hall de distribución con mueble empotrado,baño completo y un dormitorio con placard con aire frio calor y estufa de tiro balanceado.-\r\nCON COCHERA CUBIERTA!!!', '42', '3', '45', NULL, NULL, NULL, 1, NULL, 0, 1, 0, '1', NULL, '1', NULL, '1', NULL, '1', '1', NULL, NULL, '1', '1', NULL, NULL, 1, 1),
(287, 3, 2, 1, 1, 8, NULL, 12, 75, NULL, 3, 5500, 'Juan de Garay', 2615, NULL, 'Av.Maipu', 1, 'Bueno', 1, NULL, 'Monoambiente amplio con patio', 'Simpatico Monoambiente , con patio y cocina independiente, baño con ducha.\r\nMuy buena ubicacion a una cuadra de la AV, Maipu.', '40', '10', '50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, 0, 1),
(260, 6, 1, 2, 1, 1, 9, 35, 166, 6, NULL, 178000, 'Belgrano', 1853, 'Almirante Brown', 'Avenida', 3, 'Muy bueno', 3, NULL, 'Triplex', 'Excelente Triplex en" Complejo Los Alamos"  tres ambientes con cochera, Acceso por dos entradas. calle Mansilla y calle Belgrano. \r\nPB: Living comedor, Cocina con alacena bajo mesada, toilette, Jardin.\r\nPM: Un dormitorios con posibilidad de realizar un segundo dormitorio o bien un vestidor, Baño completo.\r\nPA: playroon.\r\n\r\nMuy Buena ubicacion cercano a estacion de tren y lineas de colectivo.', '100', '20', '120', NULL, NULL, NULL, 1, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '1', '1', '1', '2', NULL, '1', '1', '1', NULL, NULL, 1, 1),
(291, 1, 3, 1, 2, 2, 9, 18, 24, NULL, 3, 1000000, 'mendez', 1405, NULL, 'cc mendez', 1, 'Bueno', 3, 20, NULL, 'Excelente ubicacion', '50', '10', '60', NULL, NULL, '10', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2', '3', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `propiedad_Ant`
--

CREATE TABLE `propiedad_Ant` (
  `id_propiedad` int(11) NOT NULL,
  `id_tipo_propiedad` int(11) DEFAULT NULL,
  `id_tipo_operacion` int(11) DEFAULT NULL,
  `id_tipo_moneda` int(20) DEFAULT NULL,
  `id_provincia` int(11) DEFAULT NULL,
  `id_partido` int(11) DEFAULT NULL,
  `id_ciudad` int(11) DEFAULT NULL,
  `id_localidad` int(11) DEFAULT NULL,
  `id_barrio` int(11) DEFAULT NULL,
  `id_orientacion` int(11) DEFAULT NULL,
  `id_tipo_zona` int(11) DEFAULT NULL,
  `precio` int(11) DEFAULT NULL,
  `calle` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `nro` int(10) DEFAULT NULL,
  `entre` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `cerca` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `plantas` int(11) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  `dormitorios` int(11) DEFAULT NULL,
  `antiguedad` int(11) DEFAULT NULL,
  `descripcion140` varchar(115) DEFAULT NULL,
  `descripcion` longtext,
  `sup_cubierta` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `sup_descubierta` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `sup_total` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `hab_servicio` int(2) DEFAULT NULL,
  `ent_servicio` int(2) DEFAULT NULL,
  `frente_medida` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `parrilla` int(2) DEFAULT NULL,
  `quincho` int(2) DEFAULT NULL,
  `piscina` int(2) DEFAULT NULL,
  `ocupada` int(2) DEFAULT NULL,
  `destacado` int(2) DEFAULT '0',
  `terraza` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `banio_servicio` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `comedor_diario` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `office` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `cocina` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `toilettes` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `banio` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `dormitorio` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `suite` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `playroom` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `comedor` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `living` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `escritorio` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `slider` int(1) DEFAULT NULL,
  `home` int(11) DEFAULT '0',
  `publicar` int(2) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `propiedad_Ant`
--

INSERT INTO `propiedad_Ant` (`id_propiedad`, `id_tipo_propiedad`, `id_tipo_operacion`, `id_tipo_moneda`, `id_provincia`, `id_partido`, `id_ciudad`, `id_localidad`, `id_barrio`, `id_orientacion`, `id_tipo_zona`, `precio`, `calle`, `nro`, `entre`, `cerca`, `plantas`, `estado`, `dormitorios`, `antiguedad`, `descripcion140`, `descripcion`, `sup_cubierta`, `sup_descubierta`, `sup_total`, `hab_servicio`, `ent_servicio`, `frente_medida`, `parrilla`, `quincho`, `piscina`, `ocupada`, `destacado`, `terraza`, `banio_servicio`, `comedor_diario`, `office`, `cocina`, `toilettes`, `banio`, `dormitorio`, `suite`, `playroom`, `comedor`, `living`, `escritorio`, `slider`, `home`, `publicar`) VALUES
(155, 21, 1, 2, 1, 1, 9, 35, 47, 3, NULL, 200000, 'San Gines', 681, 'Gral Pintos', NULL, 3, 'Muy Bueno', 3, 10, 'Muy Lindo Triplex ideal familia', 'Muy lindo triplex con entrada de auto.\r\nPB:Cocina con alacenas y bajo mesada,lavadero separado,Living comedor con pisos de ceramicos,toilette,Patio con parrilla \r\n1º Piso:Dos dormitorios con placard muy luminosos, baño con yacuzzi .\r\n2º piso:Dormitorio con balcón aterrazado', '94', NULL, '145', 0, NULL, NULL, 1, NULL, 0, 1, 0, 'si', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(161, 3, 2, 1, 1, 2, 7, 5, 6, NULL, NULL, 3000, 'Juncal', 9, 'Av Santa Fe', 'Colectivos', 1, 'Muy Lindo', 1, NULL, 'Departamento de 2y 1/2 Ambientes en alquiler', 'Departamento en excelente zona, a metros de AV. San Santa Fe, a tres cuadras Estacion Martinez, living comedor, cocina con muebles altos y bajo, dormitorio  con placard,escritorio, baño completo.\r\n\r\n" Bajas expensas"', '50', NULL, '50', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 'no', 'no', NULL, NULL, 'si', NULL, NULL, 'si', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(139, 14, 2, 1, 1, 1, 7, 6, 134, NULL, 1, 14000, 'Mansilla', 2120, NULL, NULL, 1, NULL, NULL, NULL, 'Local en alquiler', 'Local de 8.50x14 mts cubiertos y 8.66x10 mtrs descubiertos. 2 Baños. Se puede alquilar en su totalidad por $ 14.000 o la opcion de alquilarlos por separado por $ 7.000.- Cada uno.', '86', NULL, '205', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0),
(215, 16, 1, 2, 1, 3, 7, 40, 159, NULL, NULL, 89000, '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '490', '0', '490', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(217, 3, 1, 2, 1, 1, 9, 1, 157, 2, 3, 145000, 'Don Orione', 1225, 'Constitución', 'Centro comercial', 1, 'Excelente', 2, 5, 'Simpático departamento de tres ambientes', 'Hermoso departamento en el centro de Victoria,amplio y luminoso,con balcón al frente y en la parte trasera,Living comedor con pisos de cerámicos ,cocina completa con alacenas ya bajo mesada,toilette,baño completo dos dormitorios ambos con placard.\r\nCOCHERA!!\r\nEl edificio cuenta con baulera para cada departamento y parrilla!!!!\r\nDIGNO DE VISITAR!!!!', '70', '5', '75', NULL, NULL, NULL, 1, NULL, 0, 1, 0, 'SI', '1', '1', NULL, '1', '1', '1', '2', NULL, NULL, NULL, '1', NULL, NULL, 1, 1),
(218, 3, 1, 2, 1, 1, 9, 1, 157, 1, NULL, 90000, 'Simon de iriondo', 1154, 'Constitucion', 'Avenida Perón', 1, 'Muy bueno', 1, 8, 'Excelente departamento', 'Muy lindo  departamento a media cuadra de Av. Perón,Living comedor, cocina americana, un dormitorio con placard con interiores,baño completo,balcón\r\nMuy Buen estado \r\nOpción con cochera doble!!!.', '45', '3', '48', NULL, NULL, NULL, 0, NULL, 0, 1, 0, NULL, NULL, '1', NULL, '1', NULL, '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(9, 2, 1, 2, 1, 1, 7, 1, 13, NULL, 3, 110000, 'Saavedra', 2690, NULL, 'Acc. Norte', 2, 'Muy Bueno', 3, NULL, '2 PH uno en PB C/ Patio. Liv/Com. Coc/Com. Baño. 2 Dormitorios. PH PA: Liv/Com. Coc. Baño. Dorm. Patio C/Parrilla.', 'Dos PH uno en pb de 67 mts aprox. cuenta con patio. Living comedor amplio. Cocina comedor. baño y dos dormitorios con placards y muy buena carpintería. PH PA de 56 mts aprox. tiene un living comedor. Cocina. Baño. Dormitorio y patio con parrilla. Todo en muy buen estado! **apto crédito bancario**.\r\n\r\n*Las medidas son aproximadas y al solo efecto orientativo. Las medidas reales surgen del titulo de propiedad.', '123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'si', NULL, 'si', NULL, 'si', 'si', NULL, NULL, 'si', 'si', NULL, 0, 1, 1),
(203, 3, 2, 1, 1, 1, 9, 35, 14, 1, 1, 3000, 'Av.Colon', 1136, 'Constitucion', 'Centro comercial', 1, 'Bueno', 2, NULL, 'Dpto de tres ambientes', 'Departamento de tres ambientes,1° pisos por escalera,Cocina comedor con barra desayunadora con alacenas y bajo mesada,living comedor,lavadero,dos dormitorios con placard uno de ellos alfombrado.baño con ante baño-\r\nOportunidad!!\r\nBajas Expensas', '60', '0', '60', NULL, NULL, NULL, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '1', NULL, NULL, '2', NULL, NULL, '1', NULL, NULL, NULL, 0, 0),
(223, 14, 2, 1, 1, 1, 9, 6, 15, 2, NULL, 4200, 'Av.Avellaneda', 4483, 'Rastreador', NULL, 1, 'Bueno', NULL, NULL, 'Local comercial', 'Local sobre Av.Avellaneda de 3.50 x12 con baño con cortina metálica.', '42', '0', '42', NULL, NULL, '3.50', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(15, 3, 1, 2, 1, 1, 7, 35, 93, NULL, 1, 105000, 'General Lavalle', 954, 'Juan N Madero y Sarmiento', NULL, 1, 'Muy Bueno', 1, NULL, 'Impecable dpto de 2 Amb. Muy Luminoso. Liv/Com. Cocina. 1 Dorm C/ placard. Escritorio. Balcón amplio. Calefacción.', 'Impecable departamento de 50 mts. Muy luminoso, con un living de 6x4. Cocina con mubles altos y bajos, dormitorio con placard un espacio como para un escritorio, balcon amplio, calefaccion por radiadores, cochera subterranea. El edificio cuenta con un jardin en comun. Muy buena ubicacion a dos cuadras de la estacion San fernando y proxima de avenidas Peron y Libertador.\r\n\r\n*Las medidas son aproximadas y al solo efecto orientativo. Las medidas reales surgen del titulo de propiedad.', '50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'si', NULL, 'si', '1', NULL, NULL, 'si', 'si', 'si', NULL, 0, 1),
(171, 1, 2, 1, 1, 1, 7, 6, 15, 1, 3, 4500, 'Quintana', 4348, 'Balcarce y Sgto Cabral', 'Acc. Norte', 1, 'refaccionada', 2, NULL, 'casa de tres ambientes', 'Casa de tres ambientes, refaccionada. Cocina comedor, dos dormitorios, baño completo, lavadero.', '50', '60', '60', NULL, NULL, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 'si', NULL, 'si', '1', NULL, NULL, 'si', NULL, NULL, NULL, 0, 0),
(69, 16, 1, 2, 1, 3, 7, 40, 110, NULL, 3, 165000, 'Isla Del Sol', NULL, NULL, 'Punto Tigre', NULL, NULL, NULL, NULL, 'Lote en venta', 'Lote de 550 metros en el Barrio Cerrado Isla del Sol. Excelente acceso, muy buena urbanizacion a  un paso del Shopping Punto Tigre.\r\n\r\n*Las medidas son aproximadas y al solo efecto orientativo. Las medidas reales surgen del titulo de propiedad.', NULL, NULL, '550', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(70, 1, 1, 2, 1, 6, 7, 37, 111, NULL, NULL, 155000, 'Country Miraflores', NULL, NULL, NULL, 1, NULL, 2, NULL, 'Hermosa Casa en Venta', 'Casa con importante living comedor,toilette,baño completo,dos dormitorios más dependencia de servicio con baño\r\nJardín y cochera cubierta para un auto.-\r\nFee de Ingreso al Country: US$22.000\r\nImportante área deportiva:Tennis,Golf, Fúltbol\r\n*Las medidas son aproximadas y al solo efecto orientativo. Las medidas reales surgen del titulo de propiedad.', '145', NULL, '500', 1, NULL, NULL, 1, NULL, 1, NULL, 0, NULL, NULL, 'si', NULL, 'si', 'si', 'si', 'si', 'si', NULL, 'si', 'si', 'si', NULL, 1, 1),
(158, 2, 1, 2, 1, 1, 9, 35, 53, 1, NULL, 95000, 'Gandolfo', 1160, 'Av.Peron', 'Avenida', 1, 'A estrenar', NULL, NULL, NULL, 'Hermoso PH en una muy buena ubicación a metros de la Av Perón.\r\nExcelente construcción, muy buenas terminaciones.\r\nLiving comedor con pisos de pocelanatto,cocina integrada,Dormitorio con placard y baño completo.-\r\nCochera opcional U$S 10.000', '50', '20', '70', NULL, NULL, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(159, 2, 1, 2, 1, 1, 9, 35, 96, 1, NULL, 105000, 'Gandolfo', 1160, 'Av.Peron', 'Avenida', 1, 'A estrenar', 2, 0, 'Excelente PH', 'Excelente Ph al fondo ,muy luminoso,con buenas terminaciones,muy buena ubicación a metros de l Av.Perón.\r\nLiving comedor con pisos de Porcelanato cocina integrada con estufa de tiro balanceado,dos dormitorios con placard,Terraza amplia y espacio guarda cosas,baño completo.-\r\nSin expensas!!!\r\nCochera Opcional U$S 10.000', '65', '65', '65', NULL, NULL, NULL, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(222, 2, 2, 1, 1, 1, 7, 35, 156, 5, 3, 5000, 'Carlos Pellegrini', 2952, 'Ambrosoni', 'vias estacion Victoria', 1, 'Muy bueno', 2, NULL, 'PH refaccionado a nuevo', 'Amplio  y luminoso  PH de tres ambientes, living comedor,cocina separada,dos dormitorios,baño completo y patio.-\r\n REFACCIONADA A NUEVO!!!', '60', '10', '70', NULL, NULL, '8.66', 0, NULL, 0, 0, 0, NULL, NULL, '1', NULL, '1', NULL, '1', '2', NULL, NULL, NULL, '1', NULL, NULL, 0, 0),
(72, 1, 1, 2, 1, 11, 7, 43, 112, NULL, NULL, 189000, 'Santa Maria de Los Olivos', NULL, NULL, NULL, 2, 'Muy Bueno', 2, NULL, 'Casa en Venta', 'Hermosa casa , 2 dormitorios con posibilidad de un tercer dormitorio dependencia,jardín, entrada para 3 autos y garage techado para un auto ,muy luminosa y con muchas posibilidades de ampliación.', '162', NULL, '500', NULL, NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'si', 'si', 'si', 'si', 'si', NULL, 'si', 'si', 'si', NULL, 1, 1),
(174, 3, 1, 2, 1, 1, 9, 35, 93, 1, 1, 95000, 'Tres de Febrero', 599, 'Ituzaingo', 'Centro Comercial', 1, 'A estrenar', 1, 0, 'Impecable departamento a estrenar', 'Excelente Dpto. de 2 ambientes a estrenar en muy buena zona céntrica de San Fernando.\r\n \r\nLiving comedor con salida a balcón con deck, amplísima ventana.\r\nCocina semi integrada con muebles bajos y alacenas, calefón y cocina Longvie, lugar para lavarropas y heladera.\r\nDormitorio alfombrado amplio con gran placard con interiores.\r\nBaño completo con bañera.\r\nBalcón aterrazado con deck de madera.\r\n \r\nMuy luminoso!!!', '50', NULL, '50', NULL, NULL, NULL, 1, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '1', NULL, '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(135, 1, 1, 2, 1, 1, 7, 35, 130, NULL, 3, 285000, 'Las Tres Horquetas', 0, '000', '000', 2, 'Excelente', 4, 0, 'Excelente casa en venta', 'Excelente propiedad de 100 mts de Panamericana Ramal Tigre en el KM 24, frente al aeropuerto de San Fernando. Lote de 400 y 198 cubiertos con 3 cocheras cubiertas. 3/4 Dormitorios. Playroom. Cocina. Comedor diario. Lavadero. Dependencias de servicio. Calefaccion por radiadores. Aires acondicionados en dormitorio principal y Living Guardilla 12 mtrs en 3er Nivel. \r\n\r\nEl Presente anuncio es solo en titulo informativo, pues la venta de dicho inmueble esta supeditada a que el propietario tramite ente la AFIP el C.O.T.I\r\n\r\n\r\n*Las medidas son aproximadas y al solo efecto orientativo. Las medidas reales surgen del titulo de propiedad.', '198', '000', '400', 0, 0, '000', 1, NULL, 1, 0, 0, NULL, 'si', 'si', NULL, 'si', 'si', 'si', 'si', 'si', 'si', 'si', 'si', NULL, NULL, 1, 1),
(57, 14, 1, 2, 1, 1, 7, 6, 15, NULL, 1, 210000, 'Quintana', 3751, 'Blanco Encalada y Colectora Acc Norte a Capital', 'Acce Norte', 2, 'Bueno', NULL, NULL, 'Venta de Local y Fondo de Comercio', 'Venta de Local con fondo de comercio funcionando de lavadero de Autos y Lubricentro. Oficina y Depósito: en Planta Alta. Posee una oficina con depósito y dos baños (damas y caballeros). Con entrada independiente pero también en PA un vestuario con baño.Sala de Estar y Bar: en Planta Baja. Máquina de café de dos canillas, heladera exhibidora, mostradores, mesas y sillas varias.\r\nSala de Engrase (Lubricentro): Fosa, engrasadora, embudo para recolección de aceites, 2 (dos) máquinas engrasadoras manuales, criquet mecedor y herramientas varias. La fosa posee una bomba sumergible.\r\nSala de Máquinas (sótano): Compresor de aire de 4 HP trifásico, bomba de agua de 6 etapas 10 HP, otra bomba de similares características para reparar, bomba de agua de 1,5 HP, cisterna de 19500 lts realizada en HºAº.\r\nSala de Lavado de Motor y Chasis: Hidrolavadora de agua caliente de 5HP con caldera a gasoil, elevador hidráulico de 4 Tn.\r\n\r\n\r\n*Las medidas son aproximadas y al solo efecto orientativo. Las medidas reales surgen del titulo de propiedad.', '267', '325', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '1', NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(51, 3, 1, 2, 1, 1, 7, 35, 65, NULL, 3, 85000, 'Suipacha', 1261, 'Pocitos y Perdriel', 'Acc. Norte', 1, 'Muy Bueno', 2, NULL, 'Muy Buen depto de 3 Amb en Complejo Altos de San Fernando.', 'Impecable departamento de 3 ambientes en el Complejo Altos de San Fernando. 2 dormitorios con placard con estufas y baulera. Cocina con muebles hechos a madida con barra con vinoteca, Baño con vanitory, y mampara actualizado. Living con calefactor tiro balanceado, balcón con toldo. Se vende con 2 cocheras cubierta.\r\n\r\n\r\n*Las medidas son aproximadas y al solo efecto orientativo. Las medidas reales surgen del titulo de propiedad.', '60', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'si', NULL, 'si', '2', NULL, NULL, 'si', 'si', NULL, NULL, 1, 0),
(98, 1, 1, 2, 1, 1, 7, 1, 122, NULL, NULL, 235000, 'Carlos Casares', 880, NULL, NULL, 2, NULL, 3, NULL, NULL, 'Casa en Lote propio 8.66x20 mts. 160 mtrs cubiertos. Jardín 5x8.66 mts.  PB: Living. Cocina con alacena y bajo mesada, pisos de ceramicos. Lavadero. Comedor.Baño Completo.Galeria. PA: 3 Dormitorios con pisos de madera. Escritorio o estar. Baulera. Baño con ducha.\r\n\r\n*Las medidas son aproximadas y al solo efecto orientativo. Las medidas reales surgen del titulo de propiedad.', '160', NULL, '173', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'si', NULL, 'si', '3', NULL, NULL, 'si', 'si', 'si', NULL, 1, 1),
(54, 14, 10, 1, 1, 1, 7, 6, 101, NULL, 1, 2500, 'Av. Avellaneda', 4483, 'Sargento Cabral y Rastreador Fournier', 'Acc', 1, 'Muy Bueno', NULL, NULL, 'Local sobre Av. Avellaneda', 'Local en Alquiler sobre Av. Avellaneda. Virreyes. Medidas 3.23x12.74. mts. Vidriera con puerta. Cortina metalica manual. 1 Baño', '41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0),
(56, 3, 1, 2, 1, 1, 7, 35, 96, NULL, NULL, 87000, 'Tres de Febrero', 1168, '9 de julio y Adolfo Alsina', NULL, 1, 'Impecable', 1, NULL, 'Excelente dpto de 2 ambientes en venta', 'Impecable departamento de 2 ambientes.50 mts aprox con balcón. Cocina con alacenas y bajo mesada con lavadero incorporado . Living 6x3. 1 dormitorio con placard con interiores.Muy luminoso. Próximo a estación y centro comercial.- Digno de ver!!!!', '50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'si', NULL, 'si', NULL, NULL, NULL, 'si', 'si', NULL, NULL, 0, 0),
(58, 3, 1, 2, 1, 1, 7, 35, 96, NULL, 3, 88000, 'Ayacucho', 1586, 'Vias y Belgrano', 'Centro Comercial', 1, 'Muy Bueno', 2, NULL, 'Departamento de 3 Ambientes', 'Departamento de 3 Ambientes. Cocina con alacenas y bajo mesada. Lavadero incorporado. Living comedor con pisos de porcellanato. 2 dormitorios alfombrados con placard con interiores. Baño completo. \r\nExpensas $ 300.-', '52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'si', NULL, 'si', '2', NULL, NULL, 'si', NULL, NULL, NULL, 0, 0),
(197, 3, 1, 2, 1, 1, 7, 35, 53, 2, NULL, 75000, 'Don Orione', 1171, 'Constitucion', 'A:Peron', 1, 'Bueno', 1, 10, 'Dpto de dos ambientes', 'Muy lindo departamento de 2 ambientes c/cochera , en excelente ubicacion.\r\nLiving comedor, cocina integrada, baño completo, dormitorio.', '40', '3', '43', 0, 0, NULL, 0, NULL, 0, 1, 1, NULL, NULL, NULL, NULL, 'SI', NULL, 'si', 'si', NULL, NULL, 'si', 'SI', NULL, NULL, 0, 0),
(190, 3, 1, 2, 1, 1, 9, 1, 148, NULL, 3, 85000, 'Ayacucho', 1221, 'Constitucion', '3 de Febrero', NULL, 'muy bueno', 2, 1, NULL, 'Excelente departamento de dos ambientes, muy luminoso living comedor con pisos de porcelanato, cocina independiente con muebles bajo mesada y alacenas , cuarto con alfombra y placard, baño completo.\r\nEl edificio cuenta en la terraza con un espejo de agua, y parrilla.\r\nCerca de estación de tren y centro comercial.', '40', '2', '42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'si con espejo de agua', NULL, NULL, NULL, 'si', NULL, 'si', 'dos', NULL, NULL, 'si', 'si', NULL, NULL, 1, 1),
(186, 2, 1, 2, 1, 3, 12, 40, 14, 1, 2, 68000, 'Almirante Brown', 135, 'Italia', 'Centro comercial de San Fernando y Tigre', 1, 'Para Refaccionar', 2, 60, 'Ph al medio', 'PH al medio a refaccionar,ideal inversores', '90', '27', '117', NULL, NULL, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(187, 1, 1, 2, 1, 1, 7, 35, 65, 3, 3, 120000, 'Alem', 563, 'Ituzaingo', 'vias', 1, 'Bueno', 2, 50, 'Casa sobre lote propio', 'Sobre lote de 8.66 x 22.3 Jardin al frente 5mt. Dos dormitorios, baño completo, cocina, lavadero. Jardin de 8.66 x 10 con alero y parrilla. Entrada de auto y de servicio por lateral.', '120', '140', '260', NULL, NULL, '8.66', 1, NULL, 1, 1, 0, 'no', 'no', '1', NULL, 'si', NULL, 'completo', '2', NULL, NULL, 'si', NULL, NULL, NULL, 0, 1),
(185, 3, 1, 2, 1, 1, 9, 6, 147, 8, 3, 41000, 'Carlos Casares', 2800, NULL, 'Cedec Nº3', 1, 'Bueno', 2, 20, 'Departamento en Mil viviendas en 1er. piso', 'Departamento en 1er piso. Living comedor con pisos de porcelanato. Dos dormitorios con placards e interiores., un baño. Balcon y lavadero', '63', '3', '66', NULL, NULL, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, '1', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(68, 3, 2, 1, 1, 1, 7, 35, 96, NULL, 1, 3000, 'Colon', 1136, 'Constitucion y Tres de Febrero', 'Centro Comercial', 1, 'Bueno', 2, NULL, 'Departamento de 3 Ambientes en alquiler', 'Departamento en buen estado de 3 Ambientes 1er piso por escalera. Cuenta con 2 Domirtorios alfombrados con placard. Living comedor con pisos de ceramicos, cocina integrada con barra desayunadora, muebles altos y bajos, baño completo. Bajas Expensas!', '55', '55', '55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'si', NULL, 'si', '2', NULL, NULL, 'si', NULL, NULL, NULL, 0, 0),
(67, 1, 1, 2, 1, 3, 7, 40, 109, NULL, 3, 147000, 'Solis', 108, 'Italia Y Zuviria', 'Cazon', 2, 'Bueno', 2, NULL, 'Venta de Casa con Local', 'Casa de 4 ambientes con Local en Lote de 12,50x10 aprox. PB: Living Comedor amplio. \r\nPA: 2 dormitorios con pisos de pinotea. Baño con ducha. Living Comedor, sala de estar y cocina.', '196', '123', '125', NULL, NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'si', NULL, 'si', '2', NULL, NULL, 'si', 'si', NULL, NULL, 1, 1),
(198, 3, 2, 1, 1, 1, 9, 35, 72, 3, NULL, 3800, 'Constitucion', 1171, '9 de Julio', 'Plaza de San Fernando', 1, 'Excelente', 1, 0, 'Dpto de dos ambientes a estrenar', 'Excelente departamento en el centro de San Fernando,inmejorable ubicación a estrenar  con finas terminaciones,muy luminoso.\r\nLiving comedor  cocina con alacena y bajo mesada,baño completo,un dormitorio con placard con interiores,vista abierta.\r\nCOCHERA', '50', '3', '53', NULL, NULL, NULL, 0, NULL, 0, 0, 0, '0', NULL, NULL, NULL, '1', NULL, '1', '1', NULL, NULL, NULL, '1', NULL, NULL, 0, 1),
(65, 3, 1, 2, 1, 1, 7, 35, 72, NULL, 3, 85000, 'Tres de Febrero', 176, 'Las Heras y Rivadavia', 'Centro Comercial', 1, 'Muy Bueno', 1, NULL, 'Departamento de 2 ambientes en venta', 'Lindo departamento al frente de 2 ambientes a una cuadra del centro comercial de San Fernando. Consta de un dormitorio. Living- Comedor. Cociana indepediente. Baño completo. 2 Balcones. Cochera.', '44', '44', NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, 'si', NULL, 'si', '1', NULL, NULL, 'si', 'si', 'si', 1, 1, 0),
(208, 1, 1, 2, 1, 1, 9, 6, 100, 2, NULL, 140000, 'Guido Spano', 2997, 'sarratea', 'Acc. Carlos Casares', 1, 'Muy bueno', 3, 0, 'Chalet de 4 ambientes', 'Hermoso chalet con salida a dos calles.Living comedor amplio, cocina comedor con alacenas y bajo mesada , lavadero cubierto, dos dormitorios, un escritorio con opcion a tercer dormitorio, baño completo, amplio patio, garage cubiertos para dos autos o se podria transformar en quincho.', '140', '110', '250', NULL, NULL, NULL, 1, NULL, 0, 1, 0, NULL, NULL, '1', NULL, '1', NULL, '1', '3', NULL, NULL, '1', '1', '1', NULL, 1, 1),
(79, 1, 1, 2, 1, 11, 7, 43, 115, NULL, NULL, 259000, 'Santa Maria de Los Olivos', NULL, NULL, NULL, 2, NULL, 3, NULL, 'Hermosa Casa en Venta', 'Muy Linda Casa, Comoda y Funcional. PB: Living Comedor. Cocina Comedor Diario. Dependencia Lavadero. Galeria. Parrilla. Piscina. PA: 3 Dormitorios uno en Suite con vestidor. 2 Dormitorios más con otro Baño. Guardilla. Se vende con renta desocupada alrededor del Mes de Septiembre.', '190', NULL, '640', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'si', NULL, 'si', 'si', '4', '3', 'si', NULL, 'si', 'si', NULL, NULL, 1, 1),
(209, 1, 1, 2, 1, 1, 9, 1, 66, 2, 3, 180000, 'Ambrosoni', 1941, 'Carlos Pellegrini', 'vias estacion Victoria', 1, 'Excelente', 2, NULL, 'Casa refaccionada a nuevo', 'Muy linda  casa refaccionada a nuevo con revestimiento tipo"tarquini" al frente y en el interior de la propiedad.  4 amb. en Lote propio con patio al frente  y amplio jardin al fondo.Lote de 260 metros ,Sup. cubierta: 125 metros. living comedor, cocina integrada con  barra desayunadora con muebles bajos y altos de madera .1 dormitorio al frente con placard empotrado . baño completo muy moderno con venecitas . 2° dormitorio de  con placard empotrado . patio cubierto de 5.x 2 . sala de estar  o tercer dormitorio  con baño. lavadero  cubierto. jardin amplio de 10 x 8 . cuarto de herramientas  al fondo o posible quincho.entrada de servicio.Muy buen estado. pisos de parquet en dormitorios. todas las aberturas y puertas de madera de buena calidad . ideal para ampliar!!', '125', NULL, '260', NULL, 1, '8.66', 1, NULL, 0, 1, 0, NULL, '1', '1', NULL, '1', NULL, '1', '2', NULL, NULL, '1', '1', '1', NULL, 1, 1),
(210, 1, 2, 1, 1, 1, 9, 6, 15, 3, NULL, 4000, 'Balcarce', 2779, 'Simon de Iriondo', 'de acceso Norte', 2, 'Muy bueno', 2, NULL, 'Casa de 3 ambientes', 'Casa en dos plantas, cerca de accceso tigre , linea de colectivos 710, 371, 60,21.\r\nPB: living , cocina comedor con alacenas y bajo mesada, toillete .\r\nPA: Dos dormitorios, baño completo.', '62', '3', '65', NULL, NULL, '8.66', 0, NULL, 0, 0, 1, NULL, '1', NULL, NULL, '1', NULL, '1', '2', NULL, NULL, '1', '1', NULL, NULL, 0, 0),
(211, 2, 1, 2, 1, 3, 7, 40, 156, NULL, NULL, 93, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(212, 1, 1, 2, 1, 3, 7, 40, 156, 1, NULL, 93000, 'Crisologo Larralde', 1476, NULL, 'Acceso Norte', 1, 'Bueno', 2, NULL, 'PH de 3 ambientes', 'PH, de tres ambientes con entrada de auto y patio, cocina, comedor , dos dormitorios, baño, la casa es de época y cuenta con todos los servicios.', '80', '46', '126', 0, NULL, NULL, 1, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, NULL, '1', NULL, NULL, NULL, 1, 1),
(221, 2, 2, 1, 1, 1, 9, 1, 122, 3, 3, 4300, '3 de Febrero', 2609, 'Estrada', 'Avenida Perón', 1, 'Muy bueno', 1, NULL, 'PH de 2 ambientes con cochera', 'PH de dos ambientes amplios y luminoso con pisos de porcelanato,hermosa cocina con alacenas y bajo mesada pisos de porcelanato,un dormitorio con placard,baño completo.-\r\nCOCHERA!!!', '55', '5', '60', NULL, NULL, NULL, 0, NULL, 0, 0, 1, NULL, NULL, NULL, NULL, '1', NULL, '1', '1', NULL, NULL, NULL, '1', NULL, NULL, 0, 1),
(216, 13, 1, 2, 1, 2, 7, 2, 160, 5, 3, 120000, 'Billinghurst', 1827, 'José Ingenieros', 'Av.Rolón', 1, 'Muy bueno', 2, NULL, 'Chalets en dos plantas', 'Chalet en dos plantas con garage y amplio jardin,muy luminosa.\r\nPB:Cocina comedor con alacenas y bajo mesada,living comedor con pisos de parquet,baño completo.-\r\nPA:Dos dormitorios ambos con placard y baño.-\r\nOportunidad!!!', '138', '78', '216', NULL, NULL, '10', 1, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, '1', NULL, '2', '2', NULL, NULL, '1', '1', NULL, NULL, 1, 1),
(148, 3, 2, 1, 1, 3, 7, 8, 136, NULL, 3, 2500, 'Crisologo Larralde', 2550, NULL, 'Acceso a Tigre', 1, 'impecable', 2, NULL, 'Hermoso departamento en Complejo "Los Alamos"', 'Impecable departamento de tres ambientes con excelente vista abierta. Dos dormitorios con placard con interiores Cocina con alacenas y bajo mesada con lavadero incorporado Baño completo', '57', '57', '57', NULL, NULL, NULL, 1, NULL, 1, NULL, 0, NULL, NULL, 'si', NULL, 'si', NULL, 'si', 'si', NULL, NULL, 'si', 'si', 'si', 0, 1, 0),
(86, 1, 1, 2, 1, 6, 7, 37, 118, NULL, 3, 315000, 'Country Miraflores', NULL, NULL, NULL, 2, 'Muy Bueno', 3, NULL, 'Venta de Casa', 'Casa totalmente renovada, ubicada en un lote central del country. Distribuida en 2 plantas, con 3 dormitorios en planta alta , uno en suite con un balcón. En planta baja un Living- comedor muy amplio, un escritorio con posiblidad de ser un dormitorio más, cocina, comedor de diario, la dependencia de servicio, un amplio lavadero y una galeria con parrilla.', '210', NULL, NULL, 650, NULL, NULL, 1, NULL, 1, NULL, 0, NULL, NULL, 'si', NULL, 'si', 'si', '3', '3', 'si', NULL, 'si', 'si', 'si', NULL, 1, 1),
(91, 1, 1, 2, 1, 11, 7, 43, 115, NULL, NULL, 357000, 'Santa Maria de Los Olivos', NULL, NULL, NULL, 2, 'Excelente', 4, NULL, 'Casa en Venta', 'HERMOSA CASA A ESTRENAR\r\n\r\n Excelente ubicaciòn en el barrio, lote central y el mejor entorno.\r\n\r\n Detalles de calidad, pisos de porcelanato, aberturas doble vidrio, muebles de cocina importados, griferia importada, baños y duchas con regulador de temperatura del agua. Splits en todas las habitaciones, calefacción por losa radiante.\r\n Todos los dormitorios en suite y muy amplios. \r\n\r\nCasa distribuida en dos plantas, un dormitorio y /o escritorio en planta baja en suite, living comedor muy amplio y cocina tambien muy amplia. Planta baja pensada tipo loft, amplio y luminoso. \r\nEn planta alta, 3 dormitorios todos en suite y todos con vestidor.', '300', NULL, '1000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'si', NULL, 'si', 'si', '4', '4', 'si', NULL, 'si', 'si', NULL, NULL, 1, 1),
(101, 2, 2, 1, 1, 1, 7, 35, 72, NULL, 3, 1400, 'Alvear', 1547, 'Vias y Belgrano', 'Centro Comercial', 1, 'Bueno', 1, NULL, 'PH en alquiler', 'Ph al medio de 2 ambientes. Consta de cocina comedor con living integrado, 1 baño. 1 dormitorio y un pequeño balcón.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'si', NULL, 'si', NULL, NULL, NULL, 'si', 'si', NULL, NULL, 1, 0),
(220, 3, 1, 2, 1, 1, 9, 1, 157, 5, 1, 100000, 'Constitución', 3232, 'Santa Marina', 'Centro comercial de Victoria', 1, 'Impecable', 1, 5, 'Hermoso departamento de dos ambientes', 'Hermoso departamento de dos ambientes en inmejorable zona de Victoria a metros del centro comercial,muy buenos accesos.\r\nLiving comedor con cocina integrada completa con barra desayunadora,piso flotante,un dormitorio con placard con interiores,baño completo con antebaño,balcón corrido.-\r\nMuy luminoso!!!!', '45', '5', '50', NULL, NULL, NULL, 1, NULL, 0, 1, 0, 'SI', NULL, NULL, NULL, 'si', NULL, 'si', 'si', NULL, NULL, NULL, 'SI', NULL, NULL, 1, 1),
(224, 3, 2, 1, 1, 1, 9, 1, 157, NULL, 3, 5500, 'Don Orione', 1225, 'Constiticion', 'Estacion de tren', 1, 'Excelente', 2, 5, 'Departamento de 3 ambientes con cochera', 'Departamento de 3 ambientes amplios,living comedor con balcón al frente, cocina con alacenas y bajo mesada,toilette,baño completo,dos dormitorios ambos con placard con interiores uno de ellos con balcón,\r\nBaulera o lugar para guardar cosas.\r\nEl edificio cuenta con terraza con parrilla.-\r\nCON COCHERA!!!', '65', '5', '70', NULL, NULL, NULL, 1, NULL, 0, 0, 1, '1', NULL, NULL, NULL, '1', '1', '1', '2', NULL, NULL, NULL, '1', NULL, NULL, 0, 1),
(97, 3, 1, 2, 1, 2, 7, 45, 121, NULL, 3, 120000, 'Alsina', 359, 'Monseñor Alberti y Gral Paz', NULL, 1, 'Muy Bueno', 1, 10, 'Departamento en venta', 'Departamento en dúplex, con una superficie cubierta de 53m2, el mismo cuenta en PB: Kitchenette, living comedor piso de madera, 1 equipo de aire acondicionado frio/calor, calefacción a gas individual arriba y abajo, balcón, en PA: espacio de dormitorio, placards y 1 baño completo,  muy luminoso,  en muy buen estado. Antigüedad aproximada del edificio 10 años, cuenta con ascensor, pileta, solarium y parrilla común.-', '53', NULL, '53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'si', NULL, 'si', NULL, NULL, NULL, 'si', 'si', NULL, NULL, 1, 0),
(104, 1, 1, 2, 1, 1, 7, 35, 123, NULL, NULL, 380000, 'La Damasia', NULL, NULL, NULL, 2, 'Excelente', 3, 0, 'Espectacular Casa a estrenar', 'Lote central, orientación noreste 550 m2; habitación principal de 6m x4.5m con porcellanato ilva "art nouveau" 60x60 baño completo en suite de gran categoría (grifería decca piazza modelo "status" -monocomando alto-; doble bacha ferrum modelo lwfc; inodoro y bidet ferrum "murano"; revestimiento completo porcellanato ilva "polo" y "mountains&quot; en piso, más vestidor de 3mx 2m con interior de placard completo, más balcón terraza de 9 m2. 2 habitaciones, una de 4m x 3.50m y otra de 3.50 m x 3 más balcón terraza de 9 m2., ambas con interior de placard con puertas de espejo. Interior con accesorios. Baño secundario con full revestimiento ilva línea volcano y caves; bacha "deca piazza" modelo "l93"; grifería "hidromet" modelo "one"; inodoro y bidet ferrum "murano"; bañadera. Divino vanitory. Living de 10m x 4.5m con doble circulación (living - recepción / living - cocina), full porcellanato ilva "pampa" pulido 60x60 (línea bs. As. Moods) toilette de recepción con grifería deca piazza "quadratta"; bacha deca piazza modelo "l71"; inodoro ferrum "murano". Pequeño vanitory. Ventanas modelo novísima (nivel superior a las módena) con doble vidriado hermético en toda la casa. Vidrios blindex (irrompible) en todas las aberturas al frente. Cocina increible de gran categoría con isla; horno "ariston" dual (gas y eléctrico) con sistema autolimpiante (origen: italia); anafe con 4 hornallas tb ariston; grifería fv (línea lujo), bacha marca &quot;franke" (origen: alemania); conexión para lavavajillas y alzada de mármol brasilero; pisos en pocelanato piscina de 8x4 con ducha externa y solárium anti-refractario; baño externo a la casa (para piscina y galerías exteriores); dependencia de servicio con baño propio. Depósito, sector de tender. Cierre perimetral en madera. Parrila con bacha exterior. Instalación interna de aa. Dos Galerias', '216', '216', '216', NULL, NULL, NULL, 1, NULL, 1, NULL, 0, NULL, 'si', 'si', NULL, 'si', 'si', '4', '3', 'si', NULL, 'si', 'si', 'si', NULL, 1, 1),
(206, 3, 2, 1, 1, 1, 9, 35, 148, 5, 3, 3800, 'Lavalle', 456, 'Alvear', 'Centro comercial', 1, 'Excelente', 1, 0, 'Dpto de dos ambientes', 'Hermoso departamento de dos ambientes amplios con losa radiante,living comedor con cocina integrada,con alacenas y bajo mesada,un (1) dormitorio con placard,baño completo y balcón.-\r\nCOCHERA DOBLE!', '50', '3', '53', NULL, NULL, NULL, 0, NULL, 0, 0, 1, '0', '0', NULL, NULL, '1', NULL, '1', '1', NULL, NULL, NULL, '1', NULL, NULL, 0, 0),
(108, 1, 1, 2, 1, 1, 7, 1, 66, NULL, 3, 110000, 'Miller', 178, NULL, NULL, 2, NULL, 4, NULL, 'Casa en Venta', 'Casa en lote propio 8.66x18, refaccionada a nuevo hace 5 años. \r\nPB: Living Comedor grande con pisos de porcellanato. Cocina con muebles altos y bajos. Comedor diario. 2 dormitorios. Baño completo. Lavadero. Quincho, parrilla y piscina.\r\nPA: 2 dormitorios amplios. Baño Completo . Calefaccion tiro balanceado.', '180', NULL, '156', NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL, NULL, NULL, NULL, 'si', NULL, NULL, 'si', NULL, NULL, 'si', 'si', NULL, NULL, 1, 1),
(201, 2, 2, 1, 1, 1, 9, 6, 156, NULL, 3, 3300, 'Juncal', 2015, 'Av.Avellaneda', 'Acceso Norte', 1, 'Buena', 2, 30, 'PH al fondo', 'PH al fondo a media cuadra de Av.Avellaneda,Cocina comedor con artefacto alacena y bajo mesada,dos dormitorios,baño,lavadero,galpon,Jardin al frente y patio al fondo.-', '60', '40', '100', NULL, NULL, '8.66', NULL, NULL, NULL, NULL, 0, NULL, NULL, '1', NULL, NULL, NULL, '1', '2', NULL, NULL, '1', NULL, NULL, NULL, 1, 0),
(205, 3, 2, 1, 1, 1, 9, 6, 15, NULL, 1, 2700, 'Av.Avellaneda', 5398, 'Payró', NULL, NULL, 'Muy bueno', NULL, NULL, 'Monoambiente', 'Monoambientes amplio, con posibilidad de dividirlo, muy luminoso, sobre Av, Avellaneda\r\nBuenos accesos.', '40', '2', '42', NULL, NULL, NULL, 0, NULL, NULL, NULL, 1, '0', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(110, 14, 2, 1, 1, 1, 7, 6, 67, NULL, NULL, 5000, 'Avellaneda', 4473, NULL, NULL, NULL, NULL, NULL, NULL, 'Local apto varios', 'Local 9x11.50 apto varios rubros. Lote libre10x6 y Quincho de 3.30x10. 2 Baños. Oficina.', '103', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(127, 2, 1, 2, 1, 1, 7, 1, 55, NULL, NULL, 69000, 'Patricios Argentinos', 3035, NULL, NULL, 1, 'Bueno', 3, NULL, 'PH al fondo en venta', 'PH al fondo. Living Comedor. Cocina. 3 Dormitorios. 2 Baños. Cuarto de herramientas. Parrilla. Galeria semi cubierta. Jardin.', '100', NULL, '150', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'si', NULL, 'si', NULL, 'si', 'si', NULL, NULL, 'si', 'si', NULL, NULL, 1, 0),
(200, 3, 2, 1, 1, 2, 11, 45, 155, NULL, 3, 3500, 'Diego Palma', 386, 'Alberti', 'Av. Centenario', 1, 'Muy bueno', 1, 10, 'Muy buen departamento 2 ambientes', 'Departamento de dos ambientes  con cochera descubierta, Living Comedor, con balcon, cocina con alacena y bajo mesada, dormitorio con placard, baño completo, aire frío/calor buen estado," muy buena ubicacion"', '40', '40', '40', NULL, NULL, NULL, 0, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '1', NULL, '1', '1', NULL, NULL, '1', '1', NULL, NULL, 0, 0),
(194, 3, 2, 1, 1, 1, 9, 1, 92, NULL, 3, 2700, 'Carlos Pellegrini', 2942, 'Carlos Casares y Ambrosoni', 'vias estacion Victoria', NULL, 'a estrenar', 1, 0, 'Dpto 2 amb a estrenar, sin expensas', 'Departamentos de dos ambientes a estrenar, cocina comedor integrada con artefacto de cocina y bajo mesada, 1 Dormitorio, Baño con todos sus accesorios, Balcón.-\r\n“Sin Expensas”', '40', NULL, '40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'si', NULL, 'si', NULL, 'si', '1', NULL, NULL, 'si', NULL, NULL, NULL, 1, 0),
(207, 3, 2, 1, 1, 1, 9, 35, 72, 1, 1, 3500, 'Ayacucho', 1221, 'Constitucion', 'Centro comercial San Fernando', 1, 'Excelente', 1, NULL, 'Dpto de dos ambientes con muy buena vista', 'Hermoso departamento de dos ambientes, muy" luminoso", y excelente ubicacion a tres cuadras de ferrocarril mitre y a metros de constitucion  y centro comercial.', '42', '3', '45', NULL, NULL, NULL, 1, NULL, 0, 0, 1, 'SI', NULL, NULL, NULL, '1', NULL, '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(113, 2, 1, 2, 1, 1, 7, 1, 66, NULL, 3, 60000, 'Edison', 52, 'Martin Rodriguez y Kennedy', NULL, 1, 'Bueno', 2, NULL, 'Ph en venta', 'PH al frente. Cocina comedor integrada. 2 Dormitorios. Baño con ducha. Lavadero.', '52', NULL, '60', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'si', NULL, 'si', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(138, 14, 2, 1, 1, 1, 7, 35, 93, NULL, NULL, 2200, 'Peron', 1966, NULL, NULL, 1, NULL, NULL, NULL, 'Local en alquiler', 'Local en zona comercial. Medidas 4x6 Mtrs. 1 Baño', '24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'si', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0),
(126, 3, 1, 2, 1, 1, 7, 35, 96, NULL, NULL, 76000, 'Presidente Peron', 1558, NULL, NULL, 1, 'Estrenar', 1, NULL, 'Departamento a estrenar  de 2 ambientes', 'Excelente departamento a estrenar muy luminoso sobre importante avenida. Cocina comedor con barra desayunadora, pisos de cerámicos. Las aberturas son de aluminio con doble vidrio.  1 Dormitorio con placard con pisos de cerámicos. Baño completo. Cochera .', '45', '45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'si', NULL, 'si', 'si', NULL, NULL, 'si', 'si', NULL, NULL, 1, 1),
(192, 3, 2, 1, 1, 1, 9, 6, 129, NULL, 1, 4500, 'Avellaneda', 4566, 'Rastreador Fournier y Fernando Fader', NULL, NULL, 'Bueno', 1, NULL, 'Dpto 2 amb. sobre Avellaneda.', 'Dpto 2 ambientes y medio  s/Av. Avellaneda. Living comedor, cocina c/muebles completos, extractor de cocina, 1 dormitorio  y 2° dormitorio o escritorio y baño completo. Muy buena zona, pasan varias lineas de colectivos.', '45', NULL, '45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'si', NULL, NULL, NULL, '1', NULL, '1', '1', NULL, NULL, '1', NULL, NULL, NULL, 0, 1),
(132, 1, 2, 1, 1, 1, 7, 1, 93, NULL, NULL, 3800, 'Estrada', 1300, NULL, NULL, 1, 'Muy Bueno', 2, NULL, 'Casa en alquiler', 'Casa con entrada para varios autos. Quincho con parrilla. Jardín. \r\nCocina con muebles altos y bajos, pisos de ceramicos. Living Comedor con pisos de pinotea. Baño completo. 2 Dormitorios con pisos de pinotea. \r\nRefaccionada a nueva.', '75', NULL, '150', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'si', NULL, 'si', '2', NULL, NULL, 'si', 'si', NULL, NULL, 0, 0),
(133, 3, 2, 1, 1, 1, 7, 6, 129, NULL, NULL, 1500, 'Av. Avellaneda', 4554, 'Fournier', 'Acceso', 1, 'A Estrenar', 0, 0, 'Monoambiente en alquiler', 'Monoambiente a estrenar sobre Avenida Avellaneda.', '25', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'si', NULL, 'si', NULL, NULL, NULL, 'si', NULL, NULL, NULL, 1, 0),
(150, 3, 2, 1, 1, 2, 11, 45, 73, NULL, 3, 700, 'Heroes de Malvinas', 477, 'Libertador', NULL, 1, 'Excelente', 1, NULL, 'Excelente departamento Ideal turistas', 'Excelente Departamento boutique Ideal turistas*Valor por dia para dos personas* en inmejorable zona de San Isidro.\r\nAmoblado\r\nMuebles de Roble hechos a medida,aire frio calor de 6.000 frigorias,calefacción,microondas,muy luminoso.-\r\nBaño con ducha', '52', '0', '52', NULL, NULL, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0),
(152, 3, 2, 1, 1, 2, 11, 45, 42, NULL, NULL, 6000, 'Heroes de Malvinas', 477, 'Av. Libertador', NULL, NULL, NULL, 1, NULL, 'Excelente departamento apto profesional', 'Excelente Departamento apto profesional ideal consultorios inmejorable zona de San Isidro\r\nMuebles de Roble hechos a medida,aire frio calor de 6.000 frigorias,calefacción,muy luminoso.-\r\nBaño con ducha', '52', '0', '52', 0, NULL, NULL, NULL, NULL, 0, 0, 1, NULL, '0', '0', '0', 'SI', 'NO', 'SI', '1', 'NO', 'NO', 'Si', 'SI', 'NO', NULL, 1, 0),
(199, 2, 2, 1, 1, 1, 9, 35, 72, NULL, 3, 2200, 'Alvear', 1547, 'Belgrano', 'Vias', 2, 'Bueno', 1, NULL, 'PH sin Expensas', 'PH tipo loft con cocina comedor con alacenas y bajo mesada,Baño con ducha y dormitorio en entrepiso.-', '38', NULL, '38', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '1', NULL, '1', NULL, NULL, NULL, NULL, '1', NULL, NULL, 1, 0),
(180, 1, 1, 2, 1, 1, 9, 1, 141, 5, 3, 85000, 'Av.Peron', 3520, 'Ricardo Rojas', 'Estacion de tren', 1, 'Muy bueno', 1, 7, 'Muy lindo dos ambientes en buena ubicación', 'Lindo departamento dos ambientes , sobre Av.Peron cerca de centro comercial y estacion de tren.\r\nCocina comedor ,  alacena y bajo mesada, dormitorio con piso flotante, placard amplio, salida a un patio pequeño y baño completo.', '50', '3', '53', NULL, NULL, NULL, 0, NULL, 0, 0, 0, 'NO', NULL, NULL, NULL, '1', NULL, '1', '1', NULL, NULL, NULL, '1', NULL, 1, 1, 1),
(176, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(195, 3, 2, 1, 1, 1, 7, 6, 15, 1, NULL, 3200, 'Rastreador Fournier', 2078, 'Av.Avellaneda', NULL, 1, 'Bueno', 2, 10, 'Dpto de 3 ambientes', 'Departamento de tres ambientes en planta baja con patio,Cocina comedor  con bajo mesada,dos dormitorios uno de ellos con placard,entre piso de madera (tipo guardilla),baño con ducha,patio', '55', '50', '55', NULL, NULL, NULL, 0, NULL, NULL, 0, 1, 'SI', 'NO', 'SI', NULL, 'SI', NULL, 'SI', '2', NULL, NULL, 'SI', NULL, NULL, NULL, 0, 0),
(196, 2, 2, 1, 1, 2, 7, 2, 154, 1, NULL, 3500, 'Lonardi', 330, 'Becco', 'Av.Centenario', 1, 'Muy bueno', 2, 30, 'PH al fondo', 'PH al fondo de tres ambientes,con patio independiente.-\r\nCocina comedor con bajo mesada y su artefacto de cocina,dos dormitorios uno de ellos con placard,baño completo.-', '55', '10', '65', 0, NULL, NULL, 0, NULL, 0, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2', NULL, NULL, '1', NULL, NULL, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `provincia`
--

CREATE TABLE `provincia` (
  `id_provincia` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `provincia`
--

INSERT INTO `provincia` (`id_provincia`, `nombre`) VALUES
(1, 'Buenos Aires'),
(2, 'Entre Ríos');

-- --------------------------------------------------------

--
-- Table structure for table `revestimientos`
--

CREATE TABLE `revestimientos` (
  `id_revestimiento` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `revestimientos`
--

INSERT INTO `revestimientos` (`id_revestimiento`, `nombre`) VALUES
(1, 'Ladrillo a la vista'),
(2, 'Tarquini');

-- --------------------------------------------------------

--
-- Table structure for table `telefono`
--

CREATE TABLE `telefono` (
  `id_telefono` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `telefono`
--

INSERT INTO `telefono` (`id_telefono`, `nombre`) VALUES
(1, 'Con 1 linea.'),
(2, 'Con 2 lineas.'),
(3, 'Sin.'),
(4, 'si tipo split');

-- --------------------------------------------------------

--
-- Table structure for table `tipo_imagen`
--

CREATE TABLE `tipo_imagen` (
  `id_tipo_imagen` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `alto` int(10) DEFAULT NULL,
  `ancho` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tipo_imagen`
--

INSERT INTO `tipo_imagen` (`id_tipo_imagen`, `nombre`, `alto`, `ancho`) VALUES
(1, 'Chiquita - Thumb', 150, 150),
(2, 'Detalle - Propiedad', 210, 280),
(3, 'Grande', 500, 500),
(5, 'Slider - Destacadas del HOME', 300, 160);

-- --------------------------------------------------------

--
-- Table structure for table `tipo_lavadero`
--

CREATE TABLE `tipo_lavadero` (
  `id_lavadero` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tipo_lavadero`
--

INSERT INTO `tipo_lavadero` (`id_lavadero`, `nombre`) VALUES
(1, 'Xubierto'),
(2, 'Integrado'),
(3, 'En balcon Cubierto');

-- --------------------------------------------------------

--
-- Table structure for table `tipo_moneda`
--

CREATE TABLE `tipo_moneda` (
  `id_moneda` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `valor` decimal(10,0) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tipo_moneda`
--

INSERT INTO `tipo_moneda` (`id_moneda`, `nombre`, `valor`) VALUES
(1, '$', '1'),
(2, 'u$s', '4');

-- --------------------------------------------------------

--
-- Table structure for table `tipo_operacioon`
--

CREATE TABLE `tipo_operacioon` (
  `id_tipo_operacion` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tipo_operacioon`
--

INSERT INTO `tipo_operacioon` (`id_tipo_operacion`, `nombre`) VALUES
(1, 'Venta'),
(2, 'Alquiler'),
(3, 'Alquiler Temporal'),
(4, 'Alquiler C/ Muebles'),
(5, 'Alquiler C/Muebles Temp'),
(6, 'Alquiler Diciembre'),
(7, 'Alquiler Enero/ Febrero'),
(8, 'Alquiler Enero'),
(9, 'Alquiler Febrero'),
(10, 'Alquiler Comercial');

-- --------------------------------------------------------

--
-- Table structure for table `tipo_propiedad`
--

CREATE TABLE `tipo_propiedad` (
  `id_tipo_propiedad` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tipo_propiedad`
--

INSERT INTO `tipo_propiedad` (`id_tipo_propiedad`, `nombre`) VALUES
(1, 'Casa'),
(2, 'PH'),
(3, 'Departamento'),
(4, 'Casa en Barrio Cerrado'),
(18, 'Quinta'),
(6, 'Duplex'),
(7, 'Casa Apto Profecional'),
(8, 'Departamento Apto Profecional'),
(9, 'Chacra'),
(10, 'Cochera'),
(11, 'Depósito'),
(12, 'Loft'),
(13, 'Chalet'),
(14, 'Local'),
(15, 'Isla'),
(16, 'Lote'),
(19, 'Galpón'),
(23, 'Cabañas'),
(21, 'Triplex'),
(22, 'Semipiso'),
(24, 'Entre Ríos 937'),
(27, 'venta en block'),
(28, 'venta en block');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'gabriel', 'acl.gabriel@gmail.com', '$2y$10$Fs03iMCUIiTfcUXPfH9g3.CySBrs0KvX8DPuqbBNx23XWa7001SWm', 'NdGCjCSRo6m1jHFWCvm7lbOAUFvli98RBwPEQtkoFOdrlMrJSKczRqnnoJ0o', '2017-03-01 04:00:00', '2017-03-30 04:00:00'),
(2, 'gabriel', 'joel@gmail.com', '$2y$10$iMkw3NMqOtDzuqI5E1brkuKqvK6FDMpmAS6NaHE4M40zGTNb5YDBy', 'cCs9VRqqu5ViQ3IJZdcyxievc2HHDgZ7vvyNHZ8iwkbRIMOj81A2vZRq8hb4', '2017-03-31 07:10:26', '2017-03-31 07:10:26'),
(3, 'matias', 'matias@romano.com', '$2y$10$YFkP97r9SoeCB9fVxDW61eVyvqSze3sz0kV9rtBwckMMNyPWN4j66', 'JY0PAA1G69VQEO0Z8gMquwPd2bI08h8dQfByfmitD573ApueyBk9TvKGLF8h', '2017-03-31 07:18:54', '2017-03-31 07:18:54'),
(4, 'administrador', 'administrador@guallini.com', '$2y$10$Vpe6yDC.iRozRZCyYI3I..pfgJEsEx57bKtKFfdKAusWk7DOCDsyu', NULL, '2017-04-03 05:29:43', '2017-04-03 05:29:43'),
(5, 'prueba', 'prueba@prueba.com', '$2y$10$Evt37112J8LbeIc64vbiB.9OlU9whFEKtf0T3qidP0oS0KJqWaZKO', NULL, '2017-04-03 05:31:12', '2017-04-03 05:31:12');

-- --------------------------------------------------------

--
-- Table structure for table `zona`
--

CREATE TABLE `zona` (
  `id_zona` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zona`
--

INSERT INTO `zona` (`id_zona`, `nombre`) VALUES
(1, 'Comercial'),
(2, 'Industrial'),
(3, 'Residencial.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aire_acondicionado`
--
ALTER TABLE `aire_acondicionado`
  ADD PRIMARY KEY (`id_aireacondicionado`);

--
-- Indexes for table `artefacto_cocina`
--
ALTER TABLE `artefacto_cocina`
  ADD PRIMARY KEY (`id_artefacto_cocina`);

--
-- Indexes for table `barrio`
--
ALTER TABLE `barrio`
  ADD PRIMARY KEY (`id_barrio`);

--
-- Indexes for table `ciudad`
--
ALTER TABLE `ciudad`
  ADD PRIMARY KEY (`id_ciudad`);

--
-- Indexes for table `cochera`
--
ALTER TABLE `cochera`
  ADD PRIMARY KEY (`id_cocheras`);

--
-- Indexes for table `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`id_estado`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id_pregunta`);

--
-- Indexes for table `imagenes`
--
ALTER TABLE `imagenes`
  ADD PRIMARY KEY (`id_imagen`);

--
-- Indexes for table `latitud`
--
ALTER TABLE `latitud`
  ADD PRIMARY KEY (`id_latitud`,`id_propiedad`),
  ADD UNIQUE KEY `id_latitud` (`id_latitud`);

--
-- Indexes for table `localidad`
--
ALTER TABLE `localidad`
  ADD PRIMARY KEY (`id_localidad`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `moneda`
--
ALTER TABLE `moneda`
  ADD PRIMARY KEY (`id_moneda`);

--
-- Indexes for table `mueble_cocina`
--
ALTER TABLE `mueble_cocina`
  ADD PRIMARY KEY (`id_muebles_cocina`);

--
-- Indexes for table `orientacion`
--
ALTER TABLE `orientacion`
  ADD PRIMARY KEY (`id_orientacion`);

--
-- Indexes for table `partido`
--
ALTER TABLE `partido`
  ADD PRIMARY KEY (`id_partido`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `propiedad`
--
ALTER TABLE `propiedad`
  ADD PRIMARY KEY (`id_propiedad`);

--
-- Indexes for table `propiedad_Ant`
--
ALTER TABLE `propiedad_Ant`
  ADD PRIMARY KEY (`id_propiedad`);

--
-- Indexes for table `provincia`
--
ALTER TABLE `provincia`
  ADD PRIMARY KEY (`id_provincia`);

--
-- Indexes for table `revestimientos`
--
ALTER TABLE `revestimientos`
  ADD PRIMARY KEY (`id_revestimiento`);

--
-- Indexes for table `telefono`
--
ALTER TABLE `telefono`
  ADD PRIMARY KEY (`id_telefono`);

--
-- Indexes for table `tipo_imagen`
--
ALTER TABLE `tipo_imagen`
  ADD PRIMARY KEY (`id_tipo_imagen`);

--
-- Indexes for table `tipo_lavadero`
--
ALTER TABLE `tipo_lavadero`
  ADD PRIMARY KEY (`id_lavadero`);

--
-- Indexes for table `tipo_moneda`
--
ALTER TABLE `tipo_moneda`
  ADD PRIMARY KEY (`id_moneda`);

--
-- Indexes for table `tipo_operacioon`
--
ALTER TABLE `tipo_operacioon`
  ADD PRIMARY KEY (`id_tipo_operacion`);

--
-- Indexes for table `tipo_propiedad`
--
ALTER TABLE `tipo_propiedad`
  ADD PRIMARY KEY (`id_tipo_propiedad`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `zona`
--
ALTER TABLE `zona`
  ADD PRIMARY KEY (`id_zona`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aire_acondicionado`
--
ALTER TABLE `aire_acondicionado`
  MODIFY `id_aireacondicionado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `artefacto_cocina`
--
ALTER TABLE `artefacto_cocina`
  MODIFY `id_artefacto_cocina` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `barrio`
--
ALTER TABLE `barrio`
  MODIFY `id_barrio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=188;
--
-- AUTO_INCREMENT for table `ciudad`
--
ALTER TABLE `ciudad`
  MODIFY `id_ciudad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `cochera`
--
ALTER TABLE `cochera`
  MODIFY `id_cocheras` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `estado`
--
ALTER TABLE `estado`
  MODIFY `id_estado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `id_pregunta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `imagenes`
--
ALTER TABLE `imagenes`
  MODIFY `id_imagen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1056;
--
-- AUTO_INCREMENT for table `latitud`
--
ALTER TABLE `latitud`
  MODIFY `id_latitud` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `localidad`
--
ALTER TABLE `localidad`
  MODIFY `id_localidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `moneda`
--
ALTER TABLE `moneda`
  MODIFY `id_moneda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `mueble_cocina`
--
ALTER TABLE `mueble_cocina`
  MODIFY `id_muebles_cocina` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `orientacion`
--
ALTER TABLE `orientacion`
  MODIFY `id_orientacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `partido`
--
ALTER TABLE `partido`
  MODIFY `id_partido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `propiedad`
--
ALTER TABLE `propiedad`
  MODIFY `id_propiedad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=292;
--
-- AUTO_INCREMENT for table `propiedad_Ant`
--
ALTER TABLE `propiedad_Ant`
  MODIFY `id_propiedad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=225;
--
-- AUTO_INCREMENT for table `provincia`
--
ALTER TABLE `provincia`
  MODIFY `id_provincia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `revestimientos`
--
ALTER TABLE `revestimientos`
  MODIFY `id_revestimiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `telefono`
--
ALTER TABLE `telefono`
  MODIFY `id_telefono` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tipo_imagen`
--
ALTER TABLE `tipo_imagen`
  MODIFY `id_tipo_imagen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `tipo_lavadero`
--
ALTER TABLE `tipo_lavadero`
  MODIFY `id_lavadero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tipo_moneda`
--
ALTER TABLE `tipo_moneda`
  MODIFY `id_moneda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tipo_operacioon`
--
ALTER TABLE `tipo_operacioon`
  MODIFY `id_tipo_operacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tipo_propiedad`
--
ALTER TABLE `tipo_propiedad`
  MODIFY `id_tipo_propiedad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `zona`
--
ALTER TABLE `zona`
  MODIFY `id_zona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
