-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : sam. 03 déc. 2022 à 18:56
-- Version du serveur : 8.0.27
-- Version de PHP : 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `idm_project`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `id` int NOT NULL AUTO_INCREMENT,
  `author_id` int DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_23A0E66F675F31B` (`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id`, `author_id`, `title`, `description`, `content`, `created_at`, `updated_at`, `status`) VALUES
(1, 5, 'En Angleterre, les comprimés d\'ecstasy contiennent de moins en moins d\'ecstasy', 'Ce changement serait dû au Brexit et à la crise du Covid-19. Pas de quoi réjouir les autorités sanitaires pour autant: la MDMA est remplacée par de la cathinone, dont les effets secondaires n\'ont rien d\'anodin.\r\n ', 'Selon plusieurs spécialistes des université de Cardiff et Liverpool ayant mené une étude à ce sujet, «un tournant sans précédent» aurait lieu sur le marché de la drogue au Royaume-Uni. Celui-ci résulterait à la fois des conséquences de la pandémie, mais aussi de celles du Brexit et des opérations policières contre la vente. Le Guardian s\'est intéressé à ce phénomène qui pourrait s\'avérer dangereux.\r\n\r\nEn 2021, des criminologues et des chimistes ont découvert que presque la moitié des substances vendues comme étant des comprimés d\'ecstasy dans les festivals anglais ne présentaient en réalité aucune trace de MDMA. En revanche, les experts ont constaté que de nombreuses pilules contenaient des ingrédients tels que de la cathinone (une substance psychoactive) ou de la caféine.\r\n\r\nCrise de panique, perte de contact avec la réalité ou encore insomnies prolongées... Tels sont les symptômes décrits par certains consommateurs comme effets secondaires. Selon les scientifiques, les impacts du Brexit se faisant toujours ressentir, les faux comprimés d\'ecstasy devraient continuer d\'inonder les festivals et autres événements alors qu\'ils comportent des risques.\r\n\r\nMichael Pascoe, chercheur associé à l\'Université de Cardiff, a codirigé l\'étude. Il explique: «C\'est le premier article validé par des pairs qui confirme qu\'il y a eu un changement sans précédent dans la qualité de l\'ecstasy anglaise après le Brexit et les confinements.»\r\n\r\nLes principales données proviennent du travail de terrain effectué par l\'association The Loop, qui a testé des centaines de pilules à l\'été 2021 dans trois festivals de musique différents. 45% des pilules vendues comme telles ne contenaient pas de MDMA, alors que cette proportion était seulement de 7% lors de la même recherche en 2019.\r\n\r\nL\'étude suggère que les confinements successifs ont poussé certains fournisseurs à arrêter ou ralentir leur production. Mais lorsque les lieux festifs ont rouvert, la demande a de nouveau explosé et les producteurs (principalement néerlandais) ont mis du temps à augmenter l\'offre.\r\n\r\nLe démantèlement de certaines plateformes du dark web pourrait aussi avoir perturbé le trafic. Et le Brexit, avec ses complications (pénurie de chauffeurs de camions, fluctuations de la monnaie), a fini de désorganiser ce marché.', '2022-12-03 17:20:22', '2022-12-03 17:20:22', 1),
(2, 5, 'Un «narco-singe» mort dans une fusillade a eu le droit à sa propre chanson d\'adieu', 'Dans les «narcocorridos», les musiciens chantent habituellement les exploits des trafiquants de drogue.\r\n ', 'Tout commence le 14 juin, dans l\'État de Mexico, lors d\'une fusillade entre un groupe criminel connu sous le nom de La Familia Michoacana et les autorités mexicaines. Ce jour-là, des hommes armés auraient attaqué un convoi de police. Les forces de l\'ordre auraient alors riposté, en tuant dix, en arrêtant sept, et en confisquant des fusils, des voitures et du matériel technique, rapporte Vice.\r\n\r\nParmi les cadavres, les policiers ont été surpris de découvrir le corps d\'un petit singe-araignée vêtu d\'un sweat à capuche motif camouflage porté sous un gilet pare-balles. Le corps de l\'animal gisait aux côtés de ceux des narcotrafiquants tués.\r\n\r\n«Le singe aurait appartenu à l\'un des criminels qui est mort au cours du même événement», a déclaré le bureau du procureur général de l\'État de Mexico dans un communiqué de presse le 16 juin. Il reste aux policiers à réaliser une autopsie du petit primate.\r\n\r\nCertains ont visiblement été touchés par cette mort. Quelques jours après la fusillade, un chanteur anonyme a décidé d\'écrire une chanson à la gloire de l\'animal et de poster sa composition sur les réseaux sociaux.\r\n\r\nCe type d\'hommage musical a un nom: on les appelle les narcocorridos, des ballades relatant les exploits des trafiquants de drogue, par ailleurs détestées des autorités mexicaines.\r\n\r\nComposée d\'une voix masculine et d\'une guitare sèche, la chanson a été largement partagée. Dans le clip, on peut voir les images du singe suspendu au-dessus de la tête d\'un homme armé, ou encore mangeant sur ses genoux.', '2022-12-03 17:20:22', '2022-12-03 17:20:22', 1),
(3, 5, 'Aux États-Unis, la consommation de champignons hallucinogènes dépénalisée pour ses vertus thérapeutiques', 'De la drogue récréative illicite au traitement prometteur pour la santé mentale, le statut de ces champignons magiques semble amené à évoluer.\r\n ', 'On s\'éloigne de plus en plus de Las Vegas Parano: avec le temps, les substances hallucinogènes ont prouvé qu\'elles avaient une utilité plus médicale que distrayante.\r\n\r\nEn 2020, l\'Oregon a voté une loi pour dépénaliser la consommation de champignons hallucinogènes. Selon de nombreuses études, la psilocybine, molécule issue de ce genre de champignons, aurait des résultats bénéfiques dans le traitement de la dépression, de l\'alcoolisme et du tabagisme, ainsi qu\'au niveau de la réduction du stress des malades du cancer en phase avancée.\r\nD\'autres essais sont actuellement menés à propos d\'un potentiel bienfait thérapeutique sur certaines pathologies psychiques, le stress post-traumatique et l\'anorexie nerveuse, comme l\'explique Scientific American. Ces examens pourraient permettre à la substance d\'être approuvée par l\'U.S. Food and Drug Administration. Mais le combat est loin d\'être gagné, selon les scientifiques.\r\nÀ la suite de la Convention des Nations unies sur les substances psychotropes en 1971, la psilocybine a été classée comme «psychédélique» et «interdite pour un usage médical», indique la Drug Enforcement Administration. D\'autres produits tels que le LSD et l\'ecstasy, qui font partie de cette même catégorie, sont également considérés comme illégaux aux États-Unis.\r\n\r\nMalgré les obstacles légaux rencontrés ces vingt dernières années, les recherches sur les fongus (nom botanique des champignons) et leurs avantages médicaux se sont énormément développées et ont donné de premiers résultats prometteurs. À tel point que certaines municipalités américaines ont voté des mesures pour dépénaliser la consommation de champignons de ce type. C\'est notamment le cas de Denver, Oakland et Santa Cruz. L\'Oregon est le premier État à avoir décriminalisé ces substances sur tout son territoire.\r\n\r\nUn cadre pour réguler l\'utilisation thérapeutique et légale va rapidement être mis en place grâce au conseil scientifique créé pour l\'occasion. La consommation se fera dans des centres, lesquels disposeront obligatoirement d\'une licence. Leur ouverture est prévue en janvier 2023. L\'objectif n\'est –pour le moment– pas de traiter la dépression, mais d\'améliorer le bien-être en général.\r\n«Toutes nos décisions sont prises pour la sécurité du consommateur», fait valoir Jessie Uehling, mycologue à l\'Université d\'État de l\'Oregon, qui siège au conseil scientifique. «Nous évitons tous les risques potentiels et créons l\'environnement le plus sûr possible pour les individus.»\r\n\r\nCertains scientifiques souhaiteraient une décriminalisation des champignons à plus grande échelle. C\'est le cas de David Nutt, neuropsychopharmacologue à l\'Imperial College de Londres, qui s\'insurge: «Il est inconcevable que l\'Organisation mondiale de la santé puisse continuer à dire que la psilocybine n\'a pas de vertu médicale. Elle est utile là où d\'autres médicaments ne le sont pas.»\r\n\r\nRappelons qu\'en France, depuis 1966, «les champignons hallucinogènes sont une drogue classée parmi les stupéfiants» et que leur «usage est interdit», selon Drogues info service.', '2022-12-03 17:19:16', '2022-12-03 17:19:16', 1),
(4, 5, 'La pervitine, cette drogue qui a aidé les nazis dans leur guerre éclair (mais les a détruits à petit feu)', 'En 1938, une substance «miraculeuse» a inondé l\'Allemagne: la pervitine, un dérivé de méthamphétamine. L\'état-major du Reich a tôt fait d\'en approvisionner ses divisions afin de remporter la guerre. Récit d\'un dopage orchestré par Hitler.\r\n ', 'C\'est au cœur des usines Temmler, en banlieue de Berlin, que la pervitine est brevetée en 1937. Il s\'agit d\'un dérivé de méthamphétamine aux propriétés psychostimulantes. À l\'époque, l\'Allemagne est la capitale des paradis artificiels: le pays produit 80% de la cocaïne consommée dans le monde et ses laboratoires sont à la pointe de la recherche pharmaceutique en la matière. Dans une société d\'après-guerre au moral brisé, morphine et héroïne sont des palliatifs courants, particulièrement chez les vétérans, qui adoucissent ainsi leurs traumatismes.\r\n\r\nProduite en série dès 1938, la pervitine gagne rapidement le cœur –et le système sanguin– de milliers d\'Allemands. La publicité relaie les promesses portées par cette «pilule miracle» («wunderpill»), disponible sans ordonnance dans les pharmacies.\r\n\r\nPlus efficace que le café, cette substance permet de rester éveillé pendant des dizaines d\'heures, dope la concentration et retarde les effets de la fatigue. Un confiseur berlinois en ajoute même à la recette de ses pralines! Mais la drogue en libre accès, semble-t-il, finit par inquiéter les autorités: retirée des listes vertes des pharmacies en 1939, la pervitine sera bannie deux ans plus tard.\r\n\r\nLe bref succès de la pilule miracle a suffi à éveiller la curiosité d\'Otto Ranke, un professeur d\'université qui dirige alors l\'Institut de physiologie militaire du Reich. Selon lui, la pervitine pourrait être la clé de la guerre qui se prépare.\r\n\r\nLors de sa circulation dans l\'organisme, elle accroît l\'endurance, permet aux soldats de marcher soixante kilomètres par jour et de rester éveillés pendant quarante heures successives, elle retarde la sensation de faim et de soif, anesthésie la peur… Bref, c\'est le composé idéal à ajouter aux gamelles des militaires!', '2022-12-03 17:17:11', '2022-12-03 17:17:11', 0),
(5, 5, 'Combien de temps restons-nous high après avoir consommé du cannabis?', 'Une méta-analyse révèle l\'impact du composant psychoactif de la substance sur nos fonctions cognitives.\r\n ', 'Afin de connaître la déficience des fonctions cognitives chez les individus sous cannabis et sa durée, les chercheurs ont passé en revue 1.534 personnes ayant été soumises à un test de conduite. «Les résultats ont montré que la déficience peut durer jusqu\'à dix heures si de fortes doses de THC sont consommées par voie orale. Néanmoins, la durée habituelle est de quatre heures lorsque des doses plus faibles sont administrées en fumant», rapporte Danielle McCartney.\r\nBien que la plupart des compétences liées à la conduite reviennent généralement à la normale dans les cinq heures suivant l\'inhalation de cannabis, ce délai varie selon plusieurs facteurs: la teneur en THC, la façon dont la drogue a été consommée, et la régularité de la prise.\r\n\r\nCette dernière caractéristique a particulièrement intéressé les scientifiques. «L\'affaiblissement des facultés est beaucoup plus visible chez les consommateurs occasionnels que chez les réguliers. Les habitués montrent une tolérance importante aux effets, même s\'ils n\'échappent pas à une certaine altération», constate Thomas Arkell, pharmacologue comportemental à l\'USYD.\r\n\r\nDavantage de recherches devront être menées pour caractériser au mieux les effets du THC. Ces informations contribueront ainsi à aiguiser les conseils donnés aux patients, à sensibiliser les consommateurs récréatifs aux conséquences du cannabis, mais surtout, à orienter la législation.', '2022-12-03 17:12:58', '2022-12-03 17:12:58', 1);

-- --------------------------------------------------------

--
-- Structure de la table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_BA388B7A76ED395` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cart_product`
--

DROP TABLE IF EXISTS `cart_product`;
CREATE TABLE IF NOT EXISTS `cart_product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `products_id` int DEFAULT NULL,
  `carts_id` int DEFAULT NULL,
  `product_quantity` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_2890CCAA6C8A81A9` (`products_id`),
  KEY `IDX_2890CCAABCB5C6F5` (`carts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

DROP TABLE IF EXISTS `messenger_messages`;
CREATE TABLE IF NOT EXISTS `messenger_messages` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  KEY `IDX_75EA56E016BA31DB` (`delivered_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `seller_id` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `quantity` int DEFAULT NULL,
  `made_in` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_D34A04AD8DE820D9` (`seller_id`),
  KEY `IDX_D34A04AD12469DE2` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`id`, `seller_id`, `category_id`, `title`, `description`, `price`, `image`, `created_at`, `updated_at`, `quantity`, `made_in`, `status`) VALUES
(1, 1, NULL, 'Cannabis', 'Le cannabis (parfois appelé la « marijuana ») est une drogue qui est le produit de la plante de cannabis. Selon la façon qu\'il est préparé, le cannabis peut être consommé à des fins médicales ou non médicales (« récréatives »).', 8.7, 'cannabis.png', '2022-12-02 20:20:59', '2022-12-02 20:20:59', 227, 'Mexique', 1),
(2, 1, NULL, 'MDMA', 'Drogue de synthèse dérivée de la méthamphétamine, aussi connue sous le nom d\'ecstasy.', 14.99, 'mdma.png', '2022-12-02 20:20:59', '2022-12-02 20:20:59', 86, 'France', 1),
(3, 1, NULL, 'Cocaïne', 'La cocaïne est un alcaloïde tropanique extrait de la feuille de coca. Célèbre psychotrope, elle est un très puissant stimulant du système nerveux central, et sa consommation est extrêmement addictive. Elle constitue également un vasoconstricteur périphérique.', 64.23, 'cocaine.png', '2022-12-02 20:20:59', '2022-12-02 20:20:59', 471, 'Pérou', 1),
(4, 6, NULL, 'LSD', 'SD signifie acide lysergique diéthylamide. Il cause des hallucinations et il a des effets très imprévisibles. Sous sa forme la pure, le LSD a l\'aspect d\'une poudre cristalline blanche, inodore et au goût légèrement amer.', 12.33, 'lsd.jpg', '2022-12-02 20:20:59', '2022-12-02 20:20:59', 666, 'Etats-Unis', 1),
(5, 5, NULL, 'Champignons hallucinogènes', 'Les champignons hallucinogènes, champis, champignons magiques, ou encore magic mushrooms, sont des champignons possédant des propriétés hallucinogènes et enthéogènes dues à diverses molécules en fonction de leur espèce. Leur mode d\'administration majoritaire est la voie orale, une petite minorité se fumant.', 37.66, 'champignons.png', '2022-12-02 20:20:59', '2022-12-02 20:20:59', 32, 'Argentine', 1),
(6, 8, NULL, 'Kétamine', 'La kétamine est un psychotrope utilisé comme produit anesthésique injectable. Elle est aussi employée comme analgésique, sédatif, et en médecine vétérinaire. Aux États-Unis, elle est commercialisée depuis mars 2019 comme antidépresseur sous le nom de Spravato, en spray nasal.', 44.99, 'ketamine.jpg', '2022-12-02 20:20:59', '2022-12-02 20:20:59', 89, 'Allemagne', 1),
(7, 11, NULL, 'Résine de cannabis', 'Le haschich, aussi transcrit hachich, haschisch ou même hachisch, est le nom donné couramment à la résine de cannabis. Il est issu d\'une extraction de la résine des fleurs femelles de cannabis et est souvent mélangé à des matières à moindre coût pour augmenter sa masse et donc sa rentabilité', 6.45, 'resine.png', '2022-12-02 20:20:59', '2022-12-02 20:20:59', 61, 'Pays-Bas', 1);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `password`, `email`, `roles`, `name`, `firstname`) VALUES
(1, '$2y$13$tKjYeYWacR41uQBByFfECuRMkJt/FeXLqqKvyiOxcYJ33DSjAnKpK', 'test0@test.com', '[\"ROLE_USER\"]', 'test0', '0test'),
(2, '$2y$13$2vpCVhaBt834tWjbT8yHZu2g1Arnyny/.UMCdVg.BcOYuCrpqpSzm', 'test1@test.com', '[\"ROLE_USER\"]', 'test1', '1test'),
(3, '$2y$13$RSKCh6bNTXvYnBlXk1ot3uzLOZps.MakCfqzzhVshELUIKmG9uTb2', 'test2@test.com', '[\"ROLE_USER\"]', 'test2', '2test'),
(4, '$2y$13$S5xBWtV9pdvjd8Ub0JU07uBjnSGI7Pb0o6GuWm4/auOCKRWuM.gaC', 'test3@test.com', '[\"ROLE_USER\"]', 'test3', '3test'),
(5, '$2y$13$1OlvYzasvBlzzVxaE.Ty6ehCXNRgNxGxknxe73TXjnj.6sLUMCP1W', 'test4@test.com', '[\"ROLE_USER\"]', 'test4', '4test'),
(6, '$2y$13$KDiZT2Pugjk3WxlQ9RKfL.UU4Q7k3fhy2nCsxgti80RuP2B4rIjPO', 'test5@test.com', '[\"ROLE_USER\"]', 'test5', '5test'),
(7, '$2y$13$MYpvoONj3WJ/B2pFm73/n.sdkFB.J2zyGBS.ol01HHMyX3SV7L8sa', 'test6@test.com', '[\"ROLE_USER\"]', 'test6', '6test'),
(8, '$2y$13$O1f1N.MNAp.V5vfosksM4.O0kFPyn1qb71NL3T07Eg2KF6klX2U42', 'test7@test.com', '[\"ROLE_USER\"]', 'test7', '7test'),
(9, '$2y$13$xNQiqFfWfmZmrMr57ZA1aukGCH9bXtxT/A.axe8VocGK6dqbTDS2e', 'test8@test.com', '[\"ROLE_USER\"]', 'test8', '8test'),
(10, '$2y$13$TLl2mZxgV12zt5Ztuou9e..ZJOGKv13s/N2VGWYPpO7FbWt7V9lhu', 'test9@test.com', '[\"ROLE_USER\"]', 'test9', '9test'),
(11, '$2y$13$KyAGtoFyJ3UijARCXyUzVusgJW9W3.iee4Uzg7NEBqvcmtXAkWtj.', 'robinlandais@yahoo.com', '[]', 'landais', 'robin');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `FK_23A0E66F675F31B` FOREIGN KEY (`author_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `FK_BA388B7A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `cart_product`
--
ALTER TABLE `cart_product`
  ADD CONSTRAINT `FK_2890CCAA6C8A81A9` FOREIGN KEY (`products_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `FK_2890CCAABCB5C6F5` FOREIGN KEY (`carts_id`) REFERENCES `cart` (`id`);

--
-- Contraintes pour la table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK_D34A04AD12469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `FK_D34A04AD8DE820D9` FOREIGN KEY (`seller_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
