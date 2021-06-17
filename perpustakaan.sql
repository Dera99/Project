-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Jun 2021 pada 15.57
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpustakaan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota`
--

CREATE TABLE `anggota` (
  `noanggota` int(11) NOT NULL,
  `nis` int(11) NOT NULL,
  `namaanggota` varchar(100) NOT NULL,
  `tempatlahir` varchar(100) NOT NULL,
  `jurusan` varchar(100) NOT NULL,
  `status` int(3) NOT NULL,
  `petugaskonfir` varchar(100) DEFAULT NULL,
  `alasandelete` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `anggota`
--

INSERT INTO `anggota` (`noanggota`, `nis`, `namaanggota`, `tempatlahir`, `jurusan`, `status`, `petugaskonfir`, `alasandelete`) VALUES
(1, 1000001, 'Atthoriq', 'Jakarta, 22 Oktober 2000', 'TKJ', 2, 'Gilang', NULL),
(2, 1000002, 'Sudirman', 'Solo, 28 Februari 2004', 'TKJ', 3, 'Gilang', 'Lulus'),
(3, 1000003, 'Jaka', 'Palembang, 20 Agustus 2004', 'TKJ', 2, 'Gilang', NULL),
(4, 1000004, 'Joko', 'jakarta, 15 Juni 2001', 'TKJ', 2, 'Gilang', NULL),
(5, 1000010, 'Putri', 'Bekasi, 12 Januari 2005', 'TKJ', 2, 'Gilang', NULL),
(6, 1, 'Aji', 'Jakarta, 01 januari 2001', 'TKJ', 3, 'Gilang', 'Keluar/Drop Out'),
(7, 12312415, 'Diana', 'Jakarta, 17 Agustus 2004', 'TKJ', 2, 'Gilang', NULL),
(8, 131415416, 'Dimas', 'Bekasi 22 April 2005', 'TKJ', 2, 'Putra', NULL),
(9, 21457896, 'Dian', 'Bandung, 10 Desember 2004', 'TKJ', 3, 'Putra', 'Lulus'),
(10, 55884433, 'Andri', 'Bekasi, 01 Januari 2006', 'TKJ', 2, 'Gilang', NULL),
(11, 55889977, 'Andri', 'Bekasi, 21 Januari 2006', 'TKJ', 2, 'Gilang', NULL),
(12, 33554488, 'Diana', 'Ciamis, 31 Maret 2006', 'TKJ', 2, 'Gilang', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `idbuku` int(11) NOT NULL,
  `kategoribuku` varchar(100) NOT NULL,
  `judulbuku` varchar(255) NOT NULL,
  `nomorlemari` varchar(100) NOT NULL,
  `lokasirak` varchar(100) NOT NULL,
  `sisabuku` int(100) NOT NULL,
  `jumlahbuku` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`idbuku`, `kategoribuku`, `judulbuku`, `nomorlemari`, `lokasirak`, `sisabuku`, `jumlahbuku`) VALUES
(12, 'Pelajaran', 'Modul kelas 11', '4', '05', 7, 8),
(123, 'Pelajaran', 'Modul Kelas 12', '4', '05', 12, 12),
(1112, 'Pelajaran', 'Modul TKJ kelas 11', '4', '02', 10, 10),
(11111, 'Pelajaran', 'Modul Teknik Komputer Jaringan Kelas 12', '4', '01', 8, 10),
(11115, 'Pelajaran', 'Modul TKJ kelas 10', '4', '03', 9, 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `denda`
--

CREATE TABLE `denda` (
  `id` int(11) NOT NULL,
  `noanggota` int(11) NOT NULL,
  `namaanggota` varchar(50) NOT NULL,
  `namapetugas` varchar(50) NOT NULL,
  `sebabdenda` varchar(200) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `denda`
--

INSERT INTO `denda` (`id`, `noanggota`, `namaanggota`, `namapetugas`, `sebabdenda`, `jumlah`, `status`) VALUES
(1, 1, 'Atthoriq', 'Gilang', 'Keterlambatan pengembalian Buku', 10000, 3),
(2, 1, 'Atthoriq', '', 'Keterlambatan Pengembalian Buku', 10000, 3),
(3, 2, 'Sudirman', 'Gilang', 'Menghilangkan Buku Perpustakaan', 50000, 3),
(4, 4, 'Joko', 'Gilang', 'Menghilangkan Buku Perpustakaan', 50000, 3),
(5, 3, 'Jaka', 'Gilang', 'Menghilangkan Buku Perpustakaan', 50000, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `hilang`
--

CREATE TABLE `hilang` (
  `id` int(10) NOT NULL,
  `Idbuku` int(10) NOT NULL,
  `judulbuku` varchar(100) NOT NULL,
  `noanggota` int(10) NOT NULL,
  `namaanggota` varchar(100) NOT NULL,
  `tanggalhilang` varchar(100) NOT NULL,
  `jumlahhilang` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `hilang`
--

INSERT INTO `hilang` (`id`, `Idbuku`, `judulbuku`, `noanggota`, `namaanggota`, `tanggalhilang`, `jumlahhilang`) VALUES
(1, 11111, 'Modul Teknik Komputer Jaringan Kelas 12', 2, 'Sudirman', '31 Mei 2021', 0),
(2, 12, 'Modul kelas 11', 3, 'Jaka', '31 Mei 2021', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kasdenda`
--

CREATE TABLE `kasdenda` (
  `id` int(11) NOT NULL,
  `Jumlah` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kasdenda`
--

INSERT INTO `kasdenda` (`id`, `Jumlah`) VALUES
(1, 90000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `laporananggota`
--

CREATE TABLE `laporananggota` (
  `noanggota` int(11) NOT NULL,
  `nis` int(11) NOT NULL,
  `namaanggota` varchar(50) NOT NULL,
  `tempatlahir` varchar(50) NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  `petugaskonfir` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `laporananggota`
--

INSERT INTO `laporananggota` (`noanggota`, `nis`, `namaanggota`, `tempatlahir`, `jurusan`, `petugaskonfir`) VALUES
(1, 1000001, 'Atthoriq', 'Jakarta, 22 Oktober 2000', 'TKJ', 'Gilang'),
(3, 1000003, 'Jaka', 'Palembang, 20 Agustus 2004', 'TKJ', 'Gilang'),
(4, 1000004, 'Joko', 'jakarta, 15 Juni 2001', 'TKJ', 'Gilang'),
(5, 1000010, 'Putri', 'Bekasi, 12 Januari 2005', 'TKJ', 'Gilang'),
(7, 12312415, 'Diana', 'Jakarta, 17 Agustus 2004', 'TKJ', 'Gilang'),
(8, 131415416, 'Dimas', 'Bekasi 22 April 2005', 'TKJ', 'Putra'),
(10, 55884433, 'Andri', 'Bekasi, 01 Januari 2006', 'TKJ', 'Gilang'),
(11, 55889977, 'Andri', 'Bekasi, 21 Januari 2006', 'TKJ', 'Gilang'),
(12, 33554488, 'Diana', 'Ciamis, 31 Maret 2006', 'TKJ', 'Gilang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `laporankembali`
--

CREATE TABLE `laporankembali` (
  `idpinjam` int(11) NOT NULL,
  `Idbuku` int(11) NOT NULL,
  `judulbuku` varchar(50) NOT NULL,
  `noanggota` int(11) NOT NULL,
  `namanaggota` varchar(50) NOT NULL,
  `tanggalpinjam` varchar(50) NOT NULL,
  `tanggalkembali` varchar(50) NOT NULL,
  `petugaskonfir` varchar(50) NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `laporankembali`
--

INSERT INTO `laporankembali` (`idpinjam`, `Idbuku`, `judulbuku`, `noanggota`, `namanaggota`, `tanggalpinjam`, `tanggalkembali`, `petugaskonfir`, `keterangan`) VALUES
(1, 11111, 'Modul Teknik Komputer Jaringan Kelas 12', 2, 'Sudirman', '01 Mei 2021', '5 Mei 2021', 'Gilang', 'Kembali'),
(2, 11111, 'Modul Teknik Komputer Jaringan Kelas 12', 3, 'Jaka', '1 Mei 2021', '5 Mei 2021', 'Gilang', 'kembali'),
(3, 1112, 'Modul TKJ kelas 11', 1, 'Atthoriq', '01 Mei 2021', '04 Mei 2021', 'Gilang', 'kembali'),
(4, 11111, 'Modul Teknik Komputer Jaringan Kelas 12', 4, 'Joko', '01 Mei 2021', '27 mei 2021', 'Dika', 'kembali'),
(5, 11111, 'Modul Teknik Komputer Jaringan Kelas 12', 2, 'Sudirman', '05 Mei 2021', '31 Mei 2021', 'Dika', 'Hilang'),
(6, 11111, 'Modul Teknik Komputer Jaringan Kelas 12', 1, 'Atthoriq', '27 mei 2021', '30 Mei 2021', 'Gilang', 'Kembali'),
(7, 12, 'Modul kelas 11', 3, 'Jaka', '28 Mei 2021', '31 Mei 2021', 'Admin', 'Hilang'),
(8, 11111, 'Modul Teknik Komputer Jaringan Kelas 12', 4, 'Joko', '24 Mei 2021', '31 Mei 2021', 'Admin', 'Hilang'),
(11, 1112, 'Modul TKJ kelas 11', 1, 'Atthoriq', '06 Juni 2021', '08 Juni 2021', 'Gilang', 'Kembali');

-- --------------------------------------------------------

--
-- Struktur dari tabel `laporanpinjam`
--

CREATE TABLE `laporanpinjam` (
  `idpinjam` int(11) NOT NULL,
  `Idbuku` int(11) NOT NULL,
  `judulbuku` varchar(50) NOT NULL,
  `noanggota` int(11) NOT NULL,
  `namanaggota` varchar(50) NOT NULL,
  `tanggalpinjam` varchar(50) NOT NULL,
  `petugaskonfir` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `laporanpinjam`
--

INSERT INTO `laporanpinjam` (`idpinjam`, `Idbuku`, `judulbuku`, `noanggota`, `namanaggota`, `tanggalpinjam`, `petugaskonfir`) VALUES
(9, 11111, 'Modul Teknik Komputer Jaringan Kelas 12', 4, 'Joko', '06 Juni 2021', 'Putra'),
(10, 11115, 'Modul TKJ kelas 10', 7, 'Diana', '06 Juni 2021', 'Gilang'),
(12, 11111, 'Modul Teknik Komputer Jaringan Kelas 12', 5, 'Putri', '06 Juni 2021', 'Gilang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjam`
--

CREATE TABLE `peminjam` (
  `id` int(11) NOT NULL,
  `Idbuku` int(11) NOT NULL,
  `judulbuku` varchar(255) NOT NULL,
  `noanggota` int(11) NOT NULL,
  `Nama` varchar(255) NOT NULL,
  `tanggalpinjam` varchar(100) NOT NULL,
  `tenggatkembali` varchar(100) NOT NULL,
  `status` int(3) NOT NULL,
  `petugaskonfirpinjam` varchar(255) DEFAULT NULL,
  `tanggalkembali` varchar(50) DEFAULT NULL,
  `petugaskonfirkembali` varchar(255) DEFAULT NULL,
  `keterangan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `peminjam`
--

INSERT INTO `peminjam` (`id`, `Idbuku`, `judulbuku`, `noanggota`, `Nama`, `tanggalpinjam`, `tenggatkembali`, `status`, `petugaskonfirpinjam`, `tanggalkembali`, `petugaskonfirkembali`, `keterangan`) VALUES
(1, 11111, 'Modul Teknik Komputer Jaringan Kelas 12', 2, 'Sudirman', '01 Mei 2021', '15 Mei 2021', 4, 'Gilang', '5 Mei 2021', 'Gilang', 'Kembali'),
(2, 11111, 'Modul Teknik Komputer Jaringan Kelas 12', 3, 'Jaka', '1 Mei 2021', '8 Mei 2021', 4, 'Gilang', '5 Mei 2021', 'Gilang', 'kembali'),
(3, 1112, 'Modul TKJ kelas 11', 1, 'Atthoriq', '01 Mei 2021', '12 Mei 2021', 4, 'Darwin', '04 Mei 2021', 'Gilang', 'kembali'),
(4, 11111, 'Modul Teknik Komputer Jaringan Kelas 12', 4, 'Joko', '01 Mei 2021', '8 Mei 2021', 4, 'GIlang', '27 mei 2021', 'Dika', 'kembali'),
(5, 11111, 'Modul Teknik Komputer Jaringan Kelas 12', 2, 'Sudirman', '05 Mei 2021', '20 Mei 2021', 4, 'Dika', '31 Mei 2021', 'Dika', 'Hilang'),
(6, 11111, 'Modul Teknik Komputer Jaringan Kelas 12', 1, 'Atthoriq', '27 mei 2021', '29 Mei 2021', 4, 'Gilang', '30 Mei 2021', 'Gilang', 'Kembali'),
(7, 12, 'Modul kelas 11', 3, 'Jaka', '28 Mei 2021', '05 Juni 2021', 4, 'Gilang', '31 Mei 2021', 'Admin', 'Hilang'),
(8, 11111, 'Modul Teknik Komputer Jaringan Kelas 12', 4, 'Joko', '24 Mei 2021', '04 Juni 2021', 4, 'Gilang', '31 Mei 2021', 'Admin', 'Hilang'),
(9, 11111, 'Modul Teknik Komputer Jaringan Kelas 12', 4, 'Joko', '06 Juni 2021', '12 Juni 2021', 2, 'Putra', NULL, NULL, 'Proses'),
(10, 11115, 'Modul TKJ kelas 10', 7, 'Diana', '06 Juni 2021', '12 Juni 2021', 2, 'Gilang', NULL, NULL, 'Proses'),
(11, 1112, 'Modul TKJ kelas 11', 1, 'Atthoriq', '06 Juni 2021', '12 Juni 2021', 4, 'Gilang', '08 Juni 2021', 'Gilang', 'Proses'),
(12, 11111, 'Modul Teknik Komputer Jaringan Kelas 12', 5, 'Putri', '06 Juni 2021', '12 Juni 2021', 2, 'Gilang', NULL, NULL, 'Proses');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `role` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `Username`, `Password`, `role`) VALUES
(1, 'admin', 'admin', 1),
(2, 'Gilang', 'gilang', 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`noanggota`);

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`idbuku`);

--
-- Indeks untuk tabel `denda`
--
ALTER TABLE `denda`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `hilang`
--
ALTER TABLE `hilang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kasdenda`
--
ALTER TABLE `kasdenda`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `laporananggota`
--
ALTER TABLE `laporananggota`
  ADD PRIMARY KEY (`noanggota`);

--
-- Indeks untuk tabel `laporankembali`
--
ALTER TABLE `laporankembali`
  ADD PRIMARY KEY (`idpinjam`);

--
-- Indeks untuk tabel `laporanpinjam`
--
ALTER TABLE `laporanpinjam`
  ADD PRIMARY KEY (`idpinjam`);

--
-- Indeks untuk tabel `peminjam`
--
ALTER TABLE `peminjam`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `anggota`
--
ALTER TABLE `anggota`
  MODIFY `noanggota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `denda`
--
ALTER TABLE `denda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `hilang`
--
ALTER TABLE `hilang`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `kasdenda`
--
ALTER TABLE `kasdenda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `peminjam`
--
ALTER TABLE `peminjam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
