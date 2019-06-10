USE test_db;

create table IF not exists `test_table`
(
 `id`               INT(20) AUTO_INCREMENT,
 `name`             VARCHAR(20) NOT NULL,
 PRIMARY KEY (`id`)
) DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO test_table(name) VALUES('hayano');
