/*
SQLyog Ultimate v12.5.1 (64 bit)
MySQL - 8.0.13 : Database - db_malaria
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_malaria` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `db_malaria`;

/*Table structure for table `tb_gejala` */

DROP TABLE IF EXISTS `tb_gejala`;

CREATE TABLE `tb_gejala` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `G001` tinyint(1) DEFAULT NULL,
  `G002` tinyint(1) DEFAULT NULL,
  `G003` tinyint(1) DEFAULT NULL,
  `G004` tinyint(1) DEFAULT NULL,
  `G005` tinyint(1) DEFAULT NULL,
  `G006` tinyint(1) DEFAULT NULL,
  `G007` tinyint(1) DEFAULT NULL,
  `G008` tinyint(1) DEFAULT NULL,
  `G009` tinyint(1) DEFAULT NULL,
  `G010` tinyint(1) DEFAULT NULL,
  `G011` tinyint(1) DEFAULT NULL,
  `G012` tinyint(1) DEFAULT NULL,
  `G013` tinyint(1) DEFAULT NULL,
  `G014` tinyint(1) DEFAULT NULL,
  `G015` tinyint(1) DEFAULT NULL,
  `G016` tinyint(1) DEFAULT NULL,
  `G017` tinyint(1) DEFAULT NULL,
  `G018` tinyint(1) DEFAULT NULL,
  `G019` tinyint(1) DEFAULT NULL,
  `G020` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `tb_gejala` */

insert  into `tb_gejala`(`id`,`G001`,`G002`,`G003`,`G004`,`G005`,`G006`,`G007`,`G008`,`G009`,`G010`,`G011`,`G012`,`G013`,`G014`,`G015`,`G016`,`G017`,`G018`,`G019`,`G020`) values 
(1,1,1,1,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,1),
(2,1,1,0,1,1,0,0,0,0,1,0,0,1,0,0,0,0,0,0,1),
(3,1,1,0,0,1,1,1,1,1,0,1,1,1,1,1,0,1,1,0,1),
(4,1,0,1,0,1,1,0,0,0,0,0,0,1,0,0,1,0,0,0,1);

/*Table structure for table `tb_gejala_1` */

DROP TABLE IF EXISTS `tb_gejala_1`;

CREATE TABLE `tb_gejala_1` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `kode` varchar(5) NOT NULL,
  `gejala` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

/*Data for the table `tb_gejala_1` */

insert  into `tb_gejala_1`(`id`,`kode`,`gejala`) values 
(1,'G001','Demam diatas 40 Celcius'),
(2,'G002','Mengigil'),
(3,'G003','Berkeringat \r\n'),
(4,'G004','Sakit Kepala\r\n'),
(5,'G005','Hilang Kesadaran /Pingsan\r\n'),
(6,'G006','Anemia\r\n'),
(7,'G007','Panas Iregular\r\n'),
(8,'G008','Parasitemia\r\n'),
(9,'G009','Splenomigali\r\n'),
(10,'G010','Muka merah\r\n'),
(11,'G011','Muntah\r\n'),
(12,'G012','Diare\r\n'),
(13,'G013','Pegal-pegal\r\n'),
(14,'G014','Kejang-kejang\r\n'),
(15,'G015','Dehidrasi\r\n'),
(16,'G016','Sesak nafas\r\n'),
(17,'G017','Mual\r\n'),
(18,'G018','Gagal ginjal\r\n'),
(19,'G019','Pendarahan\r\n'),
(20,'G020','Kurang nafsu makan\r\n');

/*Table structure for table `tb_penyakit` */

DROP TABLE IF EXISTS `tb_penyakit`;

CREATE TABLE `tb_penyakit` (
  `id` int(5) NOT NULL,
  `penyakit` varchar(50) DEFAULT NULL,
  `info` longtext NOT NULL,
  `solusi` longtext NOT NULL,
  KEY `id` (`id`),
  CONSTRAINT `tb_penyakit_ibfk_1` FOREIGN KEY (`id`) REFERENCES `tb_gejala` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tb_penyakit` */

insert  into `tb_penyakit`(`id`,`penyakit`,`info`,`solusi`) values 
(1,'Malaria Tertiana','Malaria tertiana adalah salah satu dari jenis-jenis malaria yang terbilang umum dan ringan meski masih ada yang lebih ringan dari ini, yakni malaria ovale. Jenis tertiana adalah kondisi malaria yang ada hubungannya dengan parasit bernama Plasmodium vivax. Parasit inilah yang pada umumnya menyebabkan adanya infeksi pada eritrosit muda di mana diameternya juga memang lebih besar ketimbang yang normal.','\r\nKetika sudah menempuh diagnosa, maka akan dapat ditentukan oleh dokter bahwa malaria tersebut memang jenis malaria tertiana dan pengobatan pun bisa diberikan. Ada sejumlah obat-obatan yang bakal diberikan oleh dokter kepada penderita. Obat penurun demam adalah yang paling pasti diberikan oleh dokter, sekaligus vitamin sebagai cara meningkatkan daya tahan tubuh penderita.'),
(2,'Malaria Quartana','Malaria quartana merupakan salah satu jenis malaria yang disebabkan oleh adanya plasmodium malariae. Jenis malara kuartana juga bisadikatakan merupakan salah satu jenis malaria yang tingkat keparahannya bisa lebih besar dibandingkan dengan jenis malaria yang lain. Masa inkubasi yang terjadi pada malaria jneis quartana ini juga lebih lama dibandingkan dengan jenis malaria yang lain.','Jika anda akan menggunakan cara medis berarti anda harus melakukan pengobatan oleh dokter, biasanya dalam pemberian obat dokter akan memberikan obat yang memiliki funsii untuk membunuh semua parasit yang ada kemudian akan memberikan obat yang bisa menyembuhka infeksi yang ada. Obat-bat yang biasanya dianjurkan oleh dokter untuk pengobatan malaria khususnya malaria quartana ialah seperti  vaksin, Primakuin dll.'),
(3,'Malaria Tropika','penyebab utama dari malaria jenis tropika adalah parasit yang bernama Plasmodium falciparum di mana jenis malaria inilah yang paling sering terjadi komplikasi. Seluruh bentuk eritrosit juga diketahui diserang oleh malaria tropika berbeda dari jenis malaria tertiana yang hanya menyerang eritrosit muda.','Kina 3×2 tablet yang perlu dikonsumsi selama 7 hari.\r\nKombinasi sulfadoksin 1000 mg bersama dengan 25 mg akan pirimetamin per tablet dengan dosis tunggal yang perlu dikonsumsi sebanyak 2-3 tablet.\r\nKombinasi tetrasiklin dan kina.\r\nJenis obat antibiotik seperti tetrasiklin selama 7-10 hari dengan dosis 4 x 250 mg per hari, serta minosiklin dengan dosis 2 x 100 mg per hari yang juga dikonsumsi seminggu.'),
(4,'Malaria Ovale','malaria ovale hampir memiliki kesamaan dengan malaria jenis vivax, perbedaanya ialah pada perubahan pada eritrosit yang dihinggapi parasit mirip dengan plasmodium vivax. D','Minum air yang cukup, Monitoring temperature,Pemberian obat anti malaria');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
