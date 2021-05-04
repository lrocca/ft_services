-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: May 04, 2021 at 03:59 PM
-- Server version: 10.5.9-MariaDB
-- PHP Version: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wordpress`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-04-16 14:03:36', '2021-04-16 14:03:36', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2021-04-16 14:03:36', '2021-04-16 14:03:36', '', 0, 'http://localhost:5050/?p=1', 0, 'post', '', 1),
(5, 1, '2021-04-16 14:11:38', '2021-04-16 14:11:38', '<!-- wp:heading {\"align\":\"wide\",\"style\":{\"typography\":{\"lineHeight\":\"1.1\"}},\"className\":\"has-text-align-wide\",\"fontSize\":\"gigantic\"} -->\n<h2 class=\"alignwide has-text-align-wide has-gigantic-font-size\" style=\"line-height:1.1\">Kubernetes clustering is so much fun</h2>\n<!-- /wp:heading -->\n\n<!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:cover {\"customGradient\":\"linear-gradient(135deg,rgb(6,147,227) 0%,rgb(0,113,161) 0%,rgb(155,81,224) 100%)\",\"contentPosition\":\"center center\",\"align\":\"wide\",\"className\":\"is-style-default\"} -->\n<div class=\"wp-block-cover alignwide has-background-dim has-background-gradient is-style-default\" style=\"background:linear-gradient(135deg,rgb(6,147,227) 0%,rgb(0,113,161) 0%,rgb(155,81,224) 100%)\"><div class=\"wp-block-cover__inner-container\"><!-- wp:paragraph {\"style\":{\"typography\":{\"fontSize\":64,\"lineHeight\":\"1.2\"}}} -->\n<p style=\"font-size:64px;line-height:1.2\">looking for the database?</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph {\"style\":{\"typography\":{\"fontSize\":32}}} -->\n<p style=\"font-size:32px\"><strong>no problem</strong></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"center\"} -->\n<div class=\"wp-block-column is-vertically-aligned-center\"><!-- wp:paragraph -->\n<p>&gt;&gt;&gt; <a href=\"http://localhost/phpmyadmin\" data-type=\"URL\" data-id=\"localhost/phpmyadmin\">/phpmyadmin</a></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div></div>\n<!-- /wp:cover -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'ft_services', '', 'publish', 'closed', 'closed', '', 'create-your-website-with-blocks', '', '', '2021-04-16 14:29:21', '2021-04-16 14:29:21', '', 0, 'http://localhost:5050/?page_id=5', 0, 'page', '', 0),
(6, 1, '2021-04-16 14:11:38', '2021-04-16 14:11:38', '<!-- wp:paragraph -->\n<p>Have a look at my awesome 😎 project: <a href=\"https://github.com/leeoocca/awesome-42/\" data-type=\"URL\" data-id=\"https://github.com/leeoocca/awesome-42/\">awesome-42</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>You can now continue the evaluation.</p>\n<!-- /wp:paragraph -->', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2021-05-04 15:21:51', '2021-05-04 15:21:51', '', 0, 'http://localhost:5050/?page_id=6', 0, 'page', '', 0),
(8, 1, '2021-04-16 14:11:38', '2021-04-16 14:11:38', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2021-04-16 14:11:38', '2021-04-16 14:11:38', '', 0, 'http://localhost:5050/?page_id=8', 0, 'page', '', 0),
(14, 1, '2021-05-04 15:57:59', '2021-04-16 14:11:38', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2021-05-04 15:57:59', '2021-05-04 15:57:59', '', 0, 'http://localhost:5050/?p=14', 1, 'nav_menu_item', '', 0),
(22, 1, '2021-04-16 14:11:38', '2021-04-16 14:11:38', '* {\n        font-family: ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, \"Liberation Mono\", \"Courier New\", monospace;\n}\n.site-title, .site-name {\n    text-transform: lowercase !important;\n}\n\n.site-name:after {\n        content: \"by lrocca\";\n}\n\n.powered-by {\n      display: none;\n}', 'twentytwentyone', '', 'publish', 'closed', 'closed', '', 'twentytwentyone', '', '', '2021-04-16 14:25:41', '2021-04-16 14:25:41', '', 0, 'http://localhost:5050/?p=22', 0, 'custom_css', '', 0),
(35, 3, '2021-05-04 15:13:58', '2021-05-04 15:13:58', '<!-- wp:paragraph -->\n<p>How I Hate the Night, also known as Marvin\'s Lullaby, is \"a short dolorous ditty of no tone, or indeed tune.\"</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:verse -->\n<pre class=\"wp-block-verse\">Now the world has gone to bed,\nDarkness won\'t engulf my head,\nI can see by infra-red,\nHow I hate the night,\nNow I lay me down to sleep,\nTry to count electric sheep,\nSweet dream wishes you can keep,\nHow I hate the night.</pre>\n<!-- /wp:verse -->\n\n<!-- wp:paragraph -->\n<p><a href=\"https://hitchhikers.fandom.com/wiki/Marvin#Marvin.27s_Lullaby\" data-type=\"URL\" data-id=\"https://hitchhikers.fandom.com/wiki/Marvin#Marvin.27s_Lullaby\">Source</a></p>\n<!-- /wp:paragraph -->', 'Marvin\'s Lullaby', '', 'publish', 'open', 'open', '', 'marvins-lullaby', '', '', '2021-05-04 15:14:21', '2021-05-04 15:14:21', '', 0, 'http://localhost:5050/?p=35', 0, 'post', '', 0),
(37, 4, '2021-05-04 15:17:18', '2021-05-04 15:17:18', '<!-- wp:html -->\n<blockquote class=\"twitter-tweet\"><p lang=\"en\" dir=\"ltr\">Have a good Sunday <a href=\"https://twitter.com/hashtag/SundayMotivation?src=hash&amp;ref_src=twsrc%5Etfw\">#SundayMotivation</a> <a href=\"https://t.co/hetTNFAeSY\">pic.twitter.com/hetTNFAeSY</a></p>&mdash; Norminet (@42norminet) <a href=\"https://twitter.com/42norminet/status/1104695847550365697?ref_src=twsrc%5Etfw\">March 10, 2019</a></blockquote> <script async src=\"https://platform.twitter.com/widgets.js\" charset=\"utf-8\"></script>\n<!-- /wp:html -->', 'I\'m a cat', '', 'publish', 'open', 'open', '', 'im-a-cat', '', '', '2021-05-04 15:19:51', '2021-05-04 15:19:51', '', 0, 'http://localhost:5050/?p=37', 0, 'post', '', 0),
(43, 1, '2021-05-04 15:57:59', '2021-05-04 15:57:59', ' ', '', '', 'publish', 'closed', 'closed', '', '43', '', '', '2021-05-04 15:57:59', '2021-05-04 15:57:59', '', 0, 'http://localhost:5050/?p=43', 3, 'nav_menu_item', '', 0),
(44, 1, '2021-05-04 15:57:59', '2021-05-04 15:57:59', ' ', '', '', 'publish', 'closed', 'closed', '', '44', '', '', '2021-05-04 15:57:59', '2021-05-04 15:57:59', '', 0, 'http://localhost:5050/?p=44', 2, 'nav_menu_item', '', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
