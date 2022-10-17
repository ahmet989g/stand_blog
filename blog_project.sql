-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1:3306
-- Üretim Zamanı: 16 Eki 2022, 23:44:39
-- Sunucu sürümü: 5.7.31
-- PHP Sürümü: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `blog_project`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `banner`
--

DROP TABLE IF EXISTS `banner`;
CREATE TABLE IF NOT EXISTS `banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL,
  `img_url` varchar(100) NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '0',
  `is_active` tinyint(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `is_active` (`is_active`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `banner`
--

INSERT INTO `banner` (`id`, `title`, `url`, `img_url`, `priority`, `is_active`) VALUES
(1, 'Morbi dapibus condimentum', 'morbi-dapibus-condimentum', 'banner-item-01.jpg', 1, 1),
(2, 'Donec porttitor augue at velit', 'donec-porttitor-augue-at-velit', 'banner-item-02.jpg', 2, 1),
(3, 'Best HTML Templates on TemplateMo', 'best-html-templates-on-templatemo', 'banner-item-03.jpg', 3, 1),
(4, 'Responsive and Mobile Ready Layouts', 'responsive-and-mobile-ready-layouts', 'banner-item-04.jpg', 4, 1),
(5, 'Cras congue sed augue id ullamcorper', 'cras-congue-sed-augue-id-ullamcorper', 'banner-item-05.jpg', 5, 1),
(6, 'Suspendisse nec aliquet ligula', 'suspendisse-nec-aliquet-ligula', 'banner-item-06.jpg', 6, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `blog`
--

DROP TABLE IF EXISTS `blog`;
CREATE TABLE IF NOT EXISTS `blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `img_url` varchar(200) DEFAULT NULL,
  `is_home` tinyint(2) NOT NULL DEFAULT '0' COMMENT 'Show on homepage',
  `created_at` datetime NOT NULL,
  `is_active` tinyint(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `url_2` (`url`),
  KEY `is_home` (`is_home`),
  KEY `is_active` (`is_active`),
  KEY `url` (`url`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `blog`
--

INSERT INTO `blog` (`id`, `title`, `url`, `description`, `img_url`, `is_home`, `created_at`, `is_active`) VALUES
(1, 'Morbi dapibus condimentum', 'morbi-dapibus-condimentum', '<p>YLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br/><br/>\r\n\r\nYLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br/><br/>\r\n\r\nYLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br/><br/>\r\n\r\nYLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'blog-post-01.jpg', 1, '2022-10-16 00:43:36', 1),
(2, 'Donec porttitor augue at velit', 'donec-porttitor-augue-at-velit', '<p>Proin sodales ultricies ante, id viverra metus faucibus quis. Cras vitae nulla ipsum. Vestibulum enim est, pellentesque sit amet maximus vitae, euismod a purus. Aliquam in libero dictum magna laoreet auctor. Nullam id luctus elit, sed volutpat nisl. Sed tristique libero eget congue mattis. Praesent a fringilla turpis. Suspendisse nec aliquam nisl, in gravida eros. Nam vitae ligula lectus. Maecenas pharetra ipsum ante, dictum ornare diam tincidunt a. Maecenas purus est, mattis vel massa ut, vestibulum pharetra lorem. In porttitor finibus pretium.<br/><br/>\r\n\r\nVivamus malesuada in risus vel sollicitudin. Etiam odio ipsum, volutpat et gravida at, viverra eget purus. Etiam facilisis hendrerit scelerisque. Aliquam fringilla enim id augue dictum, rutrum malesuada nulla accumsan. Cras sed euismod tellus, at sollicitudin lorem. Integer suscipit molestie blandit. In consectetur, quam eu ultricies viverra, arcu libero luctus ipsum, a venenatis mauris eros at dolor. Morbi dapibus risus magna, ullamcorper lacinia lorem fringilla vel. Cras consequat purus a ornare posuere. Donec orci enim, lacinia quis maximus vitae, elementum vel augue. Sed eget lectus porta, fermentum nisl eget, vestibulum enim. Nulla aliquam ac ex eget scelerisque.<br/><br/>\r\n\r\nEtiam eros nulla, imperdiet ut imperdiet eu, cursus sagittis nisl. Curabitur et turpis ac nunc bibendum facilisis vel scelerisque nulla. Mauris dignissim risus et eros interdum, id fringilla ex vestibulum. Vestibulum sed pharetra turpis, a varius tortor. Sed dignissim pulvinar libero id commodo. Nam dictum viverra turpis. Quisque at erat eget libero interdum faucibus. Vestibulum molestie lorem augue, a pulvinar lacus sagittis et. Maecenas sed mi leo. Vestibulum et velit vitae massa rhoncus tristique tincidunt eget justo. Cras dignissim mollis nunc quis accumsan.<br/><br/>\r\n\r\nIn vitae mattis nunc. Donec rhoncus, lectus nec pulvinar mattis, velit felis fringilla ipsum, ut dictum sem dui vel quam. Cras tempor egestas ligula, vitae gravida nisl ullamcorper ut. Vivamus dictum interdum porttitor. Nullam vehicula risus purus, non feugiat nibh luctus vitae. Interdum et malesuada fames ac ante ipsum primis in faucibus. Ut tincidunt leo a blandit porttitor. Vestibulum euismod mattis aliquet.<br/><br/>\r\n\r\nPhasellus mollis arcu sed enim porta, luctus pulvinar nisi dapibus. Ut sed orci fermentum, porta sem et, vehicula magna. Suspendisse eget tempor justo. Suspendisse ipsum odio, porta tristique aliquam nec, placerat non neque. Cras molestie nibh ligula, ut aliquam mauris euismod sed. Phasellus congue mi non sapien placerat facilisis. Donec dapibus scelerisque tellus vel tristique. Mauris eu lectus sed est egestas faucibus. Duis lacinia ligula ligula. Ut vulputate velit sed commodo porta. Praesent sit amet ex posuere, congue felis ac, luctus arcu. Donec hendrerit, nulla ac blandit lacinia, eros dui porttitor arcu, vel volutpat arcu sapien ac erat. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>', 'blog-post-02.jpg', 1, '2022-10-16 00:44:11', 1),
(3, 'Best HTML Templates on TemplateMo', 'best-html-templates-on-templatemo', '<p>Ut sed congue tortor. Nulla facilisi. Nulla ac mi mi. Mauris venenatis imperdiet justo, sed pellentesque metus luctus nec. Proin euismod odio ligula, non rutrum odio semper ac. Mauris auctor nunc et ipsum commodo, et eleifend diam venenatis. Curabitur viverra, dolor non tincidunt scelerisque, turpis tellus consequat justo, vel ultricies nunc sem non nunc. Praesent at enim interdum ex imperdiet mollis. Ut cursus fringilla libero a sollicitudin. Quisque arcu dui, finibus ut lobortis id, ullamcorper sit amet urna. Aliquam convallis luctus ex et aliquam. Donec rhoncus felis non sollicitudin luctus.<br/><br/>\r\n\r\nAliquam egestas ex ac lobortis pellentesque. Phasellus vehicula ligula risus, vel ultricies enim dignissim ornare. Praesent a mauris vitae tortor luctus venenatis. Maecenas fringilla rhoncus volutpat. Maecenas pulvinar molestie urna quis pretium. Sed tristique est at turpis condimentum varius. Nunc at urna in enim varius ornare eu vitae augue. Nunc porta velit tincidunt, vehicula libero in, fringilla neque. Ut finibus metus sed pulvinar commodo. Sed aliquet orci libero. Curabitur in nunc suscipit, congue purus id, tempor urna. Suspendisse facilisis luctus dui, at vulputate enim faucibus ornare. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nunc vulputate cursus quam et ultricies. Cras eu varius velit. Morbi vitae ex vitae sapien vestibulum luctus et nec ligula.<br/><br/>\r\n\r\nNullam a odio est. Morbi non metus sit amet urna sodales maximus ut id nulla. Praesent eu maximus elit. Duis at lacus risus. Vestibulum a turpis egestas, venenatis magna nec, porta libero. Morbi sem dui, ultricies sit amet aliquet nec, posuere at nisi. Aliquam dictum elit sed lectus scelerisque, ac efficitur erat ornare. Duis pharetra velit ex, id porttitor elit mollis nec. Nulla varius, sapien sit amet bibendum euismod, erat nibh facilisis lorem, ac sagittis urna lectus eu risus. Sed vulputate ornare ante, sit amet hendrerit risus ullamcorper et. Nulla ut nulla dui. Cras sed lobortis ex. Nam at scelerisque lacus. Donec malesuada arcu sed finibus aliquam.<br/><br/>\r\n\r\nSed ultrices sapien ac nisl ornare vulputate. Vivamus pellentesque quam et egestas vulputate. Morbi tincidunt urna id nisi dapibus, eget malesuada libero ultricies. Aliquam luctus nulla in vestibulum egestas. Aliquam sit amet lorem quis tellus eleifend posuere nec in nisi. Etiam porttitor hendrerit ullamcorper. Phasellus vehicula augue nibh, eu mollis elit scelerisque vulputate. Praesent varius ultrices odio et accumsan. Aliquam facilisis egestas diam, vitae congue justo consequat eget. Vestibulum volutpat dolor sapien, condimentum elementum velit fermentum sit amet. Aliquam blandit odio nisi, euismod ultrices ipsum iaculis eu. Suspendisse dolor eros, dictum eu massa eget, fermentum posuere lacus. Quisque in sapien sed magna feugiat mattis et in lacus. Donec blandit congue aliquam. Aenean tincidunt imperdiet metus et commodo.<br/><br/>\r\n\r\nSed magna arcu, auctor vitae metus id, rutrum mollis massa. Sed orci velit, porttitor vel dolor et, fermentum pellentesque diam. Pellentesque lobortis metus ac nulla varius, sit amet sollicitudin ligula scelerisque. Nunc dictum ante lobortis metus faucibus pretium. Aliquam vitae enim facilisis, pulvinar felis elementum, rutrum arcu. Nam quis elementum nulla. Sed vel augue placerat, facilisis sapien quis, tempor ante. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>', 'blog-post-03.jpg', 1, '2022-10-16 00:45:36', 1),
(4, 'Responsive and Mobile Ready Layouts', 'responsive-and-mobile-ready-layouts', '<p>Phasellus ut fringilla mi. Nullam luctus tincidunt magna eu luctus. Duis vehicula neque at odio tempus, eu varius augue feugiat. Suspendisse et blandit lorem. In ornare dui at eleifend iaculis. Ut pretium interdum libero, ut scelerisque felis dignissim id. Mauris varius dolor non risus condimentum, sit amet gravida mauris venenatis. Aliquam pharetra orci sed diam imperdiet, at tincidunt massa malesuada. Pellentesque a tortor id mi molestie pellentesque et et leo. Morbi a scelerisque lorem.<br/><br/>\r\n\r\nNam tortor mauris, vestibulum eu aliquet sed, euismod a magna. Aliquam posuere enim non tincidunt egestas. Nam efficitur eros quis mauris blandit, egestas vestibulum mauris sollicitudin. Vestibulum commodo ac sem sed iaculis. Pellentesque iaculis magna ornare, bibendum nibh eget, consequat nulla. Proin consequat rutrum ipsum ut pellentesque. Nam odio elit, varius eget mauris eget, dictum tristique neque. Maecenas vel posuere enim, nec dignissim quam. Nulla eget neque eget nulla rhoncus mollis. In pellentesque porta sollicitudin. Sed scelerisque massa a nulla mollis tempor. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed molestie, erat in tristique pulvinar, neque eros imperdiet nibh, vehicula pharetra mi tortor ac orci. Donec imperdiet arcu ac ligula vulputate, et facilisis lacus tincidunt. Curabitur viverra, diam vel rhoncus rutrum, lorem velit venenatis purus, vitae sollicitudin tortor sem id elit. Aenean dictum in neque at sodales.<br/><br/>\r\n\r\nCras malesuada facilisis neque, id suscipit eros placerat ac. In mattis urna et faucibus consequat. Curabitur ex libero, eleifend sit amet ipsum nec, suscipit convallis nisi. Donec non mi at dolor ultrices elementum. Integer tincidunt, nisl non euismod mattis, eros metus malesuada enim, sed finibus augue felis bibendum metus. Curabitur sollicitudin felis a augue accumsan, in vestibulum tellus dictum. Cras a finibus arcu, sit amet semper mi. Nulla facilisis tempus felis nec tincidunt. Nullam imperdiet sapien sapien, non congue sem faucibus vitae. Sed efficitur dolor eu nibh elementum gravida. In hac habitasse platea dictumst. Pellentesque at justo ut nisi vestibulum dapibus sit amet a arcu. Etiam varius sapien et magna vehicula dapibus.<br/><br/>\r\n\r\nUt fringilla, dolor nec consequat vehicula, lectus purus eleifend tortor, vitae fringilla nisi arcu a neque. Phasellus pretium nibh eget libero lobortis, vel luctus metus tincidunt. Phasellus ornare at velit sit amet mattis. Cras sollicitudin ullamcorper magna, in gravida risus ullamcorper at. Sed eget varius lacus. Mauris venenatis sodales massa, eget bibendum nulla. Aenean pellentesque purus in pretium ultrices. Curabitur nec mauris id ante elementum varius. Nulla ultrices dolor urna, eu laoreet massa fermentum vel. Maecenas molestie suscipit blandit. Curabitur vitae ex a enim volutpat viverra id id sem. Nunc aliquam est at tortor sodales, ac congue erat posuere. Praesent luctus metus odio, id sagittis orci placerat quis. Sed et turpis et purus vestibulum placerat in non eros.<br/><br/>\r\n\r\nEtiam quis ex ornare odio posuere faucibus non vel tortor. Quisque convallis metus vitae orci tincidunt ultrices vulputate eget odio. Phasellus vehicula metus vitae eros imperdiet pharetra. Praesent eleifend auctor metus, at lacinia tellus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed tincidunt sapien nec justo consectetur tempus. Suspendisse luctus tristique ligula non efficitur. Ut scelerisque efficitur metus, sit amet rutrum ex bibendum ultricies. Proin aliquam, tortor vitae mattis fermentum, purus tortor faucibus lorem, ut interdum metus ex id nisl. Aliquam consectetur mi lorem. Nulla ut porttitor diam, eget pulvinar diam. Maecenas posuere tortor nibh, tincidunt venenatis turpis elementum vehicula.</p>', 'blog-post-01.jpg', 1, '2022-10-16 00:46:18', 1),
(5, 'Cras congue sed augue id ullamcorper', 'cras-congue-sed-augue-id-ullamcorper', '<p>Duis placerat commodo aliquet. Phasellus pulvinar nibh eget augue vestibulum dictum. Nullam convallis id eros nec euismod. Etiam congue, tellus vitae porta pulvinar, quam dui dictum diam, at laoreet mauris nunc eu nunc. Phasellus dapibus diam non erat condimentum, non mattis eros finibus. Sed fermentum arcu sem, eget gravida augue auctor non. Pellentesque suscipit facilisis tristique. Suspendisse lacinia suscipit congue.<br/><br/>\r\n\r\nVestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Etiam ac nisl arcu. Nunc scelerisque posuere quam. Maecenas dapibus nunc ut ipsum malesuada malesuada. Morbi ac ipsum nunc. In finibus nec risus nec pretium. Quisque sagittis lorem eu erat gravida malesuada. Aliquam eget lorem ultrices, vulputate lectus eget, varius ligula. Interdum et malesuada fames ac ante ipsum primis in faucibus. In nec justo lorem. Nullam a sodales nulla.<br/><br/>\r\n\r\nCurabitur a ligula sem. Cras fermentum ex turpis, id facilisis quam rhoncus nec. Integer augue tellus, porta at arcu nec, volutpat lobortis nibh. In et risus vitae lacus viverra dictum. Pellentesque ut dui in ante ornare mattis et id turpis. Duis non consectetur elit, vel congue neque. Vestibulum sagittis id diam eget facilisis. Mauris eu diam non felis mattis elementum. Vestibulum dolor dolor, posuere eu interdum vulputate, pellentesque at lorem. Nullam in felis leo. Fusce tristique, ante ac consequat gravida, massa magna efficitur nisl, a ultricies purus mauris eu justo. Nulla sodales est nec nunc mattis, sed sodales nibh lacinia. Morbi pretium urna nisi, ut sollicitudin sapien pulvinar ut.<br/><br/>\r\n\r\nOrci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin nulla sapien, feugiat ut lobortis non, commodo ut ipsum. Quisque ornare ac erat sit amet accumsan. Sed eu nulla quam. Duis eget fermentum justo. Duis purus ipsum, rutrum at turpis sed, semper feugiat elit. Etiam rutrum elit non massa eleifend scelerisque. Cras ligula sem, euismod id nisi sit amet, tempus malesuada augue. Nullam facilisis, elit non sollicitudin suscipit, magna turpis fringilla dui, sit amet facilisis mauris mauris id mi.<br/><br/>\r\n\r\nCurabitur aliquet interdum diam eget imperdiet. Sed ut maximus massa, in pretium dui. Praesent eu nulla ultrices, elementum ligula vel, venenatis nunc. Donec urna est, dignissim quis velit a, convallis consequat dui. Phasellus eu vestibulum eros, in tincidunt tortor. Suspendisse odio nisi, sodales sed arcu eu, sagittis mollis eros. Proin accumsan consectetur ultricies.</p>', 'blog-post-02.jpg', 0, '2022-10-16 00:47:19', 1),
(6, 'Suspendisse nec aliquet ligula', 'suspendisse-nec-aliquet-ligula', '<p>Sed tincidunt eros varius, ornare augue vel, vulputate ex. Cras ac iaculis nunc, nec viverra quam. Sed varius ipsum ex. Integer et maximus tellus. Nulla convallis magna vitae dapibus ultricies. Vestibulum at ante a est iaculis ultricies a sed nisl. Suspendisse sagittis nibh ac sodales cursus. Quisque sodales ac sapien vitae sagittis. Suspendisse risus nulla, consectetur sed sem ac, scelerisque cursus est. Aenean vulputate pharetra vestibulum. Nam porta sapien vel est finibus pharetra. Aenean viverra nibh sem, et laoreet felis molestie at. Integer mattis sapien eu placerat tempus. Phasellus ac nulla pulvinar velit condimentum aliquet at sit amet nulla.<br/><br/>\r\n\r\nPraesent eu finibus massa. Proin quis felis condimentum mauris tempor ultricies. Nulla convallis sapien a mi consequat, et porttitor sapien sagittis. Phasellus eget sollicitudin lectus, sed faucibus dui. Quisque placerat ultricies mi id placerat. Aenean venenatis, eros nec fringilla posuere, ante libero fringilla nibh, vel porta risus lectus ut ligula. Maecenas tempor a mi eget porttitor. Etiam lacinia eleifend massa in tincidunt. Duis pharetra elit eu est placerat, quis maximus nibh congue. Sed laoreet mauris ut nunc eleifend tristique. Aliquam venenatis, justo vitae sagittis auctor, elit tellus luctus libero, et maximus diam dui vitae magna. Proin pellentesque massa quis leo efficitur euismod. Pellentesque vehicula leo eget aliquet ultricies. Pellentesque finibus diam a urna aliquam, non maximus justo feugiat. Vivamus et justo vel metus faucibus laoreet tincidunt vitae dui. Ut et enim quis orci mattis hendrerit.<br/><br/>\r\n\r\nQuisque semper ipsum in purus condimentum, a placerat lectus dapibus. Suspendisse facilisis ligula eget porttitor venenatis. Etiam dui dui, tincidunt cursus ultrices ac, vestibulum nec metus. In molestie ut ipsum elementum aliquet. Nullam mattis ex ultricies nisl laoreet eleifend. Sed vitae ante sed nunc ornare pellentesque. Nulla vitae varius nisl. Pellentesque imperdiet purus mi, sit amet consequat tortor iaculis at. Duis hendrerit, ipsum eget rhoncus lobortis, magna tortor placerat dui, quis ultrices nulla arcu eget felis. Integer egestas magna vel tortor convallis, suscipit faucibus est rhoncus.<br/><br/>\r\n\r\nNunc ultricies diam augue, vitae consequat arcu suscipit vitae. Nunc consectetur orci nec leo blandit tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris et consequat arcu. Aliquam ut auctor lorem. Sed tempus turpis id est congue, non aliquet velit laoreet. Sed varius ipsum odio, ullamcorper fermentum augue bibendum id. In convallis, arcu nec tempor facilisis, nisl urna auctor dui, eget tempor velit nisi id felis. Curabitur nec interdum augue, ac rutrum dui.<br/><br/>\r\n\r\nDonec rutrum fermentum magna eu mattis. In velit velit, euismod eget egestas in, pulvinar id leo. Vivamus lacinia volutpat mi, sed maximus nibh rhoncus id. Morbi euismod condimentum sapien quis cursus. Nunc non rutrum arcu, dapibus convallis nisi. Nam sed consequat mauris, id porttitor lectus. In vehicula ultrices tempor. Nullam porttitor pretium varius. Vivamus eu odio id diam placerat maximus. Nam luctus gravida risus, vitae malesuada est faucibus at. Vestibulum mattis commodo mattis.</p>', 'blog-post-03.jpg', 0, '2022-10-16 00:49:30', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `navigation`
--

DROP TABLE IF EXISTS `navigation`;
CREATE TABLE IF NOT EXISTS `navigation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `url` varchar(200) DEFAULT NULL,
  `priority` int(11) NOT NULL DEFAULT '99',
  `is_active` tinyint(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `url` (`url`),
  KEY `is_active` (`is_active`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `navigation`
--

INSERT INTO `navigation` (`id`, `title`, `url`, `priority`, `is_active`) VALUES
(1, 'Home', '', 0, 1),
(2, 'About Us', 'about-us', 1, 1),
(3, 'Blog Entries', 'blog-entries', 2, 1),
(4, 'Post Details', 'post-details', 3, 1),
(5, 'Contact Us', 'contact-us', 4, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `social_media`
--

DROP TABLE IF EXISTS `social_media`;
CREATE TABLE IF NOT EXISTS `social_media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `url` varchar(200) DEFAULT NULL,
  `priority` tinyint(2) NOT NULL DEFAULT '0',
  `is_active` tinyint(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `social_media`
--

INSERT INTO `social_media` (`id`, `title`, `url`, `priority`, `is_active`) VALUES
(1, 'Facebook', 'https://www.facebook.com/', 1, 1),
(2, 'Twitter', 'https://twitter.com/', 2, 1),
(3, 'Behance', 'https://www.behance.net/', 2, 1),
(4, 'Linkedin', 'https://www.linkedin.com/', 2, 1),
(5, 'Dribbble', 'https://dribbble.com/', 2, 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
