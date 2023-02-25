-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 24, 2023 at 05:18 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `btth01_cse485`
--

-- --------------------------------------------------------

--
-- Table structure for table `baiviet`
--

CREATE TABLE `baiviet` (
  `ma_bviet` int UNSIGNED NOT NULL,
  `tieude` varchar(200) NOT NULL,
  `ten_bhat` varchar(100) NOT NULL,
  `ma_tloai` int UNSIGNED NOT NULL,
  `tomtat` text NOT NULL,
  `noidung` text,
  `ma_tgia` int UNSIGNED NOT NULL,
  `ngayviet` datetime NOT NULL DEFAULT '2023-02-24 00:00:00',
  `hinhanh` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `baiviet`
--

INSERT INTO `baiviet` (`ma_bviet`, `tieude`, `ten_bhat`, `ma_tloai`, `tomtat`, `noidung`, `ma_tgia`, `ngayviet`, `hinhanh`) VALUES
(1, 'Lòng mẹ', 'Lòng mẹ', 2, 'Và mẹ ơi đừng khóc nhé! Cả đời này mẹ đã khóc nhiều lắm rồi, hãy cười lên vì con đã trưởng thành! Con sẽ lại về dậy sớm nấu cơm cho mẹ, nấu nước cho mẹ tắm như ngày xưa. “Dù cho vai nắng nhưng lòng thương chẳng nhạt màu, vẫn mơ quay về vui vầy dưới bóng mẹ yêu”', NULL, 1, '2012-07-23 00:00:00', NULL),
(2, 'Cảm ơn em đã rời xa anh', 'Vết mưa', 2, 'Cảm ơn em đã cho anh những tháng ngày hạnh phúc, cho anh biết yêu và được yêu. Em cho anh được nếm trải hương vị ngọt ngào của tình yêu nhưng cũng đầy đau khổ và nước mắt. Những tháng ngày đó có lẽ suốt cuộc đời anh không bao giờ quên', NULL, 3, '2012-02-12 00:00:00', NULL),
(3, 'Cuộc đời có mấy ngày mai?', 'Phôi pha', 2, 'Đêm nay, trời quang mây tạnh, trong người nghe hoang vắng và tôi ngồi đây “Ôm lòng đêm, Nhìn vầng trăng mới về” mà ngậm ngùi “Nhớ chân giang hồ. Ôi phù du, từng tuổi xuân đã già”', NULL, 4, '2014-03-13 00:00:00', NULL),
(4, 'Quê tôi!', 'Quê hương', 5, 'Quê hương là gì mà chở đầy kí ức nhỏ xinh. Có đám trẻ nô đùa bên nhau dưới gốc ổi nhà bà Năm giữa trưa nắng gắt chỉ để chờ bà đi vắng là hái trộm. Có hai anh em tôi bì bõm lội sình bắt cua đem về nhà cho mẹ nấu canh, nấu cháo… Có ba chị em tôi lục đục tự nấu ăn khi mẹ vắng nhà. Có anh tôi luôn dắt tôi đi cùng đường ngõ xóm chỉ để em được vui. Có cả những trận cãi nhau nảy lửa của ba anh em nữa…', NULL, 5, '2014-02-20 00:00:00', NULL),
(5, 'Đất nước', 'Đất nước', 5, 'Đã bao nhiêu lần tôi tự hỏi: liệu trên Thế giới này có nơi nào chiến tranh tang thương mà lại rất đổi anh hùng như nước mình không? Liệu có mảnh đất nào mà mỗi tấc đất hôm nay đã thấm máu xương của những thế hệ đi trước nhiều như nước mình không? Và, liệu có một đất nước nào lại có nhiều bà mẹ đau khổ nhưng cũng hết sức gan góc như đất nước mình không?', NULL, 1, '2010-05-25 00:00:00', NULL),
(6, 'Hard Rock Hallelujah', 'Hard Rock Hallelujah', 7, 'Những linh hồn đang lạc lối, mù quáng mất phương hướng trong cõi trần gian đầy nghiệt ngã hãy nên lắng nghe \"Hard Rock Hallelujah\" để có thể quên tất cả mọi thứ để tìm về đúng bản chất sâu thẳm nhất trong tâm hồn chính mình!', NULL, 6, '2013-09-12 00:00:00', NULL),
(7, 'The Unforgiven', 'The Unforgiven', 7, 'Lâu lắm rồi mới nghe lại The Unforgiven II, vì bài này không phải là bài mà tôi thích. Anh bạn tôi lúc trước, đi đâu cũng nghêu ngao bài này ấy, chỉ tại vì hắn đang... thất tình mà lị. Mà sao Metallica có The Unforgiven rồi lại có thêm bài này chi nữa vậy không biết nữa, làm cho tôi cảm thấy hình như hơi bị đúng so với tâm trạng của tôi lúc này.', NULL, 1, '2010-05-25 00:00:00', NULL),
(8, 'Nơi tình yêu bắt đầu', 'Nơi tình yêu bắt đầu', 1, 'Nhiều người sẽ nghĩ làm gì có yêu nhất và làm gì có yêu mãi. Ừ! Chẳng có gì là mãi mãi cả, vì chúng ta không trường tồn vĩnh cửu', NULL, 1, '2014-02-03 00:00:00', NULL),
(9, 'Love Me Like There’s No Tomorrow', 'Love Me Like There’s No Tomorrow', 8, 'Nếu ai đã từng yêu Queen, yêu cái chất giọng cao, sắc sảo như một vết cắt thật ngọt ẩn giấu bao cảm xúc mãnh liệt của Freddie chắc không thể không \"điêu đứng\" mỗi khi nghe Love Me Like There’s No Tomorrow.', NULL, 1, '2013-02-26 00:00:00', NULL),
(10, 'I\'m stronger', 'I\'m stronger', 7, 'Em không phải là người giỏi giấu cảm xúc, nhưng em lại là người giỏi đoán biết cảm xúc của người khác vậy nên đừng cố nói nhớ em, rằng mọi thứ chỉ là do hoàn cảnh. Và cũng đừng dối em rằng anh đã từng yêu em. Em nhắm mắt cũng cảm nhận được mà, thật đấy', NULL, 2, '2013-08-21 00:00:00', NULL),
(11, 'Ôi Cuộc Sống Mến Thương', 'Ôi Cuộc Sống Mến Thương', 5, 'Có một câu nói như thế này \"Âm nhạc là một cái gì khác lạ mà hầu như tôi muốn nói nó là một phép thần diệu.Vì nó đứng giữa tư tưởng và hiện tượng, tinh thần và vật chất, mọi thứ trung gian mơ hồ thế đó mà không là thế đó giữa các sự vật mà âm nhạc hòa giải\"', NULL, 2, '2011-10-09 00:00:00', NULL),
(12, 'Cây và gió', 'Cây và gió', 7, 'Em và anh, hai đứa quen nhau thật tình cờ. Lời hát của anh từ bài hát “Cây và gió” đã làm tâm hồn em xao động. Nhưng sự thật phũ phàng rằng em chưa bao giờ nói cho anh biết những suy nghĩ tận sâu trong tim mình. Bởi vì em nhút nhát, em không dám đối mặt với thực tế khắc nghiệt, hay thực ra em không dám đối diện với chính mình.', NULL, 7, '2013-12-05 00:00:00', NULL),
(13, 'Như một cách tạ ơn đời', 'Người thầy', 2, 'Ánh nắng cuối ngày rồi cũng sẽ tắt, dòng sông con đò rồi cũng sẽ rẽ sang một hướng khác. Nhưng việc trồng người luôn cảm thụ với chuyến đò ngang, cứ tần tảo đưa rồi lặng lẽ quay về đưa sang. Con đò năm xưa của Thầy nặng trĩu yêu thương, hy sinh thầm lặng.', NULL, 8, '2014-01-02 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `query` text COLLATE utf8mb3_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `col_length` text COLLATE utf8mb3_bin,
  `col_collation` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8mb3_bin DEFAULT '',
  `col_default` text COLLATE utf8mb3_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8mb3_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `settings_data` text COLLATE utf8mb3_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8mb3_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `template_data` text COLLATE utf8mb3_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Saved export templates';

--
-- Dumping data for table `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'table', ' BTTH01_CSE485', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"allrows\":\"1\",\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@TABLE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `tables` text COLLATE utf8mb3_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8mb3_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8mb3_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `page_nr` int UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `tables` text COLLATE utf8mb3_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"btth01_cse485\",\"table\":\"baiviet\"},{\"db\":\"btth01_cse485\",\"table\":\"baivet\"},{\"db\":\"btth01_cse485\",\"table\":\"theloai\"},{\"db\":\"btth01_cse485\",\"table\":\"tacgia\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8mb3_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `pdf_page_number` int NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8mb3_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `prefs` text COLLATE utf8mb3_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `version` int UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8mb3_bin NOT NULL,
  `schema_sql` text COLLATE utf8mb3_bin,
  `data_sql` longtext COLLATE utf8mb3_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8mb3_bin DEFAULT NULL,
  `tracking_active` int UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8mb3_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2023-02-24 16:12:05', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8mb3_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8mb3_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8mb3_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='Users and their assignments to user groups';

-- --------------------------------------------------------

--
-- Table structure for table `tacgia`
--

CREATE TABLE `tacgia` (
  `ma_tgia` int UNSIGNED NOT NULL,
  `ten_tgia` varchar(100) NOT NULL,
  `hinh_tgia` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tacgia`
--

INSERT INTO `tacgia` (`ma_tgia`, `ten_tgia`, `hinh_tgia`) VALUES
(1, 'Nhacvietplus', NULL),
(2, 'Sưu tầm', NULL),
(3, 'Sandy', NULL),
(4, 'Lê Trung Ngân', NULL),
(5, 'Khánh Ngọc', NULL),
(6, 'Night Stalker', NULL),
(7, 'Phạm Phương Anh', NULL),
(8, 'Tâm tình', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `theloai`
--

CREATE TABLE `theloai` (
  `ma_tloai` int UNSIGNED NOT NULL,
  `ten_tloai` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `theloai`
--

INSERT INTO `theloai` (`ma_tloai`, `ten_tloai`) VALUES
(1, 'Nhạc trẻ'),
(2, 'Nhạc trữ tình'),
(3, 'Nhạc cách mạng'),
(4, 'Nhạc thiếu nhi'),
(5, 'Nhạc quê hương'),
(6, 'POP'),
(7, 'Rock'),
(8, 'R&B');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `baiviet`
--
ALTER TABLE `baiviet`
  ADD PRIMARY KEY (`ma_bviet`),
  ADD KEY `ma_tloai_idx` (`ma_tloai`),
  ADD KEY `ma_tgia_idx` (`ma_tgia`);

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- Indexes for table `tacgia`
--
ALTER TABLE `tacgia`
  ADD PRIMARY KEY (`ma_tgia`);

--
-- Indexes for table `theloai`
--
ALTER TABLE `theloai`
  ADD PRIMARY KEY (`ma_tloai`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `baiviet`
--
ALTER TABLE `baiviet`
  ADD CONSTRAINT `ma_tgia` FOREIGN KEY (`ma_tgia`) REFERENCES `tacgia` (`ma_tgia`),
  ADD CONSTRAINT `ma_tloai` FOREIGN KEY (`ma_tloai`) REFERENCES `theloai` (`ma_tloai`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
