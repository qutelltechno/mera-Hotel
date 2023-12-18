-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2023 at 04:09 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `relaxly_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `amenities`
--

CREATE TABLE `amenities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `is_publish` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `amenities`
--

INSERT INTO `amenities` (`id`, `name`, `is_publish`, `created_at`, `updated_at`) VALUES
(1, 'Wifi', 1, '2022-12-30 08:35:25', '2022-12-30 08:35:25'),
(2, 'AC', 1, '2022-12-30 08:35:38', '2022-12-30 08:35:38'),
(3, 'Gym/Fitness Centre', 1, '2022-12-30 08:35:59', '2022-12-30 08:36:10'),
(4, 'Pool', 1, '2022-12-30 08:36:24', '2022-12-30 08:37:03'),
(5, 'Washing Machine', 1, '2022-12-30 08:36:42', '2022-12-30 08:36:58'),
(6, 'TV', 1, '2022-12-30 08:36:52', '2022-12-30 08:36:52'),
(7, 'Freezer', 1, '2022-12-30 08:37:13', '2022-12-30 08:37:13');

-- --------------------------------------------------------

--
-- Table structure for table `bedtypes`
--

CREATE TABLE `bedtypes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `is_publish` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bedtypes`
--

INSERT INTO `bedtypes` (`id`, `name`, `is_publish`, `created_at`, `updated_at`) VALUES
(1, 'Double', 1, '2022-12-30 10:03:51', '2022-12-30 10:04:01'),
(2, 'Single', 1, '2022-12-30 10:04:10', '2022-12-30 10:04:10');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `slug` varchar(191) NOT NULL,
  `thumbnail` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `lan` varchar(100) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `is_publish` int(11) DEFAULT NULL,
  `og_title` text DEFAULT NULL,
  `og_image` text DEFAULT NULL,
  `og_description` text DEFAULT NULL,
  `og_keywords` text DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `slug`, `thumbnail`, `description`, `lan`, `category_id`, `is_publish`, `og_title`, `og_image`, `og_description`, `og_keywords`, `user_id`, `created_at`, `updated_at`) VALUES
(10, 'Mira Waterfront Hotel Jeddah', 'nisi-quis-eleifend-quam-adipiscing-vitae-proin', '07122023100300-900x700-5V7A3955.jpg', '<a href=\"https://ibnbattutatravel.com/mira-hotel-jeddah/\" target=\"_blank\">Mira Waterfront Hotel Jeddah</a>', 'en', 1, 1, 'Mira Waterfront Hotel Jeddah', '07122023100300-900x700-5V7A3955.jpg', 'Mira Waterfront Hotel Jeddah', 'Mira Waterfront Hotel Jeddah', 1, '2023-01-07 03:20:44', '2023-12-11 07:10:34'),
(11, 'Report on hotel Mira', 'quisque-egestas-diam-in-arcu-cursus-euismod-quis-viverra', '07122023100640-900x700-5V7A4138.jpg', '<a href=\"https://www.omallqura.com/mira-trio-hotel-riyadh/\" target=\"_blank\">Report on hotel Mira</a>', 'en', 7, 1, 'Report on hotel Mira', '07122023100640-900x700-5V7A4138.jpg', 'Report on hotel Mira', 'Report on hotel Mira', 1, '2023-01-07 03:20:44', '2023-12-07 08:25:51'),
(12, 'An article about Mira Hotel from Al Jazeera website', 'quisque-egestas-diam-in-arcu-cursus-euismod-quis-2', '07122023101036-900x700-5V7A4133.jpg', '<p><a href=\"https://www.al-jazirah.com/2017/20170601/rr6.htm#google_vignette\" target=\"_blank\">An article about Mira Hotel from Al Jazeera website</a><br></p>', 'en', 7, 1, 'An article about Mira Hotel from Al Jazeera website', '07122023101036-900x700-5V7A4133.jpg', 'An article about Mira Hotel from Al Jazeera website', 'An article about Mira Hotel from Al Jazeera website', 1, '2023-01-07 03:20:44', '2023-12-07 08:22:01'),
(13, 'فندق ميرا الواجهة البحرية جدة', 'malesuada-bibendum-arcu-vitae-elementum-curabitur', '07122023100300-900x700-5V7A3955.jpg', '<p><a href=\"https://ibnbattutatravel.com/mira-hotel-jeddah/\" target=\"_blank\" style=\"color: rgb(35, 82, 124); text-decoration: underline; background-color: rgb(255, 255, 255); outline-style: initial; outline-width: 0px; font-family: sans-serif; font-weight: 400;\">تقرير عن فندق ميرا الواجهة البحرية جدة</a><br></p>', 'ar', 7, 1, 'تقرير عن فندق ميرا الواجهة البحرية جدة', '07122023100300-900x700-5V7A3955.jpg', 'فندق ميرا الواجهة البحرية جدة من أفضل الفنادق جدة على يتميز البحر بالمرافق والخدمات التي نالت استحسان جميع زوار الفندق. كما يتميز الفندق بإطلالته الساحرة على البحر والمدينة ، ويعتبر من أفضل الفنادق الكورنيش جدة .\r\n\r\nمن خلال السطور التالية سنتعرف على اهم مميزات وتفاصيل فندق ميرا احد ابرز الفنادق جدة على البحر رخيصة .', 'تقرير عن فندق ميرا الواجهة البحرية جدة', 1, '2023-01-06 10:35:10', '2023-12-07 08:14:22'),
(14, 'تقرير عن الفندق ميرا', 'lectus-nulla-at-volutpat-diam-ut-venenatis', '07122023100640-900x700-5V7A4138.jpg', '<ul><li></li><li><a href=\"https://www.omallqura.com/mira-trio-hotel-riyadh/\" target=\"_blank\" style=\"color: rgb(35, 82, 124); text-decoration: underline; outline-style: initial; outline-width: 0px;\">تقرير عن الفندق ميرا</a></li><li></li></ul>', 'ar', 5, 1, 'تقرير عن الفندق ميرا', '07122023100640-900x700-5V7A4138.jpg', 'يُعد فندق ميرا الرياض من افضل فنادق مدينة الرياض الأنيقة، والذي يقع في حي السليمانية داخل العاصمة الرياض.\r\n\r\nيَنتمي فندق ميرا تريو الرياض الى مجموعة من ارقى فنادق الرياض السياحية، بسبب السمعة الطيبة التي حصل عليها من الزوار.\r\n\r\nلذا قررنا أن نقدم لكم هذا البروشور التفصيلي عن كل مَزايا وعُيوب ميرا تريو بناءً على تقييم زوَّار موقعنا الأعزَّاء', 'تقرير عن الفندق ميرا', 1, '2023-01-06 10:35:10', '2023-12-07 08:08:17'),
(15, 'مقالة عن الفندق من موقع الجزيرة', 'fermentum-leo-vel-orci-porta-non-pulvinar', '07122023101036-900x700-5V7A4133.jpg', '<ul><li><a href=\"https://www.al-jazirah.com/2017/20170601/rr6.htm#google_vignette\" target=\"_blank\">مقالة عن فندق&nbsp;ميرا</a></li></ul>', 'ar', 5, 1, 'مقالة عن الفندق', '07122023101036-900x700-5V7A4133.jpg', 'استحوذت شركة فنادق ميرا مع شركة الاستثمار العائلي على فندق رمادا الكورنيش «سابقًا» فيما يعد أكبر صفقة استحواذ في عام 2017م حيث بلغت قيمتها أكثر ربع مليار ريال، وذلك في إطار سعي شركة ميرا لتوسيع انتشارها بالمملكة وتثبيت اقدامها في عالم سوق الفنادق من خلال الميزات التي يتمتع بها الفندق المستحوذ من حيث الموقع الإستراتيجي، وحجم الغرف وتنوع المنتج الفندقي، وأصبحت شركة فنادق ميرا تدير مجموعة متنوعة من المشروعات السياحية ابتداء من الأجنحة الفندقية المناسبة للعائلات والبيزنس بوتيك اوتيل الذي يستهدف شريحة رجال الأعمال، وقد توجت استقطابها للمشروعات المتميزة بفندق ميرا الواجهة البحرية المطل على الكورنيش.', 'مقالة عن الفندق', 1, '2023-01-06 10:35:10', '2023-12-11 07:01:18');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `slug` varchar(191) NOT NULL,
  `thumbnail` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `lan` varchar(100) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_publish` int(11) DEFAULT NULL,
  `og_title` text DEFAULT NULL,
  `og_image` text DEFAULT NULL,
  `og_description` text DEFAULT NULL,
  `og_keywords` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `name`, `slug`, `thumbnail`, `description`, `lan`, `parent_id`, `is_publish`, `og_title`, `og_image`, `og_description`, `og_keywords`, `created_at`, `updated_at`) VALUES
(1, 'Luxury Room', 'luxury-room', '11122023081856-mirabusiness14.jpg', 'Luxury Room a Hollywood twin room has two single beds with a common headboard. This hotel room type is generally occupied by two guests.', 'en', NULL, 1, 'Luxury Room', '10122023114612-900x700-5V7A4051.jpg', 'Luxury Room a Hollywood twin room has two single beds with a common headboard. This hotel room type is generally occupied by two guests.', 'Hollywood Twin Room, Booking, Hotel Booking, Rooms, Room Booking, Room Book, Hotel Near By Me, Resurrect, Resort', '2022-10-18 07:19:26', '2023-12-11 06:22:38'),
(5, 'Tour Places', 'tour-places', '11122023081856-mirabusiness14.jpg', 'Tour Places a Hollywood twin room has two single beds with a common headboard. This hotel room type is generally occupied by two guests.', 'en', NULL, 1, 'Tour Places', '06012023135948-900x700-about-h4.png', 'Tour Places a Hollywood twin room has two single beds with a common headboard. This hotel room type is generally occupied by two guests.', 'Hollywood Twin Room, Booking, Hotel Booking, Rooms, Room Booking, Room Book, Hotel Near By Me, Resurrect, Resort', '2022-10-17 10:44:55', '2023-12-11 06:22:01'),
(6, 'Vacations', 'vacations', '11122023081856-mirabusiness14.jpg', 'Vacations a Hollywood twin room has two single beds with a common headboard. This hotel room type is generally occupied by two guests.', 'en', NULL, 1, 'Vacations', '10122023232953-900x700-6kitchention-6.jpg', 'Vacations a Hollywood twin room has two single beds with a common headboard. This hotel room type is generally occupied by two guests.', 'Hollywood Twin Room, Booking, Hotel Booking, Rooms, Room Booking, Room Book, Hotel Near By Me, Resurrect, Resort', '2022-10-17 10:45:05', '2023-12-11 06:20:39'),
(7, 'Resort Places', 'resort-places', '11122023081856-mirabusiness14.jpg', 'Resort Places a Hollywood twin room has two single beds with a common headboard. This hotel room type is generally occupied by two guests.', 'en', NULL, 1, 'Resort Places', '11122023081948-600x315-mirabusiness3.JPG', 'Resort Places a Hollywood twin room has two single beds with a common headboard. This hotel room type is generally occupied by two guests.', 'Hollywood Twin Room, Booking, Hotel Booking, Rooms, Room Booking, Room Book, Hotel Near By Me, Resurrect, Resort', '2022-10-17 10:45:14', '2023-12-11 06:19:58');

-- --------------------------------------------------------

--
-- Table structure for table `booking_manages`
--

CREATE TABLE `booking_manages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `booking_no` varchar(100) DEFAULT NULL,
  `transaction_no` varchar(100) DEFAULT NULL,
  `roomtype_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `payment_method_id` int(11) DEFAULT NULL,
  `payment_status_id` int(11) DEFAULT NULL,
  `booking_status_id` int(11) DEFAULT NULL,
  `total_room` int(11) DEFAULT NULL,
  `total_price` double(12,3) DEFAULT NULL,
  `discount` double(12,3) DEFAULT NULL,
  `tax` double(12,3) DEFAULT NULL,
  `subtotal` double(12,3) DEFAULT NULL,
  `total_amount` double(12,3) DEFAULT NULL,
  `paid_amount` double(12,3) DEFAULT NULL,
  `due_amount` double(12,3) DEFAULT NULL,
  `in_date` date DEFAULT NULL,
  `out_date` date DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `country` varchar(191) DEFAULT NULL,
  `state` varchar(191) DEFAULT NULL,
  `zip_code` varchar(191) DEFAULT NULL,
  `city` varchar(191) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `comments` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `booking_status`
--

CREATE TABLE `booking_status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bstatus_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `booking_status`
--

INSERT INTO `booking_status` (`id`, `bstatus_name`, `created_at`, `updated_at`) VALUES
(1, 'Pending', '2023-01-27 15:48:22', '2023-01-27 15:48:25'),
(2, 'Approved', '2023-01-27 15:48:34', '2023-01-27 15:48:37'),
(3, 'Checked Out', '2023-01-28 05:11:57', '2023-01-28 05:11:58'),
(4, 'Canceled', '2023-01-28 05:12:16', '2023-01-28 05:12:18');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `slug` varchar(191) NOT NULL,
  `thumbnail` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `lan` varchar(100) DEFAULT NULL,
  `is_publish` int(11) DEFAULT NULL,
  `og_title` text DEFAULT NULL,
  `og_image` text DEFAULT NULL,
  `og_description` text DEFAULT NULL,
  `og_keywords` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `thumbnail`, `description`, `lan`, `is_publish`, `og_title`, `og_image`, `og_description`, `og_keywords`, `created_at`, `updated_at`) VALUES
(1, 'Hotel room', 'hotel', '11122023084534-mirabusiness12.jpg', 'A single room has one single bed for single occupancy. An additional bed (called an extra bed) may be added to this room at a guests request and charged accordingly. The size of the bed is normally 3 feet by 6 feet. However, the concept of single rooms is vanishing nowadays. Mostly, hotels have twin or double rooms, and the charge for a single room is occupied by one person.', 'en', 1, 'Hotel room', '11122023084654-600x315-img-23.jpg', 'A single room has one single bed for single occupancy. An additional bed (called an extra bed) may be added to this room at a guests request and charged accordingly. The size of the bed is normally 3 feet by 6 feet. However, the concept of single rooms is vanishing nowadays. Mostly, hotels have twin or double rooms, and the charge for a single room is occupied by one person.', 'Booking, Hotel Booking, Rooms, Room Booking, Room Book, Hotel Near By Me, Resurrect, Resort, Single Room', '2023-01-05 01:07:01', '2023-12-11 06:47:45'),
(9, 'فندق', 'fndk', '11122023084534-mirabusiness12.jpg', 'غرفة واحدة: تحتوي الغرفة الفردية على سرير واحد لاستيعاب فرد واحد. يمكن إضافة سرير إضافي (يُطلق عليه اسم سرير إضافي) إلى هذه الغرفة حسب طلب النزيل ويتم فرض رسوم وفقًا لذلك. حجم السرير عادة ما يكون 3 أقدام في 6 أقدام. ومع ذلك، فإن مفهوم الغرف الفردية يتلاشى في الوقت الحالي. في معظم الأحيان، تحتوي الفنادق على غرف توأم أو غرف مزدوجة، وتُشغل غرفة واحدة بفرد واحد ويتم فرض تكلفة الغرفة الفردية على شخص واحد.', 'ar', 1, 'فندق', '11122023084654-600x315-img-23.jpg', 'غرفة فردية تحتوي على سرير واحد لشخص واحد. يمكن إضافة سرير إضافي (المعروف أيضًا باسم سرير إضافي) إلى هذه الغرفة حسب طلب النزيل ويتم فرض رسوم وفقًا لذلك. حجم السرير عادةً ما يكون 3 أقدام في 6 أقدام. ومع ذلك، يتلاشى مفهوم الغرف الفردية في الوقت الحالي. في معظم الأحيان، تحتوي الفنادق على غرف توأم أو غرف مزدوجة، وتُفرغ الغرفة الفردية لشخص واحد وتتم فرض تكلفة الغرفة الفردية على فرد واحد.', '- حجز، حجز فندق، غرف، حجز غرف، حجز غرفة، فندق بالقرب مني، استئناف، منتجع، غرفة فردية  يرجى ملاحظة أن بعض المصطلحات قد تظل باللغة الأصلية نظرًا لأنها مصطلحات فندقية وسياحية شائعة.', '2023-12-04 20:38:49', '2023-12-11 06:47:15');

-- --------------------------------------------------------

--
-- Table structure for table `complements`
--

CREATE TABLE `complements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `item` varchar(191) DEFAULT NULL,
  `is_publish` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `complements`
--

INSERT INTO `complements` (`id`, `name`, `item`, `is_publish`, `created_at`, `updated_at`) VALUES
(1, 'Breakfast', 'Marmalade, Ham, Egg, Bread, Breakfast burrito, Coffee, Tomato, Milk, Orange juice, Yogurt', 1, '2022-12-30 09:30:44', '2022-12-30 09:30:44'),
(2, 'Lunch', 'Rice, Beef, Mutton, Chicken and Vegetable', 1, '2022-12-30 09:35:43', '2022-12-30 09:35:43'),
(3, 'Tea', 'Tea/Coffee', 1, '2022-12-30 09:35:58', '2022-12-30 09:37:00'),
(4, 'Drinks', 'Drinks', 1, '2022-12-30 09:36:20', '2022-12-30 09:39:20'),
(5, 'Dinner', 'Rice, Beef, Mutton, Chicken, Vegetable', 1, '2022-12-30 09:38:21', '2022-12-30 09:38:21');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `contact_info` longtext DEFAULT NULL,
  `contact_form` longtext DEFAULT NULL,
  `contact_map` longtext DEFAULT NULL,
  `is_recaptcha` int(11) DEFAULT NULL,
  `mail_subject` varchar(100) DEFAULT NULL,
  `is_copy` int(11) DEFAULT NULL,
  `is_publish` int(11) DEFAULT NULL,
  `lan` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `title`, `contact_info`, `contact_form`, `contact_map`, `is_recaptcha`, `mail_subject`, `is_copy`, `is_publish`, `lan`, `created_at`, `updated_at`) VALUES
(6, 'اتصل بنا', '{\"email\":\"support@organis.com\",\"phone\":\"+966  (0) 11  532 0151 \\u0645\\u064a\\u0631\\u0627 \\u0627\\u0639\\u0645\\u0627\\u0644\\r\\n+966  (0) 11 466 1153 \\u0645\\u064a\\u0631\\u0627 \\u062a\\u0631\\u064a\\u0648\\r\\n+966  (0) 12 614 1040 \\u0645\\u064a\\u0631\\u0627 \\u0627\\u0644\\u0648\\u062c\\u0647\\u0629 \\u0627\\u0644\\u0628\\u062d\\u0631\\u064a\\u0629\",\"address\":\"\\u0627\\u0644\\u0633\\u0639\\u0648\\u062f\\u064a\\u0629 .\\u0627\\u0644\\u0631\\u064a\\u0627\\u0636\",\"short_desc\":\"\\u062a\\u0648\\u0635\\u0644 \\u0645\\u0639 \\u0633\\u0644\\u0633\\u0644\\u0629 \\u0641\\u0646\\u062f\\u0642 \\u0645\\u064a\\u0631\\u0627\"}', '[{\"label\":\"Name\",\"is_label\":\"no\",\"type\":\"text\",\"name\":\"Name\",\"placeholder\":\"Name\",\"mandatory\":\"yes\",\"dropdown_values\":\"\"},{\"label\":\"Email\",\"is_label\":\"no\",\"type\":\"email\",\"name\":\"Email\",\"placeholder\":\"Email Address\",\"mandatory\":\"yes\",\"dropdown_values\":\"\"},{\"label\":\"Subject\",\"is_label\":\"no\",\"type\":\"text\",\"name\":\"Subject\",\"placeholder\":\"Subject\",\"mandatory\":\"yes\",\"dropdown_values\":\"\"},{\"label\":\"Message\",\"is_label\":\"no\",\"type\":\"textarea\",\"name\":\"Message\",\"placeholder\":\"Message\",\"mandatory\":\"yes\",\"dropdown_values\":\"\"}]', '{\"latitude\":\"23.824442\",\"longitude\":\"90.2125329\",\"zoom\":\"10\",\"is_google_map\":0}', 0, 'subject', NULL, 1, 'ar', '2022-08-26 09:37:03', '2023-12-14 08:09:32'),
(7, 'contact-us', '{\"email\":\"support@organis.com\",\"phone\":\"+966 (0) 11 532 0151 Mira Business\\r\\n+966 (0) 11 466 1153 Mira Trio\\r\\n+966 (0) 12 614 1040 Mira, Upper Egypt\",\"address\":\"\\u0627\\u0644\\u0633\\u0639\\u0648\\u062f\\u064a\\u0629 .\\u0627\\u0644\\u0631\\u064a\\u0627\\u0636\",\"short_desc\":\"Connect with Mira Hotel chain\"}', '[{\"label\":\"Name\",\"is_label\":\"no\",\"type\":\"text\",\"name\":\"Name\",\"placeholder\":\"Name\",\"mandatory\":\"yes\",\"dropdown_values\":\"\"},{\"label\":\"Email\",\"is_label\":\"no\",\"type\":\"email\",\"name\":\"Email\",\"placeholder\":\"Email Address\",\"mandatory\":\"yes\",\"dropdown_values\":\"\"},{\"label\":\"Subject\",\"is_label\":\"no\",\"type\":\"text\",\"name\":\"Subject\",\"placeholder\":\"Subject\",\"mandatory\":\"yes\",\"dropdown_values\":\"\"},{\"label\":\"Message\",\"is_label\":\"no\",\"type\":\"textarea\",\"name\":\"Message\",\"placeholder\":\"Message\",\"mandatory\":\"yes\",\"dropdown_values\":\"\"}]', '{\"latitude\":\"23.824442\",\"longitude\":\"90.2125329\",\"zoom\":\"10\",\"is_google_map\":1}', 0, 'subject', NULL, 1, 'en', '2023-12-10 08:36:55', '2023-12-14 08:11:55');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_name` varchar(191) DEFAULT NULL,
  `is_publish` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_name`, `is_publish`, `created_at`, `updated_at`) VALUES
(1, 'Afghanistan', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(2, 'Aland Islands', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(3, 'Albania', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(4, 'Algeria', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(5, 'American Samoa', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(6, 'Andorra', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(7, 'Angola', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(8, 'Anguilla', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(9, 'Antarctica', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(10, 'Antigua and Barbuda', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(11, 'Argentina', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(12, 'Armenia', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(13, 'Aruba', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(14, 'Asia / Pacific Region', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(15, 'Australia', 1, '2020-09-18 06:00:00', '2022-08-24 10:55:21'),
(16, 'Austria', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(17, 'Azerbaijan', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(18, 'Bahamas', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(19, 'Bahrain', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(20, 'Bangladesh', 1, '2020-09-18 06:00:00', '2022-08-24 10:52:40'),
(21, 'Barbados', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(22, 'Belarus', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(23, 'Belgium', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(24, 'Belize', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(25, 'Benin', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(26, 'Bermuda', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(27, 'Bhutan', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(28, 'Bolivia', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(29, 'Bonaire, Sint Eustatius and Saba', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(30, 'Bosnia and Herzegovina', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(31, 'Botswana', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(32, 'Bouvet Island', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(33, 'Brazil', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(34, 'British Indian Ocean Territory', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(35, 'Brunei Darussalam', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(36, 'Bulgaria', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(37, 'Burkina Faso', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(38, 'Burundi', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(39, 'Cambodia', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(40, 'Cameroon', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(41, 'Canada', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(42, 'Cape Verde', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(43, 'Cayman Islands', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(44, 'Central African Republic', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(45, 'Chad', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(46, 'Chile', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(47, 'China', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(48, 'Christmas Island', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(49, 'Cocos (Keeling) Islands', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(50, 'Colombia', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(51, 'Comoros', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(52, 'Congo', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(53, 'Congo, the Democratic Republic of the', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(54, 'Cook Islands', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(55, 'Costa Rica', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(56, 'Cote D\'Ivoire', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(57, 'Croatia', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(58, 'Cuba', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(59, 'Curacao', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(60, 'Cyprus', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(61, 'Czech Republic', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(62, 'Denmark', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(63, 'Djibouti', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(64, 'Dominica', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(65, 'Dominican Republic', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(66, 'Ecuador', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(67, 'Egypt', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(68, 'El Salvador', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(69, 'Equatorial Guinea', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(70, 'Eritrea', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(71, 'Estonia', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(72, 'Ethiopia', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(73, 'Falkland Islands (Malvinas)', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(74, 'Faroe Islands', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(75, 'Fiji', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(76, 'Finland', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(77, 'France', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(78, 'French Guiana', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(79, 'French Polynesia', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(80, 'French Southern Territories', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(81, 'Gabon', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(82, 'Gambia', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(83, 'Georgia', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(84, 'Germany', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(85, 'Ghana', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(86, 'Gibraltar', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(87, 'Greece', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(88, 'Greenland', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(89, 'Grenada', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(90, 'Guadeloupe', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(91, 'Guam', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(92, 'Guatemala', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(93, 'Guernsey', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(94, 'Guinea', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(95, 'Guinea-Bissau', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(96, 'Guyana', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(97, 'Haiti', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(98, 'Heard Island and Mcdonald Islands', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(99, 'Holy See (Vatican City State)', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(100, 'Honduras', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(101, 'Hong Kong', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(102, 'Hungary', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(103, 'Iceland', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(104, 'India', 1, '2020-09-18 06:00:00', '2022-08-24 10:55:40'),
(105, 'Indonesia', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(106, 'Iran, Islamic Republic of', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(107, 'Iraq', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(108, 'Ireland', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(109, 'Isle of Man', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(110, 'Israel', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(111, 'Italy', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(112, 'Jamaica', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(113, 'Japan', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(114, 'Jersey', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(115, 'Jordan', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(116, 'Kazakhstan', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(117, 'Kenya', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(118, 'Kiribati', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(119, 'Korea, Democratic People\'s Republic of', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(120, 'Korea, Republic of', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(121, 'Kosovo', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(122, 'Kuwait', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(123, 'Kyrgyzstan', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(124, 'Lao People\'s Democratic Republic', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(125, 'Latvia', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(126, 'Lebanon', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(127, 'Lesotho', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(128, 'Liberia', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(129, 'Libyan Arab Jamahiriya', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(130, 'Liechtenstein', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(131, 'Lithuania', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(132, 'Luxembourg', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(133, 'Macao', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(134, 'Macedonia, the Former Yugoslav Republic of', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(135, 'Madagascar', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(136, 'Malawi', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(137, 'Malaysia', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(138, 'Maldives', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(139, 'Mali', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(140, 'Malta', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(141, 'Marshall Islands', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(142, 'Martinique', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(143, 'Mauritania', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(144, 'Mauritius', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(145, 'Mayotte', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(146, 'Mexico', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(147, 'Micronesia, Federated States of', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(148, 'Moldova, Republic of', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(149, 'Monaco', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(150, 'Mongolia', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(151, 'Montenegro', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(152, 'Montserrat', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(153, 'Morocco', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(154, 'Mozambique', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(155, 'Myanmar', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(156, 'Namibia', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(157, 'Nauru', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(158, 'Nepal', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(159, 'Netherlands', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(160, 'Netherlands Antilles', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(161, 'New Caledonia', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(162, 'New Zealand', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(163, 'Nicaragua', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(164, 'Niger', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(165, 'Nigeria', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(166, 'Niue', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(167, 'Norfolk Island', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(168, 'Northern Mariana Islands', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(169, 'Norway', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(170, 'Oman', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(171, 'Pakistan', 1, '2020-09-18 06:00:00', '2022-08-24 10:52:58'),
(172, 'Palau', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(173, 'Palestinian Territory, Occupied', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(174, 'Panama', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(175, 'Papua New Guinea', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(176, 'Paraguay', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(177, 'Peru', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(178, 'Philippines', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(179, 'Pitcairn', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(180, 'Poland', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(181, 'Portugal', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(182, 'Puerto Rico', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(183, 'Qatar', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(184, 'Reunion', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(185, 'Romania', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(186, 'Russian Federation', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(187, 'Rwanda', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(188, 'Saint Barthelemy', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(189, 'Saint Helena', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(190, 'Saint Kitts and Nevis', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(191, 'Saint Lucia', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(192, 'Saint Martin', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(193, 'Saint Pierre and Miquelon', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(194, 'Saint Vincent and the Grenadines', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(195, 'Samoa', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(196, 'San Marino', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(197, 'Sao Tome and Principe', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(198, 'Saudi Arabia', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(199, 'Senegal', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(200, 'Serbia', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(201, 'Serbia and Montenegro', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(202, 'Seychelles', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(203, 'Sierra Leone', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(204, 'Singapore', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(205, 'Sint Maarten', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(206, 'Slovakia', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(207, 'Slovenia', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(208, 'Solomon Islands', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(209, 'Somalia', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(210, 'South Africa', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(211, 'South Georgia and the South Sandwich Islands', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(212, 'South Sudan', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(213, 'Spain', 2, '2020-09-18 06:00:00', '2020-09-18 06:00:00'),
(214, 'Sri Lanka', 2, '2020-09-18 06:00:00', '2022-08-24 10:52:06'),
(215, 'Sudan', 2, '2020-09-18 06:00:00', '2022-08-24 10:52:06'),
(216, 'Suriname', 2, '2020-09-18 06:00:00', '2022-08-24 10:52:06'),
(217, 'Svalbard and Jan Mayen', 2, '2020-09-18 06:00:00', '2022-08-24 10:52:06'),
(218, 'Swaziland', 2, '2020-09-18 06:00:00', '2022-08-24 10:52:06'),
(219, 'Sweden', 2, '2020-09-18 06:00:00', '2022-08-24 10:52:06'),
(220, 'Switzerland', 2, '2020-09-18 06:00:00', '2022-08-24 10:52:06'),
(221, 'Syrian Arab Republic', 2, '2020-09-18 06:00:00', '2022-08-24 10:52:06'),
(222, 'Taiwan, Province of China', 2, '2020-09-18 06:00:00', '2022-08-24 10:52:06'),
(223, 'Tajikistan', 2, '2020-09-18 06:00:00', '2022-08-24 10:52:06'),
(224, 'Tanzania, United Republic of', 2, '2020-09-18 06:00:00', '2022-08-24 10:52:06'),
(225, 'Thailand', 2, '2020-09-18 06:00:00', '2022-08-24 10:52:06'),
(226, 'Timor-Leste', 2, '2020-09-18 06:00:00', '2022-08-24 10:52:06'),
(227, 'Togo', 2, '2020-09-18 06:00:00', '2022-08-24 10:52:06'),
(228, 'Tokelau', 2, '2020-09-18 06:00:00', '2022-08-24 10:52:06'),
(229, 'Tonga', 2, '2020-09-18 06:00:00', '2022-08-24 10:52:06'),
(230, 'Trinidad and Tobago', 2, '2020-09-18 06:00:00', '2022-08-24 10:52:06'),
(231, 'Tunisia', 2, '2020-09-18 06:00:00', '2022-08-24 10:52:06'),
(232, 'Turkey', 1, '2020-09-18 06:00:00', '2022-08-24 10:55:59'),
(233, 'Turkmenistan', 2, '2020-09-18 06:00:00', '2022-08-24 10:52:06'),
(234, 'Turks and Caicos Islands', 2, '2020-09-18 06:00:00', '2022-08-24 10:51:58'),
(235, 'Tuvalu', 2, '2020-09-18 06:00:00', '2022-08-24 10:51:58'),
(236, 'Uganda', 2, '2020-09-18 06:00:00', '2022-08-24 10:51:58'),
(237, 'Ukraine', 2, '2020-09-18 06:00:00', '2022-08-24 10:51:58'),
(238, 'United Arab Emirates', 2, '2020-09-18 06:00:00', '2022-08-24 10:51:58'),
(239, 'United Kingdom', 1, '2020-09-18 06:00:00', '2022-08-24 10:51:58'),
(240, 'United States', 1, '2020-09-18 06:00:00', '2022-08-24 10:51:58'),
(241, 'United States Minor Outlying Islands', 2, '2020-09-18 06:00:00', '2022-08-24 10:51:58'),
(242, 'Uruguay', 2, '2020-09-18 06:00:00', '2022-08-24 10:51:58'),
(243, 'Uzbekistan', 2, '2020-09-18 06:00:00', '2022-08-24 10:51:58'),
(244, 'Vanuatu', 2, '2020-09-18 06:00:00', '2022-08-24 10:51:58'),
(245, 'Venezuela', 2, '2020-09-18 06:00:00', '2022-08-24 10:51:58'),
(246, 'Viet Nam', 2, '2020-09-18 06:00:00', '2022-08-24 10:51:58'),
(247, 'Virgin Islands, British', 2, '2020-09-18 06:00:00', '2022-08-24 10:51:58'),
(248, 'Virgin Islands, U.s.', 2, '2020-09-18 06:00:00', '2022-08-24 10:51:58'),
(249, 'Wallis and Futuna', 2, '2020-09-18 06:00:00', '2022-08-24 10:51:58'),
(250, 'Western Sahara', 2, '2020-09-18 06:00:00', '2022-08-24 10:51:58'),
(251, 'Yemen', 2, '2020-09-18 06:00:00', '2022-08-24 10:51:58'),
(252, 'Zambia', 2, '2020-09-18 06:00:00', '2022-08-24 10:51:58'),
(253, 'Zimbabwe', 2, '2020-09-18 06:00:00', '2022-08-24 10:51:58');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `desc` text DEFAULT NULL,
  `is_publish` int(11) NOT NULL,
  `lan` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `title`, `desc`, `is_publish`, `lan`, `created_at`, `updated_at`) VALUES
(12, 'أين يمكنني أن أجدكم على الإنترنت بخلاف الموقع الإلكتروني؟ صفة فيس بوك؟ تويتر؟', 'يمكنك أن تتعرف على آخر المستجدات لدينا على صفحىة الفيس بوك وحساب تويتر', 1, 'ar', '2023-12-17 10:53:35', '2023-12-17 10:53:35'),
(13, 'كيف تختارون الخدمات التي يجب مراجعتها؟', 'أولاً، يبحث خبراء الموضوعات الموهوبين في الويب. عندما نعثر على أمر يعجبنا، نضعه تحت أقسى الاختبارات. ثم نقارن ميزاته وأوجه قصوره بعناية. وأخيرًا، نختار الخدمات التي وجدناها رائعة للغاية.', 1, 'ar', '2023-12-17 10:54:46', '2023-12-17 10:54:46'),
(14, 'لماذا يجب علي قراءة مراجعاتكم؟', 'ستحصل على جميع المعلومات التي ستحتاجها لاتخاذ قرارات مهمة بشأن موقعك على الويب في مكان واحد. إن مراجعاتنا سهلة القراءة ومجانية وغنية بالقيمة: تحتاج إلى هذه المعلومات، ونحن نضعها في متناول يديك.', 1, 'ar', '2023-12-17 10:55:30', '2023-12-17 10:58:13'),
(15, 'Why should I read your reviews?', 'You\'ll get all the information you\'ll need to make important decisions about your website in one place. Our reviews are easy to read, free and full of value: you need this information, and we put it at your fingertips.', 1, 'en', '2023-12-17 10:57:59', '2023-12-17 10:57:59'),
(16, 'How do you choose which services to review?', 'First, talented subject matter experts search the web. When we find something we like, we put it to the harshest tests. Then we carefully compare its advantages and shortcomings. Finally, we select the services that we found most amazing.', 1, 'en', '2023-12-17 11:00:06', '2023-12-17 11:00:06'),
(17, 'Where can I find you online other than your website? Facebook characteristic? Twitter?', 'You\'ll get all the information you\'ll need to make important decisions about your website in one place. Our reviews are easy to read, free and full of value: you need this information, and we put it at your fingertips.', 1, 'en', '2023-12-17 11:08:22', '2023-12-17 11:08:22');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_code` varchar(30) NOT NULL,
  `language_name` varchar(100) DEFAULT NULL,
  `flag` text DEFAULT NULL,
  `language_default` tinyint(4) NOT NULL DEFAULT 0,
  `is_rtl` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `language_code`, `language_name`, `flag`, `language_default`, `is_rtl`, `status`, `created_at`, `updated_at`) VALUES
(1, 'en', 'English', NULL, 0, 0, 1, '2020-10-19 16:35:47', '2022-12-28 12:41:11'),
(4, 'ar', 'العربية', NULL, 1, 1, 1, '2023-11-27 08:48:46', '2023-11-27 08:49:18');

-- --------------------------------------------------------

--
-- Table structure for table `lankeyvalues`
--

CREATE TABLE `lankeyvalues` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_code` varchar(30) DEFAULT NULL,
  `language_key` varchar(191) DEFAULT NULL,
  `language_value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lankeyvalues`
--

INSERT INTO `lankeyvalues` (`id`, `language_code`, `language_key`, `language_value`, `created_at`, `updated_at`) VALUES
(1, 'en', 'Languages', 'Languages', '2021-03-29 06:08:02', '2022-12-27 11:20:54'),
(9, 'en', 'Data insert failed', 'Data insert failed', '2021-03-29 06:48:35', '2021-03-29 06:48:35'),
(14, 'en', 'Data update failed', 'Data update failed', '2021-03-29 07:32:39', '2021-03-29 07:32:39'),
(21, 'en', 'Data remove failed', 'Data remove failed', '2021-03-29 07:37:57', '2021-03-29 07:37:57'),
(24, 'en', 'Language Keywords', 'Language Keywords', '2021-03-29 07:40:09', '2021-03-29 07:40:09'),
(27, 'en', 'Add New', 'Add New', '2021-03-29 07:41:23', '2021-03-29 07:41:23'),
(30, 'en', 'Back to List', 'Back to List', '2021-03-29 07:42:44', '2021-03-29 07:42:44'),
(33, 'en', 'SL', 'SL', '2021-03-29 07:44:24', '2021-03-29 07:44:24'),
(36, 'en', 'Language Key', 'Language Key', '2021-03-29 07:45:10', '2021-03-29 07:45:10'),
(39, 'en', 'Language Value', 'Language Value', '2021-03-29 07:46:09', '2021-03-29 07:46:09'),
(42, 'en', 'Action', 'Action', '2021-03-29 07:47:30', '2021-03-29 07:47:30'),
(45, 'en', 'Save', 'Save', '2021-03-29 07:48:41', '2021-03-29 07:48:41'),
(48, 'en', 'Cancel', 'Cancel', '2021-03-29 07:49:59', '2021-03-29 07:49:59'),
(51, 'en', 'Do you really want to edit this record', 'Do you really want to edit this record?', '2021-03-29 07:51:09', '2021-03-29 07:52:19'),
(54, 'en', 'Do you really want to delete this record', 'Do you really want to delete this record?', '2021-03-29 07:52:46', '2021-03-29 07:52:46'),
(57, 'en', 'Delete', 'Delete', '2021-03-29 07:54:04', '2021-03-29 07:54:04'),
(61, 'en', 'Edit', 'Edit', '2021-03-29 07:55:02', '2021-03-29 07:55:02'),
(64, 'en', 'Confirm', 'Confirm', '2021-03-29 07:56:24', '2021-03-29 07:56:24'),
(66, 'en', 'This is alert message', 'This is alert message', '2021-03-29 07:57:25', '2021-03-29 07:57:25'),
(70, 'en', 'Language Code', 'Language Code', '2021-03-29 07:58:54', '2021-03-29 07:58:54'),
(73, 'en', 'Language Name', 'Language Name', '2021-03-29 07:59:53', '2021-03-29 07:59:53'),
(76, 'en', 'Active Language', 'Active Language', '2021-03-29 08:00:45', '2021-03-29 08:00:45'),
(78, 'en', 'General', 'General', '2021-03-29 15:53:52', '2021-03-29 15:53:52'),
(112, 'en', 'Site Name', 'Site Name', '2021-03-30 17:04:52', '2021-03-30 17:04:52'),
(116, 'en', 'Site Title', 'Site Title', '2021-03-30 17:06:30', '2021-03-30 17:06:30'),
(119, 'en', 'Site URL', 'Site URL', '2021-03-30 17:07:43', '2021-03-30 17:07:43'),
(122, 'en', 'Theme color', 'Theme color', '2021-03-30 17:10:33', '2021-03-30 17:10:33'),
(125, 'en', 'Favicon', 'Favicon', '2021-03-30 17:11:32', '2021-03-30 17:11:32'),
(131, 'en', 'The logo must be a file of type png', 'The logo must be a file of type png', '2021-03-30 17:13:33', '2021-03-30 17:13:33'),
(134, 'en', 'The file uploaded Successfully', 'The file uploaded Successfully', '2021-03-30 17:39:44', '2021-03-30 17:39:44'),
(137, 'en', 'Sorry, there was an error uploading your file', 'Sorry, there was an error uploading your file', '2021-03-30 17:40:34', '2021-03-30 17:40:34'),
(140, 'en', 'Sorry only you can upload jpg, png and gif file type', 'Sorry only you can upload jpg, png and gif file type', '2021-03-30 17:41:32', '2021-03-30 17:41:32'),
(143, 'en', 'Front Logo', 'Front Logo', '2021-03-30 18:41:19', '2021-03-30 18:41:19'),
(149, 'en', 'Back Logo', 'Back Logo', '2021-03-31 14:09:39', '2021-03-31 14:09:39'),
(152, 'en', 'Settings', 'Settings', '2021-03-31 14:12:50', '2021-03-31 14:12:50'),
(154, 'en', 'Time Zone', 'Time Zone', '2021-03-31 15:42:27', '2021-03-31 15:42:27'),
(157, 'en', 'Google reCAPTCHA', 'Google reCAPTCHA', '2021-03-31 17:15:56', '2021-03-31 17:15:56'),
(160, 'en', 'Theme Register', 'Theme Register', '2021-04-01 05:56:46', '2021-04-01 05:56:46'),
(164, 'en', 'Mail Settings', 'Mail Settings', '2021-04-01 06:19:40', '2021-04-01 06:19:40'),
(170, 'en', 'Media Setting', 'Media Setting', '2021-04-01 06:26:47', '2021-04-01 06:26:47'),
(172, 'en', 'Purchase Code', 'Purchase Code', '2021-04-01 09:50:30', '2021-04-01 09:50:30'),
(177, 'en', 'Sorry, This is not a valid purchase code.', 'Sorry, This is not a valid purchase code.', '2021-04-01 09:52:51', '2021-04-01 09:52:51'),
(179, 'en', 'Theme registered Successfully', 'Theme registered Successfully', '2021-04-01 09:53:48', '2021-04-01 09:53:48'),
(182, 'en', 'Theme deregister Successfully', 'Theme deregister Successfully', '2021-04-01 09:55:18', '2021-04-01 09:55:18'),
(185, 'en', 'Do you really want to deregister the theme', 'Do you really want to deregister the theme?', '2021-04-01 09:56:37', '2021-08-24 12:27:19'),
(188, 'en', 'Theme is registered', 'Theme is registered', '2021-04-01 11:57:20', '2021-04-01 11:57:20'),
(191, 'en', 'Deregister Theme', 'Deregister Theme', '2021-04-01 11:58:38', '2021-04-01 11:58:38'),
(194, 'en', 'Register Theme', 'Register Theme', '2021-04-01 12:00:16', '2021-04-01 12:00:16'),
(196, 'en', 'Users', 'Users', '2021-04-02 14:38:48', '2021-04-02 14:38:48'),
(199, 'en', 'Name', 'Name', '2021-04-02 17:24:38', '2021-04-02 17:24:38'),
(203, 'en', 'Email', 'Email', '2021-04-02 17:27:43', '2021-04-02 17:27:43'),
(206, 'en', 'Status', 'Status', '2021-04-02 17:30:15', '2021-04-02 17:30:15'),
(208, 'en', 'Role', 'Role', '2021-04-02 17:33:06', '2021-04-02 17:33:06'),
(214, 'en', 'Active', 'Active', '2021-04-02 17:41:30', '2021-04-02 17:41:30'),
(216, 'en', 'Inactive', 'Inactive', '2021-04-02 17:42:30', '2021-04-02 17:42:30'),
(218, 'en', 'Email Address', 'Email Address', '2021-04-03 15:34:12', '2021-04-03 15:34:12'),
(223, 'en', 'Password', 'Password', '2021-04-03 15:36:17', '2021-04-03 15:36:17'),
(225, 'en', 'Phone', 'Phone', '2021-04-03 15:37:12', '2021-04-03 15:37:12'),
(229, 'en', 'Address', 'Address', '2021-04-03 15:38:29', '2021-04-03 15:38:29'),
(231, 'en', 'Active/Inactive', 'Active/Inactive', '2021-04-03 15:39:27', '2021-04-03 15:39:27'),
(234, 'en', 'Roles', 'Roles', '2021-04-03 15:41:28', '2021-04-03 15:41:28'),
(241, 'en', 'The profile image must be a file of type jpg', 'The profile image must be a file of type jpg', '2021-04-03 15:44:10', '2021-04-03 15:44:10'),
(243, 'en', 'Profile Photo', 'Profile Photo', '2021-04-03 16:07:17', '2021-04-03 16:07:17'),
(245, 'en', 'Profile photo size 300x300 pixels', 'Profile photo size 300x300 pixels', '2021-04-03 16:10:33', '2021-04-03 16:10:33'),
(249, 'en', 'Browse', 'Browse', '2021-04-03 16:12:00', '2021-04-03 16:12:00'),
(251, 'en', 'Profile', 'Profile', '2021-04-04 15:09:54', '2021-04-04 15:09:54'),
(254, 'en', 'You are not active yet. Please contact administrator.', 'You are not active yet. Please contact administrator.', '2021-04-04 16:40:49', '2021-04-04 16:40:49'),
(258, 'en', 'You do not have permission to access this page', 'You do not have permission to access this page.', '2021-04-04 16:57:10', '2021-04-04 16:57:10'),
(260, 'en', 'Media', 'Media', '2021-04-05 16:00:22', '2021-04-05 16:00:22'),
(263, 'en', 'Attachment Details', 'Attachment Details', '2021-04-08 16:50:40', '2021-04-08 16:50:40'),
(267, 'en', 'Alternative Text', 'Alternative Text', '2021-04-08 16:52:20', '2021-04-08 16:52:20'),
(270, 'en', 'Title', 'Title', '2021-04-08 16:53:25', '2021-04-08 16:53:25'),
(273, 'en', 'Copy Link Thumbnail Image', 'Copy Link Thumbnail Image', '2021-04-08 16:56:27', '2021-04-08 16:56:27'),
(276, 'en', 'Copy Link large Image', 'Copy Link large Image', '2021-04-08 16:57:43', '2021-04-08 16:57:43'),
(279, 'en', 'Back', 'Back', '2021-04-08 16:59:05', '2021-04-08 16:59:05'),
(282, 'en', 'Select File', 'Select File', '2021-04-08 17:00:21', '2021-04-08 17:00:21'),
(285, 'en', 'All', 'All', '2021-04-08 17:01:29', '2021-04-08 17:01:29'),
(288, 'en', 'Bulk Select', 'Bulk Select', '2021-04-08 17:02:32', '2021-04-08 17:02:32'),
(291, 'en', 'Delete Permanently', 'Delete Permanently', '2021-04-08 17:03:51', '2021-04-08 17:03:51'),
(294, 'en', 'Search', 'Search', '2021-04-08 17:05:14', '2021-04-08 17:05:14'),
(296, 'en', 'Type', 'Type', '2021-04-11 14:52:20', '2021-04-11 14:52:20'),
(300, 'en', 'Width', 'Width', '2021-04-11 14:53:40', '2021-04-11 14:53:40'),
(303, 'en', 'Height', 'Height', '2021-04-11 14:54:40', '2021-04-11 14:54:40'),
(305, 'en', 'Categories', 'Categories', '2021-04-13 03:55:10', '2021-04-13 03:55:10'),
(308, 'en', 'Category Name', 'Category Name', '2021-04-13 07:01:37', '2021-04-13 07:01:37'),
(312, 'en', 'Slug', 'Slug', '2021-04-13 07:03:48', '2021-04-13 07:03:48'),
(315, 'en', 'Language', 'Language', '2021-04-13 07:05:50', '2021-04-13 07:05:50'),
(318, 'en', 'All Language', 'All Language', '2021-04-13 07:13:48', '2021-04-13 07:13:48'),
(321, 'en', 'Description', 'Description', '2021-04-13 07:23:37', '2021-04-13 07:23:37'),
(324, 'en', 'Subheader Image', 'Subheader Image', '2021-04-13 09:56:26', '2021-04-13 09:56:26'),
(326, 'en', 'Choose a File', 'Choose a File', '2021-04-13 16:41:33', '2021-04-13 16:41:33'),
(329, 'en', 'Upload File', 'Upload File', '2021-04-14 13:59:41', '2021-04-14 13:59:41'),
(332, 'en', 'Copy Thumbnail Image', 'Copy Thumbnail Image', '2021-04-15 12:02:34', '2021-04-15 12:02:34'),
(335, 'en', 'Menu', 'Menu', '2021-04-30 22:09:32', '2021-04-30 22:09:32'),
(339, 'en', 'Menu Name', 'Menu Name', '2021-04-30 22:33:42', '2021-04-30 22:33:42'),
(342, 'en', 'Menu Position', 'Menu Position', '2021-04-30 22:37:44', '2021-04-30 22:37:44'),
(345, 'en', 'Menu Status', 'Menu Status', '2021-04-30 22:42:44', '2021-04-30 22:42:44'),
(347, 'en', 'Position', 'Position', '2021-05-03 20:09:34', '2021-05-03 20:09:34'),
(351, 'en', 'Customize', 'Customize', '2021-05-03 20:20:20', '2021-05-03 20:20:20'),
(354, 'en', 'No data available', 'No data available', '2021-05-03 21:08:42', '2021-05-03 21:08:42'),
(356, 'en', 'Apply', 'Apply', '2021-05-04 21:36:47', '2021-05-04 21:36:47'),
(359, 'en', 'Do you really want to publish this records', 'Do you really want to publish this records?', '2021-05-08 21:22:10', '2021-05-08 21:25:31'),
(363, 'en', 'Do you really want to draft this records', 'Do you really want to draft this records?', '2021-05-08 21:24:58', '2021-05-08 21:25:17'),
(366, 'en', 'Do you really want to delete this records', 'Do you really want to delete this records?', '2021-05-08 21:28:28', '2021-05-08 21:28:28'),
(369, 'en', 'Please select action', 'Please select action', '2021-05-08 21:31:58', '2021-05-08 21:31:58'),
(372, 'en', 'Please select record', 'Please select record', '2021-05-08 21:38:41', '2021-05-08 21:38:41'),
(374, 'en', 'Save Menu', 'Save Menu', '2021-05-09 15:46:22', '2021-05-09 15:46:22'),
(377, 'en', 'Menu structure', 'Menu structure', '2021-05-09 15:49:16', '2021-05-09 15:49:16'),
(381, 'en', 'Add menu items', 'Add menu items', '2021-05-09 15:50:46', '2021-05-09 15:50:46'),
(383, 'en', 'Only selected language menu list', 'Only selected language menu list', '2021-05-09 15:53:38', '2021-05-09 15:53:38'),
(386, 'en', 'URL', 'URL', '2021-05-10 15:27:34', '2021-05-10 15:27:34'),
(390, 'en', 'Link Text', 'Link Text', '2021-05-10 15:29:31', '2021-05-10 15:29:31'),
(392, 'en', 'Navigation Label', 'Navigation Label', '2021-05-11 20:58:45', '2021-05-11 20:58:45'),
(398, 'en', 'Add to Menu', 'Add to Menu', '2021-05-13 22:52:21', '2021-05-13 22:52:21'),
(402, 'en', 'Select All', 'Select All', '2021-05-13 23:17:47', '2021-05-13 23:17:47'),
(405, 'en', 'Pages', 'Pages', '2021-05-13 23:20:36', '2021-05-13 23:20:36'),
(408, 'en', 'Posts', 'Posts', '2021-05-13 23:21:59', '2021-05-13 23:21:59'),
(411, 'en', 'Custom Links', 'Custom Links', '2021-05-13 23:24:29', '2021-05-13 23:24:29'),
(414, 'en', 'Target Window', 'Target Window', '2021-05-16 09:05:33', '2021-05-16 09:05:33'),
(417, 'en', 'CSS Class (Optional)', 'CSS Class (Optional)', '2021-05-16 09:47:32', '2021-05-16 09:47:32'),
(420, 'en', 'Select menu option', 'Select menu option', '2021-05-16 09:51:30', '2021-05-16 09:51:30'),
(423, 'en', 'Select width', 'Select width', '2021-05-16 09:54:38', '2021-05-16 09:54:38'),
(425, 'en', 'Please fill out required field', 'Please fill out required field.', '2021-05-19 22:53:54', '2021-05-19 22:54:25'),
(428, 'en', 'Full Width', 'Full Width', '2021-05-20 11:17:23', '2021-05-20 11:17:23'),
(432, 'en', 'Fixed Width', 'Fixed Width', '2021-05-20 11:19:02', '2021-05-20 11:19:02'),
(435, 'en', 'Mega Menu', 'Mega Menu', '2021-05-20 11:20:33', '2021-05-20 11:20:33'),
(438, 'en', 'Dropdown', 'Dropdown', '2021-05-20 11:21:44', '2021-05-20 11:21:44'),
(441, 'en', 'None', 'None', '2021-05-20 11:22:48', '2021-05-20 11:22:48'),
(444, 'en', 'Dropdown Menu', 'Dropdown Menu', '2021-05-20 11:24:45', '2021-05-20 11:24:45'),
(447, 'en', 'Edit Mega Menu Title', 'Edit Mega Menu Title', '2021-05-20 11:36:40', '2021-05-20 11:36:40'),
(450, 'en', 'Title Enable/Disable', 'Title Enable/Disable', '2021-05-20 11:38:02', '2021-05-20 11:38:02'),
(453, 'en', 'Image Enable/Disable', 'Image Enable/Disable', '2021-05-20 11:39:06', '2021-05-20 11:39:06'),
(456, 'en', 'Image', 'Image', '2021-05-20 11:40:39', '2021-05-20 11:40:39'),
(458, 'en', 'All Posts', 'All Posts', '2021-05-20 12:53:32', '2021-05-20 12:53:32'),
(462, 'en', 'All Pages', 'All Pages', '2021-05-20 12:54:21', '2021-05-20 12:54:21'),
(464, 'en', 'Published', 'Published', '2021-05-25 09:56:59', '2021-05-25 09:56:59'),
(468, 'en', 'Draft', 'Draft', '2021-05-25 09:58:54', '2021-05-25 09:58:54'),
(472, 'en', 'Publish', 'Publish', '2021-05-25 10:00:13', '2021-05-25 10:00:13'),
(475, 'en', 'Select Action', 'Select Action', '2021-05-25 10:01:35', '2021-05-25 10:01:35'),
(477, 'en', 'Home Page', 'Home Page', '2021-05-25 12:53:37', '2021-05-25 12:53:37'),
(478, 'en', 'Home', 'Home', '2021-05-25 12:53:56', '2021-05-25 12:53:56'),
(483, 'en', 'Permalink', 'Permalink', '2021-05-25 13:42:01', '2021-05-25 13:42:01'),
(486, 'en', 'Add New Row', 'Add New Row', '2021-05-27 21:43:58', '2021-05-27 21:43:58'),
(490, 'en', 'Add Column', 'Add Column', '2021-05-27 23:48:08', '2021-05-27 23:48:08'),
(493, 'en', 'Add Item', 'Add Item', '2021-05-27 23:50:41', '2021-05-27 23:50:41'),
(495, 'en', 'Generate', 'Generate', '2021-05-30 00:16:06', '2021-05-30 00:16:06'),
(499, 'en', 'Custom', 'Custom', '2021-05-30 00:18:46', '2021-05-30 00:18:46'),
(501, 'en', 'Save changes', 'Save changes', '2021-05-31 21:13:57', '2021-05-31 21:13:57'),
(505, 'en', 'Row Options', 'Row Options', '2021-05-31 21:15:12', '2021-05-31 21:15:12'),
(507, 'en', 'Define an admin label for easy identification', 'Define an admin label for easy identification.', '2021-05-31 21:23:11', '2021-05-31 21:23:11'),
(511, 'en', 'Admin Label', 'Admin Label', '2021-05-31 21:24:18', '2021-05-31 21:24:18'),
(514, 'en', 'Style', 'Style', '2021-05-31 22:03:43', '2021-05-31 22:03:43'),
(516, 'en', 'Enable this option to make this row fluid. Fluid row will help you publish full width contents.', 'Enable this option to make this row fluid. Fluid row will help you publish full width contents.', '2021-05-31 22:50:30', '2021-05-31 22:50:30'),
(521, 'en', 'Enable this option to remove gutters between columns in this row.', 'Enable this option to remove gutters between columns in this row.', '2021-05-31 22:51:34', '2021-05-31 22:51:34'),
(523, 'en', 'Section ID', 'Section ID', '2021-05-31 22:52:55', '2021-05-31 22:52:55'),
(526, 'en', 'A unique ID that will be applied to this row. Must start with a letter and may only contain dashes, underscores, letters or numbers. No spaces.', 'A unique ID that will be applied to this row. Must start with a letter and may only contain dashes, underscores, letters or numbers. No spaces.', '2021-05-31 22:54:40', '2021-05-31 22:54:40'),
(529, 'en', 'CSS Class', 'CSS Class', '2021-05-31 22:59:01', '2021-05-31 22:59:01'),
(532, 'en', 'If you wish to style a particular content element differently, then use this field to add a class name and also refer to it in your css file.', 'If you wish to style a particular content element differently, then use this field to add a class name and also refer to it in your css file.', '2021-05-31 23:00:43', '2021-05-31 23:00:43'),
(535, 'en', 'Padding Top', 'Padding Top', '2021-05-31 23:06:30', '2021-05-31 23:06:30'),
(538, 'en', 'Padding Bottom', 'Padding Bottom', '2021-05-31 23:07:57', '2021-05-31 23:07:57'),
(541, 'en', 'Background Color', 'Background Color', '2021-05-31 23:19:52', '2021-05-31 23:19:52'),
(544, 'en', 'Background Image', 'Background Image', '2021-05-31 23:24:13', '2021-05-31 23:24:13'),
(546, 'en', 'Background Position', 'Background Position', '2021-05-31 23:55:28', '2021-05-31 23:55:28'),
(549, 'en', 'Mailer', 'Mailer', '2021-06-03 17:11:56', '2021-06-03 17:11:56'),
(554, 'en', 'From Name', 'From Name', '2021-06-03 17:18:02', '2021-06-03 17:18:02'),
(556, 'en', 'From Mail Address', 'From Mail Address', '2021-06-03 17:19:58', '2021-06-03 17:19:58'),
(559, 'en', 'SMTP Host', 'SMTP Host', '2021-06-03 17:26:02', '2021-06-03 17:26:02'),
(562, 'en', 'SMTP Port', 'SMTP Port', '2021-06-03 17:26:36', '2021-06-03 17:26:36'),
(565, 'en', 'SMTP Security', 'SMTP Security', '2021-06-03 17:30:08', '2021-06-03 17:30:08'),
(568, 'en', 'SMTP Username', 'SMTP Username', '2021-06-03 17:31:04', '2021-06-03 17:31:04'),
(571, 'en', 'SMTP Password', 'SMTP Password', '2021-06-03 17:31:54', '2021-06-03 17:31:54'),
(574, 'en', 'To Name', 'To Name', '2021-06-03 17:38:18', '2021-06-03 17:38:18'),
(577, 'en', 'To Mail Address', 'To Mail Address', '2021-06-03 17:39:11', '2021-06-03 17:39:11'),
(579, 'en', 'Theme Options', 'Theme Options', '2021-06-06 22:19:11', '2021-06-06 22:19:11'),
(583, 'en', 'Logo', 'Logo', '2021-06-06 22:25:04', '2021-06-06 22:25:04'),
(586, 'en', 'Custom CSS', 'Custom CSS', '2021-06-06 22:26:40', '2021-06-06 22:26:40'),
(589, 'en', 'Custom JS', 'Custom JS', '2021-06-06 23:41:02', '2021-06-06 23:41:02'),
(598, 'en', 'Tax', 'Tax', '2021-06-27 23:35:37', '2021-06-27 23:35:37'),
(600, 'en', 'Percentage', 'Percentage', '2021-06-28 20:37:30', '2021-06-28 20:37:30'),
(607, 'en', 'Coupons', 'Coupons', '2021-06-28 22:30:40', '2021-06-28 22:30:40'),
(610, 'en', 'Code', 'Code', '2021-06-28 22:36:36', '2021-06-28 22:36:36'),
(613, 'en', 'Expire Date', 'Expire Date', '2021-06-28 22:37:33', '2021-06-28 22:37:33'),
(615, 'en', 'Labels', 'Labels', '2021-06-29 18:04:26', '2021-06-29 18:04:26'),
(619, 'en', 'Color', 'Color', '2021-06-29 18:17:50', '2021-06-29 18:17:50'),
(630, 'en', 'Shipping', 'Shipping', '2021-06-30 19:47:31', '2021-06-30 19:47:31'),
(634, 'en', 'Shipping Fee', 'Shipping Fee', '2021-06-30 20:23:06', '2021-06-30 20:23:06'),
(641, 'en', 'Featured', 'Featured', '2021-06-30 21:57:22', '2021-06-30 21:57:22'),
(644, 'en', 'YES', 'YES', '2021-06-30 21:59:29', '2021-06-30 21:59:29'),
(647, 'en', 'NO', 'NO', '2021-06-30 22:01:20', '2021-06-30 22:01:20'),
(652, 'en', 'Subheader', 'Subheader', '2021-07-02 06:08:40', '2021-07-02 06:08:40'),
(656, 'en', 'SEO', 'SEO', '2021-07-02 06:32:38', '2021-07-02 06:32:38'),
(668, 'en', 'SEO Title', 'SEO Title', '2021-07-02 07:34:34', '2021-07-02 07:34:34'),
(671, 'en', 'SEO Keywords', 'SEO Keywords', '2021-07-02 07:35:48', '2021-07-02 07:35:48'),
(674, 'en', 'SEO Description', 'SEO Description', '2021-07-02 07:37:08', '2021-07-02 07:37:08'),
(677, 'en', 'Open Graph Image', 'Open Graph Image', '2021-07-02 07:38:20', '2021-07-02 07:38:20'),
(679, 'en', 'Offer & Ads', 'Offer & Ads', '2021-07-03 08:21:06', '2021-07-03 08:21:06'),
(682, 'en', 'Offer & Ads Position', 'Offer & Ads Position', '2021-07-03 08:42:55', '2021-07-03 08:42:55'),
(695, 'en', 'Price', 'Price', '2021-07-04 08:01:20', '2021-07-04 08:01:20'),
(698, 'en', 'Images', 'Images', '2021-07-04 08:03:13', '2021-07-04 08:03:13'),
(701, 'en', 'Variations', 'Variations', '2021-07-04 08:04:45', '2021-07-04 08:04:45'),
(704, 'en', 'Inventory', 'Inventory', '2021-07-04 08:11:35', '2021-07-04 08:11:35'),
(710, 'en', 'Short Description', 'Short Description', '2021-07-04 10:11:09', '2021-07-04 10:11:09'),
(716, 'en', 'Category', 'Category', '2021-07-04 10:36:30', '2021-07-04 10:36:30'),
(725, 'en', 'Label', 'Label', '2021-07-04 10:56:21', '2021-07-04 10:56:21'),
(733, 'en', 'Cost Price', 'Cost Price', '2021-07-07 11:16:48', '2021-07-07 11:16:48'),
(737, 'en', 'Sale Price', 'Sale Price', '2021-07-07 11:17:57', '2021-07-07 11:17:57'),
(740, 'en', 'Old Price', 'Old Price', '2021-07-07 11:19:33', '2021-07-07 11:19:33'),
(743, 'en', 'Start Date', 'Start Date', '2021-07-07 11:23:03', '2021-07-07 11:23:03'),
(746, 'en', 'End Date', 'End Date', '2021-07-07 11:24:55', '2021-07-07 11:24:55'),
(749, 'en', 'Manage Stock', 'Manage Stock', '2021-07-07 11:41:20', '2021-07-07 11:41:20'),
(752, 'en', 'SKU', 'SKU', '2021-07-07 11:42:42', '2021-07-07 11:42:42'),
(755, 'en', 'Stock Status', 'Stock Status', '2021-07-07 11:44:53', '2021-07-07 11:44:53'),
(758, 'en', 'Stock Quantity', 'Stock Quantity', '2021-07-07 11:45:58', '2021-07-07 11:45:58'),
(761, 'en', 'In Stock', 'In Stock', '2021-07-07 11:50:08', '2021-07-07 11:50:08'),
(763, 'en', 'Featured image', 'Featured image', '2021-07-08 08:00:05', '2021-07-08 08:00:05'),
(766, 'en', 'Size', 'Size', '2021-07-08 12:40:54', '2021-07-08 12:40:54'),
(770, 'en', 'Select color', 'Select color', '2021-07-08 12:42:38', '2021-07-08 12:42:38'),
(773, 'en', 'Select Size', 'Select Size', '2021-07-08 12:43:06', '2021-07-08 12:43:06'),
(775, 'en', 'Multiple Images', 'Multiple Images', '2021-07-08 21:11:21', '2021-07-08 21:11:21'),
(778, 'en', 'Social Media', 'Social Media', '2021-07-11 10:44:12', '2021-07-11 10:44:12'),
(786, 'en', 'Twitter', 'Twitter', '2021-08-05 10:46:38', '2021-08-05 10:46:38'),
(787, 'en', 'Google Analytics', 'Google Analytics', '2021-08-05 11:12:25', '2021-08-05 11:12:25'),
(791, 'en', 'Google Tag Manager', 'Google Tag Manager', '2021-08-05 11:13:07', '2021-08-05 11:13:07'),
(794, 'en', 'Whatsapp', 'Whatsapp', '2021-08-05 11:13:46', '2021-08-05 11:13:46'),
(806, 'en', 'See all', 'See all', '2021-08-15 02:55:49', '2021-08-15 02:55:49'),
(811, 'en', 'Currency', 'Currency', '2021-08-21 09:02:08', '2021-08-21 09:02:08'),
(815, 'en', 'Currency Name', 'Currency Name', '2021-08-21 09:04:50', '2021-08-21 09:04:50'),
(818, 'en', 'Currency Icon', 'Currency Icon', '2021-08-21 09:06:14', '2021-08-21 09:06:14'),
(821, 'en', 'Currency Position', 'Currency Position', '2021-08-21 09:07:57', '2021-08-21 09:07:57'),
(823, 'en', 'RTL', 'RTL', '2021-08-24 09:53:21', '2021-08-24 09:53:21'),
(4659, 'en', 'Available Offer', 'Available Offer', '2021-08-25 11:07:01', '2022-04-06 01:33:43'),
(4670, 'en', 'Header', 'Header', '2021-08-29 08:05:33', '2021-08-29 08:05:33'),
(4674, 'en', 'Footer', 'Footer', '2021-08-29 08:10:34', '2021-08-29 08:10:34'),
(4677, 'en', 'Subscribe our newsletter', 'Subscribe our newsletter', '2021-08-29 08:48:22', '2021-08-29 08:48:22'),
(4680, 'en', 'Submit', 'Submit', '2021-08-29 08:50:31', '2021-08-29 08:50:31'),
(4683, 'en', 'Enter your email', 'Enter your email', '2021-08-29 08:52:37', '2021-08-29 08:52:37'),
(4686, 'en', 'Contact Us', 'Contact Us', '2021-08-29 09:55:59', '2021-08-29 09:55:59'),
(4689, 'en', 'Copyright', 'Copyright', '2021-08-29 10:42:27', '2021-08-29 10:42:27'),
(4693, 'en', 'Quick links', 'Quick links', '2021-08-29 11:02:09', '2021-08-29 11:02:09'),
(4694, 'en', 'Company', 'Company', '2021-08-29 11:03:15', '2021-08-29 11:03:15'),
(4721, 'en', 'Availability', 'Availability', '2021-09-10 03:49:55', '2021-09-10 03:49:55'),
(4724, 'en', 'Quantity', 'Quantity', '2021-09-10 03:51:11', '2021-09-10 03:51:11'),
(4727, 'en', 'Buy Now', 'Buy Now', '2021-09-10 03:54:50', '2021-09-10 03:54:50'),
(4730, 'en', 'Add To Cart', 'Add To Cart', '2021-09-10 03:55:52', '2021-09-10 03:55:52'),
(4742, 'en', 'Your rating of this product', 'Your rating of this product', '2021-09-10 05:22:49', '2021-09-10 05:22:49'),
(4748, 'en', 'login', 'Login', '2021-09-10 05:24:43', '2021-09-28 09:23:08'),
(4757, 'en', 'Showing', 'Showing', '2021-09-11 07:22:53', '2021-09-11 07:22:53'),
(4760, 'en', 'Default', 'Default', '2021-09-11 07:24:00', '2021-09-11 07:24:00'),
(4766, 'en', 'Added product to cart failed.', 'Added product to cart failed.', '2021-09-13 11:30:38', '2021-09-13 11:30:38'),
(4769, 'en', 'Shopping Cart', 'Shopping Cart', '2021-09-13 11:46:43', '2021-09-13 11:46:43'),
(4772, 'en', 'View Cart', 'View Cart', '2021-09-13 11:47:35', '2021-09-13 11:47:35'),
(4775, 'en', 'Checkout', 'Checkout', '2021-09-13 11:48:22', '2021-09-13 11:48:22'),
(4778, 'en', 'Subtotal', 'Subtotal', '2021-09-13 23:20:14', '2022-08-08 09:11:17'),
(4781, 'en', 'Total', 'Total', '2021-09-13 23:21:56', '2021-09-13 23:21:56'),
(4784, 'en', 'Please select required field.', 'Please select required field.', '2021-09-15 21:02:25', '2021-09-15 21:02:25'),
(4796, 'en', 'Cart', 'Cart', '2021-09-16 12:02:31', '2021-09-16 12:02:31'),
(4799, 'en', 'Variation', 'Variation', '2021-09-16 23:35:03', '2021-09-16 23:35:03'),
(4802, 'en', 'Remove', 'Remove', '2021-09-16 23:38:21', '2021-09-16 23:38:21'),
(4811, 'en', 'Cart Total', 'Cart Total', '2021-09-16 23:45:17', '2021-09-16 23:45:17'),
(4814, 'en', 'Price Total', 'Price Total', '2021-09-16 23:46:27', '2021-09-16 23:46:27'),
(4817, 'en', 'Proceed To CheckOut', 'Proceed To CheckOut', '2021-09-16 23:48:05', '2021-09-16 23:48:05'),
(4820, 'en', 'Discount', 'Discount', '2021-09-17 00:47:11', '2021-09-17 00:47:11'),
(4826, 'en', 'View', 'View', '2021-09-17 04:44:37', '2021-09-17 04:44:37'),
(4835, 'en', 'Facebook APP ID', 'Facebook APP ID', '2021-09-17 11:39:22', '2021-09-17 11:39:22'),
(4838, 'en', 'Facebook Pixel', 'Facebook Pixel', '2021-09-17 11:41:41', '2021-09-17 11:41:41'),
(4841, 'en', 'Register', 'Register', '2021-09-28 10:50:46', '2021-09-28 10:50:46'),
(4844, 'en', 'Sign in', 'Sign in', '2021-09-28 10:52:03', '2021-09-28 10:52:03'),
(4847, 'en', 'Sign up for an account', 'Sign up for an account', '2021-09-28 11:40:45', '2021-09-28 11:40:45'),
(4850, 'en', 'Forgot your password?', 'Forgot your password?', '2021-09-28 11:42:04', '2021-09-28 11:42:04'),
(4853, 'en', 'Back to login', 'Back to login', '2021-09-28 11:43:17', '2021-09-28 11:43:17'),
(4856, 'en', 'Please enter your email address and password', 'Please enter your email address and password', '2021-09-29 10:08:45', '2021-09-29 10:08:45'),
(4859, 'en', 'Please fill in the information below', 'Please fill in the information below', '2021-09-29 10:09:40', '2021-09-29 10:09:40'),
(4862, 'en', 'Remember me', 'Remember me', '2021-09-29 10:15:34', '2021-09-29 10:15:34'),
(4865, 'en', 'Confirm password', 'Confirm password', '2021-09-29 11:20:49', '2021-09-29 11:20:49'),
(4868, 'en', 'My Dashboard', 'My Dashboard', '2021-09-29 11:55:55', '2021-09-29 11:55:55'),
(4871, 'en', 'Logout', 'Logout', '2021-09-29 11:56:36', '2021-09-29 11:56:36'),
(4874, 'en', 'The recaptcha field is required', 'The recaptcha field is required', '2021-09-30 07:52:58', '2021-09-30 07:52:58'),
(4877, 'en', 'Thanks! You have register successfully. Please login.', 'Thanks! You have register successfully. Please login.', '2021-09-30 08:21:09', '2021-09-30 08:21:09'),
(4880, 'en', 'Oops! You are failed registration. Please try again.', 'Oops! You are failed registration. Please try again.', '2021-09-30 08:23:47', '2021-09-30 08:23:47'),
(4883, 'en', 'Your email address and password incorrect.', 'Your email address and password incorrect.', '2021-09-30 08:28:38', '2021-09-30 08:28:38'),
(4886, 'en', 'Reset Password', 'Reset Password', '2021-09-30 10:35:18', '2021-09-30 10:35:18'),
(4889, 'en', 'Enter your email address below and we will send you a link to reset your password', 'Enter your email address below and we will send you a link to reset your password', '2021-09-30 10:37:14', '2021-09-30 10:37:14'),
(4892, 'en', 'Send Password Reset Link', 'Send Password Reset Link', '2021-09-30 10:42:40', '2021-09-30 10:42:40'),
(4895, 'en', 'We can not find a user with that email address', 'We can not find a user with that email address', '2021-09-30 11:03:06', '2021-09-30 11:03:06'),
(4898, 'en', 'We have emailed your password reset link!', 'We have emailed your password reset link!', '2021-09-30 11:45:54', '2021-09-30 11:45:54'),
(4901, 'en', 'Oops! You are failed change password request. Please try again', 'Oops! You are failed change password request. Please try again', '2021-09-30 11:48:27', '2021-09-30 11:48:27'),
(4904, 'en', 'Forgot your password', 'Forgot your password', '2021-09-30 13:12:42', '2021-09-30 13:12:42'),
(4907, 'en', 'Need to forgot your password? No problem! Just click the button below and you will be on way. If you did not make this request, please ignore this email.', 'Need to forgot your password? No problem! Just click the button below and you will be on way. If you did not make this request, please ignore this email.', '2021-09-30 13:13:52', '2021-09-30 13:13:52'),
(4910, 'en', 'This password reset token is invalid', 'This password reset token is invalid', '2021-10-01 07:49:02', '2021-10-01 07:49:02'),
(4913, 'en', 'Oops! You are failed change password. Please try again', 'Oops! You are failed change password. Please try again', '2021-10-01 07:52:55', '2021-10-01 07:52:55'),
(4916, 'en', 'Your password changed successfully', 'Your password changed successfully', '2021-10-01 07:54:07', '2021-10-01 07:54:07'),
(4919, 'en', 'This password reset email is invalid', 'This password reset email is invalid', '2021-10-01 08:19:38', '2021-10-01 08:19:38'),
(4922, 'en', 'Dashboard', 'Dashboard', '2021-10-02 11:01:08', '2021-10-02 11:01:08'),
(4925, 'en', 'Orders', 'Orders', '2021-10-02 11:02:40', '2021-10-02 11:02:40'),
(4928, 'en', 'Change Password', 'Change Password', '2021-10-02 11:04:43', '2021-10-02 11:04:43'),
(4931, 'en', 'Update', 'Update', '2021-10-02 11:52:48', '2021-10-02 11:52:48'),
(4934, 'en', 'State', 'State', '2021-10-04 10:27:02', '2021-10-04 10:27:02'),
(4937, 'en', 'City', 'City', '2021-10-04 10:29:13', '2021-10-04 10:29:13'),
(4943, 'en', 'Already have an account?', 'Already have an account?', '2021-10-06 08:58:36', '2021-10-06 08:58:36'),
(4946, 'en', 'Register an account with above information?', 'Register an account with above information?', '2021-10-06 09:01:29', '2021-10-06 09:01:29'),
(4949, 'en', 'Country', 'Country', '2021-10-06 10:04:40', '2021-10-06 10:04:40'),
(4956, 'en', 'Stripe Secret', 'Stripe Secret', '2021-10-07 09:29:45', '2021-10-07 09:29:45'),
(4958, 'en', 'Stripe Method', 'Stripe Method', '2021-10-07 10:13:45', '2021-10-07 10:13:45'),
(4961, 'en', 'Cash on Delivery (COD)', 'Cash On', '2021-10-07 10:16:20', '2023-01-29 09:17:00'),
(4964, 'en', 'Stripe', 'Stripe', '2021-10-07 10:40:49', '2021-10-07 10:40:49'),
(4967, 'en', 'Bank Transfer', 'Bank Transfer', '2021-10-07 10:52:11', '2021-10-07 10:52:11'),
(4970, 'en', 'Payment Method', 'Payment Method', '2021-10-07 11:26:25', '2021-10-07 11:26:25'),
(4973, 'en', 'Pay online via Stripe', 'Pay online via Stripe', '2021-10-07 11:27:38', '2021-10-07 11:27:38'),
(4976, 'en', 'Publishable Key', 'Publishable Key', '2021-10-07 12:26:28', '2021-10-07 12:26:28'),
(4979, 'en', 'Payment Gateway Icon', 'Payment Gateway Icon', '2021-10-07 21:28:25', '2021-10-07 21:28:25'),
(4980, 'en', 'Payment Methods', 'Payment Methods', '2021-10-07 21:28:56', '2021-10-07 21:28:56'),
(4983, 'en', 'Shipping Method', 'Shipping Method', '2021-10-07 23:00:55', '2021-10-07 23:00:55'),
(4998, 'en', 'Please type valid card number', 'Please type valid card number', '2021-10-11 10:29:24', '2021-10-11 10:29:24'),
(5010, 'en', 'Thank', 'Thank', '2021-10-13 08:44:47', '2021-10-13 08:44:47'),
(5013, 'en', 'Order#', 'Order#', '2021-10-13 10:11:56', '2021-10-13 10:11:56'),
(5019, 'en', 'Guest User', 'Guest User', '2021-10-13 10:20:16', '2021-10-13 10:20:16'),
(5022, 'en', 'Customer', 'Customer', '2021-10-13 10:22:53', '2021-10-13 10:22:53'),
(5025, 'en', 'Amount', 'Amount', '2021-10-13 10:23:44', '2021-10-13 10:23:44'),
(5028, 'en', 'Qty', 'Qty', '2021-10-13 10:24:41', '2021-10-13 10:24:41'),
(5031, 'en', 'Payment Status', 'Payment Status', '2021-10-13 10:27:54', '2021-10-13 10:27:54'),
(5034, 'en', 'Order Status', 'Order Status', '2021-10-13 10:28:44', '2021-10-13 10:28:44'),
(5037, 'en', 'Filter', 'Filter', '2021-10-14 07:43:49', '2021-10-14 07:43:49'),
(5040, 'en', 'Order', 'Order', '2021-10-14 08:48:34', '2021-10-14 08:48:34'),
(5043, 'en', 'Send confirmation email to customer', 'Send confirmation email to customer', '2021-10-14 11:22:27', '2021-10-14 11:22:27'),
(5055, 'en', 'If you have any questions about this invoice, please contact us', 'If you have any questions about this invoice, please contact us', '2021-10-15 11:03:39', '2021-10-15 11:03:39'),
(5058, 'en', 'Invoice', 'Invoice', '2021-10-15 11:17:01', '2021-10-15 11:17:01'),
(5067, 'en', 'Invoice Information', 'Invoice Information', '2021-10-16 10:21:23', '2021-10-16 10:21:23'),
(5070, 'en', 'To', 'To', '2021-10-16 10:53:40', '2021-10-16 10:53:40'),
(5073, 'en', 'BILL TO', 'BILL TO', '2021-10-18 07:27:41', '2021-10-18 07:27:41'),
(5076, 'en', 'BILL FROM', 'BILL FROM', '2021-10-18 07:31:10', '2021-10-18 07:31:10'),
(5082, 'en', 'Thanks for your order. You can find your purchase information below.', 'Thanks for your order. You can find your purchase information below.', '2021-10-18 09:09:31', '2021-10-18 09:09:31'),
(5085, 'en', 'Hi', 'Hi', '2021-10-18 09:10:40', '2021-10-18 09:10:40'),
(5088, 'en', 'Your order status', 'Your order status', '2021-10-18 10:27:44', '2021-10-18 10:27:44'),
(5094, 'en', 'Order Details', 'Order Details', '2021-10-19 12:01:32', '2021-10-19 12:01:32'),
(5097, 'en', 'Current password does not match.', 'Current password does not match.', '2021-10-20 01:23:42', '2021-10-20 01:23:42'),
(5100, 'en', 'New password can not be the old password!', 'New password can not be the old password!', '2021-10-20 01:27:11', '2021-10-20 01:27:11'),
(5103, 'en', 'Current password', 'Current password', '2021-10-20 01:31:47', '2021-10-20 01:31:47'),
(5106, 'en', 'New password', 'New password', '2021-10-20 01:32:48', '2021-10-20 01:32:48'),
(5109, 'en', 'Password confirmation', 'Password confirmation', '2021-10-20 01:33:53', '2021-10-20 01:33:53'),
(5112, 'en', 'Do you really want to active this records', 'Do you really want to active this records', '2021-10-20 06:17:20', '2021-10-20 06:17:20'),
(5115, 'en', 'Do you really want to inactive this records', 'Do you really want to inactive this records', '2021-10-20 06:18:15', '2021-10-20 06:18:15'),
(5118, 'en', 'Customers', 'Customers', '2021-10-20 10:20:56', '2023-01-06 05:48:53'),
(5121, 'en', 'Write comment', 'Write comment', '2021-10-21 07:13:25', '2021-10-21 07:13:25'),
(5124, 'en', 'Please Login', 'Please Login', '2021-10-21 07:47:07', '2021-10-21 07:47:07'),
(5133, 'en', 'Oops! You are unauthorized. Please login.', 'Oops! You are unauthorized. Please login.', '2021-10-21 08:20:07', '2021-10-21 08:20:07'),
(5142, 'en', 'Ratings', 'Ratings', '2021-10-21 10:18:17', '2021-10-21 10:18:17'),
(5145, 'en', 'Comments', 'Comments', '2021-10-21 10:21:08', '2021-10-21 10:21:08'),
(5151, 'en', 'All Category', 'All Category', '2021-10-22 07:25:42', '2021-10-22 07:25:42'),
(5157, 'en', 'All Collection', 'All Collection', '2021-10-22 07:30:22', '2021-10-22 07:30:22'),
(5163, 'en', 'Backend Theme color', 'Backend Theme color', '2021-10-29 02:21:31', '2023-02-16 11:24:55'),
(5166, 'en', 'Awaiting processing', 'Awaiting processing', '2021-10-30 09:34:35', '2021-10-30 09:34:35'),
(5169, 'en', 'Processing', 'Processing', '2021-10-30 09:36:03', '2021-10-30 09:36:03'),
(5172, 'en', 'Ready for pickup', 'Ready for pickup', '2021-10-30 09:36:51', '2021-10-30 09:36:51'),
(5175, 'en', 'Completed', 'Completed', '2021-10-30 09:37:41', '2021-10-30 09:37:41'),
(5178, 'en', 'Canceled', 'Canceled', '2021-10-30 09:38:25', '2021-10-30 09:38:25'),
(5209, 'en', 'Selling', 'Selling', '2021-10-31 08:21:16', '2021-10-31 08:21:16'),
(5212, 'en', 'Newsletters', 'Newsletters', '2021-11-01 08:53:47', '2021-11-01 08:53:47'),
(5218, 'en', 'MailChimp Settings', 'MailChimp Settings', '2021-11-01 09:06:20', '2021-11-01 09:06:20'),
(5220, 'en', 'MailChimp API Key', 'MailChimp API Key', '2021-11-01 09:11:02', '2021-11-01 09:11:02'),
(5223, 'en', 'Audience ID', 'Audience ID', '2021-11-01 09:16:13', '2021-11-01 09:16:13'),
(5226, 'en', 'Subscribe Popup', 'Subscribe Popup', '2021-11-01 09:43:27', '2021-11-01 09:43:27'),
(5232, 'en', 'Created At', 'Created At', '2021-11-01 10:53:10', '2021-11-01 10:53:10'),
(5235, 'en', 'You have successfully subscribed.', 'You have successfully subscribed.', '2021-11-02 09:39:45', '2021-11-02 09:39:45'),
(5238, 'en', 'You are already subscribed.', 'You are already subscribed.', '2021-11-02 09:41:44', '2021-11-02 09:41:44'),
(5241, 'en', 'Some problem occurred, please try again.', 'Some problem occurred, please try again.', '2021-11-02 09:43:52', '2021-11-02 09:43:52'),
(5244, 'en', 'Please enable mailchimp.', 'Please enable mailchimp.', '2021-11-02 09:48:33', '2021-11-02 09:48:33'),
(5247, 'en', 'MailChimp API Key Invalid.', 'MailChimp API Key Invalid.', '2021-11-02 10:05:29', '2021-11-02 10:05:29'),
(5250, 'en', 'The requested resource could not be found.', 'The requested resource could not be found.', '2021-11-02 10:16:11', '2021-11-02 10:16:11'),
(5256, 'en', 'Enter your email address', 'Enter your email address', '2021-11-05 07:43:20', '2021-11-05 07:43:20'),
(5259, 'en', 'Transactions', 'Transactions', '2021-11-07 08:14:44', '2021-11-07 08:14:44'),
(5262, 'en', 'Date', 'Date', '2021-11-07 09:16:20', '2021-11-07 09:16:20'),
(5265, 'en', 'Transaction#', 'Transaction#', '2021-11-07 09:22:09', '2021-11-07 09:22:09'),
(5268, 'en', 'Hello', 'Hello', '2021-11-16 11:08:54', '2021-11-16 11:08:54'),
(5713, 'en', 'Excel', 'Excel', '2021-11-30 10:19:17', '2021-11-30 10:19:17'),
(5716, 'en', 'CSV', 'CSV', '2021-11-30 10:20:34', '2021-11-30 10:20:34'),
(5719, 'en', 'Default Language', 'Default Language', '2021-12-01 08:58:28', '2021-12-01 08:58:28'),
(7708, 'en', 'Create an seller account', 'Create an seller account', '2021-12-07 09:28:05', '2021-12-07 09:28:05'),
(7711, 'en', 'Create an customer account', 'Create an customer account', '2021-12-07 09:29:56', '2021-12-07 09:29:56'),
(7714, 'en', 'Shop Name', 'Shop Name', '2021-12-07 09:55:08', '2021-12-07 09:55:08'),
(7717, 'en', 'Shop URL', 'Shop URL', '2021-12-07 10:03:59', '2021-12-07 10:03:59'),
(7720, 'en', 'Shop Phone', 'Shop Phone', '2021-12-07 10:05:36', '2021-12-07 10:05:36'),
(7723, 'en', 'Available', 'Available', '2021-12-09 10:35:12', '2021-12-09 10:35:12'),
(7726, 'en', 'Not Available', 'Not Available', '2021-12-09 10:36:35', '2021-12-09 10:36:35'),
(7730, 'en', 'Thanks! You have register successfully. Your account is pending for review.', 'Thanks! You have register successfully. Your account is pending for review.', '2021-12-09 11:52:22', '2021-12-09 11:52:22'),
(7757, 'en', 'Bank Name', 'Bank Name', '2021-12-13 08:46:35', '2021-12-13 08:46:35'),
(7760, 'en', 'Bank Code/IFSC', 'Bank Code/IFSC', '2021-12-13 08:48:28', '2021-12-13 08:48:28'),
(7763, 'en', 'Account Number', 'Account Number', '2021-12-13 09:23:30', '2021-12-13 09:23:30'),
(7766, 'en', 'Account Holder Name', 'Account Holder Name', '2021-12-13 09:24:46', '2021-12-13 09:24:46'),
(8235, 'en', 'PayPal ID', 'PayPal ID', '2021-12-21 09:29:38', '2021-12-21 09:29:38'),
(8238, 'en', 'Joined At', 'Joined At', '2021-12-21 10:30:19', '2021-12-21 10:30:19'),
(8241, 'en', 'Bank Information', 'Bank Information', '2021-12-21 10:52:46', '2021-12-21 10:52:46'),
(8244, 'en', 'Details', 'Details', '2021-12-21 10:53:41', '2021-12-21 10:53:41'),
(8247, 'en', 'My Account', 'My Account', '2021-12-25 00:02:31', '2021-12-25 00:02:31'),
(8252, 'en', 'Total Amount', 'Total Amount', '2021-12-31 03:24:10', '2021-12-31 03:24:10'),
(8270, 'en', 'Find', 'Find', '2022-01-03 10:52:20', '2022-01-03 10:52:20'),
(8291, 'en', 'Zip Code', 'Zip Code', '2022-01-11 11:30:34', '2022-01-11 11:30:34'),
(8294, 'en', 'Fee', 'Fee', '2022-01-12 11:00:50', '2022-01-12 11:00:50'),
(8297, 'en', 'Transaction ID', 'Transaction ID', '2022-01-12 11:28:32', '2022-01-12 11:28:32'),
(8315, 'en', 'All Status', 'All Status', '2022-01-17 10:56:27', '2022-01-17 10:56:27'),
(8321, 'en', 'Since', 'Since', '2022-01-21 03:25:18', '2022-01-21 03:25:18'),
(8327, 'en', 'View Website', 'View Website', '2022-01-21 11:39:34', '2022-01-21 11:39:34'),
(8330, 'en', 'Subscribe Settings', 'Subscribe Settings', '2022-01-22 08:35:09', '2022-01-22 08:35:09'),
(8336, 'en', 'Language Switcher', 'Language Switcher', '2022-01-22 10:12:08', '2022-01-22 10:12:08'),
(8339, 'en', 'Paypal', 'Paypal', '2022-05-20 03:52:47', '2022-05-20 03:52:47'),
(8342, 'en', 'Paypal Method', 'Paypal Method', '2022-05-20 03:56:33', '2022-05-20 03:56:33'),
(8345, 'en', 'Client ID', 'Client ID', '2022-05-20 04:06:21', '2022-05-20 04:06:21'),
(8348, 'en', 'Secret', 'Secret', '2022-05-20 04:09:49', '2022-05-20 04:09:49'),
(8351, 'en', 'Sandbox mode', 'Sandbox mode', '2022-05-20 05:02:26', '2022-05-20 05:02:26'),
(8354, 'en', 'Razorpay', 'Razorpay', '2022-05-20 06:08:31', '2022-05-20 06:08:31'),
(8357, 'en', 'Razorpay Method', 'Razorpay Method', '2022-05-20 06:11:09', '2022-05-20 06:11:09'),
(8360, 'en', 'Key Id', 'Key Id', '2022-05-20 06:19:15', '2022-05-20 06:19:15'),
(8363, 'en', 'Key Secret', 'Key Secret', '2022-05-20 06:21:38', '2022-05-20 06:21:38'),
(8366, 'en', 'Mollie', 'Mollie', '2022-05-20 07:34:24', '2022-05-20 07:34:24'),
(8369, 'en', 'Mollie Method', 'Mollie Method', '2022-05-20 07:36:26', '2022-05-20 07:36:26'),
(8372, 'en', 'API Key', 'API Key', '2022-05-20 07:45:45', '2022-05-20 07:45:45'),
(8375, 'en', 'Pay online via Paypal', 'Pay online via Paypal', '2022-05-20 11:21:54', '2022-05-20 11:21:54'),
(8378, 'en', 'Payment with PayPal', 'Payment with PayPal', '2022-05-20 11:27:14', '2022-05-20 11:27:14'),
(8381, 'en', 'Pay online via Razorpay', 'Pay online via Razorpay', '2022-05-20 11:33:32', '2022-05-20 11:33:32'),
(8384, 'en', 'Payment with Razorpay', 'Payment with Razorpay', '2022-05-20 11:34:11', '2022-05-20 11:34:11'),
(8387, 'en', 'Pay online via Mollie', 'Pay online via Mollie', '2022-05-20 11:38:33', '2022-05-20 11:38:33'),
(8390, 'en', 'Payment with Mollie', 'Payment with Mollie', '2022-05-20 11:39:19', '2022-05-20 11:39:19'),
(8393, 'en', 'Connection timeout', 'Connection timeout', '2022-05-27 05:06:38', '2022-05-27 05:06:38'),
(8396, 'en', 'Some error occur, sorry for inconvenient', 'Some error occur, sorry for inconvenient', '2022-05-27 05:08:13', '2022-05-27 05:08:13'),
(8399, 'en', 'Unknown error occurred', 'Unknown error occurred', '2022-05-27 06:00:39', '2022-05-27 06:00:39'),
(8402, 'en', 'Payment failed', 'Payment failed', '2022-05-27 06:55:32', '2022-05-27 06:55:32'),
(8405, 'en', 'Test Mode', 'Test Mode', '2022-05-31 08:52:27', '2022-05-31 08:52:27'),
(8408, 'en', 'Thumbnail Image', 'Thumbnail Image', '2022-06-30 23:36:15', '2022-06-30 23:36:15'),
(8411, 'en', 'Layer Image 1', 'Layer Image 1', '2022-06-30 23:39:16', '2022-06-30 23:39:16'),
(8414, 'en', 'Sub Title', 'Sub Title', '2022-06-30 23:54:25', '2022-06-30 23:54:25'),
(8417, 'en', 'Layer Image 2', 'Layer Image 2', '2022-07-01 00:38:26', '2022-07-01 00:38:26'),
(8420, 'en', 'Layer Image 3', 'Layer Image 3', '2022-07-01 03:36:30', '2022-07-01 03:36:30'),
(8438, 'en', 'Youtube Video URL', 'Youtube Video URL', '2022-07-20 08:10:02', '2022-07-20 08:10:02'),
(8441, 'en', 'Button Text', 'Button Text', '2022-07-20 08:19:59', '2022-07-20 08:19:59'),
(8444, 'en', 'Footer Subscribe Section', 'Footer Subscribe Section', '2022-07-22 04:57:23', '2022-07-22 04:57:23'),
(8447, 'en', 'Subscribe', 'Subscribe', '2022-07-22 06:05:08', '2022-07-22 06:05:08'),
(8450, 'en', 'About Us', 'About Us', '2022-07-22 08:25:05', '2022-07-22 08:25:05'),
(8456, 'en', 'Show More', 'Show More', '2022-07-22 10:35:48', '2022-07-22 10:35:48'),
(8462, 'en', 'Themes', 'Themes', '2022-07-26 09:45:45', '2022-07-26 09:45:45'),
(8465, 'en', 'Activated', 'Activated', '2022-07-26 10:58:56', '2022-07-26 10:58:56'),
(8468, 'en', 'Activate', 'Activate', '2022-07-26 10:59:32', '2022-07-26 10:59:32'),
(8471, 'en', 'Updated Successfully', 'Updated Successfully', '2022-07-26 11:16:37', '2022-07-26 11:16:37'),
(8474, 'en', 'Saved Successfully', 'Saved Successfully', '2022-07-26 11:17:03', '2022-07-26 11:17:03'),
(8480, 'en', 'Unit', 'Unit', '2022-08-02 10:29:08', '2022-08-02 10:29:08'),
(8483, 'en', 'Discount Manage', 'Discount Manage', '2022-08-02 10:58:55', '2022-08-02 10:58:55'),
(8486, 'en', 'Vendor', 'Vendor', '2022-08-07 08:25:23', '2022-08-07 08:25:23'),
(8489, 'en', 'Off', 'Off', '2022-08-09 00:34:07', '2022-08-09 00:34:07'),
(8498, 'en', 'Page Variation', 'Page Variation', '2022-08-11 11:35:13', '2022-08-11 11:35:13'),
(8501, 'en', 'Homepage Variation', 'Homepage Variation', '2022-08-11 11:36:35', '2022-08-11 11:36:35'),
(8507, 'en', 'Category Page Variation', 'Category Page Variation', '2022-08-11 23:29:35', '2022-08-11 23:29:35'),
(8513, 'en', 'Full width without sidebar', 'Full width without sidebar', '2022-08-12 00:18:09', '2022-08-12 00:18:09'),
(8516, 'en', 'Left Sidebar', 'Left Sidebar', '2022-08-12 00:18:48', '2022-08-12 00:18:48'),
(8520, 'en', 'Right Sidebar', 'Right Sidebar', '2022-08-12 00:19:36', '2022-08-12 00:19:36'),
(8531, 'en', 'Top Rated', 'Top Rated', '2022-08-13 10:27:52', '2022-08-13 10:27:52'),
(8565, 'en', 'Manage Page', 'Manage Page', '2022-08-18 05:15:30', '2022-08-18 05:15:30'),
(8567, 'en', 'Section Manage', 'Section Manage', '2022-08-18 05:18:09', '2022-08-18 05:18:09'),
(8570, 'en', 'All Manage Page', 'All Manage Page', '2022-08-18 08:20:23', '2022-08-18 08:20:23'),
(8577, 'en', 'Price Range', 'Price Range', '2022-08-23 10:46:41', '2022-08-23 10:46:41'),
(8579, 'en', 'Countries', 'Countries', '2022-08-24 09:58:42', '2022-08-24 09:58:42'),
(8582, 'en', 'Contact', 'Contact', '2022-08-25 11:10:53', '2022-08-25 11:10:53'),
(8585, 'en', 'Get In Touch', 'Get In Touch', '2022-08-25 11:21:59', '2022-08-25 11:21:59'),
(8588, 'en', 'Contact Info', 'Contact Info', '2022-08-25 11:22:54', '2022-08-25 11:22:54'),
(8591, 'en', 'Google Map', 'Google Map', '2022-08-25 23:16:36', '2022-08-25 23:16:36'),
(8597, 'en', 'Latitude', 'Latitude', '2022-08-25 23:40:27', '2022-08-25 23:40:27'),
(8600, 'en', 'Longitude', 'Longitude', '2022-08-25 23:41:03', '2022-08-25 23:41:03'),
(8603, 'en', 'Zoom', 'Zoom', '2022-08-25 23:41:34', '2022-08-25 23:41:34'),
(8606, 'en', 'Contact Form', 'Contact Form', '2022-08-26 00:14:14', '2022-08-26 00:14:14'),
(8609, 'en', 'Add Field', 'Add Field', '2022-08-26 03:22:56', '2022-08-26 03:22:56'),
(8612, 'en', 'Dropdown Values', 'Dropdown Values', '2022-08-26 03:45:54', '2022-08-26 03:45:54'),
(8615, 'en', 'Please fill up all mandatory fields', 'Please fill up all mandatory fields', '2022-08-26 09:32:13', '2022-08-26 09:32:13'),
(8618, 'en', 'Send Message', 'Send Message', '2022-08-26 10:45:10', '2022-08-26 10:45:10'),
(8621, 'en', 'Label Show/Hide', 'Label Show/Hide', '2022-08-27 08:06:45', '2022-08-27 08:06:45'),
(8624, 'en', 'reCAPTCHA is not valid. Please try again!', 'reCAPTCHA is not valid. Please try again!', '2022-08-28 08:52:02', '2022-08-28 08:52:02'),
(8627, 'en', 'Please check the captcha', 'Please check the captcha', '2022-08-28 08:53:58', '2022-08-28 08:53:58'),
(8630, 'en', 'Your message has been delivered', 'Your message has been delivered', '2022-08-28 09:27:34', '2022-08-28 09:27:34'),
(8634, 'en', 'Oops! Message could not be sent. Please try again.', 'Oops! Message could not be sent. Please try again.', '2022-08-28 09:33:07', '2022-08-28 09:33:07'),
(8636, 'en', 'Select Mail Subject Field', 'Select Mail Subject Field', '2022-08-28 10:41:02', '2022-08-28 10:41:02'),
(8639, 'en', 'Share this', 'Share this', '2022-08-30 07:00:22', '2022-08-30 07:00:22'),
(8642, 'en', 'Your cart is empty!', 'Your cart is empty!', '2022-09-01 12:11:03', '2022-09-01 12:11:03'),
(8651, 'en', 'Dark Gray Color', 'Dark Gray Color', '2022-09-01 23:26:24', '2022-09-01 23:26:24'),
(8655, 'en', 'Gray Color', 'Gray Color', '2022-09-01 23:26:51', '2022-09-01 23:26:51'),
(8661, 'en', 'Black Color', 'Black Color', '2022-09-01 23:38:22', '2022-09-01 23:38:22'),
(8664, 'en', 'White Color', 'White Color', '2022-09-01 23:39:06', '2022-09-01 23:39:06'),
(8666, 'en', 'Cookie Consent', 'Cookie Consent', '2022-10-15 09:38:24', '2022-10-15 09:38:24'),
(8670, 'en', 'Message', 'Message', '2022-10-15 09:39:25', '2022-10-15 09:39:25'),
(8673, 'en', 'Learn More URL', 'Learn More URL', '2022-10-15 09:40:09', '2022-10-15 09:40:09'),
(8675, 'en', 'Learn More Text', 'Learn More Text', '2022-10-15 09:40:26', '2022-10-15 09:40:26'),
(8682, 'en', 'Blog', 'Blog', '2022-10-17 09:40:18', '2022-10-17 09:40:18'),
(8684, 'en', 'Read More', 'Read More', '2022-10-19 11:16:16', '2022-10-19 11:16:16'),
(8687, 'en', 'By', 'By', '2022-10-19 11:19:48', '2022-10-19 11:19:48'),
(8690, 'en', 'Blog Categories', 'Blog Categories', '2022-10-20 11:18:06', '2022-10-20 11:18:06'),
(8693, 'en', 'Thousands Separator', 'Thousands Separator', '2022-12-08 17:33:10', '2022-12-08 17:33:10'),
(8694, 'en', 'Decimal Separator', 'Decimal Separator', '2022-12-08 17:40:39', '2022-12-08 17:40:39'),
(8695, 'en', 'Decimal Digit', 'Decimal Digit', '2022-12-08 17:49:48', '2022-12-08 17:49:48'),
(8697, 'en', 'Amenity', 'Amenity', '2022-12-30 08:13:57', '2022-12-30 08:13:57'),
(8698, 'en', 'Complements', 'Complements', '2022-12-30 08:51:38', '2022-12-30 08:51:38'),
(8699, 'en', 'Complement', 'Complement', '2022-12-30 08:58:07', '2022-12-30 08:58:07'),
(8700, 'en', 'Item', 'Item', '2022-12-30 09:07:19', '2022-12-30 09:07:19'),
(8701, 'en', 'Bed Types', 'Bed Types', '2022-12-30 09:50:48', '2022-12-30 09:50:48'),
(8702, 'en', 'Bed Type', 'Bed Type', '2022-12-30 09:56:27', '2022-12-30 09:56:27'),
(8703, 'en', 'Rooms', 'Rooms', '2022-12-31 10:29:38', '2022-12-31 10:29:38'),
(8704, 'en', 'Room Name', 'Room Name', '2022-12-31 10:44:12', '2022-12-31 10:44:12'),
(8705, 'en', 'Room', 'Room', '2023-01-01 10:39:42', '2023-01-01 10:39:42'),
(8706, 'en', 'Is Featured', 'Is Featured', '2023-01-01 10:56:09', '2023-01-01 10:56:09'),
(8707, 'en', 'Total Adult', 'Total Adult', '2023-01-01 10:58:27', '2023-01-01 10:58:27'),
(8708, 'en', 'Total Child', 'Total Child', '2023-01-01 10:58:38', '2023-01-01 10:58:38'),
(8710, 'en', 'Amenities', 'Amenities', '2023-01-01 11:11:57', '2023-01-01 11:11:57'),
(8711, 'en', 'Beds', 'Beds', '2023-01-01 11:16:52', '2023-01-01 11:16:52'),
(8712, 'en', 'Select beds', 'Select beds', '2023-01-01 11:22:25', '2023-01-01 11:22:25'),
(8713, 'en', 'Select Complements', 'Select Complements', '2023-01-01 11:24:29', '2023-01-01 11:24:29'),
(8714, 'en', 'Select Amenities', 'Select Amenities', '2023-01-01 11:26:06', '2023-01-01 11:26:06'),
(8721, 'en', 'Packages', 'Packages', '2023-01-05 12:27:53', '2023-01-05 12:27:53'),
(8722, 'en', 'Optional', 'Optional', '2023-01-06 03:01:26', '2023-01-06 03:01:26'),
(8723, 'en', 'Night', 'Night', '2023-01-06 08:50:56', '2023-01-06 08:50:56'),
(8724, 'en', 'Book Now', 'Book Now', '2023-01-06 08:51:36', '2023-01-06 08:51:36'),
(8725, 'en', 'Adult', 'Adult', '2023-01-06 08:53:07', '2023-01-06 08:53:07'),
(8726, 'en', 'Child', 'Child', '2023-01-06 08:53:27', '2023-01-06 08:53:27'),
(8727, 'en', 'Our Services', 'Our Services', '2023-01-06 11:08:46', '2023-01-06 11:08:46');
INSERT INTO `lankeyvalues` (`id`, `language_code`, `language_key`, `language_value`, `created_at`, `updated_at`) VALUES
(8728, 'en', 'Slider', 'Slider', '2023-01-06 21:38:58', '2023-01-06 21:38:58'),
(8729, 'en', 'Slider/Hero Section', 'Hero Section', '2023-01-06 21:41:20', '2023-03-05 10:14:27'),
(8730, 'en', 'Video Section', 'Video Section', '2023-01-06 21:43:07', '2023-01-06 21:43:07'),
(8731, 'en', 'Preview', 'Preview', '2023-01-06 22:49:33', '2023-01-06 22:49:33'),
(8732, 'en', 'Testimonial', 'Testimonial', '2023-01-06 23:09:07', '2023-01-06 23:09:07'),
(8733, 'en', 'Client', 'Client', '2023-01-07 01:13:16', '2023-01-07 01:13:16'),
(8735, 'en', 'Oops! Not found.', 'Oops! Not found.', '2023-01-10 09:43:43', '2023-01-10 09:43:43'),
(8736, 'en', 'Latest Blog', 'Latest Blog', '2023-01-10 10:45:48', '2023-01-10 10:45:48'),
(8737, 'en', 'Choose Your Rooms', 'Choose Your Rooms', '2023-01-13 07:03:11', '2023-01-13 07:03:11'),
(8738, 'en', 'Our Blogs', 'Our Blogs', '2023-01-13 07:14:20', '2023-01-13 07:14:20'),
(8739, 'en', 'Subheader BG Images', 'Subheader BG Images', '2023-01-14 07:50:29', '2023-01-14 07:50:29'),
(8740, 'en', 'Blog Subheader Background Image', 'Blog Subheader Background Image', '2023-01-14 08:30:26', '2023-01-14 08:30:26'),
(8741, 'en', 'Contact Us Subheader Background Image', 'Contact Us Subheader Background Image', '2023-01-14 08:38:58', '2023-01-14 08:38:58'),
(8742, 'en', 'Register Subheader Background Image', 'Register Subheader Background Image', '2023-01-14 08:43:33', '2023-01-14 08:43:33'),
(8743, 'en', 'Login Subheader Background Image', 'Login Subheader Background Image', '2023-01-14 08:46:20', '2023-01-14 08:46:20'),
(8744, 'en', 'Reset Password Subheader Background Image', 'Reset Password Subheader Background Image', '2023-01-14 08:50:49', '2023-01-14 08:50:49'),
(8745, 'en', 'Dashboard Subheader Background Image', 'Dashboard Subheader Background Image', '2023-01-14 08:58:13', '2023-01-14 08:58:13'),
(8746, 'en', 'Profile Subheader Background Image', 'Profile Subheader Background Image', '2023-01-14 09:01:33', '2023-01-14 09:01:33'),
(8747, 'en', 'Change Password Subheader Background Image', 'Change Password Subheader Background Image', '2023-01-14 09:06:34', '2023-01-14 09:06:34'),
(8748, 'en', 'Booking', 'Booking', '2023-01-14 09:16:57', '2023-01-14 09:16:57'),
(8749, 'en', 'Booking Subheader Background Image', 'Booking Subheader Background Image', '2023-01-14 09:25:54', '2023-01-14 09:25:54'),
(8750, 'en', 'If you need any help, feel free to contact us.', 'If you need any help, feel free to contact us.', '2023-01-14 10:44:03', '2023-01-14 10:44:03'),
(8752, 'en', 'Total Room', 'Total Room', '2023-01-15 11:41:30', '2023-01-15 11:41:30'),
(8753, 'en', 'Hotel Manage', 'Hotel Manage', '2023-01-16 10:34:31', '2023-01-16 10:34:31'),
(8754, 'en', 'Room Type', 'Room Type', '2023-01-16 10:58:19', '2023-01-16 10:58:19'),
(8755, 'en', 'Room No', 'Room No', '2023-01-21 05:47:22', '2023-01-21 05:47:22'),
(8756, 'en', 'Booking Request', 'Booking Request', '2023-01-25 09:48:48', '2023-01-25 09:48:48'),
(8757, 'en', 'Booking Request Information', 'Booking Request Information', '2023-01-25 09:49:41', '2023-01-25 09:49:41'),
(8758, 'en', 'Send Booking Request', 'Send Booking Request', '2023-01-25 09:57:07', '2023-01-25 09:57:07'),
(8759, 'en', 'Booking Summary', 'Booking Summary', '2023-01-25 10:02:03', '2023-01-25 10:02:03'),
(9323, 'en', 'Check In', 'Check In', '2023-01-27 10:11:51', '2023-01-27 10:11:51'),
(9324, 'en', 'Check Out', 'Check Out', '2023-01-27 10:12:31', '2023-01-27 10:12:31'),
(9325, 'en', 'Oops! Your booking request is failed. Please enter room number.', 'Oops! Your booking request is failed. Please enter room number.', '2023-01-27 10:30:48', '2023-01-27 10:30:48'),
(9326, 'en', 'Oops! Your booking request is failed. Please try again.', 'Oops! Your booking request is failed. Please try again.', '2023-01-27 10:33:57', '2023-01-27 10:33:57'),
(9327, 'en', 'Your booking request is successfully.', 'Your booking request is successfully.', '2023-01-27 10:34:43', '2023-01-27 10:34:43'),
(9328, 'en', 'Thank you for our room booking request.', 'Thank you for our room booking request.', '2023-01-28 04:21:08', '2023-01-28 04:21:08'),
(9330, 'en', 'Go To Your Dashboard', 'Go To Your Dashboard', '2023-01-28 04:28:39', '2023-01-28 04:28:39'),
(9331, 'en', 'Booking Manage', 'Booking Manage', '2023-01-29 10:26:43', '2023-01-29 10:26:43'),
(9332, 'en', 'Approved Booking', 'Approved Booking', '2023-01-29 10:58:19', '2023-01-29 10:58:19'),
(9333, 'en', 'Checked Out Booking', 'Checked Out Booking', '2023-01-29 10:59:06', '2023-01-29 10:59:06'),
(9335, 'en', 'All Booking', 'All Booking', '2023-01-29 11:04:04', '2023-01-29 11:04:04'),
(9337, 'en', 'Cancelled Booking', 'Cancelled Booking', '2023-01-29 11:54:36', '2023-01-29 11:54:36'),
(9339, 'en', 'Booking Status', 'Booking Status', '2023-01-31 09:11:45', '2023-01-31 09:11:45'),
(9340, 'en', 'In / Out Date', 'In / Out Date', '2023-02-01 07:46:58', '2023-02-01 07:46:58'),
(9341, 'en', 'Total Days', 'Total Day', '2023-02-01 07:47:50', '2023-02-05 11:22:33'),
(9342, 'en', 'Booking Date', 'Booking Date', '2023-02-01 09:43:46', '2023-02-01 09:43:46'),
(9343, 'en', 'We have received your booking request and will contact you as soon. You can find your booking information below.', 'We have received your booking request and will contact you as soon. You can find your booking information below.', '2023-02-01 09:59:59', '2023-02-01 09:59:59'),
(9344, 'en', 'Thank you for booking our rooms.', 'Thank you for booking our rooms.', '2023-02-01 10:02:32', '2023-02-01 10:02:32'),
(9345, 'en', 'Booking No', 'Booking No', '2023-02-01 11:31:54', '2023-02-01 11:31:54'),
(9347, 'en', 'Your assign  room no', 'Your assign  room no', '2023-02-02 01:15:32', '2023-02-02 01:15:32'),
(9348, 'en', 'Grand Total', 'Grand Total', '2023-02-02 01:34:59', '2023-02-02 01:34:59'),
(9349, 'en', 'My Booking', 'My Booking', '2023-02-02 05:19:46', '2023-02-02 05:19:46'),
(9350, 'en', 'Running', 'Running', '2023-02-02 09:23:24', '2023-02-02 09:23:24'),
(9351, 'en', 'Checked Out', 'Checked Out', '2023-02-02 09:23:35', '2023-02-02 09:23:35'),
(9352, 'en', 'Invoice Details', 'Invoice Details', '2023-02-02 10:28:37', '2023-02-02 10:28:37'),
(9353, 'en', 'Removed Successfully', 'Removed Successfully', '2023-02-03 03:27:32', '2023-02-03 03:27:32'),
(9930, 'en', 'Customer Information', 'Customer Information', '2023-02-03 12:21:36', '2023-02-03 12:21:36'),
(9931, 'en', 'Merge Room and Date', 'Merge Room and Date', '2023-02-03 12:26:30', '2023-02-03 12:26:30'),
(9932, 'en', 'Assign Room', 'Assign Room', '2023-02-03 21:26:54', '2023-02-03 21:26:54'),
(9933, 'en', 'Room Number', 'Room Number', '2023-02-04 00:16:50', '2023-02-04 00:16:50'),
(9934, 'en', 'Not found assign room', 'Not found assign room', '2023-02-04 00:38:09', '2023-02-04 00:38:09'),
(9936, 'en', 'Already Assigned', 'Already Assigned', '2023-02-04 07:04:26', '2023-02-04 07:04:26'),
(9937, 'en', 'Your booking request is approved. You can find your booking information below.', 'Your booking request is approved. You can find your booking information below.', '2023-02-04 10:26:26', '2023-02-04 10:26:26'),
(9938, 'en', 'Your booking request is approved.', 'Your booking request is approved.', '2023-02-04 10:26:56', '2023-02-04 10:26:56'),
(9939, 'en', 'Your booking has checked out.', 'Your booking has checked out.', '2023-02-04 10:28:37', '2023-02-04 10:28:37'),
(9940, 'en', 'Your booking has checked out. You can find your booking information below.', 'Your booking has checked out. You can find your booking information below.', '2023-02-04 10:28:53', '2023-02-04 10:28:53'),
(9941, 'en', 'Your booking has cancelled.', 'Your booking has cancelled.', '2023-02-04 10:29:36', '2023-02-04 10:29:36'),
(9943, 'en', 'Note', 'Note', '2023-02-08 07:49:14', '2023-02-08 07:49:14'),
(9944, 'en', 'Book Room', 'Book Room', '2023-02-08 10:43:04', '2023-02-08 10:43:04'),
(9945, 'en', 'Pending Payment', 'Pending Payment', '2023-02-08 11:11:44', '2023-02-08 11:11:44'),
(9946, 'en', 'All Payment Status', 'All Payment Status', '2023-02-08 11:26:29', '2023-02-08 11:26:29'),
(9947, 'en', 'Room List', 'Room List', '2023-02-09 10:05:45', '2023-02-09 10:05:45'),
(9948, 'en', 'All Room Type', 'All Room Type', '2023-02-09 10:21:32', '2023-02-09 10:21:32'),
(9949, 'en', 'Booked', 'Booked', '2023-02-09 10:48:47', '2023-02-09 10:48:47'),
(9950, 'en', 'Goto Backend Dashboard', 'Goto Backend Dashboard', '2023-02-11 00:08:57', '2023-02-11 00:08:57'),
(9951, 'en', 'Check Availability', 'Check Availability', '2023-02-11 09:33:13', '2023-02-11 09:33:13'),
(9953, 'en', 'Total Earn', 'Total Earn', '2023-02-13 07:37:04', '2023-02-13 07:37:04'),
(9954, 'en', 'Canceled Payment', 'Canceled Payment', '2023-02-13 08:13:21', '2023-02-13 08:13:21'),
(9955, 'en', 'Incompleted Payment', 'Incompleted Payment', '2023-02-13 08:18:02', '2023-02-13 08:18:02'),
(9956, 'en', 'Total Room Type', 'Total Room Type', '2023-02-13 08:44:17', '2023-02-13 08:44:17'),
(9957, 'en', 'Total Booking Completed', 'Total Booking Completed', '2023-02-13 08:59:46', '2023-02-13 08:59:46'),
(9958, 'en', 'Total Running Booking', 'Total Running Booking', '2023-02-13 09:02:39', '2023-02-13 09:02:39'),
(9959, 'en', 'Total Booking Request', 'Total Booking Request', '2023-02-13 09:09:10', '2023-02-13 09:09:10'),
(9960, 'en', 'Total Booking Canceled', 'Total Booking Canceled', '2023-02-13 09:11:41', '2023-02-13 09:11:41'),
(9961, 'en', 'Today\'s Booked Room', 'Today\'s Booked Room', '2023-02-13 09:30:27', '2023-02-13 09:30:27'),
(9962, 'en', 'Today\'s Available Room', 'Today\'s Available Room', '2023-02-13 09:41:43', '2023-02-13 09:41:43'),
(9963, 'en', 'Total Customer', 'Total Customer', '2023-02-13 10:40:09', '2023-02-13 10:40:09'),
(9964, 'en', 'Active Customer', 'Active Customer', '2023-02-13 10:41:56', '2023-02-13 10:41:56'),
(9965, 'en', 'Inactive Customer', 'Inactive Customer', '2023-02-13 10:44:18', '2023-02-13 10:44:18'),
(9966, 'en', 'Recent Booking Request', 'Recent Booking Request', '2023-02-14 07:38:44', '2023-02-14 07:38:44'),
(9968, 'en', 'Earning', 'Earning', '2023-02-15 09:41:49', '2023-02-15 09:41:49'),
(9969, 'en', 'Monthly Earning Report (Last 12 Months)', 'Monthly Earning Report (Last 12 Months)', '2023-02-15 09:47:17', '2023-02-15 09:47:17'),
(9970, 'en', 'Monthly Booking Report (Last 12 Months)', 'Monthly Booking Report (Last 12 Months)', '2023-02-15 09:50:33', '2023-02-15 09:50:33'),
(9971, 'en', 'Total Booking', 'Total Booking', '2023-02-15 10:24:33', '2023-02-15 10:24:33'),
(9972, 'en', 'Light Color', 'Light Color', '2023-02-16 10:38:49', '2023-02-16 10:38:49'),
(9973, 'en', 'Blue Color', 'Blue Color', '2023-02-16 10:44:06', '2023-02-16 10:44:06'),
(9974, 'en', 'Gray 400 Color', 'Gray 400 Color', '2023-02-16 10:48:34', '2023-02-16 10:48:34'),
(9975, 'en', 'Total Booked Room', 'Total Booked Room', '2023-02-17 04:00:36', '2023-02-17 04:00:36'),
(9977, 'en', 'Available Room for Booking', 'Available Room for Booking', '2023-02-17 06:38:03', '2023-02-17 06:38:03'),
(9978, 'en', 'Todays Booked Rooms', 'Todays Booked Rooms', '2023-02-17 08:41:13', '2023-02-17 08:41:13'),
(9979, 'ar', 'Languages', 'Languages', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(9980, 'ar', 'Data insert failed', 'Data insert failed', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(9981, 'ar', 'Data update failed', 'Data update failed', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(9982, 'ar', 'Data remove failed', 'Data remove failed', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(9983, 'ar', 'Language Keywords', 'Language Keywords', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(9984, 'ar', 'Add New', 'Add New', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(9985, 'ar', 'Back to List', 'Back to List', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(9986, 'ar', 'SL', 'SL', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(9987, 'ar', 'Language Key', 'Language Key', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(9988, 'ar', 'Language Value', 'Language Value', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(9989, 'ar', 'Action', 'Action', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(9990, 'ar', 'Save', 'Save', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(9991, 'ar', 'Cancel', 'Cancel', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(9992, 'ar', 'Do you really want to edit this record', 'Do you really want to edit this record?', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(9993, 'ar', 'Do you really want to delete this record', 'Do you really want to delete this record?', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(9994, 'ar', 'Delete', 'Delete', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(9995, 'ar', 'Edit', 'Edit', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(9996, 'ar', 'Confirm', 'Confirm', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(9997, 'ar', 'This is alert message', 'This is alert message', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(9998, 'ar', 'Language Code', 'Language Code', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(9999, 'ar', 'Language Name', 'Language Name', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10000, 'ar', 'Active Language', 'Active Language', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10001, 'ar', 'General', 'General', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10002, 'ar', 'Site Name', 'Site Name', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10003, 'ar', 'Site Title', 'Site Title', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10004, 'ar', 'Site URL', 'Site URL', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10005, 'ar', 'Theme color', 'Theme color', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10006, 'ar', 'Favicon', 'Favicon', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10007, 'ar', 'The logo must be a file of type png', 'The logo must be a file of type png', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10008, 'ar', 'The file uploaded Successfully', 'The file uploaded Successfully', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10009, 'ar', 'Sorry, there was an error uploading your file', 'Sorry, there was an error uploading your file', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10010, 'ar', 'Sorry only you can upload jpg, png and gif file type', 'Sorry only you can upload jpg, png and gif file type', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10011, 'ar', 'Front Logo', 'Front Logo', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10012, 'ar', 'Back Logo', 'Back Logo', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10013, 'ar', 'Settings', 'Settings', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10014, 'ar', 'Time Zone', 'Time Zone', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10015, 'ar', 'Google reCAPTCHA', 'Google reCAPTCHA', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10016, 'ar', 'Theme Register', 'Theme Register', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10017, 'ar', 'Mail Settings', 'Mail Settings', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10018, 'ar', 'Media Setting', 'Media Setting', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10019, 'ar', 'Purchase Code', 'Purchase Code', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10020, 'ar', 'Sorry, This is not a valid purchase code.', 'Sorry, This is not a valid purchase code.', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10021, 'ar', 'Theme registered Successfully', 'Theme registered Successfully', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10022, 'ar', 'Theme deregister Successfully', 'Theme deregister Successfully', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10023, 'ar', 'Do you really want to deregister the theme', 'Do you really want to deregister the theme?', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10024, 'ar', 'Theme is registered', 'Theme is registered', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10025, 'ar', 'Deregister Theme', 'Deregister Theme', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10026, 'ar', 'Register Theme', 'Register Theme', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10027, 'ar', 'Users', 'Users', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10028, 'ar', 'Name', 'Name', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10029, 'ar', 'Email', 'Email', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10030, 'ar', 'Status', 'Status', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10031, 'ar', 'Role', 'Role', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10032, 'ar', 'Active', 'Active', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10033, 'ar', 'Inactive', 'Inactive', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10034, 'ar', 'Email Address', 'Email Address', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10035, 'ar', 'Password', 'Password', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10036, 'ar', 'Phone', 'Phone', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10037, 'ar', 'Address', 'Address', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10038, 'ar', 'Active/Inactive', 'Active/Inactive', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10039, 'ar', 'Roles', 'Roles', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10040, 'ar', 'The profile image must be a file of type jpg', 'The profile image must be a file of type jpg', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10041, 'ar', 'Profile Photo', 'Profile Photo', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10042, 'ar', 'Profile photo size 300x300 pixels', 'Profile photo size 300x300 pixels', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10043, 'ar', 'Browse', 'Browse', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10044, 'ar', 'Profile', 'Profile', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10045, 'ar', 'You are not active yet. Please contact administrator.', 'You are not active yet. Please contact administrator.', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10046, 'ar', 'You do not have permission to access this page', 'You do not have permission to access this page.', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10047, 'ar', 'Media', 'Media', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10048, 'ar', 'Attachment Details', 'Attachment Details', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10049, 'ar', 'Alternative Text', 'Alternative Text', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10050, 'ar', 'Title', 'Title', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10051, 'ar', 'Copy Link Thumbnail Image', 'Copy Link Thumbnail Image', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10052, 'ar', 'Copy Link large Image', 'Copy Link large Image', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10053, 'ar', 'Back', 'Back', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10054, 'ar', 'Select File', 'Select File', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10055, 'ar', 'All', 'All', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10056, 'ar', 'Bulk Select', 'Bulk Select', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10057, 'ar', 'Delete Permanently', 'Delete Permanently', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10058, 'ar', 'Search', 'Search', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10059, 'ar', 'Type', 'Type', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10060, 'ar', 'Width', 'Width', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10061, 'ar', 'Height', 'Height', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10062, 'ar', 'Categories', 'Categories', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10063, 'ar', 'Category Name', 'Category Name', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10064, 'ar', 'Slug', 'Slug', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10065, 'ar', 'Language', 'Language', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10066, 'ar', 'All Language', 'All Language', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10067, 'ar', 'Description', 'Description', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10068, 'ar', 'Subheader Image', 'Subheader Image', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10069, 'ar', 'Choose a File', 'Choose a File', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10070, 'ar', 'Upload File', 'Upload File', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10071, 'ar', 'Copy Thumbnail Image', 'Copy Thumbnail Image', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10072, 'ar', 'Menu', 'Menu', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10073, 'ar', 'Menu Name', 'Menu Name', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10074, 'ar', 'Menu Position', 'Menu Position', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10075, 'ar', 'Menu Status', 'Menu Status', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10076, 'ar', 'Position', 'Position', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10077, 'ar', 'Customize', 'Customize', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10078, 'ar', 'No data available', 'No data available', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10079, 'ar', 'Apply', 'Apply', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10080, 'ar', 'Do you really want to publish this records', 'Do you really want to publish this records?', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10081, 'ar', 'Do you really want to draft this records', 'Do you really want to draft this records?', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10082, 'ar', 'Do you really want to delete this records', 'Do you really want to delete this records?', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10083, 'ar', 'Please select action', 'Please select action', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10084, 'ar', 'Please select record', 'Please select record', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10085, 'ar', 'Save Menu', 'Save Menu', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10086, 'ar', 'Menu structure', 'Menu structure', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10087, 'ar', 'Add menu items', 'Add menu items', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10088, 'ar', 'Only selected language menu list', 'Only selected language menu list', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10089, 'ar', 'URL', 'URL', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10090, 'ar', 'Link Text', 'Link Text', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10091, 'ar', 'Navigation Label', 'Navigation Label', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10092, 'ar', 'Add to Menu', 'Add to Menu', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10093, 'ar', 'Select All', 'Select All', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10094, 'ar', 'Pages', 'Pages', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10095, 'ar', 'Posts', 'Posts', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10096, 'ar', 'Custom Links', 'Custom Links', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10097, 'ar', 'Target Window', 'Target Window', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10098, 'ar', 'CSS Class (Optional)', 'CSS Class (Optional)', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10099, 'ar', 'Select menu option', 'Select menu option', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10100, 'ar', 'Select width', 'Select width', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10101, 'ar', 'Please fill out required field', 'Please fill out required field.', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10102, 'ar', 'Full Width', 'Full Width', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10103, 'ar', 'Fixed Width', 'Fixed Width', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10104, 'ar', 'Mega Menu', 'Mega Menu', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10105, 'ar', 'Dropdown', 'Dropdown', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10106, 'ar', 'None', 'None', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10107, 'ar', 'Dropdown Menu', 'Dropdown Menu', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10108, 'ar', 'Edit Mega Menu Title', 'Edit Mega Menu Title', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10109, 'ar', 'Title Enable/Disable', 'Title Enable/Disable', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10110, 'ar', 'Image Enable/Disable', 'Image Enable/Disable', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10111, 'ar', 'Image', 'Image', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10112, 'ar', 'All Posts', 'All Posts', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10113, 'ar', 'All Pages', 'All Pages', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10114, 'ar', 'Published', 'Published', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10115, 'ar', 'Draft', 'Draft', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10116, 'ar', 'Publish', 'Publish', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10117, 'ar', 'Select Action', 'Select Action', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10118, 'ar', 'Home Page', 'Home Page', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10119, 'ar', 'Home', 'Home', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10120, 'ar', 'Permalink', 'Permalink', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10121, 'ar', 'Add New Row', 'Add New Row', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10122, 'ar', 'Add Column', 'Add Column', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10123, 'ar', 'Add Item', 'Add Item', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10124, 'ar', 'Generate', 'Generate', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10125, 'ar', 'Custom', 'Custom', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10126, 'ar', 'Save changes', 'Save changes', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10127, 'ar', 'Row Options', 'Row Options', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10128, 'ar', 'Define an admin label for easy identification', 'Define an admin label for easy identification.', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10129, 'ar', 'Admin Label', 'Admin Label', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10130, 'ar', 'Style', 'Style', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10131, 'ar', 'Enable this option to make this row fluid. Fluid row will help you publish full width contents.', 'Enable this option to make this row fluid. Fluid row will help you publish full width contents.', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10132, 'ar', 'Enable this option to remove gutters between columns in this row.', 'Enable this option to remove gutters between columns in this row.', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10133, 'ar', 'Section ID', 'Section ID', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10134, 'ar', 'A unique ID that will be applied to this row. Must start with a letter and may only contain dashes, underscores, letters or numbers. No spaces.', 'A unique ID that will be applied to this row. Must start with a letter and may only contain dashes, underscores, letters or numbers. No spaces.', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10135, 'ar', 'CSS Class', 'CSS Class', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10136, 'ar', 'If you wish to style a particular content element differently, then use this field to add a class name and also refer to it in your css file.', 'If you wish to style a particular content element differently, then use this field to add a class name and also refer to it in your css file.', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10137, 'ar', 'Padding Top', 'Padding Top', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10138, 'ar', 'Padding Bottom', 'Padding Bottom', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10139, 'ar', 'Background Color', 'Background Color', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10140, 'ar', 'Background Image', 'Background Image', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10141, 'ar', 'Background Position', 'Background Position', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10142, 'ar', 'Mailer', 'Mailer', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10143, 'ar', 'From Name', 'From Name', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10144, 'ar', 'From Mail Address', 'From Mail Address', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10145, 'ar', 'SMTP Host', 'SMTP Host', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10146, 'ar', 'SMTP Port', 'SMTP Port', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10147, 'ar', 'SMTP Security', 'SMTP Security', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10148, 'ar', 'SMTP Username', 'SMTP Username', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10149, 'ar', 'SMTP Password', 'SMTP Password', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10150, 'ar', 'To Name', 'To Name', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10151, 'ar', 'To Mail Address', 'To Mail Address', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10152, 'ar', 'Theme Options', 'Theme Options', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10153, 'ar', 'Logo', 'Logo', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10154, 'ar', 'Custom CSS', 'Custom CSS', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10155, 'ar', 'Custom JS', 'Custom JS', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10156, 'ar', 'Tax', 'Tax', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10157, 'ar', 'Percentage', 'Percentage', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10158, 'ar', 'Coupons', 'Coupons', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10159, 'ar', 'Code', 'Code', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10160, 'ar', 'Expire Date', 'Expire Date', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10161, 'ar', 'Labels', 'Labels', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10162, 'ar', 'Color', 'Color', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10163, 'ar', 'Shipping', 'Shipping', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10164, 'ar', 'Shipping Fee', 'Shipping Fee', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10165, 'ar', 'Featured', 'Featured', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10166, 'ar', 'YES', 'YES', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10167, 'ar', 'NO', 'NO', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10168, 'ar', 'Subheader', 'Subheader', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10169, 'ar', 'SEO', 'SEO', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10170, 'ar', 'SEO Title', 'SEO Title', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10171, 'ar', 'SEO Keywords', 'SEO Keywords', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10172, 'ar', 'SEO Description', 'SEO Description', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10173, 'ar', 'Open Graph Image', 'Open Graph Image', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10174, 'ar', 'Offer & Ads', 'Offer & Ads', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10175, 'ar', 'Offer & Ads Position', 'Offer & Ads Position', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10176, 'ar', 'Price', 'Price', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10177, 'ar', 'Images', 'Images', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10178, 'ar', 'Variations', 'Variations', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10179, 'ar', 'Inventory', 'Inventory', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10180, 'ar', 'Short Description', 'Short Description', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10181, 'ar', 'Category', 'Category', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10182, 'ar', 'Label', 'Label', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10183, 'ar', 'Cost Price', 'Cost Price', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10184, 'ar', 'Sale Price', 'Sale Price', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10185, 'ar', 'Old Price', 'Old Price', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10186, 'ar', 'Start Date', 'Start Date', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10187, 'ar', 'End Date', 'End Date', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10188, 'ar', 'Manage Stock', 'Manage Stock', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10189, 'ar', 'SKU', 'SKU', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10190, 'ar', 'Stock Status', 'Stock Status', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10191, 'ar', 'Stock Quantity', 'Stock Quantity', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10192, 'ar', 'In Stock', 'In Stock', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10193, 'ar', 'Featured image', 'Featured image', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10194, 'ar', 'Size', 'Size', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10195, 'ar', 'Select color', 'Select color', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10196, 'ar', 'Select Size', 'Select Size', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10197, 'ar', 'Multiple Images', 'Multiple Images', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10198, 'ar', 'Social Media', 'Social Media', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10199, 'ar', 'Twitter', 'Twitter', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10200, 'ar', 'Google Analytics', 'Google Analytics', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10201, 'ar', 'Google Tag Manager', 'Google Tag Manager', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10202, 'ar', 'Whatsapp', 'Whatsapp', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10203, 'ar', 'See all', 'See all', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10204, 'ar', 'Currency', 'Currency', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10205, 'ar', 'Currency Name', 'Currency Name', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10206, 'ar', 'Currency Icon', 'Currency Icon', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10207, 'ar', 'Currency Position', 'Currency Position', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10208, 'ar', 'RTL', 'RTL', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10209, 'ar', 'Available Offer', 'Available Offer', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10210, 'ar', 'Header', 'Header', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10211, 'ar', 'Footer', 'Footer', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10212, 'ar', 'Subscribe our newsletter', 'Subscribe our newsletter', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10213, 'ar', 'Submit', 'Submit', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10214, 'ar', 'Enter your email', 'Enter your email', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10215, 'ar', 'Contact Us', 'Contact Us', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10216, 'ar', 'Copyright', 'Copyright', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10217, 'ar', 'Quick links', 'Quick links', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10218, 'ar', 'Company', 'Company', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10219, 'ar', 'Availability', 'Availability', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10220, 'ar', 'Quantity', 'Quantity', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10221, 'ar', 'Buy Now', 'Buy Now', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10222, 'ar', 'Add To Cart', 'Add To Cart', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10223, 'ar', 'Your rating of this product', 'Your rating of this product', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10224, 'ar', 'login', 'Login', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10225, 'ar', 'Showing', 'Showing', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10226, 'ar', 'Default', 'Default', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10227, 'ar', 'Added product to cart failed.', 'Added product to cart failed.', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10228, 'ar', 'Shopping Cart', 'Shopping Cart', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10229, 'ar', 'View Cart', 'View Cart', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10230, 'ar', 'Checkout', 'Checkout', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10231, 'ar', 'Subtotal', 'Subtotal', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10232, 'ar', 'Total', 'Total', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10233, 'ar', 'Please select required field.', 'Please select required field.', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10234, 'ar', 'Cart', 'Cart', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10235, 'ar', 'Variation', 'Variation', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10236, 'ar', 'Remove', 'Remove', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10237, 'ar', 'Cart Total', 'Cart Total', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10238, 'ar', 'Price Total', 'Price Total', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10239, 'ar', 'Proceed To CheckOut', 'Proceed To CheckOut', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10240, 'ar', 'Discount', 'Discount', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10241, 'ar', 'View', 'View', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10242, 'ar', 'Facebook APP ID', 'Facebook APP ID', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10243, 'ar', 'Facebook Pixel', 'Facebook Pixel', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10244, 'ar', 'Register', 'Register', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10245, 'ar', 'Sign in', 'Sign in', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10246, 'ar', 'Sign up for an account', 'Sign up for an account', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10247, 'ar', 'Forgot your password?', 'Forgot your password?', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10248, 'ar', 'Back to login', 'Back to login', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10249, 'ar', 'Please enter your email address and password', 'Please enter your email address and password', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10250, 'ar', 'Please fill in the information below', 'Please fill in the information below', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10251, 'ar', 'Remember me', 'Remember me', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10252, 'ar', 'Confirm password', 'Confirm password', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10253, 'ar', 'My Dashboard', 'My Dashboard', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10254, 'ar', 'Logout', 'Logout', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10255, 'ar', 'The recaptcha field is required', 'The recaptcha field is required', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10256, 'ar', 'Thanks! You have register successfully. Please login.', 'Thanks! You have register successfully. Please login.', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10257, 'ar', 'Oops! You are failed registration. Please try again.', 'Oops! You are failed registration. Please try again.', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10258, 'ar', 'Your email address and password incorrect.', 'Your email address and password incorrect.', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10259, 'ar', 'Reset Password', 'Reset Password', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10260, 'ar', 'Enter your email address below and we will send you a link to reset your password', 'Enter your email address below and we will send you a link to reset your password', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10261, 'ar', 'Send Password Reset Link', 'Send Password Reset Link', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10262, 'ar', 'We can not find a user with that email address', 'We can not find a user with that email address', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10263, 'ar', 'We have emailed your password reset link!', 'We have emailed your password reset link!', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10264, 'ar', 'Oops! You are failed change password request. Please try again', 'Oops! You are failed change password request. Please try again', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10265, 'ar', 'Forgot your password', 'Forgot your password', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10266, 'ar', 'Need to forgot your password? No problem! Just click the button below and you will be on way. If you did not make this request, please ignore this email.', 'Need to forgot your password? No problem! Just click the button below and you will be on way. If you did not make this request, please ignore this email.', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10267, 'ar', 'This password reset token is invalid', 'This password reset token is invalid', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10268, 'ar', 'Oops! You are failed change password. Please try again', 'Oops! You are failed change password. Please try again', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10269, 'ar', 'Your password changed successfully', 'Your password changed successfully', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10270, 'ar', 'This password reset email is invalid', 'This password reset email is invalid', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10271, 'ar', 'Dashboard', 'Dashboard', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10272, 'ar', 'Orders', 'Orders', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10273, 'ar', 'Change Password', 'Change Password', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10274, 'ar', 'Update', 'Update', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10275, 'ar', 'State', 'State', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10276, 'ar', 'City', 'City', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10277, 'ar', 'Already have an account?', 'Already have an account?', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10278, 'ar', 'Register an account with above information?', 'Register an account with above information?', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10279, 'ar', 'Country', 'Country', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10280, 'ar', 'Stripe Secret', 'Stripe Secret', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10281, 'ar', 'Stripe Method', 'Stripe Method', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10282, 'ar', 'Cash on Delivery (COD)', 'Cash On', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10283, 'ar', 'Stripe', 'Stripe', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10284, 'ar', 'Bank Transfer', 'Bank Transfer', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10285, 'ar', 'Payment Method', 'Payment Method', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10286, 'ar', 'Pay online via Stripe', 'Pay online via Stripe', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10287, 'ar', 'Publishable Key', 'Publishable Key', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10288, 'ar', 'Payment Gateway Icon', 'Payment Gateway Icon', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10289, 'ar', 'Payment Methods', 'Payment Methods', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10290, 'ar', 'Shipping Method', 'Shipping Method', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10291, 'ar', 'Please type valid card number', 'Please type valid card number', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10292, 'ar', 'Thank', 'Thank', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10293, 'ar', 'Order#', 'Order#', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10294, 'ar', 'Guest User', 'Guest User', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10295, 'ar', 'Customer', 'Customer', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10296, 'ar', 'Amount', 'Amount', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10297, 'ar', 'Qty', 'Qty', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10298, 'ar', 'Payment Status', 'Payment Status', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10299, 'ar', 'Order Status', 'Order Status', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10300, 'ar', 'Filter', 'Filter', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10301, 'ar', 'Order', 'Order', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10302, 'ar', 'Send confirmation email to customer', 'Send confirmation email to customer', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10303, 'ar', 'If you have any questions about this invoice, please contact us', 'If you have any questions about this invoice, please contact us', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10304, 'ar', 'Invoice', 'Invoice', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10305, 'ar', 'Invoice Information', 'Invoice Information', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10306, 'ar', 'To', 'To', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10307, 'ar', 'BILL TO', 'BILL TO', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10308, 'ar', 'BILL FROM', 'BILL FROM', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10309, 'ar', 'Thanks for your order. You can find your purchase information below.', 'Thanks for your order. You can find your purchase information below.', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10310, 'ar', 'Hi', 'Hi', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10311, 'ar', 'Your order status', 'Your order status', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10312, 'ar', 'Order Details', 'Order Details', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10313, 'ar', 'Current password does not match.', 'Current password does not match.', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10314, 'ar', 'New password can not be the old password!', 'New password can not be the old password!', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10315, 'ar', 'Current password', 'Current password', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10316, 'ar', 'New password', 'New password', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10317, 'ar', 'Password confirmation', 'Password confirmation', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10318, 'ar', 'Do you really want to active this records', 'Do you really want to active this records', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10319, 'ar', 'Do you really want to inactive this records', 'Do you really want to inactive this records', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10320, 'ar', 'Customers', 'Customers', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10321, 'ar', 'Write comment', 'Write comment', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10322, 'ar', 'Please Login', 'Please Login', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10323, 'ar', 'Oops! You are unauthorized. Please login.', 'Oops! You are unauthorized. Please login.', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10324, 'ar', 'Ratings', 'Ratings', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10325, 'ar', 'Comments', 'Comments', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10326, 'ar', 'All Category', 'All Category', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10327, 'ar', 'All Collection', 'All Collection', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10328, 'ar', 'Backend Theme color', 'Backend Theme color', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10329, 'ar', 'Awaiting processing', 'Awaiting processing', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10330, 'ar', 'Processing', 'Processing', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10331, 'ar', 'Ready for pickup', 'Ready for pickup', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10332, 'ar', 'Completed', 'Completed', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10333, 'ar', 'Canceled', 'Canceled', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10334, 'ar', 'Selling', 'Selling', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10335, 'ar', 'Newsletters', 'Newsletters', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10336, 'ar', 'MailChimp Settings', 'MailChimp Settings', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10337, 'ar', 'MailChimp API Key', 'MailChimp API Key', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10338, 'ar', 'Audience ID', 'Audience ID', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10339, 'ar', 'Subscribe Popup', 'Subscribe Popup', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10340, 'ar', 'Created At', 'Created At', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10341, 'ar', 'You have successfully subscribed.', 'You have successfully subscribed.', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10342, 'ar', 'You are already subscribed.', 'You are already subscribed.', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10343, 'ar', 'Some problem occurred, please try again.', 'Some problem occurred, please try again.', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10344, 'ar', 'Please enable mailchimp.', 'Please enable mailchimp.', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10345, 'ar', 'MailChimp API Key Invalid.', 'MailChimp API Key Invalid.', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10346, 'ar', 'The requested resource could not be found.', 'The requested resource could not be found.', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10347, 'ar', 'Enter your email address', 'Enter your email address', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10348, 'ar', 'Transactions', 'Transactions', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10349, 'ar', 'Date', 'Date', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10350, 'ar', 'Transaction#', 'Transaction#', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10351, 'ar', 'Hello', 'Hello', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10352, 'ar', 'Excel', 'Excel', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10353, 'ar', 'CSV', 'CSV', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10354, 'ar', 'Default Language', 'Default Language', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10355, 'ar', 'Create an seller account', 'Create an seller account', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10356, 'ar', 'Create an customer account', 'Create an customer account', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10357, 'ar', 'Shop Name', 'Shop Name', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10358, 'ar', 'Shop URL', 'Shop URL', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10359, 'ar', 'Shop Phone', 'Shop Phone', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10360, 'ar', 'Available', 'Available', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10361, 'ar', 'Not Available', 'Not Available', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10362, 'ar', 'Thanks! You have register successfully. Your account is pending for review.', 'Thanks! You have register successfully. Your account is pending for review.', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10363, 'ar', 'Bank Name', 'Bank Name', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10364, 'ar', 'Bank Code/IFSC', 'Bank Code/IFSC', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10365, 'ar', 'Account Number', 'Account Number', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10366, 'ar', 'Account Holder Name', 'Account Holder Name', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10367, 'ar', 'PayPal ID', 'PayPal ID', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10368, 'ar', 'Joined At', 'Joined At', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10369, 'ar', 'Bank Information', 'Bank Information', '2023-11-27 08:48:46', '2023-11-27 08:48:46');
INSERT INTO `lankeyvalues` (`id`, `language_code`, `language_key`, `language_value`, `created_at`, `updated_at`) VALUES
(10370, 'ar', 'Details', 'Details', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10371, 'ar', 'My Account', 'My Account', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10372, 'ar', 'Total Amount', 'Total Amount', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10373, 'ar', 'Find', 'Find', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10374, 'ar', 'Zip Code', 'Zip Code', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10375, 'ar', 'Fee', 'Fee', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10376, 'ar', 'Transaction ID', 'Transaction ID', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10377, 'ar', 'All Status', 'All Status', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10378, 'ar', 'Since', 'Since', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10379, 'ar', 'View Website', 'عرض الموقع الإلكتروني', '2023-11-27 08:48:46', '2023-11-27 08:51:00'),
(10380, 'ar', 'Subscribe Settings', 'Subscribe Settings', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10381, 'ar', 'Language Switcher', 'Language Switcher', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10382, 'ar', 'Paypal', 'Paypal', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10383, 'ar', 'Paypal Method', 'Paypal Method', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10384, 'ar', 'Client ID', 'Client ID', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10385, 'ar', 'Secret', 'Secret', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10386, 'ar', 'Sandbox mode', 'Sandbox mode', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10387, 'ar', 'Razorpay', 'Razorpay', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10388, 'ar', 'Razorpay Method', 'Razorpay Method', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10389, 'ar', 'Key Id', 'Key Id', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10390, 'ar', 'Key Secret', 'Key Secret', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10391, 'ar', 'Mollie', 'Mollie', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10392, 'ar', 'Mollie Method', 'Mollie Method', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10393, 'ar', 'API Key', 'API Key', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10394, 'ar', 'Pay online via Paypal', 'Pay online via Paypal', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10395, 'ar', 'Payment with PayPal', 'Payment with PayPal', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10396, 'ar', 'Pay online via Razorpay', 'Pay online via Razorpay', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10397, 'ar', 'Payment with Razorpay', 'Payment with Razorpay', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10398, 'ar', 'Pay online via Mollie', 'Pay online via Mollie', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10399, 'ar', 'Payment with Mollie', 'Payment with Mollie', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10400, 'ar', 'Connection timeout', 'Connection timeout', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10401, 'ar', 'Some error occur, sorry for inconvenient', 'Some error occur, sorry for inconvenient', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10402, 'ar', 'Unknown error occurred', 'Unknown error occurred', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10403, 'ar', 'Payment failed', 'Payment failed', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10404, 'ar', 'Test Mode', 'Test Mode', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10405, 'ar', 'Thumbnail Image', 'Thumbnail Image', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10406, 'ar', 'Layer Image 1', 'Layer Image 1', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10407, 'ar', 'Sub Title', 'Sub Title', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10408, 'ar', 'Layer Image 2', 'Layer Image 2', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10409, 'ar', 'Layer Image 3', 'Layer Image 3', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10410, 'ar', 'Youtube Video URL', 'Youtube Video URL', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10411, 'ar', 'Button Text', 'Button Text', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10412, 'ar', 'Footer Subscribe Section', 'Footer Subscribe Section', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10413, 'ar', 'Subscribe', 'Subscribe', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10414, 'ar', 'About Us', 'About Us', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10415, 'ar', 'Show More', 'Show More', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10416, 'ar', 'Themes', 'Themes', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10417, 'ar', 'Activated', 'Activated', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10418, 'ar', 'Activate', 'Activate', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10419, 'ar', 'Updated Successfully', 'Updated Successfully', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10420, 'ar', 'Saved Successfully', 'Saved Successfully', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10421, 'ar', 'Unit', 'Unit', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10422, 'ar', 'Discount Manage', 'Discount Manage', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10423, 'ar', 'Vendor', 'Vendor', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10424, 'ar', 'Off', 'Off', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10425, 'ar', 'Page Variation', 'Page Variation', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10426, 'ar', 'Homepage Variation', 'Homepage Variation', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10427, 'ar', 'Category Page Variation', 'Category Page Variation', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10428, 'ar', 'Full width without sidebar', 'Full width without sidebar', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10429, 'ar', 'Left Sidebar', 'Left Sidebar', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10430, 'ar', 'Right Sidebar', 'Right Sidebar', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10431, 'ar', 'Top Rated', 'Top Rated', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10432, 'ar', 'Manage Page', 'Manage Page', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10433, 'ar', 'Section Manage', 'Section Manage', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10434, 'ar', 'All Manage Page', 'All Manage Page', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10435, 'ar', 'Price Range', 'Price Range', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10436, 'ar', 'Countries', 'Countries', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10437, 'ar', 'Contact', 'Contact', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10438, 'ar', 'Get In Touch', 'Get In Touch', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10439, 'ar', 'Contact Info', 'Contact Info', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10440, 'ar', 'Google Map', 'Google Map', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10441, 'ar', 'Latitude', 'Latitude', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10442, 'ar', 'Longitude', 'Longitude', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10443, 'ar', 'Zoom', 'Zoom', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10444, 'ar', 'Contact Form', 'Contact Form', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10445, 'ar', 'Add Field', 'Add Field', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10446, 'ar', 'Dropdown Values', 'Dropdown Values', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10447, 'ar', 'Please fill up all mandatory fields', 'Please fill up all mandatory fields', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10448, 'ar', 'Send Message', 'Send Message', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10449, 'ar', 'Label Show/Hide', 'Label Show/Hide', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10450, 'ar', 'reCAPTCHA is not valid. Please try again!', 'reCAPTCHA is not valid. Please try again!', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10451, 'ar', 'Please check the captcha', 'Please check the captcha', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10452, 'ar', 'Your message has been delivered', 'Your message has been delivered', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10453, 'ar', 'Oops! Message could not be sent. Please try again.', 'Oops! Message could not be sent. Please try again.', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10454, 'ar', 'Select Mail Subject Field', 'Select Mail Subject Field', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10455, 'ar', 'Share this', 'Share this', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10456, 'ar', 'Your cart is empty!', 'Your cart is empty!', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10457, 'ar', 'Dark Gray Color', 'Dark Gray Color', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10458, 'ar', 'Gray Color', 'Gray Color', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10459, 'ar', 'Black Color', 'Black Color', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10460, 'ar', 'White Color', 'White Color', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10461, 'ar', 'Cookie Consent', 'Cookie Consent', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10462, 'ar', 'Message', 'Message', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10463, 'ar', 'Learn More URL', 'Learn More URL', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10464, 'ar', 'Learn More Text', 'Learn More Text', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10465, 'ar', 'Blog', 'Blog', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10466, 'ar', 'Read More', 'Read More', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10467, 'ar', 'By', 'By', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10468, 'ar', 'Blog Categories', 'Blog Categories', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10469, 'ar', 'Thousands Separator', 'Thousands Separator', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10470, 'ar', 'Decimal Separator', 'Decimal Separator', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10471, 'ar', 'Decimal Digit', 'Decimal Digit', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10472, 'ar', 'Amenity', 'Amenity', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10473, 'ar', 'Complements', 'Complements', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10474, 'ar', 'Complement', 'Complement', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10475, 'ar', 'Item', 'Item', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10476, 'ar', 'Bed Types', 'Bed Types', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10477, 'ar', 'Bed Type', 'Bed Type', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10478, 'ar', 'Rooms', 'Rooms', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10479, 'ar', 'Room Name', 'Room Name', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10480, 'ar', 'Room', 'Room', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10481, 'ar', 'Is Featured', 'Is Featured', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10482, 'ar', 'Total Adult', 'Total Adult', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10483, 'ar', 'Total Child', 'Total Child', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10484, 'ar', 'Amenities', 'Amenities', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10485, 'ar', 'Beds', 'Beds', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10486, 'ar', 'Select beds', 'Select beds', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10487, 'ar', 'Select Complements', 'Select Complements', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10488, 'ar', 'Select Amenities', 'Select Amenities', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10489, 'ar', 'Packages', 'Packages', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10490, 'ar', 'Optional', 'Optional', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10491, 'ar', 'Night', 'Night', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10492, 'ar', 'Book Now', 'Book Now', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10493, 'ar', 'Adult', 'Adult', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10494, 'ar', 'Child', 'Child', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10495, 'ar', 'Our Services', 'Our Services', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10496, 'ar', 'Slider', 'Slider', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10497, 'ar', 'Slider/Hero Section', 'Hero Section', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10498, 'ar', 'Video Section', 'Video Section', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10499, 'ar', 'Preview', 'Preview', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10500, 'ar', 'Testimonial', 'Testimonial', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10501, 'ar', 'Client', 'Client', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10502, 'ar', 'Oops! Not found.', 'Oops! Not found.', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10503, 'ar', 'Latest Blog', 'Latest Blog', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10504, 'ar', 'Choose Your Rooms', 'Choose Your Rooms', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10505, 'ar', 'Our Blogs', 'Our Blogs', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10506, 'ar', 'Subheader BG Images', 'Subheader BG Images', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10507, 'ar', 'Blog Subheader Background Image', 'Blog Subheader Background Image', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10508, 'ar', 'Contact Us Subheader Background Image', 'Contact Us Subheader Background Image', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10509, 'ar', 'Register Subheader Background Image', 'Register Subheader Background Image', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10510, 'ar', 'Login Subheader Background Image', 'Login Subheader Background Image', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10511, 'ar', 'Reset Password Subheader Background Image', 'Reset Password Subheader Background Image', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10512, 'ar', 'Dashboard Subheader Background Image', 'Dashboard Subheader Background Image', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10513, 'ar', 'Profile Subheader Background Image', 'Profile Subheader Background Image', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10514, 'ar', 'Change Password Subheader Background Image', 'Change Password Subheader Background Image', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10515, 'ar', 'Booking', 'Booking', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10516, 'ar', 'Booking Subheader Background Image', 'Booking Subheader Background Image', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10517, 'ar', 'If you need any help, feel free to contact us.', 'If you need any help, feel free to contact us.', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10518, 'ar', 'Total Room', 'Total Room', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10519, 'ar', 'Hotel Manage', 'Hotel Manage', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10520, 'ar', 'Room Type', 'Room Type', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10521, 'ar', 'Room No', 'Room No', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10522, 'ar', 'Booking Request', 'Booking Request', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10523, 'ar', 'Booking Request Information', 'Booking Request Information', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10524, 'ar', 'Send Booking Request', 'Send Booking Request', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10525, 'ar', 'Booking Summary', 'Booking Summary', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10526, 'ar', 'Check In', 'Check In', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10527, 'ar', 'Check Out', 'Check Out', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10528, 'ar', 'Oops! Your booking request is failed. Please enter room number.', 'Oops! Your booking request is failed. Please enter room number.', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10529, 'ar', 'Oops! Your booking request is failed. Please try again.', 'Oops! Your booking request is failed. Please try again.', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10530, 'ar', 'Your booking request is successfully.', 'Your booking request is successfully.', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10531, 'ar', 'Thank you for our room booking request.', 'Thank you for our room booking request.', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10532, 'ar', 'Go To Your Dashboard', 'Go To Your Dashboard', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10533, 'ar', 'Booking Manage', 'Booking Manage', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10534, 'ar', 'Approved Booking', 'Approved Booking', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10535, 'ar', 'Checked Out Booking', 'Checked Out Booking', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10536, 'ar', 'All Booking', 'All Booking', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10537, 'ar', 'Cancelled Booking', 'Cancelled Booking', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10538, 'ar', 'Booking Status', 'Booking Status', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10539, 'ar', 'In / Out Date', 'In / Out Date', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10540, 'ar', 'Total Days', 'Total Day', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10541, 'ar', 'Booking Date', 'Booking Date', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10542, 'ar', 'We have received your booking request and will contact you as soon. You can find your booking information below.', 'We have received your booking request and will contact you as soon. You can find your booking information below.', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10543, 'ar', 'Thank you for booking our rooms.', 'Thank you for booking our rooms.', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10544, 'ar', 'Booking No', 'Booking No', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10545, 'ar', 'Your assign  room no', 'Your assign  room no', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10546, 'ar', 'Grand Total', 'Grand Total', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10547, 'ar', 'My Booking', 'My Booking', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10548, 'ar', 'Running', 'Running', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10549, 'ar', 'Checked Out', 'Checked Out', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10550, 'ar', 'Invoice Details', 'Invoice Details', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10551, 'ar', 'Removed Successfully', 'Removed Successfully', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10552, 'ar', 'Customer Information', 'Customer Information', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10553, 'ar', 'Merge Room and Date', 'Merge Room and Date', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10554, 'ar', 'Assign Room', 'Assign Room', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10555, 'ar', 'Room Number', 'Room Number', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10556, 'ar', 'Not found assign room', 'Not found assign room', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10557, 'ar', 'Already Assigned', 'Already Assigned', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10558, 'ar', 'Your booking request is approved. You can find your booking information below.', 'Your booking request is approved. You can find your booking information below.', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10559, 'ar', 'Your booking request is approved.', 'Your booking request is approved.', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10560, 'ar', 'Your booking has checked out.', 'Your booking has checked out.', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10561, 'ar', 'Your booking has checked out. You can find your booking information below.', 'Your booking has checked out. You can find your booking information below.', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10562, 'ar', 'Your booking has cancelled.', 'Your booking has cancelled.', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10563, 'ar', 'Note', 'Note', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10564, 'ar', 'Book Room', 'Book Room', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10565, 'ar', 'Pending Payment', 'Pending Payment', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10566, 'ar', 'All Payment Status', 'All Payment Status', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10567, 'ar', 'Room List', 'Room List', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10568, 'ar', 'All Room Type', 'All Room Type', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10569, 'ar', 'Booked', 'Booked', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10570, 'ar', 'Goto Backend Dashboard', 'Goto Backend Dashboard', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10571, 'ar', 'Check Availability', 'Check Availability', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10572, 'ar', 'Total Earn', 'Total Earn', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10573, 'ar', 'Canceled Payment', 'Canceled Payment', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10574, 'ar', 'Incompleted Payment', 'Incompleted Payment', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10575, 'ar', 'Total Room Type', 'Total Room Type', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10576, 'ar', 'Total Booking Completed', 'Total Booking Completed', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10577, 'ar', 'Total Running Booking', 'Total Running Booking', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10578, 'ar', 'Total Booking Request', 'Total Booking Request', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10579, 'ar', 'Total Booking Canceled', 'Total Booking Canceled', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10580, 'ar', 'Today\'s Booked Room', 'Today\'s Booked Room', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10581, 'ar', 'Today\'s Available Room', 'Today\'s Available Room', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10582, 'ar', 'Total Customer', 'Total Customer', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10583, 'ar', 'Active Customer', 'Active Customer', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10584, 'ar', 'Inactive Customer', 'Inactive Customer', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10585, 'ar', 'Recent Booking Request', 'Recent Booking Request', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10586, 'ar', 'Earning', 'Earning', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10587, 'ar', 'Monthly Earning Report (Last 12 Months)', 'Monthly Earning Report (Last 12 Months)', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10588, 'ar', 'Monthly Booking Report (Last 12 Months)', 'Monthly Booking Report (Last 12 Months)', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10589, 'ar', 'Total Booking', 'Total Booking', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10590, 'ar', 'Light Color', 'Light Color', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10591, 'ar', 'Blue Color', 'Blue Color', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10592, 'ar', 'Gray 400 Color', 'Gray 400 Color', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10593, 'ar', 'Total Booked Room', 'Total Booked Room', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10594, 'ar', 'Available Room for Booking', 'Available Room for Booking', '2023-11-27 08:48:46', '2023-11-27 08:48:46'),
(10595, 'ar', 'Todays Booked Rooms', 'Todays Booked Rooms', '2023-11-27 08:48:46', '2023-11-27 08:48:46');

-- --------------------------------------------------------

--
-- Table structure for table `media_options`
--

CREATE TABLE `media_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text DEFAULT NULL,
  `alt_title` text DEFAULT NULL,
  `thumbnail` text DEFAULT NULL,
  `large_image` text DEFAULT NULL,
  `option_value` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_options`
--

INSERT INTO `media_options` (`id`, `title`, `alt_title`, `thumbnail`, `large_image`, `option_value`, `created_at`, `updated_at`) VALUES
(782, 'favicon', 'favicon', '27122022155818-favicon.ico', '27122022155818-favicon.ico', '1150', '2022-12-27 09:58:18', '2022-12-27 09:58:18'),
(783, 'logo', 'logo', '27122022160114-400x400-logo.png', '27122022160114-logo.png', '4411', '2022-12-27 10:01:14', '2022-12-27 10:01:14'),
(784, 'photo', 'photo', '27122022160205-400x400-photo.png', '27122022160205-photo.png', '21950', '2022-12-27 10:02:05', '2022-12-27 10:02:05'),
(785, 'payment', 'payment', '27122022160256-400x400-payment.png', '27122022160256-payment.png', '8212', '2022-12-27 10:02:56', '2022-12-27 10:02:56'),
(786, 'footer-top', 'footer-top', '27122022160439-400x400-footer-top.jpg', '27122022160439-footer-top.jpg', '228643', '2022-12-27 10:04:39', '2022-12-27 10:04:39'),
(792, 'home1_bg', 'home1_bg', '04012023155330-400x400-home1_bg.jpg', '04012023155330-home1_bg.jpg', '390019', '2023-01-04 09:53:30', '2023-01-04 09:53:30'),
(793, 'breadcrumb-bg-1', 'breadcrumb-bg-1', '05012023064431-400x400-breadcrumb-bg-1.jpg', '05012023064431-breadcrumb-bg-1.jpg', '84321', '2023-01-05 00:44:31', '2023-01-05 00:44:31'),
(794, 'breadcrumb-bg-2', 'breadcrumb-bg-2', '05012023064453-400x400-breadcrumb-bg-2.jpg', '05012023064453-breadcrumb-bg-2.jpg', '93609', '2023-01-05 00:44:53', '2023-01-05 00:44:53'),
(795, 'breadcrumb-bg-3', 'breadcrumb-bg-3', '05012023064459-400x400-breadcrumb-bg-3.jpg', '05012023064459-breadcrumb-bg-3.jpg', '58785', '2023-01-05 00:44:59', '2023-01-05 00:44:59'),
(796, 'breadcrumb-bg-4', 'breadcrumb-bg-4', '05012023064503-400x400-breadcrumb-bg-4.jpg', '05012023064503-breadcrumb-bg-4.jpg', '63381', '2023-01-05 00:45:03', '2023-01-05 00:45:03'),
(797, 'breadcrumb-bg-5', 'breadcrumb-bg-5', '05012023064507-400x400-breadcrumb-bg-5.jpg', '05012023064507-breadcrumb-bg-5.jpg', '71437', '2023-01-05 00:45:07', '2023-01-05 00:45:07'),
(799, 'breadcrumb-bg-7', 'breadcrumb-bg-7', '05012023064516-400x400-breadcrumb-bg-7.jpg', '05012023064516-breadcrumb-bg-7.jpg', '53805', '2023-01-05 00:45:16', '2023-01-05 00:45:16'),
(800, 'breadcrumb-bg-8', 'breadcrumb-bg-8', '05012023064520-400x400-breadcrumb-bg-8.jpg', '05012023064520-breadcrumb-bg-8.jpg', '36846', '2023-01-05 00:45:20', '2023-01-05 00:45:20'),
(801, 'breadcrumb-bg-9', 'breadcrumb-bg-9', '05012023064524-400x400-breadcrumb-bg-9.jpg', '05012023064524-breadcrumb-bg-9.jpg', '88036', '2023-01-05 00:45:24', '2023-01-05 00:45:24'),
(802, 'breadcrumb-bg-10', 'breadcrumb-bg-10', '05012023064527-400x400-breadcrumb-bg-10.jpg', '05012023064527-breadcrumb-bg-10.jpg', '105273', '2023-01-05 00:45:27', '2023-01-05 00:45:27'),
(803, 'breadcrumb-bg-11', 'breadcrumb-bg-11', '05012023064531-400x400-breadcrumb-bg-11.jpg', '05012023064531-breadcrumb-bg-11.jpg', '105988', '2023-01-05 00:45:31', '2023-01-05 00:45:31'),
(804, 'about-1', 'about-1', '06012023113159-900x700-about-1.jpg', '06012023113159-about-1.jpg', '187311', '2023-01-06 05:31:59', '2023-01-06 05:31:59'),
(805, 'about-2', 'about-2', '06012023113208-900x700-about-2.jpg', '06012023113208-about-2.jpg', '145968', '2023-01-06 05:32:08', '2023-01-06 05:32:08'),
(806, 'about-3', 'about-3', '06012023113215-900x700-about-3.jpg', '06012023113215-about-3.jpg', '182885', '2023-01-06 05:32:15', '2023-01-06 05:32:15'),
(807, '1-room', '1-room', '06012023120550-900x700-1-room.jpg', '06012023120550-1-room.jpg', '53288', '2023-01-06 06:05:50', '2023-01-06 06:05:50'),
(808, '2-room', '2-room', '06012023120553-900x700-2-room.jpg', '06012023120553-2-room.jpg', '52636', '2023-01-06 06:05:53', '2023-01-06 06:05:53'),
(809, '3-room', '3-room', '06012023120557-900x700-3-room.jpg', '06012023120557-3-room.jpg', '43658', '2023-01-06 06:05:57', '2023-01-06 06:05:57'),
(810, '4-room', '4-room', '06012023120600-900x700-4-room.jpg', '06012023120600-4-room.jpg', '66724', '2023-01-06 06:06:00', '2023-01-06 06:06:00'),
(811, '5-room', '5-room', '06012023120603-900x700-5-room.jpg', '06012023120603-5-room.jpg', '64673', '2023-01-06 06:06:03', '2023-01-06 06:06:03'),
(812, '6-room', '6-room', '06012023120606-900x700-6-room.jpg', '06012023120606-6-room.jpg', '42943', '2023-01-06 06:06:06', '2023-01-06 06:06:06'),
(813, 'about-4', 'about-4', '06012023135205-900x700-about-4.jpg', '06012023135205-about-4.jpg', '129315', '2023-01-06 07:52:05', '2023-01-06 07:52:05'),
(814, 'about-h3', 'about-h3', '06012023135659-900x700-about-h3.jpg', '06012023135659-about-h3.jpg', '48282', '2023-01-06 07:56:59', '2023-01-06 07:56:59'),
(815, 'about-h4', 'about-h4', '06012023135948-900x700-about-h4.png', '06012023135948-about-h4.png', '545601', '2023-01-06 07:59:48', '2023-01-06 07:59:48'),
(816, '3-client', '3-client', '06012023140634-900x700-3-client.jpg', '06012023140634-3-client.jpg', '64992', '2023-01-06 08:06:34', '2023-01-06 08:06:34'),
(817, 'service_6', 'service_6', '06012023175149-900x700-service_6.png', '06012023175149-service_6.png', '4990', '2023-01-06 11:51:49', '2023-01-06 11:51:49'),
(818, 'service_5', 'service_5', '06012023175228-900x700-service_5.png', '06012023175228-service_5.png', '4974', '2023-01-06 11:52:28', '2023-01-06 11:52:28'),
(819, 'service_4', 'service_4', '06012023175255-900x700-service_4.png', '06012023175255-service_4.png', '4846', '2023-01-06 11:52:55', '2023-01-06 11:52:55'),
(820, 'service_3', 'service_3', '06012023175320-900x700-service_3.png', '06012023175320-service_3.png', '4783', '2023-01-06 11:53:21', '2023-01-06 11:53:21'),
(821, 'service_2', 'service_2', '06012023175344-900x700-service_2.png', '06012023175344-service_2.png', '4151', '2023-01-06 11:53:44', '2023-01-06 11:53:44'),
(822, 'service_1', 'service_1', '06012023175409-900x700-service_1.png', '06012023175409-service_1.png', '3659', '2023-01-06 11:54:10', '2023-01-06 11:54:10'),
(823, 'preview', 'preview', '07012023043902-900x700-preview.jpg', '07012023043902-preview.jpg', '98285', '2023-01-06 22:39:02', '2023-01-06 22:39:02'),
(824, '1-client', '1-client', '07012023065428-100x100-1-client.jpg', '07012023065428-1-client.jpg', '42066', '2023-01-07 00:54:28', '2023-01-07 00:54:28'),
(825, '3-client', '3-client', '07012023065729-100x100-3-client.jpg', '07012023065729-3-client.jpg', '64992', '2023-01-07 00:57:29', '2023-01-07 00:57:29'),
(826, '4-client', '4-client', '07012023065821-100x100-4-client.jpg', '07012023065821-4-client.jpg', '66497', '2023-01-07 00:58:21', '2023-01-07 00:58:21'),
(827, '2-client', '2-client', '07012023065955-100x100-2-client.jpg', '07012023065955-2-client.jpg', '52497', '2023-01-07 00:59:55', '2023-01-07 00:59:55'),
(828, '5-client', '5-client', '07012023070147-100x100-5-client.jpg', '07012023070147-5-client.jpg', '3826', '2023-01-07 01:01:47', '2023-01-07 01:01:47'),
(829, '6-client', '6-client', '07012023070816-100x100-6-client.jpg', '07012023070816-6-client.jpg', '5242', '2023-01-07 01:08:16', '2023-01-07 01:08:16'),
(832, 'blog-1', 'blog-1', '07012023091700-900x700-blog-1.jpg', '07012023091700-blog-1.jpg', '147181', '2023-01-07 03:17:00', '2023-01-07 03:17:00'),
(833, 'blog-2', 'blog-2', '07012023091730-900x700-blog-2.jpg', '07012023091730-blog-2.jpg', '132817', '2023-01-07 03:17:30', '2023-01-07 03:17:30'),
(834, 'blog-3', 'blog-3', '07012023091749-900x700-blog-3.jpg', '07012023091749-blog-3.jpg', '166293', '2023-01-07 03:17:49', '2023-01-07 03:17:49'),
(835, 'blog-4', 'blog-4', '07012023091806-900x700-blog-4.jpg', '07012023091806-blog-4.jpg', '235468', '2023-01-07 03:18:06', '2023-01-07 03:18:06'),
(836, 'blog-5', 'blog-5', '07012023091827-900x700-blog-5.jpg', '07012023091827-blog-5.jpg', '222726', '2023-01-07 03:18:27', '2023-01-07 03:18:27'),
(837, 'blog-6', 'blog-6', '07012023091844-900x700-blog-6.jpg', '07012023091844-blog-6.jpg', '217451', '2023-01-07 03:18:44', '2023-01-07 03:18:44'),
(838, 'blog-7', 'blog-7', '07012023091900-900x700-blog-7.jpg', '07012023091900-blog-7.jpg', '196295', '2023-01-07 03:19:00', '2023-01-07 03:19:00'),
(839, 'blog-8', 'blog-8', '07012023091917-900x700-blog-8.jpg', '07012023091917-blog-8.jpg', '196868', '2023-01-07 03:19:18', '2023-01-07 03:19:18'),
(840, 'blog-9', 'blog-9', '07012023091934-900x700-blog-9.jpg', '07012023091934-blog-9.jpg', '74456', '2023-01-07 03:19:34', '2023-01-07 03:19:34'),
(841, 'blog-10', 'blog-10', '07012023091951-900x700-blog-10.jpg', '07012023091951-blog-10.jpg', '150793', '2023-01-07 03:19:51', '2023-01-07 03:19:51'),
(842, 'blog-11', 'blog-11', '07012023092008-900x700-blog-11.jpg', '07012023092008-blog-11.jpg', '239961', '2023-01-07 03:20:08', '2023-01-07 03:20:08'),
(843, 'blog-12', 'blog-12', '07012023092023-900x700-blog-12.jpg', '07012023092023-blog-12.jpg', '269950', '2023-01-07 03:20:24', '2023-01-07 03:20:24'),
(844, '7-room', '7-room', '09012023045851-900x700-7-room.jpg', '09012023045851-7-room.jpg', '56301', '2023-01-08 22:58:51', '2023-01-08 22:58:51'),
(845, '8-room', '8-room', '09012023045855-900x700-8-room.jpg', '09012023045855-8-room.jpg', '40917', '2023-01-08 22:58:55', '2023-01-08 22:58:55'),
(846, '9-room', '9-room', '09012023045859-900x700-9-room.jpg', '09012023045859-9-room.jpg', '51872', '2023-01-08 22:58:59', '2023-01-08 22:58:59'),
(847, '10-room', '10-room', '09012023045904-900x700-10-room.jpg', '09012023045904-10-room.jpg', '65092', '2023-01-08 22:59:04', '2023-01-08 22:59:04'),
(848, '11-room', '11-room', '09012023045908-900x700-11-room.jpg', '09012023045908-11-room.jpg', '73323', '2023-01-08 22:59:08', '2023-01-08 22:59:08'),
(849, '12-room', '12-room', '09012023045912-900x700-12-room.jpg', '09012023045912-12-room.jpg', '82673', '2023-01-08 22:59:12', '2023-01-08 22:59:12'),
(850, '13-room', '13-room', '09012023045916-900x700-13-room.jpg', '09012023045916-13-room.jpg', '77166', '2023-01-08 22:59:16', '2023-01-08 22:59:16'),
(851, '14-room', '14-room', '09012023045919-900x700-14-room.jpg', '09012023045919-14-room.jpg', '43658', '2023-01-08 22:59:19', '2023-01-08 22:59:19'),
(852, '15-room', '15-room', '09012023045924-900x700-15-room.jpg', '09012023045924-15-room.jpg', '41576', '2023-01-08 22:59:24', '2023-01-08 22:59:24'),
(853, '16-room', '16-room', '09012023045928-900x700-16-room.jpg', '09012023045928-16-room.jpg', '48485', '2023-01-08 22:59:28', '2023-01-08 22:59:28'),
(854, '17-room', '17-room', '09012023045931-900x700-17-room.jpg', '09012023045931-17-room.jpg', '48644', '2023-01-08 22:59:31', '2023-01-08 22:59:31'),
(855, '18-room', '18-room', '09012023045935-900x700-18-room.jpg', '09012023045935-18-room.jpg', '59822', '2023-01-08 22:59:35', '2023-01-08 22:59:35'),
(856, '19-room', '19-room', '09012023045939-900x700-19-room.jpg', '09012023045939-19-room.jpg', '40153', '2023-01-08 22:59:39', '2023-01-08 22:59:39'),
(857, '20-room', '20-room', '09012023045943-900x700-20-room.jpg', '09012023045943-20-room.jpg', '69235', '2023-01-08 22:59:43', '2023-01-08 22:59:43'),
(858, 'Rectangle 1', 'Rectangle 1', '10012023044211-900x700-Rectangle 1.jpg', '10012023044211-Rectangle 1.jpg', '340811', '2023-01-09 22:42:11', '2023-01-09 22:42:11'),
(859, 'Rectangle 1-1', 'Rectangle 1-1', '10012023044217-900x700-Rectangle 1-1.jpg', '10012023044217-Rectangle 1-1.jpg', '401088', '2023-01-09 22:42:17', '2023-01-09 22:42:17'),
(860, 'Rectangle 1-2', 'Rectangle 1-2', '10012023044221-900x700-Rectangle 1-2.jpg', '10012023044221-Rectangle 1-2.jpg', '538083', '2023-01-09 22:42:21', '2023-01-09 22:42:21'),
(861, 'Rectangle 1-3', 'Rectangle 1-3', '10012023044236-900x700-Rectangle 1-3.jpg', '10012023044236-Rectangle 1-3.jpg', '502601', '2023-01-09 22:42:36', '2023-01-09 22:42:36'),
(862, 'Rectangle 1-4', 'Rectangle 1-4', '10012023044241-900x700-Rectangle 1-4.jpg', '10012023044241-Rectangle 1-4.jpg', '343973', '2023-01-09 22:42:41', '2023-01-09 22:42:41'),
(863, 'Rectangle 1-5', 'Rectangle 1-5', '10012023044246-900x700-Rectangle 1-5.jpg', '10012023044246-Rectangle 1-5.jpg', '595229', '2023-01-09 22:42:46', '2023-01-09 22:42:46'),
(865, 'Rectangle 2', 'Rectangle 2', '10012023044256-900x700-Rectangle 2.jpg', '10012023044256-Rectangle 2.jpg', '444297', '2023-01-09 22:42:56', '2023-01-09 22:42:56'),
(866, 'Rectangle 2-1', 'Rectangle 2-1', '10012023044300-900x700-Rectangle 2-1.jpg', '10012023044300-Rectangle 2-1.jpg', '428503', '2023-01-09 22:43:00', '2023-01-09 22:43:00'),
(867, 'Rectangle 2-3', 'Rectangle 2-3', '10012023044311-900x700-Rectangle 2-3.jpg', '10012023044311-Rectangle 2-3.jpg', '352555', '2023-01-09 22:43:11', '2023-01-09 22:43:11'),
(868, 'Rectangle 2-4', 'Rectangle 2-4', '10012023044315-900x700-Rectangle 2-4.jpg', '10012023044315-Rectangle 2-4.jpg', '385371', '2023-01-09 22:43:15', '2023-01-09 22:43:15'),
(869, 'Rectangle 2-5', 'Rectangle 2-5', '10012023044320-900x700-Rectangle 2-5.jpg', '10012023044320-Rectangle 2-5.jpg', '347959', '2023-01-09 22:43:20', '2023-01-09 22:43:20'),
(870, 'Rectangle 3', 'Rectangle 3', '10012023044326-900x700-Rectangle 3.jpg', '10012023044326-Rectangle 3.jpg', '506416', '2023-01-09 22:43:26', '2023-01-09 22:43:26'),
(871, 'Rectangle 3-1', 'Rectangle 3-1', '10012023044330-900x700-Rectangle 3-1.jpg', '10012023044330-Rectangle 3-1.jpg', '517914', '2023-01-09 22:43:30', '2023-01-09 22:43:30'),
(872, 'Rectangle 3-2', 'Rectangle 3-2', '10012023084409-900x700-Rectangle 3-2.jpg', '10012023084409-Rectangle 3-2.jpg', '593995', '2023-01-10 02:44:09', '2023-01-10 02:44:09'),
(873, 'Rectangle 3-3', 'Rectangle 3-3', '10012023084413-900x700-Rectangle 3-3.jpg', '10012023084413-Rectangle 3-3.jpg', '557754', '2023-01-10 02:44:14', '2023-01-10 02:44:14'),
(874, 'Rectangle 3-4', 'Rectangle 3-4', '10012023084418-900x700-Rectangle 3-4.jpg', '10012023084418-Rectangle 3-4.jpg', '433039', '2023-01-10 02:44:18', '2023-01-10 02:44:18'),
(875, 'Rectangle 3-5', 'Rectangle 3-5', '10012023084422-900x700-Rectangle 3-5.jpg', '10012023084422-Rectangle 3-5.jpg', '311751', '2023-01-10 02:44:22', '2023-01-10 02:44:22'),
(877, 'Rectangle 4', 'Rectangle 4', '10012023084440-900x700-Rectangle 4.jpg', '10012023084440-Rectangle 4.jpg', '339760', '2023-01-10 02:44:40', '2023-01-10 02:44:40'),
(878, 'Rectangle 4-1', 'Rectangle 4-1', '10012023084444-900x700-Rectangle 4-1.jpg', '10012023084444-Rectangle 4-1.jpg', '445135', '2023-01-10 02:44:44', '2023-01-10 02:44:44'),
(879, 'Rectangle 4-2', 'Rectangle 4-2', '10012023084447-900x700-Rectangle 4-2.jpg', '10012023084447-Rectangle 4-2.jpg', '451904', '2023-01-10 02:44:48', '2023-01-10 02:44:48'),
(880, 'Rectangle 4-3', 'Rectangle 4-3', '10012023084453-900x700-Rectangle 4-3.jpg', '10012023084453-Rectangle 4-3.jpg', '426551', '2023-01-10 02:44:53', '2023-01-10 02:44:53'),
(881, 'Rectangle 4-4', 'Rectangle 4-4', '10012023084456-900x700-Rectangle 4-4.jpg', '10012023084456-Rectangle 4-4.jpg', '450440', '2023-01-10 02:44:56', '2023-01-10 02:44:56'),
(882, 'Rectangle 4-5', 'Rectangle 4-5', '10012023084503-900x700-Rectangle 4-5.jpg', '10012023084503-Rectangle 4-5.jpg', '360719', '2023-01-10 02:45:03', '2023-01-10 02:45:03'),
(883, 'Rectangle 5', 'Rectangle 5', '10012023084507-900x700-Rectangle 5.jpg', '10012023084507-Rectangle 5.jpg', '501330', '2023-01-10 02:45:07', '2023-01-10 02:45:07'),
(884, 'Rectangle 5-1', 'Rectangle 5-1', '10012023084512-900x700-Rectangle 5-1.jpg', '10012023084512-Rectangle 5-1.jpg', '411317', '2023-01-10 02:45:12', '2023-01-10 02:45:12'),
(885, 'Rectangle 5-2', 'Rectangle 5-2', '10012023084515-900x700-Rectangle 5-2.jpg', '10012023084515-Rectangle 5-2.jpg', '412644', '2023-01-10 02:45:15', '2023-02-27 09:04:54'),
(886, 'Rectangle 5-3', 'Rectangle 5-3', '10012023084519-900x700-Rectangle 5-3.jpg', '10012023084519-Rectangle 5-3.jpg', '440486', '2023-01-10 02:45:19', '2023-01-10 02:45:19'),
(887, 'Rectangle 5-4', 'Rectangle 5-4', '10012023084521-900x700-Rectangle 5-4.jpg', '10012023084521-Rectangle 5-4.jpg', '330552', '2023-01-10 02:45:21', '2023-01-10 02:45:21'),
(888, 'Rectangle 5-5', 'Rectangle 5-5', '10012023084524-900x700-Rectangle 5-5.jpg', '10012023084524-Rectangle 5-5.jpg', '417214', '2023-01-10 02:45:24', '2023-01-10 02:45:24'),
(889, 'offer-3', 'offer-3', '13012023104807-900x700-offer-3.jpg', '13012023104807-offer-3.jpg', '850214', '2023-01-13 04:48:07', '2023-01-13 04:48:07'),
(890, 'offer-2', 'offer-2', '13012023104926-900x700-offer-2.jpg', '13012023104926-offer-2.jpg', '573231', '2023-01-13 04:49:26', '2023-01-13 04:49:26'),
(891, 'offer-1', 'offer-1', '13012023105100-900x700-offer-1.jpg', '13012023105100-offer-1.jpg', '441835', '2023-01-13 04:51:00', '2023-01-13 04:51:00'),
(893, 'home-1', 'home-1', '16022023173552-600x315-home-1.jpg', '16022023173552-home-1.jpg', '52948', '2023-02-16 11:35:52', '2023-02-16 11:35:52'),
(895, 'qutell-logo-white-1536x527', 'qutell-logo-white-1536x527', '04122023081926-900x700-qutell-logo-white-1536x527.png', '04122023081926-qutell-logo-white-1536x527.png', '47734', '2023-12-04 05:19:31', '2023-12-04 05:19:31'),
(896, '27122022155818-favicon', '27122022155818-favicon', '04122023082522-27122022155818-favicon.ico', '04122023082522-27122022155818-favicon.ico', '1150', '2023-12-04 05:25:24', '2023-12-04 05:25:24'),
(897, '5V7A4138', '5V7A4138', '05122023203243-900x700-5V7A4138.jpg', '05122023203243-5V7A4138.jpg', '1643429', '2023-12-05 17:32:45', '2023-12-05 17:32:45'),
(898, '5V7A4133', '5V7A4133', '05122023203418-900x700-5V7A4133.jpg', '05122023203418-5V7A4133.jpg', '1128813', '2023-12-05 17:34:20', '2023-12-05 17:34:20'),
(899, '5V7A3920', '5V7A3920', '05122023203644-900x700-5V7A3920.jpg', '05122023203644-5V7A3920.jpg', '1549230', '2023-12-05 17:36:45', '2023-12-05 17:36:45'),
(900, '5V7A3951', '5V7A3951', '05122023204619-900x700-5V7A3951.jpg', '05122023204619-5V7A3951.jpg', '1641900', '2023-12-05 17:46:21', '2023-12-05 17:46:21'),
(901, '5V7A4017', '5V7A4017', '05122023204708-900x700-5V7A4017.jpg', '05122023204708-5V7A4017.jpg', '950362', '2023-12-05 17:47:10', '2023-12-05 17:47:10'),
(902, '5V7A3955', '5V7A3955', '05122023204832-900x700-5V7A3955.jpg', '05122023204832-5V7A3955.jpg', '1139160', '2023-12-05 17:48:34', '2023-12-05 17:48:34'),
(903, '5V7A4010', '5V7A4010', '05122023205048-900x700-5V7A4010.jpg', '05122023205048-5V7A4010.jpg', '1403308', '2023-12-05 17:50:50', '2023-12-05 17:50:50'),
(904, 'Mira-Hotel-Arabic-Logo-full-black', 'Mira-Hotel-Arabic-Logo-full-black', '05122023212856-900x700-Mira-Hotel-Arabic-Logo-full-black.png', '05122023212856-Mira-Hotel-Arabic-Logo-full-black.png', '20256', '2023-12-05 18:28:56', '2023-12-05 18:28:56'),
(909, '5V7A4126', '5V7A4126', '06122023211940-900x700-5V7A4126.jpg', '06122023211940-5V7A4126.jpg', '810687', '2023-12-06 18:19:47', '2023-12-06 18:19:47'),
(910, '5V7A4051', '5V7A4051', '06122023212327-900x700-5V7A4051.jpg', '06122023212327-5V7A4051.jpg', '1204750', '2023-12-06 18:23:28', '2023-12-06 18:23:28'),
(911, '5V7A4107', '5V7A4107', '06122023212608-900x700-5V7A4107.jpg', '06122023212608-5V7A4107.jpg', '1053537', '2023-12-06 18:26:09', '2023-12-06 18:26:09'),
(912, '5V7A3932', '5V7A3932', '06122023213355-900x700-5V7A3932.jpg', '06122023213355-5V7A3932.jpg', '1514257', '2023-12-06 18:33:57', '2023-12-06 18:33:57'),
(913, '5V7A4096', '5V7A4096', '06122023213827-900x700-5V7A4096.jpg', '06122023213827-5V7A4096.jpg', '1130874', '2023-12-06 18:38:28', '2023-12-06 18:38:28'),
(914, 'photo_6021453864940716618_x', 'photo_6021453864940716618_x', '07122023043645-900x700-photo_6021453864940716618_x.jpg', '07122023043645-photo_6021453864940716618_x.jpg', '54252', '2023-12-07 01:36:49', '2023-12-07 01:36:49'),
(915, 'photo_6021453864940716628_m', 'photo_6021453864940716628_m', '07122023044133-900x700-photo_6021453864940716628_m.jpg', '07122023044133-photo_6021453864940716628_m.jpg', '3839', '2023-12-07 01:41:36', '2023-12-07 01:41:36'),
(916, 'Z&B FITNESS', 'Z&B FITNESS', '07122023071148-900x700-Z&B FITNESS.jpg', '07122023071148-Z&B FITNESS.jpg', '87366', '2023-12-07 04:11:53', '2023-12-07 04:11:53'),
(918, 'photo_6021453864940716617_x (1)', 'photo_6021453864940716617_x (1)', '07122023071709-900x700-photo_6021453864940716617_x (1).jpg', '07122023071709-photo_6021453864940716617_x (1).jpg', '59943', '2023-12-07 04:17:09', '2023-12-07 04:17:09'),
(920, 'photo_6021453864940716617_x (3) (1)', 'photo_6021453864940716617_x (3) (1)', '07122023072404-900x700-photo_6021453864940716617_x (3) (1).jpg', '07122023072404-photo_6021453864940716617_x (3) (1).jpg', '71275', '2023-12-07 04:24:04', '2023-12-07 04:24:04'),
(921, 'photo_6021453864940716599_x', 'photo_6021453864940716599_x', '07122023072552-900x700-photo_6021453864940716599_x.jpg', '07122023072552-photo_6021453864940716599_x.jpg', '34107', '2023-12-07 04:25:52', '2023-12-07 04:25:52'),
(923, 'photo_6021453864940716623_x', 'photo_6021453864940716623_x', '07122023073049-900x700-photo_6021453864940716623_x.jpg', '07122023073049-photo_6021453864940716623_x.jpg', '28072', '2023-12-07 04:30:50', '2023-12-07 04:30:50'),
(924, '5V7A4085', '5V7A4085', '07122023073209-900x700-5V7A4085.jpg', '07122023073209-5V7A4085.jpg', '1187944', '2023-12-07 04:32:13', '2023-12-07 04:32:13'),
(925, '5V7A4061', '5V7A4061', '07122023073423-900x700-5V7A4061.jpg', '07122023073423-5V7A4061.jpg', '959910', '2023-12-07 04:34:25', '2023-12-07 04:34:25'),
(928, 'photo_6021453864940716628_m', 'photo_6021453864940716628_m', '07122023091202-900x700-photo_6021453864940716628_m.jpg', '07122023091202-photo_6021453864940716628_m.jpg', '3839', '2023-12-07 07:12:06', '2023-12-07 07:12:06'),
(929, 'photo_6021453864940716599_x (3)', 'photo_6021453864940716599_x (3)', '07122023092103-900x700-photo_6021453864940716599_x (3).jpg', '07122023092103-photo_6021453864940716599_x (3).jpg', '1110205', '2023-12-07 07:21:06', '2023-12-07 07:21:06'),
(930, 'photo_6021453864940716626_m (1)', 'photo_6021453864940716626_m (1)', '07122023092116-900x700-photo_6021453864940716626_m (1).jpg', '07122023092116-photo_6021453864940716626_m (1).jpg', '753402', '2023-12-07 07:21:19', '2023-12-07 07:21:19'),
(931, '5V7A4051', '5V7A4051', '07122023092139-900x700-5V7A4051.jpg', '07122023092139-5V7A4051.jpg', '1204750', '2023-12-07 07:21:41', '2023-12-07 07:21:41'),
(932, '5V7A4092', '5V7A4092', '07122023092209-900x700-5V7A4092.jpg', '07122023092209-5V7A4092.jpg', '907326', '2023-12-07 07:22:12', '2023-12-07 07:22:12'),
(933, '5V7A4042', '5V7A4042', '07122023092244-900x700-5V7A4042.jpg', '07122023092244-5V7A4042.jpg', '1137942', '2023-12-07 07:22:46', '2023-12-07 07:22:46'),
(934, '5V7A4061', '5V7A4061', '07122023092302-900x700-5V7A4061.jpg', '07122023092302-5V7A4061.jpg', '959910', '2023-12-07 07:23:05', '2023-12-07 07:23:05'),
(935, '5V7A4085', '5V7A4085', '07122023092318-900x700-5V7A4085.jpg', '07122023092318-5V7A4085.jpg', '1187944', '2023-12-07 07:23:21', '2023-12-07 07:23:21'),
(936, '5V7A4126', '5V7A4126', '07122023092341-900x700-5V7A4126.jpg', '07122023092341-5V7A4126.jpg', '810687', '2023-12-07 07:23:43', '2023-12-07 07:23:43'),
(937, '5V7A4107', '5V7A4107', '07122023092353-900x700-5V7A4107.jpg', '07122023092353-5V7A4107.jpg', '1053537', '2023-12-07 07:23:56', '2023-12-07 07:23:56'),
(939, 'Z&B FITNESS', 'Z&B FITNESS', '07122023094125-900x700-Z&B FITNESS.jpg', '07122023094125-Z&B FITNESS.jpg', '87366', '2023-12-07 07:41:25', '2023-12-07 07:41:25'),
(940, 'photo_6021453864940716617_x (3) (1)', 'photo_6021453864940716617_x (3) (1)', '07122023094218-900x700-photo_6021453864940716617_x (3) (1).jpg', '07122023094218-photo_6021453864940716617_x (3) (1).jpg', '71275', '2023-12-07 07:42:18', '2023-12-07 07:42:18'),
(941, 'photo_6021453864940716609_x (1)', 'photo_6021453864940716609_x (1)', '07122023094353-900x700-photo_6021453864940716609_x (1).jpg', '07122023094353-photo_6021453864940716609_x (1).jpg', '56904', '2023-12-07 07:43:53', '2023-12-07 07:43:53'),
(942, 'photo_6021453864940716606_y', 'photo_6021453864940716606_y', '07122023095100-1920x400-photo_6021453864940716606_y.jpg', '07122023095100-photo_6021453864940716606_y.jpg', '177815', '2023-12-07 07:51:00', '2023-12-07 07:51:00'),
(943, '5V7A4133', '5V7A4133', '07122023095837-900x700-5V7A4133.jpg', '07122023095837-5V7A4133.jpg', '1128813', '2023-12-07 07:58:40', '2023-12-07 07:58:40'),
(944, '5V7A4138', '5V7A4138', '07122023095918-900x700-5V7A4138.jpg', '07122023095918-5V7A4138.jpg', '1643429', '2023-12-07 07:59:21', '2023-12-07 07:59:21'),
(945, '5V7A3951', '5V7A3951', '07122023100028-600x315-5V7A3951.jpg', '07122023100028-5V7A3951.jpg', '1641900', '2023-12-07 08:00:31', '2023-12-07 08:00:31'),
(946, '5V7A3955', '5V7A3955', '07122023100300-900x700-5V7A3955.jpg', '07122023100300-5V7A3955.jpg', '1139160', '2023-12-07 08:03:02', '2023-12-07 08:03:02'),
(947, '5V7A4138', '5V7A4138', '07122023100640-900x700-5V7A4138.jpg', '07122023100640-5V7A4138.jpg', '3296491', '2023-12-07 08:06:43', '2023-12-07 08:06:43'),
(948, '5V7A4133', '5V7A4133', '07122023101036-900x700-5V7A4133.jpg', '07122023101036-5V7A4133.jpg', '2425499', '2023-12-07 08:10:39', '2023-12-07 08:10:39'),
(949, 'photo_6021453864940716607_x', 'photo_6021453864940716607_x', '10122023084543-1920x400-photo_6021453864940716607_x.jpg', '10122023084543-photo_6021453864940716607_x.jpg', '80101', '2023-12-10 06:45:49', '2023-12-10 06:45:49'),
(950, '5V7A4116', '5V7A4116', '10122023112345-900x700-5V7A4116.jpg', '10122023112345-5V7A4116.jpg', '975994', '2023-12-10 09:23:50', '2023-12-10 09:23:50'),
(951, '5V7A4061', '5V7A4061', '10122023113122-900x700-5V7A4061.jpg', '10122023113122-5V7A4061.jpg', '959910', '2023-12-10 09:31:27', '2023-12-10 09:31:27'),
(952, '5V7A4057', '5V7A4057', '10122023113211-900x700-5V7A4057.jpg', '10122023113211-5V7A4057.jpg', '1138250', '2023-12-10 09:32:14', '2023-12-10 09:32:14'),
(953, '5V7A4085', '5V7A4085', '10122023114017-900x700-5V7A4085.jpg', '10122023114017-5V7A4085.jpg', '1187944', '2023-12-10 09:40:20', '2023-12-10 09:40:20'),
(954, '5V7A4086', '5V7A4086', '10122023114045-900x700-5V7A4086.jpg', '10122023114045-5V7A4086.jpg', '1270280', '2023-12-10 09:40:48', '2023-12-10 09:40:48'),
(955, '5V7A4051', '5V7A4051', '10122023114612-900x700-5V7A4051.jpg', '10122023114612-5V7A4051.jpg', '1204750', '2023-12-10 09:46:15', '2023-12-10 09:46:15'),
(956, '5V7A4017', '5V7A4017', '10122023114636-900x700-5V7A4017.jpg', '10122023114636-5V7A4017.jpg', '950362', '2023-12-10 09:46:39', '2023-12-10 09:46:39'),
(957, '5V7A4120', '5V7A4120', '10122023114956-900x700-5V7A4120.jpg', '10122023114956-5V7A4120.jpg', '1029891', '2023-12-10 09:49:59', '2023-12-10 09:49:59'),
(958, '5V7A4129', '5V7A4129', '10122023115044-900x700-5V7A4129.jpg', '10122023115044-5V7A4129.jpg', '1409520', '2023-12-10 09:50:47', '2023-12-10 09:50:47'),
(959, 'baner-3', 'baner-3', '10122023232249-900x700-baner-3.jpg', '10122023232249-baner-3.jpg', '412625', '2023-12-10 21:22:50', '2023-12-10 21:22:50'),
(960, 'miratrio5-', 'miratrio5-', '10122023232512-900x700-miratrio5-.jpg', '10122023232512-miratrio5-.jpg', '322343', '2023-12-10 21:25:14', '2023-12-10 21:25:14'),
(961, 'miratrio1', 'miratrio1', '10122023232534-900x700-miratrio1.jpg', '10122023232534-miratrio1.jpg', '189998', '2023-12-10 21:25:34', '2023-12-10 21:25:34'),
(962, 'mirabasatin2', 'mirabasatin2', '10122023232621-900x700-mirabasatin2.jpg', '10122023232621-mirabasatin2.jpg', '190333', '2023-12-10 21:26:21', '2023-12-10 21:26:21'),
(963, 'mirajeddah3', 'mirajeddah3', '10122023232836-900x700-mirajeddah3.jpg', '10122023232836-mirajeddah3.jpg', '237845', '2023-12-10 21:28:37', '2023-12-10 21:28:37'),
(964, '6kitchention-6', '6kitchention-6', '10122023232953-900x700-6kitchention-6.jpg', '10122023232953-6kitchention-6.jpg', '241205', '2023-12-10 21:29:53', '2023-12-10 21:29:53'),
(965, 'baner-22', 'baner-22', '10122023233311-1920x400-baner-22.jpg', '10122023233311-baner-22.jpg', '160548', '2023-12-10 21:33:11', '2023-12-10 21:33:11'),
(966, 'baner12', 'baner12', '10122023233715-1920x400-baner12.jpg', '10122023233715-baner12.jpg', '322484', '2023-12-10 21:37:15', '2023-12-10 21:37:15'),
(967, 'mira-basatin', 'mira-basatin', '10122023233813-1920x400-mira-basatin.jpg', '10122023233813-mira-basatin.jpg', '298821', '2023-12-10 21:38:13', '2023-12-10 21:38:13'),
(968, 'baner2', 'baner2', '10122023233841-1920x400-baner2.jpg', '10122023233841-baner2.jpg', '250156', '2023-12-10 21:38:42', '2023-12-10 21:38:42'),
(969, 'mirabusiness11', 'mirabusiness11', '11122023002651-900x700-mirabusiness11.JPG', '11122023002651-mirabusiness11.JPG', '171508', '2023-12-10 22:26:53', '2023-12-10 22:26:53'),
(970, 'mirabusiness9', 'mirabusiness9', '11122023002934-900x700-mirabusiness9.JPG', '11122023002934-mirabusiness9.JPG', '128383', '2023-12-10 22:29:34', '2023-12-10 22:29:34'),
(971, 'mirabusiness13', 'mirabusiness13', '11122023080614-900x700-mirabusiness13.JPG', '11122023080614-mirabusiness13.JPG', '224029', '2023-12-11 06:06:16', '2023-12-11 06:06:16'),
(972, 'mirabusiness1', 'mirabusiness1', '11122023080641-900x700-mirabusiness1.jpg', '11122023080641-mirabusiness1.jpg', '153790', '2023-12-11 06:06:41', '2023-12-11 06:06:41'),
(973, 'img-24', 'img-24', '11122023081140-1920x400-img-24.jpg', '11122023081140-img-24.jpg', '156547', '2023-12-11 06:11:40', '2023-12-11 06:11:40'),
(974, 'mirabusiness14', 'mirabusiness14', '11122023081856-900x700-mirabusiness14.jpg', '11122023081856-mirabusiness14.jpg', '187266', '2023-12-11 06:18:56', '2023-12-11 06:18:56'),
(975, 'mirabusiness3', 'mirabusiness3', '11122023081948-600x315-mirabusiness3.JPG', '11122023081948-mirabusiness3.JPG', '141283', '2023-12-11 06:19:48', '2023-12-11 06:19:48'),
(976, 'img-11', 'img-11', '11122023082427-1920x400-img-11.jpg', '11122023082427-img-11.jpg', '200359', '2023-12-11 06:24:27', '2023-12-11 06:24:27'),
(977, 'mirabusiness12', 'mirabusiness12', '11122023084534-1920x400-mirabusiness12.jpg', '11122023084534-mirabusiness12.jpg', '155313', '2023-12-11 06:45:34', '2023-12-11 06:45:34'),
(978, 'img-23', 'img-23', '11122023084654-600x315-img-23.jpg', '11122023084654-img-23.jpg', '374835', '2023-12-11 06:46:54', '2023-12-11 06:46:54'),
(979, 'img-11', 'img-11', '11122023085452-1920x400-img-11.jpg', '11122023085452-img-11.jpg', '191120', '2023-12-11 06:54:53', '2023-12-11 06:54:53'),
(980, 'IMG_0068', 'IMG_0068', '13122023100719-900x700-IMG_0068.jpg', '13122023100719-IMG_0068.jpg', '419544', '2023-12-13 08:07:23', '2023-12-13 08:07:23'),
(981, 'img-17', 'img-17', '13122023101524-900x700-img-17.jpg', '13122023101524-img-17.jpg', '270042', '2023-12-13 08:15:25', '2023-12-13 08:15:25'),
(982, 'img-7', 'img-7', '18122023114314-900x700-img-7.jpg', '18122023114314-img-7.jpg', '492363', '2023-12-18 09:43:19', '2023-12-18 09:43:19'),
(983, 'kitchention-3', 'kitchention-3', '18122023114334-900x700-kitchention-3.jpg', '18122023114334-kitchention-3.jpg', '126748', '2023-12-18 09:43:35', '2023-12-18 09:43:35'),
(984, 'img-9', 'img-9', '18122023114349-900x700-img-9.jpg', '18122023114349-img-9.jpg', '542598', '2023-12-18 09:43:50', '2023-12-18 09:43:50'),
(985, 'kitchention-22', 'kitchention-22', '18122023114408-900x700-kitchention-22.jpg', '18122023114408-kitchention-22.jpg', '239431', '2023-12-18 09:44:09', '2023-12-18 09:44:09'),
(986, 'kitchention-6', 'kitchention-6', '18122023114418-900x700-kitchention-6.jpg', '18122023114418-kitchention-6.jpg', '182005', '2023-12-18 09:44:18', '2023-12-18 09:44:18'),
(987, 'kitchention-5', 'kitchention-5', '18122023114430-900x700-kitchention-5.jpg', '18122023114430-kitchention-5.jpg', '124767', '2023-12-18 09:44:30', '2023-12-18 09:44:30'),
(988, 'kitchention-1', 'kitchention-1', '18122023114442-900x700-kitchention-1.jpg', '18122023114442-kitchention-1.jpg', '251350', '2023-12-18 09:44:42', '2023-12-18 09:44:42'),
(989, 'IMG_0069', 'IMG_0069', '18122023114459-900x700-IMG_0069.jpg', '18122023114459-IMG_0069.jpg', '423790', '2023-12-18 09:45:00', '2023-12-18 09:45:00'),
(990, 'img-35', 'img-35', '18122023114518-900x700-img-35.jpg', '18122023114518-img-35.jpg', '392049', '2023-12-18 09:45:18', '2023-12-18 09:45:18'),
(991, 'img-31', 'img-31', '18122023114530-900x700-img-31.jpg', '18122023114530-img-31.jpg', '565275', '2023-12-18 09:45:30', '2023-12-18 09:45:30');

-- --------------------------------------------------------

--
-- Table structure for table `media_settings`
--

CREATE TABLE `media_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `media_type` varchar(191) NOT NULL,
  `media_desc` varchar(200) DEFAULT NULL,
  `media_width` varchar(100) DEFAULT NULL,
  `media_height` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_settings`
--

INSERT INTO `media_settings` (`id`, `media_type`, `media_desc`, `media_width`, `media_height`, `created_at`, `updated_at`) VALUES
(1, 'Thumbnail', NULL, '900', '700', '2021-04-11 20:21:59', '2022-08-01 11:04:33'),
(2, 'Subheader', NULL, '1920', '400', '2021-04-13 16:40:28', '2021-04-15 11:09:52'),
(3, 'Mega_Menu', NULL, '300', '400', '2021-05-17 15:20:51', '2021-05-17 15:20:53'),
(4, 'Testimonial', NULL, '100', '100', '2021-07-01 06:04:31', '2021-07-01 06:04:33'),
(5, 'Product_Thumbnail', NULL, '900', '700', '2021-07-02 13:27:52', '2022-08-01 11:08:22'),
(6, 'SEO_Image', NULL, '600', '315', '2021-07-02 14:43:42', '2021-07-02 09:19:54'),
(7, 'Product_Multiple_Image', NULL, '900', '700', '2022-08-18 12:16:27', '2023-02-17 11:08:22'),
(8, 'Blog_Thumbnail', NULL, '900', '700', '2022-10-19 16:51:40', '2022-10-19 16:51:42');

-- --------------------------------------------------------

--
-- Table structure for table `mega_menus`
--

CREATE TABLE `mega_menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `menu_parent_id` int(11) DEFAULT NULL,
  `mega_menu_title` text DEFAULT NULL,
  `is_title` int(11) DEFAULT NULL,
  `is_image` int(11) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `css_class` varchar(191) DEFAULT NULL,
  `lan` varchar(191) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_name` varchar(191) NOT NULL,
  `menu_position` varchar(191) DEFAULT NULL,
  `lan` varchar(100) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `menu_name`, `menu_position`, `lan`, `status_id`, `created_at`, `updated_at`) VALUES
(120, 'Header Menu', 'header', 'en', 1, '2022-07-21 09:55:35', '2022-07-21 09:55:35'),
(121, 'Quick links', 'footer', 'en', 1, '2022-07-22 07:54:53', '2023-12-04 05:01:05'),
(123, 'الرئيسية', 'header', 'ar', 1, '2023-11-28 10:28:52', '2023-11-28 10:28:52'),
(125, 'الروابط السريعة', 'footer', 'ar', 1, '2023-12-04 07:43:33', '2023-12-04 07:43:33');

-- --------------------------------------------------------

--
-- Table structure for table `menu_childs`
--

CREATE TABLE `menu_childs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `menu_parent_id` int(11) DEFAULT NULL,
  `mega_menu_id` int(11) DEFAULT NULL,
  `menu_type` varchar(191) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `item_label` text DEFAULT NULL,
  `custom_url` text DEFAULT NULL,
  `target_window` varchar(191) DEFAULT NULL,
  `css_class` varchar(191) DEFAULT NULL,
  `lan` varchar(191) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menu_parents`
--

CREATE TABLE `menu_parents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `menu_type` varchar(191) DEFAULT NULL,
  `child_menu_type` varchar(191) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `item_label` text DEFAULT NULL,
  `custom_url` text DEFAULT NULL,
  `target_window` varchar(191) DEFAULT NULL,
  `css_class` varchar(191) DEFAULT NULL,
  `column` int(11) DEFAULT NULL,
  `width_type` varchar(191) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `lan` varchar(191) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_parents`
--

INSERT INTO `menu_parents` (`id`, `menu_id`, `menu_type`, `child_menu_type`, `item_id`, `item_label`, `custom_url`, `target_window`, `css_class`, `column`, `width_type`, `width`, `lan`, `sort_order`, `created_at`, `updated_at`) VALUES
(941, 121, 'page', 'none', 49, 'Career', 'career', '_self', NULL, NULL, NULL, NULL, 'en', 6, '2022-09-02 05:45:07', '2023-12-11 06:56:43'),
(943, 121, 'page', 'none', 47, 'Cookie Policy', 'cookie-policy', '_self', NULL, NULL, NULL, NULL, 'en', 3, '2022-09-02 05:45:07', '2023-12-11 06:57:29'),
(944, 121, 'page', 'none', 46, 'Booking Policy', 'booking-policy', '_self', NULL, NULL, NULL, NULL, 'en', 5, '2022-09-02 05:45:07', '2023-12-11 06:58:19'),
(945, 121, 'page', 'none', 45, 'Terms and Conditions', 'terms-and-conditions', '_self', NULL, NULL, NULL, NULL, 'en', 4, '2022-09-02 05:45:07', '2023-12-11 06:58:59'),
(1014, 120, 'custom_link', 'none', NULL, 'Home', 'https://trial.qutell.top/', '_self', '', NULL, NULL, NULL, 'en', 1, '2023-01-10 00:33:49', '2023-12-13 05:59:33'),
(1017, 120, 'custom_link', 'none', NULL, 'Contact Us', 'https://trial.qutell.top/contact/7/contact-us', '_self', '', NULL, NULL, NULL, 'en', 7, '2023-01-10 00:35:23', '2023-12-13 05:59:34'),
(1027, 120, 'page', 'none', 71, 'FAQ', 'faq', '_self', NULL, NULL, NULL, NULL, 'en', 6, '2023-01-11 09:28:28', '2023-12-14 09:06:56'),
(1030, 120, 'product_category', 'none', 1, 'Hotel room', 'hotel', '_self', NULL, NULL, NULL, NULL, 'en', 4, '2023-01-16 10:31:44', '2023-12-13 05:59:34'),
(1044, 123, 'custom_link', 'none', NULL, 'غرف الفندق', 'https://trial.qutell.top/category/9/hotel', '_self', '', NULL, NULL, NULL, 'ar', 4, '2023-12-03 09:24:04', '2023-12-13 05:52:09'),
(1045, 123, 'custom_link', 'none', NULL, 'الأسئلة الشائعة', 'https://trial.qutell.top/faq', '_self', '', NULL, NULL, NULL, 'ar', 6, '2023-12-03 09:35:19', '2023-12-17 11:13:38'),
(1046, 123, 'custom_link', 'none', NULL, 'الرئيسية', 'https://trial.qutell.top/', '_self', '', NULL, NULL, NULL, 'ar', 1, '2023-12-03 09:36:52', '2023-12-13 05:52:09'),
(1048, 123, 'custom_link', 'none', NULL, 'اتصل بنا', 'https://trial.qutell.top/contact/6/contact-us', '_self', '', NULL, NULL, NULL, 'ar', 7, '2023-12-03 09:37:47', '2023-12-13 05:52:10'),
(1050, 120, 'custom_link', 'none', NULL, 'About us', 'https://trial.qutell.top/aboutus', '_self', '', NULL, NULL, NULL, 'en', 2, '2023-12-04 05:10:01', '2023-12-13 05:59:33'),
(1051, 123, 'custom_link', 'none', NULL, 'من نحن', 'https://trial.qutell.top/aboutus', '_self', '', NULL, NULL, NULL, 'ar', 2, '2023-12-04 05:45:46', '2023-12-13 05:52:09'),
(1052, 125, 'custom_link', 'none', NULL, 'سياسة ملفات الارتباط', 'https://trial.qutell.top/page/77/syas-mlfat-alartbat', '_self', '', NULL, NULL, NULL, 'ar', 1, '2023-12-04 07:44:54', '2023-12-04 20:06:16'),
(1053, 125, 'custom_link', 'none', NULL, 'الأحكام والشروط', 'https://trial.qutell.top/page/75/alahkam-oalshrot', '_self', '', NULL, NULL, NULL, 'ar', 2, '2023-12-04 08:12:31', '2023-12-04 20:06:16'),
(1054, 125, 'custom_link', 'none', NULL, 'سياسة الحجز', 'https://trial.qutell.top/page/78/syas-alhgz', '_self', '', NULL, NULL, NULL, 'ar', 3, '2023-12-04 08:13:33', '2023-12-04 20:06:16'),
(1055, 125, 'custom_link', 'none', NULL, 'المهنية', 'https://trial.qutell.top/page/79/almhny', '_self', '', NULL, NULL, NULL, 'ar', 4, '2023-12-04 08:14:24', '2023-12-04 20:06:16'),
(1062, 123, 'custom_link', 'none', NULL, 'خدماتنا', 'https://trial.qutell.top/services', '_self', NULL, NULL, NULL, NULL, 'ar', 3, '2023-12-13 05:39:11', '2023-12-13 05:52:09'),
(1063, 123, 'custom_link', 'none', NULL, 'المعرض', 'https://trial.qutell.top/gallery', '_self', NULL, NULL, NULL, NULL, 'ar', 5, '2023-12-13 05:43:16', '2023-12-13 05:52:09'),
(1064, 120, 'custom_link', 'none', NULL, 'services', 'https://trial.qutell.top/services', '_self', '', NULL, NULL, NULL, 'en', 3, '2023-12-13 05:54:06', '2023-12-18 13:01:48'),
(1065, 120, 'custom_link', 'none', NULL, 'gallery', 'https://trial.qutell.top/gallery', '_self', NULL, NULL, NULL, NULL, 'en', 5, '2023-12-13 05:54:44', '2023-12-13 05:59:34');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_12_23_120000_create_shoppingcart_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2021_03_27_172426_create_languages_table', 1),
(6, '2021_03_27_172601_create_lankeyvalues_table', 1),
(7, '2021_03_30_140957_create_tp_options_table', 1),
(8, '2021_04_01_152906_create_timezones_table', 1),
(9, '2021_04_02_150516_create_user_status_table', 1),
(10, '2021_04_02_150609_create_user_roles_table', 1),
(11, '2021_04_09_044943_create_media_options_table', 1),
(12, '2021_04_12_140713_create_media_settings_table', 1),
(13, '2021_05_01_115940_create_menus_table', 1),
(14, '2021_05_01_120841_create_tp_status_table', 1),
(15, '2021_05_01_133411_create_menu_parents_table', 1),
(16, '2021_05_01_140308_create_mega_menus_table', 1),
(17, '2021_05_01_141350_create_menu_childs_table', 1),
(18, '2021_06_27_161510_create_taxes_table', 1),
(19, '2021_07_03_135905_create_offer_ads_table', 1),
(20, '2021_07_03_172443_create_sliders_table', 1),
(21, '2021_07_11_173246_create_social_medias_table', 1),
(22, '2021_08_21_141949_create_reviews_table', 1),
(23, '2021_10_03_164438_create_payment_method_table', 1),
(24, '2021_10_03_164717_create_payment_status_table', 1),
(25, '2021_10_06_154120_create_countries_table', 1),
(26, '2021_10_26_153444_create_pages_table', 1),
(27, '2021_11_01_162210_create_subscribers_table', 1),
(28, '2022_08_18_112436_create_section_manages_table', 1),
(29, '2022_08_25_165632_create_contacts_table', 1),
(30, '2022_10_17_142326_create_blog_categories_table', 1),
(31, '2022_10_17_152007_create_blogs_table', 1),
(32, '2022_12_29_155752_create_amenities_table', 2),
(33, '2022_12_29_160022_create_complements_table', 2),
(34, '2022_12_29_160139_create_bedtypes_table', 2),
(35, '2022_12_29_160235_create_categories_table', 2),
(37, '2022_12_29_160446_create_rooms_table', 3),
(38, '2023_01_03_155440_create_room_images_table', 4),
(39, '2023_01_05_165400_create_section_contents_table', 5),
(40, '2023_01_21_101710_create_room_manages_table', 6),
(41, '2023_01_22_153058_create_booking_status_table', 7),
(42, '2023_01_22_153216_create_booking_manages_table', 7),
(43, '2023_01_29_160950_create_room_assigns_table', 8),
(44, '2023_12_16_184353_create_faqs_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `offer_ads`
--

CREATE TABLE `offer_ads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `offer_ad_type` varchar(191) DEFAULT NULL,
  `title` varchar(191) DEFAULT NULL,
  `url` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `desc` text DEFAULT NULL,
  `is_publish` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `lan` varchar(255) NOT NULL DEFAULT 'en'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offer_ads`
--

INSERT INTO `offer_ads` (`id`, `offer_ad_type`, `title`, `url`, `image`, `desc`, `is_publish`, `created_at`, `updated_at`, `lan`) VALUES
(30, 'homepage1', 'The health club is a time for relaxation', '#', '07122023094125-Z&B FITNESS.jpg', '{\"text_1\":\"The health club is a time for relaxation\",\"text_2\":\"The gym is equipped with the latest equipment\",\"button_text\":\"spa\",\"target\":null}', 1, '2023-01-13 04:49:30', '2023-12-17 08:27:19', 'en'),
(31, 'homepage1', 'Unique restaurants that combine art and fun with delicious food', '#', '07122023094353-photo_6021453864940716609_x (1).jpg', '{\"text_1\":\"Unique restaurants that combine art and fun with delicious food\",\"text_2\":\"Unique restaurants\",\"button_text\":\"restaurant\",\"target\":null}', 1, '2023-01-13 04:51:08', '2023-12-17 08:26:24', 'en'),
(34, 'homepage1', 'النادي الصحي وقت للاستجمام', '#', '07122023094125-Z&B FITNESS.jpg', '{\"text_1\":\"\\u0627\\u0644\\u0646\\u0627\\u062f\\u064a \\u0627\\u0644\\u0635\\u062d\\u064a \\u0648\\u0642\\u062a \\u0644\\u0644\\u0627\\u0633\\u062a\\u062c\\u0645\\u0627\\u0645\",\"text_2\":\"\\u0627\\u0644\\u0646\\u0627\\u062f\\u064a \\u0631\\u064a\\u0627\\u0636\\u064a \\u0645\\u062c\\u0647\\u0632 \\u0628\\u0627\\u062d\\u062f\\u062b \\u0627\\u0644\\u0627\\u062c\\u0647\\u0632\\u0629\",\"button_text\":\"spa\",\"target\":null}', 1, '2023-12-03 08:12:32', '2023-12-17 08:27:08', 'ar'),
(35, 'homepage1', 'مطاعم فريده تجمع بين الفن والمتعة وتقديم اشهي الماكلات', '#', '07122023094353-photo_6021453864940716609_x (1).jpg', '{\"text_1\":\"\\u0645\\u0637\\u0627\\u0639\\u0645 \\u0641\\u0631\\u064a\\u062f\\u0647 \\u062a\\u062c\\u0645\\u0639 \\u0628\\u064a\\u0646 \\u0627\\u0644\\u0641\\u0646 \\u0648\\u0627\\u0644\\u0645\\u062a\\u0639\\u0629 \\u0648\\u062a\\u0642\\u062f\\u064a\\u0645 \\u0627\\u0634\\u0647\\u064a \\u0627\\u0644\\u0645\\u0627\\u0643\\u0644\\u0627\\u062a\",\"text_2\":\"\\u0645\\u0637\\u0627\\u0639\\u0645 \\u0641\\u0631\\u064a\\u062f\\u0647\",\"button_text\":\"restaurant\",\"target\":null}', 1, '2023-12-03 08:13:20', '2023-12-17 08:25:30', 'ar'),
(36, 'homepage1', 'أرجيلة', '#', '13122023100719-IMG_0068.jpg', '{\"text_1\":\"\\u0623\\u0631\\u062c\\u064a\\u0644\\u0629\",\"text_2\":\"\\u0645\\u064a\\u0631\\u0627\",\"button_text\":\"restaurant\",\"target\":null}', 1, '2023-12-18 09:04:08', '2023-12-18 09:08:34', 'ar'),
(37, 'homepage1', 'Argyle', '#', '13122023100719-IMG_0068.jpg', '{\"text_1\":\"Argyle\",\"text_2\":\"mera\",\"button_text\":\"restaurant\",\"target\":null}', 1, '2023-12-18 09:07:49', '2023-12-18 09:07:49', 'en'),
(38, 'homepage1', 'room', '#', '11122023084654-img-23.jpg', '{\"text_1\":\"room\",\"text_2\":\"mera\",\"button_text\":\"room\",\"target\":null}', 1, '2023-12-18 09:11:40', '2023-12-18 09:11:40', 'en'),
(39, 'homepage1', 'غرف', '#', '11122023084654-img-23.jpg', '{\"text_1\":\"\\u063a\\u0631\\u0641\",\"text_2\":\"\\u0645\\u064a\\u0631\\u0627\",\"button_text\":\"room\",\"target\":null}', 1, '2023-12-18 09:11:52', '2023-12-18 09:11:52', 'ar'),
(40, 'homepage1', 'Mira special rooms', '#', '10122023114612-5V7A4051.jpg', '{\"text_1\":\"Mira special rooms\",\"text_2\":\"Mira special rooms\",\"button_text\":\"room\",\"target\":null}', 1, '2023-12-18 09:15:17', '2023-12-18 09:15:17', 'en'),
(41, 'homepage1', 'Mira special rooms', '#', '11122023002934-mirabusiness9.JPG', '{\"text_1\":\"Mira special rooms\",\"text_2\":\"Mira special rooms\",\"button_text\":\"room\",\"target\":null}', 1, '2023-12-18 09:15:54', '2023-12-18 09:15:54', 'en'),
(42, 'homepage1', 'Mira special rooms', '#', '11122023080614-mirabusiness13.JPG', '{\"text_1\":\"Mira special rooms\",\"text_2\":\"Mira special rooms\",\"button_text\":\"room\",\"target\":null}', 1, '2023-12-18 09:16:44', '2023-12-18 09:16:44', 'en'),
(43, 'homepage1', 'غرف ميرا المميزة', '#', '10122023114612-5V7A4051.jpg', '{\"text_1\":\"\\u063a\\u0631\\u0641 \\u0645\\u064a\\u0631\\u0627 \\u0627\\u0644\\u0645\\u0645\\u064a\\u0632\\u0629\",\"text_2\":\"\\u063a\\u0631\\u0641 \\u0645\\u064a\\u0631\\u0627 \\u0627\\u0644\\u0645\\u0645\\u064a\\u0632\\u0629\",\"button_text\":\"room\",\"target\":null}', 1, '2023-12-18 09:16:57', '2023-12-18 09:16:57', 'ar'),
(44, 'homepage1', 'غرف ميرا المميزة', '#', '11122023080614-mirabusiness13.JPG', '{\"text_1\":\"\\u063a\\u0631\\u0641 \\u0645\\u064a\\u0631\\u0627 \\u0627\\u0644\\u0645\\u0645\\u064a\\u0632\\u0629\",\"text_2\":\"\\u063a\\u0631\\u0641 \\u0645\\u064a\\u0631\\u0627 \\u0627\\u0644\\u0645\\u0645\\u064a\\u0632\\u0629\",\"button_text\":\"room\",\"target\":null}', 1, '2023-12-18 09:18:00', '2023-12-18 09:18:00', 'ar'),
(45, 'homepage1', 'غرف ميرا المميزة', '#', '11122023002934-mirabusiness9.JPG', '{\"text_1\":\"\\u063a\\u0631\\u0641 \\u0645\\u064a\\u0631\\u0627 \\u0627\\u0644\\u0645\\u0645\\u064a\\u0632\\u0629\",\"text_2\":\"\\u063a\\u0631\\u0641 \\u0645\\u064a\\u0631\\u0627 \\u0627\\u0644\\u0645\\u0645\\u064a\\u0632\\u0629\",\"button_text\":\"room\",\"target\":null}', 1, '2023-12-18 09:18:16', '2023-12-18 09:18:16', 'ar'),
(46, 'homepage1', 'غرف ميرا المميزة', '#', '10122023115044-5V7A4129.jpg', '{\"text_1\":\"\\u063a\\u0631\\u0641 \\u0645\\u064a\\u0631\\u0627 \\u0627\\u0644\\u0645\\u0645\\u064a\\u0632\\u0629\",\"text_2\":\"\\u063a\\u0631\\u0641 \\u0645\\u064a\\u0631\\u0627 \\u0627\\u0644\\u0645\\u0645\\u064a\\u0632\\u0629\",\"button_text\":\"room\",\"target\":null}', 1, '2023-12-18 09:19:59', '2023-12-18 09:19:59', 'ar'),
(47, 'homepage1', 'غرف ميرا المميزة', '#', '11122023002651-mirabusiness11.JPG', '{\"text_1\":\"\\u063a\\u0631\\u0641 \\u0645\\u064a\\u0631\\u0627 \\u0627\\u0644\\u0645\\u0645\\u064a\\u0632\\u0629\",\"text_2\":\"\\u063a\\u0631\\u0641 \\u0645\\u064a\\u0631\\u0627 \\u0627\\u0644\\u0645\\u0645\\u064a\\u0632\\u0629\",\"button_text\":\"room\",\"target\":null}', 1, '2023-12-18 09:20:41', '2023-12-18 09:20:41', 'ar'),
(48, 'homepage1', 'غرف ميرا المميزة', '#', '10122023114956-5V7A4120.jpg', '{\"text_1\":\"\\u063a\\u0631\\u0641 \\u0645\\u064a\\u0631\\u0627 \\u0627\\u0644\\u0645\\u0645\\u064a\\u0632\\u0629\",\"text_2\":\"\\u063a\\u0631\\u0641 \\u0645\\u064a\\u0631\\u0627 \\u0627\\u0644\\u0645\\u0645\\u064a\\u0632\\u0629\",\"button_text\":\"room\",\"target\":null}', 1, '2023-12-18 09:21:23', '2023-12-18 09:21:23', 'ar'),
(49, 'homepage1', 'Mira special rooms', '#', '10122023115044-5V7A4129.jpg', '{\"text_1\":\"Mira special rooms\",\"text_2\":\"Mira special rooms\",\"button_text\":\"room\",\"target\":null}', 1, '2023-12-18 09:22:34', '2023-12-18 09:22:34', 'en'),
(50, 'homepage1', 'Mira special rooms', '#', '10122023114956-5V7A4120.jpg', '{\"text_1\":\"Mira special rooms\",\"text_2\":\"Mira special rooms\",\"button_text\":\"room\",\"target\":null}', 1, '2023-12-18 09:23:48', '2023-12-18 09:23:48', 'en'),
(51, 'homepage1', 'Mira special rooms', '#', '10122023114045-5V7A4086.jpg', '{\"text_1\":\"Mira special rooms\",\"text_2\":\"Mira special rooms\",\"button_text\":\"room\",\"target\":null}', 1, '2023-12-18 09:26:10', '2023-12-18 09:26:10', 'en'),
(52, 'homepage1', 'Mira special rooms', '#', '10122023114017-5V7A4085.jpg', '{\"text_1\":\"Mira special rooms\",\"text_2\":\"Mira special rooms\",\"button_text\":\"room\",\"target\":null}', 1, '2023-12-18 09:26:46', '2023-12-18 09:27:29', 'en'),
(53, 'homepage1', 'غرف ميرا المميزة', '#', '10122023114045-5V7A4086.jpg', '{\"text_1\":\"\\u063a\\u0631\\u0641 \\u0645\\u064a\\u0631\\u0627 \\u0627\\u0644\\u0645\\u0645\\u064a\\u0632\\u0629\",\"text_2\":\"\\u063a\\u0631\\u0641 \\u0645\\u064a\\u0631\\u0627 \\u0627\\u0644\\u0645\\u0645\\u064a\\u0632\\u0629\",\"button_text\":\"room\",\"target\":null}', 1, '2023-12-18 09:28:44', '2023-12-18 09:28:44', 'ar'),
(54, 'homepage1', 'غرف ميرا المميزة', '#', '10122023113122-5V7A4061.jpg', '{\"text_1\":\"\\u063a\\u0631\\u0641 \\u0645\\u064a\\u0631\\u0627 \\u0627\\u0644\\u0645\\u0645\\u064a\\u0632\\u0629\",\"text_2\":\"\\u063a\\u0631\\u0641 \\u0645\\u064a\\u0631\\u0627 \\u0627\\u0644\\u0645\\u0645\\u064a\\u0632\\u0629\",\"button_text\":\"room\",\"target\":null}', 1, '2023-12-18 09:28:59', '2023-12-18 09:28:59', 'ar'),
(55, 'homepage1', 'Mira special rooms', '#', '07122023092244-5V7A4042.jpg', '{\"text_1\":\"Mira special rooms\",\"text_2\":\"Mira special rooms\",\"button_text\":\"room\",\"target\":null}', 1, '2023-12-18 09:30:39', '2023-12-18 09:30:39', 'en'),
(56, 'homepage1', 'Mira special rooms', '#', '10122023112345-5V7A4116.jpg', '{\"text_1\":\"Mira special rooms\",\"text_2\":\"Mira special rooms\",\"button_text\":\"room\",\"target\":null}', 1, '2023-12-18 09:31:17', '2023-12-18 09:31:17', 'en'),
(57, 'homepage1', 'Mira special rooms', '#', '10122023113211-5V7A4057.jpg', '{\"text_1\":\"Mira special rooms\",\"text_2\":\"Mira special rooms\",\"button_text\":\"room\",\"target\":null}', 1, '2023-12-18 09:32:02', '2023-12-18 09:34:43', 'en'),
(58, 'homepage1', 'غرف ميرا المميزة', '#', '10122023112345-5V7A4116.jpg', '{\"text_1\":\"\\u063a\\u0631\\u0641 \\u0645\\u064a\\u0631\\u0627 \\u0627\\u0644\\u0645\\u0645\\u064a\\u0632\\u0629\",\"text_2\":\"\\u063a\\u0631\\u0641 \\u0645\\u064a\\u0631\\u0627 \\u0627\\u0644\\u0645\\u0645\\u064a\\u0632\\u0629\",\"button_text\":\"room\",\"target\":null}', 1, '2023-12-18 09:32:45', '2023-12-18 09:32:45', 'ar'),
(59, 'homepage1', 'غرف ميرا المميزة', '#', '10122023114017-5V7A4085.jpg', '{\"text_1\":\"\\u063a\\u0631\\u0641 \\u0645\\u064a\\u0631\\u0627 \\u0627\\u0644\\u0645\\u0645\\u064a\\u0632\\u0629\",\"text_2\":\"\\u063a\\u0631\\u0641 \\u0645\\u064a\\u0631\\u0627 \\u0627\\u0644\\u0645\\u0645\\u064a\\u0632\\u0629\",\"button_text\":\"room\",\"target\":null}', 1, '2023-12-18 09:33:18', '2023-12-18 09:33:18', 'ar'),
(60, 'homepage1', 'غرف ميرا المميزة', '#', '10122023113211-5V7A4057.jpg', '{\"text_1\":\"\\u063a\\u0631\\u0641 \\u0645\\u064a\\u0631\\u0627 \\u0627\\u0644\\u0645\\u0645\\u064a\\u0632\\u0629\",\"text_2\":\"\\u063a\\u0631\\u0641 \\u0645\\u064a\\u0631\\u0627 \\u0627\\u0644\\u0645\\u0645\\u064a\\u0632\\u0629\",\"button_text\":\"room\",\"target\":null}', 1, '2023-12-18 09:35:21', '2023-12-18 09:35:21', 'ar'),
(61, 'homepage1', 'Mira special rooms', '#', '07122023092116-photo_6021453864940716626_m (1).jpg', '{\"text_1\":\"Mira special rooms\",\"text_2\":\"Mira special rooms\",\"button_text\":\"room\",\"target\":null}', 1, '2023-12-18 09:36:58', '2023-12-18 09:36:58', 'en'),
(62, 'homepage1', 'غرف ميرا المميزة', '#', '07122023092116-photo_6021453864940716626_m (1).jpg', '{\"text_1\":\"\\u063a\\u0631\\u0641 \\u0645\\u064a\\u0631\\u0627 \\u0627\\u0644\\u0645\\u0645\\u064a\\u0632\\u0629\",\"text_2\":\"\\u063a\\u0631\\u0641 \\u0645\\u064a\\u0631\\u0627 \\u0627\\u0644\\u0645\\u0645\\u064a\\u0632\\u0629\",\"button_text\":\"room\",\"target\":null}', 1, '2023-12-18 09:37:49', '2023-12-18 09:37:49', 'ar'),
(63, 'homepage1', 'Mira Restaurant', '#', '18122023114530-img-31.jpg', '{\"text_1\":\"Mira Restaurant\",\"text_2\":\"Mira Restaurant\",\"button_text\":\"restaurant\",\"target\":null}', 1, '2023-12-18 09:47:29', '2023-12-18 09:50:54', 'en'),
(64, 'homepage1', 'Mira Restaurant', '#', '18122023114442-kitchention-1.jpg', '{\"text_1\":\"Mira Restaurant\",\"text_2\":\"Mira Restaurant\",\"button_text\":\"restaurant\",\"target\":null}', 1, '2023-12-18 09:47:34', '2023-12-18 09:47:34', 'en'),
(65, 'homepage1', 'Mira Restaurant', '#', '18122023114430-kitchention-5.jpg', '{\"text_1\":\"Mira Restaurant\",\"text_2\":\"Mira Restaurant\",\"button_text\":\"restaurant\",\"target\":null}', 1, '2023-12-18 09:48:53', '2023-12-18 09:48:53', 'en'),
(66, 'homepage1', 'Mira Restaurant', '#', '18122023114334-kitchention-3.jpg', '{\"text_1\":\"Mira Restaurant\",\"text_2\":\"Mira Restaurant\",\"button_text\":\"restaurant\",\"target\":null}', 1, '2023-12-18 09:50:49', '2023-12-18 09:50:49', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `slug` varchar(191) NOT NULL,
  `content` longtext DEFAULT NULL,
  `thumbnail` text DEFAULT NULL,
  `lan` varchar(100) DEFAULT NULL,
  `is_publish` int(11) DEFAULT NULL,
  `og_title` text DEFAULT NULL,
  `og_image` text DEFAULT NULL,
  `og_description` text DEFAULT NULL,
  `og_keywords` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `content`, `thumbnail`, `lan`, `is_publish`, `og_title`, `og_image`, `og_description`, `og_keywords`, `created_at`, `updated_at`) VALUES
(44, 'Privacy Policy', 'privacy-policy', '<h6>What is a privacy policy?</h6>\r\n<p>A privacy policy is a document that states what personal data you collect from your users, why, and how you keep it private.</p>\r\n<p>The purpose of the privacy policy is to inform your users about how their data is being handled.</p>\r\n<p>Hence, the privacy policy should be accessible for your users and kept in plain and readable language.</p>\r\n<p>Most countries have privacy laws requiring that websites collecting personal data have a proper privacy policy in place.</p>\r\n<p>Failure to comply can result in heavy fines and even prosecution. Are you based in the EU or providing services to EU citizens, you must have a GDPR compliant privacy policy on your domain.</p>\r\n<p>We will get into this in more detail below.</p>\r\n\r\n<h6>What is personal data?</h6>\r\n<p>Personal data is information that can identify an individual, either directly or when combined with other data.</p>\r\n<p>Names, e-mails, addresses, localization, IP addresses, photos, and account information all are directly identifying data.</p>\r\n<p>Health information, income, religion, and cultural profiles, and the like is also personal data.</p>\r\n<p>Furthermore, and crucial in the present context, data on user behavior is also personal. Cookies can track and register individual users’ browsing activities, like what articles they scroll past and which ones they choose to click on.</p>\r\n\r\n<h6>Why is a privacy policy important?</h6>\r\n<p>The most important thing to remember is that a privacy policy is required by law if you collect data from users, either directly or indirectly. For example, if you have a contact form on your website you need a privacy policy. But you will also need a privacy policy if you use analytics tools such as Google Analytics.</p>\r\n\r\n<h6>Where do I put my privacy policy?</h6>\r\n<p>Usually, you can find privacy policies in the footer of a website. We recommend that you place your privacy policy in easy to find locations on your website.</p>\r\n\r\n<h6>What should the privacy policy include?</h6>\r\n<p>A standard privacy policy should include: what data you collect from visitors, how you collect it, why you are collecting the data, how you are using the data.</p>\r\n\r\n<h6>Why you Need a Privacy Policy</h6>\r\n<p>Privacy is not a new concept. Humans have always desired privacy in their social as well as private lives. But the idea of privacy as a human right is a relatively modern phenomenon.</p>\r\n<p>Around the world, laws and regulations have been developed for the protection of data related to government, education, health, children, consumers, financial institutions, etc.</p>\r\n<p>This data is critical to the person it belongs to. From credit card numbers and social security numbers to email addresses and phone numbers, our sensitive, personally identifiable information is important. This sort of information in unreliable hands can potentially have far-reaching consequences.</p>\r\n<p>Companies or websites that handle customer information are required to publish their Privacy Policies on their business websites. If you own a website, web app, mobile app or desktop app that collects or processes user data, you most certainly will have to post a Privacy Policy on your website (or give in-app access to the full Privacy Policy agreement).</p>', '11122023081856-mirabusiness14.jpg', 'en', 1, NULL, NULL, NULL, NULL, '2021-11-24 00:55:31', '2023-12-11 06:59:25'),
(45, 'Terms and Conditions', 'terms-and-conditions', '<h6>What are Terms and Conditions?</h6>\r\n<p>Terms and conditions (also referred to as terms of use or terms of service) are a form of legal agreement outlining rules and restrictions for customers to follow when using your site.</p>\r\n\r\n<h6>Does My Online Shop Need Terms and Conditions?</h6>\r\n<p>While it’s not legally required for ecommerce websites to have a terms and conditions agreement, adding one will help protect your online business.</p>\r\n<p>As terms and conditions are legally enforceable rules, they allow you to set standards for how users interact with your site. Here are some of the major benefits of including terms and conditions on your ecommerce site:</p>\r\n<h6>1. Prevent Site Abuse</h6>\r\n<p>By setting guidelines on proper site usage, terms inform users what constitutes acceptable actions when using your site, and the consequences of breaking those rules.</p>\r\n<p>Examples of unacceptable behaviors include spamming, using bots, or posting defamatory content. Having terms and conditions allows you to take action against site abusers by banning them or terminating their accounts.</p>\r\n\r\n<h6>2. Protect Your Property</h6>\r\n<p>As the owner of your online store or shop, you also own your website’s content, logo, page designs, and any other brand-related materials you produce.</p>\r\n<p>Use your terms and conditions to inform users that your properties are protected by copyright and trademark laws, and set the rules for how others can lawfully use your materials.</p>\r\n\r\n<h6>3. Minimize Disputes</h6>\r\n<p>A well-drafted terms and conditions agreement will minimize your chances of legal disputes, as all the rules are clearly laid out for customers to see.</p>\r\n<p>In the event that disputes do arise, your terms and conditions (specifically, a dispute resolution clause) sets out a plan for resolving conflicts with limited difficulty.</p>\r\n\r\n<h6>What to Include in Terms and Conditions for Online Stores</h6>\r\n<p>Although terms and conditions will vary from business to business, standard terms and conditions for ecommerce sites will include these clauses:</p>\r\n\r\n<h6>Pricing and Payment Terms</h6>\r\n<p>Under your pricing and payment clause, address online purchase and pricing-related topics, including transaction processes, shipping and delivery terms, and returns and refunds.</p>\r\n<p>Your terms and conditions should also link to your return and refund policy, so users can easily find the details of your returns process. If you decide not to offer refunds, link to your no refund policy or all sales are final policy instead.</p>\r\n\r\n<p>Id aliquet risus feugiat in. Nec ullamcorper sit amet risus nullam eget felis. Sagittis nisl rhoncus mattis rhoncus.</p>\r\n<p>Aliquet sagittis id consectetur purus. Fermentum iaculis eu non diam phasellus vestibulum lorem. Libero id faucibus nisl tincidunt eget nullam non nisi est. Eleifend donec pretium vulputate sapien nec sagittis aliquam malesuada.</p>\r\n<p>Sit amet consectetur adipiscing elit duis tristique sollicitudin nibh sit. Sit amet facilisis magna etiam. Volutpat sed cras ornare arcu dui vivamus. Sociis natoque penatibus et magnis dis parturient montes nascetur. Diam maecenas ultricies mi eget mauris pharetra et.</p>\r\n<p>Egestas egestas fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate. Fringilla urna porttitor rhoncus dolor purus non. </p>', '11122023085452-img-11.jpg', 'en', 1, NULL, NULL, NULL, NULL, '2021-11-24 00:55:59', '2023-12-11 06:58:59'),
(46, 'Booking Policy', 'booking-policy', '<p>The role of the purchasing policy is to define standard methods and procedures for the Company to purchase products and services from different vendors. This policy covers all expenses for the company including items like taxes, payroll payments, etc.  Those are defined as exceptions in the policy and proper procedures are defined to manage these payments.</p>\r\n\r\n<p>Compliance with this policy is mandatory for all employees. Noncompliance with this policy could lead to action including termination of employment. The purchasing department is responsible for maintaining and implementing the processes defined in this policy.</p>\r\n\r\n<h6>Refund Policy</h6>\r\n<p>Thanks for purchasing our products Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Orci sagittis eu volutpat odio facilisis mauris sit amet massa. Egestas tellus rutrum tellus pellentesque eu. Id interdum velit laoreet id donec ultrices tincidunt. Faucibus turpis in eu mi bibendum neque egestas congue quisque.</p>\r\n<p>We offer a full money-back guarantee for all purchases made on our website. If you are not satisfied with the product that you have purchased from us, you can get your money back no questions asked. You are eligible for a full reimbursement within 14 calendar days of your purchase.</p>\r\n<p>After the 14-day period you will no longer be eligible and won\'t be able to receive a refund. We encourage our customers to try the product (or service) in the first two weeks after their purchase to ensure it fits your needs.</p>\r\n<p>If you have any additional questions or would like to request a refund, feel free to contact us.</p>\r\n\r\n<h6>Why do You Need a Refund Policy?</h6>\r\n<p>We have already stated that a refund policy is a legal agreement. If you run an online retail business or an e-commerce website, the chances are that you already have some policies on display for your customers. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Orci sagittis eu volutpat odio facilisis mauris sit amet massa. Egestas tellus rutrum tellus pellentesque eu. Id interdum velit laoreet id donec ultrices tincidunt. Faucibus turpis in eu mi bibendum neque egestas congue quisque.</p>\r\n\r\n<h6>What to Include in a Refund policy?</h6>\r\n<p>People don\'t have a tendency to read long and boring legal documents online. On the other hand, you have to provide all the necessary information.</p>\r\n<p>This is why it is advised to break down your return/refund policy into smaller sections. This will increase the readability of the document, make it easier for customers to find what they need, and, at the same time, protect you legally.</p>\r\n\r\n<p>Id aliquet risus feugiat in. Nec ullamcorper sit amet risus nullam eget felis. Sagittis nisl rhoncus mattis rhoncus.</p>\r\n<p>Aliquet sagittis id consectetur purus. Fermentum iaculis eu non diam phasellus vestibulum lorem. Libero id faucibus nisl tincidunt eget nullam non nisi est. Eleifend donec pretium vulputate sapien nec sagittis aliquam malesuada.</p>\r\n<p>Sit amet consectetur adipiscing elit duis tristique sollicitudin nibh sit. Sit amet facilisis magna etiam. Volutpat sed cras ornare arcu dui vivamus. Sociis natoque penatibus et magnis dis parturient montes nascetur. Diam maecenas ultricies mi eget mauris pharetra et.</p>\r\n<p>Egestas egestas fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate. Fringilla urna porttitor rhoncus dolor purus non. </p>', '11122023085452-img-11.jpg', 'en', 1, NULL, NULL, NULL, NULL, '2021-11-24 00:56:14', '2023-12-11 06:58:19'),
(47, 'Cookie Policy', 'cookie-policy', '<h6>What\'s a Cookies Policy</h6>\r\n<p>A Cookies Policy is a policy that provides users with detailed information about the types of cookies a website uses, how these cookies are used, and how users can control cookies placement through limiting or forbidding a website to place cookies on his/her electronic device.</p>\r\n<p>A Privacy Policy will often include a section within it that covers Cookies. However, in the EU, having a fully separate Cookies Policy is required.</p>\r\n<p>In this case, any information about cookies can also be placed in the Privacy Policy but then referenced in the separate Cookies Policy.</p>\r\n\r\n<h6>Legal Requirements for Cookies Policies</h6>\r\n<p>Any EU business that uses cookies must comply with the EU Cookies Law, which requires a Cookie Policy to be in place. Visitors to your website must be alerted that cookies are in use, what kind of cookies are in use, and given the option to opt out of having these cookies placed on their devices.</p>\r\n<p>A Cookie Policy is where this information can be thoroughly detailed and explained to your visitors.</p>\r\n<p>While pop-up boxes and banner notifications alert users that cookies are being used and can allow for an option to opt out within that box or banner, this kind of policy is where further information can be detailed and accessible to your visitors at any time.</p>\r\n\r\n<h6>What to Include in Your Cookies Policy</h6>\r\n<p>All Cookies Policies will include the same basic information:</p>\r\n<ul>\r\n	<li>That cookies are in use on your website</li>\r\n	<li>What cookies are</li>\r\n	<li>What kind of cookies are in use (by you and/or third parties)</li>\r\n	<li>How and why you (and/or third parties) are using the cookies</li>\r\n	<li>How a user can opt out of having cookies placed on a device</li>\r\n</ul>\r\n<p>Let\'s look at some examples of Cookies Policy clauses that address the above information.</p>\r\n\r\n<h6>You Use Cookies, and What Cookies Are</h6>\r\n<p>Most Cookies Policies start by letting users know that cookies are in use, and telling them what cookies are. Simple, easy-to-understand language should be used here so that everyone is able to understand what the policy is saying.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Orci sagittis eu volutpat odio facilisis mauris sit amet massa. Egestas tellus rutrum tellus pellentesque eu. Id interdum velit laoreet id donec ultrices tincidunt. Faucibus turpis in eu mi bibendum neque egestas congue quisque. Est ultricies integer quis auctor elit sed vulputate mi. Leo vel fringilla est ullamcorper eget nulla. Odio pellentesque diam volutpat commodo. Tincidunt augue interdum velit euismod in pellentesque massa placerat duis. Auctor urna nunc id cursus metus aliquam. Sapien faucibus et molestie ac feugiat sed lectus vestibulum mattis. Maecenas accumsan lacus vel facilisis volutpat est velit egestas dui. Lorem ipsum dolor sit amet consectetur adipiscing elit.</p>', '11122023081856-mirabusiness14.jpg', 'en', 1, NULL, NULL, NULL, NULL, '2021-11-24 00:56:24', '2023-12-11 06:57:29'),
(48, 'About us', 'about-us', '<h6 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 25px; font-family: var(--secondary-font-family); color: var(--color-black); padding: 0px; outline: 0px; background-color: rgb(251, 251, 251);\">What Is An About Us Page?</h6><h6 style=\"font-family: Tajawal, sans-serif; margin-left: 25px;\"><p style=\"margin-left: 25px; color: rgb(89, 89, 89); font-family: Roboto, sans-serif; line-height: 2; padding: 0px; outline: 0px; background-color: rgb(251, 251, 251);\">An About Us Page is a page on your website that tells your readers all about you. It includes a detailed description covering all aspects of your business and you as an entrepreneur. This can include the products or services you are offering, how you came into being as a business, your mission and vision, your aim, and maybe something about your future goals too. Your About Us page is your perfect opportunity to tell a compelling story about your business.</p><p style=\"margin-left: 25px; color: rgb(89, 89, 89); font-family: Roboto, sans-serif; line-height: 2; padding: 0px; outline: 0px; background-color: rgb(251, 251, 251);\">An About Us page helps your company make a good first impression, and is critical for building customer trust and loyalty. An About Us page should make sure to cover basic information about the store and its founders, explain the company\'s purpose and how it differs from the competition, and encourage discussion and interaction. Here are some free templates, samples, and example About Us pages to help your ecommerce store stand out from the crowd.</p><p style=\"margin-left: 25px; color: rgb(89, 89, 89); font-family: Roboto, sans-serif; line-height: 2; padding: 0px; outline: 0px; background-color: rgb(251, 251, 251);\">Even though an About Us page is one of the most important elements of a website, it is often one of the most overlooked elements. Compared to a landing page, an About Us page help you communicate a range of things:</p><p style=\"margin-left: 25px; font-family: Tajawal, sans-serif;\"></p><p style=\"margin-bottom: 0px; margin-left: 25px; font-family: Tajawal, sans-serif; line-height: 2; padding: 0px; outline: 0px; list-style-type: none;\">The story of your brand and why you started it.</p><p style=\"margin-bottom: 0px; margin-left: 25px; font-family: Tajawal, sans-serif; line-height: 2; padding: 0px; outline: 0px; list-style-type: none;\">The cause or customers that your business serves.</p><p style=\"margin-bottom: 0px; margin-left: 25px; font-family: Tajawal, sans-serif; line-height: 2; padding: 0px; outline: 0px; list-style-type: none;\">Your business model or how your products are sourced/manufactured.</p><p style=\"font-family: Tajawal, sans-serif;\"></p><p style=\"margin-left: 25px; color: rgb(89, 89, 89); font-family: Roboto, sans-serif; line-height: 2; padding: 0px; outline: 0px; background-color: rgb(251, 251, 251);\">As an important part of your website your About Us page can set you apart from your competitors in a way that can build your brand in a positive way.</p></h6><h6 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 25px; font-family: var(--secondary-font-family); color: var(--color-black); padding: 0px; outline: 0px; background-color: rgb(251, 251, 251);\">Your History</h6><h6 style=\"font-family: Tajawal, sans-serif; margin-left: 25px;\"><p style=\"margin-left: 25px; color: rgb(89, 89, 89); font-family: Roboto, sans-serif; line-height: 2; padding: 0px; outline: 0px; background-color: rgb(251, 251, 251);\">Take the visitors on your website to a trip down memory lane, and give them an insight to the history behind your store. Here, you can show them where, how, and when you started, and everything your business has accomplished on the way. This is your chance to share your relevant milestones and achievements relating to your business in an engaging way.</p><p style=\"margin-left: 25px; color: rgb(89, 89, 89); font-family: Roboto, sans-serif; line-height: 2; padding: 0px; outline: 0px; background-color: rgb(251, 251, 251);\">You can even choose to present your history to your viewers in the form of a timeline, which allows you to display a large amount of information in a visually engaging manner. Your customers or potential customers might be interested in seeing how you grew over the years.</p></h6><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 25px; font-family: var(--secondary-font-family); color: var(--color-black); padding: 0px; outline: 0px; background-color: rgb(251, 251, 251);\">Team Member Profiles</p><p style=\"margin-left: 25px;\"></p><p style=\"margin-left: 25px; color: rgb(89, 89, 89); font-family: Roboto, sans-serif; line-height: 2; padding: 0px; outline: 0px; background-color: rgb(251, 251, 251);\">Add an emotional element to your About Us page by adding details of the people that are driving the passion at your business. People find it easier to connect with human beings, so allow the personality of your crew to shine through the About Us page.</p><p style=\"margin-left: 25px; color: rgb(89, 89, 89); font-family: Roboto, sans-serif; line-height: 2; padding: 0px; outline: 0px; background-color: rgb(251, 251, 251);\">Id aliquet risus feugiat in. Nec ullamcorper sit amet risus nullam eget felis. Sagittis nisl rhoncus mattis rhoncus.</p><p style=\"margin-left: 25px; color: rgb(89, 89, 89); font-family: Roboto, sans-serif; line-height: 2; padding: 0px; outline: 0px; background-color: rgb(251, 251, 251);\">Aliquet sagittis id consectetur purus. Fermentum iaculis eu non diam phasellus vestibulum lorem. Libero id faucibus nisl tincidunt eget nullam non nisi est. Eleifend donec pretium vulputate sapien nec sagittis aliquam malesuada.</p><p style=\"margin-left: 25px; color: rgb(89, 89, 89); font-family: Roboto, sans-serif; line-height: 2; padding: 0px; outline: 0px; background-color: rgb(251, 251, 251);\">Sit amet consectetur adipiscing elit duis tristique sollicitudin nibh sit. Sit amet facilisis magna etiam. Volutpat sed cras ornare arcu dui vivamus. Sociis natoque penatibus et magnis dis parturient montes nascetur. Diam maecenas ultricies mi eget mauris pharetra et.</p><p style=\"margin-left: 25px; color: rgb(89, 89, 89); font-family: Roboto, sans-serif; line-height: 2; padding: 0px; outline: 0px; background-color: rgb(251, 251, 251);\">Egestas egestas fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate. Fringilla urna porttitor rhoncus dolor purus non.</p><p></p><h6 style=\"padding: 0px; outline: 0px; line-height: 2; background-color: rgb(251, 251, 251); margin-left: 25px;\">The Mira Hotel articles</h6><ul style=\"text-align: justify;\"><li style=\"padding: 0px; outline: 0px; line-height: 2; text-align: start; background-color: rgb(251, 251, 251); margin-left: 25px;\"><font color=\"#595959\" face=\"Roboto, sans-serif\"><a href=\"https://www.al-jazirah.com/2017/20170601/rr6.htm#google_vignette\" target=\"_blank\"><u><b>An article about the hotel from Al Jazeera’s website</b></u></a></font></li><li style=\"margin-left: 25px; font-family: Tajawal, sans-serif; line-height: 2; padding: 0px; outline: 0px; background-color: rgb(251, 251, 251);\"><font color=\"#595959\" face=\"Roboto, sans-serif\"><a href=\"https://www.omallqura.com/mira-trio-hotel-riyadh/\" target=\"_blank\"><u><b>Report on hotel Mira</b></u></a></font></li><li style=\"margin-left: 25px; font-family: Tajawal, sans-serif; line-height: 2; padding: 0px; outline: 0px; background-color: rgb(251, 251, 251);\"><a href=\"https://ibnbattutatravel.com/mira-hotel-jeddah/\" target=\"_blank\" style=\"color: rgb(35, 82, 124); background-color: rgb(251, 251, 251); outline-style: initial; outline-width: 0px; font-family: Roboto, sans-serif; text-align: left;\"><u style=\"\"><b>Mira Waterfront Hotel Jeddah</b></u></a></li></ul>', '07122023095100-photo_6021453864940716606_y.jpg', 'en', 1, NULL, NULL, NULL, NULL, '2021-11-24 00:57:08', '2023-12-10 22:11:22'),
(49, 'Career', 'career', '<p>A Career Objective or a Resume Objective is essentially a heading statement that describes your professional goals in two to three sentences. Employers looking to hire an employee for a position tend to seek candidates that are driven enough to understand what they want. Whether you are starting off or set on a particular dream job, it is extremely essential to design an effective objective to stand out. Designing a resume that catches the eye of the recruiter is important. Showcasing all your skills, and highlighting work experience, and finding the perfect balance, can seem quite intimidating. Thus, taking up a Free Resume Building from Scratch session will help you streamline the process and help you create an effective resume. You will learn a step-by-step process, Do’s and Don’ts, Language &amp; Formatting, and Live Resume Examples.</p>\r\n\r\n<h6>What’s the best resume template to use for an e-commerce resume?</h6>\r\n<p>The best resume template for e-commerce efficiently communicates the information employers need to see. Look for a template with a header in which to provide contact details and room for an objective or summary statement in addition to lists of skills, professional experience, and education.</p>\r\n<p>Our e-commerce resume sample features all of these sections as well as an additional section dedicated to certifications and affiliations. Use this template with our resume builder to create a resume in minutes.</p>\r\n\r\n<h6>What’s the best format for a resume: PDF, MS Word, or txt?</h6>\r\n<p>Check the job advertisement or description to determine which format an employer prefers for resume submission. PDF and MS Word files can display formatting, and plain text files cannot. The e-commerce resume sample includes light formatting such as bolded text, horizontal lines, and bullet points.</p>\r\n<p>If an employer has requested you to submit your resume with other documents, you might want to consider a versatile PDF file. Microsoft Word is a full-featured word processor with a wide variety of formatting options for structuring and refining the appearance of your materials. A text file can be useful for copying and pasting into a form on an online application portal.</p>\r\n\r\n<h6>What’s the best way to include digital skills on an e-commerce resume?</h6>\r\n<p>Digital skills play a major part in the success of any e-commerce candidate. Emphasize the skills requested in the description of the job you are seeking and try to make your resume reflect the employer’s priorities.</p>\r\n\r\n<h6>How can you separate your e-commerce resume from other candidates’ resumes?</h6>\r\n<p>The candidate in our e-commerce resume sample focuses on SEO, social networking, and blogging in her objective statement and sets forth more technological proficiencies in the skills section. If specific proficiency is absolutely necessary, you might want to bring it up in your summary statement or list of skills. Reference competencies related to past positions under qualifications or experience.</p>\r\n<p>One of the best ways to distinguish your resume from the competition for an e-commerce position is to tailor your experience to the job you are seeking. Also, use effective and relevant metrics throughout to make a strong case for your abilities. Write your objective or summary statement with the position you want in mind.</p>\r\n\r\n<h6>How do you list awards on your e-commerce resume?</h6>\r\n<p>You can make reference to awards considered industry standard in your summary statement or a section devoted to awards. If these honors pertain to past positions, bring them up in the corresponding entry of your professional experience section. The candidate on our e-commerce resume sample does not mention accolades, but she includes a section for certifications and affiliations that could go in the place of, before, or after an awards section.</p>', '11122023081856-mirabusiness14.jpg', 'en', 1, NULL, NULL, NULL, NULL, '2021-11-24 00:57:18', '2023-12-11 06:56:43'),
(71, 'FAQ', 'faq', '<h6><b>Purchase Policy Summary:</b></h6><div><br></div><div>The role of the purchasing policy is to define the standard methods and procedures that the company should follow when acquiring products and services from various suppliers. This policy encompasses all expenses for the company, including taxes, salary payments, and more. Exceptions are outlined in the policy, and appropriate procedures are specified for managing these payments.</div><div><br></div><div>Compliance with this policy is mandatory for all employees. Non-compliance may lead to actions, including termination of employment. The purchasing management is responsible for maintaining and implementing the processes outlined in this policy.</div><div><br></div><h6><b>Refund Policy:</b></h6><div><br></div><div>Thank you for purchasing our products.</div><div><br></div><div>We offer a full refund guarantee for all purchases made through our website. If you are not satisfied with the product you bought from us, you can get a refund without asking any questions. You are eligible for a full refund within 14 calendar days from your purchase date.</div><div><br></div><div>After the 14-day period, you will no longer be eligible, and you won\'t be able to receive a refund. We encourage our customers to try the product (or service) in the first two weeks after the purchase to ensure it meets your needs.</div><div><br></div><div>If you have any additional questions or wish to request a refund, feel free to contact us.</div><div><br></div><h6><b>Why do you need a refund policy?</b></h6><div><br></div><div>We have already mentioned that the refund policy is a legal agreement. If you operate a business online or an e-commerce site, chances are you already have some policies displayed to your customers.</div><div><br></div><h6><b>What should be included in the refund policy?</b></h6><div><br></div><div>People tend not to read long and boring legal documents online. On the other hand, you must provide all the necessary information.</div><div><br></div><div><br></div><div>For this reason, it is advisable to break down the return/refund policy into smaller sections. This will increase the readability of the document, making it easier for customers to find what they need, while also providing legal protection for you.</div><div><a href=\"https://www.whatsapp.com/\" target=\"_blank\" style=\"font-family: Cairo, sans-serif; font-size: 17px; font-weight: 700; background-color: rgb(255, 255, 255);\"><b>to know more</b></a></div>', '11122023082427-img-11.jpg', 'en', 1, NULL, NULL, NULL, NULL, '2022-09-04 11:00:58', '2023-12-14 09:06:56'),
(73, 'الاسئلة الشائعه', 'faq-ar', '<h6><b>ملخص سياسة الشراء:</b></h6><div><br></div><div>يتعين على سياسة الشراء تحديد الطرق والإجراءات القياسية التي يجب أن تتبعها الشركة عند الحصول على منتجات وخدمات من موردين متنوعين. تغطي هذه السياسة جميع النفقات للشركة، بما في ذلك الضرائب ودفعات الرواتب والمزيد. يتم تحديد الاستثناءات في السياسة، ويتم تحديد الإجراءات المناسبة لإدارة هذه الدفعات.</div><div><br></div><div>الامتثال لهذه السياسة إلزامي لجميع الموظفين. قد تؤدي عدم الامتثال إلى إجراءات، بما في ذلك إنهاء العمل. إدارة الشراء مسؤولة عن الحفاظ على وتنفيذ العمليات المحددة في هذه السياسة.</div><div><br></div><h6><b>سياسة الاسترجاع:</b></h6><div><br></div><div>شكرًا لشرائك منتجاتنا.</div><div><br></div><div>نقدم ضمان استرداد كامل لجميع المشتريات التي تمت عبر موقعنا. إذا لم تكن راضيًا عن المنتج الذي اشتريته منا، يمكنك الحصول على استرداد دون طرح أي أسئلة. أنت مؤهل للحصول على استرداد كامل في غضون 14 يومًا من تاريخ الشراء الخاص بك.</div><div><br></div><div>بعد انتهاء فترة الـ 14 يومًا، لن تكون مؤهلاً بعد، ولن تتمكن من الحصول على استرداد. نشجع عملائنا على تجربة المنتج (أو الخدمة) في الأسبوعين الأولين بعد الشراء لضمان أنه يلبي احتياجاتك.</div><div><br></div><div>إذا كان لديك أي أسئلة إضافية أو ترغب في طلب استرداد، فلا تتردد في الاتصال بنا.</div><div><br></div><h6>لماذا تحتاج إلى سياسة استرداد؟</h6><div><br></div><div>لقد أشرنا بالفعل إلى أن سياسة الاسترداد هي اتفاق قانوني. إذا كنت تدير عملًا عبر الإنترنت أو موقع تجارة إلكترونية، فإن هناك احتمالًا كبيرًا أن لديك بالفعل بعض السياسات المعروضة لعملائك.</div><div><br></div><h6>ما يجب تضمينه في سياسة الاسترداد؟</h6><div><br></div><div>غالبًا ما يتجنب الناس قراءة الوثائق القانونية الطويلة والمملة عبر الإنترنت. ومن ناحية أخرى، يجب عليك توفير جميع المعلومات اللازمة.</div><div><br></div><div>لهذا السبب، من المستحسن تقسيم سياسة الإرجاع/الاسترداد إلى أقسام أصغر. سيزيد ذلك من قابلية قراءة المستند، مما يجعله أسهل للعملاء العثور على ما يحتاجون إليه، بينما يوفر أيضًا الحماية القانونية لك.&nbsp; </div><div><font face=\"Cairo, sans-serif\"><span style=\"font-size: 17px;\"><b><a href=\"https://www.whatsapp.com/\" target=\"_blank\">لمعرفة المزيد</a></b></span></font></div>', '11122023082427-img-11.jpg', 'ar', 1, NULL, NULL, NULL, NULL, '2023-12-03 09:32:44', '2023-12-14 09:04:32'),
(74, 'من نحن', 'about-us-ar', '<p>نحن نفخر بتقديم منتجات وخدمات عالية الجودة التي تلبي احتياجات عملائنا بشكل شامل. تتسم سياستنا في مجال الشراء بالالتزام بأساليب وإجراءات قياسية، حيث يتم تحديدها بعناية لضمان الحصول على منتجات وخدمات موثوقة من موردينا المتنوعين. نحن نغطي جميع النفقات المتعلقة بالشركة، بما في ذلك الضرائب ودفعات الرواتب، ونقوم بتحديد الاستثناءات ووضع إجراءات مناسبة لإدارة هذه الدفعات. يشترط الامتثال لهذه السياسة على جميع موظفينا، وقد تؤدي أي عدم امتثال إلى اتخاذ إجراءات، بما في ذلك إنهاء العمل. إدارة الشراء لدينا ملتزمة بالحفاظ على وتنفيذ العمليات المحددة في هذه السياسة لضمان فاعلية وشفافية العمليات.<br></p><p><br></p><p>فيما يتعلق بسياستنا في مجال الاسترداد، نهتم برضا عملائنا ونقدم ضمان استرداد كامل لجميع المشتريات التي تمت عبر موقعنا. نفهم أهمية راحة العميل ولذلك نوفر فترة استرداد تصل إلى 14 يومًا من تاريخ الشراء. نشجع عملائنا على تجربة المنتج أو الخدمة في هذه الفترة الزمنية للتحقق من مدى تلبيتها لاحتياجاتهم. تعتبر سياسة الاسترداد لدينا اتفاقًا قانونيًا يضمن حقوق العملاء ويوفر إطارًا واضحًا للجميع.</p><h6><b>مقالات عن فندق ميرا</b></h6><li style=\"list-style-type: disc;\"><a href=\"https://www.al-jazirah.com/2017/20170601/rr6.htm#google_vignette\" target=\"_blank\"><b><u>مقالة عن الفندق&nbsp; من موقع الجزيرة</u></b></a></li><li style=\"list-style-type: disc;\"><a href=\"https://www.omallqura.com/mira-trio-hotel-riyadh/\" target=\"_blank\"><b><u>تقرير عن الفندق ميرا</u></b></a></li><li style=\"list-style-type: disc;\"><a href=\"https://ibnbattutatravel.com/mira-hotel-jeddah/\" target=\"_blank\"><b><u>تقرير عن فندق ميرا الواجهة البحرية جدة</u></b></a></li>', '07122023095100-photo_6021453864940716606_y.jpg', 'ar', 1, NULL, NULL, NULL, NULL, '2023-12-04 05:44:28', '2023-12-10 21:51:54'),
(75, 'الأحكام والشروط', 'alahkam-oalshrot', '<div><div>ما هي الشروط والأحكام؟</div><div>الشروط والأحكام (يشار إليها أيضًا باسم شروط الاستخدام أو شروط الخدمة) هي شكل من أشكال الاتفاقية القانونية التي تحدد القواعد والقيود التي يجب على العملاء اتباعها عند استخدام موقعك.</div><div><br></div><div>هل يحتاج متجري الإلكتروني إلى الشروط والأحكام؟</div><div>على الرغم من أنه ليس من الضروري قانونًا أن يكون لدى مواقع التجارة الإلكترونية اتفاقية شروط وأحكام، فإن إضافة واحدة ستساعد في حماية عملك عبر الإنترنت.</div><div><br></div><div>نظرًا لأن الشروط والأحكام هي قواعد قابلة للتنفيذ قانونيًا، فإنها تسمح لك بوضع معايير لكيفية تفاعل المستخدمين مع موقعك. فيما يلي بعض الفوائد الرئيسية لتضمين الشروط والأحكام على موقع التجارة الإلكترونية الخاص بك1&nbsp; . منع إساءة استخدام الموقع</div><div>من خلال وضع إرشادات حول الاستخدام السليم للموقع، تُعلم الشروط المستخدمين ما الذي يشكل إجراءات مقبولة عند استخدام موقعك، وعواقب انتهاك هذه القواعد.</div><div><br></div><div>تتضمن أمثلة السلوكيات غير المقبولة إرسال البريد العشوائي أو استخدام برامج الروبوت أو نشر محتوى تشهيري. يتيح لك وجود الشروط والأحكام اتخاذ إجراءات ضد من يسيئون استخدام الموقع من خلال حظرهم أو إنهاء حساباتهم.</div><div><br></div><div><div>حماية ممتلكاتك</div><div>بصفتك مالكًا لمتجرك الإلكتروني أو محلك، فإنك تمتلك أيضًا محتوى موقع الويب الخاص بك، والشعار، وتصميم الصفحة، وأي مواد أخرى متعلقة بالعلامة التجارية التي تنتجها.</div><div>استخدم شروطك وأحكامك لإبلاغ المستخدمين بأن ممتلكاتك محمية بموجب قوانين حقوق الملكية الفكرية والعلامات التجارية، وحدد القواعد لكيفية استخدام الآخرين لموادك بشكل قانوني.</div><div><br></div><div>تقليل النزاعات</div><div>سيقلل اتفاق شروط وأحكام جيد من فرص وقوع نزاعات قانونية، حيث يتم توضيح جميع القواعد بوضوح للعملاء.</div><div>في حال حدوث نزاعات، تحدد شروط وأحكامك (بشكل خاص، بند حل النزاع) خطة لحل النزاعات بصعوبة محدودة.</div><div><br></div><div>ما يجب تضمينه في شروط وأحكام المتاجر الإلكترونية</div><div>على الرغم من أن شروط وأحكام الأعمال ستختلف من شركة إلى شركة، ستتضمن الشروط والأحكام القياسية لمواقع التجارة الإلكترونية هذه البنود:</div><div><br></div><div>التسعير وشروط الدفع</div><div>في بند التسعير وشروط الدفع الخاص بك، تناول مواضيع الشراء عبر الإنترنت والأسعار، بما في ذلك عمليات العمليات، وشروط الشحن والتسليم، وسياسات الإرجاع والاسترداد.</div><div><br></div><div>يجب أن ترتبط شروطك وأحكامك أيضًا بسياسة الإرجاع والاسترداد الخاصة بك، حتى يتمكن المستخدمون بسهولة من العثور على تفاصيل عملية الإرجاع الخاصة بك. إذا قررت عدم تقديم استردادات، فاربط بسياسة عدم استرداد الأموال أو سياسة أن جميع المبيعات نهائية بدلاً من ذلك.</div><div><br></div><div><br></div><div><br></div></div></div>', '11122023085452-img-11.jpg', 'ar', 1, NULL, NULL, NULL, NULL, '2023-12-04 09:25:56', '2023-12-11 06:56:12'),
(76, 'Contact us', 'contact-us', '<p style=\"text-align: start; \"><font color=\"#595959\" face=\"Tajawal\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 16th century, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 16th century, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</font></p><p style=\"text-align: start; \"><font color=\"#595959\" face=\"Tajawal\"><br></font></p><p style=\"text-align: start; \"><font color=\"#595959\" face=\"Tajawal\"><br></font></p><p style=\"text-align: start; \"><br></p>', '11122023081140-img-24.jpg', 'en', 1, NULL, NULL, NULL, NULL, '2023-12-04 09:37:39', '2023-12-11 06:11:50'),
(77, 'سياسة ملفات الارتباط', 'syas-mlfat-alartbat', '<p>ما هي سياسة الكوكيز؟</p><p><br></p><p>سياسة الكوكيز هي سياسة تقدم للمستخدمين معلومات مفصلة حول أنواع ملفات الكوكيز التي يستخدمها موقع الويب، وكيفية استخدام هذه الملفات، وكيف يمكن للمستخدمين التحكم في وضع ملفات الكوكيز عن طريق تقييد أو منع الموقع من وضع ملفات الكوكيز على جهازهم الإلكتروني.</p><p><br></p><p>غالبًا ما يتم تضمين قسم يغطي ملفات الكوكيز في سياسة الخصوصية. ومع ذلك، في الاتحاد الأوروبي، يتعين وجود سياسة الكوكيز كوثيقة منفصلة بشكل كامل.</p><p><br></p><p>في هذه الحالة، يمكن أيضًا وضع أي معلومات حول ملفات الكوكيز في سياسة الخصوصية ومن ثم الرجوع إليها في سياسة الكوكيز الفردية.</p><p><br></p><p>المتطلبات القانونية لسياسات الكوكيز</p><p><br></p><p>يجب على أي شركة في الاتحاد الأوروبي تستخدم ملفات الكوكيز أن تلتزم بقانون ملفات الكوكيز الخاص بالاتحاد الأوروبي، الذي يتطلب وجود سياسة الكوكيز. يجب أن يتم إعلام زوار موقع الويب بأن ملفات الكوكيز قيد الاستخدام، وأي نوع من أنواع ملفات الكوكيز في الاستخدام، ويتيح لهم خيار الاختيار فيما إذا كانوا يرغبون في عدم وضع هذه الملفات على أجهزتهم.</p><p><br></p><p>سياسة الكوكيز هي المكان الذي يمكن فيه توضيح وشرح هذه المعلومات بشكل دقيق لزوار الموقع.</p><p><br></p><p>في حين أن صناديق النص الفورية والإشعارات الظاهرة تنبيه المستخدمين بأن ملفات الكوكيز قيد الاستخدام ويمكن أن تتيح خيارًا للانسحاب داخل تلك الصناديق أو الإشعارات، يعد هذا النوع من السياسات مكانًا يمكن فيه توضيح مزيد من المعلومات وجعلها متاحة لزوار الموقع في أي وقت.</p><p>**ما يجب تضمينه في سياسة الكوكيز الخاصة بك**</p><p><br></p><p>تتضمن جميع سياسات الكوكيز نفس المعلومات الأساسية:</p><p><br></p><p>1. **أن ملفات الكوكيز قيد الاستخدام على موقع الويب الخاص بك**</p><p>&nbsp; &nbsp;- يجب أن تقول بوضوح أن ملفات الكوكيز قيد الاستخدام على موقع الويب الخاص بك.</p><p><br></p><p>2. **ما هي ملفات الكوكيز**</p><p>&nbsp; &nbsp;- قدم شرحاً موجزاً حول ما هي ملفات الكوكيز.</p><p><br></p><p>3. **أنواع ملفات الكوكيز التي تُستخدم (من قِبلك و/أو أطراف ثالثة)**</p><p>&nbsp; &nbsp;- حدد أنواع ملفات الكوكيز المستخدمة، سواء كانت من موقعك أو من مصادر أطراف ثالثة.</p><p><br></p><p>4. **كيفية ولماذا تستخدم أنت (و/أو أطراف ثالثة) ملفات الكوكيز**</p><p>&nbsp; &nbsp;- شرح للغرض والسبب وراء استخدام ملفات الكوكيز من قِبل موقعك وأطراف ثالثة.</p><p><br></p><p>5. **كيف يمكن للمستخدم أن يرفض وضع ملفات الكوكيز على جهازه**</p><p>&nbsp; &nbsp;- قدم معلومات حول كيف يمكن للمستخدمين اختيار منع وضع ملفات الكوكيز أو تقييد وضعها على أجهزتهم.</p><p><br></p><p>*لنلقي نظرة على بعض أمثلة على فقرات سياسة الكوكيز التي تعنى بالمعلومات أعلاه.*</p><p><br></p><p>**أنت تستخدم ملفات الكوكيز، وما هي ملفات الكوكيز**</p><p><br></p><p>غالبًا ما تبدأ معظم سياسات الكوكيز بإعلام المستخدمين بأن ملفات الكوكيز قيد الاستخدام وشرح ما هي ملفات الكوكيز. يجب استخدام لغة بسيطة وسهلة التفاهم هنا حتى يتمكن الجميع من فهم ما تقوله السياسة.</p><p><br></p><p>*مثال:*</p><p>&gt; نستخدم ملفات الكوكيز على موقعنا. ملفات الكوكيز هي ملفات نصية صغيرة تُخزن على جهاز الكمبيوتر أو الجهاز المحمول الخاص بك عند زيارة موقع ويب.</p>', '11122023081856-mirabusiness14.jpg', 'ar', 1, NULL, NULL, NULL, NULL, '2023-12-04 19:48:10', '2023-12-11 06:55:39'),
(78, 'سياسة الحجز', 'syas-alhgz', '<p>يتمثل دور سياسة الشراء في تحديد الأساليب والإجراءات القياسية للشركة لشراء المنتجات والخدمات من البائعين المختلفين. تغطي هذه السياسة جميع نفقات الشركة بما في ذلك بنود مثل الضرائب ومدفوعات الرواتب وما إلى ذلك. ويتم تعريف هذه على أنها استثناءات في السياسة ويتم تحديد الإجراءات المناسبة لإدارة هذه المدفوعات.</p><div><div>**سياسة الاسترجاع**</div><div><br></div><div>شكرًا لشرائكم منتجاتنا. Lorem ipsum dolor sit amet، consectetur adipiscing elit، sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Orci sagittis eu volutpat odio facilisis mauris sit amet massa. Egestas tellus rutrum tellus pellentesque eu. Id interdum velit laoreet id donec ultrices tincidunt. Faucibus turpis in eu mi bibendum neque egestas congue quisque.</div><div><br></div><div>نقدم ضمان استرجاع كامل لجميع المشتريات التي تمت على موقعنا. إذا كنت غير راضٍ عن المنتج الذي اشتريته منا، يمكنك استرداد أموالك دون طرح أي أسئلة. أنت مؤهل لاسترداد كامل خلال 14 يومًا من تاريخ الشراء.</div><div><br></div><div>بعد انتهاء هذه الفترة البالغة 14 يومًا، لن تكون مؤهلاً بعد ولن تتمكن من الحصول على استرداد. نحث عملائنا على تجربة المنتج (أو الخدمة) في الأسبوعين الأولين بعد عملية الشراء للتأكد من أنه يناسب احتياجاتك.</div><div><br></div><div>إذا كانت لديك أي أسئلة إضافية أو ترغب في طلب استرداد، فلا تتردد في الاتصال بنا.</div><div><br></div><div>**لماذا تحتاج إلى سياسة استرجاع؟**</div><div><br></div><div>لقد ذكرنا بالفعل أن سياسة الاسترجاع هي اتفاق قانوني. إذا كنت تدير عملًا تجاريًا عبر الإنترنت أو موقعًا للتجارة الإلكترونية، فإن الفرصة كبيرة أنك بالفعل لديك بعض السياسات المعروضة لزبائنك. Lorem ipsum dolor sit amet، consectetur adipiscing elit، sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Orci sagittis eu volutpat odio facilisis mauris sit amet massa. Egestas tellus rutrum tellus pellentesque eu. Id interdum velit laoreet id donec ultrices tincidunt. Faucibus turpis in eu mi bibendum neque egestas congue quisque.</div><div><div>**ما يجب تضمينه في سياسة الاسترجاع؟**</div><div><br></div><div>ليس لدى الناس عادةً قراءة وثائق قانونية طويلة ومملة عبر الإنترنت. من ناحية أخرى، يجب عليك توفير جميع المعلومات الضرورية.</div><div><br></div><div>لذلك يُفضل تقسيم سياسة الإرجاع/الاسترجاع إلى أقسام صغيرة. سيزيد ذلك من قابلية القراءة للوثيقة، ويجعل من السهل على العملاء العثور على ما يحتاجون إليه، وفي نفس الوقت، يحميك قانونيًا.</div><div><br></div><div>**إيجاد مرجع سريع:**</div><div>- قدم قسمًا صغيرًا يوفر نظرة عامة سريعة عن السياسة.</div><div>&nbsp;&nbsp;</div><div>**المدة الزمنية للاسترجاع:**</div><div>- حدد المدة الزمنية التي يحق للعملاء فيها طلب استرجاع.</div><div><br></div><div>**شروط الاسترجاع:**</div><div>- وضح الشروط والشروط التي يجب أن يلتزم بها العملاء لتقديم طلب استرجاع.</div><div><br></div><div>**كيفية تقديم الطلب:**</div><div>- أشرح الخطوات التي يجب اتخاذها لتقديم طلب استرجاع.</div><div><br></div><div>**رسوم الاسترجاع (إن وجدت):**</div><div>- إذا كان هناك رسوم تنطبق على عملية الاسترجاع، قدم توضيحًا حول هذه الرسوم.</div><div><br></div><div>**حالة المنتجات المسترجعة:**</div><div>- حدد ما إذا كانت هناك قيود أو شروط خاصة لحالة المنتجات المسترجعة.</div><div><br></div><div>**توفير التفاصيل الاتصال:**</div><div>- ضع معلومات الاتصال للعملاء الذين يرغبون في الحصول على مزيد من المساعدة أو تقديم طلب استرجاع.</div><div><br></div><div>**لماذا تحتاج إلى سياسة الاسترجاع؟**</div><div>- شرح لماذا هذه السياسة ضرورية وكيف تحمي الزبائن والشركة على حد سواء.</div></div></div>', '11122023085452-img-11.jpg', 'ar', 1, NULL, NULL, NULL, NULL, '2023-12-04 19:56:42', '2023-12-11 06:55:08'),
(79, 'المهنية', 'almhny', '<p>الهدف المهني في السيرة الذاتية أو السيرة الذاتية يعتبر ببساطة عبارة رئيسية تصف أهدافك المهنية في جملتين إلى ثلاث جمل. يميل أصحاب العمل البحث عن مرشحين متحفزين يفهمون بما فيه الكفاية ما يرغبون فيه. سواء كنت تبدأ أو كنت قد حددت وظيفة معينة تحلم بها، فإن تصميم هدف فعّال أمر ضروري للتألق. تصميم سيرة ذاتية تلفت انتباه الموظف هو أمر مهم. عرض جميع مهاراتك وتسليط الضوء على خبرات العمل والعثور على التوازن المثالي يمكن أن يبدو أمرًا مخيفًا. لذلك، سيساعدك الانخراط في جلسة إنشاء سيرة ذاتية مجانية من البداية على تنظيم العملية ومساعدتك في إنشاء سيرة ذاتية فعّالة. ستتعلم عملية خطوة بخطوة، الأشياء التي يجب القيام بها والتي لا يجب القيام بها، اللغة والتنسيق، وأمثلة حية للسيرة الذاتية.</p><p><br></p><p>ما هو أفضل قالب للسيرة الذاتية لوظيفة في مجال التجارة الإلكترونية؟</p><p>أفضل قالب للسيرة الذاتية في مجال التجارة الإلكترونية يوفر بشكل فعّال المعلومات التي يحتاجها أصحاب العمل لرؤيتها. ابحث عن قالب يحتوي على رأس لتقديم معلومات الاتصال ومساحة لهدف أو بيان ملخص بالإضافة إلى قوائم المهارات والخبرات المهنية والتعليم.</p><p><br></p><p>يحتوي قالب السيرة الذاتية للتجارة الإلكترونية الخاص بنا على كل هذه الأقسام بالإضافة إلى قسم إضافي مخصص للشهادات والانتماءات. استخدم هذا القالب مع أداة إنشاء السير الذاتية لدينا لإنشاء سيرة ذاتية في دقائق.</p><p><br></p><p>ما هو أفضل تنسيق للسيرة الذاتية: PDF، MS Word، أم txt؟</p><p>تحقق من إعلان الوظيفة أو الوصف لتحديد التنسيق الذي يفضله صاحب العمل لتقديم السيرة الذاتية. يمكن لملفات PDF وMS Word عرض التنسيق، وملفات النص العادية لا تستطيع ذلك. تتضمن عينة السيرة الذاتية في مجال التجارة الإلكترونية تنسيقات خفيفة مثل النص المعتمد، والخطوط الأفقية، ونقاط التعويض.</p><p><br></p><p>إذا كان صاحب العمل قد طلب منك تقديم السيرة الذاتية مع مستندات أخرى، فقد ترغب في النظر في ملف PDF متعدد الاستخدامات. Microsoft Word هو معالج النصوص الكامل المزود بمجموعة واسعة من خيارات التنسيق لبناء وتنقية مظهر موادك. يمكن أن يكون ملف النص مفيدًا لنسخ ولصق في نموذج على بوابة طلب الوظائف عبر الإنترنت.</p><p>**أفضل طريقة لتضمين المهارات الرقمية في سيرة ذاتية لمجال التجارة الإلكترونية؟**</p><p><br></p><p>تلعب المهارات الرقمية دورًا رئيسيًا في نجاح أي مرشح في مجال التجارة الإلكترونية. قدِّم تأكيدًا على المهارات المطلوبة في وصف الوظيفة التي تسعى للحصول عليها وحاول جعل سيرتك الذاتية تعكس أولويات صاحب العمل.</p><p><br></p><p>**كيف يمكنك فصل سيرتك الذاتية لمجال التجارة الإلكترونية عن سير ذاتية لباقي المرشحين؟**</p><p><br></p><p>تركز المرشحة في عينة سيرة الذات لمجال التجارة الإلكترونية لدينا على مجالات مثل تحسين محركات البحث (SEO)، والشبكات الاجتماعية، وكتابة المدونات في بيان الهدف الخاص بها، وتُظهر المزيد من الكفاءات التكنولوجية في قسم المهارات. إذا كانت كفاءة معينة ضرورية بشكل مطلق، قد ترغب في ذكرها في بيان الهدف أو قائمة المهارات. استشهد بالكفاءات ذات الصلة بالوظائف السابقة ضمن قسم المؤهلات أو الخبرات.</p><p><br></p><p>أحد أفضل الطرق لتمييز سيرتك الذاتية عن المنافسة على وظيفة في مجال التجارة الإلكترونية هو تخصيص تجربتك بشكل كامل للوظيفة التي تسعى للحصول عليها. استخدم المقاييس الفعّالة والملموسة لإثبات قدراتك بشكل قوي. اكتب بيان هدفك أو الملخص الخاص بك مع الوظيفة المستهدفة في اعتبارك.</p><p><br></p><p>**كيفية ذكر الجوائز في سيرة ذاتية لمجال التجارة الإلكترونية؟**</p><p><br></p><p>يمكنك الإشارة إلى الجوائز المعتبرة صناعيًا في بيان ملخصك أو في قسم مخصص للجوائز. إذا كانت هذه التكريمات تتعلق بالوظائف السابقة، فيمكنك ذكرها في الإدخال المقابل في قسم الخبرة المهنية. لا تذكر المرشحة في عينة سيرة الذات لمجال التجارة الإلكترونية الجوائز، ولكنها تضم قسمًا للشهادات والانتماءات يمكن أن يأتي في مكان الجوائز أو قبلها أو بعدها.</p>', '11122023081856-mirabusiness14.jpg', 'ar', 1, NULL, NULL, NULL, NULL, '2023-12-04 20:05:27', '2023-12-11 06:54:25'),
(80, 'خدماتنا', 'khdmatna', '<p><br></p>', '10122023084543-photo_6021453864940716607_x.jpg', 'ar', 1, NULL, NULL, NULL, NULL, '2023-12-10 06:46:04', '2023-12-10 06:46:04'),
(81, 'services', 'services', '<p><br></p>', '10122023084543-photo_6021453864940716607_x.jpg', 'en', 1, NULL, NULL, NULL, NULL, '2023-12-10 06:48:49', '2023-12-10 06:48:49'),
(82, 'المعرض', 'almaard', '<p><br></p>', '07122023100300-5V7A3955.jpg', 'ar', 1, NULL, NULL, NULL, NULL, '2023-12-10 06:49:40', '2023-12-10 06:49:40'),
(83, 'Gallery', 'gallery', '<p><br></p>', '07122023100300-5V7A3955.jpg', 'en', 1, NULL, NULL, NULL, NULL, '2023-12-10 06:51:07', '2023-12-10 06:51:07');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_method`
--

CREATE TABLE `payment_method` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `method_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_method`
--

INSERT INTO `payment_method` (`id`, `method_name`, `created_at`, `updated_at`) VALUES
(1, 'Cash On', '2021-10-03 17:07:16', '2021-10-03 17:07:18'),
(2, 'Bank Transfer', '2021-10-03 17:09:11', '2021-10-03 17:09:13'),
(3, 'Stripe', '2021-10-03 17:09:54', '2021-10-03 17:09:56'),
(4, 'Paypal', '2022-05-20 09:33:54', '2022-05-20 09:33:54'),
(5, 'Razorpay', '2022-05-20 09:33:54', '2022-05-20 09:33:54'),
(6, 'Mollie', '2022-05-20 09:33:54', '2022-05-20 09:33:54');

-- --------------------------------------------------------

--
-- Table structure for table `payment_status`
--

CREATE TABLE `payment_status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pstatus_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_status`
--

INSERT INTO `payment_status` (`id`, `pstatus_name`, `created_at`, `updated_at`) VALUES
(1, 'Completed', '2021-10-03 16:52:47', '2021-10-03 16:52:50'),
(2, 'Pending', '2021-10-03 16:53:12', '2021-10-03 16:53:14'),
(3, 'Canceled', '2021-10-03 16:53:33', '2021-10-03 16:53:34'),
(4, 'Incompleted', '2021-10-03 16:53:57', '2021-10-03 16:54:00');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `comments` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `slug` varchar(191) NOT NULL,
  `thumbnail` text DEFAULT NULL,
  `cover_img` text DEFAULT NULL,
  `short_desc` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `total_adult` int(11) DEFAULT NULL,
  `total_child` int(11) DEFAULT NULL,
  `price` double(12,3) DEFAULT NULL,
  `old_price` double(12,3) DEFAULT NULL,
  `amenities` varchar(150) DEFAULT NULL,
  `complements` varchar(150) DEFAULT NULL,
  `beds` varchar(100) DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `tax_id` int(11) DEFAULT NULL,
  `is_discount` int(11) DEFAULT NULL,
  `is_featured` int(11) DEFAULT NULL,
  `is_publish` int(11) DEFAULT NULL,
  `lan` varchar(100) DEFAULT NULL,
  `og_title` text DEFAULT NULL,
  `og_image` text DEFAULT NULL,
  `og_description` text DEFAULT NULL,
  `og_keywords` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `title`, `slug`, `thumbnail`, `cover_img`, `short_desc`, `description`, `total_adult`, `total_child`, `price`, `old_price`, `amenities`, `complements`, `beds`, `cat_id`, `tax_id`, `is_discount`, `is_featured`, `is_publish`, `lan`, `og_title`, `og_image`, `og_description`, `og_keywords`, `created_at`, `updated_at`) VALUES
(1, 'Executive Suite', 'executive-suite', '07122023092318-900x700-5V7A4085.jpg', '05012023064431-breadcrumb-bg-1.jpg', NULL, '<p>A single room has one single bed for single occupancy. An additional bed (called an extra bed) may be added to this room at a guests request and charged accordingly.<br><br>The size of the bed is normally 3 feet by 6 feet. However, the concept of single rooms is vanishing nowadays. Mostly, hotels have twin or double rooms, and the charge for a single room is occupied by one person.</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Harum ratione dolorem dolor nostrum dolorum necessitatibus a inventore fugit, quis ab sit suscipit laborum eligendi eaque! Porro in deleniti ad sed corporis consequuntur quos, numquam totam alias vero neque eum aliquam reprehenderit obcaecati accusamus ex atque omnis quidem rem distinctio veniam architecto, repellendus exercitationem commodi? Optio, iste tempora amet excepturi laborum ipsam perspiciatis asperiores nihil voluptates quidem id doloremque libero. Temporibus incidunt omnis ipsum labore debitis animi quod eum, earum officiis ipsa molestiae quasi, est veniam quam ducimus. Repudiandae est facilis veritatis praesentium magnam error nihil, modi accusantium sequi, illo porro.<br></p>', 2, 1, 100.000, NULL, '2|7|3|6|5|1', '5|2|3', '1|2', 1, 38, NULL, 0, 1, 'en', 'Executive Suite', '06012023120550-900x700-1-room.jpg', 'A single room has one single bed for single occupancy. An additional bed (called an extra bed) may be added to this room at a guests request and charged accordingly.', 'Single Room, Booking, Hotel Booking, Rooms, Room Booking, Room Book, Hotel Near By Me, Resurrect, Resort', '2023-01-05 04:15:56', '2023-12-07 07:34:38'),
(10, 'Royal Club Suite', 'royal-club-suite', '07122023092209-900x700-5V7A4092.jpg', '05012023064453-breadcrumb-bg-2.jpg', NULL, '<p>A twin room has two single beds for double occupancy. An extra bed may be added to this room at a guests request and charged accordingly. Here the bed size is normally 3 feet by 6 feet. These rooms are suitable for sharing accommodation among a group of delegates meeting.</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Harum ratione dolorem dolor nostrum dolorum necessitatibus a inventore fugit, quis ab sit suscipit laborum eligendi eaque! Porro in deleniti ad sed corporis consequuntur quos, numquam totam alias vero neque eum aliquam reprehenderit obcaecati accusamus ex atque omnis quidem rem distinctio veniam architecto, repellendus exercitationem commodi? Optio, iste tempora amet excepturi laborum ipsam perspiciatis asperiores nihil voluptates quidem id doloremque libero. Temporibus incidunt omnis ipsum labore debitis animi quod eum, earum officiis ipsa molestiae quasi, est veniam quam ducimus. Repudiandae est facilis veritatis praesentium magnam error nihil, modi accusantium sequi, illo porro.<br></p><p><br></p>', 2, 1, 400.000, NULL, '2|7|3|4|6|5|1', '1|5|4|2|3', '1|2', 1, 38, NULL, 1, 1, 'en', 'Royal Club Suite', '06012023120553-900x700-2-room.jpg', 'A twin room has two single beds for double occupancy. An extra bed may be added to this room at a guests request and charged accordingly. Here the bed size is normally 3 feet by 6 feet. These rooms are suitable for sharing accommodation among a group of delegates meeting.', 'Twin Room, Booking, Hotel Booking, Rooms, Room Booking, Room Book, Hotel Near By Me, Resurrect, Resort', '2023-01-06 06:38:55', '2023-12-07 07:38:23'),
(11, 'Honeymoon Suite', 'honeymoon-suite', '07122023092302-900x700-5V7A4061.jpg', '05012023064459-breadcrumb-bg-3.jpg', NULL, '<p>A double room has one double bed for double occupancy. An extra bed may be added to this room at a guest\'s request and charged accordingly. The size of the double bed is generally 4.5 feet by 6 feet.<br></p>', 2, 1, 1000.000, 1200.000, '2|7|3|4|6|5|1', '1|5|4|2|3', '1|2', 1, 38, 1, 1, 1, 'en', 'Honeymoon Suite', '06012023120557-900x700-3-room.jpg', 'A double room has one double bed for double occupancy. An extra bed may be added to this room at a guest\'s request and charged accordingly. The size of the double bed is generally 4.5 feet by 6 feet.', 'Double Room, Booking, Hotel Booking, Rooms, Room Booking, Room Book, Hotel Near By Me, Resurrect, Resort', '2023-01-06 07:03:44', '2023-12-07 07:33:51'),
(12, 'Deluxe Family Suite', 'deluxe-family-suite', '07122023092341-900x700-5V7A4126.jpg', '05012023064503-breadcrumb-bg-4.jpg', NULL, '<p>A triple room has three separate single beds and can be occupied by three guests. This type of room is suitable for groups and delegates of meetings and conferences.<br>Lorem ipsum dolor sit amet consectetur adipisicing elit. Harum ratione dolorem dolor nostrum dolorum necessitatibus a inventore fugit, quis ab sit suscipit laborum eligendi eaque! Porro in deleniti ad sed corporis consequuntur quos, numquam totam alias vero neque eum aliquam reprehenderit obcaecati accusamus ex atque omnis quidem rem distinctio veniam architecto, repellendus exercitationem commodi? Optio, iste tempora amet excepturi laborum ipsam perspiciatis asperiores nihil voluptates quidem id doloremque libero. Temporibus incidunt omnis ipsum labore debitis animi quod eum, earum officiis ipsa molestiae quasi, est veniam quam ducimus. Repudiandae est facilis veritatis praesentium magnam error nihil, modi accusantium sequi, illo porro.<br></p>', 2, 1, 1150.000, 1500.000, '2|7|3|4|6|5|1', '1|5|4|2|3', '1', 1, 38, 1, 1, 1, 'en', 'Deluxe Family Suite', '06012023120600-900x700-4-room.jpg', 'A triple room has three separate single beds and can be occupied by three guests. This type of room is suitable for groups and delegates of meetings and conferences.', 'Triple Room, Booking, Hotel Booking, Rooms, Room Booking, Room Book, Hotel Near By Me, Resurrect, Resort', '2023-01-06 07:11:16', '2023-12-07 07:33:09'),
(17, 'Standard Room King/Twin', 'economy-room', '07122023092139-900x700-5V7A4051.jpg', '10122023114636-5V7A4017.jpg', NULL, '<p>Interconnecting rooms have a common wall and a door that connects the two rooms. This allows guests to access any of the two rooms without passing through a public area. This type of hotel room is ideal for families and crew members in a 5-star hotel.</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Harum ratione dolorem dolor nostrum dolorum necessitatibus a inventore fugit, quis ab sit suscipit laborum eligendi eaque! Porro in deleniti ad sed corporis consequuntur quos, numquam totam alias vero neque eum aliquam reprehenderit obcaecati accusamus ex atque omnis quidem rem distinctio veniam architecto, repellendus exercitationem commodi? Optio, iste tempora amet excepturi laborum ipsam perspiciatis asperiores nihil voluptates quidem id doloremque libero. Temporibus incidunt omnis ipsum labore debitis animi quod eum, earum officiis ipsa molestiae quasi, est veniam quam ducimus. Repudiandae est facilis veritatis praesentium magnam error nihil, modi accusantium sequi, illo porro.<br></p>', 3, 2, 1000.000, 1400.000, '2|3|4|6|5|1', '5|4|2|3', '1|2', 1, 38, 1, 1, 1, 'en', 'Economy Room', '09012023045908-900x700-11-room.jpg', 'Interconnecting rooms have a common wall and a door that connects the two rooms. This allows guests to access any of the two rooms without passing through a public area. This type of hotel room is ideal for families and crew members in a 5-star hotel.\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Harum ratione dolorem dolor nostrum dolorum necessitatibus a inventore fugit, quis ab sit suscipit laborum eligendi eaque! Porro in deleniti ad sed corporis consequuntur quos, numquam totam alias vero neque eum aliquam reprehenderit obcaecati accusamus ex atque omnis quidem rem distinctio veniam architecto, repellendus exercitationem commodi? Optio, iste tempora amet excepturi laborum ipsam perspiciatis asperiores nihil voluptates quidem id doloremque libero. Temporibus incidunt omnis ipsum labore debitis animi quod eum, earum officiis ipsa molestiae quasi, est veniam quam ducimus. Repudiandae est facilis veritatis praesentium magnam error nihil, modi accusantium sequi, illo porro.', 'Booking, Hotel Booking, Rooms, Room Booking, Room Book, Hotel Near By Me, Resurrect, Resort', '2023-01-08 23:35:06', '2023-12-10 09:48:19'),
(18, 'Standard Room King/Twin', 'superior-room', '07122023092244-900x700-5V7A4042.jpg', '05012023064507-breadcrumb-bg-5.jpg', NULL, '<p>A Cabana is situated away from the main hotel building, in the \r\nvicinity of a swimming pool or sea beach. It may or may not have beds \r\nand is generally used as a changing room, not a bedroom.</p><p>Lorem \r\nipsum dolor sit amet consectetur adipisicing elit. Harum ratione dolorem\r\n dolor nostrum dolorum necessitatibus a inventore fugit, quis ab sit \r\nsuscipit laborum eligendi eaque! Porro in deleniti ad sed corporis \r\nconsequuntur quos, numquam totam alias vero neque eum aliquam \r\nreprehenderit obcaecati accusamus ex atque omnis quidem rem distinctio \r\nveniam architecto, repellendus exercitationem commodi? Optio, iste \r\ntempora amet excepturi laborum ipsam perspiciatis asperiores nihil \r\nvoluptates quidem id doloremque libero. Temporibus incidunt omnis ipsum \r\nlabore debitis animi quod eum, earum officiis ipsa molestiae quasi, est \r\nveniam quam ducimus. Repudiandae est facilis veritatis praesentium \r\nmagnam error nihil, modi accusantium sequi, illo porro.</p><p></p>', 2, 0, 650.000, 400.000, '2|7|3|4|6|5|1', '1|5|4|2', '1', 1, 38, 1, 1, 1, 'en', 'Superior Room', '09012023045912-900x700-12-room.jpg', 'A Cabana is situated away from the main hotel building, in the vicinity of a swimming pool or sea beach. It may or may not have beds and is generally used as a changing room, not a bedroom.\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Harum ratione dolorem dolor nostrum dolorum necessitatibus a inventore fugit, quis ab sit suscipit laborum eligendi eaque! Porro in deleniti ad sed corporis consequuntur quos, numquam totam alias vero neque eum aliquam reprehenderit obcaecati accusamus ex atque omnis quidem rem distinctio veniam architecto, repellendus exercitationem commodi? Optio, iste tempora amet excepturi laborum ipsam perspiciatis asperiores nihil voluptates quidem id doloremque libero. Temporibus incidunt omnis ipsum labore debitis animi quod eum, earum officiis ipsa molestiae quasi, est veniam quam ducimus. Repudiandae est facilis veritatis praesentium magnam error nihil, modi accusantium sequi, illo porro.', 'Booking, Hotel Booking, Rooms, Room Booking, Room Book, Hotel Near By Me, Resurrect, Resort', '2023-01-08 23:44:50', '2023-12-18 09:00:45'),
(19, 'Standard Room King/Twin', 'balcony-executive-room', '11122023002934-900x700-mirabusiness9.JPG', '10122023115044-5V7A4129.jpg', NULL, '<p>A Lanai has a veranda or roofed patio and is often furnished and used as a living room. It generally has a view of a garden or sea beach.</p><p>Lorem \r\nipsum dolor sit amet consectetur adipisicing elit. Harum ratione dolorem\r\n dolor nostrum dolorum necessitatibus a inventore fugit, quis ab sit \r\nsuscipit laborum eligendi eaque! Porro in deleniti ad sed corporis \r\nconsequuntur quos, numquam totam alias vero neque eum aliquam \r\nreprehenderit obcaecati accusamus ex atque omnis quidem rem distinctio \r\nveniam architecto, repellendus exercitationem commodi? Optio, iste \r\ntempora amet excepturi laborum ipsam perspiciatis asperiores nihil \r\nvoluptates quidem id doloremque libero. Temporibus incidunt omnis ipsum \r\nlabore debitis animi quod eum, earum officiis ipsa molestiae quasi, est \r\nveniam quam ducimus. Repudiandae est facilis veritatis praesentium \r\nmagnam error nihil, modi accusantium sequi, illo porro.</p><p></p>', 1, 0, 650.000, NULL, '2|7|3|4|6|5|1', '1|5|4|2|3', '2', 1, 38, NULL, 1, 1, 'en', 'Balcony Executive Room', '09012023045935-900x700-18-room.jpg', 'A Lanai has a veranda or roofed patio and is often furnished and used as a living room. It generally has a view of a garden or sea beach.\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Harum ratione dolorem dolor nostrum dolorum necessitatibus a inventore fugit, quis ab sit suscipit laborum eligendi eaque! Porro in deleniti ad sed corporis consequuntur quos, numquam totam alias vero neque eum aliquam reprehenderit obcaecati accusamus ex atque omnis quidem rem distinctio veniam architecto, repellendus exercitationem commodi? Optio, iste tempora amet excepturi laborum ipsam perspiciatis asperiores nihil voluptates quidem id doloremque libero. Temporibus incidunt omnis ipsum labore debitis animi quod eum, earum officiis ipsa molestiae quasi, est veniam quam ducimus. Repudiandae est facilis veritatis praesentium magnam error nihil, modi accusantium sequi, illo porro.', 'Booking, Hotel Booking, Rooms, Room Booking, Room Book, Hotel Near By Me, Resurrect, Resort', '2023-01-09 00:04:37', '2023-12-18 08:58:44'),
(20, 'Standard Room King/Twin', 'executive-premium-suite', '11122023002651-900x700-mirabusiness11.JPG', '10122023112345-5V7A4116.jpg', NULL, '<p>A penthouse room is generally located on the topmost floor of hotels and has an attached open terrace or open sky space. It has very opulent decor and furnishings and is among the costliest rooms in the hotels, preferred by celebrities and major political personalities.<br></p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Harum ratione dolorem dolor nostrum dolorum necessitatibus a inventore fugit, quis ab sit suscipit laborum eligendi eaque! Porro in deleniti ad sed corporis consequuntur quos, numquam totam alias vero neque eum aliquam reprehenderit obcaecati accusamus ex atque omnis quidem rem distinctio veniam architecto, repellendus exercitationem commodi? Optio, iste tempora amet excepturi laborum ipsam perspiciatis asperiores nihil voluptates quidem id doloremque libero. Temporibus incidunt omnis ipsum labore debitis animi quod eum, earum officiis ipsa molestiae quasi, est veniam quam ducimus. Repudiandae est facilis veritatis praesentium magnam error nihil, modi accusantium sequi, illo porro.<br></p>', 2, 1, 650.000, 3000.000, '2|7|3|4|6|5|1', '1|5|4|2|3', '1', 1, 38, 1, 1, 1, 'en', 'Executive Premium Suite', '09012023045859-900x700-9-room.jpg', 'A penthouse room is generally located on the topmost floor of hotels and has an attached open terrace or open sky space. It has very opulent decor and furnishings and is among the costliest rooms in the hotels, preferred by celebrities and major political personalities.\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Harum ratione dolorem dolor nostrum dolorum necessitatibus a inventore fugit, quis ab sit suscipit laborum eligendi eaque! Porro in deleniti ad sed corporis consequuntur quos, numquam totam alias vero neque eum aliquam reprehenderit obcaecati accusamus ex atque omnis quidem rem distinctio veniam architecto, repellendus exercitationem commodi? Optio, iste tempora amet excepturi laborum ipsam perspiciatis asperiores nihil voluptates quidem id doloremque libero. Temporibus incidunt omnis ipsum labore debitis animi quod eum, earum officiis ipsa molestiae quasi, est veniam quam ducimus. Repudiandae est facilis veritatis praesentium magnam error nihil, modi accusantium sequi, illo porro.', 'Booking, Hotel Booking, Rooms, Room Booking, Room Book, Hotel Near By Me, Resurrect, Resort', '2023-01-09 00:16:56', '2023-12-18 08:58:51'),
(21, 'Family Suite', 'couple-premium-room', '07122023092302-900x700-5V7A4061.jpg', '10122023113211-5V7A4057.jpg', NULL, '<p>A hospitality room is designed for hotel guests who would want to entertain their own guests outside their allotted rooms. Such rooms are generally charged on an hourly basis.</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Harum ratione dolorem dolor nostrum dolorum necessitatibus a inventore fugit, quis ab sit suscipit laborum eligendi eaque! Porro in deleniti ad sed corporis consequuntur quos, numquam totam alias vero neque eum aliquam reprehenderit obcaecati accusamus ex atque omnis quidem rem distinctio veniam architecto, repellendus exercitationem commodi? Optio, iste tempora amet excepturi laborum ipsam perspiciatis asperiores nihil voluptates quidem id doloremque libero. Temporibus incidunt omnis ipsum labore debitis animi quod eum, earum officiis ipsa molestiae quasi, est veniam quam ducimus. Repudiandae est facilis veritatis praesentium magnam error nihil, modi accusantium sequi, illo porro.<br></p>', 2, 1, 720.000, NULL, '2|7|3|4|6|5|1', '5|4|2|3', '2', 1, 38, NULL, 1, 1, 'en', 'Couple Premium Room', '09012023045912-900x700-12-room.jpg', 'A hospitality room is designed for hotel guests who would want to entertain their own guests outside their allotted rooms. Such rooms are generally charged on an hourly basis.\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Harum ratione dolorem dolor nostrum dolorum necessitatibus a inventore fugit, quis ab sit suscipit laborum eligendi eaque! Porro in deleniti ad sed corporis consequuntur quos, numquam totam alias vero neque eum aliquam reprehenderit obcaecati accusamus ex atque omnis quidem rem distinctio veniam architecto, repellendus exercitationem commodi? Optio, iste tempora amet excepturi laborum ipsam perspiciatis asperiores nihil voluptates quidem id doloremque libero. Temporibus incidunt omnis ipsum labore debitis animi quod eum, earum officiis ipsa molestiae quasi, est veniam quam ducimus. Repudiandae est facilis veritatis praesentium magnam error nihil, modi accusantium sequi, illo porro.', 'Booking, Hotel Booking, Rooms, Room Booking, Room Book, Hotel Near By Me, Resurrect, Resort', '2023-01-09 00:27:29', '2023-12-10 09:34:54'),
(22, 'Junior Suite', 'superior-premium-room', '07122023092341-900x700-5V7A4126.jpg', '10122023112345-5V7A4116.jpg', NULL, '<p>An efficiency room has an attached kitchenette for guests preferring a longer duration of stay. Generally, this type of hotel room is found in holiday and health resorts where guests stay for a longer period of time.</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Harum ratione dolorem dolor nostrum dolorum necessitatibus a inventore fugit, quis ab sit suscipit laborum eligendi eaque! Porro in deleniti ad sed corporis consequuntur quos, numquam totam alias vero neque eum aliquam reprehenderit obcaecati accusamus ex atque omnis quidem rem distinctio veniam architecto, repellendus exercitationem commodi? Optio, iste tempora amet excepturi laborum ipsam perspiciatis asperiores nihil voluptates quidem id doloremque libero. Temporibus incidunt omnis ipsum labore debitis animi quod eum, earum officiis ipsa molestiae quasi, est veniam quam ducimus. Repudiandae est facilis veritatis praesentium magnam error nihil, modi accusantium sequi, illo porro.<br></p>', 1, 0, 750.000, 1500.000, '2|7|3|4|6|5|1', '1|5|4|2|3', '1|2', 1, 38, 1, 1, 1, 'en', 'Superior Premium Room', '06012023120553-900x700-2-room.jpg', 'An efficiency room has an attached kitchenette for guests preferring a longer duration of stay. Generally, this type of hotel room is found in holiday and health resorts where guests stay for a longer period of time.\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Harum ratione dolorem dolor nostrum dolorum necessitatibus a inventore fugit, quis ab sit suscipit laborum eligendi eaque! Porro in deleniti ad sed corporis consequuntur quos, numquam totam alias vero neque eum aliquam reprehenderit obcaecati accusamus ex atque omnis quidem rem distinctio veniam architecto, repellendus exercitationem commodi? Optio, iste tempora amet excepturi laborum ipsam perspiciatis asperiores nihil voluptates quidem id doloremque libero. Temporibus incidunt omnis ipsum labore debitis animi quod eum, earum officiis ipsa molestiae quasi, est veniam quam ducimus. Repudiandae est facilis veritatis praesentium magnam error nihil, modi accusantium sequi, illo porro.', 'Booking, Hotel Booking, Rooms, Room Booking, Room Book, Hotel Near By Me, Resurrect, Resort', '2023-01-09 00:42:50', '2023-12-18 08:56:43'),
(23, 'Twin Premium Room', 'twin-premium-room', '07122023092116-900x700-photo_6021453864940716626_m (1).jpg', '05012023064453-breadcrumb-bg-2.jpg', NULL, '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Harum ratione dolorem dolor nostrum dolorum necessitatibus a inventore fugit, quis ab sit suscipit laborum eligendi eaque! Porro in deleniti ad sed corporis consequuntur quos, numquam totam alias vero neque eum aliquam reprehenderit obcaecati accusamus ex atque omnis quidem rem distinctio veniam architecto, repellendus exercitationem commodi? <br></p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Harum ratione dolorem dolor nostrum dolorum necessitatibus a inventore fugit, quis ab sit suscipit laborum eligendi eaque! Porro in deleniti ad sed corporis consequuntur quos, numquam totam alias vero neque eum aliquam reprehenderit obcaecati accusamus ex atque omnis quidem rem distinctio veniam architecto, repellendus exercitationem commodi? Optio, iste tempora amet excepturi laborum ipsam perspiciatis asperiores nihil voluptates quidem id doloremque libero. Temporibus incidunt omnis ipsum labore debitis animi quod eum, earum officiis ipsa molestiae quasi, est veniam quam ducimus. Repudiandae est facilis veritatis praesentium magnam error nihil, modi accusantium sequi, illo porro.<br></p>', 2, 0, 400.000, NULL, '2|7|3|4|6|5|1', '1|5|4|2', '1', 1, 38, NULL, 1, 1, 'en', 'Twin Premium Room', '06012023135205-900x700-about-4.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Harum ratione dolorem dolor nostrum dolorum necessitatibus a inventore fugit, quis ab sit suscipit laborum eligendi eaque! Porro in deleniti ad sed corporis consequuntur quos, numquam totam alias vero neque eum aliquam reprehenderit obcaecati accusamus ex atque omnis quidem rem distinctio veniam architecto, repellendus exercitationem commodi? Optio, iste tempora amet excepturi laborum ipsam perspiciatis asperiores nihil voluptates quidem id doloremque libero. Temporibus incidunt omnis ipsum labore debitis animi quod eum, earum officiis ipsa molestiae quasi, est veniam quam ducimus. Repudiandae est facilis veritatis praesentium magnam error nihil, modi accusantium sequi, illo porro.', 'Booking, Hotel Booking, Rooms, Room Booking, Room Book, Hotel Near By Me, Resurrect, Resort', '2023-01-09 00:54:54', '2023-12-07 07:26:38'),
(24, 'Panorama Suite', 'deluxe-double-room', '07122023092318-900x700-5V7A4085.jpg', '10122023114045-5V7A4086.jpg', NULL, '<p>A Suite room is comprised of more than one room. Occasionally, it can also be a single large room with clearly defined sleeping and sitting areas. The decor of such units is of very high standards, aimed to please the affluent guest who can afford the high tariffs of the room category.</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Harum ratione dolorem dolor nostrum dolorum necessitatibus a inventore fugit, quis ab sit suscipit laborum eligendi eaque! Porro in deleniti ad sed corporis consequuntur quos, numquam totam alias vero neque eum aliquam reprehenderit obcaecati accusamus ex atque omnis quidem rem distinctio veniam architecto, repellendus exercitationem commodi? Optio, iste tempora amet excepturi laborum ipsam perspiciatis asperiores nihil voluptates quidem id doloremque libero. Temporibus incidunt omnis ipsum labore debitis animi quod eum, earum officiis ipsa molestiae quasi, est veniam quam ducimus. Repudiandae est facilis veritatis praesentium magnam error nihil, modi accusantium sequi, illo porro.<br></p>', 2, 1, 1300.000, 1000.000, '2|7|3|4|6|5|1', '1|5|4|2|3', '1', 1, 38, 1, 1, 1, 'en', 'Deluxe Double Room', '09012023045943-900x700-20-room.jpg', 'A Suite room is comprised of more than one room. Occasionally, it can also be a single large room with clearly defined sleeping and sitting areas. The decor of such units is of very high standards, aimed to please the affluent guest who can afford the high tariffs of the room category.\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Harum ratione dolorem dolor nostrum dolorum necessitatibus a inventore fugit, quis ab sit suscipit laborum eligendi eaque! Porro in deleniti ad sed corporis consequuntur quos, numquam totam alias vero neque eum aliquam reprehenderit obcaecati accusamus ex atque omnis quidem rem distinctio veniam architecto, repellendus exercitationem commodi? Optio, iste tempora amet excepturi laborum ipsam perspiciatis asperiores nihil voluptates quidem id doloremque libero. Temporibus incidunt omnis ipsum labore debitis animi quod eum, earum officiis ipsa molestiae quasi, est veniam quam ducimus. Repudiandae est facilis veritatis praesentium magnam error nihil, modi accusantium sequi, illo porro.', 'Booking, Hotel Booking, Rooms, Room Booking, Room Book, Hotel Near By Me, Resurrect, Resort', '2023-01-09 01:57:27', '2023-12-18 08:48:03'),
(25, 'Deluxe Single Room', 'deluxe-single-room', '07122023092353-900x700-5V7A4107.jpg', '05012023064527-breadcrumb-bg-10.jpg', NULL, '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Harum ratione dolorem dolor nostrum dolorum necessitatibus a inventore fugit, quis ab sit suscipit laborum eligendi eaque! Porro in deleniti ad sed corporis consequuntur quos, numquam totam alias vero neque eum aliquam reprehenderit obcaecati accusamus ex atque omnis quidem rem distinctio veniam architecto, repellendus exercitationem commodi? Optio, iste tempora amet excepturi laborum ipsam perspiciatis asperiores nihil voluptates quidem id doloremque libero. Temporibus incidunt omnis ipsum labore debitis animi quod eum, earum officiis ipsa molestiae quasi, est veniam quam ducimus. Repudiandae est facilis veritatis praesentium magnam error nihil, modi accusantium sequi, illo porro.<br></p>', 2, 0, 950.000, NULL, '2|7|3|4|6|5|1', '1|5|4|2', '1', 1, 38, NULL, 1, 1, 'en', 'Deluxe Single Room', '06012023120606-900x700-6-room.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Harum ratione dolorem dolor nostrum dolorum necessitatibus a inventore fugit, quis ab sit suscipit laborum eligendi eaque! Porro in deleniti ad sed corporis consequuntur quos, numquam totam alias vero neque eum aliquam reprehenderit obcaecati accusamus ex atque omnis quidem rem distinctio veniam architecto, repellendus exercitationem commodi? Optio, iste tempora amet excepturi laborum ipsam perspiciatis asperiores nihil voluptates quidem id doloremque libero. Temporibus incidunt omnis ipsum labore debitis animi quod eum, earum officiis ipsa molestiae quasi, est veniam quam ducimus. Repudiandae est facilis veritatis praesentium magnam error nihil, modi accusantium sequi, illo porro.', 'Booking, Hotel Booking, Rooms, Room Booking, Room Book, Hotel Near By Me, Resurrect, Resort', '2023-01-09 02:08:39', '2023-12-18 08:44:30'),
(43, 'Junior Suite', 'luxury-suite', '07122023092341-900x700-5V7A4126.jpg', '10122023115044-5V7A4129.jpg', NULL, '<p>A Hollywood twin room has two single beds with a common headboard. This hotel room type is generally occupied by two guests.</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Harum ratione dolorem dolor nostrum dolorum necessitatibus a inventore fugit, quis ab sit suscipit laborum eligendi eaque! Porro in deleniti ad sed corporis consequuntur quos, numquam totam alias vero neque eum aliquam reprehenderit obcaecati accusamus ex atque omnis quidem rem distinctio veniam architecto, repellendus exercitationem commodi? Optio, iste tempora amet excepturi laborum ipsam perspiciatis asperiores nihil voluptates quidem id doloremque libero. Temporibus incidunt omnis ipsum labore debitis animi quod eum, earum officiis ipsa molestiae quasi, est veniam quam ducimus. Repudiandae est facilis veritatis praesentium magnam error nihil, modi accusantium sequi, illo porro.<br></p>', 2, 1, 750.000, NULL, '2|7|3|4|6|5|1', '1|5|4|2|3', '1|2', 1, 38, 0, 1, 1, 'en', 'Luxury Suite', '10012023084507-900x700-Rectangle 5.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Harum ratione dolorem dolor nostrum dolorum necessitatibus a inventore fugit, quis ab sit suscipit laborum eligendi eaque! Porro in deleniti ad sed corporis consequuntur quos, numquam totam alias vero neque eum aliquam reprehenderit obcaecati accusamus ex atque omnis quidem rem distinctio veniam architecto, repellendus exercitationem commodi? Optio, iste tempora amet excepturi laborum ipsam perspiciatis asperiores nihil voluptates quidem id doloremque libero. Temporibus incidunt omnis ipsum labore debitis animi quod eum, earum officiis ipsa molestiae quasi, est veniam quam ducimus. Repudiandae est facilis veritatis praesentium magnam error nihil, modi accusantium sequi, illo porro.', 'Booking, Hotel Booking, Rooms, Room Booking, Room Book, Hotel Near By Me, Resurrect, Resort', '2023-01-10 03:39:32', '2023-12-18 08:55:46'),
(52, 'غرفة عادية بسرير كبير/توأم', 'ghrf-aaady-bsryr-kbyrtoam', '07122023092244-900x700-5V7A4042.jpg', '07122023092353-5V7A4107.jpg', NULL, NULL, 2, 2, 406.000, NULL, NULL, NULL, NULL, 9, 38, NULL, 1, 1, 'ar', NULL, NULL, NULL, NULL, '2023-12-10 09:10:49', '2023-12-10 09:15:24'),
(53, 'جناح صغير', 'junior-suite', '07122023092341-900x700-5V7A4126.jpg', '10122023112345-5V7A4116.jpg', NULL, NULL, 1, 0, 750.000, NULL, NULL, NULL, NULL, 9, 38, NULL, 1, 1, 'ar', NULL, NULL, NULL, NULL, '2023-12-10 09:19:47', '2023-12-18 08:57:40'),
(54, 'جناح عائلي', 'gnah-aaayly', '10122023113122-900x700-5V7A4061.jpg', '10122023113211-5V7A4057.jpg', NULL, NULL, 2, 3, 1500.000, NULL, NULL, NULL, NULL, 9, 38, NULL, 1, 1, 'ar', NULL, NULL, NULL, NULL, '2023-12-10 09:29:00', '2023-12-18 08:50:58'),
(55, 'جناح بانورامي', 'gnah-banoramy', '10122023114017-900x700-5V7A4085.jpg', '10122023114045-5V7A4086.jpg', NULL, NULL, 2, 2, 1300.000, NULL, NULL, NULL, NULL, 9, 38, NULL, 1, 1, 'ar', NULL, NULL, NULL, NULL, '2023-12-10 09:39:39', '2023-12-18 08:50:10'),
(56, 'غرفة عادية بسرير كبير/توأم', 'ghrf-aaady-bsryr-kbyrtoam-2', '10122023114612-900x700-5V7A4051.jpg', '10122023114636-5V7A4017.jpg', NULL, NULL, 2, 2, 500.000, NULL, NULL, NULL, NULL, 9, 38, NULL, 1, 1, 'ar', NULL, NULL, NULL, NULL, '2023-12-10 09:45:08', '2023-12-10 09:47:06'),
(57, 'جناح صغير', 'gnah-sghyr', '07122023092341-900x700-5V7A4126.jpg', '10122023115044-5V7A4129.jpg', NULL, NULL, 1, 1, 750.000, NULL, NULL, NULL, NULL, 9, 38, NULL, 1, 1, 'ar', NULL, NULL, NULL, NULL, '2023-12-10 09:49:08', '2023-12-18 08:42:43');

-- --------------------------------------------------------

--
-- Table structure for table `room_assigns`
--

CREATE TABLE `room_assigns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `booking_id` int(11) DEFAULT NULL,
  `room_id` int(11) DEFAULT NULL,
  `roomtype_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `room_images`
--

CREATE TABLE `room_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `room_id` int(11) DEFAULT NULL,
  `thumbnail` text DEFAULT NULL,
  `large_image` text DEFAULT NULL,
  `desc` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `room_images`
--

INSERT INTO `room_images` (`id`, `room_id`, `thumbnail`, `large_image`, `desc`, `created_at`, `updated_at`) VALUES
(13, 1, '06012023120553-900x700-2-room.jpg', '06012023120553-2-room.jpg', NULL, '2023-01-06 06:34:23', '2023-01-06 06:34:23'),
(14, 1, '06012023120557-900x700-3-room.jpg', '06012023120557-3-room.jpg', NULL, '2023-01-06 06:34:31', '2023-01-06 06:34:31'),
(16, 1, '06012023120600-900x700-4-room.jpg', '06012023120600-4-room.jpg', NULL, '2023-01-06 06:34:50', '2023-01-06 06:34:50'),
(17, 1, '06012023120603-900x700-5-room.jpg', '06012023120603-5-room.jpg', NULL, '2023-01-06 06:34:56', '2023-01-06 06:34:56'),
(18, 1, '06012023120606-900x700-6-room.jpg', '06012023120606-6-room.jpg', NULL, '2023-01-06 06:35:04', '2023-01-06 06:35:04'),
(19, 10, '06012023120550-900x700-1-room.jpg', '06012023120550-1-room.jpg', NULL, '2023-01-06 06:55:36', '2023-01-06 06:55:36'),
(20, 10, '06012023120557-900x700-3-room.jpg', '06012023120557-3-room.jpg', NULL, '2023-01-06 06:55:50', '2023-01-06 06:55:50'),
(21, 10, '06012023120600-900x700-4-room.jpg', '06012023120600-4-room.jpg', NULL, '2023-01-06 06:55:56', '2023-01-06 06:55:56'),
(22, 10, '06012023120603-900x700-5-room.jpg', '06012023120603-5-room.jpg', NULL, '2023-01-06 06:56:01', '2023-01-06 06:56:01'),
(23, 10, '06012023120606-900x700-6-room.jpg', '06012023120606-6-room.jpg', NULL, '2023-01-06 06:56:10', '2023-01-06 06:56:10'),
(25, 10, '06012023113208-900x700-about-2.jpg', '06012023113208-about-2.jpg', NULL, '2023-01-06 06:57:03', '2023-01-06 06:57:03'),
(26, 11, '06012023120550-900x700-1-room.jpg', '06012023120550-1-room.jpg', NULL, '2023-01-06 07:07:08', '2023-01-06 07:07:08'),
(27, 11, '06012023120553-900x700-2-room.jpg', '06012023120553-2-room.jpg', NULL, '2023-01-06 07:07:13', '2023-01-06 07:07:13'),
(28, 11, '06012023120557-900x700-3-room.jpg', '06012023120557-3-room.jpg', NULL, '2023-01-06 07:07:26', '2023-01-06 07:07:26'),
(29, 11, '06012023120600-900x700-4-room.jpg', '06012023120600-4-room.jpg', NULL, '2023-01-06 07:07:31', '2023-01-06 07:07:31'),
(30, 11, '06012023120603-900x700-5-room.jpg', '06012023120603-5-room.jpg', NULL, '2023-01-06 07:07:38', '2023-01-06 07:07:38'),
(31, 11, '06012023120606-900x700-6-room.jpg', '06012023120606-6-room.jpg', NULL, '2023-01-06 07:07:44', '2023-01-06 07:07:44'),
(32, 12, '06012023120550-900x700-1-room.jpg', '06012023120550-1-room.jpg', NULL, '2023-01-06 07:13:31', '2023-01-06 07:13:31'),
(33, 12, '06012023120553-900x700-2-room.jpg', '06012023120553-2-room.jpg', NULL, '2023-01-06 07:13:35', '2023-01-06 07:13:35'),
(34, 12, '06012023120557-900x700-3-room.jpg', '06012023120557-3-room.jpg', NULL, '2023-01-06 07:13:44', '2023-01-06 07:13:44'),
(35, 12, '06012023120600-900x700-4-room.jpg', '06012023120600-4-room.jpg', NULL, '2023-01-06 07:13:50', '2023-01-06 07:13:50'),
(36, 12, '06012023120603-900x700-5-room.jpg', '06012023120603-5-room.jpg', NULL, '2023-01-06 07:13:55', '2023-01-06 07:13:55'),
(37, 12, '06012023120606-900x700-6-room.jpg', '06012023120606-6-room.jpg', NULL, '2023-01-06 07:14:00', '2023-01-06 07:14:00'),
(58, 17, '09012023045851-900x700-7-room.jpg', '09012023045851-7-room.jpg', NULL, '2023-01-08 23:39:29', '2023-01-08 23:39:29'),
(59, 17, '09012023045855-900x700-8-room.jpg', '09012023045855-8-room.jpg', NULL, '2023-01-08 23:39:34', '2023-01-08 23:39:34'),
(60, 17, '09012023045859-900x700-9-room.jpg', '09012023045859-9-room.jpg', NULL, '2023-01-08 23:39:39', '2023-01-08 23:39:39'),
(61, 17, '09012023045943-900x700-20-room.jpg', '09012023045943-20-room.jpg', NULL, '2023-01-08 23:39:46', '2023-01-08 23:39:46'),
(62, 17, '09012023045939-900x700-19-room.jpg', '09012023045939-19-room.jpg', NULL, '2023-01-08 23:39:51', '2023-01-08 23:39:51'),
(63, 17, '09012023045931-900x700-17-room.jpg', '09012023045931-17-room.jpg', NULL, '2023-01-08 23:40:00', '2023-01-08 23:40:00'),
(64, 17, '09012023045928-900x700-16-room.jpg', '09012023045928-16-room.jpg', NULL, '2023-01-08 23:40:08', '2023-01-08 23:40:08'),
(65, 17, '09012023045935-900x700-18-room.jpg', '09012023045935-18-room.jpg', NULL, '2023-01-08 23:40:15', '2023-01-08 23:40:15'),
(66, 18, '09012023045916-900x700-13-room.jpg', '09012023045916-13-room.jpg', NULL, '2023-01-08 23:46:47', '2023-01-08 23:46:47'),
(67, 18, '09012023045919-900x700-14-room.jpg', '09012023045919-14-room.jpg', NULL, '2023-01-08 23:46:52', '2023-01-08 23:46:52'),
(68, 18, '09012023045924-900x700-15-room.jpg', '09012023045924-15-room.jpg', NULL, '2023-01-08 23:46:58', '2023-01-08 23:46:58'),
(70, 18, '09012023045928-900x700-16-room.jpg', '09012023045928-16-room.jpg', NULL, '2023-01-08 23:47:07', '2023-01-08 23:47:07'),
(72, 18, '09012023045931-900x700-17-room.jpg', '09012023045931-17-room.jpg', NULL, '2023-01-08 23:47:26', '2023-01-08 23:47:26'),
(73, 18, '09012023045935-900x700-18-room.jpg', '09012023045935-18-room.jpg', NULL, '2023-01-08 23:47:34', '2023-01-08 23:47:34'),
(74, 18, '09012023045943-900x700-20-room.jpg', '09012023045943-20-room.jpg', NULL, '2023-01-08 23:47:40', '2023-01-08 23:47:40'),
(76, 19, '09012023045939-900x700-19-room.jpg', '09012023045939-19-room.jpg', NULL, '2023-01-09 00:06:50', '2023-01-09 00:06:50'),
(77, 19, '09012023045935-900x700-18-room.jpg', '09012023045935-18-room.jpg', NULL, '2023-01-09 00:06:56', '2023-01-09 00:06:56'),
(78, 19, '09012023045931-900x700-17-room.jpg', '09012023045931-17-room.jpg', NULL, '2023-01-09 00:07:02', '2023-01-09 00:07:02'),
(79, 19, '09012023045859-900x700-9-room.jpg', '09012023045859-9-room.jpg', NULL, '2023-01-09 00:07:51', '2023-01-09 00:07:51'),
(80, 19, '09012023045904-900x700-10-room.jpg', '09012023045904-10-room.jpg', NULL, '2023-01-09 00:08:01', '2023-01-09 00:08:01'),
(82, 20, '09012023045855-900x700-8-room.jpg', '09012023045855-8-room.jpg', NULL, '2023-01-09 00:21:02', '2023-01-09 00:21:02'),
(83, 20, '09012023045904-900x700-10-room.jpg', '09012023045904-10-room.jpg', NULL, '2023-01-09 00:21:07', '2023-01-09 00:21:07'),
(84, 20, '09012023045912-900x700-12-room.jpg', '09012023045912-12-room.jpg', NULL, '2023-01-09 00:21:12', '2023-01-09 00:21:12'),
(85, 20, '09012023045916-900x700-13-room.jpg', '09012023045916-13-room.jpg', NULL, '2023-01-09 00:21:17', '2023-01-09 00:21:17'),
(86, 20, '09012023045919-900x700-14-room.jpg', '09012023045919-14-room.jpg', NULL, '2023-01-09 00:21:23', '2023-01-09 00:21:23'),
(87, 21, '09012023045851-900x700-7-room.jpg', '09012023045851-7-room.jpg', NULL, '2023-01-09 00:29:30', '2023-01-09 00:29:30'),
(88, 21, '06012023135205-900x700-about-4.jpg', '06012023135205-about-4.jpg', NULL, '2023-01-09 00:29:45', '2023-01-09 00:29:45'),
(89, 21, '06012023120606-900x700-6-room.jpg', '06012023120606-6-room.jpg', NULL, '2023-01-09 00:29:51', '2023-01-09 00:29:51'),
(90, 21, '06012023120603-900x700-5-room.jpg', '06012023120603-5-room.jpg', NULL, '2023-01-09 00:29:56', '2023-01-09 00:29:56'),
(91, 21, '06012023120557-900x700-3-room.jpg', '06012023120557-3-room.jpg', NULL, '2023-01-09 00:30:02', '2023-01-09 00:30:02'),
(92, 21, '06012023120553-900x700-2-room.jpg', '06012023120553-2-room.jpg', NULL, '2023-01-09 00:30:07', '2023-01-09 00:30:07'),
(93, 21, '09012023045912-900x700-12-room.jpg', '09012023045912-12-room.jpg', NULL, '2023-01-09 00:32:16', '2023-01-09 00:32:16'),
(94, 21, '09012023045855-900x700-8-room.jpg', '09012023045855-8-room.jpg', NULL, '2023-01-09 00:32:23', '2023-01-09 00:32:23'),
(95, 20, '09012023045859-900x700-9-room.jpg', '09012023045859-9-room.jpg', NULL, '2023-01-09 00:34:17', '2023-01-09 00:34:17'),
(96, 19, '09012023045935-900x700-18-room.jpg', '09012023045935-18-room.jpg', NULL, '2023-01-09 00:34:59', '2023-01-09 00:34:59'),
(97, 22, '06012023120553-900x700-2-room.jpg', '06012023120553-2-room.jpg', NULL, '2023-01-09 00:44:56', '2023-01-09 00:44:56'),
(98, 22, '06012023120550-900x700-1-room.jpg', '06012023120550-1-room.jpg', NULL, '2023-01-09 00:45:01', '2023-01-09 00:45:01'),
(99, 22, '06012023120557-900x700-3-room.jpg', '06012023120557-3-room.jpg', NULL, '2023-01-09 00:45:06', '2023-01-09 00:45:06'),
(100, 22, '06012023120600-900x700-4-room.jpg', '06012023120600-4-room.jpg', NULL, '2023-01-09 00:45:10', '2023-01-09 00:45:10'),
(101, 22, '06012023120603-900x700-5-room.jpg', '06012023120603-5-room.jpg', NULL, '2023-01-09 00:45:17', '2023-01-09 00:45:17'),
(102, 22, '06012023120606-900x700-6-room.jpg', '06012023120606-6-room.jpg', NULL, '2023-01-09 00:45:24', '2023-01-09 00:45:24'),
(103, 22, '06012023135205-900x700-about-4.jpg', '06012023135205-about-4.jpg', NULL, '2023-01-09 00:45:33', '2023-01-09 00:45:33'),
(104, 22, '09012023045939-900x700-19-room.jpg', '09012023045939-19-room.jpg', NULL, '2023-01-09 00:45:50', '2023-01-09 00:45:50'),
(106, 23, '06012023135205-900x700-about-4.jpg', '06012023135205-about-4.jpg', NULL, '2023-01-09 00:57:59', '2023-01-09 00:57:59'),
(107, 23, '06012023120606-900x700-6-room.jpg', '06012023120606-6-room.jpg', NULL, '2023-01-09 00:58:06', '2023-01-09 00:58:06'),
(108, 23, '06012023120603-900x700-5-room.jpg', '06012023120603-5-room.jpg', NULL, '2023-01-09 00:58:11', '2023-01-09 00:58:11'),
(109, 23, '06012023120600-900x700-4-room.jpg', '06012023120600-4-room.jpg', NULL, '2023-01-09 00:58:16', '2023-01-09 00:58:16'),
(110, 23, '06012023120557-900x700-3-room.jpg', '06012023120557-3-room.jpg', NULL, '2023-01-09 00:58:23', '2023-01-09 00:58:23'),
(111, 23, '06012023120553-900x700-2-room.jpg', '06012023120553-2-room.jpg', NULL, '2023-01-09 00:58:28', '2023-01-09 00:58:28'),
(112, 23, '06012023120550-900x700-1-room.jpg', '06012023120550-1-room.jpg', NULL, '2023-01-09 00:58:33', '2023-01-09 00:58:33'),
(113, 23, '09012023045855-900x700-8-room.jpg', '09012023045855-8-room.jpg', NULL, '2023-01-09 00:58:45', '2023-01-09 00:58:45'),
(114, 24, '09012023045943-900x700-20-room.jpg', '09012023045943-20-room.jpg', NULL, '2023-01-09 02:01:21', '2023-01-09 02:01:21'),
(115, 24, '09012023045939-900x700-19-room.jpg', '09012023045939-19-room.jpg', NULL, '2023-01-09 02:01:26', '2023-01-09 02:01:26'),
(116, 24, '09012023045935-900x700-18-room.jpg', '09012023045935-18-room.jpg', NULL, '2023-01-09 02:01:31', '2023-01-09 02:01:31'),
(117, 24, '09012023045931-900x700-17-room.jpg', '09012023045931-17-room.jpg', NULL, '2023-01-09 02:01:44', '2023-01-09 02:01:44'),
(119, 24, '09012023045855-900x700-8-room.jpg', '09012023045855-8-room.jpg', NULL, '2023-01-09 02:02:10', '2023-01-09 02:02:10'),
(120, 24, '09012023045916-900x700-13-room.jpg', '09012023045916-13-room.jpg', NULL, '2023-01-09 02:02:26', '2023-01-09 02:02:26'),
(121, 25, '06012023120606-900x700-6-room.jpg', '06012023120606-6-room.jpg', NULL, '2023-01-09 02:24:54', '2023-01-09 02:24:54'),
(122, 25, '06012023135205-900x700-about-4.jpg', '06012023135205-about-4.jpg', NULL, '2023-01-09 02:25:01', '2023-01-09 02:25:01'),
(123, 25, '06012023120603-900x700-5-room.jpg', '06012023120603-5-room.jpg', NULL, '2023-01-09 02:25:07', '2023-01-09 02:25:07'),
(124, 25, '06012023120550-900x700-1-room.jpg', '06012023120550-1-room.jpg', NULL, '2023-01-09 02:25:12', '2023-01-09 02:25:12'),
(125, 25, '06012023120557-900x700-3-room.jpg', '06012023120557-3-room.jpg', NULL, '2023-01-09 02:25:18', '2023-01-09 02:25:18'),
(126, 25, '09012023045928-900x700-16-room.jpg', '09012023045928-16-room.jpg', NULL, '2023-01-09 02:25:28', '2023-01-09 02:25:28'),
(234, 43, '10012023084507-900x700-Rectangle 5.jpg', '10012023084507-Rectangle 5.jpg', NULL, '2023-01-10 03:41:44', '2023-01-10 03:41:44'),
(235, 43, '10012023084422-900x700-Rectangle 3-5.jpg', '10012023084422-Rectangle 3-5.jpg', NULL, '2023-01-10 03:41:49', '2023-01-10 03:41:49'),
(236, 43, '10012023044320-900x700-Rectangle 2-5.jpg', '10012023044320-Rectangle 2-5.jpg', NULL, '2023-01-10 03:41:54', '2023-01-10 03:41:54'),
(237, 43, '10012023084447-900x700-Rectangle 4-2.jpg', '10012023084447-Rectangle 4-2.jpg', NULL, '2023-01-10 03:42:00', '2023-01-10 03:42:00'),
(238, 43, '10012023044330-900x700-Rectangle 3-1.jpg', '10012023044330-Rectangle 3-1.jpg', NULL, '2023-01-10 03:42:05', '2023-01-10 03:42:05'),
(239, 43, '10012023044246-900x700-Rectangle 1-5.jpg', '10012023044246-Rectangle 1-5.jpg', NULL, '2023-01-10 03:42:11', '2023-01-10 03:42:11'),
(240, 43, '10012023084409-900x700-Rectangle 3-2.jpg', '10012023084409-Rectangle 3-2.jpg', NULL, '2023-01-10 03:42:16', '2023-01-10 03:42:16'),
(241, 43, '10012023044300-900x700-Rectangle 2-1.jpg', '10012023044300-Rectangle 2-1.jpg', NULL, '2023-01-10 03:42:23', '2023-01-10 03:42:23'),
(256, 1, '09012023045851-900x700-7-room.jpg', '09012023045851-7-room.jpg', NULL, '2023-01-21 09:10:22', '2023-01-21 09:10:22');

-- --------------------------------------------------------

--
-- Table structure for table `room_manages`
--

CREATE TABLE `room_manages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `roomtype_id` int(11) DEFAULT NULL,
  `room_no` varchar(191) DEFAULT NULL,
  `in_date` date DEFAULT NULL,
  `out_date` date DEFAULT NULL,
  `book_status` int(11) DEFAULT NULL,
  `is_publish` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `room_manages`
--

INSERT INTO `room_manages` (`id`, `roomtype_id`, `room_no`, `in_date`, `out_date`, `book_status`, `is_publish`, `created_at`, `updated_at`) VALUES
(21, 43, '101', NULL, NULL, 2, 1, '2023-01-21 07:14:07', '2023-02-27 07:37:27'),
(22, 43, '102', NULL, NULL, 2, 1, '2023-01-21 07:14:11', '2023-02-27 07:37:27'),
(23, 43, '103', NULL, NULL, 2, 1, '2023-01-21 07:14:21', '2023-02-27 07:37:27'),
(24, 43, '104', NULL, NULL, 2, 1, '2023-01-21 07:14:24', '2023-02-17 10:01:58'),
(25, 43, '105', NULL, NULL, 2, 1, '2023-01-21 07:14:31', '2023-02-17 10:01:58'),
(26, 43, '106', NULL, NULL, 2, 1, '2023-01-21 07:14:36', '2023-02-17 10:01:58'),
(27, 43, '107', NULL, NULL, 2, 1, '2023-01-21 07:14:42', '2023-02-17 10:01:58'),
(28, 43, '108', NULL, NULL, 2, 1, '2023-01-21 07:14:46', '2023-01-21 07:14:46'),
(29, 43, '109', NULL, NULL, 2, 1, '2023-01-21 07:14:50', '2023-01-21 07:14:50'),
(30, 43, '110', NULL, NULL, 2, 1, '2023-01-21 07:14:54', '2023-01-21 07:14:54'),
(35, 1, '100', NULL, NULL, 2, 1, '2023-01-21 09:09:06', '2023-02-27 09:39:11'),
(36, 1, '101', NULL, NULL, 2, 1, '2023-01-21 09:09:12', '2023-12-05 05:43:17'),
(37, 1, '102', NULL, NULL, 2, 1, '2023-01-21 09:09:17', '2023-02-17 10:01:54'),
(38, 1, '103', NULL, NULL, 2, 1, '2023-01-21 09:09:21', '2023-02-16 08:45:20'),
(39, 1, '104', NULL, NULL, 2, 1, '2023-01-21 09:09:25', '2023-02-16 08:45:20'),
(40, 1, '105', NULL, NULL, 2, 1, '2023-01-21 09:09:40', '2023-02-16 08:45:20'),
(41, 1, '106', NULL, NULL, 2, 1, '2023-01-21 09:09:48', '2023-02-13 06:51:01'),
(42, 1, '107', NULL, NULL, 2, 1, '2023-01-21 09:09:56', '2023-12-05 05:43:17'),
(43, 1, '108', NULL, NULL, 2, 1, '2023-01-21 09:10:10', '2023-12-04 20:31:33'),
(44, 10, '100', NULL, NULL, 2, 1, '2023-01-21 09:11:12', '2023-02-11 04:21:46'),
(45, 10, '101', NULL, NULL, 2, 1, '2023-01-21 09:11:16', '2023-02-27 07:37:32'),
(46, 10, '102', NULL, NULL, 2, 1, '2023-01-21 09:11:20', '2023-02-11 04:21:46'),
(47, 10, '103', NULL, NULL, 2, 1, '2023-01-21 09:11:25', '2023-02-27 07:37:27'),
(48, 10, '104', NULL, NULL, 2, 1, '2023-01-21 09:11:28', '2023-01-21 09:11:28'),
(49, 10, '105', NULL, NULL, 2, 1, '2023-01-21 09:11:33', '2023-01-21 09:11:33'),
(50, 11, '100', NULL, NULL, 2, 1, '2023-01-21 09:12:32', '2023-02-27 07:37:32'),
(51, 11, '101', NULL, NULL, 2, 1, '2023-01-21 09:12:36', '2023-02-27 07:37:32'),
(52, 11, '102', NULL, NULL, 2, 1, '2023-01-21 09:12:39', '2023-02-17 11:17:19'),
(53, 11, '103', NULL, NULL, 2, 1, '2023-01-21 09:12:42', '2023-02-17 11:17:18'),
(54, 11, '104', NULL, NULL, 2, 1, '2023-01-21 09:12:47', '2023-02-27 07:37:27'),
(55, 11, '105', NULL, NULL, 2, 1, '2023-01-21 09:12:51', '2023-02-27 07:37:27'),
(56, 11, '106', NULL, NULL, 2, 1, '2023-01-21 09:12:56', '2023-01-21 09:12:56'),
(57, 12, '100', NULL, NULL, 2, 1, '2023-01-21 09:13:34', '2023-02-27 07:37:32'),
(58, 12, '101', NULL, NULL, 2, 1, '2023-01-21 09:13:37', '2023-02-27 07:37:32'),
(59, 12, '102', NULL, NULL, 2, 1, '2023-01-21 09:13:40', '2023-02-27 07:37:27'),
(60, 12, '103', NULL, NULL, 2, 1, '2023-01-21 09:13:43', '2023-02-27 07:37:27'),
(61, 12, '104', NULL, NULL, 2, 1, '2023-01-21 09:13:46', '2023-02-27 07:37:27'),
(62, 12, '105', NULL, NULL, 2, 1, '2023-01-21 09:13:49', '2023-02-27 07:37:27'),
(63, 12, '106', NULL, NULL, 2, 1, '2023-01-21 09:13:53', '2023-02-27 07:37:27'),
(64, 12, '107', NULL, NULL, 2, 1, '2023-01-21 09:13:58', '2023-02-27 07:37:27'),
(95, 17, '100', NULL, NULL, 2, 1, '2023-01-21 09:19:54', '2023-02-27 07:37:32'),
(96, 17, '101', NULL, NULL, 2, 1, '2023-01-21 09:19:57', '2023-02-27 07:37:32'),
(97, 17, '102', NULL, NULL, 2, 1, '2023-01-21 09:20:00', '2023-02-27 07:37:27'),
(98, 17, '103', NULL, NULL, 2, 1, '2023-01-21 09:20:03', '2023-02-27 07:37:27'),
(99, 17, '104', NULL, NULL, 2, 1, '2023-01-21 09:20:06', '2023-02-27 07:37:27'),
(100, 17, '105', NULL, NULL, 2, 1, '2023-01-21 09:20:09', '2023-02-27 07:37:27'),
(101, 17, '106', NULL, NULL, 2, 1, '2023-01-21 09:20:13', '2023-01-21 09:20:13'),
(102, 17, '107', NULL, NULL, 2, 1, '2023-01-21 09:20:18', '2023-01-21 09:20:18'),
(103, 17, '108', NULL, NULL, 2, 1, '2023-01-21 09:20:23', '2023-01-21 09:20:23'),
(111, 19, '100', NULL, NULL, 2, 1, '2023-01-21 09:22:07', '2023-02-27 07:37:32'),
(112, 19, '101', NULL, NULL, 2, 1, '2023-01-21 09:22:09', '2023-02-27 07:37:27'),
(113, 19, '102', NULL, NULL, 2, 1, '2023-01-21 09:22:13', '2023-02-27 07:37:32'),
(114, 19, '103', NULL, NULL, 2, 1, '2023-01-21 09:22:16', '2023-02-16 08:06:55'),
(115, 19, '104', NULL, NULL, 2, 1, '2023-01-21 09:22:20', '2023-02-16 08:06:55'),
(116, 19, '105', NULL, NULL, 2, 1, '2023-01-21 09:22:24', '2023-01-21 09:22:24'),
(117, 20, '100', NULL, NULL, 2, 1, '2023-01-21 09:23:04', '2023-02-06 08:47:14'),
(118, 20, '101', NULL, NULL, 2, 1, '2023-01-21 09:23:07', '2023-02-06 08:47:14'),
(119, 20, '102', NULL, NULL, 2, 1, '2023-01-21 09:23:10', '2023-02-06 08:47:14'),
(120, 20, '103', NULL, NULL, 2, 1, '2023-01-21 09:23:13', '2023-02-06 08:44:44'),
(121, 20, '104', NULL, NULL, 2, 1, '2023-01-21 09:23:17', '2023-02-06 08:47:14'),
(122, 20, '105', NULL, NULL, 2, 1, '2023-01-21 09:23:21', '2023-02-06 08:46:01'),
(129, 22, '100', NULL, NULL, 2, 1, '2023-01-21 09:25:19', '2023-02-15 10:22:01'),
(130, 22, '101', NULL, NULL, 2, 1, '2023-01-21 09:25:21', '2023-02-09 11:01:51'),
(131, 22, '102', NULL, NULL, 2, 1, '2023-01-21 09:25:28', '2023-02-15 10:22:01'),
(132, 22, '103', NULL, NULL, 2, 1, '2023-01-21 09:25:34', '2023-02-09 11:01:51'),
(133, 22, '104', NULL, NULL, 2, 1, '2023-01-21 09:25:41', '2023-02-06 11:23:45'),
(134, 22, '105', NULL, NULL, 2, 1, '2023-01-21 09:25:46', '2023-02-06 11:23:45'),
(135, 23, '100', NULL, NULL, 2, 1, '2023-01-21 09:26:49', '2023-02-27 07:37:27'),
(136, 23, '101', NULL, NULL, 2, 1, '2023-01-21 09:26:52', '2023-02-27 07:37:27'),
(137, 23, '102', NULL, NULL, 2, 1, '2023-01-21 09:26:56', '2023-01-21 09:26:56'),
(138, 23, '103', NULL, NULL, 2, 1, '2023-01-21 09:26:59', '2023-01-21 09:26:59'),
(139, 23, '104', NULL, NULL, 2, 1, '2023-01-21 09:27:03', '2023-01-21 09:27:03'),
(140, 23, '105', NULL, NULL, 2, 1, '2023-01-21 09:27:06', '2023-01-21 09:27:06'),
(141, 23, '106', NULL, NULL, 2, 1, '2023-01-21 09:27:10', '2023-01-21 09:27:10'),
(154, 43, '111', NULL, NULL, 2, 1, '2023-01-27 08:27:48', '2023-01-27 08:27:48'),
(164, 12, '108', NULL, NULL, 2, 1, '2023-02-16 09:08:44', '2023-02-16 09:08:44'),
(165, 12, '109', NULL, NULL, 2, 1, '2023-02-16 09:08:48', '2023-02-16 09:08:48'),
(166, 12, '110', NULL, NULL, 2, 1, '2023-02-16 09:08:52', '2023-02-16 09:08:52'),
(167, 12, '111', NULL, NULL, 2, 1, '2023-02-16 09:08:58', '2023-02-16 09:08:58'),
(168, 12, '112', NULL, NULL, 2, 1, '2023-02-16 09:09:04', '2023-02-16 09:09:04'),
(174, 17, '109', NULL, NULL, 2, 1, '2023-02-16 09:10:26', '2023-02-16 09:10:26'),
(175, 17, '110', NULL, NULL, 2, 1, '2023-02-16 09:10:30', '2023-02-16 09:10:30'),
(176, 17, '111', NULL, NULL, 2, 1, '2023-02-16 09:10:33', '2023-02-16 09:10:33'),
(177, 11, '107', NULL, NULL, 2, 1, '2023-02-16 09:11:13', '2023-02-16 09:11:13'),
(178, 11, '108', NULL, NULL, 2, 1, '2023-02-16 09:11:17', '2023-02-16 09:11:17'),
(179, 11, '109', NULL, NULL, 2, 1, '2023-02-16 09:11:22', '2023-02-16 09:11:22'),
(180, 11, '110', NULL, NULL, 2, 1, '2023-02-16 09:11:26', '2023-02-16 09:11:26'),
(186, 57, '101', NULL, NULL, 2, 1, '2023-12-18 08:38:47', '2023-12-18 08:38:47'),
(187, 57, '102', NULL, NULL, 2, 1, '2023-12-18 08:39:18', '2023-12-18 08:39:18'),
(188, 57, '103', NULL, NULL, 2, 1, '2023-12-18 08:39:30', '2023-12-18 08:39:30'),
(189, 57, '104', NULL, NULL, 2, 1, '2023-12-18 08:39:39', '2023-12-18 08:39:39'),
(190, 57, '105', NULL, NULL, 2, 1, '2023-12-18 08:39:47', '2023-12-18 08:39:47'),
(191, 57, '105', NULL, NULL, 2, 1, '2023-12-18 08:39:57', '2023-12-18 08:39:57'),
(192, 57, '106', NULL, NULL, 2, 1, '2023-12-18 08:40:05', '2023-12-18 08:40:05'),
(193, 57, '107', NULL, NULL, 2, 1, '2023-12-18 08:40:14', '2023-12-18 08:40:14'),
(194, 57, '108', NULL, NULL, 2, 1, '2023-12-18 08:40:22', '2023-12-18 08:40:22'),
(195, 57, '109', NULL, NULL, 2, 1, '2023-12-18 08:41:00', '2023-12-18 08:41:00'),
(196, 57, '110', NULL, NULL, 2, 1, '2023-12-18 08:41:13', '2023-12-18 08:41:13'),
(197, 57, '111', NULL, NULL, 2, 1, '2023-12-18 08:41:23', '2023-12-18 08:41:23'),
(198, 56, '112', NULL, NULL, 2, 1, '2023-12-18 08:45:24', '2023-12-18 08:45:24'),
(199, 56, '113', NULL, NULL, 2, 1, '2023-12-18 08:45:32', '2023-12-18 08:45:32'),
(200, 56, '114', NULL, NULL, 2, 1, '2023-12-18 08:45:39', '2023-12-18 08:45:39'),
(201, 56, '115', NULL, NULL, 2, 1, '2023-12-18 08:45:46', '2023-12-18 08:45:46'),
(202, 25, '112', NULL, NULL, 2, 1, '2023-12-18 08:46:15', '2023-12-18 08:46:15'),
(203, 25, '113', NULL, NULL, 2, 1, '2023-12-18 08:46:22', '2023-12-18 08:46:22'),
(204, 25, '114', NULL, NULL, 2, 1, '2023-12-18 08:46:32', '2023-12-18 08:46:32'),
(205, 25, '115', NULL, NULL, 2, 1, '2023-12-18 08:46:38', '2023-12-18 08:46:38'),
(206, 24, '116', NULL, NULL, 2, 1, '2023-12-18 08:48:45', '2023-12-18 08:48:45'),
(207, 24, '117', NULL, NULL, 2, 1, '2023-12-18 08:48:53', '2023-12-18 08:48:53'),
(208, 24, '118', NULL, NULL, 2, 1, '2023-12-18 08:49:02', '2023-12-18 08:49:02'),
(209, 24, '119', NULL, NULL, 2, 1, '2023-12-18 08:49:08', '2023-12-18 08:49:08'),
(210, 24, '120', NULL, NULL, 2, 1, '2023-12-18 08:49:19', '2023-12-18 08:49:19'),
(211, 55, '116', NULL, NULL, 2, 1, '2023-12-18 08:49:29', '2023-12-18 08:49:29'),
(212, 55, '117', NULL, NULL, 2, 1, '2023-12-18 08:49:38', '2023-12-18 08:49:38'),
(213, 55, '118', NULL, NULL, 2, 1, '2023-12-18 08:49:44', '2023-12-18 08:49:44'),
(214, 55, '119', NULL, NULL, 2, 1, '2023-12-18 08:49:53', '2023-12-18 08:49:53'),
(215, 55, '120', NULL, NULL, 2, 1, '2023-12-18 08:50:01', '2023-12-18 08:50:01'),
(216, 54, '121', NULL, NULL, 2, 1, '2023-12-18 08:51:13', '2023-12-18 08:51:13'),
(217, 54, '122', NULL, NULL, 2, 1, '2023-12-18 08:51:55', '2023-12-18 08:51:55'),
(218, 54, '123', NULL, NULL, 2, 1, '2023-12-18 08:52:02', '2023-12-18 08:52:02'),
(219, 54, '124', NULL, NULL, 2, 1, '2023-12-18 08:52:11', '2023-12-18 08:52:11'),
(220, 54, '125', NULL, NULL, 2, 1, '2023-12-18 08:52:19', '2023-12-18 08:52:19'),
(221, 21, '121', NULL, NULL, 2, 1, '2023-12-18 08:52:29', '2023-12-18 08:52:29'),
(222, 21, '122', NULL, NULL, 2, 1, '2023-12-18 08:52:37', '2023-12-18 08:52:37'),
(223, 21, '123', NULL, NULL, 2, 1, '2023-12-18 08:52:43', '2023-12-18 08:52:43'),
(224, 21, '124', NULL, NULL, 2, 1, '2023-12-18 08:52:50', '2023-12-18 08:52:50'),
(225, 21, '125', NULL, NULL, 2, 1, '2023-12-18 08:52:56', '2023-12-18 08:52:56'),
(226, 53, '90', NULL, NULL, 2, 1, '2023-12-18 08:54:34', '2023-12-18 08:54:34'),
(227, 53, '91', NULL, NULL, 2, 1, '2023-12-18 08:54:43', '2023-12-18 08:54:43'),
(228, 53, '100', NULL, NULL, 2, 1, '2023-12-18 08:54:58', '2023-12-18 08:54:58'),
(229, 53, '101', NULL, NULL, 2, 1, '2023-12-18 08:55:07', '2023-12-18 08:55:07'),
(230, 53, '102', NULL, NULL, 2, 1, '2023-12-18 08:55:15', '2023-12-18 08:55:15'),
(231, 18, '300', NULL, NULL, 2, 1, '2023-12-18 09:00:00', '2023-12-18 09:00:00'),
(232, 18, '301', NULL, NULL, 2, 1, '2023-12-18 09:00:10', '2023-12-18 09:00:10'),
(233, 18, '302', NULL, NULL, 2, 1, '2023-12-18 09:00:19', '2023-12-18 09:00:19'),
(234, 18, '304', NULL, NULL, 2, 1, '2023-12-18 09:00:26', '2023-12-18 09:00:26');

-- --------------------------------------------------------

--
-- Table structure for table `section_contents`
--

CREATE TABLE `section_contents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `section_type` varchar(191) DEFAULT NULL,
  `page_type` varchar(191) DEFAULT NULL,
  `url` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `title` varchar(191) DEFAULT NULL,
  `desc` text DEFAULT NULL,
  `lan` varchar(255) NOT NULL DEFAULT 'en',
  `is_publish` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `section_contents`
--

INSERT INTO `section_contents` (`id`, `section_type`, `page_type`, `url`, `image`, `title`, `desc`, `lan`, `is_publish`, `created_at`, `updated_at`) VALUES
(4, 'about_us', 'home_1', '#', '10122023084543-photo_6021453864940716607_x.jpg', 'Welcome to Mira Hotel', '{\"description\":\"The Mira Hotel chain has begun to expand to cover the cities of Riyadh and Jeddah with four luxury hotels offering its esteemed guests a large number of diverse, upscale rooms and suites that suit the requirements of different segments of guests, and we may look to give them the best positive impressions of its distinctive services.\",\"total_rooms\":\"500\",\"total_customers\":\"1200\",\"total_amenities\":\"120\",\"total_packages\":\"320\",\"button_text\":\"More About Us\",\"target\":\"_self\",\"image2\":\"10122023232621-mirabasatin2.jpg\",\"image3\":\"10122023114636-5V7A4017.jpg\",\"year\":null,\"tp_name\":null,\"position\":null}', 'en', 1, '2023-01-05 12:20:12', '2023-12-10 21:30:52'),
(17, 'our_services', NULL, NULL, '06012023175149-service_6.png', 'Gym', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'en', 1, '2023-01-06 11:51:57', '2023-01-06 12:07:14'),
(18, 'our_services', NULL, NULL, '06012023175228-service_5.png', 'Breakfast', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'en', 1, '2023-01-06 11:52:34', '2023-01-06 12:07:14'),
(19, 'our_services', NULL, NULL, '06012023175255-service_4.png', 'Swimming Pool', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'en', 1, '2023-01-06 11:52:58', '2023-01-06 12:07:14'),
(20, 'our_services', NULL, NULL, '06012023175320-service_3.png', 'Quality Rooms', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'en', 1, '2023-01-06 11:53:24', '2023-01-06 12:07:14'),
(21, 'our_services', NULL, NULL, '06012023175344-service_2.png', 'Parking Space', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'en', 1, '2023-01-06 11:53:48', '2023-01-06 12:07:14'),
(22, 'our_services', NULL, NULL, '06012023175409-service_1.png', 'Pick Up & Drop', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'en', 1, '2023-01-06 11:54:13', '2023-01-06 12:07:14'),
(26, 'testimonial', NULL, NULL, '07012023065428-100x100-1-client.jpg', 'Michael', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'en', 1, '2023-01-07 00:57:01', '2023-01-07 01:16:20'),
(27, 'testimonial', NULL, NULL, '07012023065729-100x100-3-client.jpg', 'James', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'en', 1, '2023-01-07 00:57:33', '2023-01-07 01:16:20'),
(28, 'testimonial', NULL, NULL, '07012023065821-100x100-4-client.jpg', 'Robert', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'en', 1, '2023-01-07 00:58:24', '2023-01-07 01:16:20'),
(29, 'testimonial', NULL, NULL, '07012023065955-100x100-2-client.jpg', 'Nancy', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'en', 1, '2023-01-07 00:59:59', '2023-01-07 01:16:20'),
(30, 'testimonial', NULL, NULL, '07012023070147-100x100-5-client.jpg', 'John', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'en', 1, '2023-01-07 01:01:51', '2023-01-07 01:16:20'),
(31, 'testimonial', NULL, NULL, '07012023070816-100x100-6-client.jpg', 'Sarah', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'en', 1, '2023-01-07 01:08:22', '2023-02-27 09:41:28'),
(32, 'about_us', 'home_1', NULL, '10122023084543-photo_6021453864940716607_x.jpg', 'مرحبًا بك في سلسلة فندق ميرا', '{\"description\":\"\\u0628\\u062f\\u0623\\u062a \\u0633\\u0644\\u0633\\u0644\\u0629 \\u0641\\u0646\\u0627\\u062f\\u0642 \\u0645\\u064a\\u0631\\u0627 \\u0628\\u0627\\u0644\\u0627\\u0644\\u062a\\u0633\\u0627\\u0639 \\u0644\\u062a\\u063a\\u0637\\u064a \\u0645\\u062f\\u064a\\u0646\\u062a\\u064a \\u0627\\u0644\\u0631\\u064a\\u0627\\u0636 \\u0648\\u062c\\u062f\\u0629 \\u0628\\u0623\\u0631\\u0628\\u0639\\u0629 \\u0641\\u0646\\u0627\\u062f\\u0642 \\u0641\\u0627\\u062e\\u0631\\u0629 \\u062a\\u0642\\u062f\\u0645 \\u0644\\u0646\\u0632\\u0644\\u0627\\u0626\\u0647\\u0627 \\u0627\\u0644\\u0643\\u0631\\u0627\\u0645 \\u0639\\u062f\\u062f\\u0627 \\u0643\\u0628\\u064a\\u0631\\u0627 \\u0645\\u0646 \\u0627\\u0644\\u063a\\u0631\\u0641 \\u0648\\u0627\\u0644\\u0623\\u062c\\u0646\\u062d\\u0629 \\u0627\\u0644\\u0631\\u0627\\u0642\\u064a\\u0629 \\u0627\\u0644\\u0645\\u062a\\u0646\\u0648\\u0639\\u0629\\u0627\\u0644\\u062a\\u064a \\u062a\\u064f\\u0646\\u0627\\u0633\\u0628 \\u0645\\u062a\\u0637\\u0644\\u0628\\u0627\\u062a \\u0645\\u062e\\u062a\\u0644\\u0641 \\u0634\\u0631\\u0627\\u0626\\u062d \\u0627\\u0644\\u064f\\u0646\\u0632\\u0644\\u0627\\u0621\\u060c \\u0648\\u0642\\u062f \\u0646\\u0628\\u062d\\u062b \\u0641\\u064a \\u0625\\u0639\\u0637\\u0627\\u0621 \\u0627\\u0641\\u0636\\u0644 \\u0627\\u0644\\u0646\\u0637\\u0628\\u0627\\u0639\\u0627\\u062a \\u0627\\u0644\\u0625\\u064a\\u062c\\u0627\\u0628\\u064a\\u0629 \\u0644\\u062f\\u064a\\u0647\\u0645 \\u0639\\u0646 \\u062e\\u062f\\u0645\\u0627\\u062a\\u0647\\u0627 \\u0627\\u0644\\u0645\\u0645\\u064a\\u0632\\u0629.\",\"total_rooms\":\"2\",\"total_customers\":\"1\",\"total_amenities\":\"120\",\"total_packages\":\"320\",\"button_text\":\"\\u0627\\u0639\\u0631\\u0641 \\u0627\\u0644\\u0645\\u0632\\u064a\\u062f\",\"target\":\"_self\",\"image2\":\"10122023232621-mirabasatin2.jpg\",\"image3\":\"05122023204708-5V7A4017.jpg\",\"year\":\"1\",\"tp_name\":\"ABOUTUS\",\"position\":\"ABOUTUS\"}', 'ar', 1, '2023-12-03 06:57:21', '2023-12-10 21:31:21'),
(34, 'our_services', NULL, NULL, '06012023175409-service_1.png', 'وسائل التنقل', 'لوريم إيبسوم هو ببساطة نص وهمي من صناعة الطباعة والتنضيد. لقد كان لوريم إيبسوم هو النص الوهمي القياسي في هذه الصناعة منذ القرن السادس عشر، عندما أخذت طابعة غير معروفة لوح الكتابة وخلطته لصنع نموذج كتاب. لوريم إيبسوم هو ببساطة نص وهمي من صناعة الطباعة والتنضيد. لقد كان لوريم إيبسوم هو النص الوهمي القياسي في هذه الصناعة منذ القرن السادس عشر، عندما أخذت طابعة غير معروفة لوح الكتابة وخلطته لصنع نموذج كتاب.', 'ar', 1, '2023-12-03 07:38:42', '2023-12-03 07:47:08'),
(35, 'our_services', NULL, NULL, '06012023175228-service_5.png', 'الافطار', 'لوريم إيبسوم هو ببساطة نص وهمي من صناعة الطباعة والتنضيد. لقد كان لوريم إيبسوم هو النص الوهمي القياسي في هذه الصناعة منذ القرن السادس عشر، عندما أخذت طابعة غير معروفة لوح الكتابة وخلطته لصنع نموذج كتاب. لوريم إيبسوم هو ببساطة نص وهمي من صناعة الطباعة والتنضيد. لقد كان لوريم إيبسوم هو النص الوهمي القياسي في هذه الصناعة منذ القرن السادس عشر، عندما أخذت طابعة غير معروفة لوح الكتابة وخلطته لصنع نموذج كتاب.', 'ar', 1, '2023-12-03 07:41:23', '2023-12-03 07:47:01'),
(37, 'our_services', NULL, NULL, '06012023175344-service_2.png', 'ركن للسيارات', 'لوريم إيبسوم هو ببساطة نص وهمي من صناعة الطباعة والتنضيد. لقد كان لوريم إيبسوم هو النص الوهمي القياسي في هذه الصناعة منذ القرن السادس عشر، عندما أخذت طابعة غير معروفة لوح الكتابة وخلطته لصنع نموذج كتاب. لوريم إيبسوم هو ببساطة نص وهمي من صناعة الطباعة والتنضيد. لقد كان لوريم إيبسوم هو النص الوهمي القياسي في هذه الصناعة منذ القرن السادس عشر، عندما أخذت طابعة غير معروفة لوح الكتابة وخلطته لصنع نموذج كتاب.', 'ar', 1, '2023-12-03 07:43:35', '2023-12-12 11:52:13'),
(38, 'our_services', NULL, NULL, '10122023232953-6kitchention-6.jpg', 'Kitchen Restaurant', 'Mira\'s hotel chain offers the excellent Turkish taste, distinguished cuisine, modern style, charming colors, and many distinct details that go beyond the borders only. The military idea is from the Alberjiyat souvenir box. With the restaurant\'s most delicious and delicious types of Turkish food carefully selected to suit all tastes, visit this unique charm and come.', 'en', 2, '2023-12-12 11:48:06', '2023-12-13 07:51:12'),
(39, 'our_services', NULL, NULL, '10122023232953-6kitchention-6.jpg', 'مطعم كتشن', 'تقدم ميرا سلسة فنادقها الطعم التركي الشهير kitchenation المتميز بتصميمه واسلوبه العصري والوانه الساحرة واكثير ة التفاصيل المختارة بعناية ليتخطي بذلك الحدود .الفكرة مستوحاة من صندوق الذكرة الملئ بالذكريات . ويقدم المطعم اشهي والذ انواع الماكولات التركية المنتقاة بعناية لتتناسب مع كافة الاذواق ز قم بتجربة هذا السحر الفريد وتفضل .', 'ar', 2, '2023-12-13 07:48:21', '2023-12-13 07:48:53'),
(40, 'our_services', NULL, NULL, '13122023100719-IMG_0068.jpg', 'مطعم ميرا', 'يستقبل في بهو الفندق , ويوفر وجبات افطار والغداء والعشاء طوال اليوم بقدرة استيعابية تصل ل 80 فردا . يقدم المطعم باقة متنوعة من اشهي الاصناف العربية والعالمية والحلويات الشرقية والغربية , بلاضافة الي مجموعة من المشروبات الغازية والعصائر . ميرا المكان المثالي لرجال الاعمال والاسر من ذوي الذوق الرفيع\r\n** ارجيلة ميرا **\r\nيقدم العديد من انواع الكباب الشهي والبرغر واصابع الدجاج بالاضافة الي الشيشة (النرجيلة)', 'ar', 2, '2023-12-13 08:07:39', '2023-12-13 08:08:00'),
(41, 'our_services', NULL, NULL, '13122023100719-IMG_0068.jpg', 'Mira Restaurant', 'It is received in the hotel lobby and provides breakfast, lunch and dinner throughout the day with a capacity of up to 80 people. The restaurant offers a variety of delicious Arabic and international dishes, as well as Eastern and Western sweets, in addition to a group of soft drinks and juices. Mira is the ideal place for businessmen and families with good taste', 'en', 2, '2023-12-13 08:10:57', '2023-12-13 08:10:57'),
(42, 'our_services', NULL, NULL, '13122023101524-img-17.jpg', 'كافية ميرا', 'يقدم مجموعة متنوعة من المشروبات الساخنة والباردة والوجبات الخفيفة والسندوتشات والحلويات , في اجواء عائلية مميزة ترقي لذوقكم ونرضي رغباتكم المختلفة , وبقدرة استعابية تصل ل50 فردا.', 'ar', 2, '2023-12-13 08:15:51', '2023-12-13 08:15:51'),
(43, 'our_services', NULL, NULL, '13122023101524-img-17.jpg', 'mera cafe', 'It offers a variety of hot and cold drinks, snacks, sandwiches and sweets, in a unique family atmosphere that suits your taste and satisfies your different desires, with a capacity of up to 50 people.', 'en', 2, '2023-12-13 08:22:28', '2023-12-13 08:22:28'),
(44, 'our_services', NULL, NULL, '06012023175255-service_4.png', 'حمام سباحة', 'لوريم إيبسوم هو ببساطة نص وهمي من صناعة الطباعة والتنضيد. لقد كان لوريم إيبسوم هو النص الوهمي القياسي في هذه الصناعة منذ القرن السادس عشر، عندما أخذت طابعة غير معروفة لوح الكتابة وخلطته لصنع نموذج كتاب. لوريم إيبسوم هو ببساطة نص وهمي من صناعة الطباعة والتنضيد. لقد كان لوريم إيبسوم هو النص الوهمي القياسي في هذه الصناعة منذ القرن السادس عشر، عندما أخذت طابعة غير معروفة لوح الكتابة وخلطته لصنع نموذج كتاب.', 'ar', 1, '2023-12-18 12:47:20', '2023-12-18 12:52:08'),
(45, 'our_services', NULL, NULL, '06012023175149-service_6.png', 'صالة رياضية', 'لوريم إيبسوم هو ببساطة نص وهمي من صناعة الطباعة والتنضيد. لقد كان لوريم إيبسوم هو النص الوهمي القياسي في هذه الصناعة منذ القرن السادس عشر، عندما أخذت طابعة غير معروفة لوح الكتابة وخلطته لصنع نموذج كتاب. لوريم إيبسوم هو ببساطة نص وهمي من صناعة الطباعة والتنضيد. لقد كان لوريم إيبسوم هو النص الوهمي القياسي في هذه الصناعة منذ القرن السادس عشر، عندما أخذت طابعة غير معروفة لوح الكتابة وخلطته لصنع نموذج كتاب.', 'ar', 1, '2023-12-18 12:48:21', '2023-12-18 12:48:21'),
(46, 'our_services', NULL, NULL, '06012023175320-service_3.png', 'غرف فخمة', 'لوريم إيبسوم هو ببساطة نص وهمي من صناعة الطباعة والتنضيد. لقد كان لوريم إيبسوم هو النص الوهمي القياسي في هذه الصناعة منذ القرن السادس عشر، عندما أخذت طابعة غير معروفة لوح الكتابة وخلطته لصنع نموذج كتاب. لوريم إيبسوم هو ببساطة نص وهمي من صناعة الطباعة والتنضيد. لقد كان لوريم إيبسوم هو النص الوهمي القياسي في هذه الصناعة منذ القرن السادس عشر، عندما أخذت طابعة غير معروفة لوح الكتابة وخلطته لصنع نموذج كتاب.', 'ar', 1, '2023-12-18 12:49:03', '2023-12-18 12:49:14');

-- --------------------------------------------------------

--
-- Table structure for table `section_manages`
--

CREATE TABLE `section_manages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `manage_type` varchar(191) DEFAULT NULL,
  `section` varchar(191) DEFAULT NULL,
  `title` varchar(191) DEFAULT NULL,
  `url` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `desc` text DEFAULT NULL,
  `is_publish` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `lan` varchar(255) NOT NULL DEFAULT 'en'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `section_manages`
--

INSERT INTO `section_manages` (`id`, `manage_type`, `section`, `title`, `url`, `image`, `desc`, `is_publish`, `created_at`, `updated_at`, `lan`) VALUES
(374, 'home_1', 'slider_hero', 'Hero Section', NULL, NULL, NULL, 1, '2023-01-13 06:44:13', '2023-12-11 12:40:14', 'en'),
(376, 'home_1', 'about_us', 'About Us', NULL, NULL, NULL, 1, '2023-01-13 06:52:00', '2023-01-13 07:16:43', 'en'),
(377, 'home_1', 'offer_ads', 'Choose your offer', NULL, NULL, 'One More Offer For You!', 2, '2023-01-13 06:54:13', '2023-12-18 12:45:19', 'en'),
(378, 'home_1', 'featured_rooms', 'Featured Rooms', NULL, NULL, 'With Mira, a smile of satisfaction will accompany you; Because it is a specialized Saudi company that translates all its expertise into hotel construction And operate it to your satisfaction, through commitment to the finest International specifications and standards.', 2, '2023-01-13 06:58:30', '2023-12-11 12:37:17', 'en'),
(379, 'home_1', 'our_services', 'Our Hotel Services', NULL, NULL, 'A great package of service is waiting for you to make your stay a unique experience The hotel has a 24 -hour front desk ensures a fast check -in and out. The hotel has a small market also, as well as other services such as groceries delivery, luggage storage, free and available car parking (Car valet), a safe, laundry and ironing facilities.If you are a swimmer, the hotel has an outdoor pool. Free Wi -Fi is also available over all the hotel.', 1, '2023-01-13 07:04:30', '2023-12-06 20:33:02', 'en'),
(380, 'home_1', 'testimonial', 'What Our Clients Says', NULL, NULL, 'With Mira, a smile of satisfaction will accompany you; Lanha is a specialized Saudi company that translates all its experience in establishing and operating hotels to achieve your satisfaction, by adhering to the highest international specifications and standards.', 2, '2023-01-13 07:10:15', '2023-12-11 12:36:42', 'en'),
(381, 'home_1', 'our_blogs', 'News', NULL, NULL, 'In Riyadh, the city of nobility, heritage and modernity in the center of the city, near its most important tourist attractions, Mira Hotels Company chose to make its launch into the world of four-star hotels from a strategic location, from Prince Muhammad bin Abdulaziz Street, famous as (Tahlia Street). It is a landmark street in the city of Riyadh, and has become one of the symbols of vitality that has become famous as one of the most important luxury in it, and the preferred location for the most luxurious international companies and brands, so the hotel enjoys its vital location in the heart of the capital,It is surrounded by many of the finest tourist attractions, making the hotel guest a part of the various centers, shops, international brands and restaurants for travelers interested in shopping for the liveliness that characterizes this upscale street, and a choice of activities suitable for family and business. The hotel is located in the middle of the most famous tourist attractions in the city of Riyadh, as it is located 1.5 km from Al Faisaliah Tower, 2.3 km from the Kingdom Mall (Kingdom Tower), 2.7 km from Panorama Mall, and 29 km from King Khalid Airport.', 2, '2023-01-13 07:13:30', '2023-12-11 12:35:43', 'en'),
(382, 'home_1', 'our_services', 'خدمات الفندق', NULL, NULL, 'تتوفر في الفندق مجموعة من الخدمات التي تجعل إقامتك محطة رائعة، فمكتب االستقبال في الفندق يعمل على مدار 24 ساعة ويضمن التسجيل السريع للوصول والمغادرة، وفي الفندق سوق صغيرة، باإلضافة إلى خدمات أخرى مثل توصيل البقالة، وتخزين األمتعة، والمواقف المتوفرة ، وصندوق األمانات، ومرافق غسيل مع خدمة ركن السيارة ) والمجانية للسيارات ) المالبس، وخدمة كي المالبس . وإذا كنت من هواة السياحة، فإن الفندق يضم مسبحا في الهواء الطلق. ولهواة اإلنترنت تتوفر خدم ة الواي فاي المجانية في جميع أنحاء الفندق', 1, '2023-12-03 07:17:34', '2023-12-06 20:32:35', 'ar'),
(383, 'home_1', 'offer_ads', 'العروض', NULL, NULL, 'عرض آخر لك!', 2, '2023-12-03 08:05:34', '2023-12-11 12:38:32', 'en'),
(386, 'home_1', 'our_blogs', 'الاخبار', NULL, NULL, 'في الرياض، مدينة العراقة والُتراث وال حَدَاثة في وسط المدينة، عند أهم معالمها الس ياحية ، اختارت شركة فنادق ميرا أن تكون انطالقتها في عالم الفنادق من فئة األربع نجوم من موقع استراتيجي، من شارع األمير محمد بن عبدالعزيز، الشهير بـ(شارع التحلية)، وهو الشارع مَعلما معالم مدينة الرياض، وأصبح احد رموز الحيوي الذي ذاع صيته بوصفه من أهم الرفاهية فيها، والمكان ال مفضل ألفخم الشركات والع المات التجارية العالمية، ليتمتع الفندق بموقعه الحيوي في قلب العاصمة، حيث يُحيط به العديد من المعالم السياحية وأرقى ، ما يجعل نزيل الفندق جزءا المراكز والمحال التجارية والماركات العالمية والمطا عم ال متنوعة  رائعا للمسافرين المه تمين بالتسوق  من الحيوية التي تميز هذا الشارع الراقي، وخيار ا واألن شطة المناسبة للعائلة واألعمال. ويقع الفندق في وسط أشهر المعالم السياحية في مدينة الرياض، إذ يقع على بعد 1.5 كم من برج الفيصلية، و2.3 كم من مركز المملكة التجاري( برج المملكة ) ، و 2.7 كم من بانوراما مول، ويبعد 29 كم عن مطار الملك خالد.', 2, '2023-01-13 07:13:30', '2023-12-11 12:36:07', 'en'),
(387, 'home_1', 'testimonial', 'ما يقوله العملاء عنا', NULL, NULL, 'مع ميرا سترافقك ابتسامة الرضا ؛ للنها شركة سعودية مختصة تترجم ُكل خبراتها في إنشاء الفنادق وتشغيلها لتحقيق رضاك، من خلال الاللتزام بأرقى المواصفات والمقاييس العالمية .', 2, '2023-01-13 07:10:15', '2023-12-11 12:35:22', 'en'),
(388, 'home_1', 'about_us', 'من نحن', NULL, NULL, 'من نحن', 1, '2023-01-13 06:52:00', '2023-12-10 12:54:05', 'ar'),
(389, 'home_1', 'featured_rooms', 'الغرف المميزة', NULL, NULL, 'مع ميرا سترافقك ابتسامة الرضا ؛ ألانها شركة سعودية مختصة تترجم ُكل خبراتها في إنشاء الفنادق وتشغيلها لتحقيق رضاك، من خالل االلتزام بأرقى المواصفات والمقاييس العالمية .', 2, '2023-12-10 08:20:35', '2023-12-11 12:37:38', 'en'),
(390, 'home_1', 'slider_hero', 'معاينة', NULL, '07012023043902-preview.jpg', 'فيديو معاينة لفندقنا', 2, '2023-12-10 22:22:37', '2023-12-10 22:24:31', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `shoppingcart`
--

CREATE TABLE `shoppingcart` (
  `identifier` varchar(191) NOT NULL,
  `instance` varchar(191) NOT NULL,
  `content` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slider_type` varchar(191) DEFAULT NULL,
  `url` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `title` varchar(191) DEFAULT NULL,
  `lan` text DEFAULT NULL,
  `desc` text DEFAULT NULL,
  `is_publish` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `slider_type`, `url`, `image`, `title`, `lan`, `desc`, `is_publish`, `created_at`, `updated_at`) VALUES
(29, 'home_1', 'https://trial.qutell.top/category/1/hotel', '10122023232249-baner-3.jpg', 'Enjoy Your Beautiful Moment', 'en', '{\"sub_title\":\"With Mira, a smile of satisfaction will accompany you; Because it is a specialized Saudi company that translates all its expertise into hotel construction And operate it to your satisfaction, through commitment to the finest International specifications and standards.\",\"button_text\":\"Booking Now\",\"target\":null}', 1, '2023-01-04 09:54:14', '2023-12-17 11:31:57'),
(33, 'home_1', 'https://trial.qutell.top/category/9/hotel', '10122023232249-baner-3.jpg', 'استمتع بلحظاتك الرائعة', 'ar', '{\"sub_title\":\"\\u0645\\u0639 \\u0645\\u064a\\u0631\\u0627 \\u0633\\u062a\\u0631\\u0627\\u0641\\u0642\\u0643 \\u0627\\u0628\\u062a\\u0633\\u0627\\u0645\\u0629 \\u0627\\u0644\\u0631\\u0636\\u0627 \\u061b \\u0623\\u0644\\u0627\\u0646\\u0647\\u0627 \\u0634\\u0631\\u0643\\u0629 \\u0633\\u0639\\u0648\\u062f\\u064a\\u0629 \\u0645\\u062e\\u062a\\u0635\\u0629 \\u062a\\u062a\\u0631\\u062c\\u0645 \\u064f\\u0643\\u0644 \\u062e\\u0628\\u0631\\u0627\\u062a\\u0647\\u0627 \\u0641\\u064a \\u0625\\u0646\\u0634\\u0627\\u0621 \\u0627\\u0644\\u0641\\u0646\\u0627\\u062f\\u0642 \\u0648\\u062a\\u0634\\u063a\\u064a\\u0644\\u0647\\u0627 \\u0644\\u062a\\u062d\\u0642\\u064a\\u0642 \\u0631\\u0636\\u0627\\u0643\\u060c \\u0645\\u0646 \\u062e\\u0627\\u0644\\u0644 \\u0627\\u0627\\u0644\\u0644\\u062a\\u0632\\u0627\\u0645 \\u0628\\u0623\\u0631\\u0642\\u0649 \\u0627\\u0644\\u0645\\u0648\\u0627\\u0635\\u0641\\u0627\\u062a \\u0648\\u0627\\u0644\\u0645\\u0642\\u0627\\u064a\\u064a\\u0633 \\u0627\\u0644\\u0639\\u0627\\u0644\\u0645\\u064a\\u0629 .\",\"button_text\":\"\\u0627\\u062d\\u062c\\u0632 \\u0627\\u0644\\u0622\\u0646\",\"target\":null}', 1, '2023-11-30 08:27:48', '2023-12-17 11:31:16');

-- --------------------------------------------------------

--
-- Table structure for table `social_medias`
--

CREATE TABLE `social_medias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `url` text DEFAULT NULL,
  `social_icon` varchar(120) DEFAULT NULL,
  `target` varchar(100) DEFAULT NULL,
  `is_publish` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_medias`
--

INSERT INTO `social_medias` (`id`, `title`, `url`, `social_icon`, `target`, `is_publish`, `created_at`, `updated_at`) VALUES
(2, 'Facebook', 'https://www.facebook.com/', 'bi bi-facebook', '_blank', 1, '2021-07-12 09:24:54', '2021-07-12 09:49:25'),
(3, 'Twitter', 'https://twitter.com/', 'bi bi-twitter', '_blank', 1, '2021-07-12 09:37:32', '2021-07-12 09:49:25'),
(4, 'Instagram', 'https://www.instagram.com/', 'bi bi-instagram', '_blank', 1, '2021-09-07 10:40:20', '2022-07-22 06:44:00'),
(5, 'Youtube', 'https://www.youtube.com/', 'bi bi-youtube', '_blank', 1, '2021-11-06 10:54:01', '2022-07-22 06:43:53');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email_address` varchar(191) DEFAULT NULL,
  `first_name` varchar(191) DEFAULT NULL,
  `last_name` varchar(191) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `phone_number` varchar(191) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email_address`, `first_name`, `last_name`, `address`, `phone_number`, `status`, `created_at`, `updated_at`) VALUES
(2, 'selimrana@gmail.com', 'Selim Rana', 'Selim Rana', NULL, NULL, 'subscribed', '2021-12-09 12:09:30', '2021-12-09 12:09:30'),
(3, 'aieub_ali@gmail.com', 'AIEUB ALI', 'AIEUB ALI', NULL, NULL, 'subscribed', '2022-01-18 07:51:47', '2022-01-18 07:51:47'),
(4, 'salmaakter@gmail.com', 'SALMA AKTER', 'SALMA AKTER', NULL, NULL, 'subscribed', '2022-01-18 07:56:58', '2022-01-18 07:56:58'),
(5, 'fuadhasan@email.com', 'Fuad Hasan', 'Fuad Hasan', NULL, NULL, 'subscribed', '2022-01-20 09:09:41', '2022-01-20 09:09:41');

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `percentage` double(12,3) NOT NULL,
  `is_publish` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taxes`
--

INSERT INTO `taxes` (`id`, `title`, `percentage`, `is_publish`, `created_at`, `updated_at`) VALUES
(38, 'VAT', 6.000, 1, '2021-09-14 11:19:52', '2023-12-04 20:49:19');

-- --------------------------------------------------------

--
-- Table structure for table `timezones`
--

CREATE TABLE `timezones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `timezone` varchar(100) DEFAULT NULL,
  `timezone_name` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `timezones`
--

INSERT INTO `timezones` (`id`, `timezone`, `timezone_name`, `created_at`, `updated_at`) VALUES
(1, 'Pacific/Midway', 'Midway Island, Samoa', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(2, 'Pacific/Pago_Pago', 'Pago Pago', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(3, 'Pacific/Honolulu', 'Hawaii', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(4, 'America/Anchorage', 'Alaska', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(5, 'America/Vancouver', 'Vancouver', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(6, 'America/Los_Angeles', 'Pacific Time (US and Canada)', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(7, 'America/Tijuana', 'Tijuana', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(8, 'America/Edmonton', 'Edmonton', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(9, 'America/Denver', 'Mountain Time (US and Canada)', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(10, 'America/Phoenix', 'Arizona', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(11, 'America/Mazatlan', 'Mazatlan', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(12, 'America/Winnipeg', 'Winnipeg', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(13, 'America/Regina', 'Saskatchewan', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(14, 'America/Chicago', 'Central Time (US and Canada)', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(15, 'America/Mexico_City', 'Mexico City', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(16, 'America/Guatemala', 'Guatemala', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(17, 'America/El_Salvador', 'El Salvador', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(18, 'America/Managua', 'Managua', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(19, 'America/Costa_Rica', 'Costa Rica', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(20, 'America/Montreal', 'Montreal', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(21, 'America/New_York', 'Eastern Time (US and Canada)', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(22, 'America/Indianapolis', 'Indiana (East)', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(23, 'America/Panama', 'Panama', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(24, 'America/Bogota', 'Bogota', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(25, 'America/Lima', 'Lima', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(26, 'America/Halifax', 'Halifax', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(27, 'America/Puerto_Rico', 'Puerto Rico', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(28, 'America/Caracas', 'Caracas', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(29, 'America/Santiago', 'Santiago', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(30, 'America/St_Johns', 'Newfoundland and Labrador', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(31, 'America/Montevideo', 'Montevideo', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(32, 'America/Araguaina', 'Brasilia', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(33, 'America/Argentina/Buenos_Aires', 'Buenos Aires, Georgetown', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(34, 'America/Godthab', 'Greenland', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(35, 'America/Sao_Paulo', 'Sao Paulo', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(36, 'Atlantic/Azores', 'Azores', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(37, 'Canada/Atlantic', 'Atlantic Time (Canada)', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(38, 'Atlantic/Cape_Verde', 'Cape Verde Islands', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(39, 'UTC', 'Universal Time UTC', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(40, 'Etc/Greenwich', 'Greenwich Mean Time', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(41, 'Europe/Belgrade', 'Belgrade, Bratislava, Ljubljana', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(42, 'CET', 'Sarajevo, Skopje, Zagreb', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(43, 'Atlantic/Reykjavik', 'Reykjavik', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(44, 'Europe/Dublin', 'Dublin', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(45, 'Europe/London', 'London', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(46, 'Europe/Lisbon', 'Lisbon', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(47, 'Africa/Casablanca', 'Casablanca', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(48, 'Africa/Nouakchott', 'Nouakchott', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(49, 'Europe/Oslo', 'Oslo', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(50, 'Europe/Copenhagen', 'Copenhagen', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(51, 'Europe/Brussels', 'Brussels', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(52, 'Europe/Berlin', 'Amsterdam, Berlin, Rome, Stockholm, Vienna', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(53, 'Europe/Helsinki', 'Helsinki', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(54, 'Europe/Amsterdam', 'Amsterdam', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(55, 'Europe/Rome', 'Rome', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(56, 'Europe/Stockholm', 'Stockholm', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(57, 'Europe/Vienna', 'Vienna', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(58, 'Europe/Luxembourg', 'Luxembourg', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(59, 'Europe/Paris', 'Paris', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(60, 'Europe/Zurich', 'Zurich', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(61, 'Europe/Madrid', 'Madrid', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(62, 'Africa/Bangui', 'West Central Africa', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(63, 'Africa/Algiers', 'Algiers', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(64, 'Africa/Tunis', 'Tunis', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(65, 'Africa/Harare', 'Harare, Pretoria', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(66, 'Africa/Nairobi', 'Nairobi', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(67, 'Europe/Warsaw', 'Warsaw', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(68, 'Europe/Prague', 'Prague Bratislava', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(69, 'Europe/Budapest', 'Budapest', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(70, 'Europe/Sofia', 'Sofia', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(71, 'Europe/Istanbul', 'Istanbul', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(72, 'Europe/Athens', 'Athens', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(73, 'Europe/Bucharest', 'Bucharest', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(74, 'Asia/Nicosia', 'Nicosia', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(75, 'Asia/Beirut', 'Beirut', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(76, 'Asia/Damascus', 'Damascus', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(77, 'Asia/Jerusalem', 'Jerusalem', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(78, 'Asia/Amman', 'Amman', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(79, 'Africa/Tripoli', 'Tripoli', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(80, 'Africa/Cairo', 'Cairo', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(81, 'Africa/Johannesburg', 'Johannesburg', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(82, 'Europe/Moscow', 'Moscow', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(83, 'Asia/Baghdad', 'Baghdad', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(84, 'Asia/Kuwait', 'Kuwait', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(85, 'Asia/Riyadh', 'Riyadh', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(86, 'Asia/Bahrain', 'Bahrain', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(87, 'Asia/Qatar', 'Qatar', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(88, 'Asia/Aden', 'Aden', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(89, 'Asia/Tehran', 'Tehran', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(90, 'Africa/Khartoum', 'Khartoum', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(91, 'Africa/Djibouti', 'Djibouti', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(92, 'Africa/Mogadishu', 'Mogadishu', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(93, 'Asia/Dubai', 'Dubai', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(94, 'Asia/Muscat', 'Muscat', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(95, 'Asia/Baku', 'Baku, Tbilisi, Yerevan', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(96, 'Asia/Kabul', 'Kabul', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(97, 'Asia/Yekaterinburg', 'Yekaterinburg', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(98, 'Asia/Tashkent', 'Islamabad, Karachi, Tashkent', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(99, 'Asia/Calcutta', 'India', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(100, 'Asia/Kathmandu', 'Kathmandu', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(101, 'Asia/Novosibirsk', 'Novosibirsk', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(102, 'Asia/Almaty', 'Almaty', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(103, 'Asia/Dacca', 'Dacca', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(104, 'Asia/Krasnoyarsk', 'Krasnoyarsk', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(105, 'Asia/Dhaka', 'Astana, Dhaka', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(106, 'Asia/Bangkok', 'Bangkok', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(107, 'Asia/Saigon', 'Vietnam', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(108, 'Asia/Jakarta', 'Jakarta', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(109, 'Asia/Irkutsk', 'Irkutsk, Ulaanbaatar', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(110, 'Asia/Shanghai', 'Beijing, Shanghai', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(111, 'Asia/Hong_Kong', 'Hong Kong', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(112, 'Asia/Taipei', 'Taipei', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(113, 'Asia/Kuala_Lumpur', 'Kuala Lumpur', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(114, 'Asia/Singapore', 'Singapore', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(115, 'Australia/Perth', 'Perth', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(116, 'Asia/Yakutsk', 'Yakutsk', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(117, 'Asia/Seoul', 'Seoul', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(118, 'Asia/Tokyo', 'Osaka, Sapporo, Tokyo', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(119, 'Australia/Darwin', 'Darwin', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(120, 'Australia/Adelaide', 'Adelaide', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(121, 'Asia/Vladivostok', 'Vladivostok', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(122, 'Pacific/Port_Moresby', 'Guam, Port Moresby', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(123, 'Australia/Brisbane', 'Brisbane', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(124, 'Australia/Sydney', 'Canberra, Melbourne, Sydney', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(125, 'Australia/Hobart', 'Hobart', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(126, 'Asia/Magadan', 'Magadan', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(127, 'SST', 'Solomon Islands', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(128, 'Pacific/Noumea', 'New Caledonia', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(129, 'Asia/Kamchatka', 'Kamchatka', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(130, 'Pacific/Fiji', 'Fiji Islands, Marshall Islands', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(131, 'Pacific/Auckland', 'Auckland, Wellington', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(132, 'Asia/Kolkata', 'Mumbai, Kolkata, New Delhi', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(133, 'Europe/Kiev', 'Kiev', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(134, 'America/Tegucigalpa', 'Tegucigalpa', '2021-03-31 00:00:00', '2021-03-31 01:02:14'),
(135, 'Pacific/Apia', 'Independent State of Samoa', '2021-03-31 00:00:00', '2021-03-31 01:02:14');

-- --------------------------------------------------------

--
-- Table structure for table `tp_options`
--

CREATE TABLE `tp_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL,
  `option_value` longtext DEFAULT NULL,
  `lan` varchar(255) NOT NULL DEFAULT 'en',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tp_options`
--

INSERT INTO `tp_options` (`id`, `option_name`, `option_value`, `lan`, `created_at`, `updated_at`) VALUES
(3, 'general_settings', '{\"company\":\"mira hotel\",\"email\":\"info@qutell.com\",\"phone\":\"966112351510+\",\"site_name\":\"mira Hotel\",\"site_title\":\"Hotel Booking\",\"address\":\"\\u0627\\u0644\\u0633\\u0639\\u0648\\u062f\\u064a\\u0647. \\u0627\\u0644\\u0631\\u064a\\u0627\\u0636\",\"timezone\":\"Africa\\/Cairo\"}', 'en', '2021-03-31 15:59:45', '2023-12-17 09:12:55'),
(5, 'google_recaptcha', '{\"sitekey\":\"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\",\"secretkey\":\"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\",\"is_recaptcha\":0}', 'en', '2021-03-31 17:56:01', '2023-02-18 01:48:34'),
(35, 'mail_settings', '{\"ismail\":0,\"from_name\":\"Qutell\",\"from_mail\":\"info@qutell.com\",\"to_name\":\"Qutell\",\"to_mail\":\"admin@gmail.com\",\"mailer\":\"smtp\",\"smtp_host\":\"mail.companyname.com\",\"smtp_port\":\"465\",\"smtp_security\":\"ssl\",\"smtp_username\":\"admin@companyname.com\",\"smtp_password\":\"xxxxxxxxxxxxxxxx\"}', 'en', '2021-06-03 19:33:17', '2023-11-27 09:15:21'),
(69, 'custom_css', NULL, 'en', '2021-06-06 23:18:38', '2021-11-26 04:38:46'),
(70, 'custom_js', NULL, 'en', '2021-06-06 23:46:24', '2021-11-26 04:37:19'),
(74, 'theme_option_seo', '{\"og_title\":\"Lorem Ipsum un testo segnaposto utilizzato nel settore della tipografia e della stampa.\",\"og_image\":\"16022023173552-600x315-home-1.jpg\",\"og_description\":\"Lorem Ipsum un testo segnaposto utilizzato nel settore della tipografia e della stampa.\",\"og_keywords\":\"Lorem Ipsum un testo segnaposto utilizzato nel settore della tipografia e della stampa.\",\"is_publish\":\"1\"}', 'en', '2021-07-11 10:38:12', '2023-02-16 11:35:57'),
(77, 'theme_logo', '{\"favicon\":\"07122023091202-900x700-photo_6021453864940716628_m.jpg\",\"front_logo\":\"05122023212856-900x700-Mira-Hotel-Arabic-Logo-full-black.png\",\"back_logo\":\"05122023212856-900x700-Mira-Hotel-Arabic-Logo-full-black.png\"}', 'en', '2021-07-12 11:15:36', '2023-12-07 07:12:25'),
(78, 'facebook', '{\"fb_app_id\":null,\"is_publish\":\"2\"}', 'en', '2021-08-05 11:00:35', '2021-11-26 03:59:37'),
(79, 'twitter', '{\"twitter_id\":null,\"is_publish\":\"2\"}', 'en', '2021-08-05 11:10:01', '2021-11-26 03:57:18'),
(80, 'whatsapp', '{\"whatsapp_id\":\"+669 (0) 11 532 0151\",\"whatsapp_text\":\"\\u0645\\u064a\\u0631\\u0627 \\u0627\\u0639\\u0645\\u0627\\u0644\",\"position\":\"left\",\"is_publish\":\"1\"}', 'en', '2021-08-05 11:25:20', '2023-12-14 08:18:47'),
(87, 'theme_option_header', '{\"address\":\"Saudi arabia\",\"phone\":\"+966  (0) 11  532 0151 (Business)\",\"is_publish\":\"1\"}', 'en', '2021-08-29 08:45:26', '2023-12-18 07:11:12'),
(91, 'theme_option_footer', '{\"about_logo\":\"27122022160256-payment.png\",\"about_desc\":null,\"is_publish_about\":\"1\",\"address\":\"Saudi Arabia. Riyadh\",\"phone\":\"+966 (0) 11 532 0151 Mira Business\\r\\n+966 (0) 11 466 1153 Mira Trio\\r\\n+966 (0) 12 614 1040 Mira seaside destination\",\"email\":\"info@qutell.com\",\"is_publish_contact\":\"1\",\"copyright\":\"Mira Hotel\",\"is_publish_copyright\":\"1\",\"payment_gateway_icon\":\"27122022160256-payment.png\",\"is_publish_payment\":\"1\",\"lan\":\"en\"}', 'en', '2021-08-29 11:15:13', '2023-12-18 07:18:33'),
(93, 'home-video', '{\"title\":\"Our Hotel Preview Video\",\"short_desc\":\"We chose the location of the entire hotel to be ideal, as it is located in the Al Hamra area, which enjoys effective supervision of the Red Sea coast and the most beautiful areas of the Jeddah Corniche, so you will enjoy your most beautiful moments with the sea, and let its secrets be revealed! The hotel is located 15 km from King Abdulaziz International Airport and 2 meters from the center of Jeddah. It is close to the main hospital, hospitals and all vital hospitals in Jeddah.\",\"url\":\"#\",\"video_url\":\"https:\\/\\/www.youtube.com\\/watch?v=AlfXYaiAv68\",\"button_text\":\"Book Now\",\"target\":null,\"image\":\"07012023043902-preview.jpg\",\"is_publish\":\"1\"}', 'en', '2021-09-01 11:39:35', '2023-12-18 13:08:48'),
(94, 'facebook-pixel', '{\"fb_pixel_id\":null,\"is_publish\":\"2\"}', 'en', '2021-09-17 11:52:01', '2021-11-26 03:59:21'),
(95, 'google_analytics', '{\"tracking_id\":null,\"is_publish\":\"2\"}', 'en', '2021-09-18 08:11:08', '2023-02-27 09:42:47'),
(96, 'google_tag_manager', '{\"google_tag_manager_id\":null,\"is_publish\":\"2\"}', 'en', '2021-09-18 08:30:10', '2021-11-26 04:35:16'),
(98, 'cash_on_delivery', '{\"description\":\"Pay via cash on\",\"isenable\":1}', 'en', '2021-10-07 10:42:26', '2023-01-29 09:18:05'),
(99, 'bank_transfer', '{\"description\":\"Please send money to our bank account: A\\/C- 12365402547895487454.\",\"isenable\":1}', 'en', '2021-10-07 10:53:34', '2022-05-20 12:05:08'),
(100, 'stripe', '{\"stripe_key\":\"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\",\"stripe_secret\":\"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\",\"currency\":\"usd\",\"isenable\":0}', 'en', '2021-10-07 12:14:49', '2023-02-18 07:53:06'),
(101, 'mailchimp', '{\"mailchimp_api_key\":\"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\",\"audience_id\":\"0123645455455\",\"is_mailchimp\":0}', 'en', '2021-11-01 09:27:17', '2023-02-18 01:51:48'),
(102, 'subscribe_popup', '{\"subscribe_title\":\"Subscribe our newsletter\",\"subscribe_popup_desc\":\"Subscribe to the mailing list to receive updates on special offers, new arrivals and our promotions.\",\"bg_image_popup\":\"11122023080614-mirabusiness13.JPG\",\"background_image\":\"11122023080641-mirabusiness1.jpg\",\"is_subscribe_popup\":1,\"is_subscribe_footer\":1}', 'en', '2021-11-01 10:00:58', '2023-12-11 12:16:02'),
(111, 'seller_settings', '{\"fee_withdrawal\":\"5\",\"product_auto_publish\":1,\"seller_auto_active\":1}', 'en', '2022-01-07 10:45:07', '2022-12-09 07:42:52'),
(112, 'language_switcher', '{\"is_language_switcher\":\"1\"}', 'en', '2022-01-22 10:22:15', '2023-02-18 05:59:42'),
(114, 'paypal', '{\"paypal_client_id\":\"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\",\"paypal_secret\":\"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\",\"paypal_currency\":\"USD\",\"ismode_paypal\":1,\"isenable_paypal\":1}', 'en', '2022-05-19 23:25:59', '2023-12-05 05:50:09'),
(116, 'razorpay', '{\"razorpay_key_id\":\"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\",\"razorpay_key_secret\":\"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\",\"razorpay_currency\":\"USD\",\"ismode_razorpay\":1,\"isenable_razorpay\":0}', 'en', '2022-05-20 00:28:45', '2023-02-18 07:53:32'),
(117, 'mollie', '{\"mollie_api_key\":\"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\",\"mollie_currency\":\"USD\",\"ismode_mollie\":1,\"isenable_mollie\":0}', 'en', '2022-05-20 07:50:45', '2023-02-18 07:53:43'),
(131, 'page_variation', '{\"home_variation\":\"home_1\"}', 'en', '2022-08-11 23:58:42', '2023-02-18 05:59:12'),
(133, 'google_map', '{\"googlemap_apikey\":\"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\",\"is_googlemap\":0}', 'en', '2022-08-27 10:17:37', '2023-02-18 02:05:28'),
(147, 'theme_color', '{\"theme_color\":\"#000000\",\"light_color\":\"#adadad\",\"blue_color\":\"#000000\",\"gray_color\":\"#8d949d\",\"dark_gray_color\":\"#a8acb0\",\"gray400_color\":\"#f1f5f9\",\"gray500_color\":\"#f0eded\",\"black_color\":\"#000000\",\"white_color\":\"#ffffff\",\"backend_theme_color\":\"#757678\"}', 'en', '2022-09-01 23:55:08', '2023-12-17 09:28:57'),
(160, 'cookie_consent', '{\"title\":\"Cookie Consent\",\"message\":\"This website uses cookies or similar technologies, to enhance your browsing experience and provide personalized recommendations. By continuing to use our website, you agree to our\",\"button_text\":\"Accept\",\"learn_more_url\":\"https:\\/\\/relaxly.themeposh.net\\/page\\/47\\/cookie-policy\",\"learn_more_text\":\"Privacy Policy\",\"style\":\"minimal\",\"position\":\"left\",\"is_publish\":\"1\"}', 'en', '2022-10-15 09:49:20', '2023-02-27 09:43:01'),
(169, 'currency', '{\"currency_name\":\"USD\",\"currency_icon\":\"$\",\"currency_position\":\"left\",\"thousands_separator\":\"comma\",\"decimal_separator\":\"point\",\"decimal_digit\":\"2\"}', 'en', '2021-08-21 04:22:13', '2023-02-27 09:40:43'),
(173, 'subheader_bg_images', '{\"blog_bg\":\"07122023095100-photo_6021453864940716606_y.jpg\",\"contact_bg\":\"11122023081140-img-24.jpg\",\"register_bg\":\"11122023081856-mirabusiness14.jpg\",\"login_bg\":\"11122023081948-mirabusiness3.JPG\",\"reset_password_bg\":\"11122023084654-img-23.jpg\",\"dashboard_bg\":\"11122023081856-mirabusiness14.jpg\",\"profile_bg\":\"07122023095100-photo_6021453864940716606_y.jpg\",\"change_password_bg\":\"07122023095100-photo_6021453864940716606_y.jpg\",\"booking_bg\":\"07122023095100-photo_6021453864940716606_y.jpg\"}', 'en', '2023-01-14 09:43:04', '2023-12-13 07:56:22'),
(190, 'vipc', '{\"bactive\":0,\"resetkey\":0}', 'en', '2023-03-05 10:14:50', '2023-03-05 10:14:50'),
(198, 'home-video', '{\"title\":\"\\u0634\\u0627\\u0647\\u062f \\u0633\\u0644\\u0633\\u0629 \\u0641\\u0646\\u0627\\u062f\\u0642\\u0646\\u0627\",\"short_desc\":\"\\u0627\\u062e\\u062a\\u0631\\u0646\\u0627 \\u0645\\u0648\\u0642\\u0639 \\u0627\\u0644\\u0641\\u0646\\u062f\\u0642 \\u0628\\u0639\\u0646\\u0627\\u064a\\u0629 \\u0644\\u064a\\u0643\\u0648\\u0646 \\u0645\\u062b\\u0627\\u0644\\u064a\\u0627\\u060c \\u0641\\u0647\\u0648 \\u064a\\u0642\\u0639 \\u0641\\u064a \\u0645\\u0646\\u0637\\u0642\\u0629 \\u0627\\u0644\\u062d\\u0645\\u0631\\u0627 \\u0627\\u0644\\u062a\\u064a \\u062a\\u062a\\u0645\\u062a\\u0639 \\u0628\\u0625\\u0637\\u0644\\u0627\\u0644\\u0629 \\u062e\\u0644\\u0627\\u0628\\u0629 \\u0639\\u0644\\u0649 \\u0633\\u0627\\u062d\\u0644 \\u0627\\u0644\\u0628\\u062d\\u0631 \\u0627\\u0644\\u0623\\u062d\\u0645\\u0631 \\u0648\\u0623\\u062c\\u0645\\u0644 \\u0645\\u0646\\u0627\\u0637\\u0642 \\u0643\\u0648\\u0631\\u0646\\u064a\\u0634 \\u062c\\u062f\\u0629\\u060c \\u0644\\u0630\\u0644\\u0643 \\u0633\\u062a\\u0633\\u062a\\u0645\\u062a\\u0639 \\u0628\\u0623\\u062c\\u0645\\u0644 \\u0644\\u062d\\u0638\\u0627\\u062a\\u0643 \\u0645\\u0639 \\u0627\\u0644\\u0628\\u062d\\u0631\\u060c \\u0648\\u062f\\u0639\\u0647\\u0627 \\u062a\\u0646\\u0643\\u0634\\u0641 \\u0623\\u0633\\u0631\\u0627\\u0631\\u0647\\u0627! \\u064a\\u0642\\u0639 \\u0627\\u0644\\u0641\\u0646\\u062f\\u0642 \\u0639\\u0644\\u0649 \\u0628\\u0639\\u062f 15 \\u0643\\u0645 \\u0645\\u0646 \\u0645\\u0637\\u0627\\u0631 \\u0627\\u0644\\u0645\\u0644\\u0643 \\u0639\\u0628\\u062f \\u0627\\u0644\\u0639\\u0632\\u064a\\u0632 \\u0627\\u0644\\u062f\\u0648\\u0644\\u064a \\u0648\\u0643\\u064a\\u0644\\u0648\\u0645\\u062a\\u0631\\u064a\\u0646 \\u0645\\u0646 \\u0648\\u0633\\u0637 \\u062c\\u062f\\u0629. \\u0625\\u0646\\u0647 \\u0642\\u0631\\u064a\\u0628 \\u0645\\u0646 \\u0627\\u0644\\u0645\\u0631\\u0627\\u0643\\u0632 \\u0627\\u0644\\u062a\\u062c\\u0627\\u0631\\u064a\\u0629 \\u0648\\u0627\\u0644\\u0634\\u0631\\u0643\\u0627\\u062a \\u0627\\u0644\\u0631\\u0626\\u064a\\u0633\\u064a\\u0629 \\u0648\\u0627\\u0644\\u0628\\u0646\\u0648\\u0643 \\u0648\\u0627\\u0644\\u0645\\u0633\\u062a\\u0634\\u0641\\u064a\\u0627\\u062a \\u0648\\u062c\\u0645\\u064a\\u0639 \\u0627\\u0644\\u0623\\u0645\\u0627\\u0643\\u0646 \\u0627\\u0644\\u062d\\u064a\\u0648\\u064a\\u0629 \\u0641\\u064a \\u062c\\u062f\\u0629.\",\"url\":\"https:\\/\\/google.com\",\"video_url\":\"\\u0627\\u0644\\u0639\\u0646\\u0648\\u0627\\u0646\\u0627\\u0644\\u0639\\u0646\\u0648\\u0627\\u0646\",\"button_text\":\"\\u062a\\u0635\\u0641\\u062d\",\"target\":null,\"image\":\"11122023081948-mirabusiness3.JPG\",\"is_publish\":\"1\"}', 'ar', '2023-12-18 06:38:21', '2023-12-18 13:07:57'),
(199, 'theme_option_header', '{\"address\":\"\\u0627\\u0644\\u0633\\u0639\\u0648\\u062f\\u064a\\u0629. \\u0627\\u0644\\u0631\\u064a\\u0627\\u0636\",\"phone\":\"+966  (0) 11  532 0151\",\"is_publish\":\"1\"}', 'ar', '2023-12-18 07:10:25', '2023-12-18 12:18:50'),
(200, 'theme_option_footer', '{\"about_logo\":\"27122022160256-payment.png\",\"about_desc\":null,\"is_publish_about\":\"1\",\"address\":\"\\u0627\\u0644\\u0633\\u0639\\u0648\\u062f\\u064a\\u0629. \\u0627\\u0644\\u0631\\u064a\\u0627\\u0636\",\"phone\":\"+966  (0) 11  532 0151 \\r\\n+966  (0) 11 466 1153\\r\\n+966  (0) 12 614 1040\",\"email\":\"info@qutell.com\",\"is_publish_contact\":\"1\",\"copyright\":\"\\u0641\\u0646\\u0627\\u062f\\u0642 \\u0645\\u064a\\u0631\\u0627\",\"is_publish_copyright\":\"1\",\"payment_gateway_icon\":\"27122022160256-payment.png\",\"is_publish_payment\":\"1\",\"lan\":\"ar\"}', 'ar', '2021-08-29 11:15:13', '2023-12-18 12:18:07');

-- --------------------------------------------------------

--
-- Table structure for table `tp_status`
--

CREATE TABLE `tp_status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tp_status`
--

INSERT INTO `tp_status` (`id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Publish', '2021-05-01 04:46:48', '2021-05-01 04:46:50'),
(2, 'Draft', '2021-05-01 04:47:05', '2021-05-01 04:47:06');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `shop_name` varchar(200) DEFAULT NULL,
  `shop_url` varchar(200) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `state` varchar(200) DEFAULT NULL,
  `zip_code` varchar(200) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `bactive` varchar(200) DEFAULT NULL,
  `bkey` varchar(200) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `shop_name`, `shop_url`, `phone`, `address`, `city`, `state`, `zip_code`, `country_id`, `photo`, `bactive`, `bkey`, `status_id`, `role_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@themeposh.xyz', '2023-12-05 06:58:31', '$2y$10$AKDmqvsZlnRmjJwWP66/KurVIIMIbxVkQxRaeEWUeESpHzj32sQEa', NULL, NULL, '0123456789', '56 King Street, New York', NULL, NULL, NULL, NULL, '27122022160205-400x400-photo.png', 'YWRtaW4xMjM0NTY=', NULL, 1, 1, 'DybUigMB06zxLMD0UwHlYYnv7bqAQsCXWlAHJj5XUbDsMsd11oaDqmYZyiNK', '2021-03-26 13:22:14', '2023-12-05 05:21:06'),
(75, 'Receptionist', 'receptionist@themeposh.xyz', '2023-12-05 06:58:24', '$2y$10$WrIBihqmTp4CODOyXa8SFuF6nLaRA/1G6T/hlw6npDNQX4i6aIl0W', NULL, NULL, '0123456789', '58 King Street, New York', NULL, NULL, NULL, NULL, '10012023044315-900x700-Rectangle 2-4.jpg', 'cmVjZXB0aW9uaXN0MTIzNDU2', NULL, 1, 3, 'jYqn80y86cpNZOZP6qkxV0rf1pNcNgvdK6IzjL98fSmQkvjgtU48ErGBobVx', '2023-02-09 21:41:55', '2023-12-04 20:19:41'),
(110, 'Customer', 'customer@gmail.com', '2023-12-05 06:58:22', '$2y$10$MBzXeEMq4i9M/zjCHk9xuO/0sP6bGHyTy1emHBq6xYEHVUVPCO5FW', NULL, NULL, '0123456789', NULL, NULL, NULL, NULL, NULL, NULL, 'Y3VzdG9tZXIxMjM0NTY=', NULL, 1, 2, NULL, '2023-12-05 04:57:36', '2023-12-05 05:12:12'),
(111, 'mariam', 'm.qassem4175@gmail.com', NULL, '$2y$10$dWAiBkALwSA5mOJrD0s68ebJkGOMxFys0gfm2y7A9gAEQEg2EVf5S', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MTIzNDU2Nzg5', NULL, 1, 2, NULL, '2023-12-14 07:22:54', '2023-12-14 07:22:54');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(150) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`id`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '2021-04-01 21:57:16', '2021-04-01 21:57:19'),
(2, 'Customer', '2021-04-01 21:57:29', '2021-04-01 21:57:31'),
(3, 'Receptionist', '2021-12-07 16:36:42', '2021-12-07 16:36:42');

-- --------------------------------------------------------

--
-- Table structure for table `user_status`
--

CREATE TABLE `user_status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(150) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_status`
--

INSERT INTO `user_status` (`id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Active', '2021-04-01 21:57:57', '2021-04-01 21:57:59'),
(2, 'Inactive', '2021-04-01 21:58:10', '2021-04-01 21:58:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `amenities`
--
ALTER TABLE `amenities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bedtypes`
--
ALTER TABLE `bedtypes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blogs_slug_unique` (`slug`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_categories_slug_unique` (`slug`);

--
-- Indexes for table `booking_manages`
--
ALTER TABLE `booking_manages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_status`
--
ALTER TABLE `booking_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `complements`
--
ALTER TABLE `complements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `languages_language_code_unique` (`language_code`);

--
-- Indexes for table `lankeyvalues`
--
ALTER TABLE `lankeyvalues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media_options`
--
ALTER TABLE `media_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media_settings`
--
ALTER TABLE `media_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_settings_media_type_unique` (`media_type`);

--
-- Indexes for table `mega_menus`
--
ALTER TABLE `mega_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_menu_name_unique` (`menu_name`);

--
-- Indexes for table `menu_childs`
--
ALTER TABLE `menu_childs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_parents`
--
ALTER TABLE `menu_parents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offer_ads`
--
ALTER TABLE `offer_ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_method`
--
ALTER TABLE `payment_method`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_status`
--
ALTER TABLE `payment_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rooms_slug_unique` (`slug`);

--
-- Indexes for table `room_assigns`
--
ALTER TABLE `room_assigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_images`
--
ALTER TABLE `room_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_manages`
--
ALTER TABLE `room_manages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `section_contents`
--
ALTER TABLE `section_contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `section_manages`
--
ALTER TABLE `section_manages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shoppingcart`
--
ALTER TABLE `shoppingcart`
  ADD PRIMARY KEY (`identifier`,`instance`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_medias`
--
ALTER TABLE `social_medias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscribers_email_address_unique` (`email_address`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timezones`
--
ALTER TABLE `timezones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tp_options`
--
ALTER TABLE `tp_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tp_status`
--
ALTER TABLE `tp_status`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tp_status_status_unique` (`status`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_status`
--
ALTER TABLE `user_status`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `amenities`
--
ALTER TABLE `amenities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `bedtypes`
--
ALTER TABLE `bedtypes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `booking_manages`
--
ALTER TABLE `booking_manages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `booking_status`
--
ALTER TABLE `booking_status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `complements`
--
ALTER TABLE `complements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=254;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `lankeyvalues`
--
ALTER TABLE `lankeyvalues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10596;

--
-- AUTO_INCREMENT for table `media_options`
--
ALTER TABLE `media_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=992;

--
-- AUTO_INCREMENT for table `media_settings`
--
ALTER TABLE `media_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `mega_menus`
--
ALTER TABLE `mega_menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1306;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `menu_childs`
--
ALTER TABLE `menu_childs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=566;

--
-- AUTO_INCREMENT for table `menu_parents`
--
ALTER TABLE `menu_parents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1066;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `offer_ads`
--
ALTER TABLE `offer_ads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `payment_method`
--
ALTER TABLE `payment_method`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payment_status`
--
ALTER TABLE `payment_status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `room_assigns`
--
ALTER TABLE `room_assigns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=279;

--
-- AUTO_INCREMENT for table `room_images`
--
ALTER TABLE `room_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=277;

--
-- AUTO_INCREMENT for table `room_manages`
--
ALTER TABLE `room_manages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=235;

--
-- AUTO_INCREMENT for table `section_contents`
--
ALTER TABLE `section_contents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `section_manages`
--
ALTER TABLE `section_manages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=391;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `social_medias`
--
ALTER TABLE `social_medias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `timezones`
--
ALTER TABLE `timezones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `tp_options`
--
ALTER TABLE `tp_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `tp_status`
--
ALTER TABLE `tp_status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_status`
--
ALTER TABLE `user_status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
