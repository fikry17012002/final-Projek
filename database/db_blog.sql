-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2022 at 05:39 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `id` int(11) NOT NULL,
  `album_name` varchar(100) NOT NULL,
  `album_seo` varchar(100) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `is_active` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`id`, `album_name`, `album_seo`, `photo`, `is_active`) VALUES
(17, 'Album 1', 'album-1', 'album-1-1581343722711.jpg', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `title`, `photo`) VALUES
(5, 'Home', '3f0edd4a3de4375c41038e0ccf300b3b.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `is_active` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category_name`, `slug`, `is_active`) VALUES
(7, 'Berita Bola', 'berita-bola', 'Y'),
(8, 'Berita Dunia', 'berita-dunia', 'Y'),
(9, 'Edukasi', 'edukasi', 'Y'),
(10, 'Travel', 'travel', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `contact_name` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `contact_name`, `description`) VALUES
(1, 'About Me', 'Ini adalah project portal berita dan artikel sederhana, yang bertujuan membantu para programmer memahami dalam pembuatan projects serta penguasaan dalam bahasa pemrograman, library dan framework.');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `id_album` int(11) NOT NULL,
  `gallery_name` varchar(100) NOT NULL,
  `gallery_seo` varchar(100) NOT NULL,
  `information` text NOT NULL,
  `photo` varchar(100) NOT NULL,
  `is_active` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `id_album`, `gallery_name`, `gallery_seo`, `information`, `photo`, `is_active`) VALUES
(9, 17, 'Galeri 2', 'galeri-2', 'LIfe is Strange', 'galeri-2-15815614412.jpg', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User');

-- --------------------------------------------------------

--
-- Table structure for table `identity`
--

CREATE TABLE `identity` (
  `id` int(11) NOT NULL,
  `web_name` varchar(255) NOT NULL,
  `web_address` varchar(255) NOT NULL,
  `meta_description` text NOT NULL,
  `meta_keyword` text NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `identity`
--

INSERT INTO `identity` (`id`, `web_name`, `web_address`, `meta_description`, `meta_keyword`, `photo`) VALUES
(1, 'persmahasiswa.com', 'persmahasiswa.com', 'Latest Indonesia and World News Today, the Latest Most Complete Daily News Regarding Politics, Economy, Travel, Technology, Automotive, ...', 'persmahasiswa.com', 'c551664b65bad27d6b56ac71bfdd016f.png');

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `url` varchar(50) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `is_active` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 'Setting Web', '', 'fas fa-fw fa-cog', 'Y'),
(2, 'Setting Menu', '', 'fas fa-fw fa-sliders-h', 'Y'),
(3, 'Manajemen Artikel', '', 'fas fa-fw fa-newspaper', 'Y'),
(4, 'Media', '', 'fas fa-fw fa-photo-video', 'Y'),
(5, 'Profile', 'home', 'fas fa-fw fa-home', 'Y'),
(6, 'Logout', 'auth/logout', '', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `posting`
--

CREATE TABLE `posting` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `seo_title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `featured` char(1) NOT NULL,
  `choice` char(1) NOT NULL,
  `thread` char(1) NOT NULL,
  `id_category` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `is_active` char(1) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posting`
--

INSERT INTO `posting` (`id`, `title`, `seo_title`, `content`, `featured`, `choice`, `thread`, `id_category`, `photo`, `is_active`, `date`) VALUES
(69, 'New MacBook Pro 13-inch spotted with 10th-generation Ice Lake', 'new-macbook-pro-13-inch-spotted-with-10th-generation-ice-lake', '<p>It looks like Apple has plans to give the MacBook Pro 13-inch a \r\nconsiderable power boost in 2020. And, it’s about darn time, especially \r\nsince 8th-generation Intel Core processors are aging at this point, \r\nespecially on a premium laptop.</p><p>A <a href=\"https://twitter.com/_rogame/status/1228636786517270529?s=20\" target=\"_blank\" class=\"hawk-link-parsed\"><u>3DMark Time Spy benchmark</u></a>, recently leaked by <a href=\"https://twitter.com/_rogame\" target=\"_blank\" class=\"hawk-link-parsed\"><u>@_rogame</u></a>\r\n on Twitter, shows a new 13-inch MacBook Pro boasting marked performance\r\n improvements over 2019’s second highest configuration. If you’re not \r\nfamiliar with this serial leaker, he was responsible for uncovering a <a href=\"https://www.reddit.com/r/Amd/comments/dvq3xx/16_macbook_pro_with_an_rx_5500m_8gb/\" target=\"_blank\" class=\"hawk-link-parsed\"><u>Geekbench 4 benchmark</u></a>\r\n of the 16-inch MacBook Pro boasting the Radeon 5500M graphics card \r\nbefore it came out. So, you know this is coming from a reliable source.</p><aside class=\"hawk-widget\" data-render-type=\"fte\" data-widget-type=\"seasonal\"></aside><p>The\r\n unreleased 13-inch MacBook Pro model is fitted with an Intel Core \r\ni7-1068NG7 processor with a 2.3GHz base clock, Turbo Boost up to 4.1GHz \r\nclocks and a TDP of 28W. Based on an <a href=\"https://twitter.com/_rogame/status/1228628173509857280?s=20\" target=\"_blank\" class=\"hawk-link-parsed\"><u>earlier tweet</u></a>, it also boasts 32GB of memory and 2TB of storage (SSD).</p><p>It’s worth noting that the i7-1068NG7 could be a variant of the i7-1068G7, which <a href=\"https://wccftech.com/2020-macbook-pro-13-vs-predecessor-benchmark-leak-shows-30-gpu-lead/\" target=\"_blank\" class=\"hawk-link-parsed\"><u>Wccftech.com</u></a> praises as the best performing mobile chip in the Ice Lake U family. <br></p>', 'Y', 'N', 'Y', 6, '1c9ed66e86d7f2edff5ea376dba2f5b0.jpg', 'Y', '2020-02-23'),
(72, 'Nintendo Switch Pro: what we want to see from a new Switch console', 'nintendo-switch-pro-what-we-want-to-see-from-a-new-switch-console', '<p>Rumors have been circling for a while now that a Nintendo Switch Pro \r\nis in the works. However, contrary to belief, a Switch Pro certainly \r\nwon\'t be releasing this year as Nintendo has officially confirmed that a\r\n new Switch isn\'t coming in 2020.</p><p>But that\'s not to say we won\'t see a new Nintendo Switch in the future.</p><aside class=\"hawk-widget\" data-render-type=\"fte\" data-widget-type=\"seasonal\"></aside><p>While we technically seen two new Switch devices release in 2019 - the Switch with longer battery and the handheld <a href=\"https://www.techradar.com/reviews/nintendo-switch-lite-review\" data-original-url=\"https://www.techradar.com/uk/news/nintendo-switch-lite-release-date-price-games-and-more\" class=\"hawk-link-parsed\">Nintendo Switch Lite</a> - we\'re still expecting Nintendo to have another, more premium, Switch up its sleeve. </p><p>This new Switch (or Switch Pro) would boast upgraded hardware in comparison to the original <a href=\"https://www.techradar.com/reviews/nintendo-switch\" class=\"hawk-link-parsed\">Nintendo Switch</a>, potentially offering better graphics and processing power, among other improved features - although it\'s been suggested this <a href=\"https://www.techradar.com/news/the-latest-nintendo-switch-pro-rumors-are-pretty-disappointing\" class=\"hawk-link-parsed\">upgrade won\'t be as extensive as we\'d like to see</a>.</p><p>With Nintendo not even confirming the existence of a Switch Pro, and the\r\n company ruling out a 2020 release for any new Switch, when would be a \r\nlikely release window? And, if the rumors <em>are</em> true, what \r\nfeatures would this new Switch likely offer? While we wait for more \r\ndefinitive answers, let\'s run through the likely (and unlikely) \r\npossibilities below.</p>', 'N', 'Y', 'Y', 6, '91c9893cd2a1f8284c883b3b04775b90.jpg', 'Y', '2020-02-23'),
(75, 'Apple shares drop amid reports of low demand for iPhone X', 'apple-shares-drop-amid-reports-of-low-demand-for-iphone-x', '<p>BEIJING/SAN FRANCISCO, Dec 26 (Reuters) – Shares in <a href=\"http://www.globalnews.ca/tag/apple\" target=\"_blank\" rel=\"noopener\">Apple Inc</a>\r\n and several of its Asian suppliers fell on Tuesday after a report by \r\nTaiwan’s Economic Daily and comments from some analysts suggested <a href=\"http://www.globalnews.ca/tag/iphone-x\" target=\"_blank\" rel=\"noopener\">iPhone X</a> demand could come in below expectations in the first quarter.</p><p>Apple\r\n will slash its sales forecast for the iPhone X in the quarter to 30 \r\nmillion units, the newspaper said on Monday, citing unidentified \r\nsources, down from what it said was an initial plan of 50 million units.</p><p>Apple\r\n has not publicly disclosed quarterly sales targets for the iPhone X, \r\nwhich went on sale in November at a base price of $999 in the United \r\nStates. An Apple spokeswoman said the company does not comment on market\r\n rumors.</p><p>Shares of Apple surged 45 percent this year before the iPhone X launch \r\nas investors anticipated interest from iPhone users who had gone years \r\nsince buying a new one.</p><p>Shares of Apple have edged slightly lower since the iPhone X debut. They fell 2.5 percent to $170.57 on Tuesday.</p><p>During\r\n a trip to China this month Apple Chief Executive Tim Cook said he \r\n“couldn’t be happier” with the demand for the iPhone X in the country. \r\nThe company also had described pre-orders for iPhone X as “off the \r\ncharts.”</p> \r\n  \r\n  \r\n <h3>Varying estimates</h3><p>Estimates of how many of the new phones Apple is making, and how many it will sell, vary widely.</p>', 'N', 'Y', 'N', 6, '0806ef39ec267c04b99a51a88129327a.jpg', 'Y', '2020-02-24'),
(76, 'Massive Samsung Galaxy S20 Ultra camera test: 100x zoom and 108MP photo samples', 'massive-samsung-galaxy-s20-ultra-camera-test-100x-zoom-and-108mp-photo-samples', '<p>At the low end, U.S.-based JL Warren Capital expects Apple to ship 25\r\n million iPhone X units as consumers balk at the “high price” and “lack \r\nof interesting innovations.”</p><p>On the high end, Chicago-based Loop \r\nCapital estimated in a note last week 40 million to 45 million \r\nfirst-quarter shipments. Jefferies forecast about 40 million \r\nfirst-quarter sales.</p>         ', 'N', 'N', 'Y', 6, '344d68e696bcc03d9a9e4445b5a7be24.jpg', 'Y', '2020-02-24'),
(79, 'Nintendo Switch New Color', 'nintendo-switch-new-color', '<p>\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do \r\neiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad \r\nminim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip \r\nex ea commodo consequat. Duis aute irure dolor in reprehenderit in \r\nvoluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur \r\nsint occaecat cupidatat non proident, sunt in culpa qui officia deserunt\r\n mollit anim id est laborum.\"</p><p>\"Sed\r\n ut perspiciatis unde omnis iste natus error sit voluptatem accusantium \r\ndoloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo \r\ninventore veritatis et quasi architecto beatae vitae dicta sunt \r\nexplicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut \r\nodit aut fugit, sed quia consequuntur magni dolores eos qui ratione \r\nvoluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum \r\nquia dolor sit amet, consectetur, adipisci velit, sed quia non numquam \r\neius modi tempora incidunt ut labore et dolore magnam aliquam quaerat \r\nvoluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam \r\ncorporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur?\r\n Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse \r\nquam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo \r\nvoluptas nulla pariatur?\"</p>\r\n\r\n<p>\"But I must explain to you how all this mistaken idea of denouncing \r\npleasure and praising pain was born and I will give you a complete \r\naccount of the system, and expound the actual teachings of the great \r\nexplorer of the truth, the master-builder of human happiness. No one \r\nrejects, dislikes, or avoids pleasure itself, because it is pleasure, \r\nbut because those who do not know how to pursue pleasure rationally \r\nencounter consequences that are extremely painful. Nor again is there \r\nanyone who loves or pursues or desires to obtain pain of itself, because\r\n it is pain, but because occasionally circumstances occur in which toil \r\nand pain can procure him some great pleasure. To take a trivial example,\r\n which of us ever undertakes laborious physical exercise, except to \r\nobtain some advantage from it? But who has any right to find fault with a\r\n man who chooses to enjoy a pleasure that has no annoying consequences, \r\nor one who avoids a pain that produces no resultant pleasure?\"</p>', 'N', 'N', 'N', 6, '33e0169602846b53eb635ca6cd3397a1.jpg', 'Y', '2020-02-24'),
(80, '<strong>Prediksi Skor Maroko vs Prancis, Head to Head, Line Up dan Sejarahnya di Semifinal Piala Dunia 2022</strong>', 'strong-prediksi-skor-maroko-vs-prancis-head-to-head-line-up-dan-sejarahnya-di-semifinal-piala-dunia-2022-strong', '<strong>Qatar</strong>- Satu di antara partai semifinal Piala Dunia 2022 Qatar adalah pertemuan Maroko vs Prancis pada Kamis (15/12/2022) pukul 02.00 WIB.<br><br>\r\n\r\nSaling jegal Maroko vs Prancis berlangsung Stadion Al Bayt, Qatar.<br><br>\r\n\r\nMasyarakat Indonesia bisa menyaksikan laga Maroko vs Prancis ini via live streaming atau melalui siaran langsung tv pemegang hak siar Piala Dunia 2022 Qatar.<br><br>\r\n', 'Y', 'Y', 'Y', 7, '3a3e361e8b940218e27e3ba138394554.jpg', 'Y', '2022-12-14'),
(81, '<strong>Ronaldo \'Tamat\' di Piala Dunia, Mbappe Kasih Reaksi Begini</strong> ', 'strong-ronaldo-tamat-di-piala-dunia-mbappe-kasih-reaksi-begini-strong', '<strong>Qatar</strong> - Cristiano Ronaldo membuat pesan yang menyiratkan perburuan trofi Piala Dunia-nya sudah berakhir. Kylian Mbappe mengomentarinya di media sosial CR7.<br>\r\nRonaldo harus gigit jari kembali gagal meraih trofi di Piala Dunia. Pada edisi 2022, Portugal tersingkir di perempatfinal.<br><br>\r\n\r\nPortugal disingkirkan Maroko lewat kekalahan 0-1 di Al Thumama Stadium, Sabtu (10/12/2022). Ronaldo, yang dicadangkan pada laga tersebut, keluar lapangan sambil menangis.<br><br>\r\n\r\nMbappe, striker Timnas Prancis, mengomentari unggahan Ronaldo hanya dengan mengetik tiga emoji. Emoji mahkota raja, emoji tos lima jari, serta emoji hewan kambing atau GOAT, akronim dari Greatest of All Time. Emoji itu dinilai, Mbappe masih menganggap Ronaldo yang terbaik dan layak dapat rasa hormat.<br><br>\r\n\r\nMbappe memang mengidolai Ronaldo. Sejak kecil, Ronaldo menjadi pemain idola striker milik Paris Saint-Germain itu.<br><br>\r\n\r\nJika Cristiano Ronaldo sudah kandas, Kylian Mbappe masih akan berjuang di Piala Dunia 2022, usai Prancis lolos ke semifinal. Les Bleus ke empat besar usai mengalahkan Inggris 2-1 di perempatfinal. Selanjutnya, Prancis akan melawan Maroko di Al Bayt Stadium, Kamis (15/12) dini hari WIB.<br><br>\r\n\r\n', 'Y', 'Y', 'Y', 7, 'bfaba49de8bcc13e9c27dcae34d1e9d2.jpeg', 'Y', '2022-12-14'),
(82, '<strong> \"Teleponan dengan Zelensky, Biden Tegaskan Dukungan Kuat AS ke Ukraina\"</strong>', 'strong-teleponan-dengan-zelensky-biden-tegaskan-dukungan-kuat-as-ke-ukraina-strong', '<strong>Jakarta</strong> - Presiden Amerika Serikat Joe Biden menegaskan kembali dukungan kuat Washington untuk Ukraina yang dilanda perang dengan Rusia. Hal itu disampaikan Biden dalam percakapan via telepon dengan Presiden Ukraina Volodymyr Zelensky.<br><br>\r\n\r\nDilansir kantor berita AFP, Senin (12/12/2022), penegasan itu disampaikan seiring Rusia, yang menginvasi Ukraina pada 24 Februari, telah menargetkan infrastruktur listrik di negara pro-Barat itu. Serangan-serangan itu telah menyebabkan pemadaman energi yang meluas dan menyebabkan jutaan orang tanpa listrik saat suhu udara turun.<br><br>\r\n\r\nBerbicara kepada Zelensky pada Minggu (11/12) waktu setempat, Biden menggarisbawahi \"dukungan AS yang berkelanjutan untuk pertahanan Ukraina saat Rusia melanjutkan serangannya terhadap infrastruktur penting Ukraina,\" kata Gedung Putih dalam sebuah pernyataan.<br><br>\r\n\r\nSenjata yang dipasok Barat, termasuk dari Amerika Serikat, telah mendukung pertahanan Ukraina yang berhasil memukul mundur pasukan Rusia dari wilayah-wilayah yang sempat didudukinya.<br><br>\r\n\r\nPernyataan Gedung Putih tersebut menyoroti janji AS baru-baru ini kepada Ukraina, termasuk dana US$ 53 juta untuk infrastruktur energi Ukraina yang diumumkan pada bulan November lalu dan paket amunisi dan peralatan pada bulan Desember senilai US$ 275 juta.<br><br>\r\n\r\nZelensky pun mengucapkan terima kasih kepada Biden atas bantuan yang \'belum pernah terjadi sebelumnya\' yang diberikan Washington DC sejak Rusia menginvasi Ukraina pada akhir Februari lalu.<br><br>\r\n\r\n\"Saya berterima kasih atas bantuan pertahanan dan finansial yang belum pernah terjadi sebelumnya yang diberikan AS kepada Ukraina,\" ucap Zelensky saat membahas percakapan telepon dengan Biden, dalam pernyataan via akun Telegram resminya.<br><br>\r\n\r\n\"Ini tidak hanya berkontribusi pada kesuksesan di medan perang, tapi juga mendukung stabilitas perekonomian Ukraina,\" sebutnya.<br><br>\r\n\r\n\"Kami juga mengapresiasi bantuan yang diberikan AS untuk memulihkan sistem energi Ukraina,\" imbuh Zelensky.<br><br>\r\n\r\nUcapan terima kasih itu disampaikan Zelensky setelah pekan lalu, AS dilaporkan bersiap mengirimkan paket bantuan militer terbaru senilai US$ 275 juta (Rp 4,2 triliun) untuk Ukraina. Paket bantuan terbaru itu menawarkan kemampuan menangkal drone dan memperkuat pertahanan udara dalam melawan invasi Rusia.<br><br>\r\n\r\nMenurut sejumlah sumber dan dokumen yang membahas paket bantuan itu, Pentagon diperkirakan akan menyertakan roket-roket untuk peluncur Sistem Roket Artileri Mobilitas Tinggi (HIMARS) buatan Lockheed Martin Corp, amunisi 155mm, kendaraan militer Humvee dan generator-generator dalam bantuan untuk Ukraina.<br><br>\r\n\r\n', 'Y', 'Y', 'Y', 8, 'fa87dc93fcbf537abd4e7e943602afbe.jpeg', 'Y', '2022-12-14'),
(83, '<strong>Bukan Hanya Asteroid, Peneliti Ungkap Penyebab Kepunahan Spesies Dinosaurus .</strong>', 'strong-bukan-hanya-asteroid-peneliti-ungkap-penyebab-kepunahan-spesies-dinosaurus-strong', '<strong>Jakarta</strong> - Peneliti kembali mengungkap fakta baru yang mencengangkan. Menurut mereka, terdapat penyebab lain yang memicu kepunahan dinosaurus selain jatuhnya asteroid<br><br>\r\n\r\nSebab, perdebatan mengenai kepunahan dinosaurus non-unggas, termasuk Tyrannosaurus rex dan Triceratops dan eksistensi spesies mamalia yang dapat bertahan dari kepunahan cukup membingungkan.<br><br>\r\n\r\nMelalui studi yang dipimpin oleh tim ahli paleontologi dan ekologi internasional, mereka menganalisis 1.600 catatan fosil dari Amerika Utara.<br><br>\r\n\r\n<strong>Mamalia Kecil dan Dinosaurus Hidup Berdampingan</strong><br><br>\r\nMengutip dari Science Blog, mamalia kecil diketahui telah hidup lama berdampingan dengan dinosaurus. Namun, penelitian ini mengungkap fakta bahwa mamalia mendiversifikasi makanan mereka.<br><br>\r\n\r\nSelain itu, mereka beradaptasi dengan lingkungan dan menjadi komponen ekosistem yang lebih penting saat periode Kapur berkembang.<br><br>\r\n\r\nLain halnya dengan dinosaurus yang hanya hidup di ceruk stabil tempat mereka beradaptasi dengan sangat baik.<br><br>\r\n\r\n<strong>Mamalia Memanfaatkan Kematian Dinosaurus</strong><br><br>\r\n\r\nMenurut para ahli, mamalia tidak hanya memanfaatkan kematian dinosaurus tapi menciptakan keunggulan mereka sendiri melalui diversifikasi dengan menempati ceruk ekologis baru, mengembangkan pola makan dan perilaku yang lebih bervariasi dan bertahan dalam perubahan kecil iklim yaitu dengan cepat beradaptasi.<br><br>\r\n\r\nNah, perilaku ini membuat mereka dapat bertahan hidup. Karenanya, hewan mamalia lebih mampu mengatasi kehancuran radikal dan tiba-tiba yang disebabkan oleh asteroid.<br><br>\r\n\r\nMenurut Jorge García-Girón, salah satu peneliti dari Unit Riset Geografi, Universitas Oulu, Finlandia mengatakan bahwa studi tersebut memberi gambaran tentang struktur ekologi, jaring makanan, dan ceruk dari ekosistem terakhir yang didominasi dinosaurus dan mamalia pertama.<br><br>\r\n\r\n<strong>Ekologi Dinosaurus yang Stabil Jadi Penghambat</strong><br><br>\r\nPeneliti lainnya yang bernama Alfio Alessandro Chiarenza dari Departemen Ekologi dan Biologi Hewan, Universitas Vigo di Spanyol mengungkapkan bahwa ekologi yang stabil dari dinosaurus terakhir benar-benar menghambat kelangsungan hidup mereka setelah dampak asteroid yang mengubah aturan ekologis kala itu.<br><br>\r\n\r\n\"Sebaliknya, beberapa burung, mamalia, buaya, dan kura-kura sebelumnya telah beradaptasi dengan lebih baik terhadap perubahan lingkungan yang tidak stabil dan cepat, yang mungkin membuat mereka lebih mampu bertahan hidup ketika keadaan tiba-tiba menjadi buruk saat asteroid menghantam,\" ujarnya.<br><br>\r\n\r\nDinosaurus menjadi kuat dengan ekosistem yang stabil. Namun ketika asteroid meluluh lantakkan spesiesnya, tamatlah riwayat mereka. Ini disebabkan oleh ekosistem yang berubah secara tiba-tiba.<br><br>\r\n\r\n\"Jadi, bukan hanya mamalia mengambil keuntungan dari kematian dinosaurus, tetapi mereka membuat keuntungan mereka sendiri, yang secara ekologi mengadaptasi mereka untuk bertahan hidup dari kepunahan dan pindah ke ceruk yang ditinggalkan oleh dinosaurus yang mati,\" pungkas Profesor Steve Brusatte, penulis lain dari studi tersebut.<br><br>\r\n\r\n\r\n', 'Y', 'Y', 'Y', 9, '5c9f55782f6f893d94ace4c747cc9066.jpeg', 'Y', '2022-12-14'),
(84, '<strong>Jari-jari Atom: Pengertian, Unsur, Faktor, Cara Menentukan, dan Jenis</strong>', 'strong-jari-jari-atom-pengertian-unsur-faktor-cara-menentukan-dan-jenis-strong', '<strong>Jakarta</strong> - Jari-jari atom adalah jarak dari inti atom sampai ke elektron di kulit terluar. Jarak tersebut dinyatakan dengan satuan panjang Angstrom (Å).<br><br>\r\n\r\nJumlah elektron yang dilihat dari nomor atom dan konfigurasinya dapat menentukan besarnya jari-jari atom, seperti dikutip dari buku Kimia SMA/MA Kelas XII (Diknas) oleh Suyatno.<br><br>\r\n\r\n<strong>Faktor Jari-Jari Atom</strong><br><br>\r\nDikutip dari buku Pedoman Cerdas Rangkuman Pengetahuan Alam Lengkap (RPAL) oleh Tim Civitas Academica, faktor-faktor yang mempengaruhi ukuran jari-jari atom adalah:<br><br>\r\n\r\n<strong>a. Kulit Atom</strong><br>\r\nSemakin banyak jumlah kulit atom maka jari-jari atom semakin panjang. Sedangkan untuk atom-atom yang mempunyai jumlah kulit yang sama, maka jari-jari atom dipengaruhi oleh muatan inti atom.<br><br>\r\n\r\n<strong>b. Muatan Inti</strong><br>\r\nSemakin banyak muatan inti atom, semakin besar gaya tarik inti atom dengan elektronnya. Hal ini menyebabkan elektron tertarik lebih dekat ke inti atom. Jadi, semakin banyak muatan inti atom, jari-jari atom semakin pendek.<br><br>\r\n\r\n<strong>Unsur Jari-Jari Atom</strong><br>\r\nPada unsur seperiode, semakin ke kanan maka ukuran jari-jari atom semakin kecil. Hal ini disebabkan unsur seperiode mempunyai jumlah lintasan yang sama. Makin ke kanan muatan intinya makin besar, sehingga gaya tarik inti makin kuat. Makin tertarik elektron ke inti, maka makin kecil jari-jari atomnya.<br><br>\r\n\r\nPada unsur segolongan, semakin ke bawah maka ukuran jari-jari atom semakin besar karena jumlah lintasannya makin banyak, sebagaimana dikutip dari buku Kimia Itu Asyik SMA Kelas 1 oleh Sura Kitti.<br><br>\r\n\r\n<strong>Cara Menentukan Jari-Jari Atom</strong><br>\r\nDikutip dari buku Kimia 1A oleh Parning, dkk, menentukan jari-jari atom yang berdiri sendiri sangat sulit sehingga cara yang lazim untuk menentukan jari-jari atom adalah dengan mengukur jarak dua inti atom dalam molekulnya.<br><br>\r\n\r\nUkuran atom yang tepat dalam molekul bergantung pada sifat dan kekuatan ikatan atom-atom tersebut. Alat untuk mengukur jari-jari atom adalah spektroskop massa.<br><br>\r\n\r\nDikutip dari buku Kimia oleh Suyatno, dkk, besar jari-jari atom logam sama dengan setengah jarak terpendek antara dua inti atom dalam padatan. Sedangkan jari-jari atom non logam sama dengan setengah panjang ikatan antara dua inti atom identik.<br><br>\r\n\r\nJenis Jari-Jari Atom\r\nTerdapat beberapa jenis jari-jari atom yang dipergunakan untuk menyatakan jarak dari inti atom ke lintasan stabil terluar dari elektronnya, seperti dikutip dari Buku Ajar Kimia 1 oleh Maris Kurniawati, yaitu:<br><br>\r\n\r\n1. Jari-jari Kovalen\r\nJari-jari pada ikatan kovalen adalah setengah dari jarak antara dua inti atom dalam ikatan tunggal kovalen.<br><br>\r\n\r\n2. Jari-jari Non Logam (Jari-jari Van der Waals)\r\nSetengah jarak dari antara dua inti atom yang bersentuhan namun tidak berikatan.<br><br>\r\n\r\n3. Jari-jari logam\r\nSetengah jarak dua inti logam dalam sebuah kristal logam murni, selain itu jari-jari logam mirip dengan jari-jari kovalen.<br><br>\r\n\r\n\r\n', 'Y', 'N', 'N', 9, '3b6e3e558f2a30b0b0c83d724d685cf9.jpeg', 'Y', '2022-12-14'),
(85, '<strong>Panas! Rusia Tingkatkan Produksi Senjata Penghancur</strong>', 'strong-panas-rusia-tingkatkan-produksi-senjata-penghancur-strong', '<strong>Moskow</strong> - Mantan Presiden Rusia Dmitry Medvedev yang juga sekutu Presiden Vladimir Putin menyatakan negaranya tengah meningkatkan produksi senjata generasi baru, yang disebut senjata \'paling kuat\'. Peningkatan produksi senjata dimaksudkan untuk melindungi Rusia dari musuh-musuh di Eropa, Amerika Serikat (AS) dan Australia.<br><br>\r\n\r\n\"Kami tengah meningkatkan produksi alat penghancur yang paling kuat. Termasuk yang berdasarkan prinsip-prinsip baru,\" sebut Medvedev dalam pernyataan terbaru via Telegram, seperti dilansir AFP, Senin (12/12/2022).<br><br>\r\n\r\n\"Musuh kami tidak hanya bertahan di Provinsi Kiev, pribumi Malorossiya kami,\" ucapnya, dengan menyebut sebutan untuk wilayah era modern Ukraina yang sebelumnya menjadi bagian Kekaisaran Rusia<br><br>\r\n\r\n\"Ada juga di Eropa, Amerika Utara, Jepang, Australia, Selandia Baru dan banyak tempat-tempat lainnya yang menyatakan sumpah setiap pada Nazi,\" klaim Medvedev dalam pernyataannya.<br><br>\r\n\r\nMedvedev yang kini menjabat wakil ketua Dewan Keamanan Rusia, tidak menjelaskan lebih lanjut soal jenis senjata yang produksinya ditingkatkan tersebut.<br><br>\r\n\r\nNamun Putin diketahui berulang kali menyatakan Rusia tengah mengembangkan senjata-senjata jenis terbaru, termasuk senjata hipersonik yang diklaimnya mampu mengelak dari semua sistem pertahanan rudal yang ada.<br><br>\r\n\r\nSejak Putin memerintahkan pengerahan pasukan Rusia ke Ukraina pada 24 Februari lalu, Medvedev yang berusia 54 tahun ini secara rutin memberikan komentar-komentar bombastis via media sosial.<br><br>\r\n\r\nDengan Moskow mengalami kemunduran dalam pertempuran di wilayah Ukraina, kebuntuan militer telah memicu kekhawatiran bahwa Rusia bisa saja menggunakan senjata nuklir untuk mencapai terobosan militer.<br><br>\r\n\r\nPada Jumat (9/12) lalu, Putin menyebut Rusia bisa mengubah doktrin militernya dengan menerapkan kemungkinan serangan pendahuluan untuk melucuti musuh, yang tampaknya merujuk pada serangan nuklir.<br><br>\r\n\r\nDiklaim juga oleh Putin bahwa sistem rudal jelajah dan hipersonik buatan Rusia \'lebih modern dan bahkan lebih efisien\' dibandingkan rudal-rudal AS.<br><br>\r\n\r\n', 'Y', 'Y', 'Y', 8, '10c6a534a57996b2754e5719f071d1e1.jpeg', 'Y', '2022-12-14'),
(86, '<strong>5 Penyebab Timnas Kroasia Kalah dari Argentina di Semifinal Piala Dunia 2022, Nomor 1 Pasangan Emas Julian Alvarez dan Lionel Messi</strong>', 'strong-5-penyebab-timnas-kroasia-kalah-dari-argentina-di-semifinal-piala-dunia-2022-nomor-1-pasangan-emas-julian-alvarez-dan-lionel-messi-strong', '<strong>SEBANYAK</strong> 5 penyebab Timnas Kroasia kalah dari Argentina di semifinal Piala Dunia 2022 akan dibahas di sini. Salah satu di antaranya disebabkan oleh pasangan emas La Albiceleste – julukan Timnas Argentina – yaitu Julian Alvarez dan Lionel Messi.<br><br>\r\n\r\nVatreni – julukan Timnas Kroasia – harus mengakui keperkasaan Argentina di Stadion Lusail, Rabu (14/12/2022) dini hari WIB. Setelah membunuh Brasil di perempatfinal, mereka takluk dengan terlalu mudah dalam 90 menit dari Argentina.<br><br>\r\n\r\nMengapa Kroasia kalah dengan begitu mudah? Mari simak lima penyebab Timnas Kroasia kalah dari Argentina di semifinal Piala Dunia 2022.<br><br>\r\n\r\n<strong>5. Luka Modric Kehabisan Ide</strong><br><br>\r\nKroasia mengawali laga dengan dominasi dalam penguasaan bola. Mereka mencatatkan hingga 65 persen aliran bola pada 25 menit pertama tanpa sekali pun melakukan percobaan ke gawang Argentina.<br><br>\r\n\r\nLuka Modric seharusnya menjadi maestro di lini tengah dengan ide-ide kreatifnya. Namun dalam laga ini, sang peraih Ballon dOr 2018 nampak kehabisan ide.<br><br>\r\n\r\n<strong>4. Tumpul</strong><br><br>\r\nMeskipun mengakhiri babak pertama dengan ketertinggalan dua gol, Kroasia masih unggul dalam penguasaan bola. Namun demikian, dari berkali-kali percobaan, tak ada satu pun yang mengarah tepat sasaran.<br><br>\r\n\r\nVatreni mengakhiri 45 menit pertama tanpa melepaskan tembakan sekali pun ke gawang. Sedangkan di akhir laga, mereka hanya mampu mengancam gawang Argentina dua kali lewat tendangan tepat sasaran.<br><br>\r\n\r\n<strong>3. Kelelahan</strong><br><br>\r\nFaktor kelelahan juga mungkin memengaruhi permainan Kroasia. Mereka melalui 120 menit lebih untuk menyingkirkan Jepang dan Brasil lewat adu penalti.<br><br>\r\n\r\nDominik Livakovic begitu hebat dalam adu penalti. Namun stamina pemain terkuras habis karena bermain dengan sangat defensif selama 120 menit. Alhasil ketika sampai di semifinal, energi Kroasia pun nampak terkuras.<br><br>\r\n\r\n<strong>2. Serangan Balik Mematikan Argentina</strong><br><br>\r\nPelatih Argentina, Lionel Scaloni, memutuskan untuk bermain menunggu sejak awal. Mereka hanya melakukan serangan sesekali, namun itu mematikan.<br><br>\r\n\r\nGol kedua pada menit ke-39 tercipta lewat serangan balik setelah sepak pojok Kroasia gagal berbuah ancaman. Julian Alvarez yang mendapatkan bola di lapangan tengah langsung memaksimalkan peluang. Bukti betapa mematikannya sang striker Manchester City dan serangan balik Argentina.<br><br>\r\n\r\n<strong>1. Pasangan Emas Julian Alvarez dan Lionel Messi</strong><br><br>\r\nArgentina bermain dengan sangat baik sebagai tim untuk bertahan. Namun, gol-gol dari kedua penyerang bintang ini, tentu itu tidak akan berarti.<br><br>\r\n\r\nLionel Messi mencetak sebuah gol dan satu assist. Sedangkan Alvarez mencetak dua gol yang salah satunya adalah buah kerja sama dengan Messi.<br><br>\r\n\r\nLini pertahanan Kroasia begitu tangguh pada sepanjang turnamen ini. Namun duet pasangan emas Albiceleste ini langsung merobohkan pertahanan tangguh tersebut.<br><br>', 'Y', 'Y', 'Y', 7, '62c262e24937a038e5ac11bd46e8bbc9.jpg', 'Y', '2022-12-14'),
(87, '<strong>Kapan Waktu Tepat Anak Masuk Sekolah?</strong>', 'strong-kapan-waktu-tepat-anak-masuk-sekolah-strong', '<strong>SEIRING</strong> dengan membaiknya kondisi Covid-19 di Indonesia, pemerintah pun memutuskan untuk mengizinkan Pembelajaran Tatap Muka (PTM) atau sekolah tatap muka. Tentu saja hal ini membuat orangtua kembali mempertimbangkan anaknya untuk sekolah.<br><br>\r\n\r\nBahkan, beberapa orangtua memilih memasukkan anaknya ke sekolah formal sejak usia dini. Tapi, kapan sebaiknya anak-anak mulai diperkenalkan dengan dunia sekolah?<br><br>\r\n\r\nDamar Wijayanti, Montessori & Certified Positive Discipline Parents Educator mengatakan penting bagi para orangtua untuk memahami kondisi anak sebelum mendaftar sekolah. Hal pertama yang harus dilakukan adalah mengenalkan berbagai macam kegiatan kepada anak, agar menemukan minatnya.<br><br>\r\n\r\n\"Kita perlu mengenalkan segala macam kegiatan ke anak jadi enggak cuma itu-itu aja. Perlu juga ada variasi, karena setiap orang kan cara belajarnya beda-beda, dengan variasi itu yang dia serap lebih optimal,\" ujar Damar seperti dilansir dari Antara.<br><br>\r\n\r\nLebih lanjut Damar menjelaskan, keinginan anak untuk sekolah baiknya datang dari dirinya sendiri sehingga memiliki dorongan yang kuat dalam belajar. Orang tua juga perlu untuk menyiapkan stimulus seperti sensorik dan motorik sebelum anak memasuki sekolah.<br><br>\r\n\r\nMempersiapkan anak masuk sekolah, tidak hanya soal mencari tempat dengan akreditas bagus. Namun, orangtua harus melakukan persiapan secara menyeluruh seperti menentukan jarak antara rumah dan sekolah, kualitas dan kuantitas pengajar, peraturan hingga kurikulumnya.<br><br>\r\n\r\n\r\n', 'N', 'Y', 'N', 9, '118d5e45781ca825f02ec592e4c161e8.jpg', 'Y', '2022-12-14'),
(88, '<strong>10 Destinasi Wisata Keren di Kroasia, Kaya Akan Peninggalan Sejarah Romawi</strong>', 'strong-10-destinasi-wisata-keren-di-kroasia-kaya-akan-peninggalan-sejarah-romawi-strong', '<strong>MEMILIKI</strong> lebih dari seribu pulau, festival musik sensasional, dan pantai berbatu dengan hamparan laut Mediterania yang bersih, menjadikan Kroasia sebagai destinasi wisata impian musim panas.<br><br>\r\n\r\nBelum lagi alam yang masih asri, budaya yang dinamis, dan beragam arsitektur ajaib yang bisa Anda nikmati di sini.<br><br>\r\n\r\nAnda bisa mengunjungi berbagai spot sesuai minat dan selera Anda, karena negara kecil di Laut Adriatik ini punya segalanya.<br><br>\r\n\r\nBerikut 10 rekomendasi destinasi yang bisa Anda datangi ketika berlibur di Kroasia, yang dilansir dari Travel Away;<br><br>\r\n\r\n<strong>Plitvice Lakes National Park</strong><br><br>\r\n\r\nDanau ini adalah salah satu danau dengan pemandangan paling terkenal di Kroasia. Spot yang sudah di bawah perlindungan UNESCO ini persis seperti negeri dongeng, dengan danau dengan air berwarna zamrud yang mengalir, air terjun beruap, dan tanaman hijau yang subur.<br><br>\r\n\r\nJembatan kayu dan jalur pendakian berkelok menambah kesan eksotis di tempat yang banyak dihuni oleh serigala, beruang coklat, dan lebih dari 160 spesies burung ini.<br><br>\r\n\r\n<strong>Stradun</strong><br><br>\r\n\r\nDikenal juga dengan sebutan Placa, Stradun adalah jalan paling indah dan terkenal yang terletak di Dubrovnik. Jalan ini membelah Kota Tua, sebuah kawasan pejalan kaki sepanjang 300 meter yang diaspal dengan marmer, dan menjadi penghubung gerbang timur dan barat kota.<br><br>\r\n\r\nSepanjang Stradun banyak terdapat banguna bersejarah yang disulap menjadi pertokoan dan kafe.<br><br>\r\n\r\n<strong>Pula Arena</strong><br><br>\r\n\r\nDibangun pada abad ke-1 Masehi, Pula Arena adalah salah satu amfiteater Romawi terbesar yang masih ada di dunia. Monumen kuno ini juga menjadi bangunan paling terpelihara di Kroasia.<br><br>\r\n\r\nPernah digunakan sebagai tempat pertarungan gladiator, kini Pula Arena berubah menjadi pusat kehidupan budaya kota yang rutin menyelenggarakan berbagai acara, pameran, dan konser, termasuk Festival Film Pula setiap bulan Juli.<br><br>\r\n\r\n<strong>Hvar Island</strong><br><br>\r\n\r\nMonumen era Venesia, ladang lavender ungu, dan pelabuhan Renaissance yang bertabur kapal pesiar bisa Anda temukan di Hvar. Kota ini juga menjadi pulau paling cerah dan glamor di Kroasia.<br><br>\r\n\r\nTerletak di Laut Adriatik, di lepas pantai Dalmatian, Hvar masih alami dengan pantai kecil berkerikil dan laut biru yang tenang.<br><br>\r\n\r\nDiocletian’s Palace, Split\r\n\r\nBerdiri di area dengan luas sekitar 31 ribu meter persegi, Istana Diocletian menempati lebih dari setengah luas Kota Tua Split, dan merupakan salah satu reruntuhan Romawi termegah dan paling terpelihara di dunia.<br><br>\r\n\r\nSekitar 3 ribu orang tinggal di dalam kompleks marmer dan batu kapur putih tersebut. Di sana juga terdapat bar, toko, dan juga restoran.<br><br>\r\n\r\n<strong>Dubrovnik.</strong><br><br>\r\n\r\nSelain menikmati Stradun yang terkenal di sana, Anda juga dapat melihat indahnya lanskap Dubrovnik dari atas. Anda bisa naik kereta gantung ke Gunung Srd atau berjalan melewati tembok kota kuno..<br><br>\r\n\r\nSampai di atas, Anda bisa melihat atap merah dan perairan biru cerah, serta hijaunya pohon di sekitar rumah warga..<br><br>\r\n\r\n<strong>Pantai Zlatni Rat, Brac.</strong><br><br>\r\n\r\nPantai yang terletak di pulau Brac ini bisa berubah bentuk sesuai dengan pasang surut air laut juga arus..<br><br>\r\n\r\nDibatasi oleh pohon pinus, pantai berkerikil putih memanjang ke Laut Adriatik yang berwarna biru cerah. Pantai cantik ini juga menjadi tujuan selancar dan kitesurfing banyak wisatawan..<br><br>\r\n\r\n<strong>Mali Losinj.</strong><br><br>\r\n\r\nKota pulau terbesar di Laut Adriatik ini pernah menjadi pusat maritim dan komersial yang penting. Terletak di pulau Losinj yang subur, kota ini terkenal dengan udara lautnya yang bersih, dan memiliki kawasan bersejarah yang memikat..<br><br>\r\n\r\nAda juga pelabuhan alami dengan arsitektur Mediterania berwarna pastel yang siap memanjakan mata pengunjung..<br><br>\r\n\r\n', 'Y', 'Y', 'Y', 10, '4664c8b26e4ad97b802e8adcc34d0f63.jpg', 'Y', '2022-12-14');

-- --------------------------------------------------------

--
-- Table structure for table `submenu`
--

CREATE TABLE `submenu` (
  `id` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `sub_title` varchar(50) NOT NULL,
  `sub_url` varchar(50) NOT NULL,
  `is_active` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `submenu`
--

INSERT INTO `submenu` (`id`, `id_menu`, `sub_title`, `sub_url`, `is_active`) VALUES
(1, 1, 'Identitas Web', 'admin/identity', 'Y'),
(2, 1, 'Kontak', 'admin/contact', 'Y'),
(3, 2, 'Menu Utama', 'admin/menu', 'Y'),
(4, 2, 'Sub Menu', 'admin/submenu', 'Y'),
(5, 3, 'Kategori', 'admin/category', 'Y'),
(6, 3, 'Posting', 'admin/posting', 'Y'),
(7, 4, 'Album', 'admin/album', 'Y'),
(8, 4, 'Gallery Foto', 'admin/gallery', 'N'),
(10, 4, 'Banner', 'admin/banner', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(254) NOT NULL,
  `activation_selector` varchar(255) DEFAULT NULL,
  `activation_code` varchar(255) DEFAULT NULL,
  `forgotten_password_selector` varchar(255) DEFAULT NULL,
  `forgotten_password_code` varchar(255) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_selector` varchar(255) DEFAULT NULL,
  `remember_code` varchar(255) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `email`, `activation_selector`, `activation_code`, `forgotten_password_selector`, `forgotten_password_code`, `forgotten_password_time`, `remember_selector`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(1, '127.0.0.1', 'administrator', '$2y$12$QUM2OeQCZclQqJIhZKKMt.Aq8dA3Y7eIzjtXsyr.xuE0kDjfj8SLS', 'admin@admin.com', NULL, '', NULL, NULL, NULL, NULL, NULL, 1268889823, 1670987934, 1, 'Sahril Angga', 'Permana', NULL, '081564685525');

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(39, 1, 1),
(40, 1, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `identity`
--
ALTER TABLE `identity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posting`
--
ALTER TABLE `posting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `submenu`
--
ALTER TABLE `submenu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_email` (`email`),
  ADD UNIQUE KEY `uc_activation_selector` (`activation_selector`),
  ADD UNIQUE KEY `uc_forgotten_password_selector` (`forgotten_password_selector`),
  ADD UNIQUE KEY `uc_remember_selector` (`remember_selector`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `identity`
--
ALTER TABLE `identity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `posting`
--
ALTER TABLE `posting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `submenu`
--
ALTER TABLE `submenu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
