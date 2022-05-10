-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 06 mai 2022 à 15:46
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `pf`
--

-- --------------------------------------------------------

--
-- Structure de la table `blocs`
--

CREATE TABLE `blocs` (
  `idblocs` bigint(20) NOT NULL,
  `idscript` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `langue` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `blocs`
--

INSERT INTO `blocs` (`idblocs`, `idscript`, `name`, `langue`) VALUES
(1, 1, 'blocanglais', 'anglais'),
(2, 1, 'blocfrançais', 'français'),
(3, 1, 'blocarabe', 'arabe'),
(4, 2, 'ffff', 'français'),
(5, 3, 'dq', 'français'),
(6, 3, 'ddz', 'français'),
(7, 3, NULL, 'anglais'),
(8, 3, NULL, 'anglais');

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `echelles`
--

CREATE TABLE `echelles` (
  `echelle_id` int(11) NOT NULL,
  `answer_code` int(11) DEFAULT NULL,
  `answer_scale` varchar(255) DEFAULT NULL,
  `answer_score` int(11) DEFAULT NULL,
  `answer_validation` varchar(255) DEFAULT NULL,
  `customer_answer_ar` varchar(255) DEFAULT NULL,
  `customer_answer_eng` varchar(255) DEFAULT NULL,
  `customer_answer_fr` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `echelles`
--

INSERT INTO `echelles` (`echelle_id`, `answer_code`, `answer_scale`, `answer_score`, `answer_validation`, `customer_answer_ar`, `customer_answer_eng`, `customer_answer_fr`) VALUES
(1, 1, 'Satisfactionscale1', 1, '1', 'غير راضي إطلاقا', 'Not at all ', 'Pas du tout satisfait'),
(2, 2, 'Satisfactionscale1', 2, '2', 'غير راضي ', 'Not very ', 'Insatisfait '),
(3, 3, 'Satisfactionscale1', 3, '3', 'راضي نوعا ما', 'Fairly ', 'Moyennement satisfait '),
(4, 4, 'Satisfactionscale1', 4, '4', 'راضي', 'Very ', 'Satisfait'),
(5, 5, 'Satisfactionscale1', 5, '5', 'راضي جدا', 'Extremely ', 'Très satisfait'),
(6, 1, 'Easescale', 1, '1', 'صعيبة برشا', 'Not easy at all', 'Très difficile'),
(7, 2, 'Easescale', 2, '2', 'صعيبة', 'Not easy', 'Difficile'),
(8, 3, 'Easescale', 3, '3', 'ساهلة نوعا ما', 'Neutral ', 'Moyennement facile '),
(9, 4, 'Easescale', 4, '4', 'ساهلة', 'Easy', 'Facile'),
(10, 5, 'Easescale', 5, '5', 'ساهلة برشا ', 'Very easy', 'Très facile'),
(11, 1, 'Satisfactionscale2', 1, '1', 'غير موافق بالمرة', 'Totally disagree', 'Pas du tout d\'accord'),
(12, 2, 'Satisfactionscale2', 2, '2', 'غير موافق', 'Disagree', 'Pas d\'accord'),
(13, 3, 'Satisfactionscale2', 3, '3', 'موافق نوعا ما', ' Neutral or moderately agree ', 'Neutre ou moyennement d\'accord'),
(14, 4, 'Satisfactionscale2', 4, '4', 'موافق', 'Ok', 'D\'accord'),
(15, 5, 'Satisfactionscale2', 5, '5', 'موافق تماما', 'Strongly agree ', 'Tout à fait d\'accord');

-- --------------------------------------------------------

--
-- Structure de la table `enquetes`
--

CREATE TABLE `enquetes` (
  `id` bigint(20) NOT NULL,
  `channel` varchar(255) DEFAULT NULL,
  `end_date` varchar(255) DEFAULT NULL,
  `script_id` bigint(20) NOT NULL,
  `short_code` varchar(255) DEFAULT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `type_interaction` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `enquetes`
--

INSERT INTO `enquetes` (`id`, `channel`, `end_date`, `script_id`, `short_code`, `start_date`, `status`, `type_interaction`) VALUES
(116, 'clash', '2022-05-05', 1, ' rcaze', '2022-04-26', 'active', 'az'),
(122, 'dzfq', '2022-05-05', 3, 'ez', '2022-04-04', 'active', 'clash');

-- --------------------------------------------------------

--
-- Structure de la table `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(123);

-- --------------------------------------------------------

--
-- Structure de la table `questions`
--

CREATE TABLE `questions` (
  `question_id` int(11) NOT NULL,
  `actual_weight` int(11) DEFAULT NULL,
  `answer_scale` varchar(255) DEFAULT NULL,
  `langue` varchar(255) DEFAULT NULL,
  `ordre` int(11) DEFAULT NULL,
  `question_category` varchar(255) DEFAULT NULL,
  `question_short_text` varchar(255) DEFAULT NULL,
  `rotation_weight` int(11) DEFAULT NULL,
  `text_ar` varchar(255) DEFAULT NULL,
  `text_eng` varchar(255) DEFAULT NULL,
  `text_fr` varchar(255) DEFAULT NULL,
  `script_id` bigint(20) DEFAULT NULL,
  `liaisonblocs` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `questions`
--

INSERT INTO `questions` (`question_id`, `actual_weight`, `answer_scale`, `langue`, `ordre`, `question_category`, `question_short_text`, `rotation_weight`, `text_ar`, `text_eng`, `text_fr`, `script_id`, `liaisonblocs`) VALUES
(120, 0, 'Satisfactionscale1', 'français', 1, '3', NULL, 0, NULL, NULL, 'ytii', 3, 6),
(121, 0, 'Satisfactionscale1', 'anglais', 1, '3', NULL, 0, NULL, 'deaz', NULL, 3, 8),
(262, 0, 'Easescale', 'anglais', 0, NULL, NULL, 0, NULL, 'How easy was it for you to get your query answered/ problem resolved during this visit?', NULL, 1, 1),
(263, 0, 'Satisfactionscale1', 'français', 0, NULL, NULL, 0, NULL, NULL, '\'Globalement, quel est votre degré de satisfaction  par rapport à votre visite de la boutique [SHOP_NAME] réalisée le [DATE_INTERACTION]?', 1, 6),
(264, 0, 'Easescale', 'français', 0, NULL, NULL, 0, NULL, NULL, 'A quel degré était-il facile pour vous d\'avoir une réponse à votre demande?', 1, 2),
(265, 0, 'Easescale', 'arabe', 0, NULL, NULL, 0, 'ما مدى سهولة حصولك على إجابة للطلب متاعك؟', NULL, NULL, 1, 3),
(266, 0, 'Satisfactionscale1', 'anglais', 0, NULL, NULL, 0, NULL, '\'We want to know your overall satisfaction with your visit to the [SHOP_NAME] completed on [DATE_INTERACTION]?', NULL, 1, 5),
(267, 0, 'Satisfactionscale2', 'anglais', 0, NULL, NULL, 0, NULL, 'How happy were you with our adviser\'s level of knowledge?', NULL, 1, 1),
(268, 0, 'Satisfactionscale1', 'arabe', 0, NULL, NULL, 0, '\'بصفة عامة، قداش انت راضي على زيارتك لبوتيك [SHOP_NAME] نهار [DATE_INTERACTION] ؟', NULL, NULL, 1, 4),
(269, 0, 'Satisfactionscale2', 'français', 0, NULL, NULL, 0, NULL, NULL, 'Le commercial maîtrisait les offres Ooredoo?', 1, 2),
(270, 0, 'Satisfactionscale2', 'arabe', 0, NULL, NULL, 0, 'بالنسبة ليك، مرشد الحرفاء متمكن من عروضOoredoo؟', NULL, NULL, 1, 3),
(271, 0, 'Satisfactionscale1', 'anglais', 0, NULL, NULL, 0, NULL, 'Were you happy with the amability of the Ooredoo adviser you dealt with?', NULL, 1, 1),
(272, 0, 'Satisfactionscale1', 'français', 0, NULL, NULL, 0, NULL, NULL, 'Etes vous satisfait de la qualité d\'accueil du commercial?', 1, 2),
(273, 0, 'Satisfactionscale1', 'arabe', 0, NULL, NULL, 0, 'ما مدى رضاك على حفاوة الترحاب متاع مرشد الحرفاء؟', NULL, NULL, 1, 3),
(274, 0, 'Satisfactionscale1', 'anglais', 0, NULL, NULL, 0, NULL, 'Were you happy with the helpfulness of the Ooredoo adviser you dealt with?', NULL, 1, 1),
(275, 0, 'Satisfactionscale1', 'français', 0, NULL, NULL, 0, NULL, NULL, 'Le commercial a cherché à vous aider?', 1, 2),
(276, 0, 'Satisfactionscale1', 'arabe', 0, NULL, NULL, 0, 'بالنسبة ليك، مرشد الحرفاء حاول يعاونك؟', NULL, NULL, 1, 3),
(277, 0, 'Satisfactionscale1', 'anglais', 0, NULL, NULL, 0, NULL, 'Were you happy with the greeting of the Ooredoo adviser you dealt with?', NULL, 1, 1),
(278, 0, 'Satisfactionscale1', 'français', 0, NULL, NULL, 0, NULL, NULL, 'Le commercial était professionnel?', 1, 2),
(279, 0, 'Satisfactionscale1', 'arabe', 0, NULL, NULL, 0, 'بالنسبة ليك، مرشد الحرفاء كان Professionnel؟', NULL, NULL, 1, 3),
(280, 0, 'Satisfactionscale1', 'anglais', 0, NULL, NULL, 0, NULL, 'How satisfied were you with the time it took before a agent dealt with you?', NULL, 1, 1),
(281, 0, 'Satisfactionscale1', 'arabe', 0, NULL, NULL, 0, 'ما هو مستوى رضاك على الوقت لي عديتو تستنا في البوتيك؟', NULL, NULL, 1, 3),
(282, 0, 'Satisfactionscale1', 'français', 0, NULL, NULL, 0, NULL, NULL, 'Quel est votre degré de satisfaction par rapport au temps d\'attente?', 1, 2),
(283, 0, 'Satisfactionscale1', 'arabe', 0, NULL, NULL, 0, 'ما هو مستوى رضاك على نظافة البوتيك؟', NULL, NULL, 1, 3),
(284, 0, 'Satisfactionscale1', 'anglais', 0, NULL, NULL, 0, NULL, 'What is your level of satisfaction with the cleanliness of the shop?', NULL, 1, 1),
(285, 0, 'Satisfactionscale1', 'français', 0, NULL, NULL, 0, NULL, NULL, 'Quel est votre degré de satisfaction par rapport à la propreté de la boutique?', 1, 2);

-- --------------------------------------------------------

--
-- Structure de la table `responses`
--

CREATE TABLE `responses` (
  `email` varchar(255) NOT NULL,
  `enq_id` int(11) NOT NULL,
  `question_order` int(11) NOT NULL,
  `date_response` datetime DEFAULT NULL,
  `response` varchar(255) DEFAULT NULL,
  `idenquete` bigint(20) DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `responses`
--

INSERT INTO `responses` (`email`, `enq_id`, `question_order`, `date_response`, `response`, `idenquete`, `question_id`) VALUES
('1', 286, 1, NULL, 'Not easy', 286, 262),
('1', 286, 4, NULL, 'Pas d\'accord', 286, 269),
('1', 286, 5, NULL, 'Fairly ', 286, 271),
('1', 286, 6, NULL, 'Moyennement satisfait ', 286, 272),
('1', 286, 7, NULL, 'Very ', 286, 274),
('1', 286, 8, NULL, 'Satisfait', 286, 275),
('1', 286, 9, NULL, 'راضي جدا', 286, 276),
('1', 286, 10, NULL, 'Not easy at all', 286, 277),
('1', 286, 11, NULL, 'Très satisfait', 286, 278),
('1', 286, 12, NULL, 'غير راضي إطلاقا', 286, 279),
('1', 286, 13, NULL, 'Not at all ', 286, 280),
('1', 286, 14, NULL, 'راضي', 286, 281),
('1', 286, 15, NULL, 'Moyennement satisfait ', 286, 282),
('1', 286, 16, NULL, 'راضي جدا', 286, 283),
('1', 286, 17, NULL, 'Not very ', 286, 284),
('1', 286, 18, NULL, 'Satisfait', 286, 285),
('1cc', 286, 1, NULL, 'Neutral ', 286, 262),
('1cccccccx', 286, 1, NULL, 'Very easy', 286, 262),
('1ccccx', 286, 1, NULL, 'Easy', 286, 262),
('2', 286, 2, NULL, 'Easy', 286, 264),
('3', 286, 3, NULL, 'Not easy at all', 286, 267),
('galolazizaziz@gmail.com', 116, 1, NULL, 'Très difficile', 116, 264),
('galolazizaziz@gmail.com', 116, 2, NULL, 'Pas d\'accord', 116, 269),
('galolazizaziz@gmail.com', 116, 3, NULL, 'Moyennement satisfait ', 116, 272),
('galolazizaziz@gmail.com', 116, 4, NULL, 'Satisfait', 116, 275),
('galolazizaziz@gmail.com', 116, 5, NULL, 'Très satisfait', 116, 278),
('galolazizaziz@gmail.com', 116, 6, NULL, 'Très satisfait', 116, 282),
('galolazizaziz@gmail.com', 116, 7, NULL, 'Satisfait', 116, 285),
('galolazizaziz@gmail.com', 122, 1, NULL, 'Pas du tout satisfait', 122, 120),
('galolazizaziz@gmail.com', 122, 2, NULL, 'Insatisfait ', 122, 263),
('galolazizaziz@gmail.com', 122, 3, NULL, 'Very ', 122, 266);

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'ROLE_USER'),
(2, 'ROLE_MODERATOR'),
(3, 'ROLE_ADMIN');

-- --------------------------------------------------------

--
-- Structure de la table `scripts`
--

CREATE TABLE `scripts` (
  `id` bigint(20) NOT NULL,
  `date_fin` varchar(255) DEFAULT NULL,
  `script_name` varchar(255) DEFAULT NULL,
  `script_pool` varchar(255) DEFAULT NULL,
  `date_debut` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `scripts`
--

INSERT INTO `scripts` (`id`, `date_fin`, `script_name`, `script_pool`, `date_debut`) VALUES
(1, '2027-01-01', 'Direct Sales', 'Retail Question Pool', '2020-01-01'),
(3, '2022-05-05', 'ty', 'f dsqvc', '2022-04-27');

-- --------------------------------------------------------

--
-- Structure de la table `targuets`
--

CREATE TABLE `targuets` (
  `email` varchar(255) NOT NULL,
  `enq_id` int(11) NOT NULL,
  `attempt` int(11) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `current_question` int(11) DEFAULT NULL,
  `email_interaction` varchar(255) DEFAULT NULL,
  `etat` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `motifs` varchar(255) DEFAULT NULL,
  `original_enq_id` int(11) DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL,
  `send_mail_resurvey` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `targuets`
--

INSERT INTO `targuets` (`email`, `enq_id`, `attempt`, `creation_date`, `current_question`, `email_interaction`, `etat`, `language`, `motifs`, `original_enq_id`, `question_id`, `send_mail_resurvey`) VALUES
('bb', 122, 1, NULL, 2, '1', 'actuel', 'français', 'FAUX', 1, 1, 0),
('galolazizaziz@gmail.com', 122, 87, NULL, 43, '235', 'ERZ', 'français', 'GREFZ', 273, 765, 0),
('rayen.trabelsi@isticbc.org', 122, 43, NULL, 23, '432', 'ef', 'arabe', 'eaz', 43, 1, 0),
('trabelsirayen02@gmail.com', 122, 43, NULL, 23, '432', 'ef', 'anglais', 'eaz', 43, 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(120) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `username`) VALUES
(1, 'pwd4@ff.com', '$2a$10$vpVHlOkZrgQc9cIhCMRznuD.7S/3wqXGUVXDbr/DJqBLrFy19gs32', 'rayen'),
(2, 'ooredoo@ooredoo.com', '$2a$10$y0t0iF.4EYLfcdDyl8PfA.DC7OfdE50mT23Iu0GovJyV.Ok.BmxQG', 'borry'),
(3, 'ddd@gmail.com', '$2a$10$C.FhOkXq8Te/K5j2dB3n3.vEkcXRFwwmVXn7KKjp7yZUd19JLoqRa', 'user'),
(4, 'ddd@gmail1.com', '$2a$10$edorxcBn6wYdKwVXUWrBW.tC.eMhcLv8aUfjHGozyut6F.Sw.gjBu', 'ray'),
(5, 'borry@ff11.com', '$2a$10$FKFY/hOiAnjdO/SaBf3w5.55kbuvuvOisBgvrzZMt4OV8PduPNo7i', 'borry11'),
(6, 'sss@fme.ss', '$2a$10$U20hiGddFlAF9Oxry6GC8uMkXi1wLvefV2ufVj3t3bFSLaFkeCGoy', 'test'),
(12, '546@g.gg', '$2a$10$gY0SNTJdS1q7YMtByM0kReGAukfigovPY79iaEnurWsaQeS7IQN42', '55555'),
(13, 'bbbb@gg.xx', '$2a$10$SLJ8zYcELkBca84IHEfnTujC3.CNc6zMahmTkJirpyaKjVfefL8Qa', 'rayenssss'),
(14, 'galolazizaziz@gmail.com', '$2a$10$BO6hNYOt5nD2UvN97uCT.eZWdZUzWBqnPKto4u8PRjf6k/Yp4s9vq', 'aziz');

-- --------------------------------------------------------

--
-- Structure de la table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES
(2, 3),
(14, 2);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `blocs`
--
ALTER TABLE `blocs`
  ADD PRIMARY KEY (`idblocs`);

--
-- Index pour la table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `echelles`
--
ALTER TABLE `echelles`
  ADD PRIMARY KEY (`echelle_id`);

--
-- Index pour la table `enquetes`
--
ALTER TABLE `enquetes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`question_id`),
  ADD KEY `FKfv5khfoobo7nyhxx1l195i2xn` (`script_id`),
  ADD KEY `FKse4lml5bfexklfwr6vjpji2o3` (`liaisonblocs`);

--
-- Index pour la table `responses`
--
ALTER TABLE `responses`
  ADD PRIMARY KEY (`email`,`enq_id`,`question_order`),
  ADD KEY `FK7yw09n36jlruk6jpegbsq7yd8` (`idenquete`),
  ADD KEY `FKrln3foyudvklybbdl1r5dmjvy` (`question_id`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `scripts`
--
ALTER TABLE `scripts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `targuets`
--
ALTER TABLE `targuets`
  ADD PRIMARY KEY (`email`,`enq_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UKr43af9ap4edm43mmtq01oddj6` (`username`),
  ADD UNIQUE KEY `UK6dotkott2kjsp8vw4d0m25fb7` (`email`);

--
-- Index pour la table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `FKh8ciramu9cc9q3qcqiv4ue8a6` (`role_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `blocs`
--
ALTER TABLE `blocs`
  MODIFY `idblocs` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `scripts`
--
ALTER TABLE `scripts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `FKfv5khfoobo7nyhxx1l195i2xn` FOREIGN KEY (`script_id`) REFERENCES `scripts` (`id`),
  ADD CONSTRAINT `FKse4lml5bfexklfwr6vjpji2o3` FOREIGN KEY (`liaisonblocs`) REFERENCES `blocs` (`idblocs`);

--
-- Contraintes pour la table `responses`
--
ALTER TABLE `responses`
  ADD CONSTRAINT `FK7yw09n36jlruk6jpegbsq7yd8` FOREIGN KEY (`idenquete`) REFERENCES `enquetes` (`id`),
  ADD CONSTRAINT `FKrln3foyudvklybbdl1r5dmjvy` FOREIGN KEY (`question_id`) REFERENCES `questions` (`question_id`);

--
-- Contraintes pour la table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `FKh8ciramu9cc9q3qcqiv4ue8a6` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `FKhfh9dx7w3ubf1co1vdev94g3f` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
