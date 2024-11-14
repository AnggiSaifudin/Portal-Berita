-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Nov 2024 pada 07.57
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('1b6453892473a467d07372d45eb05abc2031647a', 'i:1;', 1724331347),
('1b6453892473a467d07372d45eb05abc2031647a:timer', 'i:1724331347;', 1724331347),
('a17961fa74e9275d529f489537f179c05d50c2f3', 'i:1;', 1728401607),
('a17961fa74e9275d529f489537f179c05d50c2f3:timer', 'i:1728401607;', 1728401607);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `color`, `created_at`, `updated_at`) VALUES
(1, 'Electronics', 'Teknologi.', 'yellow', '2024-08-19 05:58:49', '2024-08-19 05:58:49'),
(2, 'Clothing', 'Wear.', 'gray', '2024-08-19 05:58:49', '2024-08-19 05:58:49'),
(3, 'Blog', 'Berita', 'blue', '2024-08-19 06:15:02', '2024-08-19 06:15:02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) DEFAULT NULL,
  `collection_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(255) DEFAULT NULL,
  `disk` varchar(255) NOT NULL,
  `conversions_disk` varchar(255) DEFAULT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`manipulations`)),
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`custom_properties`)),
  `generated_conversions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`generated_conversions`)),
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`responsive_images`)),
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_07_28_132134_create_posts_table', 1),
(5, '2024_08_15_023723_create_categories_table', 1),
(6, '2024_08_16_031126_update_posts_table', 1),
(7, '2024_08_19_023632_create_media_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `thumbnail` longtext NOT NULL,
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `title`, `thumbnail`, `author_id`, `category_id`, `slug`, `body`, `created_at`, `updated_at`) VALUES
(1, 'Kelahiran Albert Einstein', '01J5NCFRYZBXMPTBJ0JBEP2XEX.jpg', 4, 3, 'Albert Einstein', '<p>14 Maret 1879 Albert Einstein lahir di Ulm, Kerajaan Württemberg, Kekaisaran Jerman. Ayahnya bernama Hermann Einstein, seorang insinyur listrik, dan ibunya bernama Pauline Koch. Einstein tumbuh dalam lingkungan yang mendukung perkembangan intelektualnya. Ayahnya memberinya mainan yang merangsang pikirannya, seperti kompas dan teleskop, dan ibunya mendorongnya untuk belajar dan membaca. Pada usia 5 tahun, Einstein mulai bersekolah di sekolah dasar katolik di Ulm. Ia menunjukkan kemampuan akademis yang luar biasa dan cepat menguasai pelajaran-pelajaran di sekolah. Pada usia 10 tahun, Einstein pindah ke sekolah menengah di Luitpold Gymnasium di München, Jerman. Einstein terus menunjukkan kemampuan akademis yang luar biasa dan pada usia 16 tahun, ia lulus ujian masuk universitas. Ia kemudian melanjutkan pendidikannya di Universitas Teknik Swiss Federal di Zürich, Swiss, dan lulus pada tahun 1900 dengan gelar sarjana fisika. Setelah lulus, Einstein bekerja sebagai pegawai paten di Bern, Swiss, dan Salah satu penemuan yang paling terkenal adalah teori relativitas khusus, yang ia temukan saat masih berusia 26 tahun. Teori ini melahirkan formula ikonik E=mc² dan Penemuan-penemuan Einstein telah memiliki dampak yang sangat besar dalam berbagai bidang, seperti fisika, astronomi, dan teknologi. Ia dianggap sebagai salah satu ilmuwan terbesar dalam sejarah dan penemuan-penemuannya terus digunakan dan dikembangkan hingga saat ini.</p>', '2024-08-19 06:16:10', '2024-08-19 06:16:10'),
(2, 'Kelahiran Nikola Tesla Menciptakan Teknologi Untuk Menghasilkan Listrik', '01J5NG2Q815VQZK3RVG90006D9.jpg', 4, 3, 'Nikola Tesla', '<p>10 Juli 1856 Nikola Tesla lahir di Smiljan, Kroasia, yang pada saat itu merupakan bagian dari Kekaisaran Austria-Hungaria. Ayahnya bernama Milutin Tesla, seorang pendeta Ortodoks Serbia, dan ibunya bernama Đuka Tesla. Tesla tumbuh dalam lingkungan yang mendukung perkembangan intelektualnya. Ayahnya memberinya buku-buku tentang sains dan teknologi, dan ibunya mendorongnya untuk belajar dan membaca. Pada usia 4 tahun, Tesla sudah menunjukkan kemampuan akademis yang luar biasa dan cepat menguasai pelajaranpelajaran di sekolah. Pada usia 17 tahun, Tesla melanjutkan pendidikannya di Universitas Teknik Graz di Austria, di mana ia belajar tentang teknik elektro dan mesin. Setelah lulus, Tesla bekerja sebagai insinyur di perusahaan telepon di Budapest, Hongaria. Pada tahun 1884, Tesla pindah ke Amerika Serikat dan bekerja sebagai insinyur di perusahaan Edison Machine Works di New York. Namun, Tesla tidak puas dengan pekerjaannya dan memutuskan untuk mendirikan perusahaan sendiri, Tesla Electric Light &amp; Manufacturing. Tesla dikenal sebagai salah satu ilmuwan paling berpengaruh di abad ke-20. Ia memiliki lebih dari 300 paten atas namanya, termasuk penemuan tentang arus bolak-balik (AC), motor AC, dan generator AC. Tesla juga mengembangkan teknologi transmisi energi nirkabel, yang memungkinkan pengiriman energi listrik tanpa menggunakan kabel. Ia juga melakukan penelitian tentang sinar-X, radio, dan televisi. Karya dan penemuan Tesla juga telah menginspirasi banyak ilmuwan dan insinyur lainnya. Ia dianggap sebagai salah satu ilmuwan paling berpengaruh di abad ke-20, dan karyanya masih dipelajari dan dikembangkan hingga saat ini.</p>', '2024-08-19 07:18:57', '2024-08-19 07:18:57'),
(3, 'Penemuan Energi Kuantum', '01J5NG6AAXBWPTYACS13VEWX98.jpg', 4, 3, 'Max Planck', '<p>23 April 1858 Max Karl Ernst Ludwig Planck lahir di Kiel, Holstein, Jerman. Ayahnya bernama Johann Julius Wilhelm Planck, seorang profesor hukum, dan ibunya bernama Emma Patzig. Planck tumbuh dalam lingkungan yang mendukung perkembangan intelektualnya. Ayahnya memberinya nama Marx, tetapi ia lebih suka dipanggil Max dan menggunakan nama itu sepanjang hidupnya. Pada usia 9 tahun, Planck pindah ke Munich, di mana ayahnya menerima jabatan sebagai profesor hukum di Universitas Munich. Di sana, Planck masuk Maximilian Gymnasium, di mana ia menunjukkan kemampuan akademis yang luar biasa dan minat pada fisika dan matematika. Planck melanjutkan pendidikannya di Universitas Berlin, di mana ia belajar fisika dan matematika. Ia lulus pada tahun 1880 dan kemudian bekerja sebagai asisten profesor di Universitas Berlin. Pada tahun 1885, Planck menjadi profesor fisika teoritis di Universitas Berlin dan mulai mengembangkan teori kuantum. Planck dikenal sebagai salah satu ilmuwan paling berpengaruh di abad ke-20. Ia memenangkan Hadiah Nobel Fisika pada tahun 1918 atas penemuan energi kuantum. Ia juga dikenal sebagai salah satu pendiri fisika modern dan mengembangkan konstanta Planck, yang sangat penting dalam fisika kuantum.</p>', '2024-08-19 07:20:55', '2024-08-19 07:20:55'),
(4, 'Apple HP terpopuler 2024', '01J5NGD2HZ2EYFJGNQXFGFS69Y.jpg', 4, 3, 'Job Steve', '<p>24 Februari 1955 Steve Jobs lahir di San Francisco, California, Amerika Serikat. Ayahnya bernama Abdulfattah \"John\" Jandali, seorang profesor matematika, dan ibunya bernama Joanne Schieble, seorang psikolog. Jobs tumbuh dalam lingkungan yang mendukung perkembangan intelektualnya Pada usia 17 tahun, Jobs lulus dari sekolah menengah di Cupertino, California. Ia kemudian melanjutkan pendidikannya di Reed College di Portland, Oregon, tetapi tidak lulus. Namun, ia terus mengembangkan minatnya dalam bidang komputer dan elektronik. Pada tahun 1976, Jobs dan temannya, Steve Wozniak, mendirikan Apple Computer di garasi rumah Jobs. Mereka mengembangkan komputer Apple I dan Apple II, yang menjadi sangat populer dan membuat Apple menjadi salah satu perusahaan komputer terkemuka di dunia. Pada tahun 1980, Apple menjadi perusahaan publik dan Jobs menjadi salah satu orang terkaya di dunia. Namun, pada tahun 1985, Jobs keluar dari Apple setelah konflik dengan CEO John Sculley. Pada tahun 1996, Apple membeli NeXT, perusahaan yang didirikan oleh Jobs setelah keluar dari Apple. Jobs kemudian kembali ke Apple dan menjadi CEO pada tahun 1997. Di bawah kepemimpinannya, Apple mengembangkan produk-produk yang sangat sukses, seperti iMac, iPod, iPhone, dan iPad.</p>', '2024-08-19 07:24:36', '2024-08-19 07:24:36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('GOYthsitFCCGu0BemWImgtYLZYNvdQ85qmrtoK3X', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiNFFwdzFya0pob2dxSUV3bVdMNHZ3T2VWUXZWeTVaRExyRXF3SHNlbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi91c2VycyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMiRyZkFUSnBPMTd1Q1NtczZaaFkuak4udjk3OGplNzFjTk1MbWg5TFN1eW9abzNiTk5LOHBUZSI7fQ==', 1724334645),
('kXJmTaL3j1Jc5iZ5hY2re8oFochhLlKvLtZpdTSz', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiUnBBeUI0dWg3MFRzUVdRb01VdWNDODF3Mm5OTnFQMlkwcWs0N0VHbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hZG1pbi9wb3N0cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMiRyZkFUSnBPMTd1Q1NtczZaaFkuak4udjk3OGplNzFjTk1MbWg5TFN1eW9abzNiTk5LOHBUZSI7fQ==', 1728401607),
('mME84vzPTfKeRCMbIwhTuh5cPl9dhlmoW9VKnvN5', 4, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiY2JMNmZpd1VXZWdXeGJJcXdqVWpDcWlnOFRzTnIxOGg0blNPblY5cyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi91c2VycyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjQ7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMiQvc1cyNTlzVjBYYWdpS25yQzZRQ1FPMXN0Nm5HME9IaC5KNlA2ZEtnb3dYc0JBNXlGQWdWVyI7czo4OiJmaWxhbWVudCI7YTowOnt9fQ==', 1724331309);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `foto_profil` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `foto_profil`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Kobot Gaming', 'Kobot', '01J5X2F2XN290SSNFAPMTVW5QH.jpg', 'ekobotkacrut11@gmail.com', '2024-08-19 05:58:48', '$2y$12$rfATJpO17uCSms6ZhY.jN.v978je71cNMLmh9LSuyoZo3bNNK8pTe', 'e5OvRg1Po3npGtqg0dGxmjEDPmkoJMJh8PWXUSFSDJ5Ork3r1FqhujBIa6nQ', '2024-08-19 05:58:48', '2024-08-22 05:54:58'),
(4, 'kobotgaming123', 'kobot', '01J5NC31N7275FKTYW67VKF3VS.png', 'angsaefudin777@gmail.com', NULL, '$2y$12$/sW259sV0XagiKnrC6QCQO1st6nG0OHh.J6P6dKgowXsBA5yFAgVW', 'bQNJE4ZWEHW2R0osT8XrVC2poofhwtIdfO5hVlEDc2LbTYZ18f73hB0KIw1J', '2024-08-19 06:09:13', '2024-08-19 06:09:13'),
(5, 'Fikar Dwi', 'Rama', '01J5X275F4A9PKV4C0F8SF6CR4.jpg', 'fikardwi098@gmail.com', NULL, '$2y$12$nr7.kV7xrRqXAqJOIWIeKedcaCOxzhh0uwoWTjlgb//yMaOjcBcWG', NULL, '2024-08-22 05:50:38', '2024-08-22 05:50:38'),
(6, 'properti', 'wakwaw', '01J5X29A9FD4JMCKJXDMYKMGSM.jpg', 'wakwaw098@gmail.com', NULL, '$2y$12$/Hb883ISIbMARjzy9XP47eDNk3F4XhOk7X/VGkftZYhn1YBU8ywZi', NULL, '2024-08-22 05:51:49', '2024-08-22 05:51:49'),
(7, 'Demon', 'Kilua', '01J5X2BP6TXX8FGDBCPDKXVAMH.jpg', 'kilua098@gmail.com', NULL, '$2y$12$o276ayu.evpOJlXTwCsPi.ZTD4YVhfuoPl/VRUk5XEWjkNpfimusq', NULL, '2024-08-22 05:53:06', '2024-08-22 05:53:06');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indeks untuk tabel `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_uuid_unique` (`uuid`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`),
  ADD KEY `media_order_column_index` (`order_column`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_author_id` (`author_id`),
  ADD KEY `posts_category_id` (`category_id`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_author_id` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `posts_category_id` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
