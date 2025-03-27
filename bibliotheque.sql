-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : jeu. 27 mars 2025 à 12:41
-- Version du serveur : 5.7.24
-- Version de PHP : 8.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `bibliotheque`
--

-- --------------------------------------------------------

--
-- Structure de la table `auteur`
--

CREATE TABLE `auteur` (
  `nom` varchar(50) NOT NULL,
  `date_de_naissance` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `auteur`
--

INSERT INTO `auteur` (`nom`, `date_de_naissance`, `id`) VALUES
('Akira Toriyama', 1955, 1),
('Hirohiko Araki', 1960, 2),
('Yoshihiro Togashi', 1966, 3),
('Naoki Urasawa', 1960, 4),
('Kentarō Miura', 1966, 5);

-- --------------------------------------------------------

--
-- Structure de la table `manga`
--

CREATE TABLE `manga` (
  `titre` varchar(100) NOT NULL,
  `id` int(11) NOT NULL,
  `année_de_publication` int(11) NOT NULL,
  `note_de_satisfaction` int(11) NOT NULL,
  `description` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `manga`
--

INSERT INTO `manga` (`titre`, `id`, `année_de_publication`, `note_de_satisfaction`, `description`) VALUES
('Dragon Ball', 1, 1984, 10, 'Gokuu Son is a young boy who lives in the woods all alone—that is, until a girl named Bulma runs into him in her search for a set of magical objects called the \"Dragon Balls.'),
('JOJO', 2, 2004, 9, 'n the American Old West, the world\'s greatest race is about to begin. Thousands line up in San Diego to travel over six thousand kilometers for a chance to win the grand prize of fifty million dollars.'),
('YUU YUU Hakusho', 3, 1992, 8, 'One fateful day, Yuusuke Urameshi, a 14-year-old delinquent with a dim future, gets a miraculous chance to turn it all around when he throws himself in front of a moving car to save a young boy.'),
('Monster', 4, 2004, 8, 'Dr. Kenzou Tenma, an elite neurosurgeon recently engaged to his hospital director\'s daughter, is well on his way to ascending the hospital hierarchy.'),
('Berserk', 5, 2004, 10, 'Guts, a former mercenary now known as the Black Swordsman, is out for revenge.ospital hierarchy.');

-- --------------------------------------------------------

--
-- Structure de la table `personnage`
--

CREATE TABLE `personnage` (
  `nom` varchar(50) NOT NULL,
  `description` varchar(250) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `personnage`
--

INSERT INTO `personnage` (`nom`, `description`, `id`) VALUES
('Son Goku', 'Son Goku Son Goku , également connu sous le nom de Sangoku, de son nom de naissance Kakarot Kakarotto, est un personnage de fiction japonais créé par Akira Toriyama.', 1),
('Johnny Joestar', 'Johnny Joestar est le protagoniste de la 7ème partie de JoJo\'s Bizarre Adventure, Steel Ball Run, ainsi que le 7ème JoJo de la série.', 2),
('Yusuke Uramechi', 'Yusuke Urameshi (浦飯 幽助, Urameshi Yūsuke) est le principal protagoniste de la série de mangas et d\'animes YuYu Hakusho.', 3),
('Dr Tenma', 'Formerly, he was a genius neurosurgeon and a rising star at Eisler Memorial Hospital, often considered to be one of the best in the field, but he would eventually lose his standing', 4),
('Guts', 'En anglais, guts signifie  tripes, entrailles . Ce nom fait référence aux circonstances impitoyables de sa naissance : extirpé des entrailles du cadavre de sa mère pendue à un arbre ', 5);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `auteur`
--
ALTER TABLE `auteur`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `manga`
--
ALTER TABLE `manga`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `personnage`
--
ALTER TABLE `personnage`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `auteur`
--
ALTER TABLE `auteur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `manga`
--
ALTER TABLE `manga`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `personnage`
--
ALTER TABLE `personnage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
