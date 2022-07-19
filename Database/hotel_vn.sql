-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 19, 2022 lúc 03:06 AM
-- Phiên bản máy phục vụ: 10.4.18-MariaDB
-- Phiên bản PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `hotel_vn`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_admin`
--

CREATE TABLE `tb_admin` (
  `ID_Admin` int(11) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(12) NOT NULL,
  `Admin status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tb_admin`
--

INSERT INTO `tb_admin` (`ID_Admin`, `Username`, `Password`, `Admin status`) VALUES
(1, 'Hungadmin', '123456', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_chitietdatphong`
--

CREATE TABLE `tb_chitietdatphong` (
  `id_chitiet` int(11) NOT NULL,
  `code` int(11) NOT NULL,
  `id_hotel` int(11) NOT NULL,
  `StartDay` date NOT NULL,
  `EndDay` date NOT NULL,
  `Soluong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tb_chitietdatphong`
--

INSERT INTO `tb_chitietdatphong` (`id_chitiet`, `code`, `id_hotel`, `StartDay`, `EndDay`, `Soluong`) VALUES
(1, 6896, 27, '0000-00-00', '0000-00-00', 12),
(2, 6871, 27, '2022-06-28', '2022-06-30', 12),
(3, 4876, 27, '0000-00-00', '0000-00-00', 4),
(4, 632, 27, '0000-00-00', '0000-00-00', 4),
(5, 5548, 27, '0000-00-00', '0000-00-00', 4),
(6, 7047, 27, '0000-00-00', '0000-00-00', 4),
(7, 9149, 27, '0000-00-00', '0000-00-00', 23),
(8, 7057, 26, '0000-00-00', '0000-00-00', 2),
(9, 4884, 27, '2022-06-13', '2022-07-07', 4),
(10, 5700, 27, '2022-06-01', '2022-06-21', 4),
(11, 3501, 27, '2022-06-27', '2022-06-13', 1),
(12, 7388, 23, '2022-06-14', '2022-06-30', 4),
(13, 5232, 24, '2022-07-11', '2022-07-18', 1),
(14, 7288, 24, '2022-07-11', '2022-07-18', 1),
(15, 7352, 24, '2022-07-11', '2022-07-18', 1),
(16, 1470, 24, '2022-07-11', '2022-07-18', 1),
(17, 2965, 24, '2022-07-11', '2022-07-18', 1),
(18, 9706, 24, '2022-07-11', '2022-07-18', 1),
(19, 492, 24, '2022-07-11', '2022-07-18', 1),
(20, 5477, 24, '2022-07-11', '2022-07-18', 1),
(21, 1377, 24, '2022-07-11', '2022-07-18', 1),
(22, 6953, 24, '2022-07-11', '2022-07-18', 1),
(23, 7161, 28, '2022-07-03', '2022-07-18', 12),
(24, 5571, 28, '2022-07-03', '2022-07-18', 12),
(25, 2600, 24, '2022-07-05', '2022-07-27', 4),
(26, 7020, 27, '2022-07-18', '2022-07-27', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_chitiethotel`
--

CREATE TABLE `tb_chitiethotel` (
  `ID_HotelCT` int(11) NOT NULL,
  `TyperoomHotel` varchar(50) NOT NULL,
  `NumberPeople` int(11) NOT NULL,
  `NumberChild` int(11) NOT NULL,
  `DateCheckIn` date NOT NULL,
  `DateCheckOut` date NOT NULL,
  `ID_Hotel` int(11) NOT NULL,
  `Price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tb_chitiethotel`
--

INSERT INTO `tb_chitiethotel` (`ID_HotelCT`, `TyperoomHotel`, `NumberPeople`, `NumberChild`, `DateCheckIn`, `DateCheckOut`, `ID_Hotel`, `Price`) VALUES
(1, 'Deluxe', 2, 1, '2022-07-12', '2022-07-14', 23, 3200000),
(2, 'Suite', 2, 0, '2022-07-12', '2022-07-29', 23, 5000000),
(3, 'Superior', 3, 0, '2022-07-12', '2022-07-29', 23, 2700000),
(4, 'Standard', 2, 2, '2022-07-12', '2022-08-29', 24, 2200000),
(5, 'Superior', 2, 0, '2022-07-12', '2022-08-29', 24, 2150000),
(6, 'Suite', 1, 0, '2022-07-12', '2022-08-29', 25, 7000000),
(7, 'Superior', 2, 1, '2022-07-12', '2022-08-29', 26, 3170000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_danhmuchotel`
--

CREATE TABLE `tb_danhmuchotel` (
  `ID_Tinh` int(10) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `MaT` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tb_danhmuchotel`
--

INSERT INTO `tb_danhmuchotel` (`ID_Tinh`, `Name`, `MaT`) VALUES
(5, 'Tp Há»“ ChÃ­ Minh', 2),
(6, 'BÃ¬nh DÆ°Æ¡ng', 4),
(7, 'HÃ  Ná»™i ', 1),
(8, 'KhÃ¡nh HÃ²a', 38),
(9, 'ÄÃ  Náºµng', 33);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_datphong`
--

CREATE TABLE `tb_datphong` (
  `id_Don` int(11) NOT NULL,
  `id_khachhang` int(11) NOT NULL,
  `Code` int(11) NOT NULL,
  `Status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tb_datphong`
--

INSERT INTO `tb_datphong` (`id_Don`, `id_khachhang`, `Code`, `Status`) VALUES
(1, 0, 1659, 1),
(2, 6, 4738, 1),
(3, 0, 9291, 1),
(4, 1, 1821, 1),
(5, 1, 1673, 1),
(6, 1, 7688, 1),
(7, 1, 2384, 1),
(8, 1, 8664, 1),
(9, 1, 6896, 1),
(10, 1, 6871, 0),
(11, 1, 4876, 1),
(12, 1, 632, 1),
(13, 1, 5548, 1),
(14, 1, 7047, 1),
(15, 1, 9149, 1),
(16, 5, 7057, 1),
(17, 5, 4884, 1),
(18, 1, 5700, 1),
(19, 1, 3501, 1),
(20, 5, 7388, 1),
(21, 1, 5232, 1),
(22, 1, 7288, 1),
(23, 1, 7352, 1),
(24, 1, 1470, 1),
(25, 1, 2965, 1),
(26, 1, 9706, 1),
(27, 1, 492, 1),
(28, 1, 5477, 1),
(29, 1, 1377, 1),
(30, 1, 6953, 1),
(31, 1, 7161, 1),
(32, 1, 5571, 1),
(33, 1, 2600, 1),
(34, 1, 7020, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_hotel`
--

CREATE TABLE `tb_hotel` (
  `ID_Hotel` int(11) NOT NULL,
  `TenHotel` varchar(50) NOT NULL,
  `Giaphong` int(12) NOT NULL,
  `Soluong` int(5) NOT NULL,
  `Noidung` text NOT NULL,
  `Hinhanh` varchar(50) NOT NULL,
  `Tomtat` tinytext NOT NULL,
  `MaHotel` varchar(100) NOT NULL,
  `Tinhtrang` int(11) NOT NULL,
  `ID_Tinh` int(11) NOT NULL,
  `HTML_map` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tb_hotel`
--

INSERT INTO `tb_hotel` (`ID_Hotel`, `TenHotel`, `Giaphong`, `Soluong`, `Noidung`, `Hinhanh`, `Tomtat`, `MaHotel`, `Tinhtrang`, `ID_Tinh`, `HTML_map`) VALUES
(20, 'Fortuna HaÌ€ NÃ´Ì£i', 590000, 23, '<p><strong>Fortuna Hanoi</strong> l&agrave; má»™t trong nhá»¯ng kh&aacute;ch sáº¡n 4 sao ti&ecirc;u chuáº©n quá»‘c táº¿ táº¡i H&agrave; Ná»™i. Tá»a láº¡c táº¡i trung t&acirc;m t&agrave;i ch&iacute;nh sáº§m uáº¥t cá»§a Thá»§ Ä&ocirc;, Fortuna H&agrave; Ná»™i lu&ocirc;n l&agrave; sá»± lá»±a chá»n l&iacute; tÆ°á»Ÿng cá»§a kh&aacute;ch du lá»‹ch trong v&agrave; ngo&agrave;i nÆ°á»›c. Vá»›i 350 ph&ograve;ng ngá»§ Ä‘Æ°á»£c thiáº¿t káº¿ sang trá»ng v&agrave; hiá»‡n Ä‘áº¡i, c&aacute;c dá»‹ch vá»¥ spa, bá»ƒ bÆ¡i ngo&agrave;i trá»i, trung t&acirc;m thá»ƒ thao v&agrave; khu giáº£i tr&iacute;, Kh&aacute;ch h&agrave;ng sáº½ c&oacute; nhá»¯ng tráº£i nghiá»‡m Ä‘á»™c Ä‘&aacute;o v&agrave; kh&oacute; qu&ecirc;n. B&ecirc;n cáº¡nh Ä‘&oacute;, vá»›i qu&yacute; kh&aacute;ch y&ecirc;u áº©m thá»±c, há»‡ thá»‘ng nh&agrave; h&agrave;ng v&agrave; quáº§y bar cá»§a kh&aacute;ch sáº¡n ch&iacute;nh l&agrave; nÆ¡i tuyá»‡t vá»i Ä‘á»ƒ thÆ°á»Ÿng thá»©c c&aacute;c hÆ°Æ¡ng vá»‹ áº©m thá»±c Ä‘áº·c sáº¯c.</p>\r\n\r\n<p><strong>Kh&aacute;ch sáº¡n Fortuna</strong> cÅ©ng l&agrave; nÆ¡i diá»…n ra c&aacute;c sá»± kiá»‡n, há»™i nghá»‹, há»™i tháº£o quá»‘c táº¿ táº¡i H&agrave; Ná»™i. Kh&aacute;ch sáº¡n sá»Ÿ há»¯u 2 há»™i trÆ°á»ng lá»›n vá»›i sá»©c chá»©a l&ecirc;n Ä‘áº¿n 700 ngÆ°á»i, 6 ph&ograve;ng há»p Ä‘a chá»©c nÄƒng vá»›i nhá»¯ng trang thiáº¿t bá»‹ hiá»‡n Ä‘áº¡i ph&ugrave; há»£p vá»›i má»i h&igrave;nh thá»©c há»™i há»p. Äá»™i ngÅ© nh&acirc;n vi&ecirc;n chuy&ecirc;n nghiá»‡p, táº­n tá»¥y lu&ocirc;n sáºµn s&agrave;ng Ä‘&aacute;p á»©ng má»i nhu cáº§u cá»§a qu&yacute; kh&aacute;ch.</p>\r\n\r\n<p><strong>Äá»‹a Chá»‰ : 6B L&aacute;ng Háº¡, Quáº­n Ba Ä&igrave;nh, H&agrave; Ná»™i, Viá»‡t Nam.</strong></p>\r\n\r\n<p><strong>Tel: (84.24) 3 831 3333 &amp;#8211; Fax: (84.24) 3 831 3300</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n', '1656747941_fortuna-hotel-hanoi.jpg', '<p>Vá»›i t&ocirc;ng m&agrave;u gá»— chá»§ Ä‘áº¡o, nÆ¡i Ä‘&acirc;y c&oacute; lá»‘i kiáº¿n tr&uacute;c Ä‘Æ¡n giáº£n nhÆ°ng sang trá»ng, mang Ä‘áº­m phong c&aacute;ch tá»± do theo kiá»ƒu T&acirc;y bal&am', '003', 0, 7, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.2812880450806!2d105.81567491437816!3d21.021428093405746!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab707425a6bf%3A0x30e3fbe8807d2633!2sFortuna%20Hotel%20Hanoi!5e0!3m2!1svi!2s!4v1656476191395!5m2!1svi!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>'),
(23, 'Premier Havana Nha Trang', 2100000, 52, '<h2><strong>1. Tá»•ng quan kh&aacute;ch sáº¡n Premier Havana Nha Trang 5 sao</strong></h2>\r\n\r\n<p>Kh&aacute;ch sáº¡n Premier Havana Nha Trang (Havana Nha Trang Hotel) tá»a láº¡c tr&ecirc;n Ä‘Æ°á»ng Tráº§n Ph&uacute; ngay trung t&acirc;m th&agrave;nh phá»‘ Nha Trang. Vá»‹ tr&iacute; cá»§a Havana Nha Trang ráº¥t thuáº­n tiá»‡n gi&uacute;p m&igrave;nh dá»… d&agrave;ng tiáº¿p cáº­n c&aacute;c Ä‘iá»ƒm du lá»‹ch cá»§a th&agrave;nh phá»‘, Ä‘áº§u ti&ecirc;n pháº£i ká»ƒ Ä‘áº¿n b&atilde;i biá»ƒn Nha Trang chá»‰ c&aacute;ch kh&aacute;ch sáº¡n 900m, báº¡n c&oacute; thá»ƒ báº¯t taxi hoáº·c Ä‘i bá»™ dáº¡o chÆ¡i ra biá»ƒn cÅ©ng ráº¥t gáº§n. Tiáº¿p Ä‘áº¿n l&agrave; nhá»¯ng Ä‘iá»ƒm du lá»‹ch nhÆ°: Báº£o t&agrave;ng Alexandre Yersin, Trung t&acirc;m thÆ°Æ¡ng máº¡i Nha Trang Center, Trung t&acirc;m du lá»‹ch Suá»‘i kho&aacute;ng n&oacute;ng Th&aacute;p B&agrave;, Dinh Báº£o Äáº¡i, Viá»‡n Háº£i dÆ°Æ¡ng há»c v&agrave; tháº­m ch&iacute; l&agrave; Vinpearl Land Nha Trang&hellip; cÅ©ng chá»‰ c&aacute;ch kh&aacute;ch sáº¡n trong pháº¡m vi 6km, vá»«a gi&uacute;p m&igrave;nh tiáº¿t kiá»‡m Ä‘Æ°á»£c tiá»n taxi, láº¡i c&oacute; thá»ƒ chÆ¡i l&acirc;u hÆ¡n kh&ocirc;ng lo háº¿t xe hay trá»i tá»‘i nguy hiá»ƒm. Kh&aacute;ch sáº¡n<strong>&nbsp;</strong>c&aacute;ch s&acirc;n bay Cam Ranh khoáº£ng 35,6 km, c&aacute;ch ga&nbsp;Nha Trang&nbsp;khoáº£ng 2 km v&agrave; c&aacute;ch th&agrave;nh phá»‘ Há»“ Ch&iacute; Minh táº§m 435 km.</p>\r\n\r\n<p>Kh&aacute;ch sáº¡n khai trÆ°Æ¡ng tá»« nÄƒm 2013, do C&ocirc;ng ty Cá»• pháº§n Háº£i V&acirc;n Nam (TP. Há»“ Ch&iacute; Minh) l&agrave;m chá»§ Ä‘áº§u tÆ°, Ä‘Æ°á»£c quáº£n l&yacute; bá»Ÿi Táº­p Ä‘o&agrave;n Best Western (Má»¹).<img alt=\"review-khach-san-premier-havana-nha-trang-1\" src=\"http://datphongresort.com/wp-content/uploads/2022/05/Havana.png\" style=\"height:500px; width:800px\" /></p>\r\n\r\n<h2><strong>2. C&aacute;c háº¡ng ph&ograve;ng &amp; báº£ng gi&aacute; kh&aacute;ch sáº¡n Premier Havana Nha Trang&nbsp;</strong></h2>\r\n\r\n<p>Kh&aacute;ch sáº¡n c&oacute; 1 t&ograve;a nh&agrave; gá»“m 41 táº§ng 1260 ph&ograve;ng ngá»§. Há»‡ thá»‘ng trang thiáº¿t bá»‹, tiá»‡n &iacute;ch hiá»‡n Ä‘áº¡i theo ti&ecirc;u chuáº©n 5 sao quá»‘c táº¿. L&agrave; sá»± káº¿t há»£p kh&eacute;o l&eacute;o giá»¯a kiáº¿n tr&uacute;c ná»™i tháº¥t theo phong c&aacute;ch ch&acirc;u &Acirc;u tr&ecirc;n ná»n nhá»¯ng váº­t liá»‡u tá»± nhi&ecirc;n mang t&iacute;nh tháº©m má»¹ cao, l&agrave;m to&aacute;t l&ecirc;n váº» sang trá»ng, Ä‘á»ƒ láº¡i cho báº¡n má»™t áº¥n tÆ°á»£ng kh&oacute; phai.</p>\r\n\r\n<table border=\"Ä‘en\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Háº¡ng ph&ograve;ng</td>\r\n			<td>Äáº·c Ä‘iá»ƒm</td>\r\n			<td>Sá»©c chá»©a</td>\r\n			<td>Gi&aacute; ph&ograve;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Deluxe hÆ°á»›ng biá»ƒn</td>\r\n			<td>40m2<br />\r\n			2 giÆ°á»ng Ä‘Æ¡n hoáº·c 1 giÆ°á»ng Ä‘&ocirc;i<br />\r\n			HÆ°á»›ng biá»ƒn</td>\r\n			<td>2 kh&aacute;ch</td>\r\n			<td>Gi&aacute; chá»‰ tá»« 1.599.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Suite Junior King/Queen</p>\r\n			</td>\r\n			<td>65m2<br />\r\n			01 giÆ°á»ng Ä‘&ocirc;i<br />\r\n			HÆ°á»›ng biá»ƒn</td>\r\n			<td>2 kh&aacute;ch</td>\r\n			<td>Gi&aacute; chá»‰ tá»« 1.899.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Suite Cllub</td>\r\n			<td>80m2<br />\r\n			01 giÆ°á»ng Ä‘&ocirc;i cá»±c lá»›n v&agrave; 01 giÆ°á»ng sofa<br />\r\n			HÆ°á»›ng biá»ƒn/ th&agrave;nh phá»‘</td>\r\n			<td>2 kh&aacute;ch</td>\r\n			<td>Gi&aacute; chá»‰ tá»« 2.290.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Family Suite</td>\r\n			<td>65m2<br />\r\n			2 giÆ°á»ng Ä‘Æ¡n v&agrave;&nbsp;1 giÆ°á»ng Ä‘&ocirc;i lá»›n<br />\r\n			HÆ°á»›ng biá»ƒn</td>\r\n			<td>4 kh&aacute;ch</td>\r\n			<td>Gi&aacute; chá»‰ tá»« 2.700.000</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><em><strong>LÆ°u &yacute;:&nbsp;gi&aacute; ph&ograve;ng kh&aacute;ch sáº¡n Premier Havana Nha Trang c&oacute; thá»ƒ thay Ä‘á»•i tuá»³ thá»i Ä‘iá»ƒm, qu&yacute; kh&aacute;ch c&oacute; nhu cáº§u Ä‘áº·t vui l&ograve;ng li&ecirc;n há»‡ Hotline.&nbsp;</strong></em></p>\r\n\r\n<h2><img alt=\"review-khach-san-premier-havana-nha-trang-2\" src=\"http://datphongresort.com/wp-content/uploads/2022/05/khach-san-havana-nha-trang-7.png\" style=\"height:500px; width:800px\" /></h2>\r\n\r\n<p><img alt=\"review-khach-san-premier-havana-nha-trang-3\" src=\"http://datphongresort.com/wp-content/uploads/2022/05/khach-san-havana-nha-trang-17.png\" style=\"height:500px; width:800px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://datphongresort.com/wp-content/uploads/2022/05/36472866-800x534.jpg\" style=\"height:534px; width:800px\" /></p>\r\n\r\n<h2><strong>3. Há»‡ thá»‘ng nh&agrave; h&agrave;ng/bar táº¡i kh&aacute;ch sáº¡n Premier Havana Nha Trang c&oacute; g&igrave;?</strong></h2>\r\n\r\n<p>Havana Nha Trang sá»Ÿ há»¯u 3 nh&agrave; h&agrave;ng v&agrave; 2 bar/Lounge. Ä&aacute;p á»©ng má»i nhu cáº§u cá»§a du kh&aacute;ch.</p>\r\n\r\n<p>&ndash; Nh&agrave; h&agrave;ng Spices: Nh&agrave; h&agrave;ng phá»¥c vá»¥ nhá»¯ng m&oacute;n Äƒn ná»•i tiáº¿ng cá»§a Ä‘á»‹a phÆ°Æ¡ng cÅ©ng nhÆ° c&aacute;c m&oacute;n Äƒn &Acirc;u, &Aacute; Ä‘a dáº¡ng. Ngá»“i tá»« nh&agrave; h&agrave;ng, qu&yacute; kh&aacute;ch c&oacute; thá»ƒ vá»«a thÆ°á»Ÿng thá»©c m&oacute;n Äƒn vá»«a ph&oacute;ng táº§m máº¯t ngáº¯m nh&igrave;n to&agrave;n cáº£nh b&atilde;i biá»ƒn Nha Trang v&agrave; nhá»¯ng h&ograve;n Ä‘áº£o á»Ÿ ph&iacute;a xa.</p>\r\n\r\n<p>+ Thá»i gian hoáº¡t Ä‘á»™ng:</p>\r\n\r\n<p>Buá»•i s&aacute;ng: 6:30 &ndash; 10:00</p>\r\n\r\n<p>Bá»¯a trÆ°a: 11:00 &ndash; 15:00</p>\r\n\r\n<p>Buá»•i tá»‘i: 18:30 &ndash; 22:00</p>\r\n\r\n<p>+ Vá»‹ tr&iacute;: táº§ng 2 kh&aacute;ch sáº¡n</p>\r\n\r\n<p>&ndash; Nh&agrave; h&agrave;ng Atiso: Nh&agrave; h&agrave;ng Atiso Ä‘Æ°á»£c thiáº¿t káº¿ theo phong c&aacute;ch hiá»‡n Ä‘áº¡i vá»›i kh&ocirc;ng gian má»Ÿ, nh&agrave; h&agrave;ng tá»a láº¡c táº¡i táº§ng 3 Ä‘em láº¡i báº§u kh&ocirc;ng kh&iacute; sang trá»ng nhÆ°ng kh&ocirc;ng máº¥t Ä‘i sá»± thoáº£i m&aacute;i vá»›i m&oacute;n Äƒn ch&iacute;nh cá»§a nh&agrave; h&agrave;ng l&agrave; háº£i sáº£n v&agrave; thá»‹t b&ograve;.</p>\r\n\r\n<p>+ Thá»i gian hoáº¡t Ä‘á»™ng: 11:00 &ndash; 22:30</p>\r\n\r\n<p>+ Vá»‹ tr&iacute;: táº§ng 3 kh&aacute;ch sáº¡n</p>\r\n\r\n<p>&ndash; Nh&agrave; h&agrave;ng hoa há»“ng: Nh&agrave; h&agrave;ng hoa há»“ng Ä‘áº·c biá»‡t Ä‘Æ°á»£c thiáº¿t káº¿ vá»›i phong c&aacute;ch hiá»‡n Ä‘áº¡i v&agrave; sang trong áº©n m&igrave;nh trong nhá»¯ng ch&ugrave;m Ä‘&egrave;n láº¥p l&aacute;nh. Má»™t Ä‘á»‹a Ä‘iá»ƒm vá»›i sá»± sang trá»ng vÆ°á»£t thá»i gian v&agrave; phong c&aacute;ch hiá»‡n Ä‘áº¡i. Nhá»¯ng tráº£i nghiá»‡m vá» má»™t kh&ocirc;ng gian sang trá»ng Ä‘Æ°á»£c n&acirc;ng táº§m hÆ¡n bá»Ÿi nhá»¯ng m&oacute;n Äƒn Ä‘áº·c biá»‡t Ä‘Æ°á»£c cháº¿ biáº¿n dÆ°á»›i t&agrave;i nghá»‡ cá»§a Ä‘á»™i ngÅ© báº¿p. Táº¥t cáº£ qu&yacute; kh&aacute;ch sáº½ Ä‘Æ°á»£c tráº£i nghiá»‡m dá»‹ch vá»¥ ho&agrave;n háº£o, m&oacute;n Äƒn Ä‘áº·c sáº¯c v&agrave; sá»± phá»¥c vá»¥ táº­n t&igrave;nh cá»§a Ä‘á»™i ngÅ© nh&acirc;n vi&ecirc;n, báº¥t ká»ƒ báº¡n Ä‘ang tá»• chá»©c sá»± kiá»‡n g&igrave; táº¡i nh&agrave; h&agrave;ng Hoa Há»“ng, báº¡n cÅ©ng sáº½ c&oacute; Ä‘Æ°á»£c má»™t tráº£i nghiá»‡m tuyá»‡t vá»i nháº¥t.</p>\r\n\r\n<p>+ Thá»i gian hoáº¡t Ä‘á»™ng: 11:00 &ndash; 22:30</p>\r\n\r\n<p>+ Vá»‹ tr&iacute;: táº§ng 4 kh&aacute;ch sáº¡n</p>\r\n\r\n<p>&ndash;&nbsp;Lobby Lounge:&nbsp;L&agrave; nÆ¡i l&yacute; tÆ°á»Ÿng Ä‘á»ƒ ngá»“i nh&acirc;m nhi ly c&agrave; ph&ecirc;, thÆ°á»Ÿng thá»©c má»™t Ä‘&uacute;p rÆ°á»£u máº¡nh, Ä‘Æ¡n giáº£n l&agrave; thÆ°á»Ÿng thá»©c t&aacute;ch tr&agrave; hoa quáº£ thoang thoáº£ng m&ugrave;i hÆ°Æ¡ng thÆ¡m hoáº·c vui hÆ¡n ná»¯a l&agrave; thÆ°á»Ÿng thá»©c má»™t ly s&acirc;m banh ch&iacute;nh hiá»‡u Æ°á»›p láº¡nh&hellip; má»™t khung cáº£nh l&atilde;ng máº¡n v&agrave; Ä‘áº§y thÆ° th&aacute;i. NÆ¡i Ä‘&acirc;y, báº¡n ho&agrave;n to&agrave;n c&oacute; thá»ƒ báº¯t Ä‘áº§u má»™t ng&agrave;y má»›i cá»§a m&igrave;nh khi nhá»¯ng tia náº¯ng báº¯t Ä‘áº§u chiáº¿u xuá»‘ng rá»±c rá»¡ quang lÄƒng k&iacute;nh cá»§a nhá»¯ng táº¥m k&iacute;nh lá»›n cá»§a kh&aacute;ch sáº¡n v&agrave; cÅ©ng l&agrave; nÆ¡i Ä‘á»ƒ&nbsp;báº¡n c&oacute; thá»ƒ káº¿t th&uacute;c má»™t ng&agrave;y l&agrave;m viá»‡c má»‡t má»i khi ho&agrave;ng h&ocirc;n bu&ocirc;ng xuá»‘ng.</p>\r\n\r\n<p>+ Thá»i gian hoáº¡t Ä‘á»™ng: 17:00 &ndash; 23:00</p>\r\n\r\n<p>+ Vá»‹ tr&iacute;: táº§ng trá»‡t kh&aacute;ch sáº¡n</p>\r\n\r\n<p>&ndash;&nbsp;Pool Bar:&nbsp;L&agrave; nÆ¡i thÆ° gi&atilde;n l&yacute; tÆ°á»Ÿng nháº¥t nÆ¡i báº¡n c&oacute; thá»ƒ vá»«a Ä‘áº¯m m&igrave;nh trong l&agrave;n nÆ°á»›c xanh biáº¿c á»Ÿ bá»ƒ bÆ¡i, vá»«a ngáº¯m nh&igrave;n b&atilde;i biá»ƒn tráº£i d&agrave;i ngay trÆ°á»›c táº§m máº¯t, láº¡i vá»«a c&oacute; thá»ƒ &nbsp;thÆ°á»Ÿng thá»©c nhá»¯ng ly nÆ°á»›c tÆ°Æ¡i m&aacute;t Ä‘Æ°á»£c pha cháº¿ táº¡i chá»—. Báº¡n c&oacute; thá»ƒ lá»±a chá»n theo mong muá»‘n cá»§a m&igrave;nh: rÆ°á»£u, bia, c&aacute;c Ä‘á»“ Äƒn nháº¹ v&agrave; c&aacute;c loáº¡i cocktails theo y&ecirc;u cáº§u.</p>\r\n\r\n<p>+ Thá»i gian hoáº¡t Ä‘á»™ng: 7:00 &ndash; 19:00</p>\r\n\r\n<p>+ Vá»‹ tr&iacute;: táº§ng 5 kh&aacute;ch sáº¡n</p>\r\n\r\n<p><img alt=\"review-khach-san-premier-havana-nha-trang-4\" src=\"http://datphongresort.com/wp-content/uploads/2022/05/khach-san-havana-nha-trang-49.png\" style=\"height:500px; width:800px\" /></p>\r\n\r\n<p><img alt=\"review-khach-san-premier-havana-nha-trang-5\" src=\"http://datphongresort.com/wp-content/uploads/2022/05/hava-800x533.jpg\" style=\"height:533px; width:800px\" /></p>\r\n\r\n<h2><strong>4. Há»‡ thá»‘ng ph&ograve;ng há»p, dá»‹ch vá»¥ tá»• chá»©c há»™i nghá»‹, há»™i tháº£o, gala, sá»± kiá»‡n, tiá»‡c cÆ°á»›i á»Ÿ kh&aacute;ch sáº¡n Premier Havana Nha Trang&nbsp;</strong></h2>\r\n\r\n<p>&ndash; Ph&ograve;ng há»p: Há»‡ thá»‘ng 4 ph&ograve;ng há»p, há»™i trÆ°á»ng táº¡i kh&aacute;ch sáº¡n Ä‘Æ°á»£c trang bá»‹ hiá»‡n Ä‘áº¡i theo ti&ecirc;u chuáº©n quá»‘c táº¿ ph&ugrave; há»£p c&aacute;c c&aacute;c loáº¡i h&igrave;nh sá»± kiá»‡n c&oacute; quy m&ocirc; v&agrave; má»¥c Ä‘&iacute;ch kh&aacute;c nhau. Vá»›i c&aacute;c cuá»™c há»p tá»« 30 kh&aacute;ch tá»›i 600 kh&aacute;ch. Há»‡ thá»‘ng &acirc;m thanh, &aacute;nh s&aacute;ng hiá»‡n Ä‘áº¡i, há»‡ thá»‘ng dá»‹ch thuáº­t 4 thá»© tiáº¿ng, dá»‹ch vá»¥ táº­n t&igrave;nh, chu Ä‘&aacute;o khiáº¿n kh&aacute;ch sáº¡n l&agrave; nÆ¡i há»™i tá»¥ cá»§a nhá»¯ng cuá»™c há»p, gáº·p gá»¡, thÆ°Æ¡ng tháº£o Ä‘áº³ng cáº¥p, Ä‘iá»ƒm nghá»‰ dÆ°á»¡ng nhiá»u dáº¥u áº¥n táº¡i Viá»‡t Nam. Havana Nha Trang l&agrave; Ä‘iá»ƒm Ä‘áº¿n l&yacute; tÆ°á»Ÿng cho thá»‹ trÆ°á»ng MICE.</p>\r\n\r\n<p>+ Ph&uacute; Quá»‘c 1: sá»©c chá»©a tá»« 90 &ndash; 170 kh&aacute;ch. Vá»‹ tr&iacute; náº±m á»Ÿ táº§ng 2 kh&aacute;ch sáº¡n.</p>\r\n\r\n<p>+ Ph&uacute; Quá»‘c 2: sá»©c chá»©a tá»« 40 &ndash; 100 kh&aacute;ch. Vá»‹ tr&iacute; náº±m á»Ÿ táº§ng 2 kh&aacute;ch sáº¡n.</p>\r\n\r\n<p>+ Há»™i An: sá»©c chá»©a 280 &ndash; 340 kh&aacute;ch náº±m. Vá»‹ tr&iacute; á»Ÿ táº§ng 3 kh&aacute;ch sáº¡n.</p>\r\n\r\n<p>+ Háº¡ Long: sá»©c chá»©a 300 &ndash; 450 kh&aacute;ch náº±m. Vá»‹ tr&iacute; á»Ÿ táº§ng 4 kh&aacute;ch sáº¡n.</p>\r\n\r\n<p>&ndash; Tiá»‡c cÆ°á»›i&nbsp;: Táº¡i Havana Nha Trang hotel, h&ocirc;n lá»… sáº½ Ä‘Æ°á»£c tá»• chá»©c theo phong c&aacute;ch chuy&ecirc;n nghiá»‡p, sang trá»ng v&agrave; l&atilde;ng máº¡n, Ä‘&aacute;p á»©ng theo Ä‘&uacute;ng y&ecirc;u cáº§u cá»§a qu&yacute; kh&aacute;ch.</p>\r\n\r\n<p><img alt=\"\" src=\"http://datphongresort.com/wp-content/uploads/2022/05/445610_16110115470048318231-800x533.png\" style=\"height:533px; width:800px\" /></p>\r\n\r\n<h2><strong>5. C&aacute;c dá»‹ch vá»¥ tiá»‡n &iacute;ch ti&ecirc;u biá»ƒu kh&aacute;c</strong></h2>\r\n\r\n<p>&ndash; Há»“ bÆ¡i: Kh&aacute;ch sáº¡n c&oacute; há»“ bÆ¡i ngo&agrave;i trá»i. Há»“ bÆ¡i tráº» em chung vá»›i há»“ bÆ¡i ngÆ°á»i lá»›n kh&ocirc;ng c&oacute; v&aacute;ch ngÄƒn giá»¯a hai há»“. Äá»™ s&acirc;u há»“ bÆ¡i ngÆ°á»i lá»›n: 1,4m.</p>\r\n\r\n<p>+ Vá»‹ tr&iacute;: náº±m táº§ng 5 kh&aacute;ch sáº¡n</p>\r\n\r\n<p>+ Giá» hoáº¡t Ä‘á»™ng: 07:00 &ndash; 19:00</p>\r\n\r\n<p>&ndash; ÄÆ°á»ng háº§m ri&ecirc;ng biá»‡t:&nbsp;N&eacute;t Ä‘áº·c biá»‡t nháº¥t cá»§a kh&aacute;ch sáº¡n m&agrave; kh&ocirc;ng kh&aacute;ch sáº¡n n&agrave;o c&oacute; Ä‘Æ°á»£c l&agrave; Ä‘Æ°á»ng háº§m ri&ecirc;ng biá»‡t ná»‘i liá»n tá»« kh&aacute;ch sáº¡n ra b&atilde;i biá»ƒn dÆ°á»›i l&ograve;ng Ä‘Æ°á»ng Tráº§n Ph&uacute;. Báº¡n sáº½ cáº£m tháº¥y biá»ƒn xanh nhÆ° Ä‘Æ°á»£c k&eacute;o láº¡i gáº§n.&nbsp;Kh&ocirc;ng cáº§n Ä‘em theo nhiá»u Ä‘á»“ khi Ä‘i táº¯m, kh&ocirc;ng cáº§n pháº£i bÄƒng qua Ä‘Æ°á»ng, kh&ocirc;ng ngáº¡i khi muá»‘n Ä‘i dáº¡o v&agrave;o báº¥t cá»© l&uacute;c n&agrave;o, tháº­t k&iacute;n Ä‘&aacute;o v&agrave; an to&agrave;n tuyá»‡t Ä‘á»‘i !</p>\r\n\r\n<p>&ndash; Havana Spa: Spa l&agrave; thi&ecirc;n Ä‘Æ°á»ng nghá»‰ dÆ°á»¡ng Ä‘&iacute;ch thá»±c bao gá»“m 21 ph&ograve;ng trá»‹ liá»‡u cao cáº¥p, salon l&agrave;m Ä‘áº¹p, c&acirc;u láº¡c bá»™ sá»©c khá»e v&agrave; khu vá»±c c&aacute;c tiá»‡n &iacute;ch gia tÄƒng. Spa káº¿t há»£p Ä‘áº§y s&aacute;ng táº¡o c&aacute;c liá»‡u ph&aacute;p Spa chuy&ecirc;n biá»‡t, ná»•i tiáº¿ng tá»« kháº¯p nÆ¡i tr&ecirc;n tháº¿ giá»›i nhÆ° áº¤n Äá»™, Th&aacute;i, Thá»¥y Äiá»ƒn, áº¢ Ráº­p, PhÆ°Æ¡ng Ä&ocirc;ng, massage tháº£o dÆ°á»£c, Ä‘&aacute; n&oacute;ng chuy&ecirc;n s&acirc;u,&hellip;Nhá»¯ng liá»‡u ph&aacute;p Ä‘iá»u trá»‹ Ä‘á»™c Ä‘&aacute;o nhÆ° Havana Signature Package for Couple, Oriental Four Hand Combination cháº¯c cháº¯n sáº½ mang láº¡i cho qu&yacute; kh&aacute;ch nhá»¯ng áº¥n tÆ°á»£ng kh&oacute; phai.</p>\r\n\r\n<p>+ Thá»i gian hoáº¡t Ä‘á»™ng: 08:00 &ndash; 22:00</p>\r\n\r\n<p>+ Vá»‹ tr&iacute;: Náº±m táº§ng 5 kh&aacute;ch sáº¡n</p>\r\n\r\n<p>&ndash; Ph&ograve;ng táº­p thá»ƒ h&igrave;nh: ÄÆ°á»£c&nbsp;trang bá»‹ c&aacute;c thiáº¿t bá»‹ m&aacute;y m&oacute;c hiá»‡n Ä‘áº¡i gi&uacute;p kh&aacute;ch h&agrave;ng táº­n hÆ°á»Ÿng trá»n váº¹n thá»i gian táº­p luyá»‡n cá»§a m&igrave;nh.</p>\r\n\r\n<p>+ Thá»i gian hoáº¡t Ä‘á»™ng: 06:00 &ndash; 21:00</p>\r\n\r\n<p>+ Vá»‹ tr&iacute;: Náº±m táº§ng 5 kh&aacute;ch sáº¡n</p>\r\n\r\n<p>&ndash; Business Center<strong>:&nbsp;</strong>N&eacute;p m&igrave;nh táº¡i khu vá»±c h&agrave;nh lang cá»§a tiá»n sáº£nh, vá»›i thiáº¿t káº¿ Ä‘á»™c Ä‘&aacute;o, khu vá»±c dá»‹ch vá»¥ VÄƒn Ph&ograve;ng mang Ä‘áº¿n cho báº¡n má»™t kh&ocirc;ng l&agrave;m viá»‡c gian y&ecirc;n tÄ©nh ri&ecirc;ng tÆ°. ThÆ° viá»‡n mini bao gá»“m táº¥t cáº£ c&aacute;c loáº¡i s&aacute;ch b&aacute;o Ä‘a ng&ocirc;n ngá»¯, c&aacute;c táº­p tin tá»©c c&ugrave;ng há»‡ thá»‘ng m&aacute;y t&iacute;nh hiá»‡n Ä‘áº¡i Ä‘Æ°á»£c bá»‘ tr&iacute; sáºµn s&agrave;ng táº¡i Ä‘&acirc;y Ä‘á»ƒ báº¡n c&oacute; thá»ƒ sá»­ dá»¥ng tra cá»©u th&ocirc;ng tin, kiá»ƒm tra há»™p thÆ° báº¥t cá»© l&uacute;c n&agrave;o.</p>\r\n\r\n<p>+ Thá»i gian hoáº¡t Ä‘á»™ng: 24/7</p>\r\n\r\n<p>+ Vá»‹ tr&iacute;: H&agrave;nh lang tiá»n sáº£nh kh&aacute;ch sáº¡n kh&aacute;ch sáº¡n</p>\r\n\r\n<p>&ndash; Skylight<strong>:</strong>&nbsp;C&oacute; bá»‘n khu vá»±c ch&iacute;nh gá»“m: Skydeck 360&ordm;, Skywalk, Lighthouse&nbsp;v&agrave; Rooftop Beach Club, má»—i khu vá»±c c&oacute; nhá»¯ng hoáº¡t Ä‘á»™ng vui chÆ¡i kh&aacute;c nhau, Ä‘á»§ kháº£ nÄƒng phá»¥c vá»¥ cho cáº£ nhá»¯ng du kh&aacute;ch kh&oacute; t&iacute;nh nháº¥t.</p>\r\n\r\n<p>+ Skylight Skywall :&nbsp;Skywall nÄƒÌ€m á»Ÿ táº§ng 43 vaÌ€ Ä‘Æ°á»£c laÌ€m bÄƒÌ€ng kiÌnh trong suá»‘t cho pheÌp báº¡n nhiÌ€n xuy&ecirc;n tháº¥u xuá»‘ng caÌc khu vá»±c b&ecirc;n dÆ°á»›i.</p>\r\n\r\n<p>+ Skylight Lighthouse<strong>:</strong>&nbsp;Ä&acirc;y laÌ€ ngá»n háº£i Ä‘Äƒng cao nháº¥t tr&ecirc;n tháº¿ giá»›i (151m) vaÌ€ coÌ thá»ƒ Ä‘Æ°á»£c nhiÌ€n tháº¥y to&agrave;n cáº£nh thaÌ€nh phá»‘ Nha Trang.</p>\r\n\r\n<p>+ Skydeck 360&ordm;:&nbsp;Skydeck laÌ€ Ä‘aÌ€i quan saÌt nÄƒÌ€m ngay dÆ°Æ¡&iacute; ch&acirc;n haá»‰ Ä‘Äƒng, Ä‘Æ°á»£c trang bá»‹ á»‘ng nhoÌ€m hiá»‡n Ä‘áº¡i vá»›i táº§m nhiÌ€n gáº¥p 400 láº§n. Thá»i gian hoáº¡t Ä‘á»™ng 08:00 &ndash; 14:00 v&agrave; 16:30 &ndash; 00:00.</p>\r\n\r\n<p>+&nbsp;Skylight Rooftop Beach Club<strong>:</strong>&nbsp;Club ngoaÌ€i trá»i cao nháº¥t táº¡i Viá»‡t Nam tiÌnh tá»›i thá»i Ä‘iá»ƒm hiá»‡n táº¡i.&nbsp;Thá»i gian hoáº¡t Ä‘á»™ng 16:30 &ndash; 00:00.</p>\r\n\r\n<p><img alt=\"review-khach-san-premier-havana-nha-trang-6\" src=\"http://datphongresort.com/wp-content/uploads/2022/05/havanaaa-800x534.jpg\" style=\"height:534px; width:800px\" /></p>\r\n\r\n<p><img alt=\"review-khach-san-premier-havana-nha-trang-7\" src=\"http://datphongresort.com/wp-content/uploads/2022/05/82061532-800x600.jpg\" style=\"height:600px; width:800px\" /></p>\r\n\r\n<h2><strong>6. C&aacute;c Ä‘iá»ƒm tham quan gáº§n kh&aacute;ch sáº¡n</strong></h2>\r\n\r\n<p>&ndash; Th&aacute;p B&agrave; Ponagar: C&aacute;ch kh&aacute;ch sáº¡n khoáº£ng 4,7 km, tÆ°Æ¡ng Ä‘Æ°Æ¡ng 11 ph&uacute;t Ä‘i xe. Du kh&aacute;ch dá»… d&agrave;ng di chuyá»ƒn báº±ng c&aacute;c loáº¡i phÆ°Æ¡ng tiá»‡n nhÆ° xe m&aacute;y, &ocirc; t&ocirc;, taxi,&hellip;Th&aacute;p B&agrave; Ponagar l&agrave; c&ocirc;ng tr&igrave;nh ti&ecirc;u biá»ƒu cho nghá»‡ thuáº­t kiáº¿n tr&uacute;c v&agrave; Ä‘i&ecirc;u kháº¯c d&acirc;n tá»™c ChÄƒm. Tá»« ng&agrave;y 21 Ä‘áº¿n ng&agrave;y 23 th&aacute;ng 3 &acirc;m lá»‹ch h&agrave;ng nÄƒm l&agrave; thá»i Ä‘iá»ƒm diá»…n ra lá»… há»™i Th&aacute;p B&agrave; c&ugrave;ng vá»›i nhiá»u hoáº¡t Ä‘á»™ng háº¥p dáº«n, Ä‘a dáº¡ng.</p>\r\n\r\n<p>+ Gi&aacute; v&eacute; tham quan: 22.000vnÄ‘/kh&aacute;ch</p>\r\n\r\n<p>+ Giá» hoáº¡t Ä‘á»™ng: 08:00-18:00<br />\r\n&ndash; Chá»£ Äáº§m:C&aacute;ch kh&aacute;ch sáº¡n 2 km, tÆ°Æ¡ng Ä‘Æ°Æ¡ng 7 ph&uacute;t Ä‘i xe. Du kh&aacute;ch c&oacute; thá»ƒ di chuyá»ƒn báº±ng c&aacute;c loáº¡i phÆ°Æ¡ng tiá»‡n nhÆ° xe m&aacute;y, &ocirc; t&ocirc;, taxi,&hellip;Chá»£ Äáº§m l&agrave; chá»£ lá»›n nháº¥t th&agrave;nh phá»‘ biá»ƒn Nha Trang, chá»£ b&aacute;n ráº¥t nhiá»u sáº£n pháº©m gia dá»¥ng láº«n nhá»¯ng máº·t h&agrave;ng lÆ°u niá»‡m, háº£i sáº£n&hellip;</p>\r\n\r\n<p>&ndash; Nh&agrave; thá» Ä&aacute; Nha Trang:&nbsp;C&aacute;ch kh&aacute;ch sáº¡n 1,6 km, tÆ°Æ¡ng Ä‘Æ°Æ¡ng 5 ph&uacute;t Ä‘i xe. Du kh&aacute;ch c&oacute; thá»ƒ di chuyá»ƒn báº±ng c&aacute;c loáº¡i phÆ°Æ¡ng tiá»‡n nhÆ° xe m&aacute;y, &ocirc; t&ocirc;, taxi,&hellip;Náº±m tr&ecirc;n Ä‘á»™ cao 12m giá»¯a trung t&acirc;m th&agrave;nh phá»‘, nh&agrave; thá» Ä‘&aacute; Nha Trang l&agrave; Ä‘á»‹a Ä‘iá»ƒm thu h&uacute;t ráº¥t nhiá»u du kh&aacute;ch, c&aacute;c nh&agrave; quay phim v&agrave; nhiáº¿p áº£nh trong v&agrave; ngo&agrave;i nÆ°á»›c.</p>\r\n\r\n<p>+ Thá»i gian hoáº¡t Ä‘á»™ng: 05:30-17:00. Thá»© 07 c&oacute; lá»… l&uacute;c 17:00 v&agrave; Chá»§ nháº­t c&oacute; lá»… l&uacute;c 05:00</p>\r\n\r\n<p>&ndash; Viá»‡n Háº£i DÆ°Æ¡ng Há»c: C&aacute;ch kh&aacute;ch sáº¡n khoáº£ng 4,8 km, tÆ°Æ¡ng Ä‘Æ°Æ¡ng 10 ph&uacute;t Ä‘i xe.&nbsp;<em>V</em>iá»‡n Háº£i dÆ°Æ¡ng há»c l&agrave; má»™t trong nhá»¯ng cÆ¡ sá»Ÿ nghi&ecirc;n cá»©u khoa há»c Ä‘Æ°á»£c ra Ä‘á»i sá»›m nháº¥t á»Ÿ Viá»‡t Nam v&agrave; Ä‘Æ°á»£c coi l&agrave; cÆ¡ sá»Ÿ lÆ°u trá»¯ hiá»‡n váº­t v&agrave; nghi&ecirc;n cá»©u vá» biá»ƒn lá»›n nháº¥t Ä&ocirc;ng Nam &Aacute;.</p>\r\n\r\n<p>+ Thá»i gian hoáº¡t Ä‘á»™ng: 06:00-18:00</p>\r\n\r\n<p>+ Gi&aacute; v&eacute;: 40.000vnÄ‘/ngÆ°á»i/lÆ°á»£t</p>\r\n', '1656749209_havana-nha-trang-hotel.jpg', '<p>Kh&aacute;ch sáº¡n l&agrave; t&ograve;a nh&agrave; cao 41 táº§ng, vá»›i 1260 ph&ograve;ng, táº¥t cáº£ Ä‘á»u c&oacute; cá»­a sá»• nh&igrave;n tháº³ng ra vá»‹nh Nha Trang</p>\r\n', '004', 1, 8, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3278.7176722867443!2d109.19387734374753!3d12.243242727950468!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31706778fd8c5dff%3A0xd3c343b165958165!2sPremier%20Havana!5e0!3m2!1svi!2s!4v1656475735897!5m2!1svi!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>'),
(24, 'Grand Plaza HÃ  Ná»™i', 2700000, 607, '<p>Kh&aacute;ch sáº¡n Grand Plaza H&agrave; Ná»™i náº±m ngay trong trung t&acirc;m thÆ°Æ¡ng máº¡i sáº§m uáº¥t v&agrave; trung t&acirc;m h&agrave;nh ch&iacute;nh cá»§a H&agrave; Ná»™i, náº±m gáº§n vá»›i Trung t&acirc;m Há»™i nghá»‹ Quá»‘c gia. Chá»‰ máº¥t v&agrave;i ph&uacute;t Ä‘i xe Ä‘áº¿n SVÄ QG Má»¹ Ä&igrave;nh v&agrave; c&aacute;ch 28 km tá»« s&acirc;n bay Ná»™i B&agrave;i. C&aacute;ch Há»“ Ho&agrave;n kiáº¿m 10 ph&uacute;t Ä‘i taxi.<br />\r\n<img alt=\"\" src=\"http://hotlinedatphong.com/wp-content/uploads/2020/01/sanh.jpg\" style=\"height:868px; width:800px\" /><br />\r\nGrand Plaza&nbsp; H&agrave; Ná»™i&nbsp; l&agrave; kh&aacute;ch sáº¡n Ä‘áº§u ti&ecirc;n táº¡i H&agrave; Ná»™i c&oacute; thiáº¿t káº¿ tráº§n &ndash; tÆ°á»ng &ndash; c&aacute;c há»a tiáº¿t trang tr&iacute; trong ph&ograve;ng Lobby, Coffee Lounge, Presidential Suite,&hellip; Ä‘Æ°á»£c d&aacute;t v&agrave;ng 24K.</p>\r\n\r\n<h2>2. Há»‡ thá»‘ng loáº¡i ph&ograve;ng á»Ÿ kh&aacute;ch sáº¡n Grand Plaza H&agrave; Ná»™i</h2>\r\n\r\n<p>Kh&aacute;ch sáº¡n cao 30 táº§ng vá»›i tá»•ng cá»™ng 618 ph&ograve;ng nghá»‰ vá»›i Ä‘áº§y Ä‘á»§ c&aacute;c tiá»‡n nghi cao cáº¥p trong Ä‘&oacute; c&oacute; 05 ph&ograve;ng Royal Suite &ndash; má»—i ph&ograve;ng rá»™ng 157 m&eacute;t vu&ocirc;ng v&agrave; 1 ph&ograve;ng Presidential Suite rá»™ng 410 m&eacute;t vu&ocirc;ng.<br />\r\nTáº¥t cáº£ c&aacute;c ph&ograve;ng Ä‘á»u thoáº£i m&aacute;i, dá»‹ch vá»¥ ph&ograve;ng theo nhu cáº§u kh&aacute;ch h&agrave;ng cháº¯c cháº¯n sáº½ l&agrave;m cho báº¡n cáº£m tháº¥y nhÆ° á»Ÿ nh&agrave;.<br />\r\n<strong>Ph&ograve;ng Deluxe:</strong>&nbsp;Ph&ograve;ng c&oacute; diá»‡n t&iacute;ch 45m&sup2;, hÆ°á»›ng view th&agrave;nh phá»‘.<br />\r\n<img alt=\"\" src=\"http://hotlinedatphong.com/wp-content/uploads/2020/01/deluxe1.jpg\" style=\"height:1266px; width:800px\" /><br />\r\n<strong>Ph&ograve;ng Plaza suie:</strong>&nbsp;Ph&ograve;ng c&oacute; diá»‡n t&iacute;ch 118m&sup2;, hÆ°á»›ng view th&agrave;nh phá»‘.<br />\r\n<img alt=\"\" src=\"http://hotlinedatphong.com/wp-content/uploads/2020/01/plaza-suite.jpg\" style=\"height:1388px; width:800px\" /><br />\r\n<strong>Ph&ograve;ng Executive Suite:</strong>&nbsp;Ph&ograve;ng c&oacute; diá»‡n t&iacute;ch 90m&sup2;, hÆ°á»›ng view th&agrave;nh phá»‘.<br />\r\n<img alt=\"\" src=\"http://hotlinedatphong.com/wp-content/uploads/2020/01/executive.jpg\" style=\"height:1365px; width:800px\" /><br />\r\n<strong>Ph&ograve;ng Presidential:</strong>&nbsp;Ph&ograve;ng c&oacute; diá»‡n t&iacute;ch 410m&sup2;, hÆ°á»›ng view th&agrave;nh phá»‘.<br />\r\n<img alt=\"\" src=\"http://hotlinedatphong.com/wp-content/uploads/2020/01/president.jpg\" style=\"height:333px; width:800px\" /><br />\r\n<strong>Ph&ograve;ng Parlor Suite:</strong>&nbsp;Ph&ograve;ng c&oacute; diá»‡n t&iacute;ch 70m&sup2;, hÆ°á»›ng view th&agrave;nh phá»‘.<br />\r\n<img alt=\"khach-san-grand-plaza-ha-noi-8\" src=\"http://hotlinedatphong.com/wp-content/uploads/2020/01/parlor.jpg\" style=\"height:1388px; width:800px\" /><br />\r\n<strong>Ph&ograve;ng Royal Suite:</strong>&nbsp;Ph&ograve;ng c&oacute; diá»‡n t&iacute;ch 157m&sup2;, hÆ°á»›ng view th&agrave;nh phá»‘.<br />\r\n<strong>Ph&ograve;ng Suite Charmvit:</strong>&nbsp;Ph&ograve;ng c&oacute; diá»‡n t&iacute;ch 157m&sup2;, hÆ°á»›ng view th&agrave;nh phá»‘.<br />\r\n<img alt=\"khach-san-grand-plaza-ha-noi-7\" src=\"http://hotlinedatphong.com/wp-content/uploads/2020/01/charmit.jpg\" style=\"height:1365px; width:800px\" /></p>\r\n\r\n<h2><strong>3. C&aacute;c tiá»‡n nghi dá»‹ch vá»¥</strong></h2>\r\n\r\n<p>Kh&aacute;ch sáº¡n Grand Plaza H&agrave; Ná»™i c&oacute; khu ph&ograve;ng táº­p &ndash; há»‡ thá»‘ng m&aacute;y táº­p hiá»‡n Ä‘áº¡i vá»›i c&aacute;c huáº¥n luyá»‡n vi&ecirc;n lu&ocirc;n sáºµn s&agrave;ng Ä‘á»ƒ gi&uacute;p kh&aacute;ch h&agrave;ng c&oacute; chÆ°Æ¡ng tr&igrave;nh táº­p luyá»‡n ph&ugrave; há»£p thá»ƒ lá»±c v&agrave; táº­p luyá»‡n.</p>\r\n\r\n<p>Ngo&agrave;i ra kh&aacute;ch sáº¡n Spa c&oacute; 16 ph&ograve;ng Ä‘Æ°á»£c thiáº¿t káº¿ Ä‘áº³ng cáº¥p v&agrave; hiá»‡n Ä‘áº¡i.&nbsp;Grand Plaza c&ograve;n c&oacute; c&aacute;c tiá»‡n nghá»‹ thÆ° gi&atilde;n cao cáº¥p, trong Ä‘&oacute; c&oacute; m&aacute;t xa &ndash; bá»ƒ bÆ¡i trong nh&agrave; &ndash; thiáº¿t bá»‹ táº­p thá»ƒ dá»¥c &ndash; táº¯m hÆ¡i &ndash; spa.</p>\r\n\r\n<p>Ngo&agrave;i ra, kh&aacute;ch sáº¡n Grand Plaza H&agrave; Ná»™i n&agrave;y cÅ©ng c&oacute; dá»‹ch vá»¥ ph&ograve;ng 24 giá», cá»­a h&agrave;ng, táº§ng cao cáº¥p, thang m&aacute;y, qu&aacute;n bar/tiá»‡m rÆ°á»£u, dá»‹ch vá»¥ giáº·t l&agrave;/giáº·t kh&ocirc;. Kh&aacute;ch sáº¡n c&oacute; b&agrave;n Ä‘áº·t tour v&agrave; cung cáº¥p dá»‹ch vá»¥ Ä‘Æ°a Ä‘&oacute;n s&acirc;n bay theo y&ecirc;u cáº§u k&egrave;m phá»¥ ph&iacute;.</p>\r\n\r\n<p><img alt=\"khach-san-grand-plaza-ha-noi-6\" src=\"http://hotlinedatphong.com/wp-content/uploads/2020/01/beboii.jpg\" style=\"height:500px; width:800px\" /></p>\r\n\r\n<p><img alt=\"khach-san-grand-plaza-ha-noi-5\" src=\"http://hotlinedatphong.com/wp-content/uploads/2020/01/spad.jpg\" style=\"height:682px; width:800px\" /></p>\r\n\r\n<p><img alt=\"khach-san-grand-plaza-ha-noi-4\" src=\"http://hotlinedatphong.com/wp-content/uploads/2020/01/hop.jpg\" style=\"height:682px; width:800px\" /></p>\r\n\r\n<h2><strong>4. áº¨m thá»±c</strong></h2>\r\n\r\n<p>Grand Plaza c&oacute; sáº£nh kh&aacute;ch thanh lá»‹ch phá»¥c vá»¥ bá»¯a tr&agrave; chiá»u v&agrave; chÆ°Æ¡ng tr&igrave;nh giáº£i tr&iacute; trá»±c tiáº¿p vá» Ä‘&ecirc;m. Nhá»¯ng n&eacute;t áº©m thá»±c ná»•i báº­t táº¡i Ä‘&acirc;y bao gá»“m nh&agrave; h&agrave;ng Ch&acirc;u &Aacute; v&agrave; nh&agrave; h&agrave;ng Le Jardin, nÆ¡i phá»¥c vá»¥ Äƒn uá»‘ng cáº£ ng&agrave;y v&agrave; c&aacute;c bá»¯a tiá»‡c tá»± chá»n quá»‘c táº¿.</p>\r\n\r\n<h3><strong>Nh&agrave; h&agrave;ng Le Jardin</strong></h3>\r\n\r\n<p>Nh&agrave; h&agrave;ng gá»“m 54 b&agrave;n, Ä‘áº·t ngay táº¡i táº§ng 1 cá»§a kh&aacute;ch sáº¡n, c&oacute; táº§m nh&igrave;n tho&aacute;ng v&agrave;<br />\r\nrá»™ng ra ph&iacute;a khung cáº£nh b&ecirc;n ngo&agrave;i. Nh&agrave; h&agrave;ng phá»¥c vá»¥ buffet quá»‘c táº¿ v&agrave; thá»±c Ä‘Æ¡n tá»± chá»n phong ph&uacute;, mang Ä‘áº­m phong c&aacute;ch Ch&acirc;u &Acirc;u v&agrave; Ch&acirc;u &Aacute;. Äáº·c bi&ecirc;t, v&agrave;o má»—i thá»© 6 h&agrave;ng tuáº§n, du kh&aacute;ch sáº½ bá»‹ ch&igrave;m Ä‘áº¯m v&agrave;o bá»¯a tiá»‡c cá»§a Ä‘áº¡i dÆ°Æ¡ng vá»›i nhá»¯ng m&oacute;n Äƒn Ä‘áº·c sáº¯c Ä‘Æ°á»£c cháº¿ biáº¿n tá»« t&ocirc;m h&ugrave;m, cua, c&aacute;, h&agrave;u, c&agrave; há»“i&hellip; Thá»i gian má»Ÿ cá»­a tá»« 6h s&aacute;ng Ä‘áº¿n 22h Ä‘&ecirc;m.<br />\r\n<img alt=\"khach-san-grand-plaza-ha-noi-3\" src=\"http://hotlinedatphong.com/wp-content/uploads/2020/01/hdh.jpg\" style=\"height:450px; width:800px\" /></p>\r\n\r\n<h3><strong>Nh&agrave; h&agrave;ng KONI</strong></h3>\r\n\r\n<p>Nh&agrave; h&agrave;ng Ä‘Æ°á»£c Ä‘áº·t táº¡i táº§ng M vá»›i 93 chá»— ngá»“i, nh&agrave; h&agrave;ng phá»¥c vá»¥ c&aacute;c m&oacute;n Äƒn cá»§a Ä‘áº¥t nÆ°á»›c H&agrave;n Quá»‘c v&agrave; Nháº­t Báº£n vá»›i c&aacute;c m&oacute;n Äƒn do ch&iacute;nh tay c&aacute;c Ä‘áº§u báº¿p há» cháº¿ biáº¿n. &nbsp;Vá»›i c&aacute;c m&oacute;n Äƒn Sashimi, gá»i c&aacute; há»“i, c&aacute; ngá»«, má»±c, báº¡ch tuá»™c, c&aacute;c m&oacute;n Äƒn Ä‘áº·c trÆ°ng táº¡i hai Ä‘áº¥t nÆ°á»›c n&agrave;y.<br />\r\n<img alt=\"khach-san-grand-plaza-ha-noi-2\" src=\"http://hotlinedatphong.com/wp-content/uploads/2020/01/nh%C3%A0-hanf.jpg\" style=\"height:682px; width:800px\" /></p>\r\n\r\n<h3><strong>&nbsp;Nh&agrave; h&agrave;ng ASIA</strong></h3>\r\n\r\n<p>Äáº·t táº¡i táº§ng 3 l&agrave; nh&agrave; h&agrave;ng ASIA vá»›i c&aacute;c m&oacute;n Äƒn Viá»‡t Nam, Trung Quá»‘c v&agrave; Th&aacute;i<br />\r\nLan, Nh&agrave; h&agrave;ng c&oacute; sá»± há»— trá»£ ráº¥t nhiá»u cá»§a c&aacute;c Ä‘áº§u Ä‘áº¿p Trung Quá»‘c ná»•i tiáº¿ng. Vá»›i c&ocirc;ng<br />\r\nsuáº¥t tá»‘i Ä‘a 105 ngÆ°á»i trong Ä‘&oacute; c&oacute; 3 ph&ograve;ng Ä‘áº·c biá»‡t dung cho c&aacute;c b&agrave;n tiá»‡c theo nh&oacute;m hoáº·c theo c&aacute;c báº­c quan chá»©c.</p>\r\n\r\n<p><img alt=\"khach-san-grand-plaza-ha-noi-1\" src=\"http://hotlinedatphong.com/wp-content/uploads/2020/01/bs.jpg\" style=\"height:450px; width:800px\" /></p>\r\n\r\n<p>Ngo&agrave;i ra, Phoenix Lobby Lounge l&agrave; nÆ¡i tuyá»‡t Ä‘áº¹p Ä‘á»ƒ thÆ° gi&atilde;n vá»›i tr&agrave; chiá»u,<br />\r\ncocktail buá»•i tá»‘i v&agrave; c&aacute;c chÆ°Æ¡ng tr&igrave;nh giáº£i tr&iacute; kh&aacute;c, Bar Phoenix, phá»¥c vá»¥ tá»« 11h Ä‘áº¿n 24h<br />\r\nvá»›i sá»©c chá»©a 132 kh&aacute;ch.</p>\r\n\r\n<p><img alt=\"khach-san-grand-plaza-ha-noi\" src=\"http://hotlinedatphong.com/wp-content/uploads/2020/01/pub.jpg\" style=\"height:757px; width:800px\" /></p>\r\n\r\n<p>Tr&ecirc;n Ä‘&acirc;y l&agrave; th&ocirc;ng tin<strong>&nbsp;Kh&aacute;ch sáº¡n Grand Plaza H&agrave; Ná»™i 5*, Tráº§n Duy HÆ°ng, quáº­n Cáº§u Giáº¥y</strong>: Äá»‹a chá»‰, h&igrave;nh áº£nh, c&aacute;c dá»‹ch vá»¥ tiá»‡n &iacute;ch, há»‡ thá»‘ng ph&ograve;ng nghá»‰, sá»‘ Ä‘iá»‡n thoáº¡i li&ecirc;n há»‡. Qu&yacute; kh&aacute;ch c&oacute; nhu cáº§u Ä‘áº·t ph&ograve;ng kh&aacute;ch sáº¡n, thu&ecirc; villa, tour du lá»‹ch&nbsp; vui l&ograve;ng li&ecirc;n há»‡ Ä‘á»ƒ Ä‘Æ°á»£c tÆ° váº¥n c&aacute;c combo, voucher, khuyáº¿n m&atilde;i má»›i nháº¥t.</p>\r\n\r\n<p><em><strong>Sá»‘ Ä‘iá»‡n thoáº¡i li&ecirc;n há»‡: 0866.091515 / 0866.010055</strong></em></p>\r\n', '1656748922_grand HÃ  Ná»™i.jpg', '<p>Grand Plaza H&agrave; Ná»™i l&agrave; má»™t trong nhá»¯ng kh&aacute;ch sáº¡n lá»›n nháº¥t Viá»‡t Nam. Kh&aacute;ch sáº¡n gá»“m 2 t&ograve;a th&aacute;p 28 táº§ng v&agrave; 2 táº§ng háº§m, 607 ph&ograve;ng</p>\r\n', '005', 1, 7, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.6308366543453!2d105.79462941411954!3d21.007430186009934!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab95bd37c61f%3A0x6ec553a57ae27350!2sGrand%20Plaza%20Hanoi%20Hotel!5e0!3m2!1svi!2s!4v1656748906873!5m2!1svi!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>'),
(25, 'KhÃ¡ch sáº¡n Reverie Saigon', 5900000, 244, '<p>Kh&aacute;ch sáº¡n 6 sao The Reverie Saigon á»Ÿ quáº­n 1,&nbsp;tp&nbsp;hcm&nbsp;vá»«a Ä‘Æ°á»£c&nbsp;táº¡p ch&iacute;&nbsp;du lá»‹ch uy t&iacute;n h&agrave;ng Ä‘áº§u&nbsp;to&agrave;n cáº§u&nbsp;Cond&eacute; Nast Traveler vinh danh á»Ÿ vá»‹ tr&iacute; thá»© tÆ° trong&nbsp;danh s&aacute;ch&nbsp;50 kh&aacute;ch sáº¡n tá»‘t nháº¥t&nbsp;to&agrave;n cáº§u.</p>\r\n\r\n<p><img src=\"https://phanmemquanlykhachsan.vn/wp-content/uploads/2019/10/img20171028101407951.jpg\" /></p>\r\n\r\n<p>Ä&acirc;y l&agrave;&nbsp;káº¿t quáº£&nbsp;Ä‘Æ°á»£c c&ocirc;ng bá»‘ tá»« cuá»™c&nbsp;thÄƒm d&ograve;&nbsp;hÆ¡n 300.000&nbsp;báº¡n Ä‘á»c&nbsp;vá»«a má»›i&nbsp;bá» phiáº¿u cho giáº£i thÆ°á»Ÿng Readers&rsquo; Choice Awards cá»§a Cond&eacute; Nast Traveler nÄƒm nay v&agrave; l&agrave; má»™t&nbsp;event&nbsp;quan trá»ng&nbsp;g&acirc;y&nbsp;Ä‘á»ƒ &yacute;&nbsp;tr&ecirc;n&nbsp;thá»‹ trÆ°á»ng&nbsp;kh&aacute;ch sáº¡n cao cáº¥p&nbsp;tháº¿ giá»›i&nbsp;vá»«a diá»…n ra&nbsp;Hiá»‡n nay.</p>\r\n\r\n<p>Xem th&ecirc;m:&nbsp;<a href=\"https://phanmemquanlykhachsan.vn/tong-hop-cac-khach-san-6-sao-o-viet-nam/\">Tá»•ng há»£p c&aacute;c kh&aacute;ch sáº¡n 6 sao á»Ÿ viá»‡t nam má»›i nháº¥t 2020</a></p>\r\n\r\n<p><a href=\"http://channel.mediacdn.vn/prupload/879/2017/10/img20171028101408087.jpg\" target=\"_blank\"><img alt=\"BÃªn trong khÃ¡ch sáº¡n 6 sao Viá»‡t Nam lá»t top 4 tháº¿ giá»›i - áº¢nh 1.\" src=\"https://phanmemquanlykhachsan.vn/wp-content/uploads/2019/10/img20171028101408087.jpg\" /></a></p>\r\n\r\n<p>Trong pháº§n c&ocirc;ng bá»‘ giáº£i thÆ°á»Ÿng&nbsp;táº£i&nbsp;tr&ecirc;n&nbsp;b&aacute;o ch&iacute;&nbsp;Cond&eacute; Nast Traveler c&oacute; Ä‘oáº¡n: &ldquo;Tá»« khi khai trÆ°Æ¡ng v&agrave;o nÄƒm 2015, The Reverie Saigon&nbsp;Ä‘ang&nbsp;mang láº¡i&nbsp;má»™t Ä‘áº³ng cáº¥p sang trá»ng vÆ°á»£t báº­c chÆ°a tá»«ng c&oacute;&nbsp;trÆ°á»›c Ä‘&acirc;y&nbsp;á»Ÿ&nbsp;tp&nbsp;S&agrave;i G&ograve;n&nbsp;n&oacute;i ri&ecirc;ng v&agrave;&nbsp;Viá»‡t Nam&nbsp;n&oacute;i chung.&rdquo;</p>\r\n\r\n<p><a href=\"http://channel.mediacdn.vn/prupload/879/2017/10/img20171028101408243.jpg\" target=\"_blank\"><img alt=\"BÃªn trong khÃ¡ch sáº¡n 6 sao Viá»‡t Nam lá»t top 4 tháº¿ giá»›i - áº¢nh 2.\" src=\"https://phanmemquanlykhachsan.vn/wp-content/uploads/2019/10/img20171028101408243.jpg\" /></a></p>\r\n\r\n<p>&Ocirc;ng Kai Speth, ph&oacute; tá»•ng gi&aacute;m Ä‘á»‘c phá»¥ tr&aacute;ch khá»‘i hoáº¡t Ä‘á»™ng v&agrave;&nbsp;káº¿t quáº£&nbsp;kinh doanh&nbsp;cá»§a WMC&nbsp;group, táº­p Ä‘o&agrave;n&nbsp;quáº£n l&yacute;&nbsp;kh&aacute;ch sáº¡n The Reverie Saigon, cho ráº±ng giáº£i thÆ°á»Ÿng l&agrave; sá»±&nbsp;c&ocirc;ng nháº­n&nbsp;vá» táº§m&nbsp;Quan s&aacute;t&nbsp;vÆ°á»£t trá»™i cÅ©ng&nbsp;giá»‘ng nhÆ°&nbsp;cam káº¿t ki&ecirc;n Ä‘á»‹nh cá»§a táº­p Ä‘o&agrave;n trong&nbsp;sá»© má»‡nh&nbsp;cung cáº¥p&nbsp;nhá»¯ng&nbsp;tráº£i nghiá»‡m&nbsp;tuyá»‡t Ä‘á»‰nh cho&nbsp;KH.</p>\r\n\r\n<p><a href=\"http://channel.mediacdn.vn/prupload/879/2017/10/img20171028101408402.jpg\" target=\"_blank\"><img alt=\"BÃªn trong khÃ¡ch sáº¡n 6 sao Viá»‡t Nam lá»t top 4 tháº¿ giá»›i - áº¢nh 3.\" src=\"https://phanmemquanlykhachsan.vn/wp-content/uploads/2019/10/img20171028101408402.jpg\" /></a></p>\r\n\r\n<p>Ná»™i tháº¥t cá»§a The Reverie Saigon ná»•i báº­t theo&nbsp;style&nbsp;ho&agrave;ng gia &Yacute;, ti&ecirc;u biá»ƒu trong Ä‘&oacute; l&agrave; chiáº¿c Ä‘á»“ng há»“ khá»•ng lá»“ phi&ecirc;n báº£n Ä‘áº·c biá»‡t do c&aacute;c nghá»‡ nh&acirc;n cá»§a&nbsp;doanh nghiá»‡p&nbsp;Baldi Firenze danh tiáº¿ng táº¡i Florenze (Italy) cháº¿ t&aacute;c d&agrave;nh ri&ecirc;ng cho kh&aacute;ch sáº¡n Ä‘Æ°á»£c Ä‘áº·t táº¡i sáº£nh ch&iacute;nh; bá»™ sofa Ä‘á»“ sá»™ thuá»™c&nbsp;thá»ƒ loaÌ£i&nbsp;kiá»‡t t&aacute;c Esmeralda cá»§a&nbsp;brand&nbsp;ná»™i tháº¥t ná»•i tiáº¿ng Colombostile, vá» bá»c báº±ng da Ä‘&agrave; Ä‘iá»ƒu c&oacute; m&agrave;u t&iacute;m Ä‘á» máº¡nh máº½ vá»›i c&aacute;c Ä‘Æ°á»ng viá»n náº¡m v&agrave;ng Ä‘áº·t táº¡i sáº£nh táº§ng 7. Ä&acirc;y cÅ©ng l&agrave; phi&ecirc;n báº£n duy nháº¥t tr&ecirc;n&nbsp;to&agrave;n cáº§u.</p>\r\n\r\n<p><img src=\"https://phanmemquanlykhachsan.vn/wp-content/uploads/2019/10/img20171028101408520.jpg\" /></p>\r\n\r\n<p>kh&ocirc;ng&nbsp;chá»‰ c&oacute; tháº¿, cÅ©ng&nbsp;giá»‘ng nhÆ°&nbsp;má»i kh&aacute;ch sáº¡n&nbsp;muá»‘n&nbsp;v&agrave;o Top Ä‘áº§u&nbsp;to&agrave;n cáº§u, tiá»‡n nghi trong tá»«ng ph&ograve;ng á»Ÿ The Reverie Saigon&nbsp;táº­p há»£p&nbsp;nhá»¯ng&nbsp;design&nbsp;tinh xáº£o c&ugrave;ng nhiá»u tuyá»‡t t&aacute;c Ä‘á»™c nháº¥t tá»« c&aacute;c&nbsp;thÆ°Æ¡ng hiá»‡u&nbsp;ná»™i tháº¥t h&agrave;ng Ä‘áº§u Italy.</p>\r\n\r\n<p>Xem th&ecirc;m:&nbsp;<a href=\"https://phanmemquanlykhachsan.vn/gioi-thieu-khach-san-time-square-sai-gon/\">Giá»›i thiá»‡u kh&aacute;ch sáº¡n Time Square s&agrave;i g&ograve;n nÄƒm 2020</a></p>\r\n\r\n<p><a href=\"http://channel.mediacdn.vn/prupload/879/2017/10/img20171028101408652.jpg\" target=\"_blank\"><img alt=\"BÃªn trong khÃ¡ch sáº¡n 6 sao Viá»‡t Nam lá»t top 4 tháº¿ giá»›i - áº¢nh 4.\" src=\"https://phanmemquanlykhachsan.vn/wp-content/uploads/2019/10/img20171028101408652.jpg\" /></a></p>\r\n\r\n<p>Vá»›i hai máº·t tiá»n hÆ°á»›ng ra Ä‘Æ°á»ng Äá»“ng Khá»Ÿi v&agrave; Nguyá»…n Huá»‡,&nbsp;há»‡ thá»‘ng&nbsp;ph&ograve;ng nghá»‰ cá»§a kh&aacute;ch sáº¡n l&agrave;&nbsp;ch&acirc;n trá»i&nbsp;nghá»‰ dÆ°á»¡ng tiá»‡n nghi, tr&aacute;ng lá»‡,&nbsp;má»Ÿ&nbsp;ra táº§m&nbsp;Nh&igrave;n&nbsp;tho&aacute;ng rá»™ng bao qu&aacute;t&nbsp;th&agrave;nh phá»‘&nbsp;&ndash; má»™t vá»‹ tr&iacute; vá»«a táº­n hÆ°á»Ÿng Ä‘Æ°á»£c c&aacute;i n&aacute;o nhiá»‡t láº«n sÆ° y&ecirc;n tÄ©nh&nbsp;kh&ocirc;ng giá»‘ng&nbsp;láº¡ cá»§a S&agrave;i th&agrave;nh.</p>\r\n\r\n<p><a href=\"http://channel.mediacdn.vn/prupload/879/2017/10/img20171028101408766.jpg\" target=\"_blank\"><img alt=\"BÃªn trong khÃ¡ch sáº¡n 6 sao Viá»‡t Nam lá»t top 4 tháº¿ giá»›i - áº¢nh 5.\" src=\"https://phanmemquanlykhachsan.vn/wp-content/uploads/2019/10/img20171028101408766.jpg\" /></a></p>\r\n\r\n<p>NÄƒm nh&agrave; h&agrave;ng vá»›i&nbsp;Ä‘a dáº¡ng&nbsp;style&nbsp;áº©m thá»±c&nbsp;Ä‘á»‰nh cao, c&ugrave;ng má»™t quáº§y bar tráº£i d&agrave;i gáº§n 50 m&eacute;t suá»‘t hai t&ograve;a nh&agrave;, ná»‘i liá»n hai con Ä‘Æ°á»ng Äá»“ng Khá»Ÿi v&agrave; Nguyá»…n Huá»‡&nbsp;Ä‘ang&nbsp;kháº³ng Ä‘á»‹nh vá»‹ tháº¿ s&aacute;u sao ho&agrave;n to&agrave;n xá»©ng Ä‘&aacute;ng cá»§a The Reverie Saigon.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://channel.mediacdn.vn/prupload/879/2017/10/img20171028101408887.jpg\" target=\"_blank\"><img alt=\"BÃªn trong khÃ¡ch sáº¡n 6 sao Viá»‡t Nam lá»t top 4 tháº¿ giá»›i - áº¢nh 6.\" src=\"https://phanmemquanlykhachsan.vn/wp-content/uploads/2019/10/img20171028101408887.jpg\" /></a></p>\r\n\r\n<p>Khu Spa táº¡i kh&aacute;ch sáº¡n cÅ©ng g&acirc;y&nbsp;th&iacute;ch th&uacute;&nbsp;vá»›i chi tiáº¿t vá»&nbsp;ch&acirc;n trá»i&nbsp;tho&aacute;ng rá»™ng Ä‘áº¿n 1.200m2</p>\r\n\r\n<p><a href=\"http://channel.mediacdn.vn/prupload/879/2017/10/img20171028101409022.jpg\" target=\"_blank\"><img alt=\"BÃªn trong khÃ¡ch sáº¡n 6 sao Viá»‡t Nam lá»t top 4 tháº¿ giá»›i - áº¢nh 7.\" src=\"https://phanmemquanlykhachsan.vn/wp-content/uploads/2019/10/img20171028101409022.jpg\" /></a></p>\r\n\r\n<p>Hai bá»ƒ sá»¥c Jacuzzi ngo&agrave;i trá»i v&agrave; bá»ƒ bÆ¡i&nbsp;k&iacute;ch&nbsp;cá»¡ ti&ecirc;u&nbsp;há»£p l&yacute;&nbsp;Olympic.</p>\r\n\r\n<p><img src=\"https://phanmemquanlykhachsan.vn/wp-content/uploads/2019/10/img20171028101409123.jpg\" /></p>\r\n\r\n<p>The Reverie Saigon g&oacute;p pháº§n t&ocirc; Ä‘iá»ƒm váº»&nbsp;xinh&nbsp;hiá»‡n Ä‘áº¡i v&agrave; thá»‹nh vÆ°á»£ng cá»§a&nbsp;quá»‘c gia&nbsp;vá»›i&nbsp;ná»n m&oacute;ng&nbsp;ph&ograve;ng nghá»‰&nbsp;lá»›n&nbsp;nháº¥t&nbsp;tp&nbsp;bao gá»“m&nbsp;286 ph&ograve;ng v&agrave; suite thÆ°á»£ng Ä‘áº³ng c&ugrave;ng 89 cÄƒn há»™ dá»‹ch vá»¥ sang trá»ng,&nbsp;má»Ÿ&nbsp;ra táº§m&nbsp;Quan s&aacute;t&nbsp;tho&aacute;ng rá»™ng bao qu&aacute;t khu trung t&acirc;m&nbsp;Tp&nbsp;nÄƒng Ä‘á»™ng v&agrave; duy&ecirc;n d&aacute;ng n&eacute;p m&igrave;nh b&ecirc;n s&ocirc;ng&nbsp;Há»“ Ch&iacute; Minh.</p>\r\n', '1656748768_reverie SG.jpg', '<p>Reverie Saigon l&agrave; má»™t trong sá»‘ nhá»¯ng kh&aacute;ch sáº¡n 6 sao Ä‘áº§u ti&ecirc;n á»Ÿ Viá»‡t Nam v&agrave; l&agrave; má»™t trong 50 kh&aacute;ch sáº¡n tá»‘t nháº¥t tháº¿ giá»›i.</p>\r\n', '006', 1, 5, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.4880607223636!2d106.70260771394544!3d10.773881892323239!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752f46b91ff799%3A0xb004d0342a95cfa0!2zS2jDoWNoIHPhuqFuIFRoZSBSZXZlcmllIFPDoGkgR8Oybg!5e0!3m2!1svi!2s!4v1656748743263!5m2!1svi!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>'),
(26, 'InterContinental Hanoi', 3370000, 359, '<h2>Äáº²NG Cáº¤P SANG TRá»ŒNG Má»šI Táº I H&Agrave; Ná»˜I</h2>\r\n\r\n<p>InterContinental Hanoi Landmark72 l&agrave; kh&aacute;ch sáº¡n sang trá»ng cao nháº¥t H&agrave; Ná»™i vá»›i Ä‘á»™ cao hÆ¡n 346m.</p>\r\n\r\n<p>Kh&aacute;ch sáº¡n táº¡i H&agrave; Ná»™i tá»± h&agrave;o mang Ä‘áº¿n&nbsp;<a href=\"https://landmark72.intercontinental.com/vi/stay\" target=\"_blank\">358 ph&ograve;ng nghá»‰ cao cáº¥p</a>,&nbsp;<a href=\"https://landmark72.intercontinental.com/vi/dine\" target=\"_blank\">5 nh&agrave; h&agrave;ng v&agrave; bar</a>&nbsp;s&aacute;ng táº¡o vá»›i áº©m thá»±c tinh táº¿ v&agrave; táº§m nh&igrave;n to&agrave;n cáº£nh th&agrave;nh phá»‘, c&ugrave;ng cÆ¡ sá»Ÿ váº­t cháº¥t cho&nbsp;<a href=\"https://landmark72.intercontinental.com/vi/meetings\" target=\"_blank\">tá»• chá»©c sá»± kiá»‡n &amp; há»™i nghá»‹</a>&nbsp;rá»™ng nháº¥t H&agrave; Ná»™i, v&agrave;&nbsp;<a href=\"https://landmark72.intercontinental.com/vi/club-intercontinental\" target=\"_blank\">Club InterContinental Lounge</a>&nbsp;lá»›n nháº¥t Ä&ocirc;ng Nam &Aacute;. Táº¡i InterContinental Hanoi Landmark72, kh&ocirc;ng chá»‰ vá»›i nhá»¯ng tiá»‡n nghi hiá»‡n Ä‘áº¡i v&agrave; sang trá»ng, qu&yacute; kh&aacute;ch c&ograve;n Ä‘Æ°á»£c táº­n hÆ°á»Ÿng dá»‹ch vá»¥ chuy&ecirc;n nghiá»‡p, Ä‘áº³ng cáº¥p v&agrave; c&aacute; nh&acirc;n h&oacute;a tá»« Ä‘á»™i ngÅ© cá»§a ch&uacute;ng t&ocirc;i.</p>\r\n\r\n<p>D&ugrave; l&agrave; má»™t chuyáº¿n c&ocirc;ng t&aacute;c, má»™t k&igrave; nghá»‰ kh&aacute;m ph&aacute; thá»§ Ä‘&ocirc; H&agrave; Ná»™i, hay Ä‘Æ¡n giáº£n l&agrave; má»™t chuyáº¿n&nbsp;<a href=\"https://landmark72.intercontinental.com/vi/a-weekend-getaway-above-the-clouds\" target=\"_blank\">nghá»‰ dÆ°á»¡ng cuá»‘i tuáº§n</a>&nbsp;trong l&ograve;ng th&agrave;nh phá»‘, c&aacute;c&nbsp;<a href=\"https://landmark72.intercontinental.com/vi/hotel-facilities\" target=\"_blank\">tiá»‡n nghi Ä‘áº³ng cáº¥p</a>&nbsp;táº¡i InterContinental Hanoi Landmark72 cháº¯c cháº¯n sáº½ l&agrave; Ä‘iá»ƒm Ä‘áº¿n l&yacute; tÆ°á»Ÿng cho qu&yacute; kh&aacute;ch Ä‘á»ƒ thÆ° gi&atilde;n v&agrave; táº­n hÆ°á»Ÿng phong c&aacute;ch sá»‘ng InterContinental thanh lá»‹ch v&agrave; sang trá»ng.&nbsp;</p>\r\n\r\n<p>NÄƒm 2021, kh&aacute;ch sáº¡n InterContinental Hanoi Landmark72 vinh dá»± Ä‘Æ°á»£c xÆ°á»›ng t&ecirc;n trong danh s&aacute;ch&nbsp;<strong>Sá»± Lá»±a Chá»n H&agrave;ng Äáº§u Cá»§a Du Kh&aacute;ch nÄƒm 2021</strong>&nbsp;theo TripAdvisor,&nbsp;<strong>Top 30 kh&aacute;ch sáº¡n Ch&acirc;u &Aacute; (xáº¿p háº¡ng 10)</strong>&nbsp;- Cond&eacute; Nast Traveler&nbsp;Readers&#39; Choice Awards,&nbsp;<strong>Kh&aacute;ch sáº¡n&nbsp;c&ocirc;ng vá»¥&nbsp;sang trá»ng&nbsp;Ch&acirc;u &Aacute;</strong>&nbsp;- World Luxury Hotel Awards v&agrave;&nbsp;<strong>Kh&aacute;ch sáº¡n c&ocirc;ng vá»¥ h&agrave;ng Ä‘áº§u Viá»‡t Nam&nbsp;</strong>- World Travel Awards.&nbsp;B&ecirc;n cáº¡nh Ä‘&oacute;, nh&agrave; h&agrave;ng&nbsp;<a href=\"https://landmark72.intercontinental.com/stellar-steakhouse\">Stellar Steakhouse</a>&nbsp;Ä‘Æ°á»£c&nbsp;trao giáº£i thÆ°á»Ÿng&nbsp;<strong>Best of Award of Excellence</strong>&nbsp;do táº¡p ch&iacute; Wine Spectator b&igrave;nh chá»n v&agrave; Ä‘Æ°á»£c World Luxury Restaurant Awards vinh danh l&agrave;&nbsp;<strong>Nh&agrave; h&agrave;ng b&iacute;t táº¿t&nbsp;sang trá»ng Ch&acirc;u &Aacute;</strong>.&nbsp;</p>\r\n\r\n<p>Kh&aacute;m ph&aacute; c&aacute;c nh&agrave; h&agrave;ng v&agrave; bar cá»§a ch&uacute;ng t&ocirc;i:&nbsp;<a href=\"https://landmark72.intercontinental.com/vi/hive-lounge\" target=\"_blank\">The Hive Lounge</a>,&nbsp;<a href=\"https://landmark72.intercontinental.com/vi/three-spoons-restaurant\" target=\"_blank\">3 Spoons</a>,&nbsp;<a href=\"https://landmark72.intercontinental.com/vi/stellar-steakhouse\" target=\"_blank\">Stellar Steakhouse</a>,&nbsp;<a href=\"https://landmark72.intercontinental.com/vi/stellar-teppanyaki\">Stellar Teppanyaki</a>&nbsp;v&agrave;&nbsp;<a href=\"https://landmark72.intercontinental.com/vi/q-bar\" target=\"_blank\">Q Bar</a>.</p>\r\n\r\n<h3>PHONG C&Aacute;CH Sá»NG INTERCONTINENTAL Tá»ª Táº¦M CAO NHáº¤T Táº I H&Agrave; Ná»˜I</h3>\r\n\r\n<p>Táº­n hÆ°á»Ÿng tiá»‡n nghi sang trá»ng v&agrave; dá»‹ch vá»¥ Ä‘áº³ng cáº¥p 5 sao táº¡i kh&aacute;ch sáº¡n cao nháº¥t H&agrave; Ná»™i</p>\r\n\r\n<p>Chi&ecirc;m ngÆ°á»¡ng má»™t biá»ƒu tÆ°á»£ng sang trá»ng má»›i v&agrave; tráº£i nghiá»‡m phong c&aacute;ch phá»¥c vá»¥ c&aacute; nh&acirc;n h&oacute;a khi nghá»‰ táº¡i InterContinental Hanoi Landmark72, hay sá»­ dá»¥ng c&aacute;c nh&agrave; h&agrave;ng v&agrave; bar cá»§a kh&aacute;ch sáº¡n.</p>\r\n\r\n<p>Q&uacute;y kh&aacute;ch kh&ocirc;ng n&ecirc;n bá» lá»¡ tráº£i nghiá»‡m nghá»‰ dÆ°á»¡ng Ä‘áº¯m ch&igrave;m trong kh&ocirc;ng gian tr&agrave;n ngáº­p &aacute;nh s&aacute;ng, vá»›i táº§m nh&igrave;n to&agrave;n cáº£nh th&agrave;nh phá»‘, thÆ°á»Ÿng thá»©c tiá»‡c Tr&agrave; Chiá»u Ä‘Æ°á»£c y&ecirc;u th&iacute;ch táº¡i&nbsp;<a href=\"https://landmark72.intercontinental.com/vi/hive-lounge\" target=\"_blank\">The Hive Lounge</a>, áº©m thá»±c phong ph&uacute; tá»« 3 báº¿p má»Ÿ táº¡i&nbsp;<a href=\"https://landmark72.intercontinental.com/vi/three-spoons-restaurant\" target=\"_blank\">3 Spoons</a>, thá»‹t b&ograve; l&ecirc;n tuá»•i Äƒn k&egrave;m ho&agrave;n háº£o c&ugrave;ng rÆ°á»£u vang thÆ°á»£ng háº¡ng táº¡i&nbsp;<a href=\"https://landmark72.intercontinental.com/vi/stellar-steakhouse\" target=\"_blank\">Stellar Steakhouse</a>, nghá»‡ thuáº­t nÆ°á»›ng Nháº­t nguy&ecirc;n báº£n táº¡i&nbsp;<a href=\"https://landmark72.intercontinental.com/vi/stellar-teppanyaki\" target=\"_blank\">Stellar Teppanyaki</a>&nbsp;hay nhá»¯ng lá»±a chá»n cocktails th&uacute; vá»‹, c&oacute; má»™t kh&ocirc;ng hai táº¡i&nbsp;<a href=\"https://landmark72.intercontinental.com/vi/q-bar\" target=\"_blank\">Q Bar</a>.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"áº¨m thá»±c tinh táº¿\" src=\"https://landmark72.intercontinental.com/uploads/landmark72/homepage/B0011854.jpg\" /></p>\r\n\r\n<p><a href=\"https://www.landmark72.intercontinental.com/vi/dine\" target=\"_blank\">áº¨m thá»±c tinh táº¿</a></p>\r\n\r\n<p><img alt=\"Luxury Accommodation\" src=\"https://landmark72.intercontinental.com/uploads/landmark72/homepage/room_19-v2.jpg\" /></p>\r\n\r\n<p><a href=\"https://www.landmark72.intercontinental.com/vi/stay\" target=\"_blank\">Tiá»‡n nghi ph&ograve;ng nghá»‰ sang trá»ng</a></p>\r\n\r\n<p><img alt=\"WELCOME TO INTERCONTINENTAL HANOI LANDMARK72\" src=\"https://landmark72.intercontinental.com/uploads/landmark72/homepage/B0008903-v2.jpg\" /></p>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<p>&nbsp;</p>\r\n', '1656748597_Landmark72 HN.jpg', '<p>Táº¥t cáº£ c&aacute;c ph&ograve;ng v&agrave; suites Ä‘á»u c&oacute; cá»­a k&iacute;nh th&ocirc;ng suá»‘t, má»Ÿ ra táº§m nh&igrave;n to&agrave;n cáº£nh th&agrave;nh phá»‘ H&agrave; Ná»™i tá»« tr&ecirc;n cao</p>\r\n', '007', 1, 7, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.3954698429934!2d105.78150581411978!3d21.016856586004813!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab54df748467%3A0xbce19e4662752253!2sInterContinental%20Hanoi%20Landmark!5e0!3m2!1svi!2s!4v1656748580031!5m2!1svi!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>');
INSERT INTO `tb_hotel` (`ID_Hotel`, `TenHotel`, `Giaphong`, `Soluong`, `Noidung`, `Hinhanh`, `Tomtat`, `MaHotel`, `Tinhtrang`, `ID_Tinh`, `HTML_map`) VALUES
(27, 'The Anam', 7200000, 207, '<p><em><strong>The Anam Resort Nha Trang</strong></em>, khu nghá»‰ dÆ°á»¡ng Ä‘áº³ng cáº¥p 5 sao náº±m b&ecirc;n b&atilde;i biá»ƒn B&atilde;i D&agrave;i, ph&iacute;a báº¯c cá»§a b&aacute;n Ä‘áº£o Cam Ranh. L&agrave; sá»± káº¿t há»£p tinh táº¿ giá»¯a váº» Ä‘áº¹p mang phong c&aacute;ch cá»• Ä‘iá»ƒn Ph&aacute;p v&agrave; váº» duy&ecirc;n d&aacute;ng mang hÆ¡i hÆ°á»›ng truyá»n thá»‘ng Viá»‡t Nam.&nbsp;<strong>The Anam</strong>&nbsp;ná»•i l&ecirc;n nhÆ° má»™t chá»‘n thi&ecirc;n Ä‘Æ°á»ng giá»¯a vá»‹nh Cam Ranh. L&agrave; má»™t lá»±a chá»n s&aacute;ng suá»‘t cho nhá»¯ng chuyáº¿n Ä‘i nghá»‰ dÆ°á»¡ng cao cáº¥p.</p>\r\n\r\n<p><strong>The Anam</strong>, th&agrave;nh vi&ecirc;n cá»§a World Luxury by Worldhotels, cung cáº¥p chá»— á»Ÿ sang trá»ng Ä‘Æ°á»£c bao bá»c bá»Ÿi khu vÆ°á»n kiá»ƒng xanh m&aacute;t. Nhá»¯ng m&aacute;i lá»£p theo phong c&aacute;ch nh&agrave; rÆ°á»ng Huáº¿, Ä‘&egrave;n lá»“ng treo cao, chum Ä‘á»±ng nÆ°á»›c cá»¡ lá»›n, há»“ bÆ¡i vá»›i nhá»¯ng Ä‘Æ°á»ng n&eacute;t thiáº¿t káº¿ má»m máº¡i. Nhá»¯ng ná»n nh&agrave; l&aacute;t gá»— cao cáº¥p v&agrave; nhá»¯ng lá»‘i Ä‘i l&aacute;t Ä‘&aacute; rá»£p m&aacute;t b&oacute;ng c&acirc;y.&nbsp; Táº¥t cáº£ Ä‘á»u g&oacute;p pháº§n t&ocirc;n l&ecirc;n váº» l&atilde;ng máº¡n cá»§a má»™t v&ugrave;ng kh&ocirc;ng gian tuyá»‡t Ä‘áº¹p.</p>\r\n\r\n<p><img alt=\"The-Anam-Resort-Cam-ranh-Nha-Trang\" src=\"http://datphongresort.com/wp-content/uploads/2019/04/khu-nghi-duong-the-anam-nha-trang-66-800x450.jpg\" style=\"height:455px; width:800px\" /></p>\r\n\r\n<p><img alt=\"The-Anam-Resort-Cam-ranh-Nha-Trang-review\" src=\"http://datphongresort.com/wp-content/uploads/2019/04/khu-nghi-duong-the-anam-nha-trang-65-800x450.jpg\" style=\"height:450px; width:800px\" /></p>\r\n\r\n<p><img alt=\"The-Anam-Resort-Cam-ranh-Nha-Trang-gia-phong\" src=\"http://datphongresort.com/wp-content/uploads/2019/04/khu-nghi-duong-the-anam-nha-trang-72-800x450.jpg\" style=\"height:450px; width:800px\" />&nbsp;&nbsp;Khu nghá»‰ dÆ°á»¡ng 12ha náº±m n&eacute;p m&igrave;nh dÆ°á»›i gáº§n 3000 c&acirc;y dá»«a c&oacute; t&aacute;n l&aacute; xanh um. Vá»›i b&atilde;i biá»ƒn ri&ecirc;ng d&agrave;i 300m nh&igrave;n ra biá»ƒn Ä‘&ocirc;ng.&nbsp;<strong>The Anam</strong>&nbsp;sáºµn s&agrave;ng phá»¥c vá»¥ kh&aacute;ch h&agrave;ng vá»›i&nbsp;<em><strong>117 villas, 96 ph&ograve;ng kh&aacute;ch</strong></em>&nbsp;Ä‘áº§y Ä‘á»§ tiá»‡n nghi Ä‘áº³ng cáº¥p quá»‘c táº¿. NhÆ°&nbsp;<strong><em>khu Spa trá»‹ liá»‡u, 3 nh&agrave; h&agrave;ng, 2 qu&aacute;n bar, ph&ograve;ng há»™i nghá»‹, ph&ograve;ng tiá»‡c, ráº¡p chiáº¿u phim 3D, c&acirc;u láº¡c bá»™ d&agrave;nh cho thiáº¿u nhi, bá»ƒ bÆ¡i lá»›n.</em></strong></p>\r\n\r\n<p>Táº¥t cáº£ c&aacute;c ph&ograve;ng táº¡i&nbsp;<strong>The Anam</strong>&nbsp;Ä‘á»u&nbsp;<strong><em>hÆ°á»›ng vá» ph&iacute;a biá»ƒn, nhá»¯ng mÅ©i c&aacute;t v&agrave; c&aacute;c há»“ bÆ¡i</em></strong>&nbsp;Ä‘Æ°á»£c thiáº¿t káº¿ háº¿t sá»©c cáº§u ká»³ v&agrave; tinh táº¿.</p>\r\n', '1656748365_Anam.jpg', '<p>Äáº§u th&aacute;ng 10/2020 khu nghá»‰ dÆ°á»¡ng n&agrave;y Ä‘&atilde; vÆ°Æ¡n l&ecirc;n vá»‹ tr&iacute; sá»‘ 1 Viá»‡t Nam v&agrave; sá»‘ 4 trong top 30 khu nghá»‰ dÆ°á»¡ng xuáº¥t sáº¯c nháº¥t ch&amp', '008', 1, 8, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3901.171318775821!2d109.18990161396191!3d12.100421491431593!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31708ab3b7b039b7%3A0x231eff514eccac69!2sThe%20Anam!5e0!3m2!1svi!2s!4v1656748351657!5m2!1svi!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>'),
(28, 'Intercontinental ÄÃ  Náºµng ', 10000000, 310, '<h2><big><strong>THI&Ecirc;N ÄÆ¯á»œNG NGHá»ˆ DÆ¯á» NG RI&Ecirc;NG TÆ¯</strong></big></h2>\r\n\r\n<p>Tráº£i nghiá»‡m ká»³ nghá»‰ dÆ°á»¡ng ri&ecirc;ng tÆ° miá»n nhiá»‡t Ä‘á»›i vá»›i náº¯ng v&agrave;ng, biá»ƒn xanh v&agrave; c&aacute;t tráº¯ng táº¡i má»™t trong nhá»¯ng khu nghá»‰ dÆ°á»¡ng biá»ƒn Ä‘áº¹p nháº¥t Viá»‡t Nam. C&ograve;n g&igrave; tuyá»‡t vá»i hÆ¡n khi Ä‘Æ°á»£c Ä‘áº¯m m&igrave;nh v&agrave;o trong trong tháº¿ giá»›i thi&ecirc;n nhi&ecirc;n hoang sÆ¡ b&ecirc;n vá»‹nh biá»ƒn ri&ecirc;ng tÆ° v&agrave; cáº£m nháº­n phong c&aacute;ch thiáº¿t káº¿ Ä‘á»™c Ä‘&aacute;o cá»§a khu nghá»‰ dÆ°á»¡ng l&agrave; sá»± káº¿t há»£p ho&agrave;n háº£o giá»¯a vÄƒn h&oacute;a Viá»‡t Nam truyá»n thá»‘ng v&agrave; lá»‘i kiáº¿n tr&uacute;c Ä‘Æ°Æ¡ng Ä‘áº¡i. H&atilde;y tráº£i nghiá»‡m áº©m thá»±c tinh t&uacute;y v&agrave; táº­n hÆ°á»Ÿng dá»‹ch vá»¥ táº­n t&acirc;m tá»« Ä‘á»™i ngÅ© nh&acirc;n vi&ecirc;n ngÆ°á»i Ä‘á»‹a phÆ°Æ¡ng.</p>\r\n\r\n<p>Äáº·c biá»‡t, chÆ°Æ¡ng tr&igrave;nh to&agrave;n cáº§u IHG&#39;s Clean Promise vá» sá»©c khá»e v&agrave; an to&agrave;n cá»§a ch&uacute;ng t&ocirc;i sáº½ Ä‘áº£m báº£o cho báº¡n má»™t ká»³ nghá»‰ dÆ°á»¡ng an to&agrave;n tuyá»‡t Ä‘á»‘i.</p>\r\n\r\n<p>Khu nghá»‰ dÆ°á»¡ng hiá»‡n Ä‘ang trong qu&aacute; tr&igrave;nh n&acirc;ng cáº¥p v&agrave; báº£o tr&igrave;. Do Ä‘&oacute;, má»™t sá»‘ khu vá»±c c&oacute; thá»ƒ sáº½ bá»‹ áº£nh hÆ°á»Ÿng bá»Ÿi tiáº¿ng á»“n. Ch&uacute;ng t&ocirc;i mong Qu&yacute; kh&aacute;ch th&ocirc;ng cáº£m cho sá»± báº¥t tiá»‡n n&agrave;y. Vui l&ograve;ng li&ecirc;n há»‡ vá»›i Khu nghá»‰ dÆ°á»¡ng náº¿u Qu&yacute; kh&aacute;ch cáº§n th&ecirc;m th&ocirc;ng tin hoáº·c báº¥t ká»³ há»— trá»£ n&agrave;o.</p>\r\n', '1656748172_Danang InterCon.jpg', '<p>Tá»a láº¡c biá»‡t láº­p táº¡i B&atilde;i Báº¯c thuá»™c B&aacute;n Ä‘áº£o SÆ¡n Tr&agrave;. NÆ¡i Ä‘&acirc;y c&aacute;ch trung t&acirc;m th&agrave;nh phá»‘ Ä&agrave; Náºµng khoáº£ng 13 km</p>\r\n', '009', 1, 9, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1916.4623055464317!2d108.3056693578667!3d16.12120029721222!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31423d9513ec9199%3A0x5ade8a2bd4daad0d!2sInterContinental%20%C4%90%C3%A0%20N%E1%BA%B5ng%20Sun%20Peninsula%20Resort!5e0!3m2!1svi!2s!4v1656748146883!5m2!1svi!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_hoteler`
--

CREATE TABLE `tb_hoteler` (
  `ID_Hoteler` int(11) NOT NULL,
  `Ma_Hotel` int(11) NOT NULL,
  `Password` char(50) NOT NULL,
  `Status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tb_hoteler`
--

INSERT INTO `tb_hoteler` (`ID_Hoteler`, `Ma_Hotel`, `Password`, `Status`) VALUES
(1, 20, '23092002', 1),
(2, 27, '23092002', 1),
(3, 23, '23092002', 1),
(4, 24, '23092002', 1),
(5, 25, '23092002', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_khachhang`
--

CREATE TABLE `tb_khachhang` (
  `ID_Khachhang` int(11) NOT NULL,
  `Tenkhachhang` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Diachi` varchar(100) NOT NULL,
  `Matkhau` char(10) NOT NULL,
  `SDT` char(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tb_khachhang`
--

INSERT INTO `tb_khachhang` (`ID_Khachhang`, `Tenkhachhang`, `Email`, `Diachi`, `Matkhau`, `SDT`) VALUES
(1, 'NgÃ´ VÄƒn HÆ°ng', 'hungnnvh@gmail.com', 'Thá»§ Dáº§u Má»™t, BÃ¬nh DÆ°Æ¡ng', '23092002', '0337039050'),
(2, 'NgÃ´ VÄƒn HÆ°ng', 'hungnnvh@gmail.com', 'Thá»§ Dáº§u Má»™t, BÃ¬nh DÆ°Æ¡ng', '23092002', '0337039050'),
(3, 'NgÃ´ VÄƒn HÆ°ng', 'hungnnvh@gmail.com', 'Thá»§ Dáº§u Má»™t, BÃ¬nh DÆ°Æ¡ng', '23092002', '0337039050'),
(4, 'NgÃ´ VÄƒn HÆ°ng', 'hungnnvh@gmail.com', 'Thá»§ Dáº§u Má»™t, BÃ¬nh DÆ°Æ¡ng', '23092002', '0337039050'),
(5, '123', 'aaa@gmail.com', 'Thá»§ Dáº§u Má»™t, BÃ¬nh DÆ°Æ¡ng', '123', '0337039050'),
(6, '123', 'aaa@gmail.com', 'Thá»§ Dáº§u Má»™t, BÃ¬nh DÆ°Æ¡ng', '123', '0337039050'),
(7, '', 'hfdfjs', '', '23092002', ''),
(8, '', 'dgfdsghs', '', '23092002', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_ratehotel`
--

CREATE TABLE `tb_ratehotel` (
  `ID_rate` int(11) NOT NULL,
  `ID_Hotel` int(11) NOT NULL,
  `numberstar` int(2) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tb_ratehotel`
--

INSERT INTO `tb_ratehotel` (`ID_rate`, `ID_Hotel`, `numberstar`, `Username`, `Comment`) VALUES
(1, 24, 2, 'Ngô Văn Hưng', 'Đẹp'),
(2, 24, 5, 'Ngô Văn Hưng', 'Đẹp'),
(5, 24, 5, 'NgÃ´ VÄƒn HÆ°ng', 'Good job');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`ID_Admin`);

--
-- Chỉ mục cho bảng `tb_chitietdatphong`
--
ALTER TABLE `tb_chitietdatphong`
  ADD PRIMARY KEY (`id_chitiet`);

--
-- Chỉ mục cho bảng `tb_chitiethotel`
--
ALTER TABLE `tb_chitiethotel`
  ADD PRIMARY KEY (`ID_HotelCT`);

--
-- Chỉ mục cho bảng `tb_danhmuchotel`
--
ALTER TABLE `tb_danhmuchotel`
  ADD PRIMARY KEY (`ID_Tinh`);

--
-- Chỉ mục cho bảng `tb_datphong`
--
ALTER TABLE `tb_datphong`
  ADD PRIMARY KEY (`id_Don`);

--
-- Chỉ mục cho bảng `tb_hotel`
--
ALTER TABLE `tb_hotel`
  ADD PRIMARY KEY (`ID_Hotel`);

--
-- Chỉ mục cho bảng `tb_hoteler`
--
ALTER TABLE `tb_hoteler`
  ADD PRIMARY KEY (`ID_Hoteler`);

--
-- Chỉ mục cho bảng `tb_khachhang`
--
ALTER TABLE `tb_khachhang`
  ADD PRIMARY KEY (`ID_Khachhang`);

--
-- Chỉ mục cho bảng `tb_ratehotel`
--
ALTER TABLE `tb_ratehotel`
  ADD PRIMARY KEY (`ID_rate`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `ID_Admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tb_chitietdatphong`
--
ALTER TABLE `tb_chitietdatphong`
  MODIFY `id_chitiet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `tb_chitiethotel`
--
ALTER TABLE `tb_chitiethotel`
  MODIFY `ID_HotelCT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `tb_danhmuchotel`
--
ALTER TABLE `tb_danhmuchotel`
  MODIFY `ID_Tinh` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `tb_datphong`
--
ALTER TABLE `tb_datphong`
  MODIFY `id_Don` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `tb_hotel`
--
ALTER TABLE `tb_hotel`
  MODIFY `ID_Hotel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `tb_hoteler`
--
ALTER TABLE `tb_hoteler`
  MODIFY `ID_Hoteler` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tb_khachhang`
--
ALTER TABLE `tb_khachhang`
  MODIFY `ID_Khachhang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tb_ratehotel`
--
ALTER TABLE `tb_ratehotel`
  MODIFY `ID_rate` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
