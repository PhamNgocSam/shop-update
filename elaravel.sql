-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 22, 2022 lúc 04:10 PM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `elaravel`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2022_08_07_042642_create_tbl_admin_table', 1),
(5, '2019_08_19_000000_create_failed_jobs_table', 2),
(6, '2022_08_07_081401_create_tbl_category_product', 2),
(7, '2022_08_07_135310_create_tbl_brand_product', 3),
(8, '2022_08_07_151454_create_tbl_product', 4),
(9, '2022_08_08_130602_create_tbl_producer', 5),
(10, '2022_08_08_131524_create_tbl_user', 6),
(11, '2022_08_15_063940_tbl_shipping', 7),
(12, '2022_08_16_064840_tbl_payment', 8),
(13, '2022_08_16_065030_tbl_order', 8),
(14, '2022_08_16_065141_tbl_order_details', 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl-brand`
--

CREATE TABLE `tbl-brand` (
  `brand_id` int(10) UNSIGNED NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl-brand`
--

INSERT INTO `tbl-brand` (`brand_id`, `brand_name`, `brand_desc`, `brand_status`, `created_at`, `updated_at`) VALUES
(1, 'dell', 'dell-Laptop', 1, NULL, NULL),
(2, 'oppo', 'oppo', 1, NULL, NULL),
(3, 'apple', 'apple', 1, NULL, NULL),
(4, 'samsung', 'samsung', 1, NULL, NULL),
(7, 'Asus', 'Asus', 1, NULL, NULL),
(8, 'MSI', 'MSI', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(10) UNSIGNED NOT NULL,
  `admin_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_email`, `admin_password`, `admin_name`, `admin_phone`, `created_at`, `updated_at`) VALUES
(1, 'admin@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Phạm Sâm', '0123456789', '2022-07-22 04:40:36', '2022-08-07 04:40:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category_product`
--

CREATE TABLE `tbl_category_product` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_category_product`
--

INSERT INTO `tbl_category_product` (`category_id`, `category_name`, `category_desc`, `category_status`, `created_at`, `updated_at`) VALUES
(1, 'pc', 'sản phẩm mới, hiện đại.', 1, NULL, NULL),
(2, 'Điện thoại', 'các mẫu sản phẩm mới nhất', 1, NULL, NULL),
(3, 'Máy tính để bàn', 'Máy tính để bàn', 1, NULL, NULL),
(4, 'Laptop', 'Máy tính bảng', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` int(10) UNSIGNED NOT NULL,
  `order_total` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `order_total`, `order_status`, `user_id`, `shipping_id`, `payment_id`, `created_at`, `updated_at`) VALUES
(1, '14,850,000', 'Đang chờ xử lý!', 11, 5, 1, NULL, NULL),
(9, '13,125,000', 'Đang chờ xử lý!', 12, 13, 9, NULL, NULL),
(10, '26,250,000', 'Đang chờ xử lý!', 12, 14, 10, NULL, NULL),
(11, '12,862,500', 'Đang chờ xử lý!', 11, 15, 11, NULL, NULL),
(13, '19,845,000', 'Đang chờ xử lý!', 11, 16, 13, NULL, NULL),
(14, '7,245,000', 'Đang chờ xử lý!', 13, 17, 14, NULL, NULL),
(15, '252,000', 'Đang chờ xử lý!', 15, 18, 15, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order_details`
--

CREATE TABLE `tbl_order_details` (
  `order_details_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_sales_quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order_details`
--

INSERT INTO `tbl_order_details` (`order_details_id`, `order_id`, `product_id`, `product_name`, `product_price`, `product_sales_quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 5, 'RAM', '2450000', 3, NULL, NULL),
(13, 9, 1, 'RTX3090', '12500000', 1, NULL, NULL),
(14, 10, 1, 'RTX3090', '12500000', 2, NULL, NULL),
(15, 11, 5, 'RAM', '2450000', 5, NULL, NULL),
(16, 12, 5, 'RAM', '2450000', 5, NULL, NULL),
(17, 13, 6, 'Tản nhiệt CPU', '1500000', 1, NULL, NULL),
(18, 13, 1, 'RTX3090', '12500000', 1, NULL, NULL),
(19, 13, 5, 'RAM', '2450000', 2, NULL, NULL),
(20, 14, 7, 'Tản nhiệt khí ID-Cooling', '3450000', 2, NULL, NULL),
(21, 15, 8, 'Kính cường lực', '120000', 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `payment_id` int(10) UNSIGNED NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(50) CHARACTER SET utf8 NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_payment`
--

INSERT INTO `tbl_payment` (`payment_id`, `payment_method`, `payment_status`, `created_at`, `updated_at`) VALUES
(1, '1', 'Đang chờ xử lý!', NULL, NULL),
(8, '2', 'Đang chờ xử lý!', NULL, NULL),
(9, '2', 'Đang chờ xử lý!', NULL, NULL),
(10, '2', 'Đang chờ xử lý!', NULL, NULL),
(11, '2', 'Đang chờ xử lý!', NULL, NULL),
(12, '2', 'Đang chờ xử lý!', NULL, NULL),
(13, '2', 'Đang chờ xử lý!', NULL, NULL),
(14, '1', 'Đang chờ xử lý!', NULL, NULL),
(15, '2', 'Đang chờ xử lý!', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_producer`
--

CREATE TABLE `tbl_producer` (
  `producer_id` int(10) UNSIGNED NOT NULL,
  `producer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `producer_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `producer_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_producer`
--

INSERT INTO `tbl_producer` (`producer_id`, `producer_name`, `producer_address`, `producer_phone`, `created_at`, `updated_at`) VALUES
(1, 'Công Ty ABECO', 'Đống Đa - Hà Nội', '0923472366', NULL, NULL),
(2, 'Công ty TNHH FC Việt Nam', 'Cầu Giấy - Hà Nội', '0349726732', NULL, NULL),
(3, 'Autotronic NguyenPhi JSC', 'Duy Tiên - Hà Nam', '0987345533', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `product_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_status` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `product_name`, `product_image`, `product_desc`, `product_price`, `product_status`, `category_id`, `brand_id`, `created_at`, `updated_at`) VALUES
(1, 'RTX3090', 'a16.jpg', 'Sản phẩm mới nhất 2022', '12500000', 1, 4, 1, NULL, NULL),
(2, 'CPU-Core I7', 'a370.jpg', 'CPU Intel Core i7-12700KF (25M Cache, up to 5.00 GHz, 12C20T, Socket', '7200000', 1, 4, 1, NULL, NULL),
(3, 'CPU-Core I5', 'a434.jpg', 'CPU Intel Core i5-12500 (Up To 4.40GHz, 6 Nhân 12 Luồng,18MB', '6500000', 1, 3, 2, NULL, NULL),
(5, 'RAM', 'a50.jpg', 'Dòng sản phẩm: Ram laptop DDR4 4GB Bus 2666. Thông số ram-bus: DDR4 4GB Bus 2666', '2450000', 1, 3, 7, NULL, NULL),
(6, 'Tản nhiệt CPU', 'a1248.jpg', 'Tản nhiệt cpu JONSBO RGB CR1000CR- Được trang bị 4 ống đồng kích thước 12mm cho hiệu suất tản nhiệt cực cao- Lá nhôm được gia công tỷ mỉ xắp xếp đẹp mắt- Kết nối bằng jack 4 pin ( or fan system trên main or fan cpu trên main )- Trang bị quạt RGB với tốc độ quay 700->1800rpm- Công nghệ Quạt 12cm vòng bị cực kỳ yên tĩnh, cánh quạt trơn không bám bụi dễ dàng vệ sinh- Dễ dàng lắp đặt, có hướng dẫn sử dụng', '1500000', 1, 4, 3, NULL, NULL),
(7, 'Tản nhiệt khí ID-Cooling', 'a1984.jpg', 'Thiết bị tương thích: Intel socket 1700, 1200, 115x & AMD am4 socket , Bảo hành: 2 năm.', '3450000', 1, 3, 1, NULL, NULL),
(8, 'Kính cường lực', 'a2057.jpg', 'Miếng Dán Kính Cường Lực Cho Iphone', '120000', 1, 2, 3, NULL, NULL),
(9, 'Cáp sạc điện thoại', 'a2173.jpg', 'Dây sạc Usb Type C dài 3m dây dù', '50000', 1, 2, 2, NULL, NULL),
(12, 'VGA RTX3080', 'a299.jpg', 'Mã SP : VGGI0270\r\nVGA Gigabyte GeForce RTX™ 3080 EAGLE 12G (GV-N3080EAGLE-12GD)', '2200000', 1, 1, 1, NULL, NULL),
(13, 'Kính cường lực Samsung', 'a2440.jpg', 'Kính cường lực Samsung A32/A52/A72/A12/A02/M02/A51/M21/A21s/A71/M51/A02s/A11/Note 10...', '30000', 1, 2, 4, NULL, NULL),
(14, 'MSI GF63 Thin 11SC-664VN', 'a2557.jpg', 'Thông số MSI GF63 Thin 11SC-664VN\r\nCPU	Intel Core i5-11400H 2.7GHz up to 4.5GHz 12MB\r\nRAM	8GB DDR4 3200MHz (2x SO-DIMM socket, up to 64GB SDRAM)\r\nỔ cứng	512GB SSD M.2 PCIE, x1 slot 2.5\" SATA3\r\nCard đồ họa	NVIDIA® GeForce RTX™ 1650 4GB GDDR6, Up to 1172.5MHz Boost Clock, 40W Maximum Graphics Power with Dynamic Boost.\r\nMàn hình	15.6\" FHD (1920 x 1080) 144Hz, 45% NTSC, IPS-Level, close to 65%sRGB', '17190000', 1, 1, 8, NULL, NULL),
(15, 'Vi mạch điện tử', 'a886.jpg', 'Cùng với đó sản phẩm có thêm 2 tay kẹp mạch có thể xoay 360 độ giúp cho bạn rảnh tay khi mà bạn không cần cầm vật muốn soi trên tay mà vẫn có thể điều chỉnh để soi và hàn mạch dễ dàng và ống lò xo để mỏ hàn tiện lợi sẽ giúp bạn rất nhiều trong công việc\r\nKích thước sản phẩm: 200 * 95 * 170mm\r\nKích thước đóng gói: 210 * 100 * 190mm', '2300000', 1, 1, 8, NULL, NULL),
(16, 'B56OM-V5', 'a1495.jpg', 'Main boar ASUS G41- DDR3 socket 775 tháo trong máy PC củ có fe chặn\r\nMain boar chạy được WIN XP, WIN 7, WIN 8\r\nMain boar ASUS G41 chạy các dòng CPU : E2200, E3300, E4500, E5300, E7400, E7500, E8400, Q6600, Q8400, Q9400...\r\nMain boar ASUS G41 xài DDR3 800/1066/1333 – max 8GB', '1050000', 1, 1, 7, NULL, NULL),
(17, 'Samsung s22 ultra 5G', 'a2688.jpg', 'Diện mạo ai cũng ngưỡng mộ\r\nGặp gỡ Samsung Galaxy S22 Ultra - kế thừa tinh hoa Galaxy Note cùng đột phá Galaxy S. Hiện diện với tổng thể độc bản thanh mảnh, cụm camera không viền độc đáo, tất cả làm nên một siêu phẩm di động mang đậm dấu ấn riêng.', '28000000', 1, 2, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_shipping`
--

CREATE TABLE `tbl_shipping` (
  `shipping_id` int(10) UNSIGNED NOT NULL,
  `shipping_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_notes` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_shipping`
--

INSERT INTO `tbl_shipping` (`shipping_id`, `shipping_name`, `shipping_address`, `shipping_phone`, `shipping_email`, `shipping_notes`, `created_at`, `updated_at`) VALUES
(1, 'Sam', 'Hung Yen', '0923473654', 'sam@gmail.com', 'giao hang trong ngay', NULL, NULL),
(11, 'Phuc', 'Ninh Binh', '0238478268', 'phuc@gmail.com', 'nhanh', NULL, NULL),
(13, 'Tung', 'Ninh Binh', '0923473654', 'tung@gmail.com', 'khdia', NULL, NULL),
(14, 'Sam', 'Hung Yen', '0923473654', 'sam@gmail.com', 'khong', NULL, NULL),
(15, 'Phuc', 'Ninh Binh', '0923473654', 'phuc@gmail.com', 'giao hanh nhanh!', NULL, NULL),
(16, 'Sam', 'Hung Yen', '0923473654', 'sam@gmail.com', 'khong', NULL, NULL),
(17, 'Tung', 'Ninh Binh', '0238478268', 'tung@gmail.com', 'khong', NULL, NULL),
(18, 'Long', 'Hà Nội', '0238478268', 'long@gmail.com', 'giao tận tay', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_name`, `user_address`, `user_phone`, `user_email`, `user_password`, `created_at`, `updated_at`) VALUES
(11, 'Sâm', 'Hưng Yên', '0327868622', 'sam@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL),
(12, 'Phức', 'Ân Thi', '0988775782', 'phuc@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL),
(13, 'Tùng', 'Ninh Bình', '0465762344', 'tung@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL),
(15, 'Long', 'Hà  Nội', '0123456789', 'long@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL),
(16, 'Tuyên', 'Nghệ An', '0937468633', 'tuyen@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl-brand`
--
ALTER TABLE `tbl-brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Chỉ mục cho bảng `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Chỉ mục cho bảng `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  ADD PRIMARY KEY (`order_details_id`);

--
-- Chỉ mục cho bảng `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Chỉ mục cho bảng `tbl_producer`
--
ALTER TABLE `tbl_producer`
  ADD PRIMARY KEY (`producer_id`);

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  ADD PRIMARY KEY (`shipping_id`);

--
-- Chỉ mục cho bảng `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `tbl-brand`
--
ALTER TABLE `tbl-brand`
  MODIFY `brand_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  MODIFY `order_details_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `payment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `tbl_producer`
--
ALTER TABLE `tbl_producer`
  MODIFY `producer_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  MODIFY `shipping_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
