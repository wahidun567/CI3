/*
Navicat MySQL Data Transfer

Source Server         : SERVER_LARAGON
Source Server Version : 50724
Source Host           : localhost:3306
Source Database       : ktg_db

Target Server Type    : MYSQL
Target Server Version : 50724
File Encoding         : 65001

Date: 2021-02-09 14:11:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for td_detail_point
-- ----------------------------
DROP TABLE IF EXISTS `td_detail_point`;
CREATE TABLE `td_detail_point` (
  `fn_idpoint` int(11) NOT NULL AUTO_INCREMENT,
  `fn_id_customer` int(11) NOT NULL,
  `fn_jml_point` int(11) NOT NULL,
  PRIMARY KEY (`fn_idpoint`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of td_detail_point
-- ----------------------------

-- ----------------------------
-- Table structure for td_keluhan_investigasi
-- ----------------------------
DROP TABLE IF EXISTS `td_keluhan_investigasi`;
CREATE TABLE `td_keluhan_investigasi` (
  `fn_id` int(11) NOT NULL AUTO_INCREMENT,
  `fc_kdkeluhan` char(30) DEFAULT NULL,
  `fn_iddepartment` int(11) DEFAULT NULL,
  `fv_analisa_akar_masalah` text,
  `fv_rencana_perbaikan` varchar(225) DEFAULT NULL,
  `fd_due_date` date DEFAULT NULL,
  `fv_feedback` text,
  PRIMARY KEY (`fn_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of td_keluhan_investigasi
-- ----------------------------

-- ----------------------------
-- Table structure for td_po
-- ----------------------------
DROP TABLE IF EXISTS `td_po`;
CREATE TABLE `td_po` (
  `fn_iddetail_po` int(11) NOT NULL AUTO_INCREMENT,
  `fn_idpo` int(11) DEFAULT NULL,
  `fc_kdpo` int(11) NOT NULL,
  `fc_kdsj` int(11) NOT NULL,
  `fv_nmbarang` varchar(100) NOT NULL,
  `fn_qty` int(11) NOT NULL,
  `fn_qty_kg` int(11) NOT NULL,
  `f_dimensi` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`fn_iddetail_po`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of td_po
-- ----------------------------

-- ----------------------------
-- Table structure for td_privilage
-- ----------------------------
DROP TABLE IF EXISTS `td_privilage`;
CREATE TABLE `td_privilage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fn_idstatus` int(11) NOT NULL,
  `fn_idlevel` int(11) NOT NULL,
  `r` int(11) NOT NULL,
  `c` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of td_privilage
-- ----------------------------

-- ----------------------------
-- Table structure for tm_barang
-- ----------------------------
DROP TABLE IF EXISTS `tm_barang`;
CREATE TABLE `tm_barang` (
  `fn_id_barang` int(11) NOT NULL AUTO_INCREMENT,
  `fc_kdbarang` varchar(50) NOT NULL,
  `fv_nmbarang` varchar(100) NOT NULL,
  `fn_garansi` int(11) NOT NULL,
  `fv_garansi_detail` varchar(100) NOT NULL,
  `fn_garansi_masa` int(11) NOT NULL,
  PRIMARY KEY (`fn_id_barang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tm_barang
-- ----------------------------

-- ----------------------------
-- Table structure for tm_customer
-- ----------------------------
DROP TABLE IF EXISTS `tm_customer`;
CREATE TABLE `tm_customer` (
  `fn_id_customer` int(11) NOT NULL AUTO_INCREMENT,
  `fv_email` varchar(50) NOT NULL,
  `fv_nmcustomer` varchar(100) NOT NULL,
  `fv_pic_customer` varchar(50) NOT NULL,
  `fv_alamat_customer` text NOT NULL,
  `fv_kecamatan` varchar(50) NOT NULL,
  `fv_kota` varchar(50) NOT NULL,
  `fv_provinsi` varchar(50) NOT NULL,
  `fn_kode_pos` int(11) NOT NULL,
  `fv_npwp` varchar(50) NOT NULL,
  `fc_telp_kantor` decimal(15,0) NOT NULL,
  `fv_no_hp` decimal(15,0) NOT NULL,
  `fn_jumlah_point` int(11) NOT NULL,
  `fv_username` varchar(225) DEFAULT NULL,
  `fv_password` varchar(225) DEFAULT NULL,
  `fn_idlevel` int(11) DEFAULT NULL,
  PRIMARY KEY (`fn_id_customer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tm_customer
-- ----------------------------

-- ----------------------------
-- Table structure for tm_departement
-- ----------------------------
DROP TABLE IF EXISTS `tm_departement`;
CREATE TABLE `tm_departement` (
  `fn_iddepartment` int(11) NOT NULL AUTO_INCREMENT,
  `fv_nmdepartment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`fn_iddepartment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tm_departement
-- ----------------------------

-- ----------------------------
-- Table structure for tm_ekspedisi
-- ----------------------------
DROP TABLE IF EXISTS `tm_ekspedisi`;
CREATE TABLE `tm_ekspedisi` (
  `fn_idekspedisi` int(11) NOT NULL AUTO_INCREMENT,
  `fv_email` varchar(50) NOT NULL,
  `fv_nama_ekspedisi` varchar(100) NOT NULL,
  `fv_pic_ekspedisi` varchar(50) NOT NULL,
  `fv_alamat_ekspedisi` text NOT NULL,
  `fv_kecamatan` varchar(50) NOT NULL,
  `fv_kota` varchar(50) NOT NULL,
  `fv_provinsi` varchar(50) NOT NULL,
  `fn_kode_pos` int(11) NOT NULL,
  `fv_npwp` varchar(50) NOT NULL,
  `fv_telp_kantor` decimal(15,0) NOT NULL,
  `fv_no_hp` decimal(15,0) NOT NULL,
  `fn_jumlah_point` int(11) NOT NULL,
  `fv_username` varchar(225) DEFAULT NULL,
  `fv_password` varchar(225) DEFAULT NULL,
  `fn_idlevel` int(11) DEFAULT NULL,
  PRIMARY KEY (`fn_idekspedisi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tm_ekspedisi
-- ----------------------------

-- ----------------------------
-- Table structure for tm_keluhan
-- ----------------------------
DROP TABLE IF EXISTS `tm_keluhan`;
CREATE TABLE `tm_keluhan` (
  `fn_idkeluhan` int(11) NOT NULL AUTO_INCREMENT,
  `fc_kdkeluhan` char(30) DEFAULT NULL,
  `fc_kdpo` char(50) DEFAULT NULL,
  `fc_kdsj` char(50) DEFAULT NULL,
  `fc_kdbarang` varchar(50) DEFAULT NULL,
  `fn_jml_rusak` int(11) DEFAULT NULL,
  `fv_jenis_keluhan` text,
  `fv_foto_rusak` text,
  `fv_foto_spk` text,
  `fv_indikasi_penyebab` text,
  `fv_nmpelapor` varchar(225) DEFAULT NULL,
  `fv_jabatan_pelapor` varchar(225) DEFAULT NULL,
  `fc_approval` char(1) DEFAULT NULL,
  PRIMARY KEY (`fn_idkeluhan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tm_keluhan
-- ----------------------------

-- ----------------------------
-- Table structure for tm_kriteria
-- ----------------------------
DROP TABLE IF EXISTS `tm_kriteria`;
CREATE TABLE `tm_kriteria` (
  `fn_idkriteria` int(11) NOT NULL,
  `fv_nmkriteria` varchar(100) DEFAULT NULL,
  `fc_param` char(10) DEFAULT NULL,
  PRIMARY KEY (`fn_idkriteria`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tm_kriteria
-- ----------------------------

-- ----------------------------
-- Table structure for tm_ktg
-- ----------------------------
DROP TABLE IF EXISTS `tm_ktg`;
CREATE TABLE `tm_ktg` (
  `fn_id_ktg` int(11) NOT NULL AUTO_INCREMENT,
  `fv_email` varchar(50) DEFAULT NULL,
  `fv_nmktg` varchar(100) DEFAULT NULL,
  `fv_pic_ktg` varchar(50) DEFAULT NULL,
  `fv_alamat_ktg` text,
  `fv_no_hp` varchar(20) DEFAULT NULL,
  `fv_username` varchar(225) CHARACTER SET utf8mb4 DEFAULT NULL,
  `fv_password` varchar(225) DEFAULT NULL,
  `fn_idlevel` int(11) DEFAULT NULL,
  PRIMARY KEY (`fn_id_ktg`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tm_ktg
-- ----------------------------

-- ----------------------------
-- Table structure for tm_level
-- ----------------------------
DROP TABLE IF EXISTS `tm_level`;
CREATE TABLE `tm_level` (
  `fn_idlevel` int(11) NOT NULL AUTO_INCREMENT,
  `fv_nmlevel` varchar(50) NOT NULL,
  PRIMARY KEY (`fn_idlevel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tm_level
-- ----------------------------

-- ----------------------------
-- Table structure for tm_penilaian_keluhan
-- ----------------------------
DROP TABLE IF EXISTS `tm_penilaian_keluhan`;
CREATE TABLE `tm_penilaian_keluhan` (
  `fn_idpenilaian_keluhan` int(11) NOT NULL AUTO_INCREMENT,
  `fc_kdpo` char(50) NOT NULL,
  `fc_kdsj` char(50) NOT NULL,
  `fn_idkriteria` int(11) NOT NULL,
  `fn_point` int(11) NOT NULL,
  `fn_bobot` int(11) NOT NULL,
  `fn_iddepartment` int(11) DEFAULT NULL,
  `fc_param` char(10) DEFAULT NULL,
  PRIMARY KEY (`fn_idpenilaian_keluhan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tm_penilaian_keluhan
-- ----------------------------

-- ----------------------------
-- Table structure for tm_penilaian_pengiriman
-- ----------------------------
DROP TABLE IF EXISTS `tm_penilaian_pengiriman`;
CREATE TABLE `tm_penilaian_pengiriman` (
  `fn_idpenilaian_pengiriman` int(11) NOT NULL AUTO_INCREMENT,
  `fc_kdpo` int(11) NOT NULL,
  `fc_kdsj` int(11) NOT NULL,
  `fn_id_customer` int(11) NOT NULL,
  `fn_idkriteria` int(11) NOT NULL,
  `fn_poin` int(11) NOT NULL,
  `fn_bobot_ekspedisi` int(11) NOT NULL,
  `fn_bobot_ktg` int(11) NOT NULL,
  `fv_saran` text NOT NULL,
  `fc_param` char(10) DEFAULT NULL,
  PRIMARY KEY (`fn_idpenilaian_pengiriman`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tm_penilaian_pengiriman
-- ----------------------------

-- ----------------------------
-- Table structure for tm_po
-- ----------------------------
DROP TABLE IF EXISTS `tm_po`;
CREATE TABLE `tm_po` (
  `fn_idpo` int(11) NOT NULL AUTO_INCREMENT,
  `fc_kdpo` char(50) NOT NULL,
  `fd_tglpo` date NOT NULL,
  `fc_kdsj` char(50) DEFAULT NULL,
  `fd_tglsj` date DEFAULT NULL,
  `fd_target_tglkirim` date NOT NULL,
  `fd_target_tglsampai` date NOT NULL,
  `fd_tglmuat` date DEFAULT NULL,
  `fv_nm_penerima` varchar(225) DEFAULT NULL,
  `fv_jabatan_penerima` varchar(225) DEFAULT NULL,
  `fd_tgl_konfirmasi_terima_barang` date NOT NULL,
  `fd_tgl_penilaian` date NOT NULL,
  `fn_point` int(11) NOT NULL,
  `fv_nm_penilai` varchar(225) NOT NULL,
  `fv_jabatan_penilai` varchar(225) NOT NULL,
  `fv_alamat_kirim` text NOT NULL,
  `fv_jns_angkutan` varchar(50) DEFAULT NULL,
  `fv_syarat_ekspedisi` text,
  `fv_dimensi` varchar(50) DEFAULT NULL,
  `fm_harga_ekspedisi` double DEFAULT NULL,
  PRIMARY KEY (`fn_idpo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tm_po
-- ----------------------------

-- ----------------------------
-- Table structure for tm_status
-- ----------------------------
DROP TABLE IF EXISTS `tm_status`;
CREATE TABLE `tm_status` (
  `fn_idstatus` int(11) NOT NULL AUTO_INCREMENT,
  `fv_name_sts` varchar(50) NOT NULL,
  `fc_param` char(10) DEFAULT NULL,
  PRIMARY KEY (`fn_idstatus`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tm_status
-- ----------------------------

-- ----------------------------
-- Table structure for t_status
-- ----------------------------
DROP TABLE IF EXISTS `t_status`;
CREATE TABLE `t_status` (
  `fc_param` char(10) NOT NULL,
  `fc_kode` char(2) NOT NULL,
  `fv_value` char(50) DEFAULT NULL,
  PRIMARY KEY (`fc_param`,`fc_kode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_status
-- ----------------------------
