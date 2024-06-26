-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               11.3.2-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for simglabcom
CREATE DATABASE IF NOT EXISTS `simglabcom` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `simglabcom`;

-- Dumping structure for table simglabcom.category
CREATE TABLE IF NOT EXISTS `category` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_title` text NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table simglabcom.category: ~5 rows (approximately)
INSERT INTO `category` (`cat_id`, `cat_title`) VALUES
	(1, 'Heavy Equipment Simulator'),
	(2, 'Safety Training/Accident Experience'),
	(3, 'Manufacturing'),
	(4, 'Shipbuilding Industry'),
	(5, 'Culture/Tourism');

-- Dumping structure for table simglabcom.client
CREATE TABLE IF NOT EXISTS `client` (
  `client_id` int(11) NOT NULL AUTO_INCREMENT,
  `client_name` varchar(70) DEFAULT NULL,
  `client_logo` varchar(50) DEFAULT NULL,
  `client_number` int(11) DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table simglabcom.client: ~19 rows (approximately)
INSERT INTO `client` (`client_id`, `client_name`, `client_logo`, `client_number`) VALUES
	(1, 'Daegu Polytechnic College', '2024-06-11_대구공업대학교.jpg', 1),
	(2, 'University of Ulsan', '2024-06-11_울산대학교.jpg', 2),
	(3, 'Nam-gu, Ulsan Metropolitan City', '2024-06-11_울산광역시-남구.jpg', 3),
	(4, 'Ulsan Metropolitan City', '2024-06-11_울산광역시.jpg', 4),
	(5, 'Ulsan National Institute of Science and Technology', '2024-06-11_울산과학기술원.jpg', 5),
	(6, 'Ulsan National Institute of Science and Technology', '2024-06-11_울산정보산업진흥원.jpg', 6),
	(7, 'Small & Medium Business Technology Information Promotion Agency', '2024-06-11_중소기업기술정보진흥원.jpg', 7),
	(8, 'Korea Information and Communications Industry Promotion Agency', '2024-06-11_정보통신산업진흥원.jpg', NULL),
	(11, 'Korea Institute of Ocean Science & Technology Promotion', '2024-06-11_해양수산과학기술진흥원.jpg', NULL),
	(12, 'Army Engineering School', '2024-06-11_육군공병학교.jpg', NULL),
	(13, 'Korea Hydro & Nuclear Power', '2024-06-11_한국수력원자력주-1.jpg', NULL),
	(14, 'Korea Creative Content Agency', '2024-06-11_한국콘텐츠진흥원.jpg', NULL),
	(15, 'Ministry of Science and ICT', '2024-06-11_과학기술정보통신부.jpg', NULL),
	(16, 'Hanwha Ocean', '2024-06-11_KOC.jpg', NULL),
	(17, 'Korea Shipbuilding & Offshore Engineering', '2024-06-11_한국조선해양-1.jpg', NULL),
	(18, 'Ministry of National Defense of the Republic of Korea', '2024-06-11_대한민국-국방부-1.jpg', NULL),
	(19, 'Hyundai Construction Equipment', '2024-06-11_현대건설기계-1.jpg', NULL),
	(20, 'Hyundai Heavy Industries', '2024-06-11_현대중공업-1.jpg', NULL),
	(21, 'Volvo Korea', '2024-06-11_볼보코리아.jpg', NULL);

-- Dumping structure for table simglabcom.contact_form
CREATE TABLE IF NOT EXISTS `contact_form` (
  `contact_form_ID` int(11) NOT NULL AUTO_INCREMENT,
  `contact_form_name` varchar(50) DEFAULT NULL,
  `contact_form_email` varchar(50) DEFAULT NULL,
  `contact_form_phone` varchar(50) DEFAULT NULL,
  `contact_form_company` varchar(50) DEFAULT NULL,
  `contact_form_subject` varchar(50) DEFAULT NULL,
  `contact_form_message` text DEFAULT NULL,
  `contact_form_date` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`contact_form_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table simglabcom.contact_form: ~9 rows (approximately)
INSERT INTO `contact_form` (`contact_form_ID`, `contact_form_name`, `contact_form_email`, `contact_form_phone`, `contact_form_company`, `contact_form_subject`, `contact_form_message`, `contact_form_date`) VALUES
	(2, 'jh', 'hghg@ggfg.com', 'h', 'hg', 'hg', 'hg', '	2024-06-18'),
	(3, 'Vu Van Hai', 'hghg@ggfg.com', '01043182709', 'jh', 'jh', '', '	2024-06-18'),
	(4, 'Vu Van Hai', 'hghg@ggfg.com', '01043182709', 'jh', 'jh', '', '	2024-06-18'),
	(5, 'Vu Van Hai', 'hghg@ggfg.com', '01043182709', 'gf', 'gf', 'gf', '	2024-06-18'),
	(6, 'Vu Van Hai', 'hghg@ggfg.com', '01043182709', 'gf', 'gf', 'gf', '	2024-06-18'),
	(7, 'Vu Van Hai', 'hghg@ggfg.com', '01043182709', 'gf', 'gf', 'gf', '	2024-06-18'),
	(8, 'Vu Van Hai', 'hghg@ggfg.com', '01043182709', 'gf', 'gf', 'gf', '	2024-06-18'),
	(11, 'test', 'test@gmail.com', '01043182709', 'Hai', 'test', 'submit', '	2024-06-18'),
	(12, 'ggf', 'gffdfd@g.com', 'gf', 'gf', 'gf', 'gf', '2024-06-18');

-- Dumping structure for table simglabcom.news
CREATE TABLE IF NOT EXISTS `news` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `news_title` text DEFAULT NULL,
  `news_content` text DEFAULT NULL,
  `news_date` varchar(50) DEFAULT '',
  `news_cover_image` text DEFAULT NULL,
  PRIMARY KEY (`news_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table simglabcom.news: ~28 rows (approximately)
INSERT INTO `news` (`news_id`, `news_title`, `news_content`, `news_date`, `news_cover_image`) VALUES
	(13, 'Military excavator simulator delivery', 'Military excavator simulator delivery', '2016-12-01', '2024-06-11_Military excavator simulator delivery.jpg'),
	(14, 'Bangudae Petroglyph Augmented Reality Content Development', 'Bangudae Petroglyph Augmented Reality Content Development', '2018-01-08', '2024-06-11_Bangudae Petroglyph Augmented Reality Content Development.png'),
	(15, 'Supplied VR simulator to Army Military Comprehensive School', 'Supplied VR simulator to Army Military Comprehensive School', '2019-08-19', '2024-06-11_Supplied VR simulator to Army Military Comprehensive School.jpg'),
	(16, 'Participated in U-Forum exhibition', 'Participated in U-Forum exhibition', '2019-12-01', '2024-06-11_Participated in U-Forum exhibition.jpg'),
	(17, '2019 Workshop', '2019 Workshop', '2019-12-16', '2024-06-11_2019 Workshop.jpg'),
	(18, 'Busan Institute of Oceans and Fisheries VR experience in progress', 'Busan Institute of Oceans and Fisheries VR experience in progress', '2020-02-05', '2024-06-11_Busan Institute of Oceans and Fisheries VR experience in progress.jpg'),
	(19, 'Selected as a company recognized by Ulsan Economic Promotion Agency', 'Selected as a company recognized by Ulsan Economic Promotion Agency', '2020-02-06', '2024-06-11_Selected as a company recognized by Ulsan Economic Promotion Agency.jpg'),
	(20, 'Supplied excavator simulator to Agricultural Technology Center', 'Supplied excavator simulator to Agricultural Technology Center', '2020-03-13', '2024-06-11_Supplied excavator simulator to Agricultural Technology Center.jpg'),
	(21, 'Internet high school excavator, forklift VR simulator delivery', 'Internet high school excavator, forklift VR simulator delivery', '2020-04-27', '2024-06-11_Internet high school excavator, forklift VR simulator delivery.jpg'),
	(22, 'Supplied Pocheon army excavator VR simulator', 'Supplied Pocheon army excavator VR simulator', '2020-06-23', '2024-06-11_Supplied Pocheon army excavator VR simulator.jpg'),
	(23, 'Development of VR ship fire response simulato', 'Development of VR ship fire response simulato', '2020-07-30', '2024-06-11_Development of VR ship fire response simulator.png'),
	(24, 'Supplied Chuncheon Army Excavator VR Simulator', 'Supplied Chuncheon Army Excavator VR Simulator', '2020-09-09', '2024-06-11_Supplied Chuncheon Army Excavator VR Simulator.jpg'),
	(25, 'Supplied Pocheon Army forklift VR multi-monitor', 'Supplied Pocheon Army forklift VR multi-monitor', '2021-05-28', '2024-06-11_Supplied Pocheon Army forklift VR multi-monitor.jpg'),
	(26, 'Supplied excavator multi-monitor simulator to technical high school', 'Supplied excavator multi-monitor simulator to technical high school', '2021-06-03', '2024-06-11_Supplied excavator multi-monitor simulator to technical high school.jpg'),
	(27, 'Supplied Hongcheon army excavator VR simulator', 'Supplied Hongcheon army excavator VR simulator', '2021-07-30', '2024-06-11_Supplied Hongcheon army excavator VR simulator.jpg'),
	(28, 'Supplied Hongcheon army forklift VR simulator', 'Supplied Hongcheon army forklift VR simulator', '2021-11-02', '2024-06-11_Supplied Hongcheon army forklift VR simulator.jpg'),
	(29, 'VR assembly training solution development', 'VR assembly training solution development', '2021-11-04', '2024-06-11_VR assembly training solution development.png'),
	(30, 'Supplied excavator VR simulator to Yeongcheon military base', 'Supplied excavator VR simulator to Yeongcheon military base', '2022-02-21', '2024-06-11_Supplied excavator VR simulator to Yeongcheon military base.jpg'),
	(31, 'Supplied Science High School Forklift VR Simulator', 'Supplied Science High School Forklift VR Simulator', '2022-02-21', '2024-06-11_Supplied Science High School Forklift VR Simulator.jpg'),
	(32, 'Supplied excavator and forklift VR simulator to technical high school', 'Supplied excavator and forklift VR simulator to technical high school', '2022-03-03', '2024-06-11_Supplied excavator and forklift VR simulator to technical high school.jpg'),
	(33, 'Supplied Science High School Forklift PC Simulator', 'Supplied Science High School Forklift PC Simulator', '2022-03-18', '2024-06-11_Supplied Science High School Forklift PC Simulator.jpg'),
	(34, 'Supplied Science High School Forklift VR Simulator', 'Supplied Science High School Forklift VR Simulator', '2022-03-18', '2024-06-11_Supplied Science High School Forklift VR Simulator2.jpg'),
	(35, 'Supplied Industrial Safety XR Contents to University Technical Education Institute', 'Supplied Industrial Safety XR Contents to University Technical Education Institute', '2022-03-29', '2024-06-11_Supplied Industrial Safety XR Contents to University Technical Education Institute.jpg'),
	(36, 'Supplied Information High School Forklift VR Simulator', 'Supplied Information High School Forklift VR Simulator', '2022-06-20', '2024-06-11_Supplied Information High School Forklift VR Simulator.jpg'),
	(37, 'Supplied High school forklift PC simulator', 'Supplied High school forklift PC simulator', '2022-06-20', '2024-06-11_Supplied High school forklift PC simulator.jpg'),
	(38, 'Supplied Inje Military Forklift PC Simulator', 'Supplied Inje Military Forklift PC Simulator', '2022-06-30', '2024-06-11_Supplied Inje Military Forklift PC Simulator.jpg'),
	(39, 'Development of VR-based transporter simulator', 'Development of VR-based transporter simulator', '2024-06-11', '2024-06-11_Development of VR-based transporter simulator.jpg');

-- Dumping structure for table simglabcom.patcer
CREATE TABLE IF NOT EXISTS `patcer` (
  `patcer_id` int(11) NOT NULL AUTO_INCREMENT,
  `patcer_name` varchar(50) DEFAULT NULL,
  `patcer_img` varchar(50) DEFAULT NULL,
  `patcer_date` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`patcer_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table simglabcom.patcer: ~13 rows (approximately)
INSERT INTO `patcer` (`patcer_id`, `patcer_name`, `patcer_img`, `patcer_date`) VALUES
	(1, '조달청 벤처나라 지정증서', '2024-06-11_조달청-벤처나라-지정증서.jpg', NULL),
	(2, '기업부설창작연구소 인정서', '2024-06-11_기업부설창작연구소-인정서.jpg', NULL),
	(3, '10-1739256호_특허증', '2024-06-11_10-1739256호_특허증.jpg', NULL),
	(4, '10-1664956호_특허증', '2024-06-11_10-1664956호_특허증.jpg', NULL),
	(5, '10-1450163호_특허증', '2024-06-11_10-1450163호_특허증.jpg', NULL),
	(7, '소프트웨어품질인증서-지게차면허실기시뮬레이터VR', '2024-06-11_소프트웨어품질인증서-지게차면허실기시뮬레이터VR.jpg', NULL),
	(8, '소프트웨어품질인증서-지게차면허실기시뮬레이터', '2024-06-11_소프트웨어품질인증서-지게차면허실기시뮬레이터.jpg', NULL),
	(9, '소프트웨어품질인증서-굴삭기면허실기시뮬레이터', '2024-06-11_소프트웨어품질인증서-굴삭기면허실기시뮬레이터.jpg', NULL),
	(10, '소프트웨어품질인증서-VR조립훈련솔루션', '2024-06-11_소프트웨어품질인증서-VR조립훈련솔루션.jpg', NULL),
	(11, '소프트웨어품질인증서-굴삭기면허실기시뮬레이터VR', '2024-06-11_소프트웨어품질인증서-굴삭기면허실기시뮬레이터VR.jpg', NULL);

-- Dumping structure for table simglabcom.product
CREATE TABLE IF NOT EXISTS `product` (
  `pro_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) DEFAULT NULL,
  `pro_title` text NOT NULL,
  `pro_content` text NOT NULL,
  PRIMARY KEY (`pro_id`),
  KEY `cat_id` (`cat_id`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `category` (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table simglabcom.product: ~9 rows (approximately)
INSERT INTO `product` (`pro_id`, `cat_id`, `pro_title`, `pro_content`) VALUES
	(1, 1, 'Excavator Simulator', '-'),
	(2, 1, 'Forklift Simulator', '-'),
	(3, 1, 'Dozer Simulator', '-'),
	(4, 2, 'Ship fire VR content', '-'),
	(5, 2, 'Chemical accident metaverse', '-'),
	(6, 5, 'htg', '<p>hghg</p>'),
	(7, 4, 'test', '<p><img src="/public/uploadEditor/2024-06-14_Hai.png"></p>'),
	(8, 1, 'Forklift Simulator 2', '<ul><li><br></li><li>test menu</li></ul><p><br></p><p><img src="/public/uploadEditor/2024-06-14_desktop.png"></p>'),
	(10, 1, 'Test 06-17', '<ul><li>Test 1</li><li>Test 2</li><li>Test 3</li></ul><p><br></p><p><br></p><p><img src="/public/uploadEditor/2024-06-21_213_우회전금지@4x-100.jpg"></p><p><br></p>');

-- Dumping structure for table simglabcom.slideshow
CREATE TABLE IF NOT EXISTS `slideshow` (
  `slideshow_id` int(11) NOT NULL AUTO_INCREMENT,
  `slideshow_title` varchar(50) DEFAULT NULL,
  `slideshow_summary` varchar(200) DEFAULT NULL,
  `slideshow_img` text DEFAULT NULL,
  `slideshow_hidden` int(11) DEFAULT NULL,
  `slideshow_date` text DEFAULT NULL,
  PRIMARY KEY (`slideshow_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table simglabcom.slideshow: ~6 rows (approximately)
INSERT INTO `slideshow` (`slideshow_id`, `slideshow_title`, `slideshow_summary`, `slideshow_img`, `slideshow_hidden`, `slideshow_date`) VALUES
	(1, 'Home page', 'Home page', '<p><img src="/public/uploadSlideshow/2024-06-21_211_진입금지@4x-100.jpg"><img src="/public/uploadSlideshow/2024-06-21_205_이륜자동차및원동기장치자전거통행금지@4x-100.jpg"></p>', NULL, NULL),
	(2, 'Product - product 1 page', 'Product - product 1 page', '<p><img src="/public/uploadSlideshow/2024-06-21_308_직진및우회전@4x-100.jpg"><img src="/public/uploadSlideshow/2024-06-21_207_경운기트랙터및손수레통행금지@4x-100.jpg"><img src="/public/uploadSlideshow/2024-06-21_305_직진@4x-100.jpg"><img src="/public/uploadSlideshow/2024-06-21_216_유턴금지@4x-100.jpg"></p>', NULL, NULL),
	(3, 'test 1', 'test 1', '<p><img src="/public/uploadSlideshow/2024-06-21_312_양측방통행@4x-100.jpg"><img src="/public/uploadSlideshow/2024-06-20_223_차간거리확보@4x-100.jpg"></p>', NULL, '2024-06-20'),
	(4, 'test3', 'test3', '<p><img src="/public/uploadSlideshow/2024-06-20_202_자동차통행금지@4x-100.jpg"><img src="/public/uploadSlideshow/2024-06-20_201_통행금지@4x-100.jpg"><img src="/public/uploadSlideshow/2024-06-20_205_이륜자동차및원동기장치자전거통행금지@4x-100.jpg"></p>', NULL, '2024-06-20'),
	(5, 'test 1', 'test 1', '<p><img src="/public/uploadSlideshow/2024-06-20_223_차간거리확보@4x-100.jpg"></p>', NULL, '2024-06-21'),
	(7, 'Product', 'Product', '<p><img src="/public/uploadSlideshow/2024-06-21_img_product_5-1-900x680.png"><img src="/public/uploadSlideshow/2024-06-21_img_product_3-2-900x680.png"><img src="/public/uploadSlideshow/2024-06-21_img_product_1-2-900x680.png"></p>', NULL, '2024-06-21');

-- Dumping structure for table simglabcom.user
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` text NOT NULL,
  `password` text NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table simglabcom.user: ~2 rows (approximately)
INSERT INTO `user` (`user_id`, `username`, `password`) VALUES
	(1, 'admin2', 'Simg@123'),
	(2, 'admin', 'e10adc3949ba59abbe56e057f20f883e');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
