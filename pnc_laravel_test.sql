-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 27, 2019 at 05:47 AM
-- Server version: 5.7.21
-- PHP Version: 7.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pnc_laravel_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
CREATE TABLE IF NOT EXISTS `companies` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `companies_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `email`, `logo`, `website`, `created_at`, `updated_at`) VALUES
(1, 'Wuckert-Kris', 'shanon.hoppe@spinka.com', '', 'http://www.uyhdg6zd.com', '2019-07-26 22:42:33', '2019-07-26 22:42:33'),
(2, 'Russel-Abbott', 'della12@armstrong.com', '', 'http://www.gcoojkiv.com', '2019-07-26 22:42:33', '2019-07-26 22:42:33'),
(3, 'Armstrong-Douglas', 'fnitzsche@kiehn.com', '', 'http://www.leh4cuyc.com', '2019-07-26 22:42:33', '2019-07-26 22:42:33'),
(4, 'Davis Ltd', 'maurine.damore@boyle.org', '', 'http://www.5rjuzoqs.com', '2019-07-26 22:42:33', '2019-07-26 22:42:33'),
(5, 'Stark Ltd', 'qmedhurst@stanton.com', '', 'http://www.ek6xlali.com', '2019-07-26 22:42:33', '2019-07-26 22:42:33'),
(6, 'Nikolaus LLC', 'jerry18@greenholt.com', '', 'http://www.flykuxn6.com', '2019-07-26 22:42:33', '2019-07-26 22:42:33'),
(7, 'Skiles, Stehr And Nader', 'riley.romaguera@emard.com', '', 'http://www.djqraz5u.com', '2019-07-26 22:42:33', '2019-07-26 22:42:33'),
(8, 'Kovacek, Sauer And Thompson', 'danika.nitzsche@ebert.biz', '', 'http://www.albu0d9v.com', '2019-07-26 22:42:33', '2019-07-26 22:42:33'),
(9, 'Gusikowski Group', 'marcella.jerde@goodwin.org', '', 'http://www.e3dhcqnv.com', '2019-07-26 22:42:33', '2019-07-26 22:42:33'),
(10, 'Dare-Botsford', 'abdul12@weber.info', '', 'http://www.lg1eb5j4.com', '2019-07-26 22:42:33', '2019-07-26 22:42:33'),
(11, 'Jacobson PLC', 'effie.damore@bode.com', '', 'http://www.jeqgj4ta.com', '2019-07-26 22:42:33', '2019-07-26 22:42:33'),
(12, 'Rogahn, Turner And Wuckert', 'stewart.block@erdman.org', '', 'http://www.kzbdr548.com', '2019-07-26 22:42:34', '2019-07-26 22:42:34'),
(13, 'Ebert Group', 'jbayer@kessler.org', '', 'http://www.bsdnysve.com', '2019-07-26 22:42:34', '2019-07-26 22:42:34'),
(14, 'Kuvalis Group', 'barton.oswaldo@kohler.net', '', 'http://www.zujkpwfu.com', '2019-07-26 22:42:34', '2019-07-26 22:42:34'),
(15, 'Reilly-Torp', 'rspinka@mraz.com', '', 'http://www.3sbzcilo.com', '2019-07-26 22:42:34', '2019-07-26 22:42:34'),
(16, 'Goyette-Weissnat', 'esperanza.roberts@howell.com', '', 'http://www.twcnwr9j.com', '2019-07-26 22:42:34', '2019-07-26 22:42:34'),
(17, 'Bailey Inc', 'avon@rodriguez.info', '', 'http://www.x4p61jec.com', '2019-07-26 22:42:34', '2019-07-26 22:42:34'),
(18, 'Cummings, McCullough And Brakus', 'will.jennyfer@pagac.org', '', 'http://www.w0xx0ack.com', '2019-07-26 22:42:34', '2019-07-26 22:42:34'),
(19, 'Nolan, Christiansen And Glover', 'dickens.charlene@renner.com', '', 'http://www.xjdbgw0k.com', '2019-07-26 22:42:34', '2019-07-26 22:42:34'),
(20, 'Kiehn, Dicki And Murray', 'elwin22@bergnaum.biz', '', 'http://www.jjt05zub.com', '2019-07-26 22:42:34', '2019-07-26 22:42:34'),
(21, 'Marvin-Watsica', 'littel.ella@trantow.biz', '', 'http://www.l9c8sicq.com', '2019-07-26 22:42:34', '2019-07-26 22:42:34'),
(22, 'Botsford, Schroeder And Will', 'zcrist@lemke.com', '', 'http://www.qqrgos2f.com', '2019-07-26 22:42:34', '2019-07-26 22:42:34'),
(23, 'Berge, O\'Conner And Thiel', 'brooks86@boyer.com', '', 'http://www.lzsvwfiz.com', '2019-07-26 22:42:34', '2019-07-26 22:42:34'),
(24, 'Grant, O\'Keefe And Simonis', 'lura05@gerlach.com', '', 'http://www.pca6ncxi.com', '2019-07-26 22:42:34', '2019-07-26 22:42:34'),
(25, 'Daugherty, Paucek And Goyette', 'stephan.murphy@trantow.biz', '', 'http://www.wza4etul.com', '2019-07-26 22:42:34', '2019-07-26 22:42:34'),
(26, 'Streich-Wuckert', 'ron18@medhurst.biz', '', 'http://www.4swcz67w.com', '2019-07-26 22:42:34', '2019-07-26 22:42:34'),
(27, 'Goyette-Rice', 'cummerata.glen@bernier.net', '', 'http://www.nawlw2uo.com', '2019-07-26 22:42:34', '2019-07-26 22:42:34'),
(28, 'Hahn, Rogahn And Greenfelder', 'omills@bradtke.org', '', 'http://www.k3qglg3v.com', '2019-07-26 22:42:34', '2019-07-26 22:42:34'),
(29, 'Spinka, Braun And Maggio', 'johnny27@bednar.com', '', 'http://www.io65tc9m.com', '2019-07-26 22:42:34', '2019-07-26 22:42:34'),
(30, 'Cormier-Windler', 'autumn.wintheiser@little.info', '', 'http://www.o1kht9ci.com', '2019-07-26 22:42:34', '2019-07-26 22:42:34'),
(31, 'Hessel, Oberbrunner And Strosin', 'noemi.crist@senger.com', '', 'http://www.vq4r1qdv.com', '2019-07-26 22:42:34', '2019-07-26 22:42:34'),
(32, 'Stroman-Gleichner', 'gerhold.tyra@gerhold.com', '', 'http://www.kxphhzgh.com', '2019-07-26 22:42:34', '2019-07-26 22:42:34'),
(33, 'Schoen-Bartoletti', 'tom16@morissette.biz', '', 'http://www.d5fwxgnz.com', '2019-07-26 22:42:34', '2019-07-26 22:42:34'),
(34, 'Quitzon LLC', 'haag.delbert@mayer.net', '', 'http://www.9rmsnrw1.com', '2019-07-26 22:42:34', '2019-07-26 22:42:34'),
(35, 'Rice LLC', 'sigrid41@goodwin.com', '', 'http://www.3btbk0zh.com', '2019-07-26 22:42:34', '2019-07-26 22:42:34'),
(36, 'Collins-Wisoky', 'collin.reynolds@haag.net', '', 'http://www.onz0giyp.com', '2019-07-26 22:42:34', '2019-07-26 22:42:34'),
(37, 'Harris-Parker', 'lupe.runolfsson@reichel.biz', '', 'http://www.pg3gxbfk.com', '2019-07-26 22:42:34', '2019-07-26 22:42:34'),
(38, 'Weber PLC', 'sporer.emie@morar.com', '', 'http://www.izzffgv7.com', '2019-07-26 22:42:34', '2019-07-26 22:42:34'),
(39, 'Stoltenberg-Heidenreich', 'bartell.jonatan@herman.info', '', 'http://www.ndubl97d.com', '2019-07-26 22:42:34', '2019-07-26 22:42:34'),
(40, 'Smith Ltd', 'blair41@collier.net', '', 'http://www.mknkzpka.com', '2019-07-26 22:42:34', '2019-07-26 22:42:34'),
(41, 'Veum Ltd', 'dschuppe@gibson.com', '', 'http://www.bevth5rz.com', '2019-07-26 22:42:34', '2019-07-26 22:42:34'),
(42, 'Hammes Ltd', 'maegan.stoltenberg@ernser.com', '', 'http://www.eegtnvek.com', '2019-07-26 22:42:34', '2019-07-26 22:42:34'),
(43, 'Gibson-Lind', 'zmurazik@stamm.com', '', 'http://www.irhygioq.com', '2019-07-26 22:42:34', '2019-07-26 22:42:34'),
(44, 'Schoen, Pfannerstill And Carter', 'kmitchell@trantow.info', '', 'http://www.r51fr31s.com', '2019-07-26 22:42:34', '2019-07-26 22:42:34'),
(45, 'Hill Group', 'von.dana@shields.net', '', 'http://www.bv3uyuwv.com', '2019-07-26 22:42:34', '2019-07-26 22:42:34'),
(46, 'Gerlach, Dicki And Wolf', 'heaven13@padberg.com', '', 'http://www.glmgg3yb.com', '2019-07-26 22:42:34', '2019-07-26 22:42:34'),
(47, 'Franecki-Russel', 'peffertz@streich.com', '', 'http://www.dehx6pwu.com', '2019-07-26 22:42:34', '2019-07-26 22:42:34'),
(48, 'Littel, Mayert And Kilback', 'amaya93@stiedemann.info', '', 'http://www.xslzf7wo.com', '2019-07-26 22:42:35', '2019-07-26 22:42:35'),
(49, 'Dietrich PLC', 'immanuel14@hermann.biz', '', 'http://www.meevxxsm.com', '2019-07-26 22:42:35', '2019-07-26 22:42:35'),
(50, 'Rodriguez Inc', 'njacobi@koelpin.com', '', 'http://www.nzem7cyj.com', '2019-07-26 22:42:35', '2019-07-26 22:42:35'),
(51, 'Wunsch-Bernhard', 'funk.dasia@collins.com', '', 'http://www.1bwoxlz4.com', '2019-07-26 22:42:35', '2019-07-26 22:42:35'),
(52, 'Franecki And Sons', 'pwiza@steuber.com', '', 'http://www.g1h8h9gc.com', '2019-07-26 22:42:35', '2019-07-26 22:42:35'),
(53, 'Bogan LLC', 'julie52@kerluke.com', '', 'http://www.h28gpk5f.com', '2019-07-26 22:42:35', '2019-07-26 22:42:35'),
(54, 'Schroeder LLC', 'thompson.federico@hudson.info', '', 'http://www.mymy4psx.com', '2019-07-26 22:42:35', '2019-07-26 22:42:35'),
(55, 'Simonis-Morar', 'abigale04@larkin.com', '', 'http://www.bicbosqp.com', '2019-07-26 22:42:35', '2019-07-26 22:42:35'),
(56, 'Bergnaum-Buckridge', 'jesus.gerlach@dicki.com', '', 'http://www.wvwmgwgn.com', '2019-07-26 22:42:35', '2019-07-26 22:42:35'),
(57, 'Wyman Group', 'mueller.stephany@marks.biz', '', 'http://www.ophbvd7j.com', '2019-07-26 22:42:35', '2019-07-26 22:42:35'),
(58, 'Okuneva-Schuppe', 'conroy.hubert@pfannerstill.com', '', 'http://www.8wjmqnef.com', '2019-07-26 22:42:35', '2019-07-26 22:42:35'),
(59, 'Jerde-Beier', 'kristopher.fisher@swift.com', '', 'http://www.xrskixbu.com', '2019-07-26 22:42:35', '2019-07-26 22:42:35'),
(60, 'Bode-Reichert', 'dlueilwitz@rowe.org', '', 'http://www.gpyegrne.com', '2019-07-26 22:42:35', '2019-07-26 22:42:35'),
(61, 'Stroman, Heller And Batz', 'oran.tremblay@stiedemann.biz', '', 'http://www.6qej07rg.com', '2019-07-26 22:42:35', '2019-07-26 22:42:35'),
(62, 'Skiles-Hansen', 'susie90@barton.com', '', 'http://www.a0fb4rk3.com', '2019-07-26 22:42:35', '2019-07-26 22:42:35'),
(63, 'Emard, Boyle And Murray', 'okeefe.clifton@braun.info', '', 'http://www.eub50fk3.com', '2019-07-26 22:42:35', '2019-07-26 22:42:35'),
(64, 'Schumm-Adams', 'greenfelder.kathryne@strosin.net', '', 'http://www.zazaggop.com', '2019-07-26 22:42:35', '2019-07-26 22:42:35'),
(65, 'Lubowitz-Macejkovic', 'estevan31@dicki.com', '', 'http://www.jmclhla6.com', '2019-07-26 22:42:35', '2019-07-26 22:42:35'),
(66, 'Yundt, Cartwright And Beier', 'robert.brekke@conroy.org', '', 'http://www.fkurvnlk.com', '2019-07-26 22:42:35', '2019-07-26 22:42:35'),
(67, 'Stoltenberg-Gleichner', 'cflatley@jenkins.org', '', 'http://www.8e1avgd2.com', '2019-07-26 22:42:35', '2019-07-26 22:42:35'),
(68, 'Sauer, Boyle And Durgan', 'daphne.buckridge@king.net', '', 'http://www.kn8sr9r7.com', '2019-07-26 22:42:35', '2019-07-26 22:42:35'),
(69, 'Donnelly-Walsh', 'fanny09@dach.com', '', 'http://www.falw4naz.com', '2019-07-26 22:42:35', '2019-07-26 22:42:35'),
(70, 'Spinka, Hintz And Olson', 'fanny69@frami.com', '', 'http://www.nzmusdhz.com', '2019-07-26 22:42:35', '2019-07-26 22:42:35'),
(71, 'Lind Group', 'greta05@spencer.com', '', 'http://www.8hhtid5g.com', '2019-07-26 22:42:35', '2019-07-26 22:42:35'),
(72, 'Von And Sons', 'keeling.teresa@moore.biz', '', 'http://www.rbfhg55s.com', '2019-07-26 22:42:35', '2019-07-26 22:42:35'),
(73, 'Schinner-Langworth', 'ocie76@hermann.info', '', 'http://www.hebpmlve.com', '2019-07-26 22:42:35', '2019-07-26 22:42:35'),
(74, 'Aufderhar And Sons', 'carlos.predovic@ohara.net', '', 'http://www.yjy3sncr.com', '2019-07-26 22:42:35', '2019-07-26 22:42:35'),
(75, 'Mohr And Sons', 'adelle13@grimes.com', '', 'http://www.qhzucujw.com', '2019-07-26 22:42:35', '2019-07-26 22:42:35'),
(76, 'Emard-Mayert', 'qswift@bogan.com', '', 'http://www.xx4wsmrx.com', '2019-07-26 22:42:35', '2019-07-26 22:42:35'),
(77, 'Prohaska-Lakin', 'lucy87@bernier.com', '', 'http://www.y81l857m.com', '2019-07-26 22:42:35', '2019-07-26 22:42:35'),
(78, 'Becker Ltd', 'gchamplin@mante.org', '', 'http://www.xblwvdyj.com', '2019-07-26 22:42:35', '2019-07-26 22:42:35'),
(79, 'Hahn, Luettgen And Labadie', 'quinten.bartoletti@mohr.com', '', 'http://www.vjjy5tju.com', '2019-07-26 22:42:35', '2019-07-26 22:42:35'),
(80, 'Kutch-O\'Reilly', 'marlene.collier@brakus.com', '', 'http://www.piniwxwz.com', '2019-07-26 22:42:35', '2019-07-26 22:42:35'),
(81, 'Lebsack Inc', 'ohuel@ferry.info', '', 'http://www.tjitjqmm.com', '2019-07-26 22:42:36', '2019-07-26 22:42:36'),
(82, 'Halvorson, Tillman And Cassin', 'lilliana05@nicolas.com', '', 'http://www.yskwx3ye.com', '2019-07-26 22:42:36', '2019-07-26 22:42:36'),
(83, 'Daugherty Group', 'oconnell.christopher@heaney.com', '', 'http://www.4rca9vu4.com', '2019-07-26 22:42:36', '2019-07-26 22:42:36'),
(84, 'Durgan, Konopelski And Weissnat', 'cordie.koss@zboncak.com', '', 'http://www.y4m9xwyf.com', '2019-07-26 22:42:36', '2019-07-26 22:42:36'),
(85, 'Mayer-Runolfsson', 'larkin.willard@toy.com', '', 'http://www.dx9xrr16.com', '2019-07-26 22:42:36', '2019-07-26 22:42:36'),
(86, 'Spinka, Ullrich And Simonis', 'maggie.graham@champlin.biz', '', 'http://www.ixzvz9a6.com', '2019-07-26 22:42:36', '2019-07-26 22:42:36'),
(87, 'Wolf-Heathcote', 'treutel.watson@hauck.biz', '', 'http://www.dtpod1n2.com', '2019-07-26 22:42:36', '2019-07-26 22:42:36'),
(88, 'Satterfield Inc', 'ethan17@rau.com', '', 'http://www.ti36yoyx.com', '2019-07-26 22:42:36', '2019-07-26 22:42:36'),
(89, 'Rau And Sons', 'tbashirian@cole.com', '', 'http://www.8zfh8rqs.com', '2019-07-26 22:42:36', '2019-07-26 22:42:36'),
(90, 'Konopelski And Sons', 'kasandra.harvey@littel.com', '', 'http://www.hniphmjd.com', '2019-07-26 22:42:36', '2019-07-26 22:42:36'),
(91, 'Conn Inc', 'marley20@green.com', '', 'http://www.yxgjrvms.com', '2019-07-26 22:42:36', '2019-07-26 22:42:36'),
(92, 'Spinka, Weber And Ziemann', 'philip.lockman@walter.info', '', 'http://www.ajw2lyf6.com', '2019-07-26 22:42:36', '2019-07-26 22:42:36'),
(93, 'Kemmer Inc', 'jsipes@sipes.org', '', 'http://www.27ndhbmt.com', '2019-07-26 22:42:36', '2019-07-26 22:42:36'),
(94, 'Breitenberg-Ebert', 'hconnelly@cole.com', '', 'http://www.b0iw7gwy.com', '2019-07-26 22:42:36', '2019-07-26 22:42:36'),
(95, 'Hoppe Ltd', 'welch.brain@kuhlman.com', '', 'http://www.ocmpbtr0.com', '2019-07-26 22:42:36', '2019-07-26 22:42:36'),
(96, 'Auer PLC', 'johnathan.lesch@cummings.com', '', 'http://www.dnoewppv.com', '2019-07-26 22:42:36', '2019-07-26 22:42:36'),
(97, 'Orn-Gerlach', 'pfeffer.katrina@schneider.biz', '', 'http://www.hdllp9ce.com', '2019-07-26 22:42:36', '2019-07-26 22:42:36'),
(98, 'Nolan PLC', 'boehm.alana@emard.com', '', 'http://www.usly6eaj.com', '2019-07-26 22:42:36', '2019-07-26 22:42:36'),
(99, 'Streich-Kuphal', 'carmen.predovic@wisoky.net', '', 'http://www.ru8uvrea.com', '2019-07-26 22:42:36', '2019-07-26 22:42:36'),
(100, 'Hintz-Marquardt', 'elvera80@monahan.info', '', 'http://www.pnbemo06.com', '2019-07-26 22:42:36', '2019-07-26 22:42:36'),
(101, 'D\'Amore Ltd', 'nader.belle@wunsch.com', '', 'http://www.e6f82qdb.com', '2019-07-26 22:42:36', '2019-07-26 22:42:36'),
(102, 'Rolfson LLC', 'schuster.cydney@lehner.com', '', 'http://www.1x623wpp.com', '2019-07-26 22:42:36', '2019-07-26 22:42:36'),
(103, 'Stoltenberg-Hagenes', 'will.newton@watsica.info', '', 'http://www.xyc5t80j.com', '2019-07-26 22:42:36', '2019-07-26 22:42:36'),
(104, 'Williamson And Sons', 'kbalistreri@marquardt.net', '', 'http://www.act0zz2l.com', '2019-07-26 22:42:36', '2019-07-26 22:42:36'),
(105, 'Casper-Reynolds', 'vance73@rowe.org', '', 'http://www.bft0ay5f.com', '2019-07-26 22:42:36', '2019-07-26 22:42:36'),
(106, 'Wiegand, Dickens And Steuber', 'botsford.oda@klocko.com', '', 'http://www.q7gwslx5.com', '2019-07-26 22:42:36', '2019-07-26 22:42:36'),
(107, 'Lang Inc', 'kreiger.blaze@morissette.info', '', 'http://www.klqtl0ie.com', '2019-07-26 22:42:36', '2019-07-26 22:42:36'),
(108, 'Gutkowski-Runte', 'dedrick01@jaskolski.com', '', 'http://www.v0slissd.com', '2019-07-26 22:42:36', '2019-07-26 22:42:36'),
(109, 'Anderson-Will', 'irma09@gorczany.com', '', 'http://www.wugac4z5.com', '2019-07-26 22:42:36', '2019-07-26 22:42:36'),
(110, 'Terry, Jenkins And Beahan', 'palma10@weber.com', '', 'http://www.rlmkver6.com', '2019-07-26 22:42:36', '2019-07-26 22:42:36'),
(111, 'Howell-Kohler', 'thompson.violet@schoen.com', '', 'http://www.oumlcltm.com', '2019-07-26 22:42:36', '2019-07-26 22:42:36'),
(112, 'Schaefer Inc', 'udurgan@konopelski.org', '', 'http://www.lbhsa0p9.com', '2019-07-26 22:42:36', '2019-07-26 22:42:36'),
(113, 'Kohler, McLaughlin And Reilly', 'iziemann@deckow.com', '', 'http://www.oxie9onr.com', '2019-07-26 22:42:36', '2019-07-26 22:42:36'),
(114, 'Schuppe, Glover And VonRueden', 'morissette.malachi@hartmann.info', '', 'http://www.awprzlwx.com', '2019-07-26 22:42:36', '2019-07-26 22:42:36'),
(115, 'Murray-Gleason', 'wrogahn@erdman.info', '', 'http://www.1viovgbb.com', '2019-07-26 22:42:36', '2019-07-26 22:42:36'),
(116, 'Runolfsson, Carroll And Kuhic', 'ndietrich@gaylord.org', '', 'http://www.1vuyvork.com', '2019-07-26 22:42:37', '2019-07-26 22:42:37'),
(117, 'Padberg, Kirlin And Bayer', 'olson.xzavier@gleason.com', '', 'http://www.catqwedf.com', '2019-07-26 22:42:37', '2019-07-26 22:42:37'),
(118, 'Breitenberg Group', 'lacey70@larson.com', '', 'http://www.ot725zcd.com', '2019-07-26 22:42:37', '2019-07-26 22:42:37'),
(119, 'Mraz And Sons', 'lauriane.friesen@hahn.com', '', 'http://www.uxvkyelo.com', '2019-07-26 22:42:37', '2019-07-26 22:42:37'),
(120, 'Howell-Mraz', 'daphne38@lowe.biz', '', 'http://www.8ycdcasd.com', '2019-07-26 22:42:37', '2019-07-26 22:42:37'),
(121, 'Klein Inc', 'edwin77@funk.biz', '', 'http://www.dovb1aij.com', '2019-07-26 22:42:37', '2019-07-26 22:42:37'),
(122, 'Balistreri-Hintz', 'damien88@kozey.info', '', 'http://www.eke8nm2t.com', '2019-07-26 22:42:37', '2019-07-26 22:42:37'),
(123, 'Fadel-Lowe', 'howell.ursula@mccullough.com', '', 'http://www.icf2oiqo.com', '2019-07-26 22:42:37', '2019-07-26 22:42:37'),
(124, 'Gislason-Mraz', 'cummerata.myles@lowe.com', '', 'http://www.hxode35d.com', '2019-07-26 22:42:37', '2019-07-26 22:42:37'),
(125, 'Mosciski, Parisian And Haley', 'eriberto22@ratke.com', '', 'http://www.vr8myjgv.com', '2019-07-26 22:42:37', '2019-07-26 22:42:37'),
(126, 'Larson-Buckridge', 'adolphus.krajcik@reichert.org', '', 'http://www.bnn8ujfw.com', '2019-07-26 22:42:37', '2019-07-26 22:42:37'),
(127, 'Beier, Abshire And Cummings', 'mwunsch@klocko.com', '', 'http://www.2iqhzyrj.com', '2019-07-26 22:42:37', '2019-07-26 22:42:37'),
(128, 'Wehner, Schroeder And Casper', 'amina46@hodkiewicz.com', '', 'http://www.s7stpz2l.com', '2019-07-26 22:42:37', '2019-07-26 22:42:37'),
(129, 'Ratke Inc', 'damien.smitham@ohara.com', '', 'http://www.exgtbbop.com', '2019-07-26 22:42:37', '2019-07-26 22:42:37'),
(130, 'Klocko-Hansen', 'leuschke.edmond@jakubowski.com', '', 'http://www.xuh0qg6c.com', '2019-07-26 22:42:37', '2019-07-26 22:42:37'),
(131, 'Hane PLC', 'vbecker@mertz.com', '', 'http://www.utmjssh2.com', '2019-07-26 22:42:37', '2019-07-26 22:42:37'),
(132, 'Kozey And Sons', 'aimee73@green.com', '', 'http://www.xwytncuw.com', '2019-07-26 22:42:37', '2019-07-26 22:42:37');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
CREATE TABLE IF NOT EXISTS `employees` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `company_id` int(11) DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `employees_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `company_id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES
(1, 1, 'Chanel', 'Yundt', 'maxie65@example.net', '+1-928-848-8692', '2019-07-26 22:42:37', '2019-07-26 22:42:37'),
(2, 2, 'Korey', 'Raynor', 'schmidt.cortez@example.net', '805-722-9977', '2019-07-26 22:42:37', '2019-07-26 22:42:37'),
(3, 3, 'Luis', 'Lakin', 'obergstrom@example.org', '(537) 594-2059 x5665', '2019-07-26 22:42:37', '2019-07-26 22:42:37'),
(4, 4, 'Kaia', 'Block', 'devin.emmerich@example.net', '795-973-8191 x164', '2019-07-26 22:42:37', '2019-07-26 22:42:37'),
(5, 5, 'Elmira', 'Gerhold', 'keyon31@example.net', '+19133301858', '2019-07-26 22:42:37', '2019-07-26 22:42:37'),
(6, 6, 'Amber', 'Pfannerstill', 'hschneider@example.net', '(732) 793-4175 x568', '2019-07-26 22:42:37', '2019-07-26 22:42:37'),
(7, 7, 'Ruthe', 'Abbott', 'flatley.fatima@example.com', '652-785-4460', '2019-07-26 22:42:37', '2019-07-26 22:42:37'),
(8, 8, 'Georgette', 'Crooks', 'ari75@example.net', '+1-492-237-0841', '2019-07-26 22:42:37', '2019-07-26 22:42:37'),
(9, 9, 'Santos', 'Marvin', 'austin.schmitt@example.org', '+18796556291', '2019-07-26 22:42:37', '2019-07-26 22:42:37'),
(10, 10, 'Roslyn', 'Leannon', 'hhane@example.com', '439.383.7203', '2019-07-26 22:42:37', '2019-07-26 22:42:37'),
(11, 11, 'Howell', 'Stamm', 'pasquale.ortiz@example.net', '984.534.9455 x851', '2019-07-26 22:42:37', '2019-07-26 22:42:37'),
(12, 12, 'Richie', 'Lowe', 'ybauch@example.com', '1-334-929-7630', '2019-07-26 22:42:37', '2019-07-26 22:42:37'),
(13, 13, 'Grover', 'Welch', 'langosh.kelli@example.org', '+1 (259) 706-6132', '2019-07-26 22:42:37', '2019-07-26 22:42:37'),
(14, 14, 'Ceasar', 'Feest', 'eula10@example.org', '+1-230-631-8125', '2019-07-26 22:42:37', '2019-07-26 22:42:37'),
(15, 15, 'Celestine', 'Bailey', 'xrobel@example.net', '1-329-272-2160 x033', '2019-07-26 22:42:37', '2019-07-26 22:42:37'),
(16, 16, 'Samantha', 'Schamberger', 'mateo04@example.com', '824-367-6280 x100', '2019-07-26 22:42:37', '2019-07-26 22:42:37'),
(17, 17, 'Cleve', 'Rutherford', 'chelsea.renner@example.com', '(332) 745-1444 x35547', '2019-07-26 22:42:38', '2019-07-26 22:42:38'),
(18, 18, 'Uriel', 'Huels', 'charity60@example.org', '1-815-412-4797', '2019-07-26 22:42:38', '2019-07-26 22:42:38'),
(19, 19, 'Alessandro', 'Braun', 'ssteuber@example.com', '(697) 385-4646 x0760', '2019-07-26 22:42:38', '2019-07-26 22:42:38'),
(20, 20, 'Cole', 'Rippin', 'estel34@example.org', '1-704-528-6447 x2655', '2019-07-26 22:42:38', '2019-07-26 22:42:38'),
(21, 21, 'Kane', 'Witting', 'curtis.waelchi@example.net', '848.665.9203 x0363', '2019-07-26 22:42:38', '2019-07-26 22:42:38'),
(22, 22, 'Verdie', 'Marks', 'laurine.rodriguez@example.com', '(936) 216-3339', '2019-07-26 22:42:38', '2019-07-26 22:42:38'),
(23, 23, 'Elisa', 'Hudson', 'huel.letha@example.com', '642-768-9447', '2019-07-26 22:42:38', '2019-07-26 22:42:38'),
(24, 24, 'Jonatan', 'Mueller', 'desmond89@example.com', '1-359-234-3891 x88635', '2019-07-26 22:42:38', '2019-07-26 22:42:38'),
(25, 25, 'Jessy', 'Runte', 'hkeebler@example.org', '+1-557-216-9859', '2019-07-26 22:42:38', '2019-07-26 22:42:38'),
(26, 26, 'Eleanore', 'Mohr', 'omclaughlin@example.com', '332.573.9688', '2019-07-26 22:42:38', '2019-07-26 22:42:38'),
(27, 27, 'Lori', 'Rutherford', 'casper.josh@example.net', '805-232-8394', '2019-07-26 22:42:38', '2019-07-26 22:42:38'),
(28, 28, 'Maci', 'Romaguera', 'zromaguera@example.com', '245.214.2125 x6426', '2019-07-26 22:42:38', '2019-07-26 22:42:38'),
(29, 29, 'Rowena', 'Gibson', 'eula64@example.org', '291.461.7476', '2019-07-26 22:42:38', '2019-07-26 22:42:38'),
(30, 30, 'Hettie', 'Kuvalis', 'van.glover@example.net', '337.798.7363', '2019-07-26 22:42:38', '2019-07-26 22:42:38'),
(31, 31, 'Tania', 'Mayer', 'kblick@example.net', '(459) 726-5771 x037', '2019-07-26 22:42:38', '2019-07-26 22:42:38'),
(32, 32, 'Benton', 'Wisoky', 'spencer.krajcik@example.net', '1-469-569-3441 x1136', '2019-07-26 22:42:38', '2019-07-26 22:42:38'),
(33, 33, 'Destini', 'Nicolas', 'evan48@example.com', '+1-321-262-1868', '2019-07-26 22:42:38', '2019-07-26 22:42:38'),
(34, 34, 'Iva', 'Stroman', 'lawson85@example.net', '894-228-7569 x75409', '2019-07-26 22:42:38', '2019-07-26 22:42:38'),
(35, 35, 'Marjory', 'Robel', 'bergstrom.brady@example.org', '+1.603.657.9202', '2019-07-26 22:42:38', '2019-07-26 22:42:38'),
(36, 36, 'Izabella', 'Kshlerin', 'cornell32@example.com', '761.637.3894 x3054', '2019-07-26 22:42:38', '2019-07-26 22:42:38'),
(37, 37, 'Alysha', 'Torp', 'sauer.julien@example.org', '+1 (435) 249-4655', '2019-07-26 22:42:38', '2019-07-26 22:42:38'),
(38, 38, 'Diamond', 'Emard', 'vernie.williamson@example.org', '(757) 802-9300', '2019-07-26 22:42:38', '2019-07-26 22:42:38'),
(39, 39, 'Jace', 'Mills', 'lmonahan@example.net', '(876) 286-5556 x557', '2019-07-26 22:42:38', '2019-07-26 22:42:38'),
(40, 40, 'Trey', 'Spinka', 'paucek.queenie@example.net', '+1.471.767.8867', '2019-07-26 22:42:38', '2019-07-26 22:42:38'),
(41, 41, 'Freddie', 'Lueilwitz', 'anderson.bechtelar@example.com', '(220) 386-5470 x758', '2019-07-26 22:42:38', '2019-07-26 22:42:38'),
(42, 42, 'Bethany', 'Prohaska', 'runolfsson.isobel@example.org', '504.238.4247 x4117', '2019-07-26 22:42:38', '2019-07-26 22:42:38'),
(43, 43, 'Fannie', 'McCullough', 'vgaylord@example.net', '505-226-9999 x52151', '2019-07-26 22:42:38', '2019-07-26 22:42:38'),
(44, 44, 'Gillian', 'Hansen', 'orn.yasmeen@example.org', '241.336.3297 x0607', '2019-07-26 22:42:38', '2019-07-26 22:42:38'),
(45, 45, 'Ricky', 'Koch', 'lambert.cole@example.org', '+13407043456', '2019-07-26 22:42:38', '2019-07-26 22:42:38'),
(46, 46, 'Enrique', 'Gleichner', 'camylle29@example.com', '439.903.5963 x76765', '2019-07-26 22:42:38', '2019-07-26 22:42:38'),
(47, 47, 'Noemie', 'Glover', 'cooper86@example.com', '1-429-718-5283', '2019-07-26 22:42:38', '2019-07-26 22:42:38'),
(48, 48, 'Leonie', 'Kihn', 'mann.amira@example.com', '1-740-940-8207', '2019-07-26 22:42:38', '2019-07-26 22:42:38'),
(49, 49, 'Kristina', 'Schaden', 'kayden04@example.net', '628.629.0333 x7160', '2019-07-26 22:42:38', '2019-07-26 22:42:38'),
(50, 50, 'Zander', 'Kilback', 'ernest07@example.org', '+13195047974', '2019-07-26 22:42:38', '2019-07-26 22:42:38'),
(51, 51, 'Andrew', 'Stoltenberg', 'cummerata.jensen@example.net', '426.927.2966', '2019-07-26 22:42:38', '2019-07-26 22:42:38'),
(52, 52, 'Lenora', 'Hickle', 'destiney33@example.net', '596-993-5812 x085', '2019-07-26 22:42:38', '2019-07-26 22:42:38'),
(53, 53, 'Jude', 'Boyle', 'zwalter@example.com', '601.425.4148 x174', '2019-07-26 22:42:38', '2019-07-26 22:42:38'),
(54, 54, 'Deonte', 'Botsford', 'sylvan.pacocha@example.com', '+1-656-461-4069', '2019-07-26 22:42:38', '2019-07-26 22:42:38'),
(55, 55, 'Giovani', 'Monahan', 'gprice@example.org', '(416) 351-3367 x14747', '2019-07-26 22:42:38', '2019-07-26 22:42:38'),
(56, 56, 'Aleen', 'Towne', 'osinski.jude@example.com', '1-526-648-3142', '2019-07-26 22:42:38', '2019-07-26 22:42:38'),
(57, 57, 'Sidney', 'Bergstrom', 'nicklaus47@example.net', '767-945-7926', '2019-07-26 22:42:39', '2019-07-26 22:42:39'),
(58, 58, 'Gerry', 'Schuster', 'qlittle@example.com', '263-787-5824 x56737', '2019-07-26 22:42:39', '2019-07-26 22:42:39'),
(59, 59, 'Rosemarie', 'Weber', 'jimmie.cormier@example.org', '+1.592.615.4160', '2019-07-26 22:42:39', '2019-07-26 22:42:39'),
(60, 60, 'Myrtis', 'Becker', 'rgulgowski@example.net', '536-900-9765 x3054', '2019-07-26 22:42:39', '2019-07-26 22:42:39'),
(61, 61, 'Filiberto', 'Lehner', 'koelpin.yoshiko@example.org', '+1-418-728-9947', '2019-07-26 22:42:39', '2019-07-26 22:42:39'),
(62, 62, 'Zakary', 'Murray', 'ozella.trantow@example.org', '1-887-921-5030 x783', '2019-07-26 22:42:39', '2019-07-26 22:42:39'),
(63, 63, 'Edwin', 'Stanton', 'giovanna08@example.com', '1-881-468-5908', '2019-07-26 22:42:39', '2019-07-26 22:42:39'),
(64, 64, 'Electa', 'Dicki', 'xzulauf@example.com', '980-534-2758', '2019-07-26 22:42:39', '2019-07-26 22:42:39'),
(65, 65, 'Dorris', 'Schinner', 'dbogisich@example.net', '1-796-878-7757', '2019-07-26 22:42:39', '2019-07-26 22:42:39'),
(66, 66, 'Arne', 'Weissnat', 'mcrona@example.org', '1-885-968-5245', '2019-07-26 22:42:39', '2019-07-26 22:42:39'),
(67, 67, 'Elda', 'Bechtelar', 'eula.damore@example.com', '356-274-8439 x62215', '2019-07-26 22:42:39', '2019-07-26 22:42:39'),
(68, 68, 'Wava', 'Nicolas', 'hauck.allie@example.org', '481-537-8331 x661', '2019-07-26 22:42:39', '2019-07-26 22:42:39'),
(69, 69, 'Virginie', 'Klocko', 'roxanne.mcglynn@example.com', '+1.639.510.1519', '2019-07-26 22:42:39', '2019-07-26 22:42:39'),
(70, 70, 'Barney', 'Koelpin', 'xmonahan@example.org', '783-855-3870 x45098', '2019-07-26 22:42:39', '2019-07-26 22:42:39'),
(71, 71, 'Jonatan', 'Lemke', 'monique.runolfsdottir@example.org', '564.632.7129 x250', '2019-07-26 22:42:39', '2019-07-26 22:42:39'),
(72, 72, 'Delaney', 'Keeling', 'jefferey.hyatt@example.com', '1-308-809-2609', '2019-07-26 22:42:39', '2019-07-26 22:42:39'),
(73, 73, 'Llewellyn', 'Durgan', 'brandy76@example.com', '(506) 997-3465', '2019-07-26 22:42:39', '2019-07-26 22:42:39'),
(74, 74, 'Bryce', 'Rempel', 'dturner@example.com', '+19099183473', '2019-07-26 22:42:39', '2019-07-26 22:42:39'),
(75, 75, 'Thad', 'Hoppe', 'mohamed.klein@example.net', '(650) 534-5071 x362', '2019-07-26 22:42:39', '2019-07-26 22:42:39'),
(76, 76, 'Estrella', 'Roberts', 'marta.barrows@example.org', '(804) 893-4415 x4305', '2019-07-26 22:42:39', '2019-07-26 22:42:39'),
(77, 77, 'Americo', 'Lang', 'wilbert75@example.net', '+1-503-839-1958', '2019-07-26 22:42:39', '2019-07-26 22:42:39'),
(78, 78, 'Tabitha', 'Douglas', 'rippin.justice@example.org', '(816) 799-0366 x584', '2019-07-26 22:42:39', '2019-07-26 22:42:39'),
(79, 79, 'Brittany', 'Hagenes', 'berry97@example.com', '+19764322127', '2019-07-26 22:42:39', '2019-07-26 22:42:39'),
(80, 80, 'Edmond', 'Brekke', 'ellsworth.konopelski@example.org', '215.324.8192', '2019-07-26 22:42:39', '2019-07-26 22:42:39'),
(81, 81, 'Jose', 'Rempel', 'gconnelly@example.org', '(771) 742-3174 x102', '2019-07-26 22:42:39', '2019-07-26 22:42:39'),
(82, 82, 'Erin', 'Cassin', 'yhoppe@example.com', '489-226-3801 x419', '2019-07-26 22:42:39', '2019-07-26 22:42:39'),
(83, 83, 'Zola', 'Russel', 'martine03@example.org', '(385) 984-0365 x85969', '2019-07-26 22:42:39', '2019-07-26 22:42:39'),
(84, 84, 'Amelia', 'Shanahan', 'voconner@example.net', '432-629-1546 x506', '2019-07-26 22:42:39', '2019-07-26 22:42:39'),
(85, 85, 'Valentin', 'Turcotte', 'joyce.collier@example.com', '+13616611980', '2019-07-26 22:42:39', '2019-07-26 22:42:39'),
(86, 86, 'Leopold', 'Effertz', 'kareem.cummerata@example.org', '547-562-4600', '2019-07-26 22:42:39', '2019-07-26 22:42:39'),
(87, 87, 'Kane', 'Pagac', 'nkirlin@example.com', '298.889.9930 x77286', '2019-07-26 22:42:39', '2019-07-26 22:42:39'),
(88, 88, 'Mertie', 'VonRueden', 'dereck89@example.net', '458.831.7104', '2019-07-26 22:42:39', '2019-07-26 22:42:39'),
(89, 89, 'Cassandre', 'Kutch', 'thaddeus18@example.com', '275.863.8515', '2019-07-26 22:42:39', '2019-07-26 22:42:39'),
(90, 90, 'Keaton', 'Flatley', 'liliane.turner@example.net', '1-709-847-4865 x704', '2019-07-26 22:42:39', '2019-07-26 22:42:39'),
(91, 91, 'Alicia', 'Luettgen', 'marjory.armstrong@example.org', '375-705-7948', '2019-07-26 22:42:40', '2019-07-26 22:42:40'),
(92, 92, 'Pauline', 'Steuber', 'schinner.keeley@example.com', '1-530-314-7705 x74091', '2019-07-26 22:42:40', '2019-07-26 22:42:40'),
(93, 93, 'Kristoffer', 'Anderson', 'oemmerich@example.org', '342-432-4149', '2019-07-26 22:42:40', '2019-07-26 22:42:40'),
(94, 94, 'Bertha', 'Reichel', 'maverick24@example.com', '1-678-891-3200', '2019-07-26 22:42:40', '2019-07-26 22:42:40'),
(95, 95, 'Lurline', 'Hammes', 'alysa89@example.org', '+1-585-875-9418', '2019-07-26 22:42:40', '2019-07-26 22:42:40'),
(96, 96, 'Madonna', 'Brekke', 'lwhite@example.org', '1-942-292-1723 x1279', '2019-07-26 22:42:40', '2019-07-26 22:42:40'),
(97, 97, 'Margarete', 'Legros', 'caterina05@example.org', '790.678.6299 x091', '2019-07-26 22:42:40', '2019-07-26 22:42:40'),
(98, 98, 'Efren', 'Herzog', 'timmy.swift@example.com', '1-598-443-6113 x83394', '2019-07-26 22:42:40', '2019-07-26 22:42:40'),
(99, 99, 'Lolita', 'Kuhic', 'camron.harris@example.org', '(207) 337-2854', '2019-07-26 22:42:40', '2019-07-26 22:42:40'),
(100, 100, 'Jaylin', 'Hartmann', 'eldon.armstrong@example.org', '(410) 709-7776', '2019-07-26 22:42:40', '2019-07-26 22:42:40'),
(101, 101, 'Cecelia', 'Vandervort', 'zgreenfelder@example.org', '(225) 565-2816 x5729', '2019-07-26 22:42:40', '2019-07-26 22:42:40'),
(102, 102, 'Clemmie', 'Yundt', 'teagan02@example.org', '686-963-7309 x18091', '2019-07-26 22:42:40', '2019-07-26 22:42:40'),
(103, 103, 'Alysson', 'Hegmann', 'nlueilwitz@example.org', '(586) 492-8282 x4053', '2019-07-26 22:42:40', '2019-07-26 22:42:40'),
(104, 104, 'Alfreda', 'Mraz', 'bertrand33@example.org', '(617) 613-0558 x0683', '2019-07-26 22:42:40', '2019-07-26 22:42:40'),
(105, 105, 'Eulah', 'Doyle', 'qdurgan@example.net', '+18582221739', '2019-07-26 22:42:40', '2019-07-26 22:42:40'),
(106, 106, 'Hunter', 'Champlin', 'jonatan.waelchi@example.org', '550.473.6054 x0889', '2019-07-26 22:42:40', '2019-07-26 22:42:40'),
(107, 107, 'Jerel', 'Dooley', 'kkoss@example.com', '(912) 752-0542', '2019-07-26 22:42:40', '2019-07-26 22:42:40'),
(108, 108, 'Buddy', 'Cassin', 'lexie.senger@example.org', '547-409-5937 x32347', '2019-07-26 22:42:40', '2019-07-26 22:42:40'),
(109, 109, 'Rosalind', 'Hermann', 'twitting@example.org', '(349) 252-1089 x122', '2019-07-26 22:42:40', '2019-07-26 22:42:40'),
(110, 110, 'Allison', 'Schmidt', 'filiberto25@example.com', '1-428-518-5204 x600', '2019-07-26 22:42:40', '2019-07-26 22:42:40'),
(111, 111, 'Wyman', 'Paucek', 'guadalupe.mayert@example.net', '(702) 228-7656 x058', '2019-07-26 22:42:40', '2019-07-26 22:42:40'),
(112, 112, 'Glenna', 'Reichert', 'talia.batz@example.net', '1-364-575-0172 x2123', '2019-07-26 22:42:40', '2019-07-26 22:42:40'),
(113, 113, 'Emelia', 'Breitenberg', 'dallas74@example.net', '1-376-493-1706 x220', '2019-07-26 22:42:40', '2019-07-26 22:42:40'),
(114, 114, 'Bette', 'Schmitt', 'gabe23@example.net', '1-643-360-3868 x51253', '2019-07-26 22:42:40', '2019-07-26 22:42:40'),
(115, 115, 'Chaya', 'Kub', 'jevon19@example.com', '+1-920-576-7968', '2019-07-26 22:42:40', '2019-07-26 22:42:40'),
(116, 116, 'Elsie', 'Cummerata', 'lorine.hammes@example.com', '+1.675.397.7936', '2019-07-26 22:42:40', '2019-07-26 22:42:40'),
(117, 117, 'Emmanuel', 'Mante', 'marquise.heidenreich@example.org', '476.417.2248', '2019-07-26 22:42:40', '2019-07-26 22:42:40'),
(118, 118, 'Jamar', 'Krajcik', 'zboncak.katheryn@example.net', '+1.834.651.2003', '2019-07-26 22:42:40', '2019-07-26 22:42:40'),
(119, 119, 'Llewellyn', 'Fisher', 'chills@example.net', '1-207-898-3576 x3128', '2019-07-26 22:42:40', '2019-07-26 22:42:40'),
(120, 120, 'Mariana', 'Hauck', 'arjun68@example.org', '382.803.2146 x81021', '2019-07-26 22:42:40', '2019-07-26 22:42:40'),
(121, 121, 'Pansy', 'Halvorson', 'malvina.volkman@example.com', '698-663-0610 x249', '2019-07-26 22:42:40', '2019-07-26 22:42:40'),
(122, 122, 'Bonnie', 'O\'Conner', 'jmarvin@example.com', '1-270-236-6971 x950', '2019-07-26 22:42:40', '2019-07-26 22:42:40'),
(123, 123, 'Adrien', 'Kuhic', 'mmoore@example.com', '318.652.2021', '2019-07-26 22:42:40', '2019-07-26 22:42:40'),
(124, 124, 'Roel', 'Terry', 'pearline05@example.com', '736-228-1527 x659', '2019-07-26 22:42:40', '2019-07-26 22:42:40'),
(125, 125, 'Arlo', 'Stroman', 'ojacobs@example.org', '1-816-443-3502 x712', '2019-07-26 22:42:40', '2019-07-26 22:42:40'),
(126, 126, 'Luna', 'Brakus', 'rbailey@example.org', '1-646-335-2816 x2183', '2019-07-26 22:42:40', '2019-07-26 22:42:40'),
(127, 127, 'Jalyn', 'Moen', 'luisa.casper@example.com', '570-945-6272 x2457', '2019-07-26 22:42:40', '2019-07-26 22:42:40'),
(128, 128, 'Birdie', 'King', 'ahalvorson@example.com', '403.243.3605 x647', '2019-07-26 22:42:40', '2019-07-26 22:42:40'),
(129, 129, 'Wilburn', 'Brekke', 'kilback.moises@example.org', '392-633-6467', '2019-07-26 22:42:41', '2019-07-26 22:42:41'),
(130, 130, 'Maddison', 'Champlin', 'jacobi.jaren@example.org', '(514) 901-4396 x897', '2019-07-26 22:42:41', '2019-07-26 22:42:41'),
(131, 131, 'Vance', 'Schiller', 'ymertz@example.org', '(627) 450-3786', '2019-07-26 22:42:41', '2019-07-26 22:42:41'),
(132, 132, 'Emiliano', 'Deckow', 'russel.presley@example.net', '+1.670.874.9077', '2019-07-26 22:42:41', '2019-07-26 22:42:41');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_create_companies_table', 1),
(4, '2014_10_12_300000_create_employees_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@admin.com', NULL, '$2y$10$0TmALoQdCU2eWDdJ0h9uSe1ztzgpwRdTBSXyDmvLM8bItHe3tKdU.', NULL, '2019-07-26 22:42:33', '2019-07-26 22:42:33');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
