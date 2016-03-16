CREATE TABLE `stops` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` int(11) UNSIGNED NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `deleted` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Stops name and company code';

ALTER TABLE `stops`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `CODE_IDX` (`code`),
  ADD KEY `DELETED_IDX` (`deleted`);

ALTER TABLE `stops`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

