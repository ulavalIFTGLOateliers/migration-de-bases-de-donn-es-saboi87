ALTER TABLE musician RENAME TO singer;
ALTER TABLE `singer`
	CHANGE COLUMN `musicianName` `singerName` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_0900_ai_ci' FIRST,
    DROP PRIMARY KEY,
	ADD PRIMARY KEY (`singerName`) USING BTREE;
ALTER TABLE `singer`
	DROP COLUMN `role`,
	DROP COLUMN `bandName`;
DROP TABLE `band`;