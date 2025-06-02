-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 02, 2025 at 11:37 AM
-- Server version: 8.4.3
-- PHP Version: 8.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `proje`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `Id` int NOT NULL,
  `Name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Mail` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`Id`, `Name`, `Mail`, `Password`) VALUES
(2, 'Emir İpek', 'emiripek@hotmail.com.tr', '$2y$10$bdxGXWaWm8JCnp6Z1aweLeWnycBQlaZ9of0Xd3.ubIw6T29FG1GfG');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `Id` int NOT NULL,
  `Title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ImageUrl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Present` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`Id`, `Title`, `ImageUrl`, `Present`) VALUES
(501, 'Dil Bilgisi', 'https://w7.pngwing.com/pngs/272/875/png-transparent-book-and-quill-illustration-computer-icons-literature-icon-book-study-icon-miscellaneous-angle-hand-thumbnail.png', 'Edebiyat'),
(506, 'Limit', 'https://media.istockphoto.com/id/1269824697/tr/vekt%C3%B6r/muhasebe-hesaplama-i%C5%9Fareti-simgesi-beyaz-arka-planda-izole-edilmi%C5%9F-glyph-vekt%C3%B6r%C3%BC.jpg?s=612x612&amp;w=0&amp;k=20&amp;c=xkrlzRuxlYYCBQoCUQxwCtpkcGHSemvmacrwHkmmEkE=', 'Matematik'),
(500, 'Yazar Eser Soruları', 'https://w7.pngwing.com/pngs/272/875/png-transparent-book-and-quill-illustration-computer-icons-literature-icon-book-study-icon-miscellaneous-angle-hand-thumbnail.png', 'Edebiyat'),
(505, 'İntegral', 'https://media.istockphoto.com/id/1269824697/tr/vekt%C3%B6r/muhasebe-hesaplama-i%C5%9Fareti-simgesi-beyaz-arka-planda-izole-edilmi%C5%9F-glyph-vekt%C3%B6r%C3%BC.jpg?s=612x612&amp;w=0&amp;k=20&amp;c=xkrlzRuxlYYCBQoCUQxwCtpkcGHSemvmacrwHkmmEkE=', 'Matematik'),
(504, 'Türev', 'https://media.istockphoto.com/id/1269824697/tr/vekt%C3%B6r/muhasebe-hesaplama-i%C5%9Fareti-simgesi-beyaz-arka-planda-izole-edilmi%C5%9F-glyph-vekt%C3%B6r%C3%BC.jpg?s=612x612&amp;w=0&amp;k=20&amp;c=xkrlzRuxlYYCBQoCUQxwCtpkcGHSemvmacrwHkmmEkE=', 'Matematik');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `Id` int NOT NULL,
  `Description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `Id` int NOT NULL,
  `Message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Date` datetime NOT NULL,
  `Subject` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Mail` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`Id`, `Message`, `Date`, `Subject`, `Name`, `Mail`) VALUES
(2, 'deneme test lorem ipsum sit amet', '2024-01-10 19:04:29', 'konu denemesi', 'Test Hesabı', 'aslanimellereller@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `sptests`
--

CREATE TABLE `sptests` (
  `Id` int NOT NULL,
  `user_id` int NOT NULL,
  `test_id` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Correct` int NOT NULL DEFAULT '0',
  `Wrong` int NOT NULL DEFAULT '0',
  `point` float DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sptests`
--

INSERT INTO `sptests` (`Id`, `user_id`, `test_id`, `Title`, `Correct`, `Wrong`, `point`) VALUES
(16, 7, '16,18,17,19', 'puanlı soru', 2, 2, 50);

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE `tests` (
  `Id` int NOT NULL,
  `book_id` int NOT NULL,
  `Title` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `A` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `B` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `C` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `D` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `E` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Correct` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tests`
--

INSERT INTO `tests` (`Id`, `book_id`, `Title`, `A`, `B`, `C`, `D`, `E`, `Correct`) VALUES
(10, 498, '(I) Hoşgörüye giden ilk adım, kişinin kendisinde eksikliklerin olabileceğini düşünmesiyle başlar. (II) Bu da \r\nkişilerin eleştiriye açık olmalarını gerektirir. (III) Eğer \r\nbirileri bizim eksiklerimizi ve yanlışlarımızı söylediğin de savunmaya geçiyorsak ya da saldırganlaşıyorsak \r\nkendimizi sorgulamalıyız. (IV) Ama eğer yanlışlarımızın \r\nolabileceğini düşünüyor, hatta bazen bunlarla dalga \r\ngeçip gülebiliyorsak o zaman doğru şekilde ilerliyoruz \r\ndemektir. (V) Kendinde eksikler olabileceğini düşünen \r\ninsan daha dikkatli davranır. (VI) Çünkü kendisinin de \r\nhata yapma potansiyeli olduğunu bilir. (VII) Ama hata \r\nyapabileceği için tedirgin değildir; kendine güvenir ve \r\nişine devam eder.&lt;br&gt;\r\n&lt;b&gt;Bu parça iki paragrafa bölünmek istense ikinci paragraf hangi cümleyle başlar&lt;/b&gt;', 'II.', 'III.', 'IV.', 'V.', 'VI.', 'C'),
(8, 498, '“(I) İçinizdeki zili ilk çalan odur; yaşadığınız ya da tanık olduğunuz bir olay, tanımadığınız bir insanın yüzü, \r\ngördüğünüz bir film, okuduğunuz bir haber, bir kuş sürüsünün hızla geçişi. (II) Evet, içinizdeki zili ilk çalan \r\nesindir. (III) Kapıyı açarsınız, ondan sonra zorlu uğraş \r\nbaşlar. (IV) Esin yetmez çünkü. (V) Esine inanıyorum, \r\nama çalışmaya daha çok inanıyorum.”&lt;br&gt;\r\n&lt;b&gt;Yukarıdaki parça için en uygun başlık aşağıdakilerden hangisidir?&lt;/b&gt;', 'Esin ve Çalışma', 'Şairin Tanıklığı', 'Zil ve Kapı', 'Şiirin Zorluğu', 'İnanmak ve Yapmak', 'B'),
(9, 498, '“Bu sevginin arkasında yatan sır, benim ilk başta sade \r\nbir vatandaş olmamdan kaynaklanıyor. Halkın arasından gelmemden kaynaklanıyor, sırtımı halka dayamamdan kaynaklanıyor. Ben bir balon değilim.”&lt;br&gt;\r\n&lt;b&gt;Bu parça aşağıdaki sorulardan hangisine karşılık \r\nsöylenmiş olabilir ?&lt;/b&gt;', 'Size olan sevginin arkasında yatan sır nedir?', 'Sizi basında televizyonda neden özel hayatınızla  görmüyoruz?', 'Çok sevilmenizin sırrı hep komik adamı oynamanız  mı?', 'Günlük yaşamınızda da komik biri misiniz?', 'Sizi diğer popüler oyunculardan ayıran şey nedir?', 'C'),
(11, 500, 'Aşağıdaki eserlerden hangisi Halit Ziya Uşaklıgil’e aittir?', 'Kiralık Konak', 'Mai ve Siyah', 'Yaban', 'Sinekli Bakkal', 'Eylül', 'B'),
(12, 500, '&quot;Tutunamayanlar&quot; romanının yazarı kimdir?', 'Yusuf Atılgan', 'Oğuz Atay', 'Ahmet Hamdi Tanpınar', 'Peyami Safa', 'Hakan Günday', 'B'),
(13, 500, 'Aşağıdakilerden hangisi Reşat Nuri Güntekin’in bir romanı değildir?', 'Çalıkuşu', 'Yaprak Dökümü', 'Dudaktan Kalbe', 'Yeşil Gece', 'Sergüzeşt', 'E'),
(14, 500, '&quot;Huzur&quot; romanı kime aittir?', 'Ahmet Hamdi Tanpınar', 'Halide Edip Adıvar', 'Yakup Kadri Karaosmanoğlu', 'Orhan Pamuk', 'Sabahattin Ali', 'A'),
(15, 500, 'Aşağıdaki yazarlardan hangisi &quot;Eylül&quot; romanını yazmıştır?', 'Mehmet Rauf', 'Hüseyin Rahmi Gürpınar', 'Halit Ziya Uşaklıgil', 'Namık Kemal', 'Ahmet Mithat Efendi', 'A'),
(16, 501, 'Aşağıdaki cümlelerin hangisinde &quot;belirtili nesne&quot; vardır?', 'Çocuklar sabaha kadar oynadı.', 'Kitabı masanın üstüne koydu.', 'Arkadaşlarıyla parka gitti.', 'Bahçede uzun uzun yürüdü.', 'Onunla saatlerce konuştuk.', 'B'),
(17, 501, 'Aşağıdaki cümlelerin hangisinde &quot;zarf tümleci&quot; yoktur?', 'Dersi dikkatle dinledi.', 'Sabah erken kalktım.', 'Öğrenciler sınıfa girdiler.', 'Hızlıca kapıyı kapattı.', 'Sessizce odaya girdi.', 'C'),
(18, 501, 'Aşağıdakilerden hangisinde birleşik fiil yoktur?', 'Ders çalışmaya başladı.', 'Onu görünce donakaldı.', 'Bu işe çok üzülmüş.', 'Gözyaşlarını tutamadı.', 'Evi temizliyor.', 'E'),
(19, 501, 'Aşağıdaki cümlelerin hangisinde &quot;-ki&quot; eki ilgi zamiri görevindedir?', 'Dünkü sınav çok zordu.', 'Bu kitap seninki kadar güzel.', 'Evdeki ışık sönmüştü.', 'Bahçedeki çiçekler solmuş.', 'Şu gördüğün köyde doğmuş.', 'B'),
(20, 501, 'Aşağıdakilerden hangisinde &quot;edat&quot; kullanılmamıştır?', 'Onunla birlikte geldik.', 'Bu işi senin için yaptım.', 'Kalem kutusunun içinde.', 'Okula kadar yürüdük.', 'Ders boyunca not aldık.', 'C');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Id` int NOT NULL,
  `Name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Username` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Mail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Id`, `Name`, `Username`, `Mail`, `Password`) VALUES
(7, 'Emir İpek', 'Emir', 'emiripek@hotmail.com.tr', '$2y$10$BTAQhvWWV/jbSpXdIxZHsO/Vf/DBDyg3HIOSxu993PKkLl0Zrg/MG');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `sptests`
--
ALTER TABLE `sptests`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=507;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sptests`
--
ALTER TABLE `sptests`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tests`
--
ALTER TABLE `tests`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
