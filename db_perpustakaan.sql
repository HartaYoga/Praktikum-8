/*
SQLyog Ultimate v12.4.3 (64 bit)
<<<<<<< HEAD
MySQL - 10.1.31-MariaDB : Database - db_perpustakaan
=======
MySQL - 10.1.38-MariaDB : Database - db_perpustakaan
>>>>>>> dua
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
<<<<<<< HEAD
=======
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_perpustakaan` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `db_perpustakaan`;

>>>>>>> dua
/*Table structure for table `anggota` */

DROP TABLE IF EXISTS `anggota`;

CREATE TABLE `anggota` (
<<<<<<< HEAD
  `kd_anggota` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  `prodi` varchar(255) DEFAULT NULL,
  `jenjang` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`kd_anggota`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `anggota` */

=======
  `Kd_Anggota` int(11) NOT NULL AUTO_INCREMENT,
  `Nama` varchar(225) NOT NULL,
  `Prodi` varchar(225) NOT NULL,
  `Jenjang` varchar(225) NOT NULL,
  `Alamat` text NOT NULL,
  PRIMARY KEY (`Kd_Anggota`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `anggota` */

insert  into `anggota`(`Kd_Anggota`,`Nama`,`Prodi`,`Jenjang`,`Alamat`) values 
(1,'Negara','Ilkom','Semester 5','Bukit'),
(2,'Api','Ilkom','Semester 5','Bukit');

>>>>>>> dua
/*Table structure for table `buku` */

DROP TABLE IF EXISTS `buku`;

CREATE TABLE `buku` (
<<<<<<< HEAD
  `kd_register` int(11) NOT NULL,
  `judulbuku` varchar(255) DEFAULT NULL,
  `pengarang` varchar(255) DEFAULT NULL,
  `penerbit` varchar(255) DEFAULT NULL,
  `tahun_terbit` year(4) DEFAULT NULL,
  PRIMARY KEY (`kd_register`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `buku` */

/*Table structure for table `detil_pinjam` */

DROP TABLE IF EXISTS `detil_pinjam`;

CREATE TABLE `detil_pinjam` (
  `kd_register` int(11) NOT NULL,
  `kd_pinjam` int(11) DEFAULT NULL,
  `tgl_pinjam` date DEFAULT NULL,
  `tgl_kembali` date DEFAULT NULL,
  PRIMARY KEY (`kd_register`),
  KEY `kd_pinjam` (`kd_pinjam`),
  CONSTRAINT `detil_pinjam_ibfk_1` FOREIGN KEY (`kd_register`) REFERENCES `buku` (`kd_register`),
  CONSTRAINT `detil_pinjam_ibfk_2` FOREIGN KEY (`kd_pinjam`) REFERENCES `peminjaman` (`kd_pinjam`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `detil_pinjam` */
=======
  `Kd_Register` int(11) NOT NULL AUTO_INCREMENT,
  `JudulBuku` varchar(225) NOT NULL,
  `Pengarang` varchar(225) NOT NULL,
  `Penerbit` varchar(225) NOT NULL,
  `TahunTerbit` year(4) NOT NULL,
  PRIMARY KEY (`Kd_Register`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `buku` */

insert  into `buku`(`Kd_Register`,`JudulBuku`,`Pengarang`,`Penerbit`,`TahunTerbit`) values 
(1,'Kalkulus','yoga','nah',2019),
(5,'Kalkulus','Yoga','SIDU',2020);

/*Table structure for table `detail_pinjam` */

DROP TABLE IF EXISTS `detail_pinjam`;

CREATE TABLE `detail_pinjam` (
  `Kd_register` int(11) NOT NULL,
  `Kd_pinjam` int(11) NOT NULL,
  `Tgl_pinjam` date NOT NULL,
  `Tgl_kembali` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `detail_pinjam` */

insert  into `detail_pinjam`(`Kd_register`,`Kd_pinjam`,`Tgl_pinjam`,`Tgl_kembali`) values 
(1,4,'2019-04-27','2019-04-27'),
(6,5,'2019-04-27',NULL);
>>>>>>> dua

/*Table structure for table `peminjaman` */

DROP TABLE IF EXISTS `peminjaman`;

CREATE TABLE `peminjaman` (
<<<<<<< HEAD
  `kd_pinjam` int(11) DEFAULT NULL,
  `kd_anggota` int(11) DEFAULT NULL,
  `kd_petugas` int(11) DEFAULT NULL,
  KEY `kd_anggota` (`kd_anggota`),
  KEY `kd_petugas` (`kd_petugas`),
  KEY `kd_pinjam` (`kd_pinjam`),
  CONSTRAINT `peminjaman_ibfk_1` FOREIGN KEY (`kd_anggota`) REFERENCES `anggota` (`kd_anggota`),
  CONSTRAINT `peminjaman_ibfk_2` FOREIGN KEY (`kd_petugas`) REFERENCES `petugas` (`kd_petugas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `peminjaman` */

=======
  `Kd_pinjam` int(11) NOT NULL AUTO_INCREMENT,
  `Kd_anggota` int(11) NOT NULL,
  `Kd_petugas` int(11) NOT NULL,
  PRIMARY KEY (`Kd_pinjam`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `peminjaman` */

insert  into `peminjaman`(`Kd_pinjam`,`Kd_anggota`,`Kd_petugas`) values 
(4,1,2),
(5,2,1);

>>>>>>> dua
/*Table structure for table `petugas` */

DROP TABLE IF EXISTS `petugas`;

CREATE TABLE `petugas` (
<<<<<<< HEAD
  `kd_petugas` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`kd_petugas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `petugas` */

=======
  `Kd_Petugas` int(11) NOT NULL AUTO_INCREMENT,
  `Nama` varchar(225) NOT NULL,
  `Alamat` text NOT NULL,
  PRIMARY KEY (`Kd_Petugas`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `petugas` */

insert  into `petugas`(`Kd_Petugas`,`Nama`,`Alamat`) values 
(1,'Yoga','Jl. Raya'),
(2,'Agus','Jl. Raya');

>>>>>>> dua
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
