-- phpMyAdmin SQL Dump
-- version 4.0.10.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 18, 2015 at 09:22 PM
-- Server version: 5.5.42-cll
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `news` text NOT NULL,
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`news_id`, `news`) VALUES
(1, 'She''s got a smile that it seems to me\nReminds me of childhood memories\nWhere everything\nWas as fresh as the bright blue sky'),
(2, 'Now and then when I see her face\r\nShe takes me away to that special place\r\nAnd if I stared too long\r\nI''d probably break down and cry'),
(3, 'Sweet child o'' mine\r\nSweet love of mine'),
(4, 'She''s got eyes of the bluest skies\r\nAs if they thought of rain\r\nI''d hate to look into those eyes\r\nAnd see an ounce of pain'),
(5, 'Her hair reminds me of a warm safe place\r\nWhere as a child I''d hide\r\nAnd pray for the thunder and the rain\r\nTo quietly pass me by'),
(6, 'Sweet child o'' mine\r\nSweet love of mine'),
(7, 'Where do we go?\r\nWhere do we go now?\r\nWhere do we go?\r\nSweet child o'' mine'),
(8, 'When I look into your eyes\r\nI can see a love restrained\r\nBut darlin'' when I hold you\r\nDon''t you know I feel the same\r\n'),
(9, '''Cause nothin'' lasts forever\r\nAnd we both know hearts can change\r\nAnd it''s hard to hold a candle\r\nIn the cold November rain'),
(10, 'We''ve been through this such a long long time\r\nJust tryin'' to kill the pain'),
(11, 'But lovers always come and lovers always go\r\nAnd no one''s really sure who''s lettin'' go today\r\nWalking away'),
(12, 'If we could take the time\r\nTo lay it on the line\r\nI could rest my head\r\nJust knowin'' that you were mine\r\nAll mine\r\nSo if you want to love me\r\nThen darlin'' don''t refrain\r\nOr I''ll just end up walkin''\r\nIn the cold November rain'),
(13, 'Do you need some time...on your own\r\nDo you need some time...all alone\r\nEverybody needs some time... on their own\r\nDon''t you know you need some time...all alone'),
(14, 'I know it''s hard to keep an open heart\r\nWhen even friends seem out to harm you\r\nBut if you could heal a broken heart\r\nWouldn''t time be out to charm you'),
(15, 'Sometimes I need some time...on my own\r\nSometimes I need some time...all alone\r\nEverybody needs some time... on their own\r\nDon''t you know you need some time...all alone'),
(16, 'And when your fears subside\r\nAnd shadows still remain\r\nI know that you can love me\r\nWhen there''s no one left to blame\r\nSo never mind the darkness\r\nWe still can find a way\r\n''Cause nothin'' lasts forever\r\nEven cold November rain\r\n'),
(17, 'Don''t ya think that you need somebody\nDon''t ya think that you need someone\nEverybody needs somebody\nYou''re not the only one\nYou''re not the only one'),
(18, 'Send someone to love me\r\nI need to rest in arms\r\nKeep me safe from harm\r\nIn pouring rain\r\n'),
(19, 'Give me endless summer\r\nLord I fear the cold\r\nFeel I''m getting old\r\nBefore my time'),
(20, 'As my soul heals the shame\r\nI will grow through this pain\r\nLord I''m doing all I can\r\nTo be a better man'),
(21, 'Go easy on my conscience\r\n''Cause it''s not my fault\r\nI know I''ve been taught\r\nTo take the blame\r\n'),
(22, 'Rest assured my angels\r\nWill catch my tears\r\nWalk me out of here\r\nI''m in pain'),
(23, 'As my soul heals the shame\r\nI will grow through this pain\r\nLord I''m doing all I can\r\nTo be a better man\r\n');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
