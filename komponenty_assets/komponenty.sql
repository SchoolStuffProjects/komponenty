-- phpMyAdmin SQL Dump
-- version 4.6.6deb4+deb9u1
-- https://www.phpmyadmin.net/
--
-- Počítač: localhost:3306
-- Vytvořeno: Pon 17. kvě 2021, 23:29
-- Verze serveru: 10.0.38-MariaDB-0+deb8u1
-- Verze PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáze: `c23ryc`
--

-- --------------------------------------------------------

--
-- Struktura tabulky `mt_komponent`
--

CREATE TABLE `mt_komponent` (
  `id` int(11) NOT NULL,
  `nazev` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `vyrobce_id` int(11) NOT NULL,
  `typKomponent_id` int(11) NOT NULL,
  `pic` varchar(255) NOT NULL,
  `delete` tinyint(4) NOT NULL,
  `odkaz` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vypisuji data pro tabulku `mt_komponent`
--

INSERT INTO `mt_komponent` (`id`, `nazev`, `vyrobce_id`, `typKomponent_id`, `pic`, `delete`, `odkaz`) VALUES
(1, 'Z270 TOMAHAWK', 1, 1, 'z270tomahawk.jpg', 0, 'https://www.alza.cz/msi-z270-tomahawk-d4652323.htm?o=1'),
(2, 'PRIME x299-A', 2, 1, 'primex299-a.jpg', 0, 'https://www.alza.cz/asus-prime-x299-a-d5007825.htm'),
(3, 'RYZEN 5 1600X', 4, 2, 'ryzen51600x.jpg', 0, 'https://www.alza.cz/amd-ryzen-5-1600x-d4822332.htm'),
(5, 'X370 GAMING PRO CARBON', 1, 1, 'x370gamingprocarbon.jpg', 0, 'https://www.alza.cz/msi-x370-gaming-pro-carbon-d4745034.htm'),
(6, 'x299 AORUS Ultra Gaming Pro', 5, 1, 'x299aorusultragamingpro.jpg', 0, 'https://www.alza.cz/gigabyte-x299-aorus-ultra-gaming-pro-d5352499.htm'),
(7, 'Z270 GAMING PLUS', 1, 1, 'z270gamingplus.jpg', 0, 'https://www.alza.cz/msi-z270-gaming-plus-levne-d5075845.htm'),
(8, 'X370 Pro4', 6, 1, 'x370pro4.jpg', 0, 'https://www.alza.cz/asrock-x370-pro4-d5466534.htm'),
(9, 'B360 Gaming L4', 6, 1, 'b360gamingk4.jpg', 0, 'https://www.alza.cz/asrock-b360-gaming-k4-d5289350.htm'),
(10, 'Z270 KRAIT GAMING', 1, 1, 'z270kraitgaming.jpg', 0, 'https://www.alza.cz/msi-z270-krait-gaming-bazar-d5085288.htm'),
(11, 'Core i5-8600K', 3, 2, 'corei5-8600k.jpg', 0, 'https://www.alza.cz/intel-core-i5-8600k-d5116998.htm'),
(12, 'HyperX 2x8GB KIT Predator Series', 8, 3, 'hyperx16gbddr43200mhzpredatorseries.jpg', 0, 'https://www.alza.cz/hyperx-16gb-kit-ddr4-3200mhz-cl16-predator-series-d4300649.htm'),
(13, 'Z270 PC MATE', 1, 1, 'z270pcmate.jpg', 0, 'https://www.alza.cz/msi-z270-pc-mate-d4651550.htm'),
(14, 'MAXIMUS IX CODE', 2, 1, 'maximusixcode.jpg', 0, 'https://www.alza.cz/asus-maximus-ix-code-bazar-d5234356.htm'),
(15, 'GeForce RTX 2080Ti SEA HAWK X', 1, 4, 'geforcertx2080tiseahawkx.jpg', 0, 'https://www.alza.cz/msi-geforce-rtx-2080ti-sea-hawk-x-d5479840.htm'),
(16, 'BarraCuda 1 TB', 14, 5, 'barracuda1tb.jpg', 0, 'https://www.alza.cz/seagate-barracuda-1tb-d4494384.htm'),
(17, 'Focus Plus 850 Platinum', 28, 6, 'focusplus850platinum.jpg', 0, 'https://www.alza.cz/seasonic-focus-plus-850-platinum-d5041961.htm'),
(18, 'H500 černá', 23, 7, 'h500cerna.jpg', 0, 'https://www.alza.cz/nzxt-h500?dq=5363078'),
(19, 'RYZEN 3 1200', 4, 2, 'ryzen31200.jpg', 0, 'https://www.alza.cz/amd-ryzen-3-1200-d5072232.htm'),
(20, 'RYZEN 7 2700X', 4, 2, 'ryzen72700x.jpg', 0, 'https://www.alza.cz/amd-ryzen-7-2700x-d5287906.htm'),
(21, 'RYZEN 7 1700X', 4, 2, 'ryzen71700x.jpg', 0, 'https://www.alza.cz/amd-ryzen-7-1700x-d4737710.htm'),
(22, 'RYZEN 3 1300X', 4, 2, 'ryzen31300x.jpg', 0, 'https://www.alza.cz/amd-ryzen-3-1300x-d5072235.htm'),
(23, 'Core i9-9900K', 3, 2, 'corei9-9900k.jpg', 0, 'https://www.alza.cz/intel-core-i9-9900k-d5452855.htm'),
(24, 'Core i7-9700K', 3, 2, 'corei7-9700k.jpg', 0, 'https://www.alza.cz/intel-core-i7-9700k-d5463127.htm'),
(25, 'Core i3-8360K', 3, 2, 'corei3-8350k.jpg', 0, 'https://www.alza.cz/intel-core-i3-8350k-d5113031.htm'),
(26, 'Pentium G4560', 3, 2, 'pentiumg4560.jpg', 0, 'https://www.alza.cz/intel-pentium-g4560-d4630170.htm'),
(27, 'Trident Z 2x8GB KIT', 12, 3, 'tridentzrgb16gbddr43200mhz.jpg', 0, 'https://www.alza.cz/g-skill-16gb-kit-ddr4-3200mhz-cl16-trident-z-rgb-d4948815.htm'),
(28, 'HyperX 2x8GB KIT Fury Black Series', 8, 3, 'hyperx16gbddr42666mhzfuryblackseries.jpg', 0, 'https://www.alza.cz/hyperx-16gb-kit-ddr4-2666mhz-cl16-fury-black-series-d4827403.htm'),
(29, 'XPG 2x16GB KIT GAMMIX D10, červená', 7, 3, 'xpg32gbddr43000mhzgammixd10red.jpg', 0, 'https://www.alza.cz/adata-32gb-ddr4-3000mhz-cl16-xpg-gammix-d10-cervena-d5118748.htm'),
(30, 'Vengeance 2x8GB KIT PRO Series', 9, 3, 'vengeanceddr416gb3200mhzproseries.jpg', 0, 'https://www.alza.cz/corsair-16gb-kit-ddr4-3200mhz-cl16-vengeance-rgb-pro-series-d5488690.htm'),
(31, 'Signature Line 2x4GB KIT s chladičem', 31, 3, 'signature8gbddr42666mhzscoolerem.jpg', 0, 'https://www.alza.cz/patriot-8gb-kit-ddr4-2400mhz-cl17-signature-line?dq=5373785'),
(32, 'Trident Z 2x8GB KIT', 12, 3, 'tridentz16gbddr43200mhz.jpg', 0, 'https://www.alza.cz/g-skill-16gb-kit-ddr4-3200mhz-cl14-trident-z-d4948809.htm'),
(33, 'Ballistix Sport LT Single Ranked Grey 2x8GB KIT', 10, 3, 'ballistixsportltsinglerankedgrey16gbddr43000mhz.jpg', 0, 'https://www.alza.cz/crucial-16gb-kit-ddr4-3000mhz-cl16-ballistix-sport-lt-single-ranked-grey-d5492820.htm'),
(34, 'NITRO+ Radeon RX 580', 16, 4, 'nitro+radeonrx580.jpg', 0, 'https://www.alza.cz/sapphire-nitro-radeon-rx-580-oc-8g-d4845417.htm'),
(35, 'GTS Radeon RX 580 TripleX Edition', 29, 4, 'gtstriplexeditionradeonrx580.jpg', 0, 'https://www.alza.cz/xfx-radeon-rx-580-4gb-gts-triplex-edition-d4842139.htm'),
(36, 'ROG STRIX GAMING RX570 DirectCU II', 2, 4, 'rogstrixgamingrx570directcuii.jpg', 0, 'https://www.alza.cz/asus-rog-strix-gaming-rx570-directcu-ii-4gb-d4929298.htm'),
(37, 'ARMOR Radeon RX 570', 1, 4, 'armorradeonrx570.jpg', 0, 'https://www.alza.cz/msi-radeon-rx-570-armor-8g-oc-levne-d5298879.htm'),
(38, 'GeForce GTX 1070 Ti GAMING', 1, 4, 'geforcegtx1070tigaming.jpg', 0, 'https://www.alza.cz/msi-geforce-gtx-1070-ti-gaming-8g-sleva-d5228097.htm'),
(39, 'GeForce RTX 2060 XC BLACK GAMING', 17, 4, 'geforcertx2060blackgaming.jpg', 0, 'https://www.alza.cz/evga-geforce-rtx-2060-xc-black-gaming-d5530467.htm'),
(40, 'GeForce RTX 2070 GAMING Z', 1, 4, 'geforcertx2070gamingz.jpg', 0, 'https://www.alza.cz/msi-geforce-rtx-2070-gaming-z-8g-d5478815.htm'),
(41, 'BarraCuda Pro 2TB', 14, 5, 'barracuda2tb.jpg', 0, 'https://www.alza.cz/seagate-barracuda-pro-2tb-d5147621.htm'),
(42, 'Blue 1TB', 13, 5, 'blue1tb.jpg', 0, 'https://www.alza.cz/wd-blue-1000gb-64mb-cache-d2922066.htm'),
(43, 'Black 6TB', 13, 5, 'black6tb.jpg', 0, 'https://www.alza.cz/wd-black-6tb-d5266104.htm'),
(44, 'Blue 3D NAND SSD', 13, 5, 'blue3dnandssd500gb.jpg', 0, 'https://www.alza.cz/wd-blue-3d-nand-ssd-500gb-2-5-d5090701.htm'),
(45, '860 EVO', 15, 5, '860evo1000gb.jpg', 0, 'https://www.alza.cz/samsung-860-evo-1000gb-d5258009.htm'),
(46, 'A400 7mm', 8, 5, 'a4007mm120gb.jpg', 0, 'https://www.alza.cz/kingston-a400-120gb-7mm-d4798610.htm'),
(47, 'Blue 3D NAND SSD', 13, 5, 'blue3dnandssd500gb.jpg', 0, 'https://www.alza.cz/wd-blue-3d-ssd-nand-250gb-2-5-d5090700.htm'),
(48, 'SuperNOVA 850 G+', 17, 6, 'supernova850g+.jpg', 0, 'https://www.alza.cz/evga-supernova-850-g-d5287817.htm'),
(49, 'RM750i', 9, 6, 'rm750i.jpg', 0, 'https://www.alza.cz/corsair-rm750i-d2670521.htm'),
(50, 'M12II-620 Evo', 18, 6, 'm12ii-620evo.jpg', 0, 'https://www.alza.cz/seasonic-m12ii-620-evo-d1470792.htm'),
(51, '450B', 17, 6, '450b.jpg', 0, 'https://www.alza.cz/evga-450b-d5444985.htm'),
(52, 'VS650 White Certified', 9, 6, 'vs650whitecertified.jpg', 0, 'https://www.alza.cz/corsair-vs650-white-certified-d5493625.htm'),
(53, 'G550 černý', 21, 6, 'g550cerny.jpg', 0, 'https://www.alza.cz/evolveo-g550-cerny-d4562826.htm'),
(54, 'VS450 White Certified', 9, 6, 'vs450whitecertified.jpg', 0, 'https://www.alza.cz/corsair-vs450-white-certified-d5286654.htm'),
(55, 'Z11 Plus', 19, 7, 'z11plus.jpg', 0, 'https://www.alza.cz/zalman-z11-plus-d305700.htm'),
(56, 'Define R6', 32, 7, 'definer6.jpg', 0, 'https://www.alza.cz/fractal-design-define-r6-black-d5133393.htm'),
(57, 'Regnum RG4T Pure Black TG', 20, 7, 'regnumrg4tpureblacktg.jpg', 0, 'https://www.alza.cz/silentiumpc-regnum-rg4t-tempered-glass-cerna-d5153285.htm'),
(58, 'H500 bílá', 23, 7, 'h500bila.jpg', 0, 'https://www.alza.cz/nzxt-h500?dq=5363077'),
(59, 'Define S', 32, 7, 'defines.jpg', 0, 'https://www.alza.cz/fractal-design-define-s-d2423592.htm'),
(60, 'Focus G Petrol Blue', 32, 7, 'focusgpetrolblue.jpg', 0, 'https://www.alza.cz/fractal-design-focus-g-petrol-blue-d5088184.htm'),
(61, 'Define XL R2', 32, 7, 'definexlr2.jpg', 0, 'https://www.alza.cz/fractal-design-define-xl-r2-black-pearl-d457496.htm'),
(62, 'NH-D15', 24, 8, 'nh-d15.jpg', 0, 'https://www.alza.cz/noctua-nh-d15-d1480167.htm'),
(63, 'Spartan 3 PRO', 20, 8, 'spartan3pro.jpg', 0, 'https://www.alza.cz/silentiumpc-spartan-3-pro-he1024-d4076311.htm'),
(64, 'Fera 3', 20, 8, 'fera3.jpg', 0, 'https://www.alza.cz/silentiumpc-fera-3-he1224-d4076308.htm'),
(65, 'Kraken X62', 23, 8, 'krakenx62.jpg', 0, 'https://www.alza.cz/nzxt-kraken-x62-d4614387.htm'),
(66, 'CORE FROZR L', 1, 8, 'coreforzrl.jpg', 0, 'https://www.alza.cz/msi-core-frozr-l-d4846622.htm'),
(67, 'Hyper 212X', 22, 8, 'hyper212x.jpg', 0, 'https://www.alza.cz/cooler-master-hyper-212x-d4156731.htm'),
(68, 'Freezer 7 Pro', 25, 8, 'freezer7pro.jpg', 0, 'https://www.alza.cz/arctic-freezer-7-pro-rev-2-d135346.htm'),
(69, 'Mugen 5', 33, 8, 'mugen5.jpg', 0, 'https://www.alza.cz/scythe-mugen-5-rev-b-d5092651.htm');

-- --------------------------------------------------------

--
-- Struktura tabulky `mt_nazevparametr`
--

CREATE TABLE `mt_nazevparametr` (
  `id` int(11) NOT NULL,
  `nazev` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vypisuji data pro tabulku `mt_nazevparametr`
--

INSERT INTO `mt_nazevparametr` (`id`, `nazev`) VALUES
(1, 'Formát'),
(2, 'Socket'),
(3, 'Čipset'),
(4, 'Počet RAM slotů'),
(5, 'Typ paměti RAM'),
(6, 'Maximální velikost RAM [GB]'),
(7, 'Maximální frekvence RAM [MHz]'),
(8, 'Počet jader'),
(9, 'Počet vláken'),
(10, 'Pracovní frekvence [GHz]'),
(11, 'TDP [W]'),
(12, 'Technologie [nm]'),
(13, 'Cache [MB]'),
(14, 'Podporovaný typ RAM'),
(15, 'Velikost RAM [GB]'),
(16, 'Frekvence [MHz]'),
(17, 'Počet kusů [ks]'),
(18, 'Časování [CL]'),
(19, 'Napětí [V]'),
(20, 'Velikost paměti RAM [GB]'),
(21, 'Doporučený výkon zdroje [W]'),
(22, 'Šířka sběrnice [Bit]'),
(23, 'Frekvence jádra [MHz]'),
(24, 'Délka karty [cm]'),
(25, 'Frekvence paměti [MHz]'),
(26, 'Připojení k PC'),
(27, 'Verze DirectX'),
(28, 'Přídavné napájení'),
(29, 'Kapacita úložiště [GB]'),
(30, 'Typ úložiště'),
(31, 'Rozhraní'),
(32, 'Rychlost otáček [ot/min]'),
(33, 'Výkon [W]'),
(34, 'Formát'),
(35, 'Certifikace'),
(36, 'Účinnost [%]'),
(37, 'Modulární'),
(38, 'Velikost'),
(39, 'Barva'),
(40, 'Formát základní desky'),
(41, 'Pozice zdroje'),
(42, 'Rychlost čtení [MB/s]'),
(43, 'Rychlost zápisu [MB/s]'),
(44, 'Typ chlazení'),
(45, 'Maximální rychlost [ot/min]'),
(46, 'Maximální hlučnost [dB]'),
(47, 'Průtok vzduchu [CFM]'),
(48, 'Výška [cm]');

-- --------------------------------------------------------

--
-- Struktura tabulky `mt_parametr`
--

CREATE TABLE `mt_parametr` (
  `idParametr` int(11) NOT NULL,
  `hodnota` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `jednotka_id` int(11) DEFAULT NULL,
  `nazevParametr_id` int(11) NOT NULL,
  `komponent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vypisuji data pro tabulku `mt_parametr`
--

INSERT INTO `mt_parametr` (`idParametr`, `hodnota`, `jednotka_id`, `nazevParametr_id`, `komponent_id`) VALUES
(2, 'ATX', NULL, 1, 1),
(3, 'Intel 1151', NULL, 2, 1),
(4, 'Intel Z270', NULL, 3, 1),
(5, '4', NULL, 4, 1),
(6, 'DDR4 DIMM', NULL, 5, 1),
(7, '64', 2, 6, 1),
(8, '3800', 3, 7, 1),
(9, 'Intel 2066', NULL, 2, 2),
(10, 'Intel X299', NULL, 3, 2),
(11, '4000', 3, 7, 2),
(12, 'ATX', NULL, 1, 2),
(13, '128', 2, 6, 2),
(14, '8', NULL, 4, 2),
(15, 'DDR4 DIMM', NULL, 5, 2),
(16, '6', NULL, 8, 3),
(17, '12', NULL, 9, 3),
(18, '3,6', 4, 10, 3),
(19, '95', 5, 11, 3),
(20, '14', 7, 12, 3),
(21, '16', 6, 13, 3),
(22, 'DDR4', NULL, 14, 3),
(23, 'ATX', NULL, 1, 5),
(24, 'AMD AM4', NULL, 2, 5),
(25, 'AMD X370', NULL, 3, 5),
(26, '4', NULL, 4, 5),
(27, 'DDR4 DIMM', NULL, 5, 5),
(28, '64', NULL, 6, 5),
(29, '3200', NULL, 7, 5),
(30, 'DDR4 DIMM', NULL, 5, 12),
(31, '2', NULL, 17, 12),
(32, '16', NULL, 15, 12),
(33, '3200', NULL, 16, 12),
(34, '16', NULL, 18, 12),
(35, '1,35', NULL, 19, 12),
(36, '11', 2, 20, 15),
(37, 'GDDR6', NULL, 5, 15),
(38, '7000', 3, 25, 15),
(39, '1350', 3, 23, 15),
(40, '352', NULL, 22, 15),
(41, '26,8', NULL, 24, 15),
(42, '650', 5, 21, 15),
(43, 'PCI Express x16 3.0', NULL, 26, 15),
(44, '1x6-pin + 1x8-pin', NULL, 28, 15),
(45, '12', NULL, 27, 15),
(52, '3,5\"', NULL, 1, 16),
(53, '64', NULL, 13, 16),
(54, '1000', NULL, 29, 16),
(55, 'HDD', NULL, 30, 16),
(56, 'SATA III', NULL, 31, 16),
(57, '7200', NULL, 32, 16),
(58, '850', NULL, 33, 17),
(59, 'ATX', NULL, 34, 17),
(60, '80 PLUS Platinum', NULL, 35, 17),
(61, '89', NULL, 36, 17),
(62, 'Ano', NULL, 37, 17),
(63, 'Midi Tower', NULL, 38, 18),
(64, 'Černá', NULL, 39, 18),
(65, 'ATX', NULL, 40, 18),
(66, 'Dole', NULL, 41, 18),
(67, 'ATX', NULL, 1, 6),
(68, 'Intel 2066', NULL, 2, 6),
(69, 'Intel X299', NULL, 3, 6),
(70, '8', NULL, 4, 6),
(71, 'DDR4 DIMM', NULL, 5, 6),
(72, '128', NULL, 6, 6),
(73, '4400', NULL, 7, 6),
(74, 'ATX', NULL, 1, 7),
(75, 'Intel 1151', NULL, 2, 7),
(76, 'Intel Z270', NULL, 3, 7),
(77, '4', NULL, 4, 7),
(78, 'DDR4 DIMM', NULL, 5, 7),
(79, '64', NULL, 6, 7),
(80, '3800', NULL, 7, 7),
(81, 'ATX', NULL, 1, 8),
(82, 'AMD AM4', NULL, 2, 8),
(83, 'AMD X370', NULL, 3, 8),
(84, '4', NULL, 4, 8),
(85, 'DDR4 DIMM', NULL, 5, 8),
(86, '64', NULL, 6, 8),
(87, '3200', NULL, 7, 8),
(88, 'ATX', NULL, 1, 9),
(89, 'Intel 1151', NULL, 2, 9),
(90, 'Intel B360', NULL, 3, 9),
(91, '4', NULL, 4, 9),
(92, 'DDR4 DIMM', NULL, 5, 9),
(93, '64', NULL, 6, 9),
(94, '2666', NULL, 7, 9),
(95, 'ATX', NULL, 1, 10),
(96, 'Intel 1151', NULL, 2, 10),
(97, 'Intel Z270', NULL, 3, 10),
(98, '4', NULL, 4, 10),
(99, 'DDR4 DIMM', NULL, 5, 10),
(100, '64', NULL, 6, 10),
(101, '3800', NULL, 7, 10),
(102, 'ATX', NULL, 1, 13),
(103, 'Intel 1151', NULL, 2, 13),
(104, 'Intel Z270', NULL, 3, 13),
(105, '4', NULL, 4, 13),
(106, 'DDR4 DIMM', NULL, 5, 13),
(107, '64', NULL, 6, 13),
(108, '3800', NULL, 7, 13),
(109, 'ATX', NULL, 1, 14),
(110, 'Intel 1151', NULL, 2, 14),
(111, 'Intel Z270', NULL, 3, 14),
(112, '4', NULL, 4, 14),
(113, 'DDR4 DIMM', NULL, 5, 14),
(114, '64', NULL, 6, 14),
(115, '4133', NULL, 7, 14),
(117, 'AMD AM4', NULL, 2, 3),
(118, 'AMD AM4', NULL, 2, 3),
(119, '6', NULL, 8, 11),
(120, '6', NULL, 9, 11),
(121, '3,6', NULL, 10, 11),
(122, '95', NULL, 11, 11),
(123, '14', NULL, 12, 11),
(124, '9', NULL, 13, 11),
(125, 'DDR4', NULL, 14, 11),
(126, 'Intel 1151', NULL, 2, 11),
(127, '4', NULL, 8, 19),
(128, '4', NULL, 9, 19),
(129, '3,1', NULL, 10, 19),
(130, '65', NULL, 11, 19),
(131, '14', NULL, 12, 19),
(132, '8', NULL, 13, 19),
(133, 'DDR4', NULL, 14, 19),
(134, 'AMD AM4', NULL, 2, 19),
(135, '8', NULL, 8, 20),
(136, '16', NULL, 9, 20),
(137, '3,7', NULL, 10, 20),
(138, '105', NULL, 11, 20),
(139, '12', NULL, 12, 20),
(140, '16', NULL, 13, 20),
(141, 'DDR4', NULL, 14, 20),
(142, 'AMD AM4', NULL, 2, 20),
(143, '8', NULL, 8, 21),
(144, '16', NULL, 9, 21),
(145, '3,4', NULL, 10, 21),
(146, '95', NULL, 11, 21),
(147, '14', NULL, 12, 21),
(148, '16', NULL, 13, 21),
(149, 'DDR4', NULL, 14, 21),
(150, 'AMD AM4', NULL, 2, 21),
(151, '4', NULL, 8, 22),
(152, '4', NULL, 9, 22),
(153, '3,5', NULL, 10, 22),
(154, '65', NULL, 11, 22),
(155, '14', NULL, 12, 22),
(156, '8', NULL, 13, 22),
(157, 'DDR4', NULL, 14, 22),
(158, 'AMD AM4', NULL, 2, 22),
(159, '8', NULL, 8, 23),
(160, '16', NULL, 9, 23),
(161, '3,6', NULL, 10, 23),
(162, '95', NULL, 11, 23),
(163, '14', NULL, 12, 23),
(164, '16', NULL, 13, 23),
(165, 'DDR4', NULL, 14, 23),
(166, 'Intel 1151', NULL, 2, 23),
(167, '8', NULL, 8, 24),
(168, '8', NULL, 9, 24),
(169, '3,6', NULL, 10, 24),
(170, '95', NULL, 11, 24),
(171, '14', NULL, 12, 24),
(172, '12', NULL, 13, 24),
(173, 'DDR4', NULL, 14, 24),
(174, 'Intel 1151', NULL, 2, 24),
(175, '4', NULL, 8, 25),
(176, '4', NULL, 9, 25),
(177, '4', NULL, 10, 25),
(178, '91', NULL, 11, 25),
(179, '14', NULL, 12, 25),
(180, '8', NULL, 13, 25),
(181, 'DDR4', NULL, 14, 25),
(182, 'Intel 1151', NULL, 2, 25),
(183, '2', NULL, 8, 26),
(184, '4', NULL, 9, 26),
(185, '3,5', NULL, 10, 26),
(186, '54', NULL, 11, 26),
(187, '14', NULL, 12, 26),
(188, '3', NULL, 13, 26),
(189, 'DDR4', NULL, 14, 26),
(190, 'Intel 1151', NULL, 2, 26),
(191, 'DDR4 DIMM', NULL, 5, 27),
(192, '16', NULL, 15, 27),
(193, '3200', NULL, 16, 27),
(194, '2', NULL, 17, 27),
(195, '16', NULL, 18, 27),
(196, '1,35', NULL, 19, 27),
(197, 'DDR4 DIMM', NULL, 5, 28),
(198, '16', NULL, 15, 28),
(199, '2666', NULL, 16, 28),
(200, '2', NULL, 17, 28),
(201, '16', NULL, 18, 28),
(202, '1,2', NULL, 19, 28),
(203, 'DDR4 DIMM', NULL, 5, 29),
(204, '32', NULL, 15, 29),
(205, '3000', NULL, 16, 29),
(206, '2', NULL, 17, 29),
(207, '16', NULL, 18, 29),
(208, '1,2', NULL, 19, 29),
(209, 'DDR4 DIMM', NULL, 5, 30),
(210, '16', NULL, 15, 30),
(211, '3200', NULL, 16, 30),
(212, '2', NULL, 17, 30),
(213, '16', NULL, 18, 30),
(214, '1,35', NULL, 19, 30),
(215, 'DDR4 DIMM', NULL, 5, 31),
(216, '8', NULL, 15, 31),
(217, '2666', NULL, 16, 31),
(218, '2', NULL, 17, 31),
(219, '19', NULL, 18, 31),
(220, '1,2', NULL, 19, 31),
(221, 'DDR4 DIMM', NULL, 5, 32),
(222, '16', NULL, 15, 32),
(223, '3200', NULL, 16, 32),
(224, '2', NULL, 17, 32),
(225, '14', NULL, 18, 32),
(226, '1,35', NULL, 19, 32),
(227, 'DDR4 DIMM', NULL, 5, 33),
(228, '16', NULL, 15, 33),
(229, '3000', NULL, 16, 33),
(230, '2', NULL, 17, 33),
(231, '16', NULL, 18, 33),
(232, '1,35', NULL, 19, 33),
(233, '8', NULL, 20, 34),
(234, '500', NULL, 21, 34),
(235, '256', NULL, 22, 34),
(236, '1340', NULL, 23, 34),
(237, '26', NULL, 24, 34),
(238, '8000', NULL, 25, 34),
(239, 'PCI Express x16 3.0', NULL, 26, 34),
(240, '12', NULL, 27, 34),
(241, '1x6-pin + 1x8-pin', NULL, 28, 34),
(242, 'GDDR5', NULL, 5, 34),
(243, '8', NULL, 20, 35),
(244, '550', NULL, 21, 35),
(245, '256', NULL, 22, 35),
(246, '1366', NULL, 23, 35),
(247, '27', NULL, 24, 35),
(248, '8000', NULL, 25, 35),
(249, 'PCI Express x16 3.0', NULL, 26, 35),
(250, '12', NULL, 27, 35),
(251, '1x8-pin', NULL, 28, 35),
(252, 'GDDR5', NULL, 5, 35),
(253, '4', NULL, 20, 36),
(254, 'Neuvádí se', NULL, 21, 36),
(255, '256', NULL, 22, 36),
(256, '1254', NULL, 23, 36),
(257, '24', NULL, 24, 36),
(258, '7000', NULL, 25, 36),
(259, 'PCI Express x16 3.0', NULL, 26, 36),
(260, '12', NULL, 27, 36),
(261, '1x8-pin', NULL, 28, 36),
(262, 'GDDR5', NULL, 5, 36),
(263, '8', NULL, 20, 37),
(264, '450', NULL, 21, 37),
(265, '256', NULL, 22, 37),
(266, '1268', NULL, 23, 37),
(267, '24,6', NULL, 24, 37),
(268, '7000', NULL, 25, 37),
(269, 'PCI Express x16 3.0', NULL, 26, 37),
(270, '12', NULL, 27, 37),
(271, '1x8-pin', NULL, 28, 37),
(272, 'GDDR5', NULL, 5, 37),
(273, '8', NULL, 20, 38),
(274, '500', NULL, 21, 38),
(275, '256', NULL, 22, 38),
(276, '1607', NULL, 23, 38),
(277, '27,9', NULL, 24, 38),
(278, '8008', NULL, 25, 38),
(279, 'PCI Express x16 3.0', NULL, 26, 38),
(280, '12', NULL, 27, 38),
(281, '1x6-pin + 1x8-pin', NULL, 28, 38),
(282, 'GDDR5', NULL, 5, 38),
(283, '6', NULL, 20, 39),
(284, '500', NULL, 21, 39),
(285, '192', NULL, 22, 39),
(286, '1365', NULL, 23, 39),
(287, '17,27', NULL, 24, 39),
(288, '14000', NULL, 25, 39),
(289, 'PCI Express x16 3.0', NULL, 26, 39),
(290, '12', NULL, 27, 39),
(291, '1x8-pin', NULL, 28, 39),
(292, 'GDDR6', NULL, 5, 39),
(293, '8', NULL, 20, 40),
(294, '550', NULL, 21, 40),
(295, '256', NULL, 22, 40),
(296, '1410', NULL, 23, 40),
(297, '30,7', NULL, 24, 40),
(298, 'Neuvádí se', NULL, 25, 40),
(299, 'PCI Express x16 3.0', NULL, 26, 40),
(300, '12 API', NULL, 27, 40),
(301, '1x6-pin + 1x8-pin', NULL, 28, 40),
(302, 'GDDR6', NULL, 5, 40),
(303, '2000', NULL, 29, 41),
(304, 'HDD', NULL, 30, 41),
(305, 'SATA III', NULL, 31, 41),
(306, '7200', NULL, 32, 41),
(307, '3,5\"', NULL, 1, 41),
(308, '128', NULL, 13, 41),
(309, '1000', NULL, 29, 42),
(310, 'HDD', NULL, 30, 42),
(311, 'SATA III', NULL, 31, 42),
(312, '5400', NULL, 32, 42),
(313, '3,5\"', NULL, 1, 42),
(314, 'Neuvádí se', NULL, 13, 42),
(315, '6000', NULL, 29, 43),
(316, 'HDD', NULL, 30, 43),
(317, 'SATA III', NULL, 31, 43),
(318, '7200', NULL, 32, 43),
(319, '3,5\"', NULL, 1, 43),
(320, '128', NULL, 13, 43),
(321, '500', NULL, 29, 44),
(322, 'SSD', NULL, 30, 44),
(323, 'SATA III', NULL, 31, 44),
(324, '560', NULL, 42, 44),
(325, '530', NULL, 43, 44),
(326, '2,5\"', NULL, 1, 44),
(327, '1000', NULL, 29, 45),
(328, 'SSD', NULL, 30, 45),
(329, 'SATA III', NULL, 31, 45),
(330, '550', NULL, 42, 45),
(331, '520', NULL, 43, 45),
(332, '2,5\"', NULL, 1, 45),
(333, '120', NULL, 29, 46),
(334, 'SSD', NULL, 30, 46),
(335, 'SATA III', NULL, 31, 46),
(336, '500', NULL, 42, 46),
(337, '320', NULL, 43, 46),
(338, '2,5\"', NULL, 1, 46),
(339, '250', NULL, 29, 47),
(340, 'SSD', NULL, 30, 47),
(341, 'SATA III', NULL, 31, 47),
(342, '550', NULL, 42, 47),
(343, '525', NULL, 43, 47),
(344, '2,5\"', NULL, 1, 47),
(345, '850', NULL, 33, 48),
(346, '80 PLUS Gold', NULL, 35, 48),
(347, '92', NULL, 36, 48),
(348, 'Ano', NULL, 37, 48),
(349, 'ATX', NULL, 1, 48),
(350, '750', NULL, 33, 49),
(351, '80 PLUS Gold', NULL, 35, 49),
(352, '92', NULL, 36, 49),
(353, 'Ano', NULL, 37, 49),
(354, 'ATX', NULL, 1, 49),
(355, '620', NULL, 33, 50),
(356, '80 PLUS Bronze', NULL, 35, 50),
(357, 'Neudává se', NULL, 36, 50),
(358, 'Ano', NULL, 37, 50),
(359, 'ATX', NULL, 1, 50),
(360, '450', NULL, 33, 51),
(361, '80 PLUS Bronze', NULL, 35, 51),
(362, 'Neudává se', NULL, 36, 51),
(363, 'Ano', NULL, 37, 51),
(364, 'ATX', NULL, 1, 51),
(365, '650', NULL, 33, 52),
(366, 'Neudává se', NULL, 35, 52),
(367, 'Neudává se', NULL, 36, 52),
(368, 'Ne', NULL, 37, 52),
(369, 'ATX', NULL, 1, 52),
(370, '550', NULL, 33, 53),
(371, '80 PLUS Gold', NULL, 35, 53),
(372, '90', NULL, 36, 53),
(373, 'Ne', NULL, 37, 53),
(374, 'ATX', NULL, 1, 53),
(375, '450', NULL, 33, 54),
(376, '80 PLUS', NULL, 35, 54),
(377, '80', NULL, 36, 54),
(378, 'Ne', NULL, 37, 54),
(379, 'ATX', NULL, 1, 54),
(380, 'ATX', NULL, 1, 55),
(381, 'Midi Tower', NULL, 38, 55),
(382, 'Černá', NULL, 39, 55),
(383, 'Dole', NULL, 41, 55),
(384, 'Neudává se', NULL, 24, 55),
(385, 'Neudává se', NULL, 48, 55),
(386, 'ATX', NULL, 1, 56),
(387, 'Big Tower', NULL, 38, 56),
(388, 'Černá', NULL, 39, 56),
(389, 'Dole', NULL, 41, 56),
(390, 'Neudává se', NULL, 24, 56),
(391, 'Neudává se', NULL, 48, 56),
(392, 'ATX', NULL, 1, 57),
(393, 'Midi Tower', NULL, 38, 57),
(394, 'Černá', NULL, 39, 57),
(395, 'Dole', NULL, 41, 57),
(396, 'Neudává se', NULL, 24, 57),
(397, 'Neudává se', NULL, 48, 57),
(398, 'Midi Tower', NULL, 38, 58),
(399, 'ATX', NULL, 1, 58),
(400, 'Bílá', NULL, 39, 58),
(401, 'Dole', NULL, 41, 58),
(402, 'Neuvádí se', NULL, 24, 58),
(403, 'Neuvádí se', NULL, 48, 58),
(404, 'Midi Tower', NULL, 38, 59),
(405, 'Černá', NULL, 39, 59),
(406, 'ATX', NULL, 1, 59),
(407, 'Neuvádí se', NULL, 24, 59),
(408, 'Neuvádí se', NULL, 48, 59),
(409, 'Dole', NULL, 41, 59),
(410, 'ATX', NULL, 1, 60),
(411, 'Midi Tower', NULL, 38, 60),
(412, 'Černá, modrá', NULL, 39, 60),
(413, 'Dole', NULL, 41, 60),
(414, 'Neuvádí se', NULL, 24, 60),
(415, 'Neuvádí se', NULL, 48, 60),
(416, 'ATX', NULL, 1, 61),
(417, 'Big Tower', NULL, 38, 61),
(418, 'Černá', NULL, 39, 61),
(419, 'Dole', NULL, 41, 61),
(420, 'Neuvádí se', NULL, 24, 61),
(421, 'Neuvádí se', NULL, 48, 61),
(422, 'Vzduch', NULL, 44, 62),
(423, '1500', NULL, 45, 62),
(424, '24,6', NULL, 46, 62),
(425, '82,52', NULL, 47, 62),
(426, '16,5', NULL, 48, 62),
(427, 'Intel 1150, Intel 1151, Intel 1155, Intel 1156, Intel 2011, AMD AM2, AMD AM2+, AMD AM3, AMD AM3+, AMD FM1, AMD FM2, AMD FM2+', NULL, 2, 62),
(428, 'Vzduch', NULL, 44, 64),
(429, '1600', NULL, 45, 64),
(430, '15', NULL, 46, 64),
(431, '55', NULL, 47, 64),
(432, '15,5', NULL, 48, 64),
(433, 'Intel 775, Intel 1366, Intel 2011-3, Intel 2066, Intel 1150, Intel 1151, Intel 1155, Intel 1156, Intel 2011, AMD AM2, AMD AM2+, AMD AM3, AMD AM3+, AMD FM1, AMD FM2, AMD FM2+, AMD AM4', NULL, 2, 64),
(434, 'Vzduch', NULL, 44, 63),
(435, '2000', NULL, 45, 63),
(436, '21', NULL, 46, 63),
(437, '55,7', NULL, 47, 63),
(438, '13,5', NULL, 48, 63),
(439, 'Intel 775, Intel 1150, Intel 1151, Intel 1155, Intel 1156, AMD AM2, AMD AM2+, AMD AM3, AMD AM3+, AMD FM1, AMD FM2, AMD FM2+, AMD AM4, AMD 939, AMD 940', NULL, 2, 63),
(440, 'Voda', NULL, 44, 65),
(441, '1800', NULL, 45, 65),
(442, '38', NULL, 46, 65),
(443, '-', NULL, 47, 65),
(444, 'Intel 1366, Intel 2011-3, Intel 2066, Intel 1150, Intel 1151, Intel 1155, Intel 1156, Intel 2011, AMD AM2, AMD AM2+, AMD AM3, AMD AM3+, AMD FM1, AMD FM2, AMD FM2+, AMD AM4', NULL, 2, 65),
(445, '3', NULL, 48, 65),
(446, 'Vzduch', NULL, 44, 66),
(447, '1800', NULL, 45, 66),
(448, '33,6', NULL, 46, 66),
(449, '71,27', NULL, 47, 66),
(450, '15,5', NULL, 48, 66),
(451, 'Intel 775, Intel 1366, Intel 1356, Intel 2011-3, Intel 2066, Intel 1150, Intel 1151, Intel 1155, Intel 1156, Intel 2011, AMD AM2, AMD AM2+, AMD AM3, AMD AM3+, AMD FM1, AMD FM2, AMD FM2+, AMD AM4', NULL, 2, 66),
(452, 'Vzduch', NULL, 44, 67),
(453, '1700', NULL, 45, 67),
(454, '27,2', NULL, 46, 67),
(455, '54,65', NULL, 47, 67),
(456, '15,8', NULL, 48, 67),
(457, 'Intel 775, Intel 1366, Intel 2011-3, Intel 2066, Intel 1150, Intel 1151, Intel 1155, Intel 1156, Intel 2011, AMD AM2, AMD AM2+, AMD AM3, AMD AM3+, AMD FM1, AMD FM2, AMD FM2+', NULL, 2, 67),
(458, 'Vzduch', NULL, 44, 68),
(459, '2200', NULL, 45, 68),
(460, '35', NULL, 46, 68),
(461, '45', NULL, 47, 68),
(462, '12,7', NULL, 48, 68),
(463, 'Intel 775, Intel 1366, Intel 1150, Intel 1151, Intel 1155, Intel 1156, AMD AM2+, AMD AM3, AMD AM3+, AMD FM1, AMD FM2, AMD AM4. AMD 939', NULL, 2, 68),
(464, 'Vzduch', NULL, 44, 69),
(465, '1200', NULL, 45, 69),
(466, '24,9', NULL, 46, 69),
(467, '51,17', NULL, 47, 69),
(468, '15,45', NULL, 48, 69),
(469, 'Intel 775, Intel 1366, Intel 2011-3, Intel 2066, Intel 1150, Intel 1151, Intel 1155, Intel 1156, Intel 2011, AMD AM2, AMD AM2+, AMD AM3, AMD AM3+, AMD FM1, AMD FM2, AMD FM2+, AMD AM4', NULL, 2, 69);

-- --------------------------------------------------------

--
-- Struktura tabulky `mt_typkomponent`
--

CREATE TABLE `mt_typkomponent` (
  `idKomponent` int(11) NOT NULL,
  `typKomponent` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vypisuji data pro tabulku `mt_typkomponent`
--

INSERT INTO `mt_typkomponent` (`idKomponent`, `typKomponent`, `url`) VALUES
(1, 'Základní deska', 'mobo'),
(2, 'Procesor', 'cpu'),
(3, 'RAM', 'ram'),
(4, 'Grafická karta', 'gpu'),
(5, 'Disk', 'hdd'),
(6, 'Zdroj', 'psu'),
(7, 'Skříň', 'case'),
(8, 'CPU chladič', 'cooler');

-- --------------------------------------------------------

--
-- Struktura tabulky `mt_typpocitace`
--

CREATE TABLE `mt_typpocitace` (
  `idTyp` int(11) NOT NULL,
  `typNazev` varchar(255) COLLATE utf8_czech_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_czech_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8_czech_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Vypisuji data pro tabulku `mt_typpocitace`
--

INSERT INTO `mt_typpocitace` (`idTyp`, `typNazev`, `url`, `foto`) VALUES
(1, 'Herní', 'herni', 'typPC_herni.png'),
(2, 'Kancelářský', 'kancelarsky', 'typPC_kancl.png'),
(3, 'Mining', 'mining', 'typPC_mining.png'),
(4, 'Grafický', 'graficky', 'typPC_grafik.png'),
(5, 'Serverový', 'serverovy', 'typPC_server.png'),
(6, 'Vlastní', 'vlastni', 'typPC_vlastni.png');

-- --------------------------------------------------------

--
-- Struktura tabulky `mt_typpocitace_has_komponent`
--

CREATE TABLE `mt_typpocitace_has_komponent` (
  `typPocitace_id` int(11) NOT NULL,
  `komponent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vypisuji data pro tabulku `mt_typpocitace_has_komponent`
--

INSERT INTO `mt_typpocitace_has_komponent` (`typPocitace_id`, `komponent_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(1, 21),
(1, 22),
(1, 23),
(1, 24),
(1, 25),
(1, 26),
(1, 27),
(1, 28),
(1, 29),
(1, 30),
(1, 31),
(1, 32),
(1, 33),
(1, 34),
(1, 35),
(1, 36),
(1, 37),
(1, 38),
(1, 39),
(1, 40),
(1, 41),
(1, 42),
(1, 43),
(1, 44),
(1, 45),
(1, 46),
(1, 47),
(1, 48),
(1, 49),
(1, 50),
(1, 51),
(1, 52),
(1, 53),
(1, 54),
(1, 55),
(1, 56),
(1, 57),
(1, 58),
(1, 59),
(1, 60),
(1, 61),
(1, 62),
(1, 63),
(1, 64),
(1, 65),
(1, 66),
(1, 67),
(1, 68),
(1, 69);

-- --------------------------------------------------------

--
-- Struktura tabulky `mt_vyber`
--

CREATE TABLE `mt_vyber` (
  `id` int(11) NOT NULL,
  `users_id` int(11) UNSIGNED DEFAULT NULL,
  `id_komponent` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vypisuji data pro tabulku `mt_vyber`
--

INSERT INTO `mt_vyber` (`id`, `users_id`, `id_komponent`) VALUES
(13, 1, 9),
(14, 1, 26),
(15, 1, 32),
(16, 1, 34),
(17, 1, 41),
(18, 1, 52),
(19, 1, 58),
(20, 1, 64),
(29, 8, 14),
(30, 8, 11),
(31, 8, 28),
(32, 8, 38),
(33, 8, 46),
(34, 8, 17),
(35, 8, 59),
(36, 8, 64),
(37, 14, 5),
(38, 14, 20),
(39, 14, 30),
(40, 14, 15),
(41, 14, 45),
(42, 14, 48),
(43, 14, 61),
(44, 14, 65),
(45, 18, 13),
(46, 18, 11),
(47, 18, 32),
(48, 18, 35),
(49, 18, 46),
(50, 18, 48),
(51, 18, 56),
(52, 18, 64);

-- --------------------------------------------------------

--
-- Struktura tabulky `mt_vyrobce`
--

CREATE TABLE `mt_vyrobce` (
  `idVyrobce` int(11) NOT NULL,
  `vyrobce` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vypisuji data pro tabulku `mt_vyrobce`
--

INSERT INTO `mt_vyrobce` (`idVyrobce`, `vyrobce`) VALUES
(1, 'MSI'),
(2, 'ASUS'),
(3, 'Intel'),
(4, 'AMD'),
(5, 'GIGABYTE'),
(6, 'ASRock'),
(7, 'ADATA'),
(8, 'Kingston'),
(9, 'Corsair'),
(10, 'Crucial'),
(12, 'G.SKILL'),
(13, 'WD'),
(14, 'Seagate'),
(15, 'Samsung'),
(16, 'SAPPHIRE'),
(17, 'EVGA'),
(18, 'Seasonic'),
(19, 'Zalman'),
(20, 'SilentiumPC'),
(21, 'EVOLVEO'),
(22, 'Cooler-Master'),
(23, 'NZXT'),
(24, 'NOCTUA'),
(25, 'ARCTIC'),
(26, 'LG'),
(27, 'AverMedia'),
(28, 'Seasonic'),
(29, 'XFX'),
(30, 'ZOTAC'),
(31, 'Patriot'),
(32, 'Fractal Design'),
(33, 'SCYTHE');

--
-- Klíče pro exportované tabulky
--

--
-- Klíče pro tabulku `mt_komponent`
--
ALTER TABLE `mt_komponent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_komponent_vyrobce1_idx` (`vyrobce_id`),
  ADD KEY `fk_komponent_typKomponent1_idx` (`typKomponent_id`);

--
-- Klíče pro tabulku `mt_nazevparametr`
--
ALTER TABLE `mt_nazevparametr`
  ADD PRIMARY KEY (`id`);

--
-- Klíče pro tabulku `mt_parametr`
--
ALTER TABLE `mt_parametr`
  ADD PRIMARY KEY (`idParametr`),
  ADD KEY `fk_hodnota_jednotka1_idx` (`jednotka_id`),
  ADD KEY `fk_hodnota_parametrKomponent1_idx` (`nazevParametr_id`),
  ADD KEY `fk_hodnota_komponent1_idx` (`komponent_id`);

--
-- Klíče pro tabulku `mt_typkomponent`
--
ALTER TABLE `mt_typkomponent`
  ADD PRIMARY KEY (`idKomponent`);

--
-- Klíče pro tabulku `mt_typpocitace`
--
ALTER TABLE `mt_typpocitace`
  ADD PRIMARY KEY (`idTyp`);

--
-- Klíče pro tabulku `mt_typpocitace_has_komponent`
--
ALTER TABLE `mt_typpocitace_has_komponent`
  ADD PRIMARY KEY (`typPocitace_id`,`komponent_id`),
  ADD KEY `fk_typPocitace_has_komponent_komponent1_idx` (`komponent_id`),
  ADD KEY `fk_typPocitace_has_komponent_typPocitace1_idx` (`typPocitace_id`);

--
-- Klíče pro tabulku `mt_vyber`
--
ALTER TABLE `mt_vyber`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_vyber_users1_idx` (`users_id`),
  ADD KEY `id_komponent` (`id_komponent`);

--
-- Klíče pro tabulku `mt_vyrobce`
--
ALTER TABLE `mt_vyrobce`
  ADD PRIMARY KEY (`idVyrobce`);

--
-- AUTO_INCREMENT pro tabulky
--

--
-- AUTO_INCREMENT pro tabulku `mt_komponent`
--
ALTER TABLE `mt_komponent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
--
-- AUTO_INCREMENT pro tabulku `mt_nazevparametr`
--
ALTER TABLE `mt_nazevparametr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT pro tabulku `mt_parametr`
--
ALTER TABLE `mt_parametr`
  MODIFY `idParametr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=470;
--
-- AUTO_INCREMENT pro tabulku `mt_typkomponent`
--
ALTER TABLE `mt_typkomponent`
  MODIFY `idKomponent` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pro tabulku `mt_typpocitace`
--
ALTER TABLE `mt_typpocitace`
  MODIFY `idTyp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pro tabulku `mt_vyber`
--
ALTER TABLE `mt_vyber`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT pro tabulku `mt_vyrobce`
--
ALTER TABLE `mt_vyrobce`
  MODIFY `idVyrobce` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- Omezení pro exportované tabulky
--

--
-- Omezení pro tabulku `mt_komponent`
--
ALTER TABLE `mt_komponent`
  ADD CONSTRAINT `fk_komponent_typKomponent1` FOREIGN KEY (`typKomponent_id`) REFERENCES `mt_typkomponent` (`idKomponent`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_komponent_vyrobce1` FOREIGN KEY (`vyrobce_id`) REFERENCES `mt_vyrobce` (`idVyrobce`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
