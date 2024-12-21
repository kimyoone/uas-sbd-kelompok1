--
-- Table structure for table `alur`
--

CREATE TABLE `alur` (
  `id_alur` int NOT NULL,
  `judul` varchar(200) NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar_alur` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alur`
--

INSERT INTO `alur` (`id_alur`, `judul`, `deskripsi`, `gambar_alur`, `created_at`, `updated_at`) VALUES
(1, 'Registerasi online', 'Sebelum Melakukan Pendaftaran silahkan Lakukan Registerasi Akun Terlebih Dahulu Supaya Memiliki Akun untuk mendaftar', 'user.png', '2024-05-07 07:54:32', '2024-05-07 14:12:11'),
(2, 'Lengkapi berkas', 'Setelah Melengkapi Biodata Silahkan Untuk Melakukan Proses Melengkapi Berkas Yang Ada Untuk Dapat Melanjutkan Proses Pendaftaran', 'alur-260120220846cd95ad.png', '2024-05-07 07:55:43', NULL),
(3, 'Menunggu Hasil', 'Setelah Mendaftar, Tunggu Hasil dan Cek Secara Berkala Pada Menu Daftar Berkas Yang Ada Pada Sub Menu Profil', 'hourglass.png', '2024-05-07 07:50:41', NULL),
(4, 'Selesai', 'Semua Proses Wajib Di Ikuti Secara Urut Untuk Dapat Mendaftar menjadi calon anggota bem stmik bandung, Terimakasih dan Semoga Diterima', 'success.png', '2024-05-07 07:56:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `detail_users`
--

CREATE TABLE `detail_users` (
  `id_detail_users` int NOT NULL,
  `nim` varchar(100) NOT NULL,
  `nik` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(100) NOT NULL,
  `agama` varchar(100) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `tempat_lahir` varchar(255) NOT NULL,
  `id_users` int NOT NULL,
  `alamat_lengkap` varchar(255) NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `detail_users`
--

INSERT INTO `detail_users` (`id_detail_users`, `nim`, `nik`, `jenis_kelamin`, `agama`, `tanggal_lahir`, `tempat_lahir`, `id_users`, `alamat_lengkap`, `nama_lengkap`, `created_at`, `updated_at`) VALUES
(1, '3232', '324234', 'laki-laki', 'Islam', '2023-10-03', 'dffdg', 5, 'ewrewr', 'ewrfewr', '2023-10-02 08:38:45', NULL),
(2, '32423', '3234324', 'laki-laki', 'Islam', '2023-10-03', 'sdfsdf', 3, 'dsfdsfds', 'Pelamar', '2024-01-17 06:54:44', '2024-01-17 13:54:44'),
(3, '1222009', '6302201807080001', 'laki-laki', 'Kristen', '2002-02-11', 'kotabaru', 19, 'Jl. Cikutra No.113, Cikutra, Kec. Cibeunying Kidul, Kota Bandung, Jawa Barat 40124', 'daud manuwo', '2024-05-10 17:55:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galeri`
--

CREATE TABLE `galeri` (
  `id_galeri` int NOT NULL,
  `galeri_gambar` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `galeri`
--

INSERT INTO `galeri` (`id_galeri`, `galeri_gambar`, `created_at`, `updated_at`) VALUES
(1, '1696264002_bc.jpg', '2023-10-02 09:26:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `informasi`
--

CREATE TABLE `informasi` (
  `id_informasi` int NOT NULL,
  `judul` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `penulis` varchar(100) NOT NULL,
  `gambar_informasi` varchar(200) NOT NULL,
  `tgl_informasi` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_05_06_174611_create_sertifikat_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pendaftaran`
--

CREATE TABLE `pendaftaran` (
  `id_pendaftaran` int NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `ktp` varchar(255) NOT NULL,
  `surat_rekomendasi` varchar(255) NOT NULL,
  `cv` varchar(255) NOT NULL,
  `proposal` varchar(255) DEFAULT NULL,
  `id_users` int NOT NULL,
  `status_pendaftaran` varchar(200) NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pendaftaran`
--

INSERT INTO `pendaftaran` (`id_pendaftaran`, `gambar`, `ktp`, `surat_rekomendasi`, `cv`, `proposal`, `id_users`, `status_pendaftaran`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, '1696599311_back.jpg', '1696599311_caravan travel.png', '1696599311_background.jpeg', '1696599311_bc.jpg', NULL, 5, 'tidak diterima', 'as dasdasd', '2023-11-12 13:07:36', '2023-11-12 13:06:02'),
(2 '1701934013_back.jpg', '1701934013_download (2).jpg', '1701934013_bc.jpg', '1701934013_background.jpeg', '', 3, 'pengajuan', NULL, '2023-12-07 00:26:53', NULL),
(3, '1715371326_user.png', '1715371326_438304126_10228499634849823_4108108710460634388_n.jpg', '1715371326_ActivityDiagram1.png', '1715371326_CV-2023.png', '1715371326_png_20220807_082119_0000.png', 19, 'diterima', 'selamat, anda diterima', '2024-05-10 20:04:26', '2024-05-11 03:04:26');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `id_perusahaan` int NOT NULL,
  `nama_perusahaan` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `visi` text NOT NULL,
  `misi` text NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `facebook` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `instagram` varchar(100) NOT NULL,
  `id_users` int NOT NULL,
  `gambar_perusahaan` varchar(100) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id_perusahaan`, `nama_perusahaan`, `deskripsi`, `visi`, `misi`, `no_hp`, `facebook`, `email`, `instagram`, `id_users`, `gambar_perusahaan`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'Sekolah Tinggi Manajemen Informatika dan Komputer Bandung', 'Menjadi pusat pendidikan berkualitas bertaraf nasional dalam bidang Teknologi Informasi dalam rangka berpartisipasi menciptakan generasi bangsa yang mandiri pada tahun 2040', 'Menjadi pusat pendidikan berkualitas bertaraf nasional dalam bidang Teknologi Informasi dalam rangka berpartisipasi menciptakan generasi bangsa yang mandiri pada tahun 2040', 'Menyelenggarakan pendidikan tinggi bidang teknologi nformasuntuk menghasilkan generasi profesional technoprenur yang cerdas, inovatif dan mandiri serta memiliki in', '085161401414', 'Stmik Bandung', 'daudmanuwu@gmail.com', 'stmikbandung', 1, 'logonew.jpeg', 'Jl. Cikutra No.113, Cikutra, Kec. Cibeunying Kidul, Kota Bandung, Jawa Barat 40124', '2024-05-10 18:40:40', '2024-05-11 03:40:40');

-- --------------------------------------------------------

--
-- Table structure for table `sertifikat`
--

CREATE TABLE `sertifikat` (
  `id` bigint UNSIGNED NOT NULL,
  `created_by` bigint UNSIGNED NOT NULL,
  `nama_sertifikat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_telp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `no_telp`, `status`, `alamat`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$Nf68ysXF3R9i12HV8cVwFOv.Kbam3MwNQX2dONoO94A9wZdSIV5Qy', 'admin', '32423423', '1', 'adminadmin', NULL, '2023-10-02 06:03:43', '2023-10-02 06:50:38'),
(2, 'test', 'test@gmail.com', NULL, '$2y$10$Y40ROh/JIZHrTs8xfDm96.S1OHz/66vCTXj7NAEUBGBsIJXJrkaCa', 'admin', '3434324', '1', 'test', NULL, '2023-10-02 06:04:10', NULL),
(3, 'pelamar', 'pelamar@gmail.com', NULL, '$2y$10$TTqR1jZUeqnAzZ3G4/joJu.ClqqbdK4owT7fOVZlQ.7S2fe2PvWqa', 'pelamar', '3423423432', '1', 'test', NULL, '2023-10-02 07:25:32', '2024-01-17 06:54:44'),
(4, 'saya', 'iconikinfomatika@gmail.com', NULL, '$2y$10$08TWT1z/x0nIfc/ykc/4SupS8pHXzQHHe0xz.XjMXy8eKKwrJdr76', 'pelamar', '3232423', '1', 'saya', NULL, '2023-10-02 08:29:15', '2023-10-02 08:38:45'),
(5, 'ewrewr', 'desa@gmail.com', NULL, '$2y$10$Sfju4FIYHqmWE/fFzS.01.75nnGKr7MxYeacz4zNzI7mxb3xTiEb6', 'pelamar', '081229677253', '0', 'sdfsdf', NULL, '2023-10-06 20:44:49', NULL),
(6, 'daud manuwo', 'daudmanuwu@gmail.com', NULL, '$2y$10$QJ6AjVTUye0bC9t9sePCTOb9Yym8/axMWt3QJeG.bq0Y5/d/Jjtq2', 'pelamar', '085161401414', '1', 'Jl. Cikutra No.113, Cikutra, Kec. Cibeunying Kidul, Kota Bandung, Jawa Barat 40124', NULL, '2024-05-10 17:55:52', '2024-05-10 17:55:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alur`
--
ALTER TABLE `alur`
  ADD PRIMARY KEY (`id_alur`);

--
-- Indexes for table `detail_users`
--
ALTER TABLE `detail_users`
  ADD PRIMARY KEY (`id_detail_users`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id_galeri`);

--
-- Indexes for table `informasi`
--
ALTER TABLE `informasi`
  ADD PRIMARY KEY (`id_informasi`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
  ADD PRIMARY KEY (`id_pendaftaran`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id_perusahaan`),
  ADD KEY `kd_admin` (`id_users`);

--
-- Indexes for table `sertifikat`
--
ALTER TABLE `sertifikat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sertifikat_created_by_foreign` (`created_by`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alur`
--
ALTER TABLE `alur`
  MODIFY `id_alur` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `detail_users`
--
ALTER TABLE `detail_users`
  MODIFY `id_detail_users` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id_galeri` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `informasi`
--
ALTER TABLE `informasi`
  MODIFY `id_informasi` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
  MODIFY `id_pendaftaran` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `id_perusahaan` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sertifikat`
--
ALTER TABLE `sertifikat`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sertifikat`
--
ALTER TABLE `sertifikat`
  ADD CONSTRAINT `sertifikat_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
