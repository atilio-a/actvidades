-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 27-09-2024 a las 09:50:18
-- Versión del servidor: 5.7.36-log
-- Versión de PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `c2082001_activ`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actions`
--

CREATE TABLE `actions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_id` bigint(20) UNSIGNED DEFAULT NULL,
  `localidad_id` bigint(20) UNSIGNED DEFAULT NULL,
  `direccion` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefono` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `monto_estimado` decimal(14,2) DEFAULT NULL,
  `estado` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PENDIENTE',
  `codigo` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `descripcion` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `repuesta` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `respuesta_fecha` date DEFAULT NULL,
  `ubicacion` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `programa` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `proyecto` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actions_categories`
--

CREATE TABLE `actions_categories` (
  `id` bigint(20) NOT NULL,
  `action_id` bigint(20) NOT NULL,
  `category` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actions_entities`
--

CREATE TABLE `actions_entities` (
  `id` bigint(20) NOT NULL,
  `action_id` bigint(20) NOT NULL,
  `entity_id` bigint(20) NOT NULL,
  `descripcion` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `areas`
--

CREATE TABLE `areas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descripcion` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `responsable` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ubicacion` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `finca_id` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `areas`
--

INSERT INTO `areas` (`id`, `nombre`, `descripcion`, `responsable`, `ubicacion`, `finca_id`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 'seccion 2', 'Lavayen', NULL, NULL, 1, 2, '2023-11-30 19:35:16', '2023-11-30 19:35:16'),
(3, 'area 3', 'seccc333', 'antonio', 'arrayanal', 2, 1, '2023-12-03 00:42:00', '2023-12-03 01:34:15'),
(4, 'areea 1', 'area 1 prueba', 'marco', 'mendieta', 1, 1, '2023-12-03 01:31:25', '2023-12-03 01:31:25'),
(5, 'Marco Antonio', 'urea', 'antonio', 'arrayanal', 1, 1, '2023-12-04 16:11:35', '2023-12-04 16:11:35'),
(6, 'Marco Antonio', 'MUÑECA', 'antonio', 'mendieta', 3, 1, '2023-12-04 17:01:08', '2023-12-04 17:01:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `nombre` int(11) NOT NULL,
  `descripcion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuentas`
--

CREATE TABLE `cuentas` (
  `id` int(11) NOT NULL,
  `numero` varchar(50) NOT NULL,
  `banco` varchar(50) NOT NULL,
  `cbu` varchar(50) DEFAULT NULL,
  `alias` varchar(50) DEFAULT NULL,
  `dolar` tinyint(1) DEFAULT '0',
  `descripcion` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cuentas`
--

INSERT INTO `cuentas` (`id`, `numero`, `banco`, `cbu`, `alias`, `dolar`, `descripcion`, `created_at`, `updated_at`) VALUES
(1, 'etreregter', 'macro', '1312431', 'ttttttttttttttttt', 0, NULL, NULL, NULL),
(2, 'hyrtyrt', 'fgsdeghsd', '5657', 'iiiiiiiiiiiiiii', 1, NULL, NULL, NULL),
(3, 'dfgdf', 'sdgtfd', '46436537356', NULL, 0, NULL, '2023-11-02 21:15:29', '2023-11-02 21:15:29'),
(4, '354525', 'frances234', 'marco.farfan', NULL, 0, NULL, '2023-11-02 21:16:08', '2023-12-01 08:49:02'),
(5, 'hjkhhhj', 'frances', '76837864', NULL, 0, NULL, '2023-11-02 21:17:47', '2023-11-02 21:17:47'),
(6, '345235325', 'macro22', '2147483647', NULL, 0, NULL, '2023-11-02 21:19:39', '2023-11-02 21:19:39'),
(7, '77777', '234532', '99999', NULL, 0, NULL, '2023-11-02 21:27:30', '2023-11-02 21:27:30'),
(8, '54645364356', 'INGRESE EL BAefrtewtNCO', 'marco.farfan', NULL, 0, NULL, '2023-12-04 19:15:37', '2023-12-04 19:15:37'),
(9, '444', '3333', '55555', NULL, 0, NULL, '2023-12-04 19:19:03', '2023-12-04 19:19:03'),
(10, '88864536', 'bancoootyrtey', '9999977777', 'cambioo', 0, 'seccc0000', '2023-12-04 19:20:55', '2023-12-19 23:18:24'),
(11, 'sdfsda', 'dolar', 'sdfsa', 'fsdaf', 1, 'fsdaf', '2023-12-19 20:47:42', '2023-12-19 20:47:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuentas_orders`
--

CREATE TABLE `cuentas_orders` (
  `id` int(11) NOT NULL,
  `cuenta_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `cheque` varchar(50) DEFAULT NULL,
  `tipo_cheque` varchar(50) DEFAULT NULL,
  `monto` decimal(10,0) NOT NULL,
  `vencimiento` date DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `documento` int(11) DEFAULT NULL,
  `cuil` varchar(13) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `calle` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numero` int(4) DEFAULT NULL,
  `departamento` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `localidad` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entreCalle` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imagen_dni` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imagen_impuesto` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imagen_propiedad` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nombre_cotitular` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apellido_cotitular` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `documento_cotitular` int(11) DEFAULT NULL,
  `telefono_cotitular` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentesco_cotitular` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tipo_comercio` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `domicilio_comercial` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `calle_comercial` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numero_comercial` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `departamento_comercial` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `localidad_comercial` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zona` int(3) DEFAULT NULL,
  `codigo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `customers`
--

INSERT INTO `customers` (`id`, `first_name`, `last_name`, `documento`, `cuil`, `email`, `phone`, `calle`, `numero`, `departamento`, `localidad`, `entreCalle`, `address`, `avatar`, `imagen_dni`, `imagen_impuesto`, `imagen_propiedad`, `user_id`, `created_at`, `updated_at`, `nombre_cotitular`, `apellido_cotitular`, `documento_cotitular`, `telefono_cotitular`, `parentesco_cotitular`, `tipo_comercio`, `domicilio_comercial`, `calle_comercial`, `numero_comercial`, `departamento_comercial`, `localidad_comercial`, `zona`, `codigo`) VALUES
(10, 'DANIEL DANTE', 'CARI', 36637248, '36637248', NULL, NULL, 'JUAN BAUTISTA ALBERDI', 433, 'ALBERDI', 'LA QUIACA', NULL, NULL, '', '', '', '', 10, '2024-05-19 02:12:46', '2024-05-19 02:12:46', NULL, NULL, NULL, NULL, NULL, 'DESPENSA', 'JUAN BAUTISTA ALBERDI', '433', NULL, 'ALBERDI', 'LA QUIACA', 4, NULL),
(11, 'YANINA', 'MENEGHINI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', 10, '2024-05-28 21:32:09', '2024-05-28 21:32:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'PAUL JAVIER', 'LINARES', 40441356, NULL, NULL, '3884152080', 'MONTEAGUDO', 973, 'CORONEL ARIAS', 'SAN SALVADOR DE JUJUY', NULL, NULL, '', '', '', '', 10, '2024-06-02 17:28:33', '2024-06-02 17:28:33', NULL, NULL, NULL, NULL, NULL, 'POLLERIA', 'MONTEAGUDO', 'MONTEAGUADO', '973', 'CORONEL ARIAS', 'SAN SALVADOR DE JUJUY', 5, NULL),
(13, 'CASTRO', 'ADOLFO GUSTAVO', 23145435, '23145435', NULL, '3884242596', 'PERU', 1381, 'MARIANO MORENO', 'SAN SALVADOR DE JUJUY', NULL, NULL, '', '', '', '', 10, '2024-06-09 21:52:42', '2024-06-09 21:52:42', NULL, NULL, NULL, NULL, NULL, 'CATERING', 'PERU', 'PERU', '1381', 'MARIANO MORENO', 'SAN SALVADOR DE JUJUY', 5, NULL),
(14, 'VIVIANA NOEMI', 'MENENDEZ', 20107948, '20107948', NULL, NULL, 'AV. LA INTERMEDIA', 1048, 'TUPAC AMARU ALTO COMEDERO', 'SAN SALVADOR DE JUJUY', NULL, NULL, '', '', '', '', 10, '2024-06-09 21:54:24', '2024-06-09 21:54:24', NULL, NULL, NULL, NULL, NULL, 'LIBRERIA', 'AV. LA INTERMEDIA', 'AV, LA INTERMEDIA', '1048', 'TUPAC AMARU ALTO COMEDERO', 'SAN SALVADOR DE JUJUY', 5, NULL),
(15, 'ROCIO ISABEL', 'CARI', 40565912, '40565912', NULL, NULL, 'MZA E LOTE 1', NULL, '40 viv ATSA ALTO COMEDERO', 'SAN SALVADOR DE JUJUY', NULL, 'MZA E LOTE 1 40 VIVIENDAS', '', '', '', '', 10, '2024-06-09 21:56:54', '2024-06-09 21:56:54', NULL, NULL, NULL, NULL, NULL, 'DESPENSA', 'MZA E LOTE 1', 'MZA E LOTE 1', NULL, 'ATSA', 'SAN SALVADOR DE JUJUY', 5, NULL),
(16, 'LUCIANA RUTH', 'CABANA', 32971342, '32971342', NULL, '3885008483', '33 ORIENTALES', 1056, 'CORONEL ARIAS', 'SAN SALVADOR DE JUJUY', NULL, '33 ORIENTALES 1056', '', '', '', '', 10, '2024-06-09 21:59:26', '2024-06-09 21:59:26', NULL, NULL, NULL, NULL, NULL, 'POLLERIA', '33 ORIENTALE S1056', '33 ORIENTALES', '1056', 'CORONEL ARIAS', 'SAN SALVADOR DE JUJUY', 5, NULL),
(17, 'GUILLERMO FERNANDO', 'BENECIA', 42453199, '42453199', NULL, '3885758023', 'AV. COSTANERA', 13, 'CAMPO VERDE', 'SAN SALVADOR DE JUJUY', NULL, 'AV. COSTANERA 13', '', '', '', '', 10, '2024-06-09 22:00:03', '2024-06-09 22:02:02', NULL, NULL, NULL, NULL, NULL, NULL, 'AV. COSTANERA', NULL, NULL, NULL, NULL, 5, NULL),
(18, 'PATRICIA', 'FLORES', 14208711, '14208711', NULL, '3884579739', 'AV. COSTANERA', 14, 'CAMPO VERDE', 'SAN SALVADOR DE JUJUY', NULL, 'AV.COSTANERA 14', '', '', '', '', 10, '2024-06-09 22:04:11', '2024-06-09 22:04:11', NULL, NULL, NULL, NULL, NULL, 'SANDWICHERIA', 'AV. COSTANERA', 'AV. COSTANERA', '14', 'CAMPO VERDE', 'SAN SALVADOR DE JUJUY', 5, NULL),
(19, 'LIDIA', 'JIMENEZ', 41820567, '41820567', NULL, NULL, 'AV BOLIVAR', 325, 'BARRIO NORTE', 'LA QUIACA', NULL, 'BOLICAR 325', '', '', '', '', 10, '2024-07-08 02:25:36', '2024-07-08 02:25:36', NULL, NULL, NULL, NULL, NULL, 'FIAMBRERIA', 'RIVADAVIA ESQ PELLEGRINI', 'RIVADAVIA ESQ PELLEGRINI', '110', 'CENTRO', 'LA QUIACA', 4, NULL),
(20, 'OMAR GONZALO', 'GUANCO', 31281627, '31281627', NULL, NULL, 'CORRIENTES', 480, 'CENTRO', 'HUMAHUACA', NULL, 'CORRIENTES 480', '', '', '', '', 10, '2024-07-08 02:26:57', '2024-07-08 02:26:57', NULL, NULL, NULL, NULL, NULL, NULL, 'CORRIENTES', 'CORRIENTES', '480', 'CENTRO', 'HUMAHUACA', 4, NULL),
(21, 'GLADYS EMILIA', 'CRUZ', 28763093, '28763093', NULL, NULL, 'TABLADITAS 830 VIVIENDAS', 830, 'BELLA VISTA', 'ABRA PAMPA', NULL, 'TABLADITA 830 VIVIENDAS', '', '', '', '', 10, '2024-07-08 02:28:44', '2024-07-08 02:28:44', NULL, NULL, NULL, NULL, NULL, NULL, 'MERCADO MUNICIPAL', 'MERCADO MUNICIPAL', '55', 'CENTRO', 'ABRA PAMPA', 4, NULL),
(22, 'SILVIA RAMONA', 'MARTINEZ', 33185816, '33185816', NULL, NULL, 'SALTA', 243, 'PROVINCIAS ARGETINAS', 'ABRA PAMPA', NULL, 'SALTA 243', '', '', '', '', 10, '2024-07-08 02:30:16', '2024-07-08 02:30:16', NULL, NULL, NULL, NULL, NULL, 'JUGUETERIA', 'MERCADO', 'MERCADO 1 DE MAYO LOCAL', '44', 'CENTRO', 'ABRA PAMPA', 4, NULL),
(23, 'ANTONIA JULIETA', 'CALIZAYA', 24887339, '24887339', NULL, NULL, 'JUSTO JOSE DE URQUIZA', 33, '23 DE AGOSTO', NULL, NULL, 'JUSTO JOSE DE URQUIZA 33', '', '', '', '', 10, '2024-07-08 02:32:04', '2024-07-08 02:32:04', NULL, NULL, NULL, NULL, NULL, NULL, 'MERCADO MUNICIPAL', 'MERCADO MUNICIPAL LOCAL', '5', 'CENTRO', NULL, 4, NULL),
(24, 'SILISQUE', 'ANASTACIA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', 10, '2024-09-18 15:28:06', '2024-09-18 15:28:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'ANDREA', 'SALINAS', 27254244, NULL, NULL, NULL, 'Mza 4 Lote 22', NULL, 'Gauchito Gil', 'Salta', NULL, 'Mza 4 Lote 22', '', '', '', '', 10, '2024-09-24 23:03:38', '2024-09-24 23:03:38', NULL, NULL, NULL, NULL, NULL, 'Kiosco', 'Av. Discípulo', 'Av Discípulo', '4400', 'Gauchito Gil', 'Salta', 6, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entities`
--

CREATE TABLE `entities` (
  `id` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `entity_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `create_at` date NOT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  `mail` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `files`
--

CREATE TABLE `files` (
  `id` bigint(20) NOT NULL,
  `path` varchar(500) NOT NULL,
  `descripcion` varchar(500) DEFAULT NULL,
  `tag` varchar(500) DEFAULT NULL,
  `entity_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fincas`
--

CREATE TABLE `fincas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descripcion` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `fincas`
--

INSERT INTO `fincas` (`id`, `nombre`, `descripcion`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Los Molinos', 'Los Molinos', 1, '2023-11-29 21:43:43', '2023-11-29 21:43:43'),
(2, 'Lavayen', 'Lavayen', 2, '2023-11-30 19:35:16', '2023-11-30 19:35:16'),
(3, 'finca Marco Antonio', 'marco farfan', 1, '2023-12-03 00:44:24', '2023-12-03 00:46:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_04_19_081616_create_products_table', 1),
(5, '2020_04_22_181602_add_quantity_to_products_table', 1),
(6, '2020_04_24_170630_create_customers_table', 1),
(7, '2020_04_27_054355_create_settings_table', 1),
(8, '2020_04_30_053758_create_user_cart_table', 1),
(9, '2020_05_04_165730_create_orders_table', 1),
(10, '2020_05_04_165749_create_order_items_table', 1),
(11, '2020_05_04_165822_create_payments_table', 1),
(12, '2022_03_21_125336_change_price_column', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `direccion` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefono` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `cuenta_id` int(11) DEFAULT NULL,
  `avatar` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `monto` decimal(14,2) DEFAULT NULL,
  `cuotas` int(11) NOT NULL,
  `tasa` decimal(5,2) DEFAULT NULL,
  `estado` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PENDIENTE',
  `codigo` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `descripcion` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vencimiento` date DEFAULT NULL,
  `cheque` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `periodo` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zona` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `direccion`, `telefono`, `user_id`, `cuenta_id`, `avatar`, `monto`, `cuotas`, `tasa`, `estado`, `codigo`, `created_at`, `updated_at`, `fecha`, `descripcion`, `vencimiento`, `cheque`, `periodo`, `zona`) VALUES
(43, 8, NULL, NULL, 10, 1, '', '126000.00', 4, '6.50', 'PENDIENTE', '8/1', '2024-05-19 02:00:35', '2024-05-19 02:03:12', '2024-05-11', '100000', '2024-06-08', NULL, 'Semanal', 4),
(44, 8, NULL, NULL, 10, 1, '', '12600.00', 4, '6.50', 'RECHAZADO', '8/2', '2024-05-21 03:53:16', '2024-07-08 02:40:06', '2024-05-21', '10000', '2024-06-18', NULL, 'Semanal', 4),
(45, 12, NULL, NULL, 10, 1, '', '63000.00', 4, '6.50', 'RECHAZADO', '12/1', '2024-06-09 22:05:39', '2024-07-08 02:39:47', '2024-05-24', '50000', '2024-06-21', NULL, 'Semanal', 5),
(46, 19, NULL, NULL, 10, 1, '', '764000.00', 14, '6.50', 'PENDIENTE', '19/1', '2024-07-08 02:33:10', '2024-07-08 02:33:10', '2024-07-07', '400000', '2024-10-13', NULL, 'Semanal', 4),
(47, 20, NULL, NULL, 10, 1, '', '825000.00', 10, '6.50', 'PENDIENTE', '20/1', '2024-07-08 02:33:49', '2024-07-08 02:33:49', '2024-07-07', '500000', '2024-09-15', NULL, 'Semanal', 4),
(48, 21, NULL, NULL, 10, 1, '', '382000.00', 14, '6.50', 'PENDIENTE', '21/1', '2024-07-08 02:34:31', '2024-07-08 02:34:31', '2024-07-06', '200000', '2024-10-12', NULL, 'Semanal', 4),
(49, 22, NULL, NULL, 10, 1, '', '477500.00', 14, '6.50', 'PENDIENTE', '22/1', '2024-07-08 02:35:03', '2024-07-08 02:35:03', '2024-07-07', '250000', '2024-10-13', NULL, 'Semanal', 4),
(50, 23, NULL, NULL, 10, 1, '', '152000.00', 8, '6.50', 'RECHAZADO', '23/1', '2024-07-08 02:35:31', '2024-07-08 02:41:39', '2024-07-07', '100000', '2024-09-01', NULL, 'Semanal', 4),
(51, 23, NULL, NULL, 10, 1, '', '152000.00', 8, '6.50', 'PENDIENTE', '23/1', '2024-07-08 02:35:31', '2024-07-08 02:35:31', '2024-07-07', '100000', '2024-09-01', NULL, 'Semanal', 4),
(57, 25, NULL, NULL, 12, 1, '', '695000.00', 6, '6.50', 'PENDIENTE', '25/1', '2024-09-24 23:05:02', '2024-09-25 16:55:56', '2024-09-20', '500000', '2024-11-01', NULL, 'Semanal', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `price` decimal(14,2) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '1',
  `pagado` decimal(14,2) DEFAULT NULL,
  `estado` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha_pago` date DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `order_items`
--

INSERT INTO `order_items` (`id`, `price`, `quantity`, `pagado`, `estado`, `fecha_pago`, `order_id`, `payment_id`, `product_id`, `created_at`, `updated_at`) VALUES
(121, '31500.00', 1, NULL, NULL, '2024-05-18', 43, NULL, 1, '2024-05-19 02:03:12', '2024-05-19 02:03:12'),
(122, '31500.00', 2, NULL, NULL, '2024-05-25', 43, NULL, 1, '2024-05-19 02:03:12', '2024-05-19 02:03:12'),
(123, '31500.00', 3, NULL, NULL, '2024-06-01', 43, NULL, 1, '2024-05-19 02:03:12', '2024-05-19 02:03:12'),
(124, '31500.00', 4, NULL, NULL, '2024-06-08', 43, NULL, 1, '2024-05-19 02:03:12', '2024-05-19 02:03:12'),
(138, '54571.00', 1, NULL, 'SIN PAGAR', '2024-07-14', 46, NULL, 1, '2024-07-08 02:33:10', '2024-07-08 02:33:10'),
(139, '54571.00', 2, NULL, 'SIN PAGAR', '2024-07-21', 46, NULL, 1, '2024-07-08 02:33:10', '2024-07-08 02:33:10'),
(140, '54571.00', 3, NULL, 'SIN PAGAR', '2024-07-28', 46, NULL, 1, '2024-07-08 02:33:11', '2024-07-08 02:33:11'),
(141, '54571.00', 4, NULL, 'SIN PAGAR', '2024-08-04', 46, NULL, 1, '2024-07-08 02:33:11', '2024-07-08 02:33:11'),
(142, '54571.00', 5, NULL, 'SIN PAGAR', '2024-08-11', 46, NULL, 1, '2024-07-08 02:33:11', '2024-07-08 02:33:11'),
(143, '54571.00', 6, NULL, 'SIN PAGAR', '2024-08-18', 46, NULL, 1, '2024-07-08 02:33:11', '2024-07-08 02:33:11'),
(144, '54571.00', 7, NULL, 'SIN PAGAR', '2024-08-25', 46, NULL, 1, '2024-07-08 02:33:11', '2024-07-08 02:33:11'),
(145, '54571.00', 8, NULL, 'SIN PAGAR', '2024-09-01', 46, NULL, 1, '2024-07-08 02:33:11', '2024-07-08 02:33:11'),
(146, '54571.00', 9, NULL, 'SIN PAGAR', '2024-09-08', 46, NULL, 1, '2024-07-08 02:33:11', '2024-07-08 02:33:11'),
(147, '54571.00', 10, NULL, 'SIN PAGAR', '2024-09-15', 46, NULL, 1, '2024-07-08 02:33:11', '2024-07-08 02:33:11'),
(148, '54571.00', 11, NULL, 'SIN PAGAR', '2024-09-22', 46, NULL, 1, '2024-07-08 02:33:11', '2024-07-08 02:33:11'),
(149, '54571.00', 12, NULL, 'SIN PAGAR', '2024-09-29', 46, NULL, 1, '2024-07-08 02:33:11', '2024-07-08 02:33:11'),
(150, '54571.00', 13, NULL, 'SIN PAGAR', '2024-10-06', 46, NULL, 1, '2024-07-08 02:33:11', '2024-07-08 02:33:11'),
(151, '54571.00', 14, NULL, 'SIN PAGAR', '2024-10-13', 46, NULL, 1, '2024-07-08 02:33:11', '2024-07-08 02:33:11'),
(152, '82500.00', 1, NULL, 'SIN PAGAR', '2024-07-14', 47, NULL, 1, '2024-07-08 02:33:50', '2024-07-08 02:33:50'),
(153, '82500.00', 2, '82500.00', 'PAGADO', '2024-07-21', 47, 25, 1, '2024-07-08 02:33:50', '2024-07-16 04:55:54'),
(154, '82500.00', 3, NULL, 'SIN PAGAR', '2024-07-28', 47, NULL, 1, '2024-07-08 02:33:50', '2024-07-08 02:33:50'),
(155, '82500.00', 4, NULL, 'SIN PAGAR', '2024-08-04', 47, NULL, 1, '2024-07-08 02:33:50', '2024-07-08 02:33:50'),
(156, '82500.00', 5, NULL, 'SIN PAGAR', '2024-08-11', 47, NULL, 1, '2024-07-08 02:33:50', '2024-07-08 02:33:50'),
(157, '82500.00', 6, NULL, 'SIN PAGAR', '2024-08-18', 47, NULL, 1, '2024-07-08 02:33:50', '2024-07-08 02:33:50'),
(158, '82500.00', 7, NULL, 'SIN PAGAR', '2024-08-25', 47, NULL, 1, '2024-07-08 02:33:50', '2024-07-08 02:33:50'),
(159, '82500.00', 8, NULL, 'SIN PAGAR', '2024-09-01', 47, NULL, 1, '2024-07-08 02:33:50', '2024-07-08 02:33:50'),
(160, '82500.00', 9, NULL, 'SIN PAGAR', '2024-09-08', 47, NULL, 1, '2024-07-08 02:33:50', '2024-07-08 02:33:50'),
(161, '82500.00', 10, NULL, 'SIN PAGAR', '2024-09-15', 47, NULL, 1, '2024-07-08 02:33:50', '2024-07-08 02:33:50'),
(162, '27285.00', 1, NULL, 'SIN PAGAR', '2024-07-13', 48, NULL, 1, '2024-07-08 02:34:31', '2024-07-08 02:34:31'),
(163, '27285.00', 2, '27285.00', 'PAGADO', '2024-07-20', 48, 24, 1, '2024-07-08 02:34:31', '2024-07-16 04:55:09'),
(164, '27285.00', 3, NULL, 'SIN PAGAR', '2024-07-27', 48, NULL, 1, '2024-07-08 02:34:31', '2024-07-08 02:34:31'),
(165, '27285.00', 4, NULL, 'SIN PAGAR', '2024-08-03', 48, NULL, 1, '2024-07-08 02:34:31', '2024-07-08 02:34:31'),
(166, '27285.00', 5, NULL, 'SIN PAGAR', '2024-08-10', 48, NULL, 1, '2024-07-08 02:34:31', '2024-07-08 02:34:31'),
(167, '27285.00', 6, NULL, 'SIN PAGAR', '2024-08-17', 48, NULL, 1, '2024-07-08 02:34:31', '2024-07-08 02:34:31'),
(168, '27285.00', 7, NULL, 'SIN PAGAR', '2024-08-24', 48, NULL, 1, '2024-07-08 02:34:31', '2024-07-08 02:34:31'),
(169, '27285.00', 8, NULL, 'SIN PAGAR', '2024-08-31', 48, NULL, 1, '2024-07-08 02:34:31', '2024-07-08 02:34:31'),
(170, '27285.00', 9, NULL, 'SIN PAGAR', '2024-09-07', 48, NULL, 1, '2024-07-08 02:34:31', '2024-07-08 02:34:31'),
(171, '27285.00', 10, NULL, 'SIN PAGAR', '2024-09-14', 48, NULL, 1, '2024-07-08 02:34:31', '2024-07-08 02:34:31'),
(172, '27285.00', 11, NULL, 'SIN PAGAR', '2024-09-21', 48, NULL, 1, '2024-07-08 02:34:31', '2024-07-08 02:34:31'),
(173, '27285.00', 12, NULL, 'SIN PAGAR', '2024-09-28', 48, NULL, 1, '2024-07-08 02:34:31', '2024-07-08 02:34:31'),
(174, '27285.00', 13, NULL, 'SIN PAGAR', '2024-10-05', 48, NULL, 1, '2024-07-08 02:34:31', '2024-07-08 02:34:31'),
(175, '27285.00', 14, NULL, 'SIN PAGAR', '2024-10-12', 48, NULL, 1, '2024-07-08 02:34:31', '2024-07-08 02:34:31'),
(176, '34107.00', 1, NULL, 'SIN PAGAR', '2024-07-14', 49, NULL, 1, '2024-07-08 02:35:03', '2024-07-08 02:35:03'),
(177, '34107.00', 2, '34107.00', 'PAGADO', '2024-07-21', 49, 22, 1, '2024-07-08 02:35:03', '2024-07-16 04:53:23'),
(178, '34107.00', 3, NULL, 'SIN PAGAR', '2024-07-28', 49, NULL, 1, '2024-07-08 02:35:04', '2024-07-08 02:35:04'),
(179, '34107.00', 4, NULL, 'SIN PAGAR', '2024-08-04', 49, NULL, 1, '2024-07-08 02:35:04', '2024-07-08 02:35:04'),
(180, '34107.00', 5, NULL, 'SIN PAGAR', '2024-08-11', 49, NULL, 1, '2024-07-08 02:35:04', '2024-07-08 02:35:04'),
(181, '34107.00', 6, NULL, 'SIN PAGAR', '2024-08-18', 49, NULL, 1, '2024-07-08 02:35:04', '2024-07-08 02:35:04'),
(182, '34107.00', 7, NULL, 'SIN PAGAR', '2024-08-25', 49, NULL, 1, '2024-07-08 02:35:04', '2024-07-08 02:35:04'),
(183, '34107.00', 8, NULL, 'SIN PAGAR', '2024-09-01', 49, NULL, 1, '2024-07-08 02:35:04', '2024-07-08 02:35:04'),
(184, '34107.00', 9, NULL, 'SIN PAGAR', '2024-09-08', 49, NULL, 1, '2024-07-08 02:35:04', '2024-07-08 02:35:04'),
(185, '34107.00', 10, NULL, 'SIN PAGAR', '2024-09-15', 49, NULL, 1, '2024-07-08 02:35:04', '2024-07-08 02:35:04'),
(186, '34107.00', 11, '34107.00', 'PAGADO', '2024-09-22', 49, 30, 1, '2024-07-08 02:35:04', '2024-09-18 15:34:24'),
(187, '34107.00', 12, NULL, 'SIN PAGAR', '2024-09-29', 49, NULL, 1, '2024-07-08 02:35:04', '2024-07-08 02:35:04'),
(188, '34107.00', 13, NULL, 'SIN PAGAR', '2024-10-06', 49, NULL, 1, '2024-07-08 02:35:04', '2024-07-08 02:35:04'),
(189, '34107.00', 14, NULL, 'SIN PAGAR', '2024-10-13', 49, NULL, 1, '2024-07-08 02:35:04', '2024-07-08 02:35:04'),
(191, '19000.00', 1, NULL, 'SIN PAGAR', '2024-07-14', 51, NULL, 1, '2024-07-08 02:35:31', '2024-07-08 02:35:31'),
(193, '19000.00', 2, '19000.00', 'PAGADO', '2024-07-21', 51, 20, 1, '2024-07-08 02:35:31', '2024-07-16 04:52:15'),
(195, '19000.00', 3, NULL, 'SIN PAGAR', '2024-07-28', 51, NULL, 1, '2024-07-08 02:35:31', '2024-07-08 02:35:31'),
(197, '19000.00', 4, NULL, 'SIN PAGAR', '2024-08-04', 51, NULL, 1, '2024-07-08 02:35:32', '2024-07-08 02:35:32'),
(199, '19000.00', 5, NULL, 'SIN PAGAR', '2024-08-11', 51, NULL, 1, '2024-07-08 02:35:32', '2024-07-08 02:35:32'),
(201, '19000.00', 6, NULL, 'SIN PAGAR', '2024-08-18', 51, NULL, 1, '2024-07-08 02:35:32', '2024-07-08 02:35:32'),
(203, '19000.00', 7, NULL, 'SIN PAGAR', '2024-08-25', 51, NULL, 1, '2024-07-08 02:35:32', '2024-07-08 02:35:32'),
(205, '19000.00', 8, NULL, 'SIN PAGAR', '2024-09-01', 51, NULL, 1, '2024-07-08 02:35:32', '2024-07-08 02:35:32'),
(210, '3150.00', 1, NULL, NULL, '2024-05-28', 44, NULL, 1, '2024-07-08 02:40:06', '2024-07-08 02:40:06'),
(211, '3150.00', 2, NULL, NULL, '2024-06-04', 44, NULL, 1, '2024-07-08 02:40:06', '2024-07-08 02:40:06'),
(212, '3150.00', 3, NULL, NULL, '2024-06-11', 44, NULL, 1, '2024-07-08 02:40:06', '2024-07-08 02:40:06'),
(213, '3150.00', 4, NULL, NULL, '2024-06-18', 44, NULL, 1, '2024-07-08 02:40:06', '2024-07-08 02:40:06'),
(214, '15750.00', 1, NULL, NULL, '2024-05-31', 45, NULL, 1, '2024-07-08 02:40:24', '2024-07-08 02:40:24'),
(215, '15750.00', 2, NULL, NULL, '2024-06-07', 45, NULL, 1, '2024-07-08 02:40:24', '2024-07-08 02:40:24'),
(216, '15750.00', 3, NULL, NULL, '2024-06-14', 45, NULL, 1, '2024-07-08 02:40:24', '2024-07-08 02:40:24'),
(217, '15750.00', 4, NULL, NULL, '2024-06-21', 45, NULL, 1, '2024-07-08 02:40:24', '2024-07-08 02:40:24'),
(218, '19000.00', 1, NULL, NULL, '2024-07-14', 50, NULL, 1, '2024-07-08 02:41:39', '2024-07-08 02:41:39'),
(219, '19000.00', 2, NULL, NULL, '2024-07-21', 50, NULL, 1, '2024-07-08 02:41:39', '2024-07-08 02:41:39'),
(220, '19000.00', 3, NULL, NULL, '2024-07-28', 50, NULL, 1, '2024-07-08 02:41:39', '2024-07-08 02:41:39'),
(221, '19000.00', 4, NULL, NULL, '2024-08-04', 50, NULL, 1, '2024-07-08 02:41:39', '2024-07-08 02:41:39'),
(222, '19000.00', 5, NULL, NULL, '2024-08-11', 50, NULL, 1, '2024-07-08 02:41:39', '2024-07-08 02:41:39'),
(223, '19000.00', 6, NULL, NULL, '2024-08-18', 50, NULL, 1, '2024-07-08 02:41:39', '2024-07-08 02:41:39'),
(224, '19000.00', 7, NULL, NULL, '2024-08-25', 50, NULL, 1, '2024-07-08 02:41:39', '2024-07-08 02:41:39'),
(225, '19000.00', 8, NULL, NULL, '2024-09-01', 50, NULL, 1, '2024-07-08 02:41:39', '2024-07-08 02:41:39'),
(259, '115833.33', 1, NULL, NULL, '2024-09-27', 57, NULL, 1, '2024-09-25 16:55:56', '2024-09-25 16:55:56'),
(260, '115833.33', 2, NULL, NULL, '2024-10-04', 57, NULL, 1, '2024-09-25 16:55:56', '2024-09-25 16:55:56'),
(261, '115833.33', 3, NULL, NULL, '2024-10-11', 57, NULL, 1, '2024-09-25 16:55:56', '2024-09-25 16:55:56'),
(262, '115833.33', 4, NULL, NULL, '2024-10-18', 57, NULL, 1, '2024-09-25 16:55:56', '2024-09-25 16:55:56'),
(263, '115833.33', 5, NULL, NULL, '2024-10-25', 57, NULL, 1, '2024-09-25 16:55:56', '2024-09-25 16:55:56'),
(264, '115833.33', 6, NULL, NULL, '2024-11-01', 57, NULL, 1, '2024-09-25 16:55:56', '2024-09-25 16:55:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `order_secciones`
--

CREATE TABLE `order_secciones` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `seccion_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(14,2) NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `payments`
--

INSERT INTO `payments` (`id`, `amount`, `order_id`, `date`, `user_id`, `created_at`, `updated_at`) VALUES
(5, '23166.67', 40, '2024-02-19', 1, '2024-02-19 15:05:19', '2024-02-19 15:05:19'),
(6, '38100.00', 41, '2024-02-22', 1, '2024-02-22 14:36:01', '2024-02-22 14:36:01'),
(7, '23166.67', 40, '2024-02-23', 1, '2024-02-23 16:10:40', '2024-02-23 16:10:40'),
(8, '22999.67', 40, '2024-02-23', 1, '2024-02-23 18:46:04', '2024-02-23 18:46:04'),
(9, '23166.67', 40, '2024-02-28', 3, '2024-02-28 14:20:41', '2024-02-28 14:20:41'),
(10, '500.00', 34, '2024-03-04', 1, '2024-03-04 15:49:08', '2024-03-04 15:49:08'),
(11, '23166.67', 40, '2024-03-26', 3, '2024-03-26 13:59:57', '2024-03-26 13:59:57'),
(12, '23166.67', 40, '2024-03-26', 3, '2024-03-26 14:00:15', '2024-03-26 14:00:15'),
(13, '23166.67', 39, '2024-03-26', 3, '2024-03-26 14:13:41', '2024-03-26 14:13:41'),
(14, '20900.00', 38, '2024-03-26', 3, '2024-03-26 14:49:55', '2024-03-26 14:49:55'),
(15, '38100.00', 41, '2024-03-26', 3, '2024-03-26 15:34:40', '2024-03-26 15:34:40'),
(16, '650.00', 35, '2024-03-26', 1, '2024-03-26 18:17:18', '2024-03-26 18:17:18'),
(17, '20000.67', 40, '2024-03-27', 1, '2024-03-27 17:24:22', '2024-03-27 17:24:22'),
(18, '20000.67', 40, '2024-03-27', 1, '2024-03-27 17:25:15', '2024-03-27 17:25:15'),
(19, '500.00', 36, '2024-08-29', 3, '2024-04-25 01:41:58', '2024-05-28 21:38:04'),
(20, '23000.00', 51, '2024-07-16', 10, '2024-07-16 04:52:15', '2024-07-16 04:52:29'),
(21, '33500.00', 49, '2024-07-16', 1, '2024-07-16 04:53:02', '2024-07-16 04:53:02'),
(23, '27000.00', 48, '2024-07-16', 1, '2024-07-16 04:54:46', '2024-07-16 04:54:46'),
(25, '82500.00', 47, '2024-07-16', 10, '2024-07-16 04:55:54', '2024-07-16 04:55:54'),
(26, '54000.00', 46, '2024-07-15', 1, '2024-07-16 04:56:23', '2024-07-16 04:56:23'),
(27, '41571.43', 54, '2024-09-18', 12, '2024-09-18 14:50:47', '2024-09-18 14:50:47'),
(28, '999.00', 49, '2024-09-18', 1, '2024-09-18 14:51:02', '2024-09-18 14:51:02'),
(29, '9999.43', 56, '2024-09-18', 1, '2024-09-18 15:27:24', '2024-09-18 15:27:24'),
(30, '34107.00', 49, '2024-09-18', 10, '2024-09-18 15:34:24', '2024-09-18 15:34:24'),
(31, '10000.00', 48, '2024-09-18', 1, '2024-09-18 15:34:40', '2024-09-18 15:34:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `barcode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(14,2) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cuil` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `codigoPostal` int(11) DEFAULT NULL,
  `ctaBanco` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ctaPesos` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ctaBonos` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `codigoBanco` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ingresosBrutos` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ingresosBrutosNro` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ganancias` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gananciasNro` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tipoRazonSocial` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cedulaFiscal` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cbu` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alias` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tipo` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iva` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `cuil`, `codigoPostal`, `ctaBanco`, `ctaPesos`, `ctaBonos`, `codigoBanco`, `ingresosBrutos`, `ingresosBrutosNro`, `ganancias`, `gananciasNro`, `tipoRazonSocial`, `cedulaFiscal`, `cbu`, `alias`, `tipo`, `iva`, `avatar`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'marco', 'farfan', 'licenciadomarcofarfan@gmail.com', '03888568587', 'barrio san jose, Jujuy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'customers/jdx73TJUHXaDwf22cBqbHi6fU6OBBJNwID72igxx.jpg', 1, '2023-11-29 21:35:50', '2023-11-29 21:35:50'),
(2, 'Pedro', 'Ramallo', 'licenciadomarcofarfan22@gmail.com', '03888568587', 'barrio san jose', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2023-11-29 21:38:10', '2023-11-29 21:38:10'),
(3, 'Franco', 'Alverez', 'licenciadomarcofarfan22@gmail.com', '03888568587', 'barrio san jose', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2023-11-29 21:38:32', '2023-11-29 21:38:32'),
(4, 'ILE', 'ILE', 'licenciadomarcofarfan@gmail.com', '03888568587', 'barrio san jose, Jujuy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2023-11-29 21:38:48', '2023-11-29 21:38:48'),
(5, 'Ingenio', 'la esperanza', 'licenciadomarcofarfan@gmail.com', '+543888568587', 'barrio san jose', '20287449233', 4500, '222222222222222222222', '333333333333333333333333333', '444444444444444444444', '4500', NULL, '7777777777777777777777777777777777', NULL, '88888888888888888888888888888', NULL, '9999999999999999999999999999999999', NULL, NULL, NULL, NULL, '', 2, '2023-12-04 19:27:55', '2023-12-04 19:27:55'),
(6, 'Ingenio', 'la esperanza', 'licenciadomarcofarfan@gmail.com', '+543888568587', 'barrio san jose', '20287449233', 4505, '222222222', '333333333333333333333333333', '444444444444444444444', '450044', NULL, '7777777777777777777777777777777777', NULL, '88888888888888888888888888888', NULL, '9999999999999999999999999999999999', NULL, NULL, NULL, NULL, NULL, 2, '2023-12-05 01:00:53', '2023-12-05 01:00:53'),
(7, 'Ingenio', 'la esperanza', 'licenciadomarcofarfan@gmail.com', '+543888568587', 'barrio san jose', '20287449233', 4505, '222222222', '333333333333333333333333333', '444444444444444444444', '450044', NULL, '7777777777777777777777777777777777', NULL, '88888888888888888888888888888', NULL, '9999999999999999999999999999999999', NULL, NULL, NULL, NULL, NULL, 2, '2023-12-05 01:01:10', '2023-12-05 01:01:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `secciones`
--

CREATE TABLE `secciones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descripcion` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_id` int(11) NOT NULL DEFAULT '1',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `secciones`
--

INSERT INTO `secciones` (`id`, `nombre`, `descripcion`, `area_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'seccion 1', 'Los Molinos', 3, 1, '2023-11-29 21:43:43', '2023-11-29 21:43:43'),
(2, 'seccion 2', 'Lavayen', 2, 2, '2023-11-30 19:35:16', '2023-11-30 19:35:16'),
(3, 'seccion 3', 'seccc333', 4, 1, '2023-12-03 00:42:00', '2023-12-03 00:42:00'),
(4, 'seccion 5', 'urea', 3, 1, '2023-12-04 17:48:38', '2023-12-04 17:48:38'),
(5, 'seccion 5', 'ureaccccccc', 4, 1, '2023-12-04 17:54:27', '2023-12-04 17:54:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'app_name', 'Prestamos Ditans', '2023-11-29 21:32:57', '2023-11-29 21:34:48'),
(2, 'currency_symbol', '$', '2023-11-29 21:32:57', '2023-11-29 21:32:57'),
(3, 'app_description', 'Prestamos Ditans', '2023-11-29 21:34:48', '2023-11-29 21:34:48'),
(4, 'warning_quantity', NULL, '2023-11-29 21:34:48', '2023-11-29 21:34:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zona` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rol` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `telefono`, `email`, `zona`, `rol`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Marco', 'Farfan', NULL, 'licenciadomarcofarfan@gmail.com', '100-101', 'ADMINISTRADOR', NULL, '$2y$10$wPcJ3bOOK8YPFcNz.GmYzOG27vfEBnqFgIaU8kzX32bA6IjnuRMAi', NULL, '2023-11-29 21:32:57', '2023-11-29 21:32:57'),
(2, 'Marcko', 'CA', NULL, 'admin@gmail.com', '100', NULL, NULL, '$2y$10$wPcJ3bOOK8YPFcNz.GmYzOG27vfEBnqFgIaU8kzX32bA6IjnuRMAi', NULL, '2023-11-30 16:57:46', '2023-11-30 16:57:46'),
(3, 'Atilio', 'CA', NULL, 'atilio@gmail.com', '100-101-98', 'COMUN', NULL, '$2y$10$CFmLGyBBPJWL9z3r2hcsNOhcrb6DC6zn4uu0.BObzfMjWacESKKQy', 't0Sq4G7z1TUsxhCEQNGRhQCeSDiMTA3w9aQyzI2WIAYTwMlrABwHdq2nvd4Z', '2023-11-30 16:58:50', '2024-04-03 17:26:06'),
(10, 'Yani', 'Meneghini', '3884787712', 'yanimeneghini@hotmail.com', '100-101', 'ADMINISTRADOR', NULL, '$2y$10$69Uf6PR4hFmiFAN9MmobfugP6KDLbaXvq.7taDYG9.K/WlcbJdIEG', 'xn7A8KBkC6mVoEmFQo8PqEadFETEu9gSbWNyxg6chvkTXM972uwLGsNliSiW', NULL, '2024-05-13 17:32:47'),
(11, 'marco 2', 'acme', NULL, 'licenciadomarcofarfan22@gmail.com', '102', 'COMUN', NULL, '$2y$10$tx/MIQCsk6GZKw8zXTwfoOl43FBpEGXTUtcHpS1XTEY3in3RVrxai', NULL, '2024-03-28 16:10:27', '2024-03-28 16:10:27'),
(12, 'prueba', 'antonio', NULL, 'atilio.acu@gmail.com', '101', 'ADMINISTRADOR', NULL, '$2y$10$0Hfc2oEk1uXVuXROwiGKFua9aIdsvbZcaMJEsG2m3auUw.uwWXyd2', NULL, '2024-04-03 16:50:05', '2024-04-03 16:50:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_cart`
--

CREATE TABLE `user_cart` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `user_cart`
--

INSERT INTO `user_cart` (`user_id`, `product_id`, `quantity`) VALUES
(2, 5, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_cuenta`
--

CREATE TABLE `user_cuenta` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cuenta_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `user_cuenta`
--

INSERT INTO `user_cuenta` (`id`, `user_id`, `cuenta_id`, `created_at`, `updated_at`) VALUES
(4, 1, 1, '2023-12-11 04:33:34', '2023-12-11 04:33:34'),
(5, 2, 3, '2023-12-11 04:33:34', '2023-12-11 04:33:34'),
(6, 1, 2, NULL, NULL),
(7, 3, 1, NULL, NULL),
(8, 3, 3, NULL, NULL),
(9, 1, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_customers`
--

CREATE TABLE `user_customers` (
  `id` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `idCustomer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actions_categories`
--
ALTER TABLE `actions_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `actions_entities`
--
ALTER TABLE `actions_entities`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_customer_id_foreign` (`nombre`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cuentas`
--
ALTER TABLE `cuentas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cuentas_orders`
--
ALTER TABLE `cuentas_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customers_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `entities`
--
ALTER TABLE `entities`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `fincas`
--
ALTER TABLE `fincas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_customer_id_foreign` (`nombre`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_customer_id_foreign` (`customer_id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`);

--
-- Indices de la tabla `order_secciones`
--
ALTER TABLE `order_secciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `user_cuenta`
--
ALTER TABLE `user_cuenta`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user_customers`
--
ALTER TABLE `user_customers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actions_categories`
--
ALTER TABLE `actions_categories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `actions_entities`
--
ALTER TABLE `actions_entities`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `entities`
--
ALTER TABLE `entities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `files`
--
ALTER TABLE `files`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `fincas`
--
ALTER TABLE `fincas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT de la tabla `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=265;

--
-- AUTO_INCREMENT de la tabla `order_secciones`
--
ALTER TABLE `order_secciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `user_cuenta`
--
ALTER TABLE `user_cuenta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `user_customers`
--
ALTER TABLE `user_customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
