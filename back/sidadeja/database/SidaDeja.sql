-- -------------------------------------------------------------
-- TablePlus 5.1.0(468)
--
-- https://tableplus.com/
--
-- Database: SidaDeja
-- Generation Time: 2022-12-02 01:29:27.4660
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `reponses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `reponse` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reponse_bonne` tinyint(1) NOT NULL,
  `question_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `reponses_question_id_foreign` (`question_id`),
  CONSTRAINT `reponses_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `informations` (`id`, `info`, `question_id`) VALUES
(1, 'Qu???il s???agisse de rapports h??t??rosexuels ou homosexuels, et m??me en cas de sexe oral, il faut se prot??ger des IST et du VIH/Sida. On ne meurt plus du Sida, mais on n???en gu??rit pas, et cette maladie reste lourde de cons??quences. La pilule ne prot??ge pas des IST ; le pr??servatif est le seul contraceptif ?? le faire.\nCertaines IST sont asymptomatiques (tu peux n???avoir aucun sympt??me et ??tre atteint.e), et toutes sont hautement transmissibles : il est donc imp??ratif de te faire tester si tu as eu un rapport non prot??g??. Certaines IST non trait??es ?? temps peuvent avoir des cons??quences graves sur la sant?? et conduire ?? la st??rilit??.', 1),
(2, 'Il y a le VIH, mais aussi la chlamydia, la gonorrh??e, la syphilis, les h??patites B et C, l???herp??s et l???HPV (papillomavirus).\nIl est important de se prot??ger contre toutes les IST et de se faire d??pister en cas de prise de risque car certaines IST peuvent entra??ner des complications graves comme la st??rilit?? ou des cancers.', 2),
(3, 'Il existe plusieurs possibilit??s pour faire un test de d??pistage :\nTest de d??pistage traditionnel : dans les h??pitaux, Centres de r??f??rence VIH, centres de planning familial, centres de d??pistage, maisons m??dicales ou chez un??e m??decin.\nTest de d??pistage ?? r??sultat rapide (TROD). Si le test est positif, il doit ??tre confirm?? par un test de d??pistage traditionnel (prise de sang) : dans certains Centres de r??f??rence VIH, les centres de d??pistage ou dans certaines associations (Action Test).\nAutotest : disponible en pharmacie, ?? faire chez soi.', 3),
(4, 'Il n???est pas possible de savoir si une personne est infect??e par le VIH sur base de son aspect ext??rieur. En effet, dans beaucoup de cas, il n???y a pas de signes visibles lorsque l???on est infect????e par le VIH. La seule fa??on de savoir si l???on est infect????e par le VIH est de faire un test de d??pistage.', 4),
(5, 'Non, on ne gu??rit pas encore du VIH mais les traitements actuels permettent d???emp??cher la transmission du virus et de rester en bonne sant??.', 5),
(6, 'Il n???y a pas de risque pour le VIH pour celle qui re??oit le cunnilingus ; Pour celle qui donne le cunnilingus le risque est tr??s tr??s faible (sauf pendant les r??gles). Pour les autres IST (h??patite B, syphilis, herp??s g??nital, HPV, chlamydia et gonorrh??e), le risque est r??el pour les 2 partenaires. Il est possible de se prot??ger en utilisant un carr?? de latex.', 6),
(7, 'Attention, superposer plusieurs pr??servatifs ne sert ?? rien, cela augmente m??me le risque de d??chirure du pr??servatif !', 7),
(8, 'Pour les relations sexuelles occasionnelles, portez toujours un pr??servatif tant que vous n?????tes pas certain??e que votre partenaire n???est pas infect????e par le VIH.\n\nSi par contre vous envisagez une relation intime de plus longue dur??e avec une personne vivant avec le VIH, n???h??sitez pas ?? discuter de vos craintes avec elle. Elle pourra vous rassurer sur son ??tat de sant??. En effet, une personne vivant avec le VIH qui prend correctement son traitement et qui a une charge virale ind??tectable ne transmet plus le VIH et peut vivre aussi longtemps que quiconque. Elle peut ??galement avoir des enfants s??ron??gatifs.', 8),
(9, 'Oui, cela est tout ?? fait possible. Il n???y a absolument aucun risque de transmission du VIH quand on dort pr??s d???une personne s??ropositive. Le VIH ne s???attrape pas via les gestes de la vie quotidienne d???une personne s??ropositive : manger ensemble, travailler dans le m??me espace, partager le m??me lieu de vie, se tenir la main, donner un bisou, etc???)', 9),
(10, 'Non, un baiser sur la bouche ne pr??sente aucun risque et aucune ??tude ne r??v??le une transmission du virus par le biais de la salive en embrassant.', 10),
(11, 'Sida signifie Syndrome d\'Immuno D??ficience Acquise.', 11),
(12, 'Le premier objectif d\'un pr??servatif masculin et f??minin est de prot??ger son utilisateur et utilisatrice du risque VIH et IST (et du risque de grossesse).', 12),
(13, 'Non, La p??n??tration anale (sodomie) sans pr??servatif peut donner lieu ?? la transmission du VIH et/ou d???infections sexuellement transmissibles (IST) si l???un des deux partenaires est infect?? (actif ou passif). Si je suis p??n??tr??-e (\"passif.ve\" ou \"r??ceptif.ve\") L?????jaculation dans l???anus est un risque de transmission.', 13),
(14, 'Le premier objectif d\'un pr??servatif masculin et f??minin est de prot??ger son utilisateur et utilisatrice du risque VIH et IST (et du risque de grossesse).', 14);

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2022_12_01_174115_create_questions_table', 1),
(3, '2022_12_01_183412_create_reponses_table', 1),
(4, '2022_12_01_204330_create_information_table', 1);

INSERT INTO `questions` (`id`, `question`) VALUES
(1, 'As tu d??j?? eu un rapport sexuel non prot??g?? ?'),
(2, 'Laquelle de ces options est une IST (Infection sexuellement transmisible) ?'),
(3, 'O?? peut on faire un test de d??pistage ?'),
(4, 'Est-il possible de reconnaitre une personne s??ropositive ou malade du sida ?'),
(5, 'Peut-on gu??rir d??finitivement du vih/sida ?'),
(6, 'Peut-on attraper une IST lors d\'un cunnilingus ?'),
(7, 'As-tu d??j?? utilis?? une capote phosphorescente ?'),
(8, 'Imaginons que ton voisin de droite a le sida peut-tu l\'attraper avec une relation sexuelle ?'),
(9, 'Puis-je dormir avec une personne s??ropositive ?'),
(10, 'Si ton voisin de droite t\'embrasse, peut-il avoir le sida ?'),
(11, 'Que signifie sida ?'),
(12, 'As-tu un pr??servatif sur toi ?'),
(13, 'Peut-on pratiquer du sex anal sans pr??servatif sans risque ?'),
(14, 'As-tu d??ja eu une relation sans pr??servatif ?');

INSERT INTO `reponses` (`id`, `reponse`, `reponse_bonne`, `question_id`) VALUES
(1, 'Oui', 0, 1),
(2, 'Non', 1, 1),
(3, '1 - Chlamydia', 1, 2),
(4, '2 - Jeux Vid??o', 0, 2),
(5, '3 - Salmonelloses', 0, 2),
(6, '4 - List??riose', 0, 2),
(7, '1 - Dans une grande surface', 0, 3),
(8, '2 - Dans une pharmacie', 1, 3),
(9, '3 - Pas besoin de tests', 0, 3),
(10, '4 - Dans les h??pitaux', 1, 3),
(11, 'Oui', 0, 4),
(12, 'Non', 1, 4),
(13, 'Oui', 0, 5),
(14, 'Non', 1, 5),
(15, 'Oui', 1, 6),
(16, 'Non', 0, 6),
(17, 'Oui', 1, 7),
(18, 'Non', 0, 7),
(19, 'Oui', 1, 8),
(20, 'Non', 0, 8),
(21, 'Oui', 1, 9),
(22, 'Non', 0, 9),
(23, 'Oui', 0, 10),
(24, 'Non', 1, 10),
(25, '1 - Sympt??me d\'Immuno D??ficit Av??r??.', 0, 11),
(26, '2 - Syndr??me d\'Immuno D??ficience Acquise.', 1, 11),
(27, '3 - Sympt??me interne de d??fense astucieuse.', 0, 11),
(28, '4 - Systeme d\'infection d??lirant as fuck.', 0, 11),
(29, 'Oui', 1, 12),
(30, 'Non', 0, 12),
(31, 'Oui', 0, 13),
(32, 'Non', 1, 13),
(33, 'Oui', 1, 14),
(34, 'Non', 0, 14);



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;