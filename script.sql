-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 29 avr. 2023 à 11:32
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `presta`
--

-- --------------------------------------------------------

--
-- Structure de la table `ad_band`
--

CREATE TABLE `ad_band` (
  `id_ad_band` int(11) NOT NULL,
  `title_ad_band` varchar(255) NOT NULL,
  `content_ad_band` text NOT NULL,
  `id_band` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ad_pro`
--

CREATE TABLE `ad_pro` (
  `id_ad_pro` int(11) NOT NULL,
  `title_ad_pro` varchar(255) NOT NULL,
  `content_ad_pro` text NOT NULL,
  `price_ad_pro` decimal(15,3) NOT NULL,
  `sono` tinyint(4) DEFAULT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `band`
--

CREATE TABLE `band` (
  `id_band` int(11) NOT NULL,
  `band` varchar(255) NOT NULL,
  `bio_band` text NOT NULL,
  `city` varchar(255) NOT NULL,
  `sono_band` tinyint(4) DEFAULT NULL,
  `search_player` tinyint(4) NOT NULL,
  `search_playing` tinyint(4) NOT NULL,
  `presta1` time NOT NULL,
  `price1` decimal(15,3) NOT NULL,
  `presta2` time NOT NULL,
  `price2` decimal(15,3) NOT NULL,
  `presta3` time NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `band_style`
--

CREATE TABLE `band_style` (
  `id_style` int(11) NOT NULL,
  `id_band` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `equipboard`
--

CREATE TABLE `equipboard` (
  `id_equip` int(11) NOT NULL,
  `name_equip` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `mastery`
--

CREATE TABLE `mastery` (
  `id_mastery` int(11) NOT NULL,
  `name_mastery` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `members`
--

CREATE TABLE `members` (
  `id_band` int(11) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

CREATE TABLE `messages` (
  `id_message` int(11) NOT NULL,
  `message` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `my_eb`
--

CREATE TABLE `my_eb` (
  `id_equip` int(11) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `my_mastery`
--

CREATE TABLE `my_mastery` (
  `id_mastery` int(11) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `my_style`
--

CREATE TABLE `my_style` (
  `id_style` int(11) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `notice`
--

CREATE TABLE `notice` (
  `id_notice` int(11) NOT NULL,
  `content_notice` text NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `rate`
--

CREATE TABLE `rate` (
  `id_user` int(11) NOT NULL,
  `id_notice` int(11) NOT NULL,
  `id_band` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `send`
--

CREATE TABLE `send` (
  `id_user` int(11) NOT NULL,
  `id_message` int(11) NOT NULL,
  `id_band` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `style`
--

CREATE TABLE `style` (
  `id_style` int(11) NOT NULL,
  `name_style` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `born` date NOT NULL,
  `profile_picture` varchar(255) DEFAULT NULL,
  `banner_user` varchar(255) DEFAULT NULL,
  `user_type` varchar(255) NOT NULL,
  `singer` tinyint(4) DEFAULT NULL,
  `city` varchar(255) NOT NULL,
  `travel_time` varchar(255) DEFAULT NULL,
  `adress` text DEFAULT NULL,
  `desc_user` text NOT NULL,
  `siret` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `ad_band`
--
ALTER TABLE `ad_band`
  ADD PRIMARY KEY (`id_ad_band`),
  ADD KEY `ad_band_band_FK` (`id_band`);

--
-- Index pour la table `ad_pro`
--
ALTER TABLE `ad_pro`
  ADD PRIMARY KEY (`id_ad_pro`),
  ADD KEY `ad_pro_user_FK` (`id_user`);

--
-- Index pour la table `band`
--
ALTER TABLE `band`
  ADD PRIMARY KEY (`id_band`),
  ADD KEY `band_user_FK` (`id_user`);

--
-- Index pour la table `band_style`
--
ALTER TABLE `band_style`
  ADD PRIMARY KEY (`id_style`,`id_band`),
  ADD KEY `band_style_band0_FK` (`id_band`);

--
-- Index pour la table `equipboard`
--
ALTER TABLE `equipboard`
  ADD PRIMARY KEY (`id_equip`);

--
-- Index pour la table `mastery`
--
ALTER TABLE `mastery`
  ADD PRIMARY KEY (`id_mastery`);

--
-- Index pour la table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id_band`,`id_user`),
  ADD KEY `members_user0_FK` (`id_user`);

--
-- Index pour la table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id_message`);

--
-- Index pour la table `my_eb`
--
ALTER TABLE `my_eb`
  ADD PRIMARY KEY (`id_equip`,`id_user`),
  ADD KEY `my_eb_user0_FK` (`id_user`);

--
-- Index pour la table `my_mastery`
--
ALTER TABLE `my_mastery`
  ADD PRIMARY KEY (`id_mastery`,`id_user`),
  ADD KEY `my_mastery_user0_FK` (`id_user`);

--
-- Index pour la table `my_style`
--
ALTER TABLE `my_style`
  ADD PRIMARY KEY (`id_style`,`id_user`),
  ADD KEY `my_style_user0_FK` (`id_user`);

--
-- Index pour la table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id_notice`);

--
-- Index pour la table `rate`
--
ALTER TABLE `rate`
  ADD PRIMARY KEY (`id_user`,`id_notice`,`id_band`),
  ADD KEY `rate_notice0_FK` (`id_notice`),
  ADD KEY `rate_band1_FK` (`id_band`);

--
-- Index pour la table `send`
--
ALTER TABLE `send`
  ADD PRIMARY KEY (`id_user`,`id_message`,`id_band`),
  ADD KEY `send_messages0_FK` (`id_message`),
  ADD KEY `send_band1_FK` (`id_band`);

--
-- Index pour la table `style`
--
ALTER TABLE `style`
  ADD PRIMARY KEY (`id_style`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `ad_band`
--
ALTER TABLE `ad_band`
  MODIFY `id_ad_band` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ad_pro`
--
ALTER TABLE `ad_pro`
  MODIFY `id_ad_pro` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `band`
--
ALTER TABLE `band`
  MODIFY `id_band` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `equipboard`
--
ALTER TABLE `equipboard`
  MODIFY `id_equip` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `mastery`
--
ALTER TABLE `mastery`
  MODIFY `id_mastery` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `messages`
--
ALTER TABLE `messages`
  MODIFY `id_message` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `notice`
--
ALTER TABLE `notice`
  MODIFY `id_notice` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `style`
--
ALTER TABLE `style`
  MODIFY `id_style` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `ad_band`
--
ALTER TABLE `ad_band`
  ADD CONSTRAINT `ad_band_band_FK` FOREIGN KEY (`id_band`) REFERENCES `band` (`id_band`);

--
-- Contraintes pour la table `ad_pro`
--
ALTER TABLE `ad_pro`
  ADD CONSTRAINT `ad_pro_user_FK` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Contraintes pour la table `band`
--
ALTER TABLE `band`
  ADD CONSTRAINT `band_user_FK` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Contraintes pour la table `band_style`
--
ALTER TABLE `band_style`
  ADD CONSTRAINT `band_style_band0_FK` FOREIGN KEY (`id_band`) REFERENCES `band` (`id_band`),
  ADD CONSTRAINT `band_style_style_FK` FOREIGN KEY (`id_style`) REFERENCES `style` (`id_style`);

--
-- Contraintes pour la table `members`
--
ALTER TABLE `members`
  ADD CONSTRAINT `members_band_FK` FOREIGN KEY (`id_band`) REFERENCES `band` (`id_band`),
  ADD CONSTRAINT `members_user0_FK` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Contraintes pour la table `my_eb`
--
ALTER TABLE `my_eb`
  ADD CONSTRAINT `my_eb_equipboard_FK` FOREIGN KEY (`id_equip`) REFERENCES `equipboard` (`id_equip`),
  ADD CONSTRAINT `my_eb_user0_FK` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Contraintes pour la table `my_mastery`
--
ALTER TABLE `my_mastery`
  ADD CONSTRAINT `my_mastery_mastery_FK` FOREIGN KEY (`id_mastery`) REFERENCES `mastery` (`id_mastery`),
  ADD CONSTRAINT `my_mastery_user0_FK` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Contraintes pour la table `my_style`
--
ALTER TABLE `my_style`
  ADD CONSTRAINT `my_style_style_FK` FOREIGN KEY (`id_style`) REFERENCES `style` (`id_style`),
  ADD CONSTRAINT `my_style_user0_FK` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Contraintes pour la table `rate`
--
ALTER TABLE `rate`
  ADD CONSTRAINT `rate_band1_FK` FOREIGN KEY (`id_band`) REFERENCES `band` (`id_band`),
  ADD CONSTRAINT `rate_notice0_FK` FOREIGN KEY (`id_notice`) REFERENCES `notice` (`id_notice`),
  ADD CONSTRAINT `rate_user_FK` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Contraintes pour la table `send`
--
ALTER TABLE `send`
  ADD CONSTRAINT `send_band1_FK` FOREIGN KEY (`id_band`) REFERENCES `band` (`id_band`),
  ADD CONSTRAINT `send_messages0_FK` FOREIGN KEY (`id_message`) REFERENCES `messages` (`id_message`),
  ADD CONSTRAINT `send_user_FK` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
