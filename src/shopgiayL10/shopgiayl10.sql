-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 07, 2024 lúc 11:06 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shopgiayl10`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `pty` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` enum('pending','approved','rejected') NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `carts`
--

INSERT INTO `carts` (`id`, `customer_id`, `product_id`, `pty`, `price`, `created_at`, `updated_at`, `status`) VALUES
(1, 1, 13, 1, 211111, NULL, NULL, 'pending'),
(2, 2, 24, 2, 1240000, NULL, NULL, 'pending'),
(3, 3, 22, 1, 1575000, NULL, NULL, 'pending'),
(4, 3, 23, 1, 1890000, NULL, NULL, 'pending'),
(5, 4, 23, 1, 1890000, NULL, NULL, 'pending'),
(6, 4, 24, 3, 1240000, NULL, NULL, 'pending'),
(7, 5, 23, 1, 1890000, NULL, NULL, 'pending'),
(8, 6, 19, 1, 2650000, NULL, NULL, 'pending'),
(9, 7, 23, 11, 1890000, NULL, NULL, 'pending'),
(10, 7, 24, 20, 1240000, NULL, NULL, 'pending'),
(11, 8, 18, 6, 1480000, NULL, NULL, 'pending'),
(12, 8, 21, 5, 1800000, NULL, NULL, 'pending'),
(13, 8, 23, 1, 1890000, NULL, NULL, 'pending'),
(14, 8, 24, 5, 1240000, NULL, NULL, 'pending'),
(15, 9, 17, 5, 900000, NULL, NULL, 'pending'),
(16, 9, 20, 3, 900000, NULL, NULL, 'pending'),
(17, 9, 21, 5, 1800000, NULL, NULL, 'pending'),
(18, 9, 24, 5, 1240000, NULL, NULL, 'pending'),
(19, 10, 21, 10, 1800000, NULL, NULL, 'pending'),
(20, 10, 22, 10, 1575000, NULL, NULL, 'pending'),
(21, 10, 23, 5, 1890000, NULL, NULL, 'pending'),
(22, 10, 24, 10, 1240000, NULL, NULL, 'pending'),
(23, 11, 24, 5, 1240000, NULL, NULL, 'pending'),
(24, 12, 23, 2, 1890000, NULL, NULL, 'pending'),
(25, 12, 24, 1, 1240000, NULL, NULL, 'pending');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`id`, `name`, `phone`, `address`, `email`, `content`, `created_at`, `updated_at`) VALUES
(1, 'khanh', '1234567890', 'tra vinh', 'khanh@gmail.com', '12331', '2023-12-21 02:53:11', '2023-12-21 02:53:11'),
(2, 'Dat', '1234567890', 'tra vinh', 'dat@gmail.com', '123', '2023-12-24 11:20:43', '2023-12-24 11:20:43'),
(3, 'dien', '1234567890', 'tra vinh', 'dien@gmail.com', 'qưeq', '2023-12-24 11:23:55', '2023-12-24 11:23:55'),
(4, 'Dat', '1234567890', 'tra vinh', 'dat@gmail.com', 'adsad', '2023-12-24 13:24:24', '2023-12-24 13:24:24'),
(5, 'Dat', '1234567890', 'tra vinh', 'admin@gmail.com', '123123', '2023-12-25 23:44:40', '2023-12-25 23:44:40'),
(6, 'Phúc Đạt', '123123123', 'tra vinh', 'dat@gmail.com', 'giao nhanh nhe', '2024-01-02 02:16:15', '2024-01-02 02:16:15'),
(7, 'Phúc Đạt', '123123', 'tra vinh', 'admin@gmail.com', '123123', '2024-01-04 21:10:10', '2024-01-04 21:10:10'),
(8, 'Phúc Đạt', '123123', 'tra vinh', 'admin@gmail.com', '123123', '2024-01-04 21:15:30', '2024-01-04 21:15:30'),
(9, 'Phúc Đạt', '123123', 'tra vinh', 'admin@gmail.com', '123123', '2024-01-04 21:17:42', '2024-01-04 21:17:42'),
(10, 'Phúc Đạt', '123123', 'tra vinh', 'ad@gmail.com', 'ádasd', '2024-01-04 21:29:22', '2024-01-04 21:29:22'),
(11, 'Phúc Đạt', '123123', 'tra vinh', 'user@gmail.com', '123123', '2024-01-04 21:37:24', '2024-01-04 21:37:24'),
(12, 'Đức', '123123', 'tra vinh', 'user@gmail.com', '1312313', '2024-01-06 20:14:55', '2024-01-06 20:14:55');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
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
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `content` longtext NOT NULL,
  `active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menus`
--

INSERT INTO `menus` (`id`, `name`, `parent_id`, `description`, `content`, `active`, `created_at`, `updated_at`) VALUES
(28, 'Sản Phẩm', 0, '', '', 1, '2023-12-24 02:35:17', '2023-12-24 02:35:17'),
(29, 'Adidas', 28, '', '', 1, '2023-12-24 02:36:34', '2023-12-24 02:36:34'),
(30, 'Vans', 28, '', '', 1, '2023-12-24 02:36:57', '2023-12-24 02:36:57'),
(31, 'New Balance', 28, '', '', 1, '2023-12-24 02:37:06', '2023-12-24 02:37:06'),
(32, 'Converse', 28, '', '', 1, '2023-12-24 02:37:13', '2023-12-24 02:37:13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_12_11_014757_create_menus_table', 2),
(6, '2023_12_12_051338_create_products_table', 3),
(7, '2023_12_12_051801_update_table_product', 4),
(8, '2023_12_14_083054_create_sliders_table', 5),
(9, '2023_12_14_090508_create_sliders_table', 6),
(10, '2023_12_15_153520_create_sliders_table', 7),
(16, '2023_12_21_092322_create_customers_table', 8),
(17, '2023_12_21_092347_create_carts_table', 8),
(18, '2023_12_23_084808_add_slides_column_to_products', 9),
(19, '2023_12_24_095237_add_slides_to_products_table', 10),
(20, '2024_01_05_044359_add_status_to_carts_table', 11);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `content` longtext NOT NULL,
  `menu_id` int(11) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `price_sale` int(11) DEFAULT NULL,
  `active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `thumb` varchar(255) NOT NULL,
  `slides` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `content`, `menu_id`, `price`, `price_sale`, `active`, `created_at`, `updated_at`, `thumb`, `slides`) VALUES
(17, 'Giày Adidas Nam Chính Hãng - Galaxy 5 - Navy', 'Làm từ một loạt chất liệu tái chế, thân giày có chứa tối thiểu 50% thành phần tái chế. Sản phẩm này đại diện cho một trong số rất nhiều các giải pháp của chúng tôi hướng tới chấm dứt rác thải nhựa.', 'Thân giày bằng vải lưới siêu nhẹ giúp không khí lưu thông, cùng đế giữa Cloudfoam cho cảm giác đàn hồi, êm ái. Lót giày mềm mại giúp đôi chân luôn được nâng đỡ, bất kể bạn đi bộ đường dài hay tập luyện bao lâu.', 29, 1800000, 900000, 1, '2023-12-24 10:42:27', '2023-12-24 10:43:15', '/storage/uploads/2023/12/24/1.webp', NULL),
(18, 'Giày Adidas Nữ Chính hãng - Alphabounce 1.0 - Đen/Hồng', 'ĐÔI GIÀY CHẠY BỘ ĐA NĂNG GIÚP BẠN BỨT TỐC THEO MỌI HƯỚNG.', 'Lợi thế cạnh tranh mà bạn đang tìm kiếm? Đương nhiên là đến từ thói quen tập luyện của bạn rồi. Đôi giày chạy bộ adidas này giúp bạn luôn thoải mái khi tập gym cũng như chạy bộ cự ly ngắn đến trung bình. Với thiết kế nâng đỡ mà linh hoạt, đôi giày này mang lại cảm giác ổn định trong các bài tập cần chuyển động sang hai bên như trượt băng. Lớp đệm Bounce đàn hồi dưới lòng bàn chân.', 29, 3200000, 1480000, 1, '2023-12-24 10:44:27', '2023-12-24 10:45:20', '/storage/uploads/2023/12/24/2.webp', NULL),
(19, 'Giày Adidas Nam Chính Hãng - ULTRABOOST 1.0 “White Legacy Indigo“ - Xám', 'GIÀY CHẠY BỘ DÀNH CHO NGƯỜI HÂM MỘ HOOSIERS, ĐƯỢC LÀM MỘT PHẦN BẰNG NHỰA PARLEY OCEAN.', 'Mang theo tinh thần Hoosiers của bạn trong mỗi chuyến đi mỗi khi bạn xỏ chân vào đôi giày chạy bộ Ultraboost này. Đệm BOOST thoải mái giúp bạn tràn đầy năng lượng từ đầu đến cuối, và adidas PRIMEKNIT uốn cong và hỗ trợ bàn chân trong mỗi bước đi. Gắn các dải vải vào dây buộc của bạn và thể hiện niềm tự hào về đội của bạn.', 29, 5100000, 2650000, 1, '2023-12-24 10:47:16', '2023-12-24 10:47:16', '/storage/uploads/2023/12/24/3.webp', NULL),
(20, 'Giày Adidas Nam Chính hãng - FLUIDFLOW 3.0 - Đen', 'Thân giày bằng vải dệt kim mềm mại được lót để tạo sự thoải mái và lớp đệm Bounce nhẹ giúp bạn di chuyển. Thể thao nhưng tinh tế, những đôi giày thể thao này vượt qua mọi quy định về trang phục.', 'Hình dáng chuẩn, Đóng ren, Lưới dệt phía trên, Đế giữa nảy, Lớp lót dệt, Đế giày cao su', 29, 1280000, 900000, 1, '2023-12-24 10:57:28', '2023-12-24 10:58:23', '/storage/uploads/2023/12/24/4.webp', NULL),
(21, 'Vans UA Classic Slip-On VR3 Growth Garden VR3', 'Mặt đế ngoài của Vans VR3 Growth Garden được làm từ chất liệu cao su đặc trưng chứa ít nhất 25% cao su tự nhiên, dày dặn và cao cấp mang tone màu trắng ngà vintage', 'Điểm đặc biệt ở bộ sưu tập lần này là không có sự xuất hiện của viền foxing, tạo nên một vẻ ngoài cứng cáp và bền bỉ hơn. Thêm vào đó, mặt đế Waffle đặc trưng của Vans đảm bảo độ bám tốt, ngăn ngừng trơn trượt một cách hiệu quả, đặc biệt khi bạn di chuyển trong môi trường ẩm ướt.', 30, 2000000, 1800000, 1, '2023-12-24 11:03:24', '2023-12-24 11:03:24', '/storage/uploads/2023/12/24/6.jpg', NULL),
(22, 'Vans UA Style 36 Fuzzy Lace - VN0A54F6UNY', 'Các chi tiết trên thiết kế đều được cải tiến với độ bền tốt hơn, hỗ trợ khách hàng chuyển động một cách mượt mà nhất.', 'Vans đã cải tiến thêm một lớp đệm mút êm ái bao quay cổ giày. Điểm này đã hạn chế được tối đa việc ma sát giữa giày với chân của người dùng nhất có thể, tránh chấn thương.', 30, 1750000, 1575000, 1, '2023-12-24 11:06:55', '2023-12-24 11:06:55', '/storage/uploads/2023/12/24/8.jpg', NULL),
(23, 'Vans UA Authentic 44 DX Our Legends Mongoose - VN0A4BVYBLK', 'Chất liệu 100% Textile đem lại cảm giác dễ chịu trong suốt thời gian sử dụng', 'Phần đế ngoài được phủ thêm một lớp bóng, hạn chế được việc bám bẩn cũng như giúp việc vệ sinh giày trở nên đơn giản hơn. Bên hông đế giày có dải màu cùng tên thương hiệu Mongoose bắt mắt', 30, 2100000, 1890000, 1, '2023-12-24 11:08:03', '2023-12-24 11:08:03', '/storage/uploads/2023/12/24/9.jpg', NULL),
(24, 'Vans UA Authentic Vans Collage - VN0A5KRDBZW', 'Vans Collage hoàn thiện bởi kỹ thuật Collage mang đậm giá trị nghệ thuật và di sản thương hiệu', 'Phần dây giày mang họa tiết Checkerboard kinh điển. Phối màu đen trắng mang đến sự cuốn hút trên kiểu dáng đơn giản. Kiểu dáng Authentic đơn giản, thời thượng', 30, 1550000, 1240000, 1, '2023-12-24 11:09:15', '2023-12-24 11:09:38', '/storage/uploads/2023/12/24/11.jpg', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) NOT NULL,
  `sort_by` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sliders`
--

INSERT INTO `sliders` (`id`, `name`, `url`, `thumb`, `sort_by`, `active`, `created_at`, `updated_at`) VALUES
(4, 'Giày Đẹp Chất Lượng', '123456', '/storage/uploads/2023/12/17/2.jpg', 2, 1, '2023-12-17 01:23:12', '2023-12-17 01:23:12'),
(5, 'Giày Nam', NULL, '/storage/uploads/2023/12/27/giay1.jpg', 2, 1, '2023-12-26 22:15:10', '2023-12-26 22:15:10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$12$F6T/U.Pbtk266Y6mDTaN2.rrB2J7B63VdDiwIdB0ghqDNBxmkEve6', NULL, '2023-12-11 01:15:37', '2023-12-11 01:15:37');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_customer_id_foreign` (`customer_id`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
