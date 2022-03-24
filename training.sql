-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 14, 2018 at 03:39 AM
-- Server version: 10.0.37-MariaDB
-- PHP Version: 5.6.39

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `training`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', '32c6e8ac176ddd7d64ca5d3c13102e15'),
('umum', 'dd3da90de90167072beb2e5785b1b9a9');

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE IF NOT EXISTS `berita` (
  `id_berita` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(50) NOT NULL,
  `tanggal` datetime NOT NULL,
  `penulis` varchar(40) NOT NULL,
  `isi` text NOT NULL,
  `gambar` varchar(50) NOT NULL,
  PRIMARY KEY (`id_berita`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_berita`, `judul`, `tanggal`, `penulis`, `isi`, `gambar`) VALUES
(9, 'Visi dan Misi PPLK', '2016-05-09 11:45:57', 'Ervan Kurnia', 'Visi:\nProfesional dalam Pelatihan, Sertifikasi Profesi, dan Penyediaan pelayanan komputer untuk mendukung seluruh proses kegiatan sivitas akademika UKDW, serta menjadikan unit pengembangan teknologi pelayanan komputer UKDW.\n\nMisi:\nPPLK (Pusat Pelatihan dan Layanan Komputer) yang berfungsi Melayani dan mengelola kebutuhan penggunaan komputer, Fakultas/Lembaga, Unit, Jurusan, maupun Dosen Mata Kuliah, dalam rangka mendukung proses belajar mengajar.\n\nMengkoordinasikan jadwal penggunaan komputer baik praktikum, bebas/Internet, maupun untuk tugas-tugas lain dengan pihak-pihak terkait.\n\nMerencanakan pengembangan fasilitas (kuantitas dan kualitas) laboratorium, pemeliharaannya dalam mengikuti perkembangan kemajuan teknologi.\n\nIkut serta mengembangkan ilmu pengetahuan dan ketrampilan di bidang ilmu komputer dan ilmu-ilmu pendukungnya sesuai dengan kebutuhan fakultas-fakultas.', './images/11278877145730160571c3f.png'),
(10, 'Jaringan Komputer', '2016-05-10 11:59:20', 'Hiroshi Junio Chandra', 'Jaringan komputer (jaringan) adalah jaringan telekomunikasi yang memungkinkan antar komputer untuk saling bertukar data. Tujuan dari jaringan komputer adalah agar dapat mencapai tujuannya, setiap bagian dari jaringan komputer dapat meminta dan memberikan layanan (service). Pihak yang meminta/menerima layanan disebut klien (client) dan yang memberikan/mengirim layanan disebut peladen (server).Desain ini disebut dengan sistem client-server, dan digunakan pada hampir seluruh aplikasi jaringan komputer.\n\nDua buah komputer yang masing-masing memiliki sebuah kartu jaringan, kemudian dihubungkan melalui kabel maupun nirkabel sebagai medium transmisi data, dan terdapat perangkat lunak sistem operasi jaringan akan membentuk sebuah jaringan komputer yang sederhana.Apabila ingin membuat jaringan komputer yang lebih luas lagi jangkauannya, maka diperlukan peralatan tambahan seperti Hub, Bridge, Switch, Router, Gateway sebagai peralatan interkoneksinya.', './images/126485456657316aa8b3a80.jpg'),
(11, 'Jaringan Nirkabel', '2016-05-10 09:26:53', 'Hiroshi Junio Chandra', '<p><strong>Jaringan nirkabel</strong>&nbsp;(<a href=\"https://id.wikipedia.org/wiki/Bahasa_Inggris\">Inggris</a>:&nbsp;<em>wireless network</em>) adalah bidang disiplin yang berkaitan dengan komunikasi antar sistem&nbsp;<a href=\"https://id.wikipedia.org/wiki/Komputer\">komputer</a>&nbsp;tanpa menggunakan kabel. Jaringan nirkabel ini sering dipakai untuk&nbsp;<a href=\"https://id.wikipedia.org/wiki/Jaringan_komputer\">jaringan komputer</a>&nbsp;baik pada jarak yang dekat (beberapa meter, memakai alat/pemancar&nbsp;<a href=\"https://id.wikipedia.org/wiki/Bluetooth\">bluetooth</a>) maupun pada jarak jauh (lewat&nbsp;<a href=\"https://id.wikipedia.org/wiki/Satelit\">satelit</a>). Bidang ini erat hubungannya dengan bidang&nbsp;<a href=\"https://id.wikipedia.org/wiki/Telekomunikasi\">telekomunikasi</a>,&nbsp;<a href=\"https://id.wikipedia.org/wiki/Teknologi_informasi\">teknologi informasi</a>, dan&nbsp;<a href=\"https://id.wikipedia.org/wiki/Teknik_komputer\">teknik komputer</a>. Jenis jaringan yang populer dalam kategori jaringan nirkabel ini meliputi:&nbsp;<a href=\"https://id.wikipedia.org/wiki/Jaringan_lokal_nirkabel\">Jaringan kawasan lokal nirkabel</a>&nbsp;(<em>wireless LAN/WLAN</em>), dan&nbsp;<a href=\"https://id.wikipedia.org/wiki/Wi-Fi\">Wi-Fi</a>.</p>\n\n<p><strong>Jaringan nirkabel</strong>&nbsp;biasanya menghubungkan satu sistem komputer dengan sistem yang lain dengan menggunakan beberapa macam media transmisi tanpa kabel, seperti:<a href=\"https://id.wikipedia.org/wiki/Gelombang_radio\">gelombang radio</a>,&nbsp;<a href=\"https://id.wikipedia.org/wiki/Gelombang_mikro\">gelombang mikro</a>, maupun cahaya&nbsp;<a href=\"https://id.wikipedia.org/wiki/Infra_merah\">infra merah</a>.</p>\n\n<p>Pada tahun 1970 Norman Abramson, seorang profesor di University of Hawaii, mengembangkan komputer pertama di dunia jaringan komunikasi, ALOHAnet, menggunakan biaya rendah seperti ham-radio. Dengan bi-directional topologi bintang, sistem komputer yang terhubung tujuh ditempatkan lebih dari empat pulau untuk berkomunikasi dengan komputer pusat di Pulau Oahu tanpa menggunakan saluran telepon.</p>\n\n<p>&quot;Pada tahun 1979, FR Gfeller dan U. Bapst menerbitkan makalah di Proceedings IEEE pelaporan percobaan jaringan area lokal nirkabel menggunakan komunikasi infra merah disebarkan. Tak lama kemudian, pada tahun 1980, P. Ferrert melaporkan percobaan penerapan kode satu radio spread spectrum untuk komunikasi di terminal nirkabel IEEE Konferensi Telekomunikasi Nasional. Pada tahun 1984, perbandingan antara infra merah dan CDMA spread spectrum untuk komunikasi jaringan informasi kantor nirkabel diterbitkan oleh IEEE Kaveh Pahlavan di Jaringan Komputer Simposium yang muncul kemudian dalam IEEE Communication Society Magazine. Pada bulan Mei 1985, upaya Marcus memimpin FCC untuk mengumumkan ISM band eksperimental untuk aplikasi komersial teknologi spread spectrum. Belakangan, M. Kavehrad melaporkan percobaan sistem PBX nirkabel kode menggunakan Division Multiple Access. Upaya-upaya ini mendorong kegiatan industri yang signifikan dalam pengembangan dari generasi baru dari jaringan area lokal nirkabel dan diperbarui beberapa lama diskusi di radio portabel dan mobile industri.</p>\n\n<p>Generasi pertama dari modem data nirkabel dikembangkan pada awal 1980-an oleh operator radio amatir, yang sering disebut sebagai radio paket ini. Mereka menambahkan komunikasi data pita suara modem, dengan kecepatan data di bawah 9.600-bit / s, untuk yang sudah ada sistem radio jarak pendek, biasanya dalam dua meter band amatir. Generasi kedua modem nirkabel dikembangkan FCC segera setelah pengumuman di band eksperimental untuk non-militer penggunaan spektrum penyebaran teknologi. Modem ini memiliki kecepatan data yang diberikan atas perintah ratusan kbit / s. Generasi ketiga modem nirkabel ditujukan untuk kompatibilitas dengan LAN yang ada dengan data tingkat atas perintah Mbit / s. Beberapa perusahaan yang mengembangkan produk-produk generasi ketiga dengan kecepatan data di atas 1 Mbit / s dan beberapa produk sudah diumumkan oleh waktu pertama IEEE Workshop on Wireless LAN.</p>\n', './images/14808295465731efad33af7.jpg'),
(12, 'Routing', '2016-05-10 09:29:30', 'Hiroshi Junio Chandra', '<p>A&nbsp;<strong>router</strong>&nbsp;is a&nbsp;<a href=\"https://en.wikipedia.org/wiki/Networking_device\">networking device</a>&nbsp;that forwards&nbsp;<a href=\"https://en.wikipedia.org/wiki/Data_packet\">data packets</a>&nbsp;between&nbsp;<a href=\"https://en.wikipedia.org/wiki/Computer_network\">computer networks</a>. Routers perform the &quot;traffic directing&quot; functions on the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Internet\">Internet</a>. A data packet is typically forwarded from one router to another through the networks that constitute the internetwork until it reaches its destination node.</p>\n\n<p>A router is connected to two or more data lines from different networks (as opposed to a&nbsp;<a href=\"https://en.wikipedia.org/wiki/Network_switch\">network switch</a>, which connects data lines from one single network). When a data packet comes in on one of the lines, the router reads the address information in the packet to determine its ultimate destination. Then, using information in its&nbsp;<a href=\"https://en.wikipedia.org/wiki/Routing_table\">routing table</a>&nbsp;or&nbsp;<a href=\"https://en.wikipedia.org/wiki/Routing_policy\">routing policy</a>, it directs the packet to the next network on its journey. This creates an overlay&nbsp;<a href=\"https://en.wikipedia.org/wiki/Internetwork\">internetwork</a>.</p>\n\n<p>The most familiar type of routers are&nbsp;<a href=\"https://en.wikipedia.org/wiki/Home_router\">home and small office routers</a>&nbsp;that simply pass data, such as web pages, email, IM, and videos between the home computers and the Internet. An example of a router would be the owner&#39;s cable or DSL router, which connects to the Internet through an&nbsp;<a href=\"https://en.wikipedia.org/wiki/Internet_service_provider\">ISP</a>. More sophisticated routers, such as enterprise routers, connect large business or ISP networks up to the powerful&nbsp;<a href=\"https://en.wikipedia.org/wiki/Core_router\">core routers</a>&nbsp;that forward data at high speed along the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Optical_fiber\">optical fiber</a>&nbsp;lines of the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Internet_backbone\">Internet backbone</a>. Though routers are typically dedicated hardware devices, use of software-based routers has grown increasingly common.</p>\n', './images/14496867675731f04a2757d.png');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE IF NOT EXISTS `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `pengajar` varchar(40) NOT NULL,
  `deskripsi` text NOT NULL,
  `color` varchar(7) DEFAULT NULL,
  `start` datetime NOT NULL,
  `end` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `pengajar`, `deskripsi`, `color`, `start`, `end`) VALUES
(20, 'Pelatihan PHP untuk PT. SETIA BUDI UTAMA Jakarta', 'Katon Wijana', 'Pembelajaran meliputi CRUD, search, dsb dengan PHP Codeigniter', '#0071c5', '2016-03-26 09:00:00', '2016-03-28 14:00:00'),
(25, 'Kursus ASP.NET MVC 5 untuk PT. BERLIAN', 'Erick Kurniawan', 'Kursus ASP.NET MVC 5 mulai dari bootstrap, dsb.', '#000', '2016-04-14 10:00:00', '2016-04-18 10:00:00'),
(26, 'Kursus ASP.NET MVC 5 untuk PT. ABC', 'Erick Kurniawan', 'Kursus dimulai dari awal yakni pengenalan ASP, dsb.', '#40E0D0', '2016-05-02 12:00:00', '2016-05-07 12:00:00'),
(28, 'Presentasi Manpro', 'Bapak Willy', 'Manpro Presentasi Project', '#FF0000', '2016-05-12 08:00:00', '2016-05-12 11:00:00'),
(29, 'Presentasi Manpro 2', 'Bapak Danny', 'Presentasi Manpro 2', '#FF0000', '2016-05-19 08:00:00', '2016-05-19 11:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `gambar`
--

CREATE TABLE IF NOT EXISTS `gambar` (
  `id_gambar` int(11) NOT NULL AUTO_INCREMENT,
  `nama_gambar` varchar(100) NOT NULL,
  PRIMARY KEY (`id_gambar`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gambar`
--

INSERT INTO `gambar` (`id_gambar`, `nama_gambar`) VALUES
(8, './images/1703272963572c6d8e19eaf.jpg'),
(9, './images/581324247572c6dc334be4.jpg'),
(10, './images/1830100380572c6dd265b42.png'),
(11, './images/1996908357572c6de590204.jpg'),
(12, './images/1132496496572c6dfec6799.png');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE IF NOT EXISTS `jadwal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_ruang` varchar(3) DEFAULT NULL,
  `tanggal_aw` date DEFAULT NULL,
  `tanggal_ak` date DEFAULT NULL,
  `kode_jurusan` varchar(2) DEFAULT NULL,
  `kode_matakuliah` varchar(6) DEFAULT NULL,
  `tahun_ak` varchar(5) DEFAULT NULL,
  `aktif` int(1) DEFAULT NULL,
  `mata_kuliah` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`id`, `kode_ruang`, `tanggal_aw`, `tanggal_ak`, `kode_jurusan`, `kode_matakuliah`, `tahun_ak`, `aktif`, `mata_kuliah`) VALUES
(62, 'h31', '2016-01-25', '2016-06-17', '71', NULL, '20152', NULL, 'Prak. Pemrog. Web (A)'),
(63, 'h32', '2016-01-25', '2016-06-17', '71', NULL, '20152', NULL, 'Prak. Pemrog. Web (B)'),
(64, 'h33', '2016-01-25', '2016-06-17', '71', NULL, '20152', NULL, 'Pemrog. Mobile (A) Adi'),
(65, 'h34', '2016-01-25', '2016-06-17', '71', NULL, '20152', NULL, 'Prak. Pemrog. Web (C)'),
(66, 'h41', '2016-01-25', '2016-06-17', '71', NULL, '20152', NULL, 'Prak. SBD (A)'),
(67, 'h42', '2016-01-25', '2016-06-17', '71', NULL, '20152', NULL, 'Tek. Animasi (A) P.Nug-Hendro'),
(68, 'h44', '2016-01-25', '2016-06-17', '71', NULL, '20152', NULL, 'Prak. Pemrog. Web (D)'),
(69, 'h51', '2016-01-25', '2016-06-17', '71', NULL, '20152', NULL, 'Prak. SBDE (A) P.Lukas'),
(70, 'i14', '2016-01-25', '2016-06-17', '31', NULL, '20152', NULL, 'Prak. Biodiversitas'),
(71, 'i24', '2016-01-25', '2016-06-17', '11', NULL, '20152', NULL, 'Prak. Statistim (Mnjm)'),
(72, 'i34', '2016-01-25', '2016-06-17', '11', NULL, '20152', NULL, 'Prak. SIM (B)'),
(73, 'b52', '2016-01-25', '2016-06-17', '12', NULL, '20152', 0, 'SIA & Manaj (B)'),
(74, 'b24', '2016-01-25', '2016-06-17', '72', NULL, '20162', NULL, 'Sistem Informasi BM'),
(75, 'd42', '2016-01-25', '2016-06-17', '71', NULL, '2016', NULL, 'Pak Nugroho'),
(77, 'd43', '2016-01-18', '2016-05-27', '71', NULL, '20152', 0, 'Prak. JarKom (F)'),
(79, 'h43', '2016-02-11', '2016-05-26', '71', NULL, '20152', NULL, 'Prak Algoritma Pemrog (A2)'),
(80, 'e22', '2016-02-23', '2016-03-15', '21', NULL, '20152', 1, 'ArchiCAD'),
(81, 'e32', '2016-02-23', '2016-03-15', '21', NULL, '20152', 1, 'ArchiCAD'),
(82, 'e42', '2016-02-23', '2016-03-15', '21', NULL, '20152', 1, 'ArchiCAD'),
(83, 'e23', '2016-02-23', '2016-03-08', '21', NULL, '20152', 1, 'Studio Perancangan Arst 4'),
(84, 'e53', '2016-03-04', '2016-03-11', '21', NULL, '20152', 1, 'Studio Perancangan Arst 4'),
(85, 'd52', '2016-02-26', '2016-05-27', '71', NULL, '20152', 1, 'Latihan Jaringan Nirkabel');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal_lab`
--

CREATE TABLE IF NOT EXISTS `jadwal_lab` (
  `id_jadwal_lab` int(11) NOT NULL AUTO_INCREMENT,
  `id_lab` int(11) NOT NULL,
  `nama_matkul` varchar(100) NOT NULL,
  `prodi` varchar(50) NOT NULL,
  `status` varchar(100) NOT NULL,
  `tanggal_mulai` date NOT NULL,
  `tanggal_selesai` date NOT NULL,
  PRIMARY KEY (`id_jadwal_lab`)
) ENGINE=InnoDB AUTO_INCREMENT=308 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jadwal_lab`
--

INSERT INTO `jadwal_lab` (`id_jadwal_lab`, `id_lab`, `nama_matkul`, `prodi`, `status`, `tanggal_mulai`, `tanggal_selesai`) VALUES
(1, 3, 'Struktur Data (A)', 'Teknik Informatika', 'Reguler', '2016-08-22', '2016-12-17'),
(2, 4, 'Prak. Algo. Pemrograman (C1)', 'Teknik Informatika', 'Reguler', '2016-08-22', '2016-12-17'),
(3, 5, 'Prak. Algo. Pemrograman (H1)', 'Teknik Informatika', 'Reguler', '2016-08-22', '2016-12-17'),
(4, 7, 'Prak. Algo. Pemrograman (B1)', 'Teknik Informatika', 'Reguler', '2016-08-22', '2016-12-17'),
(6, 8, 'Prak. SBD (A)', 'Teknik Informatika', 'Reguler', '2016-08-22', '2016-12-17'),
(7, 9, 'Prak. SBD (C)', 'Teknik Informatika', 'Reguler', '2016-09-01', '2016-12-17'),
(8, 10, 'Prak. PBO (A)', 'Teknik Informatika', 'Reguler', '2016-08-22', '2016-12-17'),
(9, 11, 'Prak. Teknologi Komputer (D1)', 'Teknik Informatika', 'Reguler', '2016-08-22', '2016-12-17'),
(10, 12, 'Prak. SBD (D)', 'Teknik Informatika', 'Reguler', '2016-08-22', '2016-12-17'),
(11, 13, 'Prak. Algoritma Pemrograman (C2)', 'Teknik Informatika', 'Reguler', '2016-08-22', '2016-12-17'),
(12, 14, 'Prak Algoritma Pemrograman (B2)', 'Teknik Informatika', 'Reguler', '2016-08-22', '2016-12-17'),
(13, 15, 'Prak. PBO (C)', 'Teknik Informatika', 'Reguler', '2016-08-22', '2016-12-17'),
(14, 16, 'Prak. Algoritma Pemrograman (A2)', 'Teknik Informatika', 'Reguler', '2016-08-22', '2016-12-17'),
(15, 17, 'Prak. Teknologi Komputer (D2)', 'Teknik Informatika', 'Reguler', '2016-08-22', '2016-12-17'),
(17, 19, 'Prak. Algoritma Pemrograman (D2)', 'Teknik Informatika', 'Reguler', '2016-09-01', '2016-12-17'),
(18, 20, 'Praktika Akuntasi', 'Akuntansi', 'Reguler', '2016-08-22', '2016-12-17'),
(19, 30, 'Prak. Aplikasi Berbasis Desk. (A)', 'Sistem Informasi', 'Reguler', '2016-09-01', '2016-09-01'),
(20, 32, 'Pengolahan Data Multimedia (A)', 'Sistem Informasi', 'Reguler', '2016-08-22', '2016-12-17'),
(21, 35, 'Prak. Aplikasi Berbasis Desk. (B)', 'Sistem Informasi', 'Reguler', '2016-08-22', '2016-12-17'),
(22, 36, 'Prak. Peng Sistem Informasi', 'Sistem Informasi', 'Reguler', '2016-08-22', '2016-12-17'),
(23, 38, 'Teori Dasar - Dasar Pemrograman (B)', 'Sistem Informasi', 'Reguler', '2016-08-22', '2016-12-17'),
(24, 39, 'Prak. Dasar- Dasar Pemrog. (B)', 'Sistem Informasi', 'Reguler', '2016-08-22', '2016-12-17'),
(25, 40, 'Prak. Peng. Sistem Informasi (B)', 'Sistem Informasi', 'Reguler', '2016-08-22', '2016-12-17'),
(26, 41, 'Teori Dasar - Dasar Pemrograman (A)', 'Sistem Informasi', 'Reguler', '2016-08-22', '2016-12-17'),
(27, 42, 'Prak. Dasar- Dasar Pemrog. (A)', 'Sistem Informasi', 'Reguler', '2016-08-22', '2016-12-17'),
(28, 46, 'Praktika Akuntasi', 'Akuntansi', 'Reguler', '2016-08-22', '2016-12-17'),
(29, 58, 'Prak. Metodologi Riset (A)', 'Bioteknologi', 'Reguler', '2016-08-22', '2016-12-17'),
(30, 59, 'Prak. Metodologi Riset (B)', 'Bioteknologi', 'Reguler', '2016-08-22', '2016-12-17'),
(31, 60, 'Prak. Pemrograman Bisnis (A & B)', 'Akuntansi', 'Reguler', '2016-08-22', '2016-12-17'),
(32, 61, 'Prak. Materi & Energi ( )', 'Bioteknologi', 'Reguler', '2016-08-22', '2016-12-17'),
(33, 62, 'Prak. Materi & Energi (B)', 'Bioteknologi', 'Reguler', '2016-08-22', '2016-12-17'),
(34, 63, 'Prak. Materi & Energi (A)', 'Bioteknologi', 'Reguler', '2016-08-22', '2016-12-17'),
(35, 64, 'Prak. Akt. Pemrog. Bisnis (A & C)', 'Akuntansi', 'Reguler', '2016-08-22', '2016-12-17'),
(36, 66, 'Prak. Materi & Energi (A)', 'Bioteknologi', 'Reguler', '2016-08-22', '2016-12-17'),
(37, 67, 'Prak. Materi & Energi (B)', 'Sistem Informasi', 'Reguler', '2016-08-22', '2016-12-17'),
(38, 68, 'Prak. Kom. Data (A & B)', 'Akuntansi', 'Reguler', '2016-08-22', '2016-12-17'),
(39, 72, 'Praktika Akuntasi (B)', 'Akuntansi', 'Reguler', '2016-08-22', '2016-12-17'),
(40, 73, 'E-Cmmerce', 'Manajemen', 'Reguler', '2016-08-22', '2016-12-17'),
(41, 74, 'Investasi', 'Manajemen', 'Reguler', '2016-08-22', '2016-12-17'),
(42, 75, 'Sistem Informasi Mnj.', 'Manajemen', 'Reguler', '2016-08-22', '2016-12-17'),
(43, 85, 'R & R (A)', 'Teknik Informatika', 'Reguler', '2016-08-22', '2016-12-17'),
(44, 88, 'Prak. R & R (A)', 'Teknik Informatika', 'Reguler', '2016-08-22', '2016-12-17'),
(45, 90, 'Brid. Sw (A)', 'Teknik Informatika', 'Reguler', '2016-08-22', '2016-12-17'),
(46, 96, 'Prak. Brid. Sw (A)', 'Teknik Informatika', 'Reguler', '2016-08-22', '2016-12-17'),
(47, 98, 'Tek. WAN (A)', 'Teknik Informatika', 'Reguler', '2016-08-22', '2016-12-17'),
(48, 100, 'Prak. Tek. WAN (A)', 'Teknik Informatika', 'Reguler', '2016-08-22', '2016-12-17'),
(50, 115, 'Computer Aided Design (B)', 'Arsitektur', 'Reguler', '2016-08-22', '2016-12-17'),
(51, 142, 'Prak. Metodologi Riset (A)', 'Bioteknologi', 'Reguler', '2016-08-22', '2016-12-17'),
(52, 143, 'Prak. Metodologi Riset (B)', 'Bioteknologi', 'Reguler', '2016-08-22', '2016-12-17'),
(53, 144, 'Pemrograman Bisnis (A)', 'Akuntansi', 'Reguler', '2016-08-22', '2016-12-17'),
(54, 148, 'Pemrograman Bisnis (B)', 'Akuntansi', 'Reguler', '2016-08-22', '2016-12-17'),
(55, 150, 'Prak. Materi & Energi (A)', 'Bioteknologi', 'Reguler', '2016-08-22', '2016-12-17'),
(56, 151, 'Prak. Materi & Energi (B)', 'Bioteknologi', 'Reguler', '2016-08-22', '2016-12-17'),
(57, 152, 'Komunikasi Data Bisnis', 'Akuntansi', 'Reguler', '2016-08-22', '2016-12-17'),
(58, 155, 'Rancangan Percobaan (A)', 'Bioteknologi', 'Reguler', '2016-08-22', '2016-12-17'),
(59, 156, 'Komunikasi Data Bisnis (B)', 'Akuntansi', 'Reguler', '2016-08-22', '2016-12-17'),
(60, 157, 'E-Cmmerce', 'Manajemen', 'Reguler', '2016-08-22', '2016-12-17'),
(61, 158, 'Statistik', 'Manajemen', 'Reguler', '2016-08-22', '2016-12-17'),
(63, 118, 'Computer Aided Design (A)', 'Arsitektur', 'Reguler', '2016-08-22', '2016-12-17'),
(64, 6, 'Struktur Data ', 'Teknik Informatika', 'Reguler', '2016-08-22', '2016-12-17'),
(65, 113, 'Struktur dan Konstruksi 3', 'Arsitektur', 'Reguler', '2016-08-22', '2016-12-17'),
(66, 114, 'Struktur dan Konstruksi 3', 'Arsitektur', 'Reguler', '2016-08-22', '2016-12-17'),
(67, 101, 'Prak. JarKom', 'Teknik Informatika', 'Reguler', '2016-08-22', '2016-12-17'),
(68, 103, 'Tek. WAN (A)', 'Teknik Informatika', 'Reguler', '2016-08-22', '2016-12-17'),
(70, 120, 'Praktika Akuntasi (A)', 'Akuntansi', 'Reguler', '2016-08-22', '2016-12-17'),
(71, 119, 'Computer Aided Design (B)', 'Arsitektur', 'Reguler', '2016-08-22', '2016-12-17'),
(72, 121, 'Struktur dan Konstruksi 3', 'Arsitektur', 'Reguler', '2016-08-22', '2016-12-17'),
(73, 122, 'Teknik Presentasi 1 (A)', 'Desain produk', 'Reguler', '2016-08-22', '2016-12-17'),
(74, 123, 'Fotografi Digital (A)', 'Desain produk', 'Reguler', '2016-08-22', '2016-12-17'),
(75, 125, 'Peranc. Pencahayaan Arsitektural', 'Arsitektur', 'Reguler', '2016-08-22', '2016-12-17'),
(76, 126, 'Computer Aided Design (A)', 'Arsitektur', 'Reguler', '2016-08-22', '2016-12-17'),
(77, 127, 'Rancangan Percobaan (B)', 'Bioteknologi', 'Reguler', '2016-08-22', '2016-12-17'),
(78, 128, 'Rancangan Percobaan (B)', 'Bioteknologi', 'Reguler', '2016-08-22', '2016-12-17'),
(79, 131, 'Investasi', 'Manajemen', 'Reguler', '2016-08-22', '2016-12-17'),
(80, 159, 'Sistem Informasi Mnj.', 'Manajemen', 'Reguler', '2016-08-22', '2016-12-17'),
(81, 197, 'Graf. Game (A)', 'Teknik Informatika', 'Reguler', '2016-08-22', '2016-12-17'),
(82, 199, 'Prak. SAP (A)', 'Teknik Informatika', 'Reguler', '2016-08-22', '2016-12-17'),
(83, 200, 'Prak. Struktur Data (A)', 'Teknik Informatika', 'Reguler', '2016-08-22', '2016-12-17'),
(84, 201, 'Pemrograman Mobile (A)', 'Sistem Informasi', 'Reguler', '2016-08-22', '2016-12-17'),
(85, 202, 'Prak. Pemrograman Mobile (A)', 'Sistem Informasi', 'Reguler', '2016-08-22', '2016-12-17'),
(86, 203, 'SBDE (A)', 'Teknik Informatika', 'Reguler', '2016-08-22', '2016-12-17'),
(87, 205, 'Prak. Teknologi Komputer (C1)', 'Teknik Informatika', 'Reguler', '2016-08-22', '2016-12-17'),
(88, 206, 'Prak. PBO (B)', 'Teknik Informatika', 'Reguler', '2016-08-22', '2016-12-17'),
(89, 204, 'Prak. SBD (B)', 'Teknik Informatika', 'Reguler', '2016-08-22', '2016-12-17'),
(90, 207, 'Prak. Teknologi Komputer (A1)', 'Teknik Informatika', 'Reguler', '2016-08-22', '2016-12-17'),
(91, 208, 'Prak. Teknologi Komputer (B1)', 'Teknik Informatika', 'Reguler', '2016-08-22', '2016-12-17'),
(92, 209, 'Prak. Algoritma Pemrograman (D1)', 'Teknik Informatika', 'Reguler', '2016-08-22', '2016-12-17'),
(93, 210, 'Prak. Teknologi Komputer (C2)', 'Teknik Informatika', 'Reguler', '2016-08-22', '2016-12-17'),
(94, 211, 'Tek. Anim (A)', 'Teknik Informatika', 'Reguler', '2016-08-22', '2016-12-17'),
(95, 212, 'Prak. PBO (D)', 'Teknik Informatika', 'Reguler', '2016-08-22', '2016-12-17'),
(96, 213, 'Prak. Teknologi Komputer (A2)', 'Teknik Informatika', 'Reguler', '2016-08-22', '2016-12-17'),
(97, 215, 'Prak. Teknologi Komputer (B2)', 'Teknik Informatika', 'Reguler', '2016-08-22', '2016-12-17'),
(98, 3, 'Administrasi Sistem', 'Teknik Informatika', 'Reguler', '2017-08-21', '2017-12-22'),
(99, 4, 'Pr. Teknologi komputer (C-1)', 'Teknik Informatika', 'Reguler', '2017-08-21', '2017-12-22'),
(100, 6, 'Materi & Energi (B)', 'Bioteknologi', 'Reguler', '2017-08-21', '2017-12-22'),
(101, 8, 'Pengolahan Data Multimedia (A)', 'Sistem Informasi', 'Reguler', '2017-08-21', '2017-12-22'),
(102, 10, 'Pr. Teknologi komputer (A-1)', 'Teknik Informatika', 'Reguler', '2017-08-21', '2017-12-22'),
(103, 11, 'ProgGUI (A)', 'Teknik Informatika', 'Reguler', '2017-08-21', '2017-12-22'),
(104, 12, 'Pengolahan Data Multimedia (B)', 'Sistem Informasi', 'Reguler', '2017-08-21', '2017-12-22'),
(105, 13, 'Pr. Algoritma & Pemrograman (A-1)', 'Teknik Informatika', 'Reguler', '2017-08-21', '2017-12-22'),
(107, 14, 'Pr. Algoritma & Pemrograman (B-1)', 'Teknik Informatika', 'Reguler', '2017-08-21', '2017-12-22'),
(108, 142, 'materi & Energi (A)', 'Bioteknologi', 'Reguler', '2017-08-21', '2017-12-22'),
(109, 15, 'Materi & Energi (A)', 'Bioteknologi', 'Reguler', '2017-08-21', '2017-12-22'),
(110, 16, 'Pr. Teknologi komputer (C-2)', 'Teknik Informatika', 'Reguler', '2017-08-21', '2017-12-22'),
(111, 143, 'Metodologi Riset (A)', 'Bioteknologi', 'Reguler', '2017-08-21', '2017-12-22'),
(112, 17, 'Pr. Algoritma & Pemrograman (A-2)', 'Teknik Informatika', 'Reguler', '2017-08-21', '2017-12-22'),
(113, 19, 'Pr. Teknologi komputer (A-2)', 'Teknik Informatika', 'Reguler', '2017-08-21', '2017-12-22'),
(114, 148, 'Pr.Komunikasi Data (A)', 'Akuntansi', 'Reguler', '2017-08-21', '2017-12-22'),
(115, 29, 'Dasar-dasar Pemrograman (A)', 'Sistem Informasi', 'Reguler', '2017-08-21', '2017-12-22'),
(116, 150, 'Rancangan Percobaan (B)', 'Bioteknologi', 'Reguler', '2017-08-21', '2017-12-22'),
(117, 30, 'Prak. Dasar-dasar Pemrograman (A)', 'Sistem Informasi', 'Reguler', '2017-08-21', '2017-12-22'),
(118, 31, 'Pr. Peng. Sistem Informasi (C)', 'Sistem Informasi', 'Reguler', '2017-08-21', '2017-12-22'),
(119, 151, 'Praktika Akutansi (B)', 'Akuntansi', 'Reguler', '2017-08-21', '2017-12-22'),
(120, 34, 'Aplikasi Berbasis Desktop (B)', 'Sistem Informasi', 'Reguler', '2017-08-21', '2017-12-22'),
(121, 152, 'Pr.Sistem Informasi Akuntansi (C)', 'Akuntansi', 'Reguler', '2017-08-23', '2017-08-23'),
(122, 35, 'Pr. Aplikasi Berbasis Desktop (B)', 'Sistem Informasi', 'Reguler', '2017-08-21', '2017-12-22'),
(123, 36, 'Pr. Peng. Sistem Informasi (B)', 'Sistem Informasi', 'Reguler', '2017-08-21', '2017-12-22'),
(124, 154, 'Metodologi Riset (B)', 'Bioteknologi', 'Reguler', '2017-08-23', '2017-08-23'),
(125, 38, 'Aplikasi Berbasis Desktop (A)', 'Sistem Informasi', 'Reguler', '2017-08-21', '2017-12-22'),
(126, 39, 'Pr. Aplikasi Berbasis Desktop (A)', 'Sistem Informasi', 'Reguler', '2017-08-21', '2017-12-22'),
(127, 155, 'Praktika Akuntansi (D)', 'Akuntansi', 'Reguler', '2017-08-21', '2017-12-22'),
(128, 40, 'Pr. Peng. Sistem Informasi (A)', 'Sistem Informasi', 'Reguler', '2017-08-21', '2017-12-22'),
(129, 41, 'Dasar-dasar Pemrograman (B)', 'Sistem Informasi', 'Reguler', '2017-08-21', '2017-12-22'),
(130, 156, 'Pr.Komunikasi Data (B)', 'Akuntansi', 'Reguler', '2017-08-21', '2017-12-22'),
(131, 42, 'Pr. Dasar-dasar Pemrograman (B)', 'Sistem Informasi', 'Reguler', '2017-08-21', '2017-12-22'),
(132, 43, 'Dasar-dasar Pemrograman (C)', 'Sistem Informasi', 'Reguler', '2017-08-21', '2017-12-22'),
(133, 169, 'Essay Writing', 'Bahasa Inggris', 'Reguler', '2017-08-21', '2017-12-22'),
(134, 45, 'Pr. Dasar-dasar Pemrograman (C)', 'Sistem Informasi', 'Reguler', '2017-08-21', '2017-12-22'),
(135, 171, 'Toefi (A)', 'Bahasa Inggris', 'Reguler', '2017-08-21', '2017-12-22'),
(136, 57, 'E-Commerence (A)', 'Manajemen', 'Reguler', '2017-08-21', '2017-12-22'),
(137, 174, 'Extensive Listening', 'Bahasa Inggris', 'Reguler', '2017-08-21', '2017-12-22'),
(138, 58, 'SIM (A)', 'Manajemen', 'Reguler', '2017-08-21', '2017-12-22'),
(139, 59, 'E-Commerence (B)', 'Manajemen', 'Reguler', '2017-08-21', '2017-12-22'),
(140, 177, 'ICE Level 3-1', 'Bahasa Inggris', 'Reguler', '2017-08-21', '2017-12-22'),
(141, 60, 'Statistik (A)', 'Manajemen', 'Reguler', '2017-08-21', '2017-12-22'),
(142, 61, 'Investasi (B)', 'Manajemen', 'Reguler', '2017-08-21', '2017-12-22'),
(143, 178, 'ICE Level 1-A', 'Bahasa Inggris', 'Reguler', '2017-08-21', '2017-12-22'),
(144, 179, 'Lab of Essay writing', 'Bahasa Inggris', 'Reguler', '2017-08-21', '2017-12-22'),
(145, 63, 'Rancangan Percobaan (A)', 'Bioteknologi', 'Reguler', '2017-08-21', '2017-12-22'),
(146, 182, 'Toefi (B)', 'Bahasa Inggris', 'Reguler', '2017-08-21', '2017-12-22'),
(147, 64, 'Pr. Sistem Informasi Akuntansi (A)', 'Akuntansi', 'Reguler', '2017-08-21', '2017-12-22'),
(148, 183, 'Lab of Essay Listening', 'Bahasa Inggris', 'Reguler', '2017-08-21', '2017-12-22'),
(149, 65, 'Investasi (B)', 'Manajemen', 'Reguler', '2017-08-21', '2017-12-22'),
(150, 67, 'Rancangan Percobaan (B)', 'Bioteknologi', 'Reguler', '2017-08-21', '2017-12-22'),
(151, 197, 'Pemrograman Mobile (A)', 'Sistem Informasi', 'Reguler', '2017-08-21', '2017-12-22'),
(152, 68, 'Pr. Sistem Informasi Akuntansi (B)', 'Akuntansi', 'Reguler', '2017-08-21', '2017-12-22'),
(153, 198, 'Pemrograman Mobile (B)', 'Sistem Informasi', 'Reguler', '2017-08-21', '2017-12-22'),
(154, 70, 'Investasi (A)', 'Manajemen', 'Reguler', '2017-08-21', '2017-12-22'),
(155, 71, 'Investasi (A)', 'Manajemen', 'Reguler', '2017-08-21', '2017-12-22'),
(156, 199, 'Pr. Sistem Basis Data (D)', 'Teknik Informatika', 'Reguler', '2017-08-21', '2017-12-22'),
(157, 72, 'Praktika Akuntansi (C)', 'Akuntansi', 'Reguler', '2017-08-21', '2017-12-22'),
(158, 200, 'Pr. Teknologi Komputer (D-1)', 'Teknik Informatika', 'Reguler', '2017-08-21', '2017-12-22'),
(159, 204, 'Pr. Sistem Basis Data (B)', 'Teknik Informatika', 'Reguler', '2017-08-21', '2017-12-22'),
(160, 75, 'Investasi (C)', 'Manajemen', 'Reguler', '2017-08-21', '2017-12-22'),
(161, 76, 'Investasi (C)', 'Manajemen', 'Reguler', '2017-08-21', '2017-12-22'),
(162, 205, 'Pr. Teknologi Komputer (B-1)', 'Teknik Informatika', 'Reguler', '2017-08-21', '2017-12-22'),
(163, 85, 'Routing dan Switching (A)', 'Teknik Informatika', 'Reguler', '2017-08-21', '2017-12-22'),
(164, 206, 'Pr. Sistem Basis Data (C)', 'Teknik Informatika', 'Reguler', '2017-08-21', '2017-12-22'),
(165, 86, 'Pr. Routing dan Switching (A)', 'Teknik Informatika', 'Reguler', '2017-08-21', '2017-12-22'),
(166, 87, 'Prak. JAringan komputer (B)', 'Teknik Informatika', 'Reguler', '2017-08-21', '2017-12-22'),
(167, 208, 'Pr. Sistem Basis Data  (A)', 'Teknik Informatika', 'Reguler', '2017-08-21', '2017-12-22'),
(168, 89, 'Routing dan Switching (B)', 'Teknik Informatika', 'Reguler', '2017-08-21', '2017-12-22'),
(169, 209, 'Pr. Teknologi KOmputer (D-2)', 'Teknik Informatika', 'Reguler', '2017-08-21', '2017-12-22'),
(170, 90, 'Pr. Routing dan Switching (B)', 'Teknik Informatika', 'Reguler', '2017-08-21', '2017-12-22'),
(171, 210, 'Pr. Pemrograman Web (A)', 'Teknik Informatika', 'Reguler', '2017-08-21', '2017-12-22'),
(172, 91, 'Prak. Jaringan komputer (C)', 'Teknik Informatika', 'Reguler', '2017-08-21', '2017-12-22'),
(173, 92, 'Prak. Jaringan komputer (D)', 'Teknik Informatika', 'Reguler', '2017-08-21', '2017-12-22'),
(174, 211, 'Pr. Struktur Data (A)', 'Teknik Informatika', 'Reguler', '2017-08-21', '2017-12-22'),
(175, 93, 'Routing dan Switching (E)', 'Teknik Informatika', 'Reguler', '2017-08-21', '2017-12-22'),
(176, 94, 'Pr. Routing dan Switching (E)', 'Teknik Informatika', 'Reguler', '2017-08-21', '2017-12-22'),
(177, 213, 'Pr. Algoritma & Pemrograman (B-2)', 'Teknik Informatika', 'Reguler', '2017-08-21', '2017-12-22'),
(178, 95, 'Routing dan Switching (C)', 'Teknik Informatika', 'Reguler', '2017-08-21', '2017-12-22'),
(179, 96, 'Pr. Routing dan Switching (C)', 'Teknik Informatika', 'Reguler', '2017-08-21', '2017-12-22'),
(180, 97, 'Routing dan Switching (D)', 'Teknik Informatika', 'Reguler', '2017-08-21', '2017-12-22'),
(181, 98, 'Pr. Routing dan Switching (D)', 'Teknik Informatika', 'Reguler', '2017-08-21', '2017-12-22'),
(182, 117, 'Computer Aided Design', 'Arsitektur', 'Reguler', '2017-08-21', '2017-12-22'),
(183, 99, 'Prak. Jaringan komputer (F)', 'Teknik Informatika', 'Reguler', '2017-08-21', '2017-12-22'),
(184, 120, 'Penganggaran (B)', 'Manajemen', 'Reguler', '2017-08-21', '2017-12-22'),
(185, 121, 'Teknik Presentasi 1', 'Desain produk', 'Reguler', '2017-08-21', '2017-12-22'),
(186, 123, 'Investasi (A)', 'Manajemen', 'Reguler', '2017-08-21', '2017-12-22'),
(187, 100, 'Prak. Jaringan komputer (E)', 'Teknik Informatika', 'Reguler', '2017-08-21', '2017-12-22'),
(188, 124, 'Investasi (B)', 'Manajemen', 'Reguler', '2017-08-21', '2017-12-22'),
(189, 101, 'Prak. Jaringan komputer (A)', 'Teknik Informatika', 'Reguler', '2017-08-21', '2017-12-22'),
(190, 125, 'Computer Aided Design', 'Arsitektur', 'Reguler', '2017-08-21', '2017-12-22'),
(191, 127, 'Praktika Akuntansi (A)', 'Akuntansi', 'Reguler', '2017-08-21', '2017-12-22'),
(192, 215, 'Pr. Teknologi Komputer (B-2)', 'Teknik Informatika', 'Reguler', '2017-08-21', '2017-12-22'),
(193, 114, 'Statistik Induktif', 'Akuntansi', 'Reguler', '2017-09-04', '2017-12-22'),
(194, 118, 'Statistik Induktif', 'Akuntansi', 'Reguler', '2017-09-04', '2017-12-22'),
(195, 157, 'Statistik Induktif', 'Akuntansi', 'Reguler', '2017-09-04', '2017-12-22'),
(196, 1, 'Prak. Keahlian Khusus (A)', 'Teknik Informatika', 'Reguler', '2018-01-29', '2018-05-26'),
(197, 3, 'Administrasi Sistem (A)', 'Teknik Informatika', 'Reguler', '2018-01-29', '2018-05-26'),
(198, 6, 'Game Engine (A)', 'Teknik Informatika', 'Reguler', '2018-01-29', '2018-05-26'),
(199, 7, 'Prak. Algoritma & Pemrograman (A1)', 'Teknik Informatika', 'Reguler', '2018-01-29', '2018-05-26'),
(200, 9, 'Prak. Algoritma & Pemrograman (D1)', 'Teknik Informatika', 'Reguler', '2018-01-29', '2018-05-26'),
(201, 10, 'Prak. Pemrograman Web (C)', 'Teknik Informatika', 'Reguler', '2018-01-29', '2018-05-26'),
(202, 11, 'Prak. Algoritma & Pemrograman (C1)', 'Teknik Informatika', 'Reguler', '2018-01-29', '2018-05-26'),
(203, 13, 'Prak. PBO (B)', 'Teknik Informatika', 'Reguler', '2018-01-29', '2018-05-26'),
(204, 14, 'Prak. Algortma & Pemrograman (A2)', 'Teknik Informatika', 'Reguler', '2018-01-29', '2018-05-26'),
(205, 15, 'Prak. Pemrograman Web (A)', 'Teknik Informatika', 'Reguler', '2018-01-29', '2018-05-26'),
(206, 16, 'Prak. PBO (C)', 'Teknik Informatika', 'Reguler', '2018-01-29', '2018-05-26'),
(207, 17, 'Prak. Algortma & Pemrograman (C2)', 'Teknik Informatika', 'Reguler', '2018-01-29', '2018-05-26'),
(208, 29, 'ALGORITMA & STRUKTUR DATA (A)', 'Sistem Informasi', 'Reguler', '2018-01-29', '2018-05-29'),
(209, 30, 'PR.ALGO.& STRUKTUR DATA (A)', 'Sistem Informasi', 'Reguler', '2018-01-29', '2018-05-29'),
(210, 11, 'PR. ALGORITMA & STRUKTUR DATA (B)', 'Sistem Informasi', 'Reguler', '2018-01-15', '2018-01-15'),
(212, 44, 'JARINGAN KOMPUTER (A)', 'Sistem Informasi', 'Reguler', '2018-01-15', '2018-01-15'),
(213, 60, 'STATISTIK (A)', 'Manajemen', 'Reguler', '2018-01-29', '2018-05-29'),
(214, 64, 'SIM (A)', 'Manajemen', 'Reguler', '2018-01-29', '2018-05-29'),
(215, 68, 'STATISTIK (C)', 'Manajemen', 'Reguler', '2018-01-29', '2018-05-29'),
(216, 72, 'E-COMMERCE (A)', 'Manajemen', 'Reguler', '2018-01-29', '2018-05-29'),
(218, 73, 'STATISTIK (E)', 'Manajemen', 'Reguler', '2018-01-29', '2018-05-29'),
(219, 74, 'SIM (C)', 'Manajemen', 'Reguler', '2018-01-29', '2018-05-29'),
(221, 86, 'jaringan komputer (a)', 'Teknik Informatika', 'Reguler', '2018-01-29', '2018-05-29'),
(222, 87, 'jaringan komputer (a)', 'Teknik Informatika', 'Reguler', '2018-01-29', '2018-05-29'),
(223, 89, 'jaringan nir kabel (a)', 'Teknik Informatika', 'Reguler', '2018-01-29', '2018-05-29'),
(224, 91, 'Enterprise Network (A)', 'Teknik Informatika', 'Reguler', '2018-01-29', '2018-05-29'),
(225, 93, 'Routing dan Switching (A)', 'Teknik Informatika', 'Reguler', '2018-01-29', '2018-05-29'),
(226, 94, 'Routing dan Switching (A)', 'Teknik Informatika', 'Reguler', '2018-01-29', '2018-05-29'),
(227, 97, 'Enterprise Network (B)', 'Teknik Informatika', 'Reguler', '2018-01-29', '2018-05-29'),
(228, 98, 'Teknologi WAN (D1)', 'Teknik Informatika', 'Reguler', '2018-01-29', '2018-05-29'),
(229, 71, 'Pran. Pencah. Arsitektural', 'Arsitektur', 'Reguler', '2018-01-29', '2018-05-29'),
(230, 115, 'Desain Grafis (A)', 'Desain produk', 'Reguler', '2018-01-29', '2018-05-29'),
(231, 118, 'Teknik Presentasi 2 (A)', 'Desain produk', 'Reguler', '2018-01-29', '2018-05-29'),
(232, 119, 'Computer Aided Design (A)', 'Arsitektur', 'Reguler', '2018-01-29', '2018-05-29'),
(236, 127, 'Computer Aided Design (A)', 'Arsitektur', 'Reguler', '2018-01-29', '2018-05-29'),
(237, 128, 'Computer Aided Design (A)', 'Arsitektur', 'Reguler', '2018-01-29', '2018-05-29'),
(241, 31, 'Pr. Rekayasa Prangkat Lunak (A)', 'Sistem Informasi', 'Reguler', '2018-01-29', '2018-05-29'),
(243, 35, 'Pr. Jaringan Komputer (B)', 'Sistem Informasi', 'Reguler', '2018-01-29', '2018-05-29'),
(244, 37, 'Pr. Jaringan Komputer (A)', 'Sistem Informasi', 'Reguler', '2018-01-29', '2018-05-29'),
(245, 38, 'Algoritma & Struktur Data (B)', 'Sistem Informasi', 'Reguler', '2018-01-29', '2018-05-29'),
(246, 39, 'Pr. Algoritma & Struktur Data (B)', 'Sistem Informasi', 'Reguler', '2018-01-29', '2018-05-29'),
(247, 40, 'Jaringan komputer (B)', 'Sistem Informasi', 'Reguler', '2018-01-29', '2018-05-29'),
(248, 41, 'Pemrog.Berorientasi Obyek (A)', 'Sistem Informasi', 'Reguler', '2018-01-29', '2018-05-29'),
(249, 43, 'Pr. Pemrog.Berorientasi Obyek (A)', 'Sistem Informasi', 'Reguler', '2018-01-29', '2018-05-29'),
(250, 44, 'Jaringan komputer (A)', 'Sistem Informasi', 'Reguler', '2018-01-29', '2018-05-29'),
(252, 48, 'Biodiversitas (B)', 'Bioteknologi', 'Reguler', '2018-01-29', '2018-05-29'),
(254, 150, 'SIM (B)', 'Akuntansi', 'Reguler', '2018-01-29', '2018-05-29'),
(256, 157, 'Statistik (F)', 'Manajemen', 'Reguler', '2018-01-29', '2018-05-29'),
(257, 158, 'Investasi (A)', 'Manajemen', 'Reguler', '2018-01-29', '2018-05-29'),
(258, 143, 'Statistik Deskr (A)', 'Akuntansi', 'Reguler', '2018-01-29', '2018-05-29'),
(259, 144, 'Statistik (B)', 'Manajemen', 'Reguler', '2018-01-29', '2018-05-29'),
(260, 147, 'Statistik Deskr (B)', 'Akuntansi', 'Reguler', '2018-01-29', '2018-05-29'),
(261, 148, 'SIM (B)', 'Manajemen', 'Reguler', '2018-01-29', '2018-05-29'),
(262, 151, 'Statistik Deskr (C)', 'Akuntansi', 'Reguler', '2018-01-29', '2018-05-29'),
(263, 152, 'Statistik  (D)', 'Manajemen', 'Reguler', '2018-01-29', '2018-05-29'),
(264, 155, 'SIM (C)', 'Akuntansi', 'Reguler', '2018-01-29', '2018-05-29'),
(265, 156, 'E-Commerce (B)', 'Manajemen', 'Reguler', '2018-01-29', '2018-05-29'),
(266, 159, 'SIM (D)', 'Manajemen', 'Reguler', '2018-01-29', '2018-05-29'),
(267, 160, 'E-Commerce (D)', 'Manajemen', 'Reguler', '2018-01-29', '2018-05-29'),
(268, 169, 'Comprehension of long talks', 'Bahasa Inggris', 'Reguler', '2018-01-29', '2018-05-29'),
(269, 173, 'Lab Comprehension of long talks', 'Bahasa Inggris', 'Reguler', '2018-01-29', '2018-05-29'),
(270, 174, 'TOEFL (A)', 'Bahasa Inggris', 'Reguler', '2018-01-29', '2018-05-29'),
(271, 63, 'Intermediate Grammer', 'Bahasa Inggris', 'Reguler', '2018-01-29', '2018-05-29'),
(272, 179, 'Academic Essay', 'Bahasa Inggris', 'Reguler', '2018-01-29', '2018-05-29'),
(273, 182, 'Web Tech for Language Learning', 'Bahasa Inggris', 'Reguler', '2018-01-29', '2018-05-29'),
(275, 187, 'TOEFL (B)', 'Bahasa Inggris', 'Reguler', '2018-01-29', '2018-05-29'),
(276, 199, 'Prak. Keahlian Khusus (A)', 'Sistem Informasi', 'Reguler', '2018-01-29', '2018-05-29'),
(279, 203, 'Pr. Algoritma & Pemrog. (B)', 'Teknik Informatika', 'Reguler', '2018-01-29', '2018-05-29'),
(280, 206, 'Prak. PBO (A)', 'Teknik Informatika', 'Reguler', '2018-01-29', '2018-05-29'),
(281, 207, 'Teknik Animasi (A)', 'Teknik Informatika', 'Reguler', '2018-01-29', '2018-05-29'),
(282, 210, 'Pr. Algoritma & Pemrog. (B2)', 'Teknik Informatika', 'Reguler', '2018-01-29', '2018-05-29'),
(283, 211, 'Pr. Pemrograman Web (B)', 'Teknik Informatika', 'Reguler', '2018-01-29', '2018-05-29'),
(284, 213, 'Pr. Algo. & Pemrog. (D2)', 'Teknik Informatika', 'Reguler', '2018-01-29', '2018-05-29'),
(285, 20, 'Biodiversitas (A)', 'Bioteknologi', 'Reguler', '2018-01-29', '2018-05-29'),
(286, 34, 'Pr. Rekayasa Prangkat Lunak (B)', 'Sistem Informasi', 'Reguler', '2018-01-29', '2018-05-29'),
(287, 175, 'Creative Writing', 'Bahasa Inggris', 'Reguler', '2018-01-29', '2018-05-29'),
(288, 197, 'Penganggaran (A)', 'Akuntansi', 'Reguler', '2018-01-29', '2018-05-29'),
(289, 209, 'Penganggaran (B)', 'Akuntansi', 'Reguler', '2018-01-29', '2018-05-29'),
(290, 45, 'Algoritma & Pemrog. (C)', 'Sistem Informasi', 'Reguler', '2018-01-29', '2018-05-29'),
(292, 47, 'Pr. Algoritma & Pemrog. (C)', 'Sistem Informasi', 'Reguler', '2018-01-29', '2018-05-29'),
(293, 2, 'SIM (A)', 'Akuntansi', 'Reguler', '2018-01-29', '2018-05-29'),
(294, 67, 'SIM (A)', 'Manajemen', 'Reguler', '2018-01-29', '2018-05-29'),
(295, 76, 'SIM (C)', 'Manajemen', 'Reguler', '2018-01-29', '2018-05-29'),
(297, 120, 'Computer Aided Design (A)', 'Arsitektur', 'Reguler', '2018-01-29', '2018-05-29'),
(298, 121, 'Computer Aided Design (A)', 'Arsitektur', 'Reguler', '2018-01-29', '2018-05-29'),
(299, 122, 'Computer Aided Design (A)', 'Arsitektur', 'Reguler', '2018-01-29', '2018-05-29'),
(300, 129, 'Computer Aided Design (A)', 'Arsitektur', 'Reguler', '2018-01-29', '2018-05-29'),
(301, 130, 'Computer Aided Design (A)', 'Arsitektur', 'Reguler', '2018-01-29', '2018-05-29'),
(302, 170, 'Speaking For Academic P.', 'Bahasa Inggris', 'Reguler', '2018-01-29', '2018-05-29'),
(303, 171, 'Speaking For Academic P.', 'Bahasa Inggris', 'Reguler', '2018-01-29', '2018-05-29'),
(304, 184, 'Analisis Statistik (A)', 'Bioteknologi', 'Reguler', '2018-01-29', '2018-05-29'),
(305, 188, 'E-Commerce (C)', 'Manajemen', 'Reguler', '2018-01-29', '2018-05-29'),
(306, 33, 'Pemrog. Berbasis Web (B)', 'Sistem Informasi', 'Pengganti', '2018-01-29', '2018-05-29'),
(307, 32, 'Pemrog. Berbasis Web (A)', 'Sistem Informasi', 'Reguler', '2018-01-29', '2018-05-29');

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE IF NOT EXISTS `jurusan` (
  `kode_jurusan` varchar(2) NOT NULL DEFAULT '',
  `jurusan` varchar(30) DEFAULT NULL,
  `warna` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`kode_jurusan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`kode_jurusan`, `jurusan`, `warna`) VALUES
('', NULL, NULL),
('11', 'Manajemen', 'ffff66'),
('12', 'Akuntansi', 'ff00cc'),
('21', 'Arsitektur', '66ccff'),
('24', 'Desain Produk', '9966ff'),
('31', 'Biologi', '66cc66'),
('41', 'Pendidikan Dokter', NULL),
('42', 'Profesi Dokter', NULL),
('71', 'Teknik Informatika', 'f67b00'),
('72', 'Sistem Informasi', 'ff99ff'),
('81', 'PPB', 'cc6600');

-- --------------------------------------------------------

--
-- Table structure for table `kritik`
--

CREATE TABLE IF NOT EXISTS `kritik` (
  `id_kritik` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(30) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `pesan` text NOT NULL,
  `tanggal` datetime NOT NULL,
  PRIMARY KEY (`id_kritik`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kritik`
--

INSERT INTO `kritik` (`id_kritik`, `email`, `nama`, `pesan`, `tanggal`) VALUES
(70, 'monxanbel@gmail.com', 'monxanbel', 'Materi kursus dan pelatihan seharusnya juga dicantumkan di dalam website sehingga pendaftar dapat memahami materi apa saja yang didapatkan jika mengikuti kursus/pelatihan', '2016-05-06 23:13:17'),
(76, 'hiroynwa8@gmail.com', 'Hiroshi', 'Sudah baik .. sangat membantu', '2016-05-11 02:32:28'),
(77, 'hiroshi.junio@ti.ukdw.ac.id', 'Hiroshi', 'Luar biasa .. sangat membantu .. jadi bisa tau jadwal lab d UKDW .. thanks', '2016-05-11 02:38:28'),
(78, 'hiroynwa8@gmail.com', 'hiro', 'hahahaha', '2016-05-11 18:27:37');

-- --------------------------------------------------------

--
-- Table structure for table `lab`
--

CREATE TABLE IF NOT EXISTS `lab` (
  `id_lab` int(11) NOT NULL AUTO_INCREMENT,
  `lab` varchar(11) NOT NULL,
  `hari` varchar(10) NOT NULL,
  `sesi` varchar(11) NOT NULL,
  PRIMARY KEY (`id_lab`)
) ENGINE=InnoDB AUTO_INCREMENT=253 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lab`
--

INSERT INTO `lab` (`id_lab`, `lab`, `hari`, `sesi`) VALUES
(1, 'Lab A', 'Senin', 'I'),
(2, 'Lab A', 'Senin', 'II'),
(3, 'Lab A', 'Senin', 'III'),
(4, 'Lab A', 'Senin', 'IV'),
(5, 'Lab A', 'Selasa', 'I'),
(6, 'Lab A', 'Selasa', 'II'),
(7, 'Lab A', 'Selasa', 'III'),
(8, 'Lab A', 'Selasa', 'IV'),
(9, 'Lab A', 'Rabu', 'I'),
(10, 'Lab A', 'Rabu', 'II'),
(11, 'Lab A', 'Rabu', 'III'),
(12, 'Lab A', 'Rabu', 'IV'),
(13, 'Lab A', 'Kamis', 'I'),
(14, 'Lab A', 'Kamis', 'II'),
(15, 'Lab A', 'Kamis', 'III'),
(16, 'Lab A', 'Kamis', 'IV'),
(17, 'Lab A', 'Jumat', 'I'),
(18, 'Lab A', 'Jumat', 'II'),
(19, 'Lab A', 'Jumat', 'III'),
(20, 'Lab A', 'Jumat', 'IV'),
(21, 'Lab A', 'Sabtu', 'I'),
(22, 'Lab A', 'Sabtu', 'II'),
(23, 'Lab A', 'Sabtu', 'III'),
(24, 'Lab A', 'Sabtu', 'IV'),
(25, 'Lab A', 'Minggu', 'I'),
(26, 'Lab A', 'Minggu', 'II'),
(27, 'Lab A', 'Minggu', 'III'),
(28, 'Lab A', 'Minggu', 'IV'),
(29, 'Lab B', 'Senin', 'I'),
(30, 'Lab B', 'Senin', 'II'),
(31, 'Lab B', 'Senin', 'III'),
(32, 'Lab B', 'Senin', 'IV'),
(33, 'Lab B', 'Selasa', 'I'),
(34, 'Lab B', 'Selasa', 'II'),
(35, 'Lab B', 'Selasa', 'III'),
(36, 'Lab B', 'Selasa', 'IV'),
(37, 'Lab B', 'Rabu', 'I'),
(38, 'Lab B', 'Rabu', 'II'),
(39, 'Lab B', 'Rabu', 'III'),
(40, 'Lab B', 'Rabu', 'IV'),
(41, 'Lab B', 'Kamis', 'I'),
(42, 'Lab B', 'Kamis', 'II'),
(43, 'Lab B', 'Kamis', 'III'),
(44, 'Lab B', 'Kamis', 'IV'),
(45, 'Lab B', 'Jumat', 'I'),
(46, 'Lab B', 'Jumat', 'II'),
(47, 'Lab B', 'Jumat', 'III'),
(48, 'Lab B', 'Jumat', 'IV'),
(49, 'Lab B', 'Sabtu', 'I'),
(50, 'Lab B', 'Sabtu', 'II'),
(51, 'Lab B', 'Sabtu', 'III'),
(52, 'Lab B', 'Sabtu', 'IV'),
(53, 'Lab B', 'Minggu', 'I'),
(54, 'Lab B', 'Minggu', 'II'),
(55, 'Lab B', 'Minggu', 'III'),
(56, 'Lab B', 'Minggu', 'IV'),
(57, 'Lab C', 'Senin', 'I'),
(58, 'Lab C', 'Senin', 'II'),
(59, 'Lab C', 'Senin', 'III'),
(60, 'Lab C', 'Senin', 'IV'),
(61, 'Lab C', 'Selasa', 'I'),
(62, 'Lab C', 'Selasa', 'II'),
(63, 'Lab C', 'Selasa', 'III'),
(64, 'Lab C', 'Selasa', 'IV'),
(65, 'Lab C', 'Rabu', 'I'),
(66, 'Lab C', 'Rabu', 'II'),
(67, 'Lab C', 'Rabu', 'III'),
(68, 'Lab C', 'Rabu', 'IV'),
(69, 'Lab C', 'Kamis', 'I'),
(70, 'Lab C', 'Kamis', 'II'),
(71, 'Lab C', 'Kamis', 'III'),
(72, 'Lab C', 'Kamis', 'IV'),
(73, 'Lab C', 'Jumat', 'I'),
(74, 'Lab C', 'Jumat', 'II'),
(75, 'Lab C', 'Jumat', 'III'),
(76, 'Lab C', 'Jumat', 'IV'),
(77, 'Lab C', 'Sabtu', 'I'),
(78, 'Lab C', 'Sabtu', 'II'),
(79, 'Lab C', 'Sabtu', 'III'),
(80, 'Lab C', 'Sabtu', 'IV'),
(81, 'Lab C', 'Minggu', 'I'),
(82, 'Lab C', 'Minggu', 'II'),
(83, 'Lab C', 'Minggu', 'III'),
(84, 'Lab C', 'Minggu', 'IV'),
(85, 'Lab D', 'Senin', 'I'),
(86, 'Lab D', 'Senin', 'II'),
(87, 'Lab D', 'Senin', 'III'),
(88, 'Lab D', 'Senin', 'IV'),
(89, 'Lab D', 'Selasa', 'I'),
(90, 'Lab D', 'Selasa', 'II'),
(91, 'Lab D', 'Selasa', 'III'),
(92, 'Lab D', 'Selasa', 'IV'),
(93, 'Lab D', 'Rabu', 'I'),
(94, 'Lab D', 'Rabu', 'II'),
(95, 'Lab D', 'Rabu', 'III'),
(96, 'Lab D', 'Rabu', 'IV'),
(97, 'Lab D', 'Kamis', 'I'),
(98, 'Lab D', 'Kamis', 'II'),
(99, 'Lab D', 'Kamis', 'III'),
(100, 'Lab D', 'Kamis', 'IV'),
(101, 'Lab D', 'Jumat', 'I'),
(102, 'Lab D', 'Jumat', 'II'),
(103, 'Lab D', 'Jumat', 'III'),
(104, 'Lab D', 'Jumat', 'IV'),
(105, 'Lab D', 'Sabtu', 'I'),
(106, 'Lab D', 'Sabtu', 'II'),
(107, 'Lab D', 'Sabtu', 'III'),
(108, 'Lab D', 'Sabtu', 'IV'),
(109, 'Lab D', 'Minggu', 'I'),
(110, 'Lab D', 'Minggu', 'II'),
(111, 'Lab D', 'Minggu', 'III'),
(112, 'Lab D', 'Minggu', 'IV'),
(113, 'Lab E', 'Senin', 'I'),
(114, 'Lab E', 'Senin', 'II'),
(115, 'Lab E', 'Senin', 'III'),
(116, 'Lab E', 'Senin', 'IV'),
(117, 'Lab E', 'Selasa', 'I'),
(118, 'Lab E', 'Selasa', 'II'),
(119, 'Lab E', 'Selasa', 'III'),
(120, 'Lab E', 'Selasa', 'IV'),
(121, 'Lab E', 'Rabu', 'I'),
(122, 'Lab E', 'Rabu', 'II'),
(123, 'Lab E', 'Rabu', 'III'),
(124, 'Lab E', 'Rabu', 'IV'),
(125, 'Lab E', 'Kamis', 'I'),
(126, 'Lab E', 'Kamis', 'II'),
(127, 'Lab E', 'Kamis', 'III'),
(128, 'Lab E', 'Kamis', 'IV'),
(129, 'Lab E', 'Jumat', 'I'),
(130, 'Lab E', 'Jumat', 'II'),
(131, 'Lab E', 'Jumat', 'III'),
(132, 'Lab E', 'Jumat', 'IV'),
(133, 'Lab E', 'Sabtu', 'I'),
(134, 'Lab E', 'Sabtu', 'II'),
(135, 'Lab E', 'Sabtu', 'III'),
(136, 'Lab E', 'Sabtu', 'IV'),
(137, 'Lab E', 'Minggu', 'I'),
(138, 'Lab E', 'Minggu', 'II'),
(139, 'Lab E', 'Minggu', 'III'),
(140, 'Lab E', 'Minggu', 'IV'),
(141, 'Lab F', 'Senin', 'I'),
(142, 'Lab F', 'Senin', 'II'),
(143, 'Lab F', 'Senin', 'III'),
(144, 'Lab F', 'Senin', 'IV'),
(145, 'Lab F', 'Selasa', 'I'),
(146, 'Lab F', 'Selasa', 'II'),
(147, 'Lab F', 'Selasa', 'III'),
(148, 'Lab F', 'Selasa', 'IV'),
(149, 'Lab F', 'Rabu', 'I'),
(150, 'Lab F', 'Rabu', 'II'),
(151, 'Lab F', 'Rabu', 'III'),
(152, 'Lab F', 'Rabu', 'IV'),
(153, 'Lab F', 'Kamis', 'I'),
(154, 'Lab F', 'Kamis', 'II'),
(155, 'Lab F', 'Kamis', 'III'),
(156, 'Lab F', 'Kamis', 'IV'),
(157, 'Lab F', 'Jumat', 'I'),
(158, 'Lab F', 'Jumat', 'II'),
(159, 'Lab F', 'Jumat', 'III'),
(160, 'Lab F', 'Jumat', 'IV'),
(161, 'Lab F', 'Sabtu', 'I'),
(162, 'Lab F', 'Sabtu', 'II'),
(163, 'Lab F', 'Sabtu', 'III'),
(164, 'Lab F', 'Sabtu', 'IV'),
(165, 'Lab F', 'Minggu', 'I'),
(166, 'Lab F', 'Minggu', 'II'),
(167, 'Lab F', 'Minggu', 'III'),
(168, 'Lab F', 'Minggu', 'IV'),
(169, 'Lab G', 'Senin', 'I'),
(170, 'Lab G', 'Senin', 'II'),
(171, 'Lab G', 'Senin', 'III'),
(172, 'Lab G', 'Senin', 'IV'),
(173, 'Lab G', 'Selasa', 'I'),
(174, 'Lab G', 'Selasa', 'II'),
(175, 'Lab G', 'Selasa', 'III'),
(176, 'Lab G', 'Selasa', 'IV'),
(177, 'Lab G', 'Rabu', 'I'),
(178, 'Lab G', 'Rabu', 'II'),
(179, 'Lab G', 'Rabu', 'III'),
(180, 'Lab G', 'Rabu', 'IV'),
(181, 'Lab G', 'Kamis', 'I'),
(182, 'Lab G', 'Kamis', 'II'),
(183, 'Lab G', 'Kamis', 'III'),
(184, 'Lab G', 'Kamis', 'IV'),
(185, 'Lab G', 'Jumat', 'I'),
(186, 'Lab G', 'Jumat', 'II'),
(187, 'Lab G', 'Jumat', 'III'),
(188, 'Lab G', 'Jumat', 'IV'),
(189, 'Lab G', 'Sabtu', 'I'),
(190, 'Lab G', 'Sabtu', 'II'),
(191, 'Lab G', 'Sabtu', 'III'),
(192, 'Lab G', 'Sabtu', 'IV'),
(193, 'Lab G', 'Minggu', 'I'),
(194, 'Lab G', 'Minggu', 'II'),
(195, 'Lab G', 'Minggu', 'III'),
(196, 'Lab G', 'Minggu', 'IV'),
(197, 'Lab H', 'Senin', 'I'),
(198, 'Lab H', 'Senin', 'II'),
(199, 'Lab H', 'Senin', 'III'),
(200, 'Lab H', 'Senin', 'IV'),
(201, 'Lab H', 'Selasa', 'I'),
(202, 'Lab H', 'Selasa', 'II'),
(203, 'Lab H', 'Selasa', 'III'),
(204, 'Lab H', 'Selasa', 'IV'),
(205, 'Lab H', 'Rabu', 'I'),
(206, 'Lab H', 'Rabu', 'II'),
(207, 'Lab H', 'Rabu', 'III'),
(208, 'Lab H', 'Rabu', 'IV'),
(209, 'Lab H', 'Kamis', 'I'),
(210, 'Lab H', 'Kamis', 'II'),
(211, 'Lab H', 'Kamis', 'III'),
(212, 'Lab H', 'Kamis', 'IV'),
(213, 'Lab H', 'Jumat', 'I'),
(214, 'Lab H', 'Jumat', 'II'),
(215, 'Lab H', 'Jumat', 'III'),
(216, 'Lab H', 'Jumat', 'IV'),
(217, 'Lab H', 'Sabtu', 'I'),
(218, 'Lab H', 'Sabtu', 'II'),
(219, 'Lab H', 'Sabtu', 'III'),
(220, 'Lab H', 'Sabtu', 'IV'),
(221, 'Lab H', 'Minggu', 'I'),
(222, 'Lab H', 'Minggu', 'II'),
(223, 'Lab H', 'Minggu', 'III'),
(224, 'Lab H', 'Minggu', 'IV'),
(225, 'Lab I', 'Senin', 'I'),
(226, 'Lab I', 'Senin', 'II'),
(227, 'Lab I', 'Senin', 'III'),
(228, 'Lab I', 'Senin', 'IV'),
(229, 'Lab I', 'Selasa', 'I'),
(230, 'Lab I', 'Selasa', 'II'),
(231, 'Lab I', 'Selasa', 'III'),
(232, 'Lab I', 'Selasa', 'IV'),
(233, 'Lab I', 'Rabu', 'I'),
(234, 'Lab I', 'Rabu', 'II'),
(235, 'Lab I', 'Rabu', 'III'),
(236, 'Lab I', 'Rabu', 'IV'),
(237, 'Lab I', 'Kamis', 'I'),
(238, 'Lab I', 'Kamis', 'II'),
(239, 'Lab I', 'Kamis', 'III'),
(240, 'Lab I', 'Kamis', 'IV'),
(241, 'Lab I', 'Jumat', 'I'),
(242, 'Lab I', 'Jumat', 'II'),
(243, 'Lab I', 'Jumat', 'III'),
(244, 'Lab I', 'Jumat', 'IV'),
(245, 'Lab I', 'Sabtu', 'I'),
(246, 'Lab I', 'Sabtu', 'II'),
(247, 'Lab I', 'Sabtu', 'III'),
(248, 'Lab I', 'Sabtu', 'IV'),
(249, 'Lab I', 'Minggu', 'I'),
(250, 'Lab I', 'Minggu', 'II'),
(251, 'Lab I', 'Minggu', 'III'),
(252, 'Lab I', 'Minggu', 'IV');

-- --------------------------------------------------------

--
-- Table structure for table `ruang`
--

CREATE TABLE IF NOT EXISTS `ruang` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `kode_ruang` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=677 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ruang`
--

INSERT INTO `ruang` (`id`, `kode_ruang`) VALUES
(397, 'a11'),
(398, 'a12'),
(399, 'a13'),
(400, 'a14'),
(401, 'a21'),
(402, 'a22'),
(403, 'a23'),
(404, 'a24'),
(405, 'a31'),
(406, 'a32'),
(407, 'a33'),
(408, 'a34'),
(409, 'a41'),
(410, 'a42'),
(411, 'a43'),
(412, 'a44'),
(413, 'a51'),
(414, 'a52'),
(415, 'a53'),
(416, 'a54'),
(417, 'a61'),
(418, 'a62'),
(419, 'a63'),
(420, 'a64'),
(421, 'a71'),
(422, 'a72'),
(423, 'a73'),
(424, 'a74'),
(425, 'b11'),
(426, 'b12'),
(427, 'b13'),
(428, 'b14'),
(429, 'b21'),
(430, 'b22'),
(431, 'b23'),
(432, 'b24'),
(433, 'b31'),
(434, 'b32'),
(435, 'b33'),
(436, 'b34'),
(437, 'b41'),
(438, 'b42'),
(439, 'b43'),
(440, 'b44'),
(441, 'b51'),
(442, 'b52'),
(443, 'b53'),
(444, 'b54'),
(445, 'b61'),
(446, 'b62'),
(447, 'b63'),
(448, 'b64'),
(449, 'b71'),
(450, 'b72'),
(451, 'b73'),
(452, 'b74'),
(453, 'c11'),
(454, 'c12'),
(455, 'c13'),
(456, 'c14'),
(457, 'c21'),
(458, 'c22'),
(459, 'c23'),
(460, 'c24'),
(461, 'c31'),
(462, 'c32'),
(463, 'c33'),
(464, 'c34'),
(465, 'c41'),
(466, 'c42'),
(467, 'c43'),
(468, 'c44'),
(469, 'c51'),
(470, 'c52'),
(471, 'c53'),
(472, 'c54'),
(473, 'c61'),
(474, 'c62'),
(475, 'c63'),
(476, 'c64'),
(477, 'c71'),
(478, 'c72'),
(479, 'c73'),
(480, 'c74'),
(509, 'd11'),
(510, 'd12'),
(511, 'd13'),
(512, 'd14'),
(513, 'd21'),
(514, 'd22'),
(515, 'd23'),
(516, 'd24'),
(517, 'd31'),
(518, 'd32'),
(519, 'd33'),
(520, 'd34'),
(521, 'd41'),
(522, 'd42'),
(523, 'd43'),
(524, 'd44'),
(525, 'd51'),
(526, 'd52'),
(527, 'd53'),
(528, 'd54'),
(529, 'd61'),
(530, 'd62'),
(531, 'd63'),
(532, 'd64'),
(533, 'd71'),
(534, 'd72'),
(535, 'd73'),
(536, 'd74'),
(537, 'e11'),
(538, 'e12'),
(539, 'e13'),
(540, 'e14'),
(541, 'e21'),
(542, 'e22'),
(543, 'e23'),
(544, 'e24'),
(545, 'e31'),
(546, 'e32'),
(547, 'e33'),
(548, 'e34'),
(549, 'e41'),
(550, 'e42'),
(551, 'e43'),
(552, 'e44'),
(553, 'e51'),
(554, 'e52'),
(555, 'e53'),
(556, 'e54'),
(557, 'e61'),
(558, 'e62'),
(559, 'e63'),
(560, 'e64'),
(561, 'e71'),
(562, 'e72'),
(563, 'e73'),
(564, 'e74'),
(565, 'f11'),
(566, 'f12'),
(567, 'f13'),
(568, 'f14'),
(569, 'f21'),
(570, 'f22'),
(571, 'f23'),
(572, 'f24'),
(573, 'f31'),
(574, 'f32'),
(575, 'f33'),
(576, 'f34'),
(577, 'f41'),
(578, 'f42'),
(579, 'f43'),
(580, 'f44'),
(581, 'f51'),
(582, 'f52'),
(583, 'f53'),
(584, 'f54'),
(585, 'f61'),
(586, 'f62'),
(587, 'f63'),
(588, 'f64'),
(589, 'f71'),
(590, 'f72'),
(591, 'f73'),
(592, 'f74'),
(593, 'g11'),
(594, 'g12'),
(595, 'g13'),
(596, 'g14'),
(597, 'g21'),
(598, 'g22'),
(599, 'g23'),
(600, 'g24'),
(601, 'g31'),
(602, 'g32'),
(603, 'g33'),
(604, 'g34'),
(605, 'g41'),
(606, 'g42'),
(607, 'g43'),
(608, 'g44'),
(609, 'g51'),
(610, 'g52'),
(611, 'g53'),
(612, 'g54'),
(613, 'g61'),
(614, 'g62'),
(615, 'g63'),
(616, 'g64'),
(617, 'g71'),
(618, 'g72'),
(619, 'g73'),
(620, 'g74'),
(621, 'h11'),
(622, 'h12'),
(623, 'h13'),
(624, 'h14'),
(625, 'h21'),
(626, 'h22'),
(627, 'h23'),
(628, 'h24'),
(629, 'h31'),
(630, 'h32'),
(631, 'h33'),
(632, 'h34'),
(633, 'h41'),
(634, 'h42'),
(635, 'h43'),
(636, 'h44'),
(637, 'h51'),
(638, 'h52'),
(639, 'h53'),
(640, 'h54'),
(641, 'h61'),
(642, 'h62'),
(643, 'h63'),
(644, 'h64'),
(645, 'h71'),
(646, 'h72'),
(647, 'h73'),
(648, 'h74'),
(649, 'i11'),
(650, 'i12'),
(651, 'i13'),
(652, 'i14'),
(653, 'i21'),
(654, 'i22'),
(655, 'i23'),
(656, 'i24'),
(657, 'i31'),
(658, 'i32'),
(659, 'i33'),
(660, 'i34'),
(661, 'i41'),
(662, 'i42'),
(663, 'i43'),
(664, 'i44'),
(665, 'i51'),
(666, 'i52'),
(667, 'i53'),
(668, 'i54'),
(669, 'i61'),
(670, 'i62'),
(671, 'i63'),
(672, 'i64'),
(673, 'i71'),
(674, 'i72'),
(675, 'i73'),
(676, 'i74');

-- --------------------------------------------------------

--
-- Table structure for table `ruangan`
--

CREATE TABLE IF NOT EXISTS `ruangan` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `senin` varchar(3) DEFAULT NULL,
  `selasa` varchar(3) DEFAULT NULL,
  `rabu` varchar(3) DEFAULT NULL,
  `kamis` varchar(3) DEFAULT NULL,
  `jumat` varchar(3) DEFAULT NULL,
  `sabtu` varchar(3) DEFAULT NULL,
  `minggu` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ruangan`
--

INSERT INTO `ruangan` (`id`, `senin`, `selasa`, `rabu`, `kamis`, `jumat`, `sabtu`, `minggu`) VALUES
(2, 'a11', 'a21', 'a31', 'a41', 'a51', 'a61', 'a71'),
(3, 'a12', 'a22', 'a32', 'a42', 'a52', 'a62', 'a72'),
(4, 'a13', 'a23', 'a33', 'a43', 'a53', 'a63', 'a73'),
(5, 'a14', 'a24', 'a34', 'a44', 'a54', 'a64', 'a74'),
(6, 'b11', 'b21', 'b31', 'b41', 'b51', 'b61', 'b71'),
(7, 'b12', 'b22', 'b32', 'b42', 'b52', 'b62', 'b72'),
(8, 'b13', 'b23', 'b33', 'b43', 'b53', 'b63', 'b73'),
(9, 'b14', 'b24', 'b34', 'b44', 'b54', 'b64', 'b74'),
(10, 'c11', 'c21', 'c31', 'c41', 'c51', 'c61', 'c71'),
(11, 'c12', 'c22', 'c32', 'c42', 'c52', 'c62', 'c72'),
(12, 'c13', 'c23', 'c33', 'c43', 'c53', 'c63', 'c73'),
(13, 'c14', 'c24', 'c34', 'c44', 'c54', 'c64', 'c74'),
(14, 'd11', 'd21', 'd31', 'd41', 'd51', 'd61', 'd71'),
(15, 'd12', 'd22', 'd32', 'd42', 'd52', 'd62', 'd72'),
(16, 'd13', 'd23', 'd33', 'd43', 'd53', 'd63', 'd73'),
(17, 'd14', 'd24', 'd34', 'd44', 'd54', 'd64', 'd74'),
(18, 'e11', 'e21', 'e31', 'e41', 'e51', 'e61', 'e71'),
(19, 'e12', 'e22', 'e32', 'e42', 'e52', 'e62', 'e72'),
(20, 'e13', 'e23', 'e33', 'e43', 'e53', 'e63', 'e73'),
(21, 'e14', 'e24', 'e34', 'e44', 'e54', 'e64', 'e74'),
(22, 'f11', 'f21', 'f31', 'f41', 'f51', 'f61', 'f71'),
(23, 'f12', 'f22', 'f32', 'f42', 'f52', 'f62', 'f72'),
(24, 'f13', 'f23', 'f33', 'f43', 'f53', 'f63', 'f73'),
(25, 'f14', 'f24', 'f34', 'f44', 'f54', 'f64', 'f74'),
(26, 'g11', 'g21', 'g31', 'g41', 'g51', 'g61', 'g71'),
(27, 'g12', 'g22', 'g32', 'g42', 'g52', 'g62', 'g72'),
(28, 'g13', 'g23', 'g33', 'g43', 'g53', 'g63', 'g73'),
(29, 'g14', 'g24', 'g34', 'g44', 'g54', 'g64', 'g74'),
(30, 'h11', 'h21', 'h31', 'h41', 'h51', 'h61', 'h71'),
(31, 'h12', 'h22', 'h32', 'h42', 'h52', 'h62', 'h72'),
(32, 'h13', 'h23', 'h33', 'h43', 'h53', 'h63', 'h73'),
(33, 'h14', 'h24', 'h34', 'h44', 'h54', 'h64', 'h74'),
(34, 's11', 's21', 's31', 's41', 's51', 's61', 's71'),
(35, 's12', 's22', 's32', 's42', 's52', 's62', 's72'),
(36, 's13', 's23', 's33', 's43', 's53', 's63', 's73'),
(37, 's14', 's24', 's34', 's44', 's54', 's64', 's74');

-- --------------------------------------------------------

--
-- Table structure for table `r_fasilitas`
--

CREATE TABLE IF NOT EXISTS `r_fasilitas` (
  `id_fasilitas` int(11) NOT NULL AUTO_INCREMENT,
  `id_kelas` int(11) NOT NULL,
  `proyektor` text NOT NULL,
  `kabel VGA` varchar(12) NOT NULL,
  `sound` varchar(12) NOT NULL,
  `monitor` varchar(12) NOT NULL,
  `keyboard` text NOT NULL,
  `mouse` text NOT NULL,
  `internet` text NOT NULL,
  `splitter` varchar(10) NOT NULL,
  PRIMARY KEY (`id_fasilitas`),
  KEY `id_kelas` (`id_kelas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `r_kelas`
--

CREATE TABLE IF NOT EXISTS `r_kelas` (
  `id_kelas` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kelas` varchar(5) NOT NULL,
  `lantai` varchar(12) NOT NULL,
  PRIMARY KEY (`id_kelas`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_kelas`
--

INSERT INTO `r_kelas` (`id_kelas`, `nama_kelas`, `lantai`) VALUES
(7, 'E.1.1', 'Lantai 1'),
(8, 'LAB F', 'LAB'),
(13, 'LAB H', 'LAB'),
(14, 'LAB A', 'LAB'),
(15, 'D.1.5', 'Lantai 1'),
(16, 'D.2.5', 'Lantai 2'),
(17, 'C.3.2', 'Lantai 3'),
(18, 'D.1.1', 'Lantai 1'),
(20, 'LAB B', 'LAB');

-- --------------------------------------------------------

--
-- Table structure for table `r_spek`
--

CREATE TABLE IF NOT EXISTS `r_spek` (
  `id_spek` int(11) NOT NULL AUTO_INCREMENT,
  `id_kelas` int(11) NOT NULL,
  `main_board` varchar(200) NOT NULL,
  `processor` varchar(200) NOT NULL,
  `memory` varchar(200) NOT NULL,
  `hard_disk` varchar(200) NOT NULL,
  `os` varchar(200) NOT NULL,
  `monitor` varchar(10) NOT NULL,
  `splitter` varchar(50) NOT NULL,
  `switch_vga` varchar(50) NOT NULL,
  `switch_hub` varchar(50) NOT NULL,
  `layar` varchar(50) NOT NULL,
  `proyektor` varchar(50) NOT NULL,
  `jam_lampu` varchar(50) NOT NULL,
  `tgl_filter` date NOT NULL,
  PRIMARY KEY (`id_spek`),
  KEY `id_kelas` (`id_kelas`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_spek`
--

INSERT INTO `r_spek` (`id_spek`, `id_kelas`, `main_board`, `processor`, `memory`, `hard_disk`, `os`, `monitor`, `splitter`, `switch_vga`, `switch_hub`, `layar`, `proyektor`, `jam_lampu`, `tgl_filter`) VALUES
(7, 17, 'ASRock FM2A68M-DG3+', 'i5 - 5200U', 'corsair 2gb', '1 TB', 'Windows 7 64-bit', 'Ada', 'Ada', 'Ada', 'Ada', 'sdsadsa', 'dsadsadsa', '100 jam', '2018-12-21'),
(8, 16, 'Acer ', 'i7', '10 gb', '10 TB', 'Windowsm 10 64 bit', 'Ada', 'Ada', 'Ada', 'Ada', 'hi', '3px', '100 mnt', '2018-12-07');

-- --------------------------------------------------------

--
-- Table structure for table `r_user`
--

CREATE TABLE IF NOT EXISTS `r_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `foto` text NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_user`
--

INSERT INTO `r_user` (`user_id`, `username`, `password`, `foto`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_admin`
--

CREATE TABLE IF NOT EXISTS `user_admin` (
  `user_admin` varchar(20) DEFAULT NULL,
  `password_admin` varchar(41) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_admin`
--

INSERT INTO `user_admin` (`user_admin`, `password_admin`) VALUES
('admin', 'adminPPLK');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `r_fasilitas`
--
ALTER TABLE `r_fasilitas`
  ADD CONSTRAINT `fasilitas_ibfk_1` FOREIGN KEY (`id_kelas`) REFERENCES `r_kelas` (`id_kelas`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `r_spek`
--
ALTER TABLE `r_spek`
  ADD CONSTRAINT `spek_ibfk_1` FOREIGN KEY (`id_kelas`) REFERENCES `r_kelas` (`id_kelas`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
