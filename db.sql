-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: qlcnnh
-- ------------------------------------------------------
-- Server version	8.0.18

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `username` varchar(200) NOT NULL,
  `password` varchar(200) DEFAULT NULL,
  `role` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doanh_nghiep`
--

DROP TABLE IF EXISTS `doanh_nghiep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doanh_nghiep` (
  `ma` varchar(200) NOT NULL,
  `ten_to_chuc` varchar(200) DEFAULT NULL,
  `dia_chi` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `so_dien_thoai` varchar(20) DEFAULT NULL,
  `so_giay_phep_kinh_doanh` int(11) DEFAULT NULL,
  `so_cmt_nguoi_dai_dien` varchar(20) DEFAULT NULL,
  `chuc_vu_nguoi_dai_dien` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ma`),
  KEY `a_idx` (`so_cmt_nguoi_dai_dien`),
  CONSTRAINT `a` FOREIGN KEY (`so_cmt_nguoi_dai_dien`) REFERENCES `nguoi` (`so_cmt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doanh_nghiep`
--

LOCK TABLES `doanh_nghiep` WRITE;
/*!40000 ALTER TABLE `doanh_nghiep` DISABLE KEYS */;
/*!40000 ALTER TABLE `doanh_nghiep` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `giao_dich`
--

DROP TABLE IF EXISTS `giao_dich`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `giao_dich` (
  `so_giao_dich` int(11) NOT NULL,
  `ngay_giao_dich` date NOT NULL,
  `ma_nhan_vien` varchar(200) DEFAULT NULL,
  `ma_khach_hang` varchar(200) DEFAULT NULL,
  `loai_giao_dich` varchar(200) DEFAULT NULL,
  `noi_dung` varchar(200) DEFAULT NULL,
  `so_tien` float DEFAULT NULL,
  `ma_tai_khoan` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`so_giao_dich`,`ngay_giao_dich`),
  KEY `wer_idx` (`ma_nhan_vien`),
  KEY `aerw_idx` (`ma_khach_hang`),
  KEY `wgrwerg_idx` (`ma_tai_khoan`),
  CONSTRAINT `aerw` FOREIGN KEY (`ma_khach_hang`) REFERENCES `khach_hang` (`ma_khach_hang`),
  CONSTRAINT `wer` FOREIGN KEY (`ma_nhan_vien`) REFERENCES `nhan_vien` (`ma_nhan_vien`),
  CONSTRAINT `wgrwerg` FOREIGN KEY (`ma_tai_khoan`) REFERENCES `tai_khoan` (`ma_tai_khoan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `giao_dich`
--

LOCK TABLES `giao_dich` WRITE;
/*!40000 ALTER TABLE `giao_dich` DISABLE KEYS */;
/*!40000 ALTER TABLE `giao_dich` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `khach_hang`
--

DROP TABLE IF EXISTS `khach_hang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `khach_hang` (
  `ma_khach_hang` varchar(200) NOT NULL,
  `loai` varchar(45) DEFAULT NULL,
  `so_cmt_nguoi` varchar(20) DEFAULT NULL,
  `ma_doanh_nghiep` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ma_khach_hang`),
  KEY `baa_idx` (`so_cmt_nguoi`),
  KEY `ada_idx` (`ma_doanh_nghiep`),
  CONSTRAINT `ada` FOREIGN KEY (`ma_doanh_nghiep`) REFERENCES `doanh_nghiep` (`ma`),
  CONSTRAINT `baa` FOREIGN KEY (`so_cmt_nguoi`) REFERENCES `nguoi` (`so_cmt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `khach_hang`
--

LOCK TABLES `khach_hang` WRITE;
/*!40000 ALTER TABLE `khach_hang` DISABLE KEYS */;
INSERT INTO `khach_hang` VALUES ('khcn000001','cá nhân','12345678900',NULL);
/*!40000 ALTER TABLE `khach_hang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lai_xuat_cho_vay_von`
--

DROP TABLE IF EXISTS `lai_xuat_cho_vay_von`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lai_xuat_cho_vay_von` (
  `ma` varchar(45) NOT NULL,
  `loai_khach_hang` varchar(45) DEFAULT NULL,
  `so_tien_toi_da` float DEFAULT NULL,
  `lai_xuat` float DEFAULT NULL,
  `ky_han` int(11) DEFAULT NULL,
  PRIMARY KEY (`ma`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lai_xuat_cho_vay_von`
--

LOCK TABLES `lai_xuat_cho_vay_von` WRITE;
/*!40000 ALTER TABLE `lai_xuat_cho_vay_von` DISABLE KEYS */;
/*!40000 ALTER TABLE `lai_xuat_cho_vay_von` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lai_xuat_gui_tiet_kiem`
--

DROP TABLE IF EXISTS `lai_xuat_gui_tiet_kiem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lai_xuat_gui_tiet_kiem` (
  `ma` varchar(45) NOT NULL,
  `ky_han_gui` int(11) DEFAULT NULL,
  `lai_xuat_dung_han` float DEFAULT NULL,
  `lai_xuat_rut_truoc_han` float DEFAULT NULL,
  PRIMARY KEY (`ma`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lai_xuat_gui_tiet_kiem`
--

LOCK TABLES `lai_xuat_gui_tiet_kiem` WRITE;
/*!40000 ALTER TABLE `lai_xuat_gui_tiet_kiem` DISABLE KEYS */;
/*!40000 ALTER TABLE `lai_xuat_gui_tiet_kiem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nguoi`
--

DROP TABLE IF EXISTS `nguoi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nguoi` (
  `ho_ten` varchar(200) DEFAULT NULL,
  `dia_chi` varchar(200) DEFAULT NULL,
  `so_cmt` varchar(20) NOT NULL,
  `ngay_cap` date DEFAULT NULL,
  `noi_cap` varchar(200) DEFAULT NULL,
  `ngay_sinh` date DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `so_dien_thoai` varchar(45) DEFAULT NULL,
  `que_quan` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`so_cmt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nguoi`
--

LOCK TABLES `nguoi` WRITE;
/*!40000 ALTER TABLE `nguoi` DISABLE KEYS */;
INSERT INTO `nguoi` VALUES ('Nguyễn Trung Quân',NULL,'12345678900',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `nguoi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhan_vien`
--

DROP TABLE IF EXISTS `nhan_vien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nhan_vien` (
  `ma_nhan_vien` varchar(200) NOT NULL,
  `chuc_vu` varchar(200) DEFAULT NULL,
  `muc_luong` float DEFAULT NULL,
  `ngay_bat_dau_lam_viec` date DEFAULT NULL,
  `username_account` varchar(200) DEFAULT NULL,
  `so_cmt_nguoi` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ma_nhan_vien`),
  KEY `so_idx` (`so_cmt_nguoi`),
  KEY `dfadf_idx` (`username_account`),
  CONSTRAINT `qẻ` FOREIGN KEY (`username_account`) REFERENCES `account` (`username`),
  CONSTRAINT `so` FOREIGN KEY (`so_cmt_nguoi`) REFERENCES `nguoi` (`so_cmt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhan_vien`
--

LOCK TABLES `nhan_vien` WRITE;
/*!40000 ALTER TABLE `nhan_vien` DISABLE KEYS */;
/*!40000 ALTER TABLE `nhan_vien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tai_khoan`
--

DROP TABLE IF EXISTS `tai_khoan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tai_khoan` (
  `ma_tai_khoan` varchar(200) NOT NULL,
  `so_du` float DEFAULT NULL,
  `ma_khach_hang` varchar(200) DEFAULT NULL,
  `ma_nhan_vien_mo` varchar(200) DEFAULT NULL,
  `loai_tai_khoan` varchar(45) DEFAULT NULL,
  `ma_tai_khoan_tiet_kiem` varchar(200) DEFAULT NULL,
  `ma_tai_khoan_vay_von` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ma_tai_khoan`),
  KEY `asd_idx` (`ma_khach_hang`),
  KEY `adsa_idx` (`ma_nhan_vien_mo`),
  KEY `x_idx` (`ma_tai_khoan_tiet_kiem`),
  KEY `y_idx` (`ma_tai_khoan_vay_von`),
  CONSTRAINT `adsa` FOREIGN KEY (`ma_nhan_vien_mo`) REFERENCES `nhan_vien` (`ma_nhan_vien`),
  CONSTRAINT `asd` FOREIGN KEY (`ma_khach_hang`) REFERENCES `khach_hang` (`ma_khach_hang`),
  CONSTRAINT `x` FOREIGN KEY (`ma_tai_khoan_tiet_kiem`) REFERENCES `tai_khoan_tiet_kiem` (`ma`),
  CONSTRAINT `y` FOREIGN KEY (`ma_tai_khoan_vay_von`) REFERENCES `lai_xuat_cho_vay_von` (`ma`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tai_khoan`
--

LOCK TABLES `tai_khoan` WRITE;
/*!40000 ALTER TABLE `tai_khoan` DISABLE KEYS */;
/*!40000 ALTER TABLE `tai_khoan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tai_khoan_tiet_kiem`
--

DROP TABLE IF EXISTS `tai_khoan_tiet_kiem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tai_khoan_tiet_kiem` (
  `ma` varchar(200) NOT NULL,
  `ngay_bat_dau_ky_han` date DEFAULT NULL,
  `ky_han` int(11) DEFAULT NULL,
  `lai_xuat` float DEFAULT NULL,
  `loai_dao_han` int(11) DEFAULT NULL,
  PRIMARY KEY (`ma`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tai_khoan_tiet_kiem`
--

LOCK TABLES `tai_khoan_tiet_kiem` WRITE;
/*!40000 ALTER TABLE `tai_khoan_tiet_kiem` DISABLE KEYS */;
/*!40000 ALTER TABLE `tai_khoan_tiet_kiem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tai_khoan_vay_von`
--

DROP TABLE IF EXISTS `tai_khoan_vay_von`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tai_khoan_vay_von` (
  `ma` varchar(200) NOT NULL,
  `ngay_vay` date DEFAULT NULL,
  `lai_xuat` float DEFAULT NULL,
  `han_tra` date DEFAULT NULL,
  `ky_han_tra_lai` int(11) DEFAULT NULL,
  PRIMARY KEY (`ma`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tai_khoan_vay_von`
--

LOCK TABLES `tai_khoan_vay_von` WRITE;
/*!40000 ALTER TABLE `tai_khoan_vay_von` DISABLE KEYS */;
/*!40000 ALTER TABLE `tai_khoan_vay_von` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-04 14:28:50
