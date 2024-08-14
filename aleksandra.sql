-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2024 at 04:38 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aleksandra`
--

-- --------------------------------------------------------

--
-- Table structure for table `ekskurzije`
--

CREATE TABLE `ekskurzije` (
  `id` int(50) NOT NULL,
  `destinacija` varchar(50) NOT NULL,
  `datum` date NOT NULL,
  `trajanje` int(11) NOT NULL,
  `prevoz` varchar(1000) NOT NULL,
  `opis` longtext NOT NULL,
  `cena` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ekskurzije`
--

INSERT INTO `ekskurzije` (`id`, `destinacija`, `datum`, `trajanje`, `prevoz`, `opis`, `cena`) VALUES
(1, 'Beč, Austrija', '2024-06-03', 3, 'Autobus', 'Glavni grad Austrije i jedan od najlepših gradova Evrope.\r\nRaznolika kulturna ponuda sa muzejima, galerijama i koncertnim dvoranama.\r\nArhitektonska lepota koja uključuje prelepe palate, crkve i znamenitosti poput dvorca Schönbrunn i katedrale Sv. Stjepana.\r\nŽivopisni trgovci, pijace i kafei koji nude autentično iskustvo bečkog života.\r\nGastronomska raznolikost koja uključuje sve, od tradicionalnih bečkih šnicli do svetski poznate torte Sachertorte.', '250,00 EUR'),
(2, 'Ogrid, Skoplje, Severna Makedonija', '2024-05-23', 5, 'Autobus', 'Skoplje, Severna Makedonija\r\n\r\nGlavni grad Severne Makedonije sa bogatom istorijom i kulturnom baštinom.\r\nPoznato po svojim istorijskim znamenitostima, kao što su tvrđava Kale, Daut Pašin Hamam i Kameni Most.\r\nŽivopisna arhitektura koja obuhvata različite stilove, od antičkih ostataka do savremenih spomenika.\r\nBogata kulturna scena koja uključuje pozorišta, muzeje i umetničke galerije.\r\nŠareni bazar i lokalne pijace koje nude autentično iskustvo makedonske kulture i gastronomije.\r\nOhrid, Severna Makedonija\r\n\r\nPored kristalno čistog Ohridskog jezera, jednog od najstarijih i najdubljih jezera u Evropi.\r\nStari grad Ohrid, UNESCO-ova svetska baština, sa svojim brojnim crkvama, manastirima i srednjovekovnim zidinama.\r\nPoseta crkvi Sv. Sofije, ikonskoj građevini koja se nalazi na vrhu brda iznad grada.\r\nUživanje u lokalnoj kuhinji uz gastronomske specijalitete kao što su ohridska pastrmka i tradicionalni makedonski kafani.', '210,00 EUR');

-- --------------------------------------------------------

--
-- Table structure for table `grupno`
--

CREATE TABLE `grupno` (
  `id` int(50) NOT NULL,
  `destinacija` varchar(50) NOT NULL,
  `datum` date NOT NULL,
  `trajanje` int(11) NOT NULL,
  `prevoz` varchar(1000) NOT NULL,
  `opis` longtext NOT NULL,
  `cena` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `grupno`
--

INSERT INTO `grupno` (`id`, `destinacija`, `datum`, `trajanje`, `prevoz`, `opis`, `cena`) VALUES
(1, 'Kuba', '2024-05-31', 20, 'Avion', 'Putovanje na Kubu - ostrvo na kome je vreme stalo, koje je bogato istorijom, nasmejanim ljudima, peščanim plažama i bujnim zelenilom.  Egzotično putovanje u Centralnu Ameriku nikada nije bilo bliže i lakše sa nasmejanim plemenom. \r\n\r\nPored tirkiznog mora i belih peščanih plaža Varadera, posetićemo i farmu Finca Luna, upoznati se sa tradicionalnim vrednostima Kube i piti kafu i pušiti tompus u lokalnim šarenim kućama. \r\n\r\nUpoznajemo se sa životom i skulpturama kubanske umetnice Rite Longe, ispijamo mohito i isprobavamo egzotično voće u kubanskim starosedelačkim kućama i selima, upoznajući se sa pravim kubanskim životom. ', '1090,00 EUR'),
(2, 'Malezija i Borneo', '2024-07-10', 12, 'Avion', 'Malezija je zemlja tri naroda, tri civilizacije, tri vere. Zemlja koja je svrstana u top 15 najposećenijih destinacija u svetu. Za Maleziju se može reći da je svojevrstan spoj starog i novog, tradicionalnog i modernog načina života. \r\n\r\nPrva stanica na našem putovanju je glavni grad Kuala Lumpur. Vozeći se Kuala Lumpurom, videćemo kineske ulice i futurističke zgrade, nalik onima iz filmova o naučnoj fantastici. Jedne od njih su simbol Malezije, Petronas kule, koje su najviše zgrade ,,bliznakinje’’ na svetu. Nezaobilazna je i poseta Batu pećine - jednih od najvećih i najpopularnijih hindu svetilišta van Indije. Ono što impresionira u Kuala Lumpuru je kosmopolitski duh Azije, mnoštvo različitih rasa, jezika i vera, ljubaznost i osmeh svih onih sa kojima komunicirate  Kupoholičari će uživati u niskim cenama, dok će gurmani i sladokusci uživati u istraživanju kulinarskih malinežanskih specijaliteta.  ', '1400,00 EUR'),
(3, 'Magična Ekskurzija u Peru', '2024-10-01', 15, 'Avion', 'Lima\r\n\r\nUpoznajte glavni grad Perua sa svojim bogatim kulturnim nasleđem i kosmopolitskim šarmom.\r\nObilazak kolonijalnog centra Limasa sa posetom katedrali i Trgu oružja.\r\nDegustacija peruanske kuhinje u nekom od lokalnih restorana.\r\nMachu Picchu\r\n\r\nPoseta drevnom gradu Machu Picchu, jednom od sedam svetskih čuda, smještenom na vrhu Anda.\r\nVožnja železnicom do Agua Calientes-a, a zatim autobusom do samog Machu Picchua.\r\nRazgledanje ove mistične lokacije uz vodiča koji će vam otkriti tajne Inka i arheološke čuda.\r\nCusco\r\n\r\nOčaravajući grad koji je nekada bio glavni grad Inka.\r\nPoseta Svetom dolini i obilazak utvrđenja Ollantaytambo i Pisac.\r\nIstorijska tura kroz grad Cusco sa posetom Koricancha hramu i Sacsayhuaman utvrđenju.\r\nAmazonska Džungla\r\n\r\nAvantura u najvećoj tropskoj kišnoj šumi na svetu.\r\nPlovidba Amazonom kako biste istražili raznovrsni biljni i životinjski svet.\r\nObilazak lokalnih sela kako biste upoznali život lokalnih zajednica i njihovu kulturu.', '3490,00 EUR');

-- --------------------------------------------------------

--
-- Table structure for table `indiviualno`
--

CREATE TABLE `indiviualno` (
  `id` int(11) NOT NULL,
  `destinacija` varchar(50) NOT NULL,
  `datum` date NOT NULL,
  `trajanje` int(11) NOT NULL,
  `prevoz` varchar(1000) NOT NULL,
  `opis` longtext NOT NULL,
  `cena` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `indiviualno`
--

INSERT INTO `indiviualno` (`id`, `destinacija`, `datum`, `trajanje`, `prevoz`, `opis`, `cena`) VALUES
(1, 'Južnoafrička Republika', '2024-06-18', 10, 'Avionom', 'Afrička avantura protkana novim iskustvima, adrenalinom i neverovatnim prizorima!\r\n\r\nJužnoafrička republika – zemlja sunca, galebova, velike petorke, Stone planine, vina i prijateljskih ljudi. Na ovom putovanju obilazimo Johanesburg - najnaseljeniji grad Južnoafričke Republike i Kejptaun - jedan od 3 glavna grada države, gde ćemo se upoznati se sa lepotama vinograda Stelenboš, Kamps zaliva i Bulders plaže.\r\n\r\nU ovoj avanturi čeka Vas tri nezaboravna dana gde ćemo obilaziti ove prostrane savane i posmatrati prizore kao iz dokumentaraca Nacionalne geografije, spavati u lux lodgevima, a utiske ćemo sumirati uz večeru pod zvezdanim nebom okruženi zvucima prirode!', '2190,00 EUR'),
(2, 'Maldivi', '2024-06-05', 12, 'Avionom', 'Individualno putovanje na Maldive - objavljeni datumi su predlog putovanja, a Vi svakako možete sami birati datum polaska, grad polaska i dužinu boravka, a mi kreiramo putovanje po Vašoj želji! \r\n\r\nZa isto se najradije odlučuju mladenci koji ovde provode medeni mesec (honeymoon), ali i poznavaoci podvodnog sveta i ronjenja, ljubitelji mira i romantičnih destinacija.\r\n\r\nMaldivi se nalaze u Indijskom Okeanu. Sastoje se od 1.200 manjih i većih ostrva od kojih je samo oko 200 ostrva naseljeno. Maldivi su najmanja Azijska zemlja, kako po površini tako i po broju stanovnika.  \r\n\r\nGlavni i najveći grad Republike je Male sa preko sto hiljada stanovnika i nalazi se na severnom obodu Atola Male, tačnije na Kaafu Atolu. Toplo i čisto more uz rajske plaže, netaknutu prirodu i povoljnu klimu pružaju odlicne uslove za nezaboravan odmor. Svako ostrvo predstavlja posebnu priču i sve je podređeno uživanju. ', '1450,00 EUR'),
(3, 'Egzotična Avantura u Tajlandu', '2024-06-08', 11, 'Avion', 'Bangkok\r\n\r\nUpoznajte pulsirajući grad koji kombinuje tradicionalnu kulturu sa modernim sjajem.\r\nPoseta Grand Palace-u i Wat Pho hramu, domu ogromnog zlatnog Bude.\r\nIstaknuta večernja vožnja brodom Chao Phraya kako biste uživali u noćnom sjaju grada.\r\nChiang Mai\r\n\r\nOčaravajući grad na severu Tajlanda, poznat po svojim bujnim pejzažima i bogatoj kulturnoj baštini.\r\nPoseta Doi Suthep hramu na brdu, koji nudi spektakularan pogled na grad i okolinu.\r\nVožnja slonovima kroz džunglu i poseta utočištu za slonove radi interakcije sa ovim divnim stvorenjima.\r\nPhuket\r\n\r\nRajsko ostrvo sa prelepim plažama i kristalno čistim vodama.\r\nKrstarenje zalivom Phang Nga kako biste istražili pećine, stene i tajne plaže.\r\nUživajte u tradicionalnom tajlandskom masažu i opuštajućem vremenu na plaži.\r\nUključeno u cenu:\r\n\r\nAvionska karta povratna\r\nSmještaj u ekskluzivnim hotelima\r\nObroci prema programu\r\nTransferi i izleti prema programu\r\nVodič na engleskom jeziku', '2690,00 EUR');

-- --------------------------------------------------------

--
-- Table structure for table `rezervacija`
--

CREATE TABLE `rezervacija` (
  `id` int(50) NOT NULL,
  `ime` varchar(50) NOT NULL,
  `prezime` varchar(50) NOT NULL,
  `br_telefona` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `destinacija` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rezervacija`
--

INSERT INTO `rezervacija` (`id`, `ime`, `prezime`, `br_telefona`, `email`, `destinacija`) VALUES
(1, 'Milica', 'Milic', '+38164000000', 'milica@gmail.com', 'Južnoafrička Republika'),
(3, 'Stevan', 'Milosevic', '+381642525025', 'steva.m@gmail.com', 'Ogrid, Skoplje, Severna Makedonija');

-- --------------------------------------------------------

--
-- Table structure for table `zaposleni`
--

CREATE TABLE `zaposleni` (
  `id` int(20) NOT NULL,
  `ime` varchar(50) NOT NULL,
  `prezime` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `zaposleni`
--

INSERT INTO `zaposleni` (`id`, `ime`, `prezime`, `email`, `password`) VALUES
(1, 'Aleksandra', 'Popovic', 'aleksandra@gmail.com', '202cb962ac59075b964b07152d234b70');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ekskurzije`
--
ALTER TABLE `ekskurzije`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grupno`
--
ALTER TABLE `grupno`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `indiviualno`
--
ALTER TABLE `indiviualno`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rezervacija`
--
ALTER TABLE `rezervacija`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zaposleni`
--
ALTER TABLE `zaposleni`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ekskurzije`
--
ALTER TABLE `ekskurzije`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `grupno`
--
ALTER TABLE `grupno`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `indiviualno`
--
ALTER TABLE `indiviualno`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rezervacija`
--
ALTER TABLE `rezervacija`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `zaposleni`
--
ALTER TABLE `zaposleni`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
