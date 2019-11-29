-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2019 at 01:11 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `company`
--

-- --------------------------------------------------------

--
-- Table structure for table `customerreviews`
--

CREATE TABLE `customerreviews` (
  `id` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `review` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customerreviews`
--

INSERT INTO `customerreviews` (`id`, `id_product`, `review`) VALUES
(6, 2, 'Pregrijava se previše'),
(7, 3, 'Preskupo'),
(8, 4, 'AMD rocks!!'),
(9, 4, '5700>1070'),
(10, 2, 'aaaaaaaaaaaaaa'),
(11, 2, 'fffffffffffffff'),
(12, 5, 'bomba'),
(13, 1, 'vvvvvv');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `price` double(11,0) DEFAULT NULL,
  `short_description` text DEFAULT NULL,
  `long_description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `short_description`, `long_description`) VALUES
(1, 'Procesor AMD Ryzen 7 3700X', 3099, 'Procesor AMD Ryzen 7 3700X BOX, s. AM4, 3.6GHz, OctaCore, Wraith Prism\r\n\r\n', 'Product TypeCPU Desktop\r\nCPUAMD Ryzen 7 3700X\r\nClock Rate3.60 GHz\r\nTurbo Clock Rate4.40 GHz\r\nCore Quantity8\r\nThreads Quantity16\r\nCore NameZen\r\nSocketAM4\r\nL2 Cache Size4 MB\r\nL3 Cache Size32 MB\r\nInstruction Set64 bit\r\nTDP65 W\r\nMemory TypesDDR4\r\nMemory Channels Supports2\r\nSupported Memory Speed3200MHz(PC4-25600)\r\n?ooling MethodWraith Cooler\r\nPackage TypeBox'),
(2, 'INTEL Core i7 9700K', 3800, 'Procesor INTEL Core i7 9700K BOX, s. 1151, 3.6GHz, 12MB cache, OctaCore, bez hladnjaka\r\n', 'Proizvođač: Intel\r\nSocket 1151\r\nProcesor tip Core i7\r\nBroj jezgri 8\r\nBrzina: 3.60 GHz\r\nCashe: 12MB\r\nGPU Da\r\nHladnjak Ne'),
(3, 'GeForce RTX 2080 SUPER', 7000, 'Grafička kartica PCI-E COLORFUL iGAME GeForce RTX 2080 SUPER Advanced OC-V, 8GB GDDR6', 'Sučelje PCI-E\r\nRadni takt GPU [MHz]\r\nCore ClockBase:1650Mhz; Boost:1815Mhz\r\nONE-KEY OCBase:1650Mhz; Boost:1845Mhz\r\n\r\nVrsta memorije GDDR6\r\nRadna memorija (RAM) 8 GB\r\nMemorijsko sučelje [bit] 256\r\nD-SUB n/a\r\nHDMI 1\r\nDisplayPort 3\r\nDVI n/a\r\nUSB-C1\r\nProizvođač čipa nVidia'),
(4, 'ASUS Radeon RX 5700 XT', 4300, 'Grafička kartica PCI-E ASUS Radeon RX 5700 XT ROG Strix OC, 8GB GDDR6\r\n', 'Sučelje PCI-E\r\nRadni takt GPU [MHz] 1840\r\nVrsta memorije GDDR6\r\nRadna memorija (RAM) 8 GB\r\nMemorijsko sučelje [bit] 256\r\nD-SUB n/a\r\nHDMI 1\r\nDisplayPort 3\r\nDVI n/a\r\nUSB-Cn/a\r\nProizvođač čipa AMD'),
(5, 'AMD Ryzen Threadripper 3970X ', 13530, ' Based on 7nm ZEN2 dies and the Castle Peak codename, that 32-core 3970X processor with its staggering 64 threads is just unprecedented in this desktop-class.', 'Specifications\r\n# of CPU Cores\r\n32\r\n# of Threads\r\n64\r\nBase Clock\r\n3.7GHz\r\nMax Boost Clock \r\nUp to 4.5GHz\r\nTotal L1 Cache\r\n3MB\r\nTotal L2 Cache\r\n16MB\r\nTotal L3 Cache\r\n128MB\r\nUnlocked \r\nYes\r\nCMOS\r\nTSMC 7nm FinFET\r\nPackage\r\nsTRX4\r\nPCI Express® Version\r\nPCIe 4.0\r\nThermal Solution (PIB)\r\nNot included\r\nDefault TDP / TDP\r\n280W\r\nMax Temps\r\n68°C\r\n*OS Support\r\nWindows 10 - 64-Bit Edition\r\nRHEL x86 64-Bit\r\nUbuntu x86 64-Bit\r\n*Operating System (OS) support will vary by manufacturer.\r\nSystem Memory\r\nSystem Memory Specification\r\n3200MHz\r\nSystem Memory Type\r\nDDR4\r\nMemory Channels\r\n4\r\nKey Features\r\nSupported Technologies\r\nZen Core Architecture\r\nAMD Ryzen™ Master Utility\r\nFoundation\r\nProduct Family\r\nAMD Ryzen™ Processors\r\nProduct Line\r\nAMD Ryzen™ Threadripper™ Processors\r\nPlatform\r\nDesktop\r\nLaunch Date\r\n11/25/2019'),
(6, 'INTEL CORE i9-10980XE', 9000, 'Technical Specifications\r\nEssentials\r\nVertical SegmentDesktop\r\nProcessor Numberi9-10980XE\r\nStatusLaunched\r\nLaunch Date Q4\'19\r\nLithography 14 nm\r\nIncluded ItemsPlease note: The boxed product does not include a fan or heat sink\r\nPerformance\r\n# of Cores 18\r\n# of Threads 36\r\nProcessor Base Frequency 3.00 GHz\r\nMax Turbo Frequency 4.60 GHz\r\nCache 24.75 MB Intel® Smart Cache\r\nIntel® Turbo Boost Max Technology 3.0 Frequency ‡ 4.80 GHz', 'The latest Intel Core i9 10980XE X Series processor is powered by 18 Cores and 36 Threads to address the simultaneous, compute-intensive demands of creators. The Intel Core X Series CPU’s allow flexible system configuration for specific creator usages, giving you access to 44 PCIe lanes, quad channel memory, plus support for Thunderbolt technology and high-speed SSD drives. The new X Series processors are fully unlocked and offer the power, and convenience of a full studio in your PC to help accelerate your creative work flow from start to finish.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customerreviews`
--
ALTER TABLE `customerreviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_fk` (`id_product`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customerreviews`
--
ALTER TABLE `customerreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customerreviews`
--
ALTER TABLE `customerreviews`
  ADD CONSTRAINT `product_fk` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
