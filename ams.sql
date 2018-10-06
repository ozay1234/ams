-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 06, 2018 at 05:55 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ams`
--

-- --------------------------------------------------------

--
-- Table structure for table `ref_klasifikasi`
--

CREATE TABLE IF NOT EXISTS `ref_klasifikasi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(25) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `uraian` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

--
-- Dumping data for table `ref_klasifikasi`
--

INSERT INTO `ref_klasifikasi` (`id`, `kode`, `nama`, `uraian`) VALUES
(4, 'KM', 'KEMAHASISWAAN', ''),
(5, 'KM.00', 'LEMBAGA KEMAHASISWAAN', ''),
(6, 'KM.00.00', 'PEMBENTUKAN LEMBAGA KEMAHASISWAAN', ''),
(7, 'KM.00.01', 'PERATURAN PEMBENTUKAN DAN PENYELENGGARAAN LEMBAGA KEMAHASISWAAN ', ''),
(8, 'KM.01', 'STATUS MAHASISWA', ''),
(9, 'KM.01.00', 'CUTI MAHASISWA', ''),
(10, 'KM.01.01', 'PUTUS KULIAH', ''),
(11, 'KM.01.02', 'DROP OUT (DO)', ''),
(12, 'KM.01.03', 'LAPORAN STATUS MAHASISWA', ''),
(13, 'KM.01.04', 'EVALUASI MAHASISWA', ''),
(14, 'KM.02', 'DISPENSASI TIDAK MENGIKUTI KULIAH', ''),
(15, 'KM.03', 'ABSENSI/PRESENSI  KEHADIRAN MAHASISWA', ''),
(16, 'KM.03.00', 'DAFTAR HADIR KULIAH MAHASISWA DAN REKAPITULASI DAFTAR KULIAH MAHASISWA', ''),
(17, 'KM.03.01', 'SURAT PEMBERITAHUAN KETIDAKHADIRAN MAHASISWA', 'SURAT PEMBERITAHUAN KETIDAKHADIRAN MAHASISWA'),
(18, 'KM.03.02', 'PEMBINAAN KETIDAKHADIRAN MAHASISWA', 'PEMBINAAN KETIDAKHADIRAN MAHASISWA'),
(19, 'KM.03.03', 'PELAYANAN DATA KEHADIRAN MAHASISWA', 'PELAYANAN DATA KEHADIRAN MAHASISWA'),
(20, 'KM.03.04', 'LAPORAN KEHADIRAN MAHASISWA', ''),
(21, 'KM.04', 'KESEJAHTERAAN DAN FASILITAS MAHASISWA', ''),
(22, 'KM.04.00', 'BEASISWA', ''),
(23, 'KM.04.01', 'ADMINISTRASI FASILITAS MAHASISWA LAINNYA', ''),
(24, 'KM.05', 'ORGANISASI MAHASISWA', '(DMF/BEM/BEMFA/KPU/HIMA PRODI/UKM)'),
(25, 'KM.05.00', 'PEMBENTUKAN ORGANISASI KEMAHASISWAAN', '(A). PROSES PEMBENTUKAN ORGANISASI KAMAHASISWAAN \r\n(B). SURAT PENETAPAN PEMBENTUKAN ORGANISASI KEMAHASISWAAN'),
(26, 'KM.05.01', 'PENGANGKATAN ANGGOTA', '(A). ADMINISTRASI PENGAJUAN/PENGANGKATAN ANGGOTA \r\n(B). SURAT PENETAPAN PENGANGKATAN/PENGGANTI ANGGOTA TERMASUK NASKAH PENGUKUHAN/SERAH TERIMA JABATAN/JANJI SUMPAH/ SUSUNAN PENGURUS '),
(27, 'KM.05.02', 'ADMINISTRASI PELAKSAAN KEGIATAN ', ''),
(28, 'KM.05.03', 'PENGAJUAN PROPOSAL KEGIATAN', '(A).PROPOSAL KEGIATAN YANG DI AJUKAN\r\n(B). PROPOSAL KEGIATAN YANG DI SETUJUI\r\n(C). LAPORAN PELAKSANAAN KEGIATAN'),
(29, 'KM.05.04', 'LAPORAN TAHUNAN', ''),
(30, 'KM.05.05', 'ALOKASI ANGGARAN DAN PENGGUNAAN DANA KEGIATAN ORGANISASI MAHASISWA', 'ALOKASI ANGGARAN DAN PENGGUNAAN DANA KEGIATAN ORGANISASI MAHASISWA'),
(31, 'KM.06', 'MAHASISWA ASING', ''),
(32, 'KM.06.00', 'BERKAS MAHASISWA ASING', 'MELIPUTI VISA/PASPORT, BEBAS FISKAL, ADMINISTRASI PENGURUSAN KEDATANGAN/KEPULANGAN, DLL'),
(33, 'KM.06.01', 'DATA MAHASISWA ASING', ''),
(34, 'KM.07', 'HIMPUNAN ORANGTUA MAHASISWA(HOTMA)', ''),
(35, 'KM.07.00', 'ANGGARAN DASAR DAN ANGGARAN RUMAH TANGGA HOTMA', ''),
(36, 'KM.07.01', 'SURAT PENETAPAN BIAYA HOTMA', ''),
(37, 'KM.07.02', 'KUITANSI PEMBAYARAN BIAYA HOTMA', ''),
(38, 'HK', 'HUKUM DAN ORGANISASI', ''),
(39, 'TU', 'KETATAUSAHAAN', '');

-- --------------------------------------------------------

--
-- Table structure for table `tr_instansi`
--

CREATE TABLE IF NOT EXISTS `tr_instansi` (
  `id` int(1) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `kepala` varchar(100) NOT NULL,
  `nip_kepala` varchar(100) NOT NULL,
  `logo` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tr_instansi`
--

INSERT INTO `tr_instansi` (`id`, `nama`, `alamat`, `kepala`, `nip_kepala`, `logo`) VALUES
(1, 'Jurusan Teknik Elektro', 'Jl. Majapahit No. 62 Mataram', '', '', 'FB_IMG_1530234674921.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `t_admin`
--

CREATE TABLE IF NOT EXISTS `t_admin` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `username` varchar(15) NOT NULL,
  `password` varchar(75) NOT NULL,
  `nama` varchar(15) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `level` enum('Admin','User') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `t_admin`
--

INSERT INTO `t_admin` (`id`, `username`, `password`, `nama`, `nip`, `jabatan`, `level`) VALUES
(4, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Fahrurrozi', '123', 'staff', 'Admin'),
(7, 'user', 'ee11cbb19052e40b07aac0ca060c23ee', 'oji', '', 'asdfa', 'User');

-- --------------------------------------------------------

--
-- Table structure for table `t_disposisi`
--

CREATE TABLE IF NOT EXISTS `t_disposisi` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `id_surat` int(6) NOT NULL,
  `no_disp` varchar(200) NOT NULL,
  `kpd_yth` varchar(250) NOT NULL,
  `dari` varchar(255) NOT NULL,
  `isi_disposisi` varchar(250) NOT NULL,
  `sifat` enum('Penting','Segera','Biasa') NOT NULL,
  `catatan` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `t_disposisi`
--

INSERT INTO `t_disposisi` (`id`, `id_surat`, `no_disp`, `kpd_yth`, `dari`, `isi_disposisi`, `sifat`, `catatan`) VALUES
(2, 4, '0', 'adfdffdfd', '', 'fasdfasdfa', 'Biasa', 'asdfasdf'),
(13, 5, '121', 'dafsda', 'fads', 'fasda', 'Penting', 'fas'),
(14, 5, '', 'sdgsdfgsd', '', '', '', ''),
(15, 8, '292', 'Pak Sar''i', 'Kajur', '1.Untuk Proses\r\n2.Edarkan\r\n3. Mohon direkap jika ada', 'Penting', '');

-- --------------------------------------------------------

--
-- Table structure for table `t_jabatan`
--

CREATE TABLE IF NOT EXISTS `t_jabatan` (
  `id_jabatan` int(11) NOT NULL AUTO_INCREMENT,
  `nama_jabatan` varchar(255) NOT NULL,
  PRIMARY KEY (`id_jabatan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `t_surat_keluar`
--

CREATE TABLE IF NOT EXISTS `t_surat_keluar` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `kode` varchar(20) NOT NULL,
  `no_agenda` varchar(7) NOT NULL,
  `perihal` mediumtext NOT NULL,
  `tujuan` varchar(250) NOT NULL,
  `no_surat` varchar(100) NOT NULL,
  `tgl_surat` date NOT NULL,
  `tgl_catat` date NOT NULL,
  `keterangan` varchar(200) NOT NULL,
  `file` varchar(200) NOT NULL,
  `pengolah` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `t_surat_masuk`
--

CREATE TABLE IF NOT EXISTS `t_surat_masuk` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `kode` varchar(50) NOT NULL,
  `no_agenda` varchar(7) NOT NULL,
  `perihal` mediumtext NOT NULL,
  `asal` varchar(250) NOT NULL,
  `tujuan` varchar(255) NOT NULL,
  `no_surat` varchar(100) NOT NULL,
  `tgl_surat` date NOT NULL,
  `tgl_diterima` date NOT NULL,
  `keterangan` varchar(200) NOT NULL,
  `file` varchar(200) NOT NULL,
  `pengolah` int(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `t_surat_masuk`
--

INSERT INTO `t_surat_masuk` (`id`, `kode`, `no_agenda`, `perihal`, `asal`, `tujuan`, `no_surat`, `tgl_surat`, `tgl_diterima`, `keterangan`, `file`, `pengolah`) VALUES
(6, 'HK', '0001', 'Mata kuliah yang di tawarkan tahun akademik 2018/2019', 'Kepala UPT-TPB', 'Dekan Fakultas Teknik', '00371/UN18/HK/UPT-TPB/20178', '2018-08-01', '2018-10-01', '', 'IMG_20180918_125929.jpg', 4),
(7, 'KM', '0002', 'Sosialisasi Pengisian KRS Online', 'Dekan Fakultas Teknik', 'Ketua Jurusan Teknik Elektro', '3885/UN.F6/KM/2018', '2018-08-23', '2018-10-01', '', 'IMG_20180918_125109.jpg', 4),
(8, 'TU', '0003', 'Laporan Data Kerusakan Rumah Tempat Tinggal', 'Dekan Fakultas Teknik', 'Ketua Jurusan Teknik Elektro', '3835/UN18.F6/TU/2018', '2018-08-18', '2018-10-01', '', 'IMG_20180918_125802.jpg', 4);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
