-- -------------------------------------------------------------
-- TablePlus 5.1.0(468)
--
-- https://tableplus.com/
--
-- Database: SidaDeja
-- Generation Time: 2022-12-01 23:34:57.7240
-- -------------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


CREATE TABLE `informations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `info` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `information_question_id_foreign` (`question_id`),
  CONSTRAINT `information_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `questions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `reponses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `reponse` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reponse_bonne` tinyint(1) NOT NULL,
  `question_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `reponses_question_id_foreign` (`question_id`),
  CONSTRAINT `reponses_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `informations` (`id`, `info`, `question_id`) VALUES
(1, 'Qu’il s’agisse de rapports hétérosexuels ou homosexuels, et même en cas de sexe oral, il faut se protéger des IST et du VIH/Sida. On ne meurt plus du Sida, mais on n’en guérit pas, et cette maladie reste lourde de conséquences. La pilule ne protège pas des IST ; le préservatif est le seul contraceptif à le faire.\nCertaines IST sont asymptomatiques (tu peux n’avoir aucun symptôme et être atteint.e), et toutes sont hautement transmissibles : il est donc impératif de te faire tester si tu as eu un rapport non protégé. Certaines IST non traitées à temps peuvent avoir des conséquences graves sur la santé et conduire à la stérilité.', 1),
(2, 'Il y a le VIH, mais aussi la chlamydia, la gonorrhée, la syphilis, les hépatites B et C, l’herpès et l’HPV (papillomavirus).\nIl est important de se protéger contre toutes les IST et de se faire dépister en cas de prise de risque car certaines IST peuvent entraîner des complications graves comme la stérilité ou des cancers.', 2);

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2022_12_01_174115_create_questions_table', 1),
(3, '2022_12_01_183412_create_reponses_table', 1),
(4, '2022_12_01_204330_create_information_table', 1);

INSERT INTO `questions` (`id`, `question`) VALUES
(1, 'As tu déjà eu un rapport sexuel non protégé ?'),
(2, 'Laquelle de ces options est une IST (Infection sexuellement transmisible) ?');

INSERT INTO `reponses` (`id`, `reponse`, `reponse_bonne`, `question_id`) VALUES
(1, 'Oui', 0, 1),
(2, 'Non', 1, 1),
(3, '1 - Chlamydia', 1, 2),
(4, '2 - Jeux Vidéo', 0, 2),
(5, '3 - Salmonelloses', 0, 2),
(6, '4 - Listériose', 0, 2);



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;