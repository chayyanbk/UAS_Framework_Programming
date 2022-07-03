/*
SQLyog Enterprise - MySQL GUI v8.05 
MySQL - 5.5.5-10.4.24-MariaDB : Database - sp_komputer
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`sp_komputer` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `sp_komputer`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `nama_lengkap` varchar(30) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`username`,`password`,`nama_lengkap`) values ('admin','21232f297a57a5a743894a0e4a801fc3','Administrator'),('RYU','f3770595e0cb4d9a988bd5da98d2187d','Rizky Yuni Utami'),('januriawan','21232f297a57a5a743894a0e4a801fc3','Fajar Januriawan'),('bagas','ee776a18253721efe8a62e4abd29dc47','bagas');

/*Table structure for table `basis_pengetahuan` */

DROP TABLE IF EXISTS `basis_pengetahuan`;

CREATE TABLE `basis_pengetahuan` (
  `kode_pengetahuan` int(11) NOT NULL AUTO_INCREMENT,
  `kode_penyakit` int(11) NOT NULL,
  `kode_gejala` int(11) NOT NULL,
  `mb` double(11,1) NOT NULL,
  `md` double(11,1) NOT NULL,
  PRIMARY KEY (`kode_pengetahuan`)
) ENGINE=MyISAM AUTO_INCREMENT=105 DEFAULT CHARSET=latin1;

/*Data for the table `basis_pengetahuan` */

insert  into `basis_pengetahuan`(`kode_pengetahuan`,`kode_penyakit`,`kode_gejala`,`mb`,`md`) values (5,33,1,0.4,0.2),(6,33,3,1.0,0.2),(14,33,2,0.4,0.2),(15,34,4,0.8,0.2),(16,36,10,0.4,0.2),(23,34,6,1.0,0.2),(24,35,9,0.8,0.2),(104,36,11,0.7,0.3),(103,34,5,0.2,0.8),(51,35,7,0.8,0.2),(52,35,8,1.0,0.0);

/*Table structure for table `hasil` */

DROP TABLE IF EXISTS `hasil`;

CREATE TABLE `hasil` (
  `id_hasil` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` varchar(50) NOT NULL DEFAULT '0',
  `penyakit` text NOT NULL,
  `gejala` text NOT NULL,
  `hasil_id` int(11) NOT NULL,
  `hasil_nilai` varchar(16) NOT NULL,
  PRIMARY KEY (`id_hasil`)
) ENGINE=MyISAM AUTO_INCREMENT=283 DEFAULT CHARSET=latin1;

/*Data for the table `hasil` */

insert  into `hasil`(`id_hasil`,`tanggal`,`penyakit`,`gejala`,`hasil_id`,`hasil_nilai`) values (201,'2018-02-20 13:25:09','a:10:{i:10;s:6:\"0.6480\";i:11;s:6:\"0.6000\";i:8;s:6:\"0.6000\";i:13;s:6:\"0.4800\";i:9;s:6:\"0.4720\";i:4;s:6:\"0.2960\";i:5;s:6:\"0.2400\";i:1;s:6:\"0.1200\";i:12;s:6:\"0.1200\";i:7;s:6:\"0.1200\";}','a:5:{i:1;s:1:\"3\";i:2;s:1:\"1\";i:3;s:1:\"5\";i:5;s:1:\"4\";i:7;s:1:\"2\";}',10,'0.6480'),(202,'2018-02-20 15:51:20','a:9:{i:3;s:6:\"1.0000\";i:2;s:6:\"0.8240\";i:5;s:6:\"0.2400\";i:10;s:6:\"0.1200\";i:12;s:6:\"0.1200\";i:9;s:6:\"0.1200\";i:7;s:6:\"0.1200\";i:1;s:6:\"0.1200\";i:4;s:6:\"0.1200\";}','a:4:{i:1;s:1:\"3\";i:7;s:1:\"6\";i:14;s:1:\"1\";i:15;s:1:\"2\";}',3,'1.0000'),(204,'2018-02-20 18:19:53','a:2:{i:2;s:6:\"0.6000\";i:13;s:6:\"0.4800\";}','a:4:{i:1;s:1:\"5\";i:3;s:1:\"2\";i:5;s:1:\"5\";i:7;s:1:\"2\";}',2,'0.6000'),(205,'2018-02-20 18:20:05','a:2:{i:9;s:6:\"0.8000\";i:7;s:6:\"0.6000\";}','a:2:{i:38;s:1:\"3\";i:40;s:1:\"2\";}',9,'0.8000'),(206,'2018-02-20 20:18:58','a:4:{i:10;s:6:\"1.0000\";i:9;s:6:\"0.6000\";i:7;s:6:\"0.6000\";i:11;s:6:\"0.4000\";}','a:4:{i:38;s:1:\"3\";i:40;s:1:\"3\";i:41;s:1:\"1\";i:42;s:1:\"4\";}',10,'1.0000'),(207,'2018-02-20 20:19:30','a:2:{i:5;s:6:\"0.8000\";i:1;s:6:\"0.4800\";}','a:2:{i:12;s:1:\"3\";i:16;s:1:\"1\";}',5,'0.8000'),(209,'2018-02-21 05:43:56','a:7:{i:2;s:6:\"0.6832\";i:5;s:6:\"0.2400\";i:12;s:6:\"0.1200\";i:10;s:6:\"0.1200\";i:7;s:6:\"0.1200\";i:1;s:6:\"0.1200\";i:4;s:6:\"0.1200\";}','a:3:{i:1;s:1:\"3\";i:3;s:1:\"2\";i:5;s:1:\"5\";}',2,'0.6832'),(210,'2018-02-21 09:13:13','a:0:{}','a:3:{i:1;s:1:\"8\";i:3;s:1:\"9\";i:6;s:1:\"7\";}',0,''),(211,'2018-02-21 09:35:01','a:1:{i:12;s:6:\"0.4800\";}','a:1:{i:35;s:1:\"3\";}',12,'0.4800'),(212,'2018-02-21 10:18:30','a:8:{i:5;s:6:\"0.1600\";i:10;s:6:\"0.0800\";i:12;s:6:\"0.0800\";i:9;s:6:\"0.0800\";i:7;s:6:\"0.0800\";i:4;s:6:\"0.0800\";i:1;s:6:\"0.0800\";i:2;s:6:\"0.0800\";}','a:1:{i:1;s:1:\"4\";}',5,'0.1600'),(213,'2018-02-21 11:48:56','a:4:{i:4;s:6:\"0.2704\";i:11;s:6:\"0.2400\";i:8;s:6:\"0.2400\";i:10;s:6:\"0.2000\";}','a:3:{i:1;s:1:\"5\";i:2;s:1:\"4\";i:4;s:1:\"4\";}',4,'0.2704'),(214,'2018-02-21 11:50:21','a:9:{i:13;s:6:\"0.4800\";i:2;s:6:\"0.3744\";i:5;s:6:\"0.1600\";i:12;s:6:\"0.0800\";i:10;s:6:\"0.0800\";i:7;s:6:\"0.0800\";i:4;s:6:\"0.0800\";i:1;s:6:\"0.0800\";i:9;s:6:\"0.0800\";}','a:3:{i:1;s:1:\"4\";i:3;s:1:\"4\";i:7;s:1:\"2\";}',13,'0.4800'),(215,'2018-02-21 11:52:04','a:3:{i:7;s:6:\"0.6400\";i:5;s:6:\"0.6400\";i:2;s:6:\"0.6000\";}','a:4:{i:7;s:1:\"8\";i:15;s:1:\"3\";i:16;s:1:\"2\";i:39;s:1:\"2\";}',7,'0.6400'),(216,'2018-02-21 11:52:21','a:2:{i:2;s:6:\"1.0000\";i:11;s:6:\"0.8560\";}','a:4:{i:5;s:1:\"5\";i:15;s:1:\"1\";i:36;s:1:\"2\";i:42;s:1:\"3\";}',2,'1.0000'),(217,'2018-02-21 12:54:09','a:3:{i:9;s:6:\"0.8000\";i:1;s:6:\"0.6400\";i:5;s:6:\"0.3200\";}','a:3:{i:5;s:1:\"2\";i:12;s:1:\"2\";i:16;s:1:\"4\";}',9,'0.8000'),(218,'2018-02-21 12:54:43','a:3:{i:9;s:6:\"0.8000\";i:1;s:6:\"0.6400\";i:5;s:6:\"0.3200\";}','a:3:{i:5;s:1:\"2\";i:12;s:1:\"2\";i:16;s:1:\"4\";}',9,'0.8000'),(221,'2018-02-22 18:47:41','a:9:{i:2;s:6:\"0.8320\";i:10;s:6:\"0.4624\";i:11;s:6:\"0.3600\";i:8;s:6:\"0.3600\";i:5;s:6:\"0.3200\";i:12;s:6:\"0.1600\";i:7;s:6:\"0.1600\";i:9;s:6:\"0.1600\";i:1;s:6:\"0.1600\";}','a:4:{i:1;s:1:\"2\";i:2;s:1:\"3\";i:3;s:1:\"1\";i:4;s:1:\"7\";}',2,'0.8320'),(222,'2018-02-27 14:12:19','a:7:{i:9;s:6:\"0.6640\";i:5;s:6:\"0.3200\";i:12;s:6:\"0.1600\";i:2;s:6:\"0.1600\";i:7;s:6:\"0.1600\";i:1;s:6:\"0.1600\";i:4;s:6:\"0.0400\";}','a:3:{i:1;s:1:\"2\";i:2;s:1:\"7\";i:5;s:1:\"3\";}',9,'0.6640'),(223,'2018-03-01 14:53:58','a:10:{i:2;s:6:\"0.5632\";i:10;s:6:\"0.3616\";i:5;s:6:\"0.3200\";i:11;s:6:\"0.2400\";i:8;s:6:\"0.2400\";i:4;s:6:\"0.2272\";i:12;s:6:\"0.1600\";i:7;s:6:\"0.1600\";i:1;s:6:\"0.1600\";i:9;s:6:\"0.1600\";}','a:3:{i:1;s:1:\"2\";i:2;s:1:\"4\";i:3;s:1:\"3\";}',2,'0.5632'),(225,'2018-03-07 05:26:33','a:0:{}','a:0:{}',0,''),(226,'2018-03-07 05:26:53','a:8:{i:5;s:6:\"0.2400\";i:10;s:6:\"0.1200\";i:12;s:6:\"0.1200\";i:9;s:6:\"0.1200\";i:7;s:6:\"0.1200\";i:4;s:6:\"0.1200\";i:1;s:6:\"0.1200\";i:2;s:6:\"0.1200\";}','a:1:{i:1;s:1:\"3\";}',5,'0.2400'),(227,'2018-03-07 05:43:07','a:10:{i:3;s:6:\"1.0000\";i:13;s:6:\"0.3600\";i:5;s:6:\"0.3200\";i:12;s:6:\"0.1600\";i:2;s:6:\"0.1600\";i:10;s:6:\"0.1600\";i:9;s:6:\"0.1600\";i:1;s:6:\"0.1600\";i:7;s:6:\"0.1600\";i:4;s:6:\"0.1600\";}','a:3:{i:1;s:1:\"2\";i:7;s:1:\"3\";i:25;s:1:\"1\";}',3,'1.0000'),(232,'2018-03-07 06:23:47','a:8:{i:5;s:6:\"0.3200\";i:10;s:6:\"0.1600\";i:12;s:6:\"0.1600\";i:9;s:6:\"0.1600\";i:7;s:6:\"0.1600\";i:2;s:6:\"0.1600\";i:1;s:6:\"0.1600\";i:4;s:6:\"0.0400\";}','a:2:{i:1;s:1:\"2\";i:4;s:1:\"5\";}',5,'0.3200'),(233,'2018-03-07 06:24:13','a:8:{i:5;s:6:\"0.3200\";i:10;s:6:\"0.1600\";i:12;s:6:\"0.1600\";i:9;s:6:\"0.1600\";i:7;s:6:\"0.1600\";i:2;s:6:\"0.1600\";i:1;s:6:\"0.1600\";i:4;s:6:\"0.0400\";}','a:2:{i:1;s:1:\"2\";i:4;s:1:\"5\";}',5,'0.3200'),(275,'2018-03-13 12:57:51','a:7:{i:5;s:6:\"0.4000\";i:10;s:6:\"0.2000\";i:12;s:6:\"0.2000\";i:9;s:6:\"0.2000\";i:7;s:6:\"0.2000\";i:4;s:6:\"0.2000\";i:2;s:6:\"0.2000\";}','a:1:{i:1;s:1:\"1\";}',5,'0.4000'),(276,'2018-03-13 13:10:17','a:0:{}','a:1:{i:1;s:1:\"5\";}',0,''),(277,'2018-03-13 13:10:32','a:7:{i:5;s:6:\"0.1600\";i:10;s:6:\"0.0800\";i:12;s:6:\"0.0800\";i:9;s:6:\"0.0800\";i:7;s:6:\"0.0800\";i:4;s:6:\"0.0800\";i:2;s:6:\"0.0800\";}','a:1:{i:1;s:1:\"4\";}',5,'0.1600'),(278,'2018-03-13 13:21:49','a:0:{}','a:1:{i:1;s:1:\"5\";}',0,''),(253,'2018-03-07 06:41:06','a:11:{i:10;s:6:\"0.6640\";i:11;s:6:\"0.6000\";i:8;s:6:\"0.6000\";i:4;s:6:\"0.3280\";i:5;s:6:\"0.3200\";i:3;s:6:\"0.3200\";i:12;s:6:\"0.1600\";i:7;s:6:\"0.1600\";i:2;s:6:\"0.1600\";i:1;s:6:\"0.1600\";i:9;s:6:\"0.1600\";}','a:3:{i:1;s:1:\"2\";i:2;s:1:\"1\";i:19;s:1:\"2\";}',10,'0.6640'),(254,'2018-03-07 06:41:33','a:8:{i:2;s:6:\"0.6832\";i:5;s:6:\"0.2400\";i:10;s:6:\"0.1200\";i:12;s:6:\"0.1200\";i:9;s:6:\"0.1200\";i:7;s:6:\"0.1200\";i:1;s:6:\"0.1200\";i:4;s:6:\"0.1200\";}','a:2:{i:1;s:1:\"3\";i:3;s:1:\"2\";}',2,'0.6832'),(255,'2018-03-07 06:45:39','a:0:{}','a:0:{}',0,''),(256,'2018-03-07 06:46:37','a:2:{i:13;s:6:\"0.5914\";i:4;s:6:\"0.2400\";}','a:4:{i:20;s:1:\"4\";i:27;s:1:\"3\";i:33;s:1:\"2\";i:34;s:1:\"3\";}',13,'0.5914'),(257,'2018-03-09 00:50:24','a:0:{}','a:0:{}',0,''),(258,'2018-03-09 01:08:28','a:9:{i:10;s:6:\"0.5632\";i:11;s:6:\"0.4800\";i:8;s:6:\"0.4800\";i:5;s:6:\"0.3200\";i:4;s:6:\"0.2944\";i:12;s:6:\"0.1600\";i:9;s:6:\"0.1600\";i:2;s:6:\"0.1600\";i:7;s:6:\"0.1600\";}','a:2:{i:1;s:1:\"2\";i:2;s:1:\"2\";}',10,'0.5632'),(259,'2018-03-09 01:26:39','a:1:{i:12;s:6:\"0.4800\";}','a:2:{i:16;s:1:\"8\";i:17;s:1:\"2\";}',12,'0.4800'),(260,'2018-03-09 01:27:45','a:1:{i:12;s:6:\"0.4800\";}','a:2:{i:16;s:1:\"8\";i:17;s:1:\"2\";}',12,'0.4800'),(261,'2018-03-09 04:51:04','a:10:{i:13;s:6:\"0.8960\";i:8;s:6:\"0.8128\";i:10;s:6:\"0.5840\";i:2;s:6:\"0.5840\";i:11;s:6:\"0.4800\";i:5;s:6:\"0.4000\";i:4;s:6:\"0.2080\";i:12;s:6:\"0.2000\";i:9;s:6:\"0.2000\";i:7;s:6:\"0.2000\";}','a:7:{i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";i:4;s:1:\"5\";i:7;s:1:\"2\";i:8;s:1:\"2\";i:18;s:1:\"2\";}',13,'0.8960'),(262,'2018-03-10 00:04:05','a:3:{i:9;s:6:\"0.4800\";i:13;s:6:\"0.2400\";i:4;s:6:\"0.2400\";}','a:4:{i:4;s:1:\"4\";i:5;s:1:\"3\";i:7;s:1:\"4\";i:9;s:1:\"5\";}',9,'0.4800'),(263,'2018-03-10 03:14:39','a:4:{i:1;s:6:\"0.6400\";i:12;s:6:\"0.3600\";i:6;s:6:\"0.2400\";i:9;s:6:\"0.2400\";}','a:3:{i:9;s:1:\"4\";i:12;s:1:\"2\";i:17;s:1:\"3\";}',1,'0.6400'),(264,'2018-03-10 03:19:27','a:3:{i:11;s:6:\"1.0000\";i:10;s:6:\"0.4000\";i:9;s:6:\"0.4000\";}','a:3:{i:5;s:1:\"4\";i:37;s:1:\"1\";i:41;s:1:\"4\";}',11,'1.0000'),(265,'2018-03-10 03:21:03','a:4:{i:8;s:6:\"0.9293\";i:11;s:6:\"0.4800\";i:10;s:6:\"0.4800\";i:4;s:6:\"0.1600\";}','a:4:{i:2;s:1:\"2\";i:18;s:1:\"4\";i:29;s:1:\"2\";i:34;s:1:\"5\";}',8,'0.9293'),(266,'2018-03-10 03:22:27','a:3:{i:6;s:6:\"1.0000\";i:7;s:6:\"0.6000\";i:1;s:6:\"0.3200\";}','a:4:{i:12;s:1:\"4\";i:28;s:1:\"5\";i:30;s:1:\"1\";i:32;s:1:\"3\";}',6,'1.0000'),(267,'2018-03-10 17:35:54','a:4:{i:9;s:6:\"0.8000\";i:6;s:6:\"0.4800\";i:13;s:6:\"0.2400\";i:4;s:6:\"0.1600\";}','a:3:{i:5;s:1:\"2\";i:7;s:1:\"4\";i:10;s:1:\"2\";}',9,'0.8000'),(273,'2018-03-11 01:13:51','a:3:{i:6;s:6:\"0.8000\";i:5;s:6:\"0.6000\";i:13;s:6:\"0.0800\";}','a:3:{i:28;s:1:\"3\";i:30;s:1:\"2\";i:33;s:1:\"4\";}',6,'0.8000'),(279,'2022-06-27 23:30:28','a:1:{i:33;s:6:\"0.4832\";}','a:3:{i:1;s:1:\"3\";i:2;s:1:\"9\";i:3;s:1:\"2\";}',33,'0.4832'),(280,'2022-06-27 23:31:22','a:2:{i:35;s:6:\"1.0000\";i:33;s:6:\"0.2000\";}','a:3:{i:2;s:1:\"1\";i:5;s:1:\"1\";i:8;s:1:\"1\";}',35,'1.0000'),(281,'2022-06-27 23:32:10','a:1:{i:33;s:6:\"0.0800\";}','a:4:{i:1;s:1:\"4\";i:5;s:1:\"1\";i:8;s:1:\"5\";i:10;s:1:\"7\";}',33,'0.0800'),(282,'2022-07-01 21:26:15','a:2:{i:33;s:6:\"0.8454\";i:34;s:6:\"0.4800\";}','a:4:{i:1;s:1:\"2\";i:2;s:1:\"4\";i:3;s:1:\"1\";i:4;s:1:\"2\";}',33,'0.8454');

/*Table structure for table `kondisi` */

DROP TABLE IF EXISTS `kondisi`;

CREATE TABLE `kondisi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kondisi` varchar(64) NOT NULL,
  `ket` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `kondisi` */

insert  into `kondisi`(`id`,`kondisi`,`ket`) values (1,'Pasti ya',''),(2,'Hampir pasti ya',''),(3,'Kemungkinan besar ya',''),(4,'Mungkin ya',''),(5,'Tidak tahu',''),(6,'Mungkin tidak',''),(7,'Kemungkinan besar tidak',''),(8,'Hampir pasti tidak',''),(9,'Pasti tidak','');

/*Table structure for table `penyakit` */

DROP TABLE IF EXISTS `penyakit`;

CREATE TABLE `penyakit` (
  `kode_penyakit` int(11) NOT NULL AUTO_INCREMENT,
  `nama_penyakit` varchar(50) NOT NULL,
  `det_penyakit` varchar(500) NOT NULL,
  `srn_penyakit` varchar(500) NOT NULL,
  `gambar` varchar(500) NOT NULL,
  PRIMARY KEY (`kode_penyakit`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

/*Data for the table `penyakit` */

insert  into `penyakit`(`kode_penyakit`,`nama_penyakit`,`det_penyakit`,`srn_penyakit`,`gambar`) values (36,'Bios','Kerusakan bios dapat terjadi karena beberapa hal, seperti gagal update bios','selesaikan update terlebih dahulu agar tidak ada bug pada system','04BiosRusak.jpg'),(34,'Power Supply','power supplay bermasalah disebabkan oleh beberapa hal, seperti Suhu ruangan terlalu panas, ruangan berdebu, overheat','periksa kabel menancap dengan benar, bersihkan power supply, pastikan suhu tidak terlalu panas','02PowerSupply.jpg'),(35,'Hardisk Rusak','Hardisk rusak menyebabkan penyimpanan pada PC tidak maksimal, disebebakan oleh beberapa faktor seperti Badsector, goncangan pada PC, usia','Pengecekan menggunakan software, melakukan pengeceakn System Operasi, dan menjaga secara fisik penggunaan PC','03HardiskRusak.jpg'),(33,'Laptop Mati','laptop mati dapat disebabkan oleh beberapa hal seperi motherboard rusak, baterai tidak berfungsi, kabel cas rusak, dan beberapa faktor lain\r\n','periksa Indikator laptop dengan baik, pastikan baterai berfungsi lakukan pengecekan pada service center','01LaptopMati.jpg');

/*Table structure for table `post` */

DROP TABLE IF EXISTS `post`;

CREATE TABLE `post` (
  `kode_post` int(11) NOT NULL AUTO_INCREMENT,
  `nama_post` varchar(50) NOT NULL,
  `det_post` varchar(15000) NOT NULL,
  `srn_post` varchar(15000) NOT NULL,
  `gambar` varchar(500) NOT NULL,
  PRIMARY KEY (`kode_post`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

/*Data for the table `post` */

insert  into `post`(`kode_post`,`nama_post`,`det_post`,`srn_post`,`gambar`) values (27,'Laptop Mati','<p><strong>Keterangan :</strong></p>\r\n\r\n<p>laptop mati dapat disebabkan oleh beberapa hal seperi motherboard rusak, baterai tidak berfungsi, kabel cas rusak, dan beberapa faktor lain</p>\r\n\r\n<p>&nbsp;</p>\r\n','<p><strong>Saran :</strong></p>\r\n\r\n<p>periksa Indikator laptop dengan baik, pastikan baterai berfungsi lakukan pengecekan pada service center</p>\r\n','01LaptopMati.jpg'),(28,'Power Supply','<p><strong>Keterangan :</strong></p>\r\n\r\n<p>power supplay bermasalah disebabkan oleh beberapa hal, seperti Suhu ruangan terlalu panas, ruangan berdebu, overheat</p>\r\n','<p><strong>Solusi :</strong></p>\r\n\r\n<p>periksa kabel menancap dengan benar, bersihkan power supply, pastikan suhu tidak terlalu panas</p>\r\n','02PowerSupply.jpg'),(29,'Hardisk Rusak','<p><strong>Keterangan :&nbsp;</strong></p>\r\n\r\n<p>Hardisk rusak menyebabkan penyimpanan pada PC tidak maksimal, disebebakan oleh beberapa faktor seperti Badsector, goncangan pada PC, usia</p>\r\n','<p><strong>Solusi :</strong></p>\r\n\r\n<p>Pengecekan menggunakan software, melakukan pengeceakn System Operasi, dan menjaga secara fisik penggunaan PC</p>\r\n','03HardiskRusak.jpg'),(30,'Bios','<p><strong>Keterangan :</strong></p>\r\n\r\n<p>Kerusakan bios dapat terjadi karena beberapa hal, seperti gagal update bios</p>\r\n','<p><strong>Saran :</strong></p>\r\n\r\n<p>selesaikan update terlebih dahulu agar tidak ada bug pada system</p>\r\n','04BiosRusak.jpg');

/*Table structure for table `tb_gejala` */

DROP TABLE IF EXISTS `tb_gejala`;

CREATE TABLE `tb_gejala` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gejala` varchar(50) NOT NULL,
  `createdAt` date DEFAULT NULL,
  `updatedAt` date DEFAULT NULL,
  `deletedAt` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=latin1;

/*Data for the table `tb_gejala` */

insert  into `tb_gejala`(`id`,`gejala`,`createdAt`,`updatedAt`,`deletedAt`) values (1,'Indikator cas tidak nyala',NULL,NULL,NULL),(2,'Aliran listrik tidak ada',NULL,NULL,NULL),(3,'Tombol power tidak berfungsi',NULL,NULL,NULL),(4,'PC dihidupkan tapi tidak bereaksi apa apa',NULL,NULL,NULL),(5,'Tidak ada tampilan di monitor',NULL,NULL,NULL),(6,'Tidak ada lampu indikator led yang menyala',NULL,NULL,NULL),(7,'Muncul tulisan Operating system not found',NULL,NULL,NULL),(8,'Pemrosesan Lambat',NULL,NULL,NULL),(9,'Beberapa folder tidak bisa diakses',NULL,NULL,NULL),(10,'tidak dapat masuk ke bios',NULL,NULL,NULL),(11,'Terdengar bunyi beep beberapa kali saat PC baru di',NULL,NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
