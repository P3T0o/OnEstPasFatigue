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
(1, 'Qu’il s’agisse de rapports hétérosexuels ou homosexuels, et même en cas de sexe oral, il faut se protéger des IST et du VIH/Sida. On ne meurt plus du Sida, mais on n’en guérit pas, et cette maladie reste lourde de conséquences. La pilule ne protège pas des IST ; le préservatif est le seul contraceptif à le faire.\nCertaines IST sont asymptomatiques (tu peux n’avoir aucun symptôme et être atteint.e), et toutes sont hautement transmissibles : il est donc impératif de te faire tester si tu as eu un rapport non protégé. Certaines IST non traitées à temps peuvent avoir des conséquences graves sur la santé et conduire à la stérilité.', 1),
(2, 'Il y a le VIH, mais aussi la chlamydia, la gonorrhée, la syphilis, les hépatites B et C, l’herpès et l’HPV (papillomavirus).\nIl est important de se protéger contre toutes les IST et de se faire dépister en cas de prise de risque car certaines IST peuvent entraîner des complications graves comme la stérilité ou des cancers.', 2),
(3, 'Il existe plusieurs possibilités pour faire un test de dépistage :\nTest de dépistage traditionnel : dans les hôpitaux, Centres de référence VIH, centres de planning familial, centres de dépistage, maisons médicales ou chez un·e médecin.\nTest de dépistage à résultat rapide (TROD). Si le test est positif, il doit être confirmé par un test de dépistage traditionnel (prise de sang) : dans certains Centres de référence VIH, les centres de dépistage ou dans certaines associations (Action Test).\nAutotest : disponible en pharmacie, à faire chez soi.', 3),
(4, 'Il n’est pas possible de savoir si une personne est infectée par le VIH sur base de son aspect extérieur. En effet, dans beaucoup de cas, il n’y a pas de signes visibles lorsque l’on est infecté·e par le VIH. La seule façon de savoir si l’on est infecté·e par le VIH est de faire un test de dépistage.', 4),
(5, 'Non, on ne guérit pas encore du VIH mais les traitements actuels permettent d’empêcher la transmission du virus et de rester en bonne santé.', 5),
(6, 'Il n’y a pas de risque pour le VIH pour celle qui reçoit le cunnilingus ; Pour celle qui donne le cunnilingus le risque est très très faible (sauf pendant les règles). Pour les autres IST (hépatite B, syphilis, herpès génital, HPV, chlamydia et gonorrhée), le risque est réel pour les 2 partenaires. Il est possible de se protéger en utilisant un carré de latex.', 6),
(7, 'Attention, superposer plusieurs préservatifs ne sert à rien, cela augmente même le risque de déchirure du préservatif !', 7),
(8, 'Pour les relations sexuelles occasionnelles, portez toujours un préservatif tant que vous n’êtes pas certain·e que votre partenaire n’est pas infecté·e par le VIH.\n\nSi par contre vous envisagez une relation intime de plus longue durée avec une personne vivant avec le VIH, n’hésitez pas à discuter de vos craintes avec elle. Elle pourra vous rassurer sur son état de santé. En effet, une personne vivant avec le VIH qui prend correctement son traitement et qui a une charge virale indétectable ne transmet plus le VIH et peut vivre aussi longtemps que quiconque. Elle peut également avoir des enfants séronégatifs.', 8),
(9, 'Oui, cela est tout à fait possible. Il n’y a absolument aucun risque de transmission du VIH quand on dort près d’une personne séropositive. Le VIH ne s’attrape pas via les gestes de la vie quotidienne d’une personne séropositive : manger ensemble, travailler dans le même espace, partager le même lieu de vie, se tenir la main, donner un bisou, etc…)', 9),
(10, 'Non, un baiser sur la bouche ne présente aucun risque et aucune étude ne révèle une transmission du virus par le biais de la salive en embrassant.', 10),
(11, 'Sida signifie Syndrome d\'Immuno Déficience Acquise.', 11),
(12, 'Le premier objectif d\'un préservatif masculin et féminin est de protéger son utilisateur et utilisatrice du risque VIH et IST (et du risque de grossesse).', 12),
(13, 'Non, La pénétration anale (sodomie) sans préservatif peut donner lieu à la transmission du VIH et/ou d’infections sexuellement transmissibles (IST) si l’un des deux partenaires est infecté (actif ou passif). Si je suis pénétré-e (\"passif.ve\" ou \"réceptif.ve\") L’éjaculation dans l’anus est un risque de transmission.', 13),
(14, 'Le premier objectif d\'un préservatif masculin et féminin est de protéger son utilisateur et utilisatrice du risque VIH et IST (et du risque de grossesse).', 14);

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2022_12_01_174115_create_questions_table', 1),
(3, '2022_12_01_183412_create_reponses_table', 1),
(4, '2022_12_01_204330_create_information_table', 1);

INSERT INTO `questions` (`id`, `question`) VALUES
(1, 'As tu déjà eu un rapport sexuel non protégé ?'),
(2, 'Laquelle de ces options est une IST (Infection sexuellement transmisible) ?'),
(3, 'Où peut on faire un test de dépistage ?'),
(4, 'Est-il possible de reconnaitre une personne séropositive ou malade du sida ?'),
(5, 'Peut-on guérir définitivement du vih/sida ?'),
(6, 'Peut-on attraper une IST lors d\'un cunnilingus ?'),
(7, 'As-tu déjà utilisé une capote phosphorescente ?'),
(8, 'Imaginons que ton voisin de droite a le sida peut-tu l\'attraper avec une relation sexuelle ?'),
(9, 'Puis-je dormir avec une personne séropositive ?'),
(10, 'Si ton voisin de droite t\'embrasse, peut-il avoir le sida ?'),
(11, 'Que signifie sida ?'),
(12, 'As-tu un préservatif sur toi ?'),
(13, 'Peut-on pratiquer du sex anal sans préservatif sans risque ?'),
(14, 'As-tu déja eu une relation sans préservatif ?');

INSERT INTO `reponses` (`id`, `reponse`, `reponse_bonne`, `question_id`) VALUES
(1, 'Oui', 0, 1),
(2, 'Non', 1, 1),
(3, '1 - Chlamydia', 1, 2),
(4, '2 - Jeux Vidéo', 0, 2),
(5, '3 - Salmonelloses', 0, 2),
(6, '4 - Listériose', 0, 2),
(7, '1 - Dans une grande surface', 0, 3),
(8, '2 - Dans une pharmacie', 1, 3),
(9, '3 - Pas besoin de tests', 0, 3),
(10, '4 - Dans les hôpitaux', 1, 3),
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
(25, '1 - Symptôme d\'Immuno Déficit Avéré.', 0, 11),
(26, '2 - Syndrôme d\'Immuno Déficience Acquise.', 1, 11),
(27, '3 - Symptôme interne de défense astucieuse.', 0, 11),
(28, '4 - Systeme d\'infection délirant as fuck.', 0, 11),
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