-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 18, 2020 at 10:48 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Motorcyc`
--

-- --------------------------------------------------------

--
-- Table structure for table `buy`
--

CREATE TABLE `buy` (
  `TradingNum` varchar(10) NOT NULL,
  `PCode` varchar(10) NOT NULL,
  `ReceiptNum` int(5) NOT NULL,
  `Date` date NOT NULL,
  `Cash` char(1) NOT NULL,
  `Online` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `TradingNum` varchar(10) NOT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Phone` varchar(10) DEFAULT NULL,
  `AddNo` varchar(10) DEFAULT NULL,
  `AddDistrict` varchar(30) DEFAULT NULL,
  `AddProvince` varchar(30) DEFAULT NULL,
  `ZipCode` varchar(5) DEFAULT NULL,
  `Fname` varchar(20) DEFAULT NULL,
  `Nname` varchar(20) DEFAULT NULL,
  `Lname` varchar(20) DEFAULT NULL,
  `Nationality` varchar(10) DEFAULT NULL,
  `Bday` date DEFAULT NULL,
  `Gender` varchar(7) DEFAULT NULL,
  `CitizenID` varchar(13) DEFAULT NULL,
  `Username` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`TradingNum`, `Email`, `Phone`, `AddNo`, `AddDistrict`, `AddProvince`, `ZipCode`, `Fname`, `Nname`, `Lname`, `Nationality`, `Bday`, `Gender`, `CitizenID`, `Username`, `Password`) VALUES
('1', 'most@mail.com', '0864153526', '45/308', 'Klong nurng', 'Klong Luang', '12120', 'Pathawee', 'Most', 'Klunkuwat', 'Thai', '1999-08-04', 'Male', '1111111111111', 'most', '2be9bd7a3434f7038ca27d1918de58bd'),
('10', 'sadfs@rnugi.com', '0489456123', '419', 'ewagfaegfadf', 'agraegeargaerg', '15481', 'ejfajsadfgysad', 'vgwajdf', 'saydfgbysaduf', 'thai', '1980-07-18', 'Male', '1231864894894', 'ewageag', '81dc9bdb52d04dc20036dbd8313ed055'),
('100', 'dhyfu@dhsyfu.com', '0981561321', '78', 'dnfyuv', 'sdhgh', '18948', 'sugdhy', 'gfbsh', 'bsjgb', 'abdyuf', '1981-04-04', 'Male', '1894894891848', 'eragerg', 'd6a9a933c8aafc51e55ac0662b6e4d4a'),
('101', 'sday@sdnhf.com', '0153156123', '48', 'ndagyu', 'dnug', '48945', 'fdsj', 'bdg', 'bd', 'fnydusgh', '1981-03-31', 'Male', '1784781451512', 'dfsgfdsg', '29150bb2319c182c944841c74d2f8d75'),
('102', 'dh@fj.com', '0412315615', '999', 'sdhayufh', '9984fasdfsdc', '89486', 'dbg', 'bdgf', 'bdhfv', 'bduyu', '1999-09-09', 'Male', '1894815612312', 'fgbuy', '4d2e7bd33c475784381a64e43e50922f'),
('103', 'gggg@ggg.com', '0878946756', '434', 'rrr', 'rrrr', '12321', 'rrr', 'rrr', 'fff', 'rrrrr', '2020-05-05', 'Male', 'rrrrrrrrrrrrr', 'rrr', '44f437ced647ec3f40fa0841041871cd'),
('104', 'gg@gmail.com', '0859769734', '345', 'ggg', 'ggg', '333', 'ggg', 'ggg', 'ggg', 'thai', '2020-05-20', 'Male', '1223123243141', 'ggg', '698d51a19d8a121ce581499d7b701668'),
('11', 'dafsdf@gnagk.com', '0894861531', '512', 'sadfasdfsadf', 'wsfasdfasdf', '12314', 'agadsgasdfasdf', 'dsafsdaf', 'aegasdfasdf', 'adgadfadsf', '1984-11-02', 'Male', 'dasfsdafsadf', 'weafadsf', '81dc9bdb52d04dc20036dbd8313ed055'),
('12', 'adfas@nfgsadhj.com', '0489486131', '561', 'weafasfasf', 'aegfadsfasdf', '12348', 'sdgdfgdfsg', 'dagadg', 'gtygwdyufa', 'sdagfadgfa', '1978-12-14', 'Male', '1156418648918', 'waegaga', '81dc9bdb52d04dc20036dbd8313ed055'),
('13', 'adsfa@iotbtg.com', '0984561512', '18', 'wagasdg', 'adgadgad', '12348', 'bdasgjvbsda', 'eafgfadg', 'bdgfaydjf', 'reagardgad', '1984-10-02', 'Female', '1564894561561', 'fasdfsda', '81dc9bdb52d04dc20036dbd8313ed055'),
('14', 'asdfsa@enagj.com', '0984561231', '48', 'agasdfsadfsa', 'dagdvad', '12344', 'fhfdsgfd', 'fagfdag', 'dagaega', 'adfgdafg', '1981-08-12', 'Male', '1561561234848', 'agagad', '81dc9bdb52d04dc20036dbd8313ed055'),
('15', 'sadgf@jhnug.com', '0123489489', '412', 'agasdfsadf', 'bghdvasjsd', '15648', 'fhafgfdgnuk', 'nfdyhhndk', 'nukhtuis', 'agfafas', '1984-08-12', 'Female', '1594894156156', 'earhag', '81dc9bdb52d04dc20036dbd8313ed055'),
('16', 'dbgfyj@fdyb.com', '0984561231', '99', '1tsrhsfmgu', 'nadhkgansd', '12348', 'ndcknvk', 'dahfda', 'ndufisvbjk', 'dasgdfgad', '1966-04-12', 'Female', '1561864891561', 'eafhfadg', '81dc9bdb52d04dc20036dbd8313ed055'),
('17', 'sadgdasg@rejhui.com', '0894561231', '18', 'fahadfgbyu', 'bdsvhjbv', '12484', 'xcmlvzmclkv', 'dfnfsgbfg', 'bdvjbjkxzv', 'sdagasdfsd', '1975-04-05', 'Male', '1564894156156', 'efahgafdg', '81dc9bdb52d04dc20036dbd8313ed055'),
('18', 'sdagr@mbfob.com', '0894561512', '58', 'sdavadsvasd', 'dfagadfgfad', '56478', 'dfanvjkncjkv', 'dhadfsb', 'nj,dfnsmb', 'adfbdafb', '1974-04-04', 'Male', '4987815618486', 'aerhgaerg', '81dc9bdb52d04dc20036dbd8313ed055'),
('19', 'adsgdg@ngk.com', '0984123123', '89', 'adegadgadgf', 'dfabgdfbdfbv', '18945', 'gfndhgfg', 'ndcvkbnk', 'gyuerhguid', 'fadhadfgaf', '1984-04-04', 'Female', '1498489156123', 'earhrh', '81dc9bdb52d04dc20036dbd8313ed055'),
('2', 'bill@mail.com', '0812345678', '11/111', 'Phra Nakhon', 'Bangkok', '10200', 'Phubohdee', 'Bill', 'Areesawangkit', 'Thai', '2020-05-01', 'Male', '2222222222222', 'bill', '25d55ad283aa400af464c76d713c07ad'),
('20', 'eagre@gntk.com', '0894153123', '98', 'dfagbadgd', 'efagafgad', '18948', 'cbxhjvzhjcx', 'gfnfgn', 'iogjbiofds', 'afhadfhbaf', '1984-04-04', 'Male', '1561564189481', 'weagreg', '81dc9bdb52d04dc20036dbd8313ed055'),
('21', 'erahtr@rnah.com', '0894561231', '154', 'aergaregaerg', 'raehadfad', '18948', 'nsgfbfgb', 'trhsrhgts', 'afgadg', 'ethssrh', '1985-05-05', 'Female', '1564981561231', 'tjhtrhser', '81dc9bdb52d04dc20036dbd8313ed055'),
('22', 'agbda@bnufks.com', '0984156123', '58', 'dfbgadfv', 'dagdava', '15948', 'xzvczxwdfasd', 'ndyvj', 'sadbgvh', 'adgadv', '1985-04-04', 'Male', '1564891561561', 'fhedfvfd', '81dc9bdb52d04dc20036dbd8313ed055'),
('23', 'adgads@ngvdai.com', '1231561321', '123', 'adsgadsgfadsf', 'dagadgadf', '18915', 'xghcvxhg', 'fhfsh', 'hfuishbui', 'eagadgf', '1985-04-04', 'Male', '1561891561321', 'fbgsfd', '81dc9bdb52d04dc20036dbd8313ed055'),
('24', 'rfsgbui@jbfuida.com', '0412314861', '58', 'aergreagav', 'regreagaerg', '18912', 'bgdasbhja', 'fdsfjnj', 'nhvjabhj', 'eargrea', '1985-04-04', 'Male', 'regadfqdaf', 'fadfad', '81dc9bdb52d04dc20036dbd8313ed055'),
('25', 'rmgjr@gmuaifd.com', '1231564564', '59', 'rehgqe', 'egrgrae', '18616', 'eragnerkgn', 'reaga', 'nrhgbjk', 'afafaf', '1985-05-05', 'Male', '1348613212312', 'rhsgs', '81dc9bdb52d04dc20036dbd8313ed055'),
('26', 'afbfab@fmbjk.com', '0894123123', '131', 'eragearg', 'renkhgsnf', '15694', 'cnvzhjj', 'dnahvnadk', 'brfhvjabhjad', 'reagearg', '1934-07-07', 'Male', '1564891561231', 'raehagb', '81dc9bdb52d04dc20036dbd8313ed055'),
('27', 'bfj@gjufi.com', '0123156456', '98', 'gadgadbyj', 'brjhgabjr', '15648', 'bdayjfbjda', 'nfhgkbn', 'huriehgkjenjgk', 'eafnygihfe', '1954-05-05', 'Male', '2564894894156', 'fybghui', '81dc9bdb52d04dc20036dbd8313ed055'),
('28', 'haudfh@gtiobj.com', '0894861312', '789', 'qergagnfudk', 'trgargagr', '18948', 'fdnuvbkndfsjk', 'fbsfgfdsg', 'nukrgnjk', 'rgrgukngne', '1894-05-05', 'Male', '4151891869185', 'mnfsjbgnfl', '81dc9bdb52d04dc20036dbd8313ed055'),
('29', 'rgmkl@gmifal.com', '0489412312', '489', 'regfgfdag', 'trgtsrhrtg', '18945', 'nfguibshsiugf', 'rhsgrg', 'hgusihgjkh', 'regarege', '1975-05-05', 'Female', '1564189489156', 'regaerg', '81dc9bdb52d04dc20036dbd8313ed055'),
('3', 'game@mail.com', '0887654321', '00/000', 'Phra Nakhon', 'Bangkok', '10200', 'Natdanai', 'Game', 'Chumnikaset', 'Thai', '2020-05-01', 'Male', '3333333333333', 'game', '25d55ad283aa400af464c76d713c07ad'),
('30', 'rjgiaue@rgaui.com', '0481231564', '189', 'ewfagni', 'rngjbrigrugiharug', '94156', 'hdfvbzhui', 'rhtytdh', 'hfukdavkjd', 'reagregaer', '1984-04-04', 'Male', '2346894156151', 'ajbnrhjg', '81dc9bdb52d04dc20036dbd8313ed055'),
('31', 'fmjbkgf@vnfdjkv.com', '0123156845', '195', 'rgaregaregar', 'ngyrbgja', '15645', 'fmdvknjk', 'gnkearng', 'ngrhfskbnjk', 'reguirhgui', '1985-07-07', 'Female', '1564891561231', 'njbsndf', '81dc9bdb52d04dc20036dbd8313ed055'),
('32', 'fjgui@gnfhj.com', '0123486123', '489', 'feehsgfsdgsfdg', 'fgmfsduinbjfdk', '56489', 'hfysubhfdsug', 'rhsfhwfsg', 'jruighjgh', 'reageafgad', '1945-08-08', 'Male', '1564894891561', 'ragrag', '81dc9bdb52d04dc20036dbd8313ed055'),
('33', 'rngjk@gmrukg.com', '0123156123', '844', 'efgfgsfg', 'nrhjgbhj5', '48948', 'fdn hvjknsfdh', 'nfjbjkf', 'dfsjvbhj', 'rfdsamfukn', '1984-05-05', 'Male', '1594891561515', 'nhgndgb', '827ccb0eea8a706c4c34a16891f84e7b'),
('34', 'regnrjkesgnu@fgujkfd.co.th', '1894156151', '489', 'asjdfoisdajfosda', 'bfshjbfsj', '15615', 'xcmvjknsjk', 'fgnkbgf', 'nfvbdsjkv', 'erguhbyg', '1966-06-06', 'Male', '1894894891561', 'nadfkhhabds', 'e10adc3949ba59abbe56e057f20f883e'),
('35', 'gi@gfj.com', '0123461231', '784', 'rjguihaiuer', 'reugishfdjkn', '48945', 'mfdvjdsufi', 'turighui', 'jurignjkreng', 'nreygahui', '1988-08-08', 'Male', '1794189156156', 'rfhgsdfhg', '81dc9bdb52d04dc20036dbd8313ed055'),
('36', 'rgmr@gmrjkg.com', '0123151561', '584', 'eragadga', 'bhjgbf', '15648', 'nhkfbnjfk', 'rnfhkg', 'nrfhksvbnfk', 'fndighfdui', '1984-11-02', 'Female', '4589489415612', 'dnajk', '8f85517967795eeef66c225f7883bdcb'),
('37', 'wdagfdas@grmfguka.com', '0123456123', '489', 'adgnfyudsahfbads', 'fngibahgbhj', '49815', 'huvxkhdczjv', 'nebdg', 'nrhjvgbj', 'sdafjksdaf', '1985-03-30', 'Male', '7818948915615', 'shfsg', 'af3303f852abeccd793068486a391626'),
('38', 'rhit@gmirogj.com', '0941231231', '845', 'rnjgnersg', 'uhifsgibfgi', '64984', 'fdnkjbnfs', 'rfgniufs', 'reskgnsjfkg', 'fdnhigsnig', '1981-08-08', 'Female', '1568941561512', 'nfgbhj', 'facf9f743b083008a894eee7baa16469'),
('39', 'damfvk@vmdja.com', '0489415613', '578', 'fhsfhfsd', 'dsvadsavads', '18945', 'djmiovjdi', 'rhrsh', 'nfnvsjfdk', 'nfsgknjksd', '1954-09-09', 'Male', '5164789415151', 'fhgfsb', 'af3303f852abeccd793068486a391626'),
('4', 'non@mail.com', '0823456789', '00/000', 'Phra Nakhon', 'Bangkok', '10200', 'Narawit', 'Non', 'Klaiwong', 'Thai', '2020-05-01', 'Male', '4444444444444', 'non', '25d55ad283aa400af464c76d713c07ad'),
('40', 'erg@gjdi.com', '0123156456', '984', 'fdhgdsfuihg', 'nrfsginuigf', '47845', 'fdnhsvbjfj', 'bdjvgsbhjf', 'bfhjvshj', 'mfbsihj', '1984-01-01', 'Female', '1894894561231', 'admuiv', '81dc9bdb52d04dc20036dbd8313ed055'),
('41', 'fbj@gvf.com', '0315656156', '454', 'fdgfadg', 'rhgaergreg', '15641', 'cnvjkzn', 'fdnbkdh', 'njfkghak', 'ergfdgsfdg', '1999-09-09', 'Male', '1454891561561', 'fhbgfnb', 'facf9f743b083008a894eee7baa16469'),
('42', 'rfmgi@gfkdg.com', '0123456123', '489', 'dfhsfg', 'fnbfsh', '56486', 'fnduihg', 'fnukbnsfjk', 'nurihtui', 'hsfhfsgfs', '1999-04-04', 'Male', '1564894156153', 'rfhrhs', '5e76bef6e019b2541ff53db39f407a98'),
('43', 'grjug@fme.com', '0156156131', '184', 'reagaerg', 'nfsh', '19481', 'hfby', 'ndhvj', 'nhjv', 'eargreag', '1989-04-04', 'Male', '1564891561864', 'bfyughyuf', '39dc4f1ee693e5adabddd872247e451f'),
('44', 'dmgjm@fc.om', '0123156456', '534', 'fsbfdg', 'rgagae', '56484', 'jfubisjui', 'nfkhbn', 'mfjknbjk', 'rehgafgaf', '1984-08-08', 'Male', '4189418561561', 'mfuo', '97d98119037c5b8a9663cb21fb8ebf47'),
('45', 'adg@mgjk.com', '0189415612', '164', 'adgadnj', 'nighnaui', '15869', 'nduvin', 'ndjksa', 'ndjkvnjk', 'eagadfg', '1894-04-04', 'Male', '1056489465151', 'reaggear', '980ecd059122ce2e50136bda65c25e07'),
('46', 'fmb@gif.com', '0489123123', '594', 'remgjaljm', 'ndfjsknbjdf', '15648', 'hyigdh', 'reagg', 'hyrfhgu', 'erugii', '1981-04-04', 'Female', '1564890891561', 'dngjai', '81dc9bdb52d04dc20036dbd8313ed055'),
('47', 'gmfi@fkd.com', '0154856415', '489', 'fhbfgfdg', 'ngauiui', '19648', 'dfhsuih', 'nhfkbdhfk', 'bnsdvjbhj', 'bmnfsdk', '1984-08-08', 'Male', '1564894156156', 'dnagi', '9763616920135ae280576494ba862400'),
('48', 'dngvu@mvdjask.com', '0123156156', '151', 'adshyvihsa', 'nhdfbhja', '15623', 'xzvbjvb', 'nhdvjbhj', 'bdjgsvgj', 'jsdauivfh', '1981-05-05', 'Male', '1587156189415', 'bsdiavh', '7cec85c75537840dad40251576e5b757'),
('49', 'dgnh@fdaio.com', '0156123123', '534', 'eragdngui', 'ndhfabf', '54989', 'fdyugshy', 'bnhjbaj', 'ndjsvbhj', 'agadg', '1895-04-04', 'Male', '1564894156156', 'ndfaui', 'd8001036d6702e430b8e092484444ee1'),
('5', 'paper@mail.com', '0898765432', '00/000', 'Phra Nakhon', 'Bangkok', '10200', 'Thanakorn', 'Paper', 'Chunprasit', 'Thai', '2020-05-01', 'Male', '5555555555555', 'paper', '25d55ad283aa400af464c76d713c07ad'),
('50', 'fg@jguf.com', '0412312465', '094/1', 'adgadgadgn', 'indfbnfdsbi', '18948', 'bsydjvbdy', 'ewgaa', 'nvjdhjz', 'reageargar', '1959-11-25', 'Male', '1454789489189', 'adfnugi', '5e76bef6e019b2541ff53db39f407a98'),
('51', 'dnguif@hfuia.com', '0945615615', '8947841', 'eagargarui', 'nufidhguidagnu', '48945', 'bdvjb', 'neguiah', 'jfhgui', 'dhyugva', '1984-04-04', 'Male', '1231221543543', 'dfajv', 'c9b9f44e513842d70a8cf2bcfb548d80'),
('52', 'dg@fme.com', '0156151231', '894', 'dghdah', 'bdgjbay', '14156', 'hfdsihgui', 'ndjga', 'hdyaghd', 'sdjaufi', '1951-08-08', 'Male', '1564899189489', 'fuibhui', '9763616920135ae280576494ba862400'),
('53', 'fhu@fhudi.com', '0453123132', '189', 'mfduigh', 'mrfugi', '18948', 'nfuihg', 'sdavadf', 'nejgbh', 'bsdyuvh', '1985-04-04', 'Male', '7478145147815', 'nfig', '81dc9bdb52d04dc20036dbd8313ed055'),
('54', 'mdgkah@dnsgyu.com', '0123156486', '75', 'ansdui', 'bdghjv', '14561', 'bdjgv', 'efgad', 'bdhvgb', 'dnifash', '1956-08-08', 'Male', '1564781561561', 'dsabj', '81dc9bdb52d04dc20036dbd8313ed055'),
('55', 'gvuf@vjuf.com', '0123156456', '151', 'wdgfadgda', 'ergadfa', '15648', 'bdvjbh', 'bdgjvag', 'bdhvbhg', 'beyfuahy', '1951-05-05', 'Female', '1561891561123', 'gy', '7154882322ace8a726d918a1a6e204a1'),
('56', 'fdhyug@fjd.com', '0123486412', '156', 'danghadsf', 'nfiehfuai', '18941', 'nhgsj', 'bdjfbgdshj', 'behjgbdhj', 'nsdivhai', '1945-05-05', 'Female', '1947894561561', 'agreag', 'f3b303f4d3ad708c90e9eb08b9df6358'),
('57', 'dhsaj@gnduia.com', '0156156123', '181', 'agasg', 'dgarega', '15648', 'bfgsy', 'rfehsg', 'bdjgbvyj', 'ergeragrea', '1984-06-06', 'Female', '5648945615615', 'fngia', '25f9e794323b453885f5181f1b624d0b'),
('58', 'dsbhg@vbdsyua.com', '0456123156', '165', 'reuisg', 'gbusfd', '19456', 'njsfdhjd', 'bydugay', 'nsdjfhy.com', 'sadgnuisad', '1894-07-07', 'Female', '1564874156156', 'dnahgi', '5e76bef6e019b2541ff53db39f407a98'),
('59', 'dhug@jeui.com', '0489156132', '45', 'eargarg', 'renyaghu', '18948', 'gdyufgyu', 'eguiaj', 'jfsdhiojio', 'fdnybguh', '1945-05-05', 'Male', '1784784781145', 'sadjg', 'b21f2f2f01d28a92d584ffa368c4d17b'),
('6', 'www@www.www', '0123456789', 'www', 'wwww', 'www', 'wwww', 'www', 'www', 'www', 'wwww', '2020-05-01', 'Male', '1111111111111', 'www', '698d51a19d8a121ce581499d7b701668'),
('60', 'djgi@jdguiv.com', '0123156456', '489', 'hyughy', 'dnfhyjgbvdu', '15656', 'bjdhjvbdshj', 'bdvjfvgbj', 'bdgvjahj', 'gadgasdf', '1985-12-06', 'Male', '1479411515615', 'hdug', '8f6b26a962bf53f855306f37f2ffc553'),
('61', 'dng@jfudi.com', '0498615312', '894/1', 'buydgzbuz', 'dmviufdjv', '18961', 'bdvgda', 'rguyay', 'vdshgvgh', 'regaregaef', '1895-04-04', 'Male', '1684894561321', 'bdjv', '9763616920135ae280576494ba862400'),
('62', 'k2ioe@dsdav.com', '0465123156', '894/2', 'rabgjh', 'rbsjgbj', '15648', 'sdbhj', 'fgfdg', 'bdgjsv', 'fnguish', '1984-06-06', 'Female', '0489486156156', 'fmji', '81dc9bdb52d04dc20036dbd8313ed055'),
('63', 'dhkg@fndi.com', '1564891321', '1654', 'dgauidhnsui', 'bfjadbfi', '04894', 'zxvc', 'ndvy', 'xchjvb', 'dnsaj', '1985-06-06', 'Male', '9815615689123', 'bfhjvab', '7f6ffaa6bb0b408017b62254211691b5'),
('64', 'dgi@fjd.com', '0123115612', '45', 'hbyuegabhud', 'nefiahduf', '19848', 'nxchvjkbhjxzv', 'ndvj', 'behjbdvhj', 'bdsahjvbas', '1945-05-05', 'Male', '1948915615615', 'hyugha', '81dc9bdb52d04dc20036dbd8313ed055'),
('65', 'gjiufg@fmi.com', '0123481231', '4189', 'dsauigvadshui', 'bfdjuvbdyhfv', '14615', 'hrugy', 'nfjg', 'bfgsu', 'dfnbndf', '1914-04-04', 'Male', '1596156156123', 'fnsub', 'facf9f743b083008a894eee7baa16469'),
('66', 'hdig@nfdui.com', '0123486123', '45', 'ndgihu', 'yueagiyu', '15648', 'dfyugi', 'brfgu', 'dnguai', 'remgaihu', '1984-04-04', 'Male', '4894815615123', 'rhgrdg', '2cfd4560539f887a5e420412b370b361'),
('67', 'fh@vjf.com', '1648912312', '189', 'gdoij', 'dbgu', '01561', 'bgyu', 'ndvjh', 'bufdvgsy', 'erugi', '1999-11-01', 'Male', '8494896123123', 'kdaifog', 'facf9f743b083008a894eee7baa16469'),
('68', 'dgui@fndia.com', '0981231231', '144', 'erniughu', 'bdguagy', '04894', 'nfduig', 'ndfhsj', 'gfsb', 'rhensfyug', '1999-08-08', 'Male', '6848915612312', 'fuig', '2cfd4560539f887a5e420412b370b361'),
('69', 'fdhyug@dnhg.com', '0984561123', '84', 'dagiu', 'bdg', '15641', 'rieugeh', 'dngja', 'dghu', 'dsnagi', '1984-06-06', 'Female', '8948615123123', 'dnahjh', '571e0f7e2d992e738adff8b1bd43a521'),
('7', 't@t', '0222222222', '44', 'tt', 'tt', '12124', 'tttt', 'ttt', 'tttt', 'tttttt', '2020-05-13', 'Male', '1111111111111', 'tt', '6512bd43d9caa6e02c990b0a82652dca'),
('70', 'dgh@dnja.com', '0156456123', '984', 'hdsaiuh', 'ndaysuh', '48948', 'fn', 'abrgu', 'bhvb', 'dsuifahsda', '1984-11-15', 'Male', '1794894186156', 'eag', 'facf9f743b083008a894eee7baa16469'),
('71', 'dvsa@sdmkjv.com', '0156123123', '598', 'sadhyuva', 'vcdgayvygk', '48915', 'ejfiuah', 'bsdhv', 'vdyafvgy', 'sdagn', '1985-07-19', 'Male', '1894891562312', 'dfga', 'ecd62de20ea67e1c2d933d311b08178a'),
('72', 'dny@dfn.com', '0489123123', '151/2', 'djfabdaf', 'hjvdagufk', '48946', 'fiob', 'hgjah', 'jrugfih', 'rgefa', '1999-02-21', 'Male', '1984894984894', 'nadg', '4100c4d44da9177247e44a5fc1546778'),
('73', 'dga@ghi.com', '0489413212', '4654', 'dfhui@vnau.com', 'egadga', '18948', 'fyuagu', 'bdugbk', 'vgyuf', 'enguijdoua', '1999-04-04', 'Male', '4894561312312', 'fhrg', 'd60d265e5909f0be46362820c04a387a'),
('74', 'dyg@dma.com', '0123156456', '115', 'fdmgjo', 'bdufah', '14861', ' dchv', 'bvjdh', 'byudsvgbyu', 'amdjk', '1999-04-04', 'Male', '4894894186156', 'fbag', 'f322a85ea1df03422f42c1d0e7580c19'),
('75', 'dg2e2@sjdk.com', '0489123123', '156', '15648sdafsdf', 'edagdf', '18941', 'bfhj', 'dbug', 'bgdb', 'eryug', '1984-06-06', '1212145', '78', 'fhiug12345', '827ccb0eea8a706c4c34a16891f84e7b'),
('76', 'dwf@mda.com', '0612315612', '489', 'sdagdsf', 'wfdasfasdf', '19841', 'dabufgyu', 'uiguif', 'bhjfsh', 'easgef', '1981-04-04', 'Male', '1984894845612', 'fbjg', '3a743f59caf40284c487c72b06669c0a'),
('77', 'dg@fldo.com', '0489456123', '489', 'sdagfsadf', 'bdfagby', '18948', 'bdshavug', 'gdfg', 'bgdsuvbu', 'dnsafih', '1987-04-04', 'Male', '1894894151561', 'mdsjfa', '81dc9bdb52d04dc20036dbd8313ed055'),
('78', 'dsgsd@hfdyueaf.com', '0152315641', '181', 'ernugf', 'njdhfb', '15948', 'dbzhvb', 'fdgnfd', 'bdvdhg', 'enaygjha', '1984-06-06', 'Female', '0489489489484', 'rfngi', '84fc285ce49b9e96fefd21d68ab729c4'),
('79', 'dafh@mjdsa.com', '0412156151', '819', '156489dagrg', 'ewgaefadsf', '18915', 'hdfsnjbh', 'hegiush', 'busghyu', 'dgagewf', '1984-06-06', 'Female', '1098489156156', 'dagyu', '2cfd4560539f887a5e420412b370b361'),
('8', 'jadfs@adbvhj.com', '0189486156', '50/1', 'nsdfoa', 'fqewfqef', '23548', 'hreayg', 'aregaf', 'ndahbbadsh', 'thai', '1987-02-11', 'Male', '1561864894894', 'sadfsadf', '81dc9bdb52d04dc20036dbd8313ed055'),
('80', 'rng@fmue.com', '0151561561', '894', 'ehgyua', 'fdyusgfyu', '18945', 'bzdjgv', 'ndgk', 'bhjcvb', 'andyugf', '1894-06-06', 'Female', '1564891561231', 'dbguay', '827ccb0eea8a706c4c34a16891f84e7b'),
('81', 'erng@fnd.com', '0651231231', '894', 'dagn', 'bdjfabj', '89485', 'nfdyusgh', 'bjga', 'bfyugbu', 'ndgui', '1981-04-04', 'Female', '4894894156156', 'rgrsdg', '87373df3f89fa9932a9c6c58cc75e309'),
('82', 'edag@ndugia.com', '0489415612', '489', 'dghu', 'hfdusgb', '45478', 'fdnuisg', 'beurkg', 'nfhig', 'dfuvi', '1981-06-06', 'Male', '9849156123123', 'edgnfyu', '81dc9bdb52d04dc20036dbd8313ed055'),
('83', 'sdagf@fnd.com', '0984561123', '489', 'raegreg', 'dsagadg', '18441', 'ndfh', 'bfg', 'bfgsjdb', 'dfgrdg', '1984-03-03', 'Female', '8948941815615', 'adgdag', '2cfd4560539f887a5e420412b370b361'),
('84', 'gda@dm.com', '0151564156', '556', 'ewfaes', 'dfaasfsad', '18948', 'fnguisdhui', 'fdnhg', 'bfjgb', 'asdgfsadf', '1981-09-06', 'Female', '1564815612123', 'fsdgsfdg', 'f9be311e65d81a9ad8150a60844bb94c'),
('85', 'gae@jfid.com', '0498415123', '894', 'dgfsdaf', 'grsgse', '18945', 'bcyuv', 'reghyud', 'bdyufg', 'eargareg', '1984-06-06', 'Male', '2984841561212', 'regareg', 'facf9f743b083008a894eee7baa16469'),
('86', 'rg@fji.com', '0489123123', '489', 'ragareg', 'ergfdg', '18945', 'ndahj', 'jgfds', 'bdjv', 'dfgdfg', '1984-04-04', 'Female', '1894894156123', 'rega', 'fc5e676f4e53d22979ffb2172a4cff7f'),
('87', 'ejf@fdnus.com', '0123486484', '489', 'ergagfasdf', 'fdasdf', '16156', 'fbhj', 'fdsjg', 'bvgjdb', 'aegae', '1894-06-06', 'Male', '1498489415615', 'nsadfi', 'e4aed8529014c0251c0834d38a49cd8e'),
('88', 'sdaf@fmsd.com', '0451561560', '198', 'dsgnyuf', 'dsafsda', '15948', 'jgbb', 'dfsgv', 'bfgusby', 'dnshajfh', '1997-03-31', 'Female', '1894894651561', 'fnhjg', '2cfd4560539f887a5e420412b370b361'),
('89', 'sdfa@fdui.com', '0894156123', '978', 'dnfgi', 'bdgsbu', '18948', 'bdahf', 'gdyuvayu', 'yudvgyu', 'rgiyhd', '1984-07-07', 'Female', '4894896515612', 'dnauf', 'b71db38e48ca853f430c67bc977de38d'),
('9', 'adfsad@rejgi.com', '0489489456', '54/1', 'dagfasdf', 'asdfasdf', '12120', 'ewagfgfa', 'asdfsadfasdf', 'thsdvhadsvf', 'thai', '1970-04-11', 'Male', '1564784894894', 'asfdsadf', '81dc9bdb52d04dc20036dbd8313ed055'),
('90', 'fg@dhsyu.com', '0894123123', '897', 'reagresgre', 'eageg', '18948', 'fndhisgh', 'neyug', 'nydfushy', 'dfnyusg', '1992-11-11', 'Male', '1594894894156', 'enugi', 'def7924e3199be5e18060bb3e1d547a7'),
('91', 'sdga@dhfu.com', '0941512312', '151', 'ngyu', 'bfd', '48948', 'xzhj', 'bdjg', 'bdv', 'sdhyuf', '1988-09-09', 'Male', '4984898915612', 'fngui', '9763616920135ae280576494ba862400'),
('92', 'gnuj@fndj.com', '0415312312', '489', 'reagerag', 'wadgdsgads', '15648', 'bdgjf', 'bdsjqwd', 'bsdgvj', 'dbgyu', '1993-09-09', 'Male', '1894891815615', 'fugi', '2cfd4560539f887a5e420412b370b361'),
('93', 'dbv@fndj.com', '0498131231', '984', 'dfgvbyu', 'bdhfbu', '18915', 'nfjvb', 'ndbsdh', 'bdvjb', 'dnyuhy', '1981-04-04', 'Male', '1894894891561', 'fnbyu', '84fc285ce49b9e96fefd21d68ab729c4'),
('94', 'nsadjf@fndyua.com', '0981231231', '489', 'dbyuf', 'dghvduf', '18948', 'bdvj', 'bdjf', 'bdgv', 'dnyuy', '1989-04-04', 'Male', '4894894156123', 'ngui', '2b9cdebb444dbb2fe8380860104f0573'),
('95', 'dmj@fnud.com', '0123156456', '489', 'nfyughdui', 'bdgjsbu', '18941', 'fdsjgb', 'fbudsbu', 'bdjvb', 'dsnagyu', '1984-04-04', 'Male', '489489489156', 'fgn', '2cfd4560539f887a5e420412b370b361'),
('96', 'f@bfhyud.com', '0123156156', '489', 'bdgyf', 'bshfdbhk', '18948', 'bygsuyudgfydsg', 'dbgyau', 'gdbuyyui', 'nsdyfmd', '1984-09-09', 'Male', '2568418961561', 'fgg', '81dc9bdb52d04dc20036dbd8313ed055'),
('97', 'sabduyf@ndhau.com', '0489415612', '498', 'dnafi@fbd.com', 'dngaui', '18948', 'ndfshgb', 'nfsig', 'bsufdb', 'dyug', '1995-04-11', 'Female', '1611156145616', 'fngi', '2cfd4560539f887a5e420412b370b361'),
('98', 'dsgah@nfdhs.com', '0456123156', '159', 'asdgasd', 'adgadg', '18948', 'dfsj', 'dsafasd', 'bby', 'fdayug', '1985-03-30', 'Female', '4894891561231', 'bdygau', '81dc9bdb52d04dc20036dbd8313ed055'),
('99', 'sdnhf@fndsh.com', '0941312312', '489', 'dhyug', 'dbahg', '18948', 'hfysugdhyufd', 'dnj', 'bdgjsbyu', 'ndasyu', '1986-04-04', 'Male', '1894891561312', 'egadg', '4100c4d44da9177247e44a5fc1546778');

-- --------------------------------------------------------

--
-- Table structure for table `Picture`
--

CREATE TABLE `Picture` (
  `PCode` varchar(10) NOT NULL,
  `Picture` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Picture`
--

INSERT INTO `Picture` (`PCode`, `Picture`) VALUES
('00000', '0.jpg'),
('00001', '1.jpg'),
('00002', '2.jpg'),
('00003', '3.jpg'),
('00004', '4.jpg'),
('00005', '5.jpg'),
('00006', '6.jpg'),
('00007', '7.jpg'),
('00008', '8.jpg'),
('00009', '9.jpg'),
('00010', '10.jpg'),
('00011', '11.jpg'),
('00012', '12.jpg'),
('00013', '13.jpg'),
('00014', '14.jpg'),
('00015', '15.jpg'),
('00016', '16.jpg'),
('00017', '17.jpg'),
('00018', '18.jpg'),
('00019', '19.jpg'),
('00020', '20.jpg'),
('00021', '21.jpg'),
('00022', '22.jpg'),
('00023', '23.jpg'),
('00024', '24.jpg'),
('00025', '25.jpg'),
('00026', '26.jpg'),
('00027', '27.jpg'),
('00028', '28.jpg'),
('00029', '29.jpg'),
('00030', '30.jpg'),
('00031', '31.jpg'),
('00032', '32.jpg'),
('00033', '33.jpg'),
('00034', '34.jpg'),
('00035', '35.jpg'),
('00036', '36.jpg'),
('00037', '37.jpg'),
('00038', '38.jpg'),
('00039', '39.jpg'),
('00040', '40.jpg'),
('00041', '41.jpg'),
('00042', '42.jpg'),
('00043', '43.jpg'),
('00044', '44.jpg'),
('00045', '45.jpg'),
('00046', '46.jpg'),
('00047', '47.jpg'),
('00048', '48.jpg'),
('00049', '49.jpg'),
('00050', '50.jpg'),
('00051', '51.jpg'),
('00052', '52.jpg'),
('00053', '53.jpg'),
('00054', '54.jpg'),
('00055', '55.jpg'),
('00056', '56.jpg'),
('00057', '57.jpg'),
('00058', '58.jpg'),
('00059', '59.jpg'),
('00060', '60.jpg'),
('00061', '61.jpg'),
('00062', '62.jpg'),
('00063', '63.jpg'),
('00064', '64.jpg'),
('00065', '65.jpg'),
('00066', '66.jpg'),
('00067', '67.jpg'),
('00068', '68.jpg'),
('00069', '69.jpg'),
('00070', '70.jpg'),
('00071', '71.jpg'),
('00072', '72.jpg'),
('00073', '73.jpg'),
('00074', '74.jpg'),
('00075', '75.jpg'),
('00076', '76.jpg'),
('00077', '77.jpg'),
('00078', '78.jpg'),
('00079', '79.jpg'),
('00080', '80.jpg'),
('00081', '81.jpg'),
('00082', '82.jpg'),
('00083', '83.jpg'),
('00084', '84.jpg'),
('00085', '85.jpg'),
('00086', '86.jpg'),
('00087', '87.jpg'),
('00088', '88.jpg'),
('00089', '89.jpg'),
('00090', '90.jpg'),
('00091', '91.jpg'),
('00092', '92.jpg'),
('00093', '93.jpg'),
('00094', '94.jpg'),
('00095', '95.jpg'),
('00096', '96.jpg'),
('00097', '97.jpg'),
('00098', '98.jpg'),
('00099', '99.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `Pname_Thai` char(30) NOT NULL,
  `Code` varchar(10) NOT NULL,
  `Weight` varchar(10) NOT NULL,
  `Size` int(3) NOT NULL,
  `Color` char(10) NOT NULL,
  `Decorate` char(1) NOT NULL,
  `General` char(1) NOT NULL,
  `Price` int(10) NOT NULL,
  `Cost` int(10) NOT NULL,
  `Brand` char(20) NOT NULL,
  `Pname_Eng` char(30) NOT NULL,
  `StockNum` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`Pname_Thai`, `Code`, `Weight`, `Size`, `Color`, `Decorate`, `General`, `Price`, `Cost`, `Brand`, `Pname_Eng`, `StockNum`) VALUES
('วงล้อ', '00000', '20', 2, 'black', 'F', 'T', 2000, 1400, 'Moto', 'Wheel', 0),
('ยางใน', '00001', '2', 3, 'white', 'F', 'T', 1370, 959, 'Deestone', 'Inner tube', 1),
('วงล้อ', '00002', '22', 4, 'white', 'F', 'T', 570, 399, 'Yoko', 'Wheel', 2),
('แบตเตอร์รี่', '00003', '19', 3, 'white', 'F', 'T', 450, 315, '3K', 'Battery', 3),
('ปลั๊กเช็คน้ำมันเครื่อง', '00004', '1', 4, 'green', 'T', 'F', 500, 350, 'Yamaha', 'Engine oil plug', 4),
('โช๊ค', '00005', '4', 3, 'black', 'F', 'T', 989, 692, 'Honda', 'Shock', 5),
('ชุดสี', '00006', '28', 3, 'blue', 'T', 'F', 569, 398, 'Suzuki', 'Color set', 6),
('ยางใน', '00007', '27', 3, 'black', 'F', 'T', 100, 70, 'Deestone', 'Inner tube', 7),
('ชุดรองพักเท้า', '00008', '5', 1, 'white', 'F', 'T', 1000, 700, 'Yamaha', 'Footrest set', 8),
('น้ำมัน', '00009', '12', 3, 'green', 'T', 'F', 200, 140, 'Castrol', 'oil', 9),
('ยางนอก', '00010', '22', 4, 'white', 'F', 'T', 570, 399, 'Deestone', 'Outer tires', 10),
('แบตเตอร์รี่', '00011', '23', 3, 'green', 'T', 'F', 400, 280, '3K', 'Battery', 11),
('ยางนอก', '00012', '28', 1, 'black', 'F', 'T', 810, 567, 'Deestone', 'Outer tires', 12),
('ยางนอก', '00013', '30', 4, 'black', 'F', 'T', 1999, 1399, 'Michelin', 'Outer tires', 13),
('ยางนอก', '00014', '21', 4, 'white', 'F', 'T', 450, 315, 'Michelin', 'Outer tires', 14),
('ยางนอก', '00015', '19', 3, 'yellow', 'T', 'F', 543, 380, 'Deestone', 'Outer tires', 15),
('บังโคลนหน้า', '00016', '22', 1, 'red', 'T', 'F', 1299, 909, 'Honda', 'Front fender', 16),
('ยางนอก', '00017', '4', 2, 'green', 'T', 'F', 499, 349, 'Duro', 'Outer tires', 17),
('หลอดไฟ', '00018', '15', 4, 'green', 'T', 'F', 569, 398, 'Stanley', 'Light bulb', 18),
('แฮนด์', '00019', '14', 3, 'yellow', 'T', 'F', 543, 380, 'Honda', 'The hand', 19),
('ยางใน', '00020', '2', 2, 'yellow', 'T', 'F', 810, 567, 'Camel', 'Inner tube', 20),
('มือเบรค', '00021', '15', 3, 'red', 'T', 'F', 543, 380, 'Honda', 'Hand brake', 21),
('ท่อไอเสีย', '00022', '10', 3, 'black', 'F', 'T', 989, 692, 'Honda', 'intake', 22),
('ฝาถังน้ำมัน', '00023', '17', 2, 'black', 'F', 'T', 359, 251, 'Honda', 'Fuel tank cap', 23),
('ยางใน', '00024', '6', 3, 'red', 'T', 'F', 100, 70, 'Deestone', 'Inner tube', 24),
('มือคลัทช์ แอคทีฟ', '00025', '19', 3, 'red', 'T', 'F', 450, 315, 'Honda', 'Clutch hand', 25),
('ยางนอก', '00026', '28', 4, 'green', 'T', 'F', 499, 349, 'Deestone', 'Outer tires', 26),
('ยางนอก', '00027', '30', 2, 'red', 'T', 'F', 620, 434, 'Deestone', 'Outer tires', 27),
('โช๊ค', '00028', '28', 4, 'green', 'T', 'F', 1790, 1253, 'Honda', 'Shock', 28),
('ชุดพนักพิงหลัง', '00029', '17', 2, 'black', 'F', 'T', 1599, 1119, 'Yamaha', 'Backrest set', 29),
('กันชนฝาข้างซ้าย-ขวา', '00030', '7', 1, 'black', 'F', 'T', 2000, 1400, 'Suzuki', 'bumper cover', 30),
('น้ำมัน', '00031', '28', 1, 'green', 'T', 'F', 100, 70, 'Honda', 'oil', 31),
('ยางนอก', '00032', '2', 1, 'blue', 'T', 'F', 1370, 959, 'Michelin', 'Outer tires', 32),
('น้ำมัน', '00033', '21', 4, 'blue', 'T', 'F', 200, 140, 'Honda', 'oil', 33),
('ยางใน', '00034', '26', 4, 'white', 'F', 'T', 400, 280, 'Camel', 'Inner tube', 34),
('ยางนอก', '00035', '29', 1, 'black', 'F', 'T', 300, 210, 'Duro', 'Outer tires', 35),
('น้ำมัน', '00036', '4', 3, 'white', 'F', 'T', 100, 70, 'Honda', 'oil', 36),
('ฝาครอบท้ายเบาะหลัง', '00037', '13', 3, 'red', 'T', 'F', 1299, 909, 'Honda', 'Rear seat cover', 37),
('ยางนอก', '00038', '29', 2, 'yellow', 'T', 'F', 2000, 1400, 'Moto', 'Outer tires', 38),
(' เบาะนั่งทั้งชุด', '00039', '12', 2, 'red', 'T', 'F', 1250, 875, 'Honda', 'Seat cushion set', 39),
('บังโคลนหน้า', '00040', '26', 3, 'black', 'F', 'T', 1580, 1106, 'Suzuki', 'Front fender', 40),
('ฝาครอบไฟหน้า', '00041', '28', 1, 'white', 'F', 'T', 1790, 1253, 'Yamaha', 'Headlight cover', 41),
('น้ำมัน', '00042', '10', 2, 'red', 'T', 'F', 543, 380, 'Yamaha', 'oil', 42),
('การ์ดฝาครอบโซ่', '00043', '6', 2, 'green', 'T', 'F', 1599, 1119, 'Yamaha', 'Chain cover card', 43),
('ยางนอก', '00044', '21', 3, 'red', 'T', 'F', 1599, 1119, 'Deestone', 'Outer tires', 44),
('สายพาน', '00045', '21', 2, 'black', 'F', 'T', 359, 251, 'Suzuki', 'Belt', 45),
('แบตเตอร์รี่', '00046', '7', 4, 'green', 'T', 'F', 1999, 1399, '3K', 'Battery', 46),
('หลอดไฟ', '00047', '29', 3, 'yellow', 'T', 'F', 300, 210, 'Stanley', 'Light bulb', 47),
('ยางนอก', '00048', '11', 4, 'red', 'T', 'F', 749, 524, 'Moto', 'Outer tires', 48),
('ยางใน', '00049', '24', 4, 'white', 'F', 'T', 1790, 1253, 'Camel', 'Inner tube', 49),
('ยางนอก', '00050', '2', 2, 'white', 'F', 'T', 300, 210, 'Michelin', 'Outer tires', 50),
('สวิตซ์สตาร์ท', '00051', '28', 3, 'blue', 'T', 'F', 1370, 959, 'Kawasaki', 'Start switch', 51),
('ยางนอก', '00052', '18', 2, 'green', 'T', 'F', 1250, 875, 'Duro', 'Outer tires', 52),
('ยางใน', '00053', '26', 3, 'black', 'F', 'T', 899, 629, 'Castrol', 'Inner tube', 53),
('ยางนอก', '00054', '13', 1, 'black', 'F', 'T', 1790, 1253, 'Deestone', 'Outer tires', 54),
('ขั้วต่อเชื่อม ยูเอสบี', '00055', '8', 3, 'black', 'F', 'T', 810, 567, 'Yamaha', 'USB connector', 55),
('วงล้อ', '00056', '21', 2, 'white', 'F', 'T', 400, 280, 'Yoko', 'Wheel', 56),
('หลอดไฟ', '00057', '30', 4, 'black', 'F', 'T', 749, 524, 'Stanley', 'Light bulb', 57),
('ฝาครอบท้ายด้านซ้าย', '00058', '3', 4, 'white', 'F', 'T', 1370, 959, 'Honda', 'Left rear cover', 58),
('ยางนอก', '00059', '10', 2, 'black', 'F', 'T', 543, 380, 'Moto', 'Outer tires', 59),
('ชุดกุญแจ', '00060', '26', 1, 'white', 'F', 'T', 300, 210, 'Honda', 'Key set', 60),
('ฝาครอบบังโคลนหลัง', '00061', '7', 3, 'black', 'F', 'T', 300, 210, 'Yamaha', 'Rear fender cover', 61),
('ชุดขายึดอเนกประสงค์', '00062', '14', 4, 'white', 'F', 'T', 300, 210, 'Yamaha', 'Universal mounting kit', 62),
('น้ำมัน', '00063', '8', 4, 'white', 'F', 'T', 499, 349, 'Castrol', 'oil', 63),
('ชุดประกับแฮนด์อาเอซีบี', '00064', '16', 2, 'black', 'F', 'T', 1250, 875, 'Yamaha', 'Hand set with AACB', 64),
('ยางนอก', '00065', '23', 4, 'black', 'F', 'T', 1000, 700, 'Deestone', 'Outer tires', 65),
('ชุดจุกปิดปลายแฮนด์', '00066', '28', 2, 'white', 'F', 'T', 620, 434, 'Honda', 'Hand end set', 66),
('ยางนอก', '00067', '3', 1, 'white', 'F', 'T', 1580, 1106, 'Deestone', 'Outer tires', 67),
('ยางใน', '00068', '22', 3, 'black', 'F', 'T', 233, 163, 'Duro', 'Inner tube', 68),
('ยางใน', '00069', '21', 2, 'white', 'F', 'T', 200, 140, 'Deestone', 'Inner tube', 69),
('มือเบรคข้างขวา', '00070', '3', 2, 'green', 'T', 'F', 543, 380, 'Suzuki', 'Right hand brake', 70),
('ชุดบู๊ชล้อหน้า', '00071', '4', 2, 'yellow', 'T', 'F', 200, 140, 'Suzuki', 'Front wheel boot set', 71),
('ฝาครอบตัวถังท่อนบน', '00072', '22', 4, 'red', 'T', 'F', 1599, 1119, 'Honda', 'Upper body cover', 72),
('ฝาครอบแฮนด์ด้านหน้า', '00073', '5', 3, 'white', 'F', 'T', 1370, 959, 'Honda', 'Front handlebar cover', 73),
('ฝาปิดท้ายเบาะ', '00074', '10', 1, 'white', 'F', 'T', 569, 398, 'Honda', 'Rear seat cover', 74),
('แบตเตอร์รี่', '00075', '27', 4, 'black', 'F', 'T', 300, 210, '3K', 'Battery', 75),
('ยางนอก', '00076', '14', 4, 'white', 'F', 'T', 500, 350, 'Michelin', 'Outer tires', 76),
('วงล้อ', '00077', '29', 4, 'black', 'F', 'T', 810, 567, 'Moto', 'Wheel', 77),
('หลอดไฟ', '00078', '10', 3, 'green', 'T', 'F', 620, 434, 'Stanley', 'Light bulb', 78),
('น้ำมัน', '00079', '12', 3, 'white', 'F', 'T', 100, 70, 'Yamaha', 'oil', 79),
('ชุดบังลม', '00080', '8', 3, 'white', 'F', 'T', 1580, 1106, 'Honda', 'Windscreen', 80),
('ยางนอก', '00081', '26', 1, 'yellow', 'T', 'F', 1000, 700, 'Duro', 'Outer tires', 81),
('ยางใน', '00082', '4', 4, 'black', 'F', 'T', 810, 567, 'Moto', 'Inner tube', 82),
('วงล้อ', '00083', '24', 3, 'red', 'T', 'F', 1790, 1253, 'Moto', 'Wheel', 83),
('น้ำมัน', '00084', '15', 3, 'red', 'T', 'F', 233, 163, 'Yamaha', 'oil', 84),
('น้ำมัน', '00085', '20', 1, 'red', 'T', 'F', 200, 140, 'Honda', 'oil', 85),
('น้ำมัน', '00086', '29', 4, 'green', 'T', 'F', 200, 140, 'Honda', 'oil', 86),
('น้ำมัน', '00087', '28', 2, 'black', 'F', 'T', 100, 70, 'Yamaha', 'oil', 87),
('บังโคลนท้าย', '00088', '12', 2, 'blue', 'T', 'F', 400, 280, 'Honda', 'Rear fender', 88),
('ยางใน', '00089', '4', 3, 'black', 'F', 'T', 570, 399, 'Camel', 'Inner tube', 89),
('สายเร่งบน', '00090', '13', 1, 'white', 'F', 'T', 233, 163, 'Suzuki', 'Upper speeding line', 90),
('สายเร่งบน', '00091', '5', 3, 'white', 'F', 'T', 400, 280, 'Yamaha', 'Upper speeding line', 91),
('สายเบรค', '00092', '24', 4, 'blue', 'T', 'F', 450, 315, 'Yamaha', 'Brake cable', 92),
('ยางใน', '00093', '2', 2, 'red', 'T', 'F', 233, 163, 'Yoko', 'Inner tube', 93),
('สายครัช', '00094', '30', 2, 'white', 'F', 'T', 569, 398, 'Yamaha', 'Clutch', 94),
('หลอดไฟ', '00095', '21', 4, 'yellow', 'T', 'F', 300, 210, 'Stanley', 'Light bulb', 95),
('ฝาครอบไฟหน้า', '00096', '19', 2, 'blue', 'T', 'F', 1790, 1253, 'Suzuki', 'Headlight cover', 96),
('หลอดไฟ', '00097', '5', 1, 'black', 'F', 'T', 450, 315, 'Stanley', 'Light bulb', 97),
('สายโช๊ค', '00098', '3', 1, 'yellow', 'T', 'F', 499, 349, 'Yamaha', 'Shock line', 98),
('น้ำมัน', '00099', '30', 3, 'green', 'T', 'F', 233, 163, 'Castrol', 'oil', 99);

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `StockNum` int(2) NOT NULL,
  `Inventories` int(5) NOT NULL,
  `Supplier` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`StockNum`, `Inventories`, `Supplier`) VALUES
(0, 42, 'Moto'),
(1, 33, 'Deestone'),
(2, 49, 'Yoko'),
(3, 10, '3K'),
(4, 45, 'Yamaha'),
(5, 25, 'Honda'),
(6, 38, 'Suzuki'),
(7, 37, 'Deestone'),
(8, 10, 'Yamaha'),
(9, 44, 'Castrol'),
(10, 49, 'Deestone'),
(11, 22, '3K'),
(12, 11, 'Deestone'),
(13, 32, 'Michelin'),
(14, 25, 'Michelin'),
(15, 49, 'Deestone'),
(16, 22, 'Honda'),
(17, 13, 'Duro'),
(18, 26, 'Stanley'),
(19, 34, 'Honda'),
(20, 11, 'Camel'),
(21, 27, 'Honda'),
(22, 33, 'Honda'),
(23, 33, 'Honda'),
(24, 34, 'Deestone'),
(25, 24, 'Honda'),
(26, 15, 'Deestone'),
(27, 12, 'Deestone'),
(28, 32, 'Honda'),
(29, 40, 'Yamaha'),
(30, 36, 'Suzuki'),
(31, 47, 'Honda'),
(32, 26, 'Michelin'),
(33, 29, 'Honda'),
(34, 41, 'Camel'),
(35, 40, 'Duro'),
(36, 19, 'Honda'),
(37, 22, 'Honda'),
(38, 47, 'Moto'),
(39, 11, 'Honda'),
(40, 15, 'Suzuki'),
(41, 17, 'Yamaha'),
(42, 24, 'Yamaha'),
(43, 22, 'Yamaha'),
(44, 17, 'Deestone'),
(45, 30, 'Suzuki'),
(46, 23, '3K'),
(47, 15, 'Stanley'),
(48, 38, 'Moto'),
(49, 17, 'Camel'),
(50, 20, 'Michelin'),
(51, 13, 'Kawasaki'),
(52, 30, 'Duro'),
(53, 31, 'Castrol'),
(54, 41, 'Deestone'),
(55, 11, 'Yamaha'),
(56, 27, 'Yoko'),
(57, 15, 'Stanley'),
(58, 48, 'Honda'),
(59, 23, 'Moto'),
(60, 10, 'Honda'),
(61, 30, 'Yamaha'),
(62, 18, 'Yamaha'),
(63, 41, 'Castrol'),
(64, 35, 'Yamaha'),
(65, 27, 'Deestone'),
(66, 40, 'Honda'),
(67, 45, 'Deestone'),
(68, 19, 'Duro'),
(69, 44, 'Deestone'),
(70, 40, 'Suzuki'),
(71, 37, 'Suzuki'),
(72, 15, 'Honda'),
(73, 24, 'Honda'),
(74, 11, 'Honda'),
(75, 48, '3K'),
(76, 50, 'Michelin'),
(77, 13, 'Moto'),
(78, 42, 'Stanley'),
(79, 11, 'Yamaha'),
(80, 20, 'Honda'),
(81, 40, 'Duro'),
(82, 11, 'Moto'),
(83, 45, 'Moto'),
(84, 46, 'Yamaha'),
(85, 18, 'Honda'),
(86, 38, 'Honda'),
(87, 26, 'Yamaha'),
(88, 15, 'Honda'),
(89, 29, 'Camel'),
(90, 34, 'Suzuki'),
(91, 10, 'Yamaha'),
(92, 26, 'Yamaha'),
(93, 44, 'Yoko'),
(94, 12, 'Yamaha'),
(95, 27, 'Stanley'),
(96, 42, 'Suzuki'),
(97, 41, 'Stanley'),
(98, 46, 'Yamaha'),
(99, 31, 'Castrol');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buy`
--
ALTER TABLE `buy`
  ADD PRIMARY KEY (`TradingNum`,`PCode`),
  ADD KEY `PCode` (`PCode`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`TradingNum`);

--
-- Indexes for table `Picture`
--
ALTER TABLE `Picture`
  ADD PRIMARY KEY (`PCode`,`Picture`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`Code`),
  ADD KEY `StockNum` (`StockNum`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`StockNum`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `buy`
--
ALTER TABLE `buy`
  ADD CONSTRAINT `buy_ibfk_1` FOREIGN KEY (`TradingNum`) REFERENCES `member` (`TradingNum`),
  ADD CONSTRAINT `buy_ibfk_2` FOREIGN KEY (`PCode`) REFERENCES `product` (`Code`);

--
-- Constraints for table `Picture`
--
ALTER TABLE `Picture`
  ADD CONSTRAINT `picture_ibfk_1` FOREIGN KEY (`PCode`) REFERENCES `product` (`Code`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`StockNum`) REFERENCES `stock` (`StockNum`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
