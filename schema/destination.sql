DROP TABLE IF EXISTS Destinations;
CREATE TABLE IF NOT EXISTS Destinations
(
	i_dest		INT UNSIGNED NOT NULL,
	i_timezone	INT UNSIGNED NOT NULL,
	destination	VARCHAR(15) NOT NULL DEFAULT '',

	iso_3166_1_a2	CHAR(2) DEFAULT '',
	description	VARCHAR(64) NOT NULL DEFAULT '',
	PRIMARY KEY (i_dest),
	UNIQUE KEY destination (destination),
	KEY iso_3166_1_a2 (iso_3166_1_a2)
) TYPE=InnoDB;

INSERT INTO Destinations VALUES
	(0, 0, '', '--', '*wildcard*'),
	(1, 0, '1', '--', 'fallback 1'),
	(2, 0, '2', '--', 'fallback 2'),
	(3, 0, '3', '--', 'fallback 3'),
	(4, 0, '4', '--', 'fallback 4'),
	(5, 0, '5', '--', 'fallback 5'),
	(6, 0, '6', '--', 'fallback 6'),
	(7, 0, '7', '--', 'fallback 7'),
	(8, 0, '8', '--', 'fallback 8'),
	(9, 0, '9', '--', 'fallback 9'),
	(10, 0, '0', '--', 'fallback 0'),
	-- lerg
	(11, 84, '1403', 'CA', 'AB'),
	(12, 84, '1780', 'CA', 'AB'),
	(13, 5, '1264', 'AI', 'Anguilla'),
	(14, 346, '1907', 'US', 'AK'),
	(15, 339, '1205', 'US', 'AL'),
	(16, 339, '1256', 'US', 'AL'),
	(17, 339, '1334', 'US', 'AL'),
	(18, 4, '1268', 'AG', 'Antigua/Barbuda'),
	(19, 339, '1501', 'US', 'AR'),
	(20, 339, '1870', 'US', 'AR'),
	(21, 344, '1480', 'US', 'AZ'),
	(22, 344, '1520', 'US', 'AZ'),
	(23, 344, '1602', 'US', 'AZ'),
	(24, 344, '1623', 'US', 'AZ'),
	(25, 64, '1242', 'BS', 'Bahamas'),
	(26, 88, '1250', 'CA', 'BC'),
	(27, 88, '1604', 'CA', 'BC'),
	(28, 40, '1246', 'BB', 'BD / Barbados'),
	(29, 48, '1441', 'BM', 'BM'),
	(30, 358, '1284', 'VG', 'BV / British Virgin Islands'),
	(31, 345, '1209', 'US', 'CA'),
	(32, 345, '1213', 'US', 'CA'),
	(33, 345, '1310', 'US', 'CA'),
	(34, 345, '1323', 'US', 'CA'),
	(35, 345, '1408', 'US', 'CA'),
	(36, 345, '1415', 'US', 'CA'),
	(37, 345, '1424', 'US', 'CA'),
	(38, 345, '1510', 'US', 'CA'),
	(39, 345, '1530', 'US', 'CA'),
	(40, 345, '1559', 'US', 'CA'),
	(41, 345, '1562', 'US', 'CA'),
	(42, 345, '1619', 'US', 'CA'),
	(43, 345, '1626', 'US', 'CA'),
	(44, 345, '1650', 'US', 'CA'),
	(45, 345, '1661', 'US', 'CA'),
	(46, 345, '1669', 'US', 'CA'),
	(47, 345, '1707', 'US', 'CA'),
	(48, 345, '1714', 'US', 'CA'),
	(49, 345, '1760', 'US', 'CA'),
	(50, 345, '1805', 'US', 'CA'),
	(51, 345, '1818', 'US', 'CA'),
	(52, 345, '1831', 'US', 'CA'),
	(53, 345, '1858', 'US', 'CA'),
	(54, 345, '1909', 'US', 'CA'),
	(55, 345, '1916', 'US', 'CA'),
	(56, 345, '1925', 'US', 'CA'),
	(57, 345, '1949', 'US', 'CA'),
	(58, 0, '1500', 'US', 'CH / Charge'),
	(59, 0, '1900', 'US', 'CH / Charge'),
	(60, 341, '1303', 'US', 'CO'),
	(62, 341, '1719', 'US', 'CO'),
	(63, 341, '1720', 'US', 'CO'),
	(64, 341, '1970', 'US', 'CO'),
	(65, 191, '1345', 'KY', 'CQ / Cayman Islands'),
	(66, 331, '1203', 'US', 'CT'),
	(67, 331, '1860', 'US', 'CT'),
	(68, 331, '1202', 'US', 'DC'),
	(69, 331, '1302', 'US', 'DE'),
	(70, 117, '1767', 'DM', 'DM'),
	(71, 118, '1809', 'DO', 'DR / Dominican Republic'),
	(72, 331, '1305', 'US', 'FL'),
	(73, 331, '1321', 'US', 'FL'),
	(74, 331, '1352', 'US', 'FL'),
	(75, 331, '1407', 'US', 'FL'),
	(76, 331, '1561', 'US', 'FL'),
	(77, 331, '1727', 'US', 'FL'),
	(78, 331, '1786', 'US', 'FL'),
	(79, 331, '1813', 'US', 'FL'),
	(80, 339, '1850', 'US', 'FL Eastern&Central'),
	(81, 331, '1904', 'US', 'FL'),
	(83, 331, '1941', 'US', 'FL'),
	(84, 331, '1954', 'US', 'FL'),
	(85, 331, '1239', 'US', 'FL'),
	(86, 331, '1404', 'US', 'GA'),
	(87, 331, '1678', 'US', 'GA'),
	(88, 331, '1706', 'US', 'GA'),
	(89, 331, '1770', 'US', 'GA'),
	(90, 331, '1912', 'US', 'GA'),
	(91, 142, '1473', 'GD', 'GN / Grenada'),
	(92, 157, '1671', 'GU', 'GU / Guam'),
	(93, 351, '1808', 'US', 'HI'),
	(94, 339, '1319', 'US', 'IA'),
	(95, 339, '1515', 'US', 'IA'),
	(96, 339, '1712', 'US', 'IA'),
	(97, 341, '1208', 'US', 'ID Mountain & Pacific'),
	(98, 341, '1435', 'US', 'ID'),
	(99, 339, '1217', 'US', 'IL'),
	(100, 339, '1224', 'US', 'IL'),
	(101, 339, '1309', 'US', 'IL'),
	(102, 339, '1312', 'US', 'IL'),
	(103, 339, '1618', 'US', 'IL'),
	(104, 339, '1630', 'US', 'IL'),
	(105, 339, '1708', 'US', 'IL'),
	(106, 339, '1773', 'US', 'IL'),
	(107, 339, '1815', 'US', 'IL'),
	(108, 339, '1847', 'US', 'IL'),
	(109, 335, '1219', 'US', 'IN / TZ!'),
	(110, 335, '1317', 'US', 'IN / TZ!'),
	(112, 335, '1765', 'US', 'IN / TZ!'),
	(113, 335, '1812', 'US', 'IN / TZ!'),
	(114, 177, '1876', 'JM', 'JM'),
	(115, 187, '1869', 'KN', 'KA St. Kitts'),
	(116, 339, '1316', 'US', 'KS'),
	(117, 339, '1785', 'US', 'KS'),
	(118, 339, '1913', 'US', 'KS'),
	(119, 331, '1270', 'US', 'KY / TZ!'),
	(120, 331, '1502', 'US', 'KY / TZ!'),
	(121, 331, '1606', 'US', 'KY / TZ!'),
	(122, 339, '1225', 'US', 'LA'),
	(123, 339, '1318', 'US', 'LA'),
	(124, 339, '1504', 'US', 'LA'),
	(125, 331, '1413', 'US', 'MA'),
	(126, 331, '1508', 'US', 'MA'),
	(127, 331, '1617', 'US', 'MA'),
	(128, 331, '1781', 'US', 'MA'),
	(129, 331, '1978', 'US', 'MA'),
	(130, 79, '1204', 'CA', 'MB'),
	(131, 331, '1240', 'US', 'MD'),
	(132, 331, '1301', 'US', 'MD'),
	(133, 331, '1410', 'US', 'MD'),
	(134, 331, '1443', 'US', 'MD'),
	(135, 331, '1207', 'US', 'ME'),
	(136, 332, '1231', 'US', 'MI/ TZ!'),
	(137, 332, '1248', 'US', 'MI/ TZ!'),
	(138, 332, '1313', 'US', 'MI/ TZ!'),
	(139, 332, '1517', 'US', 'MI/ TZ!'),
	(140, 332, '1616', 'US', 'MI/ TZ!'),
	(141, 332, '1734', 'US', 'MI/ TZ!'),
	(142, 332, '1810', 'US', 'MI/ TZ!'),
	(143, 332, '1906', 'US', 'MI/ TZ!'),
	(144, 339, '1218', 'US', 'MN'),
	(145, 339, '1320', 'US', 'MN'),
	(146, 339, '1507', 'US', 'MN'),
	(147, 339, '1612', 'US', 'MN'),
	(148, 339, '1651', 'US', 'MN'),
	(149, 339, '1314', 'US', 'MO'),
	(150, 339, '1417', 'US', 'MO'),
	(151, 339, '1573', 'US', 'MO'),
	(152, 339, '1636', 'US', 'MO'),
	(153, 339, '1660', 'US', 'MO'),
	(154, 339, '1816', 'US', 'MO'),
	(155, 339, '1228', 'US', 'MS'),
	(156, 339, '1601', 'US', 'MS'),
	(157, 339, '1662', 'US', 'MS'),
	(158, 341, '1406', 'US', 'MT'),
	(159, 0, '1506', 'US', 'NB - relief'),
	(160, 331, '1252', 'US', 'NC'),
	(161, 331, '1336', 'US', 'NC'),
	(162, 331, '1704', 'US', 'NC'),
	(163, 331, '1803', 'US', 'NC'),
	(164, 331, '1828', 'US', 'NC'),
	(165, 331, '1843', 'US', 'NC'),
	(167, 331, '1910', 'US', 'NC'),
	(168, 331, '1919', 'US', 'NC'),
	(169, 339, '1701', 'US', 'ND / TZ!'),
	(170, 339, '1308', 'US', 'NE / TZ!'),
	(171, 339, '1402', 'US', 'NE / TZ!'),
	(172, 69, '1709', 'CA', 'NF'),
	(173, 331, '1603', 'US', 'NH'),
	(174, 331, '1201', 'US', 'NJ'),
	(175, 331, '1609', 'US', 'NJ'),
	(176, 331, '1732', 'US', 'NJ'),
	(177, 331, '1856', 'US', 'NJ'),
	(178, 331, '1908', 'US', 'NJ'),
	(179, 331, '1973', 'US', 'NJ'),
	(180, 341, '1505', 'US', 'NM'),
	(181, 219, '1670', 'MP', 'NN Saipan'),
	(182, 70, '1902', 'CA', 'NS Nova Scotia'),
	(183, 85, '1867', 'CA', 'NT'),
	(184, 345, '1702', 'US', 'NV'),
	(185, 345, '1775', 'US', 'NV'),
	(186, 331, '1212', 'US', 'NY'),
	(187, 331, '1315', 'US', 'NY'),
	(188, 331, '1347', 'US', 'NY'),
	(189, 331, '1516', 'US', 'NY'),
	(190, 331, '1518', 'US', 'NY'),
	(191, 331, '1607', 'US', 'NY'),
	(192, 331, '1646', 'US', 'NY'),
	(193, 331, '1716', 'US', 'NY'),
	(194, 331, '1718', 'US', 'NY'),
	(195, 331, '1914', 'US', 'NY'),
	(196, 331, '1917', 'US', 'NY'),
	(197, 331, '1216', 'US', 'OH'),
	(198, 331, '1330', 'US', 'OH'),
	(199, 331, '1419', 'US', 'OH'),
	(200, 331, '1440', 'US', 'OH'),
	(201, 331, '1513', 'US', 'OH'),
	(202, 331, '1614', 'US', 'OH'),
	(203, 331, '1740', 'US', 'OH'),
	(204, 331, '1937', 'US', 'OH'),
	(205, 339, '1405', 'US', 'OK'),
	(206, 339, '1580', 'US', 'OK'),
	(207, 339, '1918', 'US', 'OK'),
	(208, 73, '1416', 'CA', 'ON'),
	(209, 73, '1519', 'CA', 'ON'),
	(210, 73, '1613', 'CA', 'ON'),
	(211, 73, '1705', 'CA', 'ON'),
	(212, 73, '1807', 'CA', 'ON'),
	(213, 73, '1819', 'CA', 'ON'),
	(214, 73, '1905', 'CA', 'ON'),
	(215, 345, '1503', 'US', 'OR'),
	(216, 345, '1541', 'US', 'OR'),
	(217, 331, '1215', 'US', 'PA'),
	(218, 331, '1267', 'US', 'PA'),
	(219, 331, '1412', 'US', 'PA'),
	(220, 331, '1484', 'US', 'PA'),
	(221, 331, '1570', 'US', 'PA'),
	(222, 331, '1610', 'US', 'PA'),
	(223, 331, '1717', 'US', 'PA'),
	(224, 331, '1724', 'US', 'PA'),
	(225, 331, '1814', 'US', 'PA'),
	(227, 73, '1418', 'CA', 'PQ'),
	(228, 73, '1450', 'CA', 'PQ'),
	(229, 73, '1514', 'CA', 'PQ'),
	(231, 263, '1787', 'PR', 'PR'),
	(232, 331, '1401', 'US', 'RI'),
	(233, 222, '1664', 'MS', 'RT Montserrat'),
	(234, 197, '1758', 'LC', 'SA St Lucia'),
	(237, 331, '1864', 'US', 'SC'),
	(238, 339, '1605', 'US', 'SD / TZ!'),
	(239, 82, '1306', 'CA', 'SK'),
	(240, 307, '1649', 'TC', 'TC'),
	(241, 339, '1423', 'US', 'TN / TZ!'),
	(242, 339, '1615', 'US', 'TN / TZ!'),
	(243, 339, '1901', 'US', 'TN / TZ!'),
	(244, 339, '1931', 'US', 'TN / TZ!'),
	(245, 319, '1868', 'TT', 'TR Port of Spain'),
	(246, 0, '1710', 'US', 'TS Govt'),
	(247, 339, '1210', 'US', 'TX'),
	(248, 339, '1214', 'US', 'TX'),
	(249, 339, '1254', 'US', 'TX'),
	(250, 339, '1281', 'US', 'TX'),
	(251, 339, '1361', 'US', 'TX'),
	(252, 339, '1409', 'US', 'TX'),
	(253, 339, '1469', 'US', 'TX'),
	(254, 339, '1512', 'US', 'TX'),
	(255, 339, '1713', 'US', 'TX'),
	(256, 339, '1806', 'US', 'TX'),
	(257, 339, '1817', 'US', 'TX'),
	(258, 339, '1830', 'US', 'TX'),
	(259, 339, '1832', 'US', 'TX'),
	(261, 339, '1903', 'US', 'TX'),
	(262, 339, '1915', 'US', 'TX'),
	(263, 339, '1940', 'US', 'TX'),
	(264, 339, '1956', 'US', 'TX'),
	(265, 339, '1972', 'US', 'TX'),
	(267, 341, '1801', 'US', 'UT'),
	(268, 331, '1540', 'US', 'VA'),
	(269, 331, '1703', 'US', 'VA'),
	(270, 331, '1757', 'US', 'VA'),
	(271, 331, '1804', 'US', 'VA'),
	(272, 359, '1340', 'VI', 'VI US Virgin'),
	(273, 331, '1802', 'US', 'VT'),
	(274, 345, '1206', 'US', 'WA'),
	(275, 345, '1253', 'US', 'WA'),
	(276, 345, '1360', 'US', 'WA'),
	(277, 345, '1425', 'US', 'WA'),
	(278, 345, '1509', 'US', 'WA'),
	(279, 339, '1262', 'US', 'WI'),
	(280, 339, '1414', 'US', 'WI'),
	(281, 339, '1608', 'US', 'WI'),
	(282, 339, '1715', 'US', 'WI'),
	(283, 339, '1920', 'US', 'WI'),
	(284, 331, '1304', 'US', 'WV'),
	(285, 341, '1307', 'US', 'WY'),
	(287, 356, '1784', 'VC', 'ZF St Vincent');
