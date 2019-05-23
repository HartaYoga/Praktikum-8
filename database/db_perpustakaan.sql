/*
SQLyog Ultimate
MySQL - 10.1.38-MariaDB : Database - db_perpustakaan
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_perpustakaan` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `db_perpustakaan`;

/*Table structure for table `anggota` */

DROP TABLE IF EXISTS `anggota`;

CREATE TABLE `anggota` (
  `kd_anggota` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `prodi` varchar(50) NOT NULL,
  `jenjang` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  PRIMARY KEY (`kd_anggota`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

/*Data for the table `anggota` */

insert  into `anggota`(`kd_anggota`,`nama`,`prodi`,`jenjang`,`alamat`) values 
(2,'A','1','1','1'),
(3,'B','1','1','kami'),
(4,'C','1','1','1'),
(5,'D','1','1','1'),
(6,'E','1','1','1'),
(17,'F','2','2','2'),
(18,'G','2','2','2'),
(19,'H','2','2','2'),
(20,'I','2','2','2'),
(21,'J','2','2','2'),
(22,'K','2','2','2'),
(23,'L','2','2','2'),
(24,'M','2','2','2'),
(25,'N','2','2','2'),
(26,'O','2','2','2'),
(27,'P','2','2','23'),
(28,'Q','2','2','23'),
(29,'','','','');

/*Table structure for table `buku` */

DROP TABLE IF EXISTS `buku`;

CREATE TABLE `buku` (
  `kd_register` int(11) NOT NULL AUTO_INCREMENT,
  `judul_buku` varchar(50) NOT NULL,
  `pengarang` varchar(50) NOT NULL,
  `penerbit` varchar(50) NOT NULL,
  `tahun_terbit` int(11) NOT NULL,
  PRIMARY KEY (`kd_register`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

/*Data for the table `buku` */

insert  into `buku`(`kd_register`,`judul_buku`,`pengarang`,`penerbit`,`tahun_terbit`) values 
(14,'Judul','Mpu','Gajah',2010),
(15,'jual','Mpu','Mada',2010);

/*Table structure for table `detail_pinjam` */

DROP TABLE IF EXISTS `detail_pinjam`;

CREATE TABLE `detail_pinjam` (
  `kd_register` int(11) NOT NULL,
  `kd_pinjam` int(11) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_kembali` date DEFAULT NULL,
  KEY `kd_register` (`kd_register`),
  KEY `kd_pinjam` (`kd_pinjam`),
  CONSTRAINT `detail_pinjam_ibfk_1` FOREIGN KEY (`kd_register`) REFERENCES `buku` (`kd_register`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `detail_pinjam_ibfk_2` FOREIGN KEY (`kd_pinjam`) REFERENCES `peminjaman` (`kd_pinjam`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `detail_pinjam` */

insert  into `detail_pinjam`(`kd_register`,`kd_pinjam`,`tgl_pinjam`,`tgl_kembali`) values 
(14,4,'2019-04-27',NULL),
(14,6,'2019-05-03',NULL),
(14,7,'2019-05-10',NULL),
(14,8,'2019-05-18',NULL),
(15,9,'2019-05-18',NULL);

/*Table structure for table `peminjaman` */

DROP TABLE IF EXISTS `peminjaman`;

CREATE TABLE `peminjaman` (
  `kd_pinjam` int(11) NOT NULL AUTO_INCREMENT,
  `kd_anggota` int(11) NOT NULL,
  `kd_petugas` int(11) NOT NULL,
  PRIMARY KEY (`kd_pinjam`),
  KEY `kd_anggota` (`kd_anggota`),
  KEY `kd_petugas` (`kd_petugas`),
  CONSTRAINT `peminjaman_ibfk_1` FOREIGN KEY (`kd_anggota`) REFERENCES `anggota` (`kd_anggota`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `peminjaman_ibfk_2` FOREIGN KEY (`kd_petugas`) REFERENCES `petugas` (`kd_petugas`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `peminjaman` */

insert  into `peminjaman`(`kd_pinjam`,`kd_anggota`,`kd_petugas`) values 
(4,2,1),
(6,2,1),
(7,3,1),
(8,2,1),
(9,2,1);

/*Table structure for table `petugas` */

DROP TABLE IF EXISTS `petugas`;

CREATE TABLE `petugas` (
  `kd_petugas` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`kd_petugas`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `petugas` */

insert  into `petugas`(`kd_petugas`,`nama`,`alamat`,`username`,`password`,`last_login`) values 
(1,'Yoga','Dekat','Yoga','12345678','2019-05-23 20:44:58'),
(2,'harta','kamu','harta','1234567890','2019-05-23 21:26:56');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
